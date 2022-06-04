#ifndef MAGICWAND_MASTER_H
#define MAGICWAND_MASTER_H

#include <ap_fixed.h>

typedef ap_fixed<32,13,AP_TRN_ZERO> fix1_t;

float master(float num);
fix1_t master_fix(fix1_t num);

#endif //MAGICWAND_MASTER_H

