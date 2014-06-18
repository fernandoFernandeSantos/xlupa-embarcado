#ifndef _CAPTURE_
#define _CAPTURE_
#include "SharedVars.h"
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

#define CLEAR(x) memset(&(x), 0, sizeof(x))
char  dev_name[50];
struct buffer {
    void * start;
    size_t length;
};

#endif
