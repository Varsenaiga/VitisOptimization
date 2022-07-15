#include <stdio.h>
#include <algorithm>
#include "model_functions.h"
#include <math.h>
#include <hls_math.h>

void convolution1(int mRow, int mCol, float (*m)[DATA_SIZE], int kNum, float (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], float *bias, float (*out)[DATA_SIZE][FIRST_NUM_KERNELS]){

    int d, i, j;

    for (d = 0; d < kNum; d++){
	#pragma HLS pipeline off
        for (i = 0; i < mRow; i++){
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off

                out[i][j][d] = m[i][j] * k[d][1][1] + bias[d];

                if (i - 1 >= 0) {
                    out[i][j][d] += m[i-1][j] * k[d][0][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i-1][j-1] * k[d][0][0] + m[i][j-1] * k[d][1][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i-1][j+1] * k[d][0][2] + m[i][j+1] * k[d][1][2];
                } else {
                    if (j - 1 >= 0) out[i][j][d] += m[i][j-1] * k[d][1][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i][j+1] * k[d][1][2];
                }
                if (i + 2 < mRow) {
                	out[i][j][d] += m[i+1][j] * k[d][2][1] + m[i+2][j] * k[d][3][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i+1][j-1] * k[d][2][0] + m[i+2][j-1] * k[d][3][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i+1][j+1] * k[d][2][2] + m[i+2][j+1] * k[d][3][2];
                } else if (i + 1 < mRow) {
                	out[i][j][d] += m[i+1][j] * k[d][2][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i+1][j-1] * k[d][2][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i+1][j+1] * k[d][2][2];
                }

                if (out[i][j][d] < 0) out[i][j][d] = 0;
            }
        }
    }
}

void convolution2(int mRow, int mCol, int mDep, float (*m)[1][FIRST_NUM_KERNELS], int kNum, float (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], float *bias, float (*out)[1][SECOND_NUM_KERNELS]){

    int d, h, i, j;

    for (d = 0; d < kNum; d++){
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++){
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off

                out[i][j][d] = bias[d];
                for(h = 0; h < mDep; h++) {
                	out[i][j][d] += m[i][j][h] * k[d][1][h];
                }

                if (i - 1 >= 0) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i-1][j][h] * k[d][0][h];
                    }
                }
                if (i + 2 < mRow) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i+1][j][h] * k[d][2][h] + m[i+2][j][h] * k[d][3][h];
                    }
                } else if (i + 1 < mRow) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i+1][j][h] * k[d][2][h];
                    }
                }

                if (out[i][j][d] < 0) out[i][j][d] = 0;
            }
        }
    }
}

void maxPool1(int mRow, int mCol, int mDep, float (*m)[DATA_SIZE][FIRST_NUM_KERNELS], int oRow, float (*out)[1][FIRST_NUM_KERNELS], int kRow){

    int i, j, d;

    for (d = 0; d < mDep; d++) {
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            if (i/kRow == oRow) break;
            if (i%kRow == 0){
                out[i/kRow][0][d] = 0;
            }
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
                out[i/kRow][0][d] = (float)fmax((double)out[i/kRow][0][d], (double)m[i][j][d]);
            }
        }
    }
}

void maxPool2(int mRow, int mCol, int mDep, float (*m)[1][SECOND_NUM_KERNELS], int oRow, float (*out)[1][SECOND_NUM_KERNELS], int kRow){

    int i, j, d;

    for (d = 0; d < mDep; d++) {
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            if (i/kRow == oRow) break;
            if (i%kRow == 0){
                out[i/kRow][0][d] = 0;
            }
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
                out[i/kRow][0][d] = (float)fmax((double)out[i/kRow][0][d], (double)m[i][j][d]);
            }
        }
    }
}

void dense1(int mRow, int mCol, int mDep, float (*m)[1][SECOND_NUM_KERNELS], int kNum, float (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], float *bias, float *out){

    int d, h, i, j;

    for (d = 0; d < kNum; d++) {
		#pragma HLS pipeline off
        out[d] = bias[d];
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
            	for (h = 0; h < mDep; h++) {
					#pragma HLS pipeline off
            		out[d] += m[i][j][h] * k[d][i][h];
                }
            }
        }
        if (out[d] < 0) out[d] = 0;
    }
}

void dense2(int mSize, const float *m, int kNum, float (*k)[FOURTH_NUM_SIZE], const float *bias, float *out){

    int d, i;

    for (d = 0; d < kNum; d++) {
		#pragma HLS pipeline off
        out[d] = bias[d];
        for (i = 0; i < mSize; i++) {
        	out[d] += m[i] * k[d][i];
        }
    }
}

void softmax(int mSize, float *m, float *out) {

    int i;
    double sum = 0;

    for (i = 0; i < mSize; i++){
		#pragma HLS pipeline off
        sum += exp((double)m[i]);
    }

    for (i = 0; i < mSize; i++){
        out[i] = (float)(exp((double)m[i])/sum);
    }
}

void convolution1_fix(int mRow, int mCol, fix_input (*m)[DATA_SIZE], int kNum, fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], fix_par *bias, fix_cv1 (*out)[DATA_SIZE][FIRST_NUM_KERNELS]){

    int d, i, j;

    for (d = 0; d < kNum; d++){
	#pragma HLS pipeline off
        for (i = 0; i < mRow; i++){
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off

                out[i][j][d] = m[i][j] * k[d][1][1] + bias[d];

                if (i - 1 >= 0) {
                    out[i][j][d] += m[i-1][j] * k[d][0][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i-1][j-1] * k[d][0][0] + m[i][j-1] * k[d][1][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i-1][j+1] * k[d][0][2] + m[i][j+1] * k[d][1][2];
                } else {
                    if (j - 1 >= 0) out[i][j][d] += m[i][j-1] * k[d][1][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i][j+1] * k[d][1][2];
                }
                if (i + 2 < mRow) {
                	out[i][j][d] += m[i+1][j] * k[d][2][1] + m[i+2][j] * k[d][3][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i+1][j-1] * k[d][2][0] + m[i+2][j-1] * k[d][3][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i+1][j+1] * k[d][2][2] + m[i+2][j+1] * k[d][3][2];
                } else if (i + 1 < mRow) {
                	out[i][j][d] += m[i+1][j] * k[d][2][1];
                    if (j - 1 >= 0) out[i][j][d] += m[i+1][j-1] * k[d][2][0];
                    if (j + 1 < mCol) out[i][j][d] += m[i+1][j+1] * k[d][2][2];
                }

                if (out[i][j][d] < 0) out[i][j][d] = 0;
            }
        }
    }
}

void convolution2_fix(int mRow, int mCol, int mDep, fix_mp1 (*m)[1][FIRST_NUM_KERNELS], int kNum, fix_par (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], fix_par *bias, fix_cv2 (*out)[1][SECOND_NUM_KERNELS]){

    int d, h, i, j;

    for (d = 0; d < kNum; d++){
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++){
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off

                out[i][j][d] = bias[d];
                for(h = 0; h < mDep; h++) {
                	out[i][j][d] += m[i][j][h] * k[d][1][h];
                }

                if (i - 1 >= 0) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i-1][j][h] * k[d][0][h];
                    }
                }
                if (i + 2 < mRow) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i+1][j][h] * k[d][2][h] + m[i+2][j][h] * k[d][3][h];
                    }
                } else if (i + 1 < mRow) {
                    for(h = 0; h < mDep; h++) {
                    	out[i][j][d] += m[i+1][j][h] * k[d][2][h];
                    }
                }

                if (out[i][j][d] < 0) out[i][j][d] = 0;
            }
        }
    }
}

void maxPool1_fix(int mRow, int mCol, int mDep, fix_cv1 (*m)[DATA_SIZE][FIRST_NUM_KERNELS], int oRow, fix_mp1 (*out)[1][FIRST_NUM_KERNELS], int kRow){

    int i, j, d;

    for (d = 0; d < mDep; d++) {
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            if (i/kRow == oRow) break;
            if (i%kRow == 0){
                out[i/kRow][0][d] = 0;
            }
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
            	fix_mp1 tmp = m[i][j][d];
                out[i/kRow][0][d] = std::max(out[i/kRow][0][d], tmp);
            }
        }
    }
}

void maxPool2_fix(int mRow, int mCol, int mDep, fix_cv2 (*m)[1][SECOND_NUM_KERNELS], int oRow, fix_mp2 (*out)[1][SECOND_NUM_KERNELS], int kRow){

    int i, j, d;

    for (d = 0; d < mDep; d++) {
		#pragma HLS pipeline off
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            if (i/kRow == oRow) break;
            if (i%kRow == 0){
                out[i/kRow][0][d] = 0;
            }
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
            	fix_mp2 tmp = m[i][j][d];
                out[i/kRow][0][d] = std::max(out[i/kRow][0][d], tmp);
            }
        }
    }
}

void dense1_fix(int mRow, int mCol, int mDep, fix_mp2 (*m)[1][SECOND_NUM_KERNELS], int kNum, fix_par (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], fix_par *bias, fix_ds1 *out){

    int d, h, i, j;

    for (d = 0; d < kNum; d++) {
		#pragma HLS pipeline off
        out[d] = bias[d];
        for (i = 0; i < mRow; i++) {
			#pragma HLS pipeline off
            for (j = 0; j < mCol; j++) {
				#pragma HLS pipeline off
            	for (h = 0; h < mDep; h++) {
					#pragma HLS pipeline off
            		out[d] += m[i][j][h] * k[d][i][h];
                }
            }
        }
        if (out[d] < 0) out[d] = 0;
    }
}

void dense2_fix(int mSize, const fix_ds1 *m, int kNum, fix_par (*k)[FOURTH_NUM_SIZE], const fix_par *bias, fix_ds2 *out){

    int d, i;

    for (d = 0; d < kNum; d++) {
		#pragma HLS pipeline off
        out[d] = bias[d];
        for (i = 0; i < mSize; i++) {
        	out[d] += m[i] * k[d][i];
        }
    }
}

void softmax_fix(int mSize, fix_ds2 *matrix, float *out) {

	double m[FOURTH_NUM_KERNELS];
    int i;
    for (i = 0; i < FOURTH_NUM_KERNELS; i++){
    	m[i] = matrix[i];
    }

    double sum = 0;

    for (i = 0; i < mSize; i++){
		#pragma HLS pipeline off
        sum += exp(m[i]);
    }

    for (i = 0; i < mSize; i++){
        out[i] = (float)(exp(m[i])/sum);
    }
}
