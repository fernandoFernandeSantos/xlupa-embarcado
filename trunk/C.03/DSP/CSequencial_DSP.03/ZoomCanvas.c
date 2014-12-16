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
static double media = 0;
static int contador = 0;

static double t = 0;
static int acc = 0;
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
    
    if (gray) {//escala cinza
//        register_time();
        runTaskIn(ini, dest, 1);
 //       t = get_time_mili();
    }
    //esquema é se cor vale 0, 1, ou 2 é a posição do vetor que altera
    //se cor vale 3 não altera nada
    if (color == 0) {
   //     register_time();

        runTaskIn(ini, dest, 2);
    //t = get_time_mili();

    }
    if (color == 1) {
     //register_time();
    
    runTaskIn(ini, dest, 3);
    //t = get_time_mili();

    }
    if(color == 3 && !gray){
//     register_time();
 
       runTaskIn(ini, dest, 4);
  //  t = get_time_mili();

    }
    //printf("Atual %10.2lf\n", t);

    pixbuf = gdk_pixbuf_new_from_data(dest, GDK_COLORSPACE_RGB, 0, 8, width, height, width * 3, NULL, NULL);

    cr = gdk_cairo_create(canvas->window);


    if (current_zoom > 1)
        cairo_scale(cr, current_zoom, current_zoom);

    gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);

    cairo_paint(cr);
    g_object_unref(G_OBJECT(pixbuf));
    cairo_destroy(cr);

}

gboolean * time_handler() {
    static int temp = 0;

    // register_time();
     call_process_image(processa_imagem);
     //t = get_time_mili();
     if (temp++ > 7) {
         //acc += t;
         cont++;
         media += t;
        // printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
         if (!(cont % 100)) {
             troca++;
             refresh_profile();
             change_config();
             double results = media / 100;
             media = 0;
             printf("Trocou perfil, media %lf\n", results);
             if (troca > 5) {
                 freeDSP();
                 stop_capturing();
             }
         }
     }
    /*
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
            if (troca > 6) {
                freeDSP();
                stop_capturing();
            }
        }
        register_time();
    }*/

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
