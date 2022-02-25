                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	float40.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
                             10 ; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
                             11 ; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
                             13 ; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
                             14 ; C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c
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
                             39 	.area	.text
   14D3                      40 LC0:
   14D3 46 4C 4F 41 54 20    41 	.ascii	"FLOAT ERROR: %\0"
        45 52 52 4F 52 3A
        20 25 00
                             42 	.globl	_floatError
   14E2                      43 _floatError:
                             44 ;----- asm -----
                             45 ; 14 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             46 	; #ENR#[13]clearmessage();
                             47 ;--- end asm ---
   14E2 7F C9 C2      [ 7]   48 	clr	_msgLine	; msgLine
                             49 ;----- asm -----
                             50 ; 16 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             51 	; #ENR#[14]_fi_s(, (unsigned int)errno);
                             52 ;--- end asm ---
   14E5 8E 14 D3      [ 3]   53 	ldx	#LC0	;,
   14E8 BD 3E 73      [ 8]   54 	jsr	__fi_s
                             55 ;----- asm -----
                             56 ; 18 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             57 	; #ENR#[15]printmessage(stringbuffer40);
                             58 ;--- end asm ---
   14EB 8E C8 BF      [ 3]   59 	ldx	#_stringBuffer40	;,
   14EE BD 3D 27      [ 8]   60 	jsr	_printMessage
                             61 ;----- asm -----
                             62 ; 20 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             63 	; #ENR#[16]while (1)
                             64 ;--- end asm ---
   14F1                      65 L2:
                             66 ;----- asm -----
                             67 ; 23 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             68 	; #ENR#[18]wait_recal();
                             69 ;--- end asm ---
   14F1 BD F1 92      [ 8]   70 	jsr	___Wait_Recal
                             71 ;----- asm -----
                             72 ; 25 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             73 	; #ENR#[19]dp_via_t1_cnt_lo  = 0x7f;
                             74 ;--- end asm ---
   14F4 C6 7F         [ 2]   75 	ldb	#127	;,
   14F6 D7 04         [ 4]   76 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                             77 ;----- asm -----
                             78 ; 27 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             79 	; #ENR#[20]intensity_7f();
                             80 ;--- end asm ---
   14F8 BD F2 A9      [ 8]   81 	jsr	___Intensity_7F
                             82 ;----- asm -----
                             83 ; 29 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
                             84 	; #ENR#[21]displaymessages();
                             85 ;--- end asm ---
   14FB 5F            [ 2]   86 	clrb	;
   14FC BD 00 83      [ 8]   87 	jsr	_subBank1
   14FF 20 F0         [ 3]   88 	bra	L2	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$float40$48       000F GR  |   2 A$float40$53       0012 GR
  2 A$float40$54       0015 GR  |   2 A$float40$59       0018 GR
  2 A$float40$60       001B GR  |   2 A$float40$70       001E GR
  2 A$float40$75       0021 GR  |   2 A$float40$76       0023 GR
  2 A$float40$81       0025 GR  |   2 A$float40$86       0028 GR
  2 A$float40$87       0029 GR  |   2 A$float40$88       002C GR
  2 L2                 001E R   |   2 LC0                0000 R
    ___Intensity_7     **** GX  |     ___Wait_Recal      **** GX
    __fi_s             **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _floatError        000F GR  |     _msgLine           **** GX
    _printMessage      **** GX  |     _stringBuffer4     **** GX
    _subBank1          **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   2E   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

