#ifndef MAGICWAND_MASTER_H
#define MAGICWAND_MASTER_H

#include <ap_fixed.h>
#include "model_functions.h"

//void master_print();
void master(float input[BATCH][DATA_SIZE], float out[1][FOURTH_NUM_KERNELS]);
void master_fix(fix_input input[BATCH][DATA_SIZE], float out[1][FOURTH_NUM_KERNELS]);

#endif //MAGICWAND_MASTER_H

