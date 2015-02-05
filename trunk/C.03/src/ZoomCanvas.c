#include <gtk/gtk.h>
#include <stdbool.h>
#include "./Headers/ZoomCanvas.h"
#include "./Headers/Capture.h"
#include "./Headers/Algoritmos.h"
#include "./Headers/Debug.h"
#include "./Headers/Util.h"
#include "./Headers/Clique.h"
#include "./Headers/Profile.h"
#include "./Headers/ZoomWindow.h"


static int estado;
static char buffer[256];
static GtkWidget *canvas;
static GdkPixbuf *pixbuf;
static cairo_t* cr;
static double acc = 0;
static int cont = 0;
static unsigned char * dest;
static unsigned char *dest_zoom;
static float fator;
static double t = 0;
static int troca = 0;
static int temp = 0;
static double results = 0;

void free_resources(gpointer data) {
    void stop_capturing(void);
    void uninit_device(void);
    void close_device(void);

}

void processa_imagem(unsigned char *ini) {
    fator = get_fator();
    //Ajuste de escala do zoom
    zoom = zoom * fator;
    estado = get_estado();
    if (estado == 1) {
        refresh_profile();
        change_config();
    }
    register_time();
    switch (get_profile()) {
        case 0:
        {
            YUYVtoRGB(ini, dest);
            break;
        }
        case 1:
        {
            YUYVtoRGB(ini, dest_zoom);
            NearestNeighbour(dest_zoom, dest, zoom);
            break;
        }
        case 2:
        {
            Grayscale(ini, dest);
            break;
        }
        case 3:
        {
            ImageThreshold(ini, dest, color);
            break;
        }
        case 4:
        {
            ImageThreshold(ini, dest, color);
            NearestNeighbour(dest_zoom, dest, zoom);
            break;
        }
        case 5:
        {
            ImageThreshold(ini, dest, color);
            break;
        }
    }
    t = get_time_mili();
    pixbuf = gdk_pixbuf_new_from_data(dest, GDK_COLORSPACE_RGB, 0, 8, WIDTH, HEIGHT, WIDTH * 3, NULL, NULL);

    cr = gdk_cairo_create(canvas->window);
    gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);
    cairo_paint(cr);
    g_object_unref(G_OBJECT(pixbuf));
    cairo_destroy(cr);
}

gboolean * time_handler() {
    call_process_image(processa_imagem);
    if (temp++ > 7) {
        acc += t;
        cont++;
        printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
        if (!(cont % 1000)) {
            refresh_profile();
            change_config();
            troca++;
            results = acc / cont;
            acc = 0;
            cont = 0;
            printf("Trocou perfil %d\nMedia %lf\n", troca, results);

            if (troca > 5)
                exit(1);
        }
    }
    return (gboolean*) TRUE;
}

GtkWidget* zoom_canvas_new() {
    dest = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));
    dest_zoom = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));
    canvas = gtk_drawing_area_new();
    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    open_device();
    init_device();
    start_capturing();
    g_timeout_add(10, (GSourceFunc) time_handler, (gpointer) canvas);
    return canvas;
}

gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data) {
    return TRUE;
}

void change_config() {
    unsigned char status;
    status = get_profile();
    //a cor = 3 não é cor
    if (status == 0) {
        zoom = 1;
        gray = 0;
        color = 3;
    }
    if (status == 1) {
        zoom = 2;
        gray = 0;
        color = 3;
    }
    if (status == 2) {
        zoom = 1;
        gray = 1;
        color = 3;
    }
    if (status == 3) {
        zoom = 1;
        gray = 0;
        color = 1;
    }
    if (status == 4) {
        zoom = 2;
        gray = 0;
        color = 1;
    }
    if (status == 5) {
        zoom = 1;
        gray = 0;
        color = 0;
    }
    verifica_clique = 0;
}
