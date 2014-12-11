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
static int acc = 0;
static int cont = 0;
static unsigned char * dest;

static double t = 0;
static int troca = 0;
static double media = 0;

void free_resources(gpointer data) {
    void stop_capturing(void);
    void uninit_device(void);
    void close_device(void);

}

void processa_imagem(unsigned char *ini) {
    estado = get_estado();
    if (estado == 1) {
        refresh_profile();
        change_config();
    }
    if ((color == 0) || (color == 1) || (color == 2)) {
        ImageThreshold(ini, dest, color);
    } else {
        if (!gray)
            YUYVtoRGB(ini, dest);
        else
            Grayscale(ini, dest);
    }
    pixbuf = gdk_pixbuf_new_from_data(dest, GDK_COLORSPACE_RGB, 0, 8, WIDTH, HEIGHT, WIDTH * 3, NULL, NULL);

    cr = gdk_cairo_create(canvas->window);


    if (zoom > 1)
        cairo_scale(cr, zoom, zoom);

    gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);

    cairo_paint(cr);
    g_object_unref(G_OBJECT(pixbuf));
    cairo_destroy(cr);

}

static int fpscont = 0;
static int frames_count = 0;

gboolean * time_handler() {
    /*static int temp = 0;
    register_time();
    call_process_image(processa_imagem);
    t = get_time_mili();
    if (temp++ > 7) {
          //acc += t;
          cont++;
        media += t;
        //printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
        if (!(cont % 100)) {
            refresh_profile();
            change_config();
            troca++;
            printf("Trocou perfil %d\nMedia %lf\n", troca, media / 100);
            media = 0;
            if (troca > 5)
                exit(1);
        }
    }*/
    
    if (acc == 0) {
        register_time();
    }

    call_process_image(processa_imagem);

    frames_count++;
    double aux;
    if (frames_count == 30) {
        double t = get_time_mili();
        acc += 30;
        //printf("tempo %lf\n",t);
        //para não deixar 
        aux = (30000 / t);
        media += aux;
        fpscont++;
        printf("%lf\n", 30000 / t);
        frames_count = 0;
        if (acc >= 300) {
            if (fpscont == 10) {
                printf("Trocou perfil %d\nMedia %lf\n", troca, media / 10);
                refresh_profile();
                change_config();
                troca++;
                media = 0;
                fpscont = 0;
            }
            if (troca > 6)
                stop_capturing();
        }
        register_time();
    }
    return (gboolean*) TRUE;
}

GtkWidget* zoom_canvas_new() {
    dest = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));
    canvas = gtk_drawing_area_new();

    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    open_device();
    init_device();
    start_capturing();
    // pthread_create(&theadProcess, NULL, &time_handler, NULL);
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
