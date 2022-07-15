#ifndef MAGICWAND_UTILS_H
#define MAGICWAND_UTILS_H

#include <stdio.h>
#include <ap_fixed.h>
#include "model_functions.h"

#define WING 0
#define RING 1
#define SLOPE 2
#define NEGATIVE 3
#define ERROR_THRESHOLD 0.00001

void printData2D(int row, int column, void *m);
void printData3D(int row, int column, int depth, void *m);
void printData2D_fix(int row, int column, void *m);
void printData3D_fix(int row, int column, int depth, void *m);

#endif //MAGICWAND_UTILS_H
