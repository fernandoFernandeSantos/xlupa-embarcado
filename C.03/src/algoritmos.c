#include <gtk/gtk.h>
#include "./Headers/algoritmos.h"
#include <math.h>

void imagem_to_cinza(unsigned char *subimage) {

    //faz mudanças direto no vetor da imagem
    unsigned int i, temp = 0;
    for (i = 0; i < (sizeImage * 3); i += 3) {
        temp = 0;

        temp += subimage[i] + subimage[i + 1] + subimage[i + 2];
        temp /= 3; //1 divisao

        subimage[i] = temp;
        subimage[i + 1] = temp;
        subimage[i + 2] = temp;
    }
    /*unsigned int temp;
    guchar* rgb;
    guint32 pixel;
    guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
    orig_img_width = gdk_pixbuf_get_width(subimage);
    orig_img_height = gdk_pixbuf_get_height(subimage);
    source_rowstride = gdk_pixbuf_get_rowstride(subimage);


    // variaveis de auxilio para o uso de um for
    orig_img_height -= 2;
    orig_img_width -= 2;
    cont = (orig_img_height * orig_img_width); //nesse passo eu tenho o numero de elementos da matriz
    limite_x = 0;
    limite_y = 0;
    limite_x = 0;
    for (i = 0; i <= cont; i++) {
        GET_PIXEL24(subimage_data, limite_x, limite_y, source_rowstride, &pixel);
        rgb = (guchar *) & pixel;
        temp = 0;

        temp += rgb[0] + rgb[1] + rgb[2];
        temp /= 3; //1 divisao

        rgb[0] = rgb[1] = rgb[2] = rgb[3] = temp;

        PUT_PIXEL24(subimage_data, limite_x, limite_y, source_rowstride, pixel);
        //condição retira a necessidade de dois laços
        limite_x++;
        if(limite_x == orig_img_width){
            limite_x = 0;
            limite_y++;
        }
       
    }*/
}

void limiar_imagem(unsigned char *subimage, unsigned char cor) {
    //vai por padrão 
    guchar cor1[] = {0, 0, 0};
    cor1[cor] = 1;

    int i;
    int k = 0;

    for (i = 0; i < (sizeImage * 3); i += 3) {
        k = (0.299 * subimage[i] + 0.587 * subimage[i + 1] + 0.114 * subimage[i + 2]);
        if (k > 127) {
            subimage[i] = (cor1[0] * k);
            subimage[i + 1] = (cor1[1] * k);
            subimage[i + 2] = (cor1[2] * k);

        } else {
            subimage[i] = 0;
            subimage[i + 1] = 0;
            subimage[i + 2] = 0;
        }
    }
    /*
    if (cor_rgb1 == NULL || cor_rgb2 == NULL)
        return;
    guchar* rgb;
    guint32 pixel;
    guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
    orig_img_width = gdk_pixbuf_get_width(subimage);
    orig_img_height = gdk_pixbuf_get_height(subimage);
    source_rowstride = gdk_pixbuf_get_rowstride(subimage);
    //variaveis para retirada do for
    orig_img_height -= 2;
    orig_img_width -= 2;
    cont = (orig_img_height * orig_img_width); //nesse passo eu tenho o numero de elementos da matriz
    limite_y = 0;
    limite_x = 0;

    for (i = 0; i <= cont; i++) {
        GET_PIXEL24(subimage_data, limite_x, limite_y, source_rowstride, &pixel);
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
                rgb[0] = (cor_rgb2[0] * k) / 255;
                rgb[1] = (cor_rgb2[1] * k) / 255;
                rgb[2] = (cor_rgb2[2] * k) / 255;
            }
        }
        PUT_PIXEL24(subimage_data, limite_x, limite_y, source_rowstride, pixel);
        //condição retira a necessidade de dois laços
        limite_x++;
        if(limite_x == orig_img_width){
            limite_x = 0;
            limite_y++;
        }
    }// fim do for externo
    //----------------------------------------------------------------------*/
}

void brilho_contraste_imagem(unsigned char *subimage, double brilho, double contraste) {
    int i;
    int val = 0;
    double multiplicaConstraste = 2 * contraste;
    double somaBrilho =  255 * (brilho - 0.5);
    
    for (i = 0; i < (sizeImage * 3); i += 3) {
        val = subimage[i] * multiplicaConstraste + somaBrilho;
        if (val > 255)
            val = 255;
        if (val < 0)
            val = 0;
        subimage[i] = (unsigned char) val;
        
        val = subimage[i + 1] * multiplicaConstraste + somaBrilho;
        if (val > 255)
            val = 255;
        if (val < 0)
            val = 0;
        subimage[i + 1] = (unsigned char) val;
        
        val = subimage[i + 2] * multiplicaConstraste + somaBrilho;

        if (val > 255)
            val = 255;
        if (val < 0)
            val = 0;
        subimage[i + 2] = (unsigned char) val;
    }
    /*
        if (brilho == 0.5 && contraste == 0.5)
            return;
        unsigned char* rgb;
        unsigned int val = 0;
        guchar* subimage_data = gdk_pixbuf_get_pixels(subimage);
        orig_img_width = gdk_pixbuf_get_width(subimage);
        orig_img_height = gdk_pixbuf_get_height(subimage);
        cont = (orig_img_height * orig_img_width); //nesse passo eu tenho o numero de elementos da matriz
        limite_y = 0;
        limite_x = 0;

        for (i = 0; i < cont; i++) {

            rgb = &subimage_data[limite_y * 3 * orig_img_width + limite_x * 3];
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
            //condição retira a necessidade de dois laços
            limite_x++;
            if(limite_x == orig_img_width){
                limite_x = 0;
                limite_y++;
            }
        }
     * */
}

