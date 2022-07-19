#include <stdio.h>
#include <stdlib.h>
#include <ap_fixed.h>
#include <string.h>
#include <stdbool.h>
#include <bits/stdc++.h>
#include "file.h"
#include "model_functions.h"
#include "utils.h"
#include "master.h"

ifstream openFile(string name) {

	ifstream file(name);

    if (!file.is_open()) {
        printf("File can't be opened (1)\n");
    }

    return file;
}

void readFile(istream &file, string outFile, int mode) {

    if (mode < 0 || mode > 1) {
    	printf("Error on readFile: mode has incorrect value!");
    	exit(1);
    }

    string buff;
    bool init = true, isReading = false, wasReading = false;

  	float dt[BATCH][DATA_SIZE];
  	fix_input dt_f[BATCH][DATA_SIZE];

    int i, cnt = 0;

	ofstream out(outFile);

    if (!out.is_open()) {
        printf("File can't be opened (2)\n");
    }

    for (i = 0; i < BATCH; i++) {
        dt[i][0] = 0;
        dt[i][1] = 0;
        dt[i][2] = 0;
        dt_f[i][0] = 0;
		dt_f[i][1] = 0;
		dt_f[i][2] = 0;
    }

    while (getline(file, buff)) {

        if (buff.compare(" -,-,-") == 0 || buff.compare("-,-,-") == 0) init = true, isReading = true;
        else if (buff.empty()) isReading = false;
        else if (isReading){
        	float f1, f2, f3;
        	fix_input f1_f, f2_f, f3_f;
            isReading = false;

            vector<string> v;

            stringstream ss(buff);

            while (ss.good()) {
                string substr;
                getline(ss, substr, ',');
                v.push_back(substr);
            }

            if (mode == 0) {
            	istringstream tmp0(v[0]);
            	istringstream tmp1(v[1]);
            	istringstream tmp2(v[2]);
            	tmp0 >> dt[cnt][0];
            	tmp1 >> dt[cnt][1];
            	tmp2 >> dt[cnt][2];
            } else if (mode == 1) {
            	istringstream tmp0(v[0]);
            	istringstream tmp1(v[1]);
            	istringstream tmp2(v[2]);
            	tmp0 >> dt_f[cnt][0];
            	tmp1 >> dt_f[cnt][1];
            	tmp2 >> dt_f[cnt][2];
            }

            if (init) init = false;
            cnt++;
            if (cnt == 128) isReading = false;
            else isReading = true;
            wasReading = true;
        }

        if (wasReading && !isReading) {

            float data[BATCH][DATA_SIZE];
            fix_input data_f[BATCH][DATA_SIZE];

            for (i = 0; i < cnt; i++) {
                data[BATCH-cnt+i][0] = dt[i][0];
                data[BATCH-cnt+i][1] = dt[i][1];
                data[BATCH-cnt+i][2] = dt[i][2];
                data_f[BATCH-cnt+i][0] = dt_f[i][0];
				data_f[BATCH-cnt+i][1] = dt_f[i][1];
				data_f[BATCH-cnt+i][2] = dt_f[i][2];
            }
            for (i = cnt; i < BATCH; i++) {
                data[i-cnt][0] = 0;
                data[i-cnt][1] = 0;
                data[i-cnt][2] = 0;
                data_f[i-cnt][0] = 0;
                data_f[i-cnt][1] = 0;
                data_f[i-cnt][2] = 0;
            }

            if(mode == 0) {
            	float sMax[1][FOURTH_NUM_KERNELS];
            	//master(data, sMax);

            	//cout << "\nOut (Float):" << endl;
				//printData2D(1, FOURTH_NUM_KERNELS, sMax);
				for(i = 0; i < FOURTH_NUM_KERNELS; i++) {
					out << fixed << setprecision(30) << sMax[0][i] << endl;
				}
				out << endl;
            }
            else if (mode == 1){
            	float sMax[1][FOURTH_NUM_KERNELS];
            	master_fix(data_f, sMax);

            	//cout << "\nOut (Fixed):" << endl;
            	//printData2D(1, FOURTH_NUM_KERNELS, sMax);
				for(i = 0; i < FOURTH_NUM_KERNELS; i++) {
					out << fixed << setprecision(30) << sMax[0][i] << endl;
				}
				out << endl;
            }

            for (i = 0; i < BATCH; i++) {
                dt[i][0] = 0;
                dt[i][1] = 0;
                dt[i][2] = 0;
                dt_f[i][0] = 0;
        		dt_f[i][1] = 0;
        		dt_f[i][2] = 0;
            }
            cnt = 0;
            wasReading = false;
        }
    }
    out.close();
}

int compareFiles(string file1, string file2, string type, string name) {

	ifstream f1, f2;
	f1.open (file1);
	f2.open (file2);
	string line1, line2;
	int cnt = 0, id1 = -1, id2 = -1, error_num = 0;;
	float num1[4], max1 = -1;
	float num2[4], max2 = -1;

	while (getline(f1, line1)) {
		getline(f2, line2);
		if (!line1.empty()) {
			istringstream iss1(line1);
			istringstream iss2(line2);
			iss1 >> num1[cnt];
			iss2 >> num2[cnt];

			if (num1[cnt] > max1) {
				max1 = num1[cnt];
				id1 = cnt + 1;
			}
			if (num2[cnt] > max2) {
				max2 = num2[cnt];
				id2 = cnt + 1;
			}


			cnt++;

		} else {

			if (id1 != id2) {
				error_num++;
				cout << "Mismatch in file " << name << " (" << type << "):" << endl;

				int i = 0;
				for (i = 0; i < 4; i++) {
					cout << "Original:\t" << num2[i] << endl;
					cout << "Custom:\t" << num1[i] << endl;
					cout << endl;
				}
				cout << endl << endl << endl << endl;
			}

			cnt = 0;
			id1 = -1;
			id2 = -1;
			max1 = -1;
			max2 = -1;
		}

	}

	return error_num;

}
