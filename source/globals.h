

#pragma once

/////////////
///// MAIN
/////////////
// RAM
// more RAM definitions in:
//    float40.c (30 bytes)
//    float40MS.s (50 byte)
//    string.c (133 bytes)
// 
//    atm below used: 133 byte
//
//    think about stack!

// currently displayed part of the map - the SCREEN
#define uint_16 unsigned long int
#define ABS(a) ((unsigned int)((a)>0)?(a):(-(a)))

extern uint_16 screen[4][4];
extern unsigned int above;
extern unsigned int inElevator;
extern signed int elevatorY;

#define ACTION_TIME 250 // 5 seconds
extern unsigned int timer;
extern unsigned int localTimer;
extern int lightChange;
extern unsigned int specialAction;

#define SMALL_PAUSE 75 // 1 1/2 seconds
#define VERY_SMALL_PAUSE 25 // 1/2 second
#define ULL(a) ((unsigned long long int)(a))
#define UL(a) ((unsigned long int)(a))

extern char stringBuffer4[4]; // one "int" (8bit)
extern char stringBuffer6[6]; // one "long" (16bit)
extern char stringBuffer12[12]; // one "long long" (32bit)
extern char stringBuffer40[40]; // one "line"


#define GO_NO_REDRAW 0
#define GO_REDRAW 127
#define GO_NORTH 1
#define GO_SOUTH 2
#define GO_EAST 3
#define GO_WEST 4

extern int fillMap;
extern unsigned int utmp;
extern signed int tmp;
extern signed int tmp2;
extern unsigned long int ultmp;
extern signed long int ltmp;
extern signed long long int lltmp;

extern unsigned int s[6]; // stats # word? -> originally accessed from 0 to 5
extern signed long int hp; // hp max # word?
extern signed long int ch; // current hp # word?
extern unsigned int lv; // player level # word?
extern unsigned int l; // level for testing, can be monster level...

extern unsigned long long ex; // experience # long long?
extern unsigned long int su; // spell units (max)
extern unsigned long int cs; // spell units current


// postion on the map (center tile)
// 1-200
extern unsigned char cx;
extern unsigned char cy;
extern unsigned char cz;

extern unsigned long long gd; // gold # long long?
extern unsigned long long tg; // saved gold # long long?

extern unsigned int inventory[10]; // inventory -> originally accessed from 1 to 10
extern unsigned int sf[11]; // spell effects  -> originally accessed from 1 to 11

extern signed int box[4]; // random BOX combinations

// monster encounter
// these must be global, so that
// I can also access them in the 
// castSpell() function!
extern signed int m; // monster type
extern signed long mh; // monster hit points
extern unsigned int db; // damage bonus (mulitplyer)
extern unsigned int pa; // paralise probabiolity
extern unsigned int dr; // drain probabiolity
extern unsigned int mb; // monster bonus (to hit)
extern unsigned int un; // undead
extern unsigned int ml; // monster level

extern signed int stackM[20];    // 20 monster on stack, TYPE
extern unsigned int stackML[20];   // LEVEL
extern signed long int stackMH[20];   // HitPoints


extern int lastX;
extern int lastY;

////////////
//// STRING
////////////
extern int _XC;
extern int _YC;
extern int __y__;
extern int __x__;



// messages are kept in a local
// buffer and displayed with
// display rounds
extern int msgLine;
extern char msg_1[40];
extern char msg_2[40];
extern char msg_3[40];
extern char msg_4[40];
extern char * const msg[4];


// random 
extern unsigned int _x;
extern unsigned int _a;
extern unsigned int _b;
extern unsigned int _c;

extern unsigned int __x;
extern unsigned int __a;
extern unsigned int __b;
extern unsigned int __c;

// /////////////////////////////////////////////////////////////////////////////////////////
// floating point stuff
// /////////////////////////////////////////////////////////////////////////////////////////
// 
// in addition to below variables
// the MS asm part also uses about 50 byte of RAM!

// x,y,z as floats
extern unsigned char fpackX0x[5];
extern unsigned char fpackY0y[5];
extern unsigned char fpackZ0z[5];

// float tmp variable
extern unsigned char fpacktmp1[5];
extern unsigned char fpacktmp2[5];
extern unsigned char fpackQ[5];

///////////////
////// float.s
///////////////
/*
;* FLOATING POINT ACCUMULATOR #0
 .globl FP0EXP
FP0EXP:              .blkb      1                            ; *PV FLOATING POINT ACCUMULATOR #0 EXPONENT 
 .globl FPA0
FPA0:                .blkb      4                            ; *PV FLOATING POINT ACCUMULATOR #0 MANTISSA 
 .globl FP0SGN
FP0SGN:              .blkb      1                            ; *PV FLOATING POINT ACCUMULATOR #0 SIGN 
;
 .globl COEFCT
COEFCT:              .blkb      1                            ; POLYNOMIAL COEFFICIENT COUNTER 
 .globl STRDES
STRDES:              .blkb      5                            ; TEMPORARY STRING DESCRIPTOR 
 .globl FPCARY
FPCARY:              .blkb      1                            ; FLOATING POINT CARRY BYTE 
;* FLOATING POINT ACCUMULATOR #1
 .globl FP1EXP
FP1EXP:              .blkb      1                            ; *PV FLOATING POINT ACCUMULATOR #1 EXPONENT 
 .globl FPA1
FPA1:                .blkb      4                            ; *PV FLOATING POINT ACCUMULATOR #1 MANTISSA 
 .globl FP1SGN
FP1SGN:              .blkb      1                            ; *PV FLOATING POINT ACCUMULATOR #1 SIGN 
;
 .globl RESSGN
RESSGN:              .blkb      1                            ; SIGN OF RESULT OF FLOATING POINT OPERATION 
 .globl FPSBYT
FPSBYT:              .blkb      1                            ; FLOATING POINT SUB BYTE (FIFTH BYTE) 
; used once!
 .globl COEFPT
COEFPT:              .blkb      2                            ; POLYNOMIAL COEFFICIENT POINTER (used as buffer here) 
; FPA2
 .globl _TMPTR1
_TMPTR1:             .blkb      1                            ; 
 .globl FPA2
FPA2:                .blkb      4                            ; FLOATING POINT ACCUMULATOR #2 MANTISSA 
; FLOATING POINT ACCUMULATORS #3,4 & 5 ARE MOSTLY
; USED AS SCRATCH PAD VARIABLES.
;* FLOATING POINT ACCUMULATOR #3 :PACKED: (0x40-0x44)
 .globl V40
V40:                 .blkb      1 
 .globl V41
V41:                 .blkb      1 
 .globl V42
V42:                 .blkb      1 
 .globl V43
V43:                 .blkb      1 
 .globl V44
V44:                 .blkb      1 
;* FLOATING POINT ACCUMULATOR #4 :PACKED: (0x45-0x49)
 .globl V45
V45:                 .blkb      1 
 .globl V46
V46:                 .blkb      1 
 .globl V47
V47:                 .blkb      1 
 .globl V48
V48:                 .blkb      2 
;* FLOATING POINT ACCUMULATOR #5 :PACKED: (0x4A-0x4E)
 .globl V4A
V4A:                 .blkb      1 
 .globl V4B
V4B:                 .blkb      2 
 .globl V4D
V4D:                 .blkb      2 
 .globl VAB
VAB:                 .blkb      1                            ; = LOW ORDER FOUR BYTES OF THE PRODUCT 
 .globl VAC
VAC:                 .blkb      1                            ; = OF A FLOATING POINT MULTIPLICATION 
 .globl VAD
VAD:                 .blkb      1                            ; = THESE BYTES ARE USE AS RANDOM DATA 
 .globl VAE
VAE:                 .blkb      1                            ; = BY THE RND STATEMENT 
 .globl TMPLOC
TMPLOC:              .blkb      1                            ; SCRATCH VARIABLE 
*/


// * FLOATING POINT ACCUMULATOR #0
extern unsigned int FP0EXP;
extern unsigned int FPA0[4];
extern unsigned int FP0SGN;

extern unsigned int COEFCT;
extern unsigned int STRDES[5];
extern unsigned int FPCARY;

// * FLOATING POINT ACCUMULATOR #1
extern unsigned int FP1EXP;
extern unsigned int FPA1[4];
extern unsigned int FP1SGN;

extern unsigned int RESSGN;
extern unsigned int FPSBYT;
extern unsigned int COEFPT[2];

// FPA2
extern unsigned int _TMPTR1;
extern unsigned int FPA2[4];
// FLOATING POINT ACCUMULATOR #3 :PACKED: (0x40-0x44)
extern unsigned int V40;
extern unsigned int V41;
extern unsigned int V42;
extern unsigned int V43;
extern unsigned int V44;
// FLOATING POINT ACCUMULATOR #4 :PACKED: (0x45-0x49)
extern unsigned int V45;
extern unsigned int V46;
extern unsigned int V47;
extern unsigned int V48[2];

// FLOATING POINT ACCUMULATOR #5 :PACKED: (0x4A-0x4E)
extern unsigned int V4A;
extern unsigned int V4B[2];
extern unsigned int V4D[2];

extern unsigned int VAB;
extern unsigned int VAC;
extern unsigned int VAD;
extern unsigned int VAE;
extern unsigned int TMPLOC;
extern unsigned int CHARAC;

#define PRINT_STAIR 0
#define PRINT_MISTY_CUBE 1
#define PRINT_THRONE 2
#define PRINT_HOUSE 3
#define PRINT_CUBE 4
#define PRINT_TREASURE 5
#define PRINT_DEBRIS 6
#define PRINT_SILVER 7
#define PRINT_GOLD 8
#define PRINT_JEWELS 9


extern signed int printDungeon; // 0 or 1
//extern signed int printMonster; // monster number
extern signed int printEnvironment;
extern signed int printCharacter;
extern signed int printTreasure;

extern signed int printfEffect; // #define FLAME 7, Elevator, INN, Teleport, Spell effects

extern unsigned int effectTimer;
extern signed int effectOffsetY;
extern signed int effectOffsetX;
