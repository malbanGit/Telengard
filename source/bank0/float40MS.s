 .module floating40Bit.s
 .area .text

; uses 50 bytes of RAM

; This file can be converted with Vide to be gcc assembler compatible!
; and thus can be used directly with "C" (gcc6809)
;
; All internal floating point stuff is based on Microsoft BASIC for 6809.
; One source I found: https://github.com/jefftranter/6809/tree/master/sbc/exbasrom
;
; RAM needed:
; except String buffer - needs 48 bytes of storage (can probably be reduced a little bit)
; mainly 2 internal FP representations
; plus another 3 for "scratch" purposes
;
; 40 bits float format:
; 8 bits exponent (if highest bit set, fp number >=1)
; 32 bit mantissa
; highest bit of mantissa is sign bit
; and allways interpreted as "1" for mantissa
; 0 is positive, 1 is negative
; EEEE EEEE SMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM
;
; ERROR handling is not implmented!!!
; if an error occurs this might likely crash
; this is due to the fact that I jump to the error handler and simply "return"
; regardless of the sub function I may be in!
; (but this could easily be fixed... I just don't need it (yet))
;
; functions avaiable from C
;void initFP(); // must be called once!
;void subF(unsigned char *subFrom, unsigned char *subWhat, unsigned char *out);
;void addF(unsigned char *add1, unsigned char *add2, unsigned char *out);
;void mulF(unsigned char *mul1, unsigned char *mul2, unsigned char *out);
;void intF(unsigned char *in, unsigned char *out);
;void mulIF(unsigned long int mul1, unsigned char *mul2, unsigned char *out);
;void addIF(unsigned long int add1, unsigned char *add2, unsigned char *out);
;unsigned long int toInt(unsigned char *in);
;void fToStr(unsigned char *f, unsigned char *buffer);
;
; (I did not need "div" functions yet - but they can easily be derived from the below listed "internal" functions)
;
; Except for the string buffer all 
; unsigned char * 
; variables are 5 byte of unsigned char (40 bit)
; and these represent "packed" floating point numbers
;
; based on "internal" functions
; atoF0(y)
; F0toa(u) U = StringBuffer; destroys F0; buffer 0 terminated
; packedToF0(x)
; packedToF1(x)
; F0toF1()
; F1toF0()
; divF1byF0() result in _FPA0
; mulF0x(x) result in _FPA0
; subF0From(x) result in _FPA0
; addF0To(x) result in _FPA0
; mulF0F1() result in _FPA0
; addF0ToF1() result in _FPA0
; subF0FromF1() result in _FPA0
; F0ToPacked result in _FPA0
; F0toXPacked(x)
; DToF0 convert integer in D to float
; F0ToD convert integer parts from float to D
;
; insert your variables (RAM usage) in the BSS section
                    .area .bss      


; Vars moved to "global"


;STRBUF              RMB      41                           ; STRING BUFFER 
SPACE               =      0x20                          ; SPACE (BLANK) 
; PSEUDO OPS
SKP2                =      0x8C                          ; OP CODE OF CMPX # - SKIP TWO BYTES 
                    .area .text    
;// TODO!!!! 
 .globl ERROR_HANDLER
ERROR_HANDLER: 
 .globl SYNTAX_ERROR
SYNTAX_ERROR: 
 jmp _floatError
                    rts                                   ; this might lead to errors, because we don't clean the stack! 
; ERROR MESSAGES AND THEIR NUMBERS AS USED INTERNALLY
;LABAF     FCC  "NF"           ; 0 NEXT WITHOUT FOR
;          FCC  "SN"           ; 1 SYNTAX ERROR
;          FCC  "RG"           ; 2 RETURN WITHOUT GOSUB
;          FCC  "OD"           ; 3 OUT OF DATA
;          FCC  "FC"           ; 4 ILLEGAL FUNCTION CALL
;          FCC  "OV"           ; 5 OVERFLOW
;          FCC  "OM"           ; 6 OUT OF MEMORY
;          FCC  "UL"           ; 7 UNDEFINED LINE NUMBER
;          FCC  "BS"           ; 8 BAD SUBSCRIPT
;          FCC  "DD"           ; 9 REDIMENSIONED ARRAY
;          FCC  "/0"           ; 10 DIVISION BY ZERO
;          FCC  "ID"           ; 11 ILLEGAL DIRECT STATEMENT
;          FCC  "TM"           ; 12 TYPE MISMATCH
;          FCC  "OS"           ; 13 OUT OF STRING SPACE
;          FCC  "LS"           ; 14 STRING TOO LONG
;          FCC  "ST"           ; 15 STRING FORMULA TOO COMPLEX
;          FCC  "CN"           ; 16 CAN'T CONTINUE
;          FCC  "FD"           ; 17 BAD FILE DATA
;          FCC  "AO"           ; 18 FILE ALREADY OPEN
;          FCC  "DN"           ; 19 DEVICE NUMBER ERROR
;          FCC  "IO"           ; 20 I/O ERROR
;          FCC  "FM"           ; 21 BAD FILE MODE
;          FCC  "NO"           ; 22 FILE NOT OPEN
;          FCC  "IE"           ; 23 INPUT PAST END OF FILE
;          FCC  "DS"           ; 24 DIRECT STATEMENT IN FILE
;* ADDITIONAL ERROR MESSAGES ADDED BY EXTENDED BASIC
;L890B     FCC  "UF"           ; 25 UNDEFINED FUNCTION (FN) CALL
;L890D     FCC  "NE"           ; 26 FILE NOT FOUND



;----------------------
; "C" callable
;----------------------
 .globl _initFP
_initFP: 
                    clr      _FPCARY                       ; this must be initialized before first FP usage 
                    rts      

; zero terminated string
; fToStr(unsigned char [] float, to unsigned char [] buffer)
 .globl _fToStr
_fToStr: 
                    jsr      packedToF0 
                    ldu      2,s 
                    jmp      F0toa 
 .globl _fToStr2
_fToStr2: 
                    leau      ,x 
                    jmp      F0toa 

; mulIF(signed int16, unsigned char [] pointer1, to unsigned char [] pointer2)
 .globl _mulIF
_mulIF: 
                    tfr      x,d 
                    bsr      DToF0                        ;convert integer in D to float 
                    ldx      2,s 
                    jsr      mulF0x                       ; (x) result in _FPA0 
                    ldx      4,s 
                    jmp      F0toXPacked                  ; 

; mulF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
 .globl _mulF
_mulF: 
                    jsr      packedToF0 
                    ldx      2,s 
                    jsr      mulF0x 
                    ldx      4,s 
                    jmp      F0toXPacked 

; addF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
 .globl _addF
_addF: 
                    jsr      packedToF0 
                    ldx      2,s 
                    jsr      addF0To 
                    ldx      4,s 
                    jmp      F0toXPacked 

; addF(signed int16, unsigned char [] pointer1, to unsigned char [] pointer2)
 .globl _addIF
_addIF: 
                    tfr      x,d 
                    bsr      DToF0                        ;convert integer in D to float 
                    ldx      2,s 
                    jsr      addF0To 
                    ldx      4,s 
                    jmp      F0toXPacked 

; pointer3 = pointer1 - pointer2
; subF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
 .globl _subF
_subF: 
                    jsr      packedToF1 
                    ldx      2,s 
                    jsr      packedToF0 
                    lbsr      subF0FromF1 
                    ldx      4,s 
                    bra      F0toXPacked 

; intFF(to unsigned char [] pointer1, to unsigned char [] pointer2)
 .globl _intF
_intF: 
 jsr      packedToF0 
 jsr _toInt2
                    ldx      2,s 
                    bra      F0toXPacked 


 

; obviously only makes sense if the result of the float is less then 65536
;int16 bit from F: x = toInt(to unsigned char [] pointer1)
 .globl _toInt
_toInt: 
                    jsr      packedToF0 
                    bsr      F0ToD 
                    tfr      d,x 
                    rts      


;//////////////////////////////////////////////////
; "internal" functions follow
; other interna functions are "relabled" MS BASIC functions
; see below
;//////////////////////////////////////////////////
; always signed!
; 16 bit
 .globl DToF0
DToF0: 
                    std      _FPA0 
                    LDB      #0x88+8                       ; EXPONENT REQUIRED IF _FPA0 IS TO BE AN INTEGER 
                                                          ; this is for CARRY flag only - which is tested later on! 
                    LDA      _FPA0                         ; GET MS BYTE OF MANTISSA 
                    SUBA     #0x80                         ; SET CARRY IF POSITIVE MANTISSA 
                    STB      _FP0EXP                       ; SAVE EXPONENT 
                    LDD      #0                           ; * ZERO OUT ACCD AND 
                    STD      _FPA0+2                       ; * BOTTOM HALF OF _FPA0 
                    STA      _FPSBYT                       ; CLEAR SUB BYTE 
                    STA      _FP0SGN                       ; CLEAR SIGN OF _FPA0 MANTISSA 
                    JMP      LBA18                        ; GO NORMALIZE _FPA0 

LB3DF:     .byte  0x90,0x80,0x00,0x00,0x00 ; * FLOATING POINT -32768

 .globl F0ToD
F0ToD: 
;                    jsr      LBCC8 
;                    ldd      _FPA0+2 
;                    rts      
INTCNV:
          LDA  _FP0EXP         ; GET FPA0 EXPONENT
          CMPA #0x90           ; * COMPARE TO 32768 - LARGEST INTEGER EXPONENT AND
          BCS  LB3FE          ; * BRANCH IF FPA0 < 32768
          LDX  #LB3DF         ; POINT X TO FP VALUE OF -32768
          JSR  LBC96          ; COMPARE -32768 TO FPA0
          lBNE  LB44A
LB3FE:
          JSR  LBCC8          ; CONVERT FPA0 TO A TWO BYTE INTEGER
          LDD  _FPA0+2         ; GET THE INTEGER
          RTS


LB44A:
     LDB  #4*2           ; 'ILLEGAL FUNCTION CALL'
     jmp ERROR_HANDLER          ; 'FC' ERROR IF NOT =






























;------------------------------
; MICROSOFT BASIC routines follow!
;------------------------------
; this "simulates" a BASIC input queue
; and is used when converting Str to float
 .globl GETCCH
GETCCH: 
 .globl GETNCH
GETNCH: 
                    lda      ,y+ 
; SET CARRY IF NUMERIC - RETURN WITH
; ZERO FLAG SET IF ACCA = 0 OR 3A(:) - END
; OF BASIC LINE OR SUB LINE
 .globl BROMHK
BROMHK: 
                    CMPA     # '9+1                      ; IS THIS CHARACTER >=(ASCII 9)+1?
                    BHS      LAA28                        ; BRANCH IF > 9; Z SET IF = COLON 
 .globl LAA24
LAA24: 
                    SUBA     # '0                        ; * SET CARRY IF
                    SUBA     #- '0                       ; * CHARACTER > ASCII 0
 .globl RTS0
RTS0: 
 .globl LAA28
LAA28:               RTS      

; SET CARRY IF NOT UPPER CASE ALPHA
 .globl LB3A2
LB3A2: 
                    CMPA     # 'A            ; * CARRY SET IF < 'A
                    BCS      LB3AA                        ; * 
                    SUBA     # 'Z+1                      ; =
;                   *        SUBA #-( 'Z+1)       ; = CARRY CLEAR IF <= 'Z'
                    .byte      0x80,0xA5 
 .globl LB3AA
LB3AA:               RTS      

; FLOATING POINT MATH PACKAGE
; converts _FPA0 to a packed representation
; uses FPA as target address
 .globl F0ToPacked
F0ToPacked: 
                    ldx      #_FPA0-1 
; uses X as target pointer
 .globl F0toXPacked
F0toXPacked: 
                    lda      _FP0EXP 
                    sta      ,x 
                    ldb      _FPA0 
                    lda      _FP0SGN                       ; load sign 
                    bmi      negative                     ; if negative the mantisse should be ok with a set high bit 
                    andb     #0x7f                         ; remove highest bit 
 .globl negative
negative: 
                    stb      1,x                          ; and save 
                    ldd      _FPA0+1 
                    std      2,x                          ; 
                    lda      _FPA0+3 
                    sta      4,x                          ; 
                    rts      

; ADD .5 TO _FPA0
 .globl LB9B4
LB9B4:               LDX      #LBEC0                       ; FLOATING POINT CONSTANT (.5) 
                    BRA      LB9C2                        ; ADD .5 TO _FPA0 

 .globl subF0FromF1
subF0FromF1: 
                    LDA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
                    LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    bra      LB9BC 

; SUBTRACT _FPA0 FROM FP NUMBER POINTED
; TO BY (X), LEAVE RESULT IN _FPA0
 .globl subF0From
subF0From: 
 .globl LB9B9
LB9B9:               JSR      LBB2F                        ; COPY PACKED FP DATA FROM (X) TO _FPA1 
; ARITHMETIC OPERATION (-) JUMPS HERE - SUBTRACT _FPA0 FROM _FPA1 (ENTER
; WITH EXPONENT OF _FPA0 IN ACCB AND EXPONENT OF _FPA1 IN ACCA)
 .globl LB9BC
LB9BC:               COM      _FP0SGN                       ; CHANGE MANTISSA SIGN OF _FPA0 
                    COM      _RESSGN                       ; REVERSE RESULT SIGN FLAG 
                    BRA      LB9C5                        ; GO ADD _FPA1 AND _FPA0 

 .globl addF0toF1
addF0toF1: 
                    LDA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
                    LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    bra      LB9C5 

; ADD FP NUMBER POINTED TO BY
; (X) TO _FPA0 - LEAVE RESULT IN _FPA0
 .globl addF0To
addF0To: 
 .globl LB9C2
LB9C2:               JSR      LBB2F                        ; UNPACK PACKED FP DATA FROM (X) TO 
;         _FPA1                                            ; RETURN EXPONENT OF _FPA1 IN ACCA
; ARITHMETIC OPERATION (+) JUMPS HERE - ADD _FPA0 TO
 .globl LB9C5
LB9C5:               TSTB                                  ; CHECK EXPONENT OF _FPA0 
                    LBEQ     LBC4A                        ; COPY _FPA1 TO _FPA0 IF _FPA0 = 
                    LDX      #_FP1EXP                      ; POINT X TO _FPA1 
 .globl LB9CD
LB9CD:               TFR      A,B                          ; PUT EXPONENT OF _FPA1 INTO ACCB 
                    TSTB                                  ; CHECK EXPONENT 
                    BEQ      RTS0                         ;LBA3E ; RETURN IF EXPONENT = 0 (ADDING 0 TO _FPA0) 
                    SUBB     _FP0EXP                       ; SUBTRACT EXPONENT OF _FPA0 FROM EXPONENT OF _FPA1 
                    LBEQ     LBA3F                        ; BRANCH IF EXPONENTS ARE EQUAL 
                    BCS      LB9E2                        ; BRANCH IF EXPONENT _FPA0 > _FPA1 
                    STA      _FP0EXP                       ; REPLACE _FPA0 EXPONENT WITH _FPA1 EXPONENT 
                    LDA      _FP1SGN                       ; * REPLACE _FPA0 MANTISSA SIGN 
                    STA      _FP0SGN                       ; * WITH _FPA1 MANTISSA SIGN 
                    LDX      #_FP0EXP                      ; POINT X TO _FPA0 
                    NEGB                                  ; NEGATE DIFFERENCE OF EXPONENTS 
 .globl LB9E2
LB9E2:               CMPB     #-8                          ; TEST DIFFERENCE OF EXPONENTS 
                    BLE      LBA3F                        ; BRANCH IF DIFFERENCE OF EXPONENTS <= 8 
                    CLRA                                  ; CLEAR OVERFLOW BYTE 
                    LSR      1,X                          ; SHIFT MS BYTE OF MANTISSA; BIT 7 = 0 
                    JSR      LBABA                        ; GO SHIFT MANTISSA OF (X) TO THE RIGHT (B) TIMES 
 .globl LB9EC
LB9EC:               LDB      _RESSGN                       ; GET SIGN FLAG 
                    BPL      LB9FB                        ; BRANCH IF _FPA0 AND _FPA1 SIGNS ARE THE SAME 
                    COM      1,X                          ; * COMPLEMENT MANTISSA POINTED 
                    COM      2,X                          ; * TO BY (X) THE 
                    COM      3,X                          ; * ADCA BELOW WILL 
                    COM      4,X                          ; * CONVERT THIS OPERATION 
                    COMA                                  ; * INTO A NEG (MANTISSA) 
                    ADCA     #0                           ; ADD ONE TO ACCA - COMA ALWAYS SETS THE CARRY FLAG 
; THE PREVIOUS TWO BYTES MAY BE REPLACED BY A NEGA
;
; ADD MANTISSAS OF _FPA0 AND _FPA1, PUT RESULT IN _FPA0
 .globl LB9FB
LB9FB:               STA      _FPSBYT                       ; SAVE FPA SUB BYTE 
                    LDA      _FPA0+3                       ; * ADD LS BYTE 
                    ADCA     _FPA1+3                       ; * OF MANTISSA 
                    STA      _FPA0+3                       ; SAVE IN _FPA0 LSB 
                    LDA      _FPA0+2                       ; * ADD NEXT BYTE 
                    ADCA     _FPA1+2                       ; * OF MANTISSA 
                    STA      _FPA0+2                       ; SAVE IN _FPA0 
                    LDA      _FPA0+1                       ; * ADD NEXT BYTE 
                    ADCA     _FPA1+1                       ; * OF MANTISSA 
                    STA      _FPA0+1                       ; SAVE IN _FPA0 
                    LDA      _FPA0                         ; * ADD MS BYTE 
                    ADCA     _FPA1                         ; * OF MANTISSA 
                    STA      _FPA0                         ; SAVE IN _FPA0 
                    TSTB                                  ; TEST SIGN FLAG 
                    BPL      LBA5C                        ; BRANCH IF _FPA0 & _FPA1 SIGNS WERE ALIKE 
 .globl LBA18
LBA18:               BCS      LBA1C                        ; BRANCH IF POSITIVE MANTISSA 
                    BSR      LBA79                        ; NEGATE _FPA0 MANTISSA 
; NORMALIZE _FPA0
 .globl LBA1C
LBA1C:               CLRB                                  ; CLEAR TEMPORARY EXPONENT ACCUMULATOR 
 .globl LBA1D
LBA1D:               LDA      _FPA0                         ; TEST MSB OF MANTISSA 
                    BNE      LBA4F                        ; BRANCH IF <> 0 
                    LDA      _FPA0+1                       ; * IF THE MSB IS 
                    STA      _FPA0                         ; * 0, THEN SHIFT THE 
                    LDA      _FPA0+2                       ; * MANTISSA A WHOLE BYTE 
                    STA      _FPA0+1                       ; * AT A TIME. THIS 
                    LDA      _FPA0+3                       ; * IS FASTER THAN ONE 
                    STA      _FPA0+2                       ; * BIT AT A TIME 
                    LDA      _FPSBYT                       ; * BUT USES MORE MEMORY. 
                    STA      _FPA0+3                       ; * _FPSBYT, THE CARRY IN 
                    CLR      _FPSBYT                       ; * BYTE, REPLACES THE MATISSA LSB. 
                    ADDB     #8                           ; SHIFTING ONE BYTE = 8 BIT SHIFTS; ADD 8 TO EXPONENT 
                    CMPB     #5*8                         ; CHECK FOR 5 SHIFTS 
                    BLT      LBA1D                        ; BRANCH IF < 5 SHIFTS, IF > 5, THEN MANTISSA = 0 
 .globl LBA39
LBA39:               CLRA                                  ; A ZERO EXPONENT = 0 FLOATING POINT 
 .globl LBA3A
LBA3A:               STA      _FP0EXP                       ; ZERO OUT THE EXPONENT 
                    STA      _FP0SGN                       ; ZERO OUT THE MANTISSA SIGN 
 .globl LBA3E
LBA3E:               RTS      

 .globl LBA3F
LBA3F:               JSR      LBAAE                        ; SHIFT _FPA0 MANTISSA TO RIGHT 
                    CLRB                                  ; CLEAR CARRY FLAG 
                    BRA      LB9EC 

; SHIFT _FPA0 LEFT ONE BIT UNTIL BIT 7
; OF MATISSA MS BYTE = 1
 .globl LBA44
LBA44:               INCB                                  ; ADD ONE TO EXPONENT ACCUMULATOR 
                    ASL      _FPSBYT                       ; SHIFT SUB BYTE ONE LEFT 
                    ROL      _FPA0+3                       ; SHIFT LS BYTE 
                    ROL      _FPA0+2                       ; SHIFT NS BYTE 
                    ROL      _FPA0+1                       ; SHIFT NS BYTE 
                    ROL      _FPA0                         ; SHIFT MS BYTE 
 .globl LBA4F
LBA4F:               BPL      LBA44                        ; BRANCH IF NOT YET NORMALIZED 
                    LDA      _FP0EXP                       ; GET CURRENT EXPONENT 
                    PSHS     B                            ; SAVE EXPONENT MODIFIER CAUSED BY NORMALIZATION 
                    SUBA     ,S+                          ; SUBTRACT ACCUMULATED EXPONENT MODIFIER 
                    STA      _FP0EXP                       ; SAVE AS NEW EXPONENT 
                    BLS      LBA39                        ; SET _FPA0 = 0 IF THE NORMALIZATION CAUSED 
;         MORE OR EQUAL NUMBER OF LEFT SHIFTS THAN THE
;         SIZE OF THE EXPONENT
; checked, used and ok
                    .byte      SKP2                         ; SKIP 2 BYTES 
 .globl LBA5C
LBA5C:               BCS      LBA66                        ; BRANCH IF MANTISSA OVERFLOW 
                    ASL      _FPSBYT                       ; SUB BYTE BIT 7 TO CARRY - USE AS ROUND-OFF 
;                                                         ; FLAG (TRUNCATE THE REST OF SUB BYTE)
                    LDA      #0                           ; CLRA, BUT DO NOT CHANGE CARRY FLAG 
                    STA      _FPSBYT                       ; CLEAR THE SUB BYTE 
                    BRA      LBA72                        ; GO ROUND-OFF RESULT 

 .globl LBA66
LBA66:               INC      _FP0EXP                       ; INCREMENT EXPONENT - MULTIPLY BY 2 
                    BEQ      LBA92                        ; OVERFLOW ERROR IF CARRY PAST 0xFF 
                    ROR      _FPA0                         ; * SHIFT MANTISSA 
                    ROR      _FPA0+1                       ; * ONE TO 
                    ROR      _FPA0+2                       ; * THE RIGHT - 
                    ROR      _FPA0+3                       ; * DIVIDE BY TWO 
 .globl LBA72
LBA72:               BCC      LBA78                        ; BRANCH IF NO ROUND-OFF NEEDED 
                    BSR      LBA83                        ; ADD ONE TO MANTISSA - ROUND OFF 
                    BEQ      LBA66                        ; BRANCH iF OVERFLOW - MANTISSA = 0 
 .globl LBA78
LBA78:               RTS      

; NEGATE _FPA0 MANTISSA
 .globl LBA79
LBA79:               COM      _FP0SGN                       ; TOGGLE SIGN OF MANTISSA 
 .globl LBA7B
LBA7B:               COM      _FPA0                         ; * COMPLEMENT ALL 4 MANTISSA BYTES 
                    COM      _FPA0+1                       ; * 
                    COM      _FPA0+2                       ; * 
                    COM      _FPA0+3                       ; * 
; ADD ONE TO _FPA0 MANTISSA
 .globl LBA83
LBA83:               LDX      _FPA0+2                       ; * GET BOTTOM 2 MANTISSA 
                    LEAX     1,X                          ; * BYTES, ADD ONE TO 
                    STX      _FPA0+2                       ; * THEM AND SAVE THEM 
                    BNE      LBA91                        ; BRANCH IF NO OVERFLOW 
                    LDX      _FPA0                         ; * IF OVERFLOW ADD ONE 
                    LEAX     1,X                          ; * TO TOP 2 MANTISSA 
                    STX      _FPA0                         ; * BYTES AND SAVE THEM 
 .globl LBA91
LBA91:               RTS      

 .globl LBA92
LBA92:               LDB      #2*5                         ; OV' OVERFLOW ERROR 
                    JMP      ERROR_HANDLER                ; PROCESS AN ERROR 

 .globl LBA97
LBA97:               LDX      #_FPA2-1                      ; POINT X TO _FPA2 
; SHIFT FPA POINTED TO BY (X) TO
; THE RIGHT -(B) TIMES. EXIT WITH
; ACCA CONTAINING DATA SHIFTED OUT
; TO THE RIGHT (SUB BYTE) AND THE DATA
; SHIFTED IN FROM THE LEFT WILL COME FROM _FPCARY
 .globl LBA9A
LBA9A:               LDA      4,X                          ; GET LS BYTE OF MANTISSA (X) 
                    STA      _FPSBYT                       ; SAVE IN FPA SUB BYTE 
                    LDA      3,X                          ; * SHIFT THE NEXT THREE BYTES OF THE 
                    STA      4,X                          ; * MANTISSA RIGHT ONE COMPLETE BYTE. 
                    LDA      2,X                          ; * 
                    STA      3,X                          ; * 
                    LDA      1,X                          ; * 
                    STA      2,X                          ; * 
                    LDA      _FPCARY                       ; GET THE CARRY IN BYTE 
                    STA      1,X                          ; STORE AS THE MS MANTISSA BYTE OF (X) 
 .globl LBAAE
LBAAE:               ADDB     #8                           ; ADD 8 TO DIFFERENCE OF EXPONENTS 
                    BLE      LBA9A                        ; BRANCH IF EXPONENT DIFFERENCE < -8 
                    LDA      _FPSBYT                       ; GET FPA SUB BYTE 
                    SUBB     #8                           ; CAST OUT THE 8 ADDED IN ABOVE 
                    BEQ      LBAC4                        ; BRANCH IF EXPONENT DIFFERENCE = 0 
 .globl LBAB8
LBAB8:               ASR      1,X                          ; * SHIFT MANTISSA AND SUB BYTE ONE BIT TO THE RIGHT 
 .globl LBABA
LBABA:               ROR      2,X                          ; * 
                    ROR      3,X                          ; * 
                    ROR      4,X                          ; * 
                    RORA                                  ; * 
                    INCB                                  ; ADD ONE TO EXPONENT DIFFERENCE 
                    BNE      LBAB8                        ; BRANCH IF EXPONENTS NOT = 
 .globl LBAC4
LBAC4:               RTS      

 .globl LBAC5
LBAC5:               .byte      0x81,0x00,0x00,0x00,0x00          ; FLOATING POINT CONSTANT 1.0 
; ARITHMETIC OPERATION (*) JUMPS HERE - MULTIPLY
; _FPA0 BY (X) - RETURN PRODUCT IN _FPA0
 .globl mulF0F1
mulF0F1: 
                    LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    bra      LBACC 

 .globl mulF0x
mulF0x: 
 .globl LBACA
LBACA:               JSR      LBB2F                        ; MOVE PACKED FPA FROM (X) TO _FPA1 
 .globl LBACC
LBACC:               LBEQ     LBB2E                        ; BRANCH IF EXPONENT OF _FPA0 = 0 
                    JSR      LBB48                        ; CALCULATE EXPONENT OF PRODUCT 
; MULTIPLY _FPA0 MANTISSA BY _FPA1. NORMALIZE
; HIGH ORDER BYTES OF PRODUCT IN _FPA0. THE
; LOW ORDER FOUR BYTES OF THE PRODUCT WILL
; BE STORED IN _VAB-_VAE.
 .globl LBAD0
LBAD0:               LDA      #0                           ; * ZERO OUT MANTISSA OF _FPA2 
                    STA      _FPA2                         ; * 
                    STA      _FPA2+1                       ; * 
                    STA      _FPA2+2                       ; * 
                    STA      _FPA2+3                       ; * 
                    LDB      _FPA0+3                       ; GET LS BYTE OF _FPA0 
                    BSR      LBB00                        ; MULTIPLY BY _FPA1 
                    LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 4 
                    STB      _VAE                          ; * 
                    LDB      _FPA0+2                       ; GET NUMBER 3 MANTISSA BYTE OF _FPA0 
                    BSR      LBB00                        ; MULTIPLY BY _FPA1 
                    LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 3 
                    STB      _VAD                          ; * 
                    LDB      _FPA0+1                       ; GET NUMBER 2 MANTISSA BYTE OF _FPA0 
                    BSR      LBB00                        ; MULTIPLY BY _FPA1 
                    LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 2 
                    STB      _VAC                          ; * 
                    LDB      _FPA0                         ; GET MS BYTE OF _FPA0 MANTISSA 
                    BSR      LBB02                        ; MULTIPLY BY _FPA1 
                    LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 1 
                    STB      _VAB                          ; * 
                    JSR      LBC0B                        ; COPY MANTISSA FROM _FPA2 TO _FPA0 
                    JMP      LBA1C                        ; NORMALIZE _FPA0 

 .globl LBB00
LBB00:               LBEQ     LBA97                        ; SHIFT _FPA2 ONE BYTE TO RIGHT 
 .globl LBB02
LBB02:               COMA                                  ; SET CARRY FLAG 
; MULTIPLY _FPA1 MANTISSA BY ACCB AND
; ADD PRODUCT TO _FPA2 MANTISSA
 .globl LBB03
LBB03:               LDA      _FPA2                         ; GET _FPA2 MS BYTE 
                    RORB                                  ; ROTATE CARRY FLAG INTO SHIFT COUNTER; 
;         DATA BIT INTO CARRY
                    BEQ      LBB2E                        ; BRANCH WHEN 8 SHIFTS DONE 
                    BCC      LBB20                        ; DO NOT ADD _FPA1 IF DATA BIT = 0 
                    LDA      _FPA2+3                       ; * ADD MANTISSA LS BYTE 
                    ADDA     _FPA1+3                       ; * 
                    STA      _FPA2+3                       ; * 
                    LDA      _FPA2+2                       ; = ADD MANTISSA NUMBER 3 BYTE 
                    ADCA     _FPA1+2                       ; = 
                    STA      _FPA2+2                       ; = 
                    LDA      _FPA2+1                       ; * ADD MANTISSA NUMBER 2 BYTE 
                    ADCA     _FPA1+1                       ; * 
                    STA      _FPA2+1                       ; * 
                    LDA      _FPA2                         ; = ADD MANTISSA MS BYTE 
                    ADCA     _FPA1                         ; = 
 .globl LBB20
LBB20:               RORA                                  ; * ROTATE CARRY INTO MS BYTE 
                    STA      _FPA2                         ; * 
                    ROR      _FPA2+1                       ; = ROTATE _FPA2 ONE BIT TO THE RIGHT 
                    ROR      _FPA2+2                       ; = 
                    ROR      _FPA2+3                       ; = 
                    ROR      _FPSBYT                       ; = 
                    CLRA                                  ; CLEAR CARRY FLAG 
                    BRA      LBB03                        ; KEEP LOOPING 

 .globl LBB2E
LBB2E:               RTS      

; UNPACK A FP NUMBER FROM (X) TO _FPA1
 .globl packedToF1
packedToF1: 
 .globl LBB2F
LBB2F:               LDD      1,X                          ; GET TWO MSB BYTES OF MANTISSA FROM 
;         FPA  POINTED TO BY X
                    STA      _FP1SGN                       ; SAVE PACKED MANTISSA SIGN BYTE 
                    ORA      #0x80                         ; FORCE BIT 7 OF MSB MANTISSA = 1 
                    STD      _FPA1                         ; SAVE 2 MSB BYTES IN _FPA1 
                    LDB      _FP1SGN                       ; * GET PACKED MANTISSA SIGN BYTE. EOR W/_FPA0 
                    EORB     _FP0SGN                       ; * SIGN - NEW SIGN POSITION IF BOTH OLD SIGNS ALIKE, 
                    STB      _RESSGN                       ; * NEG IF BOTH OLD SIGNS DIFF. SAVE ADJUSTED 
;                                                         ; * MANTISSA SIGN BYTE
                    LDD      3,X                          ; = GET 2 LSB BYTES OF MANTISSA 
                    STD      _FPA1+2                       ; = AND PUT IN _FPA1 
                    LDA      ,X                           ; * GET EXPONENT FROM (X) AND 
                    STA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
                    LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    RTS      

; CALCULATE EXPONENT FOR PRODUCT OF _FPA0 & _FPA1
; ENTER WITH EXPONENT OF _FPA1 IN ACCA
 .globl LBB48
LBB48:               TSTA                                  ; TEST EXPONENT OF _FPA1 
                    BEQ      LBB61                        ; PURGE RETURN ADDRESS & SET _FPA0 = 0 
                    ADDA     _FP0EXP                       ; ADD _FPA1 EXPONENT TO _FPA0 EXPONENT 
                    RORA                                  ; ROTATE CARRY INTO BIT 7; BIT 0 INTO CARRY 
                    ROLA                                  ; SET OVERFLOW FLAG 
                    BVC      LBB61                        ; BRANCH IF EXPONENT TOO LARGE OR SMALL 
                    ADDA     #0x80                         ; ADD 0x80 BIAS TO EXPONENT 
                    STA      _FP0EXP                       ; SAVE NEW EXPONENT 
                    BEQ      LBB63                        ; SET _FPA0 
                    LDA      _RESSGN                       ; GET MANTISSA SIGN 
                    STA      _FP0SGN                       ; SAVE AS MANTISSA SIGN OF _FPA0 
                    RTS      

;                   *        IF _FPA0 = POSITIVE THEN 'OV' ERROR IF _FPA0
; = IS NEGATIVE THEN _FPA0 = 0
 .globl LBB5C
LBB5C:               LDA      _FP0SGN                       ; GET MANTISSA SIGN OF _FPA0 
                    COMA                                  ; CHANGE SIGN OF _FPA0 MANTISSA 
                    BRA      LBB63 

 .globl LBB61
LBB61:               LEAS     2,S                          ; PURGE RETURN ADDRESS FROM STACK 
 .globl LBB63
LBB63:               LBPL     LBA39                        ; ZERO _FPA0 MANTISSA SIGN & EXPONENT 
 .globl LBB67
LBB67:               JMP      LBA92                        ; 'OV' OVERFLOW ERROR 

; FAST MULTIPLY BY 10 AND LEAVE RESULT IN _FPA0
 .globl LBB6A
LBB6A:               JSR      LBC5F                        ; TRANSFER _FPA0 TO _FPA1 
                    BEQ      LBB7C                        ; BRANCH IF EXPONENT = 0 
                    ADDA     #2                           ; ADD 2 TO EXPONENT (TIMES 4) 
                    BCS      LBB67                        ; 'OV' ERROR IF EXPONENT > 0xFF 
                    CLR      _RESSGN                       ; CLEAR RESULT SIGN BYTE 
                    JSR      LB9CD                        ; ADD _FPA1 TO _FPA0 (TIMES 5) 
                    INC      _FP0EXP                       ; ADD ONE TO EXPONENT (TIMES 10) 
                    BEQ      LBB67                        ; 'OV' ERROR IF EXPONENT > 0xFF 
 .globl LBB7C
LBB7C:               RTS      

 .globl LBB7D
LBB7D:               .byte      0x84,0x20,0x00,0x00,0x00          ; FLOATING POINT CONSTANT 10 
; DIVIDE _FPA0 BY 10
 .globl LBB82
LBB82:               JSR      LBC5F                        ; MOVE _FPA0 TO _FPA1 
                    LDX      #LBB7D                       ; POINT TO FLOATING POINT CONSTANT 10 
                    CLRB                                  ; ZERO MANTISSA SIGN BYTE 
 .globl LBB89
LBB89:               STB      _RESSGN                       ; STORE THE QUOTIENT MANTISSA SIGN BYTE 
                    JSR      LBC14                        ; UNPACK AN FP NUMBER FROM (X) INTO _FPA0 
; checked, not used
;          FCB  SKP2           ; SKIP TWO BYTES
;* DIVIDE (X) BY _FPA0-LEAVE NORMALIZED QUOTIENT IN _FPA0
;LBB8F     BSR  LBB2F          ; GET FP NUMBER FROM (X) TO _FPA1
; ARITHMETIC OPERATION (/) JUMPS HERE. DIVIDE _FPA1 BY _FPA0 (ENTER WITH
; EXPONENT OF _FPA1 IN ACCA AND FLAGS SET BY TSTA)
; DIVIDE _FPA1 BY _FPA0
 .globl divF1byF0
divF1byF0: 
 .globl LBB91
LBB91:               LBEQ     LBC06                        ; '/0' DIVIDE BY ZERO ERROR 
                    NEG      _FP0EXP                       ; GET EXPONENT OF RECIPROCAL OF DIVISOR 
                    BSR      LBB48                        ; CALCULATE EXPONENT OF QUOTIENT 
                    INC      _FP0EXP                       ; INCREMENT EXPONENT 
                    BEQ      LBB67                        ; 'OV' OVERFLOW ERROR 
                    LDX      #_FPA2                        ; POINT X TO MANTISSA OF _FPA2 - HOLD 
;                                                         ; TEMPORARY QUOTIENT IN _FPA2
                    LDB      #4                           ; 5 BYTE DIVIDE 
                    STB      _TMPLOC                       ; SAVE BYTE COUNTER 
                    LDB      #1                           ; SHIFT COUNTER-AND TEMPORARY QUOTIENT BYTE 
; COMPARE _FPA0 MANTISSA TO _FPA1 MANTISSA -
; SET CARRY FLAG IF _FPA1 >= _FPA0
 .globl LBBA4
LBBA4:               LDA      _FPA0                         ; * COMPARE THE TWO MS BYTES 
                    CMPA     _FPA1                         ; * OF _FPA0 AND _FPA1 AND 
                    BNE      LBBBD                        ; * BRANCH IF <> 
                    LDA      _FPA0+1                       ; = COMPARE THE NUMBER 2 
                    CMPA     _FPA1+1                       ; = BYTES AND 
                    BNE      LBBBD                        ; = BRANCH IF <> 
                    LDA      _FPA0+2                       ; * COMPARE THE NUMBER 3 
                    CMPA     _FPA1+2                       ; * BYTES AND 
                    BNE      LBBBD                        ; * BRANCH IF <> 
                    LDA      _FPA0+3                       ; = COMPARE THE LS BYTES 
                    CMPA     _FPA1+3                       ; = AND BRANCH 
                    BNE      LBBBD                        ; = IF <> 
                    COMA                                  ; SET CARRY FLAG IF _FPA0 = _FPA1 
 .globl LBBBD
LBBBD:               TFR      CC,A                         ; SAVE CARRY FLAG STATUS IN ACCA; CARRY 
;         CLEAR IF _FPA0 > _FPA1
                    ROLB                                  ; ROTATE CARRY INTO TEMPORARY QUOTIENT BYTE 
                    BCC      LBBCC                        ; CARRY WILL BE SET AFTER 8 SHIFTS 
                    STB      ,X+                          ; SAVE TEMPORARY QUOTIENT 
                    DEC      _TMPLOC                       ; DECREMENT BYTE COUNTER 
                    BMI      LBBFC                        ; BRANCH IF DONE 
                    BEQ      LBBF8                        ; BRANCH IF LAST BYTE 
                    LDB      #1                           ; RESET SHIFT COUNTER AND TEMPORARY QUOTIENT BYTE 
 .globl LBBCC
LBBCC:               TFR      A,CC                         ; RESTORE CARRY FLAG AND 
                    BCS      LBBDE                        ; BRANCH IF _FPA0 =< _FPA1 
 .globl LBBD0
LBBD0:               ASL      _FPA1+3                       ; * SHIFT _FPA1 MANTISSA 1 BIT TO LEFT 
                    ROL      _FPA1+2                       ; * 
                    ROL      _FPA1+1                       ; * 
                    ROL      _FPA1                         ; * 
                    BCS      LBBBD                        ; BRANCH IF CARRY - ADD ONE TO PARTIAL QUOTIENT 
                    BMI      LBBA4                        ; IF MSB OF HIGH ORDER MANTISSA BYTE IS 
;         SET, CHECK THE MAGNITUDES OF _FPA0, _FPA1
                    BRA      LBBBD                        ; CARRY IS CLEAR, CHECK ANOTHER BIT 

; SUBTRACT _FPA0 FROM _FPA1 - LEAVE RESULT IN _FPA1
 .globl LBBDE
LBBDE:               LDA      _FPA1+3                       ; * SUBTRACT THE LS BYTES OF MANTISSA 
                    SUBA     _FPA0+3                       ; * 
                    STA      _FPA1+3                       ; * 
                    LDA      _FPA1+2                       ; = THEN THE NEXT BYTE 
                    SBCA     _FPA0+2                       ; = 
                    STA      _FPA1+2                       ; = 
                    LDA      _FPA1+1                       ; * AND THE NEXT 
                    SBCA     _FPA0+1                       ; * 
                    STA      _FPA1+1                       ; * 
                    LDA      _FPA1                         ; = AND FINALLY, THE MS BYTE OF MANTISSA 
                    SBCA     _FPA0                         ; = 
                    STA      _FPA1                         ; = 
                    BRA      LBBD0                        ; GO SHIFT _FPA1 

 .globl LBBF8
LBBF8:               LDB      #0x40                         ; USE ONLY TWO BITS OF THE LAST BYTE (FIFTH) 
                    BRA      LBBCC                        ; GO SHIFT THE LAST BYTE 

 .globl LBBFC
LBBFC:               RORB                                  ; * SHIFT CARRY (ALWAYS SET HERE) INTO 
                    RORB                                  ; * BIT 5 AND MOVE 
                    RORB                                  ; * BITS 1,0 TO BITS 7,6 
                    STB      _FPSBYT                       ; SAVE SUB BYTE 
                    BSR      LBC0B                        ; MOVE MANTISSA OF _FPA2 TO _FPA0 
                    JMP      LBA1C                        ; NORMALIZE _FPA0 

 .globl LBC06
LBC06:               LDB      #2*10                        ; /0' ERROR 
                    JMP      ERROR_HANDLER                ; PROCESS THE ERROR 

; COPY MANTISSA FROM _FPA2 TO _FPA0
 .globl LBC0B
LBC0B:               LDX      _FPA2                         ; * MOVE TOP 2 BYTES 
                    STX      _FPA0                         ; * 
                    LDX      _FPA2+2                       ; = MOVE BOTTOM 2 BYTES 
                    STX      _FPA0+2                       ; = 
                    RTS      

; COPY A PACKED FP NUMBER FROM (X) TO _FPA0
 .globl packedToF0
packedToF0: 
 .globl LBC14
LBC14:               PSHS     A                            ; SAVE ACCA 
                    LDD      1,X                          ; GET TOP TWO MANTISSA BYTES 
                    STA      _FP0SGN                       ; SAVE MS BYTE OF MANTISSA AS MANTISSA SIGN 
                    ORA      #0x80                         ; UNPACK MS BYTE 
                    STD      _FPA0                         ; SAVE UNPACKED TOP 2 MANTISSA BYTES 
                    CLR      _FPSBYT                       ; CLEAR MANTISSA SUB BYTE 
                    LDB      ,X                           ; GET EXPONENT TO ACCB 
                    LDX      3,X                          ; * MOVE LAST 2 
                    STX      _FPA0+2                       ; * MANTISSA BYTES 
                    STB      _FP0EXP                       ; SAVE EXPONENT 
                    PULS     A,PC                         ; RESTORE ACCA AND RETURN 
 .globl LBC2A
LBC2A:               LDX      #_V45                         ; POINT X TO MANTISSA OF FPA4 
                    BRA      LBC35                        ; MOVE _FPA0 TO FPA4 

 .globl LBC2F
LBC2F:               LDX      #_V40                         ; POINT X TO MANTISSA OF FPA3 
; checked, not used AND produces wrong code!!!, sine _VABRDES is extended!
;          FCB  SKP2           ; SKIP TWO BYTES
;LBC33     LDX  _VABRDES         ; POINT X TO _VABRIABLE DESCRIPTOR IN _VABRDES
; PACK _FPA0 AND MOVE IT TO ADDRESS IN X
 .globl LBC35
LBC35:               LDA      _FP0EXP                       ; * COPY EXPONENT 
                    STA      ,X                           ; * 
                    LDA      _FP0SGN                       ; GET MANTISSA SIGN BIT 
                    ORA      #0x7F                         ; MASK THE BOTTOM 7 BITS 
                    ANDA     _FPA0                         ; AND BIT 7 OF MANTISSA SIGN INTO BIT 7 OF MS BYTE 
                    STA      1,X                          ; SAVE MS BYTE 
                    LDA      _FPA0+1                       ; * MOVE 2ND MANTISSA BYTE 
                    STA      2,X                          ; * 
                    LDU      _FPA0+2                       ; = MOVE BOTTOM 2 MANTISSA BYTES 
                    STU      3,X                          ; = 
                    RTS      

; MOVE _FPA1 TO _FPA0 RETURN W/MANTISSA SIGN IN ACCA
 .globl F1toF0
F1toF0: 
 .globl LBC4A
LBC4A:               LDA      _FP1SGN                       ; * COPY MANTISSA SIGN FROM 
 .globl LBC4C
LBC4C:               STA      _FP0SGN                       ; * _FPA1 TO _FPA0 
                    LDX      _FP1EXP                       ; = COPY EXPONENT + MS BYTE FROM 
                    STX      _FP0EXP                       ; = _FPA1 TO _FPA0 
                    CLR      _FPSBYT                       ; CLEAR MANTISSA SUB BYTE 
                    LDA      _FPA1+1                       ; * COPY 2ND MANTISSA BYTE 
                    STA      _FPA0+1                       ; * FROM _FPA1 TO _FPA0 
                    LDA      _FP0SGN                       ; GET MANTISSA SIGN 
                    LDX      _FPA1+2                       ; * COPY 3RD AND 4TH MANTISSA BYTE 
                    STX      _FPA0+2                       ; * FROM _FPA1 TO _FPA0 
                    RTS      

; TRANSFER _FPA0 TO _FPA1
 .globl F0toF1
F0toF1: 
 .globl LBC5F
LBC5F:               LDD      _FP0EXP                       ; * TRANSFER EXPONENT & MS BYTE 
                    STD      _FP1EXP                       ; * 
                    LDX      _FPA0+1                       ; = TRANSFER MIDDLE TWO BYTES 
                    STX      _FPA1+1                       ; = 
                    LDX      _FPA0+3                       ; * TRANSFER BOTTOM TWO BYTES 
                    STX      _FPA1+3                       ; * 
                    TSTA                                  ; SET FLAGS ACCORDING TO EXPONENT 
                    RTS      

; CHECK _FPA0                                              ; RETURN ACCB = 0 IF _FPA0 = 0,
; ACCB = 0xFF IF _FPA0 = NEGATIVE, ACCB = 1 IF _FPA0 = POSITIVE
 .globl LBC6D
LBC6D:               LDB      _FP0EXP                       ; GET EXPONENT 
                    BEQ      LBC79                        ; BRANCH IF _FPA0 = 0 
 .globl LBC71
LBC71:               LDB      _FP0SGN                       ; GET SIGN OF MANTISSA 
 .globl LBC73
LBC73:               ROLB                                  ; BIT 7 TO CARRY 
                    LDB      #0xFF                         ; NEGATIVE FLAG 
                    BCS      LBC79                        ; BRANCH IF NEGATIVE MANTISSA 
                    NEGB                                  ; ACCB = 1 IF POSITIVE MANTISSA 
 .globl LBC79
LBC79:               RTS      

; SGN
 .globl SGN
SGN:                 BSR      LBC6D                        ; SET ACCB ACCORDING TO SIGN OF _FPA0 
; CONVERT A SIGNED NUMBER IN ACCB INTO A FLOATING POINT NUMBER
 .globl LBC7C
LBC7C:               STB      _FPA0                         ; SAVE ACCB IN _FPA0 
                    CLR      _FPA0+1                       ; CLEAR NUMBER 2 MANTISSA BYTE OF _FPA0 
                    LDB      #0x88                         ; EXPONENT REQUIRED IF _FPA0 IS TO BE AN INTEGER 
 .globl LBC82
LBC82:               LDA      _FPA0                         ; GET MS BYTE OF MANTISSA 
                    SUBA     #0x80                         ; SET CARRY IF POSITIVE MANTISSA 
 .globl LBC86
LBC86:               STB      _FP0EXP                       ; SAVE EXPONENT 
                    LDD      #0                           ; * ZERO OUT ACCD AND 
                    STD      _FPA0+2                       ; * BOTTOM HALF OF _FPA0 
                    STA      _FPSBYT                       ; CLEAR SUB BYTE 
                    STA      _FP0SGN                       ; CLEAR SIGN OF _FPA0 MANTISSA 
                    JMP      LBA18                        ; GO NORMALIZE _FPA0 

; ABS
 .globl ABS
ABS:                 CLR      _FP0SGN                       ; FORCE MANTISSA SIGN OF _FPA0 POSITIVE 
                    RTS      

; COMPARE A PACKED FLOATING POINT NUMBER POINTED TO
; BY (X) TO AN UNPACKED FP NUMBER IN _FPA0. RETURN
; ZERO FLAG SET AND ACCB = 0, IF EQUAL                    ; ACCB = 1 IF
; _FPA0 > (X)                                              ; ACCB = 0xFF IF _FPA0 < (X)
 .globl LBC96
LBC96:               LDB      ,X                           ; CHECK EXPONENT OF (X) 
                    BEQ      LBC6D                        ; BRANCH IF FPA = 0 
                    LDB      1,X                          ; GET MS BYTE OF MANTISSA OF (X) 
                    EORB     _FP0SGN                       ; EOR WITH SIGN OF _FPA0 
                    BMI      LBC71                        ; BRANCH IF SIGNS NOT = 
; COMPARE _FPA0 WITH FP NUMBER POINTED TO BY (X).
; _FPA0 IS NORMALIZED, (X) IS PACKED.
 .globl LBCA0
LBCA0:               LDB      _FP0EXP                       ; * GET EXPONENT OF 
                    CMPB     ,X                           ; * _FPA0, COMPARE TO EXPONENT OF 
                    BNE      LBCC3                        ; * (X) AND BRANCH IF <>. 
                    LDB      1,X                          ; * GET MS BYTE OF (X), KEEP ONLY 
                    ORB      #0x7F                         ; * THE SIGN BIT - 'AND' THE BOTTOM 7 
                    ANDB     _FPA0                         ; * BITS OF _FPA0 INTO ACCB 
                    CMPB     1,X                          ; = COMPARE THE BOTTOM 7 BITS OF THE MANTISSA 
                    BNE      LBCC3                        ; = MS BYTE AND BRANCH IF <> 
                    LDB      _FPA0+1                       ; * COMPARE 2ND BYTE 
                    CMPB     2,X                          ; * OF MANTISSA, 
                    BNE      LBCC3                        ; * BRANCH IF <> 
                    LDB      _FPA0+2                       ; = COMPARE 3RD BYTE 
                    CMPB     3,X                          ; = OF MANTISSA, 
                    BNE      LBCC3                        ; = BRANCH IF <> 
                    LDB      _FPA0+3                       ; * SUBTRACT LS BYTE 
                    SUBB     4,X                          ; * OF (X) FROM LS BYTE OF 
                    BNE      LBCC3                        ; * _FPA0, BRANCH IF <> 
                    RTS                                   ; RETURN IF FP (X) = _FPA0 

 .globl LBCC3
LBCC3:               RORB                                  ; SHIFT CARRY TO BIT 7; CARRY SET IF _FPA0 < (X) 
                    EORB     _FP0SGN                       ; TOGGLE SIZE COMPARISON BIT IF _FPA0 IS NEGATIVE 
                    BRA      LBC73                        ; GO SET ACCB ACCORDING TO COMPARISON 

; DE-NORMALIZE _FPA0 : SHIFT THE MANTISSA UNTIL THE BINARY POINT IS TO THE RIGHT
; OF THE LEAST SIGNIFICANT BYTE OF THE MANTISSA
 .globl LBCC8
LBCC8:               LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    BEQ      LBD09                        ; ZERO MANTISSA IF _FPA0 = 0 
                    SUBB     #0xA0                         ; SUBTRACT 0xA0 FROM _FPA0 EXPONENT T THIS WILL YIELD 
;                                                         ; THE NUMBER OF SHIFTS REQUIRED TO DENORMALIZE _FPA0. WHEN
;                                                         ; THE EXPONENT OF _FPA0 IS = ZERO, THEN THE BINARY POINT
;                                                         ; WILL BE TO THE RIGHT OF THE MANTISSA
                    LDA      _FP0SGN                       ; TEST SIGN OF _FPA0 MANTISSA 
                    BPL      LBCD7                        ; BRANCH IF POSITIVE 
                    COM      _FPCARY                       ; COMPLEMENT CARRY IN BYTE 
                    JSR      LBA7B                        ; NEGATE MANTISSA OF _FPA0 
 .globl LBCD7
LBCD7:               LDX      #_FP0EXP                      ; POINT X TO _FPA0 
                    CMPB     #-8                          ; EXPONENT DIFFERENCE < -8? 
                    BGT      LBCE4                        ; YES 
                    JSR      LBAAE                        ; SHIFT _FPA0 RIGHT UNTIL _FPA0 EXPONENT = 0xA0 
                    CLR      _FPCARY                       ; CLEAR CARRY IN BYTE 
                    RTS      

 .globl LBCE4
LBCE4:               CLR      _FPCARY                       ; CLEAR CARRY IN BYTE 
                    LDA      _FP0SGN                       ; * GET SIGN OF _FPA0 MANTISSA 
                    ROLA                                  ; * ROTATE IT INTO THE CARRY FLAG 
                    ROR      _FPA0                         ; ROTATE CARRY (MANTISSA SIGN) INTO BIT 7 
;                                                         ; OF LS BYTE OF MANTISSA
                    JMP      LBABA                        ; DE-NORMALIZE _FPA0 

; INT
;                   *        THE INT STATEMENT WILL "DENORMALIZE" _FPA0 - THAT IS IT WILL SHIFT THE BINARY POINT
; TO THE EXTREME RIGHT OF THE MANTISSA TO FORCE ITS EXPONENT TO BE 0xAO. ONCE
; THIS IS DONE THE MANTISSA OF _FPA0 WILL CONTAIN THE FOUR LEAST SIGNIFICANT
; BYTES OF THE INTEGER PORTION OF _FPA0. AT THE CONCLUSION OF THE DE-NORMALIZATION
; ONLY THE INTEGER PORTION OF _FPA0 WILL REMAIN.
;
 .globl _toInt2
_toInt2:
; jsr packedToF0
 
INT:                 LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    CMPB     #0xA0                         ; LARGEST POSSIBLE INTEGER EXPONENT 
                    BCC      LBD11                        ; RETURN IF _FPA0 >= 32768 
                    BSR      LBCC8                        ; SHIFT THE BINARY POINT ONE TO THE RIGHT OF THE 
                                                         ; LS BYTE OF THE _FPA0 MANTISSA
                    STB      _FPSBYT                       ; ACCB = 0: ZERO OUT THE SUB BYTE 
                    LDA      _FP0SGN                       ; GET MANTISSA SIGN 
                    STB      _FP0SGN                       ; FORCE MANTISSA SIGN TO BE POSITIVE 
                    SUBA     #0x80                         ; SET CARRY IF MANTISSA 
                    LDA      #0xA0                         ; * GET DENORMALIZED EXPONENT AND 
                    STA      _FP0EXP                       ; * SAVE IT IN _FPA0 EXPONENT 
                    LDA      _FPA0+3                       ; = GET LS BYTE OF _FPA0 AND 
                    STA      _CHARAC                       ; = SAVE IT IN CHARAC 
                    JMP      LBA18                        ; NORMALIZE _FPA0 
 .globl LBD09
LBD09:               STB      _FPA0                         ; * LOAD MANTISSA OF _FPA0 WITH CONTENTS OF ACCB 
                    STB      _FPA0+1                       ; * 
                    STB      _FPA0+2                       ; * 
                    STB      _FPA0+3                       ; * 
 .globl LBD11
LBD11:               RTS                                   ; * 

; String pointer passed in y
; output _FPA0
; CONVERT ASCII STRING TO FLOATING POINT
 .globl atoF0
atoF0: 
 .globl LBD12
LBD12: 
                    JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
                    LDX      #0                           ; (X) = 0 
                    STX      _FP0SGN                       ; * ZERO OUT _FPA0 & THE SIGN FLAG (_COEFCT) 
                    STX      _FP0EXP                       ; * 
                    STX      _FPA0+1                       ; * 
                    STX      _FPA0+2                       ; * 
                    STX      _V47                          ; INITIALIZE EXPONENT & EXPONENT SIGN FLAG TO ZERO 
                    STX      _V45                          ; INITIALIZE RIGHT DECIMAL CTR & DECIMAL PT FLAG TO 0 
                    BCS      LBD86                        ; IF CARRY SET (NUMERIC CHARACTER), ASSUME ACCA CONTAINS FIRST 
;         NUMERIC CHAR, SIGN IS POSITIVE AND SKIP THE RAM HOOK
                    JSR      XVEC19                       ; CALL EXTENDED BASIC ADD-IN 
 .globl LBD25
LBD25: 
                    CMPA     # '-                        ; * CHECK FOR A LEADING MINUS SIGN AND BRANCH
                    BNE      LBD2D                        ; * IF NO MINUS SIGN 
                    COM      _COEFCT                       ; TOGGLE SIGN; 0 = +; FF = - 
                    BRA      LBD31                        ; INTERPRET THE REST OF THE STRING 

 .globl LBD2D
LBD2D: 
                    CMPA     # '+                        ; * CHECK FOR LEADING PLUS SlGN AND BRANCH
                    BNE      LBD35                        ; * IF NOT A PLUS SIGN 
 .globl LBD31
LBD31: 
                    JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
                    BCS      LBD86                        ; BRANCH IF NUMERIC CHARACTER 
 .globl LBD35
LBD35: 
                    CMPA     # '.                        ; DECIMAL POlNT?
                    BEQ      LBD61                        ; YES 
                    CMPA     #'E ; "E" SHORTHAND FORM (SCIENTIFIC NOTATION)?
                    BNE      LBD65                        ; NO 
; E_VABLUATE EXPONENT OF EXPONENTIAL FORMAT
                    JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
                    BCS      LBDA5                        ; BRANCH IF NUMERIC 
                    CMPA     # '-                        ; MINUS TOKEN?
                    BEQ      LBD53                        ; YES 
                    CMPA     # '-                        ; ASCII MINUS?
                    BEQ      LBD53                        ; YES 
                    CMPA     # '+                        ; PLUS TOKEN?
                    BEQ      LBD55                        ; YES 
                    CMPA     # '+                        ; ASCII PLUS?
                    BEQ      LBD55                        ; YES 
                    BRA      LBD59                        ; BRANCH IF NO SIGN FOUND 

 .globl LBD53
LBD53:               COM      _V48                          ; SET EXPONENT SIGN FLAG TO NEGATIVE 
; STRIP A DECIMAL NUMBER FROM BASIC LINE, CONVERT IT TO BINARY IN _V47
 .globl LBD55
LBD55:               JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
                    BCS      LBDA5                        ; IF NUMERIC CHARACTER, CONVERT TO BINARY 
 .globl LBD59
LBD59:               TST      _V48                          ; * CHECK EXPONENT SIGN FLAG 
                    BEQ      LBD65                        ; * AND BRANCH IF POSITIVE 
                    NEG      _V47                          ; NEGATE _VABLUE OF EXPONENT 
                    BRA      LBD65 

 .globl LBD61
LBD61:               COM      _V46                          ; *TOGGLE DECIMAL PT FLAG AND INTERPRET ANOTHER 
                    BNE      LBD31                        ; *CHARACTER IF <> 0 - TERMINATE INTERPRETATION 
;         IF   SECOND DECIMAL POINT
; ADJUST _FPA0 FOR THE DECIMAL EXPONENT IN _V47
 .globl LBD65
LBD65:               LDA      _V47                          ; * GET EXPONENT, SUBTRACT THE NUMBER OF 
                    SUBA     _V45                          ; * PLACES TO THE RIGHT OF DECIMAL POINT 
                    STA      _V47                          ; * AND RESAVE IT. 
                    BEQ      LBD7F                        ; EXIT ROUTINE IF ADJUSTED EXPONENT = ZERO 
                    BPL      LBD78                        ; BRANCH IF POSITIVE EXPONENT 
 .globl LBD6F
LBD6F:               JSR      LBB82                        ; DIVIDE _FPA0 BY 10 
                    INC      _V47                          ; INCREMENT EXPONENT COUNTER (MULTIPLY BY 10) 
                    BNE      LBD6F                        ; KEEP MULTIPLYING 
                    BRA      LBD7F                        ; EXIT ROUTINE 

 .globl LBD78
LBD78:               JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
                    DEC      _V47                          ; DECREMENT EXPONENT COUNTER (DIVIDE BY 10) 
                    BNE      LBD78                        ; KEEP MULTIPLYING 
 .globl LBD7F
LBD7F:               LDA      _COEFCT                       ; GET THE SIGN FLAG 
                    LBPL     LBD11                        ; RETURN IF POSITIVE 
                    JMP      LBEE9                        ; TOGGLE MANTISSA SIGN OF _FPA0, IF NEGATIVE 

;MULTIPLY _FPA0 BY TEN AND ADD ACCA TO THE RESULT
 .globl LBD86
LBD86:               LDB      _V45                          ; *GET THE RIGHT DECIMAL COUNTER AND SUBTRACT 
                    SUBB     _V46                          ; *THE DECIMAL POINT FLAG FROM IT. IF DECIMAL POINT 
                    STB      _V45                          ; *FLAG=0, NOTHING HAPPENS. IF DECIMAL POINT FLAG IS 
;                             -1, THEN RIGHT DECIMAL COUNTER IS INCREMENTED BY ONE
                    PSHS     A                            ; SAVE NEW DIGIT ON STACK 
                    JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
                    PULS     B                            ; GET NEW DIGIT BACK 
                    SUBB     # '0                        ; MASK OFF ASCII
                    BSR      LBD99                        ; ADD ACCB TO _FPA0 
                    BRA      LBD31                        ; GET ANOTHER CHARACTER FROM BASIC 

 .globl LBD99
LBD99:               JSR      LBC2F                        ; PACK _FPA0 AND SAVE IT IN FPA3 
                    JSR      LBC7C                        ; CONVERT ACCB TO FP NUMBER IN _FPA0 
                    LDX      #_V40                         ; * ADD _FPA0 TO 
                    JMP      LB9C2                        ; * FPA3 

 .globl LBDA5
LBDA5:               LDB      _V47 
                    ASLB                                  ; TIMES 2 
                    ASLB                                  ; TIMES 4 
                    ADDB     _V47                          ; ADD 1 = TIMES 5 
                    ASLB                                  ; TIMES 10 
                    SUBA     # '0                        ; *MASK OFF ASCII FROM ACCA, PUSH
                    PSHS     B                            ; *RESULT ONTO THE STACK AND 
                    ADDA     ,S+                          ; ADD lT TO ACCB 
                    STA      _V47                          ; SAVE IN _V47 
                    BRA      LBD55                        ; INTERPRET ANOTHER CHARACTER 

;
 .globl LBDB6
LBDB6:               .byte      0x9B,0x3E,0xBC,0x1F,0xFD          ; * 99999999.9 
 .globl LBDBB
LBDBB:               .byte      0x9E,0x6E,0x6B,0x27,0xFD          ; * 999999999 
 .globl LBDC0
LBDC0:               .byte      0x9E,0x6E,0x6B,0x28,0x00          ; * 1E + 09 
;
;LBDC5     LDX  #LABE8-1       ; POINT X TO " IN " MESSAGE
;          BSR  LBDD6          ; COPY A STRING FROM (X) TO CONSOLE OUT
;          LDD  CURLIN         ; GET CURRENT BASIC LINE NUMBER TO ACCD
;* CONVERT _VABLUE IN ACCD INTO A DECIMAL NUMBER
;* AND PRINT IT TO CONSOLE OUT
;LBDCC     STD  _FPA0           ; SAVE ACCD IN TOP HALF OF _FPA0
;          LDB  #0x90           ; REQ'D EXPONENT IF TOP HALF OF ACCD = INTEGER
;          COMA                ; SET CARRY FLAG - FORCE POSITIVE MANTISSA
;          JSR  LBC86          ; ZERO BOTTOM HALF AND SIGN OF _FPA0, THEN
;*         SAVE EXPONENT AND NORMALIZE IT
;          BSR  LBDD9          ; CONVERT FP NUMBER TO ASCII STRING
;LBDD6     JMP  LB99C          ; COPY A STRING FROM (X) TO CONSOLE OUT
 .globl F0toa
F0toa: 
; CONVERT FP NUMBER TO ASCII STRING
;LBDD9               LDU      #STRBUF+3                    ; POINT U TO BUFFER WHICH WILL NOT CAUSE 
;                                                         ; THE STRING TO BE STORED IN STRING SPACE
 .globl LBDDC
LBDDC:               LDA      #SPACE                       ; SPACE = DEFAULT SIGN FOR POSITIVE # 
                    LDB      _FP0SGN                       ; GET SIGN OF _FPA0 
                    BPL      LBDE4                        ; BRANCH IF POSITIVE 
                    LDA      # '-                        ; ASCII MINUS SIGN
 .globl LBDE4
LBDE4:               STA      ,U+                          ; STORE SIGN OF NUMBER 
                    STU      _COEFPT                       ; SAVE BUFFER POINTER 
                    STA      _FP0SGN                       ; SAVE SIGN (IN ASCII) 
                    LDA      # '0                        ; ASCII ZERO IF EXPONENT = 0
                    LDB      _FP0EXP                       ; GET _FPA0 EXPONENT 
                    LBEQ     LBEB8                        ; BRANCH IF _FPA0 = 0 
                    CLRA                                  ; BASE 10 EXPONENT=0 FOR FP NUMBER > 1 
                    CMPB     #0x80                         ; CHECK EXPONENT 
                    BHI      LBDFF                        ; BRANCH IF FP NUMBER > 1 
; IF _FPA0 < 1.0, MULTIPLY IT BY 1E+09 TO SPEED UP THE CONVERSION PROCESS
                    LDX      #LBDC0                       ; POINT X TO FP 1E+09 
                    JSR      LBACA                        ; MULTIPLY _FPA0 BY (X) 
                    LDA      #-9                          ; BASE 10 EXPONENT = -9 
 .globl LBDFF
LBDFF:               STA      _V45                          ; BASE 10 EXPONENT 
; PSEUDO - NORMALIZE THE FP NUMBER TO A _VABLUE IN THE RANGE
; OF 999,999,999 RO 99,999,999.9 - THIS IS THE LARGEST
; NUMBER RANGE IN WHICH ALL OF THE DIGITS ARE
; SIGNIFICANT WHICH CAN BE DISPLAYED WITHOUT USING
; SCIENTIFIC NOTATION
 .globl LBE01
LBE01:               LDX      #LBDBB                       ; POINT X TO FP 999,999,999 
                    JSR      LBCA0                        ; COMPARE _FPA0 TO 999,999,999 
                    BGT      LBE18                        ; BRANCH IF > 999,999,999 
 .globl LBE09
LBE09:               LDX      #LBDB6                       ; POINT X TO FP 99,999,999.9 
                    JSR      LBCA0                        ; COMPARE _FPA0 TO 99,999,999.9 
                    BGT      LBE1F                        ; BRANCH IF > 99,999,999.9 (IN RANGE) 
                    JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
                    DEC      _V45                          ; SUBTRACT ONE FROM DECIMAL OFFSET 
                    BRA      LBE09                        ; PSEUDO - NORMALIZE SOME MORE 

 .globl LBE18
LBE18:               JSR      LBB82                        ; DIVIDE _FPA0 BY 10 
                    INC      _V45                          ; ADD ONE TO BASE 10 EXPONENT 
                    BRA      LBE01                        ; PSEUDO - NORMALIZE SOME MORE 

 .globl LBE1F
LBE1F:               JSR      LB9B4                        ; ADD .5 TO _FPA0 (ROUND OFF) 
                    JSR      LBCC8                        ; CONVERT _FPA0 TO AN INTEGER 
                    LDB      #1                           ; DEFAULT DECIMAL POINT FLAG (FORCE IMMED DECIMAL PT) 
                    LDA      _V45                          ; * GET BASE 10 EXPONENT AND ADD TEN TO IT 
                    ADDA     #9+1                         ; * (NUMBER 'NORMALIZED' TO 9 PLACES & DECIMAL PT) 
                    BMI      LBE36                        ; BRANCH IF NUMBER < 1.0 
                    CMPA     #9+2                         ; NINE PLACES MAY BE DISPLAYED WITHOUT 
;         USING SCIENTIFIC NOTATION
                    BCC      LBE36                        ; BRANCH IF SCIENTIFIC NOTATION REQUIRED 
                    DECA                                  ; * SUBTRACT 1 FROM MODIFIED BASE 10 EXPONENT CTR 
                    TFR      A,B                          ; * AND SAVE IT IN ACCB (DECiMAL POINT FLAG) 
                    LDA      #2                           ; FORCE EXPONENT = 0 - DON'T USE SCIENTIFIC NOTATION 
 .globl LBE36
LBE36:               DECA                                  ; * SUBTRACT TWO (WITHOUT AFFECTING CARRY) 
                    DECA                                  ; * FROM BASE 10 EXPONENT 
                    STA      _V47                          ; SAVE EXPONENT - ZERO EXPONENT = DO NOT DISPLAY 
;         IN   SCIENTIFIC NOTATION
                    STB      _V45                          ; DECIMAL POINT FLAG - NUMBER OF PLACES TO 
;         LEFT OF DECIMAL POINT
                    BGT      LBE4B                        ; BRANCH IF >= 1 
                    LDU      _COEFPT                       ; POINT U TO THE STRING BUFFER 
                    LDA      # '.                        ; * STORE A PERIOD
                    STA      ,U+                          ; * IN THE BUFFER 
                    TSTB                                  ; CHECK DECIMAL POINT FLAG 
                    BEQ      LBE4B                        ; BRANCH IF NOTHING TO LEFT OF DECIMAL POINT 
                    LDA      # '0                        ; * STORE A ZERO
                    STA      ,U+                          ; * IN THE BUFFER 
; CONVERT _FPA0 INTO A STRING OF ASCII DIGITS
 .globl LBE4B
LBE4B:               LDX      #LBEC5                       ; POINT X TO FP POWER OF 10 MANTISSA 
                    LDB      #0+0x80                       ; INITIALIZE DIGIT COUNTER TO 0+0x80 
; BIT 7 SET IS USED TO INDICATE THAT THE POWER OF 10 MANTISSA
;                   *        IS NEGATIVE. WHEN YOU 'ADD' A NEGATIVE MANTISSA, IT IS
; THE SAME AS SUBTRACTING A POSITIVE ONE AND BIT 7 OF ACCB IS HOW
;                   *        THE ROUTINE KNOWS THAT A 'SUBTRACTION' IS OCCURING.
 .globl LBE50
LBE50:               LDA      _FPA0+3                       ; * ADD MANTISSA LS 
                    ADDA     3,X                          ; * BYTE OF _FPA0 
                    STA      _FPA0+3                       ; * AND (X) 
                    LDA      _FPA0+2                       ; = ADD MANTISSA 
                    ADCA     2,X                          ; = NUMBER 3 BYTE OF 
                    STA      _FPA0+2                       ; = _FPA0 AND (X) 
                    LDA      _FPA0+1                       ; * ADD MANTISSA 
                    ADCA     1,X                          ; * NUMBER 2 BYTE OF 
                    STA      _FPA0+1                       ; * _FPA0 AND (X) 
                    LDA      _FPA0                         ; = ADD MANTISSA 
                    ADCA     ,X                           ; = MS BYTE OF 
                    STA      _FPA0                         ; = _FPA0 AND (X) 
                    INCB                                  ; ADD ONE TO DIGIT COUNTER 
                    RORB                                  ; ROTATE CARRY INTO BIT 7 
                    ROLB                                  ; *SET OVERFLOW FLAG AND BRANCH IF CARRY = 1 AND 
                    BVC      LBE50                        ; *POSITIVE MANTISSA OR CARRY = 0 AND NEG MANTISSA 
                    BCC      LBE72                        ; BRANCH IF NEGATIVE MANTISSA 
                    SUBB     #10+1                        ; * TAKE THE 9'S COMPLEMENT IF 
                    NEGB                                  ; * ADDING MANTISSA 
 .globl LBE72
LBE72: 
                    ADDB     # '0-1                      ; ADD ASCII OFFSET TO DIGIT
                    LEAX     4,X                          ; MOVE TO NEXT POWER OF 10 MANTISSA 
                    TFR      B,A                          ; SAVE DIGIT IN ACCA 
                    ANDA     #0x7F                         ; MASK OFF BIT 7 (ADD/SUBTRACT FLAG) 
                    STA      ,U+                          ; STORE DIGIT IN STRING BUFFER 
                    DEC      _V45                          ; DECREMENT DECIMAL POINT FLAG 
                    BNE      LBE84                        ; BRANCH IF NOT TIME FOR DECIMAL POINT 
                    LDA      # '.                        ; * STORE DECIMAL POINT IN
                    STA      ,U+                          ; * STRING BUFFER 
 .globl LBE84
LBE84:               COMB                                  ; TOGGLE BIT 7 (ADD/SUBTRACT FLAG) 
                    ANDB     #0x80                         ; MASK OFF ALL BUT ADD/SUBTRACT FLAG 
                    CMPX     #LBEC5+36                    ; COMPARE X TO END OF MANTISSA TABLE 
                    BNE      LBE50                        ; BRANCH IF NOT AT END OF TABLE 
; BLANK TRAILING ZEROS AND STORE EXPONENT IF ANY
 .globl LBE8C
LBE8C:               LDA      ,-U                          ; GET THE LAST CHARACTER; MOVE POINTER BACK 
                    CMPA     # '0                        ; WAS IT A ZERO?
                    BEQ      LBE8C                        ; IGNORE TRAILING ZEROS IF SO 
                    CMPA     # '.                        ; CHECK FOR DECIMAL POINT
                    BNE      LBE98                        ; BRANCH IF NOT DECIMAL POINT 
                    LEAU     -1,U                         ; STEP OVER THE DECIMAL POINT 
 .globl LBE98
LBE98: 
                    LDA      # '+                        ; ASCII PLUS SIGN
                    LDB      _V47                          ; GET SCIENTIFIC NOTATION EXPONENT 
                    BEQ      LBEBA                        ; BRANCH IF NOT SCIENTIFIC NOTATION 
                    BPL      LBEA3                        ; BRANCH IF POSITIVE EXPONENT 
                    LDA      # '-                        ; ASCII MINUS SIGN
                    NEGB                                  ; NEGATE EXPONENT IF NEGATIVE 
 .globl LBEA3
LBEA3:               STA      2,U                          ; STORE EXPONENT SIGN IN STRING 
                    LDA      # 'E            ; * GET ASCII 'E (SCIENTIFIC NOTATION
                    STA      1,U                          ; * FLAG) AND SAVE IT IN THE STRING 
                    LDA      # '0-1                      ; INITIALIZE ACCA TO ASCII ZERO
 .globl LBEAB
LBEAB:               INCA                                  ; ADD ONE TO 10'S DIGIT OF EXPONENT 
                    SUBB     #10                          ; SUBTRACT 10 FROM ACCB 
                    BCC      LBEAB                        ; ADD 1 TO 10'S DIGIT IF NO CARRY 
                    ADDB     # '9+1                      ; CONVERT UNITS DIGIT TO ASCII
                    STD      3,U                          ; SAVE EXPONENT IN STRING 
                    CLR      5,U                          ; CLEAR LAST BYTE (TERMINATOR) 
                    BRA      LBEBC                        ; GO RESET POINTER 

 .globl LBEB8
LBEB8:               STA      ,U                           ; STORE LAST CHARACTER 
 .globl LBEBA
LBEBA:               CLR      1,U                          ; CLEAR LAST BYTE (TERMINATOR - REQUIRED BY 
;         PRINT SUBROUTINES)
 .globl LBEBC
LBEBC:                                                     ;LDX     #STRBUF+3 ; RESET POINTER TO START OF BUFFER 
                    RTS      

;
 .globl LBEC0
LBEC0:               .byte      0x80,0x00,0x00,0x00,0x00          ; FLOATING POINT .5 
;
;** TABLE OF UNNORMALIZED POWERS OF 10
 .globl LBEC5
LBEC5:               .byte      0xFA,0x0A,0x1F,0x00              ; -100000000 
 .globl LBEC9
LBEC9:               .byte      0x00,0x98,0x96,0x80              ; 10000000 
 .globl LBECD
LBECD:               .byte      0xFF,0xF0,0xBD,0xC0              ; -1000000 
 .globl LBED1
LBED1:               .byte      0x00,0x01,0x86,0xA0              ; 100000 
 .globl LBED5
LBED5:               .byte      0xFF,0xFF,0xD8,0xF0              ; -10000 
 .globl LBED9
LBED9:               .byte      0x00,0x00,0x03,0xE8              ; 1000 
 .globl LBEDD
LBEDD:               .byte      0xFF,0xFF,0xFF,0x9C              ; -100 
 .globl LBEE1
LBEE1:               .byte      0x00,0x00,0x00,0x0A              ; 10 
 .globl LBEE5
LBEE5:               .byte      0xFF,0xFF,0xFF,0xFF              ; -1 
;
;
 .globl LBEE9
LBEE9:               LDA      _FP0EXP                       ; GET EXPONENT OF _FPA0 
                    BEQ      LBEEF                        ; BRANCH IF _FPA0 = 0 
                    COM      _FP0SGN                       ; TOGGLE MANTISSA SIGN OF _FPA0 
 .globl LBEEF
LBEEF:               RTS      

;
;
; EXTENDED BASIC RVEC19 HOOK CODE
 .globl XVEC19
XVEC19: 
                    CMPA     # '&                        ; *
                    BNE      L8845                        ; * RETURN IF NOT HEX OR OCTAL _VABRIABLE 
                    LEAS     0x02,S                        ; PURGE RETURN ADDRESS FROM STACK 
;                   *        PROCESS A _VABRIABLE PRECEEDED BY A '&' (&H,&O)
 .globl L87EB
L87EB:               CLR      _FPA0+2                       ; * CLEAR BOTTOM TWO 
                    CLR      _FPA0+3                       ; * BYTES OF _FPA0 
                    LDX      #_FPA0+2                      ; BYTES 2,3 OF _FPA0 = (TEMPORARY ACCUMULATOR) 
                    JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
                    CMPA     # 'O
                    BEQ      L880A                        ; YES 
                    CMPA     # 'H
                    BEQ      L881F                        ; YES 
                    JSR      GETCCH                       ; GET CURRENT INPUT CHARACTER 
                    BRA      L880C                        ; DEFAULT TO OCTAL (&O) 

 .globl L8800
L8800: 
                    CMPA     # '8
                    LBHI     SYNTAX_ERROR 
                    LDB      #0x03                         ; BASE 8 MULTIPLIER 
                    BSR      L8834                        ; ADD DIGIT TO TEMPORARY ACCUMULATOR 
; E_VABLUATE AN &O _VABRIABLE
 .globl L880A
L880A:               JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
 .globl L880C
L880C:               BLO      L8800                        ; BRANCH IF NUMERIC 
 .globl L880E
L880E:               CLR      _FPA0                         ; * CLEAR 2 HIGH ORDER 
                    CLR      _FPA0+1                       ; * BYTES OF _FPA0 
;          CLR  _VABLTYP         ; SET _VABRXABLE TYPE TO NUMERIC
                    CLR      _FPSBYT                       ; ZERO OUT SUB BYTE OF _FPA0 
                    CLR      _FP0SGN                       ; ZERO OUT MANTISSA SIGN OF _FPA0 
                    LDB      #0xA0                         ; * SET EXPONENT OF _FPA0 
                    STB      _FP0EXP                       ; * 
                    JMP      LBA1C                        ; GO NORMALIZE _FPA0 

; E_VABLUATE AN &H _VABRIABLE
 .globl L881F
L881F:               JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
                    BLO      L882E                        ; BRANCH IF NUMERIC 
                    JSR      LB3A2                        ; SET CARRY IF NOT ALPHA 
                    BLO      L880E                        ; BRANCH IF NOT ALPHA OR NUMERIC 
                    CMPA     # 'G                        ; CHECK FOR LETTERS A-F
                    BCC      L880E                        ; BRANCH IF >= G (ILLEGAL HEX LETTER) 
                    SUBA     #7                           ; SUBTRACT ASCII DIFFERENCE BETWEEN A AND 9 
 .globl L882E
L882E:               LDB      #0x04                         ; BASE 16 DIGIT MULTIPLIER = 2**4 
                    BSR      L8834                        ; ADD DIGIT TO TEMPORARY ACCUMULATOR 
                    BRA      L881F                        ; KEEP E_VABLUATING _VABRIABLE 

 .globl L8834
L8834:               ASL      0x01,X                        ; * MULTIPLY TEMPORARY 
                    ROL      ,X                           ; * ACCUMULATOR BY TWO 
                    LBCS     LBA92                        ; 'OV' OVERFLOW ERROR 
                    DECB                                  ; DECREMENT SHIFT COUNTER 
                    BNE      L8834                        ; MULTIPLY TEMPORARY ACCUMULATOR AGAIN 
                    SUBA     # '0                        ; MASK OFF ASCII
                    ADDA     0x01,X                        ; * ADD DIGIT TO TEMPORARY 
                    STA      0x01,X                        ; * ACCUMULATOR AND SAVE IT 
 .globl L8845
L8845:               RTS      
