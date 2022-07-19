#include "parameters.h"
#include <ap_fixed.h>
#include "model_functions.h"

/*void master(float input[BATCH][DATA_SIZE], float out[1][FOURTH_NUM_KERNELS]) {

	float conv1[BATCH][DATA_SIZE][FIRST_NUM_KERNELS];
	float max1[42][1][FIRST_NUM_KERNELS];
	float conv2[42][1][SECOND_NUM_KERNELS];
	float max2[14][1][SECOND_NUM_KERNELS];
	float den1[1][THIRD_NUM_KERNELS];
	float den2[1][FOURTH_NUM_KERNELS];

	convolution1(BATCH, DATA_SIZE, input, FIRST_NUM_KERNELS, firstKernel, firstBias, conv1);
	maxPool1(BATCH, DATA_SIZE, FIRST_NUM_KERNELS, conv1, 42, max1, 3);
	convolution2(42, 1, FIRST_NUM_KERNELS, max1, SECOND_NUM_KERNELS, secondKernel, secondBias, conv2);
	maxPool2(42, 1, SECOND_NUM_KERNELS, conv2, 14, max2, 3);
	dense1(14, 1, SECOND_NUM_KERNELS, max2, THIRD_NUM_KERNELS, firstDense, thirdBias, den1[0]);
	dense2(THIRD_NUM_KERNELS, den1[0], FOURTH_NUM_KERNELS, secondDense, fourthBias, den2[0]);
	softmax(FOURTH_NUM_KERNELS, den2[0], out[0]);

}*/


void master_fix(fix_input input[BATCH][DATA_SIZE], float out[1][FOURTH_NUM_KERNELS]) {

	fix_cv1 conv1[BATCH][DATA_SIZE][FIRST_NUM_KERNELS];
	fix_mp1 max1[42][1][FIRST_NUM_KERNELS];
	fix_cv2 conv2[42][1][SECOND_NUM_KERNELS];
	fix_mp2 max2[14][1][SECOND_NUM_KERNELS];
	fix_ds1 den1[1][THIRD_NUM_KERNELS];
	fix_ds2 den2[1][FOURTH_NUM_KERNELS];

	convolution1_fix(input, firstKernel_f, firstBias_f, conv1);
	maxPool1_fix(BATCH, DATA_SIZE, FIRST_NUM_KERNELS, conv1, 42, max1, 3);
	convolution2_fix(42, 1, FIRST_NUM_KERNELS, max1, SECOND_NUM_KERNELS, secondKernel_f, secondBias_f, conv2);
	maxPool2_fix(42, 1, SECOND_NUM_KERNELS, conv2, 14, max2, 3);
	dense1_fix(14, 1, SECOND_NUM_KERNELS, max2, THIRD_NUM_KERNELS, firstDense_f, thirdBias_f, den1[0]);
	dense2_fix(THIRD_NUM_KERNELS, den1[0], FOURTH_NUM_KERNELS, secondDense_f, fourthBias_f, den2[0]);
	softmax_fix(FOURTH_NUM_KERNELS, den2[0], out[0]);

}
