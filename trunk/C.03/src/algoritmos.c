#include <gtk/gtk.h>
#include "algoritmos.h"

void imagem_to_cinza(GdkPixbuf *subimage) {
    //GdkPixbuf *subimage = subimage1;
    guchar* rgb;
    guint32 pixel;
    guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
    int orig_img_width = gdk_pixbuf_get_width(subimage);
    int orig_img_height = gdk_pixbuf_get_height(subimage);
    int source_rowstride = gdk_pixbuf_get_rowstride(subimage);
    int i, lx = 0, ly, temp;

    // variaveis de auxilio para o uso de um for
    int counter = 0, limite_y, limite_x;



    orig_img_height -= 2;
    orig_img_width -= 2;
    counter = orig_img_height * orig_img_width; //nesse passo eu tenho o numero de elementos da matriz

    limite_y = 0;
    limite_x = 0;
    lx = 0;
    for (ly = 0; ly <= counter; ly++) {
        GET_PIXEL24(subimage_data, lx, limite_y, source_rowstride, &pixel);
        rgb = (guchar *) & pixel;
        temp = 0;

        temp += rgb[0] + rgb[1] + rgb[2];
        temp /= 3; //1 divisao

        rgb[0] = rgb[1] = rgb[2] = rgb[3] = temp;

        PUT_PIXEL24(subimage_data, lx, limite_y, source_rowstride, pixel);
        //-------------------------------------
        //condição retira a necessidade de dois laços
        lx = (lx + 1) % orig_img_width;
        if (lx > orig_img_width) {
            limite_y++;
        }

        //-------------------------------------
    }
}

void limiar_imagem(GdkPixbuf *subimage, guchar cor_rgb1[3], guchar cor_rgb2[3], int limite) {

    if (cor_rgb1 == NULL || cor_rgb2 == NULL)return;
    guchar* rgb;
    guint32 pixel;
    guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
    int orig_img_width = gdk_pixbuf_get_width(subimage);
    int orig_img_height = gdk_pixbuf_get_height(subimage);
    int lx, ly;
    int source_rowstride = gdk_pixbuf_get_rowstride(subimage);
    int cont = 0;

    //variaveis para retirada do for
    int counter = 0, limite_y, limite_x;

    //alterações feitas dia 20/09/2012
    //Fernando Fernandes

    orig_img_height -= 2;
    orig_img_width -= 2;
    counter = orig_img_height * orig_img_width; //nesse passo eu tenho o numero de elementos da matriz

    limite_y = 0;
    limite_x = 0;
    lx = 0;

    for (ly = 0; ly <= counter; ly++) {
        GET_PIXEL24(subimage_data, lx, limite_y, source_rowstride, &pixel);
        rgb = (guchar *) & pixel;
        int k = (0.299 * rgb[0] + 0.587 * rgb[1] + 0.114 * rgb[2]);
        if (k > 127) {
            if (cor_rgb1 != NULL) {
                rgb[0] = (cor_rgb1[0] * k) / 255;
                rgb[1] = (cor_rgb1[1] * k) / 255;
                rgb[2] = (cor_rgb1[2] * k) / 255;
            }
        } else {
            if (cor_rgb2 != NULL) {
                cont++;
                rgb[0] = (cor_rgb2[0] * k) / 255;
                rgb[1] = (cor_rgb2[1] * k) / 255;
                rgb[2] = (cor_rgb2[2] * k) / 255;
            }
        }
        PUT_PIXEL24(subimage_data, lx, limite_y, source_rowstride, pixel);

        //-------------------------------------
        //condição retira a necessidade de dois laços
        lx = (lx + 1) % orig_img_width;
        if (lx > orig_img_width) {
            limite_y++;
        }

        //-------------------------------------

    }// fim do for externo
    //----------------------------------------------------------------------

}

void brilho_contraste_imagem(GdkPixbuf *subimage, double brilho, double contraste) {

    if (brilho == 0.5 && contraste == 0.5)return;
    unsigned char* rgb;
    unsigned char *rgb1;
    guint32 pixel;
    guint32 pixel1;
    guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
    int orig_img_width = gdk_pixbuf_get_width(subimage);
    int orig_img_height = gdk_pixbuf_get_height(subimage);
    int lx, ly;
    int source_rowstride = gdk_pixbuf_get_rowstride(subimage);
    int cont = 0;
    int i;

    int val;

    //variaveis para retirada do for
    int counter = 0, limite_y, limite_x;

    counter = orig_img_height * orig_img_width; //nesse passo eu tenho o numero de elementos da matriz

    limite_y = 0;
    limite_x = 0;
    lx = 0;

    for (ly = 0; ly < counter; ly++) {

        rgb = &subimage_data[limite_y * 3 * orig_img_width + lx * 3];
        val = rgb[0]*2 * contraste + 255 * (brilho - 0.5);

        if (val > 255)
            val = 255;
        else
            if (val < 0)
            val = 0;
        rgb[0] = (unsigned char) val;
        val = rgb[1]*2 * contraste + 255 * (brilho - 0.5);

        if (val > 255)
            val = 255;
        else
            if (val < 0)
            val = 0;
        rgb[1] = (unsigned char) val;
        val = rgb[2]*2 * contraste + 255 * (brilho - 0.5);

        if (val > 255)
            val = 255;
        else
            if (val < 0)
            val = 0;
        rgb[2] = (unsigned char) val;

          //-------------------------------------
        //condição retira a necessidade de dois laços
        lx = (lx + 1) % orig_img_width;
        if (lx > orig_img_width) {
            limite_y++;
        }

        //-------------------------------------
    }
}

