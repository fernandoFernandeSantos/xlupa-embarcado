/* 
 * File:   dummy_arm.h
 * Author: fernandofernandes
 *
 * Created on 30 de Junho de 2014, 18:57
 */

#ifndef DUMMY_ARM_H
#define	DUMMY_ARM_H
#include "dsp_bridge.h"
#include "log.h"
#include "dmm_buffer.h"
#define SIZE_IMAGE (1280 * 720 * 2)
#define SIZE_IMAGE_ALGORITMOS (1280 * 720 * 3)

#ifdef	__cplusplus
extern "C" {
#endif
    int startDSP();
    void runTaskIn(unsigned char *ini, unsigned char *dest, unsigned int message);
    int freeDSP();
    dmm_buffer_t *input_buffer;
    dmm_buffer_t *output_buffer;

#ifdef	__cplusplus
}
#endif

#endif	/* DUMMY_ARM_H */

