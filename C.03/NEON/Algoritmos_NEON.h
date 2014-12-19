
#include <arm_neon.h>
#ifndef _ALGORITMOS_
#define _ALGORITMOS_

#define CLIP(color) (unsigned char)(((color)>0xFF)?0xff:(((color)<0)?0:(color)))
#define WIDTH_AL 1280
#define HEIGHT_AL 720
#define SIZE_IMAGE_ALGORITMOS (WIDTH_AL * HEIGHT_AL  * 3)
#define SCREEN_SIZE_ALGORITMOS (WIDTH_AL * HEIGHT_AL)

//feito
void inline Grayscale(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
    uint8x16x2_t neon_src;
    uint8x16x3_t neon_result;
    const uint8_t *pointer_src = subimage;
    uint8_t *pointer_dest = dest;
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS*2; j+=32,pointer_src+=32, pointer_dest+=48) {
        neon_src = vld2q_u8(pointer_src);
        neon_result.val[0] = neon_src.val[0];
        neon_result.val[1] = neon_src.val[0];
        neon_result.val[2] = neon_src.val[0];
        vst3q_u8(pointer_dest,neon_result);
    }
}

void inline ImageThreshold(const unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest, const unsigned char cor) {
    unsigned int j = 0;
    unsigned int i = 0;
    unsigned int k = 0;
    uint8x16x2_t neon_src;
    uint8x16x3_t neon_result;
    const uint8_t *pointer_src = subimage;
	uint8_t *pointer_dest = dest;
    unsigned char temp = 0, temp2 = 0;
    uint8x16_t vector0 = vdupq_n_u8(0);
    uint8x16_t vector127 = vdupq_n_u8(127);
    for (j = 0; j < SCREEN_SIZE_ALGORITMOS*2; j+=32,pointer_src+=32, pointer_dest+=48) {
        //zera todas para o limiar
        neon_src = vld2q_u8(pointer_src);
        neon_result.val[0] = neon_src.val[0];
        neon_result.val[1] = neon_src.val[0];
        neon_result.val[2] = neon_src.val[0];
        
        switch(cor){
			case 0:
			//vermelho
				neon_result.val[0] = vcgtq_u8(neon_src.val[0], vector127);
				neon_result.val[0] = vshrq_n_u8(neon_result.val[0],1);
				neon_result.val[1] = vector0;
				neon_result.val[2] = vector0;
				break;
			case 1:
			//verde
				neon_result.val[1] = vcgtq_u8(neon_src.val[0], vector127);
				neon_result.val[1] = vshrq_n_u8(neon_result.val[1],1);
				neon_result.val[0] = vector0;
				neon_result.val[2] = vector0;
				break;
			default:
				break;
		}
		vst3q_u8(pointer_dest,neon_result);
        
    }
}

void inline YUYVtoRGB(unsigned char * __restrict__ subimage, unsigned char* __restrict__ dest) {
    int j,i=0;
	int x;
	int screen_size_pixels = 1280*720;//1280x720
	int screen_size_bytes = screen_size_pixels*2;
	
	const uint8_t *pointer_y = subimage;
	const uint8_t *pointer_cbcr = subimage;
	uint8_t *vdest = dest; //ponteiro para gravar no destino
	
	uint8x8x2_t y; //captura os y`s e os cbs e crs
	uint8x8x4_t yuyv; //armazena os 4 componentes porem utiliza apenas os cbs e crs
	uint8x8x3_t rgb; //armazena os 3 componentes finais para a gravacao
	
	int16x4x2_t utemp; //variavel temporaria para o u, utilizada para intercalar os valores
	int16x4x2_t vtemp; //variavel temporaria para o v, utilizada para intercalar os valores

	int16x8_t u; //u ou cb
	int16x8_t v; //v ou cr
	
	
	int16x8_t vIntermediario; //armazena valores intermediarios
	int16x8_t uIntermediario;//armazena valores intermediarios
	int16x8_t v1;
	int16x8_t u1;
	int16x8_t rgIntermediario;//armazena valores intermediarios
	int16x8_t rg;
	int16x8_t red;
	int16x8_t green;
	int16x8_t blue;
	uint8x8_t convert;
	uint8x8x2_t final;
	
	// vetores de constantes
	int16x8_t vector128 = vdupq_n_s16(-128);
	int16x8_t vector0 = vdupq_n_s16(0);
	int16x8_t vector255 = vdupq_n_s16(255);
	
	int16x8_t y0;
	int16x8_t yuv1;
	int16x8_t yuv3; 
    for (j = 0; j < screen_size_bytes; j += 32) {

		yuyv = vld4_u8(pointer_cbcr);
		
		yuv1 = vmovl_u8(yuyv.val[1]);
		yuv3 = vmovl_u8(yuyv.val[3]);
		
		for(i = 0;i<2;i++){
			rgb = vld3_u8(vdest); //carrega rgb para os registradores (3)
			
			y = vld2_u8(pointer_y);
			y0 = vmovl_u8(y.val[0]);
			if(i == 0){
				utemp = vzip_s16(vget_low_s16(yuv1),vget_low_s16(yuv1));
				vtemp = vzip_s16(vget_low_s16(yuv3),vget_low_s16(yuv3));
			}else{
				utemp = vzip_s16(vget_high_s16(yuv1),vget_high_s16(yuv1));
				vtemp = vzip_s16(vget_high_s16(yuv3),vget_high_s16(yuv3));
			}
			
			u = vcombine_s16(utemp.val[0],utemp.val[1]);
			v = vcombine_s16(vtemp.val[0],vtemp.val[1]);
			
			//faz o calculo do v1
			vIntermediario = vaddq_s16(v,vector128);
			uIntermediario = vaddq_s16(u,vector128);
			v1 = vshrq_n_s16(vaddq_s16(vshlq_n_s16(vIntermediario,1),vIntermediario),1);
			
			
			//faz o calculo do u1
			u1 = vshrq_n_s16(vaddq_s16(vshlq_n_s16(uIntermediario,7),uIntermediario),6);
			
			//faz o calculo do rg = (((u - 128) << 1) +  (u - 128) + ((v - 128) << 2) + ((v - 128) << 1)) >> 3;
			rgIntermediario = vaddq_s16(vshlq_n_s16(vIntermediario,2),vshlq_n_s16(vIntermediario,1));
			rg = vshrq_n_s16(vaddq_s16(vaddq_s16(vshlq_n_s16(uIntermediario,1),uIntermediario),rgIntermediario),3);
			

			//faz a soma e a saturacao
			red = vmaxq_s16(vector0,vminq_s16(vector255,vaddq_s16(y0,v1)));
			green = vmaxq_s16(vector0,vminq_s16(vector255,vsubq_s16(y0,rg)));
			blue = vmaxq_s16(vector0,vminq_s16(vector255,vaddq_s16(y0,u1)));
			
			
			convert = vmovn_u16(red);
			rgb.val[0] = convert;
			
			convert = vmovn_u16(green);
			rgb.val[1] = convert;
			
			convert = vmovn_u16(blue);
			rgb.val[2] = convert;
			
			vst3_u8(vdest,rgb);
			
			//move o ponteiro destino (rgb)
			vdest+=24;
			
			//move o ponteiro do vetor yuv
			pointer_y+=16;
			
		}
		
		//move o ponteiro do auxiliar
		pointer_cbcr+=32;
    }
}

void inline NearestNeighbour(const unsigned char* __restrict__ src, unsigned char* __restrict__ dst, int scale) {
    int dst_x = WIDTH_AL / 2 - WIDTH_AL / scale / 2;
    int dst_y = HEIGHT_AL / 2 - HEIGHT_AL / scale / 2;

    static int i, j, k;

    int p_src = (dst_x + dst_y * WIDTH_AL)*3;
    static int p_dst = 0;
    static int cnt = 0;
    int ant = p_src;

    for (i = 0; i < HEIGHT_AL; i++) {
        for (j = 0; j < WIDTH_AL;) {
            for (k = 0; k < scale; k++, j++) {
                dst[p_dst] = src[p_src];
                dst[p_dst + 1] = src[p_src + 1];
                dst[p_dst + 2] = src[p_src + 2];
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

#endif

