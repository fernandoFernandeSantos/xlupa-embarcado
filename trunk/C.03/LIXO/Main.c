#include <gtk/gtk.h>
#include "ZoomWindow.h"
#include <unistd.h>  
#include "ZoomCanvas.h"

int main(int argc, char **argv){
	gtk_init(&argc, &argv);
    int c;
	zoom=1;
	color=0;
	gray=0;
	
    while ( (c = getopt(argc, argv, "c:z:g:")) != -1) {
        switch (c) {
        case 'z': //zoom
            printf ("option c with value '%s'\n", optarg);;
            zoom = atoi(optarg);
            break;
        case 'c': //color
        	color = atoi(optarg);
            break;
        case 'g': //gray
        	gray = atoi(optarg);
        default:
            printf ("?? getopt returned character code 0%o ??\n", c);
        }
    }
	GtkWidget* window = zoom_window_new(800, 600, "xLupa Embedded");
	GtkWidget *canvas = zoom_canvas_new();
	gtk_container_add(GTK_CONTAINER(window), canvas);
	gtk_widget_show_all(window);
	gtk_main();
	return(0);
}
