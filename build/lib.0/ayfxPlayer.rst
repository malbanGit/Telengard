                              1  .module ayfxplayer.s
                              2 
                              3  .area .text
                              4 
                              5 ; this file is part of Release, written by Malban in 2017
                              6 ;
                              7 ; original vectrex routine were written by Richard Chadd
                              8 ;
                              9 ; (optimized version!)
                             10 ; regs used by below implementation
                             11 ; U and D
                             12 ; X is also used, but can be spared - see below comments
                             13 ; this is only channel 1 is implemented
                             14 ;;;;;;;;;;;;;;;;
                             15 ;;;;;;;;;;;;;;;;
                             16 
                             17 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             18 
                             19  .globl sfx_endofeffect_1
   1464                      20 sfx_endofeffect_1:
                             21                                                           ; set volume off channel 3
                             22                                                           ; set reg1sf0
                             23                                                           ; Set volume
   1464 CC 00 00      [ 3]   24                     LDD      #0x0000                       ; reset sfx
   1467 B7 C8 43      [ 5]   25                     sta      0xC843;SHADOW_BASE-0x08
   146A FD CA BB      [ 6]   26                     STD      _sfx_pointer_1
   146D B7 CA BA      [ 5]   27                     STA      _sfx_status_1
   1470 FD CA BD      [ 6]   28                     std      _currentSFX_1
                             29  .globl noay1
   1473                      30 noay1:
   1473 39            [ 5]   31                     RTS
                             32 
                             33  .globl sfx_doframe_intern_1
   1474                      34 sfx_doframe_intern_1:                                     ;#isfunction
   1474 B6 CA BA      [ 5]   35                     LDA      _sfx_status_1                 ; check if sfx to play
   1477 27 FA         [ 3]   36                     BEQ      noay1
   1479 FE CA BB      [ 6]   37                     LDU      _sfx_pointer_1                ; get current frame pointer
   147C E6 C0         [ 6]   38                     LDB      ,U+
   147E C1 D0         [ 2]   39                     CMPB     #0xD0                         ; check first flag byte D0
   1480 26 06         [ 3]   40                     BNE      sfx_checktonefreq_1          ; no match - continue to process frame
   1482 A6 C4         [ 4]   41                     LDA      ,U
   1484 81 20         [ 2]   42                     CMPA     #0x20                         ; check second flag byte 20
   1486 27 DC         [ 3]   43                     BEQ      sfx_endofeffect_1            ; match - end of effect found so stop playing
                             44  .globl sfx_checktonefreq_1
   1488                      45 sfx_checktonefreq_1:
   1488 C5 20         [ 2]   46                     BITB     #0b00100000                   ; if bit 5 of B is set
   148A 27 09         [ 3]   47                     BEQ      sfx_checknoisefreq_1         ; skip as no tone freq data
   148C EC C1         [ 8]   48                     ldd      ,u++ ; alternative to destroying d load any 2 byte reg,
   148E 1E 89         [ 8]   49  exg a,b
   1490 FD C8 4B      [ 6]   50                     std      0xC84b ;SHADOW_BASE-00 ; here I destroy d
   1493 E6 5D         [ 5]   51                     ldb      -3,u ; and load b anew - one instruction to many,
                             52  .globl sfx_checknoisefreq_1
   1495                      53 sfx_checknoisefreq_1:
   1495 C5 40         [ 2]   54                     BITB     #0b01000000                   ; if bit 6 of B is only set
   1497 27 05         [ 3]   55                     BEQ      sfx_checkvolume_1            ; skip as no noise freq data
   1499 A6 C0         [ 6]   56                     LDA      ,U+                          ; get next data byte and copy to noise freq reg
   149B B7 C8 46      [ 5]   57                     STA      0xC846 ;SHADOW_BASE-06               ; set noise freq
                             58  .globl sfx_checkvolume_1
   149E                      59 sfx_checkvolume_1:
   149E 1F 98         [ 6]   60                     tfr      b,a
   14A0 84 0F         [ 2]   61                     ANDA     #0b00001111                   ; get volume from bits 0-3
   14A2 B7 C8 44      [ 5]   62                     STA      0xC844;SHADOW_BASE-0x08              ; set tone freq
                             63  .globl sfx_checktonedisable_1
   14A5                      64 sfx_checktonedisable_1:
   14A5 B6 C8 45      [ 5]   65                     LDA      0xC845;SHADOW_BASE-0x07              ; in the following reg 7 will be altered - load once
   14A8 C5 10         [ 2]   66                     BITB     #0b00010000                   ; if bit 4 of B is set disable the tone
   14AA 27 0F         [ 3]   67                     BEQ      sfx_enabletone_1
                             68  .globl sfx_disabletone_1
   14AC                      69 sfx_disabletone_1:
   14AC 8A 01         [ 2]   70                     ORA      #0b00000001
   14AE C5 80         [ 2]   71                     BITB     #0b10000000                   ; if bit7 of B is set disable noise
   14B0 27 18         [ 3]   72                     BEQ      sfx_enablenoise_1
   14B2 8A 08         [ 2]   73                     ORA      #0b00001000
   14B4 B7 C8 45      [ 5]   74                     STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
   14B7 FF CA BB      [ 6]   75                     STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
   14BA 39            [ 5]   76                     RTS
                             77 
                             78  .globl sfx_enabletone_1
   14BB                      79 sfx_enabletone_1:
   14BB 84 FE         [ 2]   80                     ANDA     #0b11111110
                             81  .globl sfx_checknoisedisable_1
   14BD                      82 sfx_checknoisedisable_1:
   14BD C5 80         [ 2]   83                     BITB     #0b10000000                   ; if bit7 of B is set disable noise
   14BF 27 09         [ 3]   84                     BEQ      sfx_enablenoise_1
                             85  .globl sfx_disablenoise_1
   14C1                      86 sfx_disablenoise_1:
   14C1 8A 08         [ 2]   87                     ORA      #0b00001000
   14C3 B7 C8 45      [ 5]   88                     STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
   14C6 FF CA BB      [ 6]   89                     STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
   14C9 39            [ 5]   90                     RTS
                             91 
                             92  .globl sfx_enablenoise_1
   14CA                      93 sfx_enablenoise_1:
   14CA 84 F7         [ 2]   94                     ANDA     #0b11110111
   14CC B7 C8 45      [ 5]   95                     STA      0xC845;SHADOW_BASE-0x07              ; set tone freq
   14CF FF CA BB      [ 6]   96                     STU      _sfx_pointer_1                ; update frame pointer to next flag byte in Y
   14D2 39            [ 5]   97                     RTS
                             98 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$ayfxPlayer$2     0000 GR  |   2 A$ayfxPlayer$2     0003 GR
  2 A$ayfxPlayer$2     0006 GR  |   2 A$ayfxPlayer$2     0009 GR
  2 A$ayfxPlayer$2     000C GR  |   2 A$ayfxPlayer$3     000F GR
  2 A$ayfxPlayer$3     0010 GR  |   2 A$ayfxPlayer$3     0013 GR
  2 A$ayfxPlayer$3     0015 GR  |   2 A$ayfxPlayer$3     0018 GR
  2 A$ayfxPlayer$3     001A GR  |   2 A$ayfxPlayer$4     001C GR
  2 A$ayfxPlayer$4     001E GR  |   2 A$ayfxPlayer$4     0020 GR
  2 A$ayfxPlayer$4     0022 GR  |   2 A$ayfxPlayer$4     0024 GR
  2 A$ayfxPlayer$4     0026 GR  |   2 A$ayfxPlayer$4     0028 GR
  2 A$ayfxPlayer$4     002A GR  |   2 A$ayfxPlayer$5     002C GR
  2 A$ayfxPlayer$5     002F GR  |   2 A$ayfxPlayer$5     0031 GR
  2 A$ayfxPlayer$5     0033 GR  |   2 A$ayfxPlayer$5     0035 GR
  2 A$ayfxPlayer$5     0037 GR  |   2 A$ayfxPlayer$6     003A GR
  2 A$ayfxPlayer$6     003C GR  |   2 A$ayfxPlayer$6     003E GR
  2 A$ayfxPlayer$6     0041 GR  |   2 A$ayfxPlayer$6     0044 GR
  2 A$ayfxPlayer$6     0046 GR  |   2 A$ayfxPlayer$7     0048 GR
  2 A$ayfxPlayer$7     004A GR  |   2 A$ayfxPlayer$7     004C GR
  2 A$ayfxPlayer$7     004E GR  |   2 A$ayfxPlayer$7     0050 GR
  2 A$ayfxPlayer$7     0053 GR  |   2 A$ayfxPlayer$7     0056 GR
  2 A$ayfxPlayer$8     0057 GR  |   2 A$ayfxPlayer$8     0059 GR
  2 A$ayfxPlayer$8     005B GR  |   2 A$ayfxPlayer$8     005D GR
  2 A$ayfxPlayer$8     005F GR  |   2 A$ayfxPlayer$8     0062 GR
  2 A$ayfxPlayer$9     0065 GR  |   2 A$ayfxPlayer$9     0066 GR
  2 A$ayfxPlayer$9     0068 GR  |   2 A$ayfxPlayer$9     006B GR
  2 A$ayfxPlayer$9     006E GR  |     _currentSFX_1      **** GX
    _sfx_pointer_1     **** GX  |     _sfx_status_1      **** GX
  2 noay1              000F GR  |   2 sfx_checknoise     0059 GR
  2 sfx_checknoise     0031 GR  |   2 sfx_checktoned     0041 GR
  2 sfx_checktonef     0024 GR  |   2 sfx_checkvolum     003A GR
  2 sfx_disablenoi     005D GR  |   2 sfx_disableton     0048 GR
  2 sfx_doframe_in     0010 GR  |   2 sfx_enablenois     0066 GR
  2 sfx_enabletone     0057 GR  |   2 sfx_endofeffec     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   6F   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

