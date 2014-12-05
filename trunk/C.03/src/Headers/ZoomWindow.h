#ifndef _ZOOMWINDOW_
#define _ZOOMWINDOW_

GtkWidget* zoom_window_new(int largura, int altua, char *title);
float fator_zoom;
int current_width;
int current_height;
float get_fator();
int get_current_width();
int get_current_height();


#endif
