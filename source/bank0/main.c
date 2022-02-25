#include "../deps.h"

/*


bug: sizes of strings after death

implement tmp save/load

flash
implement save/load flash
implement title song
implement help
*/

//Reset0Ref()


//alll global variables in cartridge?

// !!! ATTENTION
// BANK 0 and BANK 1
// are two TOTALLY seperated "C" programs
//
// but only BANK 1 is initialized
// this means amongst others, that
// EITHER
// ALL global variables must be exactly the same!
//
// OR
// BANK 0 must not have any global variables at all
// unless they OVERWRITE Bank 1 variables!!!
// (also - they will always be uninitialized!)
//
// (or you devise a plan to ensure the RAM does not collide in any other way!)
 
#define __BANK__ 0

#include <vectrex.h>
#include "../BothBanks.i"
#include "../globalsDef.h"

#include "constants.h"
#include "float40.h"

#include "sounds.h"

/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

#define __DO_SFX1   sfx_doframe_intern_1
#define __DO_SFX2   sfx_doframe_intern_2
#define __DO_SFX3   sfx_doframe_intern_3

#define __ass	asm volatile
 
#define asm_ayfx_sound1() __MC6809_jsr_clobber_ayfx(__DO_SFX1, DO_SFX1, d, u, dp)
#define asm_ayfx_sound2() __MC6809_jsr_clobber_ayfx(__DO_SFX2, DO_SFX2, d, u, dp)
#define asm_ayfx_sound3() __MC6809_jsr_clobber_ayfx(__DO_SFX3, DO_SFX3, d, u, dp)
#define __MC6809_jsr_clobber_ayfx(args...)	__mc6809_jsr_clobber_ayfx(args)

#ifdef OMMIT_FRAMEPOINTER

#define __mc6809_jsr_clobber_ayfx(func, name, regs...) { \
	__ass( \
		"jsr " #func "; " #name "\n\t" \
		:: \
		: "s", "memory", "cc","a","b","d","dp","u"); \
}


#else

#define __mc6809_jsr_clobber_ayfx(func, name, regs...) { \
	__ass( \
		"pshs u\n\t" \
		"jsr " #func "; " #name "\n\t" \
		"puls u\n\t" \
		:: \
		: "s", "memory", "cc","a","b","d","dp"); \
}


#endif

extern void subBank1(int);
#define displayMessages()         subBank1(0)
#define displayRound()         subBank1(1)
#define setRandSeedNP()             subBank1(2)

__INLINE void ayfx_sound1() \
  {asm_ayfx_sound1(); } 
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////


#define __INLINE static inline __attribute__((always_inline))

extern void drawTitle();

extern void drawPlayer();
extern void     drawGnoll();
extern void     drawKobold();
extern void     drawSkeleton();
extern void     drawHobbit();
extern void     drawZomnbie();

extern void     drawOrc();
extern void     drawFighter();
extern void     drawMummy();
extern void     drawElf();
extern void     drawGhoul();

extern void     drawDwarf();
extern void     drawTroll();
extern void     drawWraith();
extern void     drawOgre();
extern void     drawMinotaur();

extern void     drawGiant();
extern void     drawSpecter();
extern void     drawVampire();
extern void     drawDemon();
extern void     drawDragon();
extern void     drawFlame();


extern void drawSpell(int spell);
extern void drawDot();

extern void drawInn();

extern void drawHome();
extern void drawStaircase();
extern void drawThrone();
extern void drawCube();
extern void drawBox();


extern void drawTreasure(int t);
extern void drawJewels();
extern void drawGems();
extern void drawGold();
extern void drawSilver();
extern void drawRefuse();
extern void drawFountain();
extern void drawAltar();
extern void drawNone();

extern void drawElevator();

extern void drawUpDoor();
extern void drawUpWall();

extern void drawLeftDoor();
extern void drawLeftWall();
extern void drawLeftDoor_noZero();
extern void drawLeftWall_noZero();

extern void drawUnkown();
extern void drawUnkown_noZero();

void ( *const monsterDrawer[20])(void) =
{
    drawGnoll,
    drawKobold,
    drawSkeleton,
    drawHobbit,
    drawZomnbie,
    
    drawOrc,
    drawFighter,
    drawMummy,
    drawElf,
    drawGhoul,
    
    drawDwarf,
    drawTroll,
    drawWraith,
    drawOgre,
    drawMinotaur,
    
    drawGiant,
    drawSpecter,
    drawVampire,
    drawDemon,
    drawDragon
};


void ( *const environmentDrawer[10])(void) =
{
    drawStaircase, // special draw! Inn
    drawNone, // pit - none
    drawNone, // teleporter - none
    drawStaircase,
    drawAltar  , // altar 

    drawFountain, 
    drawCube,
    drawThrone,
    drawBox, // box
    drawNone // special "?" - none
};

#define MOVETO_START \
asm volatile( \
"LDA      %[A]\n\t" \
"STA      *0x01\n\t" \
"LDA      #0xCE\n\t" \
"STA      *0x0C\n\t" \
"CLRA     \n\t" \
"STA      *0x00\n\t" \
"LDB      %[B]\n\t" \
"INC      *0x00\n\t" \
"STB      *0x01\n\t" \
"STA      *0x05\n\t" \
::     [A] "mi" (ry), [B] "mi" (rx): "memory", "cc", "d");


#define MY_MOVE_TO_A_END \
asm volatile( \
"LDA      #0x40\n\t" \
"BITA     *0x0D\n\t" \
"BEQ      . -2\n\t" \
::: "memory", "cc", "d");

#define MOVETO_START_yx \
asm volatile( \
"LDA      %[A]\n\t" \
"STA      *0x01\n\t" \
"LDA      #0xCE\n\t" \
"STA      *0x0C\n\t" \
"CLRA     \n\t" \
"STA      *0x00\n\t" \
"LDB      %[B]\n\t" \
"INC      *0x00\n\t" \
"STB      *0x01\n\t" \
"STA      *0x05\n\t" \
::     [A] "mi" (_y_), [B] "mi" (_x_): "memory", "cc", "d");


extern void initSong();
extern void playSong();
void titleScreen()
{
    m = 0;
initSong();
titleStart:
    _XC=-0x60;
#define TITLE_TIMER 150
    ltmp=TITLE_TIMER;
    int stage = 0;
    printMessage("ORIGINAL BY DANIEL MICHAEL LAWRENCE");
    printMessage("     VECTREX VERSION BY MALBAN");
    while(1)
    {
        check_buttons();
//        Do_Sound();
 playSong();
        Wait_Recal();
        dp_VIA_t1_cnt_lo  = 0x80;
        Intensity_a(0x4f);
        displayMessages();
        Intensity_a(0x3f);

        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        monsterDrawer[m]();
        __ass("clra\n\tsta *0x0a\n\t"::: "cc","a","b","d");

        dp_VIA_t1_cnt_lo  = 0x80;
//_y_ = 0;
//_x_ = 30;
//MOVETO_START_yx
//MY_MOVE_TO_A_END
 Moveto_d(0,30);

        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        drawPlayer();


        drawTitle();
        if (ltmp-- == 0)
        {
            ltmp = TITLE_TIMER;
            clearMessage();
            stage++;
            m++;
            if (m==20) m=0;
            if (stage == 1)
            {
                printMessage("        PRESS BUTTON TO PLAY");
            }
            if (stage == 2)
            {
                printMessage("           GREETINGS TO:");
                printMessage("     PEER, BRETT AND PHILLIP");
            }

            if (stage == 3)
            {
                printMessage("    TITLE MUSIC BY ROALD STRAUSS");
                printMessage("    INTERNET: INDIEGAMEMUSIC.COM");
                printMessage("             THANKS!!!");
            }
            if (stage == 4)
            {
                goto titleStart;
            }
        }

        if (buttons_pressed())break;
    }
    Vec_Music_Wk_7 = 0x3f;
    Vec_XXX_04 = 0x0; // volume A
    Vec_XXX_03 = 0x0; // volume B
    Vec_Music_Wk_A = 0x0;


// too long now!

    m=-1;
    _XC = 0x70;
}


// floats see:
// https://github.com/jefftranter/6809/tree/master/sbc/mc6839/bin
//
// worst case for one MAP position
// :8 float muls
// :8 float add/sub
// :2 float -> int
// this takes roughly 20000 cycles
//
// coordinates from 1 - 200

uint_16 getMapPos(unsigned char x, unsigned char y, unsigned char z)
{
    // C64 version
    // Q=X*XO+Y*YO+Z*ZO+(X+XO)*(Y+YO)*(Z+ZO)
    // ---
    //    float q = x*XO + y*YO + z*ZO + (x+XO) * (y+YO) * (z+ZO);
    // to "debug"
    // fToStr(fpackX0x, strbuffer);
    // printfs("X0*X: %", strbuffer);
    
    mulIF((unsigned long int)x, (unsigned char *) FP_X0_PACKED, fpackX0x);
    mulIF((unsigned long int)y, (unsigned char *) FP_Y0_PACKED, fpackY0y);
    mulIF((unsigned long int)z, (unsigned char *) FP_Z0_PACKED, fpackZ0z);
    
    addF(fpackX0x, fpackY0y, fpacktmp1);
    addF(fpackZ0z, fpacktmp1, fpacktmp1);
    
    addIF((unsigned long int)x, (unsigned char *) FP_X0_PACKED, fpackX0x);
    addIF((unsigned long int)y, (unsigned char *) FP_Y0_PACKED, fpackY0y);
    addIF((unsigned long int)z, (unsigned char *) FP_Z0_PACKED, fpackZ0z);
    
    mulF(fpackX0x, fpackY0y, fpacktmp2);
    mulF(fpackZ0z, fpacktmp2, fpacktmp2);
    
    addF(fpacktmp1, fpacktmp2, fpackQ);
    // result in fpackQ
    // ---
    
    // 4790 H%=(Q-INT(Q))*W0
    // ---
    //     unsigned long int h= (unsigned long int)  (   ((float) (q-(unsigned long int)(q)))   *W0);
    
    intF(fpackQ, fpacktmp2); // <--- error!
    subF(fpackQ, fpacktmp2, fpacktmp1);
    mulIF((unsigned long int)W0, fpacktmp1, fpacktmp1);
    
    unsigned long int h = (unsigned long int) toInt(fpacktmp1);
    // ---
    
    // IF FNS(H%)>5THENH%=H%ANDTH
    if (((h>>8)&0xff) >5) h = h & 0xff;
    
    // IF INT(H%/TF)>0 THEN H%=(INT((Q*10-INT(Q*10))*15+1)*TF)OR(H%ANDTH)
    if ((h&0xff00) > 0)
    {
        // ---
        // float q2 = q*10.0;
        // Q = Q * 10
        mulIF((unsigned long int)10, fpackQ, fpackQ);
        
        // unsigned long int h2 =  (unsigned long int)  ( ((float)  (q2-(unsigned long int)(q2))) *15 +1);
        intF(fpackQ, fpacktmp2);
        subF(fpackQ, fpacktmp2, fpacktmp1);
        mulIF((unsigned long int)15, fpacktmp1, fpacktmp1);
        unsigned long int h2 = (unsigned long int) toInt(fpacktmp1);
        h2 += 1;
        
        // Malban: following code is taken from the "special" section
        // and placed into map generation
        //
        // / Special items
        // / 1 = Inn
        // / 2 = Pit
        // / 3 = Teleporter
        // / 4 = Stairway
        // / 5 = Alter
        // / 6 = Fountain
        // / 7 = Cube
        // / 8 = Throne
        // / 9 = Box
        
        // * Be sure special item is less then 9 */
        // 6010 Q=FOUR+FIVE:IF I>Q THEN I=I-Q:GOTO 6010
        // 6012 IF J>Q THEN J=J-Q:GOTO 6012
        if (h2 >9) h2 = 0; // Malban - to be save when it comes to content
        
        // * If on level 50, no down stairs
        // 6013 IF CZ=FIVE*TEN AND I=FOUR THEN I=ZERO
        if ((cz == 50) && (h2 == 4)) h2 = 0;
        
        // ---
        h2 = h2*256;
        h = h2 | (h&0xff);
    }
    if ((x == 1) || (x == 201)) h = h | 12;
    if ((y == 1) || (y == 201)) h = h | 3;
    
    return h;
}


// return 1 when new map generated
// return 0 else
//
// uses global var "fillmap" to determine the
// way the map should be redrawn (or not at all)
//
// optimized in the way, that
// if player moves only one field,
// that it does not recalculate the whole map
int generateDisplayMap()
{
    if (cx>200) cx = cx- (unsigned char) 200;
    if (cy>200) cy = cy- (unsigned char) 200;
    if (fillMap != GO_NO_REDRAW)
    {
        realAbove = above = (unsigned int) (getMapPos(cx,cy,cz-1) >> 8);
    }
    
    switch (fillMap)
    {
        case GO_REDRAW:
        {
            for (unsigned char yy=0;yy<4;yy++)
            {
                unsigned int y = yy+cy-1;
                for (unsigned char xx=0;xx<4;xx++)
                {
                    unsigned int x = xx+cx-1;
                    screen[yy][xx] = getMapPos(x,y, cz);
                }
            }
            break;
        }
        case GO_NORTH:
        {
            for (signed char yy=3;yy>=0;yy--)
            {
                unsigned int y = ((unsigned int)yy)+cy-1;
                for (unsigned char xx=0;xx<4;xx++)
                {
                    unsigned int x = xx+cx-1;
                    if (yy == 0)
                    {
                        screen[yy][xx] = getMapPos(x,y, cz);
                    }
                    else
                    {
                        screen[yy][xx] = screen[yy-1][xx];
                    }
                }
            }
            break;
        }
        case GO_SOUTH:
        {
            for (unsigned char yy=0;yy<4;yy++)
            {
                unsigned int y = ((unsigned int)yy)+cy-1;
                for (unsigned char xx=0;xx<4;xx++)
                {
                    unsigned int x = xx+cx-1;
                    if (yy == 3)
                    {
                        screen[yy][xx] = getMapPos(x,y, cz);
                    }
                    else
                    {
                        screen[yy][xx] = screen[yy+1][xx];
                    }
                }
            }
            break;
        }
        case GO_WEST:
        {
            for (unsigned char yy=0;yy<4;yy++)
            {
                unsigned int y = ((unsigned int)yy)+cy-1;
                for (signed char xx=3;xx>=0;xx--)
                {
                    unsigned int x = ((unsigned int)xx)+cx-1;
                    if (xx == 0)
                    {
                        screen[yy][xx] = getMapPos(x,y, cz);
                    }
                    else
                    {
                        screen[yy][xx] = screen[yy][xx-1];
                    }
                }
            }
            break;
        }
        case GO_EAST:
        {
            for (unsigned char yy=0;yy<4;yy++)
            {
                unsigned int y = ((unsigned int)yy)+cy-1;
                for (unsigned char xx=0;xx<4;xx++)
                {
                    unsigned int x = ((unsigned int)xx)+cx-1;
                    if (xx == 3)
                    {
                        screen[yy][xx] = getMapPos(x,y, cz);
                    }
                    else
                    {
                        screen[yy][xx] = screen[yy][xx+1];
                    }
                }
            }
            break;
        } 
        default:
        {
            fillMap = GO_NO_REDRAW;
            return 0;
        }
    }
    fillMap = GO_NO_REDRAW;
    return 1;
}

// content = 0-9 (see below)
// content = 10 - "general" box
// drawUp = 0-3, 0, 1 = nothing, 2 = door, 3 = wall
// drawLeft = 0-3, 0, 1 = nothing, 2 = door, 3 = wall
// destroys tmp
__INLINE void drawRoom(unsigned int content,unsigned int drawUp,unsigned int drawLeft, signed int ry, signed int rx)
{
    //#define ROOM_Y(a) ((signed char) ( 90-((signed long)(a)*65)))
    //#define ROOM_X(a) ((signed char) (-90+((signed long)(a)*65)))
    
    if ((content + drawUp + drawLeft) == 0) return;
    dp_VIA_t1_cnt_lo  = 0x46;
    //    dp_VIA_t1_cnt_lo  = 0x60;
    
    MOVETO_START; // this is a special macro with use of ry, and rx
    dp_VIA_t1_cnt_lo  = 9;
    
    if (drawUp == 2) // exactly 2 is door
    {
        drawUpDoor();
        if (drawLeft == 2) // exactly 2 is door
        drawLeftDoor_noZero();
        else if (drawLeft == 3) // exactly 2 is door
        drawLeftWall_noZero();
        if (content == 10) drawUnkown_noZero();
    }
    else if (drawUp == 3) // exactly 2 is door
    {
        drawUpWall();
        if (drawLeft == 2) // exactly 2 is door
        drawLeftDoor_noZero();
        else if (drawLeft == 3) // exactly 2 is door
        drawLeftWall_noZero();
        if (content == 10) drawUnkown_noZero();
    }
    else
    {
        if (drawLeft == 2) // exactly 2 is door
        {
            drawLeftDoor();
            if (content == 10) drawUnkown_noZero();
        }
        else if (drawLeft == 3) // exactly 2 is door
        {
            drawLeftWall();
            if (content == 10) drawUnkown_noZero();
        }
        else
        {
            if (content == 10) drawUnkown();
        }
    }
    RESET0REF();
}


// with line of sight
//
// this turns out to be pretty optimized
// it "looks" short and it also
// compiles to ok'ish assembler code!
// destroys tmp
void drawMap()
{
    if (fillMap != GO_NO_REDRAW) generateDisplayMap();
    
    // environment is ONE based
    printEnvironment = (int)map11_hi;
    if (above == 4) printEnvironment = 4; // staircase to above beats everything   

    if (inElevator)
    {
        _x_ =0;
        _y_ =elevatorY;
        dp_VIA_t1_cnt_lo  = 0x7f;
        MOVETO_START_yx
        printEnvironment = 0;
        elevatorY++;
        if (elevatorY==120)
        {
            elevatorY = 0;
            inElevator = 0;
        }
        dp_VIA_t1_cnt_lo  = 0x09;
        MY_MOVE_TO_A_END
        drawElevator();

        // this is needed to "transport" the player
        dp_VIA_t1_cnt_lo  = 0x7f;
        MOVETO_START_yx
        dp_VIA_t1_cnt_lo  = 0x09;
        MY_MOVE_TO_A_END
    }

    if (specialAction)
    {
        if (specialAction == SPECIAL_DRAGONBREATH)
        {
            RESET0REF();
            dp_VIA_cntl = 0xce;
            dp_VIA_t1_cnt_lo  = 0x09;
            drawFlame();
            if (sfx_status_1==0) initSoundNo = SOUND_DRAGON;
        }
        else if (specialAction == SPECIAL_BOX)
        {
            if (sfx_status_1==0) initSoundNo = SOUND_BOX;
        }
    }
    if (initSoundNo)
    {
        if (initSoundNo == SOUND_CUBE)
        {
            sfx_pointer_1 = (long unsigned int) (&cube_c64_data);
        }
        else if (initSoundNo == SOUND_TELEPORT)
        {
            sfx_pointer_1 = (long unsigned int) (&teleport_data);
        }
        else if (initSoundNo == SOUND_BOX)
        {
            sfx_pointer_1 = (long unsigned int) (&box_data);
        }
        else if (initSoundNo == SOUND_DRAGON)
        {
            sfx_pointer_1 = (long unsigned int) (&dragon_data);
        }
        else if (initSoundNo == SOUND_DEATH)
        {
            sfx_pointer_1 = (long unsigned int) (&death_data);
        }
        sfx_status_1 = 1;

        initSoundNo = 0;
    }
    if (sfx_status_1 == 1)
    {
         ayfx_sound1();
    }
    if (printCharacter)
    {
        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        drawPlayer();
    }

    if (!printDungeon) return;

    // environment nicht dargestekllt
    if (m != -1)
    {
        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        monsterDrawer[m]();
    }
    else if (printTreasure != -1)
    {
        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        drawTreasure(printTreasure);
    }
    else if (printEnvironment != 0) // never environment + monster
    {
        dp_VIA_t1_cnt_lo  = 0x09;
        dp_VIA_cntl = 0xce;
        environmentDrawer[printEnvironment-1]();
    }
    
    // DISPLAY
    RESET0REF();
    
    // brightness in accordance to light spell!
    
    drawRoom(ANY_ITEM(ITEM(ITEM_00, map00_hi)), GETUP(DRAWUP_00, map00_lo), GETLEFT(DRAWLEFT_00, map00_lo), ROOM_Y(0), ROOM_X(0));
    drawRoom(ANY_ITEM(ITEM(ITEM_01, map01_hi)), GETUP(DRAWUP_01, map01_lo), GETLEFT(DRAWLEFT_01, map01_lo), ROOM_Y(0), ROOM_X(1));
    drawRoom(ANY_ITEM(ITEM(ITEM_02, map02_hi)), GETUP(DRAWUP_02, map02_lo), GETLEFT(DRAWLEFT_02, map02_lo), ROOM_Y(0), ROOM_X(2));
    drawRoom(0, GETUP(DRAWUP_03, map03_lo), GETLEFT(DRAWLEFT_03, map03_lo), ROOM_Y(0), ROOM_X(3));
    
    drawRoom(ANY_ITEM(ITEM(ITEM_10, map10_hi)), GETUP(DRAWUP_10, map10_lo), GETLEFT(DRAWLEFT_10, map10_lo), ROOM_Y(1), ROOM_X(0));
    //    drawRoom(map11_hi, GETUP(DRAWUP_11, map11_lo), GETLEFT(DRAWLEFT_11, map11_lo), ROOM_Y(1), ROOM_X(1));
    drawRoom(0, GETUP(DRAWUP_11, map11_lo), GETLEFT(DRAWLEFT_11, map11_lo), ROOM_Y(1), ROOM_X(1));
    drawRoom(ANY_ITEM(ITEM(ITEM_12, map12_hi)), GETUP(DRAWUP_12, map12_lo), GETLEFT(DRAWLEFT_12, map12_lo), ROOM_Y(1), ROOM_X(2));
    drawRoom(0, GETUP(DRAWUP_13, map13_lo), GETLEFT(DRAWLEFT_13, map13_lo), ROOM_Y(1), ROOM_X(3));
    
    drawRoom(ANY_ITEM(ITEM(ITEM_20, map20_hi)), GETUP(DRAWUP_20, map20_lo), GETLEFT(DRAWLEFT_20, map20_lo), ROOM_Y(2), ROOM_X(0));
    drawRoom(ANY_ITEM(ITEM(ITEM_21, map21_hi)), GETUP(DRAWUP_21, map21_lo), GETLEFT(DRAWLEFT_21, map21_lo), ROOM_Y(2), ROOM_X(1));
    drawRoom(ANY_ITEM(ITEM(ITEM_22, map22_hi)), GETUP(DRAWUP_22, map22_lo), GETLEFT(DRAWLEFT_22, map22_lo), ROOM_Y(2), ROOM_X(2));
    drawRoom(0, GETUP(DRAWUP_23, map23_lo), GETLEFT(DRAWLEFT_23, map23_lo), ROOM_Y(2), ROOM_X(3));
    
    drawRoom(0, GETUP(DRAWUP_30, map30_lo), GETLEFT(DRAWLEFT_30, map30_lo), ROOM_Y(3), ROOM_X(0));
    drawRoom(0, GETUP(DRAWUP_31, map31_lo), GETLEFT(DRAWLEFT_31, map31_lo), ROOM_Y(3), ROOM_X(1));
    drawRoom(0, GETUP(DRAWUP_32, map32_lo), GETLEFT(DRAWLEFT_32, map32_lo), ROOM_Y(3), ROOM_X(2));
    
    _y_  = 90;
    if (lightChange>0) Intensity_a((unsigned int) (lightChange-0x20));
    else
        Intensity_a(0x3f);
    for (int i=0;i<11;i++)
    {
        if (sf[i]>0)
        {
            dp_VIA_t1_cnt_lo  = 0x7f;
            _x_ =-100+(i*20);
            MOVETO_START_yx
            dp_VIA_t1_cnt_lo  = 0x09;
            drawSpell(i);
        }
    }
    
    _x_  = 100;
    for (int i=0; i<19;i++)
    {
        if (stackM[i] != -1)
        {
            dp_VIA_t1_cnt_lo  = 0x7f;
            _y_ =70-i*10;
            MOVETO_START_yx
            dp_VIA_t1_cnt_lo  = 0x09;
            drawDot();
        }
    }
}



void displayInn()
{
    // 6103 IN1=CY*CY:IN2=CX+CY:IN3=CX*THREE+CY*SEV:GOSUB 28100
    // / Generate random Inn description
    // 28100 IN1=INT(IN1-INT(IN1/TEN)*TEN+ONE/TWO)
    // 28100 IN1=INT(IN1*10-INT(IN1)*TEN+5)
    // IN2=INT(IN2-INT(IN2/TEN)*TEN+ONE/TWO)
    // 28102 IN3=INT(IN3-INT(IN3/TEN)*TEN+ONE/TWO)
    
    // Malban
    // this obviosly does NOT
    // generate the same Inn names than
    // original
    // but I don't want to use floats for this!
    // I use seeds here to always generate the same names for the
    // same place!
    saveSeed();
    unsigned long int m1 = cy;
    setRandSeed((unsigned int) (m1*m1));
    
    const char * s1;
    const char * s2;
    const char * s3;
    s1 = in1[RandMax(10)];
    
    setRandSeed((unsigned int) (cx+cy));
    s2 = in2[RandMax(10)];
    
    setRandSeed((unsigned int) (cx*3+cy*7));
    s3 = in3[RandMax(10)];
    restoreSeed();
    
    // old starter inns  :-)
    if ((cx == 25) && (cy==13))
    {
        // start pos - WORTHY MEADE INN :-)
        s1 = in1[5];
        s2 = in2[8];
        s3 = in3[4];
    }
    else if ((cx == 26) && (cy==13))
    {
        // start pos - ROCKY ALE RESTHOUSE :-)
        s1 = in1[8];
        s2 = in2[9];
        s3 = in3[9];
    }
    else if ((cx == 27) && (cy==13))
    {
        // start pos - BOLD ROAD CELLAR :-)
        s1 = in1[1];
        s2 = in2[0];
        s3 = in3[2];
    }

    ex = ex + gd;
    tg = tg + gd;
    gd = 0;
    ch = hp;
    cs = su;

    // * Clear all spell effects
    // 6116 FOR I=ZERO TO 11:SF(I)=ZERO:NEXT I
    // inventory clear
    for (int i=0; i<11;i++)
    {
        sf[i] = 0; // spell effects
    }
    
    // 6110 GOSUB 16600:PRINT "INN";:GOSUB 16500:PRINT "You have found the":PRINT " ";IN1$;" ";IN2$;" ";IN3$
    _fll_s("YOU HAVE % IN THE SAFE", ((unsigned long long int) tg));
    
    int stage = 0;
    int counter = 100;
    int innx=0;
    int direction = 0;
    int b=0;
    clearMessage();
    printMessage("THEY CASH IN YOUR GOLD");
    printMessage( stringBuffer40);
    while (1)
    {
        Wait_Recal();
        Do_Sound();
        dp_VIA_t1_cnt_lo  = 0x80;
        Intensity_a(0x4f);
        check_buttons();
        
        displayMessages();        
        
        //Print_Str_d_org("INN\x80")
        Vec_Text_Height = -3;
        Vec_Text_Width = 0x30;
        
        Print_Str_d_org(0x0,-0x30, s1);
        Print_Str_d_org(-0x10,-0x10, s2);
        Print_Str_d_org(-0x20,0x10, s3);
        
        RESET0REF();
        Moveto_d(0x30,-0x00);
        dp_VIA_t1_cnt_lo  = 0x09;
        drawHome();
        __ass("clra\n\tsta *0x0a\n\t"::: "cc","a","b","d");
        if (direction)
        {
            innx++;
            if (innx==0x40) direction=0;
        }
        else
        {
            innx--;
            if (innx==-0x40) direction=1;
        }
        dp_VIA_t1_cnt_lo  = 0x80;
        Moveto_d(0x70,innx);
        dp_VIA_t1_cnt_lo  = 0x09;

        Intensity_a(0x3f);
        drawInn();
        Intensity_a(0x4f);

        __ass("clra\n\tsta *0x0a\n\t"::: "cc","a","b","d");
        dp_VIA_t1_cnt_lo  = 0x80;

        if (buttons_pressed()) b=1;
        if (stage == 0)
        {
//            Print_Str_d_org(-0x40,-0x6a, "THEY CASH IN YOUR GOLD\x80");
//            Print_Str_d_org(-0x50,-0x6a, stringBuffer40);
        }
        else if (stage == 1)
        {
//            Print_Str_d_org(-0x40,-0x6a, "YOU SPEND THE NIGHT\x80");
//            Print_Str_d_org(-0x50,-0x6a, "YOU FEEL BETTER\x80");
        }
        else if (stage == 2)
        {
//            Print_Str_d_org(-0x40,-0x6a, "<4> TO RETURN TO THE DUNGEON\x80");
//            Print_Str_d_org(-0x50,-0x6a, "<1> TO SAVE CHARACTER\x80");
            counter = -1;
            if (button_1_4_pressed()) 
            {
                return;
            }
            if (button_1_1_pressed()) 
            {
#if FLASH_SUPPORT == 1
            // todo save
#else
                tmp_hp = hp;
                tmp_lv = lv; // player level # word?
            
                tmp_ex = ex; // experience # long long?
                tmp_su = su; // spell units (max)
            
                tmp_cx = cx;
                tmp_cy = cy;
            
                tmp_tg = tg; // saved gold # long long?
                for (int i=0;i<6;i++) tmp_s[i] = s[i];
                for (int i=0;i<10;i++) tmp_inventory[i] = inventory[i];
                for (int i=0;i<4;i++)  tmp_box[i]  = box[i];
                clearMessage();
                printMessage("CHARACTER SAVED (TEMPORARILY)");
#endif
                return;
            }

        }
        if ((b==1) && (!buttons_pressed()))
        {
            b = 0;
            if (stage != 2) counter = 1;
        }
        
        if (counter!=-1) counter--;

        if (counter == 0)
        {
            stage++;
            counter = 100;
            clearMessage();
            if (stage == 1)
            {
                printMessage("YOU SPEND THE NIGHT");
                printMessage("YOU FEEL BETTER");
            }
            else if (stage == 2)
            {
                printMessage("<4> TO RETURN TO THE DUNGEON");
                printMessage("<1> TO SAVE CHARACTER");
            }
        }
    }
}

// unused!
int main(void)
{
}

// ***************************************************************************
// end of file
// ***************************************************************************
