#ifndef _ALGORITMOS_
#define _ALGORITMOS_

#define CLIP(color) (unsigned char)(((color)>0xFF)?0xff:(((color)<0)?0:(color)))
#define SIZE_IMAGE_ALGORITMOS (1280 * 720 * 3)
#define SCREEN_SIZE_ALGORITMOS (1280 * 720)

void inline Grayscale(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2) {
        dest[i] = subimage[k];
        dest[i + 1] = subimage[k];
        dest[i + 2] = subimage[k];
        dest[i + 3] = subimage[k + 2];
        dest[i + 4] = subimage[k + 2];
        dest[i + 5] = subimage[k + 2];
        i += 6;
        k += 4;
    }
}

void inline ImageThreshold(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest,
        const unsigned char cor) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
    unsigned char temp = 0, temp2 = 0;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2) {
        //zera todas para o limiar
        dest[i] = 0;
        dest[i + 1] = 0;
        dest[i + 2] = 0;
        dest[i + 3] = 0;
        dest[i + 4] = 0;
        dest[i + 5] = 0;
        //componente Y
        temp = subimage[k];
        temp2 = subimage[k + 2];

        if (temp > 127)
            dest[i + cor] = temp;

        if (temp2 > 127)
            dest[i + cor + 3] = temp2;

        i += 6;
        k += 4;
    }
}

void inline YUYVtoRGB(unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    unsigned int j;
    unsigned int i = 0;
    unsigned int k = 0;
    int u, v, u1, rg, v1;
#pragma MUST_ITERATE(8, ,8)
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS; j += 2) {
        u = subimage[k + 1];
        v = subimage[k + 3];
        u1 = (((u - 128) << 7) + (u - 128)) >> 6;
        rg = (((u - 128) << 1) + (u - 128) +
                ((v - 128) << 2) + ((v - 128) << 1)) >> 3;
        v1 = (((v - 128) << 1) + (v - 128)) >> 1;

        dest[i] = CLIP(subimage[k] + v1);
        dest[i + 1] = CLIP(subimage[k] - rg);
        dest[i + 2] = CLIP(subimage[k] + u1);
        dest[i + 3] = CLIP(subimage[k + 2] + v1);
        dest[i + 4] = CLIP(subimage[k + 2] - rg);
        dest[i + 5] = CLIP(subimage[k + 2] + u1);

        i += 6;
        k += 4;
    }
}

/*Duas imagens do mesmo tamanho - zoom no centro
  arm_nearest_neighbor_interpolation*/
void inline NearestNeighbour(const unsigned char* __restrict__ src,
        unsigned char* __restrict__ dst, int scale) {


    static int width = 1280;
    static int height = 720;

    int dst_x = width / 2 - width / scale / 2;
    int dst_y = height / 2 - height / scale / 2;

    static int i, j, k;

    int p_src = (dst_x + dst_y * width)*3;
    static int p_dst = 0;
    static int cnt = 0;
    int ant = p_src;

    for (i = 0; i < height; i++) {
        for (j = 0; j < width;) {
            for (k = 0; k < scale; k++, j++) {
                dst[p_dst] = src[p_src];
                dst[p_dst + 1] = src[p_src + 1];
                dst[p_dst + 2] = src[p_src + 2];
                p_dst += 3;
            }
            p_src += 3;
        }
        p_dst = i * width * 3;
        p_src = ant;
        if (++cnt == scale) {
            p_src += width * 3;
            ant = p_src;
            cnt = 0;
        }
    }
}

#endif
