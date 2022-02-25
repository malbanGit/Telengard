#define __BANK__ 0

#include <vectrex.h>
#include <assert.h>
#include "../BothBanks.i"
#include "../globals.h"

extern void subBank1(int);
#define displayMessages() subBank1(0)


void floatError(int errno)
{
    clearMessage();
    _fi_s("FLOAT ERROR: %", (unsigned int)errno);
    printMessage(stringBuffer40);
    while (1)
    {
        Wait_Recal();
        dp_VIA_t1_cnt_lo  = 0x7f;
        Intensity_7F();
        displayMessages();
    }
}
