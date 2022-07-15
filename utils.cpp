#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "utils.h"
using namespace std;

#define VECTOR_MODE 0

void printData2D(int row, int column, void *m) {
    int i, j;
    float (*matrix)[column] = static_cast<float (*)[column]>(m);

    if(VECTOR_MODE) cout << "[";
    for (i = 0; i < row; i++) {
    	if(VECTOR_MODE) cout << "[";

        for (j = 0; j < column; j++) {
            if(j < column-1 && VECTOR_MODE) cout << fixed << setprecision(25) << matrix[i][j] << ",\t";
            else if(j < column-1 && !VECTOR_MODE) cout << fixed << setprecision(25) << matrix[i][j] << "\t";
            else cout << fixed << setprecision(25) << matrix[i][j];
        }

        if(i < row-1 && VECTOR_MODE) cout << "]," << endl;
        else if(VECTOR_MODE) cout << "]";
        else cout << endl;
    }
    if(VECTOR_MODE) cout << "]" << endl;
    else cout << endl;
}

void printData3D(int row, int column, int depth, void *m) {
    int i, j, d;
    float (*matrix)[column][depth] = static_cast<float (*)[column][depth]>(m);

    if(VECTOR_MODE) cout << "[";
    for (d = 0; d < depth; d++) {
    	if(VECTOR_MODE) cout << "[";
        for (i = 0; i < row; i++) {
        	if(VECTOR_MODE) cout << "[";

            for (j = 0; j < column; j++) {
                if (j < column - 1 && VECTOR_MODE) cout << fixed << setprecision(25) << matrix[i][j][d] << ",\t";
                else if (j < column - 1 && !VECTOR_MODE) cout << fixed << setprecision(25) << matrix[i][j][d] << "\t";
                else cout << fixed << setprecision(25) << matrix[i][j][d];
            }

            if (i < row - 1 && VECTOR_MODE) cout << "]," << endl;
            else if(VECTOR_MODE) cout << "]";
            else cout << endl;
        }

        if (d < depth - 1 && VECTOR_MODE) cout << "]," << endl << endl;
        else if(VECTOR_MODE) cout << "]";
        else cout << endl;
    }
    if(VECTOR_MODE) cout << "]" << endl;
    else cout << endl;
}

void printData2D_fix(int row, int column, void *m) {
    int i, j;
    fix1_t (*matrix)[column] = static_cast<fix1_t (*)[column]>(m);

    if(VECTOR_MODE) cout << "[";
    for (i = 0; i < row; i++) {
        if(VECTOR_MODE) cout << "[";

        for (j = 0; j < column; j++) {
            if(j < column-1 && VECTOR_MODE) cout << matrix[i][j].to_string(10) << ",\t";
            else if (j < column-1 && !VECTOR_MODE) cout << matrix[i][j].to_string(10) << "\t";
            else cout << matrix[i][j].to_string(10);
        }

        if(i < row-1 && VECTOR_MODE) cout << "]," << endl;
        else if(VECTOR_MODE) cout << "]";
        else cout << endl;
    }
    if(VECTOR_MODE) cout << "]" << endl;
    else cout << endl;
}

void printData3D_fix(int row, int column, int depth, void *m) {
    int i, j, d;
    fix1_t (*matrix)[column][depth] = static_cast<fix1_t (*)[column][depth]>(m);

    if(VECTOR_MODE) cout << "[";
    for (d = 0; d < depth; d++) {
    	if(VECTOR_MODE) cout << "[";
        for (i = 0; i < row; i++) {
        	if(VECTOR_MODE) cout << "[";

            for (j = 0; j < column; j++) {
                if (j < column - 1 && VECTOR_MODE) cout << matrix[i][j][d].to_string(10) << ",\t";
                else if (j < column - 1 && !VECTOR_MODE) cout << matrix[i][j][d].to_string(10) << "\t";
                else cout << matrix[i][j][d].to_string(10);
            }

            if (i < row - 1 && VECTOR_MODE) cout << "]," << endl;
            else if(VECTOR_MODE) cout << "]";
            else cout << endl;
        }

        if (d < depth - 1 && VECTOR_MODE) cout << "]," << endl << endl;
        else if(VECTOR_MODE) cout << "]";
        else cout << endl;
    }
    if(VECTOR_MODE) cout << "]" << endl;
    else cout << endl;
}
