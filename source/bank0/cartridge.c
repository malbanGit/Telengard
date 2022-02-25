// ***************************************************************************
// cartridge
// ***************************************************************************
// This file was developed by Prof. Dr. Peer Johannsen as part of the 
// "Retro-Programming" and "Advanced C Programming" class at
// Pforzheim University, Germany.
// 
// It can freely be used, but at one's own risk and for non-commercial
// purposes only. Please respect the copyright and credit the origin of
// this file.
//
// Feedback, suggestions and bug-reports are welcome and can be sent to:
// peer.johannsen@pforzheim-university.de
// ---------------------------------------------------------------------------

#include "../cartridge.i"

extern void titleScreen();
//extern void initVars();
extern void generateDisplayMap();
extern void drawMap();
//extern void checkXP();
//extern void randomXP();
//extern void setRandSeedNP();
extern void displayInn();
extern void initFP();

const void* const bankFunctions[NUMBER_OF_FUNCTIONS] __attribute__((section(".bankswitch.data"), used)) = 
{
    (void*)titleScreen,
    (void*)initFP,
    (void*)generateDisplayMap,
    (void*)drawMap,
    (void*)1,//checkXP,
    (void*)1,//randomXP,
    (void*)1,//setRandSeedNP,
    (void*)displayInn,
    (void*)1,
    (void*)1
};
