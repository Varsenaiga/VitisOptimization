#include <stdio.h>
#include <string.h>
#include <iostream>
#include<fstream>
#include <ap_fixed.h>
#include "master.h"
#include "file.h"

#define FIXED 1		// 0 -> FLOATING POINT; 1 -> FIXED POINT
#define TESTING 0		// 0 -> NOT TESTING; 1 -> TESTING

int main() {

	string names[10] = {"dengyl", "hyw", "jiangyh", "liucx", "lsj", "pengxl", "shiyun", "tangsy", "xunkai", "zhangxy"};
	string types[4] = {"wing", "ring", "slope", "negative"};
	string negatives[4] = {"ccw_1", "ccw_2", "jiangyh", "teste"};
	string tests[2] = {"teste", "teste1"};
	int i = 0, cnt = 0;

	int TYPE = 0;		// 0 -> WING; 1 -> RING; 2 -> SLOPE; 3 -> NEGATIVE; 4 -> TEST
	int NAME = 0;		// 0 -> dengyl; 1 -> hyw; 2 -> jiangyh; 3 -> liucx; 4 -> lsj; 5 -> pengxl; 6 -> shiyun; 7 -> tangsy; 8 -> xunkai; 9 -> zhangxy
	int NEGATIVE = 0;	// 0 -> ccw_1; 1 -> ccw_2; 2 -> jiangyh; 3 -> teste;
	int TEST = 0;		// 0 -> teste; 1 -> teste1;

	std::cout << std::endl << std::endl << std::endl;

	if (TESTING == 0) {
		for (i = 0; i < 34; i++) {
			string str = "../../../data/";
			string original = "original/";
			string out = "";
			if (TYPE < 3) {
				str.append(types[TYPE] + "/output_" + types[TYPE] + "_" + names[NAME] + ".txt");
				out.append(types[TYPE] + "/" + names[NAME] + ".txt");
			}
			else if (TYPE == 3 && NEGATIVE < 3) {
				str.append(types[TYPE] + "/output_" + types[TYPE] + "_" + negatives[NEGATIVE] + ".txt");
				out.append(types[TYPE] + "/" + negatives[NEGATIVE] + ".txt");
			}
			else if (TYPE == 3) {
				str.append(types[TYPE] + "/output_" + negatives[NEGATIVE] + ".txt");
				out.append(types[TYPE] + "/" + negatives[NEGATIVE] + ".txt");
			}
			else {
				str.append(types[3] + "/output_" + tests[TEST] + ".txt");
				out.append("test/" + tests[TEST] + ".txt");
			}

			ifstream file = openFile(str);

			readFile(file, out, FIXED);

			file.close();

			original.append(out);

			if (TYPE < 3) cnt += compareFiles(out, original, types[TYPE], names[NAME]);
			else cnt += compareFiles(out, original, types[TYPE], negatives[NAME]);

			if (TYPE == 3) {
				NEGATIVE++;
			}
			if (NAME == 9) {
				NAME = 0;
				TYPE++;
			} else NAME++;
		}
		std::cout << "Number of mismatches: " << cnt << std::endl;

	} else {
		string str = "../../../data/";
		string out = "";
		str.append(types[3] + "/output_" + tests[TEST] + ".txt");
		out.append("test/" + tests[TEST] + ".txt");

		ifstream file = openFile(str);

		readFile(file, out, FIXED);

		file.close();
	}

	return 0;
}
