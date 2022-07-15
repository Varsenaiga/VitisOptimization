#ifndef MAGICWAND_FILE_H
#define MAGICWAND_FILE_H
#include <stdio.h>
#include<iostream>
#include<fstream>
using namespace std;

ifstream openFile(string name);
void readFile(istream &file, string outFile, int mode = 0);
int compareFiles(string file1, string file2, string type, string name);

#endif //MAGICWAND_FILE_H
