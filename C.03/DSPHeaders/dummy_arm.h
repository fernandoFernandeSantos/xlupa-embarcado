/* 
 * File:   dummy_arm.h
 * Author: fernandofernandes
 *
 * Created on 5 de Junho de 2014, 19:07
 */

#ifndef DUMMY_ARM_H
#define	DUMMY_ARM_H

int startDSP();
int run_task();

unsigned short message;
unsigned long input_buffer_size;
unsigned long output_buffer_size;
#define width 1280
#define height 720

//definindo valor padrão para o tamanho da imagem
#define sizeImage (width * height * 3)

#endif
