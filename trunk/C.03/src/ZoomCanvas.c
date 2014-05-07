#include <gtk/gtk.h>
#include "ZoomCanvas.h"
#include "capture.h"
#include "algoritmos.h"
#include "debug.h"
#include "util.h"
#include "clique.h"
#include "profile.h"
#include "ZoomWindow.h"

static char buffer[256];
static GtkWidget *canvas;

static double acc = 0;
static int cont = 0;

float fator;

void free_resources(gpointer data) {
    //puts("LIBERANDO DISPOSITIVO");
    void stop_capturing(void);
    void uninit_device(void);
    void close_device(void);

}

void processa_imagem(unsigned char *ini) {
    int width = 1280;
    int height = 720;
/*
    int j;
*/
    int estado;

    //	width = get_current_width();
    //	height = get_current_height();

    GdkPixbuf *pixbuf = gdk_pixbuf_new_from_data(ini, GDK_COLORSPACE_RGB, 0, 8, width, height, width * 3, NULL, NULL);
    fator = get_fator();
    //Ajuste de escala do zoom
    current_zoom = zoom * fator;
    //printf(" fator %f zoom %f\n" ,fator, zoom);
    estado = get_estado();
    if (estado == 1) {
        refresh_profile();
        change_config();
    }
    if (gray) {//escala cinza
        imagem_to_cinza(pixbuf);
    }
    //alteracao feita 28/08/2012
    //Por Fernando Fernandes
    if (color == 1) {//cor de frente e fundo
        guchar cor1[] = {0, 255, 0}; //anterior guchar cor1[]={255,0,0}
        guchar cor2[] = {0, 0, 0}; //guchar cor2[]={255,255,255};
        //limiar_imagem(pixbuf, cor1, cor2, 127);/
        limiar_imagem(pixbuf, cor1, cor2); //antes tinha o 127 do limite
    }
    if (color == 3)//nova configuracao de cor vermelha
    {
        guchar cor1[] = {255, 0, 0};
        guchar cor2[] = {0, 0, 0};
        //limiar_imagem(pixbuf, cor1, cor2, 127);
        limiar_imagem(pixbuf, cor1, cor2); //antes tinha o 127 do limite
    }

    if (brilho != 50 || contraste != 50) {
        brilho_contraste_imagem(pixbuf, brilho / 100., contraste / 100.);
    }

    cairo_t* cr = gdk_cairo_create(canvas->window);

    //cairo_translate(cr, 0,-100);

    if (current_zoom > 1.0)
        cairo_scale(cr, current_zoom, current_zoom);

    gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);

    cairo_paint(cr);
    g_object_unref(G_OBJECT(pixbuf));
    cairo_destroy(cr);

}

gboolean time_handler() {
    static int temp = 0;
    //while (1) {
    register_time();
    call_process_image(processa_imagem);
    double t = get_time_mili();
    if (temp++ > 7) {
        acc += t;
        cont++;
        printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
    }
    //}

}

GtkWidget* zoom_canvas_new() {

    canvas = gtk_drawing_area_new();

/*
    int width;
    int height;
*/
    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    open_device();
    init_device();
    start_capturing();

    g_timeout_add(50, (GSourceFunc) time_handler, (gpointer) canvas);
    //g_timeout_add_full(G_PRIORITY_HIGH+20,100, (GSourceFunc) time_handler, canvas, (GDestroyNotify)free_resources);

    return canvas;
}

gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data) {
    return TRUE;

}

void change_config() {
    int status;
    status = get_profile();
    if (status == 0) {
        zoom = 1;
        gray = 0;
        color = 0;
    }
    if (status == 1) {
        zoom = 2;
        gray = 0;
        color = 0;
    }
    if (status == 2) {
        zoom = 2;
        gray = 1;
        color = 0;
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
        color = 3;
    }
    verifica_clique = 0;
}
