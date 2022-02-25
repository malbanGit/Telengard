                              1  .module floating40Bit.s
                              2  .area .text
                              3 
                              4 ; uses 50 bytes of RAM
                              5 
                              6 ; This file can be converted with Vide to be gcc assembler compatible!
                              7 ; and thus can be used directly with "C" (gcc6809)
                              8 ;
                              9 ; All internal floating point stuff is based on Microsoft BASIC for 6809.
                             10 ; One source I found: https://github.com/jefftranter/6809/tree/master/sbc/exbasrom
                             11 ;
                             12 ; RAM needed:
                             13 ; except String buffer - needs 48 bytes of storage (can probably be reduced a little bit)
                             14 ; mainly 2 internal FP representations
                             15 ; plus another 3 for "scratch" purposes
                             16 ;
                             17 ; 40 bits float format:
                             18 ; 8 bits exponent (if highest bit set, fp number >=1)
                             19 ; 32 bit mantissa
                             20 ; highest bit of mantissa is sign bit
                             21 ; and allways interpreted as "1" for mantissa
                             22 ; 0 is positive, 1 is negative
                             23 ; EEEE EEEE SMMM MMMM MMMM MMMM MMMM MMMM MMMM MMMM
                             24 ;
                             25 ; ERROR handling is not implmented!!!
                             26 ; if an error occurs this might likely crash
                             27 ; this is due to the fact that I jump to the error handler and simply "return"
                             28 ; regardless of the sub function I may be in!
                             29 ; (but this could easily be fixed... I just don't need it (yet))
                             30 ;
                             31 ; functions avaiable from C
                             32 ;void initFP(); // must be called once!
                             33 ;void subF(unsigned char *subFrom, unsigned char *subWhat, unsigned char *out);
                             34 ;void addF(unsigned char *add1, unsigned char *add2, unsigned char *out);
                             35 ;void mulF(unsigned char *mul1, unsigned char *mul2, unsigned char *out);
                             36 ;void intF(unsigned char *in, unsigned char *out);
                             37 ;void mulIF(unsigned long int mul1, unsigned char *mul2, unsigned char *out);
                             38 ;void addIF(unsigned long int add1, unsigned char *add2, unsigned char *out);
                             39 ;unsigned long int toInt(unsigned char *in);
                             40 ;void fToStr(unsigned char *f, unsigned char *buffer);
                             41 ;
                             42 ; (I did not need "div" functions yet - but they can easily be derived from the below listed "internal" functions)
                             43 ;
                             44 ; Except for the string buffer all 
                             45 ; unsigned char * 
                             46 ; variables are 5 byte of unsigned char (40 bit)
                             47 ; and these represent "packed" floating point numbers
                             48 ;
                             49 ; based on "internal" functions
                             50 ; atoF0(y)
                             51 ; F0toa(u) U = StringBuffer; destroys F0; buffer 0 terminated
                             52 ; packedToF0(x)
                             53 ; packedToF1(x)
                             54 ; F0toF1()
                             55 ; F1toF0()
                             56 ; divF1byF0() result in _FPA0
                             57 ; mulF0x(x) result in _FPA0
                             58 ; subF0From(x) result in _FPA0
                             59 ; addF0To(x) result in _FPA0
                             60 ; mulF0F1() result in _FPA0
                             61 ; addF0ToF1() result in _FPA0
                             62 ; subF0FromF1() result in _FPA0
                             63 ; F0ToPacked result in _FPA0
                             64 ; F0toXPacked(x)
                             65 ; DToF0 convert integer in D to float
                             66 ; F0ToD convert integer parts from float to D
                             67 ;
                             68 ; insert your variables (RAM usage) in the BSS section
                             69                     .area .bss      
                             70 
                             71 
                             72 ; Vars moved to "global"
                             73 
                             74 
                             75 ;STRBUF              RMB      41                           ; STRING BUFFER 
                     0020    76 SPACE               =      0x20                          ; SPACE (BLANK) 
                             77 ; PSEUDO OPS
                     008C    78 SKP2                =      0x8C                          ; OP CODE OF CMPX # - SKIP TWO BYTES 
                             79                     .area .text    
                             80 ;// TODO!!!! 
                             81  .globl ERROR_HANDLER
   1501                      82 ERROR_HANDLER: 
                             83  .globl SYNTAX_ERROR
   1501                      84 SYNTAX_ERROR: 
   1501 7E 14 E2      [ 4]   85  jmp _floatError
   1504 39            [ 5]   86                     rts                                   ; this might lead to errors, because we don't clean the stack! 
                             87 ; ERROR MESSAGES AND THEIR NUMBERS AS USED INTERNALLY
                             88 ;LABAF     FCC  "NF"           ; 0 NEXT WITHOUT FOR
                             89 ;          FCC  "SN"           ; 1 SYNTAX ERROR
                             90 ;          FCC  "RG"           ; 2 RETURN WITHOUT GOSUB
                             91 ;          FCC  "OD"           ; 3 OUT OF DATA
                             92 ;          FCC  "FC"           ; 4 ILLEGAL FUNCTION CALL
                             93 ;          FCC  "OV"           ; 5 OVERFLOW
                             94 ;          FCC  "OM"           ; 6 OUT OF MEMORY
                             95 ;          FCC  "UL"           ; 7 UNDEFINED LINE NUMBER
                             96 ;          FCC  "BS"           ; 8 BAD SUBSCRIPT
                             97 ;          FCC  "DD"           ; 9 REDIMENSIONED ARRAY
                             98 ;          FCC  "/0"           ; 10 DIVISION BY ZERO
                             99 ;          FCC  "ID"           ; 11 ILLEGAL DIRECT STATEMENT
                            100 ;          FCC  "TM"           ; 12 TYPE MISMATCH
                            101 ;          FCC  "OS"           ; 13 OUT OF STRING SPACE
                            102 ;          FCC  "LS"           ; 14 STRING TOO LONG
                            103 ;          FCC  "ST"           ; 15 STRING FORMULA TOO COMPLEX
                            104 ;          FCC  "CN"           ; 16 CAN'T CONTINUE
                            105 ;          FCC  "FD"           ; 17 BAD FILE DATA
                            106 ;          FCC  "AO"           ; 18 FILE ALREADY OPEN
                            107 ;          FCC  "DN"           ; 19 DEVICE NUMBER ERROR
                            108 ;          FCC  "IO"           ; 20 I/O ERROR
                            109 ;          FCC  "FM"           ; 21 BAD FILE MODE
                            110 ;          FCC  "NO"           ; 22 FILE NOT OPEN
                            111 ;          FCC  "IE"           ; 23 INPUT PAST END OF FILE
                            112 ;          FCC  "DS"           ; 24 DIRECT STATEMENT IN FILE
                            113 ;* ADDITIONAL ERROR MESSAGES ADDED BY EXTENDED BASIC
                            114 ;L890B     FCC  "UF"           ; 25 UNDEFINED FUNCTION (FN) CALL
                            115 ;L890D     FCC  "NE"           ; 26 FILE NOT FOUND
                            116 
                            117 
                            118 
                            119 ;----------------------
                            120 ; "C" callable
                            121 ;----------------------
                            122  .globl _initFP
   1505                     123 _initFP: 
   1505 7F CA 95      [ 7]  124                     clr      _FPCARY                       ; this must be initialized before first FP usage 
   1508 39            [ 5]  125                     rts      
                            126 
                            127 ; zero terminated string
                            128 ; fToStr(unsigned char [] float, to unsigned char [] buffer)
                            129  .globl _fToStr
   1509                     130 _fToStr: 
   1509 BD 18 E7      [ 8]  131                     jsr      packedToF0 
   150C EE 62         [ 6]  132                     ldu      2,s 
   150E 7E 1A F3      [ 4]  133                     jmp      F0toa 
                            134  .globl _fToStr2
   1511                     135 _fToStr2: 
   1511 33 84         [ 4]  136                     leau      ,x 
   1513 7E 1A F3      [ 4]  137                     jmp      F0toa 
                            138 
                            139 ; mulIF(signed int16, unsigned char [] pointer1, to unsigned char [] pointer2)
                            140  .globl _mulIF
   1516                     141 _mulIF: 
   1516 1F 10         [ 6]  142                     tfr      x,d 
   1518 8D 53         [ 7]  143                     bsr      DToF0                        ;convert integer in D to float 
   151A AE 62         [ 6]  144                     ldx      2,s 
   151C BD 17 46      [ 8]  145                     jsr      mulF0x                       ; (x) result in _FPA0 
   151F AE 64         [ 6]  146                     ldx      4,s 
   1521 7E 15 C2      [ 4]  147                     jmp      F0toXPacked                  ; 
                            148 
                            149 ; mulF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
                            150  .globl _mulF
   1524                     151 _mulF: 
   1524 BD 18 E7      [ 8]  152                     jsr      packedToF0 
   1527 AE 62         [ 6]  153                     ldx      2,s 
   1529 BD 17 46      [ 8]  154                     jsr      mulF0x 
   152C AE 64         [ 6]  155                     ldx      4,s 
   152E 7E 15 C2      [ 4]  156                     jmp      F0toXPacked 
                            157 
                            158 ; addF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
                            159  .globl _addF
   1531                     160 _addF: 
   1531 BD 18 E7      [ 8]  161                     jsr      packedToF0 
   1534 AE 62         [ 6]  162                     ldx      2,s 
   1536 BD 15 FE      [ 8]  163                     jsr      addF0To 
   1539 AE 64         [ 6]  164                     ldx      4,s 
   153B 7E 15 C2      [ 4]  165                     jmp      F0toXPacked 
                            166 
                            167 ; addF(signed int16, unsigned char [] pointer1, to unsigned char [] pointer2)
                            168  .globl _addIF
   153E                     169 _addIF: 
   153E 1F 10         [ 6]  170                     tfr      x,d 
   1540 8D 2B         [ 7]  171                     bsr      DToF0                        ;convert integer in D to float 
   1542 AE 62         [ 6]  172                     ldx      2,s 
   1544 BD 15 FE      [ 8]  173                     jsr      addF0To 
   1547 AE 64         [ 6]  174                     ldx      4,s 
   1549 7E 15 C2      [ 4]  175                     jmp      F0toXPacked 
                            176 
                            177 ; pointer3 = pointer1 - pointer2
                            178 ; subF(to unsigned char [] pointer1, to unsigned char [] pointer2, to unsigned char [] pointer3)
                            179  .globl _subF
   154C                     180 _subF: 
   154C BD 17 D2      [ 8]  181                     jsr      packedToF1 
   154F AE 62         [ 6]  182                     ldx      2,s 
   1551 BD 18 E7      [ 8]  183                     jsr      packedToF0 
   1554 17 00 8C      [ 9]  184                     lbsr      subF0FromF1 
   1557 AE 64         [ 6]  185                     ldx      4,s 
   1559 20 67         [ 3]  186                     bra      F0toXPacked 
                            187 
                            188 ; intFF(to unsigned char [] pointer1, to unsigned char [] pointer2)
                            189  .globl _intF
   155B                     190 _intF: 
   155B BD 18 E7      [ 8]  191  jsr      packedToF0 
   155E BD 19 F1      [ 8]  192  jsr _toInt2
   1561 AE 62         [ 6]  193                     ldx      2,s 
   1563 20 5D         [ 3]  194                     bra      F0toXPacked 
                            195 
                            196 
                            197  
                            198 
                            199 ; obviously only makes sense if the result of the float is less then 65536
                            200 ;int16 bit from F: x = toInt(to unsigned char [] pointer1)
                            201  .globl _toInt
   1565                     202 _toInt: 
   1565 BD 18 E7      [ 8]  203                     jsr      packedToF0 
   1568 8D 24         [ 7]  204                     bsr      F0ToD 
   156A 1F 01         [ 6]  205                     tfr      d,x 
   156C 39            [ 5]  206                     rts      
                            207 
                            208 
                            209 ;//////////////////////////////////////////////////
                            210 ; "internal" functions follow
                            211 ; other interna functions are "relabled" MS BASIC functions
                            212 ; see below
                            213 ;//////////////////////////////////////////////////
                            214 ; always signed!
                            215 ; 16 bit
                            216  .globl DToF0
   156D                     217 DToF0: 
   156D FD CA 8A      [ 6]  218                     std      _FPA0 
   1570 C6 90         [ 2]  219                     LDB      #0x88+8                       ; EXPONENT REQUIRED IF _FPA0 IS TO BE AN INTEGER 
                            220                                                           ; this is for CARRY flag only - which is tested later on! 
   1572 B6 CA 8A      [ 5]  221                     LDA      _FPA0                         ; GET MS BYTE OF MANTISSA 
   1575 80 80         [ 2]  222                     SUBA     #0x80                         ; SET CARRY IF POSITIVE MANTISSA 
   1577 F7 CA 89      [ 5]  223                     STB      _FP0EXP                       ; SAVE EXPONENT 
   157A CC 00 00      [ 3]  224                     LDD      #0                           ; * ZERO OUT ACCD AND 
   157D FD CA 8C      [ 6]  225                     STD      _FPA0+2                       ; * BOTTOM HALF OF _FPA0 
   1580 B7 CA 9D      [ 5]  226                     STA      _FPSBYT                       ; CLEAR SUB BYTE 
   1583 B7 CA 8E      [ 5]  227                     STA      _FP0SGN                       ; CLEAR SIGN OF _FPA0 MANTISSA 
   1586 7E 16 68      [ 4]  228                     JMP      LBA18                        ; GO NORMALIZE _FPA0 
                            229 
   1589 90 80 00 00 00      230 LB3DF:     .byte  0x90,0x80,0x00,0x00,0x00 ; * FLOATING POINT -32768
                            231 
                            232  .globl F0ToD
   158E                     233 F0ToD: 
                            234 ;                    jsr      LBCC8 
                            235 ;                    ldd      _FPA0+2 
                            236 ;                    rts      
   158E                     237 INTCNV:
   158E B6 CA 89      [ 5]  238           LDA  _FP0EXP         ; GET FPA0 EXPONENT
   1591 81 90         [ 2]  239           CMPA #0x90           ; * COMPARE TO 32768 - LARGEST INTEGER EXPONENT AND
   1593 25 0A         [ 3]  240           BCS  LB3FE          ; * BRANCH IF FPA0 < 32768
   1595 8E 15 89      [ 3]  241           LDX  #LB3DF         ; POINT X TO FP VALUE OF -32768
   1598 BD 19 8B      [ 8]  242           JSR  LBC96          ; COMPARE -32768 TO FPA0
   159B 10 26 00 07   [ 6]  243           lBNE  LB44A
   159F                     244 LB3FE:
   159F BD 19 C4      [ 8]  245           JSR  LBCC8          ; CONVERT FPA0 TO A TWO BYTE INTEGER
   15A2 FC CA 8C      [ 6]  246           LDD  _FPA0+2         ; GET THE INTEGER
   15A5 39            [ 5]  247           RTS
                            248 
                            249 
   15A6                     250 LB44A:
   15A6 C6 08         [ 2]  251      LDB  #4*2           ; 'ILLEGAL FUNCTION CALL'
   15A8 7E 15 01      [ 4]  252      jmp ERROR_HANDLER          ; 'FC' ERROR IF NOT =
                            253 
                            254 
                            255 
                            256 
                            257 
                            258 
                            259 
                            260 
                            261 
                            262 
                            263 
                            264 
                            265 
                            266 
                            267 
                            268 
                            269 
                            270 
                            271 
                            272 
                            273 
                            274 
                            275 
                            276 
                            277 
                            278 
                            279 
                            280 
                            281 
                            282 
                            283 ;------------------------------
                            284 ; MICROSOFT BASIC routines follow!
                            285 ;------------------------------
                            286 ; this "simulates" a BASIC input queue
                            287 ; and is used when converting Str to float
                            288  .globl GETCCH
   15AB                     289 GETCCH: 
                            290  .globl GETNCH
   15AB                     291 GETNCH: 
   15AB A6 A0         [ 6]  292                     lda      ,y+ 
                            293 ; SET CARRY IF NUMERIC - RETURN WITH
                            294 ; ZERO FLAG SET IF ACCA = 0 OR 3A(:) - END
                            295 ; OF BASIC LINE OR SUB LINE
                            296  .globl BROMHK
   15AD                     297 BROMHK: 
   15AD 81 3A         [ 2]  298                     CMPA     # '9+1                      ; IS THIS CHARACTER >=(ASCII 9)+1?
   15AF 24 04         [ 3]  299                     BHS      LAA28                        ; BRANCH IF > 9; Z SET IF = COLON 
                            300  .globl LAA24
   15B1                     301 LAA24: 
   15B1 80 30         [ 2]  302                     SUBA     # '0                        ; * SET CARRY IF
   15B3 80 D0         [ 2]  303                     SUBA     #- '0                       ; * CHARACTER > ASCII 0
                            304  .globl RTS0
   15B5                     305 RTS0: 
                            306  .globl LAA28
   15B5 39            [ 5]  307 LAA28:               RTS      
                            308 
                            309 ; SET CARRY IF NOT UPPER CASE ALPHA
                            310  .globl LB3A2
   15B6                     311 LB3A2: 
   15B6 81 41         [ 2]  312                     CMPA     # 'A            ; * CARRY SET IF < 'A
   15B8 25 04         [ 3]  313                     BCS      LB3AA                        ; * 
   15BA 80 5B         [ 2]  314                     SUBA     # 'Z+1                      ; =
                            315 ;                   *        SUBA #-( 'Z+1)       ; = CARRY CLEAR IF <= 'Z'
   15BC 80 A5               316                     .byte      0x80,0xA5 
                            317  .globl LB3AA
   15BE 39            [ 5]  318 LB3AA:               RTS      
                            319 
                            320 ; FLOATING POINT MATH PACKAGE
                            321 ; converts _FPA0 to a packed representation
                            322 ; uses FPA as target address
                            323  .globl F0ToPacked
   15BF                     324 F0ToPacked: 
   15BF 8E CA 89      [ 3]  325                     ldx      #_FPA0-1 
                            326 ; uses X as target pointer
                            327  .globl F0toXPacked
   15C2                     328 F0toXPacked: 
   15C2 B6 CA 89      [ 5]  329                     lda      _FP0EXP 
   15C5 A7 84         [ 4]  330                     sta      ,x 
   15C7 F6 CA 8A      [ 5]  331                     ldb      _FPA0 
   15CA B6 CA 8E      [ 5]  332                     lda      _FP0SGN                       ; load sign 
   15CD 2B 02         [ 3]  333                     bmi      negative                     ; if negative the mantisse should be ok with a set high bit 
   15CF C4 7F         [ 2]  334                     andb     #0x7f                         ; remove highest bit 
                            335  .globl negative
   15D1                     336 negative: 
   15D1 E7 01         [ 5]  337                     stb      1,x                          ; and save 
   15D3 FC CA 8B      [ 6]  338                     ldd      _FPA0+1 
   15D6 ED 02         [ 6]  339                     std      2,x                          ; 
   15D8 B6 CA 8D      [ 5]  340                     lda      _FPA0+3 
   15DB A7 04         [ 5]  341                     sta      4,x                          ; 
   15DD 39            [ 5]  342                     rts      
                            343 
                            344 ; ADD .5 TO _FPA0
                            345  .globl LB9B4
   15DE 8E 1B E9      [ 3]  346 LB9B4:               LDX      #LBEC0                       ; FLOATING POINT CONSTANT (.5) 
   15E1 20 1B         [ 3]  347                     BRA      LB9C2                        ; ADD .5 TO _FPA0 
                            348 
                            349  .globl subF0FromF1
   15E3                     350 subF0FromF1: 
   15E3 B6 CA 96      [ 5]  351                     LDA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
   15E6 F6 CA 89      [ 5]  352                     LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   15E9 20 03         [ 3]  353                     bra      LB9BC 
                            354 
                            355 ; SUBTRACT _FPA0 FROM FP NUMBER POINTED
                            356 ; TO BY (X), LEAVE RESULT IN _FPA0
                            357  .globl subF0From
   15EB                     358 subF0From: 
                            359  .globl LB9B9
   15EB BD 17 D2      [ 8]  360 LB9B9:               JSR      LBB2F                        ; COPY PACKED FP DATA FROM (X) TO _FPA1 
                            361 ; ARITHMETIC OPERATION (-) JUMPS HERE - SUBTRACT _FPA0 FROM _FPA1 (ENTER
                            362 ; WITH EXPONENT OF _FPA0 IN ACCB AND EXPONENT OF _FPA1 IN ACCA)
                            363  .globl LB9BC
   15EE 73 CA 8E      [ 7]  364 LB9BC:               COM      _FP0SGN                       ; CHANGE MANTISSA SIGN OF _FPA0 
   15F1 73 CA 9C      [ 7]  365                     COM      _RESSGN                       ; REVERSE RESULT SIGN FLAG 
   15F4 20 0B         [ 3]  366                     BRA      LB9C5                        ; GO ADD _FPA1 AND _FPA0 
                            367 
                            368  .globl addF0toF1
   15F6                     369 addF0toF1: 
   15F6 B6 CA 96      [ 5]  370                     LDA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
   15F9 F6 CA 89      [ 5]  371                     LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   15FC 20 03         [ 3]  372                     bra      LB9C5 
                            373 
                            374 ; ADD FP NUMBER POINTED TO BY
                            375 ; (X) TO _FPA0 - LEAVE RESULT IN _FPA0
                            376  .globl addF0To
   15FE                     377 addF0To: 
                            378  .globl LB9C2
   15FE BD 17 D2      [ 8]  379 LB9C2:               JSR      LBB2F                        ; UNPACK PACKED FP DATA FROM (X) TO 
                            380 ;         _FPA1                                            ; RETURN EXPONENT OF _FPA1 IN ACCA
                            381 ; ARITHMETIC OPERATION (+) JUMPS HERE - ADD _FPA0 TO
                            382  .globl LB9C5
   1601 5D            [ 2]  383 LB9C5:               TSTB                                  ; CHECK EXPONENT OF _FPA0 
   1602 10 27 03 1E   [ 6]  384                     LBEQ     LBC4A                        ; COPY _FPA1 TO _FPA0 IF _FPA0 = 
   1606 8E CA 96      [ 3]  385                     LDX      #_FP1EXP                      ; POINT X TO _FPA1 
                            386  .globl LB9CD
   1609 1F 89         [ 6]  387 LB9CD:               TFR      A,B                          ; PUT EXPONENT OF _FPA1 INTO ACCB 
   160B 5D            [ 2]  388                     TSTB                                  ; CHECK EXPONENT 
   160C 27 A7         [ 3]  389                     BEQ      RTS0                         ;LBA3E ; RETURN IF EXPONENT = 0 (ADDING 0 TO _FPA0) 
   160E F0 CA 89      [ 5]  390                     SUBB     _FP0EXP                       ; SUBTRACT EXPONENT OF _FPA0 FROM EXPONENT OF _FPA1 
   1611 10 27 00 86   [ 6]  391                     LBEQ     LBA3F                        ; BRANCH IF EXPONENTS ARE EQUAL 
   1615 25 0D         [ 3]  392                     BCS      LB9E2                        ; BRANCH IF EXPONENT _FPA0 > _FPA1 
   1617 B7 CA 89      [ 5]  393                     STA      _FP0EXP                       ; REPLACE _FPA0 EXPONENT WITH _FPA1 EXPONENT 
   161A B6 CA 9B      [ 5]  394                     LDA      _FP1SGN                       ; * REPLACE _FPA0 MANTISSA SIGN 
   161D B7 CA 8E      [ 5]  395                     STA      _FP0SGN                       ; * WITH _FPA1 MANTISSA SIGN 
   1620 8E CA 89      [ 3]  396                     LDX      #_FP0EXP                      ; POINT X TO _FPA0 
   1623 50            [ 2]  397                     NEGB                                  ; NEGATE DIFFERENCE OF EXPONENTS 
                            398  .globl LB9E2
   1624 C1 F8         [ 2]  399 LB9E2:               CMPB     #-8                          ; TEST DIFFERENCE OF EXPONENTS 
   1626 2F 73         [ 3]  400                     BLE      LBA3F                        ; BRANCH IF DIFFERENCE OF EXPONENTS <= 8 
   1628 4F            [ 2]  401                     CLRA                                  ; CLEAR OVERFLOW BYTE 
   1629 64 01         [ 7]  402                     LSR      1,X                          ; SHIFT MS BYTE OF MANTISSA; BIT 7 = 0 
   162B BD 17 31      [ 8]  403                     JSR      LBABA                        ; GO SHIFT MANTISSA OF (X) TO THE RIGHT (B) TIMES 
                            404  .globl LB9EC
   162E F6 CA 9C      [ 5]  405 LB9EC:               LDB      _RESSGN                       ; GET SIGN FLAG 
   1631 2A 0B         [ 3]  406                     BPL      LB9FB                        ; BRANCH IF _FPA0 AND _FPA1 SIGNS ARE THE SAME 
   1633 63 01         [ 7]  407                     COM      1,X                          ; * COMPLEMENT MANTISSA POINTED 
   1635 63 02         [ 7]  408                     COM      2,X                          ; * TO BY (X) THE 
   1637 63 03         [ 7]  409                     COM      3,X                          ; * ADCA BELOW WILL 
   1639 63 04         [ 7]  410                     COM      4,X                          ; * CONVERT THIS OPERATION 
   163B 43            [ 2]  411                     COMA                                  ; * INTO A NEG (MANTISSA) 
   163C 89 00         [ 2]  412                     ADCA     #0                           ; ADD ONE TO ACCA - COMA ALWAYS SETS THE CARRY FLAG 
                            413 ; THE PREVIOUS TWO BYTES MAY BE REPLACED BY A NEGA
                            414 ;
                            415 ; ADD MANTISSAS OF _FPA0 AND _FPA1, PUT RESULT IN _FPA0
                            416  .globl LB9FB
   163E B7 CA 9D      [ 5]  417 LB9FB:               STA      _FPSBYT                       ; SAVE FPA SUB BYTE 
   1641 B6 CA 8D      [ 5]  418                     LDA      _FPA0+3                       ; * ADD LS BYTE 
   1644 B9 CA 9A      [ 5]  419                     ADCA     _FPA1+3                       ; * OF MANTISSA 
   1647 B7 CA 8D      [ 5]  420                     STA      _FPA0+3                       ; SAVE IN _FPA0 LSB 
   164A B6 CA 8C      [ 5]  421                     LDA      _FPA0+2                       ; * ADD NEXT BYTE 
   164D B9 CA 99      [ 5]  422                     ADCA     _FPA1+2                       ; * OF MANTISSA 
   1650 B7 CA 8C      [ 5]  423                     STA      _FPA0+2                       ; SAVE IN _FPA0 
   1653 B6 CA 8B      [ 5]  424                     LDA      _FPA0+1                       ; * ADD NEXT BYTE 
   1656 B9 CA 98      [ 5]  425                     ADCA     _FPA1+1                       ; * OF MANTISSA 
   1659 B7 CA 8B      [ 5]  426                     STA      _FPA0+1                       ; SAVE IN _FPA0 
   165C B6 CA 8A      [ 5]  427                     LDA      _FPA0                         ; * ADD MS BYTE 
   165F B9 CA 97      [ 5]  428                     ADCA     _FPA1                         ; * OF MANTISSA 
   1662 B7 CA 8A      [ 5]  429                     STA      _FPA0                         ; SAVE IN _FPA0 
   1665 5D            [ 2]  430                     TSTB                                  ; TEST SIGN FLAG 
   1666 2A 58         [ 3]  431                     BPL      LBA5C                        ; BRANCH IF _FPA0 & _FPA1 SIGNS WERE ALIKE 
                            432  .globl LBA18
   1668 25 02         [ 3]  433 LBA18:               BCS      LBA1C                        ; BRANCH IF POSITIVE MANTISSA 
   166A 8D 78         [ 7]  434                     BSR      LBA79                        ; NEGATE _FPA0 MANTISSA 
                            435 ; NORMALIZE _FPA0
                            436  .globl LBA1C
   166C 5F            [ 2]  437 LBA1C:               CLRB                                  ; CLEAR TEMPORARY EXPONENT ACCUMULATOR 
                            438  .globl LBA1D
   166D B6 CA 8A      [ 5]  439 LBA1D:               LDA      _FPA0                         ; TEST MSB OF MANTISSA 
   1670 26 3F         [ 3]  440                     BNE      LBA4F                        ; BRANCH IF <> 0 
   1672 B6 CA 8B      [ 5]  441                     LDA      _FPA0+1                       ; * IF THE MSB IS 
   1675 B7 CA 8A      [ 5]  442                     STA      _FPA0                         ; * 0, THEN SHIFT THE 
   1678 B6 CA 8C      [ 5]  443                     LDA      _FPA0+2                       ; * MANTISSA A WHOLE BYTE 
   167B B7 CA 8B      [ 5]  444                     STA      _FPA0+1                       ; * AT A TIME. THIS 
   167E B6 CA 8D      [ 5]  445                     LDA      _FPA0+3                       ; * IS FASTER THAN ONE 
   1681 B7 CA 8C      [ 5]  446                     STA      _FPA0+2                       ; * BIT AT A TIME 
   1684 B6 CA 9D      [ 5]  447                     LDA      _FPSBYT                       ; * BUT USES MORE MEMORY. 
   1687 B7 CA 8D      [ 5]  448                     STA      _FPA0+3                       ; * _FPSBYT, THE CARRY IN 
   168A 7F CA 9D      [ 7]  449                     CLR      _FPSBYT                       ; * BYTE, REPLACES THE MATISSA LSB. 
   168D CB 08         [ 2]  450                     ADDB     #8                           ; SHIFTING ONE BYTE = 8 BIT SHIFTS; ADD 8 TO EXPONENT 
   168F C1 28         [ 2]  451                     CMPB     #5*8                         ; CHECK FOR 5 SHIFTS 
   1691 2D DA         [ 3]  452                     BLT      LBA1D                        ; BRANCH IF < 5 SHIFTS, IF > 5, THEN MANTISSA = 0 
                            453  .globl LBA39
   1693 4F            [ 2]  454 LBA39:               CLRA                                  ; A ZERO EXPONENT = 0 FLOATING POINT 
                            455  .globl LBA3A
   1694 B7 CA 89      [ 5]  456 LBA3A:               STA      _FP0EXP                       ; ZERO OUT THE EXPONENT 
   1697 B7 CA 8E      [ 5]  457                     STA      _FP0SGN                       ; ZERO OUT THE MANTISSA SIGN 
                            458  .globl LBA3E
   169A 39            [ 5]  459 LBA3E:               RTS      
                            460 
                            461  .globl LBA3F
   169B BD 17 24      [ 8]  462 LBA3F:               JSR      LBAAE                        ; SHIFT _FPA0 MANTISSA TO RIGHT 
   169E 5F            [ 2]  463                     CLRB                                  ; CLEAR CARRY FLAG 
   169F 20 8D         [ 3]  464                     BRA      LB9EC 
                            465 
                            466 ; SHIFT _FPA0 LEFT ONE BIT UNTIL BIT 7
                            467 ; OF MATISSA MS BYTE = 1
                            468  .globl LBA44
   16A1 5C            [ 2]  469 LBA44:               INCB                                  ; ADD ONE TO EXPONENT ACCUMULATOR 
   16A2 78 CA 9D      [ 7]  470                     ASL      _FPSBYT                       ; SHIFT SUB BYTE ONE LEFT 
   16A5 79 CA 8D      [ 7]  471                     ROL      _FPA0+3                       ; SHIFT LS BYTE 
   16A8 79 CA 8C      [ 7]  472                     ROL      _FPA0+2                       ; SHIFT NS BYTE 
   16AB 79 CA 8B      [ 7]  473                     ROL      _FPA0+1                       ; SHIFT NS BYTE 
   16AE 79 CA 8A      [ 7]  474                     ROL      _FPA0                         ; SHIFT MS BYTE 
                            475  .globl LBA4F
   16B1 2A EE         [ 3]  476 LBA4F:               BPL      LBA44                        ; BRANCH IF NOT YET NORMALIZED 
   16B3 B6 CA 89      [ 5]  477                     LDA      _FP0EXP                       ; GET CURRENT EXPONENT 
   16B6 34 04         [ 6]  478                     PSHS     B                            ; SAVE EXPONENT MODIFIER CAUSED BY NORMALIZATION 
   16B8 A0 E0         [ 6]  479                     SUBA     ,S+                          ; SUBTRACT ACCUMULATED EXPONENT MODIFIER 
   16BA B7 CA 89      [ 5]  480                     STA      _FP0EXP                       ; SAVE AS NEW EXPONENT 
   16BD 23 D4         [ 3]  481                     BLS      LBA39                        ; SET _FPA0 = 0 IF THE NORMALIZATION CAUSED 
                            482 ;         MORE OR EQUAL NUMBER OF LEFT SHIFTS THAN THE
                            483 ;         SIZE OF THE EXPONENT
                            484 ; checked, used and ok
   16BF 8C                  485                     .byte      SKP2                         ; SKIP 2 BYTES 
                            486  .globl LBA5C
   16C0 25 0A         [ 3]  487 LBA5C:               BCS      LBA66                        ; BRANCH IF MANTISSA OVERFLOW 
   16C2 78 CA 9D      [ 7]  488                     ASL      _FPSBYT                       ; SUB BYTE BIT 7 TO CARRY - USE AS ROUND-OFF 
                            489 ;                                                         ; FLAG (TRUNCATE THE REST OF SUB BYTE)
   16C5 86 00         [ 2]  490                     LDA      #0                           ; CLRA, BUT DO NOT CHANGE CARRY FLAG 
   16C7 B7 CA 9D      [ 5]  491                     STA      _FPSBYT                       ; CLEAR THE SUB BYTE 
   16CA 20 11         [ 3]  492                     BRA      LBA72                        ; GO ROUND-OFF RESULT 
                            493 
                            494  .globl LBA66
   16CC 7C CA 89      [ 7]  495 LBA66:               INC      _FP0EXP                       ; INCREMENT EXPONENT - MULTIPLY BY 2 
   16CF 27 35         [ 3]  496                     BEQ      LBA92                        ; OVERFLOW ERROR IF CARRY PAST 0xFF 
   16D1 76 CA 8A      [ 7]  497                     ROR      _FPA0                         ; * SHIFT MANTISSA 
   16D4 76 CA 8B      [ 7]  498                     ROR      _FPA0+1                       ; * ONE TO 
   16D7 76 CA 8C      [ 7]  499                     ROR      _FPA0+2                       ; * THE RIGHT - 
   16DA 76 CA 8D      [ 7]  500                     ROR      _FPA0+3                       ; * DIVIDE BY TWO 
                            501  .globl LBA72
   16DD 24 04         [ 3]  502 LBA72:               BCC      LBA78                        ; BRANCH IF NO ROUND-OFF NEEDED 
   16DF 8D 12         [ 7]  503                     BSR      LBA83                        ; ADD ONE TO MANTISSA - ROUND OFF 
   16E1 27 E9         [ 3]  504                     BEQ      LBA66                        ; BRANCH iF OVERFLOW - MANTISSA = 0 
                            505  .globl LBA78
   16E3 39            [ 5]  506 LBA78:               RTS      
                            507 
                            508 ; NEGATE _FPA0 MANTISSA
                            509  .globl LBA79
   16E4 73 CA 8E      [ 7]  510 LBA79:               COM      _FP0SGN                       ; TOGGLE SIGN OF MANTISSA 
                            511  .globl LBA7B
   16E7 73 CA 8A      [ 7]  512 LBA7B:               COM      _FPA0                         ; * COMPLEMENT ALL 4 MANTISSA BYTES 
   16EA 73 CA 8B      [ 7]  513                     COM      _FPA0+1                       ; * 
   16ED 73 CA 8C      [ 7]  514                     COM      _FPA0+2                       ; * 
   16F0 73 CA 8D      [ 7]  515                     COM      _FPA0+3                       ; * 
                            516 ; ADD ONE TO _FPA0 MANTISSA
                            517  .globl LBA83
   16F3 BE CA 8C      [ 6]  518 LBA83:               LDX      _FPA0+2                       ; * GET BOTTOM 2 MANTISSA 
   16F6 30 01         [ 5]  519                     LEAX     1,X                          ; * BYTES, ADD ONE TO 
   16F8 BF CA 8C      [ 6]  520                     STX      _FPA0+2                       ; * THEM AND SAVE THEM 
   16FB 26 08         [ 3]  521                     BNE      LBA91                        ; BRANCH IF NO OVERFLOW 
   16FD BE CA 8A      [ 6]  522                     LDX      _FPA0                         ; * IF OVERFLOW ADD ONE 
   1700 30 01         [ 5]  523                     LEAX     1,X                          ; * TO TOP 2 MANTISSA 
   1702 BF CA 8A      [ 6]  524                     STX      _FPA0                         ; * BYTES AND SAVE THEM 
                            525  .globl LBA91
   1705 39            [ 5]  526 LBA91:               RTS      
                            527 
                            528  .globl LBA92
   1706 C6 0A         [ 2]  529 LBA92:               LDB      #2*5                         ; OV' OVERFLOW ERROR 
   1708 7E 15 01      [ 4]  530                     JMP      ERROR_HANDLER                ; PROCESS AN ERROR 
                            531 
                            532  .globl LBA97
   170B 8E CA A0      [ 3]  533 LBA97:               LDX      #_FPA2-1                      ; POINT X TO _FPA2 
                            534 ; SHIFT FPA POINTED TO BY (X) TO
                            535 ; THE RIGHT -(B) TIMES. EXIT WITH
                            536 ; ACCA CONTAINING DATA SHIFTED OUT
                            537 ; TO THE RIGHT (SUB BYTE) AND THE DATA
                            538 ; SHIFTED IN FROM THE LEFT WILL COME FROM _FPCARY
                            539  .globl LBA9A
   170E A6 04         [ 5]  540 LBA9A:               LDA      4,X                          ; GET LS BYTE OF MANTISSA (X) 
   1710 B7 CA 9D      [ 5]  541                     STA      _FPSBYT                       ; SAVE IN FPA SUB BYTE 
   1713 A6 03         [ 5]  542                     LDA      3,X                          ; * SHIFT THE NEXT THREE BYTES OF THE 
   1715 A7 04         [ 5]  543                     STA      4,X                          ; * MANTISSA RIGHT ONE COMPLETE BYTE. 
   1717 A6 02         [ 5]  544                     LDA      2,X                          ; * 
   1719 A7 03         [ 5]  545                     STA      3,X                          ; * 
   171B A6 01         [ 5]  546                     LDA      1,X                          ; * 
   171D A7 02         [ 5]  547                     STA      2,X                          ; * 
   171F B6 CA 95      [ 5]  548                     LDA      _FPCARY                       ; GET THE CARRY IN BYTE 
   1722 A7 01         [ 5]  549                     STA      1,X                          ; STORE AS THE MS MANTISSA BYTE OF (X) 
                            550  .globl LBAAE
   1724 CB 08         [ 2]  551 LBAAE:               ADDB     #8                           ; ADD 8 TO DIFFERENCE OF EXPONENTS 
   1726 2F E6         [ 3]  552                     BLE      LBA9A                        ; BRANCH IF EXPONENT DIFFERENCE < -8 
   1728 B6 CA 9D      [ 5]  553                     LDA      _FPSBYT                       ; GET FPA SUB BYTE 
   172B C0 08         [ 2]  554                     SUBB     #8                           ; CAST OUT THE 8 ADDED IN ABOVE 
   172D 27 0C         [ 3]  555                     BEQ      LBAC4                        ; BRANCH IF EXPONENT DIFFERENCE = 0 
                            556  .globl LBAB8
   172F 67 01         [ 7]  557 LBAB8:               ASR      1,X                          ; * SHIFT MANTISSA AND SUB BYTE ONE BIT TO THE RIGHT 
                            558  .globl LBABA
   1731 66 02         [ 7]  559 LBABA:               ROR      2,X                          ; * 
   1733 66 03         [ 7]  560                     ROR      3,X                          ; * 
   1735 66 04         [ 7]  561                     ROR      4,X                          ; * 
   1737 46            [ 2]  562                     RORA                                  ; * 
   1738 5C            [ 2]  563                     INCB                                  ; ADD ONE TO EXPONENT DIFFERENCE 
   1739 26 F4         [ 3]  564                     BNE      LBAB8                        ; BRANCH IF EXPONENTS NOT = 
                            565  .globl LBAC4
   173B 39            [ 5]  566 LBAC4:               RTS      
                            567 
                            568  .globl LBAC5
   173C 81 00 00 00 00      569 LBAC5:               .byte      0x81,0x00,0x00,0x00,0x00          ; FLOATING POINT CONSTANT 1.0 
                            570 ; ARITHMETIC OPERATION (*) JUMPS HERE - MULTIPLY
                            571 ; _FPA0 BY (X) - RETURN PRODUCT IN _FPA0
                            572  .globl mulF0F1
   1741                     573 mulF0F1: 
   1741 F6 CA 89      [ 5]  574                     LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   1744 20 03         [ 3]  575                     bra      LBACC 
                            576 
                            577  .globl mulF0x
   1746                     578 mulF0x: 
                            579  .globl LBACA
   1746 BD 17 D2      [ 8]  580 LBACA:               JSR      LBB2F                        ; MOVE PACKED FPA FROM (X) TO _FPA1 
                            581  .globl LBACC
   1749 10 27 00 84   [ 6]  582 LBACC:               LBEQ     LBB2E                        ; BRANCH IF EXPONENT OF _FPA0 = 0 
   174D BD 17 F3      [ 8]  583                     JSR      LBB48                        ; CALCULATE EXPONENT OF PRODUCT 
                            584 ; MULTIPLY _FPA0 MANTISSA BY _FPA1. NORMALIZE
                            585 ; HIGH ORDER BYTES OF PRODUCT IN _FPA0. THE
                            586 ; LOW ORDER FOUR BYTES OF THE PRODUCT WILL
                            587 ; BE STORED IN _VAB-_VAE.
                            588  .globl LBAD0
   1750 86 00         [ 2]  589 LBAD0:               LDA      #0                           ; * ZERO OUT MANTISSA OF _FPA2 
   1752 B7 CA A1      [ 5]  590                     STA      _FPA2                         ; * 
   1755 B7 CA A2      [ 5]  591                     STA      _FPA2+1                       ; * 
   1758 B7 CA A3      [ 5]  592                     STA      _FPA2+2                       ; * 
   175B B7 CA A4      [ 5]  593                     STA      _FPA2+3                       ; * 
   175E F6 CA 8D      [ 5]  594                     LDB      _FPA0+3                       ; GET LS BYTE OF _FPA0 
   1761 8D 2D         [ 7]  595                     BSR      LBB00                        ; MULTIPLY BY _FPA1 
   1763 F6 CA 9D      [ 5]  596                     LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 4 
   1766 F7 CA B7      [ 5]  597                     STB      _VAE                          ; * 
   1769 F6 CA 8C      [ 5]  598                     LDB      _FPA0+2                       ; GET NUMBER 3 MANTISSA BYTE OF _FPA0 
   176C 8D 22         [ 7]  599                     BSR      LBB00                        ; MULTIPLY BY _FPA1 
   176E F6 CA 9D      [ 5]  600                     LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 3 
   1771 F7 CA B6      [ 5]  601                     STB      _VAD                          ; * 
   1774 F6 CA 8B      [ 5]  602                     LDB      _FPA0+1                       ; GET NUMBER 2 MANTISSA BYTE OF _FPA0 
   1777 8D 17         [ 7]  603                     BSR      LBB00                        ; MULTIPLY BY _FPA1 
   1779 F6 CA 9D      [ 5]  604                     LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 2 
   177C F7 CA B5      [ 5]  605                     STB      _VAC                          ; * 
   177F F6 CA 8A      [ 5]  606                     LDB      _FPA0                         ; GET MS BYTE OF _FPA0 MANTISSA 
   1782 8D 10         [ 7]  607                     BSR      LBB02                        ; MULTIPLY BY _FPA1 
   1784 F6 CA 9D      [ 5]  608                     LDB      _FPSBYT                       ; * TEMPORARILY SAVE SUB BYTE 1 
   1787 F7 CA B4      [ 5]  609                     STB      _VAB                          ; * 
   178A BD 18 DA      [ 8]  610                     JSR      LBC0B                        ; COPY MANTISSA FROM _FPA2 TO _FPA0 
   178D 7E 16 6C      [ 4]  611                     JMP      LBA1C                        ; NORMALIZE _FPA0 
                            612 
                            613  .globl LBB00
   1790 10 27 FF 77   [ 6]  614 LBB00:               LBEQ     LBA97                        ; SHIFT _FPA2 ONE BYTE TO RIGHT 
                            615  .globl LBB02
   1794 43            [ 2]  616 LBB02:               COMA                                  ; SET CARRY FLAG 
                            617 ; MULTIPLY _FPA1 MANTISSA BY ACCB AND
                            618 ; ADD PRODUCT TO _FPA2 MANTISSA
                            619  .globl LBB03
   1795 B6 CA A1      [ 5]  620 LBB03:               LDA      _FPA2                         ; GET _FPA2 MS BYTE 
   1798 56            [ 2]  621                     RORB                                  ; ROTATE CARRY FLAG INTO SHIFT COUNTER; 
                            622 ;         DATA BIT INTO CARRY
   1799 27 36         [ 3]  623                     BEQ      LBB2E                        ; BRANCH WHEN 8 SHIFTS DONE 
   179B 24 21         [ 3]  624                     BCC      LBB20                        ; DO NOT ADD _FPA1 IF DATA BIT = 0 
   179D B6 CA A4      [ 5]  625                     LDA      _FPA2+3                       ; * ADD MANTISSA LS BYTE 
   17A0 BB CA 9A      [ 5]  626                     ADDA     _FPA1+3                       ; * 
   17A3 B7 CA A4      [ 5]  627                     STA      _FPA2+3                       ; * 
   17A6 B6 CA A3      [ 5]  628                     LDA      _FPA2+2                       ; = ADD MANTISSA NUMBER 3 BYTE 
   17A9 B9 CA 99      [ 5]  629                     ADCA     _FPA1+2                       ; = 
   17AC B7 CA A3      [ 5]  630                     STA      _FPA2+2                       ; = 
   17AF B6 CA A2      [ 5]  631                     LDA      _FPA2+1                       ; * ADD MANTISSA NUMBER 2 BYTE 
   17B2 B9 CA 98      [ 5]  632                     ADCA     _FPA1+1                       ; * 
   17B5 B7 CA A2      [ 5]  633                     STA      _FPA2+1                       ; * 
   17B8 B6 CA A1      [ 5]  634                     LDA      _FPA2                         ; = ADD MANTISSA MS BYTE 
   17BB B9 CA 97      [ 5]  635                     ADCA     _FPA1                         ; = 
                            636  .globl LBB20
   17BE 46            [ 2]  637 LBB20:               RORA                                  ; * ROTATE CARRY INTO MS BYTE 
   17BF B7 CA A1      [ 5]  638                     STA      _FPA2                         ; * 
   17C2 76 CA A2      [ 7]  639                     ROR      _FPA2+1                       ; = ROTATE _FPA2 ONE BIT TO THE RIGHT 
   17C5 76 CA A3      [ 7]  640                     ROR      _FPA2+2                       ; = 
   17C8 76 CA A4      [ 7]  641                     ROR      _FPA2+3                       ; = 
   17CB 76 CA 9D      [ 7]  642                     ROR      _FPSBYT                       ; = 
   17CE 4F            [ 2]  643                     CLRA                                  ; CLEAR CARRY FLAG 
   17CF 20 C4         [ 3]  644                     BRA      LBB03                        ; KEEP LOOPING 
                            645 
                            646  .globl LBB2E
   17D1 39            [ 5]  647 LBB2E:               RTS      
                            648 
                            649 ; UNPACK A FP NUMBER FROM (X) TO _FPA1
                            650  .globl packedToF1
   17D2                     651 packedToF1: 
                            652  .globl LBB2F
   17D2 EC 01         [ 6]  653 LBB2F:               LDD      1,X                          ; GET TWO MSB BYTES OF MANTISSA FROM 
                            654 ;         FPA  POINTED TO BY X
   17D4 B7 CA 9B      [ 5]  655                     STA      _FP1SGN                       ; SAVE PACKED MANTISSA SIGN BYTE 
   17D7 8A 80         [ 2]  656                     ORA      #0x80                         ; FORCE BIT 7 OF MSB MANTISSA = 1 
   17D9 FD CA 97      [ 6]  657                     STD      _FPA1                         ; SAVE 2 MSB BYTES IN _FPA1 
   17DC F6 CA 9B      [ 5]  658                     LDB      _FP1SGN                       ; * GET PACKED MANTISSA SIGN BYTE. EOR W/_FPA0 
   17DF F8 CA 8E      [ 5]  659                     EORB     _FP0SGN                       ; * SIGN - NEW SIGN POSITION IF BOTH OLD SIGNS ALIKE, 
   17E2 F7 CA 9C      [ 5]  660                     STB      _RESSGN                       ; * NEG IF BOTH OLD SIGNS DIFF. SAVE ADJUSTED 
                            661 ;                                                         ; * MANTISSA SIGN BYTE
   17E5 EC 03         [ 6]  662                     LDD      3,X                          ; = GET 2 LSB BYTES OF MANTISSA 
   17E7 FD CA 99      [ 6]  663                     STD      _FPA1+2                       ; = AND PUT IN _FPA1 
   17EA A6 84         [ 4]  664                     LDA      ,X                           ; * GET EXPONENT FROM (X) AND 
   17EC B7 CA 96      [ 5]  665                     STA      _FP1EXP                       ; * PUT IN EXPONENT OF _FPA1 
   17EF F6 CA 89      [ 5]  666                     LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   17F2 39            [ 5]  667                     RTS      
                            668 
                            669 ; CALCULATE EXPONENT FOR PRODUCT OF _FPA0 & _FPA1
                            670 ; ENTER WITH EXPONENT OF _FPA1 IN ACCA
                            671  .globl LBB48
   17F3 4D            [ 2]  672 LBB48:               TSTA                                  ; TEST EXPONENT OF _FPA1 
   17F4 27 1B         [ 3]  673                     BEQ      LBB61                        ; PURGE RETURN ADDRESS & SET _FPA0 = 0 
   17F6 BB CA 89      [ 5]  674                     ADDA     _FP0EXP                       ; ADD _FPA1 EXPONENT TO _FPA0 EXPONENT 
   17F9 46            [ 2]  675                     RORA                                  ; ROTATE CARRY INTO BIT 7; BIT 0 INTO CARRY 
   17FA 49            [ 2]  676                     ROLA                                  ; SET OVERFLOW FLAG 
   17FB 28 14         [ 3]  677                     BVC      LBB61                        ; BRANCH IF EXPONENT TOO LARGE OR SMALL 
   17FD 8B 80         [ 2]  678                     ADDA     #0x80                         ; ADD 0x80 BIAS TO EXPONENT 
   17FF B7 CA 89      [ 5]  679                     STA      _FP0EXP                       ; SAVE NEW EXPONENT 
   1802 27 0F         [ 3]  680                     BEQ      LBB63                        ; SET _FPA0 
   1804 B6 CA 9C      [ 5]  681                     LDA      _RESSGN                       ; GET MANTISSA SIGN 
   1807 B7 CA 8E      [ 5]  682                     STA      _FP0SGN                       ; SAVE AS MANTISSA SIGN OF _FPA0 
   180A 39            [ 5]  683                     RTS      
                            684 
                            685 ;                   *        IF _FPA0 = POSITIVE THEN 'OV' ERROR IF _FPA0
                            686 ; = IS NEGATIVE THEN _FPA0 = 0
                            687  .globl LBB5C
   180B B6 CA 8E      [ 5]  688 LBB5C:               LDA      _FP0SGN                       ; GET MANTISSA SIGN OF _FPA0 
   180E 43            [ 2]  689                     COMA                                  ; CHANGE SIGN OF _FPA0 MANTISSA 
   180F 20 02         [ 3]  690                     BRA      LBB63 
                            691 
                            692  .globl LBB61
   1811 32 62         [ 5]  693 LBB61:               LEAS     2,S                          ; PURGE RETURN ADDRESS FROM STACK 
                            694  .globl LBB63
   1813 10 2A FE 7C   [ 6]  695 LBB63:               LBPL     LBA39                        ; ZERO _FPA0 MANTISSA SIGN & EXPONENT 
                            696  .globl LBB67
   1817 7E 17 06      [ 4]  697 LBB67:               JMP      LBA92                        ; 'OV' OVERFLOW ERROR 
                            698 
                            699 ; FAST MULTIPLY BY 10 AND LEAVE RESULT IN _FPA0
                            700  .globl LBB6A
   181A BD 19 43      [ 8]  701 LBB6A:               JSR      LBC5F                        ; TRANSFER _FPA0 TO _FPA1 
   181D 27 0F         [ 3]  702                     BEQ      LBB7C                        ; BRANCH IF EXPONENT = 0 
   181F 8B 02         [ 2]  703                     ADDA     #2                           ; ADD 2 TO EXPONENT (TIMES 4) 
   1821 25 F4         [ 3]  704                     BCS      LBB67                        ; 'OV' ERROR IF EXPONENT > 0xFF 
   1823 7F CA 9C      [ 7]  705                     CLR      _RESSGN                       ; CLEAR RESULT SIGN BYTE 
   1826 BD 16 09      [ 8]  706                     JSR      LB9CD                        ; ADD _FPA1 TO _FPA0 (TIMES 5) 
   1829 7C CA 89      [ 7]  707                     INC      _FP0EXP                       ; ADD ONE TO EXPONENT (TIMES 10) 
   182C 27 E9         [ 3]  708                     BEQ      LBB67                        ; 'OV' ERROR IF EXPONENT > 0xFF 
                            709  .globl LBB7C
   182E 39            [ 5]  710 LBB7C:               RTS      
                            711 
                            712  .globl LBB7D
   182F 84 20 00 00 00      713 LBB7D:               .byte      0x84,0x20,0x00,0x00,0x00          ; FLOATING POINT CONSTANT 10 
                            714 ; DIVIDE _FPA0 BY 10
                            715  .globl LBB82
   1834 BD 19 43      [ 8]  716 LBB82:               JSR      LBC5F                        ; MOVE _FPA0 TO _FPA1 
   1837 8E 18 2F      [ 3]  717                     LDX      #LBB7D                       ; POINT TO FLOATING POINT CONSTANT 10 
   183A 5F            [ 2]  718                     CLRB                                  ; ZERO MANTISSA SIGN BYTE 
                            719  .globl LBB89
   183B F7 CA 9C      [ 5]  720 LBB89:               STB      _RESSGN                       ; STORE THE QUOTIENT MANTISSA SIGN BYTE 
   183E BD 18 E7      [ 8]  721                     JSR      LBC14                        ; UNPACK AN FP NUMBER FROM (X) INTO _FPA0 
                            722 ; checked, not used
                            723 ;          FCB  SKP2           ; SKIP TWO BYTES
                            724 ;* DIVIDE (X) BY _FPA0-LEAVE NORMALIZED QUOTIENT IN _FPA0
                            725 ;LBB8F     BSR  LBB2F          ; GET FP NUMBER FROM (X) TO _FPA1
                            726 ; ARITHMETIC OPERATION (/) JUMPS HERE. DIVIDE _FPA1 BY _FPA0 (ENTER WITH
                            727 ; EXPONENT OF _FPA1 IN ACCA AND FLAGS SET BY TSTA)
                            728 ; DIVIDE _FPA1 BY _FPA0
                            729  .globl divF1byF0
   1841                     730 divF1byF0: 
                            731  .globl LBB91
   1841 10 27 00 90   [ 6]  732 LBB91:               LBEQ     LBC06                        ; '/0' DIVIDE BY ZERO ERROR 
   1845 70 CA 89      [ 7]  733                     NEG      _FP0EXP                       ; GET EXPONENT OF RECIPROCAL OF DIVISOR 
   1848 8D A9         [ 7]  734                     BSR      LBB48                        ; CALCULATE EXPONENT OF QUOTIENT 
   184A 7C CA 89      [ 7]  735                     INC      _FP0EXP                       ; INCREMENT EXPONENT 
   184D 27 C8         [ 3]  736                     BEQ      LBB67                        ; 'OV' OVERFLOW ERROR 
   184F 8E CA A1      [ 3]  737                     LDX      #_FPA2                        ; POINT X TO MANTISSA OF _FPA2 - HOLD 
                            738 ;                                                         ; TEMPORARY QUOTIENT IN _FPA2
   1852 C6 04         [ 2]  739                     LDB      #4                           ; 5 BYTE DIVIDE 
   1854 F7 CA B8      [ 5]  740                     STB      _TMPLOC                       ; SAVE BYTE COUNTER 
   1857 C6 01         [ 2]  741                     LDB      #1                           ; SHIFT COUNTER-AND TEMPORARY QUOTIENT BYTE 
                            742 ; COMPARE _FPA0 MANTISSA TO _FPA1 MANTISSA -
                            743 ; SET CARRY FLAG IF _FPA1 >= _FPA0
                            744  .globl LBBA4
   1859 B6 CA 8A      [ 5]  745 LBBA4:               LDA      _FPA0                         ; * COMPARE THE TWO MS BYTES 
   185C B1 CA 97      [ 5]  746                     CMPA     _FPA1                         ; * OF _FPA0 AND _FPA1 AND 
   185F 26 19         [ 3]  747                     BNE      LBBBD                        ; * BRANCH IF <> 
   1861 B6 CA 8B      [ 5]  748                     LDA      _FPA0+1                       ; = COMPARE THE NUMBER 2 
   1864 B1 CA 98      [ 5]  749                     CMPA     _FPA1+1                       ; = BYTES AND 
   1867 26 11         [ 3]  750                     BNE      LBBBD                        ; = BRANCH IF <> 
   1869 B6 CA 8C      [ 5]  751                     LDA      _FPA0+2                       ; * COMPARE THE NUMBER 3 
   186C B1 CA 99      [ 5]  752                     CMPA     _FPA1+2                       ; * BYTES AND 
   186F 26 09         [ 3]  753                     BNE      LBBBD                        ; * BRANCH IF <> 
   1871 B6 CA 8D      [ 5]  754                     LDA      _FPA0+3                       ; = COMPARE THE LS BYTES 
   1874 B1 CA 9A      [ 5]  755                     CMPA     _FPA1+3                       ; = AND BRANCH 
   1877 26 01         [ 3]  756                     BNE      LBBBD                        ; = IF <> 
   1879 43            [ 2]  757                     COMA                                  ; SET CARRY FLAG IF _FPA0 = _FPA1 
                            758  .globl LBBBD
   187A 1F A8         [ 6]  759 LBBBD:               TFR      CC,A                         ; SAVE CARRY FLAG STATUS IN ACCA; CARRY 
                            760 ;         CLEAR IF _FPA0 > _FPA1
   187C 59            [ 2]  761                     ROLB                                  ; ROTATE CARRY INTO TEMPORARY QUOTIENT BYTE 
   187D 24 0B         [ 3]  762                     BCC      LBBCC                        ; CARRY WILL BE SET AFTER 8 SHIFTS 
   187F E7 80         [ 6]  763                     STB      ,X+                          ; SAVE TEMPORARY QUOTIENT 
   1881 7A CA B8      [ 7]  764                     DEC      _TMPLOC                       ; DECREMENT BYTE COUNTER 
   1884 2B 44         [ 3]  765                     BMI      LBBFC                        ; BRANCH IF DONE 
   1886 27 3E         [ 3]  766                     BEQ      LBBF8                        ; BRANCH IF LAST BYTE 
   1888 C6 01         [ 2]  767                     LDB      #1                           ; RESET SHIFT COUNTER AND TEMPORARY QUOTIENT BYTE 
                            768  .globl LBBCC
   188A 1F 8A         [ 6]  769 LBBCC:               TFR      A,CC                         ; RESTORE CARRY FLAG AND 
   188C 25 12         [ 3]  770                     BCS      LBBDE                        ; BRANCH IF _FPA0 =< _FPA1 
                            771  .globl LBBD0
   188E 78 CA 9A      [ 7]  772 LBBD0:               ASL      _FPA1+3                       ; * SHIFT _FPA1 MANTISSA 1 BIT TO LEFT 
   1891 79 CA 99      [ 7]  773                     ROL      _FPA1+2                       ; * 
   1894 79 CA 98      [ 7]  774                     ROL      _FPA1+1                       ; * 
   1897 79 CA 97      [ 7]  775                     ROL      _FPA1                         ; * 
   189A 25 DE         [ 3]  776                     BCS      LBBBD                        ; BRANCH IF CARRY - ADD ONE TO PARTIAL QUOTIENT 
   189C 2B BB         [ 3]  777                     BMI      LBBA4                        ; IF MSB OF HIGH ORDER MANTISSA BYTE IS 
                            778 ;         SET, CHECK THE MAGNITUDES OF _FPA0, _FPA1
   189E 20 DA         [ 3]  779                     BRA      LBBBD                        ; CARRY IS CLEAR, CHECK ANOTHER BIT 
                            780 
                            781 ; SUBTRACT _FPA0 FROM _FPA1 - LEAVE RESULT IN _FPA1
                            782  .globl LBBDE
   18A0 B6 CA 9A      [ 5]  783 LBBDE:               LDA      _FPA1+3                       ; * SUBTRACT THE LS BYTES OF MANTISSA 
   18A3 B0 CA 8D      [ 5]  784                     SUBA     _FPA0+3                       ; * 
   18A6 B7 CA 9A      [ 5]  785                     STA      _FPA1+3                       ; * 
   18A9 B6 CA 99      [ 5]  786                     LDA      _FPA1+2                       ; = THEN THE NEXT BYTE 
   18AC B2 CA 8C      [ 5]  787                     SBCA     _FPA0+2                       ; = 
   18AF B7 CA 99      [ 5]  788                     STA      _FPA1+2                       ; = 
   18B2 B6 CA 98      [ 5]  789                     LDA      _FPA1+1                       ; * AND THE NEXT 
   18B5 B2 CA 8B      [ 5]  790                     SBCA     _FPA0+1                       ; * 
   18B8 B7 CA 98      [ 5]  791                     STA      _FPA1+1                       ; * 
   18BB B6 CA 97      [ 5]  792                     LDA      _FPA1                         ; = AND FINALLY, THE MS BYTE OF MANTISSA 
   18BE B2 CA 8A      [ 5]  793                     SBCA     _FPA0                         ; = 
   18C1 B7 CA 97      [ 5]  794                     STA      _FPA1                         ; = 
   18C4 20 C8         [ 3]  795                     BRA      LBBD0                        ; GO SHIFT _FPA1 
                            796 
                            797  .globl LBBF8
   18C6 C6 40         [ 2]  798 LBBF8:               LDB      #0x40                         ; USE ONLY TWO BITS OF THE LAST BYTE (FIFTH) 
   18C8 20 C0         [ 3]  799                     BRA      LBBCC                        ; GO SHIFT THE LAST BYTE 
                            800 
                            801  .globl LBBFC
   18CA 56            [ 2]  802 LBBFC:               RORB                                  ; * SHIFT CARRY (ALWAYS SET HERE) INTO 
   18CB 56            [ 2]  803                     RORB                                  ; * BIT 5 AND MOVE 
   18CC 56            [ 2]  804                     RORB                                  ; * BITS 1,0 TO BITS 7,6 
   18CD F7 CA 9D      [ 5]  805                     STB      _FPSBYT                       ; SAVE SUB BYTE 
   18D0 8D 08         [ 7]  806                     BSR      LBC0B                        ; MOVE MANTISSA OF _FPA2 TO _FPA0 
   18D2 7E 16 6C      [ 4]  807                     JMP      LBA1C                        ; NORMALIZE _FPA0 
                            808 
                            809  .globl LBC06
   18D5 C6 14         [ 2]  810 LBC06:               LDB      #2*10                        ; /0' ERROR 
   18D7 7E 15 01      [ 4]  811                     JMP      ERROR_HANDLER                ; PROCESS THE ERROR 
                            812 
                            813 ; COPY MANTISSA FROM _FPA2 TO _FPA0
                            814  .globl LBC0B
   18DA BE CA A1      [ 6]  815 LBC0B:               LDX      _FPA2                         ; * MOVE TOP 2 BYTES 
   18DD BF CA 8A      [ 6]  816                     STX      _FPA0                         ; * 
   18E0 BE CA A3      [ 6]  817                     LDX      _FPA2+2                       ; = MOVE BOTTOM 2 BYTES 
   18E3 BF CA 8C      [ 6]  818                     STX      _FPA0+2                       ; = 
   18E6 39            [ 5]  819                     RTS      
                            820 
                            821 ; COPY A PACKED FP NUMBER FROM (X) TO _FPA0
                            822  .globl packedToF0
   18E7                     823 packedToF0: 
                            824  .globl LBC14
   18E7 34 02         [ 6]  825 LBC14:               PSHS     A                            ; SAVE ACCA 
   18E9 EC 01         [ 6]  826                     LDD      1,X                          ; GET TOP TWO MANTISSA BYTES 
   18EB B7 CA 8E      [ 5]  827                     STA      _FP0SGN                       ; SAVE MS BYTE OF MANTISSA AS MANTISSA SIGN 
   18EE 8A 80         [ 2]  828                     ORA      #0x80                         ; UNPACK MS BYTE 
   18F0 FD CA 8A      [ 6]  829                     STD      _FPA0                         ; SAVE UNPACKED TOP 2 MANTISSA BYTES 
   18F3 7F CA 9D      [ 7]  830                     CLR      _FPSBYT                       ; CLEAR MANTISSA SUB BYTE 
   18F6 E6 84         [ 4]  831                     LDB      ,X                           ; GET EXPONENT TO ACCB 
   18F8 AE 03         [ 6]  832                     LDX      3,X                          ; * MOVE LAST 2 
   18FA BF CA 8C      [ 6]  833                     STX      _FPA0+2                       ; * MANTISSA BYTES 
   18FD F7 CA 89      [ 5]  834                     STB      _FP0EXP                       ; SAVE EXPONENT 
   1900 35 82         [ 7]  835                     PULS     A,PC                         ; RESTORE ACCA AND RETURN 
                            836  .globl LBC2A
   1902 8E CA AA      [ 3]  837 LBC2A:               LDX      #_V45                         ; POINT X TO MANTISSA OF FPA4 
   1905 20 03         [ 3]  838                     BRA      LBC35                        ; MOVE _FPA0 TO FPA4 
                            839 
                            840  .globl LBC2F
   1907 8E CA A5      [ 3]  841 LBC2F:               LDX      #_V40                         ; POINT X TO MANTISSA OF FPA3 
                            842 ; checked, not used AND produces wrong code!!!, sine _VABRDES is extended!
                            843 ;          FCB  SKP2           ; SKIP TWO BYTES
                            844 ;LBC33     LDX  _VABRDES         ; POINT X TO _VABRIABLE DESCRIPTOR IN _VABRDES
                            845 ; PACK _FPA0 AND MOVE IT TO ADDRESS IN X
                            846  .globl LBC35
   190A B6 CA 89      [ 5]  847 LBC35:               LDA      _FP0EXP                       ; * COPY EXPONENT 
   190D A7 84         [ 4]  848                     STA      ,X                           ; * 
   190F B6 CA 8E      [ 5]  849                     LDA      _FP0SGN                       ; GET MANTISSA SIGN BIT 
   1912 8A 7F         [ 2]  850                     ORA      #0x7F                         ; MASK THE BOTTOM 7 BITS 
   1914 B4 CA 8A      [ 5]  851                     ANDA     _FPA0                         ; AND BIT 7 OF MANTISSA SIGN INTO BIT 7 OF MS BYTE 
   1917 A7 01         [ 5]  852                     STA      1,X                          ; SAVE MS BYTE 
   1919 B6 CA 8B      [ 5]  853                     LDA      _FPA0+1                       ; * MOVE 2ND MANTISSA BYTE 
   191C A7 02         [ 5]  854                     STA      2,X                          ; * 
   191E FE CA 8C      [ 6]  855                     LDU      _FPA0+2                       ; = MOVE BOTTOM 2 MANTISSA BYTES 
   1921 EF 03         [ 6]  856                     STU      3,X                          ; = 
   1923 39            [ 5]  857                     RTS      
                            858 
                            859 ; MOVE _FPA1 TO _FPA0 RETURN W/MANTISSA SIGN IN ACCA
                            860  .globl F1toF0
   1924                     861 F1toF0: 
                            862  .globl LBC4A
   1924 B6 CA 9B      [ 5]  863 LBC4A:               LDA      _FP1SGN                       ; * COPY MANTISSA SIGN FROM 
                            864  .globl LBC4C
   1927 B7 CA 8E      [ 5]  865 LBC4C:               STA      _FP0SGN                       ; * _FPA1 TO _FPA0 
   192A BE CA 96      [ 6]  866                     LDX      _FP1EXP                       ; = COPY EXPONENT + MS BYTE FROM 
   192D BF CA 89      [ 6]  867                     STX      _FP0EXP                       ; = _FPA1 TO _FPA0 
   1930 7F CA 9D      [ 7]  868                     CLR      _FPSBYT                       ; CLEAR MANTISSA SUB BYTE 
   1933 B6 CA 98      [ 5]  869                     LDA      _FPA1+1                       ; * COPY 2ND MANTISSA BYTE 
   1936 B7 CA 8B      [ 5]  870                     STA      _FPA0+1                       ; * FROM _FPA1 TO _FPA0 
   1939 B6 CA 8E      [ 5]  871                     LDA      _FP0SGN                       ; GET MANTISSA SIGN 
   193C BE CA 99      [ 6]  872                     LDX      _FPA1+2                       ; * COPY 3RD AND 4TH MANTISSA BYTE 
   193F BF CA 8C      [ 6]  873                     STX      _FPA0+2                       ; * FROM _FPA1 TO _FPA0 
   1942 39            [ 5]  874                     RTS      
                            875 
                            876 ; TRANSFER _FPA0 TO _FPA1
                            877  .globl F0toF1
   1943                     878 F0toF1: 
                            879  .globl LBC5F
   1943 FC CA 89      [ 6]  880 LBC5F:               LDD      _FP0EXP                       ; * TRANSFER EXPONENT & MS BYTE 
   1946 FD CA 96      [ 6]  881                     STD      _FP1EXP                       ; * 
   1949 BE CA 8B      [ 6]  882                     LDX      _FPA0+1                       ; = TRANSFER MIDDLE TWO BYTES 
   194C BF CA 98      [ 6]  883                     STX      _FPA1+1                       ; = 
   194F BE CA 8D      [ 6]  884                     LDX      _FPA0+3                       ; * TRANSFER BOTTOM TWO BYTES 
   1952 BF CA 9A      [ 6]  885                     STX      _FPA1+3                       ; * 
   1955 4D            [ 2]  886                     TSTA                                  ; SET FLAGS ACCORDING TO EXPONENT 
   1956 39            [ 5]  887                     RTS      
                            888 
                            889 ; CHECK _FPA0                                              ; RETURN ACCB = 0 IF _FPA0 = 0,
                            890 ; ACCB = 0xFF IF _FPA0 = NEGATIVE, ACCB = 1 IF _FPA0 = POSITIVE
                            891  .globl LBC6D
   1957 F6 CA 89      [ 5]  892 LBC6D:               LDB      _FP0EXP                       ; GET EXPONENT 
   195A 27 09         [ 3]  893                     BEQ      LBC79                        ; BRANCH IF _FPA0 = 0 
                            894  .globl LBC71
   195C F6 CA 8E      [ 5]  895 LBC71:               LDB      _FP0SGN                       ; GET SIGN OF MANTISSA 
                            896  .globl LBC73
   195F 59            [ 2]  897 LBC73:               ROLB                                  ; BIT 7 TO CARRY 
   1960 C6 FF         [ 2]  898                     LDB      #0xFF                         ; NEGATIVE FLAG 
   1962 25 01         [ 3]  899                     BCS      LBC79                        ; BRANCH IF NEGATIVE MANTISSA 
   1964 50            [ 2]  900                     NEGB                                  ; ACCB = 1 IF POSITIVE MANTISSA 
                            901  .globl LBC79
   1965 39            [ 5]  902 LBC79:               RTS      
                            903 
                            904 ; SGN
                            905  .globl SGN
   1966 8D EF         [ 7]  906 SGN:                 BSR      LBC6D                        ; SET ACCB ACCORDING TO SIGN OF _FPA0 
                            907 ; CONVERT A SIGNED NUMBER IN ACCB INTO A FLOATING POINT NUMBER
                            908  .globl LBC7C
   1968 F7 CA 8A      [ 5]  909 LBC7C:               STB      _FPA0                         ; SAVE ACCB IN _FPA0 
   196B 7F CA 8B      [ 7]  910                     CLR      _FPA0+1                       ; CLEAR NUMBER 2 MANTISSA BYTE OF _FPA0 
   196E C6 88         [ 2]  911                     LDB      #0x88                         ; EXPONENT REQUIRED IF _FPA0 IS TO BE AN INTEGER 
                            912  .globl LBC82
   1970 B6 CA 8A      [ 5]  913 LBC82:               LDA      _FPA0                         ; GET MS BYTE OF MANTISSA 
   1973 80 80         [ 2]  914                     SUBA     #0x80                         ; SET CARRY IF POSITIVE MANTISSA 
                            915  .globl LBC86
   1975 F7 CA 89      [ 5]  916 LBC86:               STB      _FP0EXP                       ; SAVE EXPONENT 
   1978 CC 00 00      [ 3]  917                     LDD      #0                           ; * ZERO OUT ACCD AND 
   197B FD CA 8C      [ 6]  918                     STD      _FPA0+2                       ; * BOTTOM HALF OF _FPA0 
   197E B7 CA 9D      [ 5]  919                     STA      _FPSBYT                       ; CLEAR SUB BYTE 
   1981 B7 CA 8E      [ 5]  920                     STA      _FP0SGN                       ; CLEAR SIGN OF _FPA0 MANTISSA 
   1984 7E 16 68      [ 4]  921                     JMP      LBA18                        ; GO NORMALIZE _FPA0 
                            922 
                            923 ; ABS
                            924  .globl ABS
   1987 7F CA 8E      [ 7]  925 ABS:                 CLR      _FP0SGN                       ; FORCE MANTISSA SIGN OF _FPA0 POSITIVE 
   198A 39            [ 5]  926                     RTS      
                            927 
                            928 ; COMPARE A PACKED FLOATING POINT NUMBER POINTED TO
                            929 ; BY (X) TO AN UNPACKED FP NUMBER IN _FPA0. RETURN
                            930 ; ZERO FLAG SET AND ACCB = 0, IF EQUAL                    ; ACCB = 1 IF
                            931 ; _FPA0 > (X)                                              ; ACCB = 0xFF IF _FPA0 < (X)
                            932  .globl LBC96
   198B E6 84         [ 4]  933 LBC96:               LDB      ,X                           ; CHECK EXPONENT OF (X) 
   198D 27 C8         [ 3]  934                     BEQ      LBC6D                        ; BRANCH IF FPA = 0 
   198F E6 01         [ 5]  935                     LDB      1,X                          ; GET MS BYTE OF MANTISSA OF (X) 
   1991 F8 CA 8E      [ 5]  936                     EORB     _FP0SGN                       ; EOR WITH SIGN OF _FPA0 
   1994 2B C6         [ 3]  937                     BMI      LBC71                        ; BRANCH IF SIGNS NOT = 
                            938 ; COMPARE _FPA0 WITH FP NUMBER POINTED TO BY (X).
                            939 ; _FPA0 IS NORMALIZED, (X) IS PACKED.
                            940  .globl LBCA0
   1996 F6 CA 89      [ 5]  941 LBCA0:               LDB      _FP0EXP                       ; * GET EXPONENT OF 
   1999 E1 84         [ 4]  942                     CMPB     ,X                           ; * _FPA0, COMPARE TO EXPONENT OF 
   199B 26 21         [ 3]  943                     BNE      LBCC3                        ; * (X) AND BRANCH IF <>. 
   199D E6 01         [ 5]  944                     LDB      1,X                          ; * GET MS BYTE OF (X), KEEP ONLY 
   199F CA 7F         [ 2]  945                     ORB      #0x7F                         ; * THE SIGN BIT - 'AND' THE BOTTOM 7 
   19A1 F4 CA 8A      [ 5]  946                     ANDB     _FPA0                         ; * BITS OF _FPA0 INTO ACCB 
   19A4 E1 01         [ 5]  947                     CMPB     1,X                          ; = COMPARE THE BOTTOM 7 BITS OF THE MANTISSA 
   19A6 26 16         [ 3]  948                     BNE      LBCC3                        ; = MS BYTE AND BRANCH IF <> 
   19A8 F6 CA 8B      [ 5]  949                     LDB      _FPA0+1                       ; * COMPARE 2ND BYTE 
   19AB E1 02         [ 5]  950                     CMPB     2,X                          ; * OF MANTISSA, 
   19AD 26 0F         [ 3]  951                     BNE      LBCC3                        ; * BRANCH IF <> 
   19AF F6 CA 8C      [ 5]  952                     LDB      _FPA0+2                       ; = COMPARE 3RD BYTE 
   19B2 E1 03         [ 5]  953                     CMPB     3,X                          ; = OF MANTISSA, 
   19B4 26 08         [ 3]  954                     BNE      LBCC3                        ; = BRANCH IF <> 
   19B6 F6 CA 8D      [ 5]  955                     LDB      _FPA0+3                       ; * SUBTRACT LS BYTE 
   19B9 E0 04         [ 5]  956                     SUBB     4,X                          ; * OF (X) FROM LS BYTE OF 
   19BB 26 01         [ 3]  957                     BNE      LBCC3                        ; * _FPA0, BRANCH IF <> 
   19BD 39            [ 5]  958                     RTS                                   ; RETURN IF FP (X) = _FPA0 
                            959 
                            960  .globl LBCC3
   19BE 56            [ 2]  961 LBCC3:               RORB                                  ; SHIFT CARRY TO BIT 7; CARRY SET IF _FPA0 < (X) 
   19BF F8 CA 8E      [ 5]  962                     EORB     _FP0SGN                       ; TOGGLE SIZE COMPARISON BIT IF _FPA0 IS NEGATIVE 
   19C2 20 9B         [ 3]  963                     BRA      LBC73                        ; GO SET ACCB ACCORDING TO COMPARISON 
                            964 
                            965 ; DE-NORMALIZE _FPA0 : SHIFT THE MANTISSA UNTIL THE BINARY POINT IS TO THE RIGHT
                            966 ; OF THE LEAST SIGNIFICANT BYTE OF THE MANTISSA
                            967  .globl LBCC8
   19C4 F6 CA 89      [ 5]  968 LBCC8:               LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   19C7 27 4A         [ 3]  969                     BEQ      LBD09                        ; ZERO MANTISSA IF _FPA0 = 0 
   19C9 C0 A0         [ 2]  970                     SUBB     #0xA0                         ; SUBTRACT 0xA0 FROM _FPA0 EXPONENT T THIS WILL YIELD 
                            971 ;                                                         ; THE NUMBER OF SHIFTS REQUIRED TO DENORMALIZE _FPA0. WHEN
                            972 ;                                                         ; THE EXPONENT OF _FPA0 IS = ZERO, THEN THE BINARY POINT
                            973 ;                                                         ; WILL BE TO THE RIGHT OF THE MANTISSA
   19CB B6 CA 8E      [ 5]  974                     LDA      _FP0SGN                       ; TEST SIGN OF _FPA0 MANTISSA 
   19CE 2A 06         [ 3]  975                     BPL      LBCD7                        ; BRANCH IF POSITIVE 
   19D0 73 CA 95      [ 7]  976                     COM      _FPCARY                       ; COMPLEMENT CARRY IN BYTE 
   19D3 BD 16 E7      [ 8]  977                     JSR      LBA7B                        ; NEGATE MANTISSA OF _FPA0 
                            978  .globl LBCD7
   19D6 8E CA 89      [ 3]  979 LBCD7:               LDX      #_FP0EXP                      ; POINT X TO _FPA0 
   19D9 C1 F8         [ 2]  980                     CMPB     #-8                          ; EXPONENT DIFFERENCE < -8? 
   19DB 2E 07         [ 3]  981                     BGT      LBCE4                        ; YES 
   19DD BD 17 24      [ 8]  982                     JSR      LBAAE                        ; SHIFT _FPA0 RIGHT UNTIL _FPA0 EXPONENT = 0xA0 
   19E0 7F CA 95      [ 7]  983                     CLR      _FPCARY                       ; CLEAR CARRY IN BYTE 
   19E3 39            [ 5]  984                     RTS      
                            985 
                            986  .globl LBCE4
   19E4 7F CA 95      [ 7]  987 LBCE4:               CLR      _FPCARY                       ; CLEAR CARRY IN BYTE 
   19E7 B6 CA 8E      [ 5]  988                     LDA      _FP0SGN                       ; * GET SIGN OF _FPA0 MANTISSA 
   19EA 49            [ 2]  989                     ROLA                                  ; * ROTATE IT INTO THE CARRY FLAG 
   19EB 76 CA 8A      [ 7]  990                     ROR      _FPA0                         ; ROTATE CARRY (MANTISSA SIGN) INTO BIT 7 
                            991 ;                                                         ; OF LS BYTE OF MANTISSA
   19EE 7E 17 31      [ 4]  992                     JMP      LBABA                        ; DE-NORMALIZE _FPA0 
                            993 
                            994 ; INT
                            995 ;                   *        THE INT STATEMENT WILL "DENORMALIZE" _FPA0 - THAT IS IT WILL SHIFT THE BINARY POINT
                            996 ; TO THE EXTREME RIGHT OF THE MANTISSA TO FORCE ITS EXPONENT TO BE 0xAO. ONCE
                            997 ; THIS IS DONE THE MANTISSA OF _FPA0 WILL CONTAIN THE FOUR LEAST SIGNIFICANT
                            998 ; BYTES OF THE INTEGER PORTION OF _FPA0. AT THE CONCLUSION OF THE DE-NORMALIZATION
                            999 ; ONLY THE INTEGER PORTION OF _FPA0 WILL REMAIN.
                           1000 ;
                           1001  .globl _toInt2
   19F1                    1002 _toInt2:
                           1003 ; jsr packedToF0
                           1004  
   19F1 F6 CA 89      [ 5] 1005 INT:                 LDB      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   19F4 C1 A0         [ 2] 1006                     CMPB     #0xA0                         ; LARGEST POSSIBLE INTEGER EXPONENT 
   19F6 24 27         [ 3] 1007                     BCC      LBD11                        ; RETURN IF _FPA0 >= 32768 
   19F8 8D CA         [ 7] 1008                     BSR      LBCC8                        ; SHIFT THE BINARY POINT ONE TO THE RIGHT OF THE 
                           1009                                                          ; LS BYTE OF THE _FPA0 MANTISSA
   19FA F7 CA 9D      [ 5] 1010                     STB      _FPSBYT                       ; ACCB = 0: ZERO OUT THE SUB BYTE 
   19FD B6 CA 8E      [ 5] 1011                     LDA      _FP0SGN                       ; GET MANTISSA SIGN 
   1A00 F7 CA 8E      [ 5] 1012                     STB      _FP0SGN                       ; FORCE MANTISSA SIGN TO BE POSITIVE 
   1A03 80 80         [ 2] 1013                     SUBA     #0x80                         ; SET CARRY IF MANTISSA 
   1A05 86 A0         [ 2] 1014                     LDA      #0xA0                         ; * GET DENORMALIZED EXPONENT AND 
   1A07 B7 CA 89      [ 5] 1015                     STA      _FP0EXP                       ; * SAVE IT IN _FPA0 EXPONENT 
   1A0A B6 CA 8D      [ 5] 1016                     LDA      _FPA0+3                       ; = GET LS BYTE OF _FPA0 AND 
   1A0D B7 CA B9      [ 5] 1017                     STA      _CHARAC                       ; = SAVE IT IN CHARAC 
   1A10 7E 16 68      [ 4] 1018                     JMP      LBA18                        ; NORMALIZE _FPA0 
                           1019  .globl LBD09
   1A13 F7 CA 8A      [ 5] 1020 LBD09:               STB      _FPA0                         ; * LOAD MANTISSA OF _FPA0 WITH CONTENTS OF ACCB 
   1A16 F7 CA 8B      [ 5] 1021                     STB      _FPA0+1                       ; * 
   1A19 F7 CA 8C      [ 5] 1022                     STB      _FPA0+2                       ; * 
   1A1C F7 CA 8D      [ 5] 1023                     STB      _FPA0+3                       ; * 
                           1024  .globl LBD11
   1A1F 39            [ 5] 1025 LBD11:               RTS                                   ; * 
                           1026 
                           1027 ; String pointer passed in y
                           1028 ; output _FPA0
                           1029 ; CONVERT ASCII STRING TO FLOATING POINT
                           1030  .globl atoF0
   1A20                    1031 atoF0: 
                           1032  .globl LBD12
   1A20                    1033 LBD12: 
   1A20 BD 15 AB      [ 8] 1034                     JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
   1A23 8E 00 00      [ 3] 1035                     LDX      #0                           ; (X) = 0 
   1A26 BF CA 8E      [ 6] 1036                     STX      _FP0SGN                       ; * ZERO OUT _FPA0 & THE SIGN FLAG (_COEFCT) 
   1A29 BF CA 89      [ 6] 1037                     STX      _FP0EXP                       ; * 
   1A2C BF CA 8B      [ 6] 1038                     STX      _FPA0+1                       ; * 
   1A2F BF CA 8C      [ 6] 1039                     STX      _FPA0+2                       ; * 
   1A32 BF CA AC      [ 6] 1040                     STX      _V47                          ; INITIALIZE EXPONENT & EXPONENT SIGN FLAG TO ZERO 
   1A35 BF CA AA      [ 6] 1041                     STX      _V45                          ; INITIALIZE RIGHT DECIMAL CTR & DECIMAL PT FLAG TO 0 
   1A38 25 74         [ 3] 1042                     BCS      LBD86                        ; IF CARRY SET (NUMERIC CHARACTER), ASSUME ACCA CONTAINS FIRST 
                           1043 ;         NUMERIC CHAR, SIGN IS POSITIVE AND SKIP THE RAM HOOK
   1A3A BD 1C 1B      [ 8] 1044                     JSR      XVEC19                       ; CALL EXTENDED BASIC ADD-IN 
                           1045  .globl LBD25
   1A3D                    1046 LBD25: 
   1A3D 81 2D         [ 2] 1047                     CMPA     # '-                        ; * CHECK FOR A LEADING MINUS SIGN AND BRANCH
   1A3F 26 05         [ 3] 1048                     BNE      LBD2D                        ; * IF NO MINUS SIGN 
   1A41 73 CA 8F      [ 7] 1049                     COM      _COEFCT                       ; TOGGLE SIGN; 0 = +; FF = - 
   1A44 20 04         [ 3] 1050                     BRA      LBD31                        ; INTERPRET THE REST OF THE STRING 
                           1051 
                           1052  .globl LBD2D
   1A46                    1053 LBD2D: 
   1A46 81 2B         [ 2] 1054                     CMPA     # '+                        ; * CHECK FOR LEADING PLUS SlGN AND BRANCH
   1A48 26 05         [ 3] 1055                     BNE      LBD35                        ; * IF NOT A PLUS SIGN 
                           1056  .globl LBD31
   1A4A                    1057 LBD31: 
   1A4A BD 15 AB      [ 8] 1058                     JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
   1A4D 25 5F         [ 3] 1059                     BCS      LBD86                        ; BRANCH IF NUMERIC CHARACTER 
                           1060  .globl LBD35
   1A4F                    1061 LBD35: 
   1A4F 81 2E         [ 2] 1062                     CMPA     # '.                        ; DECIMAL POlNT?
   1A51 27 2D         [ 3] 1063                     BEQ      LBD61                        ; YES 
   1A53 81 45         [ 2] 1064                     CMPA     #'E ; "E" SHORTHAND FORM (SCIENTIFIC NOTATION)?
   1A55 26 2E         [ 3] 1065                     BNE      LBD65                        ; NO 
                           1066 ; E_VABLUATE EXPONENT OF EXPONENTIAL FORMAT
   1A57 BD 15 AB      [ 8] 1067                     JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
   1A5A 25 74         [ 3] 1068                     BCS      LBDA5                        ; BRANCH IF NUMERIC 
   1A5C 81 2D         [ 2] 1069                     CMPA     # '-                        ; MINUS TOKEN?
   1A5E 27 0E         [ 3] 1070                     BEQ      LBD53                        ; YES 
   1A60 81 2D         [ 2] 1071                     CMPA     # '-                        ; ASCII MINUS?
   1A62 27 0A         [ 3] 1072                     BEQ      LBD53                        ; YES 
   1A64 81 2B         [ 2] 1073                     CMPA     # '+                        ; PLUS TOKEN?
   1A66 27 09         [ 3] 1074                     BEQ      LBD55                        ; YES 
   1A68 81 2B         [ 2] 1075                     CMPA     # '+                        ; ASCII PLUS?
   1A6A 27 05         [ 3] 1076                     BEQ      LBD55                        ; YES 
   1A6C 20 08         [ 3] 1077                     BRA      LBD59                        ; BRANCH IF NO SIGN FOUND 
                           1078 
                           1079  .globl LBD53
   1A6E 73 CA AD      [ 7] 1080 LBD53:               COM      _V48                          ; SET EXPONENT SIGN FLAG TO NEGATIVE 
                           1081 ; STRIP A DECIMAL NUMBER FROM BASIC LINE, CONVERT IT TO BINARY IN _V47
                           1082  .globl LBD55
   1A71 BD 15 AB      [ 8] 1083 LBD55:               JSR      GETNCH                       ; GET NEXT INPUT CHARACTER FROM BASIC 
   1A74 25 5A         [ 3] 1084                     BCS      LBDA5                        ; IF NUMERIC CHARACTER, CONVERT TO BINARY 
                           1085  .globl LBD59
   1A76 7D CA AD      [ 7] 1086 LBD59:               TST      _V48                          ; * CHECK EXPONENT SIGN FLAG 
   1A79 27 0A         [ 3] 1087                     BEQ      LBD65                        ; * AND BRANCH IF POSITIVE 
   1A7B 70 CA AC      [ 7] 1088                     NEG      _V47                          ; NEGATE _VABLUE OF EXPONENT 
   1A7E 20 05         [ 3] 1089                     BRA      LBD65 
                           1090 
                           1091  .globl LBD61
   1A80 73 CA AB      [ 7] 1092 LBD61:               COM      _V46                          ; *TOGGLE DECIMAL PT FLAG AND INTERPRET ANOTHER 
   1A83 26 C5         [ 3] 1093                     BNE      LBD31                        ; *CHARACTER IF <> 0 - TERMINATE INTERPRETATION 
                           1094 ;         IF   SECOND DECIMAL POINT
                           1095 ; ADJUST _FPA0 FOR THE DECIMAL EXPONENT IN _V47
                           1096  .globl LBD65
   1A85 B6 CA AC      [ 5] 1097 LBD65:               LDA      _V47                          ; * GET EXPONENT, SUBTRACT THE NUMBER OF 
   1A88 B0 CA AA      [ 5] 1098                     SUBA     _V45                          ; * PLACES TO THE RIGHT OF DECIMAL POINT 
   1A8B B7 CA AC      [ 5] 1099                     STA      _V47                          ; * AND RESAVE IT. 
   1A8E 27 14         [ 3] 1100                     BEQ      LBD7F                        ; EXIT ROUTINE IF ADJUSTED EXPONENT = ZERO 
   1A90 2A 0A         [ 3] 1101                     BPL      LBD78                        ; BRANCH IF POSITIVE EXPONENT 
                           1102  .globl LBD6F
   1A92 BD 18 34      [ 8] 1103 LBD6F:               JSR      LBB82                        ; DIVIDE _FPA0 BY 10 
   1A95 7C CA AC      [ 7] 1104                     INC      _V47                          ; INCREMENT EXPONENT COUNTER (MULTIPLY BY 10) 
   1A98 26 F8         [ 3] 1105                     BNE      LBD6F                        ; KEEP MULTIPLYING 
   1A9A 20 08         [ 3] 1106                     BRA      LBD7F                        ; EXIT ROUTINE 
                           1107 
                           1108  .globl LBD78
   1A9C BD 18 1A      [ 8] 1109 LBD78:               JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
   1A9F 7A CA AC      [ 7] 1110                     DEC      _V47                          ; DECREMENT EXPONENT COUNTER (DIVIDE BY 10) 
   1AA2 26 F8         [ 3] 1111                     BNE      LBD78                        ; KEEP MULTIPLYING 
                           1112  .globl LBD7F
   1AA4 B6 CA 8F      [ 5] 1113 LBD7F:               LDA      _COEFCT                       ; GET THE SIGN FLAG 
   1AA7 10 2A FF 74   [ 6] 1114                     LBPL     LBD11                        ; RETURN IF POSITIVE 
   1AAB 7E 1C 12      [ 4] 1115                     JMP      LBEE9                        ; TOGGLE MANTISSA SIGN OF _FPA0, IF NEGATIVE 
                           1116 
                           1117 ;MULTIPLY _FPA0 BY TEN AND ADD ACCA TO THE RESULT
                           1118  .globl LBD86
   1AAE F6 CA AA      [ 5] 1119 LBD86:               LDB      _V45                          ; *GET THE RIGHT DECIMAL COUNTER AND SUBTRACT 
   1AB1 F0 CA AB      [ 5] 1120                     SUBB     _V46                          ; *THE DECIMAL POINT FLAG FROM IT. IF DECIMAL POINT 
   1AB4 F7 CA AA      [ 5] 1121                     STB      _V45                          ; *FLAG=0, NOTHING HAPPENS. IF DECIMAL POINT FLAG IS 
                           1122 ;                             -1, THEN RIGHT DECIMAL COUNTER IS INCREMENTED BY ONE
   1AB7 34 02         [ 6] 1123                     PSHS     A                            ; SAVE NEW DIGIT ON STACK 
   1AB9 BD 18 1A      [ 8] 1124                     JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
   1ABC 35 04         [ 6] 1125                     PULS     B                            ; GET NEW DIGIT BACK 
   1ABE C0 30         [ 2] 1126                     SUBB     # '0                        ; MASK OFF ASCII
   1AC0 8D 02         [ 7] 1127                     BSR      LBD99                        ; ADD ACCB TO _FPA0 
   1AC2 20 86         [ 3] 1128                     BRA      LBD31                        ; GET ANOTHER CHARACTER FROM BASIC 
                           1129 
                           1130  .globl LBD99
   1AC4 BD 19 07      [ 8] 1131 LBD99:               JSR      LBC2F                        ; PACK _FPA0 AND SAVE IT IN FPA3 
   1AC7 BD 19 68      [ 8] 1132                     JSR      LBC7C                        ; CONVERT ACCB TO FP NUMBER IN _FPA0 
   1ACA 8E CA A5      [ 3] 1133                     LDX      #_V40                         ; * ADD _FPA0 TO 
   1ACD 7E 15 FE      [ 4] 1134                     JMP      LB9C2                        ; * FPA3 
                           1135 
                           1136  .globl LBDA5
   1AD0 F6 CA AC      [ 5] 1137 LBDA5:               LDB      _V47 
   1AD3 58            [ 2] 1138                     ASLB                                  ; TIMES 2 
   1AD4 58            [ 2] 1139                     ASLB                                  ; TIMES 4 
   1AD5 FB CA AC      [ 5] 1140                     ADDB     _V47                          ; ADD 1 = TIMES 5 
   1AD8 58            [ 2] 1141                     ASLB                                  ; TIMES 10 
   1AD9 80 30         [ 2] 1142                     SUBA     # '0                        ; *MASK OFF ASCII FROM ACCA, PUSH
   1ADB 34 04         [ 6] 1143                     PSHS     B                            ; *RESULT ONTO THE STACK AND 
   1ADD AB E0         [ 6] 1144                     ADDA     ,S+                          ; ADD lT TO ACCB 
   1ADF B7 CA AC      [ 5] 1145                     STA      _V47                          ; SAVE IN _V47 
   1AE2 20 8D         [ 3] 1146                     BRA      LBD55                        ; INTERPRET ANOTHER CHARACTER 
                           1147 
                           1148 ;
                           1149  .globl LBDB6
   1AE4 9B 3E BC 1F FD     1150 LBDB6:               .byte      0x9B,0x3E,0xBC,0x1F,0xFD          ; * 99999999.9 
                           1151  .globl LBDBB
   1AE9 9E 6E 6B 27 FD     1152 LBDBB:               .byte      0x9E,0x6E,0x6B,0x27,0xFD          ; * 999999999 
                           1153  .globl LBDC0
   1AEE 9E 6E 6B 28 00     1154 LBDC0:               .byte      0x9E,0x6E,0x6B,0x28,0x00          ; * 1E + 09 
                           1155 ;
                           1156 ;LBDC5     LDX  #LABE8-1       ; POINT X TO " IN " MESSAGE
                           1157 ;          BSR  LBDD6          ; COPY A STRING FROM (X) TO CONSOLE OUT
                           1158 ;          LDD  CURLIN         ; GET CURRENT BASIC LINE NUMBER TO ACCD
                           1159 ;* CONVERT _VABLUE IN ACCD INTO A DECIMAL NUMBER
                           1160 ;* AND PRINT IT TO CONSOLE OUT
                           1161 ;LBDCC     STD  _FPA0           ; SAVE ACCD IN TOP HALF OF _FPA0
                           1162 ;          LDB  #0x90           ; REQ'D EXPONENT IF TOP HALF OF ACCD = INTEGER
                           1163 ;          COMA                ; SET CARRY FLAG - FORCE POSITIVE MANTISSA
                           1164 ;          JSR  LBC86          ; ZERO BOTTOM HALF AND SIGN OF _FPA0, THEN
                           1165 ;*         SAVE EXPONENT AND NORMALIZE IT
                           1166 ;          BSR  LBDD9          ; CONVERT FP NUMBER TO ASCII STRING
                           1167 ;LBDD6     JMP  LB99C          ; COPY A STRING FROM (X) TO CONSOLE OUT
                           1168  .globl F0toa
   1AF3                    1169 F0toa: 
                           1170 ; CONVERT FP NUMBER TO ASCII STRING
                           1171 ;LBDD9               LDU      #STRBUF+3                    ; POINT U TO BUFFER WHICH WILL NOT CAUSE 
                           1172 ;                                                         ; THE STRING TO BE STORED IN STRING SPACE
                           1173  .globl LBDDC
   1AF3 86 20         [ 2] 1174 LBDDC:               LDA      #SPACE                       ; SPACE = DEFAULT SIGN FOR POSITIVE # 
   1AF5 F6 CA 8E      [ 5] 1175                     LDB      _FP0SGN                       ; GET SIGN OF _FPA0 
   1AF8 2A 02         [ 3] 1176                     BPL      LBDE4                        ; BRANCH IF POSITIVE 
   1AFA 86 2D         [ 2] 1177                     LDA      # '-                        ; ASCII MINUS SIGN
                           1178  .globl LBDE4
   1AFC A7 C0         [ 6] 1179 LBDE4:               STA      ,U+                          ; STORE SIGN OF NUMBER 
   1AFE FF CA 9E      [ 6] 1180                     STU      _COEFPT                       ; SAVE BUFFER POINTER 
   1B01 B7 CA 8E      [ 5] 1181                     STA      _FP0SGN                       ; SAVE SIGN (IN ASCII) 
   1B04 86 30         [ 2] 1182                     LDA      # '0                        ; ASCII ZERO IF EXPONENT = 0
   1B06 F6 CA 89      [ 5] 1183                     LDB      _FP0EXP                       ; GET _FPA0 EXPONENT 
   1B09 10 27 00 D7   [ 6] 1184                     LBEQ     LBEB8                        ; BRANCH IF _FPA0 = 0 
   1B0D 4F            [ 2] 1185                     CLRA                                  ; BASE 10 EXPONENT=0 FOR FP NUMBER > 1 
   1B0E C1 80         [ 2] 1186                     CMPB     #0x80                         ; CHECK EXPONENT 
   1B10 22 08         [ 3] 1187                     BHI      LBDFF                        ; BRANCH IF FP NUMBER > 1 
                           1188 ; IF _FPA0 < 1.0, MULTIPLY IT BY 1E+09 TO SPEED UP THE CONVERSION PROCESS
   1B12 8E 1A EE      [ 3] 1189                     LDX      #LBDC0                       ; POINT X TO FP 1E+09 
   1B15 BD 17 46      [ 8] 1190                     JSR      LBACA                        ; MULTIPLY _FPA0 BY (X) 
   1B18 86 F7         [ 2] 1191                     LDA      #-9                          ; BASE 10 EXPONENT = -9 
                           1192  .globl LBDFF
   1B1A B7 CA AA      [ 5] 1193 LBDFF:               STA      _V45                          ; BASE 10 EXPONENT 
                           1194 ; PSEUDO - NORMALIZE THE FP NUMBER TO A _VABLUE IN THE RANGE
                           1195 ; OF 999,999,999 RO 99,999,999.9 - THIS IS THE LARGEST
                           1196 ; NUMBER RANGE IN WHICH ALL OF THE DIGITS ARE
                           1197 ; SIGNIFICANT WHICH CAN BE DISPLAYED WITHOUT USING
                           1198 ; SCIENTIFIC NOTATION
                           1199  .globl LBE01
   1B1D 8E 1A E9      [ 3] 1200 LBE01:               LDX      #LBDBB                       ; POINT X TO FP 999,999,999 
   1B20 BD 19 96      [ 8] 1201                     JSR      LBCA0                        ; COMPARE _FPA0 TO 999,999,999 
   1B23 2E 10         [ 3] 1202                     BGT      LBE18                        ; BRANCH IF > 999,999,999 
                           1203  .globl LBE09
   1B25 8E 1A E4      [ 3] 1204 LBE09:               LDX      #LBDB6                       ; POINT X TO FP 99,999,999.9 
   1B28 BD 19 96      [ 8] 1205                     JSR      LBCA0                        ; COMPARE _FPA0 TO 99,999,999.9 
   1B2B 2E 10         [ 3] 1206                     BGT      LBE1F                        ; BRANCH IF > 99,999,999.9 (IN RANGE) 
   1B2D BD 18 1A      [ 8] 1207                     JSR      LBB6A                        ; MULTIPLY _FPA0 BY 10 
   1B30 7A CA AA      [ 7] 1208                     DEC      _V45                          ; SUBTRACT ONE FROM DECIMAL OFFSET 
   1B33 20 F0         [ 3] 1209                     BRA      LBE09                        ; PSEUDO - NORMALIZE SOME MORE 
                           1210 
                           1211  .globl LBE18
   1B35 BD 18 34      [ 8] 1212 LBE18:               JSR      LBB82                        ; DIVIDE _FPA0 BY 10 
   1B38 7C CA AA      [ 7] 1213                     INC      _V45                          ; ADD ONE TO BASE 10 EXPONENT 
   1B3B 20 E0         [ 3] 1214                     BRA      LBE01                        ; PSEUDO - NORMALIZE SOME MORE 
                           1215 
                           1216  .globl LBE1F
   1B3D BD 15 DE      [ 8] 1217 LBE1F:               JSR      LB9B4                        ; ADD .5 TO _FPA0 (ROUND OFF) 
   1B40 BD 19 C4      [ 8] 1218                     JSR      LBCC8                        ; CONVERT _FPA0 TO AN INTEGER 
   1B43 C6 01         [ 2] 1219                     LDB      #1                           ; DEFAULT DECIMAL POINT FLAG (FORCE IMMED DECIMAL PT) 
   1B45 B6 CA AA      [ 5] 1220                     LDA      _V45                          ; * GET BASE 10 EXPONENT AND ADD TEN TO IT 
   1B48 8B 0A         [ 2] 1221                     ADDA     #9+1                         ; * (NUMBER 'NORMALIZED' TO 9 PLACES & DECIMAL PT) 
   1B4A 2B 09         [ 3] 1222                     BMI      LBE36                        ; BRANCH IF NUMBER < 1.0 
   1B4C 81 0B         [ 2] 1223                     CMPA     #9+2                         ; NINE PLACES MAY BE DISPLAYED WITHOUT 
                           1224 ;         USING SCIENTIFIC NOTATION
   1B4E 24 05         [ 3] 1225                     BCC      LBE36                        ; BRANCH IF SCIENTIFIC NOTATION REQUIRED 
   1B50 4A            [ 2] 1226                     DECA                                  ; * SUBTRACT 1 FROM MODIFIED BASE 10 EXPONENT CTR 
   1B51 1F 89         [ 6] 1227                     TFR      A,B                          ; * AND SAVE IT IN ACCB (DECiMAL POINT FLAG) 
   1B53 86 02         [ 2] 1228                     LDA      #2                           ; FORCE EXPONENT = 0 - DON'T USE SCIENTIFIC NOTATION 
                           1229  .globl LBE36
   1B55 4A            [ 2] 1230 LBE36:               DECA                                  ; * SUBTRACT TWO (WITHOUT AFFECTING CARRY) 
   1B56 4A            [ 2] 1231                     DECA                                  ; * FROM BASE 10 EXPONENT 
   1B57 B7 CA AC      [ 5] 1232                     STA      _V47                          ; SAVE EXPONENT - ZERO EXPONENT = DO NOT DISPLAY 
                           1233 ;         IN   SCIENTIFIC NOTATION
   1B5A F7 CA AA      [ 5] 1234                     STB      _V45                          ; DECIMAL POINT FLAG - NUMBER OF PLACES TO 
                           1235 ;         LEFT OF DECIMAL POINT
   1B5D 2E 0E         [ 3] 1236                     BGT      LBE4B                        ; BRANCH IF >= 1 
   1B5F FE CA 9E      [ 6] 1237                     LDU      _COEFPT                       ; POINT U TO THE STRING BUFFER 
   1B62 86 2E         [ 2] 1238                     LDA      # '.                        ; * STORE A PERIOD
   1B64 A7 C0         [ 6] 1239                     STA      ,U+                          ; * IN THE BUFFER 
   1B66 5D            [ 2] 1240                     TSTB                                  ; CHECK DECIMAL POINT FLAG 
   1B67 27 04         [ 3] 1241                     BEQ      LBE4B                        ; BRANCH IF NOTHING TO LEFT OF DECIMAL POINT 
   1B69 86 30         [ 2] 1242                     LDA      # '0                        ; * STORE A ZERO
   1B6B A7 C0         [ 6] 1243                     STA      ,U+                          ; * IN THE BUFFER 
                           1244 ; CONVERT _FPA0 INTO A STRING OF ASCII DIGITS
                           1245  .globl LBE4B
   1B6D 8E 1B EE      [ 3] 1246 LBE4B:               LDX      #LBEC5                       ; POINT X TO FP POWER OF 10 MANTISSA 
   1B70 C6 80         [ 2] 1247                     LDB      #0+0x80                       ; INITIALIZE DIGIT COUNTER TO 0+0x80 
                           1248 ; BIT 7 SET IS USED TO INDICATE THAT THE POWER OF 10 MANTISSA
                           1249 ;                   *        IS NEGATIVE. WHEN YOU 'ADD' A NEGATIVE MANTISSA, IT IS
                           1250 ; THE SAME AS SUBTRACTING A POSITIVE ONE AND BIT 7 OF ACCB IS HOW
                           1251 ;                   *        THE ROUTINE KNOWS THAT A 'SUBTRACTION' IS OCCURING.
                           1252  .globl LBE50
   1B72 B6 CA 8D      [ 5] 1253 LBE50:               LDA      _FPA0+3                       ; * ADD MANTISSA LS 
   1B75 AB 03         [ 5] 1254                     ADDA     3,X                          ; * BYTE OF _FPA0 
   1B77 B7 CA 8D      [ 5] 1255                     STA      _FPA0+3                       ; * AND (X) 
   1B7A B6 CA 8C      [ 5] 1256                     LDA      _FPA0+2                       ; = ADD MANTISSA 
   1B7D A9 02         [ 5] 1257                     ADCA     2,X                          ; = NUMBER 3 BYTE OF 
   1B7F B7 CA 8C      [ 5] 1258                     STA      _FPA0+2                       ; = _FPA0 AND (X) 
   1B82 B6 CA 8B      [ 5] 1259                     LDA      _FPA0+1                       ; * ADD MANTISSA 
   1B85 A9 01         [ 5] 1260                     ADCA     1,X                          ; * NUMBER 2 BYTE OF 
   1B87 B7 CA 8B      [ 5] 1261                     STA      _FPA0+1                       ; * _FPA0 AND (X) 
   1B8A B6 CA 8A      [ 5] 1262                     LDA      _FPA0                         ; = ADD MANTISSA 
   1B8D A9 84         [ 4] 1263                     ADCA     ,X                           ; = MS BYTE OF 
   1B8F B7 CA 8A      [ 5] 1264                     STA      _FPA0                         ; = _FPA0 AND (X) 
   1B92 5C            [ 2] 1265                     INCB                                  ; ADD ONE TO DIGIT COUNTER 
   1B93 56            [ 2] 1266                     RORB                                  ; ROTATE CARRY INTO BIT 7 
   1B94 59            [ 2] 1267                     ROLB                                  ; *SET OVERFLOW FLAG AND BRANCH IF CARRY = 1 AND 
   1B95 28 DB         [ 3] 1268                     BVC      LBE50                        ; *POSITIVE MANTISSA OR CARRY = 0 AND NEG MANTISSA 
   1B97 24 03         [ 3] 1269                     BCC      LBE72                        ; BRANCH IF NEGATIVE MANTISSA 
   1B99 C0 0B         [ 2] 1270                     SUBB     #10+1                        ; * TAKE THE 9'S COMPLEMENT IF 
   1B9B 50            [ 2] 1271                     NEGB                                  ; * ADDING MANTISSA 
                           1272  .globl LBE72
   1B9C                    1273 LBE72: 
   1B9C CB 2F         [ 2] 1274                     ADDB     # '0-1                      ; ADD ASCII OFFSET TO DIGIT
   1B9E 30 04         [ 5] 1275                     LEAX     4,X                          ; MOVE TO NEXT POWER OF 10 MANTISSA 
   1BA0 1F 98         [ 6] 1276                     TFR      B,A                          ; SAVE DIGIT IN ACCA 
   1BA2 84 7F         [ 2] 1277                     ANDA     #0x7F                         ; MASK OFF BIT 7 (ADD/SUBTRACT FLAG) 
   1BA4 A7 C0         [ 6] 1278                     STA      ,U+                          ; STORE DIGIT IN STRING BUFFER 
   1BA6 7A CA AA      [ 7] 1279                     DEC      _V45                          ; DECREMENT DECIMAL POINT FLAG 
   1BA9 26 04         [ 3] 1280                     BNE      LBE84                        ; BRANCH IF NOT TIME FOR DECIMAL POINT 
   1BAB 86 2E         [ 2] 1281                     LDA      # '.                        ; * STORE DECIMAL POINT IN
   1BAD A7 C0         [ 6] 1282                     STA      ,U+                          ; * STRING BUFFER 
                           1283  .globl LBE84
   1BAF 53            [ 2] 1284 LBE84:               COMB                                  ; TOGGLE BIT 7 (ADD/SUBTRACT FLAG) 
   1BB0 C4 80         [ 2] 1285                     ANDB     #0x80                         ; MASK OFF ALL BUT ADD/SUBTRACT FLAG 
   1BB2 8C 1C 12      [ 4] 1286                     CMPX     #LBEC5+36                    ; COMPARE X TO END OF MANTISSA TABLE 
   1BB5 26 BB         [ 3] 1287                     BNE      LBE50                        ; BRANCH IF NOT AT END OF TABLE 
                           1288 ; BLANK TRAILING ZEROS AND STORE EXPONENT IF ANY
                           1289  .globl LBE8C
   1BB7 A6 C2         [ 6] 1290 LBE8C:               LDA      ,-U                          ; GET THE LAST CHARACTER; MOVE POINTER BACK 
   1BB9 81 30         [ 2] 1291                     CMPA     # '0                        ; WAS IT A ZERO?
   1BBB 27 FA         [ 3] 1292                     BEQ      LBE8C                        ; IGNORE TRAILING ZEROS IF SO 
   1BBD 81 2E         [ 2] 1293                     CMPA     # '.                        ; CHECK FOR DECIMAL POINT
   1BBF 26 02         [ 3] 1294                     BNE      LBE98                        ; BRANCH IF NOT DECIMAL POINT 
   1BC1 33 5F         [ 5] 1295                     LEAU     -1,U                         ; STEP OVER THE DECIMAL POINT 
                           1296  .globl LBE98
   1BC3                    1297 LBE98: 
   1BC3 86 2B         [ 2] 1298                     LDA      # '+                        ; ASCII PLUS SIGN
   1BC5 F6 CA AC      [ 5] 1299                     LDB      _V47                          ; GET SCIENTIFIC NOTATION EXPONENT 
   1BC8 27 1C         [ 3] 1300                     BEQ      LBEBA                        ; BRANCH IF NOT SCIENTIFIC NOTATION 
   1BCA 2A 03         [ 3] 1301                     BPL      LBEA3                        ; BRANCH IF POSITIVE EXPONENT 
   1BCC 86 2D         [ 2] 1302                     LDA      # '-                        ; ASCII MINUS SIGN
   1BCE 50            [ 2] 1303                     NEGB                                  ; NEGATE EXPONENT IF NEGATIVE 
                           1304  .globl LBEA3
   1BCF A7 42         [ 5] 1305 LBEA3:               STA      2,U                          ; STORE EXPONENT SIGN IN STRING 
   1BD1 86 45         [ 2] 1306                     LDA      # 'E            ; * GET ASCII 'E (SCIENTIFIC NOTATION
   1BD3 A7 41         [ 5] 1307                     STA      1,U                          ; * FLAG) AND SAVE IT IN THE STRING 
   1BD5 86 2F         [ 2] 1308                     LDA      # '0-1                      ; INITIALIZE ACCA TO ASCII ZERO
                           1309  .globl LBEAB
   1BD7 4C            [ 2] 1310 LBEAB:               INCA                                  ; ADD ONE TO 10'S DIGIT OF EXPONENT 
   1BD8 C0 0A         [ 2] 1311                     SUBB     #10                          ; SUBTRACT 10 FROM ACCB 
   1BDA 24 FB         [ 3] 1312                     BCC      LBEAB                        ; ADD 1 TO 10'S DIGIT IF NO CARRY 
   1BDC CB 3A         [ 2] 1313                     ADDB     # '9+1                      ; CONVERT UNITS DIGIT TO ASCII
   1BDE ED 43         [ 6] 1314                     STD      3,U                          ; SAVE EXPONENT IN STRING 
   1BE0 6F 45         [ 7] 1315                     CLR      5,U                          ; CLEAR LAST BYTE (TERMINATOR) 
   1BE2 20 04         [ 3] 1316                     BRA      LBEBC                        ; GO RESET POINTER 
                           1317 
                           1318  .globl LBEB8
   1BE4 A7 C4         [ 4] 1319 LBEB8:               STA      ,U                           ; STORE LAST CHARACTER 
                           1320  .globl LBEBA
   1BE6 6F 41         [ 7] 1321 LBEBA:               CLR      1,U                          ; CLEAR LAST BYTE (TERMINATOR - REQUIRED BY 
                           1322 ;         PRINT SUBROUTINES)
                           1323  .globl LBEBC
   1BE8                    1324 LBEBC:                                                     ;LDX     #STRBUF+3 ; RESET POINTER TO START OF BUFFER 
   1BE8 39            [ 5] 1325                     RTS      
                           1326 
                           1327 ;
                           1328  .globl LBEC0
   1BE9 80 00 00 00 00     1329 LBEC0:               .byte      0x80,0x00,0x00,0x00,0x00          ; FLOATING POINT .5 
                           1330 ;
                           1331 ;** TABLE OF UNNORMALIZED POWERS OF 10
                           1332  .globl LBEC5
   1BEE FA 0A 1F 00        1333 LBEC5:               .byte      0xFA,0x0A,0x1F,0x00              ; -100000000 
                           1334  .globl LBEC9
   1BF2 00 98 96 80        1335 LBEC9:               .byte      0x00,0x98,0x96,0x80              ; 10000000 
                           1336  .globl LBECD
   1BF6 FF F0 BD C0        1337 LBECD:               .byte      0xFF,0xF0,0xBD,0xC0              ; -1000000 
                           1338  .globl LBED1
   1BFA 00 01 86 A0        1339 LBED1:               .byte      0x00,0x01,0x86,0xA0              ; 100000 
                           1340  .globl LBED5
   1BFE FF FF D8 F0        1341 LBED5:               .byte      0xFF,0xFF,0xD8,0xF0              ; -10000 
                           1342  .globl LBED9
   1C02 00 00 03 E8        1343 LBED9:               .byte      0x00,0x00,0x03,0xE8              ; 1000 
                           1344  .globl LBEDD
   1C06 FF FF FF 9C        1345 LBEDD:               .byte      0xFF,0xFF,0xFF,0x9C              ; -100 
                           1346  .globl LBEE1
   1C0A 00 00 00 0A        1347 LBEE1:               .byte      0x00,0x00,0x00,0x0A              ; 10 
                           1348  .globl LBEE5
   1C0E FF FF FF FF        1349 LBEE5:               .byte      0xFF,0xFF,0xFF,0xFF              ; -1 
                           1350 ;
                           1351 ;
                           1352  .globl LBEE9
   1C12 B6 CA 89      [ 5] 1353 LBEE9:               LDA      _FP0EXP                       ; GET EXPONENT OF _FPA0 
   1C15 27 03         [ 3] 1354                     BEQ      LBEEF                        ; BRANCH IF _FPA0 = 0 
   1C17 73 CA 8E      [ 7] 1355                     COM      _FP0SGN                       ; TOGGLE MANTISSA SIGN OF _FPA0 
                           1356  .globl LBEEF
   1C1A 39            [ 5] 1357 LBEEF:               RTS      
                           1358 
                           1359 ;
                           1360 ;
                           1361 ; EXTENDED BASIC RVEC19 HOOK CODE
                           1362  .globl XVEC19
   1C1B                    1363 XVEC19: 
   1C1B 81 26         [ 2] 1364                     CMPA     # '&                        ; *
   1C1D 26 65         [ 3] 1365                     BNE      L8845                        ; * RETURN IF NOT HEX OR OCTAL _VABRIABLE 
   1C1F 32 62         [ 5] 1366                     LEAS     0x02,S                        ; PURGE RETURN ADDRESS FROM STACK 
                           1367 ;                   *        PROCESS A _VABRIABLE PRECEEDED BY A '&' (&H,&O)
                           1368  .globl L87EB
   1C21 7F CA 8C      [ 7] 1369 L87EB:               CLR      _FPA0+2                       ; * CLEAR BOTTOM TWO 
   1C24 7F CA 8D      [ 7] 1370                     CLR      _FPA0+3                       ; * BYTES OF _FPA0 
   1C27 8E CA 8C      [ 3] 1371                     LDX      #_FPA0+2                      ; BYTES 2,3 OF _FPA0 = (TEMPORARY ACCUMULATOR) 
   1C2A BD 15 AB      [ 8] 1372                     JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
   1C2D 81 4F         [ 2] 1373                     CMPA     # 'O
   1C2F 27 13         [ 3] 1374                     BEQ      L880A                        ; YES 
   1C31 81 48         [ 2] 1375                     CMPA     # 'H
   1C33 27 28         [ 3] 1376                     BEQ      L881F                        ; YES 
   1C35 BD 15 AB      [ 8] 1377                     JSR      GETCCH                       ; GET CURRENT INPUT CHARACTER 
   1C38 20 0D         [ 3] 1378                     BRA      L880C                        ; DEFAULT TO OCTAL (&O) 
                           1379 
                           1380  .globl L8800
   1C3A                    1381 L8800: 
   1C3A 81 38         [ 2] 1382                     CMPA     # '8
   1C3C 10 22 F8 C1   [ 6] 1383                     LBHI     SYNTAX_ERROR 
   1C40 C6 03         [ 2] 1384                     LDB      #0x03                         ; BASE 8 MULTIPLIER 
   1C42 8D 2F         [ 7] 1385                     BSR      L8834                        ; ADD DIGIT TO TEMPORARY ACCUMULATOR 
                           1386 ; E_VABLUATE AN &O _VABRIABLE
                           1387  .globl L880A
   1C44 BD 15 AB      [ 8] 1388 L880A:               JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
                           1389  .globl L880C
   1C47 25 F1         [ 3] 1390 L880C:               BLO      L8800                        ; BRANCH IF NUMERIC 
                           1391  .globl L880E
   1C49 7F CA 8A      [ 7] 1392 L880E:               CLR      _FPA0                         ; * CLEAR 2 HIGH ORDER 
   1C4C 7F CA 8B      [ 7] 1393                     CLR      _FPA0+1                       ; * BYTES OF _FPA0 
                           1394 ;          CLR  _VABLTYP         ; SET _VABRXABLE TYPE TO NUMERIC
   1C4F 7F CA 9D      [ 7] 1395                     CLR      _FPSBYT                       ; ZERO OUT SUB BYTE OF _FPA0 
   1C52 7F CA 8E      [ 7] 1396                     CLR      _FP0SGN                       ; ZERO OUT MANTISSA SIGN OF _FPA0 
   1C55 C6 A0         [ 2] 1397                     LDB      #0xA0                         ; * SET EXPONENT OF _FPA0 
   1C57 F7 CA 89      [ 5] 1398                     STB      _FP0EXP                       ; * 
   1C5A 7E 16 6C      [ 4] 1399                     JMP      LBA1C                        ; GO NORMALIZE _FPA0 
                           1400 
                           1401 ; E_VABLUATE AN &H _VABRIABLE
                           1402  .globl L881F
   1C5D BD 15 AB      [ 8] 1403 L881F:               JSR      GETNCH                       ; GET A CHARACTER FROM BASIC 
   1C60 25 0B         [ 3] 1404                     BLO      L882E                        ; BRANCH IF NUMERIC 
   1C62 BD 15 B6      [ 8] 1405                     JSR      LB3A2                        ; SET CARRY IF NOT ALPHA 
   1C65 25 E2         [ 3] 1406                     BLO      L880E                        ; BRANCH IF NOT ALPHA OR NUMERIC 
   1C67 81 47         [ 2] 1407                     CMPA     # 'G                        ; CHECK FOR LETTERS A-F
   1C69 24 DE         [ 3] 1408                     BCC      L880E                        ; BRANCH IF >= G (ILLEGAL HEX LETTER) 
   1C6B 80 07         [ 2] 1409                     SUBA     #7                           ; SUBTRACT ASCII DIFFERENCE BETWEEN A AND 9 
                           1410  .globl L882E
   1C6D C6 04         [ 2] 1411 L882E:               LDB      #0x04                         ; BASE 16 DIGIT MULTIPLIER = 2**4 
   1C6F 8D 02         [ 7] 1412                     BSR      L8834                        ; ADD DIGIT TO TEMPORARY ACCUMULATOR 
   1C71 20 EA         [ 3] 1413                     BRA      L881F                        ; KEEP E_VABLUATING _VABRIABLE 
                           1414 
                           1415  .globl L8834
   1C73 68 01         [ 7] 1416 L8834:               ASL      0x01,X                        ; * MULTIPLY TEMPORARY 
   1C75 69 84         [ 6] 1417                     ROL      ,X                           ; * ACCUMULATOR BY TWO 
   1C77 10 25 FA 8B   [ 6] 1418                     LBCS     LBA92                        ; 'OV' OVERFLOW ERROR 
   1C7B 5A            [ 2] 1419                     DECB                                  ; DECREMENT SHIFT COUNTER 
   1C7C 26 F5         [ 3] 1420                     BNE      L8834                        ; MULTIPLY TEMPORARY ACCUMULATOR AGAIN 
   1C7E 80 30         [ 2] 1421                     SUBA     # '0                        ; MASK OFF ASCII
   1C80 AB 01         [ 5] 1422                     ADDA     0x01,X                        ; * ADD DIGIT TO TEMPORARY 
   1C82 A7 01         [ 5] 1423                     STA      0x01,X                        ; * ACCUMULATOR AND SAVE IT 
                           1424  .globl L8845
   1C84 39            [ 5] 1425 L8845:               RTS      
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$float40MS$10     04F0 GR  |   2 A$float40MS$10     04F3 GR
  2 A$float40MS$10     04F5 GR  |   2 A$float40MS$10     04F7 GR
  2 A$float40MS$10     04F9 GR  |   2 A$float40MS$10     04FC GR
  2 A$float40MS$10     04FF GR  |   2 A$float40MS$10     0502 GR
  2 A$float40MS$10     0504 GR  |   2 A$float40MS$10     0506 GR
  2 A$float40MS$10     0509 GR  |   2 A$float40MS$10     050C GR
  2 A$float40MS$10     050F GR  |   2 A$float40MS$10     0512 GR
  2 A$float40MS$10     0515 GR  |   2 A$float40MS$10     0518 GR
  2 A$float40MS$10     051B GR  |   2 A$float40MS$10     051E GR
  2 A$float40MS$10     051F GR  |   2 A$float40MS$10     0522 GR
  2 A$float40MS$10     0525 GR  |   2 A$float40MS$10     0528 GR
  2 A$float40MS$10     052B GR  |   2 A$float40MS$10     052E GR
  2 A$float40MS$10     0531 GR  |   2 A$float40MS$10     0534 GR
  2 A$float40MS$10     0537 GR  |   2 A$float40MS$10     0539 GR
  2 A$float40MS$10     053C GR  |   2 A$float40MS$10     053E GR
  2 A$float40MS$10     0540 GR  |   2 A$float40MS$10     0543 GR
  2 A$float40MS$10     0545 GR  |   2 A$float40MS$10     0547 GR
  2 A$float40MS$10     0549 GR  |   2 A$float40MS$10     054C GR
  2 A$float40MS$10     054E GR  |   2 A$float40MS$10     0550 GR
  2 A$float40MS$10     0552 GR  |   2 A$float40MS$10     0554 GR
  2 A$float40MS$10     0556 GR  |   2 A$float40MS$10     0559 GR
  2 A$float40MS$10     055B GR  |   2 A$float40MS$10     055D GR
  2 A$float40MS$10     055F GR  |   2 A$float40MS$10     0561 GR
  2 A$float40MS$10     0563 GR  |   2 A$float40MS$10     0565 GR
  2 A$float40MS$10     0567 GR  |   2 A$float40MS$10     0569 GR
  2 A$float40MS$10     056B GR  |   2 A$float40MS$10     056D GR
  2 A$float40MS$10     0570 GR  |   2 A$float40MS$10     0573 GR
  2 A$float40MS$10     0575 GR  |   2 A$float40MS$10     0578 GR
  2 A$float40MS$10     057A GR  |   2 A$float40MS$10     057D GR
  2 A$float40MS$10     057F GR  |   2 A$float40MS$10     0582 GR
  2 A$float40MS$10     0584 GR  |   2 A$float40MS$10     0587 GR
  2 A$float40MS$10     058A GR  |   2 A$float40MS$11     058D GR
  2 A$float40MS$11     058F GR  |   2 A$float40MS$11     0591 GR
  2 A$float40MS$11     0594 GR  |   2 A$float40MS$11     0597 GR
  2 A$float40MS$11     0599 GR  |   2 A$float40MS$11     059B GR
  2 A$float40MS$11     059E GR  |   2 A$float40MS$11     05A1 GR
  2 A$float40MS$11     05A3 GR  |   2 A$float40MS$11     05A6 GR
  2 A$float40MS$11     05AA GR  |   2 A$float40MS$11     05AD GR
  2 A$float40MS$11     05B0 GR  |   2 A$float40MS$11     05B3 GR
  2 A$float40MS$11     05B6 GR  |   2 A$float40MS$11     05B8 GR
  2 A$float40MS$11     05BB GR  |   2 A$float40MS$11     05BD GR
  2 A$float40MS$11     05BF GR  |   2 A$float40MS$11     05C1 GR
  2 A$float40MS$11     05C3 GR  |   2 A$float40MS$11     05C6 GR
  2 A$float40MS$11     05C9 GR  |   2 A$float40MS$11     05CC GR
  2 A$float40MS$11     05CF GR  |   2 A$float40MS$11     05D2 GR
  2 A$float40MS$11     05D3 GR  |   2 A$float40MS$11     05D4 GR
  2 A$float40MS$11     05D7 GR  |   2 A$float40MS$11     05D8 GR
  2 A$float40MS$11     05DA GR  |   2 A$float40MS$11     05DC GR
  2 A$float40MS$11     05DE GR  |   2 A$float40MS$11     05E1 GR
  2 A$float40MS$11     05F2 GR  |   2 A$float40MS$11     05F4 GR
  2 A$float40MS$11     05F7 GR  |   2 A$float40MS$11     05F9 GR
  2 A$float40MS$11     05FB GR  |   2 A$float40MS$11     05FD GR
  2 A$float40MS$11     0600 GR  |   2 A$float40MS$11     0603 GR
  2 A$float40MS$11     0605 GR  |   2 A$float40MS$11     0608 GR
  2 A$float40MS$11     060C GR  |   2 A$float40MS$11     060D GR
  2 A$float40MS$11     060F GR  |   2 A$float40MS$11     0611 GR
  2 A$float40MS$11     0614 GR  |   2 A$float40MS$11     0617 GR
  2 A$float40MS$11     0619 GR  |   2 A$float40MS$12     061C GR
  2 A$float40MS$12     061F GR  |   2 A$float40MS$12     0622 GR
  2 A$float40MS$12     0624 GR  |   2 A$float40MS$12     0627 GR
  2 A$float40MS$12     062A GR  |   2 A$float40MS$12     062C GR
  2 A$float40MS$12     062F GR  |   2 A$float40MS$12     0632 GR
  2 A$float40MS$12     0634 GR  |   2 A$float40MS$12     0637 GR
  2 A$float40MS$12     063A GR  |   2 A$float40MS$12     063C GR
  2 A$float40MS$12     063F GR  |   2 A$float40MS$12     0642 GR
  2 A$float40MS$12     0644 GR  |   2 A$float40MS$12     0647 GR
  2 A$float40MS$12     0649 GR  |   2 A$float40MS$12     064B GR
  2 A$float40MS$12     064D GR  |   2 A$float40MS$12     064F GR
  2 A$float40MS$12     0650 GR  |   2 A$float40MS$12     0652 GR
  2 A$float40MS$12     0654 GR  |   2 A$float40MS$12     0655 GR
  2 A$float40MS$12     0656 GR  |   2 A$float40MS$12     0659 GR
  2 A$float40MS$12     065C GR  |   2 A$float40MS$12     065E GR
  2 A$float40MS$12     0661 GR  |   2 A$float40MS$12     0663 GR
  2 A$float40MS$12     0004 GR  |   2 A$float40MS$12     0665 GR
  2 A$float40MS$12     0666 GR  |   2 A$float40MS$12     0668 GR
  2 A$float40MS$12     066A GR  |   2 A$float40MS$12     066C GR
  2 A$float40MS$12     066F GR  |   2 A$float40MS$12     0007 GR
  2 A$float40MS$12     0671 GR  |   2 A$float40MS$12     0674 GR
  2 A$float40MS$12     0676 GR  |   2 A$float40MS$12     0679 GR
  2 A$float40MS$12     067C GR  |   2 A$float40MS$12     067E GR
  2 A$float40MS$12     0681 GR  |   2 A$float40MS$12     0684 GR
  2 A$float40MS$12     0686 GR  |   2 A$float40MS$12     0689 GR
  2 A$float40MS$12     068C GR  |   2 A$float40MS$12     068E GR
  2 A$float40MS$12     0691 GR  |   2 A$float40MS$12     0692 GR
  2 A$float40MS$12     0693 GR  |   2 A$float40MS$12     0694 GR
  2 A$float40MS$12     0696 GR  |   2 A$float40MS$12     0698 GR
  2 A$float40MS$12     069A GR  |   2 A$float40MS$12     069B GR
  2 A$float40MS$12     069D GR  |   2 A$float40MS$12     069F GR
  2 A$float40MS$12     06A1 GR  |   2 A$float40MS$12     06A3 GR
  2 A$float40MS$12     06A5 GR  |   2 A$float40MS$12     06A8 GR
  2 A$float40MS$12     06AA GR  |   2 A$float40MS$12     06AC GR
  2 A$float40MS$12     06AE GR  |   2 A$float40MS$12     06AF GR
  2 A$float40MS$12     06B1 GR  |   2 A$float40MS$12     06B4 GR
  2 A$float40MS$12     06B6 GR  |   2 A$float40MS$12     06B8 GR
  2 A$float40MS$12     06BA GR  |   2 A$float40MS$12     06BC GR
  2 A$float40MS$12     06BE GR  |   2 A$float40MS$12     06C0 GR
  2 A$float40MS$12     06C2 GR  |   2 A$float40MS$12     06C4 GR
  2 A$float40MS$13     06C7 GR  |   2 A$float40MS$13     06C9 GR
  2 A$float40MS$13     06CB GR  |   2 A$float40MS$13     06CD GR
  2 A$float40MS$13     06CE GR  |   2 A$float40MS$13     06D0 GR
  2 A$float40MS$13     06D2 GR  |   2 A$float40MS$13     06D4 GR
  2 A$float40MS$13     0008 GR  |   2 A$float40MS$13     06D6 GR
  2 A$float40MS$13     06D7 GR  |   2 A$float40MS$13     06D9 GR
  2 A$float40MS$13     06DB GR  |   2 A$float40MS$13     06DD GR
  2 A$float40MS$13     06DF GR  |   2 A$float40MS$13     06E1 GR
  2 A$float40MS$13     06E3 GR  |   2 A$float40MS$13     000B GR
  2 A$float40MS$13     06E5 GR  |   2 A$float40MS$13     06E7 GR
  2 A$float40MS$13     000D GR  |   2 A$float40MS$13     0711 GR
  2 A$float40MS$13     0714 GR  |   2 A$float40MS$13     0716 GR
  2 A$float40MS$13     0719 GR  |   2 A$float40MS$13     0010 GR
  2 A$float40MS$13     071A GR  |   2 A$float40MS$13     071C GR
  2 A$float40MS$13     071E GR  |   2 A$float40MS$13     0720 GR
  2 A$float40MS$13     0012 GR  |   2 A$float40MS$13     0723 GR
  2 A$float40MS$13     0726 GR  |   2 A$float40MS$13     0729 GR
  2 A$float40MS$13     072C GR  |   2 A$float40MS$13     072E GR
  2 A$float40MS$13     0730 GR  |   2 A$float40MS$13     0732 GR
  2 A$float40MS$13     0734 GR  |   2 A$float40MS$13     0737 GR
  2 A$float40MS$13     0739 GR  |   2 A$float40MS$13     073B GR
  2 A$float40MS$13     073F GR  |   2 A$float40MS$13     0741 GR
  2 A$float40MS$13     0743 GR  |   2 A$float40MS$13     0746 GR
  2 A$float40MS$13     0748 GR  |   2 A$float40MS$13     074B GR
  2 A$float40MS$13     074E GR  |   2 A$float40MS$13     0751 GR
  2 A$float40MS$13     0754 GR  |   2 A$float40MS$13     0756 GR
  2 A$float40MS$13     0759 GR  |   2 A$float40MS$14     075C GR
  2 A$float40MS$14     075F GR  |   2 A$float40MS$14     0761 GR
  2 A$float40MS$14     0764 GR  |   2 A$float40MS$14     0766 GR
  2 A$float40MS$14     0768 GR  |   2 A$float40MS$14     076A GR
  2 A$float40MS$14     076C GR  |   2 A$float40MS$14     076E GR
  2 A$float40MS$14     0770 GR  |   2 A$float40MS$14     0772 GR
  2 A$float40MS$14     0774 GR  |   2 A$float40MS$14     0776 GR
  2 A$float40MS$14     077A GR  |   2 A$float40MS$14     0015 GR
  2 A$float40MS$14     077B GR  |   2 A$float40MS$14     077D GR
  2 A$float40MS$14     077F GR  |   2 A$float40MS$14     0781 GR
  2 A$float40MS$14     0783 GR  |   2 A$float40MS$14     0017 GR
  2 A$float40MS$14     0019 GR  |   2 A$float40MS$14     001B GR
  2 A$float40MS$14     001E GR  |   2 A$float40MS$14     0020 GR
  2 A$float40MS$15     0023 GR  |   2 A$float40MS$15     0026 GR
  2 A$float40MS$15     0028 GR  |   2 A$float40MS$15     002B GR
  2 A$float40MS$15     002D GR  |   2 A$float40MS$16     0030 GR
  2 A$float40MS$16     0033 GR  |   2 A$float40MS$16     0035 GR
  2 A$float40MS$16     0038 GR  |   2 A$float40MS$16     003A GR
  2 A$float40MS$17     003D GR  |   2 A$float40MS$17     003F GR
  2 A$float40MS$17     0041 GR  |   2 A$float40MS$17     0043 GR
  2 A$float40MS$17     0046 GR  |   2 A$float40MS$17     0048 GR
  2 A$float40MS$18     004B GR  |   2 A$float40MS$18     004E GR
  2 A$float40MS$18     0050 GR  |   2 A$float40MS$18     0053 GR
  2 A$float40MS$18     0056 GR  |   2 A$float40MS$18     0058 GR
  2 A$float40MS$19     005A GR  |   2 A$float40MS$19     005D GR
  2 A$float40MS$19     0060 GR  |   2 A$float40MS$19     0062 GR
  2 A$float40MS$20     0064 GR  |   2 A$float40MS$20     0067 GR
  2 A$float40MS$20     0069 GR  |   2 A$float40MS$20     006B GR
  2 A$float40MS$21     006C GR  |   2 A$float40MS$21     006F GR
  2 A$float40MS$22     0071 GR  |   2 A$float40MS$22     0074 GR
  2 A$float40MS$22     0076 GR  |   2 A$float40MS$22     0079 GR
  2 A$float40MS$22     007C GR  |   2 A$float40MS$22     007F GR
  2 A$float40MS$22     0082 GR  |   2 A$float40MS$22     0085 GR
  2 A$float40MS$23     008D GR  |   2 A$float40MS$23     0090 GR
  2 A$float40MS$24     0092 GR  |   2 A$float40MS$24     0094 GR
  2 A$float40MS$24     0097 GR  |   2 A$float40MS$24     009A GR
  2 A$float40MS$24     009E GR  |   2 A$float40MS$24     00A1 GR
  2 A$float40MS$24     00A4 GR  |   2 A$float40MS$25     00A5 GR
  2 A$float40MS$25     00A7 GR  |   2 A$float40MS$29     00AA GR
  2 A$float40MS$29     00AC GR  |   2 A$float40MS$29     00AE GR
  2 A$float40MS$30     00B0 GR  |   2 A$float40MS$30     00B2 GR
  2 A$float40MS$30     00B4 GR  |   2 A$float40MS$31     00B5 GR
  2 A$float40MS$31     00B7 GR  |   2 A$float40MS$31     00B9 GR
  2 A$float40MS$31     00BD GR  |   2 A$float40MS$32     00BE GR
  2 A$float40MS$32     00C1 GR  |   2 A$float40MS$33     00C4 GR
  2 A$float40MS$33     00C6 GR  |   2 A$float40MS$33     00C9 GR
  2 A$float40MS$33     00CC GR  |   2 A$float40MS$33     00CE GR
  2 A$float40MS$33     00D0 GR  |   2 A$float40MS$33     00D2 GR
  2 A$float40MS$33     00D5 GR  |   2 A$float40MS$34     00D7 GR
  2 A$float40MS$34     00DA GR  |   2 A$float40MS$34     00DC GR
  2 A$float40MS$34     00DD GR  |   2 A$float40MS$34     00E0 GR
  2 A$float40MS$35     00E2 GR  |   2 A$float40MS$35     00E5 GR
  2 A$float40MS$35     00E8 GR  |   2 A$float40MS$36     00EA GR
  2 A$float40MS$36     00ED GR  |   2 A$float40MS$36     00F0 GR
  2 A$float40MS$36     00F3 GR  |   2 A$float40MS$37     00F5 GR
  2 A$float40MS$37     00F8 GR  |   2 A$float40MS$37     00FB GR
  2 A$float40MS$37     00FD GR  |   2 A$float40MS$38     0100 GR
  2 A$float40MS$38     0101 GR  |   2 A$float40MS$38     0105 GR
  2 A$float40MS$38     0108 GR  |   2 A$float40MS$38     010A GR
  2 A$float40MS$38     010B GR  |   2 A$float40MS$39     010D GR
  2 A$float40MS$39     0110 GR  |   2 A$float40MS$39     0114 GR
  2 A$float40MS$39     0116 GR  |   2 A$float40MS$39     0119 GR
  2 A$float40MS$39     011C GR  |   2 A$float40MS$39     011F GR
  2 A$float40MS$39     0122 GR  |   2 A$float40MS$39     0123 GR
  2 A$float40MS$40     0125 GR  |   2 A$float40MS$40     0127 GR
  2 A$float40MS$40     0128 GR  |   2 A$float40MS$40     012A GR
  2 A$float40MS$40     012D GR  |   2 A$float40MS$40     0130 GR
  2 A$float40MS$40     0132 GR  |   2 A$float40MS$40     0134 GR
  2 A$float40MS$40     0136 GR  |   2 A$float40MS$41     0138 GR
  2 A$float40MS$41     013A GR  |   2 A$float40MS$41     013B GR
  2 A$float40MS$41     013D GR  |   2 A$float40MS$41     0140 GR
  2 A$float40MS$41     0143 GR  |   2 A$float40MS$42     0146 GR
  2 A$float40MS$42     0149 GR  |   2 A$float40MS$42     014C GR
  2 A$float40MS$42     014F GR  |   2 A$float40MS$42     0152 GR
  2 A$float40MS$42     0155 GR  |   2 A$float40MS$42     0158 GR
  2 A$float40MS$42     015B GR  |   2 A$float40MS$42     015E GR
  2 A$float40MS$42     0161 GR  |   2 A$float40MS$43     0164 GR
  2 A$float40MS$43     0165 GR  |   2 A$float40MS$43     0167 GR
  2 A$float40MS$43     0169 GR  |   2 A$float40MS$43     016B GR
  2 A$float40MS$43     016C GR  |   2 A$float40MS$44     016F GR
  2 A$float40MS$44     0171 GR  |   2 A$float40MS$44     0174 GR
  2 A$float40MS$44     0177 GR  |   2 A$float40MS$44     017A GR
  2 A$float40MS$44     017D GR  |   2 A$float40MS$44     0180 GR
  2 A$float40MS$44     0183 GR  |   2 A$float40MS$44     0186 GR
  2 A$float40MS$44     0189 GR  |   2 A$float40MS$45     018C GR
  2 A$float40MS$45     018E GR  |   2 A$float40MS$45     0190 GR
  2 A$float40MS$45     0192 GR  |   2 A$float40MS$45     0193 GR
  2 A$float40MS$45     0196 GR  |   2 A$float40MS$45     0199 GR
  2 A$float40MS$46     019A GR  |   2 A$float40MS$46     019D GR
  2 A$float40MS$46     019E GR  |   2 A$float40MS$46     01A0 GR
  2 A$float40MS$47     01A1 GR  |   2 A$float40MS$47     01A4 GR
  2 A$float40MS$47     01A7 GR  |   2 A$float40MS$47     01AA GR
  2 A$float40MS$47     01AD GR  |   2 A$float40MS$47     01B0 GR
  2 A$float40MS$47     01B2 GR  |   2 A$float40MS$47     01B5 GR
  2 A$float40MS$47     01B7 GR  |   2 A$float40MS$48     01B9 GR
  2 A$float40MS$48     01BC GR  |   2 A$float40MS$48     01BF GR
  2 A$float40MS$48     01C1 GR  |   2 A$float40MS$49     01C4 GR
  2 A$float40MS$49     01C6 GR  |   2 A$float40MS$49     01C9 GR
  2 A$float40MS$49     01CB GR  |   2 A$float40MS$49     01CE GR
  2 A$float40MS$49     01D0 GR  |   2 A$float40MS$49     01D3 GR
  2 A$float40MS$49     01D6 GR  |   2 A$float40MS$50     01D9 GR
  2 A$float40MS$50     01DC GR  |   2 A$float40MS$50     01DE GR
  2 A$float40MS$50     01E0 GR  |   2 A$float40MS$50     01E2 GR
  2 A$float40MS$51     01E3 GR  |   2 A$float40MS$51     01E6 GR
  2 A$float40MS$51     01E9 GR  |   2 A$float40MS$51     01EC GR
  2 A$float40MS$51     01EF GR  |   2 A$float40MS$51     01F2 GR
  2 A$float40MS$51     01F5 GR  |   2 A$float40MS$52     01F7 GR
  2 A$float40MS$52     01FA GR  |   2 A$float40MS$52     01FC GR
  2 A$float40MS$52     01FF GR  |   2 A$float40MS$52     0201 GR
  2 A$float40MS$52     0204 GR  |   2 A$float40MS$52     0205 GR
  2 A$float40MS$53     0207 GR  |   2 A$float40MS$53     020A GR
  2 A$float40MS$54     020D GR  |   2 A$float40MS$54     020F GR
  2 A$float40MS$54     0212 GR  |   2 A$float40MS$54     0214 GR
  2 A$float40MS$54     0216 GR  |   2 A$float40MS$54     0218 GR
  2 A$float40MS$54     021A GR  |   2 A$float40MS$54     021C GR
  2 A$float40MS$54     021E GR  |   2 A$float40MS$54     0221 GR
  2 A$float40MS$55     0223 GR  |   2 A$float40MS$55     0225 GR
  2 A$float40MS$55     0227 GR  |   2 A$float40MS$55     022A GR
  2 A$float40MS$55     022C GR  |   2 A$float40MS$55     022E GR
  2 A$float40MS$55     0230 GR  |   2 A$float40MS$56     0232 GR
  2 A$float40MS$56     0234 GR  |   2 A$float40MS$56     0236 GR
  2 A$float40MS$56     0237 GR  |   2 A$float40MS$56     0238 GR
  2 A$float40MS$56     023A GR  |   2 A$float40MS$57     0240 GR
  2 A$float40MS$57     0243 GR  |   2 A$float40MS$58     0245 GR
  2 A$float40MS$58     0248 GR  |   2 A$float40MS$58     024C GR
  2 A$float40MS$58     024F GR  |   2 A$float40MS$59     0251 GR
  2 A$float40MS$59     0254 GR  |   2 A$float40MS$59     0257 GR
  2 A$float40MS$59     025A GR  |   2 A$float40MS$59     025D GR
  2 A$float40MS$59     0260 GR  |   2 A$float40MS$59     0262 GR
  2 A$float40MS$59     0265 GR  |   2 A$float40MS$59     0268 GR
  2 A$float40MS$59     026B GR  |   2 A$float40MS$60     026D GR
  2 A$float40MS$60     0270 GR  |   2 A$float40MS$60     0273 GR
  2 A$float40MS$60     0276 GR  |   2 A$float40MS$60     0278 GR
  2 A$float40MS$60     027B GR  |   2 A$float40MS$60     027E GR
  2 A$float40MS$60     0281 GR  |   2 A$float40MS$60     0283 GR
  2 A$float40MS$60     0286 GR  |   2 A$float40MS$61     0289 GR
  2 A$float40MS$61     028C GR  |   2 A$float40MS$61     028F GR
  2 A$float40MS$61     0293 GR  |   2 A$float40MS$62     0294 GR
  2 A$float40MS$62     0297 GR  |   2 A$float40MS$62     0298 GR
  2 A$float40MS$62     029A GR  |   2 A$float40MS$62     029C GR
  2 A$float40MS$62     029F GR  |   2 A$float40MS$62     02A2 GR
  2 A$float40MS$62     02A5 GR  |   2 A$float40MS$62     02A8 GR
  2 A$float40MS$63     02AB GR  |   2 A$float40MS$63     02AE GR
  2 A$float40MS$63     02B1 GR  |   2 A$float40MS$63     02B4 GR
  2 A$float40MS$63     02B7 GR  |   2 A$float40MS$63     02BA GR
  2 A$float40MS$63     02BD GR  |   2 A$float40MS$63     02BE GR
  2 A$float40MS$63     02C1 GR  |   2 A$float40MS$64     02C4 GR
  2 A$float40MS$64     02C7 GR  |   2 A$float40MS$64     02CA GR
  2 A$float40MS$64     02CD GR  |   2 A$float40MS$64     02CE GR
  2 A$float40MS$64     02D0 GR  |   2 A$float40MS$65     02D1 GR
  2 A$float40MS$65     02D3 GR  |   2 A$float40MS$65     02D6 GR
  2 A$float40MS$65     02D8 GR  |   2 A$float40MS$65     02DB GR
  2 A$float40MS$65     02DE GR  |   2 A$float40MS$66     02E1 GR
  2 A$float40MS$66     02E4 GR  |   2 A$float40MS$66     02E6 GR
  2 A$float40MS$66     02E9 GR  |   2 A$float40MS$66     02EB GR
  2 A$float40MS$66     02EE GR  |   2 A$float40MS$66     02F1 GR
  2 A$float40MS$67     02F2 GR  |   2 A$float40MS$67     02F3 GR
  2 A$float40MS$67     02F5 GR  |   2 A$float40MS$67     02F8 GR
  2 A$float40MS$67     02F9 GR  |   2 A$float40MS$67     02FA GR
  2 A$float40MS$67     02FC GR  |   2 A$float40MS$67     02FE GR
  2 A$float40MS$68     0301 GR  |   2 A$float40MS$68     0303 GR
  2 A$float40MS$68     0306 GR  |   2 A$float40MS$68     0309 GR
  2 A$float40MS$68     030A GR  |   2 A$float40MS$68     030D GR
  2 A$float40MS$69     030E GR  |   2 A$float40MS$69     0310 GR
  2 A$float40MS$69     0312 GR  |   2 A$float40MS$69     0316 GR
  2 A$float40MS$70     0319 GR  |   2 A$float40MS$70     031C GR
  2 A$float40MS$70     031E GR  |   2 A$float40MS$70     0320 GR
  2 A$float40MS$70     0322 GR  |   2 A$float40MS$70     0325 GR
  2 A$float40MS$70     0328 GR  |   2 A$float40MS$70     032B GR
  2 A$float40MS$71     032D GR  |   2 A$float40MS$71     0333 GR
  2 A$float40MS$71     0336 GR  |   2 A$float40MS$71     0339 GR
  2 A$float40MS$72     033A GR  |   2 A$float40MS$72     033D GR
  2 A$float40MS$73     0340 GR  |   2 A$float40MS$73     0344 GR
  2 A$float40MS$73     0347 GR  |   2 A$float40MS$73     0349 GR
  2 A$float40MS$73     034C GR  |   2 A$float40MS$73     034E GR
  2 A$float40MS$73     0351 GR  |   2 A$float40MS$74     0353 GR
  2 A$float40MS$74     0356 GR  |   2 A$float40MS$74     0358 GR
  2 A$float40MS$74     035B GR  |   2 A$float40MS$74     035E GR
  2 A$float40MS$74     0360 GR  |   2 A$float40MS$74     0363 GR
  2 A$float40MS$75     0366 GR  |   2 A$float40MS$75     0368 GR
  2 A$float40MS$75     036B GR  |   2 A$float40MS$75     036E GR
  2 A$float40MS$75     0370 GR  |   2 A$float40MS$75     0373 GR
  2 A$float40MS$75     0376 GR  |   2 A$float40MS$75     0378 GR
  2 A$float40MS$75     0379 GR  |   2 A$float40MS$76     037B GR
  2 A$float40MS$76     037C GR  |   2 A$float40MS$76     037E GR
  2 A$float40MS$76     0380 GR  |   2 A$float40MS$76     0383 GR
  2 A$float40MS$76     0385 GR  |   2 A$float40MS$76     0387 GR
  2 A$float40MS$76     0389 GR  |   2 A$float40MS$77     038B GR
  2 A$float40MS$77     038D GR  |   2 A$float40MS$77     0390 GR
  2 A$float40MS$77     0393 GR  |   2 A$float40MS$77     0396 GR
  2 A$float40MS$77     0399 GR  |   2 A$float40MS$77     039B GR
  2 A$float40MS$77     039D GR  |   2 A$float40MS$78     039F GR
  2 A$float40MS$78     03A2 GR  |   2 A$float40MS$78     03A5 GR
  2 A$float40MS$78     03A8 GR  |   2 A$float40MS$78     03AB GR
  2 A$float40MS$78     03AE GR  |   2 A$float40MS$78     03B1 GR
  2 A$float40MS$79     03B4 GR  |   2 A$float40MS$79     03B7 GR
  2 A$float40MS$79     03BA GR  |   2 A$float40MS$79     03BD GR
  2 A$float40MS$79     03C0 GR  |   2 A$float40MS$79     03C3 GR
  2 A$float40MS$79     03C5 GR  |   2 A$float40MS$79     03C7 GR
  2 A$float40MS$80     03C9 GR  |   2 A$float40MS$80     03CA GR
  2 A$float40MS$80     03CB GR  |   2 A$float40MS$80     03CC GR
  2 A$float40MS$80     03CF GR  |   2 A$float40MS$80     03D1 GR
  2 A$float40MS$81     03D4 GR  |   2 A$float40MS$81     03D6 GR
  2 A$float40MS$81     03D9 GR  |   2 A$float40MS$81     03DC GR
  2 A$float40MS$81     03DF GR  |   2 A$float40MS$81     03E2 GR
  2 A$float40MS$81     03E5 GR  |   2 A$float40MS$82     03E6 GR
  2 A$float40MS$82     03E8 GR  |   2 A$float40MS$82     03EA GR
  2 A$float40MS$82     03ED GR  |   2 A$float40MS$82     03EF GR
  2 A$float40MS$83     03F2 GR  |   2 A$float40MS$83     03F5 GR
  2 A$float40MS$83     03F7 GR  |   2 A$float40MS$83     03F9 GR
  2 A$float40MS$83     03FC GR  |   2 A$float40MS$83     03FF GR
  2 A$float40MS$83     0401 GR  |   2 A$float40MS$83     0404 GR
  2 A$float40MS$84     0406 GR  |   2 A$float40MS$84     0409 GR
  2 A$float40MS$84     040C GR  |   2 A$float40MS$84     040E GR
  2 A$float40MS$85     0000 GR  |   2 A$float40MS$85     0411 GR
  2 A$float40MS$85     0413 GR  |   2 A$float40MS$85     0416 GR
  2 A$float40MS$85     0418 GR  |   2 A$float40MS$85     041B GR
  2 A$float40MS$85     041D GR  |   2 A$float40MS$85     0420 GR
  2 A$float40MS$85     0422 GR  |   2 A$float40MS$86     0003 GR
  2 A$float40MS$86     0423 GR  |   2 A$float40MS$86     0426 GR
  2 A$float40MS$86     0429 GR  |   2 A$float40MS$86     042C GR
  2 A$float40MS$86     042F GR  |   2 A$float40MS$86     0432 GR
  2 A$float40MS$87     0435 GR  |   2 A$float40MS$87     0438 GR
  2 A$float40MS$87     043B GR  |   2 A$float40MS$87     043E GR
  2 A$float40MS$87     0441 GR  |   2 A$float40MS$88     0442 GR
  2 A$float40MS$88     0445 GR  |   2 A$float40MS$88     0448 GR
  2 A$float40MS$88     044B GR  |   2 A$float40MS$88     044E GR
  2 A$float40MS$88     0451 GR  |   2 A$float40MS$88     0454 GR
  2 A$float40MS$88     0455 GR  |   2 A$float40MS$89     0456 GR
  2 A$float40MS$89     0459 GR  |   2 A$float40MS$89     045B GR
  2 A$float40MS$89     045E GR  |   2 A$float40MS$89     045F GR
  2 A$float40MS$89     0461 GR  |   2 A$float40MS$90     0463 GR
  2 A$float40MS$90     0464 GR  |   2 A$float40MS$90     0465 GR
  2 A$float40MS$90     0467 GR  |   2 A$float40MS$91     046A GR
  2 A$float40MS$91     046D GR  |   2 A$float40MS$91     046F GR
  2 A$float40MS$91     0472 GR  |   2 A$float40MS$91     0474 GR
  2 A$float40MS$91     0477 GR  |   2 A$float40MS$91     047A GR
  2 A$float40MS$91     047D GR  |   2 A$float40MS$92     0480 GR
  2 A$float40MS$92     0483 GR  |   2 A$float40MS$92     0486 GR
  2 A$float40MS$92     0489 GR  |   2 A$float40MS$93     048A GR
  2 A$float40MS$93     048C GR  |   2 A$float40MS$93     048E GR
  2 A$float40MS$93     0490 GR  |   2 A$float40MS$93     0493 GR
  2 A$float40MS$94     0495 GR  |   2 A$float40MS$94     0498 GR
  2 A$float40MS$94     049A GR  |   2 A$float40MS$94     049C GR
  2 A$float40MS$94     049E GR  |   2 A$float40MS$94     04A0 GR
  2 A$float40MS$94     04A3 GR  |   2 A$float40MS$94     04A5 GR
  2 A$float40MS$94     04A7 GR  |   2 A$float40MS$95     04AA GR
  2 A$float40MS$95     04AC GR  |   2 A$float40MS$95     04AE GR
  2 A$float40MS$95     04B1 GR  |   2 A$float40MS$95     04B3 GR
  2 A$float40MS$95     04B5 GR  |   2 A$float40MS$95     04B8 GR
  2 A$float40MS$95     04BA GR  |   2 A$float40MS$95     04BC GR
  2 A$float40MS$96     04BD GR  |   2 A$float40MS$96     04BE GR
  2 A$float40MS$96     04C1 GR  |   2 A$float40MS$96     04C3 GR
  2 A$float40MS$96     04C6 GR  |   2 A$float40MS$97     04C8 GR
  2 A$float40MS$97     04CA GR  |   2 A$float40MS$97     04CD GR
  2 A$float40MS$97     04CF GR  |   2 A$float40MS$97     04D2 GR
  2 A$float40MS$97     04D5 GR  |   2 A$float40MS$98     04D8 GR
  2 A$float40MS$98     04DA GR  |   2 A$float40MS$98     04DC GR
  2 A$float40MS$98     04DF GR  |   2 A$float40MS$98     04E2 GR
  2 A$float40MS$98     04E3 GR  |   2 A$float40MS$98     04E6 GR
  2 A$float40MS$98     04E9 GR  |   2 A$float40MS$99     04EA GR
  2 A$float40MS$99     04ED GR  |   2 ABS                0486 GR
  2 BROMHK             00AC GR  |   2 DToF0              006C GR
  2 ERROR_HANDLER      0000 GR  |   2 F0ToD              008D GR
  2 F0ToPacked         00BE GR  |   2 F0toF1             0442 GR
  2 F0toXPacked        00C1 GR  |   2 F0toa              05F2 GR
  2 F1toF0             0423 GR  |   2 GETCCH             00AA GR
  2 GETNCH             00AA GR  |   2 INT                04F0 R
  2 INTCNV             008D R   |   2 L87EB              0720 GR
  2 L8800              0739 GR  |   2 L880A              0743 GR
  2 L880C              0746 GR  |   2 L880E              0748 GR
  2 L881F              075C GR  |   2 L882E              076C GR
  2 L8834              0772 GR  |   2 L8845              0783 GR
  2 LAA24              00B0 GR  |   2 LAA28              00B4 GR
  2 LB3A2              00B5 GR  |   2 LB3AA              00BD GR
  2 LB3DF              0088 R   |   2 LB3FE              009E R
  2 LB44A              00A5 R   |   2 LB9B4              00DD GR
  2 LB9B9              00EA GR  |   2 LB9BC              00ED GR
  2 LB9C2              00FD GR  |   2 LB9C5              0100 GR
  2 LB9CD              0108 GR  |   2 LB9E2              0123 GR
  2 LB9EC              012D GR  |   2 LB9FB              013D GR
  2 LBA18              0167 GR  |   2 LBA1C              016B GR
  2 LBA1D              016C GR  |   2 LBA39              0192 GR
  2 LBA3A              0193 GR  |   2 LBA3E              0199 GR
  2 LBA3F              019A GR  |   2 LBA44              01A0 GR
  2 LBA4F              01B0 GR  |   2 LBA5C              01BF GR
  2 LBA66              01CB GR  |   2 LBA72              01DC GR
  2 LBA78              01E2 GR  |   2 LBA79              01E3 GR
  2 LBA7B              01E6 GR  |   2 LBA83              01F2 GR
  2 LBA91              0204 GR  |   2 LBA92              0205 GR
  2 LBA97              020A GR  |   2 LBA9A              020D GR
  2 LBAAE              0223 GR  |   2 LBAB8              022E GR
  2 LBABA              0230 GR  |   2 LBAC4              023A GR
  2 LBAC5              023B GR  |   2 LBACA              0245 GR
  2 LBACC              0248 GR  |   2 LBAD0              024F GR
  2 LBB00              028F GR  |   2 LBB02              0293 GR
  2 LBB03              0294 GR  |   2 LBB20              02BD GR
  2 LBB2E              02D0 GR  |   2 LBB2F              02D1 GR
  2 LBB48              02F2 GR  |   2 LBB5C              030A GR
  2 LBB61              0310 GR  |   2 LBB63              0312 GR
  2 LBB67              0316 GR  |   2 LBB6A              0319 GR
  2 LBB7C              032D GR  |   2 LBB7D              032E GR
  2 LBB82              0333 GR  |   2 LBB89              033A GR
  2 LBB91              0340 GR  |   2 LBBA4              0358 GR
  2 LBBBD              0379 GR  |   2 LBBCC              0389 GR
  2 LBBD0              038D GR  |   2 LBBDE              039F GR
  2 LBBF8              03C5 GR  |   2 LBBFC              03C9 GR
  2 LBC06              03D4 GR  |   2 LBC0B              03D9 GR
  2 LBC14              03E6 GR  |   2 LBC2A              0401 GR
  2 LBC2F              0406 GR  |   2 LBC35              0409 GR
  2 LBC4A              0423 GR  |   2 LBC4C              0426 GR
  2 LBC5F              0442 GR  |   2 LBC6D              0456 GR
  2 LBC71              045B GR  |   2 LBC73              045E GR
  2 LBC79              0464 GR  |   2 LBC7C              0467 GR
  2 LBC82              046F GR  |   2 LBC86              0474 GR
  2 LBC96              048A GR  |   2 LBCA0              0495 GR
  2 LBCC3              04BD GR  |   2 LBCC8              04C3 GR
  2 LBCD7              04D5 GR  |   2 LBCE4              04E3 GR
  2 LBD09              0512 GR  |   2 LBD11              051E GR
  2 LBD12              051F GR  |   2 LBD25              053C GR
  2 LBD2D              0545 GR  |   2 LBD31              0549 GR
  2 LBD35              054E GR  |   2 LBD53              056D GR
  2 LBD55              0570 GR  |   2 LBD59              0575 GR
  2 LBD61              057F GR  |   2 LBD65              0584 GR
  2 LBD6F              0591 GR  |   2 LBD78              059B GR
  2 LBD7F              05A3 GR  |   2 LBD86              05AD GR
  2 LBD99              05C3 GR  |   2 LBDA5              05CF GR
  2 LBDB6              05E3 GR  |   2 LBDBB              05E8 GR
  2 LBDC0              05ED GR  |   2 LBDDC              05F2 GR
  2 LBDE4              05FB GR  |   2 LBDFF              0619 GR
  2 LBE01              061C GR  |   2 LBE09              0624 GR
  2 LBE18              0634 GR  |   2 LBE1F              063C GR
  2 LBE36              0654 GR  |   2 LBE4B              066C GR
  2 LBE50              0671 GR  |   2 LBE72              069B GR
  2 LBE84              06AE GR  |   2 LBE8C              06B6 GR
  2 LBE98              06C2 GR  |   2 LBEA3              06CE GR
  2 LBEAB              06D6 GR  |   2 LBEB8              06E3 GR
  2 LBEBA              06E5 GR  |   2 LBEBC              06E7 GR
  2 LBEC0              06E8 GR  |   2 LBEC5              06ED GR
  2 LBEC9              06F1 GR  |   2 LBECD              06F5 GR
  2 LBED1              06F9 GR  |   2 LBED5              06FD GR
  2 LBED9              0701 GR  |   2 LBEDD              0705 GR
  2 LBEE1              0709 GR  |   2 LBEE5              070D GR
  2 LBEE9              0711 GR  |   2 LBEEF              0719 GR
  2 RTS0               00B4 GR  |   2 SGN                0465 GR
    SKP2           =   008C     |     SPACE          =   0020 
  2 SYNTAX_ERROR       0000 GR  |   2 XVEC19             071A GR
    _CHARAC            **** GX  |     _COEFCT            **** GX
    _COEFPT            **** GX  |     _FP0EXP            **** GX
    _FP0SGN            **** GX  |     _FP1EXP            **** GX
    _FP1SGN            **** GX  |     _FPA0              **** GX
    _FPA1              **** GX  |     _FPA2              **** GX
    _FPCARY            **** GX  |     _FPSBYT            **** GX
    _RESSGN            **** GX  |     _TMPLOC            **** GX
    _V40               **** GX  |     _V45               **** GX
    _V46               **** GX  |     _V47               **** GX
    _V48               **** GX  |     _VAB               **** GX
    _VAC               **** GX  |     _VAD               **** GX
    _VAE               **** GX  |   2 _addF              0030 GR
  2 _addIF             003D GR  |   2 _fToStr            0008 GR
  2 _fToStr2           0010 GR  |     _floatError        **** GX
  2 _initFP            0004 GR  |   2 _intF              005A GR
  2 _mulF              0023 GR  |   2 _mulIF             0015 GR
  2 _subF              004B GR  |   2 _toInt             0064 GR
  2 _toInt2            04F0 GR  |   2 addF0To            00FD GR
  2 addF0toF1          00F5 GR  |   2 atoF0              051F GR
  2 divF1byF0          0340 GR  |   2 mulF0F1            0240 GR
  2 mulF0x             0245 GR  |   2 negative           00D0 GR
  2 packedToF0         03E6 GR  |   2 packedToF1         02D1 GR
  2 subF0From          00EA GR  |   2 subF0FromF1        00E2 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  784   flags  100
   3 .bss             size    0   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

