#include <gtk/gtk.h>
#include "algoritmos.h"

void imagem_to_cinza(GdkPixbuf *subimage){
   //GdkPixbuf *subimage = subimage1;
   guchar* rgb;
   guint32 pixel;
   guchar* subimage_data = gdk_pixbuf_get_pixels (subimage);
   int orig_img_width = gdk_pixbuf_get_width (subimage);
	int orig_img_height = gdk_pixbuf_get_height (subimage);
	int source_rowstride = gdk_pixbuf_get_rowstride (subimage);
	//printf("%d %d %d\n", orig_img_width, orig_img_height, source_rowstride);
	int i, lx, ly, temp;
   for (ly = 0; ly <= orig_img_height -2; ly++){
	 	for (lx = 0; lx <= orig_img_width - 2; lx++){
		   GET_PIXEL24(subimage_data,lx, ly, source_rowstride, &pixel);
		   rgb=(guchar *)&pixel;
		   temp = 0;
		   for(i=0;i<3;i++)
			   temp += rgb[i];
	      	temp /= 3;
		   for(i=0;i<4;i++)
			   rgb[i] = temp;
			
			PUT_PIXEL24 (subimage_data, lx, ly, source_rowstride, pixel);	
		}
	}
}


void limiar_imagem(GdkPixbuf *subimage, guchar cor_rgb1[3], guchar cor_rgb2[3], int limite){

   if(cor_rgb1==NULL || cor_rgb2==NULL)return;
   guchar* rgb;
   guint32 pixel;
   guchar* subimage_data = gdk_pixbuf_get_pixels (subimage);
   int orig_img_width = gdk_pixbuf_get_width (subimage);
	int orig_img_height = gdk_pixbuf_get_height (subimage);
	int lx, ly;
	int source_rowstride = gdk_pixbuf_get_rowstride (subimage);
	int cont=0;
   for (ly = 0; ly <= orig_img_height -2; ly++){
	 	for (lx = 0; lx <= orig_img_width - 2; lx++){
	 	   //if(ly > ampliacao_y1 && ly < ampliacao_y2 && lx > ampliacao_x1 && lx <ampliacao_x2)continue;
		   GET_PIXEL24(subimage_data,lx, ly, source_rowstride, &pixel);
		   rgb=(guchar *)&pixel;
		   int media = (rgb[0] + rgb[1] + rgb[2])/3;
		   if(media < limite){
		      if(cor_rgb1!=NULL){
		         rgb[0]=cor_rgb1[0];
		         rgb[1]=cor_rgb1[1];
		         rgb[2]=cor_rgb1[2];
		      }
		   }else {
		      if(cor_rgb2!=NULL){
		         cont++;
		         rgb[0] = cor_rgb2[0];
		         rgb[1] = cor_rgb2[1];
		         rgb[2] = cor_rgb2[2];
		      }
		   }
       
         PUT_PIXEL24 (subimage_data, lx, ly, source_rowstride, pixel);
      }
   }


}
