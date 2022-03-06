#include "../deps.h"

#define __BANK__ 1


// calls to bank 0
extern void subBank0(int);
#define titleScreen()         subBank0(0)
#define initFP()              subBank0(1)
#define generateDisplayMap()  subBank0(2)
#define drawMap()             subBank0(3)


extern void wr2(); // wait recal own - saves about 600 cycles...
extern void Joy_Digital2(); // dito

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

#include <vectrex.h>
#include <assert.h>


// all variables (from all modules) are declared here
#include "../BothBanks.i"
#include "../globals.h"

extern const char * const stats[];
extern const char * const items[];
extern const char ** const spellNames[];
extern const char * const mo[];
extern int testForButton(int d);

void pause(unsigned char t);

// returns 1 if a scroll of rescue has been used
// 0 otherwise
int displayStatusPage()
{
    unsigned int page = 0;
    int itemSelect = 0;
    int lastDir = 0;
    int lastDirY = 0;
    int ret = 0;

    // debounce
    do
    {
        check_buttons();
        if (!buttons_pressed()) break;
    } while (1);

    do
    {
        Wait_Recal();
        Do_Sound();
        Joy_Digital();
        check_buttons();
        dp_VIA_t1_cnt_lo  = 0x7f;

        if ((Vec_Joy_1_X > 0) && (!lastDir))
            if (page<4) page++;
        if ((Vec_Joy_1_X < 0) && (!lastDir))
            if (page>0) page--;
        lastDir = Vec_Joy_1_X;
        Intensity_5F();

        int y=0x78;
        if (page == 0)
        {
            Print_Str_d(y,-0x20, "  STATS >>\x80");
            RESET0REF();
            y = 0x50;
            for (int i=0; i<6;i++) 
            {
                _fsi_s("%: %" , stats[i], s[i]);
                Print_Str_d(y,-0x20, stringBuffer40);
                RESET0REF();
                y -= 10;
            }

            y -= 10;
            _fl_l_s("HP: %/%" , (unsigned long int)ch, (unsigned long int)hp);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();
        }

        else if (page == 1)
        {
            Print_Str_d(y,-0x20, "<< ENV  >>\x80");
            RESET0REF();
            y = 0x50;
            _fi_s("DUNGEON: %" , cz);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

            y -= 10;
            _fii( "         X=% Y=%" , cx,cy);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

            extern const char *const environment_string[];
            y -= 10;
            _fs("ROOM: %" , environment_string[printEnvironment]);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();


            y -= 10;
            if (m>=0)
            {
                _fsi_s("ENCOUNTER: % LEVEL %" , mo[m], ml);
            }
            else
            {
                _fs("ENCOUNTER: % " , "NONE");
            }
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

        }
        else if (page == 2)
        {
            Print_Str_d(y,-0x20, "<< VARS >>\x80");
            RESET0REF();
            y = 0x50;

            _fi_s("LV: %" , lv);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();


            y -= 10;
            _fl_l_s("SU: %/%" , cs, su);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

            y -= 10;
            _fll_s("XP: %" , ex);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

            y -= 10;
            _fll_s("GD: %" , gd);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

            y -= 10;
            _fll_s("TG: %" , tg);
            Print_Str_d(y,-0x20, stringBuffer40);
            RESET0REF();

        }

        else if (page == 3)
        {
            Print_Str_d(0x78,-0x20, "<< MODS >>\x80");
            RESET0REF();
            y = 0x50;
            for (int i=0; i<7;i++) 
            {
                if (inventory[i]<=0) continue;
                _fsl_s("% +%" , items[i], inventory[i]);
                Print_Str_d(y,-0x20, stringBuffer40);
                RESET0REF();
                y -= 10;
            }
        }

        else if (page == 4)
        {
            Print_Str_d(0x78,-0x20, "<< ITEMS\x80");
            RESET0REF();
            y = 0x50;

            for (int i=7; i<10;i++) 
            {
                _fsl_s("% :%" , items[i], inventory[i]);
                Print_Str_d(y,-0x20, stringBuffer40);
                RESET0REF();
                y -= 10;
            }

            if ((Vec_Joy_1_Y > 0) && (!lastDirY))
                if (itemSelect>0) itemSelect--;
            if ((Vec_Joy_1_Y < 0) && (!lastDirY))
                if (itemSelect<2) itemSelect++;

            Print_Str_d(0x50-10*itemSelect,-0x65, "-->\x80");
            lastDirY = Vec_Joy_1_Y;

            if (buttons_pressed()) 
            {
                if (inventory[itemSelect+7]<=0)
                {
                    // 8920 PRINT "You don't have one!!" 
                    // 8922 GOSUB WTCLR:GOTO ARRW 
                    clearMessage();
                    printMessage("YOU DON'T HAVE ONE!!");
                }
                else
                {
                    inventory[itemSelect+7]--;
                    clearMessage();
                    _fs("YOU USED %" , items[itemSelect+7]);
                    printMessage(stringBuffer40);
                    if (itemSelect == 0)
                    {
                        // * Scroll of Rescue 
                        // 8910 PRINT "Use Scroll of Rescue" 
                        // 8915 Q=FOUR+FOUR:IF I(Q)<ONE THEN 8920 
                        // 8917 I(Q)=I(Q)-ONE:CX=TWO:CY=70:CZ=ONE:PRINT "***ZAP!!***":GOSUB PAUSE:GOSUB 30200 
                        // 8918 GD=ZERO:GOSUB RSTAT:GOTO NEWP 

                        cz = 1; // current z position in dungeon
                        cx = 25;
                        cy = 13;
                        printMessage("***ZAP!!***");
                        ret = 1;
                        fillMap = GO_REDRAW;
                    }
                    else if (itemSelect == 1)
                    {
                        // / Drink healing potion 
                        // 8925 Q=FOUR+FIVE:PRINT "Drink Healing Potion":IF I(Q)<ONE THEN 8920 
                        // 8935 I(Q)=I(Q)-ONE:GOSUB RSTAT:CH=CH+INT(RND(ONE)*C20+ONE):IF CH>HP THEN CH=HP 
                        // 8940 PRINT "You feel BETTER!":GOSUB RHITS:GOTO 8922
                        printMessage("YOU FEEL BETTER!");
                        // 8935 I(Q)=I(Q)-ONE:GOSUB RSTAT:CH=CH+INT(RND(ONE)*C20+ONE):IF CH>HP THEN CH=HP 
                        ch = ch +RandMax(20)+1;
                        if (ch>hp) ch = hp;
                    }
                    else
                    {
                        // / Drink strength potion 
                        // 8945 PRINT "Drink Potion of Strength":IF I(TEN)<ONE THEN 8920 
                        // 8950 IF SF(ONE)<ZERO THEN SF(ONE)=ZERO 
                        // 8955 SF(ONE)=SF(ONE)+INT(RND(ONE)*C20+TEN+ONE):PRINT "Strength flows through your body" 
                        printMessage("STRENGTH FLOWS THROUGH YOUR BODY");
                        sf[STRENGTH] = RandMax(20)+11;
                        // 8960 I(TEN)=I(TEN)-ONE:GOSUB RSTAT:GOTO 8922 
                    }
                    pause(SMALL_PAUSE);
                }
                break;
            }
        }
        if (buttons_pressed()) break;
    }
    while (1);
    resetButtons();
    return ret;
}


void displayRound()
{
#if DO_ORIGINAL_WR == 1
    Wait_Recal();
#else
    wr2(); 
#endif

    Do_Sound();
    Joy_Digital2();
    check_buttons();
    dp_VIA_t1_cnt_lo  = 0x7f;

    if (lightChange>0) Intensity_a((unsigned int)lightChange);
    else
    {
        if (sf[LIGHT]>0)
            Intensity_7F();
        else
            Intensity_a(0x4f);
    }
    drawMap();
    displayMessages();
}

void elevator()
{
    inElevator = 1;
    elevatorY=0;
    Vec_Music_Wk_7 = 0x3e; // voice one enable
    Vec_XXX_04 = 0xf; // volume A

    signed long int freq = 5000;

    while (inElevator)
    {
        freq = freq-5;
        Vec_XXX_08 = (signed int) (freq&0xff); // fine A
        Vec_Music_Wk_1 = *((signed int*) &freq); // coarse A
        displayRound();
        freq+50;
    }
    Vec_Music_Wk_7 = 0x3f; // all disabled
    Vec_XXX_04 = 0; // volume A
}


// smoother if input breaks a pause
void pause(unsigned char t)
{
    while(1)
    {
        displayRound();
        if (Vec_Joy_1_X != 0) return;
        if (Vec_Joy_1_Y != 0) return;
        if (buttons_pressed() != 0) return;

        // game is a "real time rpg"
        // some action happens after time out...
        if (t == 0)
        {
            return;
        }
        t--;
    }
}


void initBox()
{
    for (int i=0; i<4;i++)
    {
        box[i] = (signed int)RandMax(4);
    }
}


// pushed m on stack!
void monsterOnStack(signed int m, unsigned int ml, signed long int mh)
{
    // * Push a monster onto the monster stack 
    // 30100 FOR Q=19 TO ONE STEP (-ONE):FM(Q+ONE)=FM(Q):FL(Q+ONE)=FL(Q):FH(Q+ONE)=FH(Q):NEXT Q 
    for (int i=18;i>=0;i--)
    {
        stackM[i+1] = stackM[i];
        stackML[i+1] = stackML[i];
        stackMH[i+1] = stackMH[i];
    }

    // 30105 IF M=ZERO THEN FM(ONE)=ZERO:FL(ONE)=ZERO:FH(ONE)=ZERO:GOTO 30025 
    // 30110 FM(ONE)=M:FL(ONE)=ML:FH(ONE)=MH:GOTO 30025
    if (m==-1)
    {
        stackM[0] = -1;
        stackML[0] = 0;
        stackMH[0] = 0;
        return;
    }
    stackM[0] = (signed int)m;
    stackML[0] = ml;
    stackMH[0] = mh;
    m=-1; 
    ml = 0;
    mh = 0;
}

// return 0 if non attacks
// anything else ... m has been set!
int monsterOnStackAdvance()
{
    int ret = 0;
    // * Pull a monster off the monster stack 
    // 30000 M=ZERO:IF FM(ONE)=ZERO THEN 30020 
    m=-1;
    if (stackM[0] != -1)
    {
        ret = 1;
        // 30010 M=FM(ONE):ML=FL(ONE):MH=FH(ONE):GOSUB 20700 
        // there is a monster on the stack that we need to return
        m = (signed int) stackM[0];
        ml = stackML[0];
        mh = stackMH[0];
    }
    // 30020 FOR I=ONE TO 19:FM(I)=FM(I+ONE):FL(I)=FL(I+ONE):FH(I)=FH(I+ONE):NEXT I 
    // 30022 FM(C20)=ZERO:FL(C20)=ZERO:FH(C20)=ZERO:IF M<>ZERO THEN POKE SC+332,THREE
    for (int i=0; i<19;i++)
    {
        stackM[i] = stackM[i+1];
        stackML[i] = stackML[i+1];
        stackMH[i] = stackMH[i+1];
    }
    stackM[19] = -1;
    stackML[19] = 0;
    stackMH[19] = 0;

    return ret;
}

int monsterOnStackEvadeFurther()
{
    monsterOnStack(-1, 0, 0);
}

//signed int stackM[20];    // 20 monster on stack, TYPE
//unsigned int stackML[20];   // LEVEL
//unsigned long int stackMH[20];   // HitPoints
void clearMonsterStack()
{
    for (int i=0;i<20;i++)
    {
        stackM[i] = -1;
        stackML[i] = 0;
        stackMH[i] = 0;
    }
}

void createCharacter()
{
    int pressed;
    rollAgain:
    for (int i=0; i<6;i++)
    {
        s[i] = RandMax(6)+1 + RandMax(6)+1 + RandMax(6)+1;
    }
    pressed = 0;
    localTimer = ACTION_TIME;
#ifndef NO_TITLE
    do
    {
        localTimer--;
        if (localTimer == 0) goto rollAgain;
        CLS;
        Wait_Recal();
        Do_Sound();
        check_buttons();
        check_joysticks();
        
        if (button_1_4_pressed()) break;
        if (buttons_pressed()) pressed = 1;
        else if (pressed) goto rollAgain; // shit on "good" C... this just ought to do what I want
        
        dp_VIA_t1_cnt_lo = TEXT_SCALE; // scale
        dp_VIA_t1_cnt_lo = 0x70; // scale
        Intensity_a(0x5f); // set intensity of vector beam...
        print("<4> TO USE STATS");
        ADDLINE;
        
        for (int i=0; i<6;i++) printfsi("%: %" , stats[i], s[i]);
    }
    while (1);
#endif
    hp = s[3];
    ch = (signed long int) hp;
    gd = 0; // gold
    tg = 0; // saved gold
    lv = 1; // player level
    
    cz = 1; // current z position in dungeon
    cx = 25;
    cy = 13;
    
    // inventory clear
    for (int i=0; i<10;i++)
    {
        inventory[i] = 0; // inventory
        sf[i] = 0; // spell effects
    }
    sf[10] = 0; // spell effects
    
    // Initialize combination to open box
    initBox();
    
    // Initialize experience, spell units and current spell units
    ex = 0;
    su = 1;
    cs = 1;

    // Get players name
    // TODO
    // PRINT "Your name noble sir? ";
    // 1602 GOSUB 16200:IF D$

    clearMonsterStack();    
#ifndef NO_TITLE
    unsigned int i=0;
    do
    {
        CLS;
        Wait_Recal();
        Do_Sound();
        
        dp_VIA_t1_cnt_lo = 0x70; // scale
        Intensity_a(0x5f); // set intensity of vector beam...
        print("YOU DESCEND INTO THE");
        print("DEPTH OF TELENGARD");
        ADDLINE;
        print("BEWARE...");
        
    }
    while (i++<160);
#endif
}





// in combat
// return 1 -> goto 3300
// return 2 -> goto 3100
// return 3 -> goto 3220 (monster dead)
// return 4 -> goto 3710 (evade)
// return 5 -> goto 3223 (get XP per ml)
// return 6 -> return with treasure given
// return 7 -> player is dead (spell backfired)

// not in combat
// return 1 -> goto 8000 enter command
// return 2 -> goto 2000 new turn
int castSpell(int inCombat)
{
    unsigned int spellLevel = 0;
    unsigned int spellSelect = 0;
    unsigned int availableLevel = (lv/3);
    int lastDir = 0;
    do
    {
        Wait_Recal();
        Do_Sound();
        Joy_Digital();
        check_buttons();
        dp_VIA_t1_cnt_lo  = 0x7f;

        if ((Vec_Joy_1_X > 0) && (!lastDir))
            if (spellLevel<5) spellLevel++;
        if ((Vec_Joy_1_X < 0) && (!lastDir))
            if (spellLevel>0) spellLevel--;

        if (spellLevel <= availableLevel)
        {
            Intensity_5F();
            if ((Vec_Joy_1_Y > 0) && (!lastDir))
                if (spellSelect>0) spellSelect--;
            if ((Vec_Joy_1_Y < 0) && (!lastDir))
                if (spellSelect<5) spellSelect++;

            Print_Str_d(0x60-0x10*spellSelect,-0x65, "-->\x80");
            RESET0REF();
        }
        else
            Intensity_3F();

        lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));

        _fi_s("LEVEL %\x80", (unsigned int) spellLevel+1);
        Print_Str_d(0x78,-0x20, stringBuffer40);
        RESET0REF();

        for (unsigned int i=0;i<6;i++)
        {
            Print_Str_d(0x60-0x10*i,-0x50, spellNames[spellLevel][i]);
            RESET0REF();
        }
        // abort casting
        if (button_1_1_pressed()) 
        {
            printMessage("ABORT");
            return 2;
        }
        if (buttons_pressed()) break;

         

    }
    while (1);
    clearMessage();
    printMessage("CAST");

    // handle cast spell
    if (spellLevel > availableLevel)
    {
        printMessage("YOU DON'T HAVE THAT LEVEL SPELLS!");
        return 2;
    }
    // cost in spell points is spellLevel
    if ((spellLevel+1) > cs)
    {
        printMessage("YOU DON'T HAVE ENOUGH SPELL UNITS!");
        return 1;
    }
    clearMessage();
    _fs("CAST: %", (void *)spellNames[spellLevel][spellSelect]);
    printMessage(stringBuffer40);

    cs=cs-(spellLevel+1); // payment

    if (spellLevel == 0)
    {
        if (spellSelect == 0) // "MAGIC MISSILE\x80",
        {
            // / Magic Missile Spell 
            // 22100 GOSUB WTCLR:IF D=ZERO THEN 21800 
            // 22105 I=INT(RND(ONE)*8+FIVE):GOTO 21700 
            tmp = (signed int) RandMax(8)+5;
            goto damageSpell;
        }
        else if (spellSelect == 1) // "SLEEP\x80",
        {
            if (!inCombat) goto noCombatSpell;
            //  Check for undead, they don’t sleep 
            // 22202 IF UN=ONE THEN PRINT "Undead don't sleep!":GOTO 3300 
            if (un != 0)
            {
                printMessage("UNDEAD DON'T SLEEP!");
                return 1;
            }
            // / If D20 < Intelligence then monster doesn’t sleep
            // 22205 IF INT(RND(ONE)*C20+ONE)>S(ONE) THEN PRINT "The ";M$;" isn't sleepy!":GOTO 3300
            if (RandMax(20)+1 > s[INT] )
            {
                _fs("THE % ISN'T SLEEPY!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            // / Monster is asleep. 
            // 22210 PRINT "The ";M$;" is sleeping":PRINT "Press <RET> to kill:";:GOSUB GTCHR 
            // 22215 IF C$<>RT$ THEN GOSUB CLWND:GOTO 3710
            _fs("THE % IS SLEEPING <4> TO KILL:", mo[m]);
            printMessage(stringBuffer40);
            if (testForButton(1) != 4) 
            {
                printMessage("EVADE");
                return 4;
            }
            // / 4/5th of the time the monster is killed, 1/5th it wakes up 
            // 22220 IF RND(ONE)>ONE/FIVE THEN GOTO MOND 
            // 22250 PRINT "It woke up!!":GOSUB PAUSE:GOTO 3300
            if (RandMax(5) < 4 )
            {
                return 3;
            }
            printMessage("IT WOKE UP!");
            pause(SMALL_PAUSE);
            return 1;
        }
        else if (spellSelect == 2) // "CURE LIGHT WOUNDS\x80",
        {
            // / Cure light wounds spell, Gain 1-9 Hit Points 
            // 22300 I=INT(RND(ONE)*EIG+ONE):PRINT "You feel better":CH=CH+I 
            // 22305 IF CH>HP THEN CH=HP 
            // 22310 GOSUB RHITS:GOTO 21900 
            printMessage("YOU FEEL BETTER");
            ch = ch + RandMax(8)+1;
            if (ch > hp) ch = hp;
            return 1;
        }
        else if (spellSelect == 3) // "LIGHT\x80",
        {
            // / Light spell. Increase light level to 5 - 15 
            // 22400 T=THREE:U=TEN+ONE:SETCOLOR TWO,ZERO,FOUR 
            // / Set length of spell effect, used by many spell routines 
            // 22402 IF SF(T)<ZERO THEN SF(T)=ZERO 
            // 22405 SF(T)=SF(T)+INT(RND(ONE)*U+FIVE):GOTO 21900 
            sf[LIGHT] = RandMax(11)+5;
            return 1;
        }
        else if (spellSelect == 4) // "TURN UNDEAD\x80",
        {
            // / Turn Undead spell 
            // 22500 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // / Check if Monster is undead 
            // 22505 IF ONE=UN THEN 22515 
            // 22510 PRINT "The ";M$;" is insulted":PRINT "at being called undead":GOTO 21900 
            if (un == 0)
            {
                _fs("THE % IS INSULTED", mo[m]);
                printMessage(stringBuffer40);
                printMessage("AT BEING CALLED UNDEAD");
                return 1;
            }
            // / Determine success/failure based on Intelligence 
            // 22515 IF RND(ONE)<S(TWO)/C20+LV/C20-ML/C20 THEN 22525 
            // 22520 PRINT "The ";M$;" listens with deaf ears":GOTO 21900 
            if (RandMax(20) > s[WIS] + lv-ml)
            {
                _fs("THE % LISTENS WITH DEAF EARS", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            // 22525 ML=INT((ML/TWO)+ONE/TWO):PRINT "It runs in fear!!":GOTO 3223
            ml=(ml+1)>>1; // reduced experience for turning undead
            printMessage("IT RUNS IN FEAR!!");
            return 5;
        }
        else if (spellSelect == 5) // "PROT/EVIL\x80",
        {
            // / Protection from evil spell 
            // 22600 T=FOUR:U=TEN+ONE:GOTO 22402 
            sf[PROTECTION_FROM_EVIL] = RandMax(11)+5;
            return 1;
        }
    }
    else if (spellLevel == 1)
    {
        if (spellSelect == 0) // "WEB\x80",
        {
            // / Web spell 
            // 23100 GOSUB WTCLR:IF D=ZERO THEN 21800 
            // 23105 IF INT(RND(ONE) TWO*C20+ML)>S(ONE) THEN PRINT "The ";M$;" dodges aside!":GOTO 3300 
            // C64: IFINT( RND(1)^2 *20+ML)>S(1)THENPRINT"THE "M$" DODGES ASIDE!":GOTO1300
            // todo dodge chance
            if (!inCombat) goto noCombatSpell;
            if ( ((lRandMax(6)*lRandMax(5)))  + ml > s[INT])
            {
                _fs("THE % DODGES ASIDE!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }

            // 23110 PRINT "The ";M$;" is webbed!":PRINT "Press <RET> to kill:";:GOSUB GTCHR 
            // 23115 IF C$<>RT$ THEN GOSUB CLWND:GOTO 3710 
            _fs("THE % IS WEBBED <4> TO KILL:", mo[m]);
dressedToKill:
            printMessage(stringBuffer40);
            if (testForButton(1) != 4) 
            {
                printMessage("EVADE");
                return 4;
            }

            // 23120 IF RND(ONE)-ML/C20>ONE/TWO THEN GOTO MOND 
            // 23125 PRINT "It broke free!!":GOSUB PAUSE:GOTO 3300
            if (RandMax(20)-ml > 10 )
            {
                return 3;
            }
            printMessage("IT BROKE FREE!");
            return 1;
        }
        else if (spellSelect == 1) // "LEVITATE\x80",
        {
            // / Levitate spell 
            // 23200 T=FIVE:U=C20+ONE:GOTO 22402        
            sf[LEVITATE] = RandMax(21)+5;
            return 1;
        }
        else if (spellSelect == 2) // "CAUSE LIGHT WOUNDS\x80",
        {
            // / Cause light wounds spell 
            // 23300 GOSUB WTCLR:IF D=ZERO THEN 21800 
            // 23305 I=INT(RND(ONE)*12+THREE):GOTO 21700 
            tmp = (signed int) RandMax(12)+3;
            goto damageSpell;
        }
        else if (spellSelect == 3) // "DETECT TRAPS\x80",
        {
            // / Detect traps spell 
            // 23400 T=TWO:U=C20+ONE:GOTO 22402
            sf[DETECT_TRAPS] = RandMax(21)+5;
            return 1;
        }
        else if (spellSelect == 4) // "CHARM\x80",
        {
            // / Charm spell 
            // 23500 GOSUB CLWND:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // / Can’t charm undead 
            // 23502 IF UN=ONE THEN PRINT "The undead ignore your wiles!":GOTO 3300 
            if (un != 0)
            {
                printMessage("THE UNDEAD IGNORES YOUR WILES!");
                return 1;
            }
            // 23505 IF INT((RND(ONE) TWO)*C20+ONE)>S(FIVE) THEN PRINT "The ";M$;" resists you!":GOTO 3300 
            // Malban: is that a RAND 40?
            // c64: 7130 IFINT((RND(1)^2)*20+1)>S(5)THENPRINT"THE "M$" RESISTS YOU!":GOTO1300
            // todo resist

            if ( ((lRandMax(6)*lRandMax(5)))  + 1 > s[CHR])
            {
                _fs("THE % RESISTS YOU!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }

            // 23510 PRINT "The ";M$;" is charmed":PRINT "Press <RET> to kill:";:GOSUB GTCHR 
            // 23515 GOTO 23115 
            _fs("THE % IS CHARMED <4> TO KILL:", mo[m]);
            goto dressedToKill;
        }
        else if (spellSelect == 5) // "STRENGTH\x80"
        {
            // / Strength 
            // 23600 T=ONE:U=C20+ONE:GOTO 22402
            sf[STRENGTH] = RandMax(21)+5;
            return 1;
        }
    }
    else if (spellLevel == 2)
    {
        if (spellSelect == 0) // "LIGHTNING BOLT\x80",
        {
            // / Lightning bolt spell 
            // 24100 GOSUB CLWND:SETCOLOR TWO,SIX,TEN:PRINT "ZZZZAAAPPP!!!":SETCOLOR TWO,ZERO,ZERO:IF D=ZERO THEN 21800 
            printMessage("ZZZZAAAPPP!!!");
            initSoundNo = SOUND_LIGHTNING;

            // / Determine damage 
            // 24105 GOSUB PAUSE:I=INT(RND(ONE)*SIX*LV+15):GOTO 21700
            pause(SMALL_PAUSE);
            tmp = (signed int) RandMax(6*lv)+15;
            goto damageSpell;
        }
        else if (spellSelect == 1) // "CURE SERIOUS WOUNDS\x80",
        {
            // / Cure serious wounds spell. 
            // / Re-gain 1-25 hit points 
            // 24200 I=INT(RND(ONE)*24+ONE):PRINT "You feel better":CH=CH+I 
            // 24205 IF CH>HP THEN CH=HP 
            // 24210 GOSUB RHITS:GOTO 21900
            printMessage("YOU FEEL BETTER");
            ch = ch + RandMax(24)+1;
            if (ch > hp) ch = hp;
            return 1;
        }
        else if (spellSelect == 2) // "CONTINUAL LIGHT\x80",
        {
            // / Continual light 
            // 24300 T=THREE:U=C20+TEN+ONE:SETCOLOR TWO,ZERO,FOUR:GOTO 22402 
            sf[LIGHT] = RandMax(31)+5;
            return 1;
        }
        else if (spellSelect == 3) // "INVISIBILITY\x80",
        {
            // / Invisibility spell 
            // 24400 T=SIX:U=C20+ONE:SETCOLOR TWO,ZERO,TWO:GOTO 22402 
            sf[INVISIBLE] = RandMax(21)+5;
            return 1;

        }
        else if (spellSelect == 4)  // "HOLD MONSTER\x80",
        {
            // / Hold monster spell 
            // 24500 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;

            // / Check monster level against Intelligence to see if spell succeeds 
            // 24505 IF INT(RND(ONE)*C20+ML)>S(ONE) THEN PRINT "The ";M$;" ignores you!":GOTO 3300 
            if ( RandMax(20)+ml > s[INT])
            {
                _fs("THE % IGNORES YOU!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }

            // / Prompt for kill 
            // 24510 PRINT "The ";M$;" is held!":PRINT "Press <RET> to kill:";:GOSUB GTCHR 
            // 24515 IF C$<>RT$ THEN GOSUB CLWND:GOTO 3710 
            _fs("THE % IS HELD <4> TO KILL:", mo[m]);
            printMessage(stringBuffer40);
            if (testForButton(1) != 4) 
            {
                printMessage("EVADE");
                return 4;
            }

            // / Calculate chance of kill succeeding 
            // 24520 IF RND(ONE)>ML*6.0E-3 THEN GOTO MOND 
            // C64: IFRND(1)>.2+ML*.03THEN1260
            // / Kill did not succeed 
            // 24525 PRINT "It broke free!!":GOSUB PAUSE:GOTO 3300
            if (RandMax(33) > 7+ml )
            {
                return 3;
            }
            printMessage("IT BROKE FREE!");
            return 1;
        }
        else if (spellSelect == 5) // "PHANTASMAL FORCES\x80"
        {
            // / Phantasmal Force spell 
            // 24600 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;

            // 24605 IF INT(RND(ONE)*22+ML)<S(ONE) THEN 24615 
            // 24610 PRINT "The ";M$;" doesn't beleive!":GOTO 3300
            if (RandMax(22)+ml >= s[INT])
            {
                _fs("THE % DOESN'T BELIEVE!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }

            // 24615 PRINT "It beleives!....Arrgh...":GOTO MOND
            printMessage("IT BELIEVES! .... ARRGH...");
            return 3;
        }
    }
    else if (spellLevel == 3)
    {
        if (spellSelect == 0) // "PASS WALL\x80",
        {
            // / Pass wall Spell 
            // 25100 GOSUB WTCLR:IF D=ONE THEN 21750 
            if (inCombat) 
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }
            printMessage("DIRECTION>");

            // / Prompt for direction 
            // 25105 PRINT "Direction>";:GOSUB GTCHR 
            // 25110 FOR I=ONE TO FOUR:IF CM$(I,I)=C$ THEN 25120 
            // 25115 NEXT I:PRINT "???";:GOSUB CLWND:GOTO 25105 

            tmp2 = 0;
            localTimer = ACTION_TIME;

            while(1)
            {
                displayRound(); 
                if (localTimer == 0) tmp2 = -1;
                if (Vec_Joy_1_X>0)
                {
                    if (cx==200)
                    {
onlyStone:
                        printMessage("ONLY STONE HERE...");
                        return 1;
                    }

                    cx +=1;fillMap=GO_EAST;printMessage("EAST");
                    tmp2 = 1;
                }

                if (Vec_Joy_1_X<0) 
                {
                    if (cx==2) goto onlyStone;
                    cx -=1;fillMap=GO_WEST;printMessage("WEST");
                    tmp2 = 2;
                }
                if (Vec_Joy_1_Y>0) 
                {
                    if (cy==2) goto onlyStone;
                    cy -=1;fillMap=GO_NORTH;printMessage("NORTH");
                    tmp2 = 3;
                }
                if (Vec_Joy_1_Y<0) 
                {
                    if (cy==200)
                    cy +=1;fillMap=GO_SOUTH; printMessage("SOUTH");
                    tmp2 = 4;
                }
        
                if (button_1_4_pressed()) tmp2 = -1;
                if (button_1_3_pressed()) tmp2 = -1;
                if (button_1_2_pressed()) tmp2 = -1;
                if (button_1_1_pressed()) tmp2 = -1;
        
                if (tmp2 != 0) break;
                localTimer--;
            }
            if (tmp2 == -1)
            {
                printMessage("???");
            }
            else
            {
                printMessage("POOF");
            }
            return 2;
        }
        else if (spellSelect == 1) // "FIREBALL\x80",
        {
            // / Fireball spell 
            // 25200 GOSUB CLWND:SETCOLOR TWO,TWO,TWO:PRINT "WHOOOOOSHH!!!":SETCOLOR TWO,ZERO,ZERO:IF D=ZERO THEN 21800 
            printMessage("WHOOOOOSHH!!!");

            // 25205 PRINT "The ";M$;" is burning!":I=INT(RND(ONE)*12*LV+15):GOSUB PAUSE:GOTO 21700 
            pause(SMALL_PAUSE);
            _fs("THE % IS BURNING!", mo[m]);
            printMessage(stringBuffer40);
            tmp = (signed int) RandMax(12*lv)+15;
            goto damageSpell;
        }
        else if (spellSelect == 2) // "CAUSE SERIOUS WOUNDS\x80",
        {
            // / Cause serious wounds spell 
            // 25300 GOSUB WTCLR:IF D=ZERO THEN 21800 
            // 25305 I=INT(RND(ONE)*32+TEN):GOTO 21700 
            tmp = (signed int) RandMax(32)+10;
            goto damageSpell;
        }
        else if (spellSelect == 3) // "FLESH TO STONE\x80",
        {
            // / Flesh to stone spell 
            // 25400 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // 25405 IF RND(ONE)>THREE/FIVE THEN PRINT "The ";M$;" isn't affected":GOTO 3300 
            // 25410 PRINT "One stone statue....":GOTO MOND 
            if (RandMax(10)>6)
            {
                _fs("THE % IS ISN'T AFFECTED", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            printMessage("ONE STONE STATUE....");
            return 3;
        }
        else if (spellSelect == 4) // "FEAR\x80",
        {
            // / Fear spell 
            // 25500 T=SEV:U=C20+TEN:GOTO 22402 
            sf[FEAR] = RandMax(30)+5;
            return 1;
        }
        else if (spellSelect == 5) // "FINGER OF DEATH\x80"
        {
            // / Finger of death spell 
            // 25600 GOSUB WTCLR:PRINT "ÄÉÅ¡¡¡¡¡¡":IF D=ZERO THEN 21800 
            printMessage("DIE!!!!!!!");
            if (!inCombat) goto noCombatSpell;

            // 25603 IF UN=ONE THEN 21930 
            // 21930 PRINT "Undead are already dead!!":GOTO 21900 
            if (un != 0)
            {
undeadAreDead:
                printMessage("UNDEAD ARE ALREADY DEAD!!");
                return 1;
            }
            // 25605 GOSUB PAUSE:IF RND(ONE)>0.3+ML*0.04-LV*0.03 THEN GOTO MOND 

            ltmp = 30 + ml*4;
            ltmp = ltmp - lv*3;

            pause(SMALL_PAUSE);
            if (RandMax(100) > (unsigned long int)ltmp) 
                return 3;

            // 25610 PRINT "The ";M$;" laughs!":GOSUB WTCLR:GOTO 3300 
            _fs("THE % LAUGHS!", mo[m]);
            printMessage(stringBuffer40);
            return 1;
        }
    }
    else if (spellLevel == 4)
    {
        if (spellSelect == 0) // "TELEPORT\x80",
        {
            signed long int ns;
            signed long int ew;
            signed long int upd;
            signed int sel;
            // / Teleport spell 
            // 26100 GOSUB WTCLR:IF D=ONE THEN 21750 
            if (inCombat) 
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }

            clearMessage();
            printMessage("CAST TELEPORT");

            // 26105 PRINT "+North/South:";:GOSUB 20800:NY=C:PRINT :PRINT "+East/West:";:GOSUB 20800 
teleportAgain:
            ns = ew = upd = sel = 0;
            do
            {
                Do_Sound();
                Joy_Digital();
                check_buttons();
                Wait_Recal();
                Intensity_5F();
                dp_VIA_t1_cnt_lo  = 0x7f;

                Print_Str_d(0x78,-0x20, "TELEPORT!\x80");
                Print_Str_d(-0x40,-0x40, "BUTTON TO FINISH\x80");

                _fi_s_s("NORTH- SOUTH+ : %\x80", (signed int) ns);
                Print_Str_d(0x50,-0x50, stringBuffer40);
                _fi_s_s("WEST- EAST+   : %\x80", (signed int) ew);
                Print_Str_d(0x30,-0x50, stringBuffer40);
                _fi_s_s("UP- DOWN+     : %\x80", (signed int) upd);
                Print_Str_d(0x10,-0x50, stringBuffer40);
                if (sel == 0)
                {
                     Print_Str_d(0x50,-0x65, "-->\x80");
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) ns+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) ns-=1;
                }
                if (sel == 1)
                {
                     Print_Str_d(0x30,-0x65, "-->\x80");
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) ew+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) ew-=1;
                }
                if (sel == 2)
                {
                     Print_Str_d(0x10,-0x65, "-->\x80");
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) upd+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) upd-=1;
                }
                if ((Vec_Joy_1_Y > 0) && (!lastDir))
                    if (sel>0) sel--;
                if ((Vec_Joy_1_Y < 0) && (!lastDir))
                    if (sel<2) sel++;
                lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));
        
                if (buttons_pressed()) break;
            }
            while (1);

            // 26110 NX=C:PRINT :PRINT "+Up/Down:";:GOSUB 20800:NZ=C:I=SQR(NX TWO+NY TWO+(NZ*FIVE) TWO)-ONE/TEN 
            // 26115 PRINT :IF I>LV*FIVE THEN PRINT "Too far...try again";:GOSUB WTCLR:GOTO 26105 
            if ((ABS(ns)>lv*5) || (ABS(ew)>lv*5) ||(ABS(upd)>lv*5) )
            {
                printMessage("TO FAR...TRY AGAIN");
                pause(SMALL_PAUSE);
                goto teleportAgain;
            }
            // 26120 NX=CX+NX:NY=CY-NY:NZ=CZ-NZ 
            // 26125 IF NX>ZERO AND NX<201 AND NY>ZERO AND NY<201 AND NZ<51 THEN 26135 
            // 26130 PRINT "Only stone there....The spell fails..";:GOTO 21900 
            // 26135 IF NZ<ONE THEN PRINT "Only thin air...The spell fails";:GOTO 21900 
            ew += cx;
            ns += cy;
            upd += cz;
            if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
                 (ns<(unsigned int)1) || (ns>(unsigned int)200) || ((signed int)upd>50) )
            {
                printMessage("ONLY STONE THERE...");
                printMessage("THE SPELL FAILS...");
                return 1;
            }
            if ((signed int) upd<1)
            {
                printMessage("ONLY THIN AIR...");
                printMessage("THE SPELL FAILS...");
                return 1;
            }
            // 26140 CX=NX:CY=NY:CZ=NZ:PRINT "***POOF!***";:GOSUB 30200:GOTO NEWP
            cx = (unsigned char)ew;
            cy = (unsigned char)ns;
            cz = (unsigned char)upd;
            printMessage("*** POOF! ***");
            fillMap = GO_REDRAW;
            return 2;
        }
        else if (spellSelect == 1) // "ASTRAL WALK\x80",
        {
            // / Astral walk spell 
            // 26200 T=EIG:U=T*TWO:GOTO 22402
            sf[ASTRAL_WALK] = RandMax(16)+5;
            return 1;
        }
        else if (spellSelect == 2) // "POWER WORD KILL\x80",
        {
            // / Power word kill spell 
            // 26300 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // 26305 PRINT "QWERTY!!!!":GOSUB PAUSE:IF UN=ZERO AND RND(ONE)<EIG/TEN THEN GOTO MOND 
            printMessage("QWERTY!!!!!!");
            pause(SMALL_PAUSE);
            // 26307 IF UN=ONE THEN 21930 
            // 26310 PRINT "The ";M$;" doesn't hear...":GOTO 21900
            if (un != 0)
            {
                goto undeadAreDead;
            }
            if (RandMax(11)>8)
            {
                _fs("THE % DOESN'T HEAR...", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            return 3; // dead
        }
        else if (spellSelect == 3) // "ICE STORM\x80",
        {
            // / Ice storm spell 
            // 26400 GOSUB WTCLR:IF D=ZERO THEN 21800 
            // 26405 PRINT "BRRRR!!!!":I=60:GOTO 21700
            if (!inCombat) goto noCombatSpell;
            printMessage("BRRRR!!!!");
            tmp = (signed int) RandMax(60)+5;
            goto damageSpell;
        }
        else if (spellSelect == 4) // "WALL OF FIRE\x80",
        {
            // / Wall of fire spell 
            // 26500 GOSUB WTCLR:SETCOLOR TWO,TWO,TWO:PRINT "WWHHOOOOOSSHHH!!!" 
            // 26505 PRINT "A wall of fire appears about you":GOSUB PAUSE:GOSUB WTCLR:SETCOLOR TWO,ZERO,ZERO:IF D=ZERO THEN 21800 
            // 26510 IF RND(ONE)>TWO/FIVE THEN PRINT "The ";M$;" is gone":POKE SC+332,ZERO:GOTO 21920 
            // 26515 PRINT "The ";M$;" walks through!!!":I=INT(RND(ONE)*TEN+TEN):GOTO 21700 
            clearMessage();
            printMessage("CAST WALL OF FIRE - WWHOOOSSH!!!");
            printMessage("A WALL OF FIRE APPEARS ABOUT YOU");
            pause(SMALL_PAUSE);
            if (RandMax(10) >4)
            {
                _fs("THE % IS GONE...", mo[m]);
                printMessage(stringBuffer40);
                return 6;
            }
            _fs("THE % WALKS THROUGH!!!", mo[m]);
            printMessage(stringBuffer40);
            tmp = (signed int) RandMax(10)+15;
            goto damageSpell;
        }
        else if (spellSelect == 5) // "PLAGUE\x80"
        {
            // / Plague spell 
            // 26600 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // 26605 IF UN=ONE THEN 21930 
            if (un != 0) goto undeadAreDead;

            // 26610 PRINT "Black DEATH for the ";M$:GOSUB WTCLR:IF RND(ONE)>S(TWO)/C20 THEN 
            _fs("BLACK DEATH FOR THE % ", mo[m]);
            printMessage(stringBuffer40);
            // PRINT "It is immune!":GOTO 21900 
            if (RandMax(20)>s[WIS])
            {
                printMessage("IT IS IMMUNE!");
                return 1;
            }
            // 26620 IF RND(ONE)*TWO<S(THREE)*0.03+ONE THEN GOTO MOND 
            // C64: 7900 IFRND(1)*2<S(3)*.03+1THEN1260
            if (  RandMax((unsigned int)(67)) < (unsigned int) ((s[CON]) +33))
            {
                return 2; // monster dead
            }
            printMessage("THE SPELL BACKFIRES!!");
            return 7;
        }
    }

    else if (spellLevel == 5)
    {
        if (spellSelect == 0) // "TIME STOP\x80",
        {
            // / Time stop spell 
            // 27100 GOSUB WTCLR:PRINT "Time is frozen, monsters cannot" 
            // 27105 PRINT "attack you":IF SF(NIN)<ZERO THEN SF(NIN)=ZERO 
            printMessage("TIME IS FROZEN, MONSTERS CANNOT");
            printMessage("ATTACK YOU");

            // 27110 SF(NIN)=SF(NIN)+INT(RND(ONE)*C20+FOUR):IF D=ONE THEN GOTO TRSR 
            // 27115 GOTO 21900 
            sf[TIMESTOP] = RandMax(20)+4;
            if (inCombat) return 6;
            return 1;
        }
        else if (spellSelect == 1) // "RAISE DEAD\x80",
        {
            // / Raise dead spell 
            // 27200 T=TEN:U=T*FOUR:GOTO 22402 
            sf[RAISE_DEAD] = RandMax(40)+5;
            return 1;
        }
        else if (spellSelect == 2) // "HOLY SYMBOL\x80",
        {
            // / Holy symbol spell 
            // 27300 GOSUB WTCLR:IF D=ZERO THEN 21800 
            if (!inCombat) goto noCombatSpell;
            // 27305 PRINT "----";:MI$=".O* ":FOR I=ONE TO EIG:PRINT MI$(I,I);"-";:GOSUB 19500:NEXT I:PRINT 
            // todo display holy symbol
            // 27307 GOSUB PAUSE:IF RND(ONE)<NIN/TEN THEN GOTO MOND 
            if (RandMax(10+1) != 10)
            {
                return 2; // monster dead
            }
            // 27310 PRINT "The ";M$;" doesn't see...":GOTO 21900
            _fs("THE % DOESN'T SEE...", mo[m]);
            printMessage(stringBuffer40);
            return 1;
        }
        else if (spellSelect == 3) // "WORD OF RECALL\x80",
        {
            // / Word of recall spell 
            // 27400 GOSUB WTCLR:IF D=ONE THEN 21750 
            if (inCombat) 
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }
            // 27405 FOR I=ZERO TO TEN:I(I)=ZERO:NEXT I:GD=ZERO:PRINT "}":GOSUB RSTAT:GOSUB 30200 
            // 27410 CX=TWO:CY=70:CZ=ONE:PRINT "***ÚÁÐ!!!***":GOSUB PAUSE 
            // inventory clear
            for (int i=0; i<10;i++)
            {
                inventory[i] = 0; // inventory
            }
            gd = 0; // gold
            clearMonsterStack();
            cz = 1; // current z position in dungeon
            cx = 25;
            cy = 13;
            ch = hp;
            printMessage("***ZAP!!***");
            pause(SMALL_PAUSE);
            return 1;
        }
        else if (spellSelect == 4) // "RESTORATION\x80",
        {
            // / Restoration spell 
            // 27500 GOSUB WTCLR:PRINT "You feel BETTER!":CH=HP:GOSUB RHITS:GOTO 21900
            printMessage("YOU FEEL BETTER");
            ch = hp;
            return 1;
        }
        else if (spellSelect == 5) // "PRISMATIC WALL\x80"
        {
            // / Prismatic wall spell 
            // 27600 GOSUB WTCLR:PRINT "A scintillating shifting wall appears":J=ZERO:IF D=ZERO THEN 21800 
            printMessage("A SCINILLATING SHIFTING WALL APPEARS");
            if (!inCombat) goto noCombatSpell;
            pause(SMALL_PAUSE);

            // 27605 FOR I=60 TO 79:POKE SC+373,I:NEXT I:J=J+1:IF J<FOUR THEN 27605 
            // 27607 POKE SC+332,ZERO:POKE SC+373,56 
            // 27615 PRINT "The ";M$;" is gone":GOTO 21920 
            _fs("THE % IS GONE...", mo[m]);
            printMessage(stringBuffer40);
            return 6;
        }
    }

    return 2; // should not come here!

noCombatSpell:
    printMessage("YOU JUST WASTED A COMBAT SPELL!");
    pause(SMALL_PAUSE);
    return 1;
damageSpell:
    if (!inCombat) goto noCombatSpell;
    _fi_s("IT SUFFERS % HIT POINTS", (unsigned int) tmp);
    printMessage(stringBuffer40);
    mh = mh -tmp;
    if (mh <0) return 3;
    return 1;
}


// retaken from bank 0
extern signed long int tmp_hp; // hp max # word?
extern unsigned int initSoundNo;
extern volatile unsigned int sfx_status_1;


// ch=0 -> = dead
void checkXP()
{
    // *******************************************************************
    //  Check for change of level
    // *******************************************************************
    //  Check if enough experience to go up a level
    // 18000 Q=TEN*TEN*TEN:IF EX<Q*TWO^LV THEN 18040
    // 18010 GOSUB CLWND:PRINT "You went up a level!";
    // LV=LV+ONE:J=INT(RND(ONE)*S(THREE)+ONE)
    unsigned long long int t = ULL(1000)*ULL(ULL(2)<<(lv-1));

    if (ex >= t)
    {
        printMessage("YOU WENT UP A LEVEL!");
        lv = lv +1;
        t = ULL(1000)*ULL(ULL(2)<<(lv-1));
        tmp = (signed int) (RandMax( s[CON] ) + 1);
        //  Increase hit points
        // 18015 CH=CH+J:HP=HP+J:IF EX>Q*TWO LV THEN EX=INT(Q*(TWO LV)-ONE/TWO)
        ch += tmp;
        hp += (long signed int) tmp;
        if (ex>t) ex = t-1;
        
        //  Increase spell points
        // 18017 CS=CS+LV:SU=SU+LV
        cs = cs + lv;
        su = su +lv;
        // 18020 GOSUB RSTAT:GOSUB WTCLR:PRINT "You gain ";J;" hit points":RETURN
        _fi_s("YOU GAIN % HIT POINTS", (unsigned int)tmp);
        printMessage(stringBuffer40);
        return;
    }
    
    //  Check for drop in level
    // 18040 IF LV=ONE AND EX>=ZERO THEN RETURN
    // 18050 IF EX>=Q*TWO^(LV-ONE) THEN RETURN
    if (lv >1)
        t = ULL(1000)*ULL(ULL(2)<<(lv-2));
    else t = 0;


    //    if (lv == 1) return 0;
    if (ex>=t) return;
    
    //  Decrease spell points
    // 18055 CS=CS-LV:SU=SU-LV:IF CS<ZERO THEN CS=ZERO
    if (lv>cs) cs = 0; else cs = cs -lv;
    su = su -lv;
    
    // 18060 PRINT "You go down a level!";:LV=LV-ONE:J=INT(RND(ONE)*S(THREE)+ONE)
    printMessage("YOU GO DOWN A LEVEL!");
    lv = lv -1;
    tmp = (signed int)(RandMax(s[CON])+1);
    
    //  Decrease hit points
    // 18070 CH=CH-J:HP=HP-J:GOSUB RSTAT:GOSUB WTCLR:PRINT "You lose ";J;" hit points"
    //  If hit points less then zero, then player is dead
    // 18075 IF CH>ZERO AND LV>ZERO THEN RETURN
    // 18080 GOSUB PAUSE:GOTO 9000
    if ((ch<tmp) || (lv == 0))
    {
        ch=0;
        return; // dead
    }
    ch = ch -tmp;
    hp = hp -(long signed int)tmp;
    _fi_s("YOU LOSE % HIT POINTS", (unsigned int)tmp);
    printMessage(stringBuffer40);
    return;
}

void randomXP()
{
    // / 50% of the time you should lose experience points. This line appears to have a bug, I=-I1 should be
    // I=-I to deduct experience. The way it is you I will always be zero so you won’t loose points.
    // 20100 I=INT(RND(ONE)*500*CZ+ONE):PRINT "You just ";
    
    // / Gain/lose experience points
    // 20100 I=INT(RND(ONE)*500*CZ+ONE):PRINT "You just ";
    // 20110 IF RND(ONE)>ONE/TWO THEN PRINT "lost ";:I=-I1:GOTO 20120
    // 20115 PRINT "gained ";
    // 20120 PRINT ABS(I);" experience points":EX=EX+I:GOSUB 18000:RETURN
    ltmp = (signed long int) ( UL(RandMax(cz)+1)*UL(500));
    if (RandMax(2) == 1)
    {
        // gain
        _fl_s("YOU GAINED % EXPERIENCE POINTS",  UL(ltmp));
        ex += ULL(ltmp);
    }
    else
    {
        // lose
        _fl_s("YOU LOST % EXPERIENCE POINTS", UL(ltmp));
        if (ULL(lltmp) > ex) ex = 0;
        else
        ex -= ULL(ltmp);
    }
    printMessage(stringBuffer40);
    checkXP();
}

void clearMap()
{
    for (unsigned char yy=0;yy<4;yy++)
    {
        for (unsigned char xx=0;xx<4;xx++)
        {
            screen[yy][xx] = 0xffff;
        }
    }
}

void initVars()
{
    initFP();
    initString();
    lastX=0; // joystick "lasts"
    lastY=0;
    clearMap();
    fillMap = GO_REDRAW;
    timer = ACTION_TIME;
    localTimer = ACTION_TIME;
    l = 1; // treasure level

    tmp_hp = -1;
    above = 0;
    inElevator = 0;
    elevatorY = 0;
    lightChange = 0;    
    specialAction = 0;
    initSoundNo = 0;
    sfx_status_1 = 0;

    printDungeon = 1; // 0 or 1
    m = -1; // monster number
    printEnvironment = -1;
    printCharacter = 1;
    printTreasure = -1;
    
    printfEffect = 0;
    effectTimer = 0;
    effectOffsetY = 0;
    effectOffsetX = 0;
}
