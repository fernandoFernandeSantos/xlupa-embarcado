
#ifndef _ALGORITMOS_
#define _ALGORITMOS_
#include "SharedVars.h"

void imagem_to_cinza(unsigned char *subimage);
void limiar_imagem(unsigned char *subimage, unsigned char cor); //antes tinha o limite
void brilho_contraste_imagem(unsigned char *subimage, float brilho, float contraste);
#endif
