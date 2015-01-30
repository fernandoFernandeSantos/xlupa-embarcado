/* Copyright (C) 2009-2010 Felipe Contreras
 * Copyright (C) 2009-2010 Nokia Corporation
 * Copyright (C) 2009 Igalia S.L
 *
 * Author: Felipe Contreras <felipe.contreras@nokia.com>
 *
 * This file may be used under the terms of the GNU Lesser General Public
 * License version 2.1, a copy of which is found in LICENSE included in the
 * packaging of this file.
 */

#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <stdio.h>
#include "DSPHeaders/dummy_arm.h"
#include "DSPHeaders/util.h"
static inline int leave();
static unsigned long input_buffer_size = SIZE_IMAGE_ALGORITMOS;
static unsigned long output_buffer_size = SIZE_IMAGE_ALGORITMOS;
static bool done;
//static long double tempo;

static int dsp_handle;
static void *proc;


struct dsp_node *node;
struct dsp_msg msg;

static void
signal_handler(int signal) {
    done = true;
}

static inline struct dsp_node *
create_node(void) {
    struct dsp_node *node;
    const struct dsp_uuid dummy_uuid = {0x3dac26d0, 0x6d4b, 0x11dd, 0xad, 0x8b,
        { 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66}};

    if (!dsp_register(dsp_handle, &dummy_uuid, DSP_DCD_LIBRARYTYPE, "/lib/dsp/dummy.dll64P"))
        return false;

    if (!dsp_register(dsp_handle, &dummy_uuid, DSP_DCD_NODETYPE, "/lib/dsp/dummy.dll64P"))
        return false;

    if (!dsp_node_allocate(dsp_handle, proc, &dummy_uuid, NULL, NULL, &node)) {
        pr_err("dsp node allocate failed");
        return NULL;
    }

    if (!dsp_node_create(dsp_handle, node)) {
        pr_err("dsp node create failed");
        return NULL;
    }

    pr_info("dsp node created");

    return node;
}

static inline bool
destroy_node(struct dsp_node *node) {
    if (node) {
        if (!dsp_node_free(dsp_handle, node)) {
            pr_err("dsp node free failed");
            return false;
        }

        pr_info("dsp node deleted");
    }

    return true;
}

static inline void
configure_dsp_node(void *node, dmm_buffer_t *input_buffer, dmm_buffer_t *output_buffer) {
    struct dsp_msg msg;
    msg.cmd = 0;
    msg.arg_1 = (uint32_t) input_buffer->map;
    msg.arg_2 = (uint32_t) output_buffer->map;
    dsp_node_put_message(dsp_handle, node, &msg, -1);
}
static double t;

void runTaskIn(unsigned char *ini, unsigned int message, unsigned int zoom) {
    //messagem passada por paramêtro
    msg.cmd = message;
    msg.arg_1 = input_buffer->size;
    msg.arg_2 = zoom;
    memcpy(input_buffer->data, ini, SIZE_IMAGE);
    dsp_node_put_message(dsp_handle, node, &msg, -1);
    dsp_node_get_message(dsp_handle, node, &msg, -1);
    //memcpy(dest, output_buffer->data, output_buffer_size);
}

static bool
run_task() {
    if (!dsp_node_run(dsp_handle, node)) {
        pr_err("dsp node run failed");
        return false;
    }

    pr_info("dsp node running");
    printf("\ndsp node running\n");

    input_buffer = dmm_buffer_new(dsp_handle, proc, DMA_TO_DEVICE);
    output_buffer = dmm_buffer_new(dsp_handle, proc, DMA_FROM_DEVICE);

    dmm_buffer_allocate(input_buffer, input_buffer_size);
    dmm_buffer_allocate(output_buffer, output_buffer_size);

    dmm_buffer_map(output_buffer);
    dmm_buffer_map(input_buffer);

    configure_dsp_node(node, input_buffer, output_buffer);
    dmm_buffer_begin(input_buffer, input_buffer->size);
    dmm_buffer_begin(output_buffer, output_buffer->size);
}

int freeDSP() {
    dmm_buffer_end(input_buffer, input_buffer->size);
    dmm_buffer_end(output_buffer, output_buffer->size);
    unsigned long exit_status;
    dmm_buffer_unmap(output_buffer);
    dmm_buffer_unmap(input_buffer);

    dmm_buffer_free(output_buffer);
    dmm_buffer_free(input_buffer);

    if (!dsp_node_terminate(dsp_handle, node, &exit_status)) {
        pr_err("dsp node terminate failed: %lx", exit_status);
        printf("dsp node terminate failed: %lx\n", exit_status);
        return 0;
    }

    pr_info("dsp node terminated");
    printf("dsp node terminated\n");

    destroy_node(node);
    //fclose(arquivo);
    leave();

    return 1;
}

int startDSP() {
    int ret = 0;

    signal(SIGINT, signal_handler);

#ifdef DEBUG
    debug_level = 3;
#endif
    dsp_handle = dsp_open();

    if (dsp_handle < 0) {
        pr_err("dsp open failed");
        return -1;
    }

    if (!dsp_attach(dsp_handle, 0, NULL, &proc)) {
        pr_err("dsp attach failed");
        ret = -1;
        leave();
        return ret;
    }

    node = create_node();
    if (!node) {
        pr_err("dsp node creation failed");
        ret = -1;
        leave();
        return ret;
    }
    //aloca();
    run_task();
    return ret;
}

static inline int leave() {
    if (proc) {
        if (!dsp_detach(dsp_handle, proc)) {
            pr_err("dsp detach failed");
            return -1;
        }
        proc = NULL;
    }

    if (dsp_handle > 0) {
        if (dsp_close(dsp_handle) < 0) {
            pr_err("dsp close failed");
            return -1;
        }
    }
    return 0;
}
