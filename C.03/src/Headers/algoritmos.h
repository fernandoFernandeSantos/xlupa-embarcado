
#ifndef _ALGORITMOS_
#define _ALGORITMOS_
#include <gtk/gtk.h>
#include <string.h>
void imagem_to_cinza(GdkPixbuf *subimage);
void limiar_imagem(GdkPixbuf *subimage, guchar cor_rgb1[3], guchar cor_rgb2[3]); //antes tinha o limite
void brilho_contraste_imagem(GdkPixbuf *subimage, double brilho, double contraste);
#define PUT_PIXEL24(a,i,j,s,b) \
(memcpy (a + ((j) * s + (i) * 3), &(b), 3))


#define GET_PIXEL24(a,i,j,s,b) \
(*(guint32 *)(memcpy (b,(a) + ((j) * s + (i) * 3), 3)))



#endif
