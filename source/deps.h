// these are temporary
// #define NO_MONSTER 1
// #define NO_TITLE 1
// #define DO_ORIGINAL_WR 1
 #define START_STRONG 1



#define DEBUG_OUT(s) \
{ \
int bb=0; \
while (1) \
{ \
    check_buttons(); \
    Wait_Recal(); \
    dp_VIA_t1_cnt_lo = 0x7f; \
    Intensity_a(0x4f); \
    Print_Str_d_org(0x0,-0x30, s); \
    if (buttons_pressed() != 0) bb=1; \
    if ((buttons_pressed() ==0) && (bb==1)) break; \
    }} 


#define SPECIAL_DRAGONBREATH 1
#define SPECIAL_BOX 2
#define SPECIAL_THRONE_MUSIC 3
#define SPECIAL_HOLY_SYMBOL 4
#define SPECIAL_PRISMATIC_WALL 5

#define SOUND_CUBE 1
#define SOUND_TELEPORT 2
#define SOUND_BOX 3
#define SOUND_DRAGON 4
#define SOUND_DEATH 5
#define SOUND_GONG 6
#define SOUND_PIT 7
#define SOUND_LIGHTNING 8
 
#define RESET0REF() dp_VIA_cntl = 0xcc;

#define GNOLL 0
#define KOBOLD 1
#define SKELETON 2
#define HOBBIT 3
#define ZOMBIE 4
#define ORC 5
#define FIGHTER 6
#define MUMMY 7
#define ELF 8
#define GHOUL 9
#define DWARF 10
#define TROLL 11
#define WRAITH 12
#define OGRE 13
#define MINOTAUR 14
#define GIANT 15
#define SPECTER 16
#define VAMPIRE 17
#define DEMON 18
#define DRAGON  19


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


#define STR 0
#define INT 1
#define WIS 2
#define CON 3
#define DEX 4
#define CHR 5

/*
Spell effects
SF(1) = Strength
SF(2) = Detect traps
SF(3) = Light
SF(4) = Protection from evil
SF(5) = Levitate
SF(6) = Invisibility

7 = fear

8 = astral walk
9 = timestop
10 = raise dead
11 = drunk / confused

STRG 1
DTRP 2
LGHT 3
PROT 4
LEVT 5
INVS 6
FEAR 7
ASTW 8
TMST 9
RSED 10
DRNK 11
*/



#define SWORD 0
#define ARMOR 1
#define SHIELD 2
#define ELVEN_CLOAK 3
#define ELVEN_BOOTS 4
#define RING_OF_REGENERATION 5
#define RING_OF_PROTECTION 6
#define SCROLL_OF_RESCUE 7
#define POTION_OF_HEALING 8
#define POTION_OF_STRENGTH 9

// Stat DISPLAY variants
// #define 11 SWORD
// #define 12 ARMOR
// #define 13 SHIELD
// #define 14 ELVN_CLK
// #define 15 ELVN_BTS
// #define 16 RING_REG
// #define 17 RING_PROT
// #define 18 SCRL_RESC
// #define 19 POT_HEAL
// #define 20 POT_STRG
