#include <stdio.h>
#include <iostream>
#include <ap_fixed.h>
#include "master.h"
#include "parameters.h"
using namespace std;

typedef ap_fixed<32,13> fix1_t;

int main() {
	fix1_t Var1 = 22.96875;

	int i, j ,d;

	cout << "Float:\n" << endl;
	for (d = 0; d < 8; d++) {
		for (i = 0; i < 4; i++) {
			for (j = 0; j < 3; j++) {
				printf("%.20f\t", firstKernel[d][i][j]);
			}
			cout << endl;
		}
		cout << endl;
	}

	cout << "Fixed:\n" << endl;
	for (d = 0; d < 8; d++) {
		for (i = 0; i < 4; i++) {
			for (j = 0; j < 3; j++) {
				cout << firstKernel_f[d][i][j].to_string(10) << "\t";
			}
			cout << endl;
		}
		cout << endl;
	}

	return 0;
}
