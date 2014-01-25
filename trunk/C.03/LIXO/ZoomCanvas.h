#ifndef _ZOOMCANVAS_
#define _ZOOMCANVAS_

GtkWidget* zoom_canvas_new();
int zoom, color, gray;
gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data);



#endif
