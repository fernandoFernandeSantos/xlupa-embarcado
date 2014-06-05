#include <gtk/gtk.h>
#include "./src/Headers/ZoomWindow.h"
#include "./src/Headers/capture.h"
#include <unistd.h>  
#include "./src/Headers/ZoomCanvas.h"
#include "./src/Headers/debug.h"
#include <string.h>
#include <stdlib.h>
#include <pthread.h>
#include "./src/Headers/clique.h"
#include "./src/Headers/tableCreate.h"
pthread_t clique;

int main(int argc, char **argv) {
    //chama a criação da tabela

    //if (!naiveTable(vetR, vetG, vetB))
    //    return -1;

   // if (!expertTableCreate())
   //     return -2;
    printf("Loading expertTable...\n");
    if(expertTableLoad())
        printf("ExpertTable loaded!\n");
    else
        printf("Failed to load expertTable\n");
    
    gtk_init(&argc, &argv);
    /* Para color é necessário colocar qual cor quer
     * Se R = 0, se G = 1, se B = 2
     * Para brilho ou contraste coloca-se o nível de brilho que se quer
     * o nível vai de 0 a 1
     */
    zoom = 1.0;
    color = 0;
    gray = 0;
    brilho = 0.5;
    contraste = 0.5;
    strcpy(dev_name, "/dev/video0");
    GtkWidget* window = zoom_window_new(1280, 720, "xLupa Embedded");
    gtk_widget_set_app_paintable(window, TRUE);
    //pthread_create(&clique, NULL, &get_clique, NULL);

    GtkWidget *canvas = zoom_canvas_new();
    gtk_container_add(GTK_CONTAINER(window), canvas);
    gtk_widget_show_all(window);
    gtk_main();
    printf(" Finaliza ");
     
     expertTableDestroy();
     return (0);
}
