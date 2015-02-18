#include <gtk/gtk.h>
#include "./Headers/ZoomWindow.h"
#include "./Headers/Capture.h"
#include <unistd.h>  
#include "./Headers/ZoomCanvas.h"
#include "./Headers/Debug.h"
#include <string.h>
#include <stdlib.h>
#include <pthread.h>
#include "./Headers/Clique.h"
pthread_t clique;

int main(int argc, char **argv) {
    //para medição de energia
    system("i2cset -y -f 1 0x4a 0x00 0x01\n"
            "i2cset -y -f 1 0x48 0xbb 0x08\n"
            "i2cset -y -f 1 0x4a 0x06 0x28\n"
            "i2cset -y -f 1 0x4a 0x07 0x00\n"
            "i2cset -y -f 1 0x4a 0x08 0x28\n"
            "i2cset -y -f 1 0x4a 0x09 0x00\n");
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
    GtkWidget* window = zoom_window_new(WIDTH, HEIGHT, "xLupa Embedded");
    gtk_widget_set_app_paintable(window, TRUE);
    pthread_create(&clique, NULL, &get_clique, NULL);

    GtkWidget *canvas = zoom_canvas_new();
    gtk_container_add(GTK_CONTAINER(window), canvas);
    gtk_widget_show_all(window);
    gtk_main();
    printf(" Finaliza ");
    return (0);
}
