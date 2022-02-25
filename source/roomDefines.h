#pragma once

#define ROOM_Y(a) ((signed char) ( 127-((signed long)(a)*85)))
#define ROOM_X(a) ((signed char) (-128+((signed long)(a)*85)))

// map in this context is the
// 4x4 grid that is generated
// by the procedural MAP generator
// 4x4 is held in a buffer called screen[4][4] of long integers (16bit)
//

// lower byte of map position defines wall state
// 3 is wall only
// 2 is door
// 1 = nothing
// 0 = nothing 
#define map00_lo (*(((char *) (((unsigned long int *)screen)+0+0)) +1))
#define map01_lo (*(((char *) (((unsigned long int *)screen)+0+1)) +1))
#define map02_lo (*(((char *) (((unsigned long int *)screen)+0+2)) +1))
#define map03_lo (*(((char *) (((unsigned long int *)screen)+0+3)) +1))

#define map10_lo (*(((char *) (((unsigned long int *)screen)+4+0)) +1))
#define map11_lo (*(((char *) (((unsigned long int *)screen)+4+1)) +1))
#define map12_lo (*(((char *) (((unsigned long int *)screen)+4+2)) +1))
#define map13_lo (*(((char *) (((unsigned long int *)screen)+4+3)) +1))

#define map20_lo (*(((char *) (((unsigned long int *)screen)+8+0)) +1))
#define map21_lo (*(((char *) (((unsigned long int *)screen)+8+1)) +1))
#define map22_lo (*(((char *) (((unsigned long int *)screen)+8+2)) +1))
#define map23_lo (*(((char *) (((unsigned long int *)screen)+8+3)) +1))

#define map30_lo (*(((char *) (((unsigned long int *)screen)+12+0)) +1))
#define map31_lo (*(((char *) (((unsigned long int *)screen)+12+1)) +1))
#define map32_lo (*(((char *) (((unsigned long int *)screen)+12+2)) +1))
#define map33_lo (*(((char *) (((unsigned long int *)screen)+12+3)) +1))

// higher byte of map position defines contents
// 1 Inn
// 2 Pit
// 3 Teleport
// 4 Stairway
// 5 Altar
// 6 Fountain
// 7 Cube
// 8 Throne
// 9 Box

// 10 ?
#define map00_hi (*(((char *) (((unsigned long int *)screen)+0+0)) +0))
#define map01_hi (*(((char *) (((unsigned long int *)screen)+0+1)) +0))
#define map02_hi (*(((char *) (((unsigned long int *)screen)+0+2)) +0))
#define map03_hi (*(((char *) (((unsigned long int *)screen)+0+3)) +0))

#define map10_hi (*(((char *) (((unsigned long int *)screen)+4+0)) +0))
#define map11_hi (*(((char *) (((unsigned long int *)screen)+4+1)) +0))
#define map12_hi (*(((char *) (((unsigned long int *)screen)+4+2)) +0))
#define map13_hi (*(((char *) (((unsigned long int *)screen)+4+3)) +0))

#define map20_hi (*(((char *) (((unsigned long int *)screen)+8+0)) +0))
#define map21_hi (*(((char *) (((unsigned long int *)screen)+8+1)) +0))
#define map22_hi (*(((char *) (((unsigned long int *)screen)+8+2)) +0))
#define map23_hi (*(((char *) (((unsigned long int *)screen)+8+3)) +0))

#define map30_hi (*(((char *) (((unsigned long int *)screen)+12+0)) +0))
#define map31_hi (*(((char *) (((unsigned long int *)screen)+12+1)) +0))
#define map32_hi (*(((char *) (((unsigned long int *)screen)+12+2)) +0))
#define map33_hi (*(((char *) (((unsigned long int *)screen)+12+3)) +0))

//#define CAN_GO_EAST ((screen[1][2]&12) == 12)
//#define CAN_GO_WEST ((screen[1][1]&12) == 12)
//#define CAN_GO_NORTH ((screen[1][1]&3) == 3)
//#define CAN_GO_SOUTH ((screen[2][1]&3) == 3)

// actually these are "inverse"
// if these conditionals are TRUE
// you can NOT go in that direction :-)
#define CAN_GO_EAST ((map12_lo&12) == 12)
#define CAN_GO_WEST ((map11_lo&12) == 12)
#define CAN_GO_NORTH ((map11_lo&3) == 3)
#define CAN_GO_SOUTH ((map21_lo&3) == 3)


// 16 bit map direct positionings
#define map00 (* (long unsigned int *)(((unsigned long int *)screen)+0+0)) 
#define map01 (* (long unsigned int *)(((unsigned long int *)screen)+0+1)) 
#define map02 (* (long unsigned int *)(((unsigned long int *)screen)+0+2)) 
#define map03 (* (long unsigned int *)(((unsigned long int *)screen)+0+3)) 

#define map10 (* (long unsigned int *)(((unsigned long int *)screen)+4+0)) 
#define map11 (* (long unsigned int *)(((unsigned long int *)screen)+4+1)) 
#define map12 (* (long unsigned int *)(((unsigned long int *)screen)+4+2)) 
#define map13 (* (long unsigned int *)(((unsigned long int *)screen)+4+3)) 

#define map20 (* (long unsigned int *)(((unsigned long int *)screen)+8+0)) 
#define map21 (* (long unsigned int *)(((unsigned long int *)screen)+8+1)) 
#define map22 (* (long unsigned int *)(((unsigned long int *)screen)+8+2)) 
#define map23 (* (long unsigned int *)(((unsigned long int *)screen)+8+3)) 

#define map30 (* (long unsigned int *)(((unsigned long int *)screen)+12+0))
#define map31 (* (long unsigned int *)(((unsigned long int *)screen)+12+1))
#define map32 (* (long unsigned int *)(((unsigned long int *)screen)+12+2))
#define map33 (* (long unsigned int *)(((unsigned long int *)screen)+12+3))


// a = lower byte
// true if either door or wall
#define IS_UPPER_WALL(a) (((a)&3)>1)
#define IS_LEFT_WALL(a) (((a)&12)>4)
#define HAS_WALL(a) ((IS_UPPER_WALL(a)) || (IS_LEFT_WALL(a)))

// a is a conditional
// b is lower byte
// returns (with correct conditional) 
// the up/left value (2 or 3) of wall or door
// or 0 if none or not in line of sight
#define GETUP(a,b)   (a)?(((b)&3)):(0)
#define GETLEFT(a,b) (a)?((((b)>>2)&3)):(0)

// a conditional for line of sight
// b item in room 
// return 1-9 or 0
#define ITEM(a,b)   ((unsigned int) ((a)?(((((b)>0) && ((b)<10))?(b):0)):(0)))

// return 10 if any item, 0 otherwise
// ((unsigned int)(((a)>0)?10:0))

#if __BANK__ == 0
    #define STRENGTH 0
    #define DETECT_TRAPS 1
    #define LIGHT 2
    #define PROTECTION_FROM_EVIL 3
    #define LEVITATE 4
    #define INVISIBLE 5
    #define FEAR 6
    #define ASTRAL_WALK 7
    #define TIMESTOP 8
    #define RAISE_DEAD 9
    #define DRUNK 10
#endif 

#define ANY_ITEM(a)   ((sf[LIGHT]==0)?(unsigned int)0:((unsigned int)(((a)>0)?10:0)))





// / NW room 
// / No item do next room 
// IF USR(FNS,P(ZERO,ZERO))=ZERO THEN 15320 
// / Check for obstructed view 
// 15305 IF USR(FNUP,P(ONE,ZERO))<TWO THEN IF USR(FNLF,P(ONE,ONE))<TWO THEN 15315 
// 15310 IF USR(FNUP,P(ONE,ONE))>ONE THEN 15320 
// 15311 IF USR(FNLF,P(ZERO,ONE))>ONE THEN 15320 
// 15315 POKE 40126,C128 
#define ITEM_00 (((!IS_UPPER_WALL(map10_lo)) && (!IS_LEFT_WALL(map11_lo))) || ((!IS_UPPER_WALL(map11_lo)) && (!IS_LEFT_WALL(map01_lo))) ) /* NW */

// / N room 
// 15320 IF USR(FNS,P(ZERO,ONE))<>ZERO THEN IF USR(FNUP,P(ONE,ONE))<TWO THEN POKE 40132,C128 
#define ITEM_01 (!IS_UPPER_WALL(map11_lo))   /* N */
 
// / NE room 
// 15340 IF USR(FNS,P(ZERO,TWO))=ZERO THEN 15360 
// 15345 IF USR(FNUP,P(ONE,ONE))<TWO THEN IF USR(FNLF,P(ZERO,TWO))<TWO THEN 15355 
// 15350 IF USR(FNUP,P(ONE,TWO))>ONE THEN 15360 
// 15351 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15360 
// 15355 POKE 40138,C128 
#define ITEM_02 (((!IS_UPPER_WALL(map11_lo)) && (!IS_LEFT_WALL(map02_lo))) || ((!IS_UPPER_WALL(map12_lo)) && (!IS_LEFT_WALL(map12_lo))) ) /* NE */

// / E room 
// 15360 IF USR(FNS,P(ONE,TWO))<>ZERO THEN IF USR(FNLF,P(ONE,TWO))<TWO THEN POKE 40378,C128
#define ITEM_12 (!IS_LEFT_WALL(map12_lo))   /* E */


// / SE room 
// 15380 IF USR(FNS,P(TWO,TWO))=ZERO THEN 15400 
// 15385 IF USR(FNUP,P(TWO,TWO))<TWO THEN IF USR(FNLF,P(ONE,TWO))<TWO THEN 15395 
// 15390 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15400 
// 15391 IF USR(FNLF,P(TWO,TWO))>ONE THEN 15400 
// 15395 POKE 40618,C128 
#define ITEM_22 (((!IS_UPPER_WALL(map22_lo)) && (!IS_LEFT_WALL(map12_lo))) || ((!IS_UPPER_WALL(map21_lo)) && (!IS_LEFT_WALL(map22_lo))) ) /* SE */

// / S room 
// 15400 IF USR(FNS,P(TWO,ONE))<>ZERO THEN IF USR(FNUP,P(TWO,ONE))<TWO THEN POKE 40612,C128
#define ITEM_21 (!IS_UPPER_WALL(map21_lo))   /* S */

// / SW room 
// 15420 IF USR(FNS,P(TWO,ZERO))=ZERO THEN 15440 
// 15425 IF USR(FNUP,P(TWO,ZERO))<TWO THEN IF USR(FNLF,P(ONE,ONE))<TWO THEN 15435 
// 15430 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15440 
// 15431 IF USR(FNLF,P(TWO,ONE))>ONE THEN 15440 
// 15435 POKE 40606,C128
#define ITEM_20 (((!IS_UPPER_WALL(map20_lo)) && (!IS_LEFT_WALL(map11_lo))) || ((!IS_UPPER_WALL(map21_lo)) && (!IS_LEFT_WALL(map21_lo))) ) /* SW */

// / W room 
// 15440 IF USR(FNS,P(ONE,ZERO))<>ZERO THEN IF USR(FNLF,P(ONE,ONE))<TWO THEN POKE 40366,C128 
#define ITEM_10 (!IS_LEFT_WALL(map11_lo))   /* W */




// a = higher byte
// returns true if any "meaningful" content is found
// the content itself is kept in hi byte of map
// 
// Malban: the high byte is "restricted" to 0-9
// the original code could contain higher values which would have
// been ignored, I deleted these for easier processing
#define HAS_CONTENT(a) (((((unsigned char) ((a)&0xff))>=1) && (((unsigned char) ((a)&0xff))<=9)) )

// positioning on screen
// a is position in 4x4 "grid"
//#define ROOM_Y(a) ((signed char) ( 90-((signed long)(a)*60)))
//#define ROOM_X(a) ((signed char) (-90+((signed long)(a)*60)))

//#define ROOM_Y(a) ((signed char) ( 90-((signed long)(a)*65)))
//#define ROOM_X(a) ((signed char) (-90+((signed long)(a)*65)))

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//
// following are the conditional defines
// for line of sight testing
// with BASIC comments from Dan Boris
//
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//
//
// / Plot section 0,0 upper wall 
// IF USR(FNUP,P(ONE,ONE))>ONE THEN 15015 
// 15012 IF USR(FNLF,P(ZERO,ONE))>ONE THEN 15015 
// 15013 LC=FOUR:W=USR(FNUP,P(ZERO,ZERO)):GOSUB UPPLT 
#define DRAWUP_00 ((!IS_UPPER_WALL(map11_lo)) && (!IS_LEFT_WALL(map01_lo)))

// / Plot section 0,0 left wall 
// 15015 IF USR(FNUP,P(ONE,ZERO))>ONE THEN 15025 
// 15016 IF USR(FNLF,P(ONE,ONE))>ONE THEN 15025 
// 15020 LC=FOUR:W=USR(FNLF,P(ZERO,ZERO)):GOSUB LFPLT 
#define DRAWLEFT_00 ((!IS_UPPER_WALL(map10_lo)) && (!IS_LEFT_WALL(map11_lo)))

// / Plot section 0,1 upper and left wall and section 0,2 left wall 
// 15025 IF USR(FNUP,P(ONE,ONE))>ONE THEN 15040 
// 15030 LC=TEN:W=USR(FNUP,P(ZERO,ONE)):GOSUB UPPLT
// W=USR(FNLF,P(ZERO,ONE)):GOSUB LFPLT 
#define DRAWUP_01 (!IS_UPPER_WALL(map11_lo)) 
#define DRAWLEFT_01 (!IS_UPPER_WALL(map11_lo))

// 15035 LC=16:W=USR(FNLF,P(ZERO,TWO)):GOSUB LFPLT 
#define DRAWLEFT_02 (1)

// / Plot section 0,2 upper wall 
// 15040 IF USR(FNUP,P(ONE,ONE))>ONE THEN 15045 
// 15041 IF USR(FNLF,P(ZERO,TWO))>ONE THEN 15045 
// 15042 LC=16:W=USR(FNUP,P(ZERO,TWO)):GOSUB UPPLT 
#define DRAWUP_02 ((!IS_UPPER_WALL(map11_lo)) && (!IS_LEFT_WALL(map02_lo)))

// / Plot section 0,3 left wall 
// 15045 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15055 
// 15046 IF USR(FNUP,P(ONE,TWO))>ONE THEN 15055 
// 15050 LC=22:W=USR(FNLF,P(ZERO,THREE)):GOSUB LFPLT 
#define DRAWLEFT_03 ((!IS_UPPER_WALL(map12_lo)) && (!IS_LEFT_WALL(map12_lo)))
#define DRAWUP_03 (0)

// / Plot section 2,0 upper wall, section 1,0 left wall, and 1,0 upper wall 
// 15140 IF USR(FNLF,P(ONE,ONE))>ONE THEN 15155 
// 15145 LC=484:W=USR(FNUP,P(TWO,ZERO)):GOSUB UPPLT 
// 15150 LC=244:W=USR(FNLF,P(ONE,ZERO)):GOSUB LFPLT:
//       W=USR(FNUP,P(ONE,ZERO)):GOSUB UPPLT 
#define DRAWLEFT_10 (!IS_LEFT_WALL(map11_lo))
#define DRAWUP_10 (!IS_LEFT_WALL(map11_lo))

// / Plot section 1,1 upper and left walls 
// 15155 LC=250:W=USR(FNLF,P(ONE,ONE)):GOSUB LFPLT:W=USR(FNUP,P(ONE,ONE)):GOSUB UPPLT 
#define DRAWLEFT_11 (1)
#define DRAWUP_11 (1)

// 15160 LC=TF:W=USR(FNLF,P(ONE,TWO)):GOSUB LFPLT
// 15055 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15080 
// 15060 LC=TF:W=USR(FNUP,P(ONE,TWO)):GOSUB UPPLT
#define DRAWLEFT_12 (1)
#define DRAWUP_12 (!IS_LEFT_WALL(map12_lo))

// / section 1,3 left wall
// 15055 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15080 
//  LC=262:W=USR(FNLF,P(ONE,THREE)):GOSUB LFPLT 
#define DRAWLEFT_13 (!IS_LEFT_WALL(map12_lo))
#define DRAWUP_13 (0)

// / Plot section 2,0 left wall 
// 15125 IF USR(FNLF,P(ONE,ONE))>ONE THEN 15140 
// 15126 IF USR(FNUP,P(TWO,ZERO))>ONE THEN 15140 
// 15130 LC=484:W=USR(FNLF,P(TWO,ZERO)):GOSUB LFPLT 

// / Plot section 2,0 upper wall
// 15140 IF USR(FNLF,P(ONE,ONE))>ONE THEN 15155 
// 15145 LC=484:W=USR(FNUP,P(TWO,ZERO)):GOSUB UPPLT 
#define DRAWLEFT_20 ((!IS_UPPER_WALL(map20_lo)) && (!IS_LEFT_WALL(map11_lo)))
#define DRAWUP_20 (!IS_LEFT_WALL(map11_lo))

// / Plot section 1,2 left and section 2,1 upper wall 
// :LC=490:W=USR(FNUP,P(TWO,ONE)):GOSUB UPPLT
// / Plot section 2,2 left wall, 3,1 upper wall, and 2,1 left wall 
// 15100 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15120 
// LC=490:W=USR(FNLF,P(TWO,ONE)):GOSUB LFPLT 
#define DRAWLEFT_21 (!IS_UPPER_WALL(map21_lo))
#define DRAWUP_21 (1)

// / Plot section 2,2 left wall
// 15100 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15120 
// LC=490:W=USR(FNLF,P(TWO,ONE)):GOSUB LFPLT 

// / Plot section 2,2 upper wall 
// 15055 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15080 
// 15070 LC=496:W=USR(FNUP,P(TWO,TWO)):GOSUB UPPLT 
#define DRAWLEFT_22 (!IS_UPPER_WALL(map21_lo))
#define DRAWUP_22  (!IS_LEFT_WALL(map12_lo))

// / Plot section 2,3 left wall 
// 15085 IF USR(FNLF,P(ONE,TWO))>ONE THEN 15100 
// 15086 IF USR(FNUP,P(TWO,TWO))>ONE THEN 15100 
// 15090 LC=502:W=USR(FNLF,P(TWO,THREE)):GOSUB LFPLT 
#define DRAWLEFT_23 ((!IS_UPPER_WALL(map22_lo)) && (!IS_LEFT_WALL(map12_lo)))
#define DRAWUP_23 (0)

// / Plot section 3,0 upperwall 
// 15120 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15125 
// 15121 IF USR(FNLF,P(TWO,ONE))>ONE THEN 15125 
// 15122 LC=724:W=USR(FNUP,P(THREE,ZERO)):GOSUB UPPLT 
#define DRAWLEFT_30 (0)
#define DRAWUP_30 ((!IS_UPPER_WALL(map21_lo)) && (!IS_LEFT_WALL(map21_lo)))

// / Plot section 3,1 upper wall
// 15100 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15120 
// 15110 LC=730:W=USR(FNUP,P(THREE,ONE)):GOSUB 
#define DRAWLEFT_31 (0)
#define DRAWUP_31 (!IS_UPPER_WALL(map21_lo))

// / Plot section 3,2 upper wall 
// 15080 IF USR(FNUP,P(TWO,ONE))>ONE THEN 15085 
// 15081 IF USR(FNLF,P(TWO,TWO))>ONE THEN 15085 
// 15082 LC=736:W=USR(FNUP,P(THREE,TWO)):GOSUB UPPLT 
#define DRAWLEFT_32 (0)
#define DRAWUP_32 ((!IS_UPPER_WALL(map21_lo)) && (!IS_LEFT_WALL(map22_lo)))
