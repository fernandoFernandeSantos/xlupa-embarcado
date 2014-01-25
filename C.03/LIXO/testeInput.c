#include <stdio.h>     /* for printf */
#include <stdlib.h>    /* for exit */
#include <unistd.h>    /* for getopt */
int main (int argc, char **argv) {
    int c;
	int zoom=1, color=0, gray=0;
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
    printf("%d %d %d\n", zoom, color, gray);
    exit (0);
}

