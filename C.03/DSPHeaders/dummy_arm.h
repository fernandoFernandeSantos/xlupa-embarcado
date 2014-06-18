/* 
 * File:   dummy_arm.h
 * Author: fernandofernandes
 *
 * Created on 5 de Junho de 2014, 19:07
 */

#ifndef DUMMY_ARM_H
#define	DUMMY_ARM_H
#include <semaphore.h>
#include <pthread.h>
#include "../src/Headers/SharedVars.h"
int startDSP();
int run_task();

sem_t bufferFull, bufferEmpty;

pthread_mutex_t bufferV4L2_mutex;
#endif
