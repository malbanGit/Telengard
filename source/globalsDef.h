#pragma once

/////////////
///// MAIN
/////////////
// RAM
// more RAM definitions in:
//    float40.c (30 bytes)
//    float40MS.s (50 byte)
//    string.c (xxx bytes)
// 
//    think about stack!

#define uint_16 unsigned long int
#define ABS(a) ((unsigned int)((a)>0)?(a):(-(a)))
#define RESET0REF() dp_VIA_cntl = 0xcc;


// currently displayed part of the map - the SCREEN  d 
uint_16 screen[4][4];
unsigned int above; // this one can be changed by "special"
unsigned int realAbove; // this is the real deal!

signed int inElevator;
signed int elevatorY;
signed int lightChange;
unsigned int specialAction;
unsigned int initSoundNo;

#define ACTION_TIME 250 // 5 seconds
unsigned int timer;
unsigned int localTimer;

#define SMALL_PAUSE 75
#define VERY_SMALL_PAUSE 25
#define ULL(a) ((unsigned long long int)(a))
#define UL(a) ((unsigned long int)(a))

char stringBuffer4[4]; // one "int" (8bit)
char stringBuffer6[6]; // one "long" (16bit)
char stringBuffer12[12]; // one "long long" (32bit)
char stringBuffer40[40]; // one "line"
char stringBufferExtra[12]; // 


#define GO_NO_REDRAW 0
#define GO_REDRAW 127
#define GO_NORTH 1
#define GO_SOUTH 2
#define GO_EAST 3
#define GO_WEST 4

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

signed int printDungeon;         // 0 or 1
// use m signed int printMonster;         // monster number
signed int printEnvironment;     // content number
signed int printTreasure;
signed int doEffectStatus;
signed int printCharacter;
signed int printfEffect;
unsigned int effectTimer;
signed int effectOffsetY;
signed int effectOffsetX;

int fillMap;
unsigned int utmp;
signed int tmp;
signed int tmp2;
unsigned long int ultmp;
signed long int ltmp;
signed long long int lltmp;


unsigned int flashAvailable;


// 47 byte
signed long int tmp_hp; // 2  hp max # word?
unsigned int tmp_lv; // 1 player level # word?

unsigned long long tmp_ex; // 4 experience # long long?
unsigned long int tmp_su; // 2 spell units (max)

unsigned char tmp_cx; // 1
unsigned char tmp_cy; // 1

unsigned long long tmp_tg; // 4 saved gold # long long?

unsigned int tmp_s[6]; // 6 stats # word? -> originally accessed from 0 to 5
unsigned long int tmp_inventory[10]; // 20 inventory -> originally accessed from 1 to 10
signed int tmp_box[4]; // 4 random BOX combinations
int tmp_calibrationValue; //[1]
int tmp_noBuzzVectrex; // [1]
// random is not saved!


//;---------------




signed long int hp; // hp max # word? [2]
unsigned int lv; // player level # word? [1]

unsigned long long ex; // experience # long long? [4]
unsigned long int su; // spell units (max) [2]

unsigned char cx; //[1]
unsigned char cy; //[1]

unsigned long long tg; // saved gold # long long? [4]

unsigned int s[6]; // stats # word? -> originally accessed from 0 to 5 [6]
unsigned long int inventory[10]; // inventory -> originally accessed from 1 to 10 [20]

signed int box[4]; // random BOX combinations [4]
//#ifdef USE_CALIBRATION
int calibrationValue; //[1]
int noBuzzVectrex; // [1]
//#endif


// sum: 2+1+4+2+1+1+4+6+20+4 = 45
// or
// sum: +1 = 46
//;---------------

signed long int ch; // current hp # word?
unsigned long int cs; // spell units current

// postion on the map (center tile)
// 1-200

unsigned char cz;
unsigned long long gd; // gold # long long?
unsigned int sf[11]; // spell effects  -> originally accessed from 1 to 11


// monster encounter
// these must be global, so that
// I can also access them in the 
// castSpell() function!
signed int m; // monster type
signed long mh; // monster hit points
unsigned int db; // damage bonus (mulitplyer)
unsigned int pa; // paralise probabiolity
unsigned int dr; // drain probabiolity
unsigned int mb; // monster bonus (to hit)
unsigned int un; // undead
unsigned int ml; // monster level


unsigned int l; // level for testing, can be monster level...

unsigned int animCounter;

int lastX;
int lastY;

////////////
//// MACRO SUSAGE
////////////
int _y_;
int _x_;

//int pausebutton;
//#define pauseJoyX _x_
//#define pauseJoyY _y_

////////////
//// STRING
////////////
int _XC;
int _YC;

// messages are kept in a local
// buffer and displayed with
// display rounds
int msgLine;

signed int stackM[20];    // 20 monster on stack, TYPE
unsigned int stackML[20];   // LEVEL
signed long int stackMH[20];   // HitPoints

char msg_1[40];
char msg_2[40];
char msg_3[40];
char msg_4[40]; // not used
char * const msg[4] = {msg_1, msg_2, msg_3, msg_4};


// random 
unsigned int _x;
unsigned int _a;
unsigned int _b;
unsigned int _c;

unsigned int __x;
unsigned int __a;
unsigned int __b;
unsigned int __c;

// /////////////////////////////////////////////////////////////////////////////////////////
// floating point stuff
// /////////////////////////////////////////////////////////////////////////////////////////
// 
// in addition to below variables
// the MS asm part also uses about 50 byte of RAM!

// x,y,z as floats
unsigned char fpackX0x[5];
unsigned char fpackY0y[5];
unsigned char fpackZ0z[5];

// float tmp variable
unsigned char fpacktmp1[5];
unsigned char fpacktmp2[5];
unsigned char fpackQ[5];

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
unsigned int FP0EXP;
unsigned int FPA0[4];
unsigned int FP0SGN;

unsigned int COEFCT;
unsigned int STRDES[5];
unsigned int FPCARY;

// * FLOATING POINT ACCUMULATOR #1
unsigned int FP1EXP;
unsigned int FPA1[4];
unsigned int FP1SGN;

unsigned int RESSGN;
unsigned int FPSBYT;
unsigned int COEFPT[2];

// FPA2
unsigned int _TMPTR1;
unsigned int FPA2[4];
// FLOATING POINT ACCUMULATOR #3 :PACKED: (0x40-0x44)
unsigned int V40;
unsigned int V41;
unsigned int V42;
unsigned int V43;
unsigned int V44;
// FLOATING POINT ACCUMULATOR #4 :PACKED: (0x45-0x49)
unsigned int V45;
unsigned int V46;
unsigned int V47;
unsigned int V48[2];

// FLOATING POINT ACCUMULATOR #5 :PACKED: (0x4A-0x4E)
unsigned int V4A;
unsigned int V4B[2];
unsigned int V4D[2];

unsigned int VAB;
unsigned int VAC;
unsigned int VAD;
unsigned int VAE;
unsigned int TMPLOC;
unsigned int CHARAC;

volatile unsigned int sfx_status_1;
unsigned long sfx_pointer_1;
unsigned long currentSFX_1;
unsigned long sfx_doframe_intern_1;




//////////////////////////////////////////////////
// AKY player
//////////////////////////////////////////////////
unsigned int PLY_error;//           
unsigned int ACCA;//                ds       1                            ; senselessly named tmp 
unsigned int ACCB;//                ds       1                            ; senselessly named tmp 
unsigned int volumeRegister;//      ds       1 
unsigned int frequencyRegister;//   ds       1 
unsigned int r7;//                  ds       1 
//;
//; "flag"
//; 0 = initial
//; 1 = non initial
//; no opcode used!
//; flag is loaded into reg b upon call of subroutine!
unsigned int initFlag1;//           ds       1 
unsigned int initFlag2;//          ds       1 
unsigned int initFlag3;//           ds       1 
unsigned long int PLY_AKY_PATTERNFRAMECOUNTER_OVER;//  ds  2                   ; pointer to next pattern start 
unsigned long int PLY_AKY_PATTERNFRAMECOUNTER;//  ds  2                        ; pointer into the current pattern 
unsigned long int PLY_AKY_CHANNEL1_PTTRACK;//  ds  2 
unsigned long int PLY_AKY_CHANNEL2_PTTRACK;//  ds  2 
unsigned long int PLY_AKY_CHANNEL3_PTTRACK;//  ds  2 
unsigned int PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK;//  ds  1 
unsigned int PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK;//  ds  1 
unsigned int PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK;//  ds  1 
unsigned long int PLY_AKY_CHANNEL1_PTREGISTERBLOCK;//  ds  2 
unsigned long int PLY_AKY_CHANNEL2_PTREGISTERBLOCK;//  ds  2 
unsigned long int PLY_AKY_CHANNEL3_PTREGISTERBLOCK;//  ds  2 
unsigned int PLY_AKY_PSGREGISTER13_RETRIG;//  ds  1                       ; compare val 
//; -------------------------------------
//;Some stored PSG registers. They MUST be consecutive.
unsigned int PLY_AKY_PSGREGISTER6;// ds       1 
unsigned int PLY_AKY_PSGREGISTER11;// ds       1 
unsigned int PLY_AKY_PSGREGISTER12;// ds       1 
unsigned int PLY_AKY_PSGREGISTER13;// ds       1 

int PLY_SONG_PLAYING; // new in player!

