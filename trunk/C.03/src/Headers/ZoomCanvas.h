#ifndef _ZOOMCANVAS_
#define _ZOOMCANVAS_

GtkWidget* zoom_canvas_new();
int color, gray;
float zoom;
float current_zoom;
float brilho, contraste;
gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data);
void change_config();
void *captura_clique();
unsigned char verifica_clique;

#endif
