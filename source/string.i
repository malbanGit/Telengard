#pragma once

#include <vectrex.h>
#include "string.h"

// expects 0 terminated string as input
// copies string and
// replaces 0 with 0x80
__NO_INLINE void vstrcpy(char * dest, char *source)
{
    do
    {
        *(dest++) = *(source++);
    } while ((*(source) != 0) && (*(source) != (char) 0x80) );
    *dest = (char) 0x80;
}

void printMessage(char * m)
{
    if (msgLine == 3) return;
    vstrcpy(msg[msgLine], m);
    msgLine++;
}

// 0 terminated
__NO_INLINE char* removeSpaces(char *pointer)
{
    while ((*pointer != 0) && (*pointer == ' '))
    {
        char *tmpPointer = pointer;
        while (*tmpPointer != 0)
        {
            *tmpPointer = *(tmpPointer+1);
            tmpPointer++;
        }
        *tmpPointer = 0;
    }
    return pointer;
}

// with spaces in front
// result is zero terminated
// 8 bit unsigned
// 
// uses stringBuffer4 as buffer
__NO_INLINE char * itoa(unsigned int n)
{
    long digit = '0'*256+'0';
    int useSpace = 0;
    
    if (n>=200) {digit+=2*256;n-=(unsigned int)200;}
    else if (n>=100) {digit+=1*256;n-=100;}
    else {digit=' '*256+'0';useSpace = 1;}
    
    
    if (n >= 80) { n -= 80; digit += 8;} else if (n >= 40) {n -= 40; digit += 4; }
    if (n >= 20) { n -= 20; digit += 2;}
    if (n >= 10) { n -= 10; digit += 1;}
    if ((digit == ' '*256+'0') && (useSpace == 1)) digit=' '*256+' ';
    *((long *) stringBuffer4+0) = digit;
    
    *(stringBuffer4+2) = '0' + n;
    *(stringBuffer4+3) = '\x00';
    return stringBuffer4;
}

// without spaces in front
// result is zero terminated
// 8 bit unsigned
// 
// uses stringBuffer4 as buffer
char * itoa_s(unsigned int n)
{
    itoa(n);
    return removeSpaces(stringBuffer4);
}

// fs = format string
// max buf size
// '%' is used as placeholder
// place holder must exist!
char * _fs(const char *s1, const char *s2)
{
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%') 
        *(to++) = c;
    while ( (c=*(s2++)) != 0) 
        *(to++) = c;
    while ( (c=*(s1++)) != 0) 
        *(to++) = c;
    *to = '\x80';
    return stringBuffer40;
}

char * _fi_s(const char *s1, unsigned int i) 
{
    return _fs(s1,  itoa_s(i));
}	


__NO_INLINE char * _ltoa(unsigned long n, char *pointer, int zeroToSpaces)
{
    long digit = '0'*256+'0';
    int useSpace = 0;
    
    if (n >= (unsigned long int)40000) { n -= (unsigned long int)40000; digit += 4*256;}
    if (n >= (unsigned long int)20000) { n -= (unsigned long int)20000; digit += 2*256;}
    if (n >= (unsigned long int)10000) { n -= (unsigned long int)10000; digit += 1*256;}
    if (zeroToSpaces) if (digit=='0'*256+'0') {useSpace = 1;digit=' '*256+'0';}
    
    if (n >= 8000) { n -= 8000; digit += 8;} else if (n >= 4000) {n -= 4000; digit += 4;}
    if (n >= 2000) { n -= 2000; digit += 2;}
    if (n >= 1000) { n -= 1000; digit += 1;}
    if (zeroToSpaces) if ((useSpace==1) && (digit==' '*256+'0')) {digit=' '*256+' ';} else useSpace = 0;
    *((long *) pointer+0) = digit;
    digit = '0'*256+'0';
    
    if (n >= 800) { n -= 800; digit += 8*256;} else if (n >= 400) {n -= 400; digit += 4*256;}
    if (n >= 200) { n -= 200; digit += 2*256;}
    if (n >= 100) { n -= 100; digit += 1*256;}
    if (zeroToSpaces) if ((useSpace==1) && (digit=='0'*256+'0')) {digit=' '*256+'0';} else useSpace = 0;
    
    if (n >= 80) { n -= 80; digit += 8;} else if (n >= 40) {n -= 40; digit += 4;}
    if (n >= 20) { n -= 20; digit += 2;}
    if (n >= 10) { n -= 10; digit += 1;}
    if (zeroToSpaces) if ((useSpace==1) && (digit==' '*256+'0')) {digit=' '*256+' ';}else useSpace = 0;
    *((long *) pointer+1) = digit; // +1, since we use a long pointer, thus +1 = two bytes
    
    *(pointer+4) = '0' + (char)n;
    *(pointer+5) = 0;
    return pointer;
}

// with spaces in front
// result is zero terminated
// 16 bit unsigned
// 
// uses stringBuffer6 as buffer
char * ltoa(unsigned long n)
{
    return _ltoa(n, stringBuffer6, 1);
}

unsigned int Rand()
{
    _x++;
    _a = (_a^_c^_x);
    _b = (_b+_a);
    _c = ((_c+(_b>>1))^_a);
    return _c;
}

unsigned int RandMax(unsigned int m)
{
    if (m==0) return 0;
    return Rand()%m;
}


// format string (unsigned long int)
// expects one '%'
// will be filled in order of occurance with the parameters
// integer spaces are removed
// 
// integer conversion uses stringBuffer6 
// result to stringBuffer40
void _fl_s(const char *s1, const unsigned long i)
{
    ltoa(i);
    removeSpaces(stringBuffer6);
    char *to = stringBuffer40;
    char *s2 = stringBuffer6;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    while ( (c=*(s2++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}


// 2,147,483,647
// 12 stringBuffer12
//
// with spaces in front
// result is zero terminated
// 32 bit unsigned
// 
// uses stringBuffer12 as buffer
__NO_INLINE char * _lltoa(unsigned long long n, char *pointer)
{
    long digit = '0'*256+'0';
    int useSpace = 0;

//    if (n >= (unsigned long long int)4000000000) { n -= (unsigned long long int)4000000000; digit += 4*256;}
    if (n >= (unsigned long long int)2000000000) { n -= (unsigned long long int)2000000000; digit += 2*256;}
    if (n >= (unsigned long long int)1000000000) { n -= (unsigned long long int)1000000000; digit += 1*256;}
    if (digit=='0'*256+'0') {useSpace = 1;digit=' '*256+'0';}
    if (n >= (unsigned long long int)800000000) { n -= (unsigned long long int)800000000; digit += 8;} 
    else 
    if (n >= (unsigned long long int)400000000) { n -= (unsigned long long int)400000000; digit += 4;}
    if (n >= (unsigned long long int)200000000) { n -= (unsigned long long int)200000000; digit += 2;}
    if (n >= (unsigned long long int)100000000) { n -= (unsigned long long int)100000000; digit += 1;}
    if ((useSpace==1) && (digit==' '*256+'0')) {useSpace = 1;digit=' '*256+' ';} else useSpace = 0;
    *((long *) pointer+0) = digit;
    digit = '0'*256+'0';

    if (n >= (unsigned long long int)80000000) { n -= (unsigned long long int)80000000; digit += 8*256;} 
    else 
    if (n >= (unsigned long long int)40000000) { n -= (unsigned long long int)40000000; digit += 4*256;}
    if (n >= (unsigned long long int)20000000) { n -= (unsigned long long int)20000000; digit += 2*256;}
    if (n >= (unsigned long long int)10000000) { n -= (unsigned long long int)10000000; digit += 1*256;}
    if ((useSpace==1) && (digit=='0'*256+'0')) {useSpace = 1;digit=' '*256+'0';}else useSpace = 0;
    if (n >= (unsigned long long int)8000000) { n -= (unsigned long long int)8000000; digit += 8;} 
    else 
    if (n >= (unsigned long long int)4000000) { n -= (unsigned long long int)4000000; digit += 4;}
    if (n >= (unsigned long long int)2000000) { n -= (unsigned long long int)2000000; digit += 2;}
    if (n >= (unsigned long long int)1000000) { n -= (unsigned long long int)1000000; digit += 1;}
    if ((useSpace==1) && (digit==' '*256+'0')) {useSpace = 1;digit=' '*256+' ';}else useSpace = 0;
    *((long *) pointer+1) = digit;
    digit = '0'*256+'0';

    if (n >= (unsigned long long int)800000) { n -= (unsigned long long int)800000; digit += 8*256;} 
    else 
    if (n >= (unsigned long long int)400000) { n -= (unsigned long long int)400000; digit += 4*256;}
    if (n >= (unsigned long long int)200000) { n -= (unsigned long long int)200000; digit += 2*256;}
    if (n >= (unsigned long long int)100000) { n -= (unsigned long long int)100000; digit += 1*256;}
    if ((useSpace==1) && (digit=='0'*256+'0')) {useSpace = 1;digit=' '*256+'0';}else useSpace = 0;
    if (n >= (unsigned long long int)80000) { n -= (unsigned long long int)80000; digit += 8;} 
    else 
    if (n >= (unsigned long long int)40000) { n -= (unsigned long long int)40000; digit += 4;}
    if (n >= (unsigned long long int)20000) { n -= (unsigned long long int)20000; digit += 2;}
    if (n >= (unsigned long long int)10000) { n -= (unsigned long long int)10000; digit += 1;}
    if ((useSpace==1) && (digit==' '*256+'0')) {useSpace = 1;digit=' '*256+' ';}else useSpace = 0;
    *((long *) pointer+2) = digit;
    digit = '0'*256+'0';

    if (n >= (unsigned long long int)8000) { n -= (unsigned long long int)8000; digit += 8*256;} 
    else 
    if (n >= (unsigned long long int)4000) { n -= (unsigned long long int)4000; digit += 4*256;}
    if (n >= (unsigned long long int)2000) { n -= (unsigned long long int)2000; digit += 2*256;}
    if (n >= (unsigned long long int)1000) { n -= (unsigned long long int)1000; digit += 1*256;}
    if ((useSpace==1) && (digit=='0'*256+'0'))  {useSpace = 1;digit=' '*256+'0';}else useSpace = 0;
    if (n >= (unsigned long long int)800) { n -= (unsigned long long int)800; digit += 8;} 
    else 
    if (n >= (unsigned long long int)400) { n -= (unsigned long long int)400; digit += 4;}
    if (n >= (unsigned long long int)200) { n -= (unsigned long long int)200; digit += 2;}
    if (n >= (unsigned long long int)100) { n -= (unsigned long long int)100; digit += 1;}
    if ((useSpace==1) && (digit==' '*256+'0')) {useSpace = 1;digit=' '*256+' ';}else useSpace = 0;
    *((long *) pointer+3) = digit;
    digit = '0'*256+'0';
    
    if (n >= (unsigned long long int)80) { n -= (unsigned long long int)80; digit += 8*256;} 
    else 
    if (n >= (unsigned long long int)40) { n -= (unsigned long long int)40; digit += 4*256;}
    if (n >= (unsigned long long int)20) { n -= (unsigned long long int)20; digit += 2*256;}
    if (n >= (unsigned long long int)10) { n -= (unsigned long long int)10; digit += 1*256;}
    if ((useSpace==1) && (digit=='0'*256+'0'))  {useSpace = 1;digit=' '*256+'0';}else useSpace = 0;
    digit += (char)n;
    *((long *) pointer+4) = digit;
    *(pointer+10) = 0;

    return pointer;
}
char * lltoa(unsigned long long n)
{
    return _lltoa(n, stringBuffer12);
}

// 2,147,483,647
// 12 stringBuffer12
//
// without spaces in front
// result is zero terminated
// 32 bit unsigned
// 
// uses stringBuffer12 as buffer
char * lltoa_s(unsigned long long n)
{
    lltoa(n);
    return removeSpaces(stringBuffer12);
}


// format string (unsigned long long int)
// expects one '%'
// will be filled in order of occurance with the parameters
// integer spaces are removed
// 
// integer conversion uses stringBuffer12 
// result to stringBuffer40
__NO_INLINE void _fll_s(const char *s1, const unsigned long long int i)
{
    lltoa(i);
    removeSpaces(stringBuffer12);

    char *to = stringBuffer40;
    char *s2 = stringBuffer12;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;

    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}


#if __BANK__ == 0

void saveSeed()
{
    __x = _x;
    __a = _a;
    __b = _b;
    __c = _c;
}

void restoreSeed()
{
    _x = __x;
    _a = __a;
    _b = __b;
    _c = __c;
}


// format string (string, string, string)
// expects three '%'
// will be filled in order of occurance with the string parameters
// 
// result to stringBuffer40
void _fsss(const char *s1, const char *s2, const char *s3, const char *s4)
{
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s2++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s3++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s4++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

#endif

#if __BANK__ == 1

void setRandSeedNP()
{
    _a = 73-_x;
    _b = ((unsigned int) 211)-_x;
    _c = ((unsigned int) 129)-_x;

    _x++;
    _a = (_a^_c^_x);
    _b = (_b+_a);
    _c = ((_c+(_b>>1))^_a);
}
void initString()
{
    setRandSeed(11);
    clearMessage();
    _YC=0;
    _XC=-0x70;
}


// _s shorten the integer to digits
// _s_s shorten the integer to digits AND signed
char * _fi(const char *s1, unsigned int i) 
{
    return _fs(s1,  itoa(i));
}
char * _fi_s_s(const char *s1, signed int i) 
{
    return _fs(s1, itoa_s_s(i));
}	

// without spaces in front
// result is zero terminated
// 8 bit signed
//
// uses stringBuffer6 because of additional sign!
__NO_INLINE char * itoa_s_s(signed int n)
{
    int sign=0;
    if (n<0)
    {
        n = -n;
        sign =1;
    }
    long digit = '0'*256+'0';
    int useSpace = 0;
    
    if (n>=100) {digit+=1*256;n-=100;}
    else {digit=' '*256+'0';useSpace = 1;}
    
    
    if (n >= 80) { n -= 80; digit += 8;} else if (n >= 40) {n -= 40; digit += 4; }
    if (n >= 20) { n -= 20; digit += 2;}
    if (n >= 10) { n -= 10; digit += 1;}
    if ((digit == ' '*256+'0') && (useSpace == 1)) digit=' '*256+' ';
    *((long *) stringBuffer6+0) = digit;
    
    *(stringBuffer6+2) = '0' + (unsigned int)n;
    *(stringBuffer6+3) = '\x00';
    removeSpaces(stringBuffer6);

    *(stringBuffer6+4) = *(stringBuffer6+3);
    *(stringBuffer6+3) = *(stringBuffer6+2);
    *(stringBuffer6+2) = *(stringBuffer6+1);
    *(stringBuffer6+1) = *(stringBuffer6+0);
    if (sign) *(stringBuffer6+0) = '-';
    else *(stringBuffer6+0) = '+';
    return stringBuffer6;
}

// without spaces in front
// result is zero terminated
// 16 bit unsigned
// 
// uses stringBuffer6 as buffer
char * ltoa_s(unsigned long n)
{
    ltoa(n);
    return removeSpaces(stringBuffer6);
}

// format string (string, string)
// expects two '%'
// will be filled in order of occurance with the string parameters
// 
// result to stringBuffer40
__NO_INLINE void _fss(const char *s1, const char *s2, const char *s3)
{
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s3++)) != 0)
    *(to++) = c;
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

// format string (unsigned int, string)
// expects two '%'
// will be filled in order of occurance with the parameters
// integer spaces are removed
// 
// integer conversion uses stringBuffer4 
// result to stringBuffer40
__NO_INLINE void _fsi2_s(const char *s1, const unsigned int i, const char *s2)
{
    itoa_s(i);
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    *(to++) = *(stringBuffer4+0);
    if (*(stringBuffer4+1) != 0) *(to++) = *(stringBuffer4+1);
    if (*(stringBuffer4+2) != 0) *(to++) = *(stringBuffer4+2);
    
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

// format string (string, unsigned int)
// expects two '%'
// will be filled in order of occurance with the parameters
// integer spaces are removed
// 
// integer conversion uses stringBuffer4 
// result to stringBuffer40
__NO_INLINE void _fsi_s(const char *s1, const char *s2, const unsigned int i)
{
    itoa_s(i);
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    *(to++) = *(stringBuffer4+0);
    if (*(stringBuffer4+1) != 0) *(to++) = *(stringBuffer4+1);
    if (*(stringBuffer4+2) != 0) *(to++) = *(stringBuffer4+2);
    
    while ( (c=*(s1++)) != 0)
        *(to++) = c;
    *to = '\x80';
}

// format string (unsigned int, string)
// expects two '%'
// will be filled in order of occurance with the parameters
// integer spaces are not removed
// 
// integer conversion uses stringBuffer4 
// result to stringBuffer40
__NO_INLINE void _fsi2(const char *s1, const unsigned int i, const char *s2)
{
    itoa(i);
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    *(to++) = *(stringBuffer4+0);
    *(to++) = *(stringBuffer4+1);
    *(to++) = *(stringBuffer4+2);
    
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

// format string (string, unsigned int)
// expects two '%'
// will be filled in order of occurance with the parameters
// integer spaces are not removed
// 
// integer conversion uses stringBuffer4 
// result to stringBuffer40
__NO_INLINE void _fsi(const char *s1, const char *s2, const unsigned int i)
{
    itoa(i);
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    *(to++) = *(stringBuffer4+0);
    *(to++) = *(stringBuffer4+1);
    *(to++) = *(stringBuffer4+2);
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

// format string (unsigned long int)
// expects one '%'
// will be filled in order of occurance with the parameters
// 
// integer conversion uses stringBuffer6 
// result to stringBuffer40
__NO_INLINE void _fl(const char *s1, const unsigned long i)
{
    ltoa(i);
    char *to = stringBuffer40;
    char *s2 = stringBuffer6;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    while ( (c=*(s2++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

__NO_INLINE void _fl_l_s(const char *s1, const unsigned long i1, const unsigned long i2)
{
    _ltoa(i1, stringBuffer12,1);
    removeSpaces(stringBuffer12);
    _ltoa(i2, stringBufferExtra,1);
    removeSpaces(stringBufferExtra);

    char *to = stringBuffer40;
    char *from = stringBuffer12;
    char *from2 = stringBufferExtra;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;

    while ( (c=*(from++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != '%')
    *(to++) = c;

    while ( (c=*(from2++)) != 0)
    *(to++) = c;

    while ( (c=*(s1++)) != 0)
    *(to++) = c;

    *to = '\x80';
}

// format string (unsigned long long int)
// expects one '%'
// will be filled in order of occurance with the parameters
// integer spaces are not removed
// 
// integer conversion uses stringBuffer12 
// result to stringBuffer40
__NO_INLINE void _fll(const char *s1, const unsigned long long int i)
{
    lltoa(i);
    char *to = stringBuffer40;
    char *from = stringBuffer12;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;

    while ( (c=*(from++)) != 0)
    *(to++) = c;
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
}

// first string, than i
void printfsi(const char *s1, const char *s2, const unsigned int i)
{
    itoa(i);
    char *to = stringBuffer40;
    char c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    while ( (c=*(s2++)) != 0)
    *(to++) = c;
    while ( (c=*(s1++)) != '%')
    *(to++) = c;
    
    *(to++) = *(stringBuffer4+0);
    *(to++) = *(stringBuffer4+1);
    *(to++) = *(stringBuffer4+2);
    
    while ( (c=*(s1++)) != 0)
    *(to++) = c;
    *to = '\x80';
    printDirect(stringBuffer40);
}

unsigned int vstrlen(char *s)
{
    unsigned int t=0;
    while ((*(s) != 0) && (*(s) != (char) 0x80) )
    {
        t++;
        s++;
    }
    return t;
}

void exchange0with80(char *s)
{
    while ((*s != 0) && (*s != 0x80)) s++;
    *s = '\x80';
}    

void displayMessages()
{
    dp_VIA_t1_cnt_lo = 0x7f; // scale

    Vec_Text_Width = 0x28;
    Intensity_a(0x5f); // set intensity of vector beam...
    _YC = -0x54;

    for (int i=0; i<msgLine; i++)
    {
        printDirect(msg[i]);
    }
}

// same as above but returns a long
// but NOT! long number range!
unsigned long int lRandMax(unsigned int m)
{
    return (unsigned long int ) RandMax(m);
}


#endif

