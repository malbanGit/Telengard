#pragma once

////////////
//// STRING
////////////

// /////////////////////////////////////////////////////////////////////////////////////////
// string vars, defined in ../globalsDef.h (from main.c)
// /////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////
// Variables
///////////////////////////
// messages are kept in a local
// buffer and displayed with
// display rounds

extern int _XC;
extern int _YC;
extern int msgLine;
extern char msg_1[40];
extern char msg_2[40];
extern char msg_3[40];

extern char stringBuffer40[40]; // one "line"
extern char stringBuffer4[4]; // one "int" (8bit)
extern char stringBuffer6[6]; // one "int" (16bit)
extern char stringBuffer12[12]; // one "long long" (32bit)
extern char stringBufferExtra[12]; // 

// random
extern unsigned int _x;
extern unsigned int _a;
extern unsigned int _b;
extern unsigned int _c;

// save / restore seed
extern unsigned int __x;
extern unsigned int __a;
extern unsigned int __b;
extern unsigned int __c;

///////////////////////////
// this is actually a constant!
///////////////////////////
extern char * const msg[4];
#define TEXT_SCALE (0x44)
#define MESSAGE_SCALE (0x50)

#define RESET0REF() dp_VIA_cntl = 0xcc;


extern void initString();

#define clearMessage() do{msgLine = 0;}while (0)
extern void printMessage(char * m);
extern void displayMessages();

// from print5font.s
extern void syncPrintStrd(const int a, const int b, void* const u);
#ifdef __INLINE_RUM
#ifndef __INLINE
#define __INLINE static inline __attribute__((always_inline))
#endif

__INLINE void Print_Str_dab(const int a, const int b, void* const u) // 0xF37A
{
	asm volatile(
		"lda %[A]\n\t"
		"ldb %[B]\n\t"
		"ldu %[U]\n\t"
		"jsr ___Print_Str_d; BIOS call\n\t"
		:: 	[A] "mi" (a), [B] "mi" (b),	[U] "mi" (u)
		: "memory", "cc", "d", "x", "u");
}

#define Print_Str_d_org(a,b,c) Print_Str_dab((const int)(b), (const int)(a), (void *)(c))
#else
#define Print_Str_d_org(a,b,c) _Print_Str_d((const int)(b), (const int)(a), (void *)(c))
#endif


#define Print_Str_d(a,b,c) syncPrintStrd((const int)(b), (const int)(a), (void *)(c))
extern void printfsi(const char *s1, const char *s2, const unsigned int i);

#define printDirect(text) do {Print_Str_d((_YC-=0x0a),_XC, (void* const)(text));RESET0REF();} while (0)
#define print(text) do {printDirect( (text "\x80")  );} while (0)
#define CLS do{_XC = -0x70;_YC = 0x70;} while(0)
#define ADDLINE do{_YC -= 0x0a;} while(0)

extern void vstrcpy(char * dest, char *source);		
extern unsigned int vstrlen(char * dest);
extern void exchange0with80(char *s);
extern void* memset(void* dest, unsigned int val, long unsigned int len);

extern char * itoa(unsigned int n);
extern char * itoa_s(unsigned int n); // only digits needed
extern char * itoa_s_s(signed int n); // only digits needed + signed
extern char * ltoa(unsigned long n);
extern char * ltoa_s(unsigned long n); // remove spaces
extern char * lltoa(unsigned long long n);
extern char * lltoa_s(unsigned long long n); // remove spaces

// fs = format string
// max buf size
// '%' is used as placeholder
// place holder must exist!

// _s shorten the integer to digits
// _s_s shorten the integer to digits AND signed
extern char * _fs(const char *s1, const char *s2);
extern char * _fi(const char *s1, unsigned int i);
extern char * _fi_s(const char *s1, unsigned int i);
extern char * _fi_s_s(const char *s1, signed int i);

// each "int" occupies 3 chars (space filled)
extern void _fii(const char *s1, const unsigned int i1, const unsigned int i2);
extern void _fsi(const char *s1, const char *s2, const unsigned int i);
extern void _fsi2(const char *s1, const unsigned int i, const char *s2);

extern void _fsi2_s(const char *s1, const unsigned int i, const char *s2);
extern void _fsi_s(const char *s1, const char *s2, const unsigned int i);

// format unsigned long, shorten the long to digits
extern void _fl(const char *s1, const unsigned long i);
extern void _fsl_s(const char *s1, const char *s2, const unsigned long int i);
extern void _fl_s(const char *s1, const unsigned long i);
extern void _fl_l_s(const char *s1, const unsigned long i1, const unsigned long i2);

extern void _fll(const char *s1, const unsigned long long int i);
extern void _fll_s(const char *s1, const unsigned long long i);

extern void _fsss(const char *s1, const char *s2, const char *s3, const char *s4);


// random
#if __BANK__ == 0
extern void setRandSeedNP();
#endif

#define setRandSeed(a) do {_x = ((unsigned int)(a));setRandSeedNP();} while(0)
extern unsigned int Rand();
extern unsigned int RandMax(unsigned int m);
extern unsigned long int lRandMax(unsigned int m);
extern void saveSeed();
extern void restoreSeed();

