#include <gtk/gtk.h>
#include "./src/Headers/ZoomCanvas.h"
#include "./src/Headers/capture.h"
#include "./src/Headers/debug.h"
#include "./src/Headers/util.h"
#include "./src/Headers/clique.h"
#include "./src/Headers/profile.h"
#include "./src/Headers/ZoomWindow.h"
#include "DSPHeaders/dummy_arm.h"


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
    //Alteração TCC Multithread com DSP
    GdkPixbuf *pixbuf = gdk_pixbuf_new_from_data(ini, GDK_COLORSPACE_RGB, 0, 8, sizeWidth, sizeHeight, sizeWidth * 3, NULL, NULL);
    cairo_t* cr = gdk_cairo_create(canvas->window);

    if (current_zoom > 1.0)
        cairo_scale(cr, current_zoom, current_zoom);
    gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);
    cairo_paint(cr);
    g_object_unref(G_OBJECT(pixbuf));
    cairo_destroy(cr);
}

void * time_handler() {
    static int temp = 0;
    while (1) {
        register_time();
        //Magic-----------------------------------------------------------------
        
        sem_wait(&bufferEmpty);
        pthread_mutex_lock(&bufferV4L2_mutex);
        processa_imagem((unsigned char *) buffersV4L2[IndexConsumidor].start);
        IndexConsumidor = (IndexConsumidor + 1) % BUFFERSIZE;
        pthread_mutex_unlock(&bufferV4L2_mutex);
        sem_post(&bufferFull);
        
        //----------------------------------------------------------------------
        double t = get_time_mili();
        if (temp++ > 7) {
            acc += t;
            cont++;
            printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
        }
    }


}

void * dspThread() {
    input_buffer_size = sizeImage;
    if (startDSP()) {
        printf("DSP Running\n");
    } else {
        printf("DSP Run Failed\n");
        exit(1);
    }
}

GtkWidget* zoom_canvas_new() {

    canvas = gtk_drawing_area_new();
    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    open_device();
    init_device();
    start_capturing();
    IndexConsumidor = 0;
    IndexProdutor = 0;
    /* TCC
     troca de sequencial para paralelo part arm
     thread threadProcess vai fazer o processamento da imagem, só a parte de zoom
     thread threadRead  vai fazer a obtenção da imagem e colocar no buffer*/
    //mutex
    pthread_mutex_init(&bufferV4L2_mutex, NULL);
    
    //semáforo
    sem_init(&bufferFull, 0, BUFFERSIZE);
    sem_init(&bufferEmpty, 0, 0);
    
    
    pthread_create(&threadRead, NULL, &call_process_image, NULL);
    pthread_create(&threadDSP, NULL, &dspThread, NULL);
    g_timeout_add(50, (GSourceFunc) time_handler, (gpointer) canvas);
    return canvas;
}

gboolean zoom_canvas_on_expose_event(GtkWidget *widget, GdkEventExpose *event, gpointer data) {
    return TRUE;

}

void change_config() {
    unsigned char status;
    status = get_profile();
    if (status == 0) {
        zoom = 1;
    }
    if (status == 1) {
        zoom = 2;
    }
    if (status == 2) {
        zoom = 2;
    }
    if (status == 3) {
        zoom = 1;
    }
    if (status == 4) {
        zoom = 2;
    }
    if (status == 5) {
        zoom = 1;
    }
    verifica_clique = 0;
}
