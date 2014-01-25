#ifndef _CAM_CAPTURE_
#define _CAM_CAPTURE_

struct buffer {
        void   *start;
        size_t length;
};

static void xioctl(int fh, int request, void *arg);
int open_cam(char *device_name, int width, int height);
int close_cam(int fd);
GdkPixbuf* get_image(int fd);


#endif
