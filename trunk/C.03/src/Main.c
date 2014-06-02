#include <gtk/gtk.h>
#include "./Headers/ZoomWindow.h"
#include "./Headers/capture.h"
#include <unistd.h>  
#include "./Headers/ZoomCanvas.h"
#include "./Headers/debug.h"
#include <string.h>
#include <stdlib.h>
#include <pthread.h>
#include "./Headers/clique.h"
pthread_t clique;

int main(int argc, char **argv) {
    gtk_init(&argc, &argv);
    zoom = 1.0;
    color = 3;
    gray = 1;
    brilho = 50;
    contraste = 50;
    strcpy(dev_name, "/dev/video0");
    GtkWidget* window = zoom_window_new(1280, 720, "xLupa Embedded");
    gtk_widget_set_app_paintable(window, TRUE);
    //pthread_create(&clique, NULL, &get_clique, NULL);
    //pthread_create(&clique, NULL, &main_loop, NULL);
    GtkWidget *canvas = zoom_canvas_new();
    gtk_container_add(GTK_CONTAINER(window), canvas);
    gtk_widget_show_all(window);
    gtk_main();
    printf(" Finaliza ");
    return (0);
}
