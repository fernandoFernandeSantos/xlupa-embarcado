
#include <sys/time.h>
#include <time.h>
#include "util.h"
#include <stdio.h>
#define MILLION 1000000.0

void register_time(){
	clock_gettime(CLOCK_REALTIME, &clock_time);
}

double get_time_mili(){
	struct timespec temp;
	clock_gettime(CLOCK_REALTIME, &temp);
	double v1 =  ((double)temp.tv_sec - (double)clock_time.tv_sec)*1000.;
	double v2 =  ((double)temp.tv_nsec - (double)clock_time.tv_nsec)/MILLION;
	double val = v1+v2;
	clock_time.tv_sec = temp.tv_sec;
	clock_time.tv_nsec = temp.tv_nsec;
	return val;
}


