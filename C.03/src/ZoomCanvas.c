#include <gtk/gtk.h>
#include "./Headers/ZoomCanvas.h"
#include "./Headers/capture.h"
#include "./Headers/algoritmos.h"
#include "./Headers/debug.h"
#include "./Headers/util.h"
#include "./Headers/clique.h"
#include "./Headers/profile.h"
#include "./Headers/ZoomWindow.h"


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
    int estado;


    //
    fator = get_fator();
    //Ajuste de escala do zoom
    current_zoom = zoom * fator;

    estado = get_estado();
    if (estado == 1) {
        refresh_profile();
        change_config();
    }
    if (gray) {//escala cinza
        imagem_to_cinza(ini);
    }

    //esquema é se cor vale 0, 1, ou 2 é a posição do vetor que altera
    //se cor vale 3 não altera nada
    if((color == 0) || (color == 1) || (color == 2)){
        limiar_imagem(ini, color);
    }

    //recebe o nível de brilho que quer
    //0 a 1, double
    if (brilho != 0.5 || contraste != 0.5) {
        brilho_contraste_imagem(ini, brilho, contraste);
    }

    GdkPixbuf *pixbuf = gdk_pixbuf_new_from_data(ini, GDK_COLORSPACE_RGB, 0, 8, width, height, width * 3, NULL, NULL);
    
    cairo_t* cr = gdk_cairo_create(canvas->window);


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
    return 1;

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