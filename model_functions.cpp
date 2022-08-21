#include <stdio.h>
#include <algorithm>
#include "model_functions.h"
#include <math.h>
#include <hls_math.h>

void convolution1_fix(fix_input (*m)[DATA_SIZE], const fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], const fix_par *bias, fix_mp1 (*out)[1][FIRST_NUM_KERNELS]){

	short id, r, i = -1, j, d;
    fix_cv1 num;
    fix_par kr[12], b;
    fix_input tmp1[12], tmp2[12];
    fix_cv1 aux = 0;
	#pragma HLS ARRAY_PARTITION variable=tmp1 type=complete
	#pragma HLS ARRAY_PARTITION variable=tmp2 type=complete
	#pragma HLS ARRAY_PARTITION variable=kr type=complete

Initialization_Conv1_Loop:
    for (r = 0; r < 6; r++) {		// Fill 2 last "rows" of tmp1 with 2 first rows of m. Initialize tmp2 to all 0s.
    	j = (r) % DATA_SIZE;
    	if(j == 0) i = (i+1)%BATCH;

    	tmp1[r] = -7;
    	tmp1[6+r] = m[i][j];
    	tmp2[r] = 0;
    	tmp2[6+r] = 0;
    }

    tmp1[3] = tmp1[6];			// Shift 1st column up 1 row and Load to position [3, 0]
    tmp1[6] = tmp1[9];
    tmp1[9] = m[2][0];
    i = -1;
    j = -1;
    d = -1;

Convolution1_loop:
	for (id = 0; id < BATCH*DATA_SIZE*FIRST_NUM_KERNELS; id++){		// Do all the convolution

    	j = id % DATA_SIZE;
    	if(j == 0) {				// Check if it is a new line
    		i = (i+1)%BATCH;

    	Two_Col_Shift_Conv1_Loop:
			for (r = 0; r < 3; r++) {		// Shift the last 2 columns up 1 row
				#pragma HLS UNROLL
    			tmp1[3*r+1] = tmp1[3*r+4];
    			tmp1[3*r+2] = tmp1[3*r+5];
    		}

    		if(i == 0) {						// Check if a new kernel is reached
    			d = (d+1)%FIRST_NUM_KERNELS;
    			aux = 0;

    			int kj, ki = -1;

    		Load_Kernel_Conv1_Loop:
				for (r = 0; r < 12; r++) {		// Load the new kernel and bias
					#pragma HLS UNROLL
    		    	kj = (r) % DATA_SIZE;
    		    	if(kj == 0) ki = (ki+1)%BATCH;

    		    	kr[r] = k[d][ki][kj];
    		    	b = bias[d];
    		    }
    		}

    	}
    	if (j == 2) {			// Check if it is in the last column

        One_Col_Shift_Conv1_Loop:
			for (r = 0; r < 3; r++) {			// Shift 1st column up 1 row
				#pragma HLS UNROLL
    			tmp1[3*r] = tmp1[3*r+3];
    		}
    	}

		short t = (j+1)%3;
		if (i+2 < BATCH && t > 0) tmp1[9+t] = m[i+2][t];  // If it is in columns 0 or 1, and did not reach the end of the rows, load to position [3, j+1]
		else if (i+3 < BATCH) tmp1[9+t] = m[i+3][t];	  // If it is in column 2, and did not reach the end of the rows, load to position [3, 0]
		else if (t > 0) tmp1[9+t] = m[i-126][t];		  // If it is in column 0 or 1, and reach the end of the rows, load to position [3, j+1]
		else tmp1[9+t] = m[i-125][t];					  // If it is in column 2, and did not reach the end of the rows, load to position [3, 0]

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

	Operations_Conv1_Loop:
		for (r = 0; r < 12; r++) {
			#pragma HLS UNROLL
			num += tmp2[r] * kr[r];
			tmp2[r] = 0;
		}

		if(aux < num) aux = num;
		out[i/3][0][d] = aux;

		if ((i+1)%3 == 0 && j == 2){
			aux = 0;
		}
	}
}

void convolution2_fix(fix_mp1 (*m)[1][FIRST_NUM_KERNELS], const fix_par (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], const fix_par *bias, fix_mp2 (*out)[1][SECOND_NUM_KERNELS]){

	short id, r, i = -1, d, h;
    fix_cv2 num;
    fix_par kr[32], b;
    fix_mp1 tmp1[32], tmp2[32];
    fix_cv2 aux = 0;
	#pragma HLS ARRAY_PARTITION variable=tmp1 type=complete
	#pragma HLS ARRAY_PARTITION variable=tmp2 type=complete
	#pragma HLS ARRAY_PARTITION variable=kr type=complete

Initialization_Conv2_Loop:
    for (r = 0; r < 16; r++) {			// Fill 2 last "rows" of tmp1 with 2 first rows of m. Initialize tmp2 to all 0s.
    	d = r%FIRST_NUM_KERNELS;
    	if(d == 0) i++;

    	tmp1[r] = -7;
    	tmp1[16+r] = m[i][0][d];
    	tmp2[r] = 0;
    	tmp2[16+r] = 0;
    }

    d = -1;

Convolution2_loop:
	for (id = 0; id < 42*SECOND_NUM_KERNELS; id++){		// Do all the convolution

		i = id%42;

    Two_Col_Shift_Conv2_Loop:
		for (r = 0; r < 3; r++) {		// Shift all the columns up 1 row
			tmp1[8*r] = tmp1[8*r+8];
			tmp1[8*r+1] = tmp1[8*r+9];
			tmp1[8*r+2] = tmp1[8*r+10];
			tmp1[8*r+3] = tmp1[8*r+11];
			tmp1[8*r+4] = tmp1[8*r+12];
			tmp1[8*r+5] = tmp1[8*r+13];
			tmp1[8*r+6] = tmp1[8*r+14];
			tmp1[8*r+7] = tmp1[8*r+15];
		}

		if(i == 0) {						// Check if a new kernel is reached
			d = (d+1)%SECOND_NUM_KERNELS;
			aux = 0;

			int kj, ki = -1;
		Load_Kernel_Conv2_Loop:
			for (r = 0; r < 32; r++) {		// Load the new kernel and bias
				kj = (r) % SECOND_NUM_COLS;
				if(kj == 0) ki++;

				kr[r] = k[d][ki][kj];
				b = bias[d];
			}
		}

		if(i+2 < 42){			// Load 8 new values into the last row
		Load_Inputs_Conv2_Loop1:
			for(r = 24; r < 32; r++){
				tmp1[r] = m[i+2][0][r-24];
			}
		} else {
		Load_Inputs_Conv2_Loop2:
			for(r = 24; r < 32; r++){
				tmp1[r] = m[i-40][0][r-24];
			}
		}

	Initialize_TMP_Conv2_Loop1:
		for(r = 8; r < 16; r++){
			tmp2[r] = tmp1[r];
		}
		if(i > 0) {
		Initialize_TMP_Conv2_Loop2:
			for(r = 0; r < 8; r++){
				tmp2[r] = tmp1[r];
			}
		}
		if(i + 1 < 42) {
		Initialize_TMP_Conv2_Loop3:
			for(r = 16; r < 24; r++){
				tmp2[r] = tmp1[r];
			}
		}
		if(i + 2 < 42) {
		Initialize_TMP_Conv2_Loop4:
			for(r = 24; r < 32; r++){
				tmp2[r] = tmp1[r];
			}
		}

		num = b;

Operations_Conv2_Loop:
		for (r = 0; r < 32; r++) {
			num += tmp2[r] * kr[r];
			tmp2[r] = 0;
		}
		if(aux < num) aux = num;
		out[i/3][0][d] = aux;

		if ((i+1)%3 == 0){
			aux = 0;
		}
	}

}

void maxPool2_fix(fix_cv2 (*m)[1][SECOND_NUM_KERNELS], fix_mp2 (*out)[1][SECOND_NUM_KERNELS]){

    int i, d;
    short oRow = 14;
    short kRow = 3;
    fix_mp2 tmp1;

MaxPool2_Loop:
    for (d = 0; d < SECOND_NUM_KERNELS; d++) {
    Operations_MaxPool2_Loop:
        for (i = 0; i < 42; i++) {
            if (i%kRow == 0){
            	tmp1 = 0;
            }

            fix_mp2 tmp2 = m[i][0][d];
			tmp1 = std::max(tmp1, tmp2);
			out[i/kRow][0][d] = tmp1;
        }
    }
}

void dense1_fix(fix_mp2 (*m)[1][SECOND_NUM_KERNELS], const fix_par (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], const fix_par *bias, fix_ds1 *out){

    int d, h, i;
    fix_ds1 num;
    fix_mp2 aux1;
    fix_par aux2;

Dense1_Loop1:
    for (d = 0; d < THIRD_NUM_KERNELS; d++) {
    	num = bias[d];
    Dense1_Loop2:
        for (i = 0; i < 14; i++) {
        Operations_Dense1_Loop:
			for (h = 0; h < SECOND_NUM_KERNELS; h++) {
				#pragma HLS UNROLL
				aux1 = m[i][0][h];
				aux2 = k[d][i][h];
				num += aux1 * aux2;
			}
        }
        if (num < 0) num = 0;
        out[d] = num;
    }
}

void dense2_fix(const fix_ds1 *m, const fix_par (*k)[FOURTH_NUM_SIZE], const fix_par *bias, fix_ds2 *out){

    int d, i;
    fix_ds2 num;
    fix_ds1 aux1;
    fix_par aux2;

Dense2_Loop:
    for (d = 0; d < FOURTH_NUM_KERNELS; d++) {
    	num = bias[d];
    Operations_Dense2_Loop:
        for (i = 0; i < THIRD_NUM_KERNELS; i++) {
        	aux1 = m[i];
        	aux2 = k[d][i];
        	num += aux1 * aux2;
        }
        out[d] = num;
    }
}

void softmax_fix(int mSize, fix_ds2 *matrix, float *out) {

	double m[FOURTH_NUM_KERNELS];
    int i;

Initialization_SoftMax_Loop:
    for (i = 0; i < FOURTH_NUM_KERNELS; i++){
    	m[i] = matrix[i];
    }

    double sum = 0;

Accumulation_SoftMax_Loop:
    for (i = 0; i < mSize; i++){
		#pragma HLS pipeline off
        sum += exp(m[i]);
    }

Operations_SoftMax_Loop:
    for (i = 0; i < mSize; i++){
        out[i] = (float)(exp(m[i])/sum);
    }
}
