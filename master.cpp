#include "parameters.h"
#include <ap_fixed.h>
#include "model_functions.h"
#include "utils.h"

void master_fix(fix_input input[BATCH][DATA_SIZE], float out[1][FOURTH_NUM_KERNELS]) {

	fix_cv1 conv1[BATCH][DATA_SIZE][FIRST_NUM_KERNELS];
	fix_mp1 max1[42][1][FIRST_NUM_KERNELS];
	fix_cv2 conv2[42][1][SECOND_NUM_KERNELS];
	fix_mp2 max2[14][1][SECOND_NUM_KERNELS];
	fix_ds1 den1[1][THIRD_NUM_KERNELS];
	fix_ds2 den2[1][FOURTH_NUM_KERNELS];

	Conv1: convolution1_fix(input, firstKernel_f, firstBias_f, max1);
	Conv2: convolution2_fix(max1, secondKernel_f, secondBias_f, conv2);
	MaxPool2: maxPool2_fix(conv2, max2);
	Dense1: dense1_fix(max2, firstDense_f, thirdBias_f, den1[0]);
	Dense2: dense2_fix(den1[0], secondDense_f, fourthBias_f, den2[0]);
	Softmax: softmax_fix(FOURTH_NUM_KERNELS, den2[0], out[0]);

}
