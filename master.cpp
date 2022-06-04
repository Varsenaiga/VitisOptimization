//#include "parameters.h"
#include <ap_fixed.h>
#include "model_functions.h"

float master(float num) {

	return num*23.3546135;

}


fix1_t master_fix(fix1_t num) {

	return num*fix1_t(23.3546135);

}
