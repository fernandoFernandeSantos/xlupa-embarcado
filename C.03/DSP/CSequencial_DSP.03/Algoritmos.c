#include <string.h>

#include "DSPHeaders/algoritmos.h"

void Grayscale(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
    unsigned int de = 0;
    unsigned short su1 = 0;
    unsigned short su2 = 0;
    unsigned short su3 = 0;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2, i += 6, k += 4) {
        de = _amem4_const(&subimage[k]);

        ((unsigned char *) &su1)[0] = ((unsigned char *) &de)[0];
        ((unsigned char *) &su1)[1] = ((unsigned char *) &de)[0];

        ((unsigned char *) &su2)[0] = ((unsigned char *) &de)[0];
        ((unsigned char *) &su2)[1] = ((unsigned char *) &de)[2];

        ((unsigned char *) &su3)[0] = ((unsigned char *) &de)[2];
        ((unsigned char *) &su3)[1] = ((unsigned char *) &de)[2];

        _amem2(&dest[i]) = su1;
        _amem2(&dest[i + 2]) = su2;
        _amem2(&dest[i + 4]) = su3;
    }
}

void ImageThreshold(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest,
        const unsigned char cor) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
    unsigned char temp = 0, temp2 = 0;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2, i += 6, k += 4) {
        //zera todas para o limiar
        _amem2(&dest[i]) = (unsigned short) 0;
        _amem2(&dest[i + 2]) = (unsigned short) 0;
        _amem2(&dest[i + 4]) = (unsigned short) 0;
        //componente Y
        temp = subimage[k];
        temp2 = subimage[k + 2];

        if (temp > 127)
            dest[i + cor] = temp;

        if (temp2 > 127)
            dest[i + cor + 3] = temp2;

    }
}

void YUYVtoRGB(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    unsigned int j, i = 0, k = 0;
    unsigned char u, v;
    short u1, rg, v1;
    short u128 = 0;
    short v128 = 0;
    unsigned int de = 0;
    unsigned char Y1, Y2;
    unsigned short su1 = 0;
    unsigned short su2 = 0;
    unsigned short su3 = 0;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2, i += 6, k += 4) {
        de = _amem4_const(&subimage[k]);
        Y1 = ((unsigned char *) &de)[0];
        u = ((unsigned char *) &de)[1];
        Y2 = ((unsigned char *) &de)[2];
        v = ((unsigned char *) &de)[3];
        u128 = u - 128;
        v128 = v - 128;
        u1 = ((u128 << 7) + u128) >> 6;
        rg = ((u128 << 1) + u128 + (v128 << 2) + (v128 << 1)) >> 3;
        v1 = ((v128 << 1) + v128) >> 1;


        ((unsigned char *) &su1)[0] = CLIP(Y1 + v1);
        ((unsigned char *) &su1)[1] = CLIP(Y1 - rg);
        ((unsigned char *) &su2)[0] = CLIP(Y1 + u1);
        ((unsigned char *) &su2)[1] = CLIP(Y2 + v1);
        ((unsigned char *) &su3)[0] = CLIP(Y2 - rg);
        ((unsigned char *) &su3)[1] = CLIP(Y2 + u1);
        _amem2(&dest[i]) = su1;
        _amem2(&dest[i + 2]) = su2;
        _amem2(&dest[i + 4]) = su3;
    }
}

void NearestNeighbour(const unsigned char* __restrict__ subimage,
        unsigned char* __restrict__ dest, unsigned int scale) {
    int dst_x = WIDTH_AL / 2 - WIDTH_AL / scale / 2;
    int dst_y = HEIGHT_AL / 2 - HEIGHT_AL / scale / 2;

    int i, j, k;

    int p_src = (dst_x + dst_y * WIDTH_AL)*3;
    int p_dst = 0;
    int cnt = 0;
    int ant = p_src;
#pragma MUST_ITERATE(8, ,8)
    for (i = 0; i < HEIGHT_AL; i++) {
        for (j = 0; j < WIDTH_AL;) {
            for (k = 0; k < scale; k++, j++) {
                dest[p_dst] = subimage[p_src];
                dest[p_dst + 1] = subimage[p_src + 1];
                dest[p_dst + 2] = subimage[p_src + 2];
                p_dst += 3;
            }
            p_src += 3;
        }
        p_dst = i * WIDTH_AL * 3;
        p_src = ant;
        if (++cnt == scale) {
            p_src += WIDTH_AL * 3;
            ant = p_src;
            cnt = 0;
        }
    }
}

void memorycpy(const unsigned char * __restrict__ src, unsigned char * __restrict__ dst) {
    unsigned int i;
#pragma MUST_ITERATE(8, ,8)
    for (i = 0; i < SIZE_IMAGE_ALGORITMOS; i += 8)
        _amem8(&dst[i]) = _amem8_const(&src[i]);
}

void ImageThresholdPlusZoom(unsigned char * __restrict__ subimage,
        unsigned char* __restrict__ dest, const unsigned char cor, unsigned int scale) {
    ImageThreshold(subimage, dest, cor);
    memorycpy(dest, subimage);
    NearestNeighbour(subimage, dest, scale);
}

void YUYVtoRGBPlusZoom(unsigned char * __restrict__ subimage,
        unsigned char* __restrict__ dest, unsigned int scale) {
    YUYVtoRGB(subimage, dest);
    memorycpy(dest, subimage);
    NearestNeighbour(subimage, dest, scale);
}
