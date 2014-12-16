#include <gtk/gtk.h>
#include "src/Headers/ZoomWindow.h"
#include "src/Headers/capture.h"
#include <unistd.h>  
#include "src/Headers/ZoomCanvas.h"
#include "src/Headers/debug.h"
#include <string.h>
#include <stdlib.h>
#include <pthread.h>
#include "src/Headers/clique.h"
#include "src/Headers/tableCreate.h"
//#include "src/Headers/algoritmos.h"
//#include "DSPHeaders/dummy_arm.h"
pthread_t clique;

int main(int argc, char **argv) {
    gtk_init(&argc, &argv);
    /* Para color é necessário colocar qual cor quer
     * Se R = 0, se G = 1, se B = 2
     * Para brilho ou contraste coloca-se o nível de brilho que se quer
     * o nível vai de 0 a 1
     */
    zoom = 1;
    color = 3;
    gray = 0;
    brilho = 0;
    contraste = 0;
   
    strcpy(dev_name, "/dev/video0");
    GtkWidget* window = zoom_window_new(1280, 720, "xLupa Embedded");
    gtk_widget_set_app_paintable(window, TRUE);
    pthread_create(&clique, NULL, &get_clique, NULL);

    GtkWidget *canvas = zoom_canvas_new();
    gtk_container_add(GTK_CONTAINER(window), canvas);
    gtk_widget_show_all(window);
    gtk_main();
    printf(" Finaliza ");
    freeDSP();

    return (0);
}
