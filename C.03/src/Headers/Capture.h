#ifndef _CAPTURE_
#define _CAPTURE_

void init_mmap(void);

int open_device(void);
void init_device(void);
void init_mmap(void);
void start_capturing(void);
int read_frame(void (*process_image)());
void stop_capturing(void);
void uninit_device (void);
void close_device (void);
void call_process_image(void (*process_image)(unsigned char*));
//void main_loop();

#define CLEAR(x) memset(&(x), 0, sizeof(x))

#define SCREEN_SIZE 1280 * 720
#define WIDTH 1280
#define HEIGHT 720

char  dev_name[50];

#endif
