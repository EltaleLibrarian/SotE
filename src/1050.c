#include "common.h"

#define N		 4096	/* size of ring buffer */
#define F		   59	/* upper limit for match_length */
#define THRESHOLD	1   /* encode string into position and length if match_length is greater than this */

#define N_CHAR  (256 - THRESHOLD + F)
				/* kinds of characters (character code = 0..N_CHAR-1) */
#define T 		(N_CHAR * 2 - 1)	/* size of table */
#define R 		(T - 1)			/* position of root */
#define MAX_FREQ	0x8000		/* updates tree when the */

extern u32* nodeFrequencies;
extern u32* parentNodes;
extern u32* childNodes;

void rebalanceHuffmanTree(void);

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000450.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000470.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000648.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/rebalanceHuffmanTree.s")

void updateHuffmanTree(s32 currentNode) {
    s32 currentParent, oldParent, currentFreq, swapNode;
    u32* freqTablePtr;

    // Check if the frequency of the root node has reached the maximum allowed
    if (nodeFrequencies[R] == MAX_FREQ) {
        rebalanceHuffmanTree();
    }

    // Get the parent of the current node
    currentNode = parentNodes[currentNode + T];

    do {
        // Increment the frequency of the current node
        currentFreq = ++nodeFrequencies[currentNode];
        swapNode = currentNode + 1;

        // If the frequency order is disturbed, reorder the nodes
        if (currentFreq > nodeFrequencies[swapNode]) {
            freqTablePtr = &nodeFrequencies[swapNode];
            freqTablePtr += 2;

            // Find the correct position to reorder
            while ((currentParent = currentFreq > freqTablePtr[-1])) {
                freqTablePtr++;
            }
            swapNode = freqTablePtr - nodeFrequencies - 2;

            // Swap the frequencies
            nodeFrequencies[currentNode] = freqTablePtr[-2];
            freqTablePtr[-2] = currentFreq;

            // Update parent and child relationships
            currentParent = childNodes[currentNode];
            parentNodes[currentParent] = swapNode;
            if (currentParent < T) {
                parentNodes[currentParent + 1] = swapNode;
            }

            oldParent = childNodes[swapNode];
            childNodes[swapNode] = currentParent;

            parentNodes[oldParent] = currentNode;
            if (oldParent < T) {
                parentNodes[oldParent + 1] = currentNode;
            }

            childNodes[currentNode] = oldParent;

            // Move to the swapped node for further checks
            currentNode = swapNode;
        }
    } while ((currentNode = parentNodes[currentNode]) != 0); // Repeat until reaching the root
}

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_80000DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1050/func_800010D8.s")
