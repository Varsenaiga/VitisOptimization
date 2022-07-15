#ifndef MAGICWAND_MODEL_FUNCTIONS_H
#define MAGICWAND_MODEL_FUNCTIONS_H
#include <ap_fixed.h>

typedef ap_fixed<36,17, AP_RND_CONV> fix1_t;
typedef ap_fixed<10,3, AP_RND_CONV> fix_par;
typedef ap_fixed<12,12, AP_RND_CONV> fix_input;
typedef ap_fixed<13,13, AP_RND_CONV> fix_cv1;
typedef ap_fixed<14,14, AP_RND_CONV> fix_cv2;
typedef ap_fixed<13,13, AP_RND_CONV> fix_mp1;
typedef ap_fixed<14,14, AP_RND_CONV> fix_mp2;
typedef ap_fixed<36,17, AP_RND_CONV> fix_ds1;
typedef ap_fixed<36,17, AP_RND_CONV> fix_ds2;

#define BATCH 128
#define DATA_SIZE 3
#define FIRST_NUM_ROWS 4
#define FIRST_NUM_COLS 3
#define FIRST_NUM_KERNELS 8
#define SECOND_NUM_ROWS 4
#define SECOND_NUM_COLS 8
#define SECOND_NUM_KERNELS 16
#define THIRD_NUM_ROWS 14
#define THIRD_NUM_COLS 16
#define THIRD_NUM_KERNELS 16
#define FOURTH_NUM_SIZE 16
#define FOURTH_NUM_KERNELS 4

void convolution1(int mRow, int mCol, float (*m)[DATA_SIZE], int kNum, float (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], float *bias, float (*out)[DATA_SIZE][FIRST_NUM_KERNELS]);
void convolution2(int mRow, int mCol, int mDep, float (*m)[1][FIRST_NUM_KERNELS], int kNum, float (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], float *bias, float (*out)[1][SECOND_NUM_KERNELS]);
void maxPool1(int mRow, int mCol, int mDep, float (*m)[DATA_SIZE][FIRST_NUM_KERNELS], int oRow, float (*out)[1][FIRST_NUM_KERNELS], int kRow);
void maxPool2(int mRow, int mCol, int mDep, float (*m)[1][SECOND_NUM_KERNELS], int oRow, float (*out)[1][SECOND_NUM_KERNELS], int kRow);
void dense1(int mRow, int mCol, int mDep, float (*m)[1][SECOND_NUM_KERNELS], int kNum, float (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], float *bias, float *out);
void dense2(int mSize, const float *m, int kNum, float (*k)[FOURTH_NUM_SIZE], const float *bias, float *out);
void softmax(int mSize, float *m, float *out);

void convolution1_fix(int mRow, int mCol, fix_input (*m)[DATA_SIZE], int kNum, fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], fix_par *bias, fix_cv1 (*out)[DATA_SIZE][FIRST_NUM_KERNELS]);
void convolution2_fix(int mRow, int mCol, int mDep, fix_mp1 (*m)[1][FIRST_NUM_KERNELS], int kNum, fix_par (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], fix_par *bias, fix_cv2 (*out)[1][SECOND_NUM_KERNELS]);
void maxPool1_fix(int mRow, int mCol, int mDep, fix_cv1 (*m)[DATA_SIZE][FIRST_NUM_KERNELS], int oRow, fix_mp1 (*out)[1][FIRST_NUM_KERNELS], int kRow);
void maxPool2_fix(int mRow, int mCol, int mDep, fix_cv2 (*m)[1][SECOND_NUM_KERNELS], int oRow, fix_mp2 (*out)[1][SECOND_NUM_KERNELS], int kRow);
void dense1_fix(int mRow, int mCol, int mDep, fix_mp2 (*m)[1][SECOND_NUM_KERNELS], int kNum, fix_par (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], fix_par *bias, fix_ds1 *out);
void dense2_fix(int mSize, const fix_ds1 *m, int kNum, fix_par (*k)[FOURTH_NUM_SIZE], const fix_par *bias, fix_ds2 *out);
void softmax_fix(int mSize, fix_ds2 *m, float *out);

#endif //MAGICWAND_MODEL_FUNCTIONS_H
