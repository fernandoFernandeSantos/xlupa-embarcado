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
}

void brilho_contraste_imagem(unsigned char *subimage, float brilho, float contraste) {
    int i;
    int val = 0;
    float multiplicaConstraste = 2 * contraste;
    float somaBrilho = 255 * (brilho - 0.5);

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
}

