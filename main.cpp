#include <stdio.h>
#include <string.h>
#include <iostream>
#include<fstream>
#include <ap_fixed.h>
#include "master.h"
#include "parameters.h"
#include "file.h"
using namespace std;

int main() {

	string buff;
	fix1_t tes;

	ifstream file = openFile("../../../data/negative/output_teste1.txt");

	/*while (getline(file, buff)) {
		if (!buff.empty()) {
			istringstream tmp(buff);
			tmp >> tes;
			cout << tes.to_string(10) << endl;
		}
	}*/

	readFile(file, 1);

	file.close();

	return 0;
}
