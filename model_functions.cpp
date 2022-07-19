#include <stdio.h>
#include <algorithm>
#include "model_functions.h"
#include <math.h>
#include <hls_math.h>

/*
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
}*/

/*void convolution1_fix(fix_input (*m)[DATA_SIZE], fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], fix_par *bias, fix_cv1 (*out)[DATA_SIZE][FIRST_NUM_KERNELS]){

    int d, i, j;
    fix_cv1 num, tmp[BATCH][DATA_SIZE][FIRST_NUM_KERNELS];

    for (d = 0; d < FIRST_NUM_KERNELS; d++){
		#pragma HLS pipeline off
        for (i = 0; i < BATCH; i++){
            for (j = 0; j < DATA_SIZE; j++) {
				#pragma HLS pipeline off

            	num = m[i][j] * k[d][1][1] + bias[d];

                if (i - 1 >= 0) {
                	num += m[i-1][j] * k[d][0][1];
                    if (j - 1 >= 0) num += m[i-1][j-1] * k[d][0][0] + m[i][j-1] * k[d][1][0];
                    if (j + 1 < DATA_SIZE) num += m[i-1][j+1] * k[d][0][2] + m[i][j+1] * k[d][1][2];
                } else {
                    if (j - 1 >= 0) num += m[i][j-1] * k[d][1][0];
                    if (j + 1 < DATA_SIZE) num += m[i][j+1] * k[d][1][2];
                }
                if (i + 2 < BATCH) {
                	num += m[i+1][j] * k[d][2][1] + m[i+2][j] * k[d][3][1];
                    if (j - 1 >= 0) num += m[i+1][j-1] * k[d][2][0] + m[i+2][j-1] * k[d][3][0];
                    if (j + 1 < DATA_SIZE) num += m[i+1][j+1] * k[d][2][2] + m[i+2][j+1] * k[d][3][2];
                } else if (i + 1 < BATCH) {
                	num += m[i+1][j] * k[d][2][1];
                    if (j - 1 >= 0) num += m[i+1][j-1] * k[d][2][0];
                    if (j + 1 < DATA_SIZE) num += m[i+1][j+1] * k[d][2][2];
                }

                if (num < 0) num = 0;

                out[i][j][d] = num;
            }
        }
    }

}*/

void convolution1_fix(fix_input (*m)[DATA_SIZE], fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], fix_par *bias, fix_cv1 (*out)[DATA_SIZE][FIRST_NUM_KERNELS]){

	short id, r, i = -1, j, d;
    fix_cv1 num;
    fix_par kr[12], b;
    fix_input tmp1[12], tmp2[12];
	#pragma HLS ARRAY_PARTITION variable=tmp1 type=complete
	#pragma HLS ARRAY_PARTITION variable=tmp2 type=complete
	#pragma HLS ARRAY_PARTITION variable=kr type=complete

    for (r = 0; r < 6; r++) {
    	j = (r) % DATA_SIZE;
    	if(j == 0) i = (i+1)%BATCH;

    	tmp1[r] = -7;
    	tmp1[6+r] = m[i][j];
    	tmp2[r] = 0;
    	tmp2[11-r] = 0;
    }

    tmp1[6] = m[2][0];
    i = -1;
    j = -1;
    d = -1;
    Conv_loop: for (id = 0; id < BATCH*DATA_SIZE*FIRST_NUM_KERNELS; id++){

    	j = id % DATA_SIZE;
    	if(j == 0) {
    		i = (i+1)%BATCH;

    		Two_Col_Shift_Loop: for (r = 0; r < 3; r++) {
    			tmp1[3*r+1] = tmp1[3*r+4];
    			tmp1[3*r+2] = tmp1[3*r+5];
    		}

    		if(i == 0) {
    			d = (d+1)%FIRST_NUM_KERNELS;

    			int kj, ki = -1;
    		    Load_Kernel_Loop: for (r = 0; r < 12; r++) {
    		    	kj = (r) % DATA_SIZE;
    		    	if(kj == 0) ki = (ki+1)%BATCH;

    		    	kr[r] = k[d][ki][kj];
    		    	b = bias[d];
    		    }
    		}

    	}
    	if (j == 2) {
    		One_Col_Shift_Loop: for (r = 0; r < 3; r++) {
    			tmp1[3*r] = tmp1[3*r+3];
    		}
    	}

		short t = (j+1)%3;
		if (i+2 < BATCH && t > 0) tmp1[9+t] = m[i+2][t];
		else if (i+3 < BATCH) tmp1[9+t] = m[i+3][t];
		else if (t > 0) tmp1[9+t] = m[i-126][t];
		else tmp1[9+t] = m[0][t];

		tmp2[4] = tmp1[j+3];
        if (i - 1 >= 0) {
        	tmp2[1] = tmp1[j];
            if (j - 1 >= 0) {
            	tmp2[0] = tmp1[j-1];
            	tmp2[3] = tmp1[j+2];
            }
            if (j + 1 < DATA_SIZE){
            	tmp2[2] = tmp1[j+1];
            	tmp2[5] = tmp1[j+4];
            }
        } else {
            if (j - 1 >= 0) tmp2[3] = tmp1[j+2];
            if (j + 1 < DATA_SIZE) tmp2[5] = tmp1[j+4];
        }
        if (i + 2 < BATCH) {
        	tmp2[7] = tmp1[j+6];
        	tmp2[10] = tmp1[j+9];
            if (j - 1 >= 0) {
            	tmp2[6] = tmp1[j+5];
            	tmp2[9] = tmp1[j+8];
            }
            if (j + 1 < DATA_SIZE) {
            	tmp2[8] = tmp1[j+7];
            	tmp2[11] = tmp1[j+10];
            }
        } else if (i + 1 < BATCH) {
        	tmp2[7] = tmp1[j+6];
            if (j - 1 >= 0) tmp2[6] = tmp1[j+5];
            if (j + 1 < DATA_SIZE) tmp2[8] = tmp1[j+7];
        }

		num = b;

		Operations_Loop: for (r = 0; r < 12; r++) {
			num += tmp2[r] * kr[r];
			tmp2[r] = 0;
		}
		if (num < 0) num = 0;

		out[i][j][d] = num;
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
