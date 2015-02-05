#include <gtk/gtk.h>
#include "src/Headers/ZoomCanvas.h"
#include "src/Headers/capture.h"
//
#include "src/Headers/debug.h"
#include "src/Headers/util.h"
#include "src/Headers/clique.h"
#include "src/Headers/profile.h"
#include "src/Headers/ZoomWindow.h"
#include "DSPHeaders/dummy_arm.h"
#include "DSPHeaders/util.h"


static char buffer[256];
static GtkWidget *canvas;
static GdkPixbuf *pixbuf;
static cairo_t* cr;
static int troca = 0;
static int temp = 0;
static double results;
static double t = 0;
static double acc = 0;
static int cont = 0;
static int estado;
static float fator;
static int frames_count = 0;
static int fpscont = 0;
void * dest;

void free_resources(gpointer data) {
    //puts("LIBERANDO DISPOSITIVO");
    void stop_capturing(void);
    void uninit_device(void);
    void close_device(void);

}

void processa_imagem(unsigned char *ini) {
    fator = get_fator();
    //Ajuste de escala do zoom
    current_zoom = zoom * fator;

    estado = get_estado();
    if (estado == 1) {
        refresh_profile();
        change_config();
    }
    //getting just frame processing time
    register_time();
    runTaskIn(ini, get_profile() + 1, zoom);
    t = get_time_mili();
    
    pixbuf = gdk_pixbuf_new_from_data(output_buffer->data, GDK_COLORSPACE_RGB, 0, 8, width, height, width * 3, NULL, NULL);
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
        results = acc / cont;
        printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, results);
        if (!(cont % 1000)) {
            troca++;
            refresh_profile();
            change_config();
            acc = 0;
            cont = 0;
            printf("\nTrocou perfil %d, media %lf\n", troca++, results);
            if (troca > 5) {
                freeDSP();
                stop_capturing();
            }
        }
    }
    return (gboolean*) TRUE;
}

GtkWidget* zoom_canvas_new() {
    dest = calloc(SIZE_IMAGE_ALGORITMOS, 1);
    canvas = gtk_drawing_area_new();

    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    if (startDSP() == -1)
        exit(-1);
    open_device();
    init_device();
    start_capturing();
    //pthread_create(&theadProcess, NULL, &time_handler, NULL);
    g_timeout_add(50, (GSourceFunc) time_handler, (gpointer) canvas);
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
