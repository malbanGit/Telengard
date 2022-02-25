#pragma once

// not extern, since only used in ASM

// /////////////////////////////////////////////////////////////////////////////////////////
// floating point stuff
// /////////////////////////////////////////////////////////////////////////////////////////

// /////////////////////////////////////////////////////////////////////////////////////////
// floating vars, defined in ../globalsDef.h (from main.c)
// /////////////////////////////////////////////////////////////////////////////////////////
// 

// x,y,z as floats
extern unsigned char fpackX0x[5];
extern unsigned char fpackY0y[5];
extern unsigned char fpackZ0z[5];

// float tmp variable
extern unsigned char fpacktmp1[5];
extern unsigned char fpacktmp2[5];
extern unsigned char fpackQ[5];


// floating point constants
extern const unsigned char const FP_X0_PACKED[5];         // "1.6915"
extern const unsigned char const FP_Y0_PACKED[5];         // "1.4278"
extern const unsigned char const FP_Z0_PACKED[5];         // "1.2462"


void initFP(); // must be called ONCE to init tmp variables and such

void intF(unsigned char *in, unsigned char *out); // float to float, but only keep integer part
long int toInt(unsigned char *in); // float to integer (16 bit signed word)

void addF(unsigned char *add1, unsigned char *add2, unsigned char *out);// add two floats
void subF(unsigned char *subFrom, unsigned char *subWhat, unsigned char *out); // sub one float from another
void mulF(unsigned char *mul1, unsigned char *mul2, unsigned char *out);// mul two floats
// div is also implemented in asm code, but not used from "C" yet

void addIF(unsigned long int add1, unsigned char *add2, unsigned char *out); // add int to float, result in float
void mulIF(unsigned long int mul1, unsigned char *mul2, unsigned char *out); // add int to float, result in float
void fToStr(unsigned char *f, unsigned char *buffer); // translate float to string
