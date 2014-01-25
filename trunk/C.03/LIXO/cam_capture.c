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
#include <gtk/gtk.h>
#define CLEAR(x) memset(&(x), 0, sizeof(x))

#include "cam_capture.h"

int _width;
int _height;

static void xioctl(int fh, int request, void *arg){
	int r;
	do {
		r = v4l2_ioctl(fh, request, arg);
	} while (r == -1 && ((errno == EINTR) || (errno == EAGAIN)));
	if (r == -1) {
		fprintf(stderr, "error %d, %s\n", errno, strerror(errno));
		exit(EXIT_FAILURE);
	}
}

	struct buffer					buffer;
	struct v4l2_buffer				buf;
	enum v4l2_buf_type				type;
	
	struct timeval					tv;
	int 							r;
	struct v4l2_format				fmt;
	struct v4l2_requestbuffers		req;
	int								fd = -1;
	unsigned int					i, j,n_buffers;
	char							*dev_name;//mudar
	FILE							*fout;
	fd_set							fds;


//lembrar de desalocar estruturas
int open_cam(char *device_name, int width, int height){
	dev_name = device_name;
	fd = v4l2_open(dev_name, O_RDWR | O_NONBLOCK, 0);
	if (fd < 0) {
		perror("Cannot open device");
		exit(EXIT_FAILURE);
	}
	CLEAR(fmt);
	fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    fmt.fmt.pix.width       = width;
    fmt.fmt.pix.height      = height;
    fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;
    fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;
	xioctl(fd, VIDIOC_S_FMT, &fmt);
    if (fmt.fmt.pix.pixelformat != V4L2_PIX_FMT_RGB24) {
    	printf("Libv4l didn't accept RGB24 format. Can't proceed.\n");
        	return (-1);//exit(EXIT_FAILURE);
        }
    if ((fmt.fmt.pix.width != width) || (fmt.fmt.pix.height != height))
    	printf("Warning: driver is sending image at %dx%d\n",fmt.fmt.pix.width, fmt.fmt.pix.height);
    width=fmt.fmt.pix.width;
	height=fmt.fmt.pix.height;
	CLEAR(req);
    req.count = 2;
    req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    req.memory = V4L2_MEMORY_MMAP;
    xioctl(fd, VIDIOC_REQBUFS, &req);
    _width = width;
    _height = height;

	
	CLEAR(buf);
	buf.type        = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	buf.memory      = V4L2_MEMORY_MMAP;
	buf.index       = 0;
    xioctl(fd, VIDIOC_QUERYBUF, &buf);
	buffer.length = buf.length;
	buffer.start = v4l2_mmap(NULL, buf.length,
                              PROT_READ | PROT_WRITE, MAP_SHARED,
                              fd, buf.m.offset);
    if (MAP_FAILED == buffer.start) {
	    perror("mmap");
	    return (-1);
        //exit(EXIT_FAILURE);
	}
	//for (i = 0; i < n_buffers; ++i) {
	CLEAR(buf);
	buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	buf.memory = V4L2_MEMORY_MMAP;
	buf.index = i;
	xioctl(fd, VIDIOC_QBUF, &buf);
	//}
    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    xioctl(fd, VIDIOC_STREAMON, &type);
    puts("A");
    return fd;
}

int close_cam(int fd){
/*...*/
	v4l2_close(fd);
}


GdkPixbuf* get_image(int fd){//tiraar argunmentos

    do {
    	FD_ZERO(&fds);
    	FD_SET(fd, &fds);
        /* Timeout. ??*/
		tv.tv_sec = 2;
		tv.tv_usec = 0;
		r = select(fd + 1, &fds, NULL, NULL, &tv);
	} while ((r == -1 && (errno = EINTR)));
	if (r == -1) {
		perror("select");
        return -1;
	}
	CLEAR(buf);
	buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	buf.memory = V4L2_MEMORY_MMAP;
	xioctl(fd, VIDIOC_DQBUF, &buf);
              
	xioctl(fd, VIDIOC_QBUF, &buf);
	puts("BBB");
	type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	xioctl(fd, VIDIOC_STREAMOFF, &type);
	//v4l2_munmap(buffer.start, buffer.length);
	puts("A");
	Gdk Pixbuf *pixbuf = gdk_pixbuf_new_from_data(buffer.start, GDK_COLORSPACE_RGB, 0, 8, _width, _height, _width*3, NULL, NULL);//ver argumentos
	puts("B");

	return pixbuf;
}

int main2(int argc, char **argv){
	int fd = open_cam(argv[1], 600, 400);
	get_image(fd);
	close_cam(fd);
	
}
