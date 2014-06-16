
#include <stdio.h>
#include "./src/Headers/tableCreate.h"

unsigned char naiveTable() {
    unsigned short i;
    for (i = 0; i < 256; i++) {
        vetR[i] = (i * 0.229);
        vetG[i] = (i * 0.587);
        vetB[i] = (i * 0.114);

    }
    return 1;
}

unsigned char expertTableCreate() {
    FILE *ifp;

    ifp = fopen("in.list", "wb");

    if (ifp == NULL) {
        fprintf(stderr, "Can't open input file in.list!\n");
        return 0; //zica
    }

    unsigned short i;
    unsigned short j;
    unsigned short k;
    unsigned char soma = 0;
    unsigned int somaInt = 0;
    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {
            for (k = 0; k < 256; k++) {
                somaInt = (unsigned int) (vetR[i] + vetG[j] + vetB[k]);
                soma = (unsigned char) somaInt;
                fwrite(&soma, sizeof (unsigned char), 1, ifp);
            }
        }

    }

    fclose(ifp);
    return 1;
}

unsigned char expertTableLoad() {
    matValores = (unsigned char***) calloc(256, sizeof (unsigned char**));
    if (matValores == NULL)
        return 0;

    int i;
    for (i = 0; i < 256; i++) {
        matValores[i] = (unsigned char**) calloc(256, sizeof (unsigned char*));
        if (matValores[i] == NULL)
            return 0;
    }
    int j;
    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {
            matValores[i][j] = (unsigned char*) calloc(256, sizeof (unsigned char));
            if (matValores[i][j] == NULL)
                return 0;
        }

    }
    int k;
    unsigned char c;
    FILE *ifp;

    ifp = fopen("in.list", "rb");

    if (ifp == NULL) {
        fprintf(stderr, "Can't open input file in.list!\n");
        return 0; //zica
    }
    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {
            for (k = 0; k < 256; k++) {
                c = fgetc(ifp);
                if (c != EOF)
                    matValores[i][j][k] = c;
                else
                    return 0;
            }
        }
    }
    return 1;
}

unsigned char expertTableDestroy() {
    int i, j;
    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {
            free(matValores[i][j]);
        }
    }
    for (i = 0; i < 256; i++) {
        free(matValores[i]);
    }
    free(matValores);    
}

