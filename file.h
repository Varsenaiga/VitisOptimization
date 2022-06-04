#ifndef MAGICWAND_FILE_H
#define MAGICWAND_FILE_H
#include <stdio.h>
#include<iostream>
#include<fstream>
using namespace std;

#define BUFFER_SIZE 500

ifstream openFile(string name);
void readFile(istream &file, int mode = 0);

#endif //MAGICWAND_FILE_H
