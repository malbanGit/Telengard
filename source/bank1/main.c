#include "../deps.h"

/*
  todo enter name? (demo mode)
*/

/*
  Translating BASIC to "C".
  First I wanted to produce "nice" C-code... but I thru that out of the window.
  I am now content if the code works, and I won't break my back to construct good procedural code.
  
  On several occassions below I use e.g. "goto" statements.
  They work and in the final result (a bin file for the vectrex) the vectrex doesnt't give a shit about
  a "goto" statement.

  By using "goto" I can keep more or less the same code structure as the original source and I 
  am fine with that!

  Apart from the dungeon generation I used Dan Boris documented BASIC as a basis for this port,
  see: http://www.atarihq.com/danb/Telengard.shtml
  
  For the procedural generation I use the C64 code, since I wanted the dungeon to be the
  same as I remembered from my own "old days".
*/

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

#define __BANK__ 1

// calls to bank 0
extern void subBank0(int);
#define titleScreen()         subBank0(0)
//#define initVars()              subBank0(1)
#define generateDisplayMap()  subBank0(2)
#define drawMap()             subBank0(3)

#define loadFlash()             subBank0(4)
//#define checkXP()             subBank0(4)
//#define randomXP()             subBank0(5)

//#define setRandSeedNP()             subBank0(6)
#define displayInn()             subBank0(7)
#define initFlash()             subBank0(8)
#define checkSavedFlash()       subBank0(9)

extern void initVars();
extern void checkXP();
extern void randomXP();
extern void setRandSeedNP();



extern void wr2(); // wait recal own - saves about 600 cycles...
extern void Joy_Digital2(); // dito

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

#include <vectrex.h>
#include <assert.h>


// all variables (from all modules) are declared here
#include "../BothBanks.i"
#include "../globalsDef.h"
#include "constants.h"


#define ATARI_VERSION 1

#ifndef ATARI_VERSION
#define C64_VERSION 1
#endif

#define RETURN_SPANW_MONSTER 30 
#define RETURN_MONSTER_IS_SET 31
#define RETURN_PAUSE 7
#define RETURN_MONSTER_STACK 6
#define RETURN_SPECIAL 5
#define RETURN_TREASURE_FIX 4
#define RETURN_TREASURE 3
#define RETURN_PLAYER_DEAD 2
#define RETURN_NEW_TURN 1
#define RETURN_NOTHING 0


// /////////////////////////////////////////////////////////////////////////////////////////
// all "main" variables, defined in ../globalsDef.h 
// /////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////
// following are removed to mainSupport
// to have a "S" memory optimization compile option
// (e.g. no loop unrolling)
// saves nearly 2000 byte
////////////////////////////////////////////////////////////////
extern int displayStatusPage();
extern void initBox();
extern void monsterOnStack(signed int m, unsigned int ml, signed long int mh);
extern int monsterOnStackAdvance();
extern int monsterOnStackEvadeFurther();
extern void createCharacter();
extern void clearMonsterStack();
extern void clearMap();
extern void displayRound();
extern void pause(unsigned char t);
extern int castSpell(int inCombat);
extern void elevator();

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

// parameter is default return when time out
// if "0" than no timeout!
// return 0 - no button pressed
// return x - button x pressed
int testForButton(int d)
{
    signed int p = 0;
    signed int t = 0;
    localTimer = ACTION_TIME;
    do
    {
        displayRound();
        if (d!=0) localTimer--;

        if (localTimer == 0) break; 

        if (button_1_4_pressed()) {t = 4;p = 1;}
        if (button_1_3_pressed()) {t = 3;p = 1;}
        if (button_1_2_pressed()) {t = 2;p = 1;}
        if (button_1_1_pressed()) {t = 1;p = 1;}

        // invalid - but break the test
        if (Vec_Joy_1_X != 0) {t=5; p = 1;}
        if (Vec_Joy_1_Y != 0) {t=5; p = 1;}

        // inherent debounce
        if ((p) && (Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0) && (!buttons_pressed())) break;
    }
    while (1);

    if (t == 0) return d;
    return t;
}

// parameter is default return when time out
// if "0" than no timeout!
// return 0 - no button pressed
// return x - button x pressed 5 UP, 6 DOWN, 7 LEFT, 8 RIGHT
int testForInput(int d)
{
    int b=0;
    signed int t = 0;
    resetButtons();
    localTimer = ACTION_TIME;
    do
    {
        if (d!=0) localTimer--;

        if (localTimer == 0) {t = 0; break;}
        if (button_1_4_pressed()) {t = 4; b=1;}
        if (button_1_3_pressed()) {t = 3; b=1;}
        if (button_1_2_pressed()) {t = 2; b=1;}
        if (button_1_1_pressed()) {t = 1; b=1;}

        if (Vec_Joy_1_X > 0) {t = 8; b=1;} // RIGHT
        if (Vec_Joy_1_X < 0) {t = 7; b=1;} // LEFT
        if (Vec_Joy_1_Y > 0) {t = 5; b=1;} // UP
        if (Vec_Joy_1_Y < 0) {t = 6; b=1;} // DOWN

        // debounce
        if ((buttons_pressed() == 0) && (Vec_Joy_1_X==0) && (Vec_Joy_1_Y==0))
            if (t != 0) break; 
        displayRound();
    }
    while (1);
    resetButtons();
    if (t == 0) return d;
    return t;
}

// and stringBuffer6 (max)
// uses stringBuffer12 (value)
// and stringBuffer40 (max explain)
// message must be 0x80 terminated!
unsigned long int inputNumber(char * message, unsigned long int min, unsigned long int max)
{
    unsigned long long int ulltmp = (unsigned long long int) min;
    signed int maxDigit = 4;
    char *ascii = stringBuffer12;
    extern char * _ltoa(unsigned long n, char *pointer, int zeroToSpaces);
    unsigned int len = vstrlen(message)>>1;


    _ltoa(min, ascii,0);
    if (*(ascii+0) == ' ') *(ascii+0) = '0';
    if (*(ascii+1) == ' ') *(ascii+1) = '0';
    if (*(ascii+2) == ' ') *(ascii+2) = '0';
    if (*(ascii+3) == ' ') *(ascii+3) = '0';
    if (*(ascii+4) == ' ') *(ascii+4) = '0';
    *(ascii+5) = '\x80';

    if (max<10000) {ascii++; maxDigit = 3;}
    if (max<1000) {ascii++; maxDigit = 2;}
    if (max<100) {ascii++; maxDigit = 1;}
    if (max<10) {ascii++; maxDigit = 0;}

    tmp = 0; // arrow on digit 0
    
    int lastDir = 0;
    do
    {
        Do_Sound();
        Joy_Digital();
        check_buttons();
        Wait_Recal();
        Intensity_5F();
        dp_VIA_t1_cnt_lo  = 0x7f;

        // title
        if (message != 0) 
        {
            Print_Str_d(0x60,-(len*12), message);RESET0REF();
        }

        Print_Str_d(0x20,-0x50, "ENTER NUMBER:\x80"); RESET0REF();
        
        tmp2 = Vec_Text_Width;

        // max/min text
        Vec_Text_Width = 0x3f;
        _fl("( MAX: % )", max); 
        Print_Str_d(0x10,-0x48, stringBuffer40);RESET0REF();
        _fl("( MIN: % )", min); 
        Print_Str_d(0x00,-0x48, stringBuffer40);RESET0REF();

        Vec_Text_Width = 0x7f;
    
        // input field
        Print_Str_d(-0x20,-0x30, ascii);RESET0REF();

        // arrow on current digit
        Print_Str_d(-0x2b,-0x30-35+((maxDigit+1)-tmp )*0x12, " ^ \x80");RESET0REF();
        Vec_Text_Width = tmp2;

        if ((Vec_Joy_1_X > 0) && (!lastDir)) if (tmp>0) tmp--;
        if ((Vec_Joy_1_X < 0) && (!lastDir)) if (tmp<maxDigit) tmp++;

        if ((Vec_Joy_1_Y > 0) && (!lastDir))
            *(ascii+maxDigit-tmp) = *(ascii+maxDigit-tmp)+1;
        if ((Vec_Joy_1_Y < 0) && (!lastDir))
            *(ascii+maxDigit-tmp) = *(ascii+maxDigit-tmp)-1;

        if (*(ascii+maxDigit-tmp)>'9') *(ascii+maxDigit-tmp) = '0';
        if (*(ascii+maxDigit-tmp)<'0') *(ascii+maxDigit-tmp) = '9';

        // tests are done in unsigned long long int!
        ulltmp = ULL(*(ascii+maxDigit)-'0');
        if (max>=10) ulltmp += ULL(*(ascii+(maxDigit-1))-'0') * ULL(10);
        if (max>=100) ulltmp += ULL(*(ascii+(maxDigit-2))-'0') * ULL(100);
        if (max>=1000) ulltmp += ULL(*(ascii+(maxDigit-3))-'0') * ULL(1000);
        if (max>=10000) ulltmp += ULL(*(ascii+(maxDigit-4))-'0') * ULL(10000);

        if (ulltmp > ULL(max) ) 
        {
            _ltoa(max, stringBuffer6,0);
            vstrcpy(stringBuffer12, stringBuffer6);
        }
        if (ulltmp < ULL(min) ) 
        {
            _ltoa(min, stringBuffer6,0);
            vstrcpy(stringBuffer12, stringBuffer6);
        }


        lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));
        if (buttons_pressed()) break;
    }
    while (1);
    return (unsigned long int)ulltmp;
}

// everything except 3 -> does a short pause afterwards to display any left over messages
// returns 4 if a treasure must be given (monster killed)
// returns 3 if absolutely nothing happend! (next is treasure)
// returns 2 on (player) dead
// returns 1 if next turn starts immediately (not movement)
// returns 0 otherwise (next is treasure)
int handleEncounters(int forceMonster)
{
    // undead from altar
    if (forceMonster == RETURN_SPANW_MONSTER)
    {
        // only "m" is set!
        goto monsterSet;
    }
    // if otherwise != 0
    if (forceMonster == RETURN_MONSTER_IS_SET)
    {
        // monster was already pulled from stack
        // m, ml, mh is set!
        goto monsterForced;
    }
    // 30% of the time there is a monster unless Time Stop is in effect
    // 3000 IF RND(ONE)>THREE/TEN OR SF(NIN)>ZERO THEN GOTO TRSR
    if (RandMax(100)>30) return RETURN_TREASURE;

    // note!
    // C64 version does not have this line!
    // in C64 it is checked further below with
    // exception of some monsters!
#ifdef ATARI_VERSION
    if (sf[TIMESTOP]>0) return RETURN_TREASURE;
#endif        

    // No monster 80% of the time if Invisible
    // 3001 IF SF(SIX)>ZERO AND RND(ONE)>ONE/FIVE THEN GOTO TRSR
    if ( (sf[INVISIBLE]>0) && (RandMax(100)>20) ) return RETURN_TREASURE;
    
    // ----
    // Get monster type
    // M=INT(RND(ONE)*C20+ONE): IF SF(SEV)>ZERO AND M<FIVE THEN 3005
    // 3006 IF INT(RND(ONE)*C20+ONE)<=I(FOUR) THEN 20900
monsterAgain:
    m = (signed int)RandMax(20);//+1;
    // Malban: ? fear -> only "bigger" monsters
    // seems counter intuitive...

    if ((sf[FEAR]>0) && (m<5)) goto monsterAgain;

    if ( (unsigned long int)(RandMax(20)+1)  <=  inventory[ELVEN_CLOAK] )
    {
        // 20900 GOSUB 16500:PRINT "You have not been noticed..."
        // 20905 PRINT "<RET> to approach:";:GOSUB GTCHR
        // 20910 GOSUB CLWND:IF C$=CHR$(155) THEN 3007
        // 20915 POKE SC+332,0:GOTO TRSR
        clearMessage();
        printMessage("YOU HAVE NOT BEEN NOTICED...");
        printMessage("<4> TO APPROACH:");
   
        if (testForButton(1) != 4) 
        {
            return RETURN_TREASURE; 
        }
    }
    
monsterSet:
    // ----
    // Calculate monster level
    // 3007 ? "ý";:ML=INT((RND(ONE) (THREE/TWO))*(CZ*TWO+TWO)+ONE):
    // C64: ML=INT((RND(1)^1.5)*(CZ*2+2)+1):GOSUB6340
    // todo: level determination
    ml = RandMax((cz<<1)+2)+ 1;
    ml = ml * RandMax((2)+ 1);
    ml = ml >> 1;
    ml = ml +1;


    // Malban 
    // this is a little bit earlier, that is because we can pull monsters from stack and jump to the following 
    // label. If not here, MH would be overwritten!
    // ----
    // Monster hit points 
    // MH=INT((RND(ONE) (ONE/TWO))*ML*M+ONE):L=ML
    // C64: MH=INT((RND(1)^.5)*ML*M+1):L=ML
    // todo MH
    mh = (signed long) RandMax(ml*(unsigned int)m)+1;

monsterForced:
    
    // ----
    // Determine if monster is undead
    // 20700 UN=ZERO
    // IF M=THREE OR M=FIVE OR M=EIG OR M=TEN OR M=13 OR M=17 OR M=18
    // THEN UN=ONE
    un = 0;


    if ( (m==SKELETON) || (m==ZOMBIE) || (m==MUMMY) || (m==GHOUL) || (m==WRAITH) || (m==SPECTER) || (m==VAMPIRE)) un = 1;
    
    // ----
    //  If Astral Walk is in place and monster is undead, 20% of the time select a new monster type
    // 3008 IF SF(FOUR+FOUR)>ZERO AND UN=ONE AND RND(ONE)>FOUR/FIVE THEN 3005
#ifdef ATARI_VERSION
    if ( (sf[ASTRAL_WALK] >0) && (un == 1) && (RandMax(100)<20) )
        goto monsterAgain;
#else
    // C64: it is not Astral Walk, but light!
    //      890 IFSF(3)>0ANDUN=1ANDRND(1)>.8THEN860
    if ( (sf[LIGHT] >0) && (un == 1) && (RandMax(100)>80) )
        goto monsterAgain;
#endif
    
       
    // ----
    // Handle time stop
    // 3011 IF SF(NIN)>ZERO AND M<16 AND M<>11 THEN GOSUB WTCLR:GOTO TRSR
    // it seems in the C64 sources some monster are resistent to time stop!
#ifndef ATARI_VERSION
    if ((sf[TIMESTOP]>0) && (m<16) && (m<>11)) return RETURN_TREASURE;
#endif

    // ----
    // Display monster name
    // 3010 GOSUB 16500:GOSUB 19700:PRINT "YOU ENCOUNTER A LVL ";ML;" ";M$
    // Get monster name
    // 19700 M$=MO$(M*EIG-SEV,M*EIG)
    clearMessage();
    _fsi2_s("YOU ENCOUNTER A LVL % %", ml, mo[m]);
    printMessage(stringBuffer40);

    
    // ----
    // Display monster level
    // 3012 I=PEEK(SP):POKE SP,18:PRINT
    // 3013 PRINT CR$;"LVL ";ML;" ";M$
    // 3015 POKE SP,I-ONE:PRINT :

    l=ml; 
    tmp = 0; 
    // ----
    // 5% of the time the monster will take one of three random actions 
    // 3017 IF RND(ONE)>0.95 THEN ON RND(ONE)*THREE+ONEGOTO3030,3045,3072
    if (RandMax(100)>94)
    {
        unsigned int t = RandMax(91);
        if (t<30)
        {    
            tmp = 1; // heal
        }
        else if (t<60)
        {   
            tmp = 2; // steal something
        }
        else
        {    
            tmp = 3; // give item
        }
    }
    else
    {
        // If the monster isn’t a elf then it won’t heal you 
        // 3020 IF M<>NIN THEN 3040
        if (m == ELF)
        {
            // Second change at healing based on your charisma 
            // 3025 IF RND(ONE)>0.04*S(FIVE) THEN 3040 
            if ( RandMax(100) > 4*s[CHR] )
            {
                // Monster heals you 
                // 3030 PRINT "The ";M$;" likes your body":PRINT "He heals you to full strength":CH=HP 
                // 3037 GOSUB RSTAT:GOSUB PAUSE:GOSUB 20600:POKE SC+332,ZERO:GOTO TRSR
                tmp = 1; // heal
            }
        }
        // If monster is a hobbit it attempts to steal based on your charisma 
        else if ((m == HOBBIT) && (RandMax(20) > s[CHR] )  )
        {
            tmp = 2; // steal
        }
        // If monster is a dragon determine if he will give you something based on your charisma 
        // 3070 IF M<>C20 OR RND(ONE)*30>S(FIVE) THEN 3090
        else if ((m == DRAGON) && (RandMax(30) < s[CHR] )  )
        {
            tmp = 3; // give
        }
    }

    if (tmp == 1) // heal
    {    
        tmp = 1; // heal
        // Monster heals you 
        // 3030 PRINT "The ";M$;" likes your body":PRINT "He heals you to full strength":CH=HP 
        // 3037 GOSUB RSTAT:GOSUB PAUSE:GOSUB 20600:POKE SC+332,ZERO:GOTO TRSR
        _fs("% LIKES YOUR BODY", mo[m]);
        printMessage(stringBuffer40);
        printMessage("HE HEALS YOU TO FULL STRENGTH");
        pause(SMALL_PAUSE);
        ch = (signed long int) hp;
        return RETURN_TREASURE;
    }
    else if (tmp == 2) // steal something
    {
        // Monster steals something 
        // 3045 PRINT "The ";M$;" makes a quick move":GOSUB PAUSE 

        _fs("% MAKES A QUICK MOVE", mo[m]);
        printMessage(stringBuffer40);
        pause(SMALL_PAUSE);

        tmp = -1;
        // Check if anything to steal 
        // 3050 FOR I=ONE TO TEN:IF I(I)>ZERO THEN 3054 
        // 3052 NEXT I:PRINT "You have nothing he wants to steal!":GOTO 3037 
        for (int i=0; i<10; i++)
        {
            if (inventory[i] != 0)
            {
                tmp = i;
                break;
            }
        }
        if (tmp==-1)
        {
            printMessage("YOU HAVE NOTHING HE WANTS");
            printMessage("TO STEAL!");
            pause(SMALL_PAUSE);
            return RETURN_TREASURE;
        }
        // Randomly pick an item to steal 
        // 3054 I=INT(RND(ONE)*TEN+ONE):IF I(I)<ONE THEN 3054 
        tmp=-1;
        do 
        {
            tmp = (signed int) RandMax(10);
            if (inventory[tmp] == 0) tmp = -1;
        }
        while (tmp == -1);
        // Get item name 
        // 3055 MI=I:GOSUB 28200 

        // Item is stolen 
        // 3056 PRINT "He steals ";:IF I<EIG THEN PRINT "your ";MI$:I(I)=ZERO:GOTO 3037 
        // 3060 PRINT "a ";MI$:I(I)=I(I)-ONE:GOTO 3037
        if (tmp <SCROLL_OF_RESCUE)
        {
            _fs("HE STEALS YOUR %",items[tmp]);
            printMessage(stringBuffer40);
            inventory[tmp]=0;
        }
        else
        {
            _fs("HE STEALS A %",items[tmp]);
            printMessage(stringBuffer40);
            inventory[tmp] -=1;
        }
        tmp = 0;
        pause(SMALL_PAUSE);
        return RETURN_TREASURE;
    }
    else if (tmp == 3) // give
    {
        // Randomly pick one of the first 7 items and check if it’s level is greater then the monsters 
        // 3072 I=INT(RND(ONE)*SEV+ONE):IF I(I)>=ML THEN 3090 
        tmp = (signed int) RandMax(7);
        if (inventory[tmp] < (unsigned long int)ml)
        {
            // Increase the level of the item 
            // 3074 C=ML-I(I):C=INT(RND(ONE)*C+ONE):I(I)=I(I)+C 
            unsigned long int c = (unsigned long int)ml - inventory[tmp];
            c = (unsigned long int) ( RandMax((unsigned int)c) + (unsigned int)1);
            inventory[tmp] = inventory[tmp]+c;

            // 3076 PRINT "The ";M$;" likes you!":GOSUB WTCLR 
            // 3077 MI=I:GOSUB 28200 
            _fs("THE % LIKES YOU!", mo[m]);
            printMessage(stringBuffer40);

            // 3078 PRINT "He gives you a ";MI$;" +";I(I):GOSUB RSTAT:GOSUB WTCLR 
            // 3080 GOSUB 20600:GOTO TRSR
            _fsl_s("HE GIVES YOU A %+%", items[tmp], inventory[tmp]);
            printMessage(stringBuffer40);
            tmp = 0;
            pause(SMALL_PAUSE);
            return RETURN_TREASURE;
        }
    }

    // ----
    // If you dexterity is high enough you might get an instant kill / HIT 
    // 3090 IF RND(ONE)>ONE/TWO+S(FOUR)*0.02 THEN 3300
    // actually this is:
    // if your dexterity is to low, the monster gets the first attack!!!
    if (RandMax(100) > 50+ s[DEX]*2) goto label3300;

    pause(SMALL_PAUSE);
fightStart:
    clearMessage();
    // ----
    // Ask player what to do 
    // 3100 PRINT "Fight, Cast, or Evade:";:GOSUB GTCHR 
    // 3102 IF C$="&" THEN PRINT "WAIT"
    printMessage("FIGHT(4), CAST(3), EVADE(1)");
    localTimer = ACTION_TIME;
    tmp2 = 0;
    while(1)
    {
        displayRound(); 
        if (localTimer == 0)
        {
            break; // no action taken
        }
        if (Vec_Joy_1_X>0) tmp2 = 5;
        if (Vec_Joy_1_X<0) tmp2 = 5;
        if (Vec_Joy_1_Y>0) tmp2 = 5;
        if (Vec_Joy_1_Y<0) tmp2 = 5;

        if (button_1_4_pressed()) tmp2 = 4;
        if (button_1_3_pressed()) tmp2 = 3;
        if (button_1_2_pressed()) tmp2 = 2;
        if (button_1_1_pressed()) tmp2 = 1;


        if ((!buttons_pressed()) && (tmp2)) 
            break;

        localTimer--;
    }
    // init fight vars
    db = 1;
    pa = 0;
    dr = 0;
    mb = 0;
    switch (tmp2)
    {
        case 0: // no input
        {
            clearMessage();
            printMessage("WAIT");
            goto fightStart;
        }
        case 1: // evade
        {
            // Malban - wonders...
            // Note!
            // Evade does NOT respect ASTRAL WALK!

            // 3700 Q=INT(RND(ONE)*18+ONE):PRINT "EVADE" 
            clearMessage();
            printMessage("EVADE");
            tmp = (signed int)RandMax(18) + 1;

            //  Determine success based on dexerity and Elven Boots item 
            // 3705 IF Q<S(FOUR)+I(FIVE) THEN 3710 
            if ((unsigned int)tmp >= s[DEX])
            {
cantEvade:
                //  Evade failed 
                // 3707 PRINT "You're rooted to the spot":GOSUB WTCLR:GOSUB 16500:GOTO 3300 
                printMessage("YOU'RE ROOTED TO THE SPOT");
                pause(50);
                goto label3300;
            }
            else
            {
                //  Randomly pick an evade direction 
                // 3710 GOTO 3720+TEN*INT(RND(ONE)*FOUR) 
doEvade:
                tmp = (signed int)RandMax(4);

                // cases are all fallthru!
                switch (tmp)
                {
                    case 0: // north
                    {
                        //  Try to evade north 
                        // 3720 C=ONE:IF USR(FNUP,LC)<THREE THEN 3795 
                        if (!CAN_GO_NORTH)
                        {
                            fillMap=GO_NORTH;
                            printMessage("NORTH");
                            cy -=1;
evadeOut:                            
                            //  Move in evade direction 
                            // 3795 GOSUB 20600:GOSUB CLWND:GOTO 8120 
                            monsterOnStack((signed int)m, ml, mh);
                            
                            return RETURN_NEW_TURN;
                        }
                    }
                    case 1: // south
                    {
                        //  Try to evade south 
                        // 3730 C=TWO:IF USR(FNUP,P(TWO,ONE))<THREE THEN 3795 
                        if (!CAN_GO_SOUTH)
                        {
                            fillMap=GO_SOUTH;
                            printMessage("SOUTH");
                            cy +=1;
                            goto evadeOut;
                        }
                    }
                    case 2: // west
                    {
                        //  Try to evade west 
                        // 3740 C=THREE:IF USR(FNLF,LC)<THREE THEN 3795 
                        if (!CAN_GO_WEST)
                        {
                            fillMap=GO_WEST;
                            printMessage("WEST");
                            cx -=1;
                            goto evadeOut;
                        }
                    }
                    case 3: // east
                    {
                        //  Try to evade east 
                        // 3750 C=FOUR:IF USR(FNLF,P(ONE,TWO))<THREE THEN 3795
                        if (!CAN_GO_EAST)
                        {
                            fillMap=GO_EAST;
                            printMessage("EAST");
                            cx +=1;
                            goto evadeOut;
                        }
                    }
                }
                

                //  Try to evade north again 
                // 3760 C=ONE:IF USR(FNUP,LC)<THREE THEN 3795 
                if (!CAN_GO_NORTH)
                {
                    fillMap=GO_NORTH;
                    printMessage("NORTH");
                    cy -=1;
                    goto evadeOut;
                }
                //  Try to evade south again 
                // 3770 C=TWO:IF USR(FNUP,P(TWO,ONE))<THREE THEN 3795 
                if (!CAN_GO_SOUTH)
                {
                    fillMap=GO_SOUTH;
                    printMessage("SOUTH");
                    cy +=1;
                    goto evadeOut;
                }
                //  Try to evade west again 
                // 3780 C=THREE:IF USR(FNLF,LC)<THREE THEN 3795 
                if (!CAN_GO_WEST)
                {
                    fillMap=GO_WEST;
                    printMessage("WEST");
                    cx -=1;
                    goto evadeOut;
                }
                goto cantEvade;
            }
        }
        case 2: // unkown input
        {
            // Malban
            // "originally" staff can I think only be used in "movement" phase
            // I think this should not be allowed in fight!

            clearMessage();
            if (displayStatusPage())
            {
                return RETURN_NEW_TURN;
            }
//            _fs("THE % IS NOT AMUSED", mo[m]);
//            printMessage(stringBuffer40);
            goto fightStart;
        }
        case 3: // cast
        {
            tmp2 = castSpell(1);
            if (tmp2 == 1) goto label3300;
            else if (tmp2 == 2) goto fightStart;
            else if (tmp2 == 3) goto label3220;
            else if (tmp2 == 4) goto doEvade;
            else if (tmp2 == 5) goto label3223;
            else if (tmp2 == 6) return RETURN_TREASURE; // treasure 
            else if (tmp2 == 7) return RETURN_PLAYER_DEAD; // player is dead (spell backfired)
            break;
        }
        case 4: // fight
        {
            // Fight 
            // (RND(0-20) + Level + Armor level + strenght)/2 + (4 if using strenght potion) >= 10 then hit
            // 3200 I=INT(RND(ONE)*C20)+LV+I(ONE)+S(ZERO)/TWO:PRINT "Fight" 
            // 3202 IF SF(ONE)>ZERO THEN I=I+FOUR 
            clearMessage();
            printMessage("FIGHT");
            ltmp = RandMax(20) + lv + (signed long int)inventory[SWORD] + s[STR]/2;
            if (sf[STRENGTH]>0) ltmp = ltmp +4;

            // 3204 IF I<TEN THEN PRINT "You missed...":GOTO 3300 
            if (ltmp <10)
            {
                printMessage("YOU MISSED...");
            }
            else
            {
                // hit
                // RND(0-8) + (RND * Level * 2 + Sword + Sword Level + 1) + (5 if using strength potion) = damage 
                // 3205 I=INT(RND(ONE)*EIG+RND(ONE)*LV*TWO+I(ONE)+ONE):IF SF(ONE)>ZERO THEN 
                // I=I+FIVE 
                ltmp = (signed long int) RandMax(8);
                ltmp += (signed long int) RandMax(lv*2) + (signed long int)inventory[SWORD] + 1;
                if (sf[STRENGTH]>0) ltmp = ltmp +5;
                // 3207 PRINT "You do ";I;" points damage" 
                _fi_s("YOU DO % POINTS DAMAGE", (unsigned int) ltmp);
                printMessage(stringBuffer40);

                //  Return monster hit points and see if still alive
                // 3210 MH=MH-I:IF MH>ZERO THEN 3300 
                mh = mh - (unsigned int)ltmp;
                if (mh <0)
                {
label3220:
                    //  Monster is dead 
                    // 3220 PRINT "It died..."; 
                    // 3223 POKE SC+332,ZERO: 
                    printMessage("IT DIED...");
label3223:

                    //  Calculate experience 
                    // E=ML*M*TEN:EX=EX+E:GOSUB PAUSE 
                    pause(SMALL_PAUSE);
                    clearMessage();
                    ltmp = ml*(unsigned int)(m+1)*10;
                    ex = ex + (unsigned long int) ltmp;

                    // 3225 GOSUB 20600:PRINT "You gain ";E;" experience points":GOSUB RSTAT:GOSUB 18000 
                    // 3230 GOSUB WTCLR:GOTO 3900 
                    _fl_s("YOU GAIN % EXPERIENCE POINTS", (unsigned long int) ltmp);
                    printMessage(stringBuffer40);
                    checkXP();
                    pause(SMALL_PAUSE);

                    //  When a monster has been killed it will have treasure 50% of the time 
                    // 3900 IF RND(ONE)>ONE/TWO THEN 4002 
                    tmp = (signed int) RandMax(100);
                    if (tmp>50) 
                        return RETURN_TREASURE_FIX;
                    return  RETURN_TREASURE;
                }
            }
label3300:
            db = 1;
            pa = 0;
            dr = 0;
            mb = 0;
            goto label3330;
label3305:
            // monster fights back!
            //  Initialize monster bonuses 
            // 3300 DB=ONE:PA=ZERO:DR=ZERO:MB=ZERO:GOTO 3330 
            // done above!

            //  RND(0-20) + Monster Level – player armor level – player shield level + monster bonus 
            // 3305 I=INT(RND(ONE)*C20)+ML-I(TWO)-I(THREE)+MB 
            ltmp = (signed long int)(RandMax(20) + ml -inventory[ARMOR] - inventory[SHIELD] + mb);

            //  If SPECTER, VAMPIRE, or DEMON and protection from evil spell you get a bonus of -6 to hit 
            // 3306 IF M>16 AND M<C20 AND SF(FOUR)>ZERO THEN I=I-FOUR-TWO 
            if ((m>=SPECTER) && (m<=VAMPIRE))
            {
                if (sf[PROTECTION_FROM_EVIL] > 0) ltmp = ltmp -6;
            }


            //  Check for hit 
            // 3310 IF I<TEN THEN PRINT "It missed...";:GOSUB WTCLR:GOTO 3100 
            if (ltmp < 10)
            {
                printMessage("IT MISSED...");
                goto fightStart;
            }
            
            //  Damage = (RND(0-8) + RND() * Monster level * 2 + 0) * Monster Bonus 
            // 3315 I=INT((RND(ONE)*EIG+RND(ONE)*ML*TWO+ONE)*DB):PRINT "It does ";I;" points damage"; 
            ltmp = (signed long int )  (RandMax(8) + RandMax(ml*2) +1 ) *db;
            _fl_s("IT DOES % POINTS DAMAGE", (unsigned int)ltmp);
            printMessage(stringBuffer40);
            
            //  Reduce player hit points and check for death 
            // 3320 CH=CH-I:GOSUB RHITS:IF CH<ONE THEN 9000 
label3320:
            ch = ch - ltmp;
            if (ch <1)
            {
                return RETURN_PLAYER_DEAD;
            }
            // 3321 GOSUB PAUSE: 
            pause(SMALL_PAUSE);
            
            //  Check for special effects 
            // IF RND(ONE)>DR OR SF(FOUR)>ZERO THEN 3326 
            if ((RandMax(10) < dr) && (sf[PROTECTION_FROM_EVIL]) !=0)
            {
                //  Drain level 
                // 3322 GOSUB CLWND:PRINT "It drains a level!!!":EX=INT(EX/TWO) 
                // 3323 IF LV=ONE THEN EX=-ONE 
                // 3324 GOSUB 18000:GOSUB WTCLR:GOTO 3100 
                printMessage("IT DRAINS A LEVEL!!!");
                ex = ex >>1;
// TODO ?               if (lv == 1) ex = -1;
                checkXP();
                if (ch==0)
                {
                    // dead
                    return RETURN_PLAYER_DEAD;
                }
                pause(SMALL_PAUSE);
            }
            
            //  Paralyzed, monster gets another attack 
            // 3326 IF RND(ONE)>PA THEN GOSUB CLWND:GOTO 3100 
            // 3327 GOSUB CLWND:PRINT "You're paralized!!!!";:GOSUB WTCLR:GOTO 3300 
            if (RandMax(10) >= pa) goto fightStart;
            printMessage("YOU ARE PARALIZED!!!");
            goto label3300;

label3330:
            // / Wraith drains level 1/10 of the time 
            // 3330 IF M=13 THEN DR=ONE/TEN:GOTO 3305 
            if (m == WRAITH) {dr = 1; goto label3305;}

            //  Specter drains level 1/5 of the time 
            // 3335 IF M=17 THEN DR=TWO/TEN:GOTO 3305 
            if (m == SPECTER) {dr = 2; goto label3305;}

            //  Vampire drains level and paralize 3/10 of the time 
            // 3340 IF M=18 THEN DR=THREE/TEN:PA=DR:GOTO 3305 
            if (m == VAMPIRE) {pa = dr = 3; goto label3305;}

            //  Ghoul paralizes ½ of the time 
            // 3345 IF M=TEN THEN PA=ONE/TWO:GOTO 3305 
            if (m == GHOUL) {pa = 5; goto label3305;}

            //  Demon attack 
            // 3350 IF M<>19 THEN 3365 
            // 3352 GOSUB WTCLR 
            // 3355 IF RND(ONE)>THREE/FIVE THEN PRINT "It uses it's 
            // SWORD!!!":MB=FOUR:DB=THREE:GOTO 3305 
            // 3360 PRINT "It uses it's WHIP!!":MB=TWO:DB=TWO:GOTO 3305 
            if (m == DEMON)
            {
                if (RandMax(10)>6)
                {
                    printMessage("IT USES IT'S SWORD!!!");
                    mb = 4;
                    db = 3;
                }
                else
                {
                    printMessage("IT USES IT'S WHIP!!");
                    mb = 2;
                    db = 2;
                }
                pause(SMALL_PAUSE);
                clearMessage();
                goto label3305;
            }

            //  Dragon attack 
            // 3365 IF M<>C20 THEN 3305 
            // 3370 IF RND(ONE)>THREE/TEN THEN MB=FIVE:DB=TWO:GOTO 3305 
            // 3375 PRINT "The DRAGON breaths FIRE!!!";:GOSUB WTCLR 
            // 3378 I=INT(RND(ONE)*C20*ML+ONE):IF RND(ONE)<S(THREE)/C20 THEN 3382 
            // 3380 PRINT "You partially dodge it":I=INT((I+ONE)/TWO) 
            // 3382 PRINT "You burn for ";I;" points damage":GOTO 3320 
            if (m == DRAGON)
            {
                if (RandMax(10)>3)
                {
                    mb = 5;
                    db = 2;
                }
                else
                {
                    printMessage("THE DRAGON BREATHS FIRE!!!");

                    specialAction = SPECIAL_DRAGONBREATH;
                    
                    pause(SMALL_PAUSE);
                    specialAction = 0;

                    clearMessage();
                    ltmp = RandMax(20)*ml+1;
// Malban - wonders...
// the original has it, the higher the constitiion,
// the worse is dodging
// I guess it should be vice versa
// why is it constitution anyway, shouldn't it be DEX
// TODO -> (done) look up in C64 code (same there...)
//                    if (RandMax(20) >=s[CON])
                    if (RandMax(20) <s[CON])
                    {
                        ltmp = (ltmp>>1)+1;
                        printMessage("YOU PARTIALLY DODGE IT");
                    }
                    _fl_s("YOU BURN FOR % POINTS DAMAGE", (unsigned long int) ltmp);
                    printMessage(stringBuffer40);
                    goto label3320;
                }
            }
            goto label3305;
        }
        default: // unkown input
        {
            clearMessage();
            _fs("THE % IS NOT AMUSED", mo[m]);
            printMessage(stringBuffer40);
            goto fightStart;
        }
    }
}

// return !=0 when moved
// return 0 else
int handleMovement()
{
    if ((lastX == 0) && (lastY == 0))
    {
        lastX = Vec_Joy_1_X;
        lastY = Vec_Joy_1_Y;
        return 0;
    }
    if ((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0))
    {
        clearMessage();
        //8118 IF SF(11)>ZERO AND C<SIX THEN PRINT "You're confused ->";:C=INT(RND(ONE)*FIVE+ONE) 
        if ((lastX != 0) || (lastY != 0) )
        {
            if (sf[DRUNK]>0)
            {
                lastX = 0;
                lastY = 0;
                tmp = (signed int)RandMax(4);
                if (tmp ==0) lastX=1;
                else if (tmp ==1) lastX=-1;
                else if (tmp ==2) lastY=1;
                else if (tmp ==3) lastY=-1;
                printMessage("DRUNK! ...");
            }
        }

        // MOVEMENT
        if (lastX>0) 
        {
            if ((CAN_GO_EAST) && (!sf[ASTRAL_WALK]))
            {
                printMessage("NO");
            }
            else
            {
                cx +=1;fillMap=GO_EAST;printMessage("EAST");
            }
        }
        else if (lastX<0) 
        {
            if ((CAN_GO_WEST) && (!sf[ASTRAL_WALK]))
            {
                printMessage("NO");
            }
            else
            {
                cx -=1;fillMap=GO_WEST;printMessage("WEST");
            }
        }
        else if (lastY>0) 
        {
            if ((CAN_GO_NORTH) && (!sf[ASTRAL_WALK]))
            {
                printMessage("NO");
            }
            else
            {
                cy -=1;fillMap=GO_NORTH;printMessage("NORTH");
            }
        }
        else if (lastY<0) 
        {
            if ((CAN_GO_SOUTH) && (!sf[ASTRAL_WALK]))
            {
                printMessage("NO");
            }
            else
            {
                cy +=1;fillMap=GO_SOUTH; printMessage("SOUTH");
            }
        }
        lastX = 0;
        lastY = 0;
    }
    return fillMap;
}


int handleTreasure(int fix)
{
    unsigned int tno;
    unsigned long int ilv;
    unsigned int t,c;
    clearMessage();
    if (!fix)
    {
        // * 1/5 of the time there is treasure 
        // 4000 IF RND(ONE)>ONE/FIVE THEN GOTO SPEC 
        fix = RandMax(50) > 40;
    }
    if (!fix) return RETURN_SPECIAL;

    // * 15% of the time there is a trap 
    // 4002 T=ZERO:IF RND(ONE)>0.85 THEN T=ONE 
    // 4005 POKE SC+332,FOUR:GOSUB 16500:C=ZERO:
    t = 0; // trap indicator
    if (RandMax(100)<15) t = 1;
    c = 0;

    // * Skip to treasure test 30% of the time 
    // IF RND(ONE)>SEV/TEN THEN 4100 
    if (RandMax(100)>30)
    {
        // smallish treasure

        // * Handle normal treasure 
        // * Display treasure name 
        // 4007 PRINT "You see some ";:I=INT(RND(ONE)*FIVE) 
        // 4010 Q=FIVE+ONE:PRINT TRS$(I*Q+ONE,I*Q+Q):PRINT "<RET> to pick up:"; 

        tno = RandMax(5);
        printTreasure=(signed int)tno;
        _fs("YOU SEE SOME % <4> TO PICK UP", treasure[tno]);
        printMessage(stringBuffer40);

        // / You detect a trap if detect trap spell is in effect or 10% of the time otherwise 
        // 4011 IF T=ONE THEN IF SF(TWO)>ZERO AND RND(ONE)>ONE/TEN THEN PRINT :PRINT "You detect TRAPS!"; 
        // Malban: wow detect traps is really shitty!
        if ((sf[DETECT_TRAPS]>0) && (t) && (RandMax(10) == 0))
            printMessage("YOU DETECT TRAPS!");
        if (testForButton(1) != 4) 
        {
            // not pressed
            clearMessage();
            printMessage("YOU LEAVE IT");
            pause(SMALL_PAUSE);
            return RETURN_SPECIAL;
        }
        // * Player picks up treasure, check if there is no trap 
        // 4020 PRINT "Snarf it":IF T=ZERO THEN 4040 
        clearMessage();
        printMessage("SNARF IT");
        if (t)
        {
            // * Handle trap damage 
            // 4025 Q=INT(RND(ONE)*THREE*L+ONE):GOSUB CLWND 
            // 4030 PRINT "It's TRAPPED!":PRINT "You suffer ";Q;" points damage" 
            // 4035 CH=CH-Q:GOSUB RHITS:IF CH<ONE THEN GOSUB PAUSE:GOTO 9000 
            utmp = (unsigned int) RandMax(l*3)+1;
            printMessage("IT'S TRAPPED!");
            _fi_s("YOU SUFFER % POINTS DAMAGE", (unsigned int) utmp);
            printMessage(stringBuffer40);
            ch = ch - ((unsigned int) utmp);
            if (ch<1)
            {
                pause(SMALL_PAUSE);
                return RETURN_PLAYER_DEAD;
            }
        }

        // * Get gold from treasure 
        // 4040 J=INT(RND(ONE)*I*L*C20*TEN+ONE):PRINT "It's worth ";J;" gold" 
        // 4045 GD=GD+J:IF I=ZERO AND RND(ONE)>FOUR/FIVE THEN GOSUB RSTAT:GOSUB CLWND:GOTO 4200 
        // 4050 GOSUB RSTAT:GOTO 4900 
        lltmp = (signed long long int) ((unsigned long long int) RandMax(200));
        lltmp = lltmp*l;
        lltmp = lltmp*tno;
        lltmp++;
        gd = gd + ULL(lltmp);
        _fll_s("IT'S WORTH % GOLD", ((unsigned long long int) lltmp));
        printMessage(stringBuffer40);
        if (RandMax(50)<10) 
        {
            pause(SMALL_PAUSE);
            goto itemFound;
        }
        else
        {
            pause(SMALL_PAUSE);
            return RETURN_MONSTER_STACK;
        }

    }

    // * Skip to items 50% of the time 
    // 4100 IF RND(ONE)>ONE/TWO THEN 4200 
    if (RandMax(100)<50)
    {
        // / Handle treasure chest 
        // 4105 PRINT "You have found a Treasure Chest!!" 
        // 4110 PRINT "<RET> to open it:"; 

        printTreasure=5;
        printMessage("YOU HAVE FOUND A TREASURE CHEST!!");
        printMessage("<4> TO OPEN IT:");


        // * You detect a trap if detect trap spell is in effect or 10% of the time otherwise 
        // 4115 IF T=ONE THEN IF SF(TWO)>ZERO AND RND(ONE)>ONE/TEN THEN PRINT :PRINT "You detect TRAPS!"; 
        // Malban: wow detect traps is really shitty!
        if ((sf[DETECT_TRAPS]>0) && (t) && (RandMax(10) == 0))
            printMessage("YOU DETECT TRAPS!");

        // * Get player input and check for Return key 
        // 4120 GOSUB GTCHR:IF C$<>RT$ THEN PRINT "Ignore it":GOSUB WTCLR:GOTO SPEC 
        if (testForButton(1) != 4) 
        {
            // not pressed
            clearMessage();
            printMessage("IGNORE IT");
            pause(SMALL_PAUSE);
            return RETURN_SPECIAL;
        }

        // * Open chest 
        // 4125 PRINT "Open it":IF T=ZERO THEN 4140 
        clearMessage();
        printMessage("OPEN IT");
        if (t)
        {
            // * Handle chest trap 
            // 4130 GOSUB WTCLR:PRINT "Chest EXPLODES!!":I=INT(RND(ONE)*TEN*CZ+ONE):CH=CH-I 
            // 4135 PRINT "You suffer ";I;" points damage":GOSUB RHITS:IF CH<ONE THEN 9000 
            ltmp = ((signed long int)RandMax(10))*((signed long int)cz)+1;
            printMessage("CHEST EXPLODES!!");
            _fl_s("YOU SUFFER % POINTS DAMAGE", (unsigned long) ltmp);
            printMessage(stringBuffer40);
            ch = ch - ((signed long int) ltmp);
            if (ch<1)
            {
                pause(SMALL_PAUSE);
                return RETURN_PLAYER_DEAD;
            }
        }

        // * Calculate amount of gold in chest 
        // 4140 GOSUB WTCLR:I=INT(RND(ONE)*1000*L TWO+ONE) 

        // / 10% of the time there is nothing inside 
        // 4145 IF RND(ONE)>NIN/TEN THEN PRINT "Inside, there is only cobwebs...":GOTO 4900 
        if (RandMax(10)==0)
        {
            printMessage("INSIDE, THERE IS ONLY COBWEBS...");
            pause(SMALL_PAUSE);
            return RETURN_MONSTER_STACK;
        }        
        else
        {
            // * Get gold 
            // 4150 PRINT "Inside is ";I;" gold pieces!":GD=GD+I:GOSUB RSTAT:IF RND(ONE)>ONE/TWO THEN 4900 
            // 4155 C=ONE:GOSUB WTCLR
            lltmp = (signed long long int) ((unsigned long long int) RandMax(100));
            lltmp = lltmp*l;
            lltmp = lltmp*10;
            lltmp++;
            gd = gd + ULL(lltmp);
            _fll_s("IT'S WORTH % GOLD", ((unsigned long long int) lltmp));
            printMessage(stringBuffer40);

            pause(SMALL_PAUSE);
            if (RandMax(100)<50)
            {
                return RETURN_MONSTER_STACK;
            }
            c = 1;
        }
    }
itemFound:
    clearMessage();
    // * Found an item 
    // 4200 I=INT(RND(ONE)*TEN+ONE):PRINT "You see a ";:MI=I:GOSUB 28200 
    // 4210 PRINT MI$;" +";J 
    tno = RandMax(10);
    // * Calculate item level 
    // 4205 J=INT(RND(ONE) (ONE/TWO)*(L+ONE)+ONE):IF I>SEV THEN PRINT MI$:GOTO 4215 
    ilv = (unsigned long int) RandMax((l+1)>>2) + (unsigned long int) RandMax((l+1)>>2) + 1;
        
    // Malban:
    // added "not +" display
    if (tno<SCROLL_OF_RESCUE) 
        _fsl_s("YOU SEE A % +%", items[tno], ilv);
    else
        _fs("YOU SEE A %", items[tno]);

    printMessage(stringBuffer40);

    // * Prompt player to pick it up 
    // 4215 PRINT "<RET> to pick it up:";:GOSUB GTCHR:IF C$=RT$ THEN 4225 
    // 4220 PRINT "Leave it":GOTO 4240 
    printMessage("<4> TO PICK IT UP:");
    if (testForButton(1) != 4) 
    {
        // not pressed
        printMessage("LEAVE IT");
        pause(SMALL_PAUSE);
        if ((c==1) && (RandMax(100)>50)) 
        {
            goto itemFound;
        }
        return RETURN_SPECIAL;
    }

    // * Check if it is cursed 
    // 4225 IF I*T<>ONE THEN 4235 
    if ((t) && (tno!=0))
    {
        // * Handle curse damage 
        // 4230 PRINT :PRINT "It is CURSED!!":I=INT(RND(ONE)*I*FIVE+ONE) 
        // 4232 PRINT "You suffer ";I;" damage points";:CH=CH-I:GOSUB RSTAT:IF CH<ONE THEN 9000 
        // 4234 GOTO 4900 
        printMessage("IT IS CURSED!!");
        pause(SMALL_PAUSE);
        clearMessage();
        utmp =  RandMax(tno*5)+1;
        _fi_s("YOU SUFFER % DAMAGE POINTS", utmp);
        printMessage(stringBuffer40);
        ch = ch - ((signed long int) utmp);
        if (ch<1)
        {
            pause(SMALL_PAUSE);
            return RETURN_PLAYER_DEAD;
        }
        pause(SMALL_PAUSE);
        return RETURN_MONSTER_STACK;
    }

    // * Add item to inventory 
    // 4235 PRINT "It's yours!":I(I)=I(I)+ONE:IF I<EIG THEN I(I)=J 
    // 4237 GOSUB RSTAT 
    printMessage("IT'S YOURS!");
    inventory[tno]=inventory[tno]+1;
    if (tno<SCROLL_OF_RESCUE) 
        inventory[tno] = ilv;
    pause(SMALL_PAUSE);

    // 4240 IF C=ONE AND RND(ONE)>ONE/TWO THEN GOSUB WTCLR:GOTO 4200 
    if ((c==1) && (RandMax(100)>50)) 
    {
        goto itemFound;
    }
    return RETURN_MONSTER_STACK;
}

// return 0 if nothing special occured (no pause needed)
// return 1 if pause is needed, but nothing special otherwise
// return 2 if directly new turn
// return dead
int handleSpecial(int fix)
{
    clearMessage();
    // * Get items one level up 
    // 6000 X=CX:Y=CY:Z=CZ-ONE:GOSUB 10010:J=USR(FNS,HI):
    // Malban: J is item from above

    // * Get item on current level 
    // I=USR(FNS,LC) 
    // Malban: I is item from here

    // * If on level one, nothing one level up */ 
    // 6005 IF CZ=ONE THEN J=ZERO 

    // * Be sure special item is less then 9 */ 
    // 6010 Q=FOUR+FIVE:IF I>Q THEN I=I-Q:GOTO 6010
    // 6012 IF J>Q THEN J=J-Q:GOTO 6012 

    // above is item above this one (or 0)

    // Malban:
    // note - such a stair case is not visable with LIGHT spell
    // this is also the case in the original!
    if (above == 4) goto doStaircase;

    // "map11_hi" is current item (0-9)
    switch (map11_hi)
    {
        case 1:
        {
            // 6100 IF CZ<>ONE THEN 6200 
            if (cz != 1) goto doElevator;
            // Malban: following is handled by map generation
            // 6102 J=FOUR:GOTO 6500
            // I know this is stupid
            // but I left it as "original" as possible :-(
            above = 4;
            goto doStaircase;
            if (cz == 1) // inn
            {
upperInn:
                clearMessage();
                displayInn();
                clearMonsterStack();

                // 6145 PRINT "Reenter":GOSUB WTCLR:CZ=ONE:GOTO NEWP
                printMessage("REENTER");
                pause(SMALL_PAUSE);
                clearMessage();
                tmp2 = (signed int)lv;
                checkXP();
                if (lv != (unsigned int) tmp2)
                    pause(SMALL_PAUSE);
                return RETURN_NEW_TURN;
            }
            else // elevator (inn item on a level lower than 1)
            {
doElevator:
                // 6200 GOSUB 16600:PRINT " ":GOSUB 16500:PRINT "You feel heavy for a moment" 
                // 6210 GOSUB PAUSE:CZ=CZ-ONE:GOTO NEWP
                printMessage("YOU FEEL HEAVY FOR A MOMENT");
                elevator();
                cz=cz-1;
                fillMap =GO_REDRAW;
                return RETURN_NEW_TURN;
            }
            break;
        }
        case 2:// / Pit 
        {
            // / On 50th level, can’t go any deeper 
            // 6300 IF CZ=50 THEN 6200 
            if (cz == 50) goto doElevator;

            // 6302 GOSUB 16600:PRINT "":GOSUB 16500:PRINT "You see a pit" 
            printMessage("YOU SEE A PIT");
            
            tmp = 0; // 0 is falling

            // / Check for levitate spell 
            // 6303 IF SF(FIVE)>ZERO THEN PRINT "You are hovering above a pit":GOTO 6310 
            if (sf[LEVITATE]>0)
            {
                printMessage("YOU ARE HOVERING ABOVE A PIT");
                tmp = 1; // can chose
            }
            else
            {
                // / RND(0-20) > Dexterity + Elven boot level 
                // 6305 IF INT(RND(ONE)*C20)>S(FOUR)+I(FIVE) THEN 6330
                if ((unsigned long int )RandMax(20)<=  (unsigned long int) s[DEX]+inventory[ELVEN_BOOTS])
                    tmp = 1; // can chose
            }
            if (tmp == 1)            
            {
                // / Ask if player wants to descend 
                // 6310 PRINT "Do you want to descend?";:GOSUB GTCHR:IF C$="Y" THEN 6320 
                // 6315 PRINT "No":GOSUB WTCLR:GOTO ARRW 
                // 6320 PRINT "Yes":GOTO 6335 
                printMessage("DO YOU WANT TO DESCEND? <4> YES");
                tmp = testForButton(0);
                if (tmp == 4)
                {
                    cz = cz + 1;
                    printMessage("YES");
                    fillMap =GO_REDRAW;
                    return RETURN_NEW_TURN;
                }
                printMessage("NO");
                return RETURN_NOTHING;
            }
            // / Fell in pit. Handle damage and move down one level 
            // 6330 PRINT "You fall in!!":L=THREE:GOSUB NEWP0:GOSUB PAUSE 
            printMessage("YOU FALL IN!!");
            initSoundNo = SOUND_PIT;
            l = 3;

            inElevator = -1;
            elevatorY=0;
            while (inElevator==-1)
            {
                displayRound();
            }



            // * Handle damage 
            // 20000 D=INT(RND(ONE)*L*SIX+ONE):PRINT "You suffer ";D;" hit points":CH=CH-D 
            // 20005 IF CH>ZERO THEN GOSUB RHITS:RETURN 
            // 20010 GOSUB RSTAT:GOSUB WTCLR:GOTO 9000
            clearMessage();

            tmp = (signed int)RandMax(l*3)+1;
            _fi_s("YOU SUFFER % HIT POINTS", ((unsigned int) tmp));
            printMessage(stringBuffer40);
            ch=ch-tmp;
            if (ch<=0)
            {
                pause(SMALL_PAUSE);
                return RETURN_PLAYER_DEAD;
            }
            // 6335 CZ=CZ+ONE:GOTO NEWP 
            cz = cz + 1;
            fillMap =GO_REDRAW;
            return RETURN_NEW_TURN;
        }
        case 3:// / Teleporter
        {
            // / Display message and clear monster stack 
            // 6400 GOSUB 16600:PRINT " * ":GOSUB 16500 
teleportNow:
            // 6403 PRINT "ZZAP!! You've been teleported...":GOSUB 30200 
            printMessage("ZZAP!! YOU'VE BEEN TELEPORTED...");
            clearMonsterStack();
teleportAgain:
            // / Calculate new position 
            // 6405 IF USR(LG,ONE,CX+CY,ONE)=ZERO THEN CZ=CZ-ONE:
            //      IF USR(LG,ONE,CX+CY,TWO)=TWO THEN CZ=CZ+TWO 
            // C64: 2660 IF((CX+CY)AND1)=0THENCZ=CZ-1:
            //           IF((CX+CY)AND2)=2THENCZ=CZ+2

            // zoom out
            lightChange = 0x5f;
            initSoundNo = SOUND_TELEPORT;
            while (--lightChange >=1)
                displayRound();



            if (((cx+cy)&1) == 0) cz = cz -1;
            if (((cx+cy)&2) == 2) cz = cz +2;
            // 6410      CX=CX+CZ*EIG+CY*13:CY=CY+CZ*SIX+CX*17 
            // C64: 2670 CX=CX+CZ*8+CY*13:CY=CY+CZ*6+CX*17

            // 6415 Q=C20*TEN:IF CX>Q THEN CX=CX-Q:GOTO 6415 
            // 6420 IF CY>Q THEN CY=CY-Q:GOTO 6420 
            // Malban: this obviously is not the same calculation...
            //         I would need to cast to long etc...
            cx = cx+cz*8+cy*13;
            if (cx >200) cx -= (unsigned char)200;

            cy = cy+cy*6+cx*17;
            if (cy >200) cx -= (unsigned char)200;

            // 6425 IF CZ=ZERO THEN CZ=ONE 
            // 6430 IF CZ>FIVE*TEN THEN CZ=FIVE*TEN 
            if (cz==0) cz = 1;
            if (cz>50) cz = 50;

            // 6435 IF RND(ONE)>FOUR/FIVE THEN 6405 
//            if (RandMax(5)==0) goto teleportAgain; // why???
            fillMap = GO_REDRAW;

// zoom in
            initSoundNo = SOUND_TELEPORT;
            while (lightChange++<0x5f)
                displayRound();
            lightChange = 0;

            // 6440 GOTO NEWP
            return RETURN_NEW_TURN;
        }
        case 4: // stairway
        {
doStaircase: 
            // * Check for up stairway 
            // 6500 GOSUB 16600:IF J=FOUR THEN PRINT "["; 
            
            // / Check for down stairway 
            // 6505 IF I=FOUR THEN PRINT "]"; 
            // 6510 GOSUB CLWND:PRINT "You have found a circular stairway" 
            printMessage("YOU HAVE FOUND A CIRCULAR STAIRWAY");
  
            // * There is an Inn above 
            // 6512 IF J=FOUR AND CZ=ONE THEN PRINT "You see LIGHT above" 
            if ((above == 4) && (cz==1))
                printMessage("YOU SEE LIGHT ABOVE");
            pause(SMALL_PAUSE);
            clearMessage();
            
            // * Prompt the player 
            // 6515 PRINT "Do you want to ";:IF J=FOUR THEN PRINT "go Up, "; 
            // 6525 IF I=FOUR THEN PRINT "go Down, "; 
            // 6530 PRINT :PRINT "or Stay on the same level?";:GOSUB GTCHR 
            // 6532 IF C$="&" THEN C$="S" 
            if ((above==4) && (map11_hi==4))
            {
                printMessage("DO YOU WANT TO <1> GO UP, <4> GO DOWN");
            }
            else if (above==4) 
            {
                printMessage("DO YOU WANT TO <1> GO UP");
            }
            else if (map11_hi==4)
            {
                printMessage("DO YOU WANT TO <4> GO DOWN");
            }
            printMessage("OR STAY ON THE SAME LEVEL?");

            tmp = testForButton(2);

            // * Check if you can go in the select direction 
            // 6535 IF (I<>FOUR AND C$="D") OR (J<>FOUR AND C$="U") THEN 6550 
            if ((tmp == 4) && (map11_hi==4))
            {
                // * Go down 
                // 6545 IF C$="D" THEN PRINT "Down";:CZ=CZ+ONE:GOTO NEWP 
                cz = cz + 1;
                printMessage("DOWN");
                pause(SMALL_PAUSE);
                fillMap = GO_REDRAW;
                return RETURN_NEW_TURN;
            }

            // * Go up 
            // 6540 IF C$="U" THEN PRINT "Up";:CZ=CZ-ONE:IF CZ>ZERO THEN GOTO NEWP 
            else if ((tmp == 1) && (above==4))
            {
                cz = cz - 1;
                printMessage("UP");
                pause(SMALL_PAUSE);
                fillMap = GO_REDRAW;

                // * Go to Inn 
                // 6542 IF CZ<=ZERO THEN 6103 
                if (((signed int) cz)<=0) 
                {
                    cz=1; // Malban
                    goto upperInn;
                }

                return RETURN_NEW_TURN;
            }
            
            // * Stay 
            // 6547 IF C$="S" THEN PRINT "Stay";:GOSUB CLWND:GOTO ARRW 
            printMessage("STAY");
            return RETURN_PAUSE;

            // Malban
            // default is just to stay - I don't test for not valid...
            // 6550 PRINT "???";:GOTO 6510 
        }
        case 5: // Altar
        {
            // * Display message 
            // 6600 GOSUB 16600:PRINT "":GOSUB CLWND:PRINT "You have found a Holy Altar" 
            // 6605 PRINT "Press <RET> to worship";:GOSUB GTCHR:IF C$=RT$ THEN 6630 
            printMessage("YOU HAVE FOUND A HOLY ALTAR");
            printMessage("PRESS <4> TO WORSHIP");
            tmp = testForButton(0);
            if (tmp == 4)
            {
                // * Worship 
                // 6630 PRINT :PRINT "Press <RET> to donate money";:GOSUB GTCHR 
                // 6632 IF C$<>RT$ THEN 6610 
                printMessage("PRESS <4> TO DONATE MONEY");
                tmp = testForButton(0);
                if (tmp != 4) goto noMoneyNoWorship;
                clearMessage();

                ultmp = inputNumber("HOW MUCH GOLD?\x80", 0, 50000);
                // * Get amount of gold to donate 
                // 6634 PRINT :PRINT "How much gold?";:GOSUB 20800:GOSUB CLWND 
                // 6636 IF C>GD THEN PRINT "You don't have that much!";:GOTO 6615 
                if (ULL(ultmp)>gd)
                {
                    printMessage("YOU DON'T HAVE THAT MUCH!");
                    pause(SMALL_PAUSE);
                    goto dirtyPaganTrash;
                }
                
                // * If not enough gold, create a monster 
                // 6640 IF C<FIVE*TEN*CZ THEN PRINT "";:GOTO 6615 
                if (ultmp<UL(UL(50)*UL(cz)))
                    goto dirtyPaganTrash;
                
                // * Deduct gold, see if workshipping gives a bonus 
                // 6645 GD=GD-C:GOSUB RSTAT:IF RND(ONE)<C/(GD+C) THEN 6660 
                // 6655 PRINT "Thank you for your donation":GOSUB WTCLR:GOTO ARRW 
                gd = gd - ultmp;
                tmp = (signed int)((ULL(ultmp)*ULL(100))/ (   ULL(gd)+ ULL(ultmp) ));
                if ((signed int)RandMax(100) < tmp)
                {
                    // * Randomly increase a spell effect 
                    // 6660 I=INT(RND(ONE)*SEV+ONE):IF SF(I)<ZERO THEN SF(I)=ZERO 
                    tmp2 = (signed int) RandMax(7);
                    sf[tmp2] =(unsigned int) (sf[tmp2] + RandMax((unsigned int)tmp)+(unsigned int)1);
                    // 6665 SF(I)=SF(I)+INT(RND(ONE)*TEN*TEN*C/(GD+C)+ONE)
                    // 6680 PRINT "You have been heard":GOSUB WTCLR:GOTO ARRW
                    printMessage("YOU HAVE BEEN HEARD");
                }
                else
                {
                    printMessage("THANK YOU FOR YOUR DONATION");
                }
                return RETURN_PAUSE;
            }
            
noMoneyNoWorship:
            // * Don’t workship. 30% of the time create an undead monster 
            // 6610 IF RND(ONE)>SEV/TEN THEN GOTO ARRW 
            if (RandMax(100)>70)
            {
                return RETURN_NOTHING;
            }

            // 6615 PRINT :PRINT "Dirty Pagan TRASH!";:GOSUB 16600:PRINT "# " 
            // 6620 M=INT(RND(ONE)*C20+ONE):GOSUB 20700:IF UN=ZERO THEN 6620 
            // 6625 GOSUB WTCLR:GOTO 3007 
dirtyPaganTrash:
            printMessage("DIRTY PAGAN TRASH!");
            pause(SMALL_PAUSE);
            clearMessage();
#ifndef NO_MONSTER
            un = 0;            
            while (un == 0)        
            {
                m = (signed int)RandMax(20);
                if ( (m==SKELETON) || (m==ZOMBIE) || (m==MUMMY) || (m==GHOUL) || (m==WRAITH) || (m==SPECTER) || (m==VAMPIRE)) un = 1;
            }
#endif
            return RETURN_SPANW_MONSTER;
        }
        case 6: // Fountain
        {
            // * Display message 
            // 6700 GOSUB 16600:PRINT " ": GOSUB CLWND: PRINT "You have found a fountain" 

            printMessage("YOU HAVE FOUND A FOUNTAIN");
            // * Determine color of water 
            // 6701 C=INT(RND(ONE)*FIVE+ONE) 
            // 6702 PRINT "with running ";FNT$(C*FIVE-FOUR,C*FIVE);" water" 
            tmp2 = (signed int)RandMax(5);
            _fs("WITH RUNNING % WATER", fountain[tmp2]);
            printMessage(stringBuffer40);
           
            // * Prompt to drink 
            // 6705 PRINT "<RET> to drink some:";:GOSUB GTCHR:IF C$=RT$ THEN 6715 
            printMessage("PRESS <4> TO DRINK");
            tmp = testForButton(0);
            if (tmp != 4)
            {
                // * Clear screen and continue game 
                // 6710 GOSUB CLWND:GOTO ARRW 
                return RETURN_PAUSE;
            }
            clearMessage();
            
            // * 3/5 of the time something skip to special types of fountain 
            // 6715 GOSUB CLWND:IF RND(ONE)>THREE/FIVE THEN 6750 
            if (RandMax(100)<60)
            {
                // * Skip healing effect 
                // 6717 IF RND(ONE)>ONE-C*THREE/C20 THEN 6730 
                if ((signed int)RandMax(20)< 20-tmp2*3)
                {
                    // * Healing fountain. Add (3 * dungeon level) + 1 to hit points 
                    // 6720 PRINT "You feel better":GOSUB PAUSE:I=INT(RND(ONE)*THREE*CZ+ONE) 
                    printMessage("YOU FEEL BETTER");
                    tmp = (signed int)  RandMax(cz*3)+1;
                    // 6725 PRINT "You heal ";I;" hit points":CH=CH+I:IF CH>HP THEN CH=HP 
                    _fi_s("YOU HEAL % HIT POINTS", (unsigned int) tmp);
                    printMessage(stringBuffer40);
                    ch = ch + ((unsigned int)tmp);
                    if (ch > hp) ch = hp;
                    // 6727 GOSUB RHITS:GOSUB WTCLR:GOTO ARRW 
                    return RETURN_PAUSE;
                }
                // * Skip poison fountain 
                // 6730 IF RND(ONE)>THREE*C/C20 THEN 6745 
                if ((signed int)RandMax(20)< tmp2*3)
                {
                    // * Poison Fountain. Subtract (3 * dungeon level) + 1 from hit points. Check if dead 
                    // 6735 PRINT "It's POISON!!!":I=INT(RND(ONE)*THREE*CZ+ONE):PRINT "You lose ";I;" hit points" 
                    printMessage("IT'S POISON!!!");
                    tmp = (signed int)RandMax(cz*3)+1;
                    _fi_s("YOU LOSE % HIT POINTS", (unsigned int) tmp);
                    printMessage(stringBuffer40);

                    // 6740 CH=CH-I:GOSUB RHITS:IF CH<ONE THEN 9000 
                    // 6742 GOSUB WTCLR:GOTO ARRW 
                    if (tmp>=ch)
                    {
                        pause(SMALL_PAUSE);
                        return RETURN_PLAYER_DEAD;
                    }
                    ch = ch - ((unsigned int)tmp);
                    return RETURN_PAUSE;
                }
                // * Got experience points 
                // 6745 GOSUB 20100:GOSUB RSTAT:GOSUB WTCLR:GOTO ARRW 
                randomXP();
                return RETURN_PAUSE;
            }

            // * Feel refreshed by no other effect 
            // 6750 MI$="You feel refreshed!":IF RND(ONE)>TWO/FIVE THEN PRINT MI$:GOSUB WTCLR:GOTO ARRW 
            if (RandMax(50)>20)
            {
                printMessage("YOU FEEL REFRESHED!");
                return RETURN_PAUSE;
            }
            
            // * Check for drunk fountain 
            // 6752 IF RND(ONE)>ONE/TWO THEN 6780 
            if (RandMax(100) > 50)
            {
                // * Handle drunk fountain 
                // 6780 PRINT MI$:GOSUB WTCLR:PRINT "Actually you're DRUNK!!" 
                // 6785 Q=TEN+ONE:IF SF(Q)<ZERO THEN SF(Q)=ZERO 
                // 6786 SF(Q)=SF(Q)+INT(RND(ONE)*16+ONE):GOSUB 15000:GOSUB CLWND:GOTO ARRW
                printMessage("YOU FEEL REFRESHED!");
                pause(VERY_SMALL_PAUSE);
                printMessage("ACTUALLY YOU'RE DRUNK!!");
                sf[DRUNK] = RandMax(16)+1;
                return RETURN_PAUSE;
            }
            
            // * Check for lose items fountain 
            // 6755 IF RND(ONE)>ONE/TWO THEN 6770 
            if (RandMax(100) > 50)
            {
                // * Handle lose item fountain. Remove all items 
                // 6770 PRINT "You have been disposessed!!":FOR I=ONE TO TEN:I(I)=ZERO:NEXT I:GOSUB PAUSE 
                printMessage("YOU HAVE BEEN DISPOSESSED!");
                for (int i=0;i<10;i++) inventory[i]=0;
                // 6775 GOSUB WTCLR:PRINT "}":GOSUB RSTAT:GOSUB 15000:GOSUB 30025:GOTO ARRW 
                return RETURN_PAUSE;
            }
            
            // * Magic fountain, increase number of spells 
            // 6760 PRINT "Magic power SURGES through your body":CS=CS+INT(RND(ONE)*FOUR*CZ+ONE) 
            // 6765 PRINT "You now have ";CS;" spells":GOSUB RSPLL:GOSUB WTCLR:GOTO ARRW 
            printMessage("MAGIC POWER SURGES THROUGH YOUR BODY");
            cs = cs + RandMax(cz*4)+1;
            _fl_s("YOU NOW HAVE % SPELLS", cs);
            printMessage(stringBuffer40);
            return RETURN_PAUSE;
        }
        case 7: // Cube
        {
            // * Display message 
            // 6800 GOSUB 16600:PRINT " ":GOSUB CLWND:PRINT "You see a large gray misty cube" 
            // 6805 PRINT "<RET> to walk in:";:GOSUB GTCHR:IF C$<>RT$ THEN GOTO ARRW 

            printMessage("YOU SEE A LARGE GRAY MISTY CUBE");
            printMessage("<4> TO WALK IN");
            tmp = testForButton(1);
            if (tmp != 4)
            {
                printMessage("IGNORE");
                return RETURN_PAUSE;
            }
            
            // * 80% of the time you can pick the level to go to
            // 6810 IF RND(ONE)>ONE/FIVE THEN 6815 
            if (RandMax(100)<20)
            {
                // * Goto random level 
                // 6812 CZ=INT(RND(ONE)*FIVE*TEN+ONE):GOTO 6820 
                cz = RandMax(50)+1;
            }
            else
            {
                // / Get level number to goto 
                // 6815 PRINT :PRINT "A number from 1 to 50:";:GOSUB 20800:PRINT :IF C$="&" THEN 6812 
                // 6817 IF C<ONE OR C>FIVE*TEN THEN GOTO 6810 
                // 6818 CZ=C 
                cz = (unsigned char) inputNumber("A NUMBER FROM 1 TO 50\x80",(unsigned long int)1,(unsigned long int)50);
            }

            // 6820 GOSUB 29000:POKE SP,TWO:POKE SP+ONE,ONE:PRINT "You float":PRINT " in space....";:GOTO NEWP 
            printMessage("YOU FLOAT IN SPACE ...");
            initSoundNo = SOUND_CUBE;
            int soundPlay = 4;
            while (1)
            {
                if (sfx_status_1 == 0) 
                {
                    if (soundPlay-- == 0) break;
                    
                    initSoundNo = SOUND_CUBE;
                }
                displayRound();
            }

            fillMap = GO_REDRAW;
            return RETURN_NEW_TURN;
        }
        case 8: // Throne
        {
            // *Show message 
            // 6900 GOSUB 16600:PRINT " ":GOSUB CLWND:PRINT "You see a jewel encrusted throne" 
            // 6905 PRINT "Do you want to Pry some jewels," 
            // 6910 PRINT "Sit down, Read the runes,":PRINT " or Ignore it:"; 
            // 6915 GOSUB GTCHR:IF C$="I" OR C$="&" THEN PRINT "Ignore";:GOSUB WTCLR:GOTO ARRW 
            specialAction = SPECIAL_THRONE_MUSIC;
            printMessage("YOU SEE A JEWEL ENCRUSTED THRONE");
            pause(SMALL_PAUSE);
            clearMessage();
            printMessage("DO YOU WANT TO PRY<4> SOME JEWELS,");
            printMessage("SIT<3> DOWN, READ<2> THE RUNES");
            printMessage("OR IGNORE<1> IT?");

            tmp = testForButton(1);
            clearMessage();
            if (tmp == 1)
            {
                printMessage("IGNORE");
                return RETURN_PAUSE;
            }
            // * Pry jewels 
            // 6920 IF C$<>"P" THEN 6950 
            if (tmp == 4)
            {
                // * 30% of the time a monster appears 
                // 6925 PRINT "Pry";:GOSUB WTCLR:IF RND(ONE)>SEV/TEN THEN 7030 
                printMessage("PRY");

                // * 60% of the time nothing happens 
                // 6930 IF RND(ONE)>TWO/FIVE THEN 7025 
                if (RandMax(100) >40)
                {
throneNothingHappens:
                    // 7025 PRINT "Nothing happens...";:GOTO 7010 
                    // 7010 GOSUB WTCLR:GOTO ARRW 
                    printMessage("NOTHING HAPPENS");
                    return RETURN_PAUSE;
                }

                // * Got the jewel, increase gold 
                // 6935 PRINT "They pop into your greedy hands!!":I=INT(RND(ONE)*TEN*TEN*TEN*CZ+ONE) 
                // 6940 PRINT "They are worth ";I;" gold":GD=GD+I:GOSUB RSTAT:GOSUB WTCLR:GOTO ARRW 
                printMessage("THEY POP INTO YOUR GREEDY HANDS!!");
                ultmp = UL(RandMax(100)+1)*UL(10)*UL(cz);
                gd = gd + ULL(ultmp);
                _fl_s("THEY ARE WORTH % GOLD", ultmp);
                printMessage(stringBuffer40);
                pause(SMALL_PAUSE);
                return RETURN_PAUSE;
            }
            // * Sit 
            // 6950 IF C$<>"S" THEN 6985 
            if (tmp == 3)
            {
                // * 30% of the time a monster appears 
                // 6955 PRINT "Sit";:GOSUB WTCLR:IF RND(ONE)>SEV/TEN THEN 7030 
                printMessage("SIT");
                pause(SMALL_PAUSE);
                if (RandMax(100) >70)
                {
createAKing:
                    // 7030 M=INT(RND(ONE)*C20+ONE):GOSUB 19700 
                    m = (signed int)RandMax(20);
                    // 7032 PRINT :PRINT "The ";M$;" KING returns!!":GOSUB WTCLR:GOSUB 16600:GOSUB 20700 
                    _fs("THE % KING RETURNS", mo[m]);
                    printMessage(stringBuffer40);

                    // 7035 PRINT "# ":ML=INT(RND(ONE)*CZ*FIVE)+FIVE:GOTO 3010 
                    ml = RandMax(5)*cz+5;
                    // must be done here, since we are "passed" that in the monster handling
                    mh = (signed long int) (UL(RandMax(ml)+1)*UL(m));
                    pause(SMALL_PAUSE);
                    return RETURN_MONSTER_IS_SET;
                }
                
                // * 40% of the time nothing happens 
                // 6960 IF RND(ONE)>THREE/FIVE THEN 7025 
                if (RandMax(100) >60)
                {
                    goto throneNothingHappens;
                }
                
                // * 60% of the time your are teleported 
                // 6965 IF RND(ONE)>TWO/FIVE THEN 6403 
                if (RandMax(100) >40)
                {
                    goto teleportNow;
                }
                // 6970 PRINT "A loud ýGONGý sounds!";:GOSUB WTCLR:IF RND(ONE)<ONE/TWO THEN 6975 
                PLY_SONG_PLAYING = 0; // if throne tune is still playing
                pause(VERY_SMALL_PAUSE);

                printMessage("A LOUD GONG SOUNDS!");
                initSoundNo = SOUND_GONG;

                if (RandMax(100) > 50)
                {
                    // * 50% of the time you loose ½ experiece 
                    // 6973 EX=INT(EX/TWO):IF LV=ONE THEN EX=-ONE 
                    // 6974 GOSUB 18000:GOTO ARRW 
                    ex = ex >> 1;
                    checkXP();
                    if (ch==0)
                    {
                        // dead
                        return RETURN_PLAYER_DEAD;
                    }
                    return RETURN_PAUSE;
                }

                // * If your level is less then or equal to the dungeon level, then you get an experience bonus 
                // 6975 IF LV>CZ THEN PRINT "Nothing happens...";:GOTO 7010 
                if (lv>cz) goto throneNothingHappens;

                // 6980 EX=INT(1000*TWO^LV+ONE/TWO):GOSUB 18000:GOTO ARRW 
                ex = ULL(1000)*ULL(ULL(2)<<(lv-1)) + 1;
                checkXP();
                return RETURN_PAUSE;
            }
            // * Read 
            // 6985 IF C$<>"R" THEN 7015 
            if (tmp == 2)
            {
                // 6990 PRINT "Read";:GOSUB WTCLR 
                printMessage("READ");
                
                // * 30% of the time create a monster 
                // 6992 IF RND(ONE)>SEV/TEN THEN 7030 
                if (RandMax(100) >70) goto createAKing;

                // * Determine success based on player’s intelligence 
                // 6995 IF RND(ONE)<S(ONE)/C20 THEN 7005 
                if (RandMax(20)>=s[INT])
                {
                    // * Failed to read 
                    // 7000 PRINT "You don't understand them...";:GOTO 7010 
                    printMessage("YOU DON'T UNDERSTAND THEM...");
                    return RETURN_PAUSE;
                }
                
                // * Read 
                // 7005 PRINT :PRINT "A mysterious magic grips you..":GOSUB 20200 
                printMessage("A MYSTERIOUS MAGIC GRIPS YOU..");

                // 20200 I=INT(RND(ONE)*6):IF RND(ONE)>ONE/TWO THEN 20220 
throneRoleStatAgain:
                tmp = (signed int)RandMax(6);
                if (RandMax(100) > 50)
                {
                    // 20220 IF S(I)=THREE THEN 20200 
                    if (s[tmp] <= 3) goto throneRoleStatAgain;

                    // 20225 PRINT "Your ";S$(I*THREE+ONE,I*THREE+THREE);" goes down";:S(I)=S(I)-ONE 
                    // 20240 PRINT " by 1":GOSUB RSTAT:GOSUB PAUSE:RETURN
                    s[tmp] = s[tmp] - 1;
                    _fs("YOUR % GOES DOWN BY 1", stats[tmp]);
                }
                else
                {
                    // 20210 IF S(I)=18 THEN 20200 
                    if (s[tmp] >= 18) goto throneRoleStatAgain;

                    // 20215 PRINT "Your ";S$(I*THREE+ONE,I*THREE+THREE);" goes up";:S(I)=S(I)+ONE:GOTO 20240 
                    s[tmp] = s[tmp] + 1;
                    _fs("YOUR % GOES UP BY 1", stats[tmp]);
                }
                printMessage(stringBuffer40);
                return RETURN_PAUSE;
            }
            break;
        }
        case 9: // Box
        {
            // * Show box 
            // 7100 GOSUB 16600:PRINT "  ":GOSUB CLWND 
            
            // * Prompt user to press button 
            // 7105 PRINT "You see a small box with four colored" 
            // 7110 PRINT "lights. Ðush buttons or Égnore:";:GOSUB GTCHR 
            printMessage("YOU SEE A SMALL BOX WITH FOUR COLORED");
            printMessage("LIGHTS. PUSH<4> BUTTONS OR IGNORE:");

            specialAction = SPECIAL_BOX;
            tmp = testForButton(1);
            specialAction = 0;
            // * User chooses not to push button 
            // 7115 IF C$<>"P" THEN PRINT "Ignore":GOSUB WTCLR:GOTO ARRW 
            if (tmp != 4)
            {
                printMessage("IGNORE");
                return RETURN_PAUSE;
            }
            
            // * Prompt use for which button to press 
            // 7120 PRINT "Push":GOSUB WTCLR:CB=ONE 
            // 7125 PRINT "Push Òed, Çreen, Ùellow, Âlue":PRINT "or Ótop:"; 
            unsigned int cb = 0; // number of box button to press
boxAgain:
            clearMessage();
            printMessage("PUSH (UP/DOWN/LEFT/RIGHT)");
            printMessage("<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE");
            printMessage("BUTTON TO STOP");

            pause(SMALL_PAUSE);

            // * Get input and check if user decides not to push 
            // 7130 GOSUB GTCHR:IF C$="S" OR C$="&" THEN PRINT "Stop";:GOSUB WTCLR:GOTO ARRW 
            tmp = (signed int) testForInput(0);
            clearMessage();
            resetButtons();
            resetJoystick();
            if (tmp<5)
            {
                printMessage("STOP");
                return RETURN_PAUSE;
            }
            
            // * Find which button was pressed, put name in M$ 
            // 7135 Q=FOUR+TWO:FOR C=ONE TO FOUR:IF C$=B$(C*Q-FIVE,C*Q-FIVE) THEN M$=B$(C*QFIVE,C*Q):GOTO 7145 
            // 7140 NEXT C: 
            
            // * Player didn’t enter a valid button 
            // PRINT "???";:GOSUB WTCLR:GOTO 7170 
            
            // * Print name of button that was pressed 
            // 7145 GOSUB 19705:PRINT M$: 
            printMessage((char *) boxColors[tmp-5]);
            


            // * Jump if wrong combination 
            // IF B(CB)<>C THEN 7170 
            if (box[cb] != tmp-5)
            {
                // * Calculate and display damage done by box 
                // 7170 I=INT(RND(ONE)*TWO*CZ+ONE):PRINT "An electric bolt shoots through you!!" 
                tmp = (signed int) RandMax(2*cz)+1;                
                printMessage("AN ELECTRIC BOLT SHOOTS THROUGH YOU!!");

                // 7175 GOSUB WTCLR:PRINT "You suffer ";I;" points damage":CH=CH-I:GOSUB RHITS 
                _fi_s("YOU SUFFER % POINTS DAMAGE", (unsigned int) tmp);
                printMessage(stringBuffer40);
                // * Check for death 
                // 7180 IF CH<ONE THEN 9000 
                if (ch<=tmp)
                {
                    pause(SMALL_PAUSE);
                    return RETURN_PLAYER_DEAD;
                }
                // 7185 GOSUB WTCLR:GOTO ARRW
                return RETURN_PAUSE;
            }
            // * Next button in combination 
            // 7150 CB=CB+ONE:IF CB<FIVE THEN GOSUB WTCLR:GOTO 7125 
            pause(SMALL_PAUSE);
            cb++;
            if (cb <4) goto boxAgain;
            
            // * Opened box 
            // 7155 PRINT "It opens!!!! ";:GOSUB WTCLR:PRINT "Inside you find jewels worth" 
            clearMessage();
            printMessage("IT OPENS!!");
            printMessage("INSIDE YOU FIND JEWELS WORTH");
            
            // * Calculate gold in box 
            // 7160 GOSUB 19800:I=INT(RND(ONE)*20000*CZ^TWO+ONE):PRINT I;" in gold!!":GD=GD+I:GOSUB RSTAT 
            // 7165 GOSUB CLWND:GOTO ARRW 
            initBox();
            lltmp =(signed long long int) (ULL(RandMax(20)+1) * ULL(1000) * ULL(cz)* ULL(cz) );
            _fll_s("% IN GOLD!!", ULL(lltmp));
            printMessage(stringBuffer40);
            gd = gd + ULL(lltmp);
            return RETURN_PAUSE;
        }
        default:
        {
            break;
        }
    }
    return RETURN_NOTHING;
}

int main(void)
{
    calibrationValue = 0;
    initFlash();
restart:
    initVars();
#ifndef NO_TITLE
    ch = -1;    // ch here will be indicator whether flash should be loaded
    titleScreen();
    if (ch != -1)
    {
        goto loadFromFlash;
    }
    
#endif
    Vec_Text_HW = 0xfa50;
    _x = Vec_Loop_Count_lo;
    setRandSeedNP();

    // TODO ?
    //1600 GOSUB19800:CX=25:CY=13:EX=0:SU=1:CS=1:PRINT"?YOUR NAME,  NOBLE SIRE? ";

    createCharacter();

#if START_STRONG == 1
    // debug values!!!
    for (int i=0; i<10;i++) inventory[i] = 3; 
    su = 100;
    cs = 100;
    lv = 50;
    hp = 100;
    ch = 100;
#endif

    unsigned int turnStarting = 1;
    while(1)
    {
        // todo display must respect
        // Level 1 (inn) (only player pos)
        // Level 50 (elevetor) (only player pos)
        // stair cases from upper level (only player pos)
        displayRound();

        if (turnStarting)
        {
            turnStarting = 0;
            l = cz; // treasure level
            // if encounter happened
            // do a short pause to display the result

            ///////////////////////////////////////
            ///////////////////////////////////////
            tmp = 0;
#ifndef NO_MONSTER
monsterReturns:
            tmp = handleEncounters(tmp); 
            m=-1; 
            ml = 0;
            mh = 0;
            if (tmp== RETURN_NEW_TURN) 
            {
                tmp = 0;
                pause(SMALL_PAUSE);
                goto newTurnStart;
            }
            else if (tmp == RETURN_PLAYER_DEAD) 
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == RETURN_TREASURE) 
            {
                tmp = 0;
                // normal continue
            }
            else if (tmp == RETURN_TREASURE_FIX) 
            {
                // normal continue
                // but ensure that a treasue is found
                tmp = 1;
            }
            else if (tmp == RETURN_SPECIAL) 
            {
                tmp = 0;
                // skip treasure
                // not used
                goto handleSpecial;
            }
#endif

            ///////////////////////////////////////
            ///////////////////////////////////////
            tmp = handleTreasure(tmp);
            printTreasure=-1;

            if (tmp == RETURN_PLAYER_DEAD) 
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == RETURN_MONSTER_STACK) 
            {
#ifndef NO_MONSTER
                if (monsterOnStackAdvance() != 0) 
                {
                    tmp = RETURN_MONSTER_IS_SET;
                    goto monsterReturns;
                }
#endif
            }
            else if (tmp == RETURN_SPECIAL) 
            {
                tmp = 0;
                // normal return do nothing
            }

            ///////////////////////////////////////
            ///////////////////////////////////////
handleSpecial:
            tmp = handleSpecial(tmp);
            if (tmp == RETURN_PAUSE)
            {
                tmp = 0;
                pause(SMALL_PAUSE);
            }
            else if (tmp == RETURN_NEW_TURN)
            {
                tmp = 0;
                pause(SMALL_PAUSE);
                goto newTurnStart;
            }
            else if (tmp == RETURN_PLAYER_DEAD)
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == RETURN_SPANW_MONSTER)
            {
#ifndef NO_MONSTER
                tmp = 0;
                goto monsterReturns;
#endif
            }
            else if (tmp == RETURN_MONSTER_IS_SET) // set throne - king returns
            {
#ifndef NO_MONSTER
                tmp = RETURN_MONSTER_IS_SET;
                goto monsterReturns;
#endif
            }
        }

        clearMessage();
        printMessage(">");

        // ARRW: 
        // 8000 M=ZERO:GOSUB CLWND

        ///////////////////////////////////////
        ///////////////////////////////////////
        tmp = handleMovement();
        if (tmp)
        {
            monsterOnStackEvadeFurther();
            pause(VERY_SMALL_PAUSE);
            goto newTurnStart;
        }
        // todo 
        // save game
        // quit ???
        // help ???

        if (button_1_4_pressed()) timer = 0; // "stay"
        else if (button_1_3_pressed()) // "cast"
        {
            castSpell(0);
            pause(SMALL_PAUSE);
            timer = 0;
            tmp = 1; // anything not 0
             goto newTurnNotStart;

        }
        else if (button_1_2_pressed()) // status page - does not count as "as action"
        {
            displayStatusPage();
        }

        // game is a "real time rpg"
        // some action happens after time out...
        if ((timer == 0) || (tmp))
        {
            if (!tmp)
            {
                clearMessage();
                printMessage("STAY...");
                pause(VERY_SMALL_PAUSE);
#ifndef NO_MONSTER
                tmp = monsterOnStackAdvance();
                if (tmp != 0)
                {
                    tmp = RETURN_MONSTER_IS_SET;
                    goto monsterReturns;
                }
#endif
            }


newTurnStart:
            turnStarting = 1;
newTurnNotStart:

            m = -1;
            mh = 0;
            timer = ACTION_TIME;

            /////////////
            // GAME LOGIC
            /////////////
            
            // Decrement spell effects
            // 2000 FOR I=ONE TO 11:SF(I)=SF(I)-ONE:NEXT I:
            for (int i=0; i<11;i++)
            {
                if (sf[i] != 0)
                    sf[i] = sf[i]-1;
            }
            
            // Handle ring of regeneration
            // IF (I(SIX)=ZERO) OR (CH=HP) THEN GOTO STR
            // 2015 CH=CH+I(SIX):IF (CH>HP) THEN CH=HP
            if ((inventory[RING_OF_REGENERATION]) && ((unsigned int)ch != hp))
            {
                ch=ch+(signed long int)inventory[RING_OF_REGENERATION];
                if ((unsigned int)ch>hp) ch=(signed int)hp;
            }
        }
        timer--;
    }
playerDead:
    if (msgLine == 3)
    {
        pause(SMALL_PAUSE);
        clearMessage();
    }
    initSoundNo = SOUND_DEATH;
    printMessage("YOU DIED!!");
    pause(SMALL_PAUSE);


    printCharacter = 0;
    printTreasure = -1;
    printDungeon = 0;
    m = -1;

    int stage =0;
    int b=0;
    Vec_Text_HW = 0xfa50;
    while (1)
    {
        CLS;
        Do_Sound();
        Wait_Recal();
        check_buttons();
        
        dp_VIA_t1_cnt_lo = 0x70; // scale
        Intensity_a(0x5f); // set intensity of vector beam...

        if (lv<4) print("ANOTHER NOT SO ");
        else print("ANOTHER");
        print("MIGHTY ADVENTURER");
        print("BITES THE DUST");
        ADDLINE;
        if (stage == 0)
        {
            print("DO YOU WANT TO ");
            print("TRY AGAIN? <1-4>");
            if (buttons_pressed()) b=1;
            if ((!buttons_pressed()) && (b==1)) {stage = 1; b=0; goto overstepPrint;}
        }

        if (stage == 1)
        {
            if ((tmp_hp == -1) && (!(((flashAvailable) && (!Vec_Num_Players)))) )break; 

            print("DO YOU WANT TO ");
            print("LOAD A CHARACTER? <4>");
            if (buttons_pressed()) b=1;
            if (button_1_4_pressed()) {b = 4;}
            if ((!buttons_pressed()) && (b!=0)) 
            {
                if (b==4)
                {
                    checkSavedFlash();
                    if ((flashAvailable) && (!Vec_Num_Players))
                    {
loadFromFlash:
                        loadFlash();
                        fillMap = GO_REDRAW;
                        printCharacter = 1;
                        printDungeon = 1;
                    }
                    else
                    {
                        ltmp = tmp_hp;
                        initVars(); // destroys tmp_hp
                        hp = tmp_hp = ltmp;
                        lv = tmp_lv; // player level # word?
                    
                        ex = tmp_ex; // experience # long long?
                        su = tmp_su; // spell units (max)
                    
                        cx = tmp_cx;
                        cy = tmp_cy;
                    
                        tg = tmp_tg; // saved gold # long long?
                        for (int i=0;i<6;i++) s[i] = tmp_s[i];
                        for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
                        for (int i=0;i<4;i++) box[i] = tmp_box[i];
                    }
                    clearMessage();
                    printMessage("CHARACTER LOADED");
                    ch = (signed long int) hp;
                    gd = 0; // gold
                    cz = 1; // current z position in dungeon
                    cs = su;
                    
                    for (int i=0; i<11;i++) sf[i] = 0; // spell effects
                    clearMonsterStack();    
                    _x = Vec_Loop_Count_lo;
                    setRandSeedNP();

                    // Malban:
                    // added this to level up upon an INN reenter!
                    tmp2 = (signed int)lv;
                    checkXP();
                    if (lv != (unsigned int) tmp2)
                        pause(SMALL_PAUSE);

                    goto newTurnStart;
                }
                break;
            }
        }
overstepPrint:
        drawMap();
    }

    goto restart;
    
    // if return value is <= 0, then a warm reset will be performed,
    // otherwise a cold reset will be performed
    return 0;
}

// ***************************************************************************
// end of file
// ***************************************************************************
