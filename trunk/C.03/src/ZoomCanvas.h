#ifndef _ZOOMCANVAS_
#define _ZOOMCANVAS_

GtkWidget* zoom_canvas_new();
int color, gray;
double zoom;
double current_zoom;
int taxa_refresh;
int brilho, contraste;
gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data);
void change_config();
void *captura_clique();
int verifica_clique;

#endif
