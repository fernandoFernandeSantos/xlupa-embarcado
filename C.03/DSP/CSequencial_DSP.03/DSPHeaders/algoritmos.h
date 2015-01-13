#ifndef _ALGORITMOS_
#define _ALGORITMOS_
#define CLIP(color) (unsigned char)(((color)>0xFF)?0xff:(((color)<0)?0:(color)))

#define WIDTH_AL 1280
#define HEIGHT_AL 720
#define SIZE_IMAGE_ALGORITMOS (WIDTH_AL * HEIGHT_AL  * 3)
#define SCREEN_SIZE_ALGORITMOS (WIDTH_AL * HEIGHT_AL)
//unsigned char *src;
void Grayscale(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest);
void ImageThreshold(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest,const unsigned char cor);
void YUYVtoRGB(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest);
void NearestNeighbour(const unsigned char* __restrict__ subimage, unsigned char* __restrict__ dest, unsigned int scale);
//algorithms that performs zoom and other configuration
void ImageThresholdPlusZoom(const unsigned char * subimage,
        unsigned char* dest, unsigned char* aux, const unsigned char cor, unsigned int scale);
void YUYVtoRGBPlusZoom(const unsigned char * subimage, 
        unsigned char*  dest, unsigned char*  aux, unsigned int scale)  ;


#endif
