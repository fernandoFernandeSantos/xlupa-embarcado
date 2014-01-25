#include <gtk/gtk.h>
#include "ZoomCanvas.h"
#include "capture.h"
//#include "capture3.c"/*errado*/
#include "algoritmos.h"
static char buffer[256];
gboolean time_handler(GtkWidget *widget)
{

 /* if (widget->window == NULL) return FALSE;

  time_t curtime;
  struct tm *loctime;

  curtime = time(NULL);
  loctime = localtime(&curtime);
  strftime(buffer, 256, "%T", loctime);
  puts(buffer);
  gtk_widget_queue_draw(widget);
  return TRUE;*/
  //cairo_t* cr = gdk_cairo_create(widget->window);
 // 	cairo_surface_t *image = cairo_image_surface_create_from_png ("./bola.png");
 // 	int i;

 	cairo_t* cr = gdk_cairo_create(widget->window);
  	GdkPixbuf* buffer =  read_frame();
  	if(gray){
	  	imagem_to_cinza(buffer);
	 }
	if(color){
		guchar cor1[]={0,255,0}; //anterior guchar cor1[]={255,0,0}
		guchar cor2[]={0,0,0};//guchar cor2[]={255,255,255};
		limiar_imagem(buffer, cor1, cor2, 127);
	}
	cairo_scale(cr, zoom,zoom);
	gdk_cairo_set_source_pixbuf(cr, buffer, 0, 0);

	cairo_paint(cr);
	
    g_object_unref(G_OBJECT(buffer));
	cairo_destroy(cr);
	gdk_flush();
	
	
	return TRUE;
	
	
}



GtkWidget* zoom_canvas_new(){
	
	GtkWidget *widget = gtk_drawing_area_new();
	g_signal_connect(widget,"expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
	open_device();
    init_device();
    start_capturing();

	g_timeout_add(80, (GSourceFunc) time_handler, (gpointer) widget);
	
	return widget;
}

gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data){
	/*cairo_t* cr = gdk_cairo_create(widget->window);
	cairo_surface_t *image = cairo_image_surface_create_from_png ("./bola.png");
	int i;
	GdkPixbuf* buffer =  read_frame();
	gdk_cairo_set_source_pixbuf(cr, buffer, 0, 0);
	cairo_paint(cr);*/

}


