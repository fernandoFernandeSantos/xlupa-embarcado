#ifndef _UTIL_
#define _UTIL_
#include <sys/time.h>
static struct timespec clock_time;
double get_time_mili();
void register_time();
#endif
