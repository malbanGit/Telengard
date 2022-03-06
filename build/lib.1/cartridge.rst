                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	cartridge.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
                             10 ; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
                             11 ; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
                             13 ; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
                             14 ; C:\Dev\Vide\projects\Telengard\source\bank1\cartridge.enr.c
                             15 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             16 ; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             17 ; -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             18 ; -fdelete-null-pointer-checks -fearly-inlining
                             19 ; -feliminate-unused-debug-types -fexpensive-optimizations
                             20 ; -fforward-propagate -ffunction-cse -fgcse-after-reload -fgcse-lm
                             21 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             22 ; -finline-functions -finline-functions-called-once
                             23 ; -finline-small-functions -fipa-pure-const -fivopts -fkeep-static-consts
                             24 ; -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
                             25 ; -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
                             26 ; -foptimize-sibling-calls -fpcc-struct-return -fpeephole -fpeephole2
                             27 ; -fpredictive-commoning -fregmove -freorder-blocks -freorder-functions
                             28 ; -frerun-cse-after-loop -fsched-interblock -fsched-spec
                             29 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             30 ; -fsplit-wide-types -fstrict-aliasing -fstrict-overflow -fthread-jumps
                             31 ; -ftrapping-math -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
                             32 ; -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             33 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             34 ; -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
                             35 ; -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
                             36 ; -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
                             37 ; -fverbose-asm -fzero-initialized-in-bss
                             38 ; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
                             39 	.globl	_game_header
                             40 	.area	.cartridge
   0000                      41 _game_header:
                             42 ; copyright:
   0000 67 20 47 43 45 20    43 	.byte	103,32,71,67,69,32,49,57
        31 39
   0008 38 32 80             44 	.byte	56,50,-128
                             45 ; music:
   000B FD 0D                46 	.word	_Vec_Music_1
                             47 ; title_height:
   000D F8                   48 	.byte	-8
                             49 ; title_width:
   000E 50                   50 	.byte	80
                             51 ; title_y:
   000F F0                   52 	.byte	-16
                             53 ; title_x:
   0010 B8                   54 	.byte	-72
                             55 ; title:
   0011 54 45 4C 45 4E 47    56 	.byte	84,69,76,69,78,71,65,82
        41 52
   0019 44 80 00             57 	.byte	68,-128,0
                             58 ;----- asm -----
                             59 	.area .bootloader
   0057 7E 00 98      [ 4]   60  jmp _endOfHeading
                             61 	.area .bankswitch.code
                             62 .setdp 0xd000,_DATA
                             63 .globl _subBank0
   006E                      64 _subBank0:
   006E 86 DF         [ 2]   65  lda      #0xDF                          ; Prepare DDR Registers % 1101 1111 1111 1111
   0070 97 02         [ 4]   66  sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
   0072 86 01         [ 2]   67  lda      #0x01                          ; A = 0x01, B = 0
   0074 97 00         [ 4]   68  sta      *_VIA_port_b                    ; ORB = 0x1 (ramp on, mux off), ORA = 0 (DAC)
   0076 8E 00 5A      [ 3]   69  ldx      #_bankFunctions
   0079 58            [ 2]   70  lslb
   007A AE 85         [ 6]   71  ldx b,x
   007C AD 84         [ 7]   72  jsr      ,x
   007E 86 9F         [ 2]   73  lda      #0x9F                           ; Prepare DDR Registers % 1001 1111 1111 1111
   0080 97 02         [ 4]   74  sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
   0082 39            [ 5]   75  rts
                             76 .globl _subBank1
   0083                      77 _subBank1:
   0083 86 9F         [ 2]   78  lda      #0x9F                           ; Prepare DDR Registers % 1001 1111 1111 1111
   0085 97 02         [ 4]   79  sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
   0087 8E 00 5A      [ 3]   80  ldx      #_bankFunctions
   008A 58            [ 2]   81  lslb
   008B AE 85         [ 6]   82  ldx b,x
   008D AD 84         [ 7]   83  jsr      ,x
   008F 86 DF         [ 2]   84  lda      #0xDF                          ; Prepare DDR Registers % 1101 1111 1111 1111
   0091 97 02         [ 4]   85  sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
   0093 86 01         [ 2]   86  lda      #0x01                          ; A = 0x01, B = 0
   0095 97 00         [ 4]   87  sta      *_VIA_port_b                    ; ORB = 0x1 (ramp on, mux off), ORA = 0 (DAC)
   0097 39            [ 5]   88  rts
   0098                      89 _endOfHeading:
                             90 ;--- end asm ---
                             91 	.globl	_bankFunctions
                             92 	.area	.bankswitch.data
   005A                      93 _bankFunctions:
   005A 71 CB                94 	.word	_displayMessages
   005C 3D AC                95 	.word	_displayRound
   005E 68 36                96 	.word	_setRandSeedNP
   0060 00 01                97 	.word	1
   0062 00 01                98 	.word	1
   0064 00 01                99 	.word	1
   0066 00 01               100 	.word	1
   0068 00 01               101 	.word	1
   006A 00 01               102 	.word	1
   006C 00 01               103 	.word	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$cartridge$60     0000 GR  |   4 A$cartridge$62     0000 GR
  4 A$cartridge$65     0000 GR  |   4 A$cartridge$66     0002 GR
  4 A$cartridge$67     0004 GR  |   4 A$cartridge$68     0006 GR
  4 A$cartridge$69     0008 GR  |   4 A$cartridge$70     000B GR
  4 A$cartridge$71     000C GR  |   4 A$cartridge$72     000E GR
  4 A$cartridge$73     0010 GR  |   4 A$cartridge$74     0012 GR
  4 A$cartridge$75     0014 GR  |   4 A$cartridge$78     0015 GR
  4 A$cartridge$79     0017 GR  |   4 A$cartridge$80     0019 GR
  4 A$cartridge$81     001C GR  |   4 A$cartridge$82     001D GR
  4 A$cartridge$83     001F GR  |   4 A$cartridge$84     0021 GR
  4 A$cartridge$85     0023 GR  |   4 A$cartridge$86     0025 GR
  4 A$cartridge$87     0027 GR  |   4 A$cartridge$88     0029 GR
    _VIA_DDR_b         **** GX  |     _VIA_port_b        **** GX
    _Vec_Music_1       **** GX  |   5 _bankFunctions     0000 GR
    _displayMessag     **** GX  |     _displayRound      **** GX
  4 _endOfHeading      002A R   |   2 _game_header       0000 GR
    _setRandSeedNP     **** GX  |   4 _subBank0          0000 GR
  4 _subBank1          0015 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .cartridge       size   1C   flags  100
   3 .bootloader      size    3   flags  100
   4 .bankswitch.co   size   2A   flags  100
   5 .bankswitch.da   size   14   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

