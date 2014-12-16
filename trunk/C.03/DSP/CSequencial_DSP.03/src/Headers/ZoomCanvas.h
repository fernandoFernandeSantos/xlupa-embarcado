#ifndef _ZOOMCANVAS_
#define _ZOOMCANVAS_

#define width 1280
#define height 720

GtkWidget* zoom_canvas_new();
unsigned char color, gray;
float zoom;
float current_zoom;
char brilho, contraste;
gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data);
void change_config();
void *captura_clique();
unsigned char verifica_clique;
pthread_t theadProcess;



#endif
