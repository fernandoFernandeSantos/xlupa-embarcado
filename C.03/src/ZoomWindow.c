#include <gtk/gtk.h>
#include "ZoomWindow.h"

void zoom_window_quit(GtkWidget *widget, gpointer data){
	puts("AKI");
	gtk_main_quit();
}

GtkWidget* zoom_window_new(gint width, gint height, gchar *title){
	GdkScreen* screen = NULL;

	float fator_width;
	float fator_height;

	GtkWidget *widget = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_window_set_title(GTK_WINDOW(widget), title);

	screen = gtk_window_get_screen(GTK_WINDOW(widget));
        current_width = gdk_screen_get_width(screen);
        current_height = gdk_screen_get_height(screen);

        fator_width = (float)(current_width/(float)1280);
        fator_height =(float)(current_height/(float)720);
        
        //printf("\n\n Teste do fator == %f %f %d %d\n\n", fator_width, fator_height, current_height,current_width);
        
        if( fator_width < fator_height)
        	fator_zoom = fator_height;
        else
            fator_zoom = fator_width;

        width = current_width;
        height = current_height;
       	gtk_widget_set_size_request(widget, width, height);
	gtk_widget_set_app_paintable(widget, TRUE);/*???*/
        gtk_window_fullscreen(GTK_WINDOW(widget));
	g_signal_connect(widget, "destroy", G_CALLBACK(zoom_window_quit), NULL);
	return widget;
}

float get_fator()
{
	return fator_zoom;
}

int get_current_width()
{
	return current_width;
}

int get_current_height()
{
	return current_height;
}
