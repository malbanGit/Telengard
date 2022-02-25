#pragma once

// floating point constants
const unsigned char const FP_X0_PACKED[5] = {0x81,0x58,0x83,0x12,0x6e};         // "1.6915"
const unsigned char const FP_Y0_PACKED[5] = {0x81,0x36,0xc2,0x26,0x82};         // "1.4278"
const unsigned char const FP_Z0_PACKED[5] = {0x81,0x1f,0x83,0x7b,0x4A};         // "1.2462"
const uint_16 W0 = 4694;

// * Inn description data 
// 28120 DATA SALTY,BOLD,LOUD,OLD,GOODLY,WORTHY,LOFTY,FINE,ROCKY,AGED 
const char * const in1[]=
{
    "SALTY\x80",
    "BOLD\x80",
    "LOUD\x80",
    "OLD\x80",
    "GOODLY\x80",
    "WORTHY\x80",
    "LOFTY\x80",
    "FINE\x80",
    "ROCKY\x80",
    "AGED\x80"
};
// 28140 DATA ROAD,EYE,TOOTH,DRAGON,MUG,DEMON,WHARF,BRIDGE,MEADE,ALE 
const char * const in2[]=
{
    "ROAD\x80",
    "EYE\x80",
    "TOOTH\x80",
    "DRAGON\x80",
    "MUG\x80",
    "DEMON\x80",
    "WHARF\x80",
    "BRIDGE\x80",
    "MEADE\x80",
    "ALE\x80"
};
// 28160 DATA TAVERN,ALEHOUSE,CELLAR,CLUB,INN,HOUSE,INN,LODGE,MEADHALL,RESTHOUSE 
const char * const in3[]=
{
    "TAVERN\x80",
    "ALEHOUSE\x80",
    "CELLAR\x80",
    "CLUB\x80",
    "INN\x80",
    "HOUSE\x80",
    "INN\x80",
    "LODGE\x80",
    "MEADHALL\x80",
    "RESTHOUSE\x80"
};
