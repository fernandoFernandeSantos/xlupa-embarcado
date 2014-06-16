
#ifndef _ALGORITMOS_
#define _ALGORITMOS_
//#include <gtk/gtk.h>
//#include <string.h>
void imagem_to_cinza(unsigned char *subimage);
void limiar_imagem(unsigned char *subimage, unsigned char cor); //antes tinha o limite
void brilho_contraste_imagem(unsigned char *subimage, float brilho, float contraste);

//definindo valor padrão para o tamanho da imagem
#define sizeImageAlgoritmos (1280 * 720 * 3)

#endif
