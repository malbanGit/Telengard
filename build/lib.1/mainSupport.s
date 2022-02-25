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
	.byte	32,32,32,83,84,65,84,83
	.byte	32,62,62,-128,0
LC1:
	.ascii	"%: %\0"
LC2:
	.ascii	"DUNGEON: %\0"
LC3:
	.ascii	"HP: %/%\0"
LC4:
	.byte	60,60,32,86,65,82,83,32
	.byte	62,62,-128,0
LC5:
	.ascii	"LV: %\0"
LC6:
	.ascii	"SU: %/%\0"
LC7:
	.ascii	"XP: %\0"
LC8:
	.ascii	"GD: %\0"
LC9:
	.ascii	"TG: %\0"
LC10:
	.byte	60,60,32,77,79,68,83,32
	.byte	62,62,-128,0
LC11:
	.ascii	"% +%\0"
LC12:
	.byte	60,60,32,73,84,69,77,83
	.byte	-128,0
LC13:
	.ascii	"% :%\0"
LC14:
	.byte	45,45,62,-128,0
LC15:
	.ascii	"YOU DON'T HAVE ONE!!\0"
LC16:
	.ascii	"YOU USED %\0"
LC17:
	.ascii	"***ZAP!!***\0"
LC18:
	.ascii	"YOU FEEL BETTER!\0"
LC19:
	.ascii	"STRENGTH FLOWS THROUGH YOUR BODY\0"
	.globl	_displayStatusPage
_displayStatusPage:
	pshs	y,u	;
	leas	-10,s	;,,
;----- asm -----
; 48 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[47]unsigned int page = 0;
; 50 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[48]int itemselect = 0;
; 52 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[49]int lastdir = 0;
; 54 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[50]int lastdiry = 0;
; 56 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[51]int ret = 0;
; 60 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[54]do
;--- end asm ---
L3:
;----- asm -----
; 63 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[56]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 65 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[57]if (!buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	beq	L2	;
;----- asm -----
; 67 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[58]} while (1);
;--- end asm ---
	bra	L3	;
L2:
;----- asm -----
; 70 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[60]do
;--- end asm ---
	clr	3,s	; page
	clr	4,s	; itemSelect
	clr	5,s	; lastDir
	clr	6,s	; lastDirY
L25:
;----- asm -----
; 73 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[62]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 75 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[63]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 77 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[64]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 79 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[65]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 81 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[66]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 84 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[68]if ((vec_joy_1_x > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	9,s	;, lastDir.177
	ble	L4	;
	tst	5,s	; lastDir
	bne	L4	;
	ldb	3,s	;, page
	cmpb	#2	;cmpqi:	;,
	bhi	L4	;
	incb	;
	stb	3,s	;, page
L4:
;----- asm -----
; 87 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[70]if ((vec_joy_1_x < 0) && (!lastdir))
;--- end asm ---
	tst	9,s	; lastDir.177
	bge	L5	;
	tst	5,s	; lastDir
	bne	L5	;
	tst	3,s	; page
	beq	L5	;
	dec	3,s	; page
L5:
;----- asm -----
; 90 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[72]lastdir = vec_joy_1_x;
; 92 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[73]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 95 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[75]int y=0x78;
; 97 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[76]if (page == 0)
;--- end asm ---
	ldb	#120	;,
	stb	,s	;, y
	tst	3,s	; page
	lbne	L7	;
;----- asm -----
; 100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[78]print_str_d(y,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC0	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[79]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[80]y = 0x50;
; 106 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[81]for (int i=0; i<6;i++)
;--- end asm ---
	ldy	#0	; ivtmp.165,
	leas	1,s	;,,
L8:
;----- asm -----
; 109 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[83]_fsi_s( , stats[i], s[i]);
;--- end asm ---
	tfr	y,d	; ivtmp.165,
	aslb	;
	rola	;
	tfr	d,x	;, tmp173
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldb	_s,y	;, s
	ldx	#LC1	;,
	jsr	__fsi_s
;----- asm -----
; 111 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[84]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	tfr	y,d	; ivtmp.165,
	lda	#-10	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp176
; ORG>	tfr	d,x	;, tmp176
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp176, tmp178
	addb	#80	; tmp178,
	pshs	b	; tmp178
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 113 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[85]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[86]y -= 10;
;--- end asm ---
	leay	1,y	; ivtmp.165,, ivtmp.165
	leas	3,s	;,,
	cmpy	#6	;cmphi:	; ivtmp.165,
	bne	L8	;
;----- asm -----
; 118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[88]y -= 10;
; 120 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[89]_fi_s( , cz);
;--- end asm ---
	ldb	_cz	;, cz
	ldx	#LC2	;,
	jsr	__fi_s
;----- asm -----
; 122 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[90]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#10	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 124 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[91]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 127 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[93]y -= 10;
; 129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[94]_fl_l_s( , (unsigned long int)ch, (unsigned long int)hp);
;--- end asm ---
	ldx	_hp	;, hp
	stx	,--s	;,
	ldu	_ch	;, ch
	stu	,--s	;,
	ldx	#LC3	;,
	jsr	__fl_l_s
;----- asm -----
; 131 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[95]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	clr	,-s	;
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 133 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[96]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	clr	6,s	; y
	leas	6,s	;,,
L7:
;----- asm -----
; 137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[99]if (page == 1)
;--- end asm ---
	ldb	3,s	;, page
	cmpb	#1	;cmpqi:	;,
	lbne	L9	;
;----- asm -----
; 140 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[101]print_str_d(y,-0x20, );
;--- end asm ---
	ldb	,s	;, y
	pshs	b	;
	ldx	#LC4	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 142 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[102]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[103]y = 0x50;
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[105]_fi_s( , lv);
;--- end asm ---
	ldb	_lv	;, lv
	ldx	#LC5	;,
	jsr	__fi_s
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[106]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[107]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 155 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[110]y -= 10;
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[111]_fl_l_s( , cs, su);
;--- end asm ---
	ldx	_su	;, su
	stx	,--s	;,
	ldu	_cs	;, cs
	stu	,--s	;,
	ldx	#LC6	;,
	jsr	__fl_l_s
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[112]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#70	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 161 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[113]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[115]y -= 10;
; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[116]_fll_s( , ex);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_ex	;, ex
	stx	,s	;,
	ldu	_ex+2	;, ex
	stu	2,s	;,
	ldx	#LC7	;,
	jsr	__fll_s
;----- asm -----
; 168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[117]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	leas	11,s	;,,
	ldb	#60	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 170 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[118]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[120]y -= 10;
; 175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[121]_fll_s( , gd);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_gd	;, gd
	stx	,s	;,
	ldu	_gd+2	;, gd
	stu	2,s	;,
	ldx	#LC8	;,
	jsr	__fll_s
;----- asm -----
; 177 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[122]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#50	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[123]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[125]y -= 10;
; 184 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[126]_fll_s( , tg);
;--- end asm ---
	leas	-4,s	;,,
	ldx	_tg	;, tg
	stx	,s	;,
	ldu	_tg+2	;, tg
	stu	2,s	;,
	ldx	#LC9	;,
	jsr	__fll_s
;----- asm -----
; 186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[127]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	leas	10,s	;,,
	ldb	#40	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[128]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
L9:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[131]if (page == 2)
;--- end asm ---
	ldb	3,s	;, page
	cmpb	#2	;cmpqi:	;,
	lbne	L10	;
;----- asm -----
; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[133]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC10	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[134]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[135]y = 0x50;
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[136]for (int i=0; i<7;i++)
;--- end asm ---
	ldb	#80	;,
	stb	9,s	;, y.176
	ldy	#0	; ivtmp.156,
	leas	1,s	;,,
L12:
;----- asm -----
; 204 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[138]if (inventory[i]<=0) continue;
;--- end asm ---
	ldb	_inventory,y	;, inventory
	stb	,s	;, D.3315
	beq	L11	;
;----- asm -----
; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[139]_fsi_s( , items[i], inventory[i]);
;--- end asm ---
	tfr	y,d	; ivtmp.156,
	aslb	;
	rola	;
	tfr	d,x	;, tmp190
	ldx	_items,x	;, items
	stx	,--s	;,
	ldb	2,s	;, D.3315
	ldx	#LC11	;,
	jsr	__fsi_s
;----- asm -----
; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[140]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	ldb	10,s	;, y.176
	pshs	b	;
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[141]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[142]y -= 10;
;--- end asm ---
	ldb	11,s	;, y.176
	addb	#-10	;,
	stb	11,s	;, y.176
	leas	3,s	;,,
L11:
	leay	1,y	; ivtmp.156,, ivtmp.156
	cmpy	#7	;cmphi:	; ivtmp.156,
	lbne	L12	;
L10:
;----- asm -----
; 217 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[146]if (page == 3)
;--- end asm ---
	ldb	3,s	;, page
	cmpb	#3	;cmpqi:	;,
	lbne	L13	;
;----- asm -----
; 220 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[148]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC12	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 222 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[149]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[150]y = 0x50;
; 227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[152]for (int i=7; i<10;i++)
;--- end asm ---
	ldy	#0	; ivtmp.140,
	leas	1,s	;,,
L14:
;----- asm -----
; 230 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[154]_fsi_s( , items[i], inventory[i]);
;--- end asm ---
	tfr	y,d	; ivtmp.140,
	aslb	;
	rola	;
	tfr	d,x	;, tmp194
	ldx	_items+14,x	;, items
	stx	,--s	;,
	ldb	_inventory+7,y	;, inventory
	ldx	#LC13	;,
	jsr	__fsi_s
;----- asm -----
; 232 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[155]print_str_d(y,-0x20, stringbuffer40);
;--- end asm ---
	tfr	y,d	; ivtmp.140,
	lda	#-10	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp197
; ORG>	tfr	d,x	;, tmp197
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp197, tmp199
	addb	#80	; tmp199,
	pshs	b	; tmp199
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[156]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[157]y -= 10;
;--- end asm ---
	leay	1,y	; ivtmp.140,, ivtmp.140
	leas	3,s	;,,
	cmpy	#3	;cmphi:	; ivtmp.140,
	bne	L14	;
;----- asm -----
; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[160]if ((vec_joy_1_y > 0) && (!lastdiry))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.17, Vec_Joy_1_Y
	ble	L15	;
	tst	6,s	; lastDirY
	bne	L15	;
	tst	4,s	; itemSelect
	beq	L15	;
	dec	4,s	; itemSelect
L15:
;----- asm -----
; 243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[162]if ((vec_joy_1_y < 0) && (!lastdiry))
;--- end asm ---
	tstb	; Vec_Joy_1_Y.17
	bge	L16	;
	tst	6,s	; lastDirY
	bne	L16	;
	ldb	4,s	;, itemSelect
	cmpb	#1	;cmpqi:	;,
	bgt	L16	;
	incb	;
	stb	4,s	;, itemSelect
L16:
;----- asm -----
; 247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[165]print_str_d(0x50-10*itemselect,-0x65, );
;--- end asm ---
	ldb	4,s	;, itemSelect
	lda	#-10	;mulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp200
; ORG>	tfr	d,x	;, tmp200
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp200, tmp202
	addb	#80	; tmp202,
	pshs	b	; tmp202
	ldx	#LC14	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 249 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[166]lastdiry = vec_joy_1_y;
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	7,s	;, lastDirY
;----- asm -----
; 252 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[168]if (buttons_pressed())
;--- end asm ---
	leas	1,s	;,,
	tst	_Vec_Buttons	; Vec_Buttons
	lbeq	L13	;
;----- asm -----
; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[170]if (inventory[itemselect+7]<=0)
;--- end asm ---
	ldb	4,s	;, itemSelect
	addb	#7	;,
	stb	4,s	;, itemSelect
	sex		;extendqihi2: R:b -> R:d	;,
	std	1,s	;,
	ldb	4,s	;, itemSelect
	addb	#-7	;,
	stb	4,s	;, itemSelect
	ldu	1,s	;,
	leax	_inventory,u	; tmp205,,
	ldb	,x	; D.3325, inventory
	bne	L17	;
;----- asm -----
; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[174]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[175]printmessage();
;--- end asm ---
	ldx	#LC15	;,
	jsr	_printMessage
	clr	7,s	; ret
	lbra	L18	;
L17:
;----- asm -----
; 267 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[179]inventory[itemselect+7]--;
;--- end asm ---
	decb	; D.3325
	stb	,x	; D.3325, inventory
;----- asm -----
; 269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[180]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[181]_fs( , items[itemselect+7]);
;--- end asm ---
	ldd	1,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp211
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC16	;,
	jsr	__fs
;----- asm -----
; 273 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[182]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 275 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[183]if (itemselect == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	4,s	; itemSelect
	bne	L19	;
;----- asm -----
; 284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[191]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 286 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[192]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 288 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[193]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[194]printmessage();
;--- end asm ---
	ldx	#LC17	;,
	jsr	_printMessage
;----- asm -----
; 292 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[195]ret = 1;
; 294 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[196]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
	ldb	#1	;,
	stb	7,s	;, ret
	lbra	L20	;
L19:
	ldb	4,s	;, itemSelect
	cmpb	#1	;cmpqi:	;,
	bne	L21	;
;----- asm -----
; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[204]printmessage();
;--- end asm ---
	ldx	#LC18	;,
	jsr	_printMessage
;----- asm -----
; 306 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[206]ch = ch +randmax(20)+1;
;--- end asm ---
	ldy	_ch	; ch.178, ch
	ldb	#20	;,
	jsr	_RandMax
	leax	1,y	; tmp214,, ch.178
	clra		;zero_extendqihi: R:b -> R:d	; D.3328, D.3328
	pshs	x	;addhi: R:d += R:x	; tmp214, ch.18
	addd	,s++	; ch.18
	std	_ch	; ch.18, ch
;----- asm -----
; 308 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[207]if (ch>hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.179, hp
	pshs	x	;cmphi: R:x with R:d	; hp.179, ch.18
	cmpd	,s++	;cmphi:	; ch.18
	ble	L30	;
L22:
	stx	_ch	; hp.179, ch
	bra	L30	;
L21:
;----- asm -----
; 317 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[215]printmessage();
;--- end asm ---
	ldx	#LC19	;,
	jsr	_printMessage
;----- asm -----
; 319 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[216]sf[strength] = randmax(20)+11;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	#11	; D.3332,
	stb	_sf	; D.3332, sf
L30:
	clr	7,s	; ret
L20:
;----- asm -----
; 323 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[219]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
L18:
;----- asm -----
; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[221]break;
;--- end asm ---
	bra	L23	;
L13:
;----- asm -----
; 330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[224]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L24	;
;----- asm -----
; 332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[226]while (1);
;--- end asm ---
	ldb	9,s	;, lastDir.177
	stb	5,s	;, lastDir
	lbra	L25	;
L24:
	clr	7,s	; ret
L23:
;----- asm -----
; 335 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[227]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[228]return ret;
;--- end asm ---
	ldb	7,s	;, ret
	leas	10,s	;,,
	puls	y,u,pc	;
	.globl	_displayRound
_displayRound:
;----- asm -----
; 344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[234]#if do_original_wr == 1
; 350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[237]wr2();
;--- end asm ---
	jsr	_wr2
;----- asm -----
; 352 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[238]#endif
; 355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[240]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[241]joy_digital2();
;--- end asm ---
	jsr	_Joy_Digital2
;----- asm -----
; 359 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[242]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[243]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[245]if (lightchange>0) intensity_a((unsigned int)lightchange);
;--- end asm ---
	ldb	_lightChange	; lightChange.19, lightChange
	bgt	L36	;
L32:
;----- asm -----
; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[248]if (sf[light]>0)
;--- end asm ---
	ldb	#79	;,
	tst	_sf+2	; sf
	beq	L36	;
	jsr	___Intensity_7F
	bra	L33	;
L36:
	jsr	__Intensity_a
L33:
;----- asm -----
; 374 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[253]drawmap();
;--- end asm ---
	ldb	#3	;,
	jsr	_subBank0
;----- asm -----
; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[254]displaymessages();
;--- end asm ---
	jsr	_displayMessages
	rts
	.globl	_elevator
_elevator:
	leas	-6,s	;,,
;----- asm -----
; 382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[259]inelevator = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_inElevator	;, inElevator
;----- asm -----
; 384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[260]elevatory=0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[261]vec_music_wk_7 = 0x3e;
;--- end asm ---
	ldb	#62	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[262]vec_xxx_04 = 0xf;
;--- end asm ---
	ldb	#15	;,
	stb	_Vec_XXX_04	;, Vec_XXX_04
;----- asm -----
; 391 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[264]signed long int freq = 5000;
;--- end asm ---
	ldx	#5000	;,
	stx	4,s	;, freq
;----- asm -----
; 394 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[266]while (inelevator)
;--- end asm ---
	bra	L38	;
L39:
;----- asm -----
; 397 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[268]freq = freq-5;
;--- end asm ---
	ldd	4,s	;, freq
	addd	#-5; addhi3,3	;,
	std	,s	;, freq.22
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	stb	3,s	;,
	ldx	,s	;, freq.22
	stx	4,s	;, freq
;----- asm -----
; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[269]vec_xxx_08 = (signed int) (freq&0xff);
;--- end asm ---
	tfr	x,d	;,
	stb	_Vec_XXX_08	;movlsbqihi: R:d -> _Vec_XXX_08	; Vec_XXX_08,
;----- asm -----
; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[270]vec_music_wk_1 = *((signed int*) &freq);
;--- end asm ---
	ldb	3,s	;,
	stb	_Vec_Music_Wk_1	;, Vec_Music_Wk_1
;----- asm -----
; 403 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[271]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[272]freq+50;
;--- end asm ---
L38:
	tst	_inElevator	; inElevator
	bne	L39	;
;----- asm -----
; 408 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[274]vec_music_wk_7 = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 410 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[275]vec_xxx_04 = 0;
;--- end asm ---
	clr	_Vec_XXX_04	; Vec_XXX_04
	leas	6,s	;,,
	rts
	.globl	_pause
_pause:
	pshs	b	;
;----- asm -----
; 418 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[282]while(1)
;--- end asm ---
L44:
;----- asm -----
; 421 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[284]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 423 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[285]if (vec_joy_1_x != 0) return;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L45	;
;----- asm -----
; 425 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[286]if (vec_joy_1_y != 0) return;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	bne	L45	;
;----- asm -----
; 427 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[287]if (buttons_pressed() != 0) return;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L45	;
;----- asm -----
; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[291]if (t == 0)
;--- end asm ---
	tst	,s	; t
	bne	L43	;
;----- asm -----
; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[293]return;
;--- end asm ---
	bra	L45	;
L43:
;----- asm -----
; 438 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[295]t--;
;--- end asm ---
	dec	,s	; t
	bra	L44	;
L45:
	leas	1,s	;,,
	rts
	.globl	_initBox
_initBox:
;----- asm -----
; 446 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[302]for (int i=0; i<4;i++)
; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[304]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box	; temp.215, box
;----- asm -----
; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[304]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+1	; temp.217, box
;----- asm -----
; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[304]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+2	; temp.219, box
;----- asm -----
; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[304]box[i] = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_box+3	; D.3367, box
	rts
	.globl	_monsterOnStack
_monsterOnStack:
	pshs	y,u	;
	pshs	b	;
	leay	,x	; mh, mh
;----- asm -----
; 460 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[314]for (int i=18;i>=0;i--)
;--- end asm ---
	ldu	#0	; ivtmp.234,
L49:
;----- asm -----
; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[316]stackm[i+1] = stackm[i];
;--- end asm ---
	ldb	_stackM+18,u	;, stackM
	stb	_stackM+19,u	;, stackM
;----- asm -----
; 465 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[317]stackml[i+1] = stackml[i];
;--- end asm ---
	ldb	_stackML+18,u	;, stackML
	stb	_stackML+19,u	;, stackML
;----- asm -----
; 467 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[318]stackmh[i+1] = stackmh[i];
;--- end asm ---
	tfr	u,d	; ivtmp.234,
	aslb	;
	rola	;
	tfr	d,x	;, D.4295
	ldd	_stackMH+36,x	;, stackMH
	std	_stackMH+38,x	;, stackMH
	leau	-1,u	; ivtmp.234,, ivtmp.234
	cmpu	#-19	;cmphi:	; ivtmp.234,
	bne	L49	;
;----- asm -----
; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[323]if (m==-1)
;--- end asm ---
	ldb	,s	;, m
	cmpb	#-1	;cmpqi:	;,
	bne	L50	;
;----- asm -----
; 476 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[325]stackm[0] = -1;
;--- end asm ---
	stb	_stackM	;, stackM
;----- asm -----
; 478 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[326]stackml[0] = 0;
;--- end asm ---
	clr	_stackML	; stackML
;----- asm -----
; 480 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[327]stackmh[0] = 0;
;--- end asm ---
	ldd	#0	;,
	std	_stackMH	;, stackMH
;----- asm -----
; 482 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[328]return;
;--- end asm ---
	bra	L52	;
L50:
;----- asm -----
; 485 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[330]stackm[0] = (signed int)m;
;--- end asm ---
	ldb	,s	;, m
	stb	_stackM	;, stackM
;----- asm -----
; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[331]stackml[0] = ml;
;--- end asm ---
	ldb	7,s	;, ml
	stb	_stackML	;, stackML
;----- asm -----
; 489 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[332]stackmh[0] = mh;
;--- end asm ---
	sty	_stackMH	; mh, stackMH
;----- asm -----
; 491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[333]m=-1;
; 493 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[334]ml = 0;
; 495 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[335]mh = 0;
;--- end asm ---
L52:
	leas	1,s	;,,
	puls	y,u,pc	;
	.globl	_monsterOnStackAdvance
_monsterOnStackAdvance:
	pshs	y,u	;
	leas	-1,s	;,,
;----- asm -----
; 503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[342]int ret = 0;
; 507 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[345]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 509 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[346]if (stackm[0] != -1)
;--- end asm ---
	ldb	_stackM	; m.31, stackM
	cmpb	#-1	;cmpqi:	; m.31,
	bne	L55	;
	clr	,s	; ret
	bra	L56	;
L55:
;----- asm -----
; 512 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[348]ret = 1;
; 516 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[351]m = (signed int) stackm[0];
;--- end asm ---
	stb	_m	; m.31, m
;----- asm -----
; 518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[352]ml = stackml[0];
;--- end asm ---
	ldb	_stackML	;, stackML
	stb	_ml	;, ml
;----- asm -----
; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[353]mh = stackmh[0];
;--- end asm ---
	ldx	_stackMH	;, stackMH
	stx	_mh	;, mh
	ldb	#1	;,
	stb	,s	;, ret
L56:
;----- asm -----
; 525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[357]for (int i=0; i<19;i++)
;--- end asm ---
	ldu	#0	; ivtmp.251,
L57:
;----- asm -----
; 528 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[359]stackm[i] = stackm[i+1];
;--- end asm ---
	ldb	_stackM+1,u	;, stackM
	stb	_stackM,u	;, stackM
;----- asm -----
; 530 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[360]stackml[i] = stackml[i+1];
;--- end asm ---
	ldb	_stackML+1,u	;, stackML
	stb	_stackML,u	;, stackML
;----- asm -----
; 532 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[361]stackmh[i] = stackmh[i+1];
;--- end asm ---
	tfr	u,d	; ivtmp.251,
	aslb	;
	rola	;
	tfr	d,x	;, D.4319
	ldy	_stackMH+2,x	;, stackMH
	sty	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.251,, ivtmp.251
	cmpu	#19	;cmphi:	; ivtmp.251,
	bne	L57	;
;----- asm -----
; 535 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[363]stackm[19] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM+19	;, stackM
;----- asm -----
; 537 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[364]stackml[19] = 0;
;--- end asm ---
	clr	_stackML+19	; stackML
;----- asm -----
; 539 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[365]stackmh[19] = 0;
;--- end asm ---
	ldd	#0	;,
	std	_stackMH+38	;, stackMH
;----- asm -----
; 542 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[367]return ret;
;--- end asm ---
	ldb	,s	;, ret
	leas	1,s	;,,
	puls	y,u,pc	;
	.globl	_monsterOnStackEvadeFurther
_monsterOnStackEvadeFurther:
;----- asm -----
; 548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[372]monsteronstack(-1, 0, 0);
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
; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[380]for (int i=0;i<20;i++)
;--- end asm ---
	ldu	#0	; ivtmp.278,
L63:
;----- asm -----
; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[382]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,u	;, stackM
;----- asm -----
; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[383]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,u	; stackML
;----- asm -----
; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[384]stackmh[i] = 0;
;--- end asm ---
	tfr	u,d	; ivtmp.278,
	aslb	;
	rola	;
	tfr	d,x	;, tmp43
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.278,, ivtmp.278
	cmpu	#20	;cmphi:	; ivtmp.278,
	bne	L63	;
	puls	u,pc	;
LC20:
	.byte	60,52,62,32,84,79,32,85
	.byte	83,69,32,83,84,65,84,83
	.byte	-128,0
LC21:
	.byte	89,79,85,32,68,69,83,67
	.byte	69,78,68,32,73,78,84,79
	.byte	32,84,72,69,-128,0
LC22:
	.byte	68,69,80,84,72,32,79,70
	.byte	32,84,69,76,69,78,71,65
	.byte	82,68,-128,0
LC23:
	.byte	66,69,87,65,82,69,46,46
	.byte	46,-128,0
	.globl	_createCharacter
_createCharacter:
	pshs	u	;
	leas	-5,s	;,,
;----- asm -----
; 571 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[390]int pressed;
; 573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[391]rollagain:
;--- end asm ---
L83:
;----- asm -----
; 575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[392]for (int i=0; i<6;i++)
;--- end asm ---
	ldu	#_s	; ivtmp.331,
L67:
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[394]s[i] = randmax(6)+1 + randmax(6)+1 + randmax(6)+1;
;--- end asm ---
	ldb	#6	;,
	jsr	_RandMax
	stb	1,s	;, D.3430
	ldb	#6	;,
	jsr	_RandMax
	stb	2,s	;, D.3431
	ldb	#6	;,
	jsr	_RandMax
	stb	,s	;, D.3433
	ldb	1,s	;, D.3430
	addb	2,s	;, D.3431
	addb	#3	;,
	stb	1,s	;, D.3430
	ldb	,s	;, D.3433
	addb	1,s	;, D.3430
	stb	,u+	;, s
	cmpu	#_s+6	;cmphi:	; ivtmp.331,
	bne	L67	;
;----- asm -----
; 581 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[396]pressed = 0;
; 583 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[397]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 585 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[398]#ifndef no_title
; 587 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[399]do
;--- end asm ---
	clr	3,s	; pressed
L72:
;----- asm -----
; 590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[401]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.38, localTimer
;----- asm -----
; 592 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[402]if (localtimer == 0) goto rollagain;
;--- end asm ---
	tstb	; localTimer.38
	lbeq	L83	;
;----- asm -----
; 594 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[403]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 596 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[404]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[405]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[406]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[407]check_joysticks();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 605 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[409]if (button_1_4_pressed()) break;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	,s	;, D.4128
	bitb	#8	;,
	lbne	L69	;
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[410]if (buttons_pressed()) pressed = 1;
;--- end asm ---
	tstb	;
	beq	L70	;
	ldb	#1	;,
	stb	3,s	;, pressed
	bra	L71	;
L70:
	tst	3,s	; pressed
	lbne	L83	;
L71:
;----- asm -----
; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[413]dp_via_t1_cnt_lo = text_scale;
;--- end asm ---
	ldb	#68	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[414]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	addb	#44	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 615 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[415]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 617 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[416]print();
;--- end asm ---
	ldb	__YC	; _YC.40, _YC
	addb	#-10	; _YC.40,
	stb	__YC	; _YC.40, _YC
	pshs	b	; _YC.40
	ldx	#LC20	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[417]addline;
;--- end asm ---
	ldb	__YC	;, _YC
	addb	#-10	;,
	stb	__YC	;, _YC
;----- asm -----
; 622 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[419]for (int i=0; i<6;i++) printfsi( , stats[i], s[i]);
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
; 624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[421]while (1);
;--- end asm ---
	leas	4,s	;,,
	lbra	L72	;
L69:
;----- asm -----
; 627 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[422]#endif
; 629 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[423]hp = s[3];
;--- end asm ---
	ldb	_s+3	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	_hp	; hp.43, hp
;----- asm -----
; 631 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[424]ch = (signed long int) hp;
;--- end asm ---
	std	_ch	; hp.43, ch
;----- asm -----
; 633 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[425]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 635 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[426]tg = 0;
;--- end asm ---
	std	_tg	;, tg
	std	_tg+2	;, tg
;----- asm -----
; 637 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[427]lv = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_lv	;, lv
;----- asm -----
; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[429]cz = 1;
;--- end asm ---
	stb	_cz	;, cz
;----- asm -----
; 642 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[430]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 644 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[431]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 648 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[434]for (int i=0; i<10;i++)
;--- end asm ---
	ldx	#0	; ivtmp.318,
L73:
;----- asm -----
; 651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[436]inventory[i] = 0;
;--- end asm ---
	clr	_inventory,x	; inventory
;----- asm -----
; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[437]sf[i] = 0;
;--- end asm ---
	clr	_sf,x	; sf
	leax	1,x	; ivtmp.318,, ivtmp.318
	cmpx	#10	;cmphi:	; ivtmp.318,
	bne	L73	;
;----- asm -----
; 656 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[439]sf[10] = 0;
;--- end asm ---
	clr	_sf+10	; sf
;----- asm -----
; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[442]initbox();
;--- end asm ---
	jsr	_initBox
;----- asm -----
; 664 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[445]ex = 0;
;--- end asm ---
	ldd	#0	;,
	std	_ex	;, ex
	std	_ex+2	;, ex
;----- asm -----
; 666 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[446]su = 1;
;--- end asm ---
	ldx	#1	; tmp110,
	stx	_su	; tmp110, su
;----- asm -----
; 668 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[447]cs = 1;
;--- end asm ---
	stx	_cs	; tmp110, cs
;----- asm -----
; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[453]clearmonsterstack();
; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[380]for (int i=0;i<20;i++)
;--- end asm ---
	ldu	#0	; ivtmp.308,
L74:
;----- asm -----
; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[382]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,u	;, stackM
;----- asm -----
; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[383]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,u	; stackML
;----- asm -----
; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[384]stackmh[i] = 0;
;--- end asm ---
	tfr	u,d	; ivtmp.308,
	aslb	;
	rola	;
	tfr	d,x	;, tmp114
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leau	1,u	; ivtmp.308,, ivtmp.308
	cmpu	#20	;cmphi:	; ivtmp.308,
	bne	L74	;
;----- asm -----
; 677 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[454]#ifndef no_title
; 679 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[455]unsigned int i=0;
; 681 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[456]do
;--- end asm ---
	clr	4,s	; i
L75:
;----- asm -----
; 684 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[458]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[459]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[460]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[462]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	ldb	#112	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 693 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[463]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 695 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[464]print();
;--- end asm ---
	ldb	__YC	; _YC.335, _YC
	addb	#-10	; _YC.335,
	stb	__YC	; _YC.335, _YC
	pshs	b	; _YC.335
	ldx	#LC21	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 697 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[465]print();
;--- end asm ---
	ldb	__YC	; _YC.338, _YC
	addb	#-10	; _YC.338,
	stb	__YC	; _YC.338, _YC
	pshs	b	; _YC.338
	ldx	#LC22	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[466]addline;
; 701 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[467]print();
;--- end asm ---
	ldb	__YC	; _YC.342, _YC
	addb	#-20	; _YC.342,
	stb	__YC	; _YC.342, _YC
	pshs	b	; _YC.342
	ldx	#LC23	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[470]while (i++<160);
;--- end asm ---
	inc	7,s	; i
	leas	3,s	;,,
	ldb	4,s	;, i
	cmpb	#-95	;cmpqi:	;,
	lbne	L75	;
	leas	5,s	;,,
	puls	u,pc	;
LC24:
	.byte	76,69,86,69,76,32,37,-128
	.byte	0
LC25:
	.ascii	"ABORT\0"
LC26:
	.ascii	"CAST\0"
LC27:
	.ascii	"YOU DON'T HAVE THAT LEVEL SPELLS!\0"
LC28:
	.ascii	"YOU DON'T HAVE ENOUGH SPELL UNITS!\0"
LC29:
	.ascii	"CAST: %\0"
LC30:
	.ascii	"UNDEAD DON'T SLEEP!\0"
LC31:
	.ascii	"THE % ISN'T SLEEPY!\0"
LC32:
	.ascii	"THE % IS SLEEPING <4> TO KILL:\0"
LC33:
	.ascii	"EVADE\0"
LC34:
	.ascii	"IT WOKE UP!\0"
LC35:
	.ascii	"YOU FEEL BETTER\0"
LC36:
	.ascii	"THE % IS INSULTED\0"
LC37:
	.ascii	"AT BEING CALLED UNDEAD\0"
LC38:
	.ascii	"THE % LISTENS WITH DEAF EARS\0"
LC39:
	.ascii	"IT RUNS IN FEAR!!\0"
LC40:
	.ascii	"THE % DODGES ASIDE!\0"
LC41:
	.ascii	"THE % IS WEBBED <4> TO KILL:\0"
LC42:
	.ascii	"IT BROKE FREE!\0"
LC43:
	.ascii	"THE UNDEAD IGNORES YOUR WILES!\0"
LC44:
	.ascii	"THE % RESISTS YOU!\0"
LC45:
	.ascii	"THE % IS CHARMED <4> TO KILL:\0"
LC46:
	.ascii	"ZZZZAAAPPP!!!\0"
LC47:
	.ascii	"THE % IGNORES YOU!\0"
LC48:
	.ascii	"THE % IS HELD <4> TO KILL:\0"
LC49:
	.ascii	"THE % DOESN'T BELIEVE!\0"
LC50:
	.ascii	"IT BELIEVES! .... ARRGH...\0"
LC51:
	.ascii	"NOT IN MELEE!!\0"
LC52:
	.ascii	"DIRECTION>\0"
LC53:
	.ascii	"ONLY STONE HERE...\0"
LC54:
	.ascii	"EAST\0"
LC55:
	.ascii	"WEST\0"
LC56:
	.ascii	"NORTH\0"
LC57:
	.ascii	"SOUTH\0"
LC58:
	.ascii	"???\0"
LC59:
	.ascii	"POOF\0"
LC60:
	.ascii	"WHOOOOOSHH!!!\0"
LC61:
	.ascii	"THE % IS BURNING!\0"
LC62:
	.ascii	"THE % IS ISN'T AFFECTED\0"
LC63:
	.ascii	"ONE STONE STATUE....\0"
LC64:
	.ascii	"DIE!!!!!!!\0"
LC65:
	.ascii	"UNDEAD ARE ALREADY DEAD!!\0"
LC66:
	.ascii	"THE % LAUGHS!\0"
LC67:
	.ascii	"CAST TELEPORT\0"
LC68:
	.byte	84,69,76,69,80,79,82,84
	.byte	33,-128,0
LC69:
	.byte	66,85,84,84,79,78,32,84
	.byte	79,32,70,73,78,73,83,72
	.byte	-128,0
LC70:
	.byte	78,79,82,84,72,45,32,83
	.byte	79,85,84,72,43,32,58,32
	.byte	37,-128,0
LC71:
	.byte	87,69,83,84,45,32,69,65
	.byte	83,84,43,32,32,32,58,32
	.byte	37,-128,0
LC72:
	.byte	85,80,45,32,68,79,87,78
	.byte	43,32,32,32,32,32,58,32
	.byte	37,-128,0
LC73:
	.ascii	"TO FAR...TRY AGAIN\0"
LC74:
	.ascii	"ONLY STONE THERE...\0"
LC75:
	.ascii	"THE SPELL FAILS...\0"
LC76:
	.ascii	"ONLY THIN AIR...\0"
LC77:
	.ascii	"*** POOF! ***\0"
LC78:
	.ascii	"QWERTY!!!!!!\0"
LC79:
	.ascii	"THE % DOESN'T HEAR...\0"
LC80:
	.ascii	"BRRRR!!!!\0"
LC81:
	.ascii	"CAST WALL OF FIRE - WWHOOOSSH!!!\0"
LC82:
	.ascii	"A WALL OF FIRE APPEARS ABOUT YOU\0"
LC83:
	.ascii	"THE % IS GONE...\0"
LC84:
	.ascii	"THE % WALKS THROUGH!!!\0"
LC85:
	.ascii	"BLACK DEATH FOR THE % \0"
LC86:
	.ascii	"IT IS IMMUNE!\0"
LC87:
	.ascii	"THE SPELL BACKFIRES!!\0"
LC88:
	.ascii	"TIME IS FROZEN, MONSTERS CANNOT\0"
LC89:
	.ascii	"ATTACK YOU\0"
LC90:
	.ascii	"THE % DOESN'T SEE...\0"
LC91:
	.ascii	"A SCINILLATING SHIFTING WALL APPEARS\0"
LC92:
	.ascii	"YOU JUST WASTED A COMBAT SPELL!\0"
LC93:
	.ascii	"IT SUFFERS % HIT POINTS\0"
	.globl	_castSpell
_castSpell:
	pshs	y,u	;
	leas	-25,s	;,,
	stb	5,s	; inCombat, inCombat
;----- asm -----
; 728 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[492]unsigned int spelllevel = 0;
; 730 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[493]unsigned int spellselect = 0;
; 732 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[494]unsigned int availablelevel = (lv/3);
;--- end asm ---
	ldb	_lv	;, lv
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldd	#3	;,
	std	,--s	;,
	ldx	2,s	;,
	jsr	_udivhi3
	leas	2,s	;,,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp154,
	stb	14,s	;, availableLevel
;----- asm -----
; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[495]int lastdir = 0;
; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[496]do
;--- end asm ---
	clr	12,s	; spellLevel
	clr	13,s	; spellSelect
	clr	15,s	; lastDir
L98:
;----- asm -----
; 739 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[498]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[499]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[500]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[501]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[502]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 750 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[504]if ((vec_joy_1_x > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	,s	;, Vec_Joy_1_X.47
	ble	L85	;
	tst	15,s	; lastDir
	bne	L85	;
	ldb	12,s	;, spellLevel
	cmpb	#4	;cmpqi:	;,
	bhi	L85	;
	incb	;
	stb	12,s	;, spellLevel
L85:
;----- asm -----
; 753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[506]if ((vec_joy_1_x < 0) && (!lastdir))
;--- end asm ---
	tst	,s	; Vec_Joy_1_X.47
	bge	L86	;
	tst	15,s	; lastDir
	bne	L86	;
	tst	12,s	; spellLevel
	beq	L86	;
	dec	12,s	; spellLevel
L86:
;----- asm -----
; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[509]if (spelllevel <= availablelevel)
;--- end asm ---
	ldb	12,s	;, spellLevel
	cmpb	14,s	;cmpqi:	;, availableLevel
	lbhi	L87	;
;----- asm -----
; 760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[511]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 762 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[512]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.48, Vec_Joy_1_Y
	ble	L88	;
	tst	15,s	; lastDir
	bne	L88	;
	tst	13,s	; spellSelect
	beq	L88	;
	dec	13,s	; spellSelect
L88:
;----- asm -----
; 765 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[514]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tstb	; Vec_Joy_1_Y.48
	bge	L89	;
	tst	15,s	; lastDir
	bne	L89	;
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bhi	L89	;
	incb	;
	stb	13,s	;, spellSelect
L89:
;----- asm -----
; 769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[517]print_str_d(0x60-0x10*spellselect,-0x65, );
;--- end asm ---
	ldb	#6	; tmp157,
	subb	13,s	; tmp156, spellSelect
	aslb	; tmp156
	aslb	; tmp156
	aslb	; tmp156
	aslb	; tmp156
	pshs	b	; tmp156
	ldx	#LC14	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[518]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
	bra	L90	;
L87:
	jsr	___Intensity_3F
L90:
;----- asm -----
; 777 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[523]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	15,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L92	;
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
	beq	L93	;
	ldb	#1	; Vec_Joy_1_Y,
L93:
	stb	15,s	; Vec_Joy_1_Y, lastDir
L92:
;----- asm -----
; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[525]_fi_s(, (unsigned int) spelllevel+1);
;--- end asm ---
	ldb	12,s	; tmp160, spellLevel
	incb	; tmp160
	ldx	#LC24	;,
	jsr	__fi_s
;----- asm -----
; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[526]print_str_d(0x78,-0x20, stringbuffer40);
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[527]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 787 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[529]for (unsigned int i=0;i<6;i++)
;--- end asm ---
	ldb	13,s	;, spellLevel
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	1,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp163
	ldu	_spellNames,x	; D.3494, spellNames
	ldy	#0	; ivtmp.412,
	leas	1,s	;,,
L94:
;----- asm -----
; 790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[531]print_str_d(0x60-0x10*i,-0x50, spellnames[spelllevel][i]);
;--- end asm ---
	tfr	u,d	; D.3494,
	leax	d,y	; tmp165,, ivtmp.412
	tfr	y,d	;movlsbqihi: R:y -> R:b	; ivtmp.412, ivtmp.412
	aslb	; ivtmp.412
	aslb	; ivtmp.412
	aslb	; ivtmp.412
	negb	; ivtmp.412
	addb	#96	; ivtmp.412,
	pshs	b	; ivtmp.412
	ldx	,x	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[532]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leay	2,y	; ivtmp.412,, ivtmp.412
	leas	1,s	;,,
	cmpy	#12	;cmphi:	; ivtmp.412,
	bne	L94	;
;----- asm -----
; 796 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[535]if (button_1_1_pressed())
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	2,s	;, D.4140
	bitb	#1	;,
	beq	L95	;
;----- asm -----
; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[537]printmessage();
;--- end asm ---
	ldx	#LC25	;,
	jsr	_printMessage
;----- asm -----
; 801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[538]return 2;
;--- end asm ---
	lbra	L221	;
L95:
;----- asm -----
; 804 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[540]if (buttons_pressed()) break;
;--- end asm ---
	tst	2,s	; D.4140
	bne	L97	;
;----- asm -----
; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[545]while (1);
;--- end asm ---
	lbra	L98	;
L97:
;----- asm -----
; 812 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[546]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 814 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[547]printmessage();
;--- end asm ---
	ldx	#LC26	;,
	jsr	_printMessage
;----- asm -----
; 818 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[550]if (spelllevel > availablelevel)
;--- end asm ---
	ldb	12,s	;, spellLevel
	cmpb	14,s	;cmpqi:	;, availableLevel
	bls	L99	;
;----- asm -----
; 821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[552]printmessage();
;--- end asm ---
	ldx	#LC27	;,
	jsr	_printMessage
;----- asm -----
; 823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[553]return 2;
;--- end asm ---
	lbra	L221	;
L99:
;----- asm -----
; 827 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[556]if (spelllevel > cs)
;--- end asm ---
	ldb	12,s	;, spellLevel
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,y	;, D.3505
	cmpd	_cs	;cmphi:	; D.3505, cs
	bls	L100	;
;----- asm -----
; 830 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[558]printmessage();
;--- end asm ---
	ldx	#LC28	;,
	jsr	_printMessage
;----- asm -----
; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[559]return 1;
;--- end asm ---
	lbra	L218	;
L100:
;----- asm -----
; 835 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[561]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 837 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[562]_fs(, (void *)spellnames[spelllevel][spellselect]);
;--- end asm ---
	tfr	y,d	; D.3505,
	aslb	;
	rola	;
	tfr	d,x	;, tmp174
	ldb	13,s	;, spellSelect
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	ldx	_spellNames,x	;, spellNames
	leax	d,x	; tmp179, tmp178,
	ldx	,x	;,
	stx	,--s	;,
	ldx	#LC29	;,
	jsr	__fs
;----- asm -----
; 839 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[563]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 842 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[565]cs=cs-spelllevel;
;--- end asm ---
	ldd	_cs	; cs, cs
	pshs	y	;subhi: R:d -= R:y	; D.3505, tmp182
	subd	,s++	; tmp182
	std	_cs	; tmp182, cs
;----- asm -----
; 845 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[567]if (spelllevel == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	12,s	; spellLevel
	lbne	L101	;
;----- asm -----
; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[569]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	bne	L102	;
;----- asm -----
; 854 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[574]tmp = (signed int) randmax(8)+5;
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	addb	#5	; D.3512,
	stb	_tmp	; D.3512, tmp
;----- asm -----
; 856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[575]goto damagespell;
;--- end asm ---
	lbra	L103	;
L102:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	lbne	L104	;
;----- asm -----
; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[579]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 865 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[582]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L106	;
;----- asm -----
; 868 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[584]printmessage();
;--- end asm ---
	ldx	#LC30	;,
	jsr	_printMessage
;----- asm -----
; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[585]return 1;
;--- end asm ---
	lbra	L218	;
L106:
;----- asm -----
; 875 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[589]if (randmax(20)+1 > s[int] )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	incb	; D.3516
	cmpb	_s+1	;cmpqi:	; D.3516, s
	bls	L107	;
;----- asm -----
; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[591]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp187
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC31	;,
	jsr	__fs
;----- asm -----
; 880 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[592]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[593]return 1;
;--- end asm ---
	lbra	L223	;
L107:
;----- asm -----
; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[598]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp192
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC32	;,
	jsr	__fs
;----- asm -----
; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[599]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[600]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; D.3521,
	beq	L108	;
;----- asm -----
; 895 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[602]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
;----- asm -----
; 897 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[603]return 4;
;--- end asm ---
	lbra	L220	;
L108:
;----- asm -----
; 903 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[608]if (randmax(5) < 4 )
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	cmpb	#3	;cmpqi:	; D.3522,
	bhi	L109	;
;----- asm -----
; 906 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[610]return 3;
;--- end asm ---
	lbra	L166	;
L109:
;----- asm -----
; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[612]printmessage();
;--- end asm ---
	ldx	#LC34	;,
	jsr	_printMessage
;----- asm -----
; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[613]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 913 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[614]return 1;
;--- end asm ---
	lbra	L218	;
L104:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L110	;
;----- asm -----
; 922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[622]printmessage();
;--- end asm ---
	ldx	#LC35	;,
	jsr	_printMessage
;----- asm -----
; 924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[623]ch = ch + randmax(8)+1;
;--- end asm ---
	ldy	_ch	; ch.56, ch
	ldb	#8	;,
	jsr	_RandMax
	leax	1,y	; tmp195,, ch.56
	clra		;zero_extendqihi: R:b -> R:d	; D.3524, D.3524
	pshs	x	;addhi: R:d += R:x	; tmp195, ch.57
	addd	,s++	; ch.57
	std	_ch	; ch.57, ch
;----- asm -----
; 926 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[624]if (ch > hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.58, hp
	pshs	x	;cmphi: R:x with R:d	; hp.58, ch.57
	cmpd	,s++	;cmphi:	; ch.57
	ble	L111	;
	stx	_ch	; hp.58, ch
L111:
;----- asm -----
; 928 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[625]return 1;
;--- end asm ---
	lbra	L218	;
L110:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L112	;
;----- asm -----
; 938 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[634]sf[light] = randmax(11)+5;
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	addb	#5	; D.3529,
	stb	_sf+2	; D.3529, sf
;----- asm -----
; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[635]return 1;
;--- end asm ---
	lbra	L218	;
L112:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L113	;
;----- asm -----
; 947 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[641]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[645]if (un == 0)
;--- end asm ---
	tst	_un	; un
	bne	L114	;
;----- asm -----
; 955 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[647]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp200
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC36	;,
	jsr	__fs
;----- asm -----
; 957 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[648]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 959 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[649]printmessage();
;--- end asm ---
	ldx	#LC37	;,
	jsr	_printMessage
;----- asm -----
; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[650]return 1;
;--- end asm ---
L223:
	ldb	#1	; D.3503,
	lbra	L219	;
L114:
;----- asm -----
; 967 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[655]if (randmax(20) > s[wis] + lv-ml)
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	,s	;, D.3531
	ldb	_ml	;, ml
	stb	6,s	;, ml.59
	ldb	_lv	;, lv
	addb	_s+2	;, s
	subb	6,s	;, ml.59
	stb	3,s	;,
	ldb	,s	;, D.3531
	cmpb	3,s	;cmpqi:	;,
	bls	L115	;
;----- asm -----
; 970 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[657]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp208
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC38	;,
	jsr	__fs
;----- asm -----
; 972 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[658]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 974 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[659]return 1;
;--- end asm ---
	lbra	L223	;
L115:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[662]ml=(ml+1)>>1;
;--- end asm ---
	inc	6,s	; ml.59
	ldb	6,s	;, ml.59
	lsrb	;
	stb	_ml	;, ml
;----- asm -----
; 980 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[663]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 982 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[664]return 5;
;--- end asm ---
	ldb	#5	; D.3503,
	lbra	L96	;
L113:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[670]sf[protection_from_evil] = randmax(11)+5;
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	addb	#5	; D.3538,
	stb	_sf+3	; D.3538, sf
;----- asm -----
; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[671]return 1;
;--- end asm ---
	lbra	L218	;
L101:
	ldb	12,s	;, spellLevel
	cmpb	#1	;cmpqi:	;,
	lbne	L117	;
;----- asm -----
; 997 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[676]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	lbne	L118	;
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[683]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1007 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[684]if ( ((lrandmax(6)*lrandmax(5)))  + ml > s[int])
;--- end asm ---
	ldb	#6	;,
	jsr	_lRandMax
	leay	,x	; D.3540,
	ldb	#5	;,
	jsr	_lRandMax
	pshs	y	; D.3540
	jsr	_mulhi3
	leas	2,s	;,,
	ldb	_ml	;, ml
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leax	d,x	; tmp215,, tmp213
	ldb	_s+1	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, s
	pshs	d	;cmphi: R:d with R:x	; s, tmp215
	cmpx	,s++	;cmphi:	; tmp215
	bls	L119	;
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[686]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp220
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC40	;,
	jsr	__fs
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[687]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[688]return 1;
;--- end asm ---
	lbra	L223	;
L119:
;----- asm -----
; 1020 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[693]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp225
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC41	;,
	jsr	__fs
;----- asm -----
; 1022 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[694]dressedtokill:
;--- end asm ---
L215:
	leas	2,s	;,,
L120:
;----- asm -----
; 1024 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[695]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1026 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[696]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3546,
	beq	L121	;
;----- asm -----
; 1029 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[698]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
;----- asm -----
; 1031 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[699]return 4;
;--- end asm ---
L220:
	ldb	#4	; D.3503,
	lbra	L96	;
L121:
;----- asm -----
; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[704]if (randmax(20)-ml > 10 )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	subb	_ml	; tmp228, ml
	cmpb	#10	;cmpqi:	; tmp228,
	bls	L122	;
;----- asm -----
; 1040 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[706]return 3;
;--- end asm ---
	lbra	L166	;
L122:
;----- asm -----
; 1043 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[708]printmessage();
;--- end asm ---
	ldx	#LC42	;,
	jsr	_printMessage
;----- asm -----
; 1045 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[709]return 1;
;--- end asm ---
	lbra	L218	;
L118:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L123	;
;----- asm -----
; 1052 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[715]sf[levitate] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3549,
	stb	_sf+4	; D.3549, sf
;----- asm -----
; 1054 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[716]return 1;
;--- end asm ---
	lbra	L222	;
L123:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L124	;
;----- asm -----
; 1062 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[723]tmp = (signed int) randmax(12)+3;
;--- end asm ---
	ldb	#12	;,
	jsr	_RandMax
	addb	#3	; D.3551,
	stb	_tmp	; D.3551, tmp
;----- asm -----
; 1064 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[724]goto damagespell;
;--- end asm ---
	lbra	L103	;
L124:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L125	;
;----- asm -----
; 1071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[730]sf[detect_traps] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3554,
	stb	_sf+1	; D.3554, sf
;----- asm -----
; 1073 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[731]return 1;
;--- end asm ---
	lbra	L218	;
L125:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L126	;
;----- asm -----
; 1080 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[737]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1084 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[740]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L127	;
;----- asm -----
; 1087 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[742]printmessage();
;--- end asm ---
	ldx	#LC43	;,
	jsr	_printMessage
;----- asm -----
; 1089 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[743]return 1;
;--- end asm ---
	lbra	L218	;
L127:
;----- asm -----
; 1097 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[750]if ( ((lrandmax(6)*lrandmax(5)))  + 1 > s[chr])
;--- end asm ---
	ldb	#6	;,
	jsr	_lRandMax
	leay	,x	; D.3556,
	ldb	#5	;,
	jsr	_lRandMax
	pshs	y	; D.3556
	jsr	_mulhi3
	leas	2,s	;,,
	leax	1,x	; tmp232,, tmp231
	ldb	_s+5	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, s
	pshs	d	;cmphi: R:d with R:x	; s, tmp232
	cmpx	,s++	;cmphi:	; tmp232
	bls	L128	;
;----- asm -----
; 1100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[752]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp237
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC44	;,
	jsr	__fs
;----- asm -----
; 1102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[753]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[754]return 1;
;--- end asm ---
	lbra	L223	;
L128:
;----- asm -----
; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[759]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp242
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC45	;,
	jsr	__fs
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[760]goto dressedtokill;
;--- end asm ---
	lbra	L215	;
L126:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1119 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[766]sf[strength] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3562,
	stb	_sf	; D.3562, sf
;----- asm -----
; 1121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[767]return 1;
;--- end asm ---
	lbra	L218	;
L117:
	ldb	12,s	;, spellLevel
	cmpb	#2	;cmpqi:	;,
	lbne	L129	;
;----- asm -----
; 1127 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[772]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	bne	L130	;
;----- asm -----
; 1132 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[776]printmessage();
;--- end asm ---
	ldx	#LC46	;,
	jsr	_printMessage
;----- asm -----
; 1137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[780]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[781]tmp = (signed int) randmax(6*lv)+15;
;--- end asm ---
	ldb	_lv	; tmp248, lv
	aslb	; tmp248
	addb	_lv	; tmp248, lv
	aslb	; tmp248
	jsr	_RandMax
	addb	#15	; D.3565,
	stb	_tmp	; D.3565, tmp
;----- asm -----
; 1141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[782]goto damagespell;
;--- end asm ---
	lbra	L103	;
L130:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L131	;
;----- asm -----
; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[791]printmessage();
;--- end asm ---
	ldx	#LC35	;,
	jsr	_printMessage
;----- asm -----
; 1153 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[792]ch = ch + randmax(24)+1;
;--- end asm ---
	ldy	_ch	; ch.440, ch
	ldb	#24	;,
	jsr	_RandMax
	leax	1,y	; tmp251,, ch.440
	clra		;zero_extendqihi: R:b -> R:d	; D.3568, D.3568
	pshs	x	;addhi: R:d += R:x	; tmp251, ch.63
	addd	,s++	; ch.63
	std	_ch	; ch.63, ch
;----- asm -----
; 1155 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[793]if (ch > hp) ch = hp;
;--- end asm ---
	ldx	_hp	; hp.441, hp
	pshs	x	;cmphi: R:x with R:d	; hp.441, ch.63
	cmpd	,s++	;cmphi:	; ch.63
	ble	L132	;
	stx	_ch	; hp.441, ch
L132:
;----- asm -----
; 1157 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[794]return 1;
;--- end asm ---
	lbra	L218	;
L131:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L133	;
;----- asm -----
; 1164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[800]sf[light] = randmax(31)+5;
;--- end asm ---
	ldb	#31	;,
	jsr	_RandMax
	addb	#5	; D.3572,
	stb	_sf+2	; D.3572, sf
;----- asm -----
; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[801]return 1;
;--- end asm ---
	lbra	L218	;
L133:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L134	;
;----- asm -----
; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[807]sf[invisible] = randmax(21)+5;
;--- end asm ---
	ldb	#21	;,
	jsr	_RandMax
	addb	#5	; D.3574,
	stb	_sf+5	; D.3574, sf
;----- asm -----
; 1175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[808]return 1;
;--- end asm ---
	lbra	L218	;
L134:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L135	;
;----- asm -----
; 1183 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[815]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[819]if ( randmax(20)+ml > s[int])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	_ml	; D.3576, ml
	cmpb	_s+1	;cmpqi:	; D.3576, s
	bls	L136	;
;----- asm -----
; 1191 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[821]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp259
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC47	;,
	jsr	__fs
;----- asm -----
; 1193 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[822]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1195 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[823]return 1;
;--- end asm ---
	lbra	L223	;
L136:
;----- asm -----
; 1202 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[829]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp264
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC48	;,
	jsr	__fs
;----- asm -----
; 1204 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[830]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1206 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[831]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; D.3578,
	beq	L137	;
;----- asm -----
; 1209 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[833]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
;----- asm -----
; 1211 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[834]return 4;
;--- end asm ---
	lbra	L222	;
L137:
;----- asm -----
; 1221 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[843]if (randmax(33) > 7+ml )
;--- end asm ---
	ldb	#33	;,
	jsr	_RandMax
	stb	7,s	;, D.3579
	ldb	_ml	; tmp267, ml
	addb	#7	; tmp267,
	cmpb	7,s	;cmpqi:(R)	; tmp267, D.3579
	bhs	L138	;
;----- asm -----
; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[845]return 3;
;--- end asm ---
	lbra	L166	;
L138:
;----- asm -----
; 1227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[847]printmessage();
;--- end asm ---
	ldx	#LC42	;,
	jsr	_printMessage
;----- asm -----
; 1229 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[848]return 1;
;--- end asm ---
	lbra	L218	;
L135:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[854]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1241 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[858]if (randmax(22)+ml >= s[int])
;--- end asm ---
	ldb	#22	;,
	jsr	_RandMax
	addb	_ml	; D.3581, ml
	cmpb	_s+1	;cmpqi:	; D.3581, s
	blo	L139	;
;----- asm -----
; 1244 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[860]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp272
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC49	;,
	jsr	__fs
;----- asm -----
; 1246 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[861]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1248 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[862]return 1;
;--- end asm ---
	lbra	L223	;
L139:
;----- asm -----
; 1253 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[866]printmessage();
;--- end asm ---
	ldx	#LC50	;,
	jsr	_printMessage
;----- asm -----
; 1255 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[867]return 3;
;--- end asm ---
	lbra	L166	;
L129:
	ldb	12,s	;, spellLevel
	cmpb	#3	;cmpqi:	;,
	lbne	L140	;
;----- asm -----
; 1261 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[872]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	lbne	L141	;
;----- asm -----
; 1266 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[876]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L142	;
;----- asm -----
; 1269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[878]printmessage();
;--- end asm ---
	ldx	#LC51	;,
	jsr	_printMessage
;----- asm -----
; 1271 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[879]return 1;
;--- end asm ---
	lbra	L218	;
L142:
;----- asm -----
; 1274 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[881]printmessage();
;--- end asm ---
	ldx	#LC52	;,
	jsr	_printMessage
;----- asm -----
; 1282 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[888]tmp2 = 0;
;--- end asm ---
	clr	_tmp2	; tmp2
;----- asm -----
; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[889]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 1287 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[891]while(1)
;--- end asm ---
L156:
;----- asm -----
; 1290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[893]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 1292 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[894]if (localtimer == 0) tmp2 = -1;
;--- end asm ---
	tst	_localTimer	; localTimer
	bne	L143	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L143:
;----- asm -----
; 1294 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[895]if (vec_joy_1_x>0)
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	ble	L144	;
;----- asm -----
; 1297 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[897]if (cx==200)
;--- end asm ---
	ldb	_cx	; cx.65, cx
	cmpb	#-56	;cmpqi:	; cx.65,
	bne	L145	;
;----- asm -----
; 1300 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[899]onlystone:
;--- end asm ---
L146:
;----- asm -----
; 1302 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[900]printmessage();
;--- end asm ---
	ldx	#LC53	;,
	jsr	_printMessage
;----- asm -----
; 1304 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[901]return 1;
;--- end asm ---
	lbra	L218	;
L145:
;----- asm -----
; 1308 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[904]cx +=1;fillmap=go_east;printmessage();
;--- end asm ---
	incb	; cx.65
	stb	_cx	; cx.65, cx
	ldb	#3	;,
	stb	_fillMap	;, fillMap
	ldx	#LC54	;,
	jsr	_printMessage
;----- asm -----
; 1310 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[905]tmp2 = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp2	;, tmp2
L144:
;----- asm -----
; 1314 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[908]if (vec_joy_1_x<0)
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bge	L147	;
;----- asm -----
; 1317 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[910]if (cx==2) goto onlystone;
;--- end asm ---
	ldb	_cx	; cx.455, cx
	cmpb	#2	;cmpqi:	; cx.455,
	beq	L146	;
;----- asm -----
; 1319 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[911]cx -=1;fillmap=go_west;printmessage();
;--- end asm ---
	decb	; cx.455
	stb	_cx	; cx.455, cx
	ldb	#4	;,
	stb	_fillMap	;, fillMap
	ldx	#LC55	;,
	jsr	_printMessage
;----- asm -----
; 1321 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[912]tmp2 = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp2	;, tmp2
L147:
;----- asm -----
; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[914]if (vec_joy_1_y>0)
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L148	;
;----- asm -----
; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[916]if (cy==2) goto onlystone;
;--- end asm ---
	ldb	_cy	; cy.68, cy
	cmpb	#2	;cmpqi:	; cy.68,
	lbeq	L146	;
;----- asm -----
; 1329 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[917]cy -=1;fillmap=go_north;printmessage();
;--- end asm ---
	decb	; cy.68
	stb	_cy	; cy.68, cy
	ldb	#1	;,
	stb	_fillMap	;, fillMap
	ldx	#LC56	;,
	jsr	_printMessage
;----- asm -----
; 1331 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[918]tmp2 = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp2	;, tmp2
L148:
;----- asm -----
; 1334 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[920]if (vec_joy_1_y<0)
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	bge	L149	;
;----- asm -----
; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[922]if (cy==200)
;--- end asm ---
	ldb	_cy	;, cy
	cmpb	#-56	;cmpqi:	;,
	bne	L150	;
	incb	;
	stb	_cy	;, cy
L150:
	ldb	#2	;,
	stb	_fillMap	;, fillMap
	ldx	#LC57	;,
	jsr	_printMessage
;----- asm -----
; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[924]tmp2 = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_tmp2	;, tmp2
L149:
;----- asm -----
; 1344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[927]if (button_1_4_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L151	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L151:
;----- asm -----
; 1346 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[928]if (button_1_3_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#4	;,
	beq	L152	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L152:
;----- asm -----
; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[929]if (button_1_2_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L153	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L153:
;----- asm -----
; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[930]if (button_1_1_pressed()) tmp2 = -1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L154	;
	ldb	#-1	;,
	stb	_tmp2	;, tmp2
L154:
;----- asm -----
; 1353 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[932]if (tmp2 != 0) break;
;--- end asm ---
	ldb	_tmp2	; tmp2.71, tmp2
	bne	L155	;
;----- asm -----
; 1355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[933]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	lbra	L156	;
L155:
;----- asm -----
; 1358 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[935]if (tmp2 == -1)
;--- end asm ---
	cmpb	#-1	;cmpqi:	; tmp2.71,
	bne	L157	;
;----- asm -----
; 1361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[937]printmessage();
;--- end asm ---
	ldx	#LC58	;,
	bra	L216	;
L157:
;----- asm -----
; 1366 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[941]printmessage();
;--- end asm ---
	ldx	#LC59	;,
L216:
	jsr	_printMessage
;----- asm -----
; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[943]return 2;
;--- end asm ---
	lbra	L221	;
L141:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	lbne	L159	;
;----- asm -----
; 1376 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[949]printmessage();
;--- end asm ---
	ldx	#LC60	;,
	jsr	_printMessage
;----- asm -----
; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[952]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[953]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp285
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC61	;,
	jsr	__fs
;----- asm -----
; 1384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[954]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[955]tmp = (signed int) randmax(12*lv)+15;
;--- end asm ---
	ldb	_lv	;, lv
	lda	#12	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp288
; ORG>	tfr	d,x	;, tmp288
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp288,
	jsr	_RandMax
	addb	#15	; D.3597,
	stb	_tmp	; D.3597, tmp
;----- asm -----
; 1388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[956]goto damagespell;
;--- end asm ---
	lbra	L217	;
L159:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	bne	L160	;
;----- asm -----
; 1396 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[963]tmp = (signed int) randmax(32)+10;
;--- end asm ---
	ldb	#32	;,
	jsr	_RandMax
	addb	#10	; D.3600,
	stb	_tmp	; D.3600, tmp
;----- asm -----
; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[964]goto damagespell;
;--- end asm ---
	lbra	L103	;
L160:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	lbne	L161	;
;----- asm -----
; 1405 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[970]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1409 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[973]if (randmax(10)>6)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#6	;cmpqi:	; D.3603,
	bls	L162	;
;----- asm -----
; 1412 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[975]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp291
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC62	;,
	jsr	__fs
;----- asm -----
; 1414 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[976]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1416 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[977]return 1;
;--- end asm ---
	lbra	L223	;
L162:
;----- asm -----
; 1419 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[979]printmessage();
;--- end asm ---
	ldx	#LC63	;,
	jsr	_printMessage
;----- asm -----
; 1421 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[980]return 3;
;--- end asm ---
	lbra	L222	;
L161:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bne	L163	;
;----- asm -----
; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[986]sf[fear] = randmax(30)+5;
;--- end asm ---
	ldb	#30	;,
	jsr	_RandMax
	addb	#5	; D.3604,
	stb	_sf+6	; D.3604, sf
;----- asm -----
; 1430 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[987]return 1;
;--- end asm ---
	lbra	L218	;
L163:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1437 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[993]printmessage();
;--- end asm ---
	ldx	#LC64	;,
	jsr	_printMessage
;----- asm -----
; 1439 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[994]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1444 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[998]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L164	;
;----- asm -----
; 1447 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1000]undeadaredead:
;--- end asm ---
L165:
;----- asm -----
; 1449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1001]printmessage();
;--- end asm ---
	ldx	#LC65	;,
	jsr	_printMessage
;----- asm -----
; 1451 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1002]return 1;
;--- end asm ---
	lbra	L218	;
L164:
;----- asm -----
; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1006]ltmp = 30 + ml*4;
;--- end asm ---
	ldb	_ml	; tmp295, ml
	aslb	; tmp295
	aslb	; tmp295
	addb	#30	; tmp295,
	clra		;zero_extendqihi: R:b -> R:d	; tmp295,
	std	8,s	;, ltmp.75
;----- asm -----
; 1458 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1007]ltmp = ltmp - lv*3;
;--- end asm ---
	ldb	_lv	; tmp299, lv
	aslb	; tmp299
	addb	_lv	; tmp299, lv
	clra		;zero_extendqihi: R:b -> R:d	; tmp299,
	tfr	d,x	;, tmp301
	ldd	8,s	;, ltmp.75
	pshs	x	;subhi: R:d -= R:x	; tmp301,
	subd	,s++	;
	std	_ltmp	; tmp302, ltmp
;----- asm -----
; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1009]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1010]if (randmax(100) > (unsigned long int)ltmp)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3613, D.3613
	cmpd	_ltmp	;cmphi:	; D.3613, ltmp
	lbhi	L166	;
;----- asm -----
; 1468 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1014]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp306
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC66	;,
	jsr	__fs
;----- asm -----
; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1015]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1472 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1016]return 1;
;--- end asm ---
	lbra	L223	;
L140:
	ldb	12,s	;, spellLevel
	cmpb	#4	;cmpqi:	;,
	lbne	L167	;
;----- asm -----
; 1478 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1021]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	lbne	L168	;
;----- asm -----
; 1481 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1023]signed long int ns;
; 1483 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1024]signed long int ew;
; 1485 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1025]signed long int upd;
; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1026]signed int sel;
; 1491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1029]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L169	;
;----- asm -----
; 1494 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1031]printmessage();
;--- end asm ---
	ldx	#LC51	;,
	jsr	_printMessage
;----- asm -----
; 1496 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1032]return 1;
;--- end asm ---
	lbra	L218	;
L169:
;----- asm -----
; 1500 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1035]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1502 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1036]printmessage();
;--- end asm ---
	ldx	#LC67	;,
	jsr	_printMessage
;----- asm -----
; 1506 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1039]teleportagain:
;--- end asm ---
L170:
;----- asm -----
; 1508 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1040]ns = ew = upd = sel = 0;
; 1510 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1041]do
;--- end asm ---
	ldy	#0	; ns,
	sty	16,s	; ns, ew
	sty	18,s	; ns, upd
	clr	20,s	; sel
L183:
;----- asm -----
; 1513 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1043]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 1515 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1044]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 1517 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1045]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 1519 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1046]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1047]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 1523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1048]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1526 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1050]print_str_d(0x78,-0x20, );
;--- end asm ---
	ldb	#120	;,
	stb	,-s	;,
	ldx	#LC68	;,
	ldb	#-32	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1528 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1051]print_str_d(-0x40,-0x40, );
;--- end asm ---
	ldb	#-64	;,
	stb	,-s	;,
	ldx	#LC69	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1053]_fi_s_s(, (signed int) ns);
;--- end asm ---
	tfr	y,d	;movlsbqihi: R:y -> R:b	; ns,
	ldx	#LC70	;,
	jsr	__fi_s_s
;----- asm -----
; 1533 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1054]print_str_d(0x50,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1535 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1055]_fi_s_s(, (signed int) ew);
;--- end asm ---
	ldb	20,s	;movlsbqihi: msb:19,s -> R:b	;, ew
	ldx	#LC71	;,
	jsr	__fi_s_s
;----- asm -----
; 1537 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1056]print_str_d(0x30,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1539 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1057]_fi_s_s(, (signed int) upd);
;--- end asm ---
	ldb	23,s	;movlsbqihi: msb:22,s -> R:b	;, upd
	ldx	#LC72	;,
	jsr	__fi_s_s
;----- asm -----
; 1541 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1058]print_str_d(0x10,-0x50, stringbuffer40);
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1543 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1059]if (sel == 0)
;--- end asm ---
	leas	5,s	;,,
	tst	20,s	; sel
	bne	L171	;
;----- asm -----
; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1061]print_str_d(0x50,-0x65, );
;--- end asm ---
	ldb	#80	;,
	stb	,-s	;,
	ldx	#LC14	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1062]if ((vec_joy_1_x > 0) && (!lastdir)) ns+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	; Vec_Joy_1_X.470, Vec_Joy_1_X
	leas	1,s	;,,
	tstb	; Vec_Joy_1_X.470
	ble	L172	;
	tst	15,s	; lastDir
	bne	L172	;
	leay	1,y	; ns,, ns
L172:
;----- asm -----
; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1063]if ((vec_joy_1_x < 0) && (!lastdir)) ns-=1;
;--- end asm ---
	tstb	; Vec_Joy_1_X.470
	bge	L171	;
	tst	15,s	; lastDir
	bne	L171	;
	leay	-1,y	; ns,, ns
L171:
;----- asm -----
; 1553 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1065]if (sel == 1)
;--- end asm ---
	ldb	20,s	;, sel
	cmpb	#1	;cmpqi:	;,
	bne	L173	;
;----- asm -----
; 1556 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1067]print_str_d(0x30,-0x65, );
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	ldx	#LC14	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1558 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1068]if ((vec_joy_1_x > 0) && (!lastdir)) ew+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.471
	leas	1,s	;,,
	tstb	;
	ble	L174	;
	tst	15,s	; lastDir
	bne	L174	;
	ldd	16,s	;, ew
	addd	#1; addhi3,3	;,
	std	16,s	;, ew
L174:
;----- asm -----
; 1560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1069]if ((vec_joy_1_x < 0) && (!lastdir)) ew-=1;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.471
	bge	L173	;
	tst	15,s	; lastDir
	bne	L173	;
	ldd	16,s	;, ew
	addd	#-1; addhi3,3	;,
	std	16,s	;, ew
L173:
;----- asm -----
; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1071]if (sel == 2)
;--- end asm ---
	ldb	20,s	;, sel
	cmpb	#2	;cmpqi:	;,
	bne	L175	;
;----- asm -----
; 1566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1073]print_str_d(0x10,-0x65, );
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#LC14	;,
	ldb	#-101	;,
	jsr	_syncPrintStrd
;----- asm -----
; 1568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1074]if ((vec_joy_1_x > 0) && (!lastdir)) upd+=1;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.472
	leas	1,s	;,,
	tstb	;
	ble	L176	;
	tst	15,s	; lastDir
	bne	L176	;
	ldd	18,s	;, upd
	addd	#1; addhi3,3	;,
	std	18,s	;, upd
L176:
;----- asm -----
; 1570 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1075]if ((vec_joy_1_x < 0) && (!lastdir)) upd-=1;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.472
	bge	L175	;
	tst	15,s	; lastDir
	bne	L175	;
	ldd	18,s	;, upd
	addd	#-1; addhi3,3	;,
	std	18,s	;, upd
L175:
;----- asm -----
; 1573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1077]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.473
	ble	L177	;
	tst	15,s	; lastDir
	bne	L177	;
	tst	20,s	; sel
	beq	L177	;
	dec	20,s	; sel
L177:
;----- asm -----
; 1576 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1079]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tst	2,s	; Vec_Joy_1_Y.473
	bge	L178	;
	tst	15,s	; lastDir
	bne	L178	;
	ldb	20,s	;, sel
	cmpb	#1	;cmpqi:	;,
	bgt	L178	;
	incb	;
	stb	20,s	;, sel
L178:
;----- asm -----
; 1579 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1081]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	15,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L180	;
	ldb	2,s	; Vec_Joy_1_Y.473, Vec_Joy_1_Y.473
	beq	L181	;
	ldb	#1	; Vec_Joy_1_Y.473,
L181:
	stb	15,s	; Vec_Joy_1_Y.473, lastDir
L180:
;----- asm -----
; 1582 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1083]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L182	;
;----- asm -----
; 1584 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1085]while (1);
;--- end asm ---
	lbra	L183	;
L182:
	ldu	16,s	; ew.501, ew
	ldx	18,s	;, upd
	stx	23,s	;, upd.502
;----- asm -----
; 1590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1089]if ((abs(ns)>lv*5) || (abs(ew)>lv*5) ||(abs(upd)>lv*5) )
;--- end asm ---
	ldb	_lv	; tmp312, lv
	aslb	; tmp312
	aslb	; tmp312
	addb	_lv	; tmp312, lv
	clra		;zero_extendqihi: R:b -> R:d	; tmp312,
	std	,s	;, D.3628
	leax	,y	; ns.476, ns
	cmpy	#0	; ns
	bge	L185	;
	tfr	y,d	; ns,
	nega
	negb
	sbca	#0
	tfr	d,x	;, ns.476
L185:
	cmpx	,s	;cmphi:	; ns.476, D.3628
	bgt	L184	;
	leax	,u	; ew.501, ew.501
	cmpu	#0	; ew.501
	bge	L186	;
	exg	d,x	; ew.501
	nega
	negb
	sbca	#0
	exg	d,x	; ew.501
L186:
	cmpx	,s	;cmphi:	; ew.501, D.3628
	bgt	L184	;
	ldx	23,s	; upd.502, upd.502
	bge	L188	;
	exg	d,x	; upd.502
	nega
	negb
	sbca	#0
	exg	d,x	; upd.502
L188:
	cmpx	,s	;cmphi:	; upd.502, D.3628
	ble	L187	;
L184:
;----- asm -----
; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1091]printmessage();
;--- end asm ---
	ldx	#LC73	;,
	jsr	_printMessage
;----- asm -----
; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1092]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1597 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1093]goto teleportagain;
;--- end asm ---
	lbra	L170	;
L187:
;----- asm -----
; 1604 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1099]ew += cx;
;--- end asm ---
	ldb	_cx	;, cx
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	addd	16,s; addhi3,3	;, ew
	std	21,s	;, ew.478
;----- asm -----
; 1606 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1100]ns += cy;
;--- end asm ---
	ldb	_cy	;, cy
	stb	2,s	;, cy.479
;----- asm -----
; 1608 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1101]upd += cz;
;--- end asm ---
	ldb	_cz	;, cz
	stb	10,s	;, cz.80
;----- asm -----
; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1102]if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
;--- end asm ---
	ldu	21,s	;, ew.478
	leax	-1,u	; tmp318,,
	cmpx	#199	;cmphi:	; tmp318,
	bhi	L189	;
	ldb	2,s	;, cy.479
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leay	d,y	; ns.480,, ns
	cmpy	#0	; ns.480
	ble	L189	;
	cmpy	#200	;cmphi:	; ns.480,
	bgt	L189	;
	ldb	10,s	;, cz.80
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldx	18,s	; upd.481, upd
	leax	d,x	; upd.481,, upd.481
	tfr	x,d	;movlsbqihi: R:x -> R:b	; upd.481, temp.482
	cmpb	#50	;cmpqi:	; temp.482,
	ble	L190	;
L189:
;----- asm -----
; 1614 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1105]printmessage();
;--- end asm ---
	ldx	#LC74	;,
	jsr	_printMessage
;----- asm -----
; 1616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1106]printmessage();
;--- end asm ---
	ldx	#LC75	;,
	jsr	_printMessage
;----- asm -----
; 1618 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1107]return 1;
;--- end asm ---
	lbra	L218	;
L190:
;----- asm -----
; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1109]if ((signed int) upd<1)
;--- end asm ---
	tfr	x,d	; upd.481,
	tstb	;
	bgt	L191	;
;----- asm -----
; 1624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1111]printmessage();
;--- end asm ---
	ldx	#LC76	;,
	jsr	_printMessage
;----- asm -----
; 1626 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1112]printmessage();
;--- end asm ---
	ldx	#LC75	;,
	jsr	_printMessage
;----- asm -----
; 1628 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1113]return 1;
;--- end asm ---
	lbra	L218	;
L191:
;----- asm -----
; 1632 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1116]cx = (unsigned char)ew;
;--- end asm ---
	ldd	21,s	;, ew.478
	stb	_cx	;movlsbqihi: R:d -> _cx	; cx,
;----- asm -----
; 1634 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1117]cy = (unsigned char)ns;
;--- end asm ---
	tfr	y,d	; ns.480,
	stb	_cy	;movlsbqihi: R:d -> _cy	; cy,
;----- asm -----
; 1636 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1118]cz = (unsigned char)upd;
;--- end asm ---
	tfr	x,d	; upd.481,
	stb	_cz	;movlsbqihi: R:d -> _cz	; cz,
;----- asm -----
; 1638 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1119]printmessage();
;--- end asm ---
	ldx	#LC77	;,
	jsr	_printMessage
;----- asm -----
; 1640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1120]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1642 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1121]return 2;
;--- end asm ---
	lbra	L221	;
L168:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L192	;
;----- asm -----
; 1649 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1127]sf[astral_walk] = randmax(16)+5;
;--- end asm ---
	ldb	#16	;,
	jsr	_RandMax
	addb	#5	; D.3642,
	stb	_sf+7	; D.3642, sf
;----- asm -----
; 1651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1128]return 1;
;--- end asm ---
	lbra	L222	;
L192:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	lbne	L193	;
;----- asm -----
; 1658 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1134]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1661 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1136]printmessage();
;--- end asm ---
	ldx	#LC78	;,
	jsr	_printMessage
;----- asm -----
; 1663 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1137]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1667 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1140]if (un != 0)
;--- end asm ---
	tst	_un	; un
	beq	L194	;
;----- asm -----
; 1670 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1142]goto undeadaredead;
;--- end asm ---
	lbra	L165	;
L194:
;----- asm -----
; 1673 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1144]if (randmax(11)>8)
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	cmpb	#8	;cmpqi:	; D.3644,
	bls	L195	;
;----- asm -----
; 1676 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1146]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp324
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC79	;,
	jsr	__fs
;----- asm -----
; 1678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1147]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1148]return 1;
;--- end asm ---
	lbra	L223	;
L195:
;----- asm -----
; 1683 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1150]return 3;
;--- end asm ---
	lbra	L166	;
L193:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	bne	L196	;
;----- asm -----
; 1691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1157]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1693 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1158]printmessage();
;--- end asm ---
	ldx	#LC80	;,
	jsr	_printMessage
;----- asm -----
; 1695 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1159]tmp = (signed int) randmax(60)+5;
;--- end asm ---
	ldb	#60	;,
	jsr	_RandMax
	addb	#5	; D.3645,
	stb	_tmp	; D.3645, tmp
;----- asm -----
; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1160]goto damagespell;
;--- end asm ---
	lbra	L103	;
L196:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	lbne	L197	;
;----- asm -----
; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1169]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1709 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1170]printmessage();
;--- end asm ---
	ldx	#LC81	;,
	jsr	_printMessage
;----- asm -----
; 1711 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1171]printmessage();
;--- end asm ---
	ldx	#LC82	;,
	jsr	_printMessage
;----- asm -----
; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1172]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1715 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1173]if (randmax(10) >4)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#4	;cmpqi:	; D.3648,
	bls	L198	;
;----- asm -----
; 1718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1175]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp329
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC83	;,
	jsr	__fs
;----- asm -----
; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1176]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1722 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1177]return 6;
;--- end asm ---
	lbra	L224	;
L198:
;----- asm -----
; 1725 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1179]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp334
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC84	;,
	jsr	__fs
;----- asm -----
; 1727 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1180]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1729 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1181]tmp = (signed int) randmax(10)+15;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	addb	#15	; D.3649,
	stb	_tmp	; D.3649, tmp
;----- asm -----
; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1182]goto damagespell;
;--- end asm ---
L217:
	leas	2,s	;,,
	lbra	L103	;
L197:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1738 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1188]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1741 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1190]if (un != 0) goto undeadaredead;
;--- end asm ---
	tst	_un	; un
	lbne	L165	;
;----- asm -----
; 1745 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1193]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp339
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC85	;,
	jsr	__fs
;----- asm -----
; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1194]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1750 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1196]if (randmax(20)>s[wis])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	leas	2,s	;,,
	cmpb	_s+2	;cmpqi:	; D.3652, s
	bls	L199	;
;----- asm -----
; 1753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1198]printmessage();
;--- end asm ---
	ldx	#LC86	;,
	jsr	_printMessage
;----- asm -----
; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1199]return 1;
;--- end asm ---
	lbra	L218	;
L199:
;----- asm -----
; 1760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1203]if (  randmax((unsigned int)(67)) < (unsigned int) ((s[con]) +33))
;--- end asm ---
	ldb	#67	;,
	jsr	_RandMax
	stb	11,s	;, D.3653
	ldb	_s+3	; tmp344, s
	addb	#33	; tmp344,
	cmpb	11,s	;cmpqi:(R)	; tmp344, D.3653
	bls	L200	;
;----- asm -----
; 1763 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1205]return 2;
;--- end asm ---
	lbra	L221	;
L200:
;----- asm -----
; 1766 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1207]printmessage();
;--- end asm ---
	ldx	#LC87	;,
	jsr	_printMessage
;----- asm -----
; 1768 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1208]return 7;
;--- end asm ---
	ldb	#7	; D.3503,
	lbra	L96	;
L167:
	ldb	12,s	;, spellLevel
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1775 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1214]if (spellselect == 0)
;--- end asm ---
	tst	13,s	; spellSelect
	bne	L201	;
;----- asm -----
; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1219]printmessage();
;--- end asm ---
	ldx	#LC88	;,
	jsr	_printMessage
;----- asm -----
; 1783 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1220]printmessage();
;--- end asm ---
	ldx	#LC89	;,
	jsr	_printMessage
;----- asm -----
; 1788 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1224]sf[timestop] = randmax(20)+4;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	addb	#4	; D.3656,
	stb	_sf+8	; D.3656, sf
;----- asm -----
; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1225]if (incombat) return 6;
;--- end asm ---
	ldb	#6	; D.3503,
	tst	5,s	; inCombat
	lbne	L96	;
;----- asm -----
; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1226]return 1;
;--- end asm ---
	lbra	L218	;
L201:
	ldb	13,s	;, spellSelect
	cmpb	#1	;cmpqi:	;,
	bne	L203	;
;----- asm -----
; 1799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1232]sf[raise_dead] = randmax(40)+5;
;--- end asm ---
	ldb	#40	;,
	jsr	_RandMax
	addb	#5	; D.3658,
	stb	_sf+9	; D.3658, sf
;----- asm -----
; 1801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1233]return 1;
;--- end asm ---
	bra	L222	;
L203:
	ldb	13,s	;, spellSelect
	cmpb	#2	;cmpqi:	;,
	lbne	L204	;
;----- asm -----
; 1808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1239]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	lbeq	L105	;
;----- asm -----
; 1813 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1243]if (randmax(10+1) != 10)
;--- end asm ---
	ldb	#11	;,
	jsr	_RandMax
	cmpb	#10	;cmpqi:	; D.3660,
	beq	L205	;
;----- asm -----
; 1816 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1245]return 2;
;--- end asm ---
L222:
	ldb	13,s	; D.3503, spellSelect
	lbra	L96	;
L205:
;----- asm -----
; 1820 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1248]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp349
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC90	;,
	jsr	__fs
;----- asm -----
; 1822 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1249]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1824 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1250]return 1;
;--- end asm ---
	lbra	L223	;
L204:
	ldb	13,s	;, spellSelect
	cmpb	#3	;cmpqi:	;,
	lbne	L206	;
;----- asm -----
; 1831 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1256]if (incombat)
;--- end asm ---
	tst	5,s	; inCombat
	beq	L207	;
;----- asm -----
; 1834 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1258]printmessage();
;--- end asm ---
	ldx	#LC51	;,
	jsr	_printMessage
;----- asm -----
; 1836 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1259]return 1;
;--- end asm ---
	lbra	L218	;
L207:
;----- asm -----
; 1842 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1264]for (int i=0; i<10;i++)
;--- end asm ---
	ldx	#_inventory	; ivtmp.404,
L208:
;----- asm -----
; 1845 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1266]inventory[i] = 0;
;--- end asm ---
	clr	,x+	; inventory
	cmpx	#_inventory+10	;cmphi:	; ivtmp.404,
	bne	L208	;
;----- asm -----
; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1268]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 1850 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1269]clearmonsterstack();
; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[380]for (int i=0;i<20;i++)
;--- end asm ---
	ldy	#0	; ivtmp.389,
L209:
;----- asm -----
; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[382]stackm[i] = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_stackM,y	;, stackM
;----- asm -----
; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[383]stackml[i] = 0;
;--- end asm ---
	clr	_stackML,y	; stackML
;----- asm -----
; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[384]stackmh[i] = 0;
;--- end asm ---
	tfr	y,d	; ivtmp.389,
	aslb	;
	rola	;
	tfr	d,x	;, tmp356
	ldd	#0	;,
	std	_stackMH,x	;, stackMH
	leay	1,y	; ivtmp.389,, ivtmp.389
	cmpy	#20	;cmphi:	; ivtmp.389,
	bne	L209	;
;----- asm -----
; 1852 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1270]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 1854 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1271]cx = 25;
;--- end asm ---
	ldb	#25	;,
	stb	_cx	;, cx
;----- asm -----
; 1856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1272]cy = 13;
;--- end asm ---
	ldb	#13	;,
	stb	_cy	;, cy
;----- asm -----
; 1858 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1273]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1274]printmessage();
;--- end asm ---
	ldx	#LC17	;,
	jsr	_printMessage
;----- asm -----
; 1862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1275]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1276]return 1;
;--- end asm ---
	lbra	L218	;
L206:
	ldb	13,s	;, spellSelect
	cmpb	#4	;cmpqi:	;,
	bne	L210	;
;----- asm -----
; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1282]printmessage();
;--- end asm ---
	ldx	#LC35	;,
	jsr	_printMessage
;----- asm -----
; 1873 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1283]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1875 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1284]return 1;
;--- end asm ---
	lbra	L218	;
L210:
	ldb	13,s	;, spellSelect
	cmpb	#5	;cmpqi:	;,
	lbne	L116	;
;----- asm -----
; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1290]printmessage();
;--- end asm ---
	ldx	#LC91	;,
	jsr	_printMessage
;----- asm -----
; 1884 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1291]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	beq	L105	;
;----- asm -----
; 1886 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1292]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1297]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp363
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC83	;,
	jsr	__fs
;----- asm -----
; 1894 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1298]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1299]return 6;
;--- end asm ---
L224:
	ldb	#6	; D.3503,
L219:
	leas	2,s	;,,
	lbra	L96	;
L116:
;----- asm -----
; 1901 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1303]return 2;
;--- end asm ---
L221:
	ldb	#2	; D.3503,
	lbra	L96	;
L105:
;----- asm -----
; 1906 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1306]printmessage();
;--- end asm ---
	ldx	#LC92	;,
	jsr	_printMessage
;----- asm -----
; 1908 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1307]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1910 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1308]return 1;
;--- end asm ---
L218:
	ldb	#1	; D.3503,
	lbra	L96	;
L103:
;----- asm -----
; 1914 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1310]if (!incombat) goto nocombatspell;
;--- end asm ---
	tst	5,s	; inCombat
	beq	L105	;
;----- asm -----
; 1916 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1311]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	ldx	#LC93	;,
	jsr	__fi_s
;----- asm -----
; 1918 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1312]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1920 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1313]mh = mh -tmp;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,u	;, tmp
	ldx	_mh	; mh, mh
	tfr	x,d	; mh,
	pshs	u	;subhi: R:d -= R:u	; tmp,
	subd	,s++	;
	std	_mh	; mh.91, mh
;----- asm -----
; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1314]if (mh <0) return 3;
;--- end asm ---
	cmpd	#0	; mh.91
	blt	L166	;
;----- asm -----
; 1924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1315]return 1;
;--- end asm ---
	lbra	L218	;
L166:
	ldb	#3	; D.3503,
L96:
	leas	25,s	;,,
	puls	y,u,pc	;
LC94:
	.ascii	"YOU WENT UP A LEVEL!\0"
LC95:
	.ascii	"YOU GAIN % HIT POINTS\0"
LC96:
	.ascii	"YOU GO DOWN A LEVEL!\0"
LC97:
	.ascii	"YOU LOSE % HIT POINTS\0"
	.globl	_checkXP
_checkXP:
	pshs	y,u	;
	leas	-16,s	;,,
;----- asm -----
; 1980 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1370]unsigned long long int t = ull(1000)*ull(ull(2)<<(lv-1));
;--- end asm ---
	ldb	_lv	;, lv
;----- asm -----
; 1989 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1378]if (ex >= t)
;--- end asm ---
	ldu	_ex	; ex.93, ex
	ldy	_ex+2	; ex.93, ex
	decb	;
	stb	1,s	;, lv.92
	clra		;zero_extendqihi: R:b -> R:d	;,
	inc	1,s	; lv.92
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
	pshs	u	;cmphi: R:u with R:x	; ex.93, tmp89
	cmpx	,s++	;cmphi:	; tmp89
	lbhi	L226	;
	bne	L239	;
	pshs	y	;cmphi: R:y with R:d	; ex.93, tmp90
	cmpd	,s++	;cmphi:	; tmp90
	lbhi	L226	;
L239:
;----- asm -----
; 1992 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1380]printmessage();
;--- end asm ---
	ldx	#LC94	;,
	jsr	_printMessage
;----- asm -----
; 1994 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1381]lv = lv +1;
;--- end asm ---
	ldb	_lv	;, lv
	stb	,s	;, lv.509
	incb	;
	stb	_lv	;, lv
;----- asm -----
; 1996 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1382]t = ull(1000)*ull(ull(2)<<(lv-1));
;--- end asm ---
	ldb	,s	;, lv.509
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; lv.509
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
	std	4,s	;, t.512
	ldx	10,s	;,
	stx	6,s	;, t.512
;----- asm -----
; 1998 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1383]tmp = (signed int) (randmax( s[con] ) + 1);
;--- end asm ---
	ldb	_s+3	;, s
	jsr	_RandMax
	incb	;
	stb	2,s	;, D.3681
	stb	_tmp	;, tmp
;----- asm -----
; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1386]ch += tmp;
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,u	;, D.3685
	ldd	_ch	;, ch
	leax	d,u	;,, D.3685
	stx	_ch	;, ch
;----- asm -----
; 2004 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1387]hp += (long signed int) tmp;
;--- end asm ---
	tfr	u,d	; D.3685,
	addd	_hp; addhi3,3	;, hp
	std	_hp	;, hp
;----- asm -----
; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1388]if (ex>t) ex = t-1;
;--- end asm ---
	ldx	4,s	;, t.512
	cmpx	_ex	;cmphi:(R)	;, ex
	blo	L240	;
	bne	L228	;
	ldx	6,s	;, t.512
	cmpx	_ex+2	;cmphi:(R)	;, ex
	bhs	L228	;
L240:
	ldd	6,s	;, t.512
	addd	#-1	;,
	std	_ex+2	;, ex
	ldd	4,s	;, t.512
	adcb	#-1	;
	adca	#-1	;
	std	_ex	;, ex
L228:
;----- asm -----
; 2011 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1392]cs = cs + lv;
;--- end asm ---
	ldb	_lv	;, lv
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.3691
	ldd	_cs	;, cs
	leax	d,u	;,, D.3691
	stx	_cs	;, cs
;----- asm -----
; 2013 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1393]su = su +lv;
;--- end asm ---
	tfr	u,d	; D.3691,
	addd	_su; addhi3,3	;, su
	std	_su	;, su
;----- asm -----
; 2016 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1395]_fi_s(, (unsigned int)tmp);
;--- end asm ---
	ldb	2,s	;, D.3681
	ldx	#LC95	;,
	jsr	__fi_s
;----- asm -----
; 2018 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1396]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2020 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1397]return;
;--- end asm ---
	lbra	L238	;
L226:
;----- asm -----
; 2027 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1403]if (lv >1)
;--- end asm ---
	ldb	1,s	;, lv.92
	cmpb	#1	;cmpqi:	;,
	bhi	L231	;
	ldx	#0	; t,
	ldd	#0	; t,
	bra	L232	;
L231:
	ldb	1,s	;, lv.92
	addb	#-2	;,
	stb	1,s	;, lv.92
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, tmp65
	ldb	1,s	;, lv.92
	addb	#2	;,
	stb	1,s	;, lv.92
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
L232:
;----- asm -----
; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1416]if (ex>=t) return;
;--- end asm ---
	pshs	u	;cmphi: R:u with R:x	; ex.93, t
	cmpx	,s++	;cmphi:	; t
	bhi	L241	;
	lbne	L238	;
	pshs	y	;cmphi: R:y with R:d	; ex.93, t
	cmpd	,s++	;cmphi:	; t
	lbls	L238	;
L241:
	ldb	1,s	;, lv.92
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, temp.515
	ldd	_cs	; cs.516, cs
	pshs	d	;cmphi: R:d with R:x	; cs.516, temp.515
	cmpx	,s++	;cmphi:	; temp.515
	bls	L234	;
	ldd	#0	;,
	bra	L242	;
L234:
	pshs	x	;subhi: R:d -= R:x	; temp.515, tmp75
	subd	,s++	; tmp75
L242:
	std	_cs	; tmp75, cs
;----- asm -----
; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1421]su = su -lv;
;--- end asm ---
	ldd	_su	; su, su
	pshs	x	;subhi: R:d -= R:x	; temp.515, tmp77
	subd	,s++	; tmp77
	std	_su	; tmp77, su
;----- asm -----
; 2051 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1424]printmessage();
;--- end asm ---
	ldx	#LC96	;,
	jsr	_printMessage
;----- asm -----
; 2053 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1425]lv = lv -1;
;--- end asm ---
	dec	_lv	; lv
;----- asm -----
; 2055 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1426]tmp = (signed int)(randmax(s[con])+1);
;--- end asm ---
	ldb	_s+3	;, s
	jsr	_RandMax
	incb	;
	stb	3,s	;, D.3702
	stb	_tmp	;, tmp
;----- asm -----
; 2063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1433]if ((ch<tmp) || (lv == 0))
;--- end asm ---
	ldu	_ch	; ch.521, ch
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, temp.522
	pshs	d	;cmphi: R:d with R:u	; temp.522, ch.521
	cmpu	,s++	;cmphi:	; ch.521
	blt	L236	;
	tst	_lv	; lv
	bne	L237	;
L236:
;----- asm -----
; 2066 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1435]ch=0;
;--- end asm ---
	ldd	#0	;,
	std	_ch	;, ch
;----- asm -----
; 2068 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1436]return;
;--- end asm ---
	bra	L238	;
L237:
;----- asm -----
; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1438]ch = ch -tmp;
;--- end asm ---
	tfr	u,d	; ch.521, tmp80
	pshs	x	;subhi: R:d -= R:x	; temp.522, tmp80
	subd	,s++	; tmp80
	std	_ch	; tmp80, ch
;----- asm -----
; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1439]hp = hp -(long signed int)tmp;
;--- end asm ---
	ldd	_hp	; hp, hp
	pshs	x	;subhi: R:d -= R:x	; temp.522, tmp82
	subd	,s++	; tmp82
	std	_hp	; tmp82, hp
;----- asm -----
; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1440]_fi_s(, (unsigned int)tmp);
;--- end asm ---
	ldb	3,s	;, D.3702
	ldx	#LC97	;,
	jsr	__fi_s
;----- asm -----
; 2077 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1441]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2079 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1442]return;
;--- end asm ---
L238:
	leas	16,s	;,,
	puls	y,u,pc	;
LC98:
	.ascii	"YOU GAINED % EXPERIENCE POINTS\0"
LC99:
	.ascii	"YOU LOST % EXPERIENCE POINTS\0"
	.globl	_randomXP
_randomXP:
	leas	-16,s	;,,
;----- asm -----
; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1456]ltmp = (signed long int) ( ul(randmax(cz)+1)*ul(500));
;--- end asm ---
	ldb	_cz	;, cz
	jsr	_RandMax
	incb	; D.3711
	clra		;zero_extendqihi: R:b -> R:d	; D.3711,
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
; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1457]if (randmax(2) == 1)
;--- end asm ---
	ldb	#2	;,
	jsr	_RandMax
	cmpb	#1	;cmpqi:	; D.3716,
	bne	L244	;
;----- asm -----
; 2100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1460]_fl_s(,  ul(ltmp));
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC98	;,
	jsr	__fl_s
;----- asm -----
; 2102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1461]ex += ull(ltmp);
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
	lbra	L245	;
L244:
;----- asm -----
; 2108 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1466]_fl_s(, ul(ltmp));
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC99	;,
	jsr	__fl_s
;----- asm -----
; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1467]if (ull(lltmp) > ex) ex = 0;
;--- end asm ---
	ldd	_ex	;, ex
	std	14,s	;, ex.533
	ldx	_ex+2	;, ex
	stx	16,s	;, ex.533
	leas	2,s	;,,
	ldd	12,s	;, ex.533
	cmpd	_lltmp	;cmphi:(R)	;, lltmp
	blo	L249	;
	bne	L246	;
	ldd	14,s	;, ex.533
	cmpd	_lltmp+2	;cmphi:(R)	;, lltmp
	bhs	L246	;
L249:
	ldd	#0	;,
	std	_ex	;, ex
	std	_ex+2	;, ex
	bra	L245	;
L246:
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
	ldd	14,s	;, ex.533
	subd	2,s	;,
	std	_ex+2	;, ex
	ldd	12,s	;, ex.533
	sbcb	1,s	;
	sbca	,s	;
	std	_ex	;, ex
L245:
;----- asm -----
; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1471]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2117 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1472]checkxp();
;--- end asm ---
	jsr	_checkXP
	leas	16,s	;,,
	rts
	.globl	_clearMap
_clearMap:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 2123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1477]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	clr	3,s	; yy
L252:
;----- asm -----
; 2126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1479]for (unsigned char xx=0;xx<4;xx++)
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
	leax	d,u	; ivtmp.549, tmp39,
	clr	2,s	; xx
L251:
;----- asm -----
; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1481]screen[yy][xx] = 0xffff;
;--- end asm ---
	ldd	#-1	;,
	std	,x++	;, screen
	inc	2,s	; xx
	ldb	2,s	;, xx
	cmpb	#4	;cmpqi:	;,
	bne	L251	;
	inc	3,s	; yy
	ldb	3,s	;, yy
	cmpb	#4	;cmpqi:	;,
	bne	L252	;
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_initVars
_initVars:
	pshs	u	;
	leas	-3,s	;,,
;----- asm -----
; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1488]initfp();
;--- end asm ---
	ldb	#1	;,
	jsr	_subBank0
;----- asm -----
; 2139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1489]initstring();
;--- end asm ---
	jsr	_initString
;----- asm -----
; 2141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1490]lastx=0;
;--- end asm ---
	clr	_lastX	; lastX
;----- asm -----
; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1491]lasty=0;
;--- end asm ---
	clr	_lastY	; lastY
;----- asm -----
; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1492]clearmap();
; 2123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1477]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	clr	2,s	; yy
L258:
;----- asm -----
; 2126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1479]for (unsigned char xx=0;xx<4;xx++)
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
	leax	d,u	; ivtmp.571, tmp37,
	clrb	; xx
L257:
;----- asm -----
; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1481]screen[yy][xx] = 0xffff;
;--- end asm ---
	ldu	#-1	; tmp38,
	stu	,x++	; tmp38, screen
	incb	; xx
	cmpb	#4	;cmpqi:	; xx,
	bne	L257	;
	inc	2,s	; yy
	ldb	2,s	;, yy
	cmpb	#4	;cmpqi:	;,
	bne	L258	;
;----- asm -----
; 2147 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1493]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1494]timer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_timer	;, timer
;----- asm -----
; 2151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1495]localtimer = action_time;
;--- end asm ---
	stb	_localTimer	;, localTimer
;----- asm -----
; 2153 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1496]l = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_l	;, l
;----- asm -----
; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1498]tmp_hp = -1;
;--- end asm ---
	stu	_tmp_hp	; tmp38, tmp_hp
;----- asm -----
; 2158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1499]above = 0;
;--- end asm ---
	clr	_above	; above
;----- asm -----
; 2160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1500]inelevator = 0;
;--- end asm ---
	clr	_inElevator	; inElevator
;----- asm -----
; 2162 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1501]elevatory = 0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 2164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1502]lightchange = 0;
;--- end asm ---
	clr	_lightChange	; lightChange
;----- asm -----
; 2166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1503]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 2168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1504]initsoundno = 0;
;--- end asm ---
	clr	_initSoundNo	; initSoundNo
;----- asm -----
; 2170 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1505]sfx_status_1 = 0;
;--- end asm ---
	clr	_sfx_status_1	; sfx_status_1
;----- asm -----
; 2173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1507]printdungeon = 1;
;--- end asm ---
	stb	_printDungeon	;, printDungeon
;----- asm -----
; 2175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1508]m = -1;
;--- end asm ---
	tfr	u,d	; tmp38,
	stb	_m	;movlsbqihi: R:d -> _m	; m,
;----- asm -----
; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1509]printenvironment = -1;
;--- end asm ---
	stb	_printEnvironment	;movlsbqihi: R:d -> _printEnvironment	; printEnvironment,
;----- asm -----
; 2179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1510]printcharacter = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_printCharacter	;, printCharacter
;----- asm -----
; 2181 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1511]printtreasure = -1;
;--- end asm ---
	tfr	u,d	; tmp38,
	stb	_printTreasure	;movlsbqihi: R:d -> _printTreasure	; printTreasure,
;----- asm -----
; 2184 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1513]printfeffect = 0;
;--- end asm ---
	clr	_printfEffect	; printfEffect
;----- asm -----
; 2186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1514]effecttimer = 0;
;--- end asm ---
	clr	_effectTimer	; effectTimer
;----- asm -----
; 2188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1515]effectoffsety = 0;
;--- end asm ---
	clr	_effectOffsetY	; effectOffsetY
;----- asm -----
; 2190 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
	; #ENR#[1516]effectoffsetx = 0;
;--- end asm ---
	clr	_effectOffsetX	; effectOffsetX
	leas	3,s	;,,
	puls	u,pc	;
