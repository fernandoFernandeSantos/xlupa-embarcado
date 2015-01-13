/*
 * Copyright (C) 2008-2009 Nokia Corporation.
 *
 * Author: Felipe Contreras <felipe.contreras@nokia.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation
 * version 2.1 of the License.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

#include <stddef.h>
#include "DSPHeaders/node.h"
#include "DSPHeaders/algoritmos.h"
#include <stdlib.h>

unsigned int
dummy_create(void) {
    return 0x8000;
}

unsigned int
dummy_delete(void) {
    return 0x8000;
}

unsigned int
dummy_execute(void *env) {
    dsp_msg_t msg;
    void *input;
    void *output;
    unsigned char done = 0;
    unsigned int size;
    unsigned int zoom;
    unsigned char *aux = calloc(SIZE_IMAGE_ALGORITMOS, 1);

    while (!done) {
        NODE_getMsg(env, &msg, (unsigned) - 1);

        switch (msg.cmd) {
            case 0:
            {
                input = (void *) (msg.arg_1);
                output = (void *) (msg.arg_2);
                break;
            }
            case 1: //normal
            {

                size = (unsigned int) (msg.arg_1);
                BCACHE_inv(input, size, 1);
                YUYVtoRGB(input, output);
                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 2: //com zoom
            {
                size = (unsigned int) (msg.arg_1);
                zoom = (unsigned int) (msg.arg_2);
                BCACHE_inv(input, size, 1);

                YUYVtoRGBPlusZoom(input, output,aux, zoom);

                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 3://cinza
            {

                size = (unsigned int) (msg.arg_1);

                BCACHE_inv(input, size, 1);
                Grayscale(input, output);
                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 4://verde
            {
                size = (unsigned int) (msg.arg_1);

                BCACHE_inv(input, size, 1);
                ImageThreshold(input, output, 1);
                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 5: //verde com zoom
            {
                size = (unsigned int) (msg.arg_1);
                zoom = (unsigned int) (msg.arg_2);
                BCACHE_inv(input, size, 1);

                ImageThresholdPlusZoom(input, output,aux, 1, zoom);
                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);
                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 6://vermelho
            {
                size = (unsigned int) (msg.arg_1);
                BCACHE_inv(input, size, 1);
                ImageThreshold(input, output, 0);
                BCACHE_wbInv(output, SIZE_IMAGE_ALGORITMOS, 1);
                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 0x80000000:
                done = 1;
                break;
        }
        free(aux);
    }

    return 0x8000;
}
