#pragma once

// ROM // accessed from 1 to 20
const char * const mo[]=
{
    "GNOLL",     // 0
    "KOBOLD",// 1
    "SKELETON",// 2
    "HOBBIT",// 3
    "ZOMBIE",// 4
    "ORC",// 5
    "FIGHTER",// 6
    "MUMMY",// 7
    "ELF",// 8
    "GHOUL",// 9
    "DWARF",// 10
    "TROLL",// 11
    "WRAITH",// 12
    "OGRE",// 13
    "MINOTAUR",// 14
    "GIANT",// 15
    "SPECTER",// 16
    "VAMPIRE",// 17
    "DEMON",// 18
    "DRAGON"// 19
};


// ROM
// accessed from 0 to 5
const char * const stats[]=
{
    "STR",
    "INT",
    "WIS",
    "CON",
    "DEX",
    "CHR"
};

const char * const items[]=
{
    "SWORD",
    "ARMOR",
    "SHILED",
    "ELVEN CLOAK",
    "ELVEN BOOTS",
    "RING OF REGENERATION",
    "RING OF PROTECTION",
    "SCROLL OF RESCUE",
    "POTION OF HEALING",
    "POTION OF STRENGTH"
};


//  Return item name for item number in MI 
// 28210 DATA SWORD,ARMOR,SHIELD,ELVEN CLOAK,ELVEN BOOTS,RING OF REGENERATION 
// 28215 DATA RING OF PROTECTION,SCROLL OF RESCUE,POTION OF HEALING,POTION OF STRENGTH 
// 28310 DATA SWORD,ARMOR,SHIELD,ELVN CLK,ELVN BTS,RING REG,RING PROT,SCRL RESC,POT HEAL,POT STRG 
// 



// Level 1 spells 
// 28010 DATA MAGIC MISSILE,SLEEP,CURE LIGHT WOUNDS,LIGHT,TURN UNDEAD,PROT/EVIL 
const char * const spellNames1[] = 
{
    "MAGIC MISSILE\x80",
    "SLEEP\x80",
    "CURE LIGHT WOUNDS\x80",
    "LIGHT\x80",
    "TURN UNDEAD\x80",
    "PROT/EVIL\x80"
};
// Level 2 spells 
// 28015 DATA WEB,LEVITATE,CAUSE LIGHT WNDS,DETECT TRAPS,CHARM,STRENGTH 
const char *const spellNames2[] = 
{
    "WEB\x80",
    "LEVITATE\x80",
    "CAUSE LIGHT WOUNDS\x80",
    "DETECT TRAPS\x80",
    "CHARM\x80",
    "STRENGTH\x80"
};
// Level 3 spells 
// 28020 DATA LIGHTNING BOLT,CURE SERIOUS WNDS,CONTINUAL 
// LIGHT,INVISIBILITY,HOLD MONSTER,PHANTSML FORCES
const char *const spellNames3[] = 
{
    "LIGHTNING BOLT\x80",
    "CURE SERIOUS WOUNDS\x80",
    "CONTINUAL LIGHT\x80",
    "INVISIBILITY\x80",
    "HOLD MONSTER\x80",
    "PHANTASMAL FORCES\x80"
};
// Level 4 spells 
// 28025 DATA PASS WALL,FIREBALL,CAUSE SERIOUS WND,FLESH TO STONE,FEAR,FINGER OF DEATH
const char *const spellNames4[] = 
{
    "PASS WALL\x80",
    "FIREBALL\x80",
    "CAUSE SERIOUS WOUNDS\x80",
    "FLESH TO STONE\x80",
    "FEAR\x80",
    "FINGER OF DEATH\x80"
};
// Level 5 spells 
// 28030 DATA TELEPORT,ASTRAL WALK,POWER WORD KILL,ICE STORM,WALL OF FIRE,PLAGUE 
const char *const spellNames5[] = 
{
    "TELEPORT\x80",
    "ASTRAL WALK\x80",
    "POWER WORD KILL\x80",
    "ICE STORM\x80",
    "WALL OF FIRE\x80",
    "PLAGUE\x80"
};
// Level 6 spells 
// 28035 DATA TIME STOP,RAISE DEAD,HOLY SYMBOL,WORD OF RECALL,RESTORATION,PRISMATIC WALL 
const char *const spellNames6[] = 
{
    "TIME STOP\x80",
    "RAISE DEAD\x80",
    "HOLY SYMBOL\x80",
    "WORD OF RECALL\x80",
    "RESTORATION\x80",
    "PRISMATIC WALL\x80"
};
const char ** const spellNames[] = 
{
    (const char **const ) spellNames1,
    (const char **const ) spellNames2,
    (const char **const ) spellNames3,
    (const char **const ) spellNames4,
    (const char **const ) spellNames5,
    (const char **const ) spellNames6
};

const char *const treasure[] = 
{
    "REFUSE",
    "SILVER",
    "GOLD",
    "GEMS",
    "JEWELS"
};

const char * const fountain[]=
{
    "WHITE",
    "GREEN",
    "CLEAR",
    "RED",
    "BLACK"
};

const char * const boxColors[]=
{
    "RED\x80",
    "GREEN\x80",
    "YELLOW\x80",
    "BLUE\x80"
};

const char *const environment_string[] = 
{
    "NONE",
    "STAIR",
    "PIT",
    "TELEPORT",
    "STAIR",
    "ALTAR",

    "FOUNTAIN",
    "CUBE",
    "THRONE",
    "BOX"
};
