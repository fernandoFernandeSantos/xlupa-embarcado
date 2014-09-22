#include <gtk/gtk.h>
#include <stdbool.h>
#include <string.h>
#include "./Headers/ZoomCanvas.h"
#include "./Headers/capture.h"
#include "./Headers/algoritmos.h"
#include "./Headers/debug.h"
#include "./Headers/util.h"
#include "./Headers/clique.h"
#include "./Headers/profile.h"
#include "./Headers/ZoomWindow.h"
#include "Headers/SharedVars.h"



static double t = 0;
static int fpscont = 0;
static int frames_count = 0;
static int estado;
static char buffer[256];
static GtkWidget *canvas;
static GdkPixbuf *pixbuf;
static cairo_t* cr;
static double acc = 0;
static int cont = 0;

static int troca = 0;
static double media = 0;

void free_resources(gpointer data) {
    void stop_capturing(void);
    void uninit_device(void);
    void close_device(void);

}

//show_image é a consumidora do processa

void * show_image() {
    unsigned char *final = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));

    while (true) {
        //Parte UFC do trabalho-------------------------------------------------
        sem_wait(&sem_process_empty);
        out_process = (out_process + 1) % TAMANHO_BUFFER;
        memcpy(final, processa_show[out_process].data, SIZE_IMAGE_ALGORITMOS);
        sem_post(&sem_process_full);
        //----------------------------------------------------------------------

        pixbuf = gdk_pixbuf_new_from_data(final,
                GDK_COLORSPACE_RGB, 0, 8, WIDTH, HEIGHT, WIDTH * 3, NULL, NULL);
        cr = gdk_cairo_create(canvas->window);

        if (zoom > 1)
            cairo_scale(cr, zoom, zoom);

        gdk_cairo_set_source_pixbuf(cr, pixbuf, 0, 0);

        cairo_paint(cr);

        g_object_unref(G_OBJECT(pixbuf));
        cairo_destroy(cr);
    }
}
//o processa imagem é um produtor e ao mesmo tempo consumidor - "Agente duplo"
//ela é consumidor do time_handler
//ela é produtora do show_image

void * processa_imagem() {
    int i;
    for (i = 0; i < TAMANHO_BUFFER; i++) {
        processa_show[i].size = SIZE_IMAGE_ALGORITMOS;
        processa_show[i].data = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));

    }

    unsigned char *inicial = calloc(SIZE_IMAGE_ALGORITMOS, sizeof (unsigned char));
    while (true) {
        //Parte UFC do trabalho-------------------------------------------------
        //sem chance aqui é cópia mesmo
        sem_wait(&sem_capture_empty);
        out_capture = (out_capture + 1) % TAMANHO_BUFFER;
        memcpy(inicial, captura_processa[out_capture].start, ORIGINAL_SIZE);
        sem_post(&sem_capture_full);
        //----------------------------------------------------------------------

        estado = get_estado();
        if (estado == 1) {
            refresh_profile();
            change_config();
        }

        //Parte UFC do trabalho-------------------------------------------------
        //produz para o show
        sem_wait(&sem_process_full);
        in_process = (in_process + 1) % TAMANHO_BUFFER;
        if ((color == 0) || (color == 1) || (color == 2)) {
            limiar_imagem(inicial, processa_show[in_process].data, color);
        } else {
            if (!gray)
                sem_modificacao(inicial, processa_show[in_process].data);
            else
                imagem_to_cinza(inicial, processa_show[in_process].data);
        }
        sem_post(&sem_process_empty);
        //----------------------------------------------------------------------
    }
}

//time_handler é o produtor do processa

void * time_handler() {
    static int temp = 0;
    while (true) {
        register_time();
        //Parte UFC do trabalho-------------------------------------------------
        //printf("in capture %d\n", in_capture);
        sem_wait(&sem_capture_full);
        while (!call_process_image());
        in_capture = (in_capture + 1) % TAMANHO_BUFFER;
        sem_post(&sem_capture_empty);
        //----------------------------------------------------------------------


        t = get_time_mili();
        if (temp++ > 7) {
            acc += t;
            cont++;
            media += t;
            printf("Amostragem: %3d | Atual : %10.2lfms | Média: %10.2lfms\n", cont, t, acc / cont);
            /* if (!(cont % 100)) {
                 refresh_profile();
                 change_config();
                 troca++;
                 printf("Trocou perfil %d\nMedia %lf", troca, media/100);
                 media = 0;
                 if (troca > 5)
                     exit(1);
             }*/
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
           /*if (fpscont == 10) {
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
     * register_time();
    }
   return (gboolean*) TRUE;
   }*/
}

GtkWidget* zoom_canvas_new() {
    canvas = gtk_drawing_area_new();
    g_signal_connect(canvas, "expose-event", G_CALLBACK(zoom_canvas_on_expose_event), NULL);
    open_device();
    init_device();
    start_capturing();

    in_capture = 0;
    in_process = 0;
    out_capture = 0;
    out_process = 0;

    //será usado somente threads criadas por pthread

    pthread_create(&capture, NULL, &time_handler, NULL);
    pthread_create(&process, NULL, &processa_imagem, NULL);
    //pthread_create(&show, NULL, &show_image, NULL);
    g_timeout_add(10, (GSourceFunc) show_image, (gpointer) canvas);
    //inicializa os semaforos
    sem_init(&sem_capture_full, 0, TAMANHO_BUFFER);
    sem_init(&sem_capture_empty, 0, 0);
    sem_init(&sem_process_empty, 0, 0);
    sem_init(&sem_process_full, 0, TAMANHO_BUFFER);
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
