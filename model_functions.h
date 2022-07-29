#ifndef MAGICWAND_MODEL_FUNCTIONS_H
#define MAGICWAND_MODEL_FUNCTIONS_H
#include <ap_fixed.h>

typedef ap_fixed<36,17, AP_RND_CONV> fix1_t;
typedef ap_fixed<36,17, AP_RND_CONV> fix_par;
typedef ap_fixed<12,12, AP_RND_CONV> fix_input;
typedef ap_fixed<36,17, AP_RND_CONV> fix_cv1;
typedef ap_fixed<36,17, AP_RND_CONV> fix_cv2;
typedef ap_fixed<36,17, AP_RND_CONV> fix_mp1;
typedef ap_fixed<36,17, AP_RND_CONV> fix_mp2;
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

void convolution1_fix(fix_input (*m)[DATA_SIZE], const fix_par (*k)[FIRST_NUM_ROWS][FIRST_NUM_COLS], const fix_par *bias, fix_cv1 (*out)[DATA_SIZE][FIRST_NUM_KERNELS]);
void convolution2_fix(fix_mp1 (*m)[1][FIRST_NUM_KERNELS], const fix_par (*k)[SECOND_NUM_ROWS][SECOND_NUM_COLS], const fix_par *bias, fix_cv2 (*out)[1][SECOND_NUM_KERNELS]);
void maxPool1_fix(fix_cv1 (*m)[DATA_SIZE][FIRST_NUM_KERNELS], fix_mp1 (*out)[1][FIRST_NUM_KERNELS]);
void maxPool2_fix(fix_cv2 (*m)[1][SECOND_NUM_KERNELS], fix_mp2 (*out)[1][SECOND_NUM_KERNELS]);
void dense1_fix(fix_mp2 (*m)[1][SECOND_NUM_KERNELS], const fix_par (*k)[THIRD_NUM_ROWS][THIRD_NUM_COLS], const fix_par *bias, fix_ds1 *out);
void dense2_fix(const fix_ds1 *m, const fix_par (*k)[FOURTH_NUM_SIZE], const fix_par *bias, fix_ds2 *out);
void softmax_fix(int mSize, fix_ds2 *m, float *out);

#endif //MAGICWAND_MODEL_FUNCTIONS_H
