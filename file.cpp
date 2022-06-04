#include <stdio.h>
#include <stdlib.h>
#include <ap_fixed.h>
#include <string.h>
#include <stdbool.h>
#include "file.h"
#include "model_functions.h"

ifstream openFile(string name) {

	ifstream file(name);

    if (!file.is_open()) {
        printf("File can't be opened \n");
    }

    return file;
}

void readFile(istream &file, int mode) {

    if (mode < 0 || mode > 1) {
    	printf("Error on readFile: mode has incorrect value!");
    	exit(1);
    }

    string buff;
    bool init = true, isReading = false, wasReading = false;

  	float dt[BATCH][DATA_SIZE];
    fix1_t dt_f[BATCH][DATA_SIZE];

    int i, cnt = 0;

	ofstream out("test.txt");

    if (!out.is_open()) {
        printf("File can't be opened \n");
    }

    for (i = 0; i < BATCH; i++) {
        dt[i][0] = 0;
        dt[i][1] = 0;
        dt[i][2] = 0;
    }

    while (getline(file, buff)) {
        if (wasReading && !isReading) {

            float data[BATCH][DATA_SIZE];
            fix1_t data_f[BATCH][DATA_SIZE];

            for (i = 0; i < cnt; i++) {
                data[BATCH-cnt+i][0] = dt[i][0];
                data[BATCH-cnt+i][1] = dt[i][1];
                data[BATCH-cnt+i][2] = dt[i][2];
            }
            for (i = cnt; i < BATCH; i++) {
                data[i-cnt][0] = 0;
                data[i-cnt][1] = 0;
                data[i-cnt][2] = 0;
            }

            /*if(mode == 0) {
            	float sMax[1][4];
            	master(data, sMax);

            	printf("\nOut:\n");
				printData2D(1, 4, sMax);
				printf("\n\n\n\n");
				for(i = 0; i < 4; i++) {
					out << to_string(sMax[0][i]) << endl;
				}
				out << endl;
            }
            else if (mode == 1){
            	fix1_t sMax[1][4];
            	master_fix(data_f, sMax);

            	for(i = 0; i < 4; i++) {
            		out << sMax[0][i].to_string(10) << endl;
				}
            	out << endl;
            }*/

            for (i = 0; i < DATA_SIZE; i++) {
                dt[0][i] = 0;
                dt[1][i] = 0;
                dt[2][i] = 0;
                dt_f[0][i] = 0;
                dt_f[1][i] = 0;
                dt_f[2][i] = 0;
            }
            cnt = 0;
        }
        wasReading = isReading;

        if (buff.compare(" -,-,-") == 0 || buff.compare("-,-,-") == 0) init = true, isReading = true;
        else if (buff.empty()) isReading = false;
        else if (isReading){
        	float f1, f2, f3;
        	fix1_t f1_f, f2_f, f3_f;
            isReading = false;

            istringstream tmp(buff);
            if (mode == 0) {
				tmp >> dt[cnt][0];
				tmp >> dt[cnt][1];
				tmp >> dt[cnt][2];
				cout << dt[cnt][0] << "\t" << dt[cnt][1] << "\t" << dt[cnt][2] << endl;
            } else if (mode == 1) {
				tmp >> dt_f[cnt][0];
				tmp >> dt_f[cnt][1];
				tmp >> dt_f[cnt][2];
				cout << dt_f[cnt][0] << "\t" << dt_f[cnt][1] << "\t" << dt_f[cnt][2] << endl;
            }

            if (init) init = false;
            cnt++;
            if (cnt == 128) isReading = false;
            else isReading = true;
        }
    }
    out.close();
}
