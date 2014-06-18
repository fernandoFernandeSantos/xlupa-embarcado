#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/mman.h>
#include <linux/videodev2.h>
#include <libv4l2.h>
#include <sys/time.h>
#include <sys/stat.h>
#include <assert.h>
#include <gtk/gtk.h>
#include "./src/Headers/capture.h"
#include "./src/Headers/debug.h"
#include "DSPHeaders/dummy_arm.h"
#include <semaphore.h>

/*
static void pixbuf_destroy(guchar *pixels, gpointer data);
 */
static int xioctl(int fh, int request, void *arg);
static void errno_exit(const char * s);

#define CLEAR(x) memset(&(x), 0, sizeof(x))
static unsigned char *novo;
static int fd = -1;
static char foi = 0;
static char quant = 0;

static unsigned int n_buffers = 0;

static void errno_exit(const char * s) {
    fprintf(stderr, "%s error %d, %s\n",
            s, errno, strerror(errno));
    DEBUG_LINE();
    exit(EXIT_FAILURE);
}

static int xioctl(int fh, int request, void *arg) {
    int r;
    DEBUG_LINE();
    do {
        DEBUG_LINE();
        r = v4l2_ioctl(fh, request, arg);
        DEBUG_LINE();
    } while (r == -1 && ((errno == EINTR) || (errno == EAGAIN)));
    DEBUG_LINE();
    if (r == -1) {
        fprintf(stderr, "error %d, %s\n", errno, strerror(errno));
        exit(EXIT_FAILURE);
    }
    DEBUG_LINE();
    return 1; /*perigo*/
}

int open_device(void) {
    //TCC
    buffersV4L1 = NULL;
    buffersV4L2 = NULL;
    //----------------
    struct stat st;
    DEBUG_LINE();
    if (-1 == stat(dev_name, &st)) {
        fprintf(stderr, "Cannot identify '%s': %d, %s\n",
                dev_name, errno, strerror(errno));
        exit(EXIT_FAILURE);
    }
    DEBUG_LINE();
    if (!S_ISCHR(st.st_mode)) {
        fprintf(stderr, "%s is no device\n", dev_name);
        exit(EXIT_FAILURE);
    }
    DEBUG_LINE();
    fd = v4l2_open(dev_name, O_RDWR | O_NONBLOCK, 0);
    DEBUG_LINE();
    if (-1 == fd) {
        fprintf(stderr, "Cannot open '%s': %d, %s\n",
                dev_name, errno, strerror(errno));
        exit(EXIT_FAILURE);
    }
    return 1; /*mudar*/
}

void init_device(void) {
    struct v4l2_capability cap;
    struct v4l2_cropcap cropcap;
    struct v4l2_crop crop;
    struct v4l2_format fmt;
    unsigned int min;
    DEBUG_LINE();

    CLEAR(fmt);

    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    fmt.fmt.pix.width = 1280;
    fmt.fmt.pix.height = 720;
    fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24; //era RGB24 Fernando
    fmt.fmt.pix.field = V4L2_FIELD_INTERLACED;
    DEBUG_LINE();
    if (-1 == xioctl(fd, VIDIOC_S_FMT, &fmt))
        errno_exit("VIDIOC_S_FMT");
    if (fmt.fmt.pix.pixelformat != V4L2_PIX_FMT_RGB24) { //era RGB24
        printf("Libv4l didn't accept RGB24 format. Can't proceed.\n");
        exit(EXIT_FAILURE);
    }
    DEBUG_LINE();
    init_mmap();
    DEBUG_LINE();

}

void init_mmap(void) {
    struct v4l2_requestbuffers req;

    CLEAR(req);

    DEBUG_LINE();

    req.count = BUFFERSIZE; /*= 4; /*=2?*/
    req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    req.memory = V4L2_MEMORY_MMAP;

    if (-1 == xioctl(fd, VIDIOC_REQBUFS, &req)) {
        if (EINVAL == errno) {
            fprintf(stderr, "%s does not support "
                    "memory mapping\n", dev_name);
            exit(EXIT_FAILURE);
        } else {
            errno_exit("VIDIOC_REQBUFS");
        }
    }
    DEBUG_LINE();
    buffersV4L1 = calloc(req.count, sizeof (*buffersV4L1));
    //aloca também para o buffersV4L2 
    buffersV4L2 = calloc(req.count, sizeof (*buffersV4L2));

    if (!buffersV4L1 || !buffersV4L2) {
        fprintf(stderr, "Out of memory\n");
        exit(EXIT_FAILURE);
    }
    DEBUG_LINE();
    for (n_buffers = 0; n_buffers < req.count; ++n_buffers) {
        struct v4l2_buffer buf; /*global?*/

        CLEAR(buf);

        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = n_buffers;

        if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf))
            errno_exit("VIDIOC_QUERYBUF");

        buffersV4L1[n_buffers].length = buf.length;
        buffersV4L1[n_buffers].start =
                v4l2_mmap(NULL /* start anywhere */,
                buf.length,
                PROT_READ | PROT_WRITE /* required */,
                MAP_SHARED /* recommended */,
                fd, buf.m.offset);
        //faz o mesmo para buffersvl2
        buffersV4L2[n_buffers].length = buf.length;
        buffersV4L2[n_buffers].start =
                v4l2_mmap(NULL /* start anywhere */,
                buf.length,
                PROT_READ | PROT_WRITE /* required */,
                MAP_SHARED /* recommended */,
                fd, buf.m.offset);

        /*Note device memory accesses (e. g. the memory on a graphics card with 
         * video capturing hardware) may incur a performance 
        penalty compared to main memory 		accesses, or reads may
         *  be significantly slower than writes or vice versa. 
        Other I/O methods may be more efficient in this case.*/

        if ((MAP_FAILED == buffersV4L1[n_buffers].start) || (MAP_FAILED == buffersV4L2[n_buffers].start))
            errno_exit("mmap");
    }
    DEBUG_LINE();
}

void start_capturing(void) {
    unsigned int i;
    enum v4l2_buf_type type;
    DEBUG_LINE();
    DEBUG_PRINT("N_BUFFERS : %d\n", n_buffers);
    for (i = 0; i < n_buffers; ++i) {
        struct v4l2_buffer buf;

        CLEAR(buf);

        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = i;

        if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
            errno_exit("VIDIOC_QBUF");
    }
    DEBUG_LINE();
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

    if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
        errno_exit("VIDIOC_STREAMON");

}

void uninit_device(void) {
    unsigned int i;
    for (i = 0; i < n_buffers; ++i)
        if (-1 == munmap(buffersV4L1[i].start, buffersV4L1[i].length))
            errno_exit("munmap");

    free(buffersV4L1);

    //TCC, faz também para buffersv42l
    for (i = 0; i < n_buffers; ++i)
        if (-1 == munmap(buffersV4L2[i].start, buffersV4L2[i].length))
            errno_exit("munmap");

    free(buffersV4L2);
}

void stop_capturing(void) {
    enum v4l2_buf_type type;
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

    if (-1 == xioctl(fd, VIDIOC_STREAMOFF, &type))
        errno_exit("VIDIOC_STREAMOFF");

}

/*
void pixbuf_destroy(guchar *pixels, gpointer data) {
}
 */

int read_frame() {
    struct v4l2_buffer buf;
    CLEAR(buf);
    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory = V4L2_MEMORY_MMAP;

    if (-1 == xioctl(fd, VIDIOC_DQBUF, &buf)) {
        switch (errno) {
            case EAGAIN:
                return 0;
            default:
                errno_exit("VIDIOC_DQBUF");
        }
    }
    assert(buf.index < n_buffers);
    // process_image((unsigned char *) buffers[buf.index].start);
    //TCC
    //enche o buffer pelo menos uma vez
    if(buf.index < BUFFERSIZE && !foi){
        sem_wait(&bufferFull);
    }else{
        if(!quant){
            sem_post(&bufferFull);
        }
        quant = 1;
        foi = 1;
    }
    
    if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
        errno_exit("VIDIOC_QBUF");

    return 0;
}

void *call_process_image() {
    struct v4l2_buffer buf;
    unsigned int i;

    CLEAR(buf);
    DEBUG_LINE();

    while (1) {
        fd_set fds;
        struct timeval tv;
        int r;
        FD_ZERO(&fds);
        FD_SET(fd, &fds);
        /* Timeout. */
        tv.tv_sec = 2;
        tv.tv_usec = 0;

        r = select(fd + 1, &fds, NULL, NULL, &tv);

        if (-1 == r) {
            if (EINTR == errno)
                continue;
            errno_exit("select");
        }
        if (0 == r) {
            fprintf(stderr, "select timeout\n");
            exit(EXIT_FAILURE);
        }
        
        if (read_frame() == 0)
            continue;
        else
            break;
        
    }
}

void close_device(void) {
    if (-1 == close(fd))
        errno_exit("close");

    fd = -1;
}