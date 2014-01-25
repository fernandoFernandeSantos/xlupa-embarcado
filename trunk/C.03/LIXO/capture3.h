#ifndef _CAPTURE3_
#define _CAPTURE3_

static void init_mmap(void);
static int xioctl(int fh, int request, void *arg) ;
static int open_device(void);
static void init_device(void);
static void init_mmap(void);
static void start_capturing(void);
static GdkPixbuf* read_frame(void) ;
static void stop_capturing(void);
static void uninit_device (void);
static void close_device (void);


#endif
