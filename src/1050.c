#include "common.h"

#define N		 4096	/* size of ring buffer */
#define F		   18	/* upper limit for match_length */
#define THRESHOLD	1   /* encode string into position and length if match_length is greater than this */


#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000450.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000470.s")
// Slightly tweaked Okumura's lzss.c
u8* func_80000470(u8* in_buff, u8* out_buff) {
    s16 bit;
    s32 i;
    s32 j;
    s32 k;
    u8* text_buf;
    s32 var_v1;
    s32 finished;
    u8 flags;
    int c;

    text_buf = in_buff - N;
    var_v1 = 1;
    finished = 0;
    
    while (finished == 0) {
        flags = *in_buff++;
        for (bit = 0; bit < 8; bit++) {
            if (flags & (1 << bit)) {
                c = *in_buff++;
                text_buf[var_v1++] = *out_buff++ = c;
                var_v1 &= N - 1;
            } else {
                j = *in_buff++;
                i = *in_buff++;
                
                i += ((j & 0xF) << 8);
                j = (j >> 4);
                
                if (i == 0) {
                    finished = 1;
                    break;
                } else {
                    j += THRESHOLD;
                    for (k = 0; k <= j; k++) {
                        c = text_buf[(i + k) & (N - 1)];
                        text_buf[var_v1++] = *out_buff++ = c;
                        var_v1 &= N - 1;
                    }
                }
            }
            
        }
    }
    
    return out_buff;
}

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_8000085C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000C3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_800010D8.s")
