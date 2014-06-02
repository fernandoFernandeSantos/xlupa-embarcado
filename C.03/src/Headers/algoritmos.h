
#ifndef _ALGORITMOS_
#define _ALGORITMOS_
#include <gtk/gtk.h>
#include <string.h>
void imagem_to_cinza(unsigned char *subimage);
void limiar_imagem(unsigned char *subimage, unsigned char cor); //antes tinha o limite
void brilho_contraste_imagem(unsigned char *subimage, float brilho, float contraste);

#define width 1280
#define height 720

//definindo valor padrão para o tamanho da imagem
#define sizeImage (width * height)

#endif
