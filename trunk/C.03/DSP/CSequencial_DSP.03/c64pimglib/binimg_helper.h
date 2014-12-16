// ================================================================
//  binimg_helper.h - rev 1
//  Part of C64+ IMGLIB binary image helper library source code
// ----------------------------------------------------------------
//  Copyright (c) 2011 Texas Instruments, Incorporated.
//  All Rights Reserved.
// ================================================================

#include "tistdtypes.h"

// helper functions
extern void binimg_helper_img2bin(Uint8 *restrict x_data, Uint8 *restrict y_data, Uint8 thresh, int nr, int nc);
extern void binimg_helper_bin2img(Uint8 *restrict x_data, Uint8 *restrict y_data, Uint8 low_val, Uint8 high_val, int nr, int nc);
