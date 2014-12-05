#ifndef _ZOOMCANVAS_
#define _ZOOMCANVAS_

GtkWidget* zoom_canvas_new();
unsigned char color, gray;
unsigned char zoom;
//float current_zoom;
char brilho, contraste;
gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data);
void change_config();
void *captura_clique();
unsigned char verifica_clique;
pthread_t theadProcess;

#endif
