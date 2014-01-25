#ifndef _CAPTURE_
#define _CAPTURE_

void init_mmap(void);

int open_device(void);
void init_device(void);
void init_mmap(void);
void start_capturing(void);
GdkPixbuf* read_frame(void) ;
void stop_capturing(void);
void uninit_device (void);
void close_device (void);

#define CLEAR(x) memset(&(x), 0, sizeof(x))

struct buffer {
    void * start;
    size_t length;
};


#endif
