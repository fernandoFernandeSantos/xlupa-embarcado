/* 
 * File:   SharedVars.h
 * Author: fernandofernandes
 *
 * Created on 18 de Junho de 2014, 09:10
 */

#ifndef SHAREDVARS_H
#define	SHAREDVARS_H

#define sizeWidth 1280
#define sizeHeight 720
//definindo valor padrão para o tamanho da imagem
#define sizeImage (1280 * 720 * 3)

#define BUFFERSIZE 5

unsigned long input_buffer_size;
unsigned long output_buffer_size;

unsigned int IndexProdutor;
unsigned int IndexConsumidor;

struct buffer * buffersV4L1;
struct buffer * buffersV4L2;



#endif	/* SHAREDVARS_H */

