#ifndef _CAPTURE_
#define _CAPTURE_

void init_mmap(void);

int open_device(void);
void init_device(void);
void init_mmap(void);
void start_capturing(void);
int read_frame();
void stop_capturing(void);
void uninit_device (void);
void close_device (void);
void * call_process_image();

//TCC
pthread_t threadRead;
pthread_t threadDSP;

unsigned int currentIndex;

struct buffer * buffersV4L1;
struct buffer * buffersV4L2;

#define CLEAR(x) memset(&(x), 0, sizeof(x))
#define BUFFERSIZE 5

struct buffer {
    void * start;
    size_t length;
};


char  dev_name[50];

#endif
