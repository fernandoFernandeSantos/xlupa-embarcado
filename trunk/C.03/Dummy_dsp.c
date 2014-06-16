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
#include "./DSPHeaders/node.h"
#include "./src/Headers/algoritmos.h"
//#include "./DSPHeaders/soma.h"

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
    //se msg = 0 gray = 1 e color = 3 (não aplica)
    //se msg = 1 gray = 0 e color = 0 (Vermelho)
    //se msg = 2 gray = 0 e color = 1 (Verde)
    while (!done) {
        NODE_getMsg(env, &msg, (unsigned) - 1);

        switch (msg.cmd) {
            case 0:
            {
                unsigned int size;

                size = (unsigned int) (msg.arg_1);

                BCACHE_inv(input, size, 1);
                imagem_to_cinza((unsigned char*) input);
                BCACHE_wb(output, size, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 1:
            {
                unsigned int size;

                size = (unsigned int) (msg.arg_1);

                BCACHE_inv(input, size, 1);
                imagem_to_cinza((unsigned char*) input);
                limiar_imagem((unsigned char*) input, 0);
                BCACHE_wb(output, size, 1);

                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 2:
            {
                unsigned int size;
                size = (unsigned int) (msg.arg_1);

                BCACHE_inv(input, size, 1);
                imagem_to_cinza((unsigned char*) input);
                limiar_imagem((unsigned char*) input, 1);
                BCACHE_wb(output, size, 1);
                NODE_putMsg(env, NULL, &msg, 0);
                break;
            }
            case 0x80000000:
                done = 1;
                break;
        }
    }

    return 0x8000;
}
