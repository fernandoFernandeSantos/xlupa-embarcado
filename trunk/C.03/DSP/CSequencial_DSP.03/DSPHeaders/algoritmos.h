#ifndef _ALGORITMOS_
#define _ALGORITMOS_

#define CLIP(color) (unsigned char)(((color)>0xFF)?0xff:(((color)<0)?0:(color)))

#define WIDTH_AL 1280
#define HEIGHT_AL 720
#define SIZE_IMAGE_ALGORITMOS (WIDTH_AL * HEIGHT_AL  * 3)
#define SCREEN_SIZE_ALGORITMOS (WIDTH_AL * HEIGHT_AL)
void  imagem_to_cinza(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest);
void  limiar_imagem(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest,
        const unsigned char cor);
void  sem_modificacao(unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest);
void  NearestNeighbour(const unsigned char* __restrict__ src, unsigned char* __restrict__ dst, int scale);



#endif
