;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -Os
	.module	mainSupport.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -Os
; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
; -IC:\Dev\Vide\projects\Telengard\include
; C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c
; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
; -fcrossjumping -fcse-follow-jumps -fdefer-pop
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations
; -fforward-propagate -ffunction-cse -fgcse-lm -fguess-branch-probability
; -fident -fif-conversion -fif-conversion2 -finline-functions
; -finline-functions-called-once -finline-small-functions -fipa-pure-const
; -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
; -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
; -fpcc-struct-return -fpeephole -fpeephole2 -fregmove -freorder-functions
; -frerun-cse-after-loop -fsched-interblock -fsched-spec
; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
; -fsplit-wide-types -fstrict-aliasing -fstrict-overflow -fthread-jumps
; -ftrapping-math -ftree-ccp -ftree-copy-prop -ftree-copyrename -ftree-dce
; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
; -ftree-store-ccp -ftree-ter -ftree-vect-loop-version -ftree-vrp
; -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
	.area	.text
LC0:
	.byte	32,32,83,84,65,84,83,32
	.byte	62,62,-128,0
LC1:
	.ascii	"%: %\0"
LC2:
	.ascii	"HP: %/%\0"
LC3:
	.byte	60,60,32,69,78,86,32,32
	.byte	62,62,-128,0
LC4:
	.ascii	"DUNGEON: %\0"
LC5:
	.ascii	"         X=% Y=%\0"
LC6:
	.ascii	"ROOM: %\0"
LC7:
	.ascii	"ENCOUNTER: % LEVEL %\0"
LC8:
	.ascii	"ENCOUNTER: % \0"
LC9:
	.ascii	"NONE\0"
LC10:
	.byte	60,60,32,86,65,82,83,32
	.byte	62,62,-128,0
LC11:
	.ascii	"LV: %\0"
LC12:
	.ascii	"SU: %/%\0"
LC13:
	.ascii	"XP: %\0"
LC14:
	.ascii	"GD: %\0"
LC15:
	.ascii	"TG: %\0"
LC16:
	.byte	60,60,32,77,79,68,83,32
	.byte	62,62,-128,0
LC17:
	.ascii	"% +%\0"
LC18:
	.byte	60,60,32,73,84,69,77,83
	.byte	-128,0
LC19:
	.ascii	"% :%\0"
LC20:
	.byte	45,45,62,-128,0
LC21:
	.ascii	"YOU DON'T HAVE ONE!!\0"
LC22:
	.ascii	"YOU USED %\0"
LC23:
	.ascii	"***ZAP!!***\0"
LC24:
	.ascii	"YOU FEEL BETTER!\0"
LC25:
	.ascii	"STRENGTH FLOWS THROUGH YOUR BODY\0"
	.globl	_displayStatusPage
_displayStatusPage:
	pshs	y,u	;
	leas	-9,s	;,,
;----- asm -----
; 41 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[40]unsigned int page = 0;
; 43 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[41]int itemselect = 0;
; 45 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[42]int lastdir = 0;
; 47 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[43]int lastdiry = 0;
; 49 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[44]int ret = 0;
; 53 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[47]do
;--- end asm ---
L3:
;----- asm -----
; 56 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[49]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 58 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[50]if (!buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	beq	L2	;
;----- asm -----
; 60 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[51]} while (1);
;--- end asm ---
	bra	L3	;
L2:
;----- asm -----
; 63 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[53]do
;--- end asm ---
	clr	2,s	; page
	clr	3,s	; itemSelect
	clr	4,s	; lastDir
	clr	5,s	; lastDirY
L27:
;----- asm -----
; 66 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[55]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 68 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[56]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 70 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[57]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 72 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[58]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 74 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[59]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 77 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[61]if ((vec_joy_1_x > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	8,s	;, lastDir.183
	ble	L4	;
	tst	4,s	; lastDir
	bne	L4	;
	ldb	2,s	;, page
	cmpb	#3	;cmpqi:	;,
	bhi	L4	;
	incb	;
	stb	2,s	;, page
L4:
;----- asm -----
; 80 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[63]if ((vec_joy_1_x < 0) && (!lastdir))
;--- end asm ---
	tst	8,s	; lastDir.183
	bge	L5	;
	tst	4,s	; lastDir
	bne	L5	;
	tst	2,s	; page
	beq	L5	;
	dec	2,s	; page
L5:
;----- asm -----
; 83 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[65]lastdir = vec_joy_1_x;
; 85 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[66]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 88 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[68]int y=0x78;
; 90 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[69]if (page == 0)
;--- end asm ---
	tst	2,s	; page
	lbne	L6	;
;----- asm -----
; 93 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[71]print_str_d(y,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC0	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 95 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[72]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 97 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[73]y = 0x50;
; 99 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[74]for (int i=0; i<6;i++)
;--- end asm ---
	ldy	#0	; ivtmp.147,
	leas	1,s	;,,
L7:
;----- asm -----
; 102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[76]_fsi_s( , stats[i], s[i]);
;--- end asm ---
	tfr	y,d	; ivtmp.147,
	aslb	;
	rola	;
	tfr	d,x	;, tmp160
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldb	_s,y	;, s
	ldx	#LC1	;,
	jsr	__fsi_s
;----- asm -----
; 104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[77]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	tfr	y,d	; ivtmp.147,
	lda	#-10	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp163
; ORG>	tfr	d,x	;, tmp163
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp163, tmp165
	addb	#80	; tmp165,
	pshs	b	; tmp165
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 106 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[78]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 108 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[79]y -= 10;
;--- end asm ---
	leay	1,y	; ivtmp.147,, ivtmp.147
	leas	3,s	;,,
	cmpy	#6	;cmphi:	; ivtmp.147,
	bne	L7	;
;----- asm -----
; 112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[82]y -= 10;
; 114 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[83]_fl_l_s( , (unsigned long int)ch, (unsigned long int)hp);
;--- end asm ---
	ldx	_hp	;, hp
	stx	,--s	;,
	ldd	_ch	;, ch
	std	,--s	;,
	ldx	#LC2	;,
	jsr	__fl_l_s
;----- asm -----
; 116 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[84]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#10	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[85]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	5,s	;,,
	lbra	L8	;
L6:
	ldb	2,s	;, page
	cmpb	#1	;cmpqi:	;,
	lbne	L9	;
;----- asm -----
; 124 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[90]print_str_d(y,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC3	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[91]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 128 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[92]y = 0x50;
; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[93]_fi_s( , cz);
;--- end asm ---
	ldb	_cz	;, cz
	ldx	#LC4	;,
	jsr	__fi_s
;----- asm -----
; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[94]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[95]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[97]y -= 10;
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[98]_fii(  , cx,cy);
;--- end asm ---
	ldb	_cy	;, cy
	stb	,-s	;,
	ldb	_cx	;, cx
	ldx	#LC5	;,
	jsr	__fii
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[99]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#70	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[100]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 146 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[102]extern const char *const environment_string[];
; 148 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[103]y -= 10;
; 150 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[104]_fs( , environment_string[printenvironment]);
;--- end asm ---
	ldb	_printEnvironment	;, printEnvironment
	sex		;extendqihi2: R:b -> R:d	;,
	std	4,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp170
	ldx	_environment_string,x	;, environment_string
	stx	,--s	;,
	ldx	#LC6	;,
	jsr	__fs
;----- asm -----
; 152 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[105]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#60	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 154 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[106]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[109]y -= 10;
; 160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[110]if (m>=0)
;--- end asm ---
	ldb	_m	; m.12, m
	leas	7,s	;,,
	tstb	; m.12
	blt	L10	;
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[112]_fsi_s( , mo[m], ml);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; m.12, m.12
	aslb	;
	rola	;
	tfr	d,x	; m.12, tmp175
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldb	_ml	;, ml
	ldx	#LC7	;,
	jsr	__fsi_s
	bra	L32	;
L10:
;----- asm -----
; 168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[116]_fs( , );
;--- end asm ---
	ldx	#LC9	;,
	stx	,--s	;,
	ldx	#LC8	;,
	jsr	__fs
L32:
	leas	2,s	;,,
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[118]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#50	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[119]reset0ref();
;--- end asm ---
	lbra	L34	;
L9:
	ldb	2,s	;, page
	cmpb	#2	;cmpqi:	;,
	lbne	L12	;
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[124]print_str_d(y,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC10	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 181 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[125]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 183 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[126]y = 0x50;
; 186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[128]_fi_s( , lv);
;--- end asm ---
	ldb	_lv	;, lv
	ldx	#LC11	;,
	jsr	__fi_s
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[129]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[130]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[133]y -= 10;
; 196 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[134]_fl_l_s( , cs, su);
;--- end asm ---
	ldx	_su	;, su
	stx	,--s	;,
	ldd	_cs	;, cs
	std	,--s	;,
	ldx	#LC12	;,
	jsr	__fl_l_s
;----- asm -----
; 198 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[135]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#70	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 200 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[136]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[138]y -= 10;
; 205 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[139]_fll_s( , ex);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_ex	;, ex
	stx	,s	;,
	ldd	_ex+2	;, ex
	std	2,s	;,
	ldx	#LC13	;,
	jsr	__fll_s
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[140]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	leas	11,s	;,,
	ldb	#60	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 209 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[141]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[143]y -= 10;
; 214 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[144]_fll_s( , gd);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_gd	;, gd
	stx	,s	;,
	ldd	_gd+2	;, gd
	std	2,s	;,
	ldx	#LC14	;,
	jsr	__fll_s
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[145]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#50	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[146]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[148]y -= 10;
; 223 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[149]_fll_s( , tg);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_tg	;, tg
	stx	,s	;,
	ldd	_tg+2	;, tg
	std	2,s	;,
	ldx	#LC15	;,
	jsr	__fll_s
;----- asm -----
; 225 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[150]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	leas	10,s	;,,
	ldb	#40	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[151]reset0ref();
;--- end asm ---
L34:
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
	lbra	L8	;
L12:
	ldb	2,s	;, page
	cmpb	#3	;cmpqi:	;,
	lbne	L13	;
;----- asm -----
; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[157]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC16	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[158]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 238 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[159]y = 0x50;
; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[160]for (int i=0; i<7;i++)
;--- end asm ---
	ldb	#80	;,
	stb	8,s	;, y
	ldy	#0	; ivtmp.166,
	leas	1,s	;,,
L15:
;----- asm -----
; 243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[162]if (inventory[i]<=0) continue;
;--- end asm ---
	ldx	_inventory,y	; D.3332, inventory
	beq	L14	;
;----- asm -----
; 245 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[163]_fsl_s( , items[i], inventory[i]);
;--- end asm ---
	pshs	x	; D.3332
	ldx	_items,y	;, items
	stx	,--s	;,
	ldx	#LC17	;,
	jsr	__fsl_s
;----- asm -----
; 247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[164]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	11,s	;, y
	pshs	b	;
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 249 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[165]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 251 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[166]y -= 10;
;--- end asm ---
	ldb	12,s	;, y
	addb	#-10	;,
	stb	12,s	;, y
	leas	5,s	;,,
L14:
	leay	2,y	; ivtmp.166,, ivtmp.166
	cmpy	#14	;cmphi:	; ivtmp.166,
	lbne	L15	;
	lbra	L8	;
L13:
	ldb	2,s	;, page
	cmpb	#4	;cmpqi:	;,
	lbne	L8	;
;----- asm -----
; 258 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[172]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC18	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[173]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[174]y = 0x50;
; 265 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[176]for (int i=7; i<10;i++)
;--- end asm ---
	ldy	#0	; ivtmp.179,
	leas	1,s	;,,
L16:
;----- asm -----
; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[178]_fsl_s( , items[i], inventory[i]);
;--- end asm ---
	ldx	_inventory+14,y	;, inventory
	stx	,--s	;,
	ldd	_items+14,y	;, items
	std	,--s	;,
	ldx	#LC19	;,
	jsr	__fsl_s
;----- asm -----
; 270 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[179]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	tfr	y,d	; ivtmp.179,
	lda	#-5	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp194
; ORG>	tfr	d,x	;, tmp194
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp194, tmp196
	addb	#80	; tmp196,
	pshs	b	; tmp196
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 272 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[180]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 274 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[181]y -= 10;
;--- end asm ---
	leay	2,y	; ivtmp.179,, ivtmp.179
	leas	5,s	;,,
	cmpy	#6	;cmphi:	; ivtmp.179,
	bne	L16	;
;----- asm -----
; 278 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[184]if ((vec_joy_1_y > 0) && (!lastdiry))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.22, Vec_Joy_1_Y
	ble	L17	;
	tst	5,s	; lastDirY
	bne	L17	;
	tst	3,s	; itemSelect
	beq	L17	;
	dec	3,s	; itemSelect
L17:
;----- asm -----
; 281 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[186]if ((vec_joy_1_y < 0) && (!lastdiry))
;--- end asm ---
	tstb	; Vec_Joy_1_Y.22
	bge	L18	;
	tst	5,s	; lastDirY
	bne	L18	;
	ldb	3,s	;, itemSelect
	cmpb	#1	;cmpqi:	;,
	bgt	L18	;
	incb	;
	stb	3,s	;, itemSelect
L18:
;----- asm -----
; 285 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[189]print_str_d(0x50-10*itemselect,-0x65, );
;--- end asm ---
	ldb	3,s	;, itemSelect
	lda	#-10	;mulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp197
; ORG>	tfr	d,x	;, tmp197
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp197, tmp199
	addb	#80	; tmp199,
	pshs	b	; tmp199
	ldx	#LC20	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 287 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[190]lastdiry = vec_joy_1_y;
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	6,s	;, lastDirY
;----- asm -----
; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[192]if (buttons_pressed())
;--- end asm ---
	leas	1,s	;,,
	tst	_Vec_Buttons	; Vec_Buttons
	lbeq	L8	;
;----- asm -----
; 293 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[194]if (inventory[itemselect+7]<=0)
;--- end asm ---
	ldb	3,s	;, itemSelect
	addb	#7	;,
	stb	3,s	;, itemSelect
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	ldb	3,s	;, itemSelect
	addb	#-7	;,
	stb	3,s	;, itemSelect
	ldd	,s	;,
	aslb	;
	rola	;
	tfr	d,u	;, tmp202
	leay	_inventory,u	; tmp203,, tmp202
	ldx	,y	; D.3342, inventory
	bne	L19	;
;----- asm -----
; 298 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[198]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 300 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[199]printmessage();
;--- end asm ---
	ldx	#LC21	;,
	jsr	_printMessage
	clr	6,s	; ret
	lbra	L20	;
L19:
;----- asm -----
; 305 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[203]inventory[itemselect+7]--;
;--- end asm ---
	leax	-1,x	;,, D.3342
	stx	,y	;, inventory
;----- asm -----
; 307 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[204]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 309 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[205]_fs( , items[itemselect+7]);
;--- end asm ---
	ldu	_items,u	;, items
	stu	,--s	;,
	ldx	#LC22	;,
	jsr	__fs
;----- asm -----
; 311 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[206]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 313 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[207]if (itemselect == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	3,s	; itemSelect
	bne	L21	;
;----- asm -----
; 322 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[215]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[216]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[217]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 328 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[218]printmessage();
;--- end asm ---
	ldx	#LC23	;,
	jsr	_printMessage
;----- asm -----
; 330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[219]ret = 1;
; 332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[220]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
	ldb	#1	;,
	stb	6,s	;, ret
	lbra	L22	;
L21:
	ldb	3,s	;, itemSelect
	cmpb	#1	;cmpqi:	;,
	bne	L23	;
;----- asm -----
; 341 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[228]printmessage();
;--- end asm ---
	ldx	#LC24	;,
	jsr	_printMessage
;----- asm -----
; 344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[230]ch = ch +randmax(20)+1;
;--- end asm ---
	ldy	_ch	; ch.185, ch
	ldb	#20	;,
	jsr	_RandMax
	leax	1,y	; tmp213,, ch.185
	clra		;zero_extendqihi: R:b -> R:d	; D.3345, D.3345
	pshs	x	;addhi: R:d += R:x	; tmp213, ch.23
	addd	,s++	; ch.23
	std	_ch	; ch.23, ch
;----- asm -----
; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[231]if (ch>hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.186, hp
	pshs	x	;cmphi: R:x with R:d	; hp.186, ch.23
	cmpd	,s++	;cmphi:	; ch.23
	ble	L33	;
L24:
	stx	_ch	; hp.186, ch
	bra	L33	;
L23:
;----- asm -----
; 355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[239]printmessage();
;--- end asm ---
	ldx	#LC25	;,
	jsr	_printMessage
;----- asm -----
; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[240]sf[strength] = randmax(20)+11;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	#11	; D.3349,
	stb	_sf	; D.3349, sf
L33:
	clr	6,s	; ret
L22:
;----- asm -----
; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[243]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
L20:
;----- asm -----
; 364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[245]break;
;--- end asm ---
	bra	L25	;
L8:
;----- asm -----
; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[248]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L26	;
;----- asm -----
; 370 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[250]while (1);
;--- end asm ---
	ldb	8,s	;, lastDir.183
	stb	4,s	;, lastDir
	lbra	L27	;
L26:
	clr	6,s	; ret
L25:
;----- asm -----
; 373 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[251]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 375 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[252]return ret;
;--- end asm ---
	ldb	6,s	;, ret
	leas	9,s	;,,
	puls	y,u,pc	;
	.globl	_displayRound
_displayRound:
;----- asm -----
; 382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[258]#if do_original_wr == 1
; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[261]wr2();
;--- end asm ---
	jsr	_wr2
;----- asm -----
; 390 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[262]#endif
; 393 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[264]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 395 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[265]joy_digital2();
;--- end asm ---
	jsr	_Joy_Digital2
;----- asm -----
; 397 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[266]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[267]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 402 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[269]if (lightchange>0) intensity_a((unsigned int)lightchange);
;--- end asm ---
	ldb	_lightChange	; lightChange.24, lightChange
	bgt	L40	;
L36:
;----- asm -----
; 406 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[272]if (sf[light]>0)
;--- end asm ---
	ldb	#79	;,
	tst	_sf+2	; sf
	beq	L40	;
	jsr	___Intensity_7F
	bra	L37	;
L40:
	jsr	__Intensity_a
L37:
;----- asm -----
; 412 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[277]drawmap();
;--- end asm ---
	ldb	#3	;,
	jsr	_subBank0
;----- asm -----
; 414 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[278]displaymessages();
;--- end asm ---
	jsr	_displayMessages
	rts
	.globl	_elevator
_elevator:
	leas	-6,s	;,,
;----- asm -----
; 420 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[283]inelevator = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_inElevator	;, inElevator
;----- asm -----
; 422 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[284]elevatory=0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 424 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[285]vec_music_wk_7 = 0x3e;
;--- end asm ---
	ldb	#62	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 426 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[286]vec_xxx_04 = 0xf;
;--- end asm ---
	ldb	#15	;,
	stb	_Vec_XXX_04	;, Vec_XXX_04
;----- asm -----
; 429 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[288]signed long int freq = 5000;
;--- end asm ---
	ldx	#5000	;,
	stx	4,s	;, freq
;----- asm -----
; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[290]while (inelevator)
;--- end asm ---
	bra	L42	;
L43:
;----- asm -----
; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[292]freq = freq-5;
;--- end asm ---
	ldd	4,s	;, freq
	addd	#-5; addhi3,3	;,
	std	,s	;, freq.27
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	stb	3,s	;,
	ldx	,s	;, freq.27
	stx	4,s	;, freq
;----- asm -----
; 437 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[293]vec_xxx_08 = (signed int) (freq&0xff);
;--- end asm ---
	tfr	x,d	;,
	stb	_Vec_XXX_08	;movlsbqihi: R:d -> _Vec_XXX_08	; Vec_XXX_08,
;----- asm -----
; 439 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[294]vec_music_wk_1 = *((signed int*) &freq);
;--- end asm ---
	ldb	3,s	;,
	stb	_Vec_Music_Wk_1	;, Vec_Music_Wk_1
;----- asm -----
; 441 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[295]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 443 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[296]freq+50;
;--- end asm ---
L42:
	tst	_inElevator	; inElevator
	bne	L43	;
;----- asm -----
; 446 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[298]vec_music_wk_7 = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 448 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[299]vec_xxx_04 = 0;
;--- end asm ---
	clr	_Vec_XXX_04	; Vec_XXX_04
	leas	6,s	;,,
	rts
	.globl	_pause
_pause:
	pshs	b	;
;----- asm -----
; 456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[306]while(1)
;--- end asm ---
L48:
;----- asm -----
; 459 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[308]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[309]if (vec_joy_1_x != 0) return;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L49	;
;----- asm -----
; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[310]if (vec_joy_1_y != 0) return;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	bne	L49	;
;----- asm -----
; 465 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[311]if (buttons_pressed() != 0) return;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L49	;
;----- asm -----
; 470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[315]if (t == 0)
;--- end asm ---
	tst	,s	; t
	bne	L47	;
;----- asm -----
; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[317]return;
;--- end asm ---
	bra	L49	;
L47:
;----- asm -----
; 476 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[319]t--;
;--- end asm ---
	dec	,s	; t
	bra	L48	;
L49:
	leas	1,s	;,,
	rts
	.globl	_initBox
_initBox:
;----- asm -----
; 484 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[326]for (int i=0; i<4;i++)
; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[328]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box	; temp.221, box
;----- asm -----
; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[328]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+1	; temp.223, box
;----- asm -----
; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[328]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+2	; temp.225, box
;----- asm -----
; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[328]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+3	; D.3384, box
	rts
	.globl	_monsterOnStack
_monsterOnStack:
	pshs	y,u	;
	pshs	b	;
	leay	,x	; mh, mh
;----- asm -----
; 498 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[338]for (int i=18;i>=0;i--)
;--- end asm ---
	ldu	#0	; ivtmp.240,
L53:
;----- asm -----
; 501 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[340]stackm[i+1] = stackm[i];
;--- end asm ---
	ldb	_stackM+18,u	;, stackM
	stb	_stackM+19,u	;, stackM
;----- asm -----
; 503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[341]stackml[i+1] = stackml[i];
;--- end asm ---
	ldb	_stackML+18,u	;, stackML
	stb	_stackML+19,u	;, stackML
;----- asm -----
; 505 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[342]stackmh[i+1] = stackmh[i];
;--- end asm ---
	tfr	u,d	; ivtmp.240,
	aslb	;
	rola	;
	tfr	d,x	;, D.4320
	ldd	_stackMH+36,x	;, stackMH
	std	_stackMH+38,x	;, stackMH
	leau	-1,u	; ivtmp.240,, ivtmp.240
	cmpu	#-19	;cmphi:	; ivtmp.240,
	bne	L53	;
;----- asm -----
; 511 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[347]if (m==-1)
;--- end asm ---
	ldb	,s	;, m
	cmpb	#-1	;cmpqi:	;,
	bne	L54	;
;----- asm -----
; 514 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[349]stackm[0] = -1;
;--- end asm ---
	stb	_stackM	;, stackM
;----- asm -----
; 516 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[350]stackml[0] = 0;
;--- end asm ---
	clr	_stackML	; stackML
;----- asm -----
; 518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[351]stackmh[0] = 0;
;--- end asm ---
	ldd	#0	;,
	std	_stackMH	;, stackMH
;----- asm -----
; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[352]return;
;--- end asm ---
	bra	L56	;
L54:
;----- asm -----
; 523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[354]stackm[0] = (signed int)m;
;--- end asm ---
	ldb	,s	;, m
	stb	_stackM	;, stackM
;----- asm -----
; 525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[355]stackml[0] = ml;
;--- end asm ---
	ldb	7,s	;, ml
	stb	_stackML	;, stackML
;----- asm -----
; 527 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[356]stackmh[0] = mh;
;--- end asm ---
	sty	_stackMH	; mh, stackMH
;----- asm -----
; 529 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[357]m=-1;
; 531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[358]ml = 0;
; 533 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[359]mh = 0;
;--- end asm ---
L56:
	leas	1,s	;,,
	puls	y,u,pc	;
	.globl	_monsterOnStackAdvance
_monsterOnStackAdvance:
	pshs	y,u	;
	leas	-1,s	;,,
;----- asm -----
; 541 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[366]int ret = 0;
; 545 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[369]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 547 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[370]if (stackm[0] != -1)
;--- end asm ---
	ldb	_stackM	; m.36, stackM
	cmpb	#-1	;cmpqi:	; m.36,
	bne	L59	;
	clr	,s	; ret
	bra	L60	;
L59:
;----- asm -----
; 550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[372]ret = 1;
; 554 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[375]m = (signed int) stackm[0];
;--- end asm ---
	stb	_m	; m.36, m
;----- asm -----
; 556 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[376]ml = stackml[0];
;--- end asm ---
	ldb	_stackML	;, stackML
	stb	_ml	;, ml
;----- asm -----
; 558 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[377]mh = stackmh[0];
;--- end asm ---
	ldx	_stackMH	;, stackMH
	stx	_mh	;, mh
	ldb	#1	;,
	stb	,s	;, ret
L60:
;----- asm -----
; 563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[381]for (int i=0; i<19;i++)
;--- end asm ---
	ldu	#0	; ivtmp.257,
L61:
;----- asm -----
; 566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[383]stackm[i] = stackm[i+1];
;--- end asm ---
	ldb	_stackM+1,u	;, stackM
	stb	_stackM,u	;, stackM
;----- asm -----
; 568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[384]stackml[i] = stackml[i+1];
;--- end asm ---
	ldb	_stackML+1,u	;, stackML
	stb	_stackML,u	;, stackML
;----- asm -----
; 570 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[385]stackmh[i] = stackmh[i+1];
;--- end asm ---
	tfr	u,d	; ivtmp.257,
	aslb	;
	rola	;
	tfr	d,x	;, D.4344
	ldy	_stackMH+2,x	;, stackMH
	sty	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.257,, ivtmp.257
	cmpu	#19	;cmphi:	; ivtmp.257,
	bne	L61	;
;----- asm -----
; 573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[387]stackm[19] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM+19	;, stackM
;----- asm -----
; 575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[388]stackml[19] = 0;
;--- end asm ---
	clr	_stackML+19	; stackML
;----- asm -----
; 577 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[389]stackmh[19] = 0;
;--- end asm ---
	ldd	#0	;,
	std	_stackMH+38	;, stackMH
;----- asm -----
; 580 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[391]return ret;
;--- end asm ---
	ldb	,s	;, ret
	leas	1,s	;,,
	puls	y,u,pc	;
	.globl	_monsterOnStackEvadeFurther
_monsterOnStackEvadeFurther:
;----- asm -----
; 586 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[396]monsteronstack(-1, 0, 0);
;--- end asm ---
	clr	,-s	;
	ldx	#0	;,
	ldb	#-1	;,
	jsr	_monsterOnStack
	leas	1,s	;,,
	rts
	.globl	_clearMonsterStack
_clearMonsterStack:
	pshs	u	;
;----- asm -----
; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[404]for (int i=0;i<20;i++)
;--- end asm ---
	ldu	#0	; ivtmp.284,
L67:
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[406]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,u	;, stackM
;----- asm -----
; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[407]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,u	; stackML
;----- asm -----
; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[408]stackmh[i] = 0;
;--- end asm ---
	tfr	u,d	; ivtmp.284,
	aslb	;
	rola	;
	tfr	d,x	;, tmp43
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.284,, ivtmp.284
	cmpu	#20	;cmphi:	; ivtmp.284,
	bne	L67	;
	puls	u,pc	;
LC26:
	.byte	60,52,62,32,84,79,32,85
	.byte	83,69,32,83,84,65,84,83
	.byte	-128,0
LC27:
	.byte	89,79,85,32,68,69,83,67
	.byte	69,78,68,32,73,78,84,79
	.byte	32,84,72,69,-128,0
LC28:
	.byte	68,69,80,84,72,32,79,70
	.byte	32,84,69,76,69,78,71,65
	.byte	82,68,-128,0
LC29:
	.byte	66,69,87,65,82,69,46,46
	.byte	46,-128,0
	.globl	_createCharacter
_createCharacter:
	pshs	u	;
	leas	-5,s	;,,
;----- asm -----
; 609 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[414]int pressed;
; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[415]rollagain:
;--- end asm ---
L87:
;----- asm -----
; 613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[416]for (int i=0; i<6;i++)
;--- end asm ---
	ldu	#_s	; ivtmp.338,
L71:
;----- asm -----
; 616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[418]s[i] = randmax(6)+1 + randmax(6)+1 + randmax(6)+1;
;--- end asm ---
	ldb	#6	;,
	jsr	_RandMax
	stb	1,s	;, D.3447
	ldb	#6	;,
	jsr	_RandMax
	stb	2,s	;, D.3448
	ldb	#6	;,
	jsr	_RandMax
	stb	,s	;, D.3450
	ldb	1,s	;, D.3447
	addb	2,s	;, D.3448
	addb	#3	;,
	stb	1,s	;, D.3447
	ldb	,s	;, D.3450
	addb	1,s	;, D.3447
	stb	,u+	;, s
	cmpu	#_s+6	;cmphi:	; ivtmp.338,
	bne	L71	;
;----- asm -----
; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[420]pressed = 0;
; 621 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[421]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 623 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[422]#ifndef no_title
; 625 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[423]do
;--- end asm ---
	clr	3,s	; pressed
L76:
;----- asm -----
; 628 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[425]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.43, localTimer
;----- asm -----
; 630 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[426]if (localtimer == 0) goto rollagain;
;--- end asm ---
	tstb	; localTimer.43
	lbeq	L87	;
;----- asm -----
; 632 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[427]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[428]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[429]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 638 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[430]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[431]check_joysticks();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 643 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[433]if (button_1_4_pressed()) break;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	,s	;, D.4154
	bitb	#8	;,
	lbne	L73	;
;----- asm -----
; 645 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[434]if (buttons_pressed()) pressed = 1;
;--- end asm ---
	tstb	;
	beq	L74	;
	ldb	#1	;,
	stb	3,s	;, pressed
	bra	L75	;
L74:
	tst	3,s	; pressed
	lbne	L87	;
L75:
;----- asm -----
; 649 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[437]dp_via_t1_cnt_lo = text_scale;
;--- end asm ---
	ldb	#68	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[438]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	addb	#44	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[439]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 655 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[440]print();
;--- end asm ---
	ldb	__YC	; _YC.45, _YC
	addb	#-10	; _YC.45,
	stb	__YC	; _YC.45, _YC
	pshs	b	; _YC.45
	ldx	#LC26	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 657 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[441]addline;
;--- end asm ---
	ldb	__YC	;, _YC
	addb	#-10	;,
	stb	__YC	;, _YC
;----- asm -----
; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[443]for (int i=0; i<6;i++) printfsi( , stats[i], s[i]);
;--- end asm ---
	ldx	_stats	;, stats
	stx	,--s	;,
	ldb	_s	;, s
	ldx	#LC1	;,
	jsr	_printfsi
	ldd	_stats+2	;, stats
	std	,--s	;,
	ldb	_s+1	;, s
	ldx	#LC1	;,
	jsr	_printfsi
	ldx	_stats+4	;, stats
	stx	,--s	;,
	ldb	_s+2	;, s
	ldx	#LC1	;,
	jsr	_printfsi
	ldd	_stats+6	;, stats
	std	,--s	;,
	ldb	_s+3	;, s
	ldx	#LC1	;,
	jsr	_printfsi
	leas	9,s	;,,
	ldx	_stats+8	;, stats
	stx	,--s	;,
	ldb	_s+4	;, s
	ldx	#LC1	;,
	jsr	_printfsi
	ldd	_stats+10	;, stats
	std	,--s	;,
	ldb	_s+5	;, s
	ldx	#LC1	;,
	jsr	_printfsi
;----- asm -----
; 662 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[445]while (1);
;--- end asm ---
	leas	4,s	;,,
	lbra	L76	;
L73:
;----- asm -----
; 665 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[446]#endif
; 667 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[447]hp = s[3];
;--- end asm ---
	ldb	_s+3	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	_hp	; hp.48, hp
;----- asm -----
; 669 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[448]ch = (signed long int) hp;
;--- end asm ---
	std	_ch	; hp.48, ch
;----- asm -----
; 671 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[449]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 673 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[450]tg = 0;
;--- end asm ---
	std	_tg	;, tg
	std	_tg+2	;, tg
;----- asm -----
; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[451]lv = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_lv	;, lv
;----- asm -----
; 678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[453]cz = 1;
;--- end asm ---
	stb	_cz	;, cz
;----- asm -----
; 680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[454]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 682 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[455]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[458]for (int i=0; i<10;i++)
;--- end asm ---
	ldx	#_inventory	; ivtmp.329,
	ldu	#_sf	; ivtmp.331,
L77:
;----- asm -----
; 689 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[460]inventory[i] = 0;
;--- end asm ---
	ldd	#0	;,
	std	,x++	;, inventory
;----- asm -----
; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[461]sf[i] = 0;
;--- end asm ---
	clr	,u+	; sf
	cmpx	#_inventory+20	;cmphi:	; ivtmp.329,
	bne	L77	;
;----- asm -----
; 694 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[463]sf[10] = 0;
;--- end asm ---
	clr	_sf+10	; sf
;----- asm -----
; 698 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[466]initbox();
;--- end asm ---
	jsr	_initBox
;----- asm -----
; 702 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[469]ex = 0;
;--- end asm ---
	ldd	#0	;,
	std	_ex	;, ex
	std	_ex+2	;, ex
;----- asm -----
; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[470]su = 1;
;--- end asm ---
	ldx	#1	; tmp105,
	stx	_su	; tmp105, su
;----- asm -----
; 706 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[471]cs = 1;
;--- end asm ---
	stx	_cs	; tmp105, cs
;----- asm -----
; 714 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[478]clearmonsterstack();
; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[404]for (int i=0;i<20;i++)
;--- end asm ---
	ldu	#0	; ivtmp.314,
L78:
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[406]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,u	;, stackM
;----- asm -----
; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[407]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,u	; stackML
;----- asm -----
; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[408]stackmh[i] = 0;
;--- end asm ---
	tfr	u,d	; ivtmp.314,
	aslb	;
	rola	;
	tfr	d,x	;, tmp109
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.314,, ivtmp.314
	cmpu	#20	;cmphi:	; ivtmp.314,
	bne	L78	;
;----- asm -----
; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[479]#ifndef no_title
; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[480]unsigned int i=0;
; 720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[481]do
;--- end asm ---
	clr	4,s	; i
L79:
;----- asm -----
; 723 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[483]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[484]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[485]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 730 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[487]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	ldb	#112	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[488]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[489]print();
;--- end asm ---
	ldb	__YC	; _YC.342, _YC
	addb	#-10	; _YC.342,
	stb	__YC	; _YC.342, _YC
	pshs	b	; _YC.342
	ldx	#LC27	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[490]print();
;--- end asm ---
	ldb	__YC	; _YC.345, _YC
	addb	#-10	; _YC.345,
	stb	__YC	; _YC.345, _YC
	pshs	b	; _YC.345
	ldx	#LC28	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 738 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[491]addline;
; 740 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[492]print();
;--- end asm ---
	ldb	__YC	; _YC.349, _YC
	addb	#-20	; _YC.349,
	stb	__YC	; _YC.349, _YC
	pshs	b	; _YC.349
	ldx	#LC29	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[495]while (i++<160);
;--- end asm ---
	inc	7,s	; i
	leas	3,s	;,,
	ldb	4,s	;, i
	cmpb	#-95	;cmpqi:	;,
	lbne	L79	;
	leas	5,s	;,,
	puls	u,pc	;
LC30:
	.byte	76,69,86,69,76,32,37,-128
	.byte	0
LC31:
	.ascii	"ABORT\0"
LC32:
	.ascii	"CAST\0"
LC33:
	.ascii	"YOU DON'T HAVE THAT LEVEL SPELLS!\0"
LC34:
	.ascii	"YOU DON'T HAVE ENOUGH SPELL UNITS!\0"
LC35:
	.ascii	"CAST: %\0"
LC36:
	.ascii	"UNDEAD DON'T SLEEP!\0"
LC37:
	.ascii	"THE % ISN'T SLEEPY!\0"
LC38:
	.ascii	"THE % IS SLEEPING <4> TO KILL:\0"
LC39:
	.ascii	"EVADE\0"
LC40:
	.ascii	"IT WOKE UP!\0"
LC41:
	.ascii	"YOU FEEL BETTER\0"
LC42:
	.ascii	"THE % IS INSULTED\0"
LC43:
	.ascii	"AT BEING CALLED UNDEAD\0"
LC44:
	.ascii	"THE % LISTENS WITH DEAF EARS\0"
LC45:
	.ascii	"IT RUNS IN FEAR!!\0"
LC46:
	.ascii	"THE % DODGES ASIDE!\0"
LC47:
	.ascii	"THE % IS WEBBED <4> TO KILL:\0"
LC48:
	.ascii	"IT BROKE FREE!\0"
LC49:
	.ascii	"THE UNDEAD IGNORES YOUR WILES!\0"
LC50:
	.ascii	"THE % RESISTS YOU!\0"
LC51:
	.ascii	"THE % IS CHARMED <4> TO KILL:\0"
LC52:
	.ascii	"ZZZZAAAPPP!!!\0"
LC53:
	.ascii	"THE % IGNORES YOU!\0"
LC54:
	.ascii	"THE % IS HELD <4> TO KILL:\0"
LC55:
	.ascii	"THE % DOESN'T BELIEVE!\0"
LC56:
	.ascii	"IT BELIEVES! .... ARRGH...\0"
LC57:
	.ascii	"NOT IN MELEE!!\0"
LC58:
	.ascii	"DIRECTION>\0"
LC59:
	.ascii	"ONLY STONE HERE...\0"
LC60:
	.ascii	"EAST\0"
LC61:
	.ascii	"WEST\0"
LC62:
	.ascii	"NORTH\0"
LC63:
	.ascii	"SOUTH\0"
LC64:
	.ascii	"???\0"
LC65:
	.ascii	"POOF\0"
LC66:
	.ascii	"WHOOOOOSHH!!!\0"
LC67:
	.ascii	"THE % IS BURNING!\0"
LC68:
	.ascii	"THE % IS ISN'T AFFECTED\0"
LC69:
	.ascii	"ONE STONE STATUE....\0"
LC70:
	.ascii	"DIE!!!!!!!\0"
LC71:
	.ascii	"UNDEAD ARE ALREADY DEAD!!\0"
LC72:
	.ascii	"THE % LAUGHS!\0"
LC73:
	.ascii	"CAST TELEPORT\0"
LC74:
	.byte	84,69,76,69,80,79,82,84
	.byte	33,-128,0
LC75:
	.byte	66,85,84,84,79,78,32,84
	.byte	79,32,70,73,78,73,83,72
	.byte	-128,0
LC76:
	.byte	78,79,82,84,72,45,32,83
	.byte	79,85,84,72,43,32,58,32
	.byte	37,-128,0
LC77:
	.byte	87,69,83,84,45,32,69,65
	.byte	83,84,43,32,32,32,58,32
	.byte	37,-128,0
LC78:
	.byte	85,80,45,32,68,79,87,78
	.byte	43,32,32,32,32,32,58,32
	.byte	37,-128,0
LC79:
	.ascii	"TO FAR...TRY AGAIN\0"
LC80:
	.ascii	"ONLY STONE THERE...\0"
LC81:
	.ascii	"THE SPELL FAILS...\0"
LC82:
	.ascii	"ONLY THIN AIR...\0"
LC83:
	.ascii	"*** POOF! ***\0"
LC84:
	.ascii	"QWERTY!!!!!!\0"
LC85:
	.ascii	"THE % DOESN'T HEAR...\0"
LC86:
	.ascii	"BRRRR!!!!\0"
LC87:
	.ascii	"CAST WALL OF FIRE - WWHOOOSSH!!!\0"
LC88:
	.ascii	"A WALL OF FIRE APPEARS ABOUT YOU\0"
LC89:
	.ascii	"THE % IS GONE...\0"
LC90:
	.ascii	"THE % WALKS THROUGH!!!\0"
LC91:
	.ascii	"BLACK DEATH FOR THE % \0"
LC92:
	.ascii	"IT IS IMMUNE!\0"
LC93:
	.ascii	"THE SPELL BACKFIRES!!\0"
LC94:
	.ascii	"TIME IS FROZEN, MONSTERS CANNOT\0"
LC95:
	.ascii	"ATTACK YOU\0"
LC96:
	.ascii	"THE % DOESN'T SEE...\0"
LC97:
	.ascii	"A SCINILLATING SHIFTING WALL APPEARS\0"
LC98:
	.ascii	"YOU JUST WASTED A COMBAT SPELL!\0"
LC99:
	.ascii	"IT SUFFERS % HIT POINTS\0"
	.globl	_castSpell
_castSpell:
	pshs	y,u	;
	leas	-26,s	;,,
	stb	5,s	; inCombat, inCombat
;----- asm -----
; 767 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[517]unsigned int spelllevel = 0;
; 769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[518]unsigned int spellselect = 0;
; 771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[519]unsigned int availablelevel = (lv/3);
;--- end asm ---
	ldb	_lv	;, lv
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldd	#3	;,
	std	,--s	;,
	ldx	2,s	;,
	jsr	_udivhi3
	leas	2,s	;,,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp150,
	stb	15,s	;, availableLevel
;----- asm -----
; 773 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[520]int lastdir = 0;
; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[521]do
;--- end asm ---
	clr	13,s	; spellLevel
	clr	14,s	; spellSelect
	clr	16,s	; lastDir
L102:
;----- asm -----
; 778 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[523]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[524]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[525]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[526]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 786 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[527]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 789 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[529]if ((vec_joy_1_x > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	,s	;, Vec_Joy_1_X.52
	ble	L89	;
	tst	16,s	; lastDir
	bne	L89	;
	ldb	13,s	;, spellLevel
	cmpb	#4	;cmpqi:	;,
	bhi	L89	;
	incb	;
	stb	13,s	;, spellLevel
L89:
;----- asm -----
; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[531]if ((vec_joy_1_x < 0) && (!lastdir))
;--- end asm ---
	tst	,s	; Vec_Joy_1_X.52
	bge	L90	;
	tst	16,s	; lastDir
	bne	L90	;
	tst	13,s	; spellLevel
	beq	L90	;
	dec	13,s	; spellLevel
L90:
;----- asm -----
; 796 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[534]if (spelllevel <= availablelevel)
;--- end asm ---
	ldb	13,s	;, spellLevel
	cmpb	15,s	;cmpqi:	;, availableLevel
	lbhi	L91	;
;----- asm -----
; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[536]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[537]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.53, Vec_Joy_1_Y
	ble	L92	;
	tst	16,s	; lastDir
	bne	L92	;
	tst	14,s	; spellSelect
	beq	L92	;
	dec	14,s	; spellSelect
L92:
;----- asm -----
; 804 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[539]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tstb	; Vec_Joy_1_Y.53
	bge	L93	;
	tst	16,s	; lastDir
	bne	L93	;
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bhi	L93	;
	incb	;
	stb	14,s	;, spellSelect
L93:
;----- asm -----
; 808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[542]print_str_d(0x60-0x10*spellselect,-0x65, );
;--- end asm ---
	ldb	#6	; tmp153,
	subb	14,s	; tmp152, spellSelect
	aslb	; tmp152
	aslb	; tmp152
	aslb	; tmp152
	aslb	; tmp152
	pshs	b	; tmp152
	ldx	#LC20	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 810 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[543]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
	bra	L94	;
L91:
	jsr	___Intensity_3F
L94:
;----- asm -----
; 816 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[548]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	16,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L96	;
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
	beq	L97	;
	ldb	#1	; Vec_Joy_1_Y,
L97:
	stb	16,s	; Vec_Joy_1_Y, lastDir
L96:
;----- asm -----
; 819 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[550]_fi_s(, (unsigned int) spelllevel+1);
;--- end asm ---
	ldb	13,s	;, spellLevel
	incb	;
	stb	6,s	;, D.3509
	ldx	#LC30	;,
	jsr	__fi_s
;----- asm -----
; 821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[551]print_str_d(0x78,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[552]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 826 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[554]for (unsigned int i=0;i<6;i++)
;--- end asm ---
	ldb	14,s	;, spellLevel
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	1,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp158
	ldu	_spellNames,x	; D.3511, spellNames
	ldy	#0	; ivtmp.420,
	leas	1,s	;,,
L98:
;----- asm -----
; 829 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[556]print_str_d(0x60-0x10*i,-0x50, spellnames[spelllevel][i]);
;--- end asm ---
	tfr	u,d	; D.3511,
	leax	d,y	; tmp160,, ivtmp.420
	tfr	y,d	;movlsbqihi: R:y -> R:b	; ivtmp.420, ivtmp.420
	aslb	; ivtmp.420
	aslb	; ivtmp.420
	aslb	; ivtmp.420
	negb	; ivtmp.420
	addb	#96	; ivtmp.420,
	pshs	b	; ivtmp.420
	ldx	,x	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 831 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[557]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leay	2,y	; ivtmp.420,, ivtmp.420
	leas	1,s	;,,
	cmpy	#12	;cmphi:	; ivtmp.420,
	bne	L98	;
;----- asm -----
; 835 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[560]if (button_1_1_pressed())
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	2,s	;, D.4166
	bitb	#1	;,
	beq	L99	;
;----- asm -----
; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[562]printmessage();
;--- end asm ---
	ldx	#LC31	;,
	jsr	_printMessage
;----- asm -----
; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[563]return 2;
;--- end asm ---
	lbra	L225	;
L99:
;----- asm -----
; 843 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[565]if (buttons_pressed()) break;
;--- end asm ---
	tst	2,s	; D.4166
	bne	L101	;
;----- asm -----
; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[570]while (1);
;--- end asm ---
	lbra	L102	;
L101:
;----- asm -----
; 851 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[571]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 853 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[572]printmessage();
;--- end asm ---
	ldx	#LC32	;,
	jsr	_printMessage
;----- asm -----
; 857 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[575]if (spelllevel > availablelevel)
;--- end asm ---
	ldb	13,s	;, spellLevel
	cmpb	15,s	;cmpqi:	;, availableLevel
	bls	L103	;
;----- asm -----
; 860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[577]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
;----- asm -----
; 862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[578]return 2;
;--- end asm ---
	lbra	L225	;
L103:
;----- asm -----
; 866 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[581]if ((spelllevel+1) > cs)
;--- end asm ---
	ldb	6,s	;, D.3509
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.3522
	cmpd	_cs	;cmphi:	; D.3522, cs
	bls	L104	;
;----- asm -----
; 869 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[583]printmessage();
;--- end asm ---
	ldx	#LC34	;,
	jsr	_printMessage
;----- asm -----
; 871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[584]return 1;
;--- end asm ---
	lbra	L222	;
L104:
;----- asm -----
; 874 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[586]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 876 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[587]_fs(, (void *)spellnames[spelllevel][spellselect]);
;--- end asm ---
	ldb	13,s	;, spellLevel
	clra		;zero_extendqihi: R:b -> R:d	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp169
	ldb	14,s	;, spellSelect
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	ldx	_spellNames,x	;, spellNames
	leax	d,x	; tmp174, tmp173,
	ldx	,x	;,
	stx	,--s	;,
	ldx	#LC35	;,
	jsr	__fs
;----- asm -----
; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[588]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 881 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[590]cs=cs-(spelllevel+1);
;--- end asm ---
	ldd	_cs	; cs, cs
	pshs	u	;subhi: R:d -= R:u	; D.3522, tmp177
	subd	,s++	; tmp177
	std	_cs	; tmp177, cs
;----- asm -----
; 884 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[592]if (spelllevel == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	13,s	; spellLevel
	lbne	L105	;
;----- asm -----
; 887 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[594]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	bne	L106	;
;----- asm -----
; 893 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[599]tmp = (signed int) randmax(8)+5;
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	addb	#5	; D.3529,
	stb	_tmp	; D.3529, tmp
;----- asm -----
; 895 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[600]goto damagespell;
;--- end asm ---
	lbra	L107	;
L106:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	lbne	L108	;
;----- asm -----
; 900 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[604]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 904 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[607]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L110	;
;----- asm -----
; 907 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[609]printmessage();
;--- end asm ---
	ldx	#LC36	;,
	jsr	_printMessage
;----- asm -----
; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[610]return 1;
;--- end asm ---
	lbra	L222	;
L110:
;----- asm -----
; 914 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[614]if (randmax(20)+1 > s[int] )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	incb	; D.3533
	cmpb	_s+1	;cmpqi:	; D.3533, s
	bls	L111	;
;----- asm -----
; 917 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[616]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp182
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC37	;,
	jsr	__fs
;----- asm -----
; 919 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[617]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 921 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[618]return 1;
;--- end asm ---
	lbra	L227	;
L111:
;----- asm -----
; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[623]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp187
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC38	;,
	jsr	__fs
;----- asm -----
; 929 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[624]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 931 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[625]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; D.3538,
	beq	L112	;
;----- asm -----
; 934 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[627]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 936 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[628]return 4;
;--- end asm ---
	lbra	L224	;
L112:
;----- asm -----
; 942 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[633]if (randmax(5) < 4 )
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	cmpb	#3	;cmpqi:	; D.3539,
	bhi	L113	;
;----- asm -----
; 945 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[635]return 3;
;--- end asm ---
	lbra	L170	;
L113:
;----- asm -----
; 948 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[637]printmessage();
;--- end asm ---
	ldx	#LC40	;,
	jsr	_printMessage
;----- asm -----
; 950 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[638]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[639]return 1;
;--- end asm ---
	lbra	L222	;
L108:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L114	;
;----- asm -----
; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[647]printmessage();
;--- end asm ---
	ldx	#LC41	;,
	jsr	_printMessage
;----- asm -----
; 963 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[648]ch = ch + randmax(8)+1;
;--- end asm ---
	ldy	_ch	; ch.61, ch
	ldb	#8	;,
	jsr	_RandMax
	leax	1,y	; tmp190,, ch.61
	clra		;zero_extendqihi: R:b -> R:d	; D.3541, D.3541
	pshs	x	;addhi: R:d += R:x	; tmp190, ch.62
	addd	,s++	; ch.62
	std	_ch	; ch.62, ch
;----- asm -----
; 965 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[649]if (ch > hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.63, hp
	pshs	x	;cmphi: R:x with R:d	; hp.63, ch.62
	cmpd	,s++	;cmphi:	; ch.62
	ble	L115	;
	stx	_ch	; hp.63, ch
L115:
;----- asm -----
; 967 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[650]return 1;
;--- end asm ---
	lbra	L222	;
L114:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L116	;
;----- asm -----
; 977 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[659]sf[light] = randmax(11)+5;
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	addb	#5	; D.3546,
	stb	_sf+2	; D.3546, sf
;----- asm -----
; 979 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[660]return 1;
;--- end asm ---
	lbra	L222	;
L116:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L117	;
;----- asm -----
; 986 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[666]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[670]if (un == 0)
;--- end asm ---
	tst	_un	; un
	bne	L118	;
;----- asm -----
; 994 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[672]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp195
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC42	;,
	jsr	__fs
;----- asm -----
; 996 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[673]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 998 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[674]printmessage();
;--- end asm ---
	ldx	#LC43	;,
	jsr	_printMessage
;----- asm -----
; 1000 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[675]return 1;
;--- end asm ---
L227:
	ldb	#1	; D.3520,
	lbra	L223	;
L118:
;----- asm -----
; 1006 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[680]if (randmax(20) > s[wis] + lv-ml)
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	,s	;, D.3548
	ldb	_ml	;, ml
	stb	7,s	;, ml.64
	ldb	_lv	;, lv
	addb	_s+2	;, s
	subb	7,s	;, ml.64
	stb	3,s	;,
	ldb	,s	;, D.3548
	cmpb	3,s	;cmpqi:	;,
	bls	L119	;
;----- asm -----
; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[682]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp203
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC44	;,
	jsr	__fs
;----- asm -----
; 1011 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[683]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[684]return 1;
;--- end asm ---
	lbra	L227	;
L119:
;----- asm -----
; 1017 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[687]ml=(ml+1)>>1;
;--- end asm ---
	inc	7,s	; ml.64
	ldb	7,s	;, ml.64
	lsrb	;
	stb	_ml	;, ml
;----- asm -----
; 1019 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[688]printmessage();
;--- end asm ---
	ldx	#LC45	;,
	jsr	_printMessage
;----- asm -----
; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[689]return 5;
;--- end asm ---
	ldb	#5	; D.3520,
	lbra	L100	;
L117:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1028 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[695]sf[protection_from_evil] = randmax(11)+5;
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	addb	#5	; D.3555,
	stb	_sf+3	; D.3555, sf
;----- asm -----
; 1030 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[696]return 1;
;--- end asm ---
	lbra	L222	;
L105:
	ldb	13,s	;, spellLevel
	cmpb	#1	;cmpqi:	;,
	lbne	L121	;
;----- asm -----
; 1036 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[701]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	lbne	L122	;
;----- asm -----
; 1044 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[708]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1046 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[709]if ( ((lrandmax(6)*lrandmax(5)))  + ml > s[int])
;--- end asm ---
	ldb	#6	;,
	jsr	_lRandMax
	leay	,x	; D.3557,
	ldb	#5	;,
	jsr	_lRandMax
	pshs	y	; D.3557
	jsr	_mulhi3
	leas	2,s	;,,
	ldb	_ml	;, ml
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leax	d,x	; tmp210,, tmp208
	ldb	_s+1	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, s
	pshs	d	;cmphi: R:d with R:x	; s, tmp210
	cmpx	,s++	;cmphi:	; tmp210
	bls	L123	;
;----- asm -----
; 1049 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[711]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp215
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC46	;,
	jsr	__fs
;----- asm -----
; 1051 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[712]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1053 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[713]return 1;
;--- end asm ---
	lbra	L227	;
L123:
;----- asm -----
; 1059 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[718]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp220
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC47	;,
	jsr	__fs
;----- asm -----
; 1061 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[719]dressedtokill:
;--- end asm ---
L219:
	leas	2,s	;,,
L124:
;----- asm -----
; 1063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[720]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1065 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[721]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3563,
	beq	L125	;
;----- asm -----
; 1068 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[723]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 1070 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[724]return 4;
;--- end asm ---
L224:
	ldb	#4	; D.3520,
	lbra	L100	;
L125:
;----- asm -----
; 1076 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[729]if (randmax(20)-ml > 10 )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	subb	_ml	; tmp223, ml
	cmpb	#10	;cmpqi:	; tmp223,
	bls	L126	;
;----- asm -----
; 1079 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[731]return 3;
;--- end asm ---
	lbra	L170	;
L126:
;----- asm -----
; 1082 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[733]printmessage();
;--- end asm ---
	ldx	#LC48	;,
	jsr	_printMessage
;----- asm -----
; 1084 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[734]return 1;
;--- end asm ---
	lbra	L222	;
L122:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L127	;
;----- asm -----
; 1091 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[740]sf[levitate] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3566,
	stb	_sf+4	; D.3566, sf
;----- asm -----
; 1093 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[741]return 1;
;--- end asm ---
	lbra	L226	;
L127:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L128	;
;----- asm -----
; 1101 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[748]tmp = (signed int) randmax(12)+3;
;--- end asm ---
	ldb	#12	;,
	jsr	_RandMax
	addb	#3	; D.3568,
	stb	_tmp	; D.3568, tmp
;----- asm -----
; 1103 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[749]goto damagespell;
;--- end asm ---
	lbra	L107	;
L128:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L129	;
;----- asm -----
; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[755]sf[detect_traps] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3571,
	stb	_sf+1	; D.3571, sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[756]return 1;
;--- end asm ---
	lbra	L222	;
L129:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L130	;
;----- asm -----
; 1119 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[762]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[765]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L131	;
;----- asm -----
; 1126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[767]printmessage();
;--- end asm ---
	ldx	#LC49	;,
	jsr	_printMessage
;----- asm -----
; 1128 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[768]return 1;
;--- end asm ---
	lbra	L222	;
L131:
;----- asm -----
; 1136 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[775]if ( ((lrandmax(6)*lrandmax(5)))  + 1 > s[chr])
;--- end asm ---
	ldb	#6	;,
	jsr	_lRandMax
	leay	,x	; D.3573,
	ldb	#5	;,
	jsr	_lRandMax
	pshs	y	; D.3573
	jsr	_mulhi3
	leas	2,s	;,,
	leax	1,x	; tmp227,, tmp226
	ldb	_s+5	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, s
	pshs	d	;cmphi: R:d with R:x	; s, tmp227
	cmpx	,s++	;cmphi:	; tmp227
	bls	L132	;
;----- asm -----
; 1139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[777]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp232
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC50	;,
	jsr	__fs
;----- asm -----
; 1141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[778]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[779]return 1;
;--- end asm ---
	lbra	L227	;
L132:
;----- asm -----
; 1149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[784]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp237
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC51	;,
	jsr	__fs
;----- asm -----
; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[785]goto dressedtokill;
;--- end asm ---
	lbra	L219	;
L130:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[791]sf[strength] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3579,
	stb	_sf	; D.3579, sf
;----- asm -----
; 1160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[792]return 1;
;--- end asm ---
	lbra	L222	;
L121:
	ldb	13,s	;, spellLevel
	cmpb	#2	;cmpqi:	;,
	lbne	L133	;
;----- asm -----
; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[797]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	bne	L134	;
;----- asm -----
; 1171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[801]printmessage();
;--- end asm ---
	ldx	#LC52	;,
	jsr	_printMessage
;----- asm -----
; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[802]initsoundno = sound_lightning;
;--- end asm ---
	ldb	#7	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 1178 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[806]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1180 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[807]tmp = (signed int) randmax(6*lv)+15;
;--- end asm ---
	ldb	_lv	; tmp243, lv
	aslb	; tmp243
	addb	_lv	; tmp243, lv
	aslb	; tmp243
	jsr	_RandMax
	addb	#15	; D.3582,
	stb	_tmp	; D.3582, tmp
;----- asm -----
; 1182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[808]goto damagespell;
;--- end asm ---
	lbra	L107	;
L134:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L135	;
;----- asm -----
; 1192 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[817]printmessage();
;--- end asm ---
	ldx	#LC41	;,
	jsr	_printMessage
;----- asm -----
; 1194 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[818]ch = ch + randmax(24)+1;
;--- end asm ---
	ldy	_ch	; ch.448, ch
	ldb	#24	;,
	jsr	_RandMax
	leax	1,y	; tmp246,, ch.448
	clra		;zero_extendqihi: R:b -> R:d	; D.3585, D.3585
	pshs	x	;addhi: R:d += R:x	; tmp246, ch.68
	addd	,s++	; ch.68
	std	_ch	; ch.68, ch
;----- asm -----
; 1196 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[819]if (ch > hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.449, hp
	pshs	x	;cmphi: R:x with R:d	; hp.449, ch.68
	cmpd	,s++	;cmphi:	; ch.68
	ble	L136	;
	stx	_ch	; hp.449, ch
L136:
;----- asm -----
; 1198 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[820]return 1;
;--- end asm ---
	lbra	L222	;
L135:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L137	;
;----- asm -----
; 1205 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[826]sf[light] = randmax(31)+5;
;--- end asm ---
	ldb	#31	;,
	jsr	_RandMax
	addb	#5	; D.3589,
	stb	_sf+2	; D.3589, sf
;----- asm -----
; 1207 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[827]return 1;
;--- end asm ---
	lbra	L222	;
L137:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L138	;
;----- asm -----
; 1214 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[833]sf[invisible] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3591,
	stb	_sf+5	; D.3591, sf
;----- asm -----
; 1216 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[834]return 1;
;--- end asm ---
	lbra	L222	;
L138:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L139	;
;----- asm -----
; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[841]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1229 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[845]if ( randmax(20)+ml > s[int])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	_ml	; D.3593, ml
	cmpb	_s+1	;cmpqi:	; D.3593, s
	bls	L140	;
;----- asm -----
; 1232 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[847]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp254
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC53	;,
	jsr	__fs
;----- asm -----
; 1234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[848]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[849]return 1;
;--- end asm ---
	lbra	L227	;
L140:
;----- asm -----
; 1243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[855]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp259
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC54	;,
	jsr	__fs
;----- asm -----
; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[856]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[857]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; D.3595,
	beq	L141	;
;----- asm -----
; 1250 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[859]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 1252 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[860]return 4;
;--- end asm ---
	lbra	L226	;
L141:
;----- asm -----
; 1261 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[868]if (randmax(33) > 7+ml )
;--- end asm ---
	ldb	#33	;,
	jsr	_RandMax
	stb	8,s	;, D.3596
	ldb	_ml	; tmp262, ml
	addb	#7	; tmp262,
	cmpb	8,s	;cmpqi:(R)	; tmp262, D.3596
	bhs	L142	;
;----- asm -----
; 1264 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[870]return 3;
;--- end asm ---
	lbra	L170	;
L142:
;----- asm -----
; 1267 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[872]printmessage();
;--- end asm ---
	ldx	#LC48	;,
	jsr	_printMessage
;----- asm -----
; 1269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[873]return 1;
;--- end asm ---
	lbra	L222	;
L139:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1276 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[879]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1281 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[883]if (randmax(22)+ml >= s[int])
;--- end asm ---
	ldb	#22	;,
	jsr	_RandMax
	addb	_ml	; D.3598, ml
	cmpb	_s+1	;cmpqi:	; D.3598, s
	blo	L143	;
;----- asm -----
; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[885]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp267
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC55	;,
	jsr	__fs
;----- asm -----
; 1286 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[886]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1288 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[887]return 1;
;--- end asm ---
	lbra	L227	;
L143:
;----- asm -----
; 1293 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[891]printmessage();
;--- end asm ---
	ldx	#LC56	;,
	jsr	_printMessage
;----- asm -----
; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[892]return 3;
;--- end asm ---
	lbra	L170	;
L133:
	ldb	13,s	;, spellLevel
	cmpb	#3	;cmpqi:	;,
	lbne	L144	;
;----- asm -----
; 1301 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[897]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	lbne	L145	;
;----- asm -----
; 1306 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[901]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L146	;
;----- asm -----
; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[903]printmessage();
;--- end asm ---
	ldx	#LC57	;,
	jsr	_printMessage
;----- asm -----
; 1311 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[904]return 1;
;--- end asm ---
	lbra	L222	;
L146:
;----- asm -----
; 1314 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[906]printmessage();
;--- end asm ---
	ldx	#LC58	;,
	jsr	_printMessage
;----- asm -----
; 1322 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[913]tmp2 = 0;
;--- end asm ---
	clr	_tmp2	; tmp2
;----- asm -----
; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[914]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[916]while(1)
;--- end asm ---
L160:
;----- asm -----
; 1330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[918]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 1332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[919]if (localtimer == 0) tmp2 = -1;
;--- end asm ---
	tst	_localTimer	; localTimer
	bne	L147	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L147:
;----- asm -----
; 1334 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[920]if (vec_joy_1_x>0)
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	ble	L148	;
;----- asm -----
; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[922]if (cx==200)
;--- end asm ---
	ldb	_cx	; cx.70, cx
	cmpb	#-56	;cmpqi:	; cx.70,
	bne	L149	;
;----- asm -----
; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[924]onlystone:
;--- end asm ---
L150:
;----- asm -----
; 1342 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[925]printmessage();
;--- end asm ---
	ldx	#LC59	;,
	jsr	_printMessage
;----- asm -----
; 1344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[926]return 1;
;--- end asm ---
	lbra	L222	;
L149:
;----- asm -----
; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[929]cx +=1;fillmap=go_east;printmessage();
;--- end asm ---
	incb	; cx.70
	stb	_cx	; cx.70, cx
	ldb	#3	;,
	stb	_fillMap	;, fillMap
	ldx	#LC60	;,
	jsr	_printMessage
;----- asm -----
; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[930]tmp2 = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp2	;, tmp2
L148:
;----- asm -----
; 1354 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[933]if (vec_joy_1_x<0)
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bge	L151	;
;----- asm -----
; 1357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[935]if (cx==2) goto onlystone;
;--- end asm ---
	ldb	_cx	; cx.463, cx
	cmpb	#2	;cmpqi:	; cx.463,
	beq	L150	;
;----- asm -----
; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[936]cx -=1;fillmap=go_west;printmessage();
;--- end asm ---
	decb	; cx.463
	stb	_cx	; cx.463, cx
	ldb	#4	;,
	stb	_fillMap	;, fillMap
	ldx	#LC61	;,
	jsr	_printMessage
;----- asm -----
; 1361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[937]tmp2 = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp2	;, tmp2
L151:
;----- asm -----
; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[939]if (vec_joy_1_y>0)
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L152	;
;----- asm -----
; 1367 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[941]if (cy==2) goto onlystone;
;--- end asm ---
	ldb	_cy	; cy.73, cy
	cmpb	#2	;cmpqi:	; cy.73,
	lbeq	L150	;
;----- asm -----
; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[942]cy -=1;fillmap=go_north;printmessage();
;--- end asm ---
	decb	; cy.73
	stb	_cy	; cy.73, cy
	ldb	#1	;,
	stb	_fillMap	;, fillMap
	ldx	#LC62	;,
	jsr	_printMessage
;----- asm -----
; 1371 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[943]tmp2 = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp2	;, tmp2
L152:
;----- asm -----
; 1374 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[945]if (vec_joy_1_y<0)
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	bge	L153	;
;----- asm -----
; 1377 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[947]if (cy==200)
;--- end asm ---
	ldb	_cy	;, cy
	cmpb	#-56	;cmpqi:	;,
	bne	L154	;
	incb	;
	stb	_cy	;, cy
L154:
	ldb	#2	;,
	stb	_fillMap	;, fillMap
	ldx	#LC63	;,
	jsr	_printMessage
;----- asm -----
; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[949]tmp2 = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_tmp2	;, tmp2
L153:
;----- asm -----
; 1384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[952]if (button_1_4_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L155	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L155:
;----- asm -----
; 1386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[953]if (button_1_3_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#4	;,
	beq	L156	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L156:
;----- asm -----
; 1388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[954]if (button_1_2_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L157	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L157:
;----- asm -----
; 1390 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[955]if (button_1_1_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L158	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L158:
;----- asm -----
; 1393 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[957]if (tmp2 != 0) break;
;--- end asm ---
	ldb	_tmp2	; tmp2.76, tmp2
	bne	L159	;
;----- asm -----
; 1395 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[958]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	lbra	L160	;
L159:
;----- asm -----
; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[960]if (tmp2 == -1)
;--- end asm ---
	cmpb	#-1	;cmpqi:	; tmp2.76,
	bne	L161	;
;----- asm -----
; 1401 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[962]printmessage();
;--- end asm ---
	ldx	#LC64	;,
	bra	L220	;
L161:
;----- asm -----
; 1406 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[966]printmessage();
;--- end asm ---
	ldx	#LC65	;,
L220:
	jsr	_printMessage
;----- asm -----
; 1409 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[968]return 2;
;--- end asm ---
	lbra	L225	;
L145:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	lbne	L163	;
;----- asm -----
; 1416 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[974]printmessage();
;--- end asm ---
	ldx	#LC66	;,
	jsr	_printMessage
;----- asm -----
; 1420 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[977]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1422 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[978]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp280
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC67	;,
	jsr	__fs
;----- asm -----
; 1424 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[979]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1426 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[980]tmp = (signed int) randmax(12*lv)+15;
;--- end asm ---
	ldb	_lv	;, lv
	lda	#12	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp283
; ORG>	tfr	d,x	;, tmp283
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp283,
	jsr	_RandMax
	addb	#15	; D.3614,
	stb	_tmp	; D.3614, tmp
;----- asm -----
; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[981]goto damagespell;
;--- end asm ---
	lbra	L221	;
L163:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L164	;
;----- asm -----
; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[988]tmp = (signed int) randmax(32)+10;
;--- end asm ---
	ldb	#32	;,
	jsr	_RandMax
	addb	#10	; D.3617,
	stb	_tmp	; D.3617, tmp
;----- asm -----
; 1438 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[989]goto damagespell;
;--- end asm ---
	lbra	L107	;
L164:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	lbne	L165	;
;----- asm -----
; 1445 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[995]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[998]if (randmax(10)>6)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#6	;cmpqi:	; D.3620,
	bls	L166	;
;----- asm -----
; 1452 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1000]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp286
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC68	;,
	jsr	__fs
;----- asm -----
; 1454 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1001]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1002]return 1;
;--- end asm ---
	lbra	L227	;
L166:
;----- asm -----
; 1459 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1004]printmessage();
;--- end asm ---
	ldx	#LC69	;,
	jsr	_printMessage
;----- asm -----
; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1005]return 3;
;--- end asm ---
	lbra	L226	;
L165:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bne	L167	;
;----- asm -----
; 1468 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1011]sf[fear] = randmax(30)+5;
;--- end asm ---
	ldb	#30	;,
	jsr	_RandMax
	addb	#5	; D.3621,
	stb	_sf+6	; D.3621, sf
;----- asm -----
; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1012]return 1;
;--- end asm ---
	lbra	L222	;
L167:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1477 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1018]printmessage();
;--- end asm ---
	ldx	#LC70	;,
	jsr	_printMessage
;----- asm -----
; 1479 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1019]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1023]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L168	;
;----- asm -----
; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1025]undeadaredead:
;--- end asm ---
L169:
;----- asm -----
; 1489 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1026]printmessage();
;--- end asm ---
	ldx	#LC71	;,
	jsr	_printMessage
;----- asm -----
; 1491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1027]return 1;
;--- end asm ---
	lbra	L222	;
L168:
;----- asm -----
; 1496 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1031]ltmp = 30 + ml*4;
;--- end asm ---
	ldb	_ml	; tmp290, ml
	aslb	; tmp290
	aslb	; tmp290
	addb	#30	; tmp290,
	clra		;zero_extendqihi: R:b -> R:d	; tmp290,
	std	9,s	;, ltmp.80
;----- asm -----
; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1032]ltmp = ltmp - lv*3;
;--- end asm ---
	ldb	_lv	; tmp294, lv
	aslb	; tmp294
	addb	_lv	; tmp294, lv
	clra		;zero_extendqihi: R:b -> R:d	; tmp294,
	tfr	d,x	;, tmp296
	ldd	9,s	;, ltmp.80
	pshs	x	;subhi: R:d -= R:x	; tmp296,
	subd	,s++	;
	std	_ltmp	; tmp297, ltmp
;----- asm -----
; 1501 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1034]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1035]if (randmax(100) > (unsigned long int)ltmp)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3630, D.3630
	cmpd	_ltmp	;cmphi:	; D.3630, ltmp
	lbhi	L170	;
;----- asm -----
; 1508 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1039]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp301
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC72	;,
	jsr	__fs
;----- asm -----
; 1510 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1040]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1512 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1041]return 1;
;--- end asm ---
	lbra	L227	;
L144:
	ldb	13,s	;, spellLevel
	cmpb	#4	;cmpqi:	;,
	lbne	L171	;
;----- asm -----
; 1518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1046]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	lbne	L172	;
;----- asm -----
; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1048]signed long int ns;
; 1523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1049]signed long int ew;
; 1525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1050]signed long int upd;
; 1527 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1051]signed int sel;
; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1054]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L173	;
;----- asm -----
; 1534 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1056]printmessage();
;--- end asm ---
	ldx	#LC57	;,
	jsr	_printMessage
;----- asm -----
; 1536 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1057]return 1;
;--- end asm ---
	lbra	L222	;
L173:
;----- asm -----
; 1540 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1060]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1542 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1061]printmessage();
;--- end asm ---
	ldx	#LC73	;,
	jsr	_printMessage
;----- asm -----
; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1064]teleportagain:
;--- end asm ---
L174:
;----- asm -----
; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1065]ns = ew = upd = sel = 0;
; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1066]do
;--- end asm ---
	ldy	#0	; ns,
	sty	17,s	; ns, ew
	sty	19,s	; ns, upd
	clr	21,s	; sel
L187:
;----- asm -----
; 1553 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1068]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 1555 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1069]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 1557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1070]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 1559 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1071]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1072]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1073]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1075]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC74	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1076]print_str_d(-0x40,-0x40, );
;--- end asm ---
	ldb	#-64	;,
	stb	,-s	;,
	ldx	#LC75	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1571 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1078]_fi_s_s(, (signed int) ns);
;--- end asm ---
	tfr	y,d	;movlsbqihi: R:y -> R:b	; ns,
	ldx	#LC76	;,
	jsr	__fi_s_s
;----- asm -----
; 1573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1079]print_str_d(0x50,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1080]_fi_s_s(, (signed int) ew);
;--- end asm ---
	ldb	21,s	;movlsbqihi: msb:20,s -> R:b	;, ew
	ldx	#LC77	;,
	jsr	__fi_s_s
;----- asm -----
; 1577 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1081]print_str_d(0x30,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1579 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1082]_fi_s_s(, (signed int) upd);
;--- end asm ---
	ldb	24,s	;movlsbqihi: msb:23,s -> R:b	;, upd
	ldx	#LC78	;,
	jsr	__fi_s_s
;----- asm -----
; 1581 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1083]print_str_d(0x10,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1583 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1084]if (sel == 0)
;--- end asm ---
	leas	5,s	;,,
	tst	21,s	; sel
	bne	L175	;
;----- asm -----
; 1586 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1086]print_str_d(0x50,-0x65, );
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#LC20	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1588 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1087]if ((vec_joy_1_x > 0) && (!lastdir)) ns+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	; Vec_Joy_1_X.478, Vec_Joy_1_X
	leas	1,s	;,,
	tstb	; Vec_Joy_1_X.478
	ble	L176	;
	tst	16,s	; lastDir
	bne	L176	;
	leay	1,y	; ns,, ns
L176:
;----- asm -----
; 1590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1088]if ((vec_joy_1_x < 0) && (!lastdir)) ns-=1;
;--- end asm ---
	tstb	; Vec_Joy_1_X.478
	bge	L175	;
	tst	16,s	; lastDir
	bne	L175	;
	leay	-1,y	; ns,, ns
L175:
;----- asm -----
; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1090]if (sel == 1)
;--- end asm ---
	ldb	21,s	;, sel
	cmpb	#1	;cmpqi:	;,
	bne	L177	;
;----- asm -----
; 1596 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1092]print_str_d(0x30,-0x65, );
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	ldx	#LC20	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1093]if ((vec_joy_1_x > 0) && (!lastdir)) ew+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.479
	leas	1,s	;,,
	tstb	;
	ble	L178	;
	tst	16,s	; lastDir
	bne	L178	;
	ldd	17,s	;, ew
	addd	#1; addhi3,3	;,
	std	17,s	;, ew
L178:
;----- asm -----
; 1600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1094]if ((vec_joy_1_x < 0) && (!lastdir)) ew-=1;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.479
	bge	L177	;
	tst	16,s	; lastDir
	bne	L177	;
	ldd	17,s	;, ew
	addd	#-1; addhi3,3	;,
	std	17,s	;, ew
L177:
;----- asm -----
; 1603 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1096]if (sel == 2)
;--- end asm ---
	ldb	21,s	;, sel
	cmpb	#2	;cmpqi:	;,
	bne	L179	;
;----- asm -----
; 1606 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1098]print_str_d(0x10,-0x65, );
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#LC20	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1608 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1099]if ((vec_joy_1_x > 0) && (!lastdir)) upd+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.480
	leas	1,s	;,,
	tstb	;
	ble	L180	;
	tst	16,s	; lastDir
	bne	L180	;
	ldd	19,s	;, upd
	addd	#1; addhi3,3	;,
	std	19,s	;, upd
L180:
;----- asm -----
; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1100]if ((vec_joy_1_x < 0) && (!lastdir)) upd-=1;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.480
	bge	L179	;
	tst	16,s	; lastDir
	bne	L179	;
	ldd	19,s	;, upd
	addd	#-1; addhi3,3	;,
	std	19,s	;, upd
L179:
;----- asm -----
; 1613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1102]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.481
	ble	L181	;
	tst	16,s	; lastDir
	bne	L181	;
	tst	21,s	; sel
	beq	L181	;
	dec	21,s	; sel
L181:
;----- asm -----
; 1616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1104]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tst	2,s	; Vec_Joy_1_Y.481
	bge	L182	;
	tst	16,s	; lastDir
	bne	L182	;
	ldb	21,s	;, sel
	cmpb	#1	;cmpqi:	;,
	bgt	L182	;
	incb	;
	stb	21,s	;, sel
L182:
;----- asm -----
; 1619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1106]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	16,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L184	;
	ldb	2,s	; Vec_Joy_1_Y.481, Vec_Joy_1_Y.481
	beq	L185	;
	ldb	#1	; Vec_Joy_1_Y.481,
L185:
	stb	16,s	; Vec_Joy_1_Y.481, lastDir
L184:
;----- asm -----
; 1622 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1108]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L186	;
;----- asm -----
; 1624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1110]while (1);
;--- end asm ---
	lbra	L187	;
L186:
	ldu	17,s	; ew.509, ew
	ldx	19,s	;, upd
	stx	24,s	;, upd.510
;----- asm -----
; 1630 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1114]if ((abs(ns)>lv*5) || (abs(ew)>lv*5) ||(abs(upd)>lv*5) )
;--- end asm ---
	ldb	_lv	; tmp307, lv
	aslb	; tmp307
	aslb	; tmp307
	addb	_lv	; tmp307, lv
	clra		;zero_extendqihi: R:b -> R:d	; tmp307,
	std	,s	;, D.3645
	leax	,y	; ns.484, ns
	cmpy	#0	; ns
	bge	L189	;
	tfr	y,d	; ns,
	nega
	negb
	sbca	#0
	tfr	d,x	;, ns.484
L189:
	cmpx	,s	;cmphi:	; ns.484, D.3645
	bgt	L188	;
	leax	,u	; ew.509, ew.509
	cmpu	#0	; ew.509
	bge	L190	;
	exg	d,x	; ew.509
	nega
	negb
	sbca	#0
	exg	d,x	; ew.509
L190:
	cmpx	,s	;cmphi:	; ew.509, D.3645
	bgt	L188	;
	ldx	24,s	; upd.510, upd.510
	bge	L192	;
	exg	d,x	; upd.510
	nega
	negb
	sbca	#0
	exg	d,x	; upd.510
L192:
	cmpx	,s	;cmphi:	; upd.510, D.3645
	ble	L191	;
L188:
;----- asm -----
; 1633 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1116]printmessage();
;--- end asm ---
	ldx	#LC79	;,
	jsr	_printMessage
;----- asm -----
; 1635 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1117]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1637 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1118]goto teleportagain;
;--- end asm ---
	lbra	L174	;
L191:
;----- asm -----
; 1644 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1124]ew += cx;
;--- end asm ---
	ldb	_cx	;, cx
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	addd	17,s; addhi3,3	;, ew
	std	22,s	;, ew.486
;----- asm -----
; 1646 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1125]ns += cy;
;--- end asm ---
	ldb	_cy	;, cy
	stb	2,s	;, cy.487
;----- asm -----
; 1648 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1126]upd += cz;
;--- end asm ---
	ldb	_cz	;, cz
	stb	11,s	;, cz.85
;----- asm -----
; 1650 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1127]if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
;--- end asm ---
	ldu	22,s	;, ew.486
	leax	-1,u	; tmp313,,
	cmpx	#199	;cmphi:	; tmp313,
	bhi	L193	;
	ldb	2,s	;, cy.487
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leay	d,y	; ns.488,, ns
	cmpy	#0	; ns.488
	ble	L193	;
	cmpy	#200	;cmphi:	; ns.488,
	bgt	L193	;
	ldb	11,s	;, cz.85
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldx	19,s	; upd.489, upd
	leax	d,x	; upd.489,, upd.489
	tfr	x,d	;movlsbqihi: R:x -> R:b	; upd.489, temp.490
	cmpb	#50	;cmpqi:	; temp.490,
	ble	L194	;
L193:
;----- asm -----
; 1654 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1130]printmessage();
;--- end asm ---
	ldx	#LC80	;,
	jsr	_printMessage
;----- asm -----
; 1656 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1131]printmessage();
;--- end asm ---
	ldx	#LC81	;,
	jsr	_printMessage
;----- asm -----
; 1658 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1132]return 1;
;--- end asm ---
	lbra	L222	;
L194:
;----- asm -----
; 1661 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1134]if ((signed int) upd<1)
;--- end asm ---
	tfr	x,d	; upd.489,
	tstb	;
	bgt	L195	;
;----- asm -----
; 1664 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1136]printmessage();
;--- end asm ---
	ldx	#LC82	;,
	jsr	_printMessage
;----- asm -----
; 1666 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1137]printmessage();
;--- end asm ---
	ldx	#LC81	;,
	jsr	_printMessage
;----- asm -----
; 1668 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1138]return 1;
;--- end asm ---
	lbra	L222	;
L195:
;----- asm -----
; 1672 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1141]cx = (unsigned char)ew;
;--- end asm ---
	ldd	22,s	;, ew.486
	stb	_cx	;movlsbqihi: R:d -> _cx	; cx,
;----- asm -----
; 1674 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1142]cy = (unsigned char)ns;
;--- end asm ---
	tfr	y,d	; ns.488,
	stb	_cy	;movlsbqihi: R:d -> _cy	; cy,
;----- asm -----
; 1676 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1143]cz = (unsigned char)upd;
;--- end asm ---
	tfr	x,d	; upd.489,
	stb	_cz	;movlsbqihi: R:d -> _cz	; cz,
;----- asm -----
; 1678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1144]printmessage();
;--- end asm ---
	ldx	#LC83	;,
	jsr	_printMessage
;----- asm -----
; 1680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1145]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1682 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1146]return 2;
;--- end asm ---
	lbra	L225	;
L172:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L196	;
;----- asm -----
; 1689 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1152]sf[astral_walk] = randmax(16)+5;
;--- end asm ---
	ldb	#16	;,
	jsr	_RandMax
	addb	#5	; D.3659,
	stb	_sf+7	; D.3659, sf
;----- asm -----
; 1691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1153]return 1;
;--- end asm ---
	lbra	L226	;
L196:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	lbne	L197	;
;----- asm -----
; 1698 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1159]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1701 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1161]printmessage();
;--- end asm ---
	ldx	#LC84	;,
	jsr	_printMessage
;----- asm -----
; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1162]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1165]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L198	;
;----- asm -----
; 1710 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1167]goto undeadaredead;
;--- end asm ---
	lbra	L169	;
L198:
;----- asm -----
; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1169]if (randmax(11)>8)
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	cmpb	#8	;cmpqi:	; D.3661,
	bls	L199	;
;----- asm -----
; 1716 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1171]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp319
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC85	;,
	jsr	__fs
;----- asm -----
; 1718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1172]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1173]return 1;
;--- end asm ---
	lbra	L227	;
L199:
;----- asm -----
; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1175]return 3;
;--- end asm ---
	lbra	L170	;
L197:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L200	;
;----- asm -----
; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1182]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1733 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1183]printmessage();
;--- end asm ---
	ldx	#LC86	;,
	jsr	_printMessage
;----- asm -----
; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1184]tmp = (signed int) randmax(60)+5;
;--- end asm ---
	ldb	#60	;,
	jsr	_RandMax
	addb	#5	; D.3662,
	stb	_tmp	; D.3662, tmp
;----- asm -----
; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1185]goto damagespell;
;--- end asm ---
	lbra	L107	;
L200:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L201	;
;----- asm -----
; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1194]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1749 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1195]printmessage();
;--- end asm ---
	ldx	#LC87	;,
	jsr	_printMessage
;----- asm -----
; 1751 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1196]printmessage();
;--- end asm ---
	ldx	#LC88	;,
	jsr	_printMessage
;----- asm -----
; 1753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1197]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1198]if (randmax(10) >4)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#4	;cmpqi:	; D.3665,
	bls	L202	;
;----- asm -----
; 1758 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1200]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp324
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC89	;,
	jsr	__fs
;----- asm -----
; 1760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1201]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1762 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1202]return 6;
;--- end asm ---
	lbra	L228	;
L202:
;----- asm -----
; 1765 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1204]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp329
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC90	;,
	jsr	__fs
;----- asm -----
; 1767 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1205]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1206]tmp = (signed int) randmax(10)+15;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	addb	#15	; D.3666,
	stb	_tmp	; D.3666, tmp
;----- asm -----
; 1771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1207]goto damagespell;
;--- end asm ---
L221:
	leas	2,s	;,,
	lbra	L107	;
L201:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1778 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1213]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1215]if (un != 0) goto undeadaredead;
;--- end asm ---
	tst	_un	; un
	lbne	L169	;
;----- asm -----
; 1785 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1218]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp334
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC91	;,
	jsr	__fs
;----- asm -----
; 1787 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1219]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1221]if (randmax(20)>s[wis])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	leas	2,s	;,,
	cmpb	_s+2	;cmpqi:	; D.3669, s
	bls	L203	;
;----- asm -----
; 1793 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1223]printmessage();
;--- end asm ---
	ldx	#LC92	;,
	jsr	_printMessage
;----- asm -----
; 1795 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1224]return 1;
;--- end asm ---
	lbra	L222	;
L203:
;----- asm -----
; 1800 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1228]if (  randmax((unsigned int)(67)) < (unsigned int) ((s[con]) +33))
;--- end asm ---
	ldb	#67	;,
	jsr	_RandMax
	stb	12,s	;, D.3670
	ldb	_s+3	; tmp339, s
	addb	#33	; tmp339,
	cmpb	12,s	;cmpqi:(R)	; tmp339, D.3670
	bls	L204	;
;----- asm -----
; 1803 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1230]return 2;
;--- end asm ---
	lbra	L225	;
L204:
;----- asm -----
; 1806 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1232]printmessage();
;--- end asm ---
	ldx	#LC93	;,
	jsr	_printMessage
;----- asm -----
; 1808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1233]return 7;
;--- end asm ---
	ldb	#7	; D.3520,
	lbra	L100	;
L171:
	ldb	13,s	;, spellLevel
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1815 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1239]if (spellselect == 0)
;--- end asm ---
	tst	14,s	; spellSelect
	bne	L205	;
;----- asm -----
; 1821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1244]printmessage();
;--- end asm ---
	ldx	#LC94	;,
	jsr	_printMessage
;----- asm -----
; 1823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1245]printmessage();
;--- end asm ---
	ldx	#LC95	;,
	jsr	_printMessage
;----- asm -----
; 1828 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1249]sf[timestop] = randmax(20)+4;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	#4	; D.3673,
	stb	_sf+8	; D.3673, sf
;----- asm -----
; 1830 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1250]if (incombat) return 6;
;--- end asm ---
	ldb	#6	; D.3520,
	tst	5,s	; inCombat
	lbne	L100	;
;----- asm -----
; 1832 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1251]return 1;
;--- end asm ---
	lbra	L222	;
L205:
	ldb	14,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L207	;
;----- asm -----
; 1839 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1257]sf[raise_dead] = randmax(40)+5;
;--- end asm ---
	ldb	#40	;,
	jsr	_RandMax
	addb	#5	; D.3675,
	stb	_sf+9	; D.3675, sf
;----- asm -----
; 1841 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1258]return 1;
;--- end asm ---
	bra	L226	;
L207:
	ldb	14,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	lbne	L208	;
;----- asm -----
; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1264]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L109	;
;----- asm -----
; 1853 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1268]if (randmax(10+1) != 10)
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	cmpb	#10	;cmpqi:	; D.3677,
	beq	L209	;
;----- asm -----
; 1856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1270]return 2;
;--- end asm ---
L226:
	ldb	14,s	; D.3520, spellSelect
	lbra	L100	;
L209:
;----- asm -----
; 1860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1273]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp344
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC96	;,
	jsr	__fs
;----- asm -----
; 1862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1274]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1275]return 1;
;--- end asm ---
	lbra	L227	;
L208:
	ldb	14,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	lbne	L210	;
;----- asm -----
; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1281]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L211	;
;----- asm -----
; 1874 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1283]printmessage();
;--- end asm ---
	ldx	#LC57	;,
	jsr	_printMessage
;----- asm -----
; 1876 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1284]return 1;
;--- end asm ---
	lbra	L222	;
L211:
;----- asm -----
; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1289]for (int i=0; i<10;i++)
;--- end asm ---
	ldx	#_inventory	; ivtmp.411,
L212:
;----- asm -----
; 1885 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1291]inventory[i] = 0;
;--- end asm ---
	ldd	#0	;,
	std	,x++	;, inventory
	cmpx	#_inventory+20	;cmphi:	; ivtmp.411,
	bne	L212	;
;----- asm -----
; 1888 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1293]gd = 0;
;--- end asm ---
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 1890 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1294]clearmonsterstack();
; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[404]for (int i=0;i<20;i++)
;--- end asm ---
	ldy	#0	; ivtmp.396,
L213:
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[406]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,y	;, stackM
;----- asm -----
; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[407]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,y	; stackML
;----- asm -----
; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[408]stackmh[i] = 0;
;--- end asm ---
	tfr	y,d	; ivtmp.396,
	aslb	;
	rola	;
	tfr	d,x	;, tmp352
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leay	1,y	; ivtmp.396,, ivtmp.396
	cmpy	#20	;cmphi:	; ivtmp.396,
	bne	L213	;
;----- asm -----
; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1295]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 1894 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1296]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1297]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 1898 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1298]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1900 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1299]printmessage();
;--- end asm ---
	ldx	#LC23	;,
	jsr	_printMessage
;----- asm -----
; 1902 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1300]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1904 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1301]return 1;
;--- end asm ---
	lbra	L222	;
L210:
	ldb	14,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bne	L214	;
;----- asm -----
; 1911 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1307]printmessage();
;--- end asm ---
	ldx	#LC41	;,
	jsr	_printMessage
;----- asm -----
; 1913 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1308]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1915 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1309]return 1;
;--- end asm ---
	lbra	L222	;
L214:
	ldb	14,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L120	;
;----- asm -----
; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1315]printmessage();
;--- end asm ---
	ldx	#LC97	;,
	jsr	_printMessage
;----- asm -----
; 1924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1316]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	beq	L109	;
;----- asm -----
; 1926 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1317]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1932 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1322]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp359
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC89	;,
	jsr	__fs
;----- asm -----
; 1934 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1323]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1936 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1324]return 6;
;--- end asm ---
L228:
	ldb	#6	; D.3520,
L223:
	leas	2,s	;,,
	lbra	L100	;
L120:
;----- asm -----
; 1941 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1328]return 2;
;--- end asm ---
L225:
	ldb	#2	; D.3520,
	lbra	L100	;
L109:
;----- asm -----
; 1946 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1331]printmessage();
;--- end asm ---
	ldx	#LC98	;,
	jsr	_printMessage
;----- asm -----
; 1948 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1332]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1950 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1333]return 1;
;--- end asm ---
L222:
	ldb	#1	; D.3520,
	lbra	L100	;
L107:
;----- asm -----
; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1335]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	beq	L109	;
;----- asm -----
; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1336]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	ldx	#LC99	;,
	jsr	__fi_s
;----- asm -----
; 1958 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1337]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1960 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1338]mh = mh -tmp;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,u	;, tmp
	ldx	_mh	; mh, mh
	tfr	x,d	; mh,
	pshs	u	;subhi: R:d -= R:u	; tmp,
	subd	,s++	;
	std	_mh	; mh.96, mh
;----- asm -----
; 1962 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1339]if (mh <0) return 3;
;--- end asm ---
	cmpd	#0	; mh.96
	blt	L170	;
;----- asm -----
; 1964 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1340]return 1;
;--- end asm ---
	lbra	L222	;
L170:
	ldb	#3	; D.3520,
L100:
	leas	26,s	;,,
	puls	y,u,pc	;
LC100:
	.ascii	"YOU WENT UP A LEVEL!\0"
LC101:
	.ascii	"YOU GAIN % HIT POINTS\0"
LC102:
	.ascii	"YOU GO DOWN A LEVEL!\0"
LC103:
	.ascii	"YOU LOSE % HIT POINTS\0"
	.globl	_checkXP
_checkXP:
	pshs	y,u	;
	leas	-16,s	;,,
;----- asm -----
; 1985 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1360]unsigned long long int t = ull(1000)*ull(ull(2)<<(lv-1));
;--- end asm ---
	ldb	_lv	;, lv
;----- asm -----
; 1988 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1362]if (ex >= t)
;--- end asm ---
	ldu	_ex	; ex.98, ex
	ldy	_ex+2	; ex.98, ex
	decb	;
	stb	1,s	;, lv.97
	clra		;zero_extendqihi: R:b -> R:d	;,
	inc	1,s	; lv.97
	pshs	d	; tmp45
	leas	-4,s	;,,
	ldd	#0	;,
	std	,s	;,
	ldd	#2	;,
	std	2,s	;,
	leax	18,s	;,,
	jsr	___ashlsi3
	leas	-2,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	ldd	20,s	;,
	std	,s	;,
	ldx	22,s	;,
	stx	2,s	;,
	leax	16,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldx	8,s	; tmp89,
	ldd	10,s	; tmp90,
	pshs	u	;cmphi: R:u with R:x	; ex.98, tmp89
	cmpx	,s++	;cmphi:	; tmp89
	lbhi	L230	;
	bne	L243	;
	pshs	y	;cmphi: R:y with R:d	; ex.98, tmp90
	cmpd	,s++	;cmphi:	; tmp90
	lbhi	L230	;
L243:
;----- asm -----
; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1364]printmessage();
;--- end asm ---
	ldx	#LC100	;,
	jsr	_printMessage
;----- asm -----
; 1993 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1365]lv = lv +1;
;--- end asm ---
	ldb	_lv	;, lv
	stb	,s	;, lv.517
	incb	;
	stb	_lv	;, lv
;----- asm -----
; 1995 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1366]t = ull(1000)*ull(ull(2)<<(lv-1));
;--- end asm ---
	ldb	,s	;, lv.517
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; lv.517
	leas	-4,s	;,,
	ldd	#0	;,
	std	,s	;,
	ldd	#2	;,
	std	2,s	;,
	leax	18,s	;,,
	jsr	___ashlsi3
	leas	-2,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	ldd	20,s	;,
	std	,s	;,
	ldx	22,s	;,
	stx	2,s	;,
	leax	16,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldd	8,s	;,
	std	4,s	;, t.520
	ldx	10,s	;,
	stx	6,s	;, t.520
;----- asm -----
; 1997 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1367]tmp = (signed int) (randmax( s[con] ) + 1);
;--- end asm ---
	ldb	_s+3	;, s
	jsr	_RandMax
	incb	;
	stb	2,s	;, D.3698
	stb	_tmp	;, tmp
;----- asm -----
; 2001 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1370]ch += tmp;
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,u	;, D.3702
	ldd	_ch	;, ch
	leax	d,u	;,, D.3702
	stx	_ch	;, ch
;----- asm -----
; 2003 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1371]hp += (long signed int) tmp;
;--- end asm ---
	tfr	u,d	; D.3702,
	addd	_hp; addhi3,3	;, hp
	std	_hp	;, hp
;----- asm -----
; 2005 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1372]if (ex>t) ex = t-1;
;--- end asm ---
	ldx	4,s	;, t.520
	cmpx	_ex	;cmphi:(R)	;, ex
	blo	L244	;
	bne	L232	;
	ldx	6,s	;, t.520
	cmpx	_ex+2	;cmphi:(R)	;, ex
	bhs	L232	;
L244:
	ldd	6,s	;, t.520
	addd	#-1	;,
	std	_ex+2	;, ex
	ldd	4,s	;, t.520
	adcb	#-1	;
	adca	#-1	;
	std	_ex	;, ex
L232:
;----- asm -----
; 2010 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1376]cs = cs + lv;
;--- end asm ---
	ldb	_lv	;, lv
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.3708
	ldd	_cs	;, cs
	leax	d,u	;,, D.3708
	stx	_cs	;, cs
;----- asm -----
; 2012 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1377]su = su +lv;
;--- end asm ---
	tfr	u,d	; D.3708,
	addd	_su; addhi3,3	;, su
	std	_su	;, su
;----- asm -----
; 2015 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1379]_fi_s(, (unsigned int)tmp);
;--- end asm ---
	ldb	2,s	;, D.3698
	ldx	#LC101	;,
	jsr	__fi_s
;----- asm -----
; 2017 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1380]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2019 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1381]return;
;--- end asm ---
	lbra	L242	;
L230:
;----- asm -----
; 2026 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1387]if (lv >1)
;--- end asm ---
	ldb	1,s	;, lv.97
	cmpb	#1	;cmpqi:	;,
	bhi	L235	;
	ldx	#0	; t,
	ldd	#0	; t,
	bra	L236	;
L235:
	ldb	1,s	;, lv.97
	addb	#-2	;,
	stb	1,s	;, lv.97
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, tmp65
	ldb	1,s	;, lv.97
	addb	#2	;,
	stb	1,s	;, lv.97
	pshs	x	; tmp65
	leas	-4,s	;,,
	ldd	#0	;,
	std	,s	;,
	ldd	#2	;,
	std	2,s	;,
	leax	18,s	;,,
	jsr	___ashlsi3
	leas	-2,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	ldd	20,s	;,
	std	,s	;,
	ldx	22,s	;,
	stx	2,s	;,
	leax	16,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldx	8,s	; t,
	ldd	10,s	; t,
L236:
;----- asm -----
; 2033 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1393]if (ex>=t) return;
;--- end asm ---
	pshs	u	;cmphi: R:u with R:x	; ex.98, t
	cmpx	,s++	;cmphi:	; t
	bhi	L245	;
	lbne	L242	;
	pshs	y	;cmphi: R:y with R:d	; ex.98, t
	cmpd	,s++	;cmphi:	; t
	lbls	L242	;
L245:
	ldb	1,s	;, lv.97
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, temp.523
	ldd	_cs	; cs.524, cs
	pshs	d	;cmphi: R:d with R:x	; cs.524, temp.523
	cmpx	,s++	;cmphi:	; temp.523
	bls	L238	;
	ldd	#0	;,
	bra	L246	;
L238:
	pshs	x	;subhi: R:d -= R:x	; temp.523, tmp75
	subd	,s++	; tmp75
L246:
	std	_cs	; tmp75, cs
;----- asm -----
; 2039 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1398]su = su -lv;
;--- end asm ---
	ldd	_su	; su, su
	pshs	x	;subhi: R:d -= R:x	; temp.523, tmp77
	subd	,s++	; tmp77
	std	_su	; tmp77, su
;----- asm -----
; 2043 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1401]printmessage();
;--- end asm ---
	ldx	#LC102	;,
	jsr	_printMessage
;----- asm -----
; 2045 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1402]lv = lv -1;
;--- end asm ---
	dec	_lv	; lv
;----- asm -----
; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1403]tmp = (signed int)(randmax(s[con])+1);
;--- end asm ---
	ldb	_s+3	;, s
	jsr	_RandMax
	incb	;
	stb	3,s	;, D.3719
	stb	_tmp	;, tmp
;----- asm -----
; 2055 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1410]if ((ch<tmp) || (lv == 0))
;--- end asm ---
	ldu	_ch	; ch.529, ch
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, temp.530
	pshs	d	;cmphi: R:d with R:u	; temp.530, ch.529
	cmpu	,s++	;cmphi:	; ch.529
	blt	L240	;
	tst	_lv	; lv
	bne	L241	;
L240:
;----- asm -----
; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1412]ch=0;
;--- end asm ---
	ldd	#0	;,
	std	_ch	;, ch
;----- asm -----
; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1413]return;
;--- end asm ---
	bra	L242	;
L241:
;----- asm -----
; 2063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1415]ch = ch -tmp;
;--- end asm ---
	tfr	u,d	; ch.529, tmp80
	pshs	x	;subhi: R:d -= R:x	; temp.530, tmp80
	subd	,s++	; tmp80
	std	_ch	; tmp80, ch
;----- asm -----
; 2065 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1416]hp = hp -(long signed int)tmp;
;--- end asm ---
	ldd	_hp	; hp, hp
	pshs	x	;subhi: R:d -= R:x	; temp.530, tmp82
	subd	,s++	; tmp82
	std	_hp	; tmp82, hp
;----- asm -----
; 2067 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1417]_fi_s(, (unsigned int)tmp);
;--- end asm ---
	ldb	3,s	;, D.3719
	ldx	#LC103	;,
	jsr	__fi_s
;----- asm -----
; 2069 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1418]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1419]return;
;--- end asm ---
L242:
	leas	16,s	;,,
	puls	y,u,pc	;
LC104:
	.ascii	"YOU GAINED % EXPERIENCE POINTS\0"
LC105:
	.ascii	"YOU LOST % EXPERIENCE POINTS\0"
	.globl	_randomXP
_randomXP:
	leas	-16,s	;,,
;----- asm -----
; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1433]ltmp = (signed long int) ( ul(randmax(cz)+1)*ul(500));
;--- end asm ---
	ldb	_cz	;, cz
	jsr	_RandMax
	incb	; D.3728
	clra		;zero_extendqihi: R:b -> R:d	; D.3728,
	std	10,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	std	8,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	subd	8,s	;subhi: R:d -= 8,s	; tmp35,
	addd	10,s; addhi3,3	; tmp36,
	aslb	;
	rola	;
	aslb	;
	rola	;
	std	_ltmp	; tmp36, ltmp
;----- asm -----
; 2088 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1434]if (randmax(2) == 1)
;--- end asm ---
	ldb	#2	;,
	jsr	_RandMax
	cmpb	#1	;cmpqi:	; D.3733,
	bne	L248	;
;----- asm -----
; 2092 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1437]_fl_s(,  ul(ltmp));
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC104	;,
	jsr	__fl_s
;----- asm -----
; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1438]ex += ull(ltmp);
;--- end asm ---
	ldd	_ltmp	;, ltmp
	std	8,s	;,
	tfr	a,b	;,
	sex		;extendqihi2: R:b -> R:d	;,
	rolb	;
	rolb	;
	andb	#1	;,
	negb	;
	std	6,s	;,
	ldd	_ex+2	;, ex
	addd	8,s	;,
	std	_ex+2	;, ex
	ldd	_ex	;, ex
	adcb	7,s	;
	adca	6,s	;
	std	_ex	;, ex
	leas	2,s	;,,
	lbra	L249	;
L248:
;----- asm -----
; 2100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1443]_fl_s(, ul(ltmp));
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC105	;,
	jsr	__fl_s
;----- asm -----
; 2102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1444]if (ull(lltmp) > ex) ex = 0;
;--- end asm ---
	ldd	_ex	;, ex
	std	14,s	;, ex.541
	ldx	_ex+2	;, ex
	stx	16,s	;, ex.541
	leas	2,s	;,,
	ldd	12,s	;, ex.541
	cmpd	_lltmp	;cmphi:(R)	;, lltmp
	blo	L253	;
	bne	L250	;
	ldd	14,s	;, ex.541
	cmpd	_lltmp+2	;cmphi:(R)	;, lltmp
	bhs	L250	;
L253:
	ldd	#0	;,
	std	_ex	;, ex
	std	_ex+2	;, ex
	bra	L249	;
L250:
	ldx	_ltmp	;, ltmp
	stx	2,s	;,
	tfr	x,d	;,
	tfr	a,b	;,
	sex		;extendqihi2: R:b -> R:d	;,
	rolb	;
	rolb	;
	andb	#1	;,
	negb	;
	std	,s	;,
	ldd	14,s	;, ex.541
	subd	2,s	;,
	std	_ex+2	;, ex
	ldd	12,s	;, ex.541
	sbcb	1,s	;
	sbca	,s	;
	std	_ex	;, ex
L249:
;----- asm -----
; 2107 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1448]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2109 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1449]checkxp();
;--- end asm ---
	jsr	_checkXP
	leas	16,s	;,,
	rts
	.globl	_clearMap
_clearMap:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1454]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	clr	3,s	; yy
L256:
;----- asm -----
; 2118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1456]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	3,s	;, yy
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	ldu	#_screen	;,
	leax	d,u	; ivtmp.557, tmp39,
	clr	2,s	; xx
L255:
;----- asm -----
; 2121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1458]screen[yy][xx] = 0xffff;
;--- end asm ---
	ldd	#-1	;,
	std	,x++	;, screen
	inc	2,s	; xx
	ldb	2,s	;, xx
	cmpb	#4	;cmpqi:	;,
	bne	L255	;
	inc	3,s	; yy
	ldb	3,s	;, yy
	cmpb	#4	;cmpqi:	;,
	bne	L256	;
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_initVars
_initVars:
	pshs	u	;
	leas	-3,s	;,,
;----- asm -----
; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1465]initfp();
;--- end asm ---
	ldb	#1	;,
	jsr	_subBank0
;----- asm -----
; 2131 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1466]initstring();
;--- end asm ---
	jsr	_initString
;----- asm -----
; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1467]lastx=0;
;--- end asm ---
	clr	_lastX	; lastX
;----- asm -----
; 2135 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1468]lasty=0;
;--- end asm ---
	clr	_lastY	; lastY
;----- asm -----
; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1469]clearmap();
; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1454]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	clr	2,s	; yy
L262:
;----- asm -----
; 2118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1456]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	2,s	;, yy
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	ldu	#_screen	;,
	leax	d,u	; ivtmp.579, tmp37,
	clrb	; xx
L261:
;----- asm -----
; 2121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1458]screen[yy][xx] = 0xffff;
;--- end asm ---
	ldu	#-1	; tmp38,
	stu	,x++	; tmp38, screen
	incb	; xx
	cmpb	#4	;cmpqi:	; xx,
	bne	L261	;
	inc	2,s	; yy
	ldb	2,s	;, yy
	cmpb	#4	;cmpqi:	;,
	bne	L262	;
;----- asm -----
; 2139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1470]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1471]timer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_timer	;, timer
;----- asm -----
; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1472]localtimer = action_time;
;--- end asm ---
	stb	_localTimer	;, localTimer
;----- asm -----
; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1473]l = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_l	;, l
;----- asm -----
; 2148 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1475]tmp_hp = -1;
;--- end asm ---
	stu	_tmp_hp	; tmp38, tmp_hp
;----- asm -----
; 2150 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1476]above = 0;
;--- end asm ---
	clr	_above	; above
;----- asm -----
; 2152 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1477]inelevator = 0;
;--- end asm ---
	clr	_inElevator	; inElevator
;----- asm -----
; 2154 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1478]elevatory = 0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1479]lightchange = 0;
;--- end asm ---
	clr	_lightChange	; lightChange
;----- asm -----
; 2158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1480]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 2160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1481]initsoundno = 0;
;--- end asm ---
	clr	_initSoundNo	; initSoundNo
;----- asm -----
; 2162 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1482]sfx_status_1 = 0;
;--- end asm ---
	clr	_sfx_status_1	; sfx_status_1
;----- asm -----
; 2165 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1484]printdungeon = 1;
;--- end asm ---
	stb	_printDungeon	;, printDungeon
;----- asm -----
; 2167 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1485]m = -1;
;--- end asm ---
	tfr	u,d	; tmp38,
	stb	_m	;movlsbqihi: R:d -> _m	; m,
;----- asm -----
; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1486]printenvironment = -1;
;--- end asm ---
	stb	_printEnvironment	;movlsbqihi: R:d -> _printEnvironment	; printEnvironment,
;----- asm -----
; 2171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1487]printcharacter = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_printCharacter	;, printCharacter
;----- asm -----
; 2173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1488]printtreasure = -1;
;--- end asm ---
	tfr	u,d	; tmp38,
	stb	_printTreasure	;movlsbqihi: R:d -> _printTreasure	; printTreasure,
;----- asm -----
; 2176 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1490]printfeffect = 0;
;--- end asm ---
	clr	_printfEffect	; printfEffect
;----- asm -----
; 2178 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1491]effecttimer = 0;
;--- end asm ---
	clr	_effectTimer	; effectTimer
;----- asm -----
; 2180 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1492]effectoffsety = 0;
;--- end asm ---
	clr	_effectOffsetY	; effectOffsetY
;----- asm -----
; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1493]effectoffsetx = 0;
;--- end asm ---
	clr	_effectOffsetX	; effectOffsetX
	leas	3,s	;,,
	puls	u,pc	;
