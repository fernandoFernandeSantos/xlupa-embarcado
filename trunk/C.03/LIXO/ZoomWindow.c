#include <gtk/gtk.h>

void zoom_window_quit(GtkWidget *widget, gpointer data){
	gtk_main_quit();
}

GtkWidget* zoom_window_new(gint width, gint height, gchar *title){
	GtkWidget *widget = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title(GTK_WINDOW(widget), title);
	gtk_widget_set_size_request(widget, width, height);	
	g_signal_connect(widget, "destroy", G_CALLBACK(zoom_window_quit), NULL);
	return widget;
}
