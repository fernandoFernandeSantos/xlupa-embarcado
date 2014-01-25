

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
#include "capture3.h"



#define CLEAR(x) memset(&(x), 0, sizeof(x))
unsigned char *novo;
static char * dev_name = "/dev/video0";
static int fd = -1;
struct buffer * buffers = NULL;
static unsigned int n_buffers = 0;

struct buffer {
    void * start;
    size_t length;
};


static void errno_exit(const char * s) {
    fprintf(stderr, "%s error %d, %s\n",
            s, errno, strerror(errno));

    exit(EXIT_FAILURE);
}


static int xioctl(int fh, int request, void *arg) {
    int r;

    do {
        r = v4l2_ioctl(fh, request, arg);
    } while (r == -1 && ((errno == EINTR) || (errno == EAGAIN)));

    if (r == -1) {
        fprintf(stderr, "error %d, %s\n", errno, strerror(errno));
        exit(EXIT_FAILURE);
    }
    return 1; /*perigo*/
}

int open_device(void) {
    struct stat st;

    if (-1 == stat(dev_name, &st)) {
        fprintf(stderr, "Cannot identify '%s': %d, %s\n",
                dev_name, errno, strerror(errno));
        exit(EXIT_FAILURE);
    }

    if (!S_ISCHR(st.st_mode)) {
        fprintf(stderr, "%s is no device\n", dev_name);
        exit(EXIT_FAILURE);
    }

    fd = v4l2_open(dev_name, O_RDWR | O_NONBLOCK, 0);

    if (-1 == fd) {
        fprintf(stderr, "Cannot open '%s': %d, %s\n",
                dev_name, errno, strerror(errno));
        exit(EXIT_FAILURE);
    }
    novo = (unsigned char*)malloc(sizeof(char)*640*480*3);
    return 1;/*mudar*/
}

static void
init_device(void) {
    struct v4l2_capability cap;
    struct v4l2_cropcap cropcap;
    struct v4l2_crop crop;
    struct v4l2_format fmt;
    unsigned int min;


    CLEAR(fmt);

    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    fmt.fmt.pix.width = 640;
    fmt.fmt.pix.height = 480;
    /*fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;*/
    fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;
    fmt.fmt.pix.field = V4L2_FIELD_INTERLACED;

    if (-1 == xioctl(fd, VIDIOC_S_FMT, &fmt))
        errno_exit("VIDIOC_S_FMT");

    init_mmap();

}

static void
init_mmap(void) {
    struct v4l2_requestbuffers req;

    CLEAR(req);


    req.count = 4; /*=2?*/
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

    buffers = calloc(req.count, sizeof (*buffers));

    if (!buffers) {
        fprintf(stderr, "Out of memory\n");
        exit(EXIT_FAILURE);
    }

    for (n_buffers = 0; n_buffers < req.count; ++n_buffers) {
        struct v4l2_buffer buf; /*global?*/

        CLEAR(buf);

        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = n_buffers;

        if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf))
            errno_exit("VIDIOC_QUERYBUF");

        buffers[n_buffers].length = buf.length;
        buffers[n_buffers].start =
                v4l2_mmap(NULL /* start anywhere */,
                buf.length,
                PROT_READ | PROT_WRITE /* required */,
                MAP_SHARED /* recommended */,
                fd, buf.m.offset);

        if (MAP_FAILED == buffers[n_buffers].start)
            errno_exit("mmap");
    }
}

static void
start_capturing(void) {
    unsigned int i;
    enum v4l2_buf_type type;


    for (i = 0; i < n_buffers; ++i) {
        struct v4l2_buffer buf;

        CLEAR(buf);

        buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        buf.memory = V4L2_MEMORY_MMAP;
        buf.index = i;

        if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
            errno_exit("VIDIOC_QBUF");
    }

    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

    if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
        errno_exit("VIDIOC_STREAMON");

}

static void
mainloop(void) {
    unsigned int count;

    count = 100;

    while (count-- > 0) {
        int r;
        fd_set fds;
        struct timeval tv;
        do {



            FD_ZERO(&fds);
            FD_SET(fd, &fds);

            /* Timeout. */
            tv.tv_sec = 2;
            tv.tv_usec = 0;

            r = select(fd + 1, &fds, NULL, NULL, &tv);
        } while ((r == -1 && (errno = EINTR)));
        if (r == -1) {
            perror("select");
        }
        read_frame();
    }
}


static void
uninit_device                   (void)
{
        unsigned int i;

	
		for (i = 0; i < n_buffers; ++i)
			if (-1 == munmap (buffers[i].start, buffers[i].length))
				errno_exit ("munmap");
		
	free (buffers);
}


static void
stop_capturing                  (void)
{
        enum v4l2_buf_type type;


		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

		if (-1 == xioctl (fd, VIDIOC_STREAMOFF, &type))
			errno_exit ("VIDIOC_STREAMOFF");

}

void pixbuf_destroy(guchar *pixels, gpointer data){

	//free(pixels);
	
}

static GdkPixbuf* read_frame(void) {
    struct v4l2_buffer buf;
    unsigned int i;
   
    CLEAR(buf);

    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory = V4L2_MEMORY_MMAP;

    if (-1 == xioctl(fd, VIDIOC_DQBUF, &buf)) {
        switch (errno) {
            case EAGAIN:
                return 0;
           	case EIO:
                /* Could ignore EIO, see spec. */

                /* fall through */
			default:
				errno_exit ("VIDIOC_DQBUF");
        }
    }

    assert(buf.index < n_buffers);

    if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
        errno_exit("VIDIOC_QBUF");

    
    int width = 640;
    int height = 480;
    int j;
    unsigned char *ini = (unsigned char*) buffers[buf.index].start;

  	for( i=0; i<height; i++){
		for(j=0; j<width; j++){
			int r = (int)ini[(i*width+j)*3];
			int g = (int)ini[(i*width+j)*3+1];
			int b = (int)ini[(i*width+j)*3+2];
			novo[(i*width+j)*3+0] = r;
			novo[(i*width+j)*3+1] = g;
			novo[(i*width+j)*3+2] = b;
				
			//espelhado
			/*novo[(i*width*3) + abs(width-j)*3]=r;
			novo[(i*width*3) + abs(width-j)*3+1]=g;
			novo[(i*width*3) + abs(width-j)*3+2]=b;*/
		}
	}
	GdkPixbuf *pixbuf = gdk_pixbuf_new_from_data(novo, GDK_COLORSPACE_RGB, 0, 8, width, height, width*3, pixbuf_destroy, NULL);
	return pixbuf;
/*	gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);
  	cairo_paint(cr);

    cairo_destroy(cr);*/
  

}




static void
close_device                    (void)
{
        if (-1 == close (fd))
	        errno_exit ("close");

        fd = -1;
}

