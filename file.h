#ifndef MAGICWAND_FILE_H
#define MAGICWAND_FILE_H
#include <stdio.h>

#define BUFFER_SIZE 500

FILE* openFile(char name[], const char * mode);
void closeFile(FILE* file);
void readFile(FILE* file, char mode);

#endif //MAGICWAND_FILE_H
