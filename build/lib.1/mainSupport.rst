                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -Os
                              5 	.module	mainSupport.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
                             10 ; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
                             11 ; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -Os
                             13 ; -D__RUM_FUNCTION=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; -IC:\Dev\Vide\projects\Telengard\include
                             15 ; C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c
                             16 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             17 ; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             18 ; -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             19 ; -fdelete-null-pointer-checks -fearly-inlining
                             20 ; -feliminate-unused-debug-types -fexpensive-optimizations
                             21 ; -fforward-propagate -ffunction-cse -fgcse-lm -fguess-branch-probability
                             22 ; -fident -fif-conversion -fif-conversion2 -finline-functions
                             23 ; -finline-functions-called-once -finline-small-functions -fipa-pure-const
                             24 ; -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
                             25 ; -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
                             26 ; -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
                             27 ; -fpcc-struct-return -fpeephole -fpeephole2 -fregmove -freorder-functions
                             28 ; -frerun-cse-after-loop -fsched-interblock -fsched-spec
                             29 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             30 ; -fsplit-wide-types -fstrict-aliasing -fstrict-overflow -fthread-jumps
                             31 ; -ftrapping-math -ftree-ccp -ftree-copy-prop -ftree-copyrename -ftree-dce
                             32 ; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             33 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             34 ; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             35 ; -ftree-store-ccp -ftree-ter -ftree-vect-loop-version -ftree-vrp
                             36 ; -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
                             37 ; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
                             38 	.area	.text
   38A5                      39 LC0:
   38A5 20 20 53 54 41 54    40 	.byte	32,32,83,84,65,84,83,32
        53 20
   38AD 3E 3E 80 00          41 	.byte	62,62,-128,0
   38B1                      42 LC1:
   38B1 25 3A 20 25 00       43 	.ascii	"%: %\0"
   38B6                      44 LC2:
   38B6 48 50 3A 20 25 2F    45 	.ascii	"HP: %/%\0"
        25 00
   38BE                      46 LC3:
   38BE 3C 3C 20 45 4E 56    47 	.byte	60,60,32,69,78,86,32,32
        20 20
   38C6 3E 3E 80 00          48 	.byte	62,62,-128,0
   38CA                      49 LC4:
   38CA 44 55 4E 47 45 4F    50 	.ascii	"DUNGEON: %\0"
        4E 3A 20 25 00
   38D5                      51 LC5:
   38D5 20 20 20 20 20 20    52 	.ascii	"         X=% Y=%\0"
        20 20 20 58 3D 25
        20 59 3D 25 00
   38E6                      53 LC6:
   38E6 52 4F 4F 4D 3A 20    54 	.ascii	"ROOM: %\0"
        25 00
   38EE                      55 LC7:
   38EE 45 4E 43 4F 55 4E    56 	.ascii	"ENCOUNTER: % LEVEL %\0"
        54 45 52 3A 20 25
        20 4C 45 56 45 4C
        20 25 00
   3903                      57 LC8:
   3903 45 4E 43 4F 55 4E    58 	.ascii	"ENCOUNTER: % \0"
        54 45 52 3A 20 25
        20 00
   3911                      59 LC9:
   3911 4E 4F 4E 45 00       60 	.ascii	"NONE\0"
   3916                      61 LC10:
   3916 3C 3C 20 56 41 52    62 	.byte	60,60,32,86,65,82,83,32
        53 20
   391E 3E 3E 80 00          63 	.byte	62,62,-128,0
   3922                      64 LC11:
   3922 4C 56 3A 20 25 00    65 	.ascii	"LV: %\0"
   3928                      66 LC12:
   3928 53 55 3A 20 25 2F    67 	.ascii	"SU: %/%\0"
        25 00
   3930                      68 LC13:
   3930 58 50 3A 20 25 00    69 	.ascii	"XP: %\0"
   3936                      70 LC14:
   3936 47 44 3A 20 25 00    71 	.ascii	"GD: %\0"
   393C                      72 LC15:
   393C 54 47 3A 20 25 00    73 	.ascii	"TG: %\0"
   3942                      74 LC16:
   3942 3C 3C 20 4D 4F 44    75 	.byte	60,60,32,77,79,68,83,32
        53 20
   394A 3E 3E 80 00          76 	.byte	62,62,-128,0
   394E                      77 LC17:
   394E 25 20 2B 25 00       78 	.ascii	"% +%\0"
   3953                      79 LC18:
   3953 3C 3C 20 49 54 45    80 	.byte	60,60,32,73,84,69,77,83
        4D 53
   395B 80 00                81 	.byte	-128,0
   395D                      82 LC19:
   395D 25 20 3A 25 00       83 	.ascii	"% :%\0"
   3962                      84 LC20:
   3962 2D 2D 3E 80 00       85 	.byte	45,45,62,-128,0
   3967                      86 LC21:
   3967 59 4F 55 20 44 4F    87 	.ascii	"YOU DON'T HAVE ONE!!\0"
        4E 27 54 20 48 41
        56 45 20 4F 4E 45
        21 21 00
   397C                      88 LC22:
   397C 59 4F 55 20 55 53    89 	.ascii	"YOU USED %\0"
        45 44 20 25 00
   3987                      90 LC23:
   3987 2A 2A 2A 5A 41 50    91 	.ascii	"***ZAP!!***\0"
        21 21 2A 2A 2A 00
   3993                      92 LC24:
   3993 59 4F 55 20 46 45    93 	.ascii	"YOU FEEL BETTER!\0"
        45 4C 20 42 45 54
        54 45 52 21 00
   39A4                      94 LC25:
   39A4 53 54 52 45 4E 47    95 	.ascii	"STRENGTH FLOWS THROUGH YOUR BODY\0"
        54 48 20 46 4C 4F
        57 53 20 54 48 52
        4F 55 47 48 20 59
        4F 55 52 20 42 4F
        44 59 00
                             96 	.globl	_displayStatusPage
   39C5                      97 _displayStatusPage:
   39C5 34 60         [ 7]   98 	pshs	y,u	;
   39C7 32 77         [ 5]   99 	leas	-9,s	;,,
                            100 ;----- asm -----
                            101 ; 41 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            102 	; #ENR#[40]unsigned int page = 0;
                            103 ; 43 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            104 	; #ENR#[41]int itemselect = 0;
                            105 ; 45 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            106 	; #ENR#[42]int lastdir = 0;
                            107 ; 47 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            108 	; #ENR#[43]int lastdiry = 0;
                            109 ; 49 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            110 	; #ENR#[44]int ret = 0;
                            111 ; 53 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            112 	; #ENR#[47]do
                            113 ;--- end asm ---
   39C9                     114 L3:
                            115 ;----- asm -----
                            116 ; 56 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            117 	; #ENR#[49]check_buttons();
                            118 ;--- end asm ---
   39C9 BD F1 BA      [ 8]  119 	jsr	___Read_Btns
                            120 ;----- asm -----
                            121 ; 58 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            122 	; #ENR#[50]if (!buttons_pressed()) break;
                            123 ;--- end asm ---
   39CC 7D C8 11      [ 7]  124 	tst	_Vec_Buttons	; Vec_Buttons
   39CF 27 02         [ 3]  125 	beq	L2	;
                            126 ;----- asm -----
                            127 ; 60 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            128 	; #ENR#[51]} while (1);
                            129 ;--- end asm ---
   39D1 20 F6         [ 3]  130 	bra	L3	;
   39D3                     131 L2:
                            132 ;----- asm -----
                            133 ; 63 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            134 	; #ENR#[53]do
                            135 ;--- end asm ---
   39D3 6F 62         [ 7]  136 	clr	2,s	; page
   39D5 6F 63         [ 7]  137 	clr	3,s	; itemSelect
   39D7 6F 64         [ 7]  138 	clr	4,s	; lastDir
   39D9 6F 65         [ 7]  139 	clr	5,s	; lastDirY
   39DB                     140 L27:
                            141 ;----- asm -----
                            142 ; 66 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            143 	; #ENR#[55]wait_recal();
                            144 ;--- end asm ---
   39DB BD F1 92      [ 8]  145 	jsr	___Wait_Recal
                            146 ;----- asm -----
                            147 ; 68 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            148 	; #ENR#[56]do_sound();
                            149 ;--- end asm ---
   39DE BD 72 E2      [ 8]  150 	jsr	__Do_Sound
                            151 ;----- asm -----
                            152 ; 70 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            153 	; #ENR#[57]joy_digital();
                            154 ;--- end asm ---
   39E1 BD F1 F8      [ 8]  155 	jsr	___Joy_Digital
                            156 ;----- asm -----
                            157 ; 72 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            158 	; #ENR#[58]check_buttons();
                            159 ;--- end asm ---
   39E4 BD F1 BA      [ 8]  160 	jsr	___Read_Btns
                            161 ;----- asm -----
                            162 ; 74 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            163 	; #ENR#[59]dp_via_t1_cnt_lo  = 0x7f;
                            164 ;--- end asm ---
   39E7 C6 7F         [ 2]  165 	ldb	#127	;,
   39E9 D7 04         [ 4]  166 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                            167 ;----- asm -----
                            168 ; 77 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            169 	; #ENR#[61]if ((vec_joy_1_x > 0) && (!lastdir))
                            170 ;--- end asm ---
   39EB F6 C8 1B      [ 5]  171 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   39EE E7 68         [ 5]  172 	stb	8,s	;, lastDir.183
   39F0 2F 0D         [ 3]  173 	ble	L4	;
   39F2 6D 64         [ 7]  174 	tst	4,s	; lastDir
   39F4 26 09         [ 3]  175 	bne	L4	;
   39F6 E6 62         [ 5]  176 	ldb	2,s	;, page
   39F8 C1 03         [ 2]  177 	cmpb	#3	;cmpqi:	;,
   39FA 22 03         [ 3]  178 	bhi	L4	;
   39FC 5C            [ 2]  179 	incb	;
   39FD E7 62         [ 5]  180 	stb	2,s	;, page
   39FF                     181 L4:
                            182 ;----- asm -----
                            183 ; 80 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            184 	; #ENR#[63]if ((vec_joy_1_x < 0) && (!lastdir))
                            185 ;--- end asm ---
   39FF 6D 68         [ 7]  186 	tst	8,s	; lastDir.183
   3A01 2C 0A         [ 3]  187 	bge	L5	;
   3A03 6D 64         [ 7]  188 	tst	4,s	; lastDir
   3A05 26 06         [ 3]  189 	bne	L5	;
   3A07 6D 62         [ 7]  190 	tst	2,s	; page
   3A09 27 02         [ 3]  191 	beq	L5	;
   3A0B 6A 62         [ 7]  192 	dec	2,s	; page
   3A0D                     193 L5:
                            194 ;----- asm -----
                            195 ; 83 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            196 	; #ENR#[65]lastdir = vec_joy_1_x;
                            197 ; 85 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            198 	; #ENR#[66]intensity_5f();
                            199 ;--- end asm ---
   3A0D BD F2 A5      [ 8]  200 	jsr	___Intensity_5F
                            201 ;----- asm -----
                            202 ; 88 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            203 	; #ENR#[68]int y=0x78;
                            204 ; 90 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            205 	; #ENR#[69]if (page == 0)
                            206 ;--- end asm ---
   3A10 6D 62         [ 7]  207 	tst	2,s	; page
   3A12 10 26 00 72   [ 6]  208 	lbne	L6	;
                            209 ;----- asm -----
                            210 ; 93 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            211 	; #ENR#[71]print_str_d(y,-0x20, );
                            212 ;--- end asm ---
   3A16 C6 78         [ 2]  213 	ldb	#120	;,
   3A18 E7 E2         [ 6]  214 	stb	,-s	;,
   3A1A 8E 38 A5      [ 3]  215 	ldx	#LC0	;,
   3A1D C6 E0         [ 2]  216 	ldb	#-32	;,
   3A1F BD 59 7E      [ 8]  217 	jsr	_syncPrintStrd
                            218 ;----- asm -----
                            219 ; 95 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            220 	; #ENR#[72]reset0ref();
                            221 ;--- end asm ---
   3A22 C6 CC         [ 2]  222 	ldb	#-52	;,
   3A24 D7 0C         [ 4]  223 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            224 ;----- asm -----
                            225 ; 97 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            226 	; #ENR#[73]y = 0x50;
                            227 ; 99 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            228 	; #ENR#[74]for (int i=0; i<6;i++)
                            229 ;--- end asm ---
   3A26 10 8E 00 00   [ 4]  230 	ldy	#0	; ivtmp.147,
   3A2A 32 61         [ 5]  231 	leas	1,s	;,,
   3A2C                     232 L7:
                            233 ;----- asm -----
                            234 ; 102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            235 	; #ENR#[76]_fsi_s( , stats[i], s[i]);
                            236 ;--- end asm ---
   3A2C 1F 20         [ 6]  237 	tfr	y,d	; ivtmp.147,
   3A2E 58            [ 2]  238 	aslb	;
   3A2F 49            [ 2]  239 	rola	;
   3A30 1F 01         [ 6]  240 	tfr	d,x	;, tmp160
   3A32 AE 89 01 64   [ 9]  241 	ldx	_stats,x	;, stats
   3A36 AF E3         [ 8]  242 	stx	,--s	;,
   3A38 E6 A9 C9 45   [ 8]  243 	ldb	_s,y	;, s
   3A3C 8E 38 B1      [ 3]  244 	ldx	#LC1	;,
   3A3F BD 6B 73      [ 8]  245 	jsr	__fsi_s
                            246 ;----- asm -----
                            247 ; 104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            248 	; #ENR#[77]print_str_d(y,-0x20, stringbuffer40);
                            249 ;--- end asm ---
   3A42 1F 20         [ 6]  250 	tfr	y,d	; ivtmp.147,
   3A44 86 F6         [ 2]  251 	lda	#-10	;umulqihi3	;
   3A46 3D            [11]  252 	mul
                            253 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3A47 1F 01         [ 6]  254 	tfr	d,x	;, tmp163
                            255 ; ORG>	tfr	d,x	;, tmp163
                            256 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp163, tmp165
   3A49 CB 50         [ 2]  257 	addb	#80	; tmp165,
   3A4B 34 04         [ 6]  258 	pshs	b	; tmp165
   3A4D 8E C8 BF      [ 3]  259 	ldx	#_stringBuffer40	;,
   3A50 C6 E0         [ 2]  260 	ldb	#-32	;,
   3A52 BD 59 7E      [ 8]  261 	jsr	_syncPrintStrd
                            262 ;----- asm -----
                            263 ; 106 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            264 	; #ENR#[78]reset0ref();
                            265 ;--- end asm ---
   3A55 C6 CC         [ 2]  266 	ldb	#-52	;,
   3A57 D7 0C         [ 4]  267 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            268 ;----- asm -----
                            269 ; 108 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            270 	; #ENR#[79]y -= 10;
                            271 ;--- end asm ---
   3A59 31 21         [ 5]  272 	leay	1,y	; ivtmp.147,, ivtmp.147
   3A5B 32 63         [ 5]  273 	leas	3,s	;,,
   3A5D 10 8C 00 06   [ 5]  274 	cmpy	#6	;cmphi:	; ivtmp.147,
   3A61 26 C9         [ 3]  275 	bne	L7	;
                            276 ;----- asm -----
                            277 ; 112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            278 	; #ENR#[82]y -= 10;
                            279 ; 114 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            280 	; #ENR#[83]_fl_l_s( , (unsigned long int)ch, (unsigned long int)hp);
                            281 ;--- end asm ---
   3A63 BE C9 36      [ 6]  282 	ldx	_hp	;, hp
   3A66 AF E3         [ 8]  283 	stx	,--s	;,
   3A68 FC C9 63      [ 6]  284 	ldd	_ch	;, ch
   3A6B ED E3         [ 8]  285 	std	,--s	;,
   3A6D 8E 38 B6      [ 3]  286 	ldx	#LC2	;,
   3A70 BD 6F 94      [ 8]  287 	jsr	__fl_l_s
                            288 ;----- asm -----
                            289 ; 116 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            290 	; #ENR#[84]print_str_d(y,-0x20, stringbuffer40);
                            291 ;--- end asm ---
   3A73 C6 0A         [ 2]  292 	ldb	#10	;,
   3A75 E7 E2         [ 6]  293 	stb	,-s	;,
   3A77 8E C8 BF      [ 3]  294 	ldx	#_stringBuffer40	;,
   3A7A C6 E0         [ 2]  295 	ldb	#-32	;,
   3A7C BD 59 7E      [ 8]  296 	jsr	_syncPrintStrd
                            297 ;----- asm -----
                            298 ; 118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            299 	; #ENR#[85]reset0ref();
                            300 ;--- end asm ---
   3A7F C6 CC         [ 2]  301 	ldb	#-52	;,
   3A81 D7 0C         [ 4]  302 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   3A83 32 65         [ 5]  303 	leas	5,s	;,,
   3A85 16 03 0D      [ 5]  304 	lbra	L8	;
   3A88                     305 L6:
   3A88 E6 62         [ 5]  306 	ldb	2,s	;, page
   3A8A C1 01         [ 2]  307 	cmpb	#1	;cmpqi:	;,
   3A8C 10 26 00 A7   [ 6]  308 	lbne	L9	;
                            309 ;----- asm -----
                            310 ; 124 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            311 	; #ENR#[90]print_str_d(y,-0x20, );
                            312 ;--- end asm ---
   3A90 C6 78         [ 2]  313 	ldb	#120	;,
   3A92 E7 E2         [ 6]  314 	stb	,-s	;,
   3A94 8E 38 BE      [ 3]  315 	ldx	#LC3	;,
   3A97 C6 E0         [ 2]  316 	ldb	#-32	;,
   3A99 BD 59 7E      [ 8]  317 	jsr	_syncPrintStrd
                            318 ;----- asm -----
                            319 ; 126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            320 	; #ENR#[91]reset0ref();
                            321 ;--- end asm ---
   3A9C C6 CC         [ 2]  322 	ldb	#-52	;,
   3A9E D7 0C         [ 4]  323 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            324 ;----- asm -----
                            325 ; 128 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            326 	; #ENR#[92]y = 0x50;
                            327 ; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            328 	; #ENR#[93]_fi_s( , cz);
                            329 ;--- end asm ---
   3AA0 F6 C9 67      [ 5]  330 	ldb	_cz	;, cz
   3AA3 8E 38 CA      [ 3]  331 	ldx	#LC4	;,
   3AA6 BD 5C C6      [ 8]  332 	jsr	__fi_s
                            333 ;----- asm -----
                            334 ; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            335 	; #ENR#[94]print_str_d(y,-0x20, stringbuffer40);
                            336 ;--- end asm ---
   3AA9 C6 50         [ 2]  337 	ldb	#80	;,
   3AAB E7 E2         [ 6]  338 	stb	,-s	;,
   3AAD 8E C8 BF      [ 3]  339 	ldx	#_stringBuffer40	;,
   3AB0 C6 E0         [ 2]  340 	ldb	#-32	;,
   3AB2 BD 59 7E      [ 8]  341 	jsr	_syncPrintStrd
                            342 ;----- asm -----
                            343 ; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            344 	; #ENR#[95]reset0ref();
                            345 ;--- end asm ---
   3AB5 C6 CC         [ 2]  346 	ldb	#-52	;,
   3AB7 D7 0C         [ 4]  347 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            348 ;----- asm -----
                            349 ; 137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            350 	; #ENR#[97]y -= 10;
                            351 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            352 	; #ENR#[98]_fii(  , cx,cy);
                            353 ;--- end asm ---
   3AB9 F6 C9 40      [ 5]  354 	ldb	_cy	;, cy
   3ABC E7 E2         [ 6]  355 	stb	,-s	;,
   3ABE F6 C9 3F      [ 5]  356 	ldb	_cx	;, cx
   3AC1 8E 38 D5      [ 3]  357 	ldx	#LC5	;,
   3AC4 BD 6D 87      [ 8]  358 	jsr	__fii
                            359 ;----- asm -----
                            360 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            361 	; #ENR#[99]print_str_d(y,-0x20, stringbuffer40);
                            362 ;--- end asm ---
   3AC7 C6 46         [ 2]  363 	ldb	#70	;,
   3AC9 E7 E2         [ 6]  364 	stb	,-s	;,
   3ACB 8E C8 BF      [ 3]  365 	ldx	#_stringBuffer40	;,
   3ACE C6 E0         [ 2]  366 	ldb	#-32	;,
   3AD0 BD 59 7E      [ 8]  367 	jsr	_syncPrintStrd
                            368 ;----- asm -----
                            369 ; 143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            370 	; #ENR#[100]reset0ref();
                            371 ;--- end asm ---
   3AD3 C6 CC         [ 2]  372 	ldb	#-52	;,
   3AD5 D7 0C         [ 4]  373 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            374 ;----- asm -----
                            375 ; 146 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            376 	; #ENR#[102]extern const char *const environment_string[];
                            377 ; 148 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            378 	; #ENR#[103]y -= 10;
                            379 ; 150 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            380 	; #ENR#[104]_fs( , environment_string[printenvironment]);
                            381 ;--- end asm ---
   3AD7 F6 C8 F4      [ 5]  382 	ldb	_printEnvironment	;, printEnvironment
   3ADA 1D            [ 2]  383 	sex		;extendqihi2: R:b -> R:d	;,
   3ADB ED 64         [ 6]  384 	std	4,s	;,
   3ADD 58            [ 2]  385 	aslb	;
   3ADE 49            [ 2]  386 	rola	;
   3ADF 1F 01         [ 6]  387 	tfr	d,x	;, tmp170
   3AE1 AE 89 04 E4   [ 9]  388 	ldx	_environment_string,x	;, environment_string
   3AE5 AF E3         [ 8]  389 	stx	,--s	;,
   3AE7 8E 38 E6      [ 3]  390 	ldx	#LC6	;,
   3AEA BD 5C 59      [ 8]  391 	jsr	__fs
                            392 ;----- asm -----
                            393 ; 152 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            394 	; #ENR#[105]print_str_d(y,-0x20, stringbuffer40);
                            395 ;--- end asm ---
   3AED C6 3C         [ 2]  396 	ldb	#60	;,
   3AEF E7 E2         [ 6]  397 	stb	,-s	;,
   3AF1 8E C8 BF      [ 3]  398 	ldx	#_stringBuffer40	;,
   3AF4 C6 E0         [ 2]  399 	ldb	#-32	;,
   3AF6 BD 59 7E      [ 8]  400 	jsr	_syncPrintStrd
                            401 ;----- asm -----
                            402 ; 154 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            403 	; #ENR#[106]reset0ref();
                            404 ;--- end asm ---
   3AF9 C6 CC         [ 2]  405 	ldb	#-52	;,
   3AFB D7 0C         [ 4]  406 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            407 ;----- asm -----
                            408 ; 158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            409 	; #ENR#[109]y -= 10;
                            410 ; 160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            411 	; #ENR#[110]if (m>=0)
                            412 ;--- end asm ---
   3AFD F6 C9 77      [ 5]  413 	ldb	_m	; m.12, m
   3B00 32 67         [ 5]  414 	leas	7,s	;,,
   3B02 5D            [ 2]  415 	tstb	; m.12
   3B03 2D 16         [ 3]  416 	blt	L10	;
                            417 ;----- asm -----
                            418 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            419 	; #ENR#[112]_fsi_s( , mo[m], ml);
                            420 ;--- end asm ---
   3B05 1D            [ 2]  421 	sex		;extendqihi2: R:b -> R:d	; m.12, m.12
   3B06 58            [ 2]  422 	aslb	;
   3B07 49            [ 2]  423 	rola	;
   3B08 1F 01         [ 6]  424 	tfr	d,x	; m.12, tmp175
   3B0A AE 89 01 24   [ 9]  425 	ldx	_mo,x	;, mo
   3B0E AF E3         [ 8]  426 	stx	,--s	;,
   3B10 F6 C9 7F      [ 5]  427 	ldb	_ml	;, ml
   3B13 8E 38 EE      [ 3]  428 	ldx	#LC7	;,
   3B16 BD 6B 73      [ 8]  429 	jsr	__fsi_s
   3B19 20 0B         [ 3]  430 	bra	L32	;
   3B1B                     431 L10:
                            432 ;----- asm -----
                            433 ; 168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            434 	; #ENR#[116]_fs( , );
                            435 ;--- end asm ---
   3B1B 8E 39 11      [ 3]  436 	ldx	#LC9	;,
   3B1E AF E3         [ 8]  437 	stx	,--s	;,
   3B20 8E 39 03      [ 3]  438 	ldx	#LC8	;,
   3B23 BD 5C 59      [ 8]  439 	jsr	__fs
   3B26                     440 L32:
   3B26 32 62         [ 5]  441 	leas	2,s	;,,
                            442 ;----- asm -----
                            443 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            444 	; #ENR#[118]print_str_d(y,-0x20, stringbuffer40);
                            445 ;--- end asm ---
   3B28 C6 32         [ 2]  446 	ldb	#50	;,
   3B2A E7 E2         [ 6]  447 	stb	,-s	;,
   3B2C 8E C8 BF      [ 3]  448 	ldx	#_stringBuffer40	;,
   3B2F C6 E0         [ 2]  449 	ldb	#-32	;,
   3B31 BD 59 7E      [ 8]  450 	jsr	_syncPrintStrd
                            451 ;----- asm -----
                            452 ; 173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            453 	; #ENR#[119]reset0ref();
                            454 ;--- end asm ---
   3B34 16 00 B7      [ 5]  455 	lbra	L34	;
   3B37                     456 L9:
   3B37 E6 62         [ 5]  457 	ldb	2,s	;, page
   3B39 C1 02         [ 2]  458 	cmpb	#2	;cmpqi:	;,
   3B3B 10 26 00 B8   [ 6]  459 	lbne	L12	;
                            460 ;----- asm -----
                            461 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            462 	; #ENR#[124]print_str_d(y,-0x20, );
                            463 ;--- end asm ---
   3B3F C6 78         [ 2]  464 	ldb	#120	;,
   3B41 E7 E2         [ 6]  465 	stb	,-s	;,
   3B43 8E 39 16      [ 3]  466 	ldx	#LC10	;,
   3B46 C6 E0         [ 2]  467 	ldb	#-32	;,
   3B48 BD 59 7E      [ 8]  468 	jsr	_syncPrintStrd
                            469 ;----- asm -----
                            470 ; 181 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            471 	; #ENR#[125]reset0ref();
                            472 ;--- end asm ---
   3B4B C6 CC         [ 2]  473 	ldb	#-52	;,
   3B4D D7 0C         [ 4]  474 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            475 ;----- asm -----
                            476 ; 183 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            477 	; #ENR#[126]y = 0x50;
                            478 ; 186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            479 	; #ENR#[128]_fi_s( , lv);
                            480 ;--- end asm ---
   3B4F F6 C9 38      [ 5]  481 	ldb	_lv	;, lv
   3B52 8E 39 22      [ 3]  482 	ldx	#LC11	;,
   3B55 BD 5C C6      [ 8]  483 	jsr	__fi_s
                            484 ;----- asm -----
                            485 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            486 	; #ENR#[129]print_str_d(y,-0x20, stringbuffer40);
                            487 ;--- end asm ---
   3B58 C6 50         [ 2]  488 	ldb	#80	;,
   3B5A E7 E2         [ 6]  489 	stb	,-s	;,
   3B5C 8E C8 BF      [ 3]  490 	ldx	#_stringBuffer40	;,
   3B5F C6 E0         [ 2]  491 	ldb	#-32	;,
   3B61 BD 59 7E      [ 8]  492 	jsr	_syncPrintStrd
                            493 ;----- asm -----
                            494 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            495 	; #ENR#[130]reset0ref();
                            496 ;--- end asm ---
   3B64 C6 CC         [ 2]  497 	ldb	#-52	;,
   3B66 D7 0C         [ 4]  498 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            499 ;----- asm -----
                            500 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            501 	; #ENR#[133]y -= 10;
                            502 ; 196 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            503 	; #ENR#[134]_fl_l_s( , cs, su);
                            504 ;--- end asm ---
   3B68 BE C9 3D      [ 6]  505 	ldx	_su	;, su
   3B6B AF E3         [ 8]  506 	stx	,--s	;,
   3B6D FC C9 65      [ 6]  507 	ldd	_cs	;, cs
   3B70 ED E3         [ 8]  508 	std	,--s	;,
   3B72 8E 39 28      [ 3]  509 	ldx	#LC12	;,
   3B75 BD 6F 94      [ 8]  510 	jsr	__fl_l_s
                            511 ;----- asm -----
                            512 ; 198 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            513 	; #ENR#[135]print_str_d(y,-0x20, stringbuffer40);
                            514 ;--- end asm ---
   3B78 C6 46         [ 2]  515 	ldb	#70	;,
   3B7A E7 E2         [ 6]  516 	stb	,-s	;,
   3B7C 8E C8 BF      [ 3]  517 	ldx	#_stringBuffer40	;,
   3B7F C6 E0         [ 2]  518 	ldb	#-32	;,
   3B81 BD 59 7E      [ 8]  519 	jsr	_syncPrintStrd
                            520 ;----- asm -----
                            521 ; 200 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            522 	; #ENR#[136]reset0ref();
                            523 ;--- end asm ---
   3B84 C6 CC         [ 2]  524 	ldb	#-52	;,
   3B86 D7 0C         [ 4]  525 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            526 ;----- asm -----
                            527 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            528 	; #ENR#[138]y -= 10;
                            529 ; 205 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            530 	; #ENR#[139]_fll_s( , ex);
                            531 ;--- end asm ---
   3B88 32 7C         [ 5]  532 	leas	-4,s	;,,
   3B8A BE C9 39      [ 6]  533 	ldx	_ex	;, ex
   3B8D AF E4         [ 5]  534 	stx	,s	;,
   3B8F FC C9 3B      [ 6]  535 	ldd	_ex+2	;, ex
   3B92 ED 62         [ 6]  536 	std	2,s	;,
   3B94 8E 39 30      [ 3]  537 	ldx	#LC13	;,
   3B97 BD 67 BD      [ 8]  538 	jsr	__fll_s
                            539 ;----- asm -----
                            540 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            541 	; #ENR#[140]print_str_d(y,-0x20, stringbuffer40);
                            542 ;--- end asm ---
   3B9A 32 6B         [ 5]  543 	leas	11,s	;,,
   3B9C C6 3C         [ 2]  544 	ldb	#60	;,
   3B9E E7 E2         [ 6]  545 	stb	,-s	;,
   3BA0 8E C8 BF      [ 3]  546 	ldx	#_stringBuffer40	;,
   3BA3 C6 E0         [ 2]  547 	ldb	#-32	;,
   3BA5 BD 59 7E      [ 8]  548 	jsr	_syncPrintStrd
                            549 ;----- asm -----
                            550 ; 209 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            551 	; #ENR#[141]reset0ref();
                            552 ;--- end asm ---
   3BA8 C6 CC         [ 2]  553 	ldb	#-52	;,
   3BAA D7 0C         [ 4]  554 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            555 ;----- asm -----
                            556 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            557 	; #ENR#[143]y -= 10;
                            558 ; 214 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            559 	; #ENR#[144]_fll_s( , gd);
                            560 ;--- end asm ---
   3BAC 32 7C         [ 5]  561 	leas	-4,s	;,,
   3BAE BE C9 68      [ 6]  562 	ldx	_gd	;, gd
   3BB1 AF E4         [ 5]  563 	stx	,s	;,
   3BB3 FC C9 6A      [ 6]  564 	ldd	_gd+2	;, gd
   3BB6 ED 62         [ 6]  565 	std	2,s	;,
   3BB8 8E 39 36      [ 3]  566 	ldx	#LC14	;,
   3BBB BD 67 BD      [ 8]  567 	jsr	__fll_s
                            568 ;----- asm -----
                            569 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            570 	; #ENR#[145]print_str_d(y,-0x20, stringbuffer40);
                            571 ;--- end asm ---
   3BBE C6 32         [ 2]  572 	ldb	#50	;,
   3BC0 E7 E2         [ 6]  573 	stb	,-s	;,
   3BC2 8E C8 BF      [ 3]  574 	ldx	#_stringBuffer40	;,
   3BC5 C6 E0         [ 2]  575 	ldb	#-32	;,
   3BC7 BD 59 7E      [ 8]  576 	jsr	_syncPrintStrd
                            577 ;----- asm -----
                            578 ; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            579 	; #ENR#[146]reset0ref();
                            580 ;--- end asm ---
   3BCA C6 CC         [ 2]  581 	ldb	#-52	;,
   3BCC D7 0C         [ 4]  582 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            583 ;----- asm -----
                            584 ; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            585 	; #ENR#[148]y -= 10;
                            586 ; 223 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            587 	; #ENR#[149]_fll_s( , tg);
                            588 ;--- end asm ---
   3BCE 32 7C         [ 5]  589 	leas	-4,s	;,,
   3BD0 BE C9 41      [ 6]  590 	ldx	_tg	;, tg
   3BD3 AF E4         [ 5]  591 	stx	,s	;,
   3BD5 FC C9 43      [ 6]  592 	ldd	_tg+2	;, tg
   3BD8 ED 62         [ 6]  593 	std	2,s	;,
   3BDA 8E 39 3C      [ 3]  594 	ldx	#LC15	;,
   3BDD BD 67 BD      [ 8]  595 	jsr	__fll_s
                            596 ;----- asm -----
                            597 ; 225 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            598 	; #ENR#[150]print_str_d(y,-0x20, stringbuffer40);
                            599 ;--- end asm ---
   3BE0 32 6A         [ 5]  600 	leas	10,s	;,,
   3BE2 C6 28         [ 2]  601 	ldb	#40	;,
   3BE4 E7 E2         [ 6]  602 	stb	,-s	;,
   3BE6 8E C8 BF      [ 3]  603 	ldx	#_stringBuffer40	;,
   3BE9 C6 E0         [ 2]  604 	ldb	#-32	;,
   3BEB BD 59 7E      [ 8]  605 	jsr	_syncPrintStrd
                            606 ;----- asm -----
                            607 ; 227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            608 	; #ENR#[151]reset0ref();
                            609 ;--- end asm ---
   3BEE                     610 L34:
   3BEE C6 CC         [ 2]  611 	ldb	#-52	;,
   3BF0 D7 0C         [ 4]  612 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   3BF2 32 61         [ 5]  613 	leas	1,s	;,,
   3BF4 16 01 9E      [ 5]  614 	lbra	L8	;
   3BF7                     615 L12:
   3BF7 E6 62         [ 5]  616 	ldb	2,s	;, page
   3BF9 C1 03         [ 2]  617 	cmpb	#3	;cmpqi:	;,
   3BFB 10 26 00 53   [ 6]  618 	lbne	L13	;
                            619 ;----- asm -----
                            620 ; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            621 	; #ENR#[157]print_str_d(0x78,-0x20, );
                            622 ;--- end asm ---
   3BFF C6 78         [ 2]  623 	ldb	#120	;,
   3C01 E7 E2         [ 6]  624 	stb	,-s	;,
   3C03 8E 39 42      [ 3]  625 	ldx	#LC16	;,
   3C06 C6 E0         [ 2]  626 	ldb	#-32	;,
   3C08 BD 59 7E      [ 8]  627 	jsr	_syncPrintStrd
                            628 ;----- asm -----
                            629 ; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            630 	; #ENR#[158]reset0ref();
                            631 ;--- end asm ---
   3C0B C6 CC         [ 2]  632 	ldb	#-52	;,
   3C0D D7 0C         [ 4]  633 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            634 ;----- asm -----
                            635 ; 238 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            636 	; #ENR#[159]y = 0x50;
                            637 ; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            638 	; #ENR#[160]for (int i=0; i<7;i++)
                            639 ;--- end asm ---
   3C0F C6 50         [ 2]  640 	ldb	#80	;,
   3C11 E7 68         [ 5]  641 	stb	8,s	;, y
   3C13 10 8E 00 00   [ 4]  642 	ldy	#0	; ivtmp.166,
   3C17 32 61         [ 5]  643 	leas	1,s	;,,
   3C19                     644 L15:
                            645 ;----- asm -----
                            646 ; 243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            647 	; #ENR#[162]if (inventory[i]<=0) continue;
                            648 ;--- end asm ---
   3C19 AE A9 C9 4B   [ 9]  649 	ldx	_inventory,y	; D.3332, inventory
   3C1D 27 26         [ 3]  650 	beq	L14	;
                            651 ;----- asm -----
                            652 ; 245 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            653 	; #ENR#[163]_fsl_s( , items[i], inventory[i]);
                            654 ;--- end asm ---
   3C1F 34 10         [ 6]  655 	pshs	x	; D.3332
   3C21 AE A9 01 F9   [ 9]  656 	ldx	_items,y	;, items
   3C25 AF E3         [ 8]  657 	stx	,--s	;,
   3C27 8E 39 4E      [ 3]  658 	ldx	#LC17	;,
   3C2A BD 6E DC      [ 8]  659 	jsr	__fsl_s
                            660 ;----- asm -----
                            661 ; 247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            662 	; #ENR#[164]print_str_d(y,-0x20, stringbuffer40);
                            663 ;--- end asm ---
   3C2D E6 6B         [ 5]  664 	ldb	11,s	;, y
   3C2F 34 04         [ 6]  665 	pshs	b	;
   3C31 8E C8 BF      [ 3]  666 	ldx	#_stringBuffer40	;,
   3C34 C6 E0         [ 2]  667 	ldb	#-32	;,
   3C36 BD 59 7E      [ 8]  668 	jsr	_syncPrintStrd
                            669 ;----- asm -----
                            670 ; 249 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            671 	; #ENR#[165]reset0ref();
                            672 ;--- end asm ---
   3C39 C6 CC         [ 2]  673 	ldb	#-52	;,
   3C3B D7 0C         [ 4]  674 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            675 ;----- asm -----
                            676 ; 251 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            677 	; #ENR#[166]y -= 10;
                            678 ;--- end asm ---
   3C3D E6 6C         [ 5]  679 	ldb	12,s	;, y
   3C3F CB F6         [ 2]  680 	addb	#-10	;,
   3C41 E7 6C         [ 5]  681 	stb	12,s	;, y
   3C43 32 65         [ 5]  682 	leas	5,s	;,,
   3C45                     683 L14:
   3C45 31 22         [ 5]  684 	leay	2,y	; ivtmp.166,, ivtmp.166
   3C47 10 8C 00 0E   [ 5]  685 	cmpy	#14	;cmphi:	; ivtmp.166,
   3C4B 10 26 FF CA   [ 6]  686 	lbne	L15	;
   3C4F 16 01 43      [ 5]  687 	lbra	L8	;
   3C52                     688 L13:
   3C52 E6 62         [ 5]  689 	ldb	2,s	;, page
   3C54 C1 04         [ 2]  690 	cmpb	#4	;cmpqi:	;,
   3C56 10 26 01 3B   [ 6]  691 	lbne	L8	;
                            692 ;----- asm -----
                            693 ; 258 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            694 	; #ENR#[172]print_str_d(0x78,-0x20, );
                            695 ;--- end asm ---
   3C5A C6 78         [ 2]  696 	ldb	#120	;,
   3C5C E7 E2         [ 6]  697 	stb	,-s	;,
   3C5E 8E 39 53      [ 3]  698 	ldx	#LC18	;,
   3C61 C6 E0         [ 2]  699 	ldb	#-32	;,
   3C63 BD 59 7E      [ 8]  700 	jsr	_syncPrintStrd
                            701 ;----- asm -----
                            702 ; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            703 	; #ENR#[173]reset0ref();
                            704 ;--- end asm ---
   3C66 C6 CC         [ 2]  705 	ldb	#-52	;,
   3C68 D7 0C         [ 4]  706 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            707 ;----- asm -----
                            708 ; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            709 	; #ENR#[174]y = 0x50;
                            710 ; 265 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            711 	; #ENR#[176]for (int i=7; i<10;i++)
                            712 ;--- end asm ---
   3C6A 10 8E 00 00   [ 4]  713 	ldy	#0	; ivtmp.179,
   3C6E 32 61         [ 5]  714 	leas	1,s	;,,
   3C70                     715 L16:
                            716 ;----- asm -----
                            717 ; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            718 	; #ENR#[178]_fsl_s( , items[i], inventory[i]);
                            719 ;--- end asm ---
   3C70 AE A9 C9 59   [ 9]  720 	ldx	_inventory+14,y	;, inventory
   3C74 AF E3         [ 8]  721 	stx	,--s	;,
   3C76 EC A9 02 07   [ 9]  722 	ldd	_items+14,y	;, items
   3C7A ED E3         [ 8]  723 	std	,--s	;,
   3C7C 8E 39 5D      [ 3]  724 	ldx	#LC19	;,
   3C7F BD 6E DC      [ 8]  725 	jsr	__fsl_s
                            726 ;----- asm -----
                            727 ; 270 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            728 	; #ENR#[179]print_str_d(y,-0x20, stringbuffer40);
                            729 ;--- end asm ---
   3C82 1F 20         [ 6]  730 	tfr	y,d	; ivtmp.179,
   3C84 86 FB         [ 2]  731 	lda	#-5	;umulqihi3	;
   3C86 3D            [11]  732 	mul
                            733 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3C87 1F 01         [ 6]  734 	tfr	d,x	;, tmp194
                            735 ; ORG>	tfr	d,x	;, tmp194
                            736 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp194, tmp196
   3C89 CB 50         [ 2]  737 	addb	#80	; tmp196,
   3C8B 34 04         [ 6]  738 	pshs	b	; tmp196
   3C8D 8E C8 BF      [ 3]  739 	ldx	#_stringBuffer40	;,
   3C90 C6 E0         [ 2]  740 	ldb	#-32	;,
   3C92 BD 59 7E      [ 8]  741 	jsr	_syncPrintStrd
                            742 ;----- asm -----
                            743 ; 272 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            744 	; #ENR#[180]reset0ref();
                            745 ;--- end asm ---
   3C95 C6 CC         [ 2]  746 	ldb	#-52	;,
   3C97 D7 0C         [ 4]  747 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            748 ;----- asm -----
                            749 ; 274 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            750 	; #ENR#[181]y -= 10;
                            751 ;--- end asm ---
   3C99 31 22         [ 5]  752 	leay	2,y	; ivtmp.179,, ivtmp.179
   3C9B 32 65         [ 5]  753 	leas	5,s	;,,
   3C9D 10 8C 00 06   [ 5]  754 	cmpy	#6	;cmphi:	; ivtmp.179,
   3CA1 26 CD         [ 3]  755 	bne	L16	;
                            756 ;----- asm -----
                            757 ; 278 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            758 	; #ENR#[184]if ((vec_joy_1_y > 0) && (!lastdiry))
                            759 ;--- end asm ---
   3CA3 F6 C8 1C      [ 5]  760 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.22, Vec_Joy_1_Y
   3CA6 2F 0A         [ 3]  761 	ble	L17	;
   3CA8 6D 65         [ 7]  762 	tst	5,s	; lastDirY
   3CAA 26 06         [ 3]  763 	bne	L17	;
   3CAC 6D 63         [ 7]  764 	tst	3,s	; itemSelect
   3CAE 27 02         [ 3]  765 	beq	L17	;
   3CB0 6A 63         [ 7]  766 	dec	3,s	; itemSelect
   3CB2                     767 L17:
                            768 ;----- asm -----
                            769 ; 281 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            770 	; #ENR#[186]if ((vec_joy_1_y < 0) && (!lastdiry))
                            771 ;--- end asm ---
   3CB2 5D            [ 2]  772 	tstb	; Vec_Joy_1_Y.22
   3CB3 2C 0D         [ 3]  773 	bge	L18	;
   3CB5 6D 65         [ 7]  774 	tst	5,s	; lastDirY
   3CB7 26 09         [ 3]  775 	bne	L18	;
   3CB9 E6 63         [ 5]  776 	ldb	3,s	;, itemSelect
   3CBB C1 01         [ 2]  777 	cmpb	#1	;cmpqi:	;,
   3CBD 2E 03         [ 3]  778 	bgt	L18	;
   3CBF 5C            [ 2]  779 	incb	;
   3CC0 E7 63         [ 5]  780 	stb	3,s	;, itemSelect
   3CC2                     781 L18:
                            782 ;----- asm -----
                            783 ; 285 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            784 	; #ENR#[189]print_str_d(0x50-10*itemselect,-0x65, );
                            785 ;--- end asm ---
   3CC2 E6 63         [ 5]  786 	ldb	3,s	;, itemSelect
   3CC4 86 F6         [ 2]  787 	lda	#-10	;mulqihi3	;
   3CC6 3D            [11]  788 	mul
                            789 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3CC7 1F 01         [ 6]  790 	tfr	d,x	;, tmp197
                            791 ; ORG>	tfr	d,x	;, tmp197
                            792 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp197, tmp199
   3CC9 CB 50         [ 2]  793 	addb	#80	; tmp199,
   3CCB 34 04         [ 6]  794 	pshs	b	; tmp199
   3CCD 8E 39 62      [ 3]  795 	ldx	#LC20	;,
   3CD0 C6 9B         [ 2]  796 	ldb	#-101	;,
   3CD2 BD 59 7E      [ 8]  797 	jsr	_syncPrintStrd
                            798 ;----- asm -----
                            799 ; 287 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            800 	; #ENR#[190]lastdiry = vec_joy_1_y;
                            801 ;--- end asm ---
   3CD5 F6 C8 1C      [ 5]  802 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   3CD8 E7 66         [ 5]  803 	stb	6,s	;, lastDirY
                            804 ;----- asm -----
                            805 ; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            806 	; #ENR#[192]if (buttons_pressed())
                            807 ;--- end asm ---
   3CDA 32 61         [ 5]  808 	leas	1,s	;,,
   3CDC 7D C8 11      [ 7]  809 	tst	_Vec_Buttons	; Vec_Buttons
   3CDF 10 27 00 B2   [ 6]  810 	lbeq	L8	;
                            811 ;----- asm -----
                            812 ; 293 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            813 	; #ENR#[194]if (inventory[itemselect+7]<=0)
                            814 ;--- end asm ---
   3CE3 E6 63         [ 5]  815 	ldb	3,s	;, itemSelect
   3CE5 CB 07         [ 2]  816 	addb	#7	;,
   3CE7 E7 63         [ 5]  817 	stb	3,s	;, itemSelect
   3CE9 1D            [ 2]  818 	sex		;extendqihi2: R:b -> R:d	;,
   3CEA ED E4         [ 5]  819 	std	,s	;,
   3CEC E6 63         [ 5]  820 	ldb	3,s	;, itemSelect
   3CEE CB F9         [ 2]  821 	addb	#-7	;,
   3CF0 E7 63         [ 5]  822 	stb	3,s	;, itemSelect
   3CF2 EC E4         [ 5]  823 	ldd	,s	;,
   3CF4 58            [ 2]  824 	aslb	;
   3CF5 49            [ 2]  825 	rola	;
   3CF6 1F 03         [ 6]  826 	tfr	d,u	;, tmp202
   3CF8 31 C9 C9 4B   [ 8]  827 	leay	_inventory,u	; tmp203,, tmp202
   3CFC AE A4         [ 5]  828 	ldx	,y	; D.3342, inventory
   3CFE 26 0E         [ 3]  829 	bne	L19	;
                            830 ;----- asm -----
                            831 ; 298 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            832 	; #ENR#[198]clearmessage();
                            833 ;--- end asm ---
   3D00 7F C9 87      [ 7]  834 	clr	_msgLine	; msgLine
                            835 ;----- asm -----
                            836 ; 300 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            837 	; #ENR#[199]printmessage();
                            838 ;--- end asm ---
   3D03 8E 39 67      [ 3]  839 	ldx	#LC21	;,
   3D06 BD 5B 7A      [ 8]  840 	jsr	_printMessage
   3D09 6F 66         [ 7]  841 	clr	6,s	; ret
   3D0B 16 00 85      [ 5]  842 	lbra	L20	;
   3D0E                     843 L19:
                            844 ;----- asm -----
                            845 ; 305 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            846 	; #ENR#[203]inventory[itemselect+7]--;
                            847 ;--- end asm ---
   3D0E 30 1F         [ 5]  848 	leax	-1,x	;,, D.3342
   3D10 AF A4         [ 5]  849 	stx	,y	;, inventory
                            850 ;----- asm -----
                            851 ; 307 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            852 	; #ENR#[204]clearmessage();
                            853 ;--- end asm ---
   3D12 7F C9 87      [ 7]  854 	clr	_msgLine	; msgLine
                            855 ;----- asm -----
                            856 ; 309 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            857 	; #ENR#[205]_fs( , items[itemselect+7]);
                            858 ;--- end asm ---
   3D15 EE C9 01 F9   [ 9]  859 	ldu	_items,u	;, items
   3D19 EF E3         [ 8]  860 	stu	,--s	;,
   3D1B 8E 39 7C      [ 3]  861 	ldx	#LC22	;,
   3D1E BD 5C 59      [ 8]  862 	jsr	__fs
                            863 ;----- asm -----
                            864 ; 311 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            865 	; #ENR#[206]printmessage(stringbuffer40);
                            866 ;--- end asm ---
   3D21 8E C8 BF      [ 3]  867 	ldx	#_stringBuffer40	;,
   3D24 BD 5B 7A      [ 8]  868 	jsr	_printMessage
                            869 ;----- asm -----
                            870 ; 313 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            871 	; #ENR#[207]if (itemselect == 0)
                            872 ;--- end asm ---
   3D27 32 62         [ 5]  873 	leas	2,s	;,,
   3D29 6D 63         [ 7]  874 	tst	3,s	; itemSelect
   3D2B 26 21         [ 3]  875 	bne	L21	;
                            876 ;----- asm -----
                            877 ; 322 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            878 	; #ENR#[215]cz = 1;
                            879 ;--- end asm ---
   3D2D C6 01         [ 2]  880 	ldb	#1	;,
   3D2F F7 C9 67      [ 5]  881 	stb	_cz	;, cz
                            882 ;----- asm -----
                            883 ; 324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            884 	; #ENR#[216]cx = 25;
                            885 ;--- end asm ---
   3D32 C6 19         [ 2]  886 	ldb	#25	;,
   3D34 F7 C9 3F      [ 5]  887 	stb	_cx	;, cx
                            888 ;----- asm -----
                            889 ; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            890 	; #ENR#[217]cy = 13;
                            891 ;--- end asm ---
   3D37 C6 0D         [ 2]  892 	ldb	#13	;,
   3D39 F7 C9 40      [ 5]  893 	stb	_cy	;, cy
                            894 ;----- asm -----
                            895 ; 328 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            896 	; #ENR#[218]printmessage();
                            897 ;--- end asm ---
   3D3C 8E 39 87      [ 3]  898 	ldx	#LC23	;,
   3D3F BD 5B 7A      [ 8]  899 	jsr	_printMessage
                            900 ;----- asm -----
                            901 ; 330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            902 	; #ENR#[219]ret = 1;
                            903 ; 332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            904 	; #ENR#[220]fillmap = go_redraw;
                            905 ;--- end asm ---
   3D42 C6 7F         [ 2]  906 	ldb	#127	;,
   3D44 F7 C8 FC      [ 5]  907 	stb	_fillMap	;, fillMap
   3D47 C6 01         [ 2]  908 	ldb	#1	;,
   3D49 E7 66         [ 5]  909 	stb	6,s	;, ret
   3D4B 16 00 40      [ 5]  910 	lbra	L22	;
   3D4E                     911 L21:
   3D4E E6 63         [ 5]  912 	ldb	3,s	;, itemSelect
   3D50 C1 01         [ 2]  913 	cmpb	#1	;cmpqi:	;,
   3D52 26 28         [ 3]  914 	bne	L23	;
                            915 ;----- asm -----
                            916 ; 341 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            917 	; #ENR#[228]printmessage();
                            918 ;--- end asm ---
   3D54 8E 39 93      [ 3]  919 	ldx	#LC24	;,
   3D57 BD 5B 7A      [ 8]  920 	jsr	_printMessage
                            921 ;----- asm -----
                            922 ; 344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            923 	; #ENR#[230]ch = ch +randmax(20)+1;
                            924 ;--- end asm ---
   3D5A 10 BE C9 63   [ 7]  925 	ldy	_ch	; ch.185, ch
   3D5E C6 14         [ 2]  926 	ldb	#20	;,
   3D60 BD 5F 2A      [ 8]  927 	jsr	_RandMax
   3D63 30 21         [ 5]  928 	leax	1,y	; tmp213,, ch.185
   3D65 4F            [ 2]  929 	clra		;zero_extendqihi: R:b -> R:d	; D.3345, D.3345
   3D66 34 10         [ 6]  930 	pshs	x	;addhi: R:d += R:x	; tmp213, ch.23
   3D68 E3 E1         [ 9]  931 	addd	,s++	; ch.23
   3D6A FD C9 63      [ 6]  932 	std	_ch	; ch.23, ch
                            933 ;----- asm -----
                            934 ; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            935 	; #ENR#[231]if (ch>hp) ch = hp;
                            936 ;--- end asm ---
   3D6D BE C9 36      [ 6]  937 	ldx	_hp	; hp.186, hp
   3D70 34 10         [ 6]  938 	pshs	x	;cmphi: R:x with R:d	; hp.186, ch.23
   3D72 10 A3 E1      [10]  939 	cmpd	,s++	;cmphi:	; ch.23
   3D75 2F 15         [ 3]  940 	ble	L33	;
   3D77                     941 L24:
   3D77 BF C9 63      [ 6]  942 	stx	_ch	; hp.186, ch
   3D7A 20 10         [ 3]  943 	bra	L33	;
   3D7C                     944 L23:
                            945 ;----- asm -----
                            946 ; 355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            947 	; #ENR#[239]printmessage();
                            948 ;--- end asm ---
   3D7C 8E 39 A4      [ 3]  949 	ldx	#LC25	;,
   3D7F BD 5B 7A      [ 8]  950 	jsr	_printMessage
                            951 ;----- asm -----
                            952 ; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            953 	; #ENR#[240]sf[strength] = randmax(20)+11;
                            954 ;--- end asm ---
   3D82 C6 14         [ 2]  955 	ldb	#20	;,
   3D84 BD 5F 2A      [ 8]  956 	jsr	_RandMax
   3D87 CB 0B         [ 2]  957 	addb	#11	; D.3349,
   3D89 F7 C9 6C      [ 5]  958 	stb	_sf	; D.3349, sf
   3D8C                     959 L33:
   3D8C 6F 66         [ 7]  960 	clr	6,s	; ret
   3D8E                     961 L22:
                            962 ;----- asm -----
                            963 ; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            964 	; #ENR#[243]pause(small_pause);
                            965 ;--- end asm ---
   3D8E C6 4B         [ 2]  966 	ldb	#75	;,
   3D90 BD 3E 21      [ 8]  967 	jsr	_pause
   3D93                     968 L20:
                            969 ;----- asm -----
                            970 ; 364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            971 	; #ENR#[245]break;
                            972 ;--- end asm ---
   3D93 20 0E         [ 3]  973 	bra	L25	;
   3D95                     974 L8:
                            975 ;----- asm -----
                            976 ; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            977 	; #ENR#[248]if (buttons_pressed()) break;
                            978 ;--- end asm ---
   3D95 7D C8 11      [ 7]  979 	tst	_Vec_Buttons	; Vec_Buttons
   3D98 26 07         [ 3]  980 	bne	L26	;
                            981 ;----- asm -----
                            982 ; 370 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            983 	; #ENR#[250]while (1);
                            984 ;--- end asm ---
   3D9A E6 68         [ 5]  985 	ldb	8,s	;, lastDir.183
   3D9C E7 64         [ 5]  986 	stb	4,s	;, lastDir
   3D9E 16 FC 3A      [ 5]  987 	lbra	L27	;
   3DA1                     988 L26:
   3DA1 6F 66         [ 7]  989 	clr	6,s	; ret
   3DA3                     990 L25:
                            991 ;----- asm -----
                            992 ; 373 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            993 	; #ENR#[251]resetbuttons();
                            994 ;--- end asm ---
   3DA3 7F C8 11      [ 7]  995 	clr	_Vec_Buttons	; Vec_Buttons
                            996 ;----- asm -----
                            997 ; 375 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            998 	; #ENR#[252]return ret;
                            999 ;--- end asm ---
   3DA6 E6 66         [ 5] 1000 	ldb	6,s	;, ret
   3DA8 32 69         [ 5] 1001 	leas	9,s	;,,
   3DAA 35 E0         [ 8] 1002 	puls	y,u,pc	;
                           1003 	.globl	_displayRound
   3DAC                    1004 _displayRound:
                           1005 ;----- asm -----
                           1006 ; 382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1007 	; #ENR#[258]#if do_original_wr == 1
                           1008 ; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1009 	; #ENR#[261]wr2();
                           1010 ;--- end asm ---
   3DAC BD 5B 38      [ 8] 1011 	jsr	_wr2
                           1012 ;----- asm -----
                           1013 ; 390 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1014 	; #ENR#[262]#endif
                           1015 ; 393 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1016 	; #ENR#[264]do_sound();
                           1017 ;--- end asm ---
   3DAF BD 72 E2      [ 8] 1018 	jsr	__Do_Sound
                           1019 ;----- asm -----
                           1020 ; 395 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1021 	; #ENR#[265]joy_digital2();
                           1022 ;--- end asm ---
   3DB2 BD 5A ED      [ 8] 1023 	jsr	_Joy_Digital2
                           1024 ;----- asm -----
                           1025 ; 397 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1026 	; #ENR#[266]check_buttons();
                           1027 ;--- end asm ---
   3DB5 BD F1 BA      [ 8] 1028 	jsr	___Read_Btns
                           1029 ;----- asm -----
                           1030 ; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1031 	; #ENR#[267]dp_via_t1_cnt_lo  = 0x7f;
                           1032 ;--- end asm ---
   3DB8 C6 7F         [ 2] 1033 	ldb	#127	;,
   3DBA D7 04         [ 4] 1034 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1035 ;----- asm -----
                           1036 ; 402 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1037 	; #ENR#[269]if (lightchange>0) intensity_a((unsigned int)lightchange);
                           1038 ;--- end asm ---
   3DBC F6 C8 A4      [ 5] 1039 	ldb	_lightChange	; lightChange.24, lightChange
   3DBF 2E 0C         [ 3] 1040 	bgt	L40	;
   3DC1                    1041 L36:
                           1042 ;----- asm -----
                           1043 ; 406 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1044 	; #ENR#[272]if (sf[light]>0)
                           1045 ;--- end asm ---
   3DC1 C6 4F         [ 2] 1046 	ldb	#79	;,
   3DC3 7D C9 6E      [ 7] 1047 	tst	_sf+2	; sf
   3DC6 27 05         [ 3] 1048 	beq	L40	;
   3DC8 BD F2 A9      [ 8] 1049 	jsr	___Intensity_7F
   3DCB 20 03         [ 3] 1050 	bra	L37	;
   3DCD                    1051 L40:
   3DCD BD 72 61      [ 8] 1052 	jsr	__Intensity_a
   3DD0                    1053 L37:
                           1054 ;----- asm -----
                           1055 ; 412 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1056 	; #ENR#[277]drawmap();
                           1057 ;--- end asm ---
   3DD0 C6 03         [ 2] 1058 	ldb	#3	;,
   3DD2 BD 00 6E      [ 8] 1059 	jsr	_subBank0
                           1060 ;----- asm -----
                           1061 ; 414 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1062 	; #ENR#[278]displaymessages();
                           1063 ;--- end asm ---
   3DD5 BD 71 CB      [ 8] 1064 	jsr	_displayMessages
   3DD8 39            [ 5] 1065 	rts
                           1066 	.globl	_elevator
   3DD9                    1067 _elevator:
   3DD9 32 7A         [ 5] 1068 	leas	-6,s	;,,
                           1069 ;----- asm -----
                           1070 ; 420 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1071 	; #ENR#[283]inelevator = 1;
                           1072 ;--- end asm ---
   3DDB C6 01         [ 2] 1073 	ldb	#1	;,
   3DDD F7 C8 A2      [ 5] 1074 	stb	_inElevator	;, inElevator
                           1075 ;----- asm -----
                           1076 ; 422 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1077 	; #ENR#[284]elevatory=0;
                           1078 ;--- end asm ---
   3DE0 7F C8 A3      [ 7] 1079 	clr	_elevatorY	; elevatorY
                           1080 ;----- asm -----
                           1081 ; 424 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1082 	; #ENR#[285]vec_music_wk_7 = 0x3e;
                           1083 ;--- end asm ---
   3DE3 C6 3E         [ 2] 1084 	ldb	#62	;,
   3DE5 F7 C8 45      [ 5] 1085 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                           1086 ;----- asm -----
                           1087 ; 426 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1088 	; #ENR#[286]vec_xxx_04 = 0xf;
                           1089 ;--- end asm ---
   3DE8 C6 0F         [ 2] 1090 	ldb	#15	;,
   3DEA F7 C8 44      [ 5] 1091 	stb	_Vec_XXX_04	;, Vec_XXX_04
                           1092 ;----- asm -----
                           1093 ; 429 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1094 	; #ENR#[288]signed long int freq = 5000;
                           1095 ;--- end asm ---
   3DED 8E 13 88      [ 3] 1096 	ldx	#5000	;,
   3DF0 AF 64         [ 6] 1097 	stx	4,s	;, freq
                           1098 ;----- asm -----
                           1099 ; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1100 	; #ENR#[290]while (inelevator)
                           1101 ;--- end asm ---
   3DF2 20 1D         [ 3] 1102 	bra	L42	;
   3DF4                    1103 L43:
                           1104 ;----- asm -----
                           1105 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1106 	; #ENR#[292]freq = freq-5;
                           1107 ;--- end asm ---
   3DF4 EC 64         [ 6] 1108 	ldd	4,s	;, freq
   3DF6 C3 FF FB      [ 4] 1109 	addd	#-5; addhi3,3	;,
   3DF9 ED E4         [ 5] 1110 	std	,s	;, freq.27
   3DFB 1F 89         [ 6] 1111 	tfr	a,b	;,
   3DFD 4F            [ 2] 1112 	clra		;zero_extendqihi: R:b -> R:d	;,
   3DFE E7 63         [ 5] 1113 	stb	3,s	;,
   3E00 AE E4         [ 5] 1114 	ldx	,s	;, freq.27
   3E02 AF 64         [ 6] 1115 	stx	4,s	;, freq
                           1116 ;----- asm -----
                           1117 ; 437 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1118 	; #ENR#[293]vec_xxx_08 = (signed int) (freq&0xff);
                           1119 ;--- end asm ---
   3E04 1F 10         [ 6] 1120 	tfr	x,d	;,
   3E06 F7 C8 4C      [ 5] 1121 	stb	_Vec_XXX_08	;movlsbqihi: R:d -> _Vec_XXX_08	; Vec_XXX_08,
                           1122 ;----- asm -----
                           1123 ; 439 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1124 	; #ENR#[294]vec_music_wk_1 = *((signed int*) &freq);
                           1125 ;--- end asm ---
   3E09 E6 63         [ 5] 1126 	ldb	3,s	;,
   3E0B F7 C8 4B      [ 5] 1127 	stb	_Vec_Music_Wk_1	;, Vec_Music_Wk_1
                           1128 ;----- asm -----
                           1129 ; 441 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1130 	; #ENR#[295]displayround();
                           1131 ;--- end asm ---
   3E0E BD 3D AC      [ 8] 1132 	jsr	_displayRound
                           1133 ;----- asm -----
                           1134 ; 443 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1135 	; #ENR#[296]freq+50;
                           1136 ;--- end asm ---
   3E11                    1137 L42:
   3E11 7D C8 A2      [ 7] 1138 	tst	_inElevator	; inElevator
   3E14 26 DE         [ 3] 1139 	bne	L43	;
                           1140 ;----- asm -----
                           1141 ; 446 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1142 	; #ENR#[298]vec_music_wk_7 = 0x3f;
                           1143 ;--- end asm ---
   3E16 C6 3F         [ 2] 1144 	ldb	#63	;,
   3E18 F7 C8 45      [ 5] 1145 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                           1146 ;----- asm -----
                           1147 ; 448 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1148 	; #ENR#[299]vec_xxx_04 = 0;
                           1149 ;--- end asm ---
   3E1B 7F C8 44      [ 7] 1150 	clr	_Vec_XXX_04	; Vec_XXX_04
   3E1E 32 66         [ 5] 1151 	leas	6,s	;,,
   3E20 39            [ 5] 1152 	rts
                           1153 	.globl	_pause
   3E21                    1154 _pause:
   3E21 34 04         [ 6] 1155 	pshs	b	;
                           1156 ;----- asm -----
                           1157 ; 456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1158 	; #ENR#[306]while(1)
                           1159 ;--- end asm ---
   3E23                    1160 L48:
                           1161 ;----- asm -----
                           1162 ; 459 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1163 	; #ENR#[308]displayround();
                           1164 ;--- end asm ---
   3E23 BD 3D AC      [ 8] 1165 	jsr	_displayRound
                           1166 ;----- asm -----
                           1167 ; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1168 	; #ENR#[309]if (vec_joy_1_x != 0) return;
                           1169 ;--- end asm ---
   3E26 7D C8 1B      [ 7] 1170 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   3E29 26 14         [ 3] 1171 	bne	L49	;
                           1172 ;----- asm -----
                           1173 ; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1174 	; #ENR#[310]if (vec_joy_1_y != 0) return;
                           1175 ;--- end asm ---
   3E2B 7D C8 1C      [ 7] 1176 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   3E2E 26 0F         [ 3] 1177 	bne	L49	;
                           1178 ;----- asm -----
                           1179 ; 465 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1180 	; #ENR#[311]if (buttons_pressed() != 0) return;
                           1181 ;--- end asm ---
   3E30 7D C8 11      [ 7] 1182 	tst	_Vec_Buttons	; Vec_Buttons
   3E33 26 0A         [ 3] 1183 	bne	L49	;
                           1184 ;----- asm -----
                           1185 ; 470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1186 	; #ENR#[315]if (t == 0)
                           1187 ;--- end asm ---
   3E35 6D E4         [ 6] 1188 	tst	,s	; t
   3E37 26 02         [ 3] 1189 	bne	L47	;
                           1190 ;----- asm -----
                           1191 ; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1192 	; #ENR#[317]return;
                           1193 ;--- end asm ---
   3E39 20 04         [ 3] 1194 	bra	L49	;
   3E3B                    1195 L47:
                           1196 ;----- asm -----
                           1197 ; 476 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1198 	; #ENR#[319]t--;
                           1199 ;--- end asm ---
   3E3B 6A E4         [ 6] 1200 	dec	,s	; t
   3E3D 20 E4         [ 3] 1201 	bra	L48	;
   3E3F                    1202 L49:
   3E3F 32 61         [ 5] 1203 	leas	1,s	;,,
   3E41 39            [ 5] 1204 	rts
                           1205 	.globl	_initBox
   3E42                    1206 _initBox:
                           1207 ;----- asm -----
                           1208 ; 484 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1209 	; #ENR#[326]for (int i=0; i<4;i++)
                           1210 ; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1211 	; #ENR#[328]box[i] = (signed int)randmax(4);
                           1212 ;--- end asm ---
   3E42 C6 04         [ 2] 1213 	ldb	#4	;,
   3E44 BD 5F 2A      [ 8] 1214 	jsr	_RandMax
   3E47 F7 C9 5F      [ 5] 1215 	stb	_box	; temp.221, box
                           1216 ;----- asm -----
                           1217 ; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1218 	; #ENR#[328]box[i] = (signed int)randmax(4);
                           1219 ;--- end asm ---
   3E4A C6 04         [ 2] 1220 	ldb	#4	;,
   3E4C BD 5F 2A      [ 8] 1221 	jsr	_RandMax
   3E4F F7 C9 60      [ 5] 1222 	stb	_box+1	; temp.223, box
                           1223 ;----- asm -----
                           1224 ; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1225 	; #ENR#[328]box[i] = (signed int)randmax(4);
                           1226 ;--- end asm ---
   3E52 C6 04         [ 2] 1227 	ldb	#4	;,
   3E54 BD 5F 2A      [ 8] 1228 	jsr	_RandMax
   3E57 F7 C9 61      [ 5] 1229 	stb	_box+2	; temp.225, box
                           1230 ;----- asm -----
                           1231 ; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1232 	; #ENR#[328]box[i] = (signed int)randmax(4);
                           1233 ;--- end asm ---
   3E5A C6 04         [ 2] 1234 	ldb	#4	;,
   3E5C BD 5F 2A      [ 8] 1235 	jsr	_RandMax
   3E5F F7 C9 62      [ 5] 1236 	stb	_box+3	; D.3384, box
   3E62 39            [ 5] 1237 	rts
                           1238 	.globl	_monsterOnStack
   3E63                    1239 _monsterOnStack:
   3E63 34 60         [ 7] 1240 	pshs	y,u	;
   3E65 34 04         [ 6] 1241 	pshs	b	;
   3E67 31 84         [ 4] 1242 	leay	,x	; mh, mh
                           1243 ;----- asm -----
                           1244 ; 498 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1245 	; #ENR#[338]for (int i=18;i>=0;i--)
                           1246 ;--- end asm ---
   3E69 CE 00 00      [ 3] 1247 	ldu	#0	; ivtmp.240,
   3E6C                    1248 L53:
                           1249 ;----- asm -----
                           1250 ; 501 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1251 	; #ENR#[340]stackm[i+1] = stackm[i];
                           1252 ;--- end asm ---
   3E6C E6 C9 C9 9A   [ 8] 1253 	ldb	_stackM+18,u	;, stackM
   3E70 E7 C9 C9 9B   [ 8] 1254 	stb	_stackM+19,u	;, stackM
                           1255 ;----- asm -----
                           1256 ; 503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1257 	; #ENR#[341]stackml[i+1] = stackml[i];
                           1258 ;--- end asm ---
   3E74 E6 C9 C9 AE   [ 8] 1259 	ldb	_stackML+18,u	;, stackML
   3E78 E7 C9 C9 AF   [ 8] 1260 	stb	_stackML+19,u	;, stackML
                           1261 ;----- asm -----
                           1262 ; 505 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1263 	; #ENR#[342]stackmh[i+1] = stackmh[i];
                           1264 ;--- end asm ---
   3E7C 1F 30         [ 6] 1265 	tfr	u,d	; ivtmp.240,
   3E7E 58            [ 2] 1266 	aslb	;
   3E7F 49            [ 2] 1267 	rola	;
   3E80 1F 01         [ 6] 1268 	tfr	d,x	;, D.4320
   3E82 EC 89 C9 D4   [ 9] 1269 	ldd	_stackMH+36,x	;, stackMH
   3E86 ED 89 C9 D6   [ 9] 1270 	std	_stackMH+38,x	;, stackMH
   3E8A 33 5F         [ 5] 1271 	leau	-1,u	; ivtmp.240,, ivtmp.240
   3E8C 11 83 FF ED   [ 5] 1272 	cmpu	#-19	;cmphi:	; ivtmp.240,
   3E90 26 DA         [ 3] 1273 	bne	L53	;
                           1274 ;----- asm -----
                           1275 ; 511 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1276 	; #ENR#[347]if (m==-1)
                           1277 ;--- end asm ---
   3E92 E6 E4         [ 4] 1278 	ldb	,s	;, m
   3E94 C1 FF         [ 2] 1279 	cmpb	#-1	;cmpqi:	;,
   3E96 26 0E         [ 3] 1280 	bne	L54	;
                           1281 ;----- asm -----
                           1282 ; 514 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1283 	; #ENR#[349]stackm[0] = -1;
                           1284 ;--- end asm ---
   3E98 F7 C9 88      [ 5] 1285 	stb	_stackM	;, stackM
                           1286 ;----- asm -----
                           1287 ; 516 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1288 	; #ENR#[350]stackml[0] = 0;
                           1289 ;--- end asm ---
   3E9B 7F C9 9C      [ 7] 1290 	clr	_stackML	; stackML
                           1291 ;----- asm -----
                           1292 ; 518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1293 	; #ENR#[351]stackmh[0] = 0;
                           1294 ;--- end asm ---
   3E9E CC 00 00      [ 3] 1295 	ldd	#0	;,
   3EA1 FD C9 B0      [ 6] 1296 	std	_stackMH	;, stackMH
                           1297 ;----- asm -----
                           1298 ; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1299 	; #ENR#[352]return;
                           1300 ;--- end asm ---
   3EA4 20 0E         [ 3] 1301 	bra	L56	;
   3EA6                    1302 L54:
                           1303 ;----- asm -----
                           1304 ; 523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1305 	; #ENR#[354]stackm[0] = (signed int)m;
                           1306 ;--- end asm ---
   3EA6 E6 E4         [ 4] 1307 	ldb	,s	;, m
   3EA8 F7 C9 88      [ 5] 1308 	stb	_stackM	;, stackM
                           1309 ;----- asm -----
                           1310 ; 525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1311 	; #ENR#[355]stackml[0] = ml;
                           1312 ;--- end asm ---
   3EAB E6 67         [ 5] 1313 	ldb	7,s	;, ml
   3EAD F7 C9 9C      [ 5] 1314 	stb	_stackML	;, stackML
                           1315 ;----- asm -----
                           1316 ; 527 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1317 	; #ENR#[356]stackmh[0] = mh;
                           1318 ;--- end asm ---
   3EB0 10 BF C9 B0   [ 7] 1319 	sty	_stackMH	; mh, stackMH
                           1320 ;----- asm -----
                           1321 ; 529 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1322 	; #ENR#[357]m=-1;
                           1323 ; 531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1324 	; #ENR#[358]ml = 0;
                           1325 ; 533 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1326 	; #ENR#[359]mh = 0;
                           1327 ;--- end asm ---
   3EB4                    1328 L56:
   3EB4 32 61         [ 5] 1329 	leas	1,s	;,,
   3EB6 35 E0         [ 8] 1330 	puls	y,u,pc	;
                           1331 	.globl	_monsterOnStackAdvance
   3EB8                    1332 _monsterOnStackAdvance:
   3EB8 34 60         [ 7] 1333 	pshs	y,u	;
   3EBA 32 7F         [ 5] 1334 	leas	-1,s	;,,
                           1335 ;----- asm -----
                           1336 ; 541 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1337 	; #ENR#[366]int ret = 0;
                           1338 ; 545 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1339 	; #ENR#[369]m=-1;
                           1340 ;--- end asm ---
   3EBC C6 FF         [ 2] 1341 	ldb	#-1	;,
   3EBE F7 C9 77      [ 5] 1342 	stb	_m	;, m
                           1343 ;----- asm -----
                           1344 ; 547 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1345 	; #ENR#[370]if (stackm[0] != -1)
                           1346 ;--- end asm ---
   3EC1 F6 C9 88      [ 5] 1347 	ldb	_stackM	; m.36, stackM
   3EC4 C1 FF         [ 2] 1348 	cmpb	#-1	;cmpqi:	; m.36,
   3EC6 26 04         [ 3] 1349 	bne	L59	;
   3EC8 6F E4         [ 6] 1350 	clr	,s	; ret
   3ECA 20 13         [ 3] 1351 	bra	L60	;
   3ECC                    1352 L59:
                           1353 ;----- asm -----
                           1354 ; 550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1355 	; #ENR#[372]ret = 1;
                           1356 ; 554 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1357 	; #ENR#[375]m = (signed int) stackm[0];
                           1358 ;--- end asm ---
   3ECC F7 C9 77      [ 5] 1359 	stb	_m	; m.36, m
                           1360 ;----- asm -----
                           1361 ; 556 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1362 	; #ENR#[376]ml = stackml[0];
                           1363 ;--- end asm ---
   3ECF F6 C9 9C      [ 5] 1364 	ldb	_stackML	;, stackML
   3ED2 F7 C9 7F      [ 5] 1365 	stb	_ml	;, ml
                           1366 ;----- asm -----
                           1367 ; 558 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1368 	; #ENR#[377]mh = stackmh[0];
                           1369 ;--- end asm ---
   3ED5 BE C9 B0      [ 6] 1370 	ldx	_stackMH	;, stackMH
   3ED8 BF C9 78      [ 6] 1371 	stx	_mh	;, mh
   3EDB C6 01         [ 2] 1372 	ldb	#1	;,
   3EDD E7 E4         [ 4] 1373 	stb	,s	;, ret
   3EDF                    1374 L60:
                           1375 ;----- asm -----
                           1376 ; 563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1377 	; #ENR#[381]for (int i=0; i<19;i++)
                           1378 ;--- end asm ---
   3EDF CE 00 00      [ 3] 1379 	ldu	#0	; ivtmp.257,
   3EE2                    1380 L61:
                           1381 ;----- asm -----
                           1382 ; 566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1383 	; #ENR#[383]stackm[i] = stackm[i+1];
                           1384 ;--- end asm ---
   3EE2 E6 C9 C9 89   [ 8] 1385 	ldb	_stackM+1,u	;, stackM
   3EE6 E7 C9 C9 88   [ 8] 1386 	stb	_stackM,u	;, stackM
                           1387 ;----- asm -----
                           1388 ; 568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1389 	; #ENR#[384]stackml[i] = stackml[i+1];
                           1390 ;--- end asm ---
   3EEA E6 C9 C9 9D   [ 8] 1391 	ldb	_stackML+1,u	;, stackML
   3EEE E7 C9 C9 9C   [ 8] 1392 	stb	_stackML,u	;, stackML
                           1393 ;----- asm -----
                           1394 ; 570 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1395 	; #ENR#[385]stackmh[i] = stackmh[i+1];
                           1396 ;--- end asm ---
   3EF2 1F 30         [ 6] 1397 	tfr	u,d	; ivtmp.257,
   3EF4 58            [ 2] 1398 	aslb	;
   3EF5 49            [ 2] 1399 	rola	;
   3EF6 1F 01         [ 6] 1400 	tfr	d,x	;, D.4344
   3EF8 10 AE 89 C9 B2[10] 1401 	ldy	_stackMH+2,x	;, stackMH
   3EFD 10 AF 89 C9 B0[10] 1402 	sty	_stackMH,x	;, stackMH
   3F02 33 41         [ 5] 1403 	leau	1,u	; ivtmp.257,, ivtmp.257
   3F04 11 83 00 13   [ 5] 1404 	cmpu	#19	;cmphi:	; ivtmp.257,
   3F08 26 D8         [ 3] 1405 	bne	L61	;
                           1406 ;----- asm -----
                           1407 ; 573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1408 	; #ENR#[387]stackm[19] = -1;
                           1409 ;--- end asm ---
   3F0A C6 FF         [ 2] 1410 	ldb	#-1	;,
   3F0C F7 C9 9B      [ 5] 1411 	stb	_stackM+19	;, stackM
                           1412 ;----- asm -----
                           1413 ; 575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1414 	; #ENR#[388]stackml[19] = 0;
                           1415 ;--- end asm ---
   3F0F 7F C9 AF      [ 7] 1416 	clr	_stackML+19	; stackML
                           1417 ;----- asm -----
                           1418 ; 577 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1419 	; #ENR#[389]stackmh[19] = 0;
                           1420 ;--- end asm ---
   3F12 CC 00 00      [ 3] 1421 	ldd	#0	;,
   3F15 FD C9 D6      [ 6] 1422 	std	_stackMH+38	;, stackMH
                           1423 ;----- asm -----
                           1424 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1425 	; #ENR#[391]return ret;
                           1426 ;--- end asm ---
   3F18 E6 E4         [ 4] 1427 	ldb	,s	;, ret
   3F1A 32 61         [ 5] 1428 	leas	1,s	;,,
   3F1C 35 E0         [ 8] 1429 	puls	y,u,pc	;
                           1430 	.globl	_monsterOnStackEvadeFurther
   3F1E                    1431 _monsterOnStackEvadeFurther:
                           1432 ;----- asm -----
                           1433 ; 586 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1434 	; #ENR#[396]monsteronstack(-1, 0, 0);
                           1435 ;--- end asm ---
   3F1E 6F E2         [ 8] 1436 	clr	,-s	;
   3F20 8E 00 00      [ 3] 1437 	ldx	#0	;,
   3F23 C6 FF         [ 2] 1438 	ldb	#-1	;,
   3F25 BD 3E 63      [ 8] 1439 	jsr	_monsterOnStack
   3F28 32 61         [ 5] 1440 	leas	1,s	;,,
   3F2A 39            [ 5] 1441 	rts
                           1442 	.globl	_clearMonsterStack
   3F2B                    1443 _clearMonsterStack:
   3F2B 34 40         [ 6] 1444 	pshs	u	;
                           1445 ;----- asm -----
                           1446 ; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1447 	; #ENR#[404]for (int i=0;i<20;i++)
                           1448 ;--- end asm ---
   3F2D CE 00 00      [ 3] 1449 	ldu	#0	; ivtmp.284,
   3F30                    1450 L67:
                           1451 ;----- asm -----
                           1452 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1453 	; #ENR#[406]stackm[i] = -1;
                           1454 ;--- end asm ---
   3F30 C6 FF         [ 2] 1455 	ldb	#-1	;,
   3F32 E7 C9 C9 88   [ 8] 1456 	stb	_stackM,u	;, stackM
                           1457 ;----- asm -----
                           1458 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1459 	; #ENR#[407]stackml[i] = 0;
                           1460 ;--- end asm ---
   3F36 6F C9 C9 9C   [10] 1461 	clr	_stackML,u	; stackML
                           1462 ;----- asm -----
                           1463 ; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1464 	; #ENR#[408]stackmh[i] = 0;
                           1465 ;--- end asm ---
   3F3A 1F 30         [ 6] 1466 	tfr	u,d	; ivtmp.284,
   3F3C 58            [ 2] 1467 	aslb	;
   3F3D 49            [ 2] 1468 	rola	;
   3F3E 1F 01         [ 6] 1469 	tfr	d,x	;, tmp43
   3F40 CC 00 00      [ 3] 1470 	ldd	#0	;,
   3F43 ED 89 C9 B0   [ 9] 1471 	std	_stackMH,x	;, stackMH
   3F47 33 41         [ 5] 1472 	leau	1,u	; ivtmp.284,, ivtmp.284
   3F49 11 83 00 14   [ 5] 1473 	cmpu	#20	;cmphi:	; ivtmp.284,
   3F4D 26 E1         [ 3] 1474 	bne	L67	;
   3F4F 35 C0         [ 7] 1475 	puls	u,pc	;
   3F51                    1476 LC26:
   3F51 3C 34 3E 20 54 4F  1477 	.byte	60,52,62,32,84,79,32,85
        20 55
   3F59 53 45 20 53 54 41  1478 	.byte	83,69,32,83,84,65,84,83
        54 53
   3F61 80 00              1479 	.byte	-128,0
   3F63                    1480 LC27:
   3F63 59 4F 55 20 44 45  1481 	.byte	89,79,85,32,68,69,83,67
        53 43
   3F6B 45 4E 44 20 49 4E  1482 	.byte	69,78,68,32,73,78,84,79
        54 4F
   3F73 20 54 48 45 80 00  1483 	.byte	32,84,72,69,-128,0
   3F79                    1484 LC28:
   3F79 44 45 50 54 48 20  1485 	.byte	68,69,80,84,72,32,79,70
        4F 46
   3F81 20 54 45 4C 45 4E  1486 	.byte	32,84,69,76,69,78,71,65
        47 41
   3F89 52 44 80 00        1487 	.byte	82,68,-128,0
   3F8D                    1488 LC29:
   3F8D 42 45 57 41 52 45  1489 	.byte	66,69,87,65,82,69,46,46
        2E 2E
   3F95 2E 80 00           1490 	.byte	46,-128,0
                           1491 	.globl	_createCharacter
   3F98                    1492 _createCharacter:
   3F98 34 40         [ 6] 1493 	pshs	u	;
   3F9A 32 7B         [ 5] 1494 	leas	-5,s	;,,
                           1495 ;----- asm -----
                           1496 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1497 	; #ENR#[414]int pressed;
                           1498 ; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1499 	; #ENR#[415]rollagain:
                           1500 ;--- end asm ---
   3F9C                    1501 L87:
                           1502 ;----- asm -----
                           1503 ; 613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1504 	; #ENR#[416]for (int i=0; i<6;i++)
                           1505 ;--- end asm ---
   3F9C CE C9 45      [ 3] 1506 	ldu	#_s	; ivtmp.338,
   3F9F                    1507 L71:
                           1508 ;----- asm -----
                           1509 ; 616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1510 	; #ENR#[418]s[i] = randmax(6)+1 + randmax(6)+1 + randmax(6)+1;
                           1511 ;--- end asm ---
   3F9F C6 06         [ 2] 1512 	ldb	#6	;,
   3FA1 BD 5F 2A      [ 8] 1513 	jsr	_RandMax
   3FA4 E7 61         [ 5] 1514 	stb	1,s	;, D.3447
   3FA6 C6 06         [ 2] 1515 	ldb	#6	;,
   3FA8 BD 5F 2A      [ 8] 1516 	jsr	_RandMax
   3FAB E7 62         [ 5] 1517 	stb	2,s	;, D.3448
   3FAD C6 06         [ 2] 1518 	ldb	#6	;,
   3FAF BD 5F 2A      [ 8] 1519 	jsr	_RandMax
   3FB2 E7 E4         [ 4] 1520 	stb	,s	;, D.3450
   3FB4 E6 61         [ 5] 1521 	ldb	1,s	;, D.3447
   3FB6 EB 62         [ 5] 1522 	addb	2,s	;, D.3448
   3FB8 CB 03         [ 2] 1523 	addb	#3	;,
   3FBA E7 61         [ 5] 1524 	stb	1,s	;, D.3447
   3FBC E6 E4         [ 4] 1525 	ldb	,s	;, D.3450
   3FBE EB 61         [ 5] 1526 	addb	1,s	;, D.3447
   3FC0 E7 C0         [ 6] 1527 	stb	,u+	;, s
   3FC2 11 83 C9 4B   [ 5] 1528 	cmpu	#_s+6	;cmphi:	; ivtmp.338,
   3FC6 26 D7         [ 3] 1529 	bne	L71	;
                           1530 ;----- asm -----
                           1531 ; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1532 	; #ENR#[420]pressed = 0;
                           1533 ; 621 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1534 	; #ENR#[421]localtimer = action_time;
                           1535 ;--- end asm ---
   3FC8 C6 FA         [ 2] 1536 	ldb	#-6	;,
   3FCA F7 C8 A8      [ 5] 1537 	stb	_localTimer	;, localTimer
                           1538 ;----- asm -----
                           1539 ; 623 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1540 	; #ENR#[422]#ifndef no_title
                           1541 ; 625 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1542 	; #ENR#[423]do
                           1543 ;--- end asm ---
   3FCD 6F 63         [ 7] 1544 	clr	3,s	; pressed
   3FCF                    1545 L76:
                           1546 ;----- asm -----
                           1547 ; 628 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1548 	; #ENR#[425]localtimer--;
                           1549 ;--- end asm ---
   3FCF 7A C8 A8      [ 7] 1550 	dec	_localTimer	; localTimer
   3FD2 F6 C8 A8      [ 5] 1551 	ldb	_localTimer	; localTimer.43, localTimer
                           1552 ;----- asm -----
                           1553 ; 630 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1554 	; #ENR#[426]if (localtimer == 0) goto rollagain;
                           1555 ;--- end asm ---
   3FD5 5D            [ 2] 1556 	tstb	; localTimer.43
   3FD6 10 27 FF C2   [ 6] 1557 	lbeq	L87	;
                           1558 ;----- asm -----
                           1559 ; 632 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1560 	; #ENR#[427]cls;
                           1561 ;--- end asm ---
   3FDA C6 90         [ 2] 1562 	ldb	#-112	;,
   3FDC F7 C9 85      [ 5] 1563 	stb	__XC	;, _XC
   3FDF C6 70         [ 2] 1564 	ldb	#112	;,
   3FE1 F7 C9 86      [ 5] 1565 	stb	__YC	;, _YC
                           1566 ;----- asm -----
                           1567 ; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1568 	; #ENR#[428]wait_recal();
                           1569 ;--- end asm ---
   3FE4 BD F1 92      [ 8] 1570 	jsr	___Wait_Recal
                           1571 ;----- asm -----
                           1572 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1573 	; #ENR#[429]do_sound();
                           1574 ;--- end asm ---
   3FE7 BD 72 E2      [ 8] 1575 	jsr	__Do_Sound
                           1576 ;----- asm -----
                           1577 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1578 	; #ENR#[430]check_buttons();
                           1579 ;--- end asm ---
   3FEA BD F1 BA      [ 8] 1580 	jsr	___Read_Btns
                           1581 ;----- asm -----
                           1582 ; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1583 	; #ENR#[431]check_joysticks();
                           1584 ;--- end asm ---
   3FED BD F1 F8      [ 8] 1585 	jsr	___Joy_Digital
                           1586 ;----- asm -----
                           1587 ; 643 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1588 	; #ENR#[433]if (button_1_4_pressed()) break;
                           1589 ;--- end asm ---
   3FF0 F6 C8 11      [ 5] 1590 	ldb	_Vec_Buttons	;, Vec_Buttons
   3FF3 E7 E4         [ 4] 1591 	stb	,s	;, D.4154
   3FF5 C5 08         [ 2] 1592 	bitb	#8	;,
   3FF7 10 26 00 96   [ 6] 1593 	lbne	L73	;
                           1594 ;----- asm -----
                           1595 ; 645 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1596 	; #ENR#[434]if (buttons_pressed()) pressed = 1;
                           1597 ;--- end asm ---
   3FFB 5D            [ 2] 1598 	tstb	;
   3FFC 27 06         [ 3] 1599 	beq	L74	;
   3FFE C6 01         [ 2] 1600 	ldb	#1	;,
   4000 E7 63         [ 5] 1601 	stb	3,s	;, pressed
   4002 20 06         [ 3] 1602 	bra	L75	;
   4004                    1603 L74:
   4004 6D 63         [ 7] 1604 	tst	3,s	; pressed
   4006 10 26 FF 92   [ 6] 1605 	lbne	L87	;
   400A                    1606 L75:
                           1607 ;----- asm -----
                           1608 ; 649 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1609 	; #ENR#[437]dp_via_t1_cnt_lo = text_scale;
                           1610 ;--- end asm ---
   400A C6 44         [ 2] 1611 	ldb	#68	;,
   400C D7 04         [ 4] 1612 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1613 ;----- asm -----
                           1614 ; 651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1615 	; #ENR#[438]dp_via_t1_cnt_lo = 0x70;
                           1616 ;--- end asm ---
   400E CB 2C         [ 2] 1617 	addb	#44	;,
   4010 D7 04         [ 4] 1618 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1619 ;----- asm -----
                           1620 ; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1621 	; #ENR#[439]intensity_a(0x5f);
                           1622 ;--- end asm ---
   4012 C6 5F         [ 2] 1623 	ldb	#95	;,
   4014 BD 72 61      [ 8] 1624 	jsr	__Intensity_a
                           1625 ;----- asm -----
                           1626 ; 655 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1627 	; #ENR#[440]print();
                           1628 ;--- end asm ---
   4017 F6 C9 86      [ 5] 1629 	ldb	__YC	; _YC.45, _YC
   401A CB F6         [ 2] 1630 	addb	#-10	; _YC.45,
   401C F7 C9 86      [ 5] 1631 	stb	__YC	; _YC.45, _YC
   401F 34 04         [ 6] 1632 	pshs	b	; _YC.45
   4021 8E 3F 51      [ 3] 1633 	ldx	#LC26	;,
   4024 F6 C9 85      [ 5] 1634 	ldb	__XC	;, _XC
   4027 BD 59 7E      [ 8] 1635 	jsr	_syncPrintStrd
   402A C6 CC         [ 2] 1636 	ldb	#-52	;,
   402C D7 0C         [ 4] 1637 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1638 ;----- asm -----
                           1639 ; 657 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1640 	; #ENR#[441]addline;
                           1641 ;--- end asm ---
   402E F6 C9 86      [ 5] 1642 	ldb	__YC	;, _YC
   4031 CB F6         [ 2] 1643 	addb	#-10	;,
   4033 F7 C9 86      [ 5] 1644 	stb	__YC	;, _YC
                           1645 ;----- asm -----
                           1646 ; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1647 	; #ENR#[443]for (int i=0; i<6;i++) printfsi( , stats[i], s[i]);
                           1648 ;--- end asm ---
   4036 BE 01 64      [ 6] 1649 	ldx	_stats	;, stats
   4039 AF E3         [ 8] 1650 	stx	,--s	;,
   403B F6 C9 45      [ 5] 1651 	ldb	_s	;, s
   403E 8E 38 B1      [ 3] 1652 	ldx	#LC1	;,
   4041 BD 70 AE      [ 8] 1653 	jsr	_printfsi
   4044 FC 01 66      [ 6] 1654 	ldd	_stats+2	;, stats
   4047 ED E3         [ 8] 1655 	std	,--s	;,
   4049 F6 C9 46      [ 5] 1656 	ldb	_s+1	;, s
   404C 8E 38 B1      [ 3] 1657 	ldx	#LC1	;,
   404F BD 70 AE      [ 8] 1658 	jsr	_printfsi
   4052 BE 01 68      [ 6] 1659 	ldx	_stats+4	;, stats
   4055 AF E3         [ 8] 1660 	stx	,--s	;,
   4057 F6 C9 47      [ 5] 1661 	ldb	_s+2	;, s
   405A 8E 38 B1      [ 3] 1662 	ldx	#LC1	;,
   405D BD 70 AE      [ 8] 1663 	jsr	_printfsi
   4060 FC 01 6A      [ 6] 1664 	ldd	_stats+6	;, stats
   4063 ED E3         [ 8] 1665 	std	,--s	;,
   4065 F6 C9 48      [ 5] 1666 	ldb	_s+3	;, s
   4068 8E 38 B1      [ 3] 1667 	ldx	#LC1	;,
   406B BD 70 AE      [ 8] 1668 	jsr	_printfsi
   406E 32 69         [ 5] 1669 	leas	9,s	;,,
   4070 BE 01 6C      [ 6] 1670 	ldx	_stats+8	;, stats
   4073 AF E3         [ 8] 1671 	stx	,--s	;,
   4075 F6 C9 49      [ 5] 1672 	ldb	_s+4	;, s
   4078 8E 38 B1      [ 3] 1673 	ldx	#LC1	;,
   407B BD 70 AE      [ 8] 1674 	jsr	_printfsi
   407E FC 01 6E      [ 6] 1675 	ldd	_stats+10	;, stats
   4081 ED E3         [ 8] 1676 	std	,--s	;,
   4083 F6 C9 4A      [ 5] 1677 	ldb	_s+5	;, s
   4086 8E 38 B1      [ 3] 1678 	ldx	#LC1	;,
   4089 BD 70 AE      [ 8] 1679 	jsr	_printfsi
                           1680 ;----- asm -----
                           1681 ; 662 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1682 	; #ENR#[445]while (1);
                           1683 ;--- end asm ---
   408C 32 64         [ 5] 1684 	leas	4,s	;,,
   408E 16 FF 3E      [ 5] 1685 	lbra	L76	;
   4091                    1686 L73:
                           1687 ;----- asm -----
                           1688 ; 665 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1689 	; #ENR#[446]#endif
                           1690 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1691 	; #ENR#[447]hp = s[3];
                           1692 ;--- end asm ---
   4091 F6 C9 48      [ 5] 1693 	ldb	_s+3	;, s
   4094 4F            [ 2] 1694 	clra		;zero_extendqihi: R:b -> R:d	;,
   4095 FD C9 36      [ 6] 1695 	std	_hp	; hp.48, hp
                           1696 ;----- asm -----
                           1697 ; 669 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1698 	; #ENR#[448]ch = (signed long int) hp;
                           1699 ;--- end asm ---
   4098 FD C9 63      [ 6] 1700 	std	_ch	; hp.48, ch
                           1701 ;----- asm -----
                           1702 ; 671 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1703 	; #ENR#[449]gd = 0;
                           1704 ;--- end asm ---
   409B CC 00 00      [ 3] 1705 	ldd	#0	;,
   409E FD C9 68      [ 6] 1706 	std	_gd	;, gd
   40A1 FD C9 6A      [ 6] 1707 	std	_gd+2	;, gd
                           1708 ;----- asm -----
                           1709 ; 673 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1710 	; #ENR#[450]tg = 0;
                           1711 ;--- end asm ---
   40A4 FD C9 41      [ 6] 1712 	std	_tg	;, tg
   40A7 FD C9 43      [ 6] 1713 	std	_tg+2	;, tg
                           1714 ;----- asm -----
                           1715 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1716 	; #ENR#[451]lv = 1;
                           1717 ;--- end asm ---
   40AA C6 01         [ 2] 1718 	ldb	#1	;,
   40AC F7 C9 38      [ 5] 1719 	stb	_lv	;, lv
                           1720 ;----- asm -----
                           1721 ; 678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1722 	; #ENR#[453]cz = 1;
                           1723 ;--- end asm ---
   40AF F7 C9 67      [ 5] 1724 	stb	_cz	;, cz
                           1725 ;----- asm -----
                           1726 ; 680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1727 	; #ENR#[454]cx = 25;
                           1728 ;--- end asm ---
   40B2 C6 19         [ 2] 1729 	ldb	#25	;,
   40B4 F7 C9 3F      [ 5] 1730 	stb	_cx	;, cx
                           1731 ;----- asm -----
                           1732 ; 682 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1733 	; #ENR#[455]cy = 13;
                           1734 ;--- end asm ---
   40B7 C6 0D         [ 2] 1735 	ldb	#13	;,
   40B9 F7 C9 40      [ 5] 1736 	stb	_cy	;, cy
                           1737 ;----- asm -----
                           1738 ; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1739 	; #ENR#[458]for (int i=0; i<10;i++)
                           1740 ;--- end asm ---
   40BC 8E C9 4B      [ 3] 1741 	ldx	#_inventory	; ivtmp.329,
   40BF CE C9 6C      [ 3] 1742 	ldu	#_sf	; ivtmp.331,
   40C2                    1743 L77:
                           1744 ;----- asm -----
                           1745 ; 689 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1746 	; #ENR#[460]inventory[i] = 0;
                           1747 ;--- end asm ---
   40C2 CC 00 00      [ 3] 1748 	ldd	#0	;,
   40C5 ED 81         [ 8] 1749 	std	,x++	;, inventory
                           1750 ;----- asm -----
                           1751 ; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1752 	; #ENR#[461]sf[i] = 0;
                           1753 ;--- end asm ---
   40C7 6F C0         [ 8] 1754 	clr	,u+	; sf
   40C9 8C C9 5F      [ 4] 1755 	cmpx	#_inventory+20	;cmphi:	; ivtmp.329,
   40CC 26 F4         [ 3] 1756 	bne	L77	;
                           1757 ;----- asm -----
                           1758 ; 694 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1759 	; #ENR#[463]sf[10] = 0;
                           1760 ;--- end asm ---
   40CE 7F C9 76      [ 7] 1761 	clr	_sf+10	; sf
                           1762 ;----- asm -----
                           1763 ; 698 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1764 	; #ENR#[466]initbox();
                           1765 ;--- end asm ---
   40D1 BD 3E 42      [ 8] 1766 	jsr	_initBox
                           1767 ;----- asm -----
                           1768 ; 702 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1769 	; #ENR#[469]ex = 0;
                           1770 ;--- end asm ---
   40D4 CC 00 00      [ 3] 1771 	ldd	#0	;,
   40D7 FD C9 39      [ 6] 1772 	std	_ex	;, ex
   40DA FD C9 3B      [ 6] 1773 	std	_ex+2	;, ex
                           1774 ;----- asm -----
                           1775 ; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1776 	; #ENR#[470]su = 1;
                           1777 ;--- end asm ---
   40DD 8E 00 01      [ 3] 1778 	ldx	#1	; tmp105,
   40E0 BF C9 3D      [ 6] 1779 	stx	_su	; tmp105, su
                           1780 ;----- asm -----
                           1781 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1782 	; #ENR#[471]cs = 1;
                           1783 ;--- end asm ---
   40E3 BF C9 65      [ 6] 1784 	stx	_cs	; tmp105, cs
                           1785 ;----- asm -----
                           1786 ; 714 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1787 	; #ENR#[478]clearmonsterstack();
                           1788 ; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1789 	; #ENR#[404]for (int i=0;i<20;i++)
                           1790 ;--- end asm ---
   40E6 CE 00 00      [ 3] 1791 	ldu	#0	; ivtmp.314,
   40E9                    1792 L78:
                           1793 ;----- asm -----
                           1794 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1795 	; #ENR#[406]stackm[i] = -1;
                           1796 ;--- end asm ---
   40E9 C6 FF         [ 2] 1797 	ldb	#-1	;,
   40EB E7 C9 C9 88   [ 8] 1798 	stb	_stackM,u	;, stackM
                           1799 ;----- asm -----
                           1800 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1801 	; #ENR#[407]stackml[i] = 0;
                           1802 ;--- end asm ---
   40EF 6F C9 C9 9C   [10] 1803 	clr	_stackML,u	; stackML
                           1804 ;----- asm -----
                           1805 ; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1806 	; #ENR#[408]stackmh[i] = 0;
                           1807 ;--- end asm ---
   40F3 1F 30         [ 6] 1808 	tfr	u,d	; ivtmp.314,
   40F5 58            [ 2] 1809 	aslb	;
   40F6 49            [ 2] 1810 	rola	;
   40F7 1F 01         [ 6] 1811 	tfr	d,x	;, tmp109
   40F9 CC 00 00      [ 3] 1812 	ldd	#0	;,
   40FC ED 89 C9 B0   [ 9] 1813 	std	_stackMH,x	;, stackMH
   4100 33 41         [ 5] 1814 	leau	1,u	; ivtmp.314,, ivtmp.314
   4102 11 83 00 14   [ 5] 1815 	cmpu	#20	;cmphi:	; ivtmp.314,
   4106 26 E1         [ 3] 1816 	bne	L78	;
                           1817 ;----- asm -----
                           1818 ; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1819 	; #ENR#[479]#ifndef no_title
                           1820 ; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1821 	; #ENR#[480]unsigned int i=0;
                           1822 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1823 	; #ENR#[481]do
                           1824 ;--- end asm ---
   4108 6F 64         [ 7] 1825 	clr	4,s	; i
   410A                    1826 L79:
                           1827 ;----- asm -----
                           1828 ; 723 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1829 	; #ENR#[483]cls;
                           1830 ;--- end asm ---
   410A C6 90         [ 2] 1831 	ldb	#-112	;,
   410C F7 C9 85      [ 5] 1832 	stb	__XC	;, _XC
   410F C6 70         [ 2] 1833 	ldb	#112	;,
   4111 F7 C9 86      [ 5] 1834 	stb	__YC	;, _YC
                           1835 ;----- asm -----
                           1836 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1837 	; #ENR#[484]wait_recal();
                           1838 ;--- end asm ---
   4114 BD F1 92      [ 8] 1839 	jsr	___Wait_Recal
                           1840 ;----- asm -----
                           1841 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1842 	; #ENR#[485]do_sound();
                           1843 ;--- end asm ---
   4117 BD 72 E2      [ 8] 1844 	jsr	__Do_Sound
                           1845 ;----- asm -----
                           1846 ; 730 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1847 	; #ENR#[487]dp_via_t1_cnt_lo = 0x70;
                           1848 ;--- end asm ---
   411A C6 70         [ 2] 1849 	ldb	#112	;,
   411C D7 04         [ 4] 1850 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1851 ;----- asm -----
                           1852 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1853 	; #ENR#[488]intensity_a(0x5f);
                           1854 ;--- end asm ---
   411E C6 5F         [ 2] 1855 	ldb	#95	;,
   4120 BD 72 61      [ 8] 1856 	jsr	__Intensity_a
                           1857 ;----- asm -----
                           1858 ; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1859 	; #ENR#[489]print();
                           1860 ;--- end asm ---
   4123 F6 C9 86      [ 5] 1861 	ldb	__YC	; _YC.342, _YC
   4126 CB F6         [ 2] 1862 	addb	#-10	; _YC.342,
   4128 F7 C9 86      [ 5] 1863 	stb	__YC	; _YC.342, _YC
   412B 34 04         [ 6] 1864 	pshs	b	; _YC.342
   412D 8E 3F 63      [ 3] 1865 	ldx	#LC27	;,
   4130 F6 C9 85      [ 5] 1866 	ldb	__XC	;, _XC
   4133 BD 59 7E      [ 8] 1867 	jsr	_syncPrintStrd
   4136 C6 CC         [ 2] 1868 	ldb	#-52	;,
   4138 D7 0C         [ 4] 1869 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1870 ;----- asm -----
                           1871 ; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1872 	; #ENR#[490]print();
                           1873 ;--- end asm ---
   413A F6 C9 86      [ 5] 1874 	ldb	__YC	; _YC.345, _YC
   413D CB F6         [ 2] 1875 	addb	#-10	; _YC.345,
   413F F7 C9 86      [ 5] 1876 	stb	__YC	; _YC.345, _YC
   4142 34 04         [ 6] 1877 	pshs	b	; _YC.345
   4144 8E 3F 79      [ 3] 1878 	ldx	#LC28	;,
   4147 F6 C9 85      [ 5] 1879 	ldb	__XC	;, _XC
   414A BD 59 7E      [ 8] 1880 	jsr	_syncPrintStrd
   414D C6 CC         [ 2] 1881 	ldb	#-52	;,
   414F D7 0C         [ 4] 1882 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1883 ;----- asm -----
                           1884 ; 738 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1885 	; #ENR#[491]addline;
                           1886 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1887 	; #ENR#[492]print();
                           1888 ;--- end asm ---
   4151 F6 C9 86      [ 5] 1889 	ldb	__YC	; _YC.349, _YC
   4154 CB EC         [ 2] 1890 	addb	#-20	; _YC.349,
   4156 F7 C9 86      [ 5] 1891 	stb	__YC	; _YC.349, _YC
   4159 34 04         [ 6] 1892 	pshs	b	; _YC.349
   415B 8E 3F 8D      [ 3] 1893 	ldx	#LC29	;,
   415E F6 C9 85      [ 5] 1894 	ldb	__XC	;, _XC
   4161 BD 59 7E      [ 8] 1895 	jsr	_syncPrintStrd
   4164 C6 CC         [ 2] 1896 	ldb	#-52	;,
   4166 D7 0C         [ 4] 1897 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1898 ;----- asm -----
                           1899 ; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1900 	; #ENR#[495]while (i++<160);
                           1901 ;--- end asm ---
   4168 6C 67         [ 7] 1902 	inc	7,s	; i
   416A 32 63         [ 5] 1903 	leas	3,s	;,,
   416C E6 64         [ 5] 1904 	ldb	4,s	;, i
   416E C1 A1         [ 2] 1905 	cmpb	#-95	;cmpqi:	;,
   4170 10 26 FF 96   [ 6] 1906 	lbne	L79	;
   4174 32 65         [ 5] 1907 	leas	5,s	;,,
   4176 35 C0         [ 7] 1908 	puls	u,pc	;
   4178                    1909 LC30:
   4178 4C 45 56 45 4C 20  1910 	.byte	76,69,86,69,76,32,37,-128
        25 80
   4180 00                 1911 	.byte	0
   4181                    1912 LC31:
   4181 41 42 4F 52 54 00  1913 	.ascii	"ABORT\0"
   4187                    1914 LC32:
   4187 43 41 53 54 00     1915 	.ascii	"CAST\0"
   418C                    1916 LC33:
   418C 59 4F 55 20 44 4F  1917 	.ascii	"YOU DON'T HAVE THAT LEVEL SPELLS!\0"
        4E 27 54 20 48 41
        56 45 20 54 48 41
        54 20 4C 45 56 45
        4C 20 53 50 45 4C
        4C 53 21 00
   41AE                    1918 LC34:
   41AE 59 4F 55 20 44 4F  1919 	.ascii	"YOU DON'T HAVE ENOUGH SPELL UNITS!\0"
        4E 27 54 20 48 41
        56 45 20 45 4E 4F
        55 47 48 20 53 50
        45 4C 4C 20 55 4E
        49 54 53 21 00
   41D1                    1920 LC35:
   41D1 43 41 53 54 3A 20  1921 	.ascii	"CAST: %\0"
        25 00
   41D9                    1922 LC36:
   41D9 55 4E 44 45 41 44  1923 	.ascii	"UNDEAD DON'T SLEEP!\0"
        20 44 4F 4E 27 54
        20 53 4C 45 45 50
        21 00
   41ED                    1924 LC37:
   41ED 54 48 45 20 25 20  1925 	.ascii	"THE % ISN'T SLEEPY!\0"
        49 53 4E 27 54 20
        53 4C 45 45 50 59
        21 00
   4201                    1926 LC38:
   4201 54 48 45 20 25 20  1927 	.ascii	"THE % IS SLEEPING <4> TO KILL:\0"
        49 53 20 53 4C 45
        45 50 49 4E 47 20
        3C 34 3E 20 54 4F
        20 4B 49 4C 4C 3A
        00
   4220                    1928 LC39:
   4220 45 56 41 44 45 00  1929 	.ascii	"EVADE\0"
   4226                    1930 LC40:
   4226 49 54 20 57 4F 4B  1931 	.ascii	"IT WOKE UP!\0"
        45 20 55 50 21 00
   4232                    1932 LC41:
   4232 59 4F 55 20 46 45  1933 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   4242                    1934 LC42:
   4242 54 48 45 20 25 20  1935 	.ascii	"THE % IS INSULTED\0"
        49 53 20 49 4E 53
        55 4C 54 45 44 00
   4254                    1936 LC43:
   4254 41 54 20 42 45 49  1937 	.ascii	"AT BEING CALLED UNDEAD\0"
        4E 47 20 43 41 4C
        4C 45 44 20 55 4E
        44 45 41 44 00
   426B                    1938 LC44:
   426B 54 48 45 20 25 20  1939 	.ascii	"THE % LISTENS WITH DEAF EARS\0"
        4C 49 53 54 45 4E
        53 20 57 49 54 48
        20 44 45 41 46 20
        45 41 52 53 00
   4288                    1940 LC45:
   4288 49 54 20 52 55 4E  1941 	.ascii	"IT RUNS IN FEAR!!\0"
        53 20 49 4E 20 46
        45 41 52 21 21 00
   429A                    1942 LC46:
   429A 54 48 45 20 25 20  1943 	.ascii	"THE % DODGES ASIDE!\0"
        44 4F 44 47 45 53
        20 41 53 49 44 45
        21 00
   42AE                    1944 LC47:
   42AE 54 48 45 20 25 20  1945 	.ascii	"THE % IS WEBBED <4> TO KILL:\0"
        49 53 20 57 45 42
        42 45 44 20 3C 34
        3E 20 54 4F 20 4B
        49 4C 4C 3A 00
   42CB                    1946 LC48:
   42CB 49 54 20 42 52 4F  1947 	.ascii	"IT BROKE FREE!\0"
        4B 45 20 46 52 45
        45 21 00
   42DA                    1948 LC49:
   42DA 54 48 45 20 55 4E  1949 	.ascii	"THE UNDEAD IGNORES YOUR WILES!\0"
        44 45 41 44 20 49
        47 4E 4F 52 45 53
        20 59 4F 55 52 20
        57 49 4C 45 53 21
        00
   42F9                    1950 LC50:
   42F9 54 48 45 20 25 20  1951 	.ascii	"THE % RESISTS YOU!\0"
        52 45 53 49 53 54
        53 20 59 4F 55 21
        00
   430C                    1952 LC51:
   430C 54 48 45 20 25 20  1953 	.ascii	"THE % IS CHARMED <4> TO KILL:\0"
        49 53 20 43 48 41
        52 4D 45 44 20 3C
        34 3E 20 54 4F 20
        4B 49 4C 4C 3A 00
   432A                    1954 LC52:
   432A 5A 5A 5A 5A 41 41  1955 	.ascii	"ZZZZAAAPPP!!!\0"
        41 50 50 50 21 21
        21 00
   4338                    1956 LC53:
   4338 54 48 45 20 25 20  1957 	.ascii	"THE % IGNORES YOU!\0"
        49 47 4E 4F 52 45
        53 20 59 4F 55 21
        00
   434B                    1958 LC54:
   434B 54 48 45 20 25 20  1959 	.ascii	"THE % IS HELD <4> TO KILL:\0"
        49 53 20 48 45 4C
        44 20 3C 34 3E 20
        54 4F 20 4B 49 4C
        4C 3A 00
   4366                    1960 LC55:
   4366 54 48 45 20 25 20  1961 	.ascii	"THE % DOESN'T BELIEVE!\0"
        44 4F 45 53 4E 27
        54 20 42 45 4C 49
        45 56 45 21 00
   437D                    1962 LC56:
   437D 49 54 20 42 45 4C  1963 	.ascii	"IT BELIEVES! .... ARRGH...\0"
        49 45 56 45 53 21
        20 2E 2E 2E 2E 20
        41 52 52 47 48 2E
        2E 2E 00
   4398                    1964 LC57:
   4398 4E 4F 54 20 49 4E  1965 	.ascii	"NOT IN MELEE!!\0"
        20 4D 45 4C 45 45
        21 21 00
   43A7                    1966 LC58:
   43A7 44 49 52 45 43 54  1967 	.ascii	"DIRECTION>\0"
        49 4F 4E 3E 00
   43B2                    1968 LC59:
   43B2 4F 4E 4C 59 20 53  1969 	.ascii	"ONLY STONE HERE...\0"
        54 4F 4E 45 20 48
        45 52 45 2E 2E 2E
        00
   43C5                    1970 LC60:
   43C5 45 41 53 54 00     1971 	.ascii	"EAST\0"
   43CA                    1972 LC61:
   43CA 57 45 53 54 00     1973 	.ascii	"WEST\0"
   43CF                    1974 LC62:
   43CF 4E 4F 52 54 48 00  1975 	.ascii	"NORTH\0"
   43D5                    1976 LC63:
   43D5 53 4F 55 54 48 00  1977 	.ascii	"SOUTH\0"
   43DB                    1978 LC64:
   43DB 3F 3F 3F 00        1979 	.ascii	"???\0"
   43DF                    1980 LC65:
   43DF 50 4F 4F 46 00     1981 	.ascii	"POOF\0"
   43E4                    1982 LC66:
   43E4 57 48 4F 4F 4F 4F  1983 	.ascii	"WHOOOOOSHH!!!\0"
        4F 53 48 48 21 21
        21 00
   43F2                    1984 LC67:
   43F2 54 48 45 20 25 20  1985 	.ascii	"THE % IS BURNING!\0"
        49 53 20 42 55 52
        4E 49 4E 47 21 00
   4404                    1986 LC68:
   4404 54 48 45 20 25 20  1987 	.ascii	"THE % IS ISN'T AFFECTED\0"
        49 53 20 49 53 4E
        27 54 20 41 46 46
        45 43 54 45 44 00
   441C                    1988 LC69:
   441C 4F 4E 45 20 53 54  1989 	.ascii	"ONE STONE STATUE....\0"
        4F 4E 45 20 53 54
        41 54 55 45 2E 2E
        2E 2E 00
   4431                    1990 LC70:
   4431 44 49 45 21 21 21  1991 	.ascii	"DIE!!!!!!!\0"
        21 21 21 21 00
   443C                    1992 LC71:
   443C 55 4E 44 45 41 44  1993 	.ascii	"UNDEAD ARE ALREADY DEAD!!\0"
        20 41 52 45 20 41
        4C 52 45 41 44 59
        20 44 45 41 44 21
        21 00
   4456                    1994 LC72:
   4456 54 48 45 20 25 20  1995 	.ascii	"THE % LAUGHS!\0"
        4C 41 55 47 48 53
        21 00
   4464                    1996 LC73:
   4464 43 41 53 54 20 54  1997 	.ascii	"CAST TELEPORT\0"
        45 4C 45 50 4F 52
        54 00
   4472                    1998 LC74:
   4472 54 45 4C 45 50 4F  1999 	.byte	84,69,76,69,80,79,82,84
        52 54
   447A 21 80 00           2000 	.byte	33,-128,0
   447D                    2001 LC75:
   447D 42 55 54 54 4F 4E  2002 	.byte	66,85,84,84,79,78,32,84
        20 54
   4485 4F 20 46 49 4E 49  2003 	.byte	79,32,70,73,78,73,83,72
        53 48
   448D 80 00              2004 	.byte	-128,0
   448F                    2005 LC76:
   448F 4E 4F 52 54 48 2D  2006 	.byte	78,79,82,84,72,45,32,83
        20 53
   4497 4F 55 54 48 2B 20  2007 	.byte	79,85,84,72,43,32,58,32
        3A 20
   449F 25 80 00           2008 	.byte	37,-128,0
   44A2                    2009 LC77:
   44A2 57 45 53 54 2D 20  2010 	.byte	87,69,83,84,45,32,69,65
        45 41
   44AA 53 54 2B 20 20 20  2011 	.byte	83,84,43,32,32,32,58,32
        3A 20
   44B2 25 80 00           2012 	.byte	37,-128,0
   44B5                    2013 LC78:
   44B5 55 50 2D 20 44 4F  2014 	.byte	85,80,45,32,68,79,87,78
        57 4E
   44BD 2B 20 20 20 20 20  2015 	.byte	43,32,32,32,32,32,58,32
        3A 20
   44C5 25 80 00           2016 	.byte	37,-128,0
   44C8                    2017 LC79:
   44C8 54 4F 20 46 41 52  2018 	.ascii	"TO FAR...TRY AGAIN\0"
        2E 2E 2E 54 52 59
        20 41 47 41 49 4E
        00
   44DB                    2019 LC80:
   44DB 4F 4E 4C 59 20 53  2020 	.ascii	"ONLY STONE THERE...\0"
        54 4F 4E 45 20 54
        48 45 52 45 2E 2E
        2E 00
   44EF                    2021 LC81:
   44EF 54 48 45 20 53 50  2022 	.ascii	"THE SPELL FAILS...\0"
        45 4C 4C 20 46 41
        49 4C 53 2E 2E 2E
        00
   4502                    2023 LC82:
   4502 4F 4E 4C 59 20 54  2024 	.ascii	"ONLY THIN AIR...\0"
        48 49 4E 20 41 49
        52 2E 2E 2E 00
   4513                    2025 LC83:
   4513 2A 2A 2A 20 50 4F  2026 	.ascii	"*** POOF! ***\0"
        4F 46 21 20 2A 2A
        2A 00
   4521                    2027 LC84:
   4521 51 57 45 52 54 59  2028 	.ascii	"QWERTY!!!!!!\0"
        21 21 21 21 21 21
        00
   452E                    2029 LC85:
   452E 54 48 45 20 25 20  2030 	.ascii	"THE % DOESN'T HEAR...\0"
        44 4F 45 53 4E 27
        54 20 48 45 41 52
        2E 2E 2E 00
   4544                    2031 LC86:
   4544 42 52 52 52 52 21  2032 	.ascii	"BRRRR!!!!\0"
        21 21 21 00
   454E                    2033 LC87:
   454E 43 41 53 54 20 57  2034 	.ascii	"CAST WALL OF FIRE - WWHOOOSSH!!!\0"
        41 4C 4C 20 4F 46
        20 46 49 52 45 20
        2D 20 57 57 48 4F
        4F 4F 53 53 48 21
        21 21 00
   456F                    2035 LC88:
   456F 41 20 57 41 4C 4C  2036 	.ascii	"A WALL OF FIRE APPEARS ABOUT YOU\0"
        20 4F 46 20 46 49
        52 45 20 41 50 50
        45 41 52 53 20 41
        42 4F 55 54 20 59
        4F 55 00
   4590                    2037 LC89:
   4590 54 48 45 20 25 20  2038 	.ascii	"THE % IS GONE...\0"
        49 53 20 47 4F 4E
        45 2E 2E 2E 00
   45A1                    2039 LC90:
   45A1 54 48 45 20 25 20  2040 	.ascii	"THE % WALKS THROUGH!!!\0"
        57 41 4C 4B 53 20
        54 48 52 4F 55 47
        48 21 21 21 00
   45B8                    2041 LC91:
   45B8 42 4C 41 43 4B 20  2042 	.ascii	"BLACK DEATH FOR THE % \0"
        44 45 41 54 48 20
        46 4F 52 20 54 48
        45 20 25 20 00
   45CF                    2043 LC92:
   45CF 49 54 20 49 53 20  2044 	.ascii	"IT IS IMMUNE!\0"
        49 4D 4D 55 4E 45
        21 00
   45DD                    2045 LC93:
   45DD 54 48 45 20 53 50  2046 	.ascii	"THE SPELL BACKFIRES!!\0"
        45 4C 4C 20 42 41
        43 4B 46 49 52 45
        53 21 21 00
   45F3                    2047 LC94:
   45F3 54 49 4D 45 20 49  2048 	.ascii	"TIME IS FROZEN, MONSTERS CANNOT\0"
        53 20 46 52 4F 5A
        45 4E 2C 20 4D 4F
        4E 53 54 45 52 53
        20 43 41 4E 4E 4F
        54 00
   4613                    2049 LC95:
   4613 41 54 54 41 43 4B  2050 	.ascii	"ATTACK YOU\0"
        20 59 4F 55 00
   461E                    2051 LC96:
   461E 54 48 45 20 25 20  2052 	.ascii	"THE % DOESN'T SEE...\0"
        44 4F 45 53 4E 27
        54 20 53 45 45 2E
        2E 2E 00
   4633                    2053 LC97:
   4633 41 20 53 43 49 4E  2054 	.ascii	"A SCINILLATING SHIFTING WALL APPEARS\0"
        49 4C 4C 41 54 49
        4E 47 20 53 48 49
        46 54 49 4E 47 20
        57 41 4C 4C 20 41
        50 50 45 41 52 53
        00
   4658                    2055 LC98:
   4658 59 4F 55 20 4A 55  2056 	.ascii	"YOU JUST WASTED A COMBAT SPELL!\0"
        53 54 20 57 41 53
        54 45 44 20 41 20
        43 4F 4D 42 41 54
        20 53 50 45 4C 4C
        21 00
   4678                    2057 LC99:
   4678 49 54 20 53 55 46  2058 	.ascii	"IT SUFFERS % HIT POINTS\0"
        46 45 52 53 20 25
        20 48 49 54 20 50
        4F 49 4E 54 53 00
                           2059 	.globl	_castSpell
   4690                    2060 _castSpell:
   4690 34 60         [ 7] 2061 	pshs	y,u	;
   4692 32 E8 E6      [ 5] 2062 	leas	-26,s	;,,
   4695 E7 65         [ 5] 2063 	stb	5,s	; inCombat, inCombat
                           2064 ;----- asm -----
                           2065 ; 767 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2066 	; #ENR#[517]unsigned int spelllevel = 0;
                           2067 ; 769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2068 	; #ENR#[518]unsigned int spellselect = 0;
                           2069 ; 771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2070 	; #ENR#[519]unsigned int availablelevel = (lv/3);
                           2071 ;--- end asm ---
   4697 F6 C9 38      [ 5] 2072 	ldb	_lv	;, lv
   469A 4F            [ 2] 2073 	clra		;zero_extendqihi: R:b -> R:d	;,
   469B ED E4         [ 5] 2074 	std	,s	;,
   469D CC 00 03      [ 3] 2075 	ldd	#3	;,
   46A0 ED E3         [ 8] 2076 	std	,--s	;,
   46A2 AE 62         [ 6] 2077 	ldx	2,s	;,
   46A4 BD 72 E9      [ 8] 2078 	jsr	_udivhi3
   46A7 32 62         [ 5] 2079 	leas	2,s	;,,
   46A9 1F 10         [ 6] 2080 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp150,
   46AB E7 6F         [ 5] 2081 	stb	15,s	;, availableLevel
                           2082 ;----- asm -----
                           2083 ; 773 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2084 	; #ENR#[520]int lastdir = 0;
                           2085 ; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2086 	; #ENR#[521]do
                           2087 ;--- end asm ---
   46AD 6F 6D         [ 7] 2088 	clr	13,s	; spellLevel
   46AF 6F 6E         [ 7] 2089 	clr	14,s	; spellSelect
   46B1 6F E8 10      [ 7] 2090 	clr	16,s	; lastDir
   46B4                    2091 L102:
                           2092 ;----- asm -----
                           2093 ; 778 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2094 	; #ENR#[523]wait_recal();
                           2095 ;--- end asm ---
   46B4 BD F1 92      [ 8] 2096 	jsr	___Wait_Recal
                           2097 ;----- asm -----
                           2098 ; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2099 	; #ENR#[524]do_sound();
                           2100 ;--- end asm ---
   46B7 BD 72 E2      [ 8] 2101 	jsr	__Do_Sound
                           2102 ;----- asm -----
                           2103 ; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2104 	; #ENR#[525]joy_digital();
                           2105 ;--- end asm ---
   46BA BD F1 F8      [ 8] 2106 	jsr	___Joy_Digital
                           2107 ;----- asm -----
                           2108 ; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2109 	; #ENR#[526]check_buttons();
                           2110 ;--- end asm ---
   46BD BD F1 BA      [ 8] 2111 	jsr	___Read_Btns
                           2112 ;----- asm -----
                           2113 ; 786 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2114 	; #ENR#[527]dp_via_t1_cnt_lo  = 0x7f;
                           2115 ;--- end asm ---
   46C0 C6 7F         [ 2] 2116 	ldb	#127	;,
   46C2 D7 04         [ 4] 2117 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2118 ;----- asm -----
                           2119 ; 789 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2120 	; #ENR#[529]if ((vec_joy_1_x > 0) && (!lastdir))
                           2121 ;--- end asm ---
   46C4 F6 C8 1B      [ 5] 2122 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   46C7 E7 E4         [ 4] 2123 	stb	,s	;, Vec_Joy_1_X.52
   46C9 2F 0E         [ 3] 2124 	ble	L89	;
   46CB 6D E8 10      [ 7] 2125 	tst	16,s	; lastDir
   46CE 26 09         [ 3] 2126 	bne	L89	;
   46D0 E6 6D         [ 5] 2127 	ldb	13,s	;, spellLevel
   46D2 C1 04         [ 2] 2128 	cmpb	#4	;cmpqi:	;,
   46D4 22 03         [ 3] 2129 	bhi	L89	;
   46D6 5C            [ 2] 2130 	incb	;
   46D7 E7 6D         [ 5] 2131 	stb	13,s	;, spellLevel
   46D9                    2132 L89:
                           2133 ;----- asm -----
                           2134 ; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2135 	; #ENR#[531]if ((vec_joy_1_x < 0) && (!lastdir))
                           2136 ;--- end asm ---
   46D9 6D E4         [ 6] 2137 	tst	,s	; Vec_Joy_1_X.52
   46DB 2C 0B         [ 3] 2138 	bge	L90	;
   46DD 6D E8 10      [ 7] 2139 	tst	16,s	; lastDir
   46E0 26 06         [ 3] 2140 	bne	L90	;
   46E2 6D 6D         [ 7] 2141 	tst	13,s	; spellLevel
   46E4 27 02         [ 3] 2142 	beq	L90	;
   46E6 6A 6D         [ 7] 2143 	dec	13,s	; spellLevel
   46E8                    2144 L90:
                           2145 ;----- asm -----
                           2146 ; 796 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2147 	; #ENR#[534]if (spelllevel <= availablelevel)
                           2148 ;--- end asm ---
   46E8 E6 6D         [ 5] 2149 	ldb	13,s	;, spellLevel
   46EA E1 6F         [ 5] 2150 	cmpb	15,s	;cmpqi:	;, availableLevel
   46EC 10 22 00 3E   [ 6] 2151 	lbhi	L91	;
                           2152 ;----- asm -----
                           2153 ; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2154 	; #ENR#[536]intensity_5f();
                           2155 ;--- end asm ---
   46F0 BD F2 A5      [ 8] 2156 	jsr	___Intensity_5F
                           2157 ;----- asm -----
                           2158 ; 801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2159 	; #ENR#[537]if ((vec_joy_1_y > 0) && (!lastdir))
                           2160 ;--- end asm ---
   46F3 F6 C8 1C      [ 5] 2161 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.53, Vec_Joy_1_Y
   46F6 2F 0B         [ 3] 2162 	ble	L92	;
   46F8 6D E8 10      [ 7] 2163 	tst	16,s	; lastDir
   46FB 26 06         [ 3] 2164 	bne	L92	;
   46FD 6D 6E         [ 7] 2165 	tst	14,s	; spellSelect
   46FF 27 02         [ 3] 2166 	beq	L92	;
   4701 6A 6E         [ 7] 2167 	dec	14,s	; spellSelect
   4703                    2168 L92:
                           2169 ;----- asm -----
                           2170 ; 804 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2171 	; #ENR#[539]if ((vec_joy_1_y < 0) && (!lastdir))
                           2172 ;--- end asm ---
   4703 5D            [ 2] 2173 	tstb	; Vec_Joy_1_Y.53
   4704 2C 0E         [ 3] 2174 	bge	L93	;
   4706 6D E8 10      [ 7] 2175 	tst	16,s	; lastDir
   4709 26 09         [ 3] 2176 	bne	L93	;
   470B E6 6E         [ 5] 2177 	ldb	14,s	;, spellSelect
   470D C1 04         [ 2] 2178 	cmpb	#4	;cmpqi:	;,
   470F 22 03         [ 3] 2179 	bhi	L93	;
   4711 5C            [ 2] 2180 	incb	;
   4712 E7 6E         [ 5] 2181 	stb	14,s	;, spellSelect
   4714                    2182 L93:
                           2183 ;----- asm -----
                           2184 ; 808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2185 	; #ENR#[542]print_str_d(0x60-0x10*spellselect,-0x65, );
                           2186 ;--- end asm ---
   4714 C6 06         [ 2] 2187 	ldb	#6	; tmp153,
   4716 E0 6E         [ 5] 2188 	subb	14,s	; tmp152, spellSelect
   4718 58            [ 2] 2189 	aslb	; tmp152
   4719 58            [ 2] 2190 	aslb	; tmp152
   471A 58            [ 2] 2191 	aslb	; tmp152
   471B 58            [ 2] 2192 	aslb	; tmp152
   471C 34 04         [ 6] 2193 	pshs	b	; tmp152
   471E 8E 39 62      [ 3] 2194 	ldx	#LC20	;,
   4721 C6 9B         [ 2] 2195 	ldb	#-101	;,
   4723 BD 59 7E      [ 8] 2196 	jsr	_syncPrintStrd
                           2197 ;----- asm -----
                           2198 ; 810 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2199 	; #ENR#[543]reset0ref();
                           2200 ;--- end asm ---
   4726 C6 CC         [ 2] 2201 	ldb	#-52	;,
   4728 D7 0C         [ 4] 2202 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   472A 32 61         [ 5] 2203 	leas	1,s	;,,
   472C 20 03         [ 3] 2204 	bra	L94	;
   472E                    2205 L91:
   472E BD F2 A1      [ 8] 2206 	jsr	___Intensity_3F
   4731                    2207 L94:
                           2208 ;----- asm -----
                           2209 ; 816 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2210 	; #ENR#[548]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           2211 ;--- end asm ---
   4731 C6 01         [ 2] 2212 	ldb	#1	;,
   4733 E7 E8 10      [ 5] 2213 	stb	16,s	;, lastDir
   4736 7D C8 1B      [ 7] 2214 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4739 26 0A         [ 3] 2215 	bne	L96	;
   473B F6 C8 1C      [ 5] 2216 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
   473E 27 02         [ 3] 2217 	beq	L97	;
   4740 C6 01         [ 2] 2218 	ldb	#1	; Vec_Joy_1_Y,
   4742                    2219 L97:
   4742 E7 E8 10      [ 5] 2220 	stb	16,s	; Vec_Joy_1_Y, lastDir
   4745                    2221 L96:
                           2222 ;----- asm -----
                           2223 ; 819 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2224 	; #ENR#[550]_fi_s(, (unsigned int) spelllevel+1);
                           2225 ;--- end asm ---
   4745 E6 6D         [ 5] 2226 	ldb	13,s	;, spellLevel
   4747 5C            [ 2] 2227 	incb	;
   4748 E7 66         [ 5] 2228 	stb	6,s	;, D.3509
   474A 8E 41 78      [ 3] 2229 	ldx	#LC30	;,
   474D BD 5C C6      [ 8] 2230 	jsr	__fi_s
                           2231 ;----- asm -----
                           2232 ; 821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2233 	; #ENR#[551]print_str_d(0x78,-0x20, stringbuffer40);
                           2234 ;--- end asm ---
   4750 C6 78         [ 2] 2235 	ldb	#120	;,
   4752 E7 E2         [ 6] 2236 	stb	,-s	;,
   4754 8E C8 BF      [ 3] 2237 	ldx	#_stringBuffer40	;,
   4757 C6 E0         [ 2] 2238 	ldb	#-32	;,
   4759 BD 59 7E      [ 8] 2239 	jsr	_syncPrintStrd
                           2240 ;----- asm -----
                           2241 ; 823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2242 	; #ENR#[552]reset0ref();
                           2243 ;--- end asm ---
   475C C6 CC         [ 2] 2244 	ldb	#-52	;,
   475E D7 0C         [ 4] 2245 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           2246 ;----- asm -----
                           2247 ; 826 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2248 	; #ENR#[554]for (unsigned int i=0;i<6;i++)
                           2249 ;--- end asm ---
   4760 E6 6E         [ 5] 2250 	ldb	14,s	;, spellLevel
   4762 4F            [ 2] 2251 	clra		;zero_extendqihi: R:b -> R:d	;,
   4763 ED 61         [ 6] 2252 	std	1,s	;,
   4765 58            [ 2] 2253 	aslb	;
   4766 49            [ 2] 2254 	rola	;
   4767 1F 01         [ 6] 2255 	tfr	d,x	;, tmp158
   4769 EE 89 04 30   [ 9] 2256 	ldu	_spellNames,x	; D.3511, spellNames
   476D 10 8E 00 00   [ 4] 2257 	ldy	#0	; ivtmp.420,
   4771 32 61         [ 5] 2258 	leas	1,s	;,,
   4773                    2259 L98:
                           2260 ;----- asm -----
                           2261 ; 829 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2262 	; #ENR#[556]print_str_d(0x60-0x10*i,-0x50, spellnames[spelllevel][i]);
                           2263 ;--- end asm ---
   4773 1F 30         [ 6] 2264 	tfr	u,d	; D.3511,
   4775 30 AB         [ 8] 2265 	leax	d,y	; tmp160,, ivtmp.420
   4777 1F 20         [ 6] 2266 	tfr	y,d	;movlsbqihi: R:y -> R:b	; ivtmp.420, ivtmp.420
   4779 58            [ 2] 2267 	aslb	; ivtmp.420
   477A 58            [ 2] 2268 	aslb	; ivtmp.420
   477B 58            [ 2] 2269 	aslb	; ivtmp.420
   477C 50            [ 2] 2270 	negb	; ivtmp.420
   477D CB 60         [ 2] 2271 	addb	#96	; ivtmp.420,
   477F 34 04         [ 6] 2272 	pshs	b	; ivtmp.420
   4781 AE 84         [ 5] 2273 	ldx	,x	;,
   4783 C6 B0         [ 2] 2274 	ldb	#-80	;,
   4785 BD 59 7E      [ 8] 2275 	jsr	_syncPrintStrd
                           2276 ;----- asm -----
                           2277 ; 831 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2278 	; #ENR#[557]reset0ref();
                           2279 ;--- end asm ---
   4788 C6 CC         [ 2] 2280 	ldb	#-52	;,
   478A D7 0C         [ 4] 2281 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   478C 31 22         [ 5] 2282 	leay	2,y	; ivtmp.420,, ivtmp.420
   478E 32 61         [ 5] 2283 	leas	1,s	;,,
   4790 10 8C 00 0C   [ 5] 2284 	cmpy	#12	;cmphi:	; ivtmp.420,
   4794 26 DD         [ 3] 2285 	bne	L98	;
                           2286 ;----- asm -----
                           2287 ; 835 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2288 	; #ENR#[560]if (button_1_1_pressed())
                           2289 ;--- end asm ---
   4796 F6 C8 11      [ 5] 2290 	ldb	_Vec_Buttons	;, Vec_Buttons
   4799 E7 62         [ 5] 2291 	stb	2,s	;, D.4166
   479B C5 01         [ 2] 2292 	bitb	#1	;,
   479D 27 09         [ 3] 2293 	beq	L99	;
                           2294 ;----- asm -----
                           2295 ; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2296 	; #ENR#[562]printmessage();
                           2297 ;--- end asm ---
   479F 8E 41 81      [ 3] 2298 	ldx	#LC31	;,
   47A2 BD 5B 7A      [ 8] 2299 	jsr	_printMessage
                           2300 ;----- asm -----
                           2301 ; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2302 	; #ENR#[563]return 2;
                           2303 ;--- end asm ---
   47A5 16 0B B0      [ 5] 2304 	lbra	L225	;
   47A8                    2305 L99:
                           2306 ;----- asm -----
                           2307 ; 843 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2308 	; #ENR#[565]if (buttons_pressed()) break;
                           2309 ;--- end asm ---
   47A8 6D 62         [ 7] 2310 	tst	2,s	; D.4166
   47AA 26 03         [ 3] 2311 	bne	L101	;
                           2312 ;----- asm -----
                           2313 ; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2314 	; #ENR#[570]while (1);
                           2315 ;--- end asm ---
   47AC 16 FF 05      [ 5] 2316 	lbra	L102	;
   47AF                    2317 L101:
                           2318 ;----- asm -----
                           2319 ; 851 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2320 	; #ENR#[571]clearmessage();
                           2321 ;--- end asm ---
   47AF 7F C9 87      [ 7] 2322 	clr	_msgLine	; msgLine
                           2323 ;----- asm -----
                           2324 ; 853 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2325 	; #ENR#[572]printmessage();
                           2326 ;--- end asm ---
   47B2 8E 41 87      [ 3] 2327 	ldx	#LC32	;,
   47B5 BD 5B 7A      [ 8] 2328 	jsr	_printMessage
                           2329 ;----- asm -----
                           2330 ; 857 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2331 	; #ENR#[575]if (spelllevel > availablelevel)
                           2332 ;--- end asm ---
   47B8 E6 6D         [ 5] 2333 	ldb	13,s	;, spellLevel
   47BA E1 6F         [ 5] 2334 	cmpb	15,s	;cmpqi:	;, availableLevel
   47BC 23 09         [ 3] 2335 	bls	L103	;
                           2336 ;----- asm -----
                           2337 ; 860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2338 	; #ENR#[577]printmessage();
                           2339 ;--- end asm ---
   47BE 8E 41 8C      [ 3] 2340 	ldx	#LC33	;,
   47C1 BD 5B 7A      [ 8] 2341 	jsr	_printMessage
                           2342 ;----- asm -----
                           2343 ; 862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2344 	; #ENR#[578]return 2;
                           2345 ;--- end asm ---
   47C4 16 0B 91      [ 5] 2346 	lbra	L225	;
   47C7                    2347 L103:
                           2348 ;----- asm -----
                           2349 ; 866 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2350 	; #ENR#[581]if ((spelllevel+1) > cs)
                           2351 ;--- end asm ---
   47C7 E6 66         [ 5] 2352 	ldb	6,s	;, D.3509
   47C9 4F            [ 2] 2353 	clra		;zero_extendqihi: R:b -> R:d	;,
   47CA 1F 03         [ 6] 2354 	tfr	d,u	;, D.3522
   47CC 10 B3 C9 65   [ 8] 2355 	cmpd	_cs	;cmphi:	; D.3522, cs
   47D0 23 09         [ 3] 2356 	bls	L104	;
                           2357 ;----- asm -----
                           2358 ; 869 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2359 	; #ENR#[583]printmessage();
                           2360 ;--- end asm ---
   47D2 8E 41 AE      [ 3] 2361 	ldx	#LC34	;,
   47D5 BD 5B 7A      [ 8] 2362 	jsr	_printMessage
                           2363 ;----- asm -----
                           2364 ; 871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2365 	; #ENR#[584]return 1;
                           2366 ;--- end asm ---
   47D8 16 0B 8D      [ 5] 2367 	lbra	L222	;
   47DB                    2368 L104:
                           2369 ;----- asm -----
                           2370 ; 874 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2371 	; #ENR#[586]clearmessage();
                           2372 ;--- end asm ---
   47DB 7F C9 87      [ 7] 2373 	clr	_msgLine	; msgLine
                           2374 ;----- asm -----
                           2375 ; 876 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2376 	; #ENR#[587]_fs(, (void *)spellnames[spelllevel][spellselect]);
                           2377 ;--- end asm ---
   47DE E6 6D         [ 5] 2378 	ldb	13,s	;, spellLevel
   47E0 4F            [ 2] 2379 	clra		;zero_extendqihi: R:b -> R:d	;,
   47E1 58            [ 2] 2380 	aslb	;
   47E2 49            [ 2] 2381 	rola	;
   47E3 1F 01         [ 6] 2382 	tfr	d,x	;, tmp169
   47E5 E6 6E         [ 5] 2383 	ldb	14,s	;, spellSelect
   47E7 4F            [ 2] 2384 	clra		;zero_extendqihi: R:b -> R:d	;,
   47E8 ED E4         [ 5] 2385 	std	,s	;,
   47EA 58            [ 2] 2386 	aslb	;
   47EB 49            [ 2] 2387 	rola	;
   47EC AE 89 04 30   [ 9] 2388 	ldx	_spellNames,x	;, spellNames
   47F0 30 8B         [ 8] 2389 	leax	d,x	; tmp174, tmp173,
   47F2 AE 84         [ 5] 2390 	ldx	,x	;,
   47F4 AF E3         [ 8] 2391 	stx	,--s	;,
   47F6 8E 41 D1      [ 3] 2392 	ldx	#LC35	;,
   47F9 BD 5C 59      [ 8] 2393 	jsr	__fs
                           2394 ;----- asm -----
                           2395 ; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2396 	; #ENR#[588]printmessage(stringbuffer40);
                           2397 ;--- end asm ---
   47FC 8E C8 BF      [ 3] 2398 	ldx	#_stringBuffer40	;,
   47FF BD 5B 7A      [ 8] 2399 	jsr	_printMessage
                           2400 ;----- asm -----
                           2401 ; 881 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2402 	; #ENR#[590]cs=cs-(spelllevel+1);
                           2403 ;--- end asm ---
   4802 FC C9 65      [ 6] 2404 	ldd	_cs	; cs, cs
   4805 34 40         [ 6] 2405 	pshs	u	;subhi: R:d -= R:u	; D.3522, tmp177
   4807 A3 E1         [ 9] 2406 	subd	,s++	; tmp177
   4809 FD C9 65      [ 6] 2407 	std	_cs	; tmp177, cs
                           2408 ;----- asm -----
                           2409 ; 884 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2410 	; #ENR#[592]if (spelllevel == 0)
                           2411 ;--- end asm ---
   480C 32 62         [ 5] 2412 	leas	2,s	;,,
   480E 6D 6D         [ 7] 2413 	tst	13,s	; spellLevel
   4810 10 26 01 80   [ 6] 2414 	lbne	L105	;
                           2415 ;----- asm -----
                           2416 ; 887 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2417 	; #ENR#[594]if (spellselect == 0)
                           2418 ;--- end asm ---
   4814 6D 6E         [ 7] 2419 	tst	14,s	; spellSelect
   4816 26 0D         [ 3] 2420 	bne	L106	;
                           2421 ;----- asm -----
                           2422 ; 893 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2423 	; #ENR#[599]tmp = (signed int) randmax(8)+5;
                           2424 ;--- end asm ---
   4818 C6 08         [ 2] 2425 	ldb	#8	;,
   481A BD 5F 2A      [ 8] 2426 	jsr	_RandMax
   481D CB 05         [ 2] 2427 	addb	#5	; D.3529,
   481F F7 C8 FE      [ 5] 2428 	stb	_tmp	; D.3529, tmp
                           2429 ;----- asm -----
                           2430 ; 895 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2431 	; #ENR#[600]goto damagespell;
                           2432 ;--- end asm ---
   4822 16 0B 48      [ 5] 2433 	lbra	L107	;
   4825                    2434 L106:
   4825 E6 6E         [ 5] 2435 	ldb	14,s	;, spellSelect
   4827 C1 01         [ 2] 2436 	cmpb	#1	;cmpqi:	;,
   4829 10 26 00 88   [ 6] 2437 	lbne	L108	;
                           2438 ;----- asm -----
                           2439 ; 900 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2440 	; #ENR#[604]if (!incombat) goto nocombatspell;
                           2441 ;--- end asm ---
   482D 6D 65         [ 7] 2442 	tst	5,s	; inCombat
   482F 10 27 0B 2A   [ 6] 2443 	lbeq	L109	;
                           2444 ;----- asm -----
                           2445 ; 904 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2446 	; #ENR#[607]if (un != 0)
                           2447 ;--- end asm ---
   4833 7D C9 7E      [ 7] 2448 	tst	_un	; un
   4836 27 09         [ 3] 2449 	beq	L110	;
                           2450 ;----- asm -----
                           2451 ; 907 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2452 	; #ENR#[609]printmessage();
                           2453 ;--- end asm ---
   4838 8E 41 D9      [ 3] 2454 	ldx	#LC36	;,
   483B BD 5B 7A      [ 8] 2455 	jsr	_printMessage
                           2456 ;----- asm -----
                           2457 ; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2458 	; #ENR#[610]return 1;
                           2459 ;--- end asm ---
   483E 16 0B 27      [ 5] 2460 	lbra	L222	;
   4841                    2461 L110:
                           2462 ;----- asm -----
                           2463 ; 914 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2464 	; #ENR#[614]if (randmax(20)+1 > s[int] )
                           2465 ;--- end asm ---
   4841 C6 14         [ 2] 2466 	ldb	#20	;,
   4843 BD 5F 2A      [ 8] 2467 	jsr	_RandMax
   4846 5C            [ 2] 2468 	incb	; D.3533
   4847 F1 C9 46      [ 5] 2469 	cmpb	_s+1	;cmpqi:	; D.3533, s
   484A 23 1F         [ 3] 2470 	bls	L111	;
                           2471 ;----- asm -----
                           2472 ; 917 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2473 	; #ENR#[616]_fs(, mo[m]);
                           2474 ;--- end asm ---
   484C F6 C9 77      [ 5] 2475 	ldb	_m	;, m
   484F 1D            [ 2] 2476 	sex		;extendqihi2: R:b -> R:d	;,
   4850 ED E4         [ 5] 2477 	std	,s	;,
   4852 58            [ 2] 2478 	aslb	;
   4853 49            [ 2] 2479 	rola	;
   4854 1F 01         [ 6] 2480 	tfr	d,x	;, tmp182
   4856 AE 89 01 24   [ 9] 2481 	ldx	_mo,x	;, mo
   485A AF E3         [ 8] 2482 	stx	,--s	;,
   485C 8E 41 ED      [ 3] 2483 	ldx	#LC37	;,
   485F BD 5C 59      [ 8] 2484 	jsr	__fs
                           2485 ;----- asm -----
                           2486 ; 919 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2487 	; #ENR#[617]printmessage(stringbuffer40);
                           2488 ;--- end asm ---
   4862 8E C8 BF      [ 3] 2489 	ldx	#_stringBuffer40	;,
   4865 BD 5B 7A      [ 8] 2490 	jsr	_printMessage
                           2491 ;----- asm -----
                           2492 ; 921 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2493 	; #ENR#[618]return 1;
                           2494 ;--- end asm ---
   4868 16 00 C1      [ 5] 2495 	lbra	L227	;
   486B                    2496 L111:
                           2497 ;----- asm -----
                           2498 ; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2499 	; #ENR#[623]_fs(, mo[m]);
                           2500 ;--- end asm ---
   486B F6 C9 77      [ 5] 2501 	ldb	_m	;, m
   486E 1D            [ 2] 2502 	sex		;extendqihi2: R:b -> R:d	;,
   486F ED E4         [ 5] 2503 	std	,s	;,
   4871 58            [ 2] 2504 	aslb	;
   4872 49            [ 2] 2505 	rola	;
   4873 1F 01         [ 6] 2506 	tfr	d,x	;, tmp187
   4875 AE 89 01 24   [ 9] 2507 	ldx	_mo,x	;, mo
   4879 AF E3         [ 8] 2508 	stx	,--s	;,
   487B 8E 42 01      [ 3] 2509 	ldx	#LC38	;,
   487E BD 5C 59      [ 8] 2510 	jsr	__fs
                           2511 ;----- asm -----
                           2512 ; 929 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2513 	; #ENR#[624]printmessage(stringbuffer40);
                           2514 ;--- end asm ---
   4881 8E C8 BF      [ 3] 2515 	ldx	#_stringBuffer40	;,
   4884 BD 5B 7A      [ 8] 2516 	jsr	_printMessage
                           2517 ;----- asm -----
                           2518 ; 931 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2519 	; #ENR#[625]if (testforbutton(1) != 4)
                           2520 ;--- end asm ---
   4887 C6 01         [ 2] 2521 	ldb	#1	;,
   4889 BD 04 F8      [ 8] 2522 	jsr	_testForButton
   488C 32 62         [ 5] 2523 	leas	2,s	;,,
   488E C1 04         [ 2] 2524 	cmpb	#4	;cmpqi:	; D.3538,
   4890 27 09         [ 3] 2525 	beq	L112	;
                           2526 ;----- asm -----
                           2527 ; 934 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2528 	; #ENR#[627]printmessage();
                           2529 ;--- end asm ---
   4892 8E 42 20      [ 3] 2530 	ldx	#LC39	;,
   4895 BD 5B 7A      [ 8] 2531 	jsr	_printMessage
                           2532 ;----- asm -----
                           2533 ; 936 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2534 	; #ENR#[628]return 4;
                           2535 ;--- end asm ---
   4898 16 01 80      [ 5] 2536 	lbra	L224	;
   489B                    2537 L112:
                           2538 ;----- asm -----
                           2539 ; 942 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2540 	; #ENR#[633]if (randmax(5) < 4 )
                           2541 ;--- end asm ---
   489B C6 05         [ 2] 2542 	ldb	#5	;,
   489D BD 5F 2A      [ 8] 2543 	jsr	_RandMax
   48A0 C1 03         [ 2] 2544 	cmpb	#3	;cmpqi:	; D.3539,
   48A2 22 03         [ 3] 2545 	bhi	L113	;
                           2546 ;----- asm -----
                           2547 ; 945 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2548 	; #ENR#[635]return 3;
                           2549 ;--- end asm ---
   48A4 16 0A F4      [ 5] 2550 	lbra	L170	;
   48A7                    2551 L113:
                           2552 ;----- asm -----
                           2553 ; 948 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2554 	; #ENR#[637]printmessage();
                           2555 ;--- end asm ---
   48A7 8E 42 26      [ 3] 2556 	ldx	#LC40	;,
   48AA BD 5B 7A      [ 8] 2557 	jsr	_printMessage
                           2558 ;----- asm -----
                           2559 ; 950 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2560 	; #ENR#[638]pause(small_pause);
                           2561 ;--- end asm ---
   48AD C6 4B         [ 2] 2562 	ldb	#75	;,
   48AF BD 3E 21      [ 8] 2563 	jsr	_pause
                           2564 ;----- asm -----
                           2565 ; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2566 	; #ENR#[639]return 1;
                           2567 ;--- end asm ---
   48B2 16 0A B3      [ 5] 2568 	lbra	L222	;
   48B5                    2569 L108:
   48B5 E6 6E         [ 5] 2570 	ldb	14,s	;, spellSelect
   48B7 C1 02         [ 2] 2571 	cmpb	#2	;cmpqi:	;,
   48B9 26 29         [ 3] 2572 	bne	L114	;
                           2573 ;----- asm -----
                           2574 ; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2575 	; #ENR#[647]printmessage();
                           2576 ;--- end asm ---
   48BB 8E 42 32      [ 3] 2577 	ldx	#LC41	;,
   48BE BD 5B 7A      [ 8] 2578 	jsr	_printMessage
                           2579 ;----- asm -----
                           2580 ; 963 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2581 	; #ENR#[648]ch = ch + randmax(8)+1;
                           2582 ;--- end asm ---
   48C1 10 BE C9 63   [ 7] 2583 	ldy	_ch	; ch.61, ch
   48C5 C6 08         [ 2] 2584 	ldb	#8	;,
   48C7 BD 5F 2A      [ 8] 2585 	jsr	_RandMax
   48CA 30 21         [ 5] 2586 	leax	1,y	; tmp190,, ch.61
   48CC 4F            [ 2] 2587 	clra		;zero_extendqihi: R:b -> R:d	; D.3541, D.3541
   48CD 34 10         [ 6] 2588 	pshs	x	;addhi: R:d += R:x	; tmp190, ch.62
   48CF E3 E1         [ 9] 2589 	addd	,s++	; ch.62
   48D1 FD C9 63      [ 6] 2590 	std	_ch	; ch.62, ch
                           2591 ;----- asm -----
                           2592 ; 965 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2593 	; #ENR#[649]if (ch > hp) ch = hp;
                           2594 ;--- end asm ---
   48D4 BE C9 36      [ 6] 2595 	ldx	_hp	; hp.63, hp
   48D7 34 10         [ 6] 2596 	pshs	x	;cmphi: R:x with R:d	; hp.63, ch.62
   48D9 10 A3 E1      [10] 2597 	cmpd	,s++	;cmphi:	; ch.62
   48DC 2F 03         [ 3] 2598 	ble	L115	;
   48DE BF C9 63      [ 6] 2599 	stx	_ch	; hp.63, ch
   48E1                    2600 L115:
                           2601 ;----- asm -----
                           2602 ; 967 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2603 	; #ENR#[650]return 1;
                           2604 ;--- end asm ---
   48E1 16 0A 84      [ 5] 2605 	lbra	L222	;
   48E4                    2606 L114:
   48E4 E6 6E         [ 5] 2607 	ldb	14,s	;, spellSelect
   48E6 C1 03         [ 2] 2608 	cmpb	#3	;cmpqi:	;,
   48E8 26 0D         [ 3] 2609 	bne	L116	;
                           2610 ;----- asm -----
                           2611 ; 977 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2612 	; #ENR#[659]sf[light] = randmax(11)+5;
                           2613 ;--- end asm ---
   48EA C6 0B         [ 2] 2614 	ldb	#11	;,
   48EC BD 5F 2A      [ 8] 2615 	jsr	_RandMax
   48EF CB 05         [ 2] 2616 	addb	#5	; D.3546,
   48F1 F7 C9 6E      [ 5] 2617 	stb	_sf+2	; D.3546, sf
                           2618 ;----- asm -----
                           2619 ; 979 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2620 	; #ENR#[660]return 1;
                           2621 ;--- end asm ---
   48F4 16 0A 71      [ 5] 2622 	lbra	L222	;
   48F7                    2623 L116:
   48F7 E6 6E         [ 5] 2624 	ldb	14,s	;, spellSelect
   48F9 C1 04         [ 2] 2625 	cmpb	#4	;cmpqi:	;,
   48FB 10 26 00 80   [ 6] 2626 	lbne	L117	;
                           2627 ;----- asm -----
                           2628 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2629 	; #ENR#[666]if (!incombat) goto nocombatspell;
                           2630 ;--- end asm ---
   48FF 6D 65         [ 7] 2631 	tst	5,s	; inCombat
   4901 10 27 0A 58   [ 6] 2632 	lbeq	L109	;
                           2633 ;----- asm -----
                           2634 ; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2635 	; #ENR#[670]if (un == 0)
                           2636 ;--- end asm ---
   4905 7D C9 7E      [ 7] 2637 	tst	_un	; un
   4908 26 27         [ 3] 2638 	bne	L118	;
                           2639 ;----- asm -----
                           2640 ; 994 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2641 	; #ENR#[672]_fs(, mo[m]);
                           2642 ;--- end asm ---
   490A F6 C9 77      [ 5] 2643 	ldb	_m	;, m
   490D 1D            [ 2] 2644 	sex		;extendqihi2: R:b -> R:d	;,
   490E ED E4         [ 5] 2645 	std	,s	;,
   4910 58            [ 2] 2646 	aslb	;
   4911 49            [ 2] 2647 	rola	;
   4912 1F 01         [ 6] 2648 	tfr	d,x	;, tmp195
   4914 AE 89 01 24   [ 9] 2649 	ldx	_mo,x	;, mo
   4918 AF E3         [ 8] 2650 	stx	,--s	;,
   491A 8E 42 42      [ 3] 2651 	ldx	#LC42	;,
   491D BD 5C 59      [ 8] 2652 	jsr	__fs
                           2653 ;----- asm -----
                           2654 ; 996 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2655 	; #ENR#[673]printmessage(stringbuffer40);
                           2656 ;--- end asm ---
   4920 8E C8 BF      [ 3] 2657 	ldx	#_stringBuffer40	;,
   4923 BD 5B 7A      [ 8] 2658 	jsr	_printMessage
                           2659 ;----- asm -----
                           2660 ; 998 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2661 	; #ENR#[674]printmessage();
                           2662 ;--- end asm ---
   4926 8E 42 54      [ 3] 2663 	ldx	#LC43	;,
   4929 BD 5B 7A      [ 8] 2664 	jsr	_printMessage
                           2665 ;----- asm -----
                           2666 ; 1000 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2667 	; #ENR#[675]return 1;
                           2668 ;--- end asm ---
   492C                    2669 L227:
   492C C6 01         [ 2] 2670 	ldb	#1	; D.3520,
   492E 16 0A 22      [ 5] 2671 	lbra	L223	;
   4931                    2672 L118:
                           2673 ;----- asm -----
                           2674 ; 1006 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2675 	; #ENR#[680]if (randmax(20) > s[wis] + lv-ml)
                           2676 ;--- end asm ---
   4931 C6 14         [ 2] 2677 	ldb	#20	;,
   4933 BD 5F 2A      [ 8] 2678 	jsr	_RandMax
   4936 E7 E4         [ 4] 2679 	stb	,s	;, D.3548
   4938 F6 C9 7F      [ 5] 2680 	ldb	_ml	;, ml
   493B E7 67         [ 5] 2681 	stb	7,s	;, ml.64
   493D F6 C9 38      [ 5] 2682 	ldb	_lv	;, lv
   4940 FB C9 47      [ 5] 2683 	addb	_s+2	;, s
   4943 E0 67         [ 5] 2684 	subb	7,s	;, ml.64
   4945 E7 63         [ 5] 2685 	stb	3,s	;,
   4947 E6 E4         [ 4] 2686 	ldb	,s	;, D.3548
   4949 E1 63         [ 5] 2687 	cmpb	3,s	;cmpqi:	;,
   494B 23 1F         [ 3] 2688 	bls	L119	;
                           2689 ;----- asm -----
                           2690 ; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2691 	; #ENR#[682]_fs(, mo[m]);
                           2692 ;--- end asm ---
   494D F6 C9 77      [ 5] 2693 	ldb	_m	;, m
   4950 1D            [ 2] 2694 	sex		;extendqihi2: R:b -> R:d	;,
   4951 ED E4         [ 5] 2695 	std	,s	;,
   4953 58            [ 2] 2696 	aslb	;
   4954 49            [ 2] 2697 	rola	;
   4955 1F 01         [ 6] 2698 	tfr	d,x	;, tmp203
   4957 AE 89 01 24   [ 9] 2699 	ldx	_mo,x	;, mo
   495B AF E3         [ 8] 2700 	stx	,--s	;,
   495D 8E 42 6B      [ 3] 2701 	ldx	#LC44	;,
   4960 BD 5C 59      [ 8] 2702 	jsr	__fs
                           2703 ;----- asm -----
                           2704 ; 1011 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2705 	; #ENR#[683]printmessage(stringbuffer40);
                           2706 ;--- end asm ---
   4963 8E C8 BF      [ 3] 2707 	ldx	#_stringBuffer40	;,
   4966 BD 5B 7A      [ 8] 2708 	jsr	_printMessage
                           2709 ;----- asm -----
                           2710 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2711 	; #ENR#[684]return 1;
                           2712 ;--- end asm ---
   4969 16 FF C0      [ 5] 2713 	lbra	L227	;
   496C                    2714 L119:
                           2715 ;----- asm -----
                           2716 ; 1017 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2717 	; #ENR#[687]ml=(ml+1)>>1;
                           2718 ;--- end asm ---
   496C 6C 67         [ 7] 2719 	inc	7,s	; ml.64
   496E E6 67         [ 5] 2720 	ldb	7,s	;, ml.64
   4970 54            [ 2] 2721 	lsrb	;
   4971 F7 C9 7F      [ 5] 2722 	stb	_ml	;, ml
                           2723 ;----- asm -----
                           2724 ; 1019 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2725 	; #ENR#[688]printmessage();
                           2726 ;--- end asm ---
   4974 8E 42 88      [ 3] 2727 	ldx	#LC45	;,
   4977 BD 5B 7A      [ 8] 2728 	jsr	_printMessage
                           2729 ;----- asm -----
                           2730 ; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2731 	; #ENR#[689]return 5;
                           2732 ;--- end asm ---
   497A C6 05         [ 2] 2733 	ldb	#5	; D.3520,
   497C 16 0A 1E      [ 5] 2734 	lbra	L100	;
   497F                    2735 L117:
   497F E6 6E         [ 5] 2736 	ldb	14,s	;, spellSelect
   4981 C1 05         [ 2] 2737 	cmpb	#5	;cmpqi:	;,
   4983 10 26 09 D1   [ 6] 2738 	lbne	L120	;
                           2739 ;----- asm -----
                           2740 ; 1028 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2741 	; #ENR#[695]sf[protection_from_evil] = randmax(11)+5;
                           2742 ;--- end asm ---
   4987 C6 0B         [ 2] 2743 	ldb	#11	;,
   4989 BD 5F 2A      [ 8] 2744 	jsr	_RandMax
   498C CB 05         [ 2] 2745 	addb	#5	; D.3555,
   498E F7 C9 6F      [ 5] 2746 	stb	_sf+3	; D.3555, sf
                           2747 ;----- asm -----
                           2748 ; 1030 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2749 	; #ENR#[696]return 1;
                           2750 ;--- end asm ---
   4991 16 09 D4      [ 5] 2751 	lbra	L222	;
   4994                    2752 L105:
   4994 E6 6D         [ 5] 2753 	ldb	13,s	;, spellLevel
   4996 C1 01         [ 2] 2754 	cmpb	#1	;cmpqi:	;,
   4998 10 26 01 5F   [ 6] 2755 	lbne	L121	;
                           2756 ;----- asm -----
                           2757 ; 1036 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2758 	; #ENR#[701]if (spellselect == 0)
                           2759 ;--- end asm ---
   499C 6D 6E         [ 7] 2760 	tst	14,s	; spellSelect
   499E 10 26 00 96   [ 6] 2761 	lbne	L122	;
                           2762 ;----- asm -----
                           2763 ; 1044 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2764 	; #ENR#[708]if (!incombat) goto nocombatspell;
                           2765 ;--- end asm ---
   49A2 6D 65         [ 7] 2766 	tst	5,s	; inCombat
   49A4 10 27 09 B5   [ 6] 2767 	lbeq	L109	;
                           2768 ;----- asm -----
                           2769 ; 1046 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2770 	; #ENR#[709]if ( ((lrandmax(6)*lrandmax(5)))  + ml > s[int])
                           2771 ;--- end asm ---
   49A8 C6 06         [ 2] 2772 	ldb	#6	;,
   49AA BD 72 11      [ 8] 2773 	jsr	_lRandMax
   49AD 31 84         [ 4] 2774 	leay	,x	; D.3557,
   49AF C6 05         [ 2] 2775 	ldb	#5	;,
   49B1 BD 72 11      [ 8] 2776 	jsr	_lRandMax
   49B4 34 20         [ 6] 2777 	pshs	y	; D.3557
   49B6 BD 79 2D      [ 8] 2778 	jsr	_mulhi3
   49B9 32 62         [ 5] 2779 	leas	2,s	;,,
   49BB F6 C9 7F      [ 5] 2780 	ldb	_ml	;, ml
   49BE 4F            [ 2] 2781 	clra		;zero_extendqihi: R:b -> R:d	;,
   49BF ED E4         [ 5] 2782 	std	,s	;,
   49C1 30 8B         [ 8] 2783 	leax	d,x	; tmp210,, tmp208
   49C3 F6 C9 46      [ 5] 2784 	ldb	_s+1	;, s
   49C6 4F            [ 2] 2785 	clra		;zero_extendqihi: R:b -> R:d	;,
   49C7 1F 03         [ 6] 2786 	tfr	d,u	;, s
   49C9 34 06         [ 7] 2787 	pshs	d	;cmphi: R:d with R:x	; s, tmp210
   49CB AC E1         [ 9] 2788 	cmpx	,s++	;cmphi:	; tmp210
   49CD 23 1F         [ 3] 2789 	bls	L123	;
                           2790 ;----- asm -----
                           2791 ; 1049 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2792 	; #ENR#[711]_fs(, mo[m]);
                           2793 ;--- end asm ---
   49CF F6 C9 77      [ 5] 2794 	ldb	_m	;, m
   49D2 1D            [ 2] 2795 	sex		;extendqihi2: R:b -> R:d	;,
   49D3 ED E4         [ 5] 2796 	std	,s	;,
   49D5 58            [ 2] 2797 	aslb	;
   49D6 49            [ 2] 2798 	rola	;
   49D7 1F 01         [ 6] 2799 	tfr	d,x	;, tmp215
   49D9 AE 89 01 24   [ 9] 2800 	ldx	_mo,x	;, mo
   49DD AF E3         [ 8] 2801 	stx	,--s	;,
   49DF 8E 42 9A      [ 3] 2802 	ldx	#LC46	;,
   49E2 BD 5C 59      [ 8] 2803 	jsr	__fs
                           2804 ;----- asm -----
                           2805 ; 1051 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2806 	; #ENR#[712]printmessage(stringbuffer40);
                           2807 ;--- end asm ---
   49E5 8E C8 BF      [ 3] 2808 	ldx	#_stringBuffer40	;,
   49E8 BD 5B 7A      [ 8] 2809 	jsr	_printMessage
                           2810 ;----- asm -----
                           2811 ; 1053 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2812 	; #ENR#[713]return 1;
                           2813 ;--- end asm ---
   49EB 16 FF 3E      [ 5] 2814 	lbra	L227	;
   49EE                    2815 L123:
                           2816 ;----- asm -----
                           2817 ; 1059 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2818 	; #ENR#[718]_fs(, mo[m]);
                           2819 ;--- end asm ---
   49EE F6 C9 77      [ 5] 2820 	ldb	_m	;, m
   49F1 1D            [ 2] 2821 	sex		;extendqihi2: R:b -> R:d	;,
   49F2 ED E4         [ 5] 2822 	std	,s	;,
   49F4 58            [ 2] 2823 	aslb	;
   49F5 49            [ 2] 2824 	rola	;
   49F6 1F 01         [ 6] 2825 	tfr	d,x	;, tmp220
   49F8 AE 89 01 24   [ 9] 2826 	ldx	_mo,x	;, mo
   49FC AF E3         [ 8] 2827 	stx	,--s	;,
   49FE 8E 42 AE      [ 3] 2828 	ldx	#LC47	;,
   4A01 BD 5C 59      [ 8] 2829 	jsr	__fs
                           2830 ;----- asm -----
                           2831 ; 1061 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2832 	; #ENR#[719]dressedtokill:
                           2833 ;--- end asm ---
   4A04                    2834 L219:
   4A04 32 62         [ 5] 2835 	leas	2,s	;,,
   4A06                    2836 L124:
                           2837 ;----- asm -----
                           2838 ; 1063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2839 	; #ENR#[720]printmessage(stringbuffer40);
                           2840 ;--- end asm ---
   4A06 8E C8 BF      [ 3] 2841 	ldx	#_stringBuffer40	;,
   4A09 BD 5B 7A      [ 8] 2842 	jsr	_printMessage
                           2843 ;----- asm -----
                           2844 ; 1065 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2845 	; #ENR#[721]if (testforbutton(1) != 4)
                           2846 ;--- end asm ---
   4A0C C6 01         [ 2] 2847 	ldb	#1	;,
   4A0E BD 04 F8      [ 8] 2848 	jsr	_testForButton
   4A11 C1 04         [ 2] 2849 	cmpb	#4	;cmpqi:	; D.3563,
   4A13 27 0B         [ 3] 2850 	beq	L125	;
                           2851 ;----- asm -----
                           2852 ; 1068 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2853 	; #ENR#[723]printmessage();
                           2854 ;--- end asm ---
   4A15 8E 42 20      [ 3] 2855 	ldx	#LC39	;,
   4A18 BD 5B 7A      [ 8] 2856 	jsr	_printMessage
                           2857 ;----- asm -----
                           2858 ; 1070 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2859 	; #ENR#[724]return 4;
                           2860 ;--- end asm ---
   4A1B                    2861 L224:
   4A1B C6 04         [ 2] 2862 	ldb	#4	; D.3520,
   4A1D 16 09 7D      [ 5] 2863 	lbra	L100	;
   4A20                    2864 L125:
                           2865 ;----- asm -----
                           2866 ; 1076 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2867 	; #ENR#[729]if (randmax(20)-ml > 10 )
                           2868 ;--- end asm ---
   4A20 C6 14         [ 2] 2869 	ldb	#20	;,
   4A22 BD 5F 2A      [ 8] 2870 	jsr	_RandMax
   4A25 F0 C9 7F      [ 5] 2871 	subb	_ml	; tmp223, ml
   4A28 C1 0A         [ 2] 2872 	cmpb	#10	;cmpqi:	; tmp223,
   4A2A 23 03         [ 3] 2873 	bls	L126	;
                           2874 ;----- asm -----
                           2875 ; 1079 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2876 	; #ENR#[731]return 3;
                           2877 ;--- end asm ---
   4A2C 16 09 6C      [ 5] 2878 	lbra	L170	;
   4A2F                    2879 L126:
                           2880 ;----- asm -----
                           2881 ; 1082 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2882 	; #ENR#[733]printmessage();
                           2883 ;--- end asm ---
   4A2F 8E 42 CB      [ 3] 2884 	ldx	#LC48	;,
   4A32 BD 5B 7A      [ 8] 2885 	jsr	_printMessage
                           2886 ;----- asm -----
                           2887 ; 1084 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2888 	; #ENR#[734]return 1;
                           2889 ;--- end asm ---
   4A35 16 09 30      [ 5] 2890 	lbra	L222	;
   4A38                    2891 L122:
   4A38 E6 6E         [ 5] 2892 	ldb	14,s	;, spellSelect
   4A3A C1 01         [ 2] 2893 	cmpb	#1	;cmpqi:	;,
   4A3C 26 0D         [ 3] 2894 	bne	L127	;
                           2895 ;----- asm -----
                           2896 ; 1091 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2897 	; #ENR#[740]sf[levitate] = randmax(21)+5;
                           2898 ;--- end asm ---
   4A3E C6 15         [ 2] 2899 	ldb	#21	;,
   4A40 BD 5F 2A      [ 8] 2900 	jsr	_RandMax
   4A43 CB 05         [ 2] 2901 	addb	#5	; D.3566,
   4A45 F7 C9 70      [ 5] 2902 	stb	_sf+4	; D.3566, sf
                           2903 ;----- asm -----
                           2904 ; 1093 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2905 	; #ENR#[741]return 1;
                           2906 ;--- end asm ---
   4A48 16 08 2C      [ 5] 2907 	lbra	L226	;
   4A4B                    2908 L127:
   4A4B E6 6E         [ 5] 2909 	ldb	14,s	;, spellSelect
   4A4D C1 02         [ 2] 2910 	cmpb	#2	;cmpqi:	;,
   4A4F 26 0D         [ 3] 2911 	bne	L128	;
                           2912 ;----- asm -----
                           2913 ; 1101 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2914 	; #ENR#[748]tmp = (signed int) randmax(12)+3;
                           2915 ;--- end asm ---
   4A51 C6 0C         [ 2] 2916 	ldb	#12	;,
   4A53 BD 5F 2A      [ 8] 2917 	jsr	_RandMax
   4A56 CB 03         [ 2] 2918 	addb	#3	; D.3568,
   4A58 F7 C8 FE      [ 5] 2919 	stb	_tmp	; D.3568, tmp
                           2920 ;----- asm -----
                           2921 ; 1103 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2922 	; #ENR#[749]goto damagespell;
                           2923 ;--- end asm ---
   4A5B 16 09 0F      [ 5] 2924 	lbra	L107	;
   4A5E                    2925 L128:
   4A5E E6 6E         [ 5] 2926 	ldb	14,s	;, spellSelect
   4A60 C1 03         [ 2] 2927 	cmpb	#3	;cmpqi:	;,
   4A62 26 0D         [ 3] 2928 	bne	L129	;
                           2929 ;----- asm -----
                           2930 ; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2931 	; #ENR#[755]sf[detect_traps] = randmax(21)+5;
                           2932 ;--- end asm ---
   4A64 C6 15         [ 2] 2933 	ldb	#21	;,
   4A66 BD 5F 2A      [ 8] 2934 	jsr	_RandMax
   4A69 CB 05         [ 2] 2935 	addb	#5	; D.3571,
   4A6B F7 C9 6D      [ 5] 2936 	stb	_sf+1	; D.3571, sf
                           2937 ;----- asm -----
                           2938 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2939 	; #ENR#[756]return 1;
                           2940 ;--- end asm ---
   4A6E 16 08 F7      [ 5] 2941 	lbra	L222	;
   4A71                    2942 L129:
   4A71 E6 6E         [ 5] 2943 	ldb	14,s	;, spellSelect
   4A73 C1 04         [ 2] 2944 	cmpb	#4	;cmpqi:	;,
   4A75 10 26 00 6D   [ 6] 2945 	lbne	L130	;
                           2946 ;----- asm -----
                           2947 ; 1119 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2948 	; #ENR#[762]if (!incombat) goto nocombatspell;
                           2949 ;--- end asm ---
   4A79 6D 65         [ 7] 2950 	tst	5,s	; inCombat
   4A7B 10 27 08 DE   [ 6] 2951 	lbeq	L109	;
                           2952 ;----- asm -----
                           2953 ; 1123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2954 	; #ENR#[765]if (un != 0)
                           2955 ;--- end asm ---
   4A7F 7D C9 7E      [ 7] 2956 	tst	_un	; un
   4A82 27 09         [ 3] 2957 	beq	L131	;
                           2958 ;----- asm -----
                           2959 ; 1126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2960 	; #ENR#[767]printmessage();
                           2961 ;--- end asm ---
   4A84 8E 42 DA      [ 3] 2962 	ldx	#LC49	;,
   4A87 BD 5B 7A      [ 8] 2963 	jsr	_printMessage
                           2964 ;----- asm -----
                           2965 ; 1128 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2966 	; #ENR#[768]return 1;
                           2967 ;--- end asm ---
   4A8A 16 08 DB      [ 5] 2968 	lbra	L222	;
   4A8D                    2969 L131:
                           2970 ;----- asm -----
                           2971 ; 1136 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2972 	; #ENR#[775]if ( ((lrandmax(6)*lrandmax(5)))  + 1 > s[chr])
                           2973 ;--- end asm ---
   4A8D C6 06         [ 2] 2974 	ldb	#6	;,
   4A8F BD 72 11      [ 8] 2975 	jsr	_lRandMax
   4A92 31 84         [ 4] 2976 	leay	,x	; D.3573,
   4A94 C6 05         [ 2] 2977 	ldb	#5	;,
   4A96 BD 72 11      [ 8] 2978 	jsr	_lRandMax
   4A99 34 20         [ 6] 2979 	pshs	y	; D.3573
   4A9B BD 79 2D      [ 8] 2980 	jsr	_mulhi3
   4A9E 32 62         [ 5] 2981 	leas	2,s	;,,
   4AA0 30 01         [ 5] 2982 	leax	1,x	; tmp227,, tmp226
   4AA2 F6 C9 4A      [ 5] 2983 	ldb	_s+5	;, s
   4AA5 4F            [ 2] 2984 	clra		;zero_extendqihi: R:b -> R:d	;,
   4AA6 1F 03         [ 6] 2985 	tfr	d,u	;, s
   4AA8 34 06         [ 7] 2986 	pshs	d	;cmphi: R:d with R:x	; s, tmp227
   4AAA AC E1         [ 9] 2987 	cmpx	,s++	;cmphi:	; tmp227
   4AAC 23 1F         [ 3] 2988 	bls	L132	;
                           2989 ;----- asm -----
                           2990 ; 1139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2991 	; #ENR#[777]_fs(, mo[m]);
                           2992 ;--- end asm ---
   4AAE F6 C9 77      [ 5] 2993 	ldb	_m	;, m
   4AB1 1D            [ 2] 2994 	sex		;extendqihi2: R:b -> R:d	;,
   4AB2 ED E4         [ 5] 2995 	std	,s	;,
   4AB4 58            [ 2] 2996 	aslb	;
   4AB5 49            [ 2] 2997 	rola	;
   4AB6 1F 01         [ 6] 2998 	tfr	d,x	;, tmp232
   4AB8 AE 89 01 24   [ 9] 2999 	ldx	_mo,x	;, mo
   4ABC AF E3         [ 8] 3000 	stx	,--s	;,
   4ABE 8E 42 F9      [ 3] 3001 	ldx	#LC50	;,
   4AC1 BD 5C 59      [ 8] 3002 	jsr	__fs
                           3003 ;----- asm -----
                           3004 ; 1141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3005 	; #ENR#[778]printmessage(stringbuffer40);
                           3006 ;--- end asm ---
   4AC4 8E C8 BF      [ 3] 3007 	ldx	#_stringBuffer40	;,
   4AC7 BD 5B 7A      [ 8] 3008 	jsr	_printMessage
                           3009 ;----- asm -----
                           3010 ; 1143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3011 	; #ENR#[779]return 1;
                           3012 ;--- end asm ---
   4ACA 16 FE 5F      [ 5] 3013 	lbra	L227	;
   4ACD                    3014 L132:
                           3015 ;----- asm -----
                           3016 ; 1149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3017 	; #ENR#[784]_fs(, mo[m]);
                           3018 ;--- end asm ---
   4ACD F6 C9 77      [ 5] 3019 	ldb	_m	;, m
   4AD0 1D            [ 2] 3020 	sex		;extendqihi2: R:b -> R:d	;,
   4AD1 ED E4         [ 5] 3021 	std	,s	;,
   4AD3 58            [ 2] 3022 	aslb	;
   4AD4 49            [ 2] 3023 	rola	;
   4AD5 1F 01         [ 6] 3024 	tfr	d,x	;, tmp237
   4AD7 AE 89 01 24   [ 9] 3025 	ldx	_mo,x	;, mo
   4ADB AF E3         [ 8] 3026 	stx	,--s	;,
   4ADD 8E 43 0C      [ 3] 3027 	ldx	#LC51	;,
   4AE0 BD 5C 59      [ 8] 3028 	jsr	__fs
                           3029 ;----- asm -----
                           3030 ; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3031 	; #ENR#[785]goto dressedtokill;
                           3032 ;--- end asm ---
   4AE3 16 FF 1E      [ 5] 3033 	lbra	L219	;
   4AE6                    3034 L130:
   4AE6 E6 6E         [ 5] 3035 	ldb	14,s	;, spellSelect
   4AE8 C1 05         [ 2] 3036 	cmpb	#5	;cmpqi:	;,
   4AEA 10 26 08 6A   [ 6] 3037 	lbne	L120	;
                           3038 ;----- asm -----
                           3039 ; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3040 	; #ENR#[791]sf[strength] = randmax(21)+5;
                           3041 ;--- end asm ---
   4AEE C6 15         [ 2] 3042 	ldb	#21	;,
   4AF0 BD 5F 2A      [ 8] 3043 	jsr	_RandMax
   4AF3 CB 05         [ 2] 3044 	addb	#5	; D.3579,
   4AF5 F7 C9 6C      [ 5] 3045 	stb	_sf	; D.3579, sf
                           3046 ;----- asm -----
                           3047 ; 1160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3048 	; #ENR#[792]return 1;
                           3049 ;--- end asm ---
   4AF8 16 08 6D      [ 5] 3050 	lbra	L222	;
   4AFB                    3051 L121:
   4AFB E6 6D         [ 5] 3052 	ldb	13,s	;, spellLevel
   4AFD C1 02         [ 2] 3053 	cmpb	#2	;cmpqi:	;,
   4AFF 10 26 01 45   [ 6] 3054 	lbne	L133	;
                           3055 ;----- asm -----
                           3056 ; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3057 	; #ENR#[797]if (spellselect == 0)
                           3058 ;--- end asm ---
   4B03 6D 6E         [ 7] 3059 	tst	14,s	; spellSelect
   4B05 26 23         [ 3] 3060 	bne	L134	;
                           3061 ;----- asm -----
                           3062 ; 1171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3063 	; #ENR#[801]printmessage();
                           3064 ;--- end asm ---
   4B07 8E 43 2A      [ 3] 3065 	ldx	#LC52	;,
   4B0A BD 5B 7A      [ 8] 3066 	jsr	_printMessage
                           3067 ;----- asm -----
                           3068 ; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3069 	; #ENR#[802]initsoundno = sound_lightning;
                           3070 ;--- end asm ---
   4B0D C6 07         [ 2] 3071 	ldb	#7	;,
   4B0F F7 C8 A6      [ 5] 3072 	stb	_initSoundNo	;, initSoundNo
                           3073 ;----- asm -----
                           3074 ; 1178 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3075 	; #ENR#[806]pause(small_pause);
                           3076 ;--- end asm ---
   4B12 C6 4B         [ 2] 3077 	ldb	#75	;,
   4B14 BD 3E 21      [ 8] 3078 	jsr	_pause
                           3079 ;----- asm -----
                           3080 ; 1180 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3081 	; #ENR#[807]tmp = (signed int) randmax(6*lv)+15;
                           3082 ;--- end asm ---
   4B17 F6 C9 38      [ 5] 3083 	ldb	_lv	; tmp243, lv
   4B1A 58            [ 2] 3084 	aslb	; tmp243
   4B1B FB C9 38      [ 5] 3085 	addb	_lv	; tmp243, lv
   4B1E 58            [ 2] 3086 	aslb	; tmp243
   4B1F BD 5F 2A      [ 8] 3087 	jsr	_RandMax
   4B22 CB 0F         [ 2] 3088 	addb	#15	; D.3582,
   4B24 F7 C8 FE      [ 5] 3089 	stb	_tmp	; D.3582, tmp
                           3090 ;----- asm -----
                           3091 ; 1182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3092 	; #ENR#[808]goto damagespell;
                           3093 ;--- end asm ---
   4B27 16 08 43      [ 5] 3094 	lbra	L107	;
   4B2A                    3095 L134:
   4B2A E6 6E         [ 5] 3096 	ldb	14,s	;, spellSelect
   4B2C C1 01         [ 2] 3097 	cmpb	#1	;cmpqi:	;,
   4B2E 26 29         [ 3] 3098 	bne	L135	;
                           3099 ;----- asm -----
                           3100 ; 1192 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3101 	; #ENR#[817]printmessage();
                           3102 ;--- end asm ---
   4B30 8E 42 32      [ 3] 3103 	ldx	#LC41	;,
   4B33 BD 5B 7A      [ 8] 3104 	jsr	_printMessage
                           3105 ;----- asm -----
                           3106 ; 1194 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3107 	; #ENR#[818]ch = ch + randmax(24)+1;
                           3108 ;--- end asm ---
   4B36 10 BE C9 63   [ 7] 3109 	ldy	_ch	; ch.448, ch
   4B3A C6 18         [ 2] 3110 	ldb	#24	;,
   4B3C BD 5F 2A      [ 8] 3111 	jsr	_RandMax
   4B3F 30 21         [ 5] 3112 	leax	1,y	; tmp246,, ch.448
   4B41 4F            [ 2] 3113 	clra		;zero_extendqihi: R:b -> R:d	; D.3585, D.3585
   4B42 34 10         [ 6] 3114 	pshs	x	;addhi: R:d += R:x	; tmp246, ch.68
   4B44 E3 E1         [ 9] 3115 	addd	,s++	; ch.68
   4B46 FD C9 63      [ 6] 3116 	std	_ch	; ch.68, ch
                           3117 ;----- asm -----
                           3118 ; 1196 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3119 	; #ENR#[819]if (ch > hp) ch = hp;
                           3120 ;--- end asm ---
   4B49 BE C9 36      [ 6] 3121 	ldx	_hp	; hp.449, hp
   4B4C 34 10         [ 6] 3122 	pshs	x	;cmphi: R:x with R:d	; hp.449, ch.68
   4B4E 10 A3 E1      [10] 3123 	cmpd	,s++	;cmphi:	; ch.68
   4B51 2F 03         [ 3] 3124 	ble	L136	;
   4B53 BF C9 63      [ 6] 3125 	stx	_ch	; hp.449, ch
   4B56                    3126 L136:
                           3127 ;----- asm -----
                           3128 ; 1198 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3129 	; #ENR#[820]return 1;
                           3130 ;--- end asm ---
   4B56 16 08 0F      [ 5] 3131 	lbra	L222	;
   4B59                    3132 L135:
   4B59 E6 6E         [ 5] 3133 	ldb	14,s	;, spellSelect
   4B5B C1 02         [ 2] 3134 	cmpb	#2	;cmpqi:	;,
   4B5D 26 0D         [ 3] 3135 	bne	L137	;
                           3136 ;----- asm -----
                           3137 ; 1205 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3138 	; #ENR#[826]sf[light] = randmax(31)+5;
                           3139 ;--- end asm ---
   4B5F C6 1F         [ 2] 3140 	ldb	#31	;,
   4B61 BD 5F 2A      [ 8] 3141 	jsr	_RandMax
   4B64 CB 05         [ 2] 3142 	addb	#5	; D.3589,
   4B66 F7 C9 6E      [ 5] 3143 	stb	_sf+2	; D.3589, sf
                           3144 ;----- asm -----
                           3145 ; 1207 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3146 	; #ENR#[827]return 1;
                           3147 ;--- end asm ---
   4B69 16 07 FC      [ 5] 3148 	lbra	L222	;
   4B6C                    3149 L137:
   4B6C E6 6E         [ 5] 3150 	ldb	14,s	;, spellSelect
   4B6E C1 03         [ 2] 3151 	cmpb	#3	;cmpqi:	;,
   4B70 26 0D         [ 3] 3152 	bne	L138	;
                           3153 ;----- asm -----
                           3154 ; 1214 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3155 	; #ENR#[833]sf[invisible] = randmax(21)+5;
                           3156 ;--- end asm ---
   4B72 C6 15         [ 2] 3157 	ldb	#21	;,
   4B74 BD 5F 2A      [ 8] 3158 	jsr	_RandMax
   4B77 CB 05         [ 2] 3159 	addb	#5	; D.3591,
   4B79 F7 C9 71      [ 5] 3160 	stb	_sf+5	; D.3591, sf
                           3161 ;----- asm -----
                           3162 ; 1216 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3163 	; #ENR#[834]return 1;
                           3164 ;--- end asm ---
   4B7C 16 07 E9      [ 5] 3165 	lbra	L222	;
   4B7F                    3166 L138:
   4B7F E6 6E         [ 5] 3167 	ldb	14,s	;, spellSelect
   4B81 C1 04         [ 2] 3168 	cmpb	#4	;cmpqi:	;,
   4B83 10 26 00 7E   [ 6] 3169 	lbne	L139	;
                           3170 ;----- asm -----
                           3171 ; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3172 	; #ENR#[841]if (!incombat) goto nocombatspell;
                           3173 ;--- end asm ---
   4B87 6D 65         [ 7] 3174 	tst	5,s	; inCombat
   4B89 10 27 07 D0   [ 6] 3175 	lbeq	L109	;
                           3176 ;----- asm -----
                           3177 ; 1229 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3178 	; #ENR#[845]if ( randmax(20)+ml > s[int])
                           3179 ;--- end asm ---
   4B8D C6 14         [ 2] 3180 	ldb	#20	;,
   4B8F BD 5F 2A      [ 8] 3181 	jsr	_RandMax
   4B92 FB C9 7F      [ 5] 3182 	addb	_ml	; D.3593, ml
   4B95 F1 C9 46      [ 5] 3183 	cmpb	_s+1	;cmpqi:	; D.3593, s
   4B98 23 1F         [ 3] 3184 	bls	L140	;
                           3185 ;----- asm -----
                           3186 ; 1232 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3187 	; #ENR#[847]_fs(, mo[m]);
                           3188 ;--- end asm ---
   4B9A F6 C9 77      [ 5] 3189 	ldb	_m	;, m
   4B9D 1D            [ 2] 3190 	sex		;extendqihi2: R:b -> R:d	;,
   4B9E ED E4         [ 5] 3191 	std	,s	;,
   4BA0 58            [ 2] 3192 	aslb	;
   4BA1 49            [ 2] 3193 	rola	;
   4BA2 1F 01         [ 6] 3194 	tfr	d,x	;, tmp254
   4BA4 AE 89 01 24   [ 9] 3195 	ldx	_mo,x	;, mo
   4BA8 AF E3         [ 8] 3196 	stx	,--s	;,
   4BAA 8E 43 38      [ 3] 3197 	ldx	#LC53	;,
   4BAD BD 5C 59      [ 8] 3198 	jsr	__fs
                           3199 ;----- asm -----
                           3200 ; 1234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3201 	; #ENR#[848]printmessage(stringbuffer40);
                           3202 ;--- end asm ---
   4BB0 8E C8 BF      [ 3] 3203 	ldx	#_stringBuffer40	;,
   4BB3 BD 5B 7A      [ 8] 3204 	jsr	_printMessage
                           3205 ;----- asm -----
                           3206 ; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3207 	; #ENR#[849]return 1;
                           3208 ;--- end asm ---
   4BB6 16 FD 73      [ 5] 3209 	lbra	L227	;
   4BB9                    3210 L140:
                           3211 ;----- asm -----
                           3212 ; 1243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3213 	; #ENR#[855]_fs(, mo[m]);
                           3214 ;--- end asm ---
   4BB9 F6 C9 77      [ 5] 3215 	ldb	_m	;, m
   4BBC 1D            [ 2] 3216 	sex		;extendqihi2: R:b -> R:d	;,
   4BBD ED E4         [ 5] 3217 	std	,s	;,
   4BBF 58            [ 2] 3218 	aslb	;
   4BC0 49            [ 2] 3219 	rola	;
   4BC1 1F 01         [ 6] 3220 	tfr	d,x	;, tmp259
   4BC3 AE 89 01 24   [ 9] 3221 	ldx	_mo,x	;, mo
   4BC7 AF E3         [ 8] 3222 	stx	,--s	;,
   4BC9 8E 43 4B      [ 3] 3223 	ldx	#LC54	;,
   4BCC BD 5C 59      [ 8] 3224 	jsr	__fs
                           3225 ;----- asm -----
                           3226 ; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3227 	; #ENR#[856]printmessage(stringbuffer40);
                           3228 ;--- end asm ---
   4BCF 8E C8 BF      [ 3] 3229 	ldx	#_stringBuffer40	;,
   4BD2 BD 5B 7A      [ 8] 3230 	jsr	_printMessage
                           3231 ;----- asm -----
                           3232 ; 1247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3233 	; #ENR#[857]if (testforbutton(1) != 4)
                           3234 ;--- end asm ---
   4BD5 C6 01         [ 2] 3235 	ldb	#1	;,
   4BD7 BD 04 F8      [ 8] 3236 	jsr	_testForButton
   4BDA 32 62         [ 5] 3237 	leas	2,s	;,,
   4BDC C1 04         [ 2] 3238 	cmpb	#4	;cmpqi:	; D.3595,
   4BDE 27 09         [ 3] 3239 	beq	L141	;
                           3240 ;----- asm -----
                           3241 ; 1250 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3242 	; #ENR#[859]printmessage();
                           3243 ;--- end asm ---
   4BE0 8E 42 20      [ 3] 3244 	ldx	#LC39	;,
   4BE3 BD 5B 7A      [ 8] 3245 	jsr	_printMessage
                           3246 ;----- asm -----
                           3247 ; 1252 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3248 	; #ENR#[860]return 4;
                           3249 ;--- end asm ---
   4BE6 16 06 8E      [ 5] 3250 	lbra	L226	;
   4BE9                    3251 L141:
                           3252 ;----- asm -----
                           3253 ; 1261 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3254 	; #ENR#[868]if (randmax(33) > 7+ml )
                           3255 ;--- end asm ---
   4BE9 C6 21         [ 2] 3256 	ldb	#33	;,
   4BEB BD 5F 2A      [ 8] 3257 	jsr	_RandMax
   4BEE E7 68         [ 5] 3258 	stb	8,s	;, D.3596
   4BF0 F6 C9 7F      [ 5] 3259 	ldb	_ml	; tmp262, ml
   4BF3 CB 07         [ 2] 3260 	addb	#7	; tmp262,
   4BF5 E1 68         [ 5] 3261 	cmpb	8,s	;cmpqi:(R)	; tmp262, D.3596
   4BF7 24 03         [ 3] 3262 	bhs	L142	;
                           3263 ;----- asm -----
                           3264 ; 1264 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3265 	; #ENR#[870]return 3;
                           3266 ;--- end asm ---
   4BF9 16 07 9F      [ 5] 3267 	lbra	L170	;
   4BFC                    3268 L142:
                           3269 ;----- asm -----
                           3270 ; 1267 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3271 	; #ENR#[872]printmessage();
                           3272 ;--- end asm ---
   4BFC 8E 42 CB      [ 3] 3273 	ldx	#LC48	;,
   4BFF BD 5B 7A      [ 8] 3274 	jsr	_printMessage
                           3275 ;----- asm -----
                           3276 ; 1269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3277 	; #ENR#[873]return 1;
                           3278 ;--- end asm ---
   4C02 16 07 63      [ 5] 3279 	lbra	L222	;
   4C05                    3280 L139:
   4C05 E6 6E         [ 5] 3281 	ldb	14,s	;, spellSelect
   4C07 C1 05         [ 2] 3282 	cmpb	#5	;cmpqi:	;,
   4C09 10 26 07 4B   [ 6] 3283 	lbne	L120	;
                           3284 ;----- asm -----
                           3285 ; 1276 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3286 	; #ENR#[879]if (!incombat) goto nocombatspell;
                           3287 ;--- end asm ---
   4C0D 6D 65         [ 7] 3288 	tst	5,s	; inCombat
   4C0F 10 27 07 4A   [ 6] 3289 	lbeq	L109	;
                           3290 ;----- asm -----
                           3291 ; 1281 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3292 	; #ENR#[883]if (randmax(22)+ml >= s[int])
                           3293 ;--- end asm ---
   4C13 C6 16         [ 2] 3294 	ldb	#22	;,
   4C15 BD 5F 2A      [ 8] 3295 	jsr	_RandMax
   4C18 FB C9 7F      [ 5] 3296 	addb	_ml	; D.3598, ml
   4C1B F1 C9 46      [ 5] 3297 	cmpb	_s+1	;cmpqi:	; D.3598, s
   4C1E 25 1F         [ 3] 3298 	blo	L143	;
                           3299 ;----- asm -----
                           3300 ; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3301 	; #ENR#[885]_fs(, mo[m]);
                           3302 ;--- end asm ---
   4C20 F6 C9 77      [ 5] 3303 	ldb	_m	;, m
   4C23 1D            [ 2] 3304 	sex		;extendqihi2: R:b -> R:d	;,
   4C24 ED E4         [ 5] 3305 	std	,s	;,
   4C26 58            [ 2] 3306 	aslb	;
   4C27 49            [ 2] 3307 	rola	;
   4C28 1F 01         [ 6] 3308 	tfr	d,x	;, tmp267
   4C2A AE 89 01 24   [ 9] 3309 	ldx	_mo,x	;, mo
   4C2E AF E3         [ 8] 3310 	stx	,--s	;,
   4C30 8E 43 66      [ 3] 3311 	ldx	#LC55	;,
   4C33 BD 5C 59      [ 8] 3312 	jsr	__fs
                           3313 ;----- asm -----
                           3314 ; 1286 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3315 	; #ENR#[886]printmessage(stringbuffer40);
                           3316 ;--- end asm ---
   4C36 8E C8 BF      [ 3] 3317 	ldx	#_stringBuffer40	;,
   4C39 BD 5B 7A      [ 8] 3318 	jsr	_printMessage
                           3319 ;----- asm -----
                           3320 ; 1288 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3321 	; #ENR#[887]return 1;
                           3322 ;--- end asm ---
   4C3C 16 FC ED      [ 5] 3323 	lbra	L227	;
   4C3F                    3324 L143:
                           3325 ;----- asm -----
                           3326 ; 1293 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3327 	; #ENR#[891]printmessage();
                           3328 ;--- end asm ---
   4C3F 8E 43 7D      [ 3] 3329 	ldx	#LC56	;,
   4C42 BD 5B 7A      [ 8] 3330 	jsr	_printMessage
                           3331 ;----- asm -----
                           3332 ; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3333 	; #ENR#[892]return 3;
                           3334 ;--- end asm ---
   4C45 16 07 53      [ 5] 3335 	lbra	L170	;
   4C48                    3336 L133:
   4C48 E6 6D         [ 5] 3337 	ldb	13,s	;, spellLevel
   4C4A C1 03         [ 2] 3338 	cmpb	#3	;cmpqi:	;,
   4C4C 10 26 02 1E   [ 6] 3339 	lbne	L144	;
                           3340 ;----- asm -----
                           3341 ; 1301 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3342 	; #ENR#[897]if (spellselect == 0)
                           3343 ;--- end asm ---
   4C50 6D 6E         [ 7] 3344 	tst	14,s	; spellSelect
   4C52 10 26 01 00   [ 6] 3345 	lbne	L145	;
                           3346 ;----- asm -----
                           3347 ; 1306 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3348 	; #ENR#[901]if (incombat)
                           3349 ;--- end asm ---
   4C56 6D 65         [ 7] 3350 	tst	5,s	; inCombat
   4C58 27 09         [ 3] 3351 	beq	L146	;
                           3352 ;----- asm -----
                           3353 ; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3354 	; #ENR#[903]printmessage();
                           3355 ;--- end asm ---
   4C5A 8E 43 98      [ 3] 3356 	ldx	#LC57	;,
   4C5D BD 5B 7A      [ 8] 3357 	jsr	_printMessage
                           3358 ;----- asm -----
                           3359 ; 1311 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3360 	; #ENR#[904]return 1;
                           3361 ;--- end asm ---
   4C60 16 07 05      [ 5] 3362 	lbra	L222	;
   4C63                    3363 L146:
                           3364 ;----- asm -----
                           3365 ; 1314 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3366 	; #ENR#[906]printmessage();
                           3367 ;--- end asm ---
   4C63 8E 43 A7      [ 3] 3368 	ldx	#LC58	;,
   4C66 BD 5B 7A      [ 8] 3369 	jsr	_printMessage
                           3370 ;----- asm -----
                           3371 ; 1322 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3372 	; #ENR#[913]tmp2 = 0;
                           3373 ;--- end asm ---
   4C69 7F C8 FF      [ 7] 3374 	clr	_tmp2	; tmp2
                           3375 ;----- asm -----
                           3376 ; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3377 	; #ENR#[914]localtimer = action_time;
                           3378 ;--- end asm ---
   4C6C C6 FA         [ 2] 3379 	ldb	#-6	;,
   4C6E F7 C8 A8      [ 5] 3380 	stb	_localTimer	;, localTimer
                           3381 ;----- asm -----
                           3382 ; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3383 	; #ENR#[916]while(1)
                           3384 ;--- end asm ---
   4C71                    3385 L160:
                           3386 ;----- asm -----
                           3387 ; 1330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3388 	; #ENR#[918]displayround();
                           3389 ;--- end asm ---
   4C71 BD 3D AC      [ 8] 3390 	jsr	_displayRound
                           3391 ;----- asm -----
                           3392 ; 1332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3393 	; #ENR#[919]if (localtimer == 0) tmp2 = -1;
                           3394 ;--- end asm ---
   4C74 7D C8 A8      [ 7] 3395 	tst	_localTimer	; localTimer
   4C77 26 05         [ 3] 3396 	bne	L147	;
   4C79 C6 FF         [ 2] 3397 	ldb	#-1	;,
   4C7B F7 C8 FF      [ 5] 3398 	stb	_tmp2	;, tmp2
   4C7E                    3399 L147:
                           3400 ;----- asm -----
                           3401 ; 1334 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3402 	; #ENR#[920]if (vec_joy_1_x>0)
                           3403 ;--- end asm ---
   4C7E 7D C8 1B      [ 7] 3404 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4C81 2F 24         [ 3] 3405 	ble	L148	;
                           3406 ;----- asm -----
                           3407 ; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3408 	; #ENR#[922]if (cx==200)
                           3409 ;--- end asm ---
   4C83 F6 C9 3F      [ 5] 3410 	ldb	_cx	; cx.70, cx
   4C86 C1 C8         [ 2] 3411 	cmpb	#-56	;cmpqi:	; cx.70,
   4C88 26 09         [ 3] 3412 	bne	L149	;
                           3413 ;----- asm -----
                           3414 ; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3415 	; #ENR#[924]onlystone:
                           3416 ;--- end asm ---
   4C8A                    3417 L150:
                           3418 ;----- asm -----
                           3419 ; 1342 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3420 	; #ENR#[925]printmessage();
                           3421 ;--- end asm ---
   4C8A 8E 43 B2      [ 3] 3422 	ldx	#LC59	;,
   4C8D BD 5B 7A      [ 8] 3423 	jsr	_printMessage
                           3424 ;----- asm -----
                           3425 ; 1344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3426 	; #ENR#[926]return 1;
                           3427 ;--- end asm ---
   4C90 16 06 D5      [ 5] 3428 	lbra	L222	;
   4C93                    3429 L149:
                           3430 ;----- asm -----
                           3431 ; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3432 	; #ENR#[929]cx +=1;fillmap=go_east;printmessage();
                           3433 ;--- end asm ---
   4C93 5C            [ 2] 3434 	incb	; cx.70
   4C94 F7 C9 3F      [ 5] 3435 	stb	_cx	; cx.70, cx
   4C97 C6 03         [ 2] 3436 	ldb	#3	;,
   4C99 F7 C8 FC      [ 5] 3437 	stb	_fillMap	;, fillMap
   4C9C 8E 43 C5      [ 3] 3438 	ldx	#LC60	;,
   4C9F BD 5B 7A      [ 8] 3439 	jsr	_printMessage
                           3440 ;----- asm -----
                           3441 ; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3442 	; #ENR#[930]tmp2 = 1;
                           3443 ;--- end asm ---
   4CA2 C6 01         [ 2] 3444 	ldb	#1	;,
   4CA4 F7 C8 FF      [ 5] 3445 	stb	_tmp2	;, tmp2
   4CA7                    3446 L148:
                           3447 ;----- asm -----
                           3448 ; 1354 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3449 	; #ENR#[933]if (vec_joy_1_x<0)
                           3450 ;--- end asm ---
   4CA7 7D C8 1B      [ 7] 3451 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4CAA 2C 1B         [ 3] 3452 	bge	L151	;
                           3453 ;----- asm -----
                           3454 ; 1357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3455 	; #ENR#[935]if (cx==2) goto onlystone;
                           3456 ;--- end asm ---
   4CAC F6 C9 3F      [ 5] 3457 	ldb	_cx	; cx.463, cx
   4CAF C1 02         [ 2] 3458 	cmpb	#2	;cmpqi:	; cx.463,
   4CB1 27 D7         [ 3] 3459 	beq	L150	;
                           3460 ;----- asm -----
                           3461 ; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3462 	; #ENR#[936]cx -=1;fillmap=go_west;printmessage();
                           3463 ;--- end asm ---
   4CB3 5A            [ 2] 3464 	decb	; cx.463
   4CB4 F7 C9 3F      [ 5] 3465 	stb	_cx	; cx.463, cx
   4CB7 C6 04         [ 2] 3466 	ldb	#4	;,
   4CB9 F7 C8 FC      [ 5] 3467 	stb	_fillMap	;, fillMap
   4CBC 8E 43 CA      [ 3] 3468 	ldx	#LC61	;,
   4CBF BD 5B 7A      [ 8] 3469 	jsr	_printMessage
                           3470 ;----- asm -----
                           3471 ; 1361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3472 	; #ENR#[937]tmp2 = 2;
                           3473 ;--- end asm ---
   4CC2 C6 02         [ 2] 3474 	ldb	#2	;,
   4CC4 F7 C8 FF      [ 5] 3475 	stb	_tmp2	;, tmp2
   4CC7                    3476 L151:
                           3477 ;----- asm -----
                           3478 ; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3479 	; #ENR#[939]if (vec_joy_1_y>0)
                           3480 ;--- end asm ---
   4CC7 7D C8 1C      [ 7] 3481 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   4CCA 2F 1D         [ 3] 3482 	ble	L152	;
                           3483 ;----- asm -----
                           3484 ; 1367 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3485 	; #ENR#[941]if (cy==2) goto onlystone;
                           3486 ;--- end asm ---
   4CCC F6 C9 40      [ 5] 3487 	ldb	_cy	; cy.73, cy
   4CCF C1 02         [ 2] 3488 	cmpb	#2	;cmpqi:	; cy.73,
   4CD1 10 27 FF B5   [ 6] 3489 	lbeq	L150	;
                           3490 ;----- asm -----
                           3491 ; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3492 	; #ENR#[942]cy -=1;fillmap=go_north;printmessage();
                           3493 ;--- end asm ---
   4CD5 5A            [ 2] 3494 	decb	; cy.73
   4CD6 F7 C9 40      [ 5] 3495 	stb	_cy	; cy.73, cy
   4CD9 C6 01         [ 2] 3496 	ldb	#1	;,
   4CDB F7 C8 FC      [ 5] 3497 	stb	_fillMap	;, fillMap
   4CDE 8E 43 CF      [ 3] 3498 	ldx	#LC62	;,
   4CE1 BD 5B 7A      [ 8] 3499 	jsr	_printMessage
                           3500 ;----- asm -----
                           3501 ; 1371 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3502 	; #ENR#[943]tmp2 = 3;
                           3503 ;--- end asm ---
   4CE4 C6 03         [ 2] 3504 	ldb	#3	;,
   4CE6 F7 C8 FF      [ 5] 3505 	stb	_tmp2	;, tmp2
   4CE9                    3506 L152:
                           3507 ;----- asm -----
                           3508 ; 1374 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3509 	; #ENR#[945]if (vec_joy_1_y<0)
                           3510 ;--- end asm ---
   4CE9 7D C8 1C      [ 7] 3511 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   4CEC 2C 1B         [ 3] 3512 	bge	L153	;
                           3513 ;----- asm -----
                           3514 ; 1377 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3515 	; #ENR#[947]if (cy==200)
                           3516 ;--- end asm ---
   4CEE F6 C9 40      [ 5] 3517 	ldb	_cy	;, cy
   4CF1 C1 C8         [ 2] 3518 	cmpb	#-56	;cmpqi:	;,
   4CF3 26 04         [ 3] 3519 	bne	L154	;
   4CF5 5C            [ 2] 3520 	incb	;
   4CF6 F7 C9 40      [ 5] 3521 	stb	_cy	;, cy
   4CF9                    3522 L154:
   4CF9 C6 02         [ 2] 3523 	ldb	#2	;,
   4CFB F7 C8 FC      [ 5] 3524 	stb	_fillMap	;, fillMap
   4CFE 8E 43 D5      [ 3] 3525 	ldx	#LC63	;,
   4D01 BD 5B 7A      [ 8] 3526 	jsr	_printMessage
                           3527 ;----- asm -----
                           3528 ; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3529 	; #ENR#[949]tmp2 = 4;
                           3530 ;--- end asm ---
   4D04 C6 04         [ 2] 3531 	ldb	#4	;,
   4D06 F7 C8 FF      [ 5] 3532 	stb	_tmp2	;, tmp2
   4D09                    3533 L153:
                           3534 ;----- asm -----
                           3535 ; 1384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3536 	; #ENR#[952]if (button_1_4_pressed()) tmp2 = -1;
                           3537 ;--- end asm ---
   4D09 F6 C8 11      [ 5] 3538 	ldb	_Vec_Buttons	;, Vec_Buttons
   4D0C C5 08         [ 2] 3539 	bitb	#8	;,
   4D0E 27 05         [ 3] 3540 	beq	L155	;
   4D10 C6 FF         [ 2] 3541 	ldb	#-1	;,
   4D12 F7 C8 FF      [ 5] 3542 	stb	_tmp2	;, tmp2
   4D15                    3543 L155:
                           3544 ;----- asm -----
                           3545 ; 1386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3546 	; #ENR#[953]if (button_1_3_pressed()) tmp2 = -1;
                           3547 ;--- end asm ---
   4D15 F6 C8 11      [ 5] 3548 	ldb	_Vec_Buttons	;, Vec_Buttons
   4D18 C5 04         [ 2] 3549 	bitb	#4	;,
   4D1A 27 05         [ 3] 3550 	beq	L156	;
   4D1C C6 FF         [ 2] 3551 	ldb	#-1	;,
   4D1E F7 C8 FF      [ 5] 3552 	stb	_tmp2	;, tmp2
   4D21                    3553 L156:
                           3554 ;----- asm -----
                           3555 ; 1388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3556 	; #ENR#[954]if (button_1_2_pressed()) tmp2 = -1;
                           3557 ;--- end asm ---
   4D21 F6 C8 11      [ 5] 3558 	ldb	_Vec_Buttons	;, Vec_Buttons
   4D24 C5 02         [ 2] 3559 	bitb	#2	;,
   4D26 27 05         [ 3] 3560 	beq	L157	;
   4D28 C6 FF         [ 2] 3561 	ldb	#-1	;,
   4D2A F7 C8 FF      [ 5] 3562 	stb	_tmp2	;, tmp2
   4D2D                    3563 L157:
                           3564 ;----- asm -----
                           3565 ; 1390 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3566 	; #ENR#[955]if (button_1_1_pressed()) tmp2 = -1;
                           3567 ;--- end asm ---
   4D2D F6 C8 11      [ 5] 3568 	ldb	_Vec_Buttons	;, Vec_Buttons
   4D30 C5 01         [ 2] 3569 	bitb	#1	;,
   4D32 27 05         [ 3] 3570 	beq	L158	;
   4D34 C6 FF         [ 2] 3571 	ldb	#-1	;,
   4D36 F7 C8 FF      [ 5] 3572 	stb	_tmp2	;, tmp2
   4D39                    3573 L158:
                           3574 ;----- asm -----
                           3575 ; 1393 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3576 	; #ENR#[957]if (tmp2 != 0) break;
                           3577 ;--- end asm ---
   4D39 F6 C8 FF      [ 5] 3578 	ldb	_tmp2	; tmp2.76, tmp2
   4D3C 26 06         [ 3] 3579 	bne	L159	;
                           3580 ;----- asm -----
                           3581 ; 1395 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3582 	; #ENR#[958]localtimer--;
                           3583 ;--- end asm ---
   4D3E 7A C8 A8      [ 7] 3584 	dec	_localTimer	; localTimer
   4D41 16 FF 2D      [ 5] 3585 	lbra	L160	;
   4D44                    3586 L159:
                           3587 ;----- asm -----
                           3588 ; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3589 	; #ENR#[960]if (tmp2 == -1)
                           3590 ;--- end asm ---
   4D44 C1 FF         [ 2] 3591 	cmpb	#-1	;cmpqi:	; tmp2.76,
   4D46 26 05         [ 3] 3592 	bne	L161	;
                           3593 ;----- asm -----
                           3594 ; 1401 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3595 	; #ENR#[962]printmessage();
                           3596 ;--- end asm ---
   4D48 8E 43 DB      [ 3] 3597 	ldx	#LC64	;,
   4D4B 20 03         [ 3] 3598 	bra	L220	;
   4D4D                    3599 L161:
                           3600 ;----- asm -----
                           3601 ; 1406 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3602 	; #ENR#[966]printmessage();
                           3603 ;--- end asm ---
   4D4D 8E 43 DF      [ 3] 3604 	ldx	#LC65	;,
   4D50                    3605 L220:
   4D50 BD 5B 7A      [ 8] 3606 	jsr	_printMessage
                           3607 ;----- asm -----
                           3608 ; 1409 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3609 	; #ENR#[968]return 2;
                           3610 ;--- end asm ---
   4D53 16 06 02      [ 5] 3611 	lbra	L225	;
   4D56                    3612 L145:
   4D56 E6 6E         [ 5] 3613 	ldb	14,s	;, spellSelect
   4D58 C1 01         [ 2] 3614 	cmpb	#1	;cmpqi:	;,
   4D5A 10 26 00 3A   [ 6] 3615 	lbne	L163	;
                           3616 ;----- asm -----
                           3617 ; 1416 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3618 	; #ENR#[974]printmessage();
                           3619 ;--- end asm ---
   4D5E 8E 43 E4      [ 3] 3620 	ldx	#LC66	;,
   4D61 BD 5B 7A      [ 8] 3621 	jsr	_printMessage
                           3622 ;----- asm -----
                           3623 ; 1420 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3624 	; #ENR#[977]pause(small_pause);
                           3625 ;--- end asm ---
   4D64 C6 4B         [ 2] 3626 	ldb	#75	;,
   4D66 BD 3E 21      [ 8] 3627 	jsr	_pause
                           3628 ;----- asm -----
                           3629 ; 1422 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3630 	; #ENR#[978]_fs(, mo[m]);
                           3631 ;--- end asm ---
   4D69 F6 C9 77      [ 5] 3632 	ldb	_m	;, m
   4D6C 1D            [ 2] 3633 	sex		;extendqihi2: R:b -> R:d	;,
   4D6D ED E4         [ 5] 3634 	std	,s	;,
   4D6F 58            [ 2] 3635 	aslb	;
   4D70 49            [ 2] 3636 	rola	;
   4D71 1F 01         [ 6] 3637 	tfr	d,x	;, tmp280
   4D73 AE 89 01 24   [ 9] 3638 	ldx	_mo,x	;, mo
   4D77 AF E3         [ 8] 3639 	stx	,--s	;,
   4D79 8E 43 F2      [ 3] 3640 	ldx	#LC67	;,
   4D7C BD 5C 59      [ 8] 3641 	jsr	__fs
                           3642 ;----- asm -----
                           3643 ; 1424 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3644 	; #ENR#[979]printmessage(stringbuffer40);
                           3645 ;--- end asm ---
   4D7F 8E C8 BF      [ 3] 3646 	ldx	#_stringBuffer40	;,
   4D82 BD 5B 7A      [ 8] 3647 	jsr	_printMessage
                           3648 ;----- asm -----
                           3649 ; 1426 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3650 	; #ENR#[980]tmp = (signed int) randmax(12*lv)+15;
                           3651 ;--- end asm ---
   4D85 F6 C9 38      [ 5] 3652 	ldb	_lv	;, lv
   4D88 86 0C         [ 2] 3653 	lda	#12	;umulqihi3	;
   4D8A 3D            [11] 3654 	mul
                           3655 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   4D8B 1F 01         [ 6] 3656 	tfr	d,x	;, tmp283
                           3657 ; ORG>	tfr	d,x	;, tmp283
                           3658 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp283,
   4D8D BD 5F 2A      [ 8] 3659 	jsr	_RandMax
   4D90 CB 0F         [ 2] 3660 	addb	#15	; D.3614,
   4D92 F7 C8 FE      [ 5] 3661 	stb	_tmp	; D.3614, tmp
                           3662 ;----- asm -----
                           3663 ; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3664 	; #ENR#[981]goto damagespell;
                           3665 ;--- end asm ---
   4D95 16 04 20      [ 5] 3666 	lbra	L221	;
   4D98                    3667 L163:
   4D98 E6 6E         [ 5] 3668 	ldb	14,s	;, spellSelect
   4D9A C1 02         [ 2] 3669 	cmpb	#2	;cmpqi:	;,
   4D9C 26 0D         [ 3] 3670 	bne	L164	;
                           3671 ;----- asm -----
                           3672 ; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3673 	; #ENR#[988]tmp = (signed int) randmax(32)+10;
                           3674 ;--- end asm ---
   4D9E C6 20         [ 2] 3675 	ldb	#32	;,
   4DA0 BD 5F 2A      [ 8] 3676 	jsr	_RandMax
   4DA3 CB 0A         [ 2] 3677 	addb	#10	; D.3617,
   4DA5 F7 C8 FE      [ 5] 3678 	stb	_tmp	; D.3617, tmp
                           3679 ;----- asm -----
                           3680 ; 1438 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3681 	; #ENR#[989]goto damagespell;
                           3682 ;--- end asm ---
   4DA8 16 05 C2      [ 5] 3683 	lbra	L107	;
   4DAB                    3684 L164:
   4DAB E6 6E         [ 5] 3685 	ldb	14,s	;, spellSelect
   4DAD C1 03         [ 2] 3686 	cmpb	#3	;cmpqi:	;,
   4DAF 10 26 00 37   [ 6] 3687 	lbne	L165	;
                           3688 ;----- asm -----
                           3689 ; 1445 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3690 	; #ENR#[995]if (!incombat) goto nocombatspell;
                           3691 ;--- end asm ---
   4DB3 6D 65         [ 7] 3692 	tst	5,s	; inCombat
   4DB5 10 27 05 A4   [ 6] 3693 	lbeq	L109	;
                           3694 ;----- asm -----
                           3695 ; 1449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3696 	; #ENR#[998]if (randmax(10)>6)
                           3697 ;--- end asm ---
   4DB9 C6 0A         [ 2] 3698 	ldb	#10	;,
   4DBB BD 5F 2A      [ 8] 3699 	jsr	_RandMax
   4DBE C1 06         [ 2] 3700 	cmpb	#6	;cmpqi:	; D.3620,
   4DC0 23 1F         [ 3] 3701 	bls	L166	;
                           3702 ;----- asm -----
                           3703 ; 1452 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3704 	; #ENR#[1000]_fs(, mo[m]);
                           3705 ;--- end asm ---
   4DC2 F6 C9 77      [ 5] 3706 	ldb	_m	;, m
   4DC5 1D            [ 2] 3707 	sex		;extendqihi2: R:b -> R:d	;,
   4DC6 ED E4         [ 5] 3708 	std	,s	;,
   4DC8 58            [ 2] 3709 	aslb	;
   4DC9 49            [ 2] 3710 	rola	;
   4DCA 1F 01         [ 6] 3711 	tfr	d,x	;, tmp286
   4DCC AE 89 01 24   [ 9] 3712 	ldx	_mo,x	;, mo
   4DD0 AF E3         [ 8] 3713 	stx	,--s	;,
   4DD2 8E 44 04      [ 3] 3714 	ldx	#LC68	;,
   4DD5 BD 5C 59      [ 8] 3715 	jsr	__fs
                           3716 ;----- asm -----
                           3717 ; 1454 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3718 	; #ENR#[1001]printmessage(stringbuffer40);
                           3719 ;--- end asm ---
   4DD8 8E C8 BF      [ 3] 3720 	ldx	#_stringBuffer40	;,
   4DDB BD 5B 7A      [ 8] 3721 	jsr	_printMessage
                           3722 ;----- asm -----
                           3723 ; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3724 	; #ENR#[1002]return 1;
                           3725 ;--- end asm ---
   4DDE 16 FB 4B      [ 5] 3726 	lbra	L227	;
   4DE1                    3727 L166:
                           3728 ;----- asm -----
                           3729 ; 1459 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3730 	; #ENR#[1004]printmessage();
                           3731 ;--- end asm ---
   4DE1 8E 44 1C      [ 3] 3732 	ldx	#LC69	;,
   4DE4 BD 5B 7A      [ 8] 3733 	jsr	_printMessage
                           3734 ;----- asm -----
                           3735 ; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3736 	; #ENR#[1005]return 3;
                           3737 ;--- end asm ---
   4DE7 16 04 8D      [ 5] 3738 	lbra	L226	;
   4DEA                    3739 L165:
   4DEA E6 6E         [ 5] 3740 	ldb	14,s	;, spellSelect
   4DEC C1 04         [ 2] 3741 	cmpb	#4	;cmpqi:	;,
   4DEE 26 0D         [ 3] 3742 	bne	L167	;
                           3743 ;----- asm -----
                           3744 ; 1468 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3745 	; #ENR#[1011]sf[fear] = randmax(30)+5;
                           3746 ;--- end asm ---
   4DF0 C6 1E         [ 2] 3747 	ldb	#30	;,
   4DF2 BD 5F 2A      [ 8] 3748 	jsr	_RandMax
   4DF5 CB 05         [ 2] 3749 	addb	#5	; D.3621,
   4DF7 F7 C9 72      [ 5] 3750 	stb	_sf+6	; D.3621, sf
                           3751 ;----- asm -----
                           3752 ; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3753 	; #ENR#[1012]return 1;
                           3754 ;--- end asm ---
   4DFA 16 05 6B      [ 5] 3755 	lbra	L222	;
   4DFD                    3756 L167:
   4DFD E6 6E         [ 5] 3757 	ldb	14,s	;, spellSelect
   4DFF C1 05         [ 2] 3758 	cmpb	#5	;cmpqi:	;,
   4E01 10 26 05 53   [ 6] 3759 	lbne	L120	;
                           3760 ;----- asm -----
                           3761 ; 1477 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3762 	; #ENR#[1018]printmessage();
                           3763 ;--- end asm ---
   4E05 8E 44 31      [ 3] 3764 	ldx	#LC70	;,
   4E08 BD 5B 7A      [ 8] 3765 	jsr	_printMessage
                           3766 ;----- asm -----
                           3767 ; 1479 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3768 	; #ENR#[1019]if (!incombat) goto nocombatspell;
                           3769 ;--- end asm ---
   4E0B 6D 65         [ 7] 3770 	tst	5,s	; inCombat
   4E0D 10 27 05 4C   [ 6] 3771 	lbeq	L109	;
                           3772 ;----- asm -----
                           3773 ; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3774 	; #ENR#[1023]if (un != 0)
                           3775 ;--- end asm ---
   4E11 7D C9 7E      [ 7] 3776 	tst	_un	; un
   4E14 27 09         [ 3] 3777 	beq	L168	;
                           3778 ;----- asm -----
                           3779 ; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3780 	; #ENR#[1025]undeadaredead:
                           3781 ;--- end asm ---
   4E16                    3782 L169:
                           3783 ;----- asm -----
                           3784 ; 1489 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3785 	; #ENR#[1026]printmessage();
                           3786 ;--- end asm ---
   4E16 8E 44 3C      [ 3] 3787 	ldx	#LC71	;,
   4E19 BD 5B 7A      [ 8] 3788 	jsr	_printMessage
                           3789 ;----- asm -----
                           3790 ; 1491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3791 	; #ENR#[1027]return 1;
                           3792 ;--- end asm ---
   4E1C 16 05 49      [ 5] 3793 	lbra	L222	;
   4E1F                    3794 L168:
                           3795 ;----- asm -----
                           3796 ; 1496 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3797 	; #ENR#[1031]ltmp = 30 + ml*4;
                           3798 ;--- end asm ---
   4E1F F6 C9 7F      [ 5] 3799 	ldb	_ml	; tmp290, ml
   4E22 58            [ 2] 3800 	aslb	; tmp290
   4E23 58            [ 2] 3801 	aslb	; tmp290
   4E24 CB 1E         [ 2] 3802 	addb	#30	; tmp290,
   4E26 4F            [ 2] 3803 	clra		;zero_extendqihi: R:b -> R:d	; tmp290,
   4E27 ED 69         [ 6] 3804 	std	9,s	;, ltmp.80
                           3805 ;----- asm -----
                           3806 ; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3807 	; #ENR#[1032]ltmp = ltmp - lv*3;
                           3808 ;--- end asm ---
   4E29 F6 C9 38      [ 5] 3809 	ldb	_lv	; tmp294, lv
   4E2C 58            [ 2] 3810 	aslb	; tmp294
   4E2D FB C9 38      [ 5] 3811 	addb	_lv	; tmp294, lv
   4E30 4F            [ 2] 3812 	clra		;zero_extendqihi: R:b -> R:d	; tmp294,
   4E31 1F 01         [ 6] 3813 	tfr	d,x	;, tmp296
   4E33 EC 69         [ 6] 3814 	ldd	9,s	;, ltmp.80
   4E35 34 10         [ 6] 3815 	pshs	x	;subhi: R:d -= R:x	; tmp296,
   4E37 A3 E1         [ 9] 3816 	subd	,s++	;
   4E39 FD C9 02      [ 6] 3817 	std	_ltmp	; tmp297, ltmp
                           3818 ;----- asm -----
                           3819 ; 1501 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3820 	; #ENR#[1034]pause(small_pause);
                           3821 ;--- end asm ---
   4E3C C6 4B         [ 2] 3822 	ldb	#75	;,
   4E3E BD 3E 21      [ 8] 3823 	jsr	_pause
                           3824 ;----- asm -----
                           3825 ; 1503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3826 	; #ENR#[1035]if (randmax(100) > (unsigned long int)ltmp)
                           3827 ;--- end asm ---
   4E41 C6 64         [ 2] 3828 	ldb	#100	;,
   4E43 BD 5F 2A      [ 8] 3829 	jsr	_RandMax
   4E46 4F            [ 2] 3830 	clra		;zero_extendqihi: R:b -> R:d	; D.3630, D.3630
   4E47 10 B3 C9 02   [ 8] 3831 	cmpd	_ltmp	;cmphi:	; D.3630, ltmp
   4E4B 10 22 05 4C   [ 6] 3832 	lbhi	L170	;
                           3833 ;----- asm -----
                           3834 ; 1508 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3835 	; #ENR#[1039]_fs(, mo[m]);
                           3836 ;--- end asm ---
   4E4F F6 C9 77      [ 5] 3837 	ldb	_m	;, m
   4E52 1D            [ 2] 3838 	sex		;extendqihi2: R:b -> R:d	;,
   4E53 ED E4         [ 5] 3839 	std	,s	;,
   4E55 58            [ 2] 3840 	aslb	;
   4E56 49            [ 2] 3841 	rola	;
   4E57 1F 01         [ 6] 3842 	tfr	d,x	;, tmp301
   4E59 AE 89 01 24   [ 9] 3843 	ldx	_mo,x	;, mo
   4E5D AF E3         [ 8] 3844 	stx	,--s	;,
   4E5F 8E 44 56      [ 3] 3845 	ldx	#LC72	;,
   4E62 BD 5C 59      [ 8] 3846 	jsr	__fs
                           3847 ;----- asm -----
                           3848 ; 1510 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3849 	; #ENR#[1040]printmessage(stringbuffer40);
                           3850 ;--- end asm ---
   4E65 8E C8 BF      [ 3] 3851 	ldx	#_stringBuffer40	;,
   4E68 BD 5B 7A      [ 8] 3852 	jsr	_printMessage
                           3853 ;----- asm -----
                           3854 ; 1512 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3855 	; #ENR#[1041]return 1;
                           3856 ;--- end asm ---
   4E6B 16 FA BE      [ 5] 3857 	lbra	L227	;
   4E6E                    3858 L144:
   4E6E E6 6D         [ 5] 3859 	ldb	13,s	;, spellLevel
   4E70 C1 04         [ 2] 3860 	cmpb	#4	;cmpqi:	;,
   4E72 10 26 03 AB   [ 6] 3861 	lbne	L171	;
                           3862 ;----- asm -----
                           3863 ; 1518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3864 	; #ENR#[1046]if (spellselect == 0)
                           3865 ;--- end asm ---
   4E76 6D 6E         [ 7] 3866 	tst	14,s	; spellSelect
   4E78 10 26 02 54   [ 6] 3867 	lbne	L172	;
                           3868 ;----- asm -----
                           3869 ; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3870 	; #ENR#[1048]signed long int ns;
                           3871 ; 1523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3872 	; #ENR#[1049]signed long int ew;
                           3873 ; 1525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3874 	; #ENR#[1050]signed long int upd;
                           3875 ; 1527 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3876 	; #ENR#[1051]signed int sel;
                           3877 ; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3878 	; #ENR#[1054]if (incombat)
                           3879 ;--- end asm ---
   4E7C 6D 65         [ 7] 3880 	tst	5,s	; inCombat
   4E7E 27 09         [ 3] 3881 	beq	L173	;
                           3882 ;----- asm -----
                           3883 ; 1534 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3884 	; #ENR#[1056]printmessage();
                           3885 ;--- end asm ---
   4E80 8E 43 98      [ 3] 3886 	ldx	#LC57	;,
   4E83 BD 5B 7A      [ 8] 3887 	jsr	_printMessage
                           3888 ;----- asm -----
                           3889 ; 1536 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3890 	; #ENR#[1057]return 1;
                           3891 ;--- end asm ---
   4E86 16 04 DF      [ 5] 3892 	lbra	L222	;
   4E89                    3893 L173:
                           3894 ;----- asm -----
                           3895 ; 1540 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3896 	; #ENR#[1060]clearmessage();
                           3897 ;--- end asm ---
   4E89 7F C9 87      [ 7] 3898 	clr	_msgLine	; msgLine
                           3899 ;----- asm -----
                           3900 ; 1542 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3901 	; #ENR#[1061]printmessage();
                           3902 ;--- end asm ---
   4E8C 8E 44 64      [ 3] 3903 	ldx	#LC73	;,
   4E8F BD 5B 7A      [ 8] 3904 	jsr	_printMessage
                           3905 ;----- asm -----
                           3906 ; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3907 	; #ENR#[1064]teleportagain:
                           3908 ;--- end asm ---
   4E92                    3909 L174:
                           3910 ;----- asm -----
                           3911 ; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3912 	; #ENR#[1065]ns = ew = upd = sel = 0;
                           3913 ; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3914 	; #ENR#[1066]do
                           3915 ;--- end asm ---
   4E92 10 8E 00 00   [ 4] 3916 	ldy	#0	; ns,
   4E96 10 AF E8 11   [ 7] 3917 	sty	17,s	; ns, ew
   4E9A 10 AF E8 13   [ 7] 3918 	sty	19,s	; ns, upd
   4E9E 6F E8 15      [ 7] 3919 	clr	21,s	; sel
   4EA1                    3920 L187:
                           3921 ;----- asm -----
                           3922 ; 1553 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3923 	; #ENR#[1068]do_sound();
                           3924 ;--- end asm ---
   4EA1 BD 72 E2      [ 8] 3925 	jsr	__Do_Sound
                           3926 ;----- asm -----
                           3927 ; 1555 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3928 	; #ENR#[1069]joy_digital();
                           3929 ;--- end asm ---
   4EA4 BD F1 F8      [ 8] 3930 	jsr	___Joy_Digital
                           3931 ;----- asm -----
                           3932 ; 1557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3933 	; #ENR#[1070]check_buttons();
                           3934 ;--- end asm ---
   4EA7 BD F1 BA      [ 8] 3935 	jsr	___Read_Btns
                           3936 ;----- asm -----
                           3937 ; 1559 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3938 	; #ENR#[1071]wait_recal();
                           3939 ;--- end asm ---
   4EAA BD F1 92      [ 8] 3940 	jsr	___Wait_Recal
                           3941 ;----- asm -----
                           3942 ; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3943 	; #ENR#[1072]intensity_5f();
                           3944 ;--- end asm ---
   4EAD BD F2 A5      [ 8] 3945 	jsr	___Intensity_5F
                           3946 ;----- asm -----
                           3947 ; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3948 	; #ENR#[1073]dp_via_t1_cnt_lo  = 0x7f;
                           3949 ;--- end asm ---
   4EB0 C6 7F         [ 2] 3950 	ldb	#127	;,
   4EB2 D7 04         [ 4] 3951 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3952 ;----- asm -----
                           3953 ; 1566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3954 	; #ENR#[1075]print_str_d(0x78,-0x20, );
                           3955 ;--- end asm ---
   4EB4 C6 78         [ 2] 3956 	ldb	#120	;,
   4EB6 E7 E2         [ 6] 3957 	stb	,-s	;,
   4EB8 8E 44 72      [ 3] 3958 	ldx	#LC74	;,
   4EBB C6 E0         [ 2] 3959 	ldb	#-32	;,
   4EBD BD 59 7E      [ 8] 3960 	jsr	_syncPrintStrd
                           3961 ;----- asm -----
                           3962 ; 1568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3963 	; #ENR#[1076]print_str_d(-0x40,-0x40, );
                           3964 ;--- end asm ---
   4EC0 C6 C0         [ 2] 3965 	ldb	#-64	;,
   4EC2 E7 E2         [ 6] 3966 	stb	,-s	;,
   4EC4 8E 44 7D      [ 3] 3967 	ldx	#LC75	;,
   4EC7 BD 59 7E      [ 8] 3968 	jsr	_syncPrintStrd
                           3969 ;----- asm -----
                           3970 ; 1571 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3971 	; #ENR#[1078]_fi_s_s(, (signed int) ns);
                           3972 ;--- end asm ---
   4ECA 1F 20         [ 6] 3973 	tfr	y,d	;movlsbqihi: R:y -> R:b	; ns,
   4ECC 8E 44 8F      [ 3] 3974 	ldx	#LC76	;,
   4ECF BD 68 FE      [ 8] 3975 	jsr	__fi_s_s
                           3976 ;----- asm -----
                           3977 ; 1573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3978 	; #ENR#[1079]print_str_d(0x50,-0x50, stringbuffer40);
                           3979 ;--- end asm ---
   4ED2 C6 50         [ 2] 3980 	ldb	#80	;,
   4ED4 E7 E2         [ 6] 3981 	stb	,-s	;,
   4ED6 8E C8 BF      [ 3] 3982 	ldx	#_stringBuffer40	;,
   4ED9 C6 B0         [ 2] 3983 	ldb	#-80	;,
   4EDB BD 59 7E      [ 8] 3984 	jsr	_syncPrintStrd
                           3985 ;----- asm -----
                           3986 ; 1575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3987 	; #ENR#[1080]_fi_s_s(, (signed int) ew);
                           3988 ;--- end asm ---
   4EDE E6 E8 15      [ 5] 3989 	ldb	21,s	;movlsbqihi: msb:20,s -> R:b	;, ew
   4EE1 8E 44 A2      [ 3] 3990 	ldx	#LC77	;,
   4EE4 BD 68 FE      [ 8] 3991 	jsr	__fi_s_s
                           3992 ;----- asm -----
                           3993 ; 1577 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3994 	; #ENR#[1081]print_str_d(0x30,-0x50, stringbuffer40);
                           3995 ;--- end asm ---
   4EE7 C6 30         [ 2] 3996 	ldb	#48	;,
   4EE9 E7 E2         [ 6] 3997 	stb	,-s	;,
   4EEB 8E C8 BF      [ 3] 3998 	ldx	#_stringBuffer40	;,
   4EEE C6 B0         [ 2] 3999 	ldb	#-80	;,
   4EF0 BD 59 7E      [ 8] 4000 	jsr	_syncPrintStrd
                           4001 ;----- asm -----
                           4002 ; 1579 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4003 	; #ENR#[1082]_fi_s_s(, (signed int) upd);
                           4004 ;--- end asm ---
   4EF3 E6 E8 18      [ 5] 4005 	ldb	24,s	;movlsbqihi: msb:23,s -> R:b	;, upd
   4EF6 8E 44 B5      [ 3] 4006 	ldx	#LC78	;,
   4EF9 BD 68 FE      [ 8] 4007 	jsr	__fi_s_s
                           4008 ;----- asm -----
                           4009 ; 1581 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4010 	; #ENR#[1083]print_str_d(0x10,-0x50, stringbuffer40);
                           4011 ;--- end asm ---
   4EFC C6 10         [ 2] 4012 	ldb	#16	;,
   4EFE E7 E2         [ 6] 4013 	stb	,-s	;,
   4F00 8E C8 BF      [ 3] 4014 	ldx	#_stringBuffer40	;,
   4F03 C6 B0         [ 2] 4015 	ldb	#-80	;,
   4F05 BD 59 7E      [ 8] 4016 	jsr	_syncPrintStrd
                           4017 ;----- asm -----
                           4018 ; 1583 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4019 	; #ENR#[1084]if (sel == 0)
                           4020 ;--- end asm ---
   4F08 32 65         [ 5] 4021 	leas	5,s	;,,
   4F0A 6D E8 15      [ 7] 4022 	tst	21,s	; sel
   4F0D 26 25         [ 3] 4023 	bne	L175	;
                           4024 ;----- asm -----
                           4025 ; 1586 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4026 	; #ENR#[1086]print_str_d(0x50,-0x65, );
                           4027 ;--- end asm ---
   4F0F C6 50         [ 2] 4028 	ldb	#80	;,
   4F11 E7 E2         [ 6] 4029 	stb	,-s	;,
   4F13 8E 39 62      [ 3] 4030 	ldx	#LC20	;,
   4F16 C6 9B         [ 2] 4031 	ldb	#-101	;,
   4F18 BD 59 7E      [ 8] 4032 	jsr	_syncPrintStrd
                           4033 ;----- asm -----
                           4034 ; 1588 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4035 	; #ENR#[1087]if ((vec_joy_1_x > 0) && (!lastdir)) ns+=1;
                           4036 ;--- end asm ---
   4F1B F6 C8 1B      [ 5] 4037 	ldb	_Vec_Joy_1_X	; Vec_Joy_1_X.478, Vec_Joy_1_X
   4F1E 32 61         [ 5] 4038 	leas	1,s	;,,
   4F20 5D            [ 2] 4039 	tstb	; Vec_Joy_1_X.478
   4F21 2F 07         [ 3] 4040 	ble	L176	;
   4F23 6D E8 10      [ 7] 4041 	tst	16,s	; lastDir
   4F26 26 02         [ 3] 4042 	bne	L176	;
   4F28 31 21         [ 5] 4043 	leay	1,y	; ns,, ns
   4F2A                    4044 L176:
                           4045 ;----- asm -----
                           4046 ; 1590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4047 	; #ENR#[1088]if ((vec_joy_1_x < 0) && (!lastdir)) ns-=1;
                           4048 ;--- end asm ---
   4F2A 5D            [ 2] 4049 	tstb	; Vec_Joy_1_X.478
   4F2B 2C 07         [ 3] 4050 	bge	L175	;
   4F2D 6D E8 10      [ 7] 4051 	tst	16,s	; lastDir
   4F30 26 02         [ 3] 4052 	bne	L175	;
   4F32 31 3F         [ 5] 4053 	leay	-1,y	; ns,, ns
   4F34                    4054 L175:
                           4055 ;----- asm -----
                           4056 ; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4057 	; #ENR#[1090]if (sel == 1)
                           4058 ;--- end asm ---
   4F34 E6 E8 15      [ 5] 4059 	ldb	21,s	;, sel
   4F37 C1 01         [ 2] 4060 	cmpb	#1	;cmpqi:	;,
   4F39 26 36         [ 3] 4061 	bne	L177	;
                           4062 ;----- asm -----
                           4063 ; 1596 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4064 	; #ENR#[1092]print_str_d(0x30,-0x65, );
                           4065 ;--- end asm ---
   4F3B C6 30         [ 2] 4066 	ldb	#48	;,
   4F3D E7 E2         [ 6] 4067 	stb	,-s	;,
   4F3F 8E 39 62      [ 3] 4068 	ldx	#LC20	;,
   4F42 C6 9B         [ 2] 4069 	ldb	#-101	;,
   4F44 BD 59 7E      [ 8] 4070 	jsr	_syncPrintStrd
                           4071 ;----- asm -----
                           4072 ; 1598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4073 	; #ENR#[1093]if ((vec_joy_1_x > 0) && (!lastdir)) ew+=1;
                           4074 ;--- end asm ---
   4F47 F6 C8 1B      [ 5] 4075 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   4F4A E7 63         [ 5] 4076 	stb	3,s	;, Vec_Joy_1_X.479
   4F4C 32 61         [ 5] 4077 	leas	1,s	;,,
   4F4E 5D            [ 2] 4078 	tstb	;
   4F4F 2F 0E         [ 3] 4079 	ble	L178	;
   4F51 6D E8 10      [ 7] 4080 	tst	16,s	; lastDir
   4F54 26 09         [ 3] 4081 	bne	L178	;
   4F56 EC E8 11      [ 6] 4082 	ldd	17,s	;, ew
   4F59 C3 00 01      [ 4] 4083 	addd	#1; addhi3,3	;,
   4F5C ED E8 11      [ 6] 4084 	std	17,s	;, ew
   4F5F                    4085 L178:
                           4086 ;----- asm -----
                           4087 ; 1600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4088 	; #ENR#[1094]if ((vec_joy_1_x < 0) && (!lastdir)) ew-=1;
                           4089 ;--- end asm ---
   4F5F 6D 62         [ 7] 4090 	tst	2,s	; Vec_Joy_1_X.479
   4F61 2C 0E         [ 3] 4091 	bge	L177	;
   4F63 6D E8 10      [ 7] 4092 	tst	16,s	; lastDir
   4F66 26 09         [ 3] 4093 	bne	L177	;
   4F68 EC E8 11      [ 6] 4094 	ldd	17,s	;, ew
   4F6B C3 FF FF      [ 4] 4095 	addd	#-1; addhi3,3	;,
   4F6E ED E8 11      [ 6] 4096 	std	17,s	;, ew
   4F71                    4097 L177:
                           4098 ;----- asm -----
                           4099 ; 1603 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4100 	; #ENR#[1096]if (sel == 2)
                           4101 ;--- end asm ---
   4F71 E6 E8 15      [ 5] 4102 	ldb	21,s	;, sel
   4F74 C1 02         [ 2] 4103 	cmpb	#2	;cmpqi:	;,
   4F76 26 36         [ 3] 4104 	bne	L179	;
                           4105 ;----- asm -----
                           4106 ; 1606 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4107 	; #ENR#[1098]print_str_d(0x10,-0x65, );
                           4108 ;--- end asm ---
   4F78 C6 10         [ 2] 4109 	ldb	#16	;,
   4F7A E7 E2         [ 6] 4110 	stb	,-s	;,
   4F7C 8E 39 62      [ 3] 4111 	ldx	#LC20	;,
   4F7F C6 9B         [ 2] 4112 	ldb	#-101	;,
   4F81 BD 59 7E      [ 8] 4113 	jsr	_syncPrintStrd
                           4114 ;----- asm -----
                           4115 ; 1608 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4116 	; #ENR#[1099]if ((vec_joy_1_x > 0) && (!lastdir)) upd+=1;
                           4117 ;--- end asm ---
   4F84 F6 C8 1B      [ 5] 4118 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   4F87 E7 63         [ 5] 4119 	stb	3,s	;, Vec_Joy_1_X.480
   4F89 32 61         [ 5] 4120 	leas	1,s	;,,
   4F8B 5D            [ 2] 4121 	tstb	;
   4F8C 2F 0E         [ 3] 4122 	ble	L180	;
   4F8E 6D E8 10      [ 7] 4123 	tst	16,s	; lastDir
   4F91 26 09         [ 3] 4124 	bne	L180	;
   4F93 EC E8 13      [ 6] 4125 	ldd	19,s	;, upd
   4F96 C3 00 01      [ 4] 4126 	addd	#1; addhi3,3	;,
   4F99 ED E8 13      [ 6] 4127 	std	19,s	;, upd
   4F9C                    4128 L180:
                           4129 ;----- asm -----
                           4130 ; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4131 	; #ENR#[1100]if ((vec_joy_1_x < 0) && (!lastdir)) upd-=1;
                           4132 ;--- end asm ---
   4F9C 6D 62         [ 7] 4133 	tst	2,s	; Vec_Joy_1_X.480
   4F9E 2C 0E         [ 3] 4134 	bge	L179	;
   4FA0 6D E8 10      [ 7] 4135 	tst	16,s	; lastDir
   4FA3 26 09         [ 3] 4136 	bne	L179	;
   4FA5 EC E8 13      [ 6] 4137 	ldd	19,s	;, upd
   4FA8 C3 FF FF      [ 4] 4138 	addd	#-1; addhi3,3	;,
   4FAB ED E8 13      [ 6] 4139 	std	19,s	;, upd
   4FAE                    4140 L179:
                           4141 ;----- asm -----
                           4142 ; 1613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4143 	; #ENR#[1102]if ((vec_joy_1_y > 0) && (!lastdir))
                           4144 ;--- end asm ---
   4FAE F6 C8 1C      [ 5] 4145 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   4FB1 E7 62         [ 5] 4146 	stb	2,s	;, Vec_Joy_1_Y.481
   4FB3 2F 0D         [ 3] 4147 	ble	L181	;
   4FB5 6D E8 10      [ 7] 4148 	tst	16,s	; lastDir
   4FB8 26 08         [ 3] 4149 	bne	L181	;
   4FBA 6D E8 15      [ 7] 4150 	tst	21,s	; sel
   4FBD 27 03         [ 3] 4151 	beq	L181	;
   4FBF 6A E8 15      [ 7] 4152 	dec	21,s	; sel
   4FC2                    4153 L181:
                           4154 ;----- asm -----
                           4155 ; 1616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4156 	; #ENR#[1104]if ((vec_joy_1_y < 0) && (!lastdir))
                           4157 ;--- end asm ---
   4FC2 6D 62         [ 7] 4158 	tst	2,s	; Vec_Joy_1_Y.481
   4FC4 2C 10         [ 3] 4159 	bge	L182	;
   4FC6 6D E8 10      [ 7] 4160 	tst	16,s	; lastDir
   4FC9 26 0B         [ 3] 4161 	bne	L182	;
   4FCB E6 E8 15      [ 5] 4162 	ldb	21,s	;, sel
   4FCE C1 01         [ 2] 4163 	cmpb	#1	;cmpqi:	;,
   4FD0 2E 04         [ 3] 4164 	bgt	L182	;
   4FD2 5C            [ 2] 4165 	incb	;
   4FD3 E7 E8 15      [ 5] 4166 	stb	21,s	;, sel
   4FD6                    4167 L182:
                           4168 ;----- asm -----
                           4169 ; 1619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4170 	; #ENR#[1106]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           4171 ;--- end asm ---
   4FD6 C6 01         [ 2] 4172 	ldb	#1	;,
   4FD8 E7 E8 10      [ 5] 4173 	stb	16,s	;, lastDir
   4FDB 7D C8 1B      [ 7] 4174 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4FDE 26 09         [ 3] 4175 	bne	L184	;
   4FE0 E6 62         [ 5] 4176 	ldb	2,s	; Vec_Joy_1_Y.481, Vec_Joy_1_Y.481
   4FE2 27 02         [ 3] 4177 	beq	L185	;
   4FE4 C6 01         [ 2] 4178 	ldb	#1	; Vec_Joy_1_Y.481,
   4FE6                    4179 L185:
   4FE6 E7 E8 10      [ 5] 4180 	stb	16,s	; Vec_Joy_1_Y.481, lastDir
   4FE9                    4181 L184:
                           4182 ;----- asm -----
                           4183 ; 1622 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4184 	; #ENR#[1108]if (buttons_pressed()) break;
                           4185 ;--- end asm ---
   4FE9 7D C8 11      [ 7] 4186 	tst	_Vec_Buttons	; Vec_Buttons
   4FEC 26 03         [ 3] 4187 	bne	L186	;
                           4188 ;----- asm -----
                           4189 ; 1624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4190 	; #ENR#[1110]while (1);
                           4191 ;--- end asm ---
   4FEE 16 FE B0      [ 5] 4192 	lbra	L187	;
   4FF1                    4193 L186:
   4FF1 EE E8 11      [ 6] 4194 	ldu	17,s	; ew.509, ew
   4FF4 AE E8 13      [ 6] 4195 	ldx	19,s	;, upd
   4FF7 AF E8 18      [ 6] 4196 	stx	24,s	;, upd.510
                           4197 ;----- asm -----
                           4198 ; 1630 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4199 	; #ENR#[1114]if ((abs(ns)>lv*5) || (abs(ew)>lv*5) ||(abs(upd)>lv*5) )
                           4200 ;--- end asm ---
   4FFA F6 C9 38      [ 5] 4201 	ldb	_lv	; tmp307, lv
   4FFD 58            [ 2] 4202 	aslb	; tmp307
   4FFE 58            [ 2] 4203 	aslb	; tmp307
   4FFF FB C9 38      [ 5] 4204 	addb	_lv	; tmp307, lv
   5002 4F            [ 2] 4205 	clra		;zero_extendqihi: R:b -> R:d	; tmp307,
   5003 ED E4         [ 5] 4206 	std	,s	;, D.3645
   5005 30 A4         [ 4] 4207 	leax	,y	; ns.484, ns
   5007 10 8C 00 00   [ 5] 4208 	cmpy	#0	; ns
   500B 2C 08         [ 3] 4209 	bge	L189	;
   500D 1F 20         [ 6] 4210 	tfr	y,d	; ns,
   500F 40            [ 2] 4211 	nega
   5010 50            [ 2] 4212 	negb
   5011 82 00         [ 2] 4213 	sbca	#0
   5013 1F 01         [ 6] 4214 	tfr	d,x	;, ns.484
   5015                    4215 L189:
   5015 AC E4         [ 6] 4216 	cmpx	,s	;cmphi:	; ns.484, D.3645
   5017 2E 25         [ 3] 4217 	bgt	L188	;
   5019 30 C4         [ 4] 4218 	leax	,u	; ew.509, ew.509
   501B 11 83 00 00   [ 5] 4219 	cmpu	#0	; ew.509
   501F 2C 08         [ 3] 4220 	bge	L190	;
   5021 1E 01         [ 8] 4221 	exg	d,x	; ew.509
   5023 40            [ 2] 4222 	nega
   5024 50            [ 2] 4223 	negb
   5025 82 00         [ 2] 4224 	sbca	#0
   5027 1E 01         [ 8] 4225 	exg	d,x	; ew.509
   5029                    4226 L190:
   5029 AC E4         [ 6] 4227 	cmpx	,s	;cmphi:	; ew.509, D.3645
   502B 2E 11         [ 3] 4228 	bgt	L188	;
   502D AE E8 18      [ 6] 4229 	ldx	24,s	; upd.510, upd.510
   5030 2C 08         [ 3] 4230 	bge	L192	;
   5032 1E 01         [ 8] 4231 	exg	d,x	; upd.510
   5034 40            [ 2] 4232 	nega
   5035 50            [ 2] 4233 	negb
   5036 82 00         [ 2] 4234 	sbca	#0
   5038 1E 01         [ 8] 4235 	exg	d,x	; upd.510
   503A                    4236 L192:
   503A AC E4         [ 6] 4237 	cmpx	,s	;cmphi:	; upd.510, D.3645
   503C 2F 0E         [ 3] 4238 	ble	L191	;
   503E                    4239 L188:
                           4240 ;----- asm -----
                           4241 ; 1633 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4242 	; #ENR#[1116]printmessage();
                           4243 ;--- end asm ---
   503E 8E 44 C8      [ 3] 4244 	ldx	#LC79	;,
   5041 BD 5B 7A      [ 8] 4245 	jsr	_printMessage
                           4246 ;----- asm -----
                           4247 ; 1635 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4248 	; #ENR#[1117]pause(small_pause);
                           4249 ;--- end asm ---
   5044 C6 4B         [ 2] 4250 	ldb	#75	;,
   5046 BD 3E 21      [ 8] 4251 	jsr	_pause
                           4252 ;----- asm -----
                           4253 ; 1637 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4254 	; #ENR#[1118]goto teleportagain;
                           4255 ;--- end asm ---
   5049 16 FE 46      [ 5] 4256 	lbra	L174	;
   504C                    4257 L191:
                           4258 ;----- asm -----
                           4259 ; 1644 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4260 	; #ENR#[1124]ew += cx;
                           4261 ;--- end asm ---
   504C F6 C9 3F      [ 5] 4262 	ldb	_cx	;, cx
   504F 4F            [ 2] 4263 	clra		;zero_extendqihi: R:b -> R:d	;,
   5050 ED E4         [ 5] 4264 	std	,s	;,
   5052 E3 E8 11      [ 7] 4265 	addd	17,s; addhi3,3	;, ew
   5055 ED E8 16      [ 6] 4266 	std	22,s	;, ew.486
                           4267 ;----- asm -----
                           4268 ; 1646 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4269 	; #ENR#[1125]ns += cy;
                           4270 ;--- end asm ---
   5058 F6 C9 40      [ 5] 4271 	ldb	_cy	;, cy
   505B E7 62         [ 5] 4272 	stb	2,s	;, cy.487
                           4273 ;----- asm -----
                           4274 ; 1648 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4275 	; #ENR#[1126]upd += cz;
                           4276 ;--- end asm ---
   505D F6 C9 67      [ 5] 4277 	ldb	_cz	;, cz
   5060 E7 6B         [ 5] 4278 	stb	11,s	;, cz.85
                           4279 ;----- asm -----
                           4280 ; 1650 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4281 	; #ENR#[1127]if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
                           4282 ;--- end asm ---
   5062 EE E8 16      [ 6] 4283 	ldu	22,s	;, ew.486
   5065 30 5F         [ 5] 4284 	leax	-1,u	; tmp313,,
   5067 8C 00 C7      [ 4] 4285 	cmpx	#199	;cmphi:	; tmp313,
   506A 22 23         [ 3] 4286 	bhi	L193	;
   506C E6 62         [ 5] 4287 	ldb	2,s	;, cy.487
   506E 4F            [ 2] 4288 	clra		;zero_extendqihi: R:b -> R:d	;,
   506F ED E4         [ 5] 4289 	std	,s	;,
   5071 31 AB         [ 8] 4290 	leay	d,y	; ns.488,, ns
   5073 10 8C 00 00   [ 5] 4291 	cmpy	#0	; ns.488
   5077 2F 16         [ 3] 4292 	ble	L193	;
   5079 10 8C 00 C8   [ 5] 4293 	cmpy	#200	;cmphi:	; ns.488,
   507D 2E 10         [ 3] 4294 	bgt	L193	;
   507F E6 6B         [ 5] 4295 	ldb	11,s	;, cz.85
   5081 4F            [ 2] 4296 	clra		;zero_extendqihi: R:b -> R:d	;,
   5082 ED E4         [ 5] 4297 	std	,s	;,
   5084 AE E8 13      [ 6] 4298 	ldx	19,s	; upd.489, upd
   5087 30 8B         [ 8] 4299 	leax	d,x	; upd.489,, upd.489
   5089 1F 10         [ 6] 4300 	tfr	x,d	;movlsbqihi: R:x -> R:b	; upd.489, temp.490
   508B C1 32         [ 2] 4301 	cmpb	#50	;cmpqi:	; temp.490,
   508D 2F 0F         [ 3] 4302 	ble	L194	;
   508F                    4303 L193:
                           4304 ;----- asm -----
                           4305 ; 1654 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4306 	; #ENR#[1130]printmessage();
                           4307 ;--- end asm ---
   508F 8E 44 DB      [ 3] 4308 	ldx	#LC80	;,
   5092 BD 5B 7A      [ 8] 4309 	jsr	_printMessage
                           4310 ;----- asm -----
                           4311 ; 1656 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4312 	; #ENR#[1131]printmessage();
                           4313 ;--- end asm ---
   5095 8E 44 EF      [ 3] 4314 	ldx	#LC81	;,
   5098 BD 5B 7A      [ 8] 4315 	jsr	_printMessage
                           4316 ;----- asm -----
                           4317 ; 1658 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4318 	; #ENR#[1132]return 1;
                           4319 ;--- end asm ---
   509B 16 02 CA      [ 5] 4320 	lbra	L222	;
   509E                    4321 L194:
                           4322 ;----- asm -----
                           4323 ; 1661 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4324 	; #ENR#[1134]if ((signed int) upd<1)
                           4325 ;--- end asm ---
   509E 1F 10         [ 6] 4326 	tfr	x,d	; upd.489,
   50A0 5D            [ 2] 4327 	tstb	;
   50A1 2E 0F         [ 3] 4328 	bgt	L195	;
                           4329 ;----- asm -----
                           4330 ; 1664 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4331 	; #ENR#[1136]printmessage();
                           4332 ;--- end asm ---
   50A3 8E 45 02      [ 3] 4333 	ldx	#LC82	;,
   50A6 BD 5B 7A      [ 8] 4334 	jsr	_printMessage
                           4335 ;----- asm -----
                           4336 ; 1666 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4337 	; #ENR#[1137]printmessage();
                           4338 ;--- end asm ---
   50A9 8E 44 EF      [ 3] 4339 	ldx	#LC81	;,
   50AC BD 5B 7A      [ 8] 4340 	jsr	_printMessage
                           4341 ;----- asm -----
                           4342 ; 1668 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4343 	; #ENR#[1138]return 1;
                           4344 ;--- end asm ---
   50AF 16 02 B6      [ 5] 4345 	lbra	L222	;
   50B2                    4346 L195:
                           4347 ;----- asm -----
                           4348 ; 1672 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4349 	; #ENR#[1141]cx = (unsigned char)ew;
                           4350 ;--- end asm ---
   50B2 EC E8 16      [ 6] 4351 	ldd	22,s	;, ew.486
   50B5 F7 C9 3F      [ 5] 4352 	stb	_cx	;movlsbqihi: R:d -> _cx	; cx,
                           4353 ;----- asm -----
                           4354 ; 1674 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4355 	; #ENR#[1142]cy = (unsigned char)ns;
                           4356 ;--- end asm ---
   50B8 1F 20         [ 6] 4357 	tfr	y,d	; ns.488,
   50BA F7 C9 40      [ 5] 4358 	stb	_cy	;movlsbqihi: R:d -> _cy	; cy,
                           4359 ;----- asm -----
                           4360 ; 1676 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4361 	; #ENR#[1143]cz = (unsigned char)upd;
                           4362 ;--- end asm ---
   50BD 1F 10         [ 6] 4363 	tfr	x,d	; upd.489,
   50BF F7 C9 67      [ 5] 4364 	stb	_cz	;movlsbqihi: R:d -> _cz	; cz,
                           4365 ;----- asm -----
                           4366 ; 1678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4367 	; #ENR#[1144]printmessage();
                           4368 ;--- end asm ---
   50C2 8E 45 13      [ 3] 4369 	ldx	#LC83	;,
   50C5 BD 5B 7A      [ 8] 4370 	jsr	_printMessage
                           4371 ;----- asm -----
                           4372 ; 1680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4373 	; #ENR#[1145]fillmap = go_redraw;
                           4374 ;--- end asm ---
   50C8 C6 7F         [ 2] 4375 	ldb	#127	;,
   50CA F7 C8 FC      [ 5] 4376 	stb	_fillMap	;, fillMap
                           4377 ;----- asm -----
                           4378 ; 1682 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4379 	; #ENR#[1146]return 2;
                           4380 ;--- end asm ---
   50CD 16 02 88      [ 5] 4381 	lbra	L225	;
   50D0                    4382 L172:
   50D0 E6 6E         [ 5] 4383 	ldb	14,s	;, spellSelect
   50D2 C1 01         [ 2] 4384 	cmpb	#1	;cmpqi:	;,
   50D4 26 0D         [ 3] 4385 	bne	L196	;
                           4386 ;----- asm -----
                           4387 ; 1689 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4388 	; #ENR#[1152]sf[astral_walk] = randmax(16)+5;
                           4389 ;--- end asm ---
   50D6 C6 10         [ 2] 4390 	ldb	#16	;,
   50D8 BD 5F 2A      [ 8] 4391 	jsr	_RandMax
   50DB CB 05         [ 2] 4392 	addb	#5	; D.3659,
   50DD F7 C9 73      [ 5] 4393 	stb	_sf+7	; D.3659, sf
                           4394 ;----- asm -----
                           4395 ; 1691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4396 	; #ENR#[1153]return 1;
                           4397 ;--- end asm ---
   50E0 16 01 94      [ 5] 4398 	lbra	L226	;
   50E3                    4399 L196:
   50E3 E6 6E         [ 5] 4400 	ldb	14,s	;, spellSelect
   50E5 C1 02         [ 2] 4401 	cmpb	#2	;cmpqi:	;,
   50E7 10 26 00 44   [ 6] 4402 	lbne	L197	;
                           4403 ;----- asm -----
                           4404 ; 1698 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4405 	; #ENR#[1159]if (!incombat) goto nocombatspell;
                           4406 ;--- end asm ---
   50EB 6D 65         [ 7] 4407 	tst	5,s	; inCombat
   50ED 10 27 02 6C   [ 6] 4408 	lbeq	L109	;
                           4409 ;----- asm -----
                           4410 ; 1701 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4411 	; #ENR#[1161]printmessage();
                           4412 ;--- end asm ---
   50F1 8E 45 21      [ 3] 4413 	ldx	#LC84	;,
   50F4 BD 5B 7A      [ 8] 4414 	jsr	_printMessage
                           4415 ;----- asm -----
                           4416 ; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4417 	; #ENR#[1162]pause(small_pause);
                           4418 ;--- end asm ---
   50F7 C6 4B         [ 2] 4419 	ldb	#75	;,
   50F9 BD 3E 21      [ 8] 4420 	jsr	_pause
                           4421 ;----- asm -----
                           4422 ; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4423 	; #ENR#[1165]if (un != 0)
                           4424 ;--- end asm ---
   50FC 7D C9 7E      [ 7] 4425 	tst	_un	; un
   50FF 27 03         [ 3] 4426 	beq	L198	;
                           4427 ;----- asm -----
                           4428 ; 1710 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4429 	; #ENR#[1167]goto undeadaredead;
                           4430 ;--- end asm ---
   5101 16 FD 12      [ 5] 4431 	lbra	L169	;
   5104                    4432 L198:
                           4433 ;----- asm -----
                           4434 ; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4435 	; #ENR#[1169]if (randmax(11)>8)
                           4436 ;--- end asm ---
   5104 C6 0B         [ 2] 4437 	ldb	#11	;,
   5106 BD 5F 2A      [ 8] 4438 	jsr	_RandMax
   5109 C1 08         [ 2] 4439 	cmpb	#8	;cmpqi:	; D.3661,
   510B 23 1F         [ 3] 4440 	bls	L199	;
                           4441 ;----- asm -----
                           4442 ; 1716 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4443 	; #ENR#[1171]_fs(, mo[m]);
                           4444 ;--- end asm ---
   510D F6 C9 77      [ 5] 4445 	ldb	_m	;, m
   5110 1D            [ 2] 4446 	sex		;extendqihi2: R:b -> R:d	;,
   5111 ED E4         [ 5] 4447 	std	,s	;,
   5113 58            [ 2] 4448 	aslb	;
   5114 49            [ 2] 4449 	rola	;
   5115 1F 01         [ 6] 4450 	tfr	d,x	;, tmp319
   5117 AE 89 01 24   [ 9] 4451 	ldx	_mo,x	;, mo
   511B AF E3         [ 8] 4452 	stx	,--s	;,
   511D 8E 45 2E      [ 3] 4453 	ldx	#LC85	;,
   5120 BD 5C 59      [ 8] 4454 	jsr	__fs
                           4455 ;----- asm -----
                           4456 ; 1718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4457 	; #ENR#[1172]printmessage(stringbuffer40);
                           4458 ;--- end asm ---
   5123 8E C8 BF      [ 3] 4459 	ldx	#_stringBuffer40	;,
   5126 BD 5B 7A      [ 8] 4460 	jsr	_printMessage
                           4461 ;----- asm -----
                           4462 ; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4463 	; #ENR#[1173]return 1;
                           4464 ;--- end asm ---
   5129 16 F8 00      [ 5] 4465 	lbra	L227	;
   512C                    4466 L199:
                           4467 ;----- asm -----
                           4468 ; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4469 	; #ENR#[1175]return 3;
                           4470 ;--- end asm ---
   512C 16 02 6C      [ 5] 4471 	lbra	L170	;
   512F                    4472 L197:
   512F E6 6E         [ 5] 4473 	ldb	14,s	;, spellSelect
   5131 C1 03         [ 2] 4474 	cmpb	#3	;cmpqi:	;,
   5133 26 19         [ 3] 4475 	bne	L200	;
                           4476 ;----- asm -----
                           4477 ; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4478 	; #ENR#[1182]if (!incombat) goto nocombatspell;
                           4479 ;--- end asm ---
   5135 6D 65         [ 7] 4480 	tst	5,s	; inCombat
   5137 10 27 02 22   [ 6] 4481 	lbeq	L109	;
                           4482 ;----- asm -----
                           4483 ; 1733 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4484 	; #ENR#[1183]printmessage();
                           4485 ;--- end asm ---
   513B 8E 45 44      [ 3] 4486 	ldx	#LC86	;,
   513E BD 5B 7A      [ 8] 4487 	jsr	_printMessage
                           4488 ;----- asm -----
                           4489 ; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4490 	; #ENR#[1184]tmp = (signed int) randmax(60)+5;
                           4491 ;--- end asm ---
   5141 C6 3C         [ 2] 4492 	ldb	#60	;,
   5143 BD 5F 2A      [ 8] 4493 	jsr	_RandMax
   5146 CB 05         [ 2] 4494 	addb	#5	; D.3662,
   5148 F7 C8 FE      [ 5] 4495 	stb	_tmp	; D.3662, tmp
                           4496 ;----- asm -----
                           4497 ; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4498 	; #ENR#[1185]goto damagespell;
                           4499 ;--- end asm ---
   514B 16 02 1F      [ 5] 4500 	lbra	L107	;
   514E                    4501 L200:
   514E E6 6E         [ 5] 4502 	ldb	14,s	;, spellSelect
   5150 C1 04         [ 2] 4503 	cmpb	#4	;cmpqi:	;,
   5152 10 26 00 67   [ 6] 4504 	lbne	L201	;
                           4505 ;----- asm -----
                           4506 ; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4507 	; #ENR#[1194]clearmessage();
                           4508 ;--- end asm ---
   5156 7F C9 87      [ 7] 4509 	clr	_msgLine	; msgLine
                           4510 ;----- asm -----
                           4511 ; 1749 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4512 	; #ENR#[1195]printmessage();
                           4513 ;--- end asm ---
   5159 8E 45 4E      [ 3] 4514 	ldx	#LC87	;,
   515C BD 5B 7A      [ 8] 4515 	jsr	_printMessage
                           4516 ;----- asm -----
                           4517 ; 1751 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4518 	; #ENR#[1196]printmessage();
                           4519 ;--- end asm ---
   515F 8E 45 6F      [ 3] 4520 	ldx	#LC88	;,
   5162 BD 5B 7A      [ 8] 4521 	jsr	_printMessage
                           4522 ;----- asm -----
                           4523 ; 1753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4524 	; #ENR#[1197]pause(small_pause);
                           4525 ;--- end asm ---
   5165 C6 4B         [ 2] 4526 	ldb	#75	;,
   5167 BD 3E 21      [ 8] 4527 	jsr	_pause
                           4528 ;----- asm -----
                           4529 ; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4530 	; #ENR#[1198]if (randmax(10) >4)
                           4531 ;--- end asm ---
   516A C6 0A         [ 2] 4532 	ldb	#10	;,
   516C BD 5F 2A      [ 8] 4533 	jsr	_RandMax
   516F C1 04         [ 2] 4534 	cmpb	#4	;cmpqi:	; D.3665,
   5171 23 1F         [ 3] 4535 	bls	L202	;
                           4536 ;----- asm -----
                           4537 ; 1758 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4538 	; #ENR#[1200]_fs(, mo[m]);
                           4539 ;--- end asm ---
   5173 F6 C9 77      [ 5] 4540 	ldb	_m	;, m
   5176 1D            [ 2] 4541 	sex		;extendqihi2: R:b -> R:d	;,
   5177 ED E4         [ 5] 4542 	std	,s	;,
   5179 58            [ 2] 4543 	aslb	;
   517A 49            [ 2] 4544 	rola	;
   517B 1F 01         [ 6] 4545 	tfr	d,x	;, tmp324
   517D AE 89 01 24   [ 9] 4546 	ldx	_mo,x	;, mo
   5181 AF E3         [ 8] 4547 	stx	,--s	;,
   5183 8E 45 90      [ 3] 4548 	ldx	#LC89	;,
   5186 BD 5C 59      [ 8] 4549 	jsr	__fs
                           4550 ;----- asm -----
                           4551 ; 1760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4552 	; #ENR#[1201]printmessage(stringbuffer40);
                           4553 ;--- end asm ---
   5189 8E C8 BF      [ 3] 4554 	ldx	#_stringBuffer40	;,
   518C BD 5B 7A      [ 8] 4555 	jsr	_printMessage
                           4556 ;----- asm -----
                           4557 ; 1762 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4558 	; #ENR#[1202]return 6;
                           4559 ;--- end asm ---
   518F 16 01 BF      [ 5] 4560 	lbra	L228	;
   5192                    4561 L202:
                           4562 ;----- asm -----
                           4563 ; 1765 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4564 	; #ENR#[1204]_fs(, mo[m]);
                           4565 ;--- end asm ---
   5192 F6 C9 77      [ 5] 4566 	ldb	_m	;, m
   5195 1D            [ 2] 4567 	sex		;extendqihi2: R:b -> R:d	;,
   5196 ED E4         [ 5] 4568 	std	,s	;,
   5198 58            [ 2] 4569 	aslb	;
   5199 49            [ 2] 4570 	rola	;
   519A 1F 01         [ 6] 4571 	tfr	d,x	;, tmp329
   519C AE 89 01 24   [ 9] 4572 	ldx	_mo,x	;, mo
   51A0 AF E3         [ 8] 4573 	stx	,--s	;,
   51A2 8E 45 A1      [ 3] 4574 	ldx	#LC90	;,
   51A5 BD 5C 59      [ 8] 4575 	jsr	__fs
                           4576 ;----- asm -----
                           4577 ; 1767 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4578 	; #ENR#[1205]printmessage(stringbuffer40);
                           4579 ;--- end asm ---
   51A8 8E C8 BF      [ 3] 4580 	ldx	#_stringBuffer40	;,
   51AB BD 5B 7A      [ 8] 4581 	jsr	_printMessage
                           4582 ;----- asm -----
                           4583 ; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4584 	; #ENR#[1206]tmp = (signed int) randmax(10)+15;
                           4585 ;--- end asm ---
   51AE C6 0A         [ 2] 4586 	ldb	#10	;,
   51B0 BD 5F 2A      [ 8] 4587 	jsr	_RandMax
   51B3 CB 0F         [ 2] 4588 	addb	#15	; D.3666,
   51B5 F7 C8 FE      [ 5] 4589 	stb	_tmp	; D.3666, tmp
                           4590 ;----- asm -----
                           4591 ; 1771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4592 	; #ENR#[1207]goto damagespell;
                           4593 ;--- end asm ---
   51B8                    4594 L221:
   51B8 32 62         [ 5] 4595 	leas	2,s	;,,
   51BA 16 01 B0      [ 5] 4596 	lbra	L107	;
   51BD                    4597 L201:
   51BD E6 6E         [ 5] 4598 	ldb	14,s	;, spellSelect
   51BF C1 05         [ 2] 4599 	cmpb	#5	;cmpqi:	;,
   51C1 10 26 01 93   [ 6] 4600 	lbne	L120	;
                           4601 ;----- asm -----
                           4602 ; 1778 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4603 	; #ENR#[1213]if (!incombat) goto nocombatspell;
                           4604 ;--- end asm ---
   51C5 6D 65         [ 7] 4605 	tst	5,s	; inCombat
   51C7 10 27 01 92   [ 6] 4606 	lbeq	L109	;
                           4607 ;----- asm -----
                           4608 ; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4609 	; #ENR#[1215]if (un != 0) goto undeadaredead;
                           4610 ;--- end asm ---
   51CB 7D C9 7E      [ 7] 4611 	tst	_un	; un
   51CE 10 26 FC 44   [ 6] 4612 	lbne	L169	;
                           4613 ;----- asm -----
                           4614 ; 1785 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4615 	; #ENR#[1218]_fs(, mo[m]);
                           4616 ;--- end asm ---
   51D2 F6 C9 77      [ 5] 4617 	ldb	_m	;, m
   51D5 1D            [ 2] 4618 	sex		;extendqihi2: R:b -> R:d	;,
   51D6 ED E4         [ 5] 4619 	std	,s	;,
   51D8 58            [ 2] 4620 	aslb	;
   51D9 49            [ 2] 4621 	rola	;
   51DA 1F 01         [ 6] 4622 	tfr	d,x	;, tmp334
   51DC AE 89 01 24   [ 9] 4623 	ldx	_mo,x	;, mo
   51E0 AF E3         [ 8] 4624 	stx	,--s	;,
   51E2 8E 45 B8      [ 3] 4625 	ldx	#LC91	;,
   51E5 BD 5C 59      [ 8] 4626 	jsr	__fs
                           4627 ;----- asm -----
                           4628 ; 1787 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4629 	; #ENR#[1219]printmessage(stringbuffer40);
                           4630 ;--- end asm ---
   51E8 8E C8 BF      [ 3] 4631 	ldx	#_stringBuffer40	;,
   51EB BD 5B 7A      [ 8] 4632 	jsr	_printMessage
                           4633 ;----- asm -----
                           4634 ; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4635 	; #ENR#[1221]if (randmax(20)>s[wis])
                           4636 ;--- end asm ---
   51EE C6 14         [ 2] 4637 	ldb	#20	;,
   51F0 BD 5F 2A      [ 8] 4638 	jsr	_RandMax
   51F3 32 62         [ 5] 4639 	leas	2,s	;,,
   51F5 F1 C9 47      [ 5] 4640 	cmpb	_s+2	;cmpqi:	; D.3669, s
   51F8 23 09         [ 3] 4641 	bls	L203	;
                           4642 ;----- asm -----
                           4643 ; 1793 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4644 	; #ENR#[1223]printmessage();
                           4645 ;--- end asm ---
   51FA 8E 45 CF      [ 3] 4646 	ldx	#LC92	;,
   51FD BD 5B 7A      [ 8] 4647 	jsr	_printMessage
                           4648 ;----- asm -----
                           4649 ; 1795 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4650 	; #ENR#[1224]return 1;
                           4651 ;--- end asm ---
   5200 16 01 65      [ 5] 4652 	lbra	L222	;
   5203                    4653 L203:
                           4654 ;----- asm -----
                           4655 ; 1800 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4656 	; #ENR#[1228]if (  randmax((unsigned int)(67)) < (unsigned int) ((s[con]) +33))
                           4657 ;--- end asm ---
   5203 C6 43         [ 2] 4658 	ldb	#67	;,
   5205 BD 5F 2A      [ 8] 4659 	jsr	_RandMax
   5208 E7 6C         [ 5] 4660 	stb	12,s	;, D.3670
   520A F6 C9 48      [ 5] 4661 	ldb	_s+3	; tmp339, s
   520D CB 21         [ 2] 4662 	addb	#33	; tmp339,
   520F E1 6C         [ 5] 4663 	cmpb	12,s	;cmpqi:(R)	; tmp339, D.3670
   5211 23 03         [ 3] 4664 	bls	L204	;
                           4665 ;----- asm -----
                           4666 ; 1803 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4667 	; #ENR#[1230]return 2;
                           4668 ;--- end asm ---
   5213 16 01 42      [ 5] 4669 	lbra	L225	;
   5216                    4670 L204:
                           4671 ;----- asm -----
                           4672 ; 1806 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4673 	; #ENR#[1232]printmessage();
                           4674 ;--- end asm ---
   5216 8E 45 DD      [ 3] 4675 	ldx	#LC93	;,
   5219 BD 5B 7A      [ 8] 4676 	jsr	_printMessage
                           4677 ;----- asm -----
                           4678 ; 1808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4679 	; #ENR#[1233]return 7;
                           4680 ;--- end asm ---
   521C C6 07         [ 2] 4681 	ldb	#7	; D.3520,
   521E 16 01 7C      [ 5] 4682 	lbra	L100	;
   5221                    4683 L171:
   5221 E6 6D         [ 5] 4684 	ldb	13,s	;, spellLevel
   5223 C1 05         [ 2] 4685 	cmpb	#5	;cmpqi:	;,
   5225 10 26 01 2F   [ 6] 4686 	lbne	L120	;
                           4687 ;----- asm -----
                           4688 ; 1815 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4689 	; #ENR#[1239]if (spellselect == 0)
                           4690 ;--- end asm ---
   5229 6D 6E         [ 7] 4691 	tst	14,s	; spellSelect
   522B 26 21         [ 3] 4692 	bne	L205	;
                           4693 ;----- asm -----
                           4694 ; 1821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4695 	; #ENR#[1244]printmessage();
                           4696 ;--- end asm ---
   522D 8E 45 F3      [ 3] 4697 	ldx	#LC94	;,
   5230 BD 5B 7A      [ 8] 4698 	jsr	_printMessage
                           4699 ;----- asm -----
                           4700 ; 1823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4701 	; #ENR#[1245]printmessage();
                           4702 ;--- end asm ---
   5233 8E 46 13      [ 3] 4703 	ldx	#LC95	;,
   5236 BD 5B 7A      [ 8] 4704 	jsr	_printMessage
                           4705 ;----- asm -----
                           4706 ; 1828 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4707 	; #ENR#[1249]sf[timestop] = randmax(20)+4;
                           4708 ;--- end asm ---
   5239 C6 14         [ 2] 4709 	ldb	#20	;,
   523B BD 5F 2A      [ 8] 4710 	jsr	_RandMax
   523E CB 04         [ 2] 4711 	addb	#4	; D.3673,
   5240 F7 C9 74      [ 5] 4712 	stb	_sf+8	; D.3673, sf
                           4713 ;----- asm -----
                           4714 ; 1830 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4715 	; #ENR#[1250]if (incombat) return 6;
                           4716 ;--- end asm ---
   5243 C6 06         [ 2] 4717 	ldb	#6	; D.3520,
   5245 6D 65         [ 7] 4718 	tst	5,s	; inCombat
   5247 10 26 01 52   [ 6] 4719 	lbne	L100	;
                           4720 ;----- asm -----
                           4721 ; 1832 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4722 	; #ENR#[1251]return 1;
                           4723 ;--- end asm ---
   524B 16 01 1A      [ 5] 4724 	lbra	L222	;
   524E                    4725 L205:
   524E E6 6E         [ 5] 4726 	ldb	14,s	;, spellSelect
   5250 C1 01         [ 2] 4727 	cmpb	#1	;cmpqi:	;,
   5252 26 0C         [ 3] 4728 	bne	L207	;
                           4729 ;----- asm -----
                           4730 ; 1839 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4731 	; #ENR#[1257]sf[raise_dead] = randmax(40)+5;
                           4732 ;--- end asm ---
   5254 C6 28         [ 2] 4733 	ldb	#40	;,
   5256 BD 5F 2A      [ 8] 4734 	jsr	_RandMax
   5259 CB 05         [ 2] 4735 	addb	#5	; D.3675,
   525B F7 C9 75      [ 5] 4736 	stb	_sf+9	; D.3675, sf
                           4737 ;----- asm -----
                           4738 ; 1841 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4739 	; #ENR#[1258]return 1;
                           4740 ;--- end asm ---
   525E 20 17         [ 3] 4741 	bra	L226	;
   5260                    4742 L207:
   5260 E6 6E         [ 5] 4743 	ldb	14,s	;, spellSelect
   5262 C1 02         [ 2] 4744 	cmpb	#2	;cmpqi:	;,
   5264 10 26 00 33   [ 6] 4745 	lbne	L208	;
                           4746 ;----- asm -----
                           4747 ; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4748 	; #ENR#[1264]if (!incombat) goto nocombatspell;
                           4749 ;--- end asm ---
   5268 6D 65         [ 7] 4750 	tst	5,s	; inCombat
   526A 10 27 00 EF   [ 6] 4751 	lbeq	L109	;
                           4752 ;----- asm -----
                           4753 ; 1853 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4754 	; #ENR#[1268]if (randmax(10+1) != 10)
                           4755 ;--- end asm ---
   526E C6 0B         [ 2] 4756 	ldb	#11	;,
   5270 BD 5F 2A      [ 8] 4757 	jsr	_RandMax
   5273 C1 0A         [ 2] 4758 	cmpb	#10	;cmpqi:	; D.3677,
   5275 27 05         [ 3] 4759 	beq	L209	;
                           4760 ;----- asm -----
                           4761 ; 1856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4762 	; #ENR#[1270]return 2;
                           4763 ;--- end asm ---
   5277                    4764 L226:
   5277 E6 6E         [ 5] 4765 	ldb	14,s	; D.3520, spellSelect
   5279 16 01 21      [ 5] 4766 	lbra	L100	;
   527C                    4767 L209:
                           4768 ;----- asm -----
                           4769 ; 1860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4770 	; #ENR#[1273]_fs(, mo[m]);
                           4771 ;--- end asm ---
   527C F6 C9 77      [ 5] 4772 	ldb	_m	;, m
   527F 1D            [ 2] 4773 	sex		;extendqihi2: R:b -> R:d	;,
   5280 ED E4         [ 5] 4774 	std	,s	;,
   5282 58            [ 2] 4775 	aslb	;
   5283 49            [ 2] 4776 	rola	;
   5284 1F 01         [ 6] 4777 	tfr	d,x	;, tmp344
   5286 AE 89 01 24   [ 9] 4778 	ldx	_mo,x	;, mo
   528A AF E3         [ 8] 4779 	stx	,--s	;,
   528C 8E 46 1E      [ 3] 4780 	ldx	#LC96	;,
   528F BD 5C 59      [ 8] 4781 	jsr	__fs
                           4782 ;----- asm -----
                           4783 ; 1862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4784 	; #ENR#[1274]printmessage(stringbuffer40);
                           4785 ;--- end asm ---
   5292 8E C8 BF      [ 3] 4786 	ldx	#_stringBuffer40	;,
   5295 BD 5B 7A      [ 8] 4787 	jsr	_printMessage
                           4788 ;----- asm -----
                           4789 ; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4790 	; #ENR#[1275]return 1;
                           4791 ;--- end asm ---
   5298 16 F6 91      [ 5] 4792 	lbra	L227	;
   529B                    4793 L208:
   529B E6 6E         [ 5] 4794 	ldb	14,s	;, spellSelect
   529D C1 03         [ 2] 4795 	cmpb	#3	;cmpqi:	;,
   529F 10 26 00 66   [ 6] 4796 	lbne	L210	;
                           4797 ;----- asm -----
                           4798 ; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4799 	; #ENR#[1281]if (incombat)
                           4800 ;--- end asm ---
   52A3 6D 65         [ 7] 4801 	tst	5,s	; inCombat
   52A5 27 09         [ 3] 4802 	beq	L211	;
                           4803 ;----- asm -----
                           4804 ; 1874 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4805 	; #ENR#[1283]printmessage();
                           4806 ;--- end asm ---
   52A7 8E 43 98      [ 3] 4807 	ldx	#LC57	;,
   52AA BD 5B 7A      [ 8] 4808 	jsr	_printMessage
                           4809 ;----- asm -----
                           4810 ; 1876 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4811 	; #ENR#[1284]return 1;
                           4812 ;--- end asm ---
   52AD 16 00 B8      [ 5] 4813 	lbra	L222	;
   52B0                    4814 L211:
                           4815 ;----- asm -----
                           4816 ; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4817 	; #ENR#[1289]for (int i=0; i<10;i++)
                           4818 ;--- end asm ---
   52B0 8E C9 4B      [ 3] 4819 	ldx	#_inventory	; ivtmp.411,
   52B3                    4820 L212:
                           4821 ;----- asm -----
                           4822 ; 1885 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4823 	; #ENR#[1291]inventory[i] = 0;
                           4824 ;--- end asm ---
   52B3 CC 00 00      [ 3] 4825 	ldd	#0	;,
   52B6 ED 81         [ 8] 4826 	std	,x++	;, inventory
   52B8 8C C9 5F      [ 4] 4827 	cmpx	#_inventory+20	;cmphi:	; ivtmp.411,
   52BB 26 F6         [ 3] 4828 	bne	L212	;
                           4829 ;----- asm -----
                           4830 ; 1888 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4831 	; #ENR#[1293]gd = 0;
                           4832 ;--- end asm ---
   52BD FD C9 68      [ 6] 4833 	std	_gd	;, gd
   52C0 FD C9 6A      [ 6] 4834 	std	_gd+2	;, gd
                           4835 ;----- asm -----
                           4836 ; 1890 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4837 	; #ENR#[1294]clearmonsterstack();
                           4838 ; 595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4839 	; #ENR#[404]for (int i=0;i<20;i++)
                           4840 ;--- end asm ---
   52C3 10 8E 00 00   [ 4] 4841 	ldy	#0	; ivtmp.396,
   52C7                    4842 L213:
                           4843 ;----- asm -----
                           4844 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4845 	; #ENR#[406]stackm[i] = -1;
                           4846 ;--- end asm ---
   52C7 C6 FF         [ 2] 4847 	ldb	#-1	;,
   52C9 E7 A9 C9 88   [ 8] 4848 	stb	_stackM,y	;, stackM
                           4849 ;----- asm -----
                           4850 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4851 	; #ENR#[407]stackml[i] = 0;
                           4852 ;--- end asm ---
   52CD 6F A9 C9 9C   [10] 4853 	clr	_stackML,y	; stackML
                           4854 ;----- asm -----
                           4855 ; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4856 	; #ENR#[408]stackmh[i] = 0;
                           4857 ;--- end asm ---
   52D1 1F 20         [ 6] 4858 	tfr	y,d	; ivtmp.396,
   52D3 58            [ 2] 4859 	aslb	;
   52D4 49            [ 2] 4860 	rola	;
   52D5 1F 01         [ 6] 4861 	tfr	d,x	;, tmp352
   52D7 CC 00 00      [ 3] 4862 	ldd	#0	;,
   52DA ED 89 C9 B0   [ 9] 4863 	std	_stackMH,x	;, stackMH
   52DE 31 21         [ 5] 4864 	leay	1,y	; ivtmp.396,, ivtmp.396
   52E0 10 8C 00 14   [ 5] 4865 	cmpy	#20	;cmphi:	; ivtmp.396,
   52E4 26 E1         [ 3] 4866 	bne	L213	;
                           4867 ;----- asm -----
                           4868 ; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4869 	; #ENR#[1295]cz = 1;
                           4870 ;--- end asm ---
   52E6 C6 01         [ 2] 4871 	ldb	#1	;,
   52E8 F7 C9 67      [ 5] 4872 	stb	_cz	;, cz
                           4873 ;----- asm -----
                           4874 ; 1894 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4875 	; #ENR#[1296]cx = 25;
                           4876 ;--- end asm ---
   52EB C6 19         [ 2] 4877 	ldb	#25	;,
   52ED F7 C9 3F      [ 5] 4878 	stb	_cx	;, cx
                           4879 ;----- asm -----
                           4880 ; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4881 	; #ENR#[1297]cy = 13;
                           4882 ;--- end asm ---
   52F0 C6 0D         [ 2] 4883 	ldb	#13	;,
   52F2 F7 C9 40      [ 5] 4884 	stb	_cy	;, cy
                           4885 ;----- asm -----
                           4886 ; 1898 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4887 	; #ENR#[1298]ch = hp;
                           4888 ;--- end asm ---
   52F5 BE C9 36      [ 6] 4889 	ldx	_hp	;, hp
   52F8 BF C9 63      [ 6] 4890 	stx	_ch	;, ch
                           4891 ;----- asm -----
                           4892 ; 1900 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4893 	; #ENR#[1299]printmessage();
                           4894 ;--- end asm ---
   52FB 8E 39 87      [ 3] 4895 	ldx	#LC23	;,
   52FE BD 5B 7A      [ 8] 4896 	jsr	_printMessage
                           4897 ;----- asm -----
                           4898 ; 1902 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4899 	; #ENR#[1300]pause(small_pause);
                           4900 ;--- end asm ---
   5301 C6 4B         [ 2] 4901 	ldb	#75	;,
   5303 BD 3E 21      [ 8] 4902 	jsr	_pause
                           4903 ;----- asm -----
                           4904 ; 1904 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4905 	; #ENR#[1301]return 1;
                           4906 ;--- end asm ---
   5306 16 00 5F      [ 5] 4907 	lbra	L222	;
   5309                    4908 L210:
   5309 E6 6E         [ 5] 4909 	ldb	14,s	;, spellSelect
   530B C1 04         [ 2] 4910 	cmpb	#4	;cmpqi:	;,
   530D 26 0F         [ 3] 4911 	bne	L214	;
                           4912 ;----- asm -----
                           4913 ; 1911 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4914 	; #ENR#[1307]printmessage();
                           4915 ;--- end asm ---
   530F 8E 42 32      [ 3] 4916 	ldx	#LC41	;,
   5312 BD 5B 7A      [ 8] 4917 	jsr	_printMessage
                           4918 ;----- asm -----
                           4919 ; 1913 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4920 	; #ENR#[1308]ch = hp;
                           4921 ;--- end asm ---
   5315 BE C9 36      [ 6] 4922 	ldx	_hp	;, hp
   5318 BF C9 63      [ 6] 4923 	stx	_ch	;, ch
                           4924 ;----- asm -----
                           4925 ; 1915 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4926 	; #ENR#[1309]return 1;
                           4927 ;--- end asm ---
   531B 16 00 4A      [ 5] 4928 	lbra	L222	;
   531E                    4929 L214:
   531E E6 6E         [ 5] 4930 	ldb	14,s	;, spellSelect
   5320 C1 05         [ 2] 4931 	cmpb	#5	;cmpqi:	;,
   5322 10 26 00 32   [ 6] 4932 	lbne	L120	;
                           4933 ;----- asm -----
                           4934 ; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4935 	; #ENR#[1315]printmessage();
                           4936 ;--- end asm ---
   5326 8E 46 33      [ 3] 4937 	ldx	#LC97	;,
   5329 BD 5B 7A      [ 8] 4938 	jsr	_printMessage
                           4939 ;----- asm -----
                           4940 ; 1924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4941 	; #ENR#[1316]if (!incombat) goto nocombatspell;
                           4942 ;--- end asm ---
   532C 6D 65         [ 7] 4943 	tst	5,s	; inCombat
   532E 27 2D         [ 3] 4944 	beq	L109	;
                           4945 ;----- asm -----
                           4946 ; 1926 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4947 	; #ENR#[1317]pause(small_pause);
                           4948 ;--- end asm ---
   5330 C6 4B         [ 2] 4949 	ldb	#75	;,
   5332 BD 3E 21      [ 8] 4950 	jsr	_pause
                           4951 ;----- asm -----
                           4952 ; 1932 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4953 	; #ENR#[1322]_fs(, mo[m]);
                           4954 ;--- end asm ---
   5335 F6 C9 77      [ 5] 4955 	ldb	_m	;, m
   5338 1D            [ 2] 4956 	sex		;extendqihi2: R:b -> R:d	;,
   5339 ED E4         [ 5] 4957 	std	,s	;,
   533B 58            [ 2] 4958 	aslb	;
   533C 49            [ 2] 4959 	rola	;
   533D 1F 01         [ 6] 4960 	tfr	d,x	;, tmp359
   533F AE 89 01 24   [ 9] 4961 	ldx	_mo,x	;, mo
   5343 AF E3         [ 8] 4962 	stx	,--s	;,
   5345 8E 45 90      [ 3] 4963 	ldx	#LC89	;,
   5348 BD 5C 59      [ 8] 4964 	jsr	__fs
                           4965 ;----- asm -----
                           4966 ; 1934 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4967 	; #ENR#[1323]printmessage(stringbuffer40);
                           4968 ;--- end asm ---
   534B 8E C8 BF      [ 3] 4969 	ldx	#_stringBuffer40	;,
   534E BD 5B 7A      [ 8] 4970 	jsr	_printMessage
                           4971 ;----- asm -----
                           4972 ; 1936 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4973 	; #ENR#[1324]return 6;
                           4974 ;--- end asm ---
   5351                    4975 L228:
   5351 C6 06         [ 2] 4976 	ldb	#6	; D.3520,
   5353                    4977 L223:
   5353 32 62         [ 5] 4978 	leas	2,s	;,,
   5355 16 00 45      [ 5] 4979 	lbra	L100	;
   5358                    4980 L120:
                           4981 ;----- asm -----
                           4982 ; 1941 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4983 	; #ENR#[1328]return 2;
                           4984 ;--- end asm ---
   5358                    4985 L225:
   5358 C6 02         [ 2] 4986 	ldb	#2	; D.3520,
   535A 16 00 40      [ 5] 4987 	lbra	L100	;
   535D                    4988 L109:
                           4989 ;----- asm -----
                           4990 ; 1946 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4991 	; #ENR#[1331]printmessage();
                           4992 ;--- end asm ---
   535D 8E 46 58      [ 3] 4993 	ldx	#LC98	;,
   5360 BD 5B 7A      [ 8] 4994 	jsr	_printMessage
                           4995 ;----- asm -----
                           4996 ; 1948 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4997 	; #ENR#[1332]pause(small_pause);
                           4998 ;--- end asm ---
   5363 C6 4B         [ 2] 4999 	ldb	#75	;,
   5365 BD 3E 21      [ 8] 5000 	jsr	_pause
                           5001 ;----- asm -----
                           5002 ; 1950 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5003 	; #ENR#[1333]return 1;
                           5004 ;--- end asm ---
   5368                    5005 L222:
   5368 C6 01         [ 2] 5006 	ldb	#1	; D.3520,
   536A 16 00 30      [ 5] 5007 	lbra	L100	;
   536D                    5008 L107:
                           5009 ;----- asm -----
                           5010 ; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5011 	; #ENR#[1335]if (!incombat) goto nocombatspell;
                           5012 ;--- end asm ---
   536D 6D 65         [ 7] 5013 	tst	5,s	; inCombat
   536F 27 EC         [ 3] 5014 	beq	L109	;
                           5015 ;----- asm -----
                           5016 ; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5017 	; #ENR#[1336]_fi_s(, (unsigned int) tmp);
                           5018 ;--- end asm ---
   5371 F6 C8 FE      [ 5] 5019 	ldb	_tmp	;, tmp
   5374 8E 46 78      [ 3] 5020 	ldx	#LC99	;,
   5377 BD 5C C6      [ 8] 5021 	jsr	__fi_s
                           5022 ;----- asm -----
                           5023 ; 1958 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5024 	; #ENR#[1337]printmessage(stringbuffer40);
                           5025 ;--- end asm ---
   537A 8E C8 BF      [ 3] 5026 	ldx	#_stringBuffer40	;,
   537D BD 5B 7A      [ 8] 5027 	jsr	_printMessage
                           5028 ;----- asm -----
                           5029 ; 1960 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5030 	; #ENR#[1338]mh = mh -tmp;
                           5031 ;--- end asm ---
   5380 F6 C8 FE      [ 5] 5032 	ldb	_tmp	;, tmp
   5383 1D            [ 2] 5033 	sex		;extendqihi2: R:b -> R:d	;,
   5384 1F 03         [ 6] 5034 	tfr	d,u	;, tmp
   5386 BE C9 78      [ 6] 5035 	ldx	_mh	; mh, mh
   5389 1F 10         [ 6] 5036 	tfr	x,d	; mh,
   538B 34 40         [ 6] 5037 	pshs	u	;subhi: R:d -= R:u	; tmp,
   538D A3 E1         [ 9] 5038 	subd	,s++	;
   538F FD C9 78      [ 6] 5039 	std	_mh	; mh.96, mh
                           5040 ;----- asm -----
                           5041 ; 1962 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5042 	; #ENR#[1339]if (mh <0) return 3;
                           5043 ;--- end asm ---
   5392 10 83 00 00   [ 5] 5044 	cmpd	#0	; mh.96
   5396 2D 03         [ 3] 5045 	blt	L170	;
                           5046 ;----- asm -----
                           5047 ; 1964 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5048 	; #ENR#[1340]return 1;
                           5049 ;--- end asm ---
   5398 16 FF CD      [ 5] 5050 	lbra	L222	;
   539B                    5051 L170:
   539B C6 03         [ 2] 5052 	ldb	#3	; D.3520,
   539D                    5053 L100:
   539D 32 E8 1A      [ 5] 5054 	leas	26,s	;,,
   53A0 35 E0         [ 8] 5055 	puls	y,u,pc	;
   53A2                    5056 LC100:
   53A2 59 4F 55 20 57 45  5057 	.ascii	"YOU WENT UP A LEVEL!\0"
        4E 54 20 55 50 20
        41 20 4C 45 56 45
        4C 21 00
   53B7                    5058 LC101:
   53B7 59 4F 55 20 47 41  5059 	.ascii	"YOU GAIN % HIT POINTS\0"
        49 4E 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   53CD                    5060 LC102:
   53CD 59 4F 55 20 47 4F  5061 	.ascii	"YOU GO DOWN A LEVEL!\0"
        20 44 4F 57 4E 20
        41 20 4C 45 56 45
        4C 21 00
   53E2                    5062 LC103:
   53E2 59 4F 55 20 4C 4F  5063 	.ascii	"YOU LOSE % HIT POINTS\0"
        53 45 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
                           5064 	.globl	_checkXP
   53F8                    5065 _checkXP:
   53F8 34 60         [ 7] 5066 	pshs	y,u	;
   53FA 32 70         [ 5] 5067 	leas	-16,s	;,,
                           5068 ;----- asm -----
                           5069 ; 1985 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5070 	; #ENR#[1360]unsigned long long int t = ull(1000)*ull(ull(2)<<(lv-1));
                           5071 ;--- end asm ---
   53FC F6 C9 38      [ 5] 5072 	ldb	_lv	;, lv
                           5073 ;----- asm -----
                           5074 ; 1988 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5075 	; #ENR#[1362]if (ex >= t)
                           5076 ;--- end asm ---
   53FF FE C9 39      [ 6] 5077 	ldu	_ex	; ex.98, ex
   5402 10 BE C9 3B   [ 7] 5078 	ldy	_ex+2	; ex.98, ex
   5406 5A            [ 2] 5079 	decb	;
   5407 E7 61         [ 5] 5080 	stb	1,s	;, lv.97
   5409 4F            [ 2] 5081 	clra		;zero_extendqihi: R:b -> R:d	;,
   540A 6C 61         [ 7] 5082 	inc	1,s	; lv.97
   540C 34 06         [ 7] 5083 	pshs	d	; tmp45
   540E 32 7C         [ 5] 5084 	leas	-4,s	;,,
   5410 CC 00 00      [ 3] 5085 	ldd	#0	;,
   5413 ED E4         [ 5] 5086 	std	,s	;,
   5415 CC 00 02      [ 3] 5087 	ldd	#2	;,
   5418 ED 62         [ 6] 5088 	std	2,s	;,
   541A 30 E8 12      [ 5] 5089 	leax	18,s	;,,
   541D BD 72 66      [ 8] 5090 	jsr	___ashlsi3
   5420 32 7E         [ 5] 5091 	leas	-2,s	;,,
   5422 CC 00 00      [ 3] 5092 	ldd	#0	;,
   5425 ED 64         [ 6] 5093 	std	4,s	;,
   5427 8E 03 E8      [ 3] 5094 	ldx	#1000	;,
   542A AF 66         [ 6] 5095 	stx	6,s	;,
   542C EC E8 14      [ 6] 5096 	ldd	20,s	;,
   542F ED E4         [ 5] 5097 	std	,s	;,
   5431 AE E8 16      [ 6] 5098 	ldx	22,s	;,
   5434 AF 62         [ 6] 5099 	stx	2,s	;,
   5436 30 E8 10      [ 5] 5100 	leax	16,s	;,,
   5439 BD 79 4C      [ 8] 5101 	jsr	___mulsi3
   543C 32 68         [ 5] 5102 	leas	8,s	;,,
   543E AE 68         [ 6] 5103 	ldx	8,s	; tmp89,
   5440 EC 6A         [ 6] 5104 	ldd	10,s	; tmp90,
   5442 34 40         [ 6] 5105 	pshs	u	;cmphi: R:u with R:x	; ex.98, tmp89
   5444 AC E1         [ 9] 5106 	cmpx	,s++	;cmphi:	; tmp89
   5446 10 22 00 BE   [ 6] 5107 	lbhi	L230	;
   544A 26 09         [ 3] 5108 	bne	L243	;
   544C 34 20         [ 6] 5109 	pshs	y	;cmphi: R:y with R:d	; ex.98, tmp90
   544E 10 A3 E1      [10] 5110 	cmpd	,s++	;cmphi:	; tmp90
   5451 10 22 00 B3   [ 6] 5111 	lbhi	L230	;
   5455                    5112 L243:
                           5113 ;----- asm -----
                           5114 ; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5115 	; #ENR#[1364]printmessage();
                           5116 ;--- end asm ---
   5455 8E 53 A2      [ 3] 5117 	ldx	#LC100	;,
   5458 BD 5B 7A      [ 8] 5118 	jsr	_printMessage
                           5119 ;----- asm -----
                           5120 ; 1993 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5121 	; #ENR#[1365]lv = lv +1;
                           5122 ;--- end asm ---
   545B F6 C9 38      [ 5] 5123 	ldb	_lv	;, lv
   545E E7 E4         [ 4] 5124 	stb	,s	;, lv.517
   5460 5C            [ 2] 5125 	incb	;
   5461 F7 C9 38      [ 5] 5126 	stb	_lv	;, lv
                           5127 ;----- asm -----
                           5128 ; 1995 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5129 	; #ENR#[1366]t = ull(1000)*ull(ull(2)<<(lv-1));
                           5130 ;--- end asm ---
   5464 E6 E4         [ 4] 5131 	ldb	,s	;, lv.517
   5466 4F            [ 2] 5132 	clra		;zero_extendqihi: R:b -> R:d	;,
   5467 34 06         [ 7] 5133 	pshs	d	; lv.517
   5469 32 7C         [ 5] 5134 	leas	-4,s	;,,
   546B CC 00 00      [ 3] 5135 	ldd	#0	;,
   546E ED E4         [ 5] 5136 	std	,s	;,
   5470 CC 00 02      [ 3] 5137 	ldd	#2	;,
   5473 ED 62         [ 6] 5138 	std	2,s	;,
   5475 30 E8 12      [ 5] 5139 	leax	18,s	;,,
   5478 BD 72 66      [ 8] 5140 	jsr	___ashlsi3
   547B 32 7E         [ 5] 5141 	leas	-2,s	;,,
   547D CC 00 00      [ 3] 5142 	ldd	#0	;,
   5480 ED 64         [ 6] 5143 	std	4,s	;,
   5482 8E 03 E8      [ 3] 5144 	ldx	#1000	;,
   5485 AF 66         [ 6] 5145 	stx	6,s	;,
   5487 EC E8 14      [ 6] 5146 	ldd	20,s	;,
   548A ED E4         [ 5] 5147 	std	,s	;,
   548C AE E8 16      [ 6] 5148 	ldx	22,s	;,
   548F AF 62         [ 6] 5149 	stx	2,s	;,
   5491 30 E8 10      [ 5] 5150 	leax	16,s	;,,
   5494 BD 79 4C      [ 8] 5151 	jsr	___mulsi3
   5497 32 68         [ 5] 5152 	leas	8,s	;,,
   5499 EC 68         [ 6] 5153 	ldd	8,s	;,
   549B ED 64         [ 6] 5154 	std	4,s	;, t.520
   549D AE 6A         [ 6] 5155 	ldx	10,s	;,
   549F AF 66         [ 6] 5156 	stx	6,s	;, t.520
                           5157 ;----- asm -----
                           5158 ; 1997 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5159 	; #ENR#[1367]tmp = (signed int) (randmax( s[con] ) + 1);
                           5160 ;--- end asm ---
   54A1 F6 C9 48      [ 5] 5161 	ldb	_s+3	;, s
   54A4 BD 5F 2A      [ 8] 5162 	jsr	_RandMax
   54A7 5C            [ 2] 5163 	incb	;
   54A8 E7 62         [ 5] 5164 	stb	2,s	;, D.3698
   54AA F7 C8 FE      [ 5] 5165 	stb	_tmp	;, tmp
                           5166 ;----- asm -----
                           5167 ; 2001 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5168 	; #ENR#[1370]ch += tmp;
                           5169 ;--- end asm ---
   54AD 1D            [ 2] 5170 	sex		;extendqihi2: R:b -> R:d	;,
   54AE 1F 03         [ 6] 5171 	tfr	d,u	;, D.3702
   54B0 FC C9 63      [ 6] 5172 	ldd	_ch	;, ch
   54B3 30 CB         [ 8] 5173 	leax	d,u	;,, D.3702
   54B5 BF C9 63      [ 6] 5174 	stx	_ch	;, ch
                           5175 ;----- asm -----
                           5176 ; 2003 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5177 	; #ENR#[1371]hp += (long signed int) tmp;
                           5178 ;--- end asm ---
   54B8 1F 30         [ 6] 5179 	tfr	u,d	; D.3702,
   54BA F3 C9 36      [ 7] 5180 	addd	_hp; addhi3,3	;, hp
   54BD FD C9 36      [ 6] 5181 	std	_hp	;, hp
                           5182 ;----- asm -----
                           5183 ; 2005 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5184 	; #ENR#[1372]if (ex>t) ex = t-1;
                           5185 ;--- end asm ---
   54C0 AE 64         [ 6] 5186 	ldx	4,s	;, t.520
   54C2 BC C9 39      [ 7] 5187 	cmpx	_ex	;cmphi:(R)	;, ex
   54C5 25 09         [ 3] 5188 	blo	L244	;
   54C7 26 18         [ 3] 5189 	bne	L232	;
   54C9 AE 66         [ 6] 5190 	ldx	6,s	;, t.520
   54CB BC C9 3B      [ 7] 5191 	cmpx	_ex+2	;cmphi:(R)	;, ex
   54CE 24 11         [ 3] 5192 	bhs	L232	;
   54D0                    5193 L244:
   54D0 EC 66         [ 6] 5194 	ldd	6,s	;, t.520
   54D2 C3 FF FF      [ 4] 5195 	addd	#-1	;,
   54D5 FD C9 3B      [ 6] 5196 	std	_ex+2	;, ex
   54D8 EC 64         [ 6] 5197 	ldd	4,s	;, t.520
   54DA C9 FF         [ 2] 5198 	adcb	#-1	;
   54DC 89 FF         [ 2] 5199 	adca	#-1	;
   54DE FD C9 39      [ 6] 5200 	std	_ex	;, ex
   54E1                    5201 L232:
                           5202 ;----- asm -----
                           5203 ; 2010 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5204 	; #ENR#[1376]cs = cs + lv;
                           5205 ;--- end asm ---
   54E1 F6 C9 38      [ 5] 5206 	ldb	_lv	;, lv
   54E4 4F            [ 2] 5207 	clra		;zero_extendqihi: R:b -> R:d	;,
   54E5 1F 03         [ 6] 5208 	tfr	d,u	;, D.3708
   54E7 FC C9 65      [ 6] 5209 	ldd	_cs	;, cs
   54EA 30 CB         [ 8] 5210 	leax	d,u	;,, D.3708
   54EC BF C9 65      [ 6] 5211 	stx	_cs	;, cs
                           5212 ;----- asm -----
                           5213 ; 2012 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5214 	; #ENR#[1377]su = su +lv;
                           5215 ;--- end asm ---
   54EF 1F 30         [ 6] 5216 	tfr	u,d	; D.3708,
   54F1 F3 C9 3D      [ 7] 5217 	addd	_su; addhi3,3	;, su
   54F4 FD C9 3D      [ 6] 5218 	std	_su	;, su
                           5219 ;----- asm -----
                           5220 ; 2015 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5221 	; #ENR#[1379]_fi_s(, (unsigned int)tmp);
                           5222 ;--- end asm ---
   54F7 E6 62         [ 5] 5223 	ldb	2,s	;, D.3698
   54F9 8E 53 B7      [ 3] 5224 	ldx	#LC101	;,
   54FC BD 5C C6      [ 8] 5225 	jsr	__fi_s
                           5226 ;----- asm -----
                           5227 ; 2017 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5228 	; #ENR#[1380]printmessage(stringbuffer40);
                           5229 ;--- end asm ---
   54FF 8E C8 BF      [ 3] 5230 	ldx	#_stringBuffer40	;,
   5502 BD 5B 7A      [ 8] 5231 	jsr	_printMessage
                           5232 ;----- asm -----
                           5233 ; 2019 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5234 	; #ENR#[1381]return;
                           5235 ;--- end asm ---
   5505 16 00 DA      [ 5] 5236 	lbra	L242	;
   5508                    5237 L230:
                           5238 ;----- asm -----
                           5239 ; 2026 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5240 	; #ENR#[1387]if (lv >1)
                           5241 ;--- end asm ---
   5508 E6 61         [ 5] 5242 	ldb	1,s	;, lv.97
   550A C1 01         [ 2] 5243 	cmpb	#1	;cmpqi:	;,
   550C 22 08         [ 3] 5244 	bhi	L235	;
   550E 8E 00 00      [ 3] 5245 	ldx	#0	; t,
   5511 CC 00 00      [ 3] 5246 	ldd	#0	; t,
   5514 20 45         [ 3] 5247 	bra	L236	;
   5516                    5248 L235:
   5516 E6 61         [ 5] 5249 	ldb	1,s	;, lv.97
   5518 CB FE         [ 2] 5250 	addb	#-2	;,
   551A E7 61         [ 5] 5251 	stb	1,s	;, lv.97
   551C 4F            [ 2] 5252 	clra		;zero_extendqihi: R:b -> R:d	;,
   551D 1F 01         [ 6] 5253 	tfr	d,x	;, tmp65
   551F E6 61         [ 5] 5254 	ldb	1,s	;, lv.97
   5521 CB 02         [ 2] 5255 	addb	#2	;,
   5523 E7 61         [ 5] 5256 	stb	1,s	;, lv.97
   5525 34 10         [ 6] 5257 	pshs	x	; tmp65
   5527 32 7C         [ 5] 5258 	leas	-4,s	;,,
   5529 CC 00 00      [ 3] 5259 	ldd	#0	;,
   552C ED E4         [ 5] 5260 	std	,s	;,
   552E CC 00 02      [ 3] 5261 	ldd	#2	;,
   5531 ED 62         [ 6] 5262 	std	2,s	;,
   5533 30 E8 12      [ 5] 5263 	leax	18,s	;,,
   5536 BD 72 66      [ 8] 5264 	jsr	___ashlsi3
   5539 32 7E         [ 5] 5265 	leas	-2,s	;,,
   553B CC 00 00      [ 3] 5266 	ldd	#0	;,
   553E ED 64         [ 6] 5267 	std	4,s	;,
   5540 8E 03 E8      [ 3] 5268 	ldx	#1000	;,
   5543 AF 66         [ 6] 5269 	stx	6,s	;,
   5545 EC E8 14      [ 6] 5270 	ldd	20,s	;,
   5548 ED E4         [ 5] 5271 	std	,s	;,
   554A AE E8 16      [ 6] 5272 	ldx	22,s	;,
   554D AF 62         [ 6] 5273 	stx	2,s	;,
   554F 30 E8 10      [ 5] 5274 	leax	16,s	;,,
   5552 BD 79 4C      [ 8] 5275 	jsr	___mulsi3
   5555 32 68         [ 5] 5276 	leas	8,s	;,,
   5557 AE 68         [ 6] 5277 	ldx	8,s	; t,
   5559 EC 6A         [ 6] 5278 	ldd	10,s	; t,
   555B                    5279 L236:
                           5280 ;----- asm -----
                           5281 ; 2033 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5282 	; #ENR#[1393]if (ex>=t) return;
                           5283 ;--- end asm ---
   555B 34 40         [ 6] 5284 	pshs	u	;cmphi: R:u with R:x	; ex.98, t
   555D AC E1         [ 9] 5285 	cmpx	,s++	;cmphi:	; t
   555F 22 0D         [ 3] 5286 	bhi	L245	;
   5561 10 26 00 7D   [ 6] 5287 	lbne	L242	;
   5565 34 20         [ 6] 5288 	pshs	y	;cmphi: R:y with R:d	; ex.98, t
   5567 10 A3 E1      [10] 5289 	cmpd	,s++	;cmphi:	; t
   556A 10 23 00 74   [ 6] 5290 	lbls	L242	;
   556E                    5291 L245:
   556E E6 61         [ 5] 5292 	ldb	1,s	;, lv.97
   5570 4F            [ 2] 5293 	clra		;zero_extendqihi: R:b -> R:d	;,
   5571 1F 01         [ 6] 5294 	tfr	d,x	;, temp.523
   5573 FC C9 65      [ 6] 5295 	ldd	_cs	; cs.524, cs
   5576 34 06         [ 7] 5296 	pshs	d	;cmphi: R:d with R:x	; cs.524, temp.523
   5578 AC E1         [ 9] 5297 	cmpx	,s++	;cmphi:	; temp.523
   557A 23 05         [ 3] 5298 	bls	L238	;
   557C CC 00 00      [ 3] 5299 	ldd	#0	;,
   557F 20 04         [ 3] 5300 	bra	L246	;
   5581                    5301 L238:
   5581 34 10         [ 6] 5302 	pshs	x	;subhi: R:d -= R:x	; temp.523, tmp75
   5583 A3 E1         [ 9] 5303 	subd	,s++	; tmp75
   5585                    5304 L246:
   5585 FD C9 65      [ 6] 5305 	std	_cs	; tmp75, cs
                           5306 ;----- asm -----
                           5307 ; 2039 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5308 	; #ENR#[1398]su = su -lv;
                           5309 ;--- end asm ---
   5588 FC C9 3D      [ 6] 5310 	ldd	_su	; su, su
   558B 34 10         [ 6] 5311 	pshs	x	;subhi: R:d -= R:x	; temp.523, tmp77
   558D A3 E1         [ 9] 5312 	subd	,s++	; tmp77
   558F FD C9 3D      [ 6] 5313 	std	_su	; tmp77, su
                           5314 ;----- asm -----
                           5315 ; 2043 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5316 	; #ENR#[1401]printmessage();
                           5317 ;--- end asm ---
   5592 8E 53 CD      [ 3] 5318 	ldx	#LC102	;,
   5595 BD 5B 7A      [ 8] 5319 	jsr	_printMessage
                           5320 ;----- asm -----
                           5321 ; 2045 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5322 	; #ENR#[1402]lv = lv -1;
                           5323 ;--- end asm ---
   5598 7A C9 38      [ 7] 5324 	dec	_lv	; lv
                           5325 ;----- asm -----
                           5326 ; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5327 	; #ENR#[1403]tmp = (signed int)(randmax(s[con])+1);
                           5328 ;--- end asm ---
   559B F6 C9 48      [ 5] 5329 	ldb	_s+3	;, s
   559E BD 5F 2A      [ 8] 5330 	jsr	_RandMax
   55A1 5C            [ 2] 5331 	incb	;
   55A2 E7 63         [ 5] 5332 	stb	3,s	;, D.3719
   55A4 F7 C8 FE      [ 5] 5333 	stb	_tmp	;, tmp
                           5334 ;----- asm -----
                           5335 ; 2055 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5336 	; #ENR#[1410]if ((ch<tmp) || (lv == 0))
                           5337 ;--- end asm ---
   55A7 FE C9 63      [ 6] 5338 	ldu	_ch	; ch.529, ch
   55AA 1D            [ 2] 5339 	sex		;extendqihi2: R:b -> R:d	;,
   55AB 1F 01         [ 6] 5340 	tfr	d,x	;, temp.530
   55AD 34 06         [ 7] 5341 	pshs	d	;cmphi: R:d with R:u	; temp.530, ch.529
   55AF 11 A3 E1      [10] 5342 	cmpu	,s++	;cmphi:	; ch.529
   55B2 2D 05         [ 3] 5343 	blt	L240	;
   55B4 7D C9 38      [ 7] 5344 	tst	_lv	; lv
   55B7 26 08         [ 3] 5345 	bne	L241	;
   55B9                    5346 L240:
                           5347 ;----- asm -----
                           5348 ; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5349 	; #ENR#[1412]ch=0;
                           5350 ;--- end asm ---
   55B9 CC 00 00      [ 3] 5351 	ldd	#0	;,
   55BC FD C9 63      [ 6] 5352 	std	_ch	;, ch
                           5353 ;----- asm -----
                           5354 ; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5355 	; #ENR#[1413]return;
                           5356 ;--- end asm ---
   55BF 20 21         [ 3] 5357 	bra	L242	;
   55C1                    5358 L241:
                           5359 ;----- asm -----
                           5360 ; 2063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5361 	; #ENR#[1415]ch = ch -tmp;
                           5362 ;--- end asm ---
   55C1 1F 30         [ 6] 5363 	tfr	u,d	; ch.529, tmp80
   55C3 34 10         [ 6] 5364 	pshs	x	;subhi: R:d -= R:x	; temp.530, tmp80
   55C5 A3 E1         [ 9] 5365 	subd	,s++	; tmp80
   55C7 FD C9 63      [ 6] 5366 	std	_ch	; tmp80, ch
                           5367 ;----- asm -----
                           5368 ; 2065 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5369 	; #ENR#[1416]hp = hp -(long signed int)tmp;
                           5370 ;--- end asm ---
   55CA FC C9 36      [ 6] 5371 	ldd	_hp	; hp, hp
   55CD 34 10         [ 6] 5372 	pshs	x	;subhi: R:d -= R:x	; temp.530, tmp82
   55CF A3 E1         [ 9] 5373 	subd	,s++	; tmp82
   55D1 FD C9 36      [ 6] 5374 	std	_hp	; tmp82, hp
                           5375 ;----- asm -----
                           5376 ; 2067 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5377 	; #ENR#[1417]_fi_s(, (unsigned int)tmp);
                           5378 ;--- end asm ---
   55D4 E6 63         [ 5] 5379 	ldb	3,s	;, D.3719
   55D6 8E 53 E2      [ 3] 5380 	ldx	#LC103	;,
   55D9 BD 5C C6      [ 8] 5381 	jsr	__fi_s
                           5382 ;----- asm -----
                           5383 ; 2069 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5384 	; #ENR#[1418]printmessage(stringbuffer40);
                           5385 ;--- end asm ---
   55DC 8E C8 BF      [ 3] 5386 	ldx	#_stringBuffer40	;,
   55DF BD 5B 7A      [ 8] 5387 	jsr	_printMessage
                           5388 ;----- asm -----
                           5389 ; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5390 	; #ENR#[1419]return;
                           5391 ;--- end asm ---
   55E2                    5392 L242:
   55E2 32 E8 10      [ 5] 5393 	leas	16,s	;,,
   55E5 35 E0         [ 8] 5394 	puls	y,u,pc	;
   55E7                    5395 LC104:
   55E7 59 4F 55 20 47 41  5396 	.ascii	"YOU GAINED % EXPERIENCE POINTS\0"
        49 4E 45 44 20 25
        20 45 58 50 45 52
        49 45 4E 43 45 20
        50 4F 49 4E 54 53
        00
   5606                    5397 LC105:
   5606 59 4F 55 20 4C 4F  5398 	.ascii	"YOU LOST % EXPERIENCE POINTS\0"
        53 54 20 25 20 45
        58 50 45 52 49 45
        4E 43 45 20 50 4F
        49 4E 54 53 00
                           5399 	.globl	_randomXP
   5623                    5400 _randomXP:
   5623 32 70         [ 5] 5401 	leas	-16,s	;,,
                           5402 ;----- asm -----
                           5403 ; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5404 	; #ENR#[1433]ltmp = (signed long int) ( ul(randmax(cz)+1)*ul(500));
                           5405 ;--- end asm ---
   5625 F6 C9 67      [ 5] 5406 	ldb	_cz	;, cz
   5628 BD 5F 2A      [ 8] 5407 	jsr	_RandMax
   562B 5C            [ 2] 5408 	incb	; D.3728
   562C 4F            [ 2] 5409 	clra		;zero_extendqihi: R:b -> R:d	; D.3728,
   562D ED 6A         [ 6] 5410 	std	10,s	;,
   562F 58            [ 2] 5411 	aslb	;
   5630 49            [ 2] 5412 	rola	;
   5631 58            [ 2] 5413 	aslb	;
   5632 49            [ 2] 5414 	rola	;
   5633 ED 68         [ 6] 5415 	std	8,s	;,
   5635 58            [ 2] 5416 	aslb	;
   5636 49            [ 2] 5417 	rola	;
   5637 58            [ 2] 5418 	aslb	;
   5638 49            [ 2] 5419 	rola	;
   5639 58            [ 2] 5420 	aslb	;
   563A 49            [ 2] 5421 	rola	;
   563B 58            [ 2] 5422 	aslb	;
   563C 49            [ 2] 5423 	rola	;
   563D 58            [ 2] 5424 	aslb	;
   563E 49            [ 2] 5425 	rola	;
   563F A3 68         [ 7] 5426 	subd	8,s	;subhi: R:d -= 8,s	; tmp35,
   5641 E3 6A         [ 7] 5427 	addd	10,s; addhi3,3	; tmp36,
   5643 58            [ 2] 5428 	aslb	;
   5644 49            [ 2] 5429 	rola	;
   5645 58            [ 2] 5430 	aslb	;
   5646 49            [ 2] 5431 	rola	;
   5647 FD C9 02      [ 6] 5432 	std	_ltmp	; tmp36, ltmp
                           5433 ;----- asm -----
                           5434 ; 2088 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5435 	; #ENR#[1434]if (randmax(2) == 1)
                           5436 ;--- end asm ---
   564A C6 02         [ 2] 5437 	ldb	#2	;,
   564C BD 5F 2A      [ 8] 5438 	jsr	_RandMax
   564F C1 01         [ 2] 5439 	cmpb	#1	;cmpqi:	; D.3733,
   5651 26 31         [ 3] 5440 	bne	L248	;
                           5441 ;----- asm -----
                           5442 ; 2092 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5443 	; #ENR#[1437]_fl_s(,  ul(ltmp));
                           5444 ;--- end asm ---
   5653 BE C9 02      [ 6] 5445 	ldx	_ltmp	;, ltmp
   5656 AF E3         [ 8] 5446 	stx	,--s	;,
   5658 8E 55 E7      [ 3] 5447 	ldx	#LC104	;,
   565B BD 5F 6F      [ 8] 5448 	jsr	__fl_s
                           5449 ;----- asm -----
                           5450 ; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5451 	; #ENR#[1438]ex += ull(ltmp);
                           5452 ;--- end asm ---
   565E FC C9 02      [ 6] 5453 	ldd	_ltmp	;, ltmp
   5661 ED 68         [ 6] 5454 	std	8,s	;,
   5663 1F 89         [ 6] 5455 	tfr	a,b	;,
   5665 1D            [ 2] 5456 	sex		;extendqihi2: R:b -> R:d	;,
   5666 59            [ 2] 5457 	rolb	;
   5667 59            [ 2] 5458 	rolb	;
   5668 C4 01         [ 2] 5459 	andb	#1	;,
   566A 50            [ 2] 5460 	negb	;
   566B ED 66         [ 6] 5461 	std	6,s	;,
   566D FC C9 3B      [ 6] 5462 	ldd	_ex+2	;, ex
   5670 E3 68         [ 7] 5463 	addd	8,s	;,
   5672 FD C9 3B      [ 6] 5464 	std	_ex+2	;, ex
   5675 FC C9 39      [ 6] 5465 	ldd	_ex	;, ex
   5678 E9 67         [ 5] 5466 	adcb	7,s	;
   567A A9 66         [ 5] 5467 	adca	6,s	;
   567C FD C9 39      [ 6] 5468 	std	_ex	;, ex
   567F 32 62         [ 5] 5469 	leas	2,s	;,,
   5681 16 00 56      [ 5] 5470 	lbra	L249	;
   5684                    5471 L248:
                           5472 ;----- asm -----
                           5473 ; 2100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5474 	; #ENR#[1443]_fl_s(, ul(ltmp));
                           5475 ;--- end asm ---
   5684 BE C9 02      [ 6] 5476 	ldx	_ltmp	;, ltmp
   5687 AF E3         [ 8] 5477 	stx	,--s	;,
   5689 8E 56 06      [ 3] 5478 	ldx	#LC105	;,
   568C BD 5F 6F      [ 8] 5479 	jsr	__fl_s
                           5480 ;----- asm -----
                           5481 ; 2102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5482 	; #ENR#[1444]if (ull(lltmp) > ex) ex = 0;
                           5483 ;--- end asm ---
   568F FC C9 39      [ 6] 5484 	ldd	_ex	;, ex
   5692 ED 6E         [ 6] 5485 	std	14,s	;, ex.541
   5694 BE C9 3B      [ 6] 5486 	ldx	_ex+2	;, ex
   5697 AF E8 10      [ 6] 5487 	stx	16,s	;, ex.541
   569A 32 62         [ 5] 5488 	leas	2,s	;,,
   569C EC 6C         [ 6] 5489 	ldd	12,s	;, ex.541
   569E 10 B3 C9 04   [ 8] 5490 	cmpd	_lltmp	;cmphi:(R)	;, lltmp
   56A2 25 0A         [ 3] 5491 	blo	L253	;
   56A4 26 13         [ 3] 5492 	bne	L250	;
   56A6 EC 6E         [ 6] 5493 	ldd	14,s	;, ex.541
   56A8 10 B3 C9 06   [ 8] 5494 	cmpd	_lltmp+2	;cmphi:(R)	;, lltmp
   56AC 24 0B         [ 3] 5495 	bhs	L250	;
   56AE                    5496 L253:
   56AE CC 00 00      [ 3] 5497 	ldd	#0	;,
   56B1 FD C9 39      [ 6] 5498 	std	_ex	;, ex
   56B4 FD C9 3B      [ 6] 5499 	std	_ex+2	;, ex
   56B7 20 21         [ 3] 5500 	bra	L249	;
   56B9                    5501 L250:
   56B9 BE C9 02      [ 6] 5502 	ldx	_ltmp	;, ltmp
   56BC AF 62         [ 6] 5503 	stx	2,s	;,
   56BE 1F 10         [ 6] 5504 	tfr	x,d	;,
   56C0 1F 89         [ 6] 5505 	tfr	a,b	;,
   56C2 1D            [ 2] 5506 	sex		;extendqihi2: R:b -> R:d	;,
   56C3 59            [ 2] 5507 	rolb	;
   56C4 59            [ 2] 5508 	rolb	;
   56C5 C4 01         [ 2] 5509 	andb	#1	;,
   56C7 50            [ 2] 5510 	negb	;
   56C8 ED E4         [ 5] 5511 	std	,s	;,
   56CA EC 6E         [ 6] 5512 	ldd	14,s	;, ex.541
   56CC A3 62         [ 7] 5513 	subd	2,s	;,
   56CE FD C9 3B      [ 6] 5514 	std	_ex+2	;, ex
   56D1 EC 6C         [ 6] 5515 	ldd	12,s	;, ex.541
   56D3 E2 61         [ 5] 5516 	sbcb	1,s	;
   56D5 A2 E4         [ 4] 5517 	sbca	,s	;
   56D7 FD C9 39      [ 6] 5518 	std	_ex	;, ex
   56DA                    5519 L249:
                           5520 ;----- asm -----
                           5521 ; 2107 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5522 	; #ENR#[1448]printmessage(stringbuffer40);
                           5523 ;--- end asm ---
   56DA 8E C8 BF      [ 3] 5524 	ldx	#_stringBuffer40	;,
   56DD BD 5B 7A      [ 8] 5525 	jsr	_printMessage
                           5526 ;----- asm -----
                           5527 ; 2109 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5528 	; #ENR#[1449]checkxp();
                           5529 ;--- end asm ---
   56E0 BD 53 F8      [ 8] 5530 	jsr	_checkXP
   56E3 32 E8 10      [ 5] 5531 	leas	16,s	;,,
   56E6 39            [ 5] 5532 	rts
                           5533 	.globl	_clearMap
   56E7                    5534 _clearMap:
   56E7 34 40         [ 6] 5535 	pshs	u	;
   56E9 32 7C         [ 5] 5536 	leas	-4,s	;,,
                           5537 ;----- asm -----
                           5538 ; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5539 	; #ENR#[1454]for (unsigned char yy=0;yy<4;yy++)
                           5540 ;--- end asm ---
   56EB 6F 63         [ 7] 5541 	clr	3,s	; yy
   56ED                    5542 L256:
                           5543 ;----- asm -----
                           5544 ; 2118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5545 	; #ENR#[1456]for (unsigned char xx=0;xx<4;xx++)
                           5546 ;--- end asm ---
   56ED E6 63         [ 5] 5547 	ldb	3,s	;, yy
   56EF 4F            [ 2] 5548 	clra		;zero_extendqihi: R:b -> R:d	;,
   56F0 ED E4         [ 5] 5549 	std	,s	;,
   56F2 58            [ 2] 5550 	aslb	;
   56F3 49            [ 2] 5551 	rola	;
   56F4 58            [ 2] 5552 	aslb	;
   56F5 49            [ 2] 5553 	rola	;
   56F6 58            [ 2] 5554 	aslb	;
   56F7 49            [ 2] 5555 	rola	;
   56F8 CE C8 80      [ 3] 5556 	ldu	#_screen	;,
   56FB 30 CB         [ 8] 5557 	leax	d,u	; ivtmp.557, tmp39,
   56FD 6F 62         [ 7] 5558 	clr	2,s	; xx
   56FF                    5559 L255:
                           5560 ;----- asm -----
                           5561 ; 2121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5562 	; #ENR#[1458]screen[yy][xx] = 0xffff;
                           5563 ;--- end asm ---
   56FF CC FF FF      [ 3] 5564 	ldd	#-1	;,
   5702 ED 81         [ 8] 5565 	std	,x++	;, screen
   5704 6C 62         [ 7] 5566 	inc	2,s	; xx
   5706 E6 62         [ 5] 5567 	ldb	2,s	;, xx
   5708 C1 04         [ 2] 5568 	cmpb	#4	;cmpqi:	;,
   570A 26 F3         [ 3] 5569 	bne	L255	;
   570C 6C 63         [ 7] 5570 	inc	3,s	; yy
   570E E6 63         [ 5] 5571 	ldb	3,s	;, yy
   5710 C1 04         [ 2] 5572 	cmpb	#4	;cmpqi:	;,
   5712 26 D9         [ 3] 5573 	bne	L256	;
   5714 32 64         [ 5] 5574 	leas	4,s	;,,
   5716 35 C0         [ 7] 5575 	puls	u,pc	;
                           5576 	.globl	_initVars
   5718                    5577 _initVars:
   5718 34 40         [ 6] 5578 	pshs	u	;
   571A 32 7D         [ 5] 5579 	leas	-3,s	;,,
                           5580 ;----- asm -----
                           5581 ; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5582 	; #ENR#[1465]initfp();
                           5583 ;--- end asm ---
   571C C6 01         [ 2] 5584 	ldb	#1	;,
   571E BD 00 6E      [ 8] 5585 	jsr	_subBank0
                           5586 ;----- asm -----
                           5587 ; 2131 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5588 	; #ENR#[1466]initstring();
                           5589 ;--- end asm ---
   5721 BD 68 6A      [ 8] 5590 	jsr	_initString
                           5591 ;----- asm -----
                           5592 ; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5593 	; #ENR#[1467]lastx=0;
                           5594 ;--- end asm ---
   5724 7F C9 81      [ 7] 5595 	clr	_lastX	; lastX
                           5596 ;----- asm -----
                           5597 ; 2135 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5598 	; #ENR#[1468]lasty=0;
                           5599 ;--- end asm ---
   5727 7F C9 82      [ 7] 5600 	clr	_lastY	; lastY
                           5601 ;----- asm -----
                           5602 ; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5603 	; #ENR#[1469]clearmap();
                           5604 ; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5605 	; #ENR#[1454]for (unsigned char yy=0;yy<4;yy++)
                           5606 ;--- end asm ---
   572A 6F 62         [ 7] 5607 	clr	2,s	; yy
   572C                    5608 L262:
                           5609 ;----- asm -----
                           5610 ; 2118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5611 	; #ENR#[1456]for (unsigned char xx=0;xx<4;xx++)
                           5612 ;--- end asm ---
   572C E6 62         [ 5] 5613 	ldb	2,s	;, yy
   572E 4F            [ 2] 5614 	clra		;zero_extendqihi: R:b -> R:d	;,
   572F ED E4         [ 5] 5615 	std	,s	;,
   5731 58            [ 2] 5616 	aslb	;
   5732 49            [ 2] 5617 	rola	;
   5733 58            [ 2] 5618 	aslb	;
   5734 49            [ 2] 5619 	rola	;
   5735 58            [ 2] 5620 	aslb	;
   5736 49            [ 2] 5621 	rola	;
   5737 CE C8 80      [ 3] 5622 	ldu	#_screen	;,
   573A 30 CB         [ 8] 5623 	leax	d,u	; ivtmp.579, tmp37,
   573C 5F            [ 2] 5624 	clrb	; xx
   573D                    5625 L261:
                           5626 ;----- asm -----
                           5627 ; 2121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5628 	; #ENR#[1458]screen[yy][xx] = 0xffff;
                           5629 ;--- end asm ---
   573D CE FF FF      [ 3] 5630 	ldu	#-1	; tmp38,
   5740 EF 81         [ 8] 5631 	stu	,x++	; tmp38, screen
   5742 5C            [ 2] 5632 	incb	; xx
   5743 C1 04         [ 2] 5633 	cmpb	#4	;cmpqi:	; xx,
   5745 26 F6         [ 3] 5634 	bne	L261	;
   5747 6C 62         [ 7] 5635 	inc	2,s	; yy
   5749 E6 62         [ 5] 5636 	ldb	2,s	;, yy
   574B C1 04         [ 2] 5637 	cmpb	#4	;cmpqi:	;,
   574D 26 DD         [ 3] 5638 	bne	L262	;
                           5639 ;----- asm -----
                           5640 ; 2139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5641 	; #ENR#[1470]fillmap = go_redraw;
                           5642 ;--- end asm ---
   574F C6 7F         [ 2] 5643 	ldb	#127	;,
   5751 F7 C8 FC      [ 5] 5644 	stb	_fillMap	;, fillMap
                           5645 ;----- asm -----
                           5646 ; 2141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5647 	; #ENR#[1471]timer = action_time;
                           5648 ;--- end asm ---
   5754 C6 FA         [ 2] 5649 	ldb	#-6	;,
   5756 F7 C8 A7      [ 5] 5650 	stb	_timer	;, timer
                           5651 ;----- asm -----
                           5652 ; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5653 	; #ENR#[1472]localtimer = action_time;
                           5654 ;--- end asm ---
   5759 F7 C8 A8      [ 5] 5655 	stb	_localTimer	;, localTimer
                           5656 ;----- asm -----
                           5657 ; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5658 	; #ENR#[1473]l = 1;
                           5659 ;--- end asm ---
   575C C6 01         [ 2] 5660 	ldb	#1	;,
   575E F7 C9 80      [ 5] 5661 	stb	_l	;, l
                           5662 ;----- asm -----
                           5663 ; 2148 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5664 	; #ENR#[1475]tmp_hp = -1;
                           5665 ;--- end asm ---
   5761 FF C9 09      [ 6] 5666 	stu	_tmp_hp	; tmp38, tmp_hp
                           5667 ;----- asm -----
                           5668 ; 2150 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5669 	; #ENR#[1476]above = 0;
                           5670 ;--- end asm ---
   5764 7F C8 A0      [ 7] 5671 	clr	_above	; above
                           5672 ;----- asm -----
                           5673 ; 2152 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5674 	; #ENR#[1477]inelevator = 0;
                           5675 ;--- end asm ---
   5767 7F C8 A2      [ 7] 5676 	clr	_inElevator	; inElevator
                           5677 ;----- asm -----
                           5678 ; 2154 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5679 	; #ENR#[1478]elevatory = 0;
                           5680 ;--- end asm ---
   576A 7F C8 A3      [ 7] 5681 	clr	_elevatorY	; elevatorY
                           5682 ;----- asm -----
                           5683 ; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5684 	; #ENR#[1479]lightchange = 0;
                           5685 ;--- end asm ---
   576D 7F C8 A4      [ 7] 5686 	clr	_lightChange	; lightChange
                           5687 ;----- asm -----
                           5688 ; 2158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5689 	; #ENR#[1480]specialaction = 0;
                           5690 ;--- end asm ---
   5770 7F C8 A5      [ 7] 5691 	clr	_specialAction	; specialAction
                           5692 ;----- asm -----
                           5693 ; 2160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5694 	; #ENR#[1481]initsoundno = 0;
                           5695 ;--- end asm ---
   5773 7F C8 A6      [ 7] 5696 	clr	_initSoundNo	; initSoundNo
                           5697 ;----- asm -----
                           5698 ; 2162 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5699 	; #ENR#[1482]sfx_status_1 = 0;
                           5700 ;--- end asm ---
   5776 7F CA CF      [ 7] 5701 	clr	_sfx_status_1	; sfx_status_1
                           5702 ;----- asm -----
                           5703 ; 2165 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5704 	; #ENR#[1484]printdungeon = 1;
                           5705 ;--- end asm ---
   5779 F7 C8 F3      [ 5] 5706 	stb	_printDungeon	;, printDungeon
                           5707 ;----- asm -----
                           5708 ; 2167 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5709 	; #ENR#[1485]m = -1;
                           5710 ;--- end asm ---
   577C 1F 30         [ 6] 5711 	tfr	u,d	; tmp38,
   577E F7 C9 77      [ 5] 5712 	stb	_m	;movlsbqihi: R:d -> _m	; m,
                           5713 ;----- asm -----
                           5714 ; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5715 	; #ENR#[1486]printenvironment = -1;
                           5716 ;--- end asm ---
   5781 F7 C8 F4      [ 5] 5717 	stb	_printEnvironment	;movlsbqihi: R:d -> _printEnvironment	; printEnvironment,
                           5718 ;----- asm -----
                           5719 ; 2171 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5720 	; #ENR#[1487]printcharacter = 1;
                           5721 ;--- end asm ---
   5784 C6 01         [ 2] 5722 	ldb	#1	;,
   5786 F7 C8 F7      [ 5] 5723 	stb	_printCharacter	;, printCharacter
                           5724 ;----- asm -----
                           5725 ; 2173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5726 	; #ENR#[1488]printtreasure = -1;
                           5727 ;--- end asm ---
   5789 1F 30         [ 6] 5728 	tfr	u,d	; tmp38,
   578B F7 C8 F5      [ 5] 5729 	stb	_printTreasure	;movlsbqihi: R:d -> _printTreasure	; printTreasure,
                           5730 ;----- asm -----
                           5731 ; 2176 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5732 	; #ENR#[1490]printfeffect = 0;
                           5733 ;--- end asm ---
   578E 7F C8 F8      [ 7] 5734 	clr	_printfEffect	; printfEffect
                           5735 ;----- asm -----
                           5736 ; 2178 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5737 	; #ENR#[1491]effecttimer = 0;
                           5738 ;--- end asm ---
   5791 7F C8 F9      [ 7] 5739 	clr	_effectTimer	; effectTimer
                           5740 ;----- asm -----
                           5741 ; 2180 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5742 	; #ENR#[1492]effectoffsety = 0;
                           5743 ;--- end asm ---
   5794 7F C8 FA      [ 7] 5744 	clr	_effectOffsetY	; effectOffsetY
                           5745 ;----- asm -----
                           5746 ; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5747 	; #ENR#[1493]effectoffsetx = 0;
                           5748 ;--- end asm ---
   5797 7F C8 FB      [ 7] 5749 	clr	_effectOffsetX	; effectOffsetX
   579A 32 63         [ 5] 5750 	leas	3,s	;,,
   579C 35 C0         [ 7] 5751 	puls	u,pc	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$mainSupport$     0501 GR  |   2 A$mainSupport$     0503 GR
  2 A$mainSupport$     0505 GR  |   2 A$mainSupport$     0507 GR
  2 A$mainSupport$     050A GR  |   2 A$mainSupport$     050D GR
  2 A$mainSupport$     0510 GR  |   2 A$mainSupport$     0513 GR
  2 A$mainSupport$     0515 GR  |   2 A$mainSupport$     0517 GR
  2 A$mainSupport$     051A GR  |   2 A$mainSupport$     051C GR
  2 A$mainSupport$     051E GR  |   2 A$mainSupport$     0521 GR
  2 A$mainSupport$     0523 GR  |   2 A$mainSupport$     0526 GR
  2 A$mainSupport$     0528 GR  |   2 A$mainSupport$     052B GR
  2 A$mainSupport$     052D GR  |   2 A$mainSupport$     0530 GR
  2 A$mainSupport$     0533 GR  |   2 A$mainSupport$     0534 GR
  2 A$mainSupport$     0536 GR  |   2 A$mainSupport$     0538 GR
  2 A$mainSupport$     053B GR  |   2 A$mainSupport$     053E GR
  2 A$mainSupport$     0540 GR  |   2 A$mainSupport$     0543 GR
  2 A$mainSupport$     0545 GR  |   2 A$mainSupport$     0548 GR
  2 A$mainSupport$     054B GR  |   2 A$mainSupport$     054D GR
  2 A$mainSupport$     054F GR  |   2 A$mainSupport$     0551 GR
  2 A$mainSupport$     0554 GR  |   2 A$mainSupport$     0556 GR
  2 A$mainSupport$     0558 GR  |   2 A$mainSupport$     0559 GR
  2 A$mainSupport$     055B GR  |   2 A$mainSupport$     055D GR
  2 A$mainSupport$     055F GR  |   2 A$mainSupport$     0561 GR
  2 A$mainSupport$     0564 GR  |   2 A$mainSupport$     0566 GR
  2 A$mainSupport$     0569 GR  |   2 A$mainSupport$     056C GR
  2 A$mainSupport$     056F GR  |   2 A$mainSupport$     0571 GR
  2 A$mainSupport$     0573 GR  |   2 A$mainSupport$     0576 GR
  2 A$mainSupport$     0579 GR  |   2 A$mainSupport$     057B GR
  2 A$mainSupport$     057C GR  |   2 A$mainSupport$     057E GR
  2 A$mainSupport$     0581 GR  |   2 A$mainSupport$     0584 GR
  2 A$mainSupport$     0586 GR  |   2 A$mainSupport$     0589 GR
  2 A$mainSupport$     058B GR  |   2 A$mainSupport$     058E GR
  2 A$mainSupport$     0590 GR  |   2 A$mainSupport$     0592 GR
  2 A$mainSupport$     0124 GR  |   2 A$mainSupport$     0594 GR
  2 A$mainSupport$     0596 GR  |   2 A$mainSupport$     0598 GR
  2 A$mainSupport$     059A GR  |   2 A$mainSupport$     059C GR
  2 A$mainSupport$     059D GR  |   2 A$mainSupport$     059F GR
  2 A$mainSupport$     05A2 GR  |   2 A$mainSupport$     05A5 GR
  2 A$mainSupport$     05A7 GR  |   2 A$mainSupport$     05AA GR
  2 A$mainSupport$     05AD GR  |   2 A$mainSupport$     05AF GR
  2 A$mainSupport$     05B2 GR  |   2 A$mainSupport$     05B5 GR
  2 A$mainSupport$     05B7 GR  |   2 A$mainSupport$     05BA GR
  2 A$mainSupport$     05BD GR  |   2 A$mainSupport$     0127 GR
  2 A$mainSupport$     05BE GR  |   2 A$mainSupport$     05C0 GR
  2 A$mainSupport$     05C2 GR  |   2 A$mainSupport$     05C4 GR
  2 A$mainSupport$     012A GR  |   2 A$mainSupport$     05C7 GR
  2 A$mainSupport$     05CB GR  |   2 A$mainSupport$     05CF GR
  2 A$mainSupport$     05D3 GR  |   2 A$mainSupport$     05D7 GR
  2 A$mainSupport$     05D9 GR  |   2 A$mainSupport$     05DA GR
  2 A$mainSupport$     05DB GR  |   2 A$mainSupport$     05DD GR
  2 A$mainSupport$     05E1 GR  |   2 A$mainSupport$     05E5 GR
  2 A$mainSupport$     05E7 GR  |   2 A$mainSupport$     05EB GR
  2 A$mainSupport$     05ED GR  |   2 A$mainSupport$     05EF GR
  2 A$mainSupport$     05F1 GR  |   2 A$mainSupport$     05F3 GR
  2 A$mainSupport$     05F6 GR  |   2 A$mainSupport$     05F9 GR
  2 A$mainSupport$     05FC GR  |   2 A$mainSupport$     012C GR
  2 A$mainSupport$     05FF GR  |   2 A$mainSupport$     0601 GR
  2 A$mainSupport$     0603 GR  |   2 A$mainSupport$     0606 GR
  2 A$mainSupport$     0608 GR  |   2 A$mainSupport$     060B GR
  2 A$mainSupport$     060F GR  |   2 A$mainSupport$     0611 GR
  2 A$mainSupport$     0613 GR  |   2 A$mainSupport$     0615 GR
  2 A$mainSupport$     0617 GR  |   2 A$mainSupport$     0619 GR
  2 A$mainSupport$     061C GR  |   2 A$mainSupport$     061F GR
  2 A$mainSupport$     0621 GR  |   2 A$mainSupport$     0623 GR
  2 A$mainSupport$     0625 GR  |   2 A$mainSupport$     0627 GR
  2 A$mainSupport$     012E GR  |   2 A$mainSupport$     062A GR
  2 A$mainSupport$     062D GR  |   2 A$mainSupport$     0130 GR
  2 A$mainSupport$     0630 GR  |   2 A$mainSupport$     0633 GR
  2 A$mainSupport$     0636 GR  |   2 A$mainSupport$     0638 GR
  2 A$mainSupport$     063A GR  |   2 A$mainSupport$     0132 GR
  2 A$mainSupport$     063D GR  |   2 A$mainSupport$     0641 GR
  2 A$mainSupport$     0134 GR  |   2 A$mainSupport$     0645 GR
  2 A$mainSupport$     0649 GR  |   2 A$mainSupport$     064D GR
  2 A$mainSupport$     064F GR  |   2 A$mainSupport$     0650 GR
  2 A$mainSupport$     0651 GR  |   2 A$mainSupport$     0653 GR
  2 A$mainSupport$     0658 GR  |   2 A$mainSupport$     065D GR
  2 A$mainSupport$     065F GR  |   2 A$mainSupport$     0663 GR
  2 A$mainSupport$     0665 GR  |   2 A$mainSupport$     0667 GR
  2 A$mainSupport$     066A GR  |   2 A$mainSupport$     066D GR
  2 A$mainSupport$     0670 GR  |   2 A$mainSupport$     0673 GR
  2 A$mainSupport$     0675 GR  |   2 A$mainSupport$     0677 GR
  2 A$mainSupport$     0679 GR  |   2 A$mainSupport$     067B GR
  2 A$mainSupport$     067E GR  |   2 A$mainSupport$     0680 GR
  2 A$mainSupport$     0683 GR  |   2 A$mainSupport$     0685 GR
  2 A$mainSupport$     0686 GR  |   2 A$mainSupport$     0688 GR
  2 A$mainSupport$     0136 GR  |   2 A$mainSupport$     068B GR
  2 A$mainSupport$     068D GR  |   2 A$mainSupport$     0691 GR
  2 A$mainSupport$     0695 GR  |   2 A$mainSupport$     0697 GR
  2 A$mainSupport$     0698 GR  |   2 A$mainSupport$     0699 GR
  2 A$mainSupport$     069B GR  |   2 A$mainSupport$     069E GR
  2 A$mainSupport$     06A2 GR  |   2 A$mainSupport$     06A4 GR
  2 A$mainSupport$     06A8 GR  |   2 A$mainSupport$     06AA GR
  2 A$mainSupport$     06F3 GR  |   2 A$mainSupport$     06F5 GR
  2 A$mainSupport$     0139 GR  |   2 A$mainSupport$     06F7 GR
  2 A$mainSupport$     06FA GR  |   2 A$mainSupport$     06FC GR
  2 A$mainSupport$     06FF GR  |   2 A$mainSupport$     0701 GR
  2 A$mainSupport$     0703 GR  |   2 A$mainSupport$     0706 GR
  2 A$mainSupport$     0708 GR  |   2 A$mainSupport$     070A GR
  2 A$mainSupport$     070D GR  |   2 A$mainSupport$     070F GR
  2 A$mainSupport$     0711 GR  |   2 A$mainSupport$     0713 GR
  2 A$mainSupport$     0715 GR  |   2 A$mainSupport$     0717 GR
  2 A$mainSupport$     0719 GR  |   2 A$mainSupport$     071B GR
  2 A$mainSupport$     071D GR  |   2 A$mainSupport$     0721 GR
  2 A$mainSupport$     0723 GR  |   2 A$mainSupport$     0725 GR
  2 A$mainSupport$     0728 GR  |   2 A$mainSupport$     013C GR
  2 A$mainSupport$     072A GR  |   2 A$mainSupport$     072D GR
  2 A$mainSupport$     0730 GR  |   2 A$mainSupport$     0731 GR
  2 A$mainSupport$     0735 GR  |   2 A$mainSupport$     0737 GR
  2 A$mainSupport$     073A GR  |   2 A$mainSupport$     073C GR
  2 A$mainSupport$     073F GR  |   2 A$mainSupport$     0742 GR
  2 A$mainSupport$     0745 GR  |   2 A$mainSupport$     0748 GR
  2 A$mainSupport$     074B GR  |   2 A$mainSupport$     074E GR
  2 A$mainSupport$     0750 GR  |   2 A$mainSupport$     0752 GR
  2 A$mainSupport$     0756 GR  |   2 A$mainSupport$     0757 GR
  2 A$mainSupport$     013F GR  |   2 A$mainSupport$     0759 GR
  2 A$mainSupport$     075B GR  |   2 A$mainSupport$     075D GR
  2 A$mainSupport$     075F GR  |   2 A$mainSupport$     0761 GR
  2 A$mainSupport$     0765 GR  |   2 A$mainSupport$     0767 GR
  2 A$mainSupport$     0769 GR  |   2 A$mainSupport$     076B GR
  2 A$mainSupport$     076D GR  |   2 A$mainSupport$     076F GR
  2 A$mainSupport$     0772 GR  |   2 A$mainSupport$     0775 GR
  2 A$mainSupport$     0777 GR  |   2 A$mainSupport$     077A GR
  2 A$mainSupport$     077C GR  |   2 A$mainSupport$     077F GR
  2 A$mainSupport$     0782 GR  |   2 A$mainSupport$     0785 GR
  2 A$mainSupport$     0787 GR  |   2 A$mainSupport$     0789 GR
  2 A$mainSupport$     078C GR  |   2 A$mainSupport$     078E GR
  2 A$mainSupport$     0791 GR  |   2 A$mainSupport$     0142 GR
  2 A$mainSupport$     0794 GR  |   2 A$mainSupport$     0796 GR
  2 A$mainSupport$     0799 GR  |   2 A$mainSupport$     079C GR
  2 A$mainSupport$     079F GR  |   2 A$mainSupport$     07A2 GR
  2 A$mainSupport$     07A4 GR  |   2 A$mainSupport$     07A7 GR
  2 A$mainSupport$     07AA GR  |   2 A$mainSupport$     07AD GR
  2 A$mainSupport$     0144 GR  |   2 A$mainSupport$     07B0 GR
  2 A$mainSupport$     07B2 GR  |   2 A$mainSupport$     07B5 GR
  2 A$mainSupport$     07B8 GR  |   2 A$mainSupport$     07BB GR
  2 A$mainSupport$     07BE GR  |   2 A$mainSupport$     07C0 GR
  2 A$mainSupport$     07C3 GR  |   2 A$mainSupport$     07C6 GR
  2 A$mainSupport$     07C9 GR  |   2 A$mainSupport$     07CB GR
  2 A$mainSupport$     07CE GR  |   2 A$mainSupport$     07D0 GR
  2 A$mainSupport$     07D3 GR  |   2 A$mainSupport$     07D6 GR
  2 A$mainSupport$     07D9 GR  |   2 A$mainSupport$     07DC GR
  2 A$mainSupport$     07DE GR  |   2 A$mainSupport$     07E1 GR
  2 A$mainSupport$     07E4 GR  |   2 A$mainSupport$     07E7 GR
  2 A$mainSupport$     07E9 GR  |   2 A$mainSupport$     07EC GR
  2 A$mainSupport$     07EF GR  |   2 A$mainSupport$     07F0 GR
  2 A$mainSupport$     07F3 GR  |   2 A$mainSupport$     07F6 GR
  2 A$mainSupport$     07F9 GR  |   2 A$mainSupport$     07FC GR
  2 A$mainSupport$     0146 GR  |   2 A$mainSupport$     07FF GR
  2 A$mainSupport$     0802 GR  |   2 A$mainSupport$     0805 GR
  2 A$mainSupport$     0807 GR  |   2 A$mainSupport$     0149 GR
  2 A$mainSupport$     080A GR  |   2 A$mainSupport$     080D GR
  2 A$mainSupport$     014B GR  |   2 A$mainSupport$     080F GR
  2 A$mainSupport$     0812 GR  |   2 A$mainSupport$     0814 GR
  2 A$mainSupport$     014D GR  |   2 A$mainSupport$     0817 GR
  2 A$mainSupport$     081A GR  |   2 A$mainSupport$     081D GR
  2 A$mainSupport$     0820 GR  |   2 A$mainSupport$     014F GR
  2 A$mainSupport$     0822 GR  |   2 A$mainSupport$     0824 GR
  2 A$mainSupport$     0827 GR  |   2 A$mainSupport$     0151 GR
  2 A$mainSupport$     0829 GR  |   2 A$mainSupport$     082C GR
  2 A$mainSupport$     0153 GR  |   2 A$mainSupport$     082F GR
  2 A$mainSupport$     0832 GR  |   2 A$mainSupport$     0835 GR
  2 A$mainSupport$     0838 GR  |   2 A$mainSupport$     083B GR
  2 A$mainSupport$     0155 GR  |   2 A$mainSupport$     083E GR
  2 A$mainSupport$     0157 GR  |   2 A$mainSupport$     0841 GR
  2 A$mainSupport$     0844 GR  |   2 A$mainSupport$     0846 GR
  2 A$mainSupport$     0158 GR  |   2 A$mainSupport$     084A GR
  2 A$mainSupport$     084E GR  |   2 A$mainSupport$     0850 GR
  2 A$mainSupport$     0851 GR  |   2 A$mainSupport$     0852 GR
  2 A$mainSupport$     0854 GR  |   2 A$mainSupport$     0857 GR
  2 A$mainSupport$     085B GR  |   2 A$mainSupport$     085D GR
  2 A$mainSupport$     0861 GR  |   2 A$mainSupport$     0863 GR
  2 A$mainSupport$     0865 GR  |   2 A$mainSupport$     0867 GR
  2 A$mainSupport$     086A GR  |   2 A$mainSupport$     086C GR
  2 A$mainSupport$     086F GR  |   2 A$mainSupport$     0872 GR
  2 A$mainSupport$     0875 GR  |   2 A$mainSupport$     0877 GR
  2 A$mainSupport$     0879 GR  |   2 A$mainSupport$     087B GR
  2 A$mainSupport$     015A GR  |   2 A$mainSupport$     087E GR
  2 A$mainSupport$     0881 GR  |   2 A$mainSupport$     0883 GR
  2 A$mainSupport$     0886 GR  |   2 A$mainSupport$     0888 GR
  2 A$mainSupport$     088B GR  |   2 A$mainSupport$     088E GR
  2 A$mainSupport$     0891 GR  |   2 A$mainSupport$     0893 GR
  2 A$mainSupport$     015C GR  |   2 A$mainSupport$     0895 GR
  2 A$mainSupport$     0898 GR  |   2 A$mainSupport$     089A GR
  2 A$mainSupport$     089D GR  |   2 A$mainSupport$     089F GR
  2 A$mainSupport$     08A2 GR  |   2 A$mainSupport$     015E GR
  2 A$mainSupport$     08A5 GR  |   2 A$mainSupport$     08A8 GR
  2 A$mainSupport$     08AA GR  |   2 A$mainSupport$     08AC GR
  2 A$mainSupport$     0160 GR  |   2 A$mainSupport$     08AF GR
  2 A$mainSupport$     08B1 GR  |   2 A$mainSupport$     08B4 GR
  2 A$mainSupport$     08B6 GR  |   2 A$mainSupport$     08B9 GR
  2 A$mainSupport$     08BC GR  |   2 A$mainSupport$     08BF GR
  2 A$mainSupport$     08C1 GR  |   2 A$mainSupport$     0162 GR
  2 A$mainSupport$     08C3 GR  |   2 A$mainSupport$     08C5 GR
  2 A$mainSupport$     08C7 GR  |   2 A$mainSupport$     08C9 GR
  2 A$mainSupport$     08CB GR  |   2 A$mainSupport$     08CF GR
  2 A$mainSupport$     08D1 GR  |   2 A$mainSupport$     0164 GR
  2 A$mainSupport$     0166 GR  |   2 A$mainSupport$     0168 GR
  2 A$mainSupport$     0DEB GR  |   2 A$mainSupport$     0DED GR
  2 A$mainSupport$     0DF0 GR  |   2 A$mainSupport$     016B GR
  2 A$mainSupport$     0DF2 GR  |   2 A$mainSupport$     0DF5 GR
  2 A$mainSupport$     0DF6 GR  |   2 A$mainSupport$     0DF8 GR
  2 A$mainSupport$     0DFB GR  |   2 A$mainSupport$     0DFD GR
  2 A$mainSupport$     0DFF GR  |   2 A$mainSupport$     0E02 GR
  2 A$mainSupport$     016D GR  |   2 A$mainSupport$     0E04 GR
  2 A$mainSupport$     0E06 GR  |   2 A$mainSupport$     0E08 GR
  2 A$mainSupport$     0E0A GR  |   2 A$mainSupport$     0E0C GR
  2 A$mainSupport$     0E0F GR  |   2 A$mainSupport$     0E12 GR
  2 A$mainSupport$     0E15 GR  |   2 A$mainSupport$     0E18 GR
  2 A$mainSupport$     0E1B GR  |   2 A$mainSupport$     0E1D GR
  2 A$mainSupport$     0E1F GR  |   2 A$mainSupport$     0E22 GR
  2 A$mainSupport$     0E24 GR  |   2 A$mainSupport$     0E26 GR
  2 A$mainSupport$     0E29 GR  |   2 A$mainSupport$     0E2B GR
  2 A$mainSupport$     0E2D GR  |   2 A$mainSupport$     0E2F GR
  2 A$mainSupport$     0171 GR  |   2 A$mainSupport$     0E31 GR
  2 A$mainSupport$     0E32 GR  |   2 A$mainSupport$     0E34 GR
  2 A$mainSupport$     0E36 GR  |   2 A$mainSupport$     0E38 GR
  2 A$mainSupport$     0173 GR  |   2 A$mainSupport$     0E3B GR
  2 A$mainSupport$     0E3D GR  |   2 A$mainSupport$     0E3F GR
  2 A$mainSupport$     0E41 GR  |   2 A$mainSupport$     0E43 GR
  2 A$mainSupport$     0175 GR  |   2 A$mainSupport$     0E45 GR
  2 A$mainSupport$     0E47 GR  |   2 A$mainSupport$     0E4B GR
  2 A$mainSupport$     0178 GR  |   2 A$mainSupport$     0E4E GR
  2 A$mainSupport$     0E51 GR  |   2 A$mainSupport$     0E53 GR
  2 A$mainSupport$     0E56 GR  |   2 A$mainSupport$     0E58 GR
  2 A$mainSupport$     0E5A GR  |   2 A$mainSupport$     0E5C GR
  2 A$mainSupport$     017A GR  |   2 A$mainSupport$     0E5E GR
  2 A$mainSupport$     0E5F GR  |   2 A$mainSupport$     0E61 GR
  2 A$mainSupport$     0E64 GR  |   2 A$mainSupport$     0E66 GR
  2 A$mainSupport$     0E68 GR  |   2 A$mainSupport$     0E6A GR
  2 A$mainSupport$     0E6C GR  |   2 A$mainSupport$     0E6D GR
  2 A$mainSupport$     0E6F GR  |   2 A$mainSupport$     0E71 GR
  2 A$mainSupport$     0E73 GR  |   2 A$mainSupport$     0E74 GR
  2 A$mainSupport$     0E75 GR  |   2 A$mainSupport$     0E76 GR
  2 A$mainSupport$     0E77 GR  |   2 A$mainSupport$     0E79 GR
  2 A$mainSupport$     0E7C GR  |   2 A$mainSupport$     0E7E GR
  2 A$mainSupport$     0E81 GR  |   2 A$mainSupport$     0E83 GR
  2 A$mainSupport$     0E85 GR  |   2 A$mainSupport$     0E87 GR
  2 A$mainSupport$     0E89 GR  |   2 A$mainSupport$     0E8C GR
  2 A$mainSupport$     0E8E GR  |   2 A$mainSupport$     0E91 GR
  2 A$mainSupport$     0E94 GR  |   2 A$mainSupport$     0E96 GR
  2 A$mainSupport$     0E99 GR  |   2 A$mainSupport$     0E9B GR
  2 A$mainSupport$     017D GR  |   2 A$mainSupport$     0E9D GR
  2 A$mainSupport$     0EA0 GR  |   2 A$mainSupport$     0EA2 GR
  2 A$mainSupport$     0EA3 GR  |   2 A$mainSupport$     0EA5 GR
  2 A$mainSupport$     017F GR  |   2 A$mainSupport$     0EA8 GR
  2 A$mainSupport$     0EAB GR  |   2 A$mainSupport$     0EAD GR
  2 A$mainSupport$     0EAF GR  |   2 A$mainSupport$     0EB2 GR
  2 A$mainSupport$     0EB4 GR  |   2 A$mainSupport$     0EB7 GR
  2 A$mainSupport$     0EB9 GR  |   2 A$mainSupport$     0EBB GR
  2 A$mainSupport$     0EBD GR  |   2 A$mainSupport$     0EBE GR
  2 A$mainSupport$     0EC0 GR  |   2 A$mainSupport$     0EC1 GR
  2 A$mainSupport$     0EC2 GR  |   2 A$mainSupport$     0EC4 GR
  2 A$mainSupport$     0EC8 GR  |   2 A$mainSupport$     0ECC GR
  2 A$mainSupport$     0ECE GR  |   2 A$mainSupport$     0ED0 GR
  2 A$mainSupport$     0ED2 GR  |   2 A$mainSupport$     0ED4 GR
  2 A$mainSupport$     0ED5 GR  |   2 A$mainSupport$     0ED6 GR
  2 A$mainSupport$     0ED7 GR  |   2 A$mainSupport$     0ED8 GR
  2 A$mainSupport$     0EDA GR  |   2 A$mainSupport$     0EDC GR
  2 A$mainSupport$     0EDE GR  |   2 A$mainSupport$     0EE0 GR
  2 A$mainSupport$     0EE3 GR  |   2 A$mainSupport$     0EE5 GR
  2 A$mainSupport$     0EE7 GR  |   2 A$mainSupport$     0EE9 GR
  2 A$mainSupport$     0EEB GR  |   2 A$mainSupport$     0EEF GR
  2 A$mainSupport$     0EF1 GR  |   2 A$mainSupport$     0EF4 GR
  2 A$mainSupport$     0EF6 GR  |   2 A$mainSupport$     0EF8 GR
  2 A$mainSupport$     0EFA GR  |   2 A$mainSupport$     0EFD GR
  2 A$mainSupport$     0181 GR  |   2 A$mainSupport$     0F00 GR
  2 A$mainSupport$     0185 GR  |   2 A$mainSupport$     0F03 GR
  2 A$mainSupport$     0F05 GR  |   2 A$mainSupport$     0F07 GR
  2 A$mainSupport$     0F0A GR  |   2 A$mainSupport$     0F0D GR
  2 A$mainSupport$     0F10 GR  |   2 A$mainSupport$     0F13 GR
  2 A$mainSupport$     0F15 GR  |   2 A$mainSupport$     0F17 GR
  2 A$mainSupport$     0F19 GR  |   2 A$mainSupport$     0F1C GR
  2 A$mainSupport$     0F1F GR  |   2 A$mainSupport$     0F22 GR
  2 A$mainSupport$     0F24 GR  |   2 A$mainSupport$     0F25 GR
  2 A$mainSupport$     0F27 GR  |   2 A$mainSupport$     0F2B GR
  2 A$mainSupport$     0F2D GR  |   2 A$mainSupport$     0F30 GR
  2 A$mainSupport$     0F33 GR  |   2 A$mainSupport$     0187 GR
  2 A$mainSupport$     0F36 GR  |   2 A$mainSupport$     0F39 GR
  2 A$mainSupport$     0F3B GR  |   2 A$mainSupport$     0189 GR
  2 A$mainSupport$     0F3C GR  |   2 A$mainSupport$     0F3D GR
  2 A$mainSupport$     0F3E GR  |   2 A$mainSupport$     0F40 GR
  2 A$mainSupport$     0F42 GR  |   2 A$mainSupport$     0F43 GR
  2 A$mainSupport$     0F45 GR  |   2 A$mainSupport$     0F46 GR
  2 A$mainSupport$     0F47 GR  |   2 A$mainSupport$     0F4B GR
  2 A$mainSupport$     018A GR  |   2 A$mainSupport$     0F4D GR
  2 A$mainSupport$     0F4F GR  |   2 A$mainSupport$     0F51 GR
  2 A$mainSupport$     0F54 GR  |   2 A$mainSupport$     0F57 GR
  2 A$mainSupport$     0F5A GR  |   2 A$mainSupport$     018B GR
  2 A$mainSupport$     0F5D GR  |   2 A$mainSupport$     0F60 GR
  2 A$mainSupport$     0F62 GR  |   2 A$mainSupport$     0F64 GR
  2 A$mainSupport$     018D GR  |   2 A$mainSupport$     0F67 GR
  2 A$mainSupport$     0F69 GR  |   2 A$mainSupport$     0F6B GR
  2 A$mainSupport$     0F6F GR  |   2 A$mainSupport$     0191 GR
  2 A$mainSupport$     0F71 GR  |   2 A$mainSupport$     0F73 GR
  2 A$mainSupport$     0F75 GR  |   2 A$mainSupport$     0F78 GR
  2 A$mainSupport$     0F7A GR  |   2 A$mainSupport$     0193 GR
  2 A$mainSupport$     0F7D GR  |   2 A$mainSupport$     0F80 GR
  2 A$mainSupport$     0F82 GR  |   2 A$mainSupport$     0F84 GR
  2 A$mainSupport$     0197 GR  |   2 A$mainSupport$     0F88 GR
  2 A$mainSupport$     0F8A GR  |   2 A$mainSupport$     0F8E GR
  2 A$mainSupport$     0F91 GR  |   2 A$mainSupport$     019A GR
  2 A$mainSupport$     0F93 GR  |   2 A$mainSupport$     0F96 GR
  2 A$mainSupport$     0F99 GR  |   2 A$mainSupport$     0F9C GR
  2 A$mainSupport$     0F9E GR  |   2 A$mainSupport$     0FA1 GR
  2 A$mainSupport$     0FA2 GR  |   2 A$mainSupport$     0FA5 GR
  2 A$mainSupport$     0FA7 GR  |   2 A$mainSupport$     0FAA GR
  2 A$mainSupport$     0FAB GR  |   2 A$mainSupport$     0FAD GR
  2 A$mainSupport$     0FAE GR  |   2 A$mainSupport$     0FAF GR
  2 A$mainSupport$     0FB1 GR  |   2 A$mainSupport$     0FB5 GR
  2 A$mainSupport$     0FB7 GR  |   2 A$mainSupport$     0FBA GR
  2 A$mainSupport$     0FBD GR  |   2 A$mainSupport$     0FC0 GR
  2 A$mainSupport$     0FC3 GR  |   2 A$mainSupport$     019D GR
  2 A$mainSupport$     0FC6 GR  |   2 A$mainSupport$     0FC9 GR
  2 A$mainSupport$     0FCA GR  |   2 A$mainSupport$     0FCC GR
  2 A$mainSupport$     0FCD GR  |   2 A$mainSupport$     0FCE GR
  2 A$mainSupport$     0FD0 GR  |   2 A$mainSupport$     0FD4 GR
  2 A$mainSupport$     0FD6 GR  |   2 A$mainSupport$     019F GR
  2 A$mainSupport$     0FD9 GR  |   2 A$mainSupport$     0FDC GR
  2 A$mainSupport$     0FDF GR  |   2 A$mainSupport$     01A1 GR
  2 A$mainSupport$     0FE2 GR  |   2 A$mainSupport$     0FE4 GR
  2 A$mainSupport$     0FE7 GR  |   2 A$mainSupport$     0FE9 GR
  2 A$mainSupport$     0FEB GR  |   2 A$mainSupport$     0FED GR
  2 A$mainSupport$     0FF0 GR  |   2 A$mainSupport$     0FF3 GR
  2 A$mainSupport$     01A2 GR  |   2 A$mainSupport$     0FF6 GR
  2 A$mainSupport$     0FF8 GR  |   2 A$mainSupport$     0FFB GR
  2 A$mainSupport$     0FFD GR  |   2 A$mainSupport$     0FFF GR
  2 A$mainSupport$     1002 GR  |   2 A$mainSupport$     1005 GR
  2 A$mainSupport$     1008 GR  |   2 A$mainSupport$     100A GR
  2 A$mainSupport$     100D GR  |   2 A$mainSupport$     01A4 GR
  2 A$mainSupport$     1010 GR  |   2 A$mainSupport$     1012 GR
  2 A$mainSupport$     1014 GR  |   2 A$mainSupport$     1016 GR
  2 A$mainSupport$     1019 GR  |   2 A$mainSupport$     01A6 GR
  2 A$mainSupport$     101C GR  |   2 A$mainSupport$     1020 GR
  2 A$mainSupport$     1022 GR  |   2 A$mainSupport$     1025 GR
  2 A$mainSupport$     1027 GR  |   2 A$mainSupport$     1028 GR
  2 A$mainSupport$     102A GR  |   2 A$mainSupport$     01A8 GR
  2 A$mainSupport$     102C GR  |   2 A$mainSupport$     102F GR
  2 A$mainSupport$     1032 GR  |   2 A$mainSupport$     1034 GR
  2 A$mainSupport$     1037 GR  |   2 A$mainSupport$     1039 GR
  2 A$mainSupport$     01AB GR  |   2 A$mainSupport$     103C GR
  2 A$mainSupport$     103F GR  |   2 A$mainSupport$     1041 GR
  2 A$mainSupport$     1043 GR  |   2 A$mainSupport$     01AD GR
  2 A$mainSupport$     1045 GR  |   2 A$mainSupport$     1047 GR
  2 A$mainSupport$     104A GR  |   2 A$mainSupport$     104C GR
  2 A$mainSupport$     104F GR  |   2 A$mainSupport$     1052 GR
  2 A$mainSupport$     1054 GR  |   2 A$mainSupport$     1056 GR
  2 A$mainSupport$     105A GR  |   2 A$mainSupport$     105C GR
  2 A$mainSupport$     1060 GR  |   2 A$mainSupport$     1063 GR
  2 A$mainSupport$     1065 GR  |   2 A$mainSupport$     1068 GR
  2 A$mainSupport$     1069 GR  |   2 A$mainSupport$     106B GR
  2 A$mainSupport$     106C GR  |   2 A$mainSupport$     106D GR
  2 A$mainSupport$     106F GR  |   2 A$mainSupport$     1073 GR
  2 A$mainSupport$     1075 GR  |   2 A$mainSupport$     1078 GR
  2 A$mainSupport$     107B GR  |   2 A$mainSupport$     107E GR
  2 A$mainSupport$     01B0 GR  |   2 A$mainSupport$     1081 GR
  2 A$mainSupport$     1084 GR  |   2 A$mainSupport$     01B2 GR
  2 A$mainSupport$     1087 GR  |   2 A$mainSupport$     1089 GR
  2 A$mainSupport$     108C GR  |   2 A$mainSupport$     108E GR
  2 A$mainSupport$     1091 GR  |   2 A$mainSupport$     1093 GR
  2 A$mainSupport$     1096 GR  |   2 A$mainSupport$     1098 GR
  2 A$mainSupport$     109B GR  |   2 A$mainSupport$     109E GR
  2 A$mainSupport$     10A0 GR  |   2 A$mainSupport$     10A2 GR
  2 A$mainSupport$     10A4 GR  |   2 A$mainSupport$     10A6 GR
  2 A$mainSupport$     10A8 GR  |   2 A$mainSupport$     10AB GR
  2 A$mainSupport$     10AC GR  |   2 A$mainSupport$     10AE GR
  2 A$mainSupport$     10AF GR  |   2 A$mainSupport$     10B0 GR
  2 A$mainSupport$     10B2 GR  |   2 A$mainSupport$     10B6 GR
  2 A$mainSupport$     10B8 GR  |   2 A$mainSupport$     10BB GR
  2 A$mainSupport$     10BE GR  |   2 A$mainSupport$     10C1 GR
  2 A$mainSupport$     10C4 GR  |   2 A$mainSupport$     10C7 GR
  2 A$mainSupport$     01B4 GR  |   2 A$mainSupport$     10C9 GR
  2 A$mainSupport$     10CB GR  |   2 A$mainSupport$     10CC GR
  2 A$mainSupport$     10CF GR  |   2 A$mainSupport$     10D2 GR
  2 A$mainSupport$     01B6 GR  |   2 A$mainSupport$     10D5 GR
  2 A$mainSupport$     10D7 GR  |   2 A$mainSupport$     10DA GR
  2 A$mainSupport$     10DC GR  |   2 A$mainSupport$     10DE GR
  2 A$mainSupport$     01B8 GR  |   2 A$mainSupport$     10E2 GR
  2 A$mainSupport$     10E4 GR  |   2 A$mainSupport$     10E7 GR
  2 A$mainSupport$     10E9 GR  |   2 A$mainSupport$     01BC GR
  2 A$mainSupport$     10EC GR  |   2 A$mainSupport$     10EF GR
  2 A$mainSupport$     10F1 GR  |   2 A$mainSupport$     10F3 GR
  2 A$mainSupport$     10F7 GR  |   2 A$mainSupport$     10F9 GR
  2 A$mainSupport$     10FD GR  |   2 A$mainSupport$     10FF GR
  2 A$mainSupport$     1103 GR  |   2 A$mainSupport$     1105 GR
  2 A$mainSupport$     1108 GR  |   2 A$mainSupport$     110A GR
  2 A$mainSupport$     110C GR  |   2 A$mainSupport$     110F GR
  2 A$mainSupport$     1111 GR  |   2 A$mainSupport$     1114 GR
  2 A$mainSupport$     1116 GR  |   2 A$mainSupport$     1119 GR
  2 A$mainSupport$     111A GR  |   2 A$mainSupport$     111C GR
  2 A$mainSupport$     111E GR  |   2 A$mainSupport$     1121 GR
  2 A$mainSupport$     1122 GR  |   2 A$mainSupport$     1124 GR
  2 A$mainSupport$     1126 GR  |   2 A$mainSupport$     1128 GR
  2 A$mainSupport$     112A GR  |   2 A$mainSupport$     112D GR
  2 A$mainSupport$     112E GR  |   2 A$mainSupport$     1130 GR
  2 A$mainSupport$     1131 GR  |   2 A$mainSupport$     1132 GR
  2 A$mainSupport$     1134 GR  |   2 A$mainSupport$     1138 GR
  2 A$mainSupport$     113A GR  |   2 A$mainSupport$     113D GR
  2 A$mainSupport$     1140 GR  |   2 A$mainSupport$     1143 GR
  2 A$mainSupport$     1146 GR  |   2 A$mainSupport$     01BE GR
  2 A$mainSupport$     1149 GR  |   2 A$mainSupport$     114C GR
  2 A$mainSupport$     114D GR  |   2 A$mainSupport$     114F GR
  2 A$mainSupport$     1150 GR  |   2 A$mainSupport$     1151 GR
  2 A$mainSupport$     1153 GR  |   2 A$mainSupport$     1157 GR
  2 A$mainSupport$     1159 GR  |   2 A$mainSupport$     115C GR
  2 A$mainSupport$     01C1 GR  |   2 A$mainSupport$     115F GR
  2 A$mainSupport$     01C3 GR  |   2 A$mainSupport$     1161 GR
  2 A$mainSupport$     1164 GR  |   2 A$mainSupport$     1167 GR
  2 A$mainSupport$     1169 GR  |   2 A$mainSupport$     116C GR
  2 A$mainSupport$     01C6 GR  |   2 A$mainSupport$     116E GR
  2 A$mainSupport$     1170 GR  |   2 A$mainSupport$     1173 GR
  2 A$mainSupport$     01C8 GR  |   2 A$mainSupport$     1176 GR
  2 A$mainSupport$     1178 GR  |   2 A$mainSupport$     117B GR
  2 A$mainSupport$     01CB GR  |   2 A$mainSupport$     117D GR
  2 A$mainSupport$     1180 GR  |   2 A$mainSupport$     1183 GR
  2 A$mainSupport$     1185 GR  |   2 A$mainSupport$     1187 GR
  2 A$mainSupport$     118A GR  |   2 A$mainSupport$     118D GR
  2 A$mainSupport$     1190 GR  |   2 A$mainSupport$     1193 GR
  2 A$mainSupport$     1195 GR  |   2 A$mainSupport$     1197 GR
  2 A$mainSupport$     1199 GR  |   2 A$mainSupport$     119B GR
  2 A$mainSupport$     119E GR  |   2 A$mainSupport$     11A0 GR
  2 A$mainSupport$     11A3 GR  |   2 A$mainSupport$     11A6 GR
  2 A$mainSupport$     11A8 GR  |   2 A$mainSupport$     11AA GR
  2 A$mainSupport$     11AC GR  |   2 A$mainSupport$     11AE GR
  2 A$mainSupport$     11B1 GR  |   2 A$mainSupport$     11B3 GR
  2 A$mainSupport$     01CE GR  |   2 A$mainSupport$     11B6 GR
  2 A$mainSupport$     11B9 GR  |   2 A$mainSupport$     11BB GR
  2 A$mainSupport$     11BD GR  |   2 A$mainSupport$     01D0 GR
  2 A$mainSupport$     11BF GR  |   2 A$mainSupport$     11C1 GR
  2 A$mainSupport$     11C4 GR  |   2 A$mainSupport$     11C6 GR
  2 A$mainSupport$     01D2 GR  |   2 A$mainSupport$     11C9 GR
  2 A$mainSupport$     11CC GR  |   2 A$mainSupport$     11CE GR
  2 A$mainSupport$     11D0 GR  |   2 A$mainSupport$     01D5 GR
  2 A$mainSupport$     11D4 GR  |   2 A$mainSupport$     11D6 GR
  2 A$mainSupport$     11DA GR  |   2 A$mainSupport$     11DD GR
  2 A$mainSupport$     01D7 GR  |   2 A$mainSupport$     11DF GR
  2 A$mainSupport$     11E2 GR  |   2 A$mainSupport$     11E5 GR
  2 A$mainSupport$     11E8 GR  |   2 A$mainSupport$     11EA GR
  2 A$mainSupport$     11ED GR  |   2 A$mainSupport$     11EF GR
  2 A$mainSupport$     11F1 GR  |   2 A$mainSupport$     11F4 GR
  2 A$mainSupport$     11F6 GR  |   2 A$mainSupport$     11F9 GR
  2 A$mainSupport$     11FB GR  |   2 A$mainSupport$     11FD GR
  2 A$mainSupport$     1200 GR  |   2 A$mainSupport$     1201 GR
  2 A$mainSupport$     1203 GR  |   2 A$mainSupport$     1205 GR
  2 A$mainSupport$     1207 GR  |   2 A$mainSupport$     1209 GR
  2 A$mainSupport$     120C GR  |   2 A$mainSupport$     120D GR
  2 A$mainSupport$     120F GR  |   2 A$mainSupport$     1210 GR
  2 A$mainSupport$     1211 GR  |   2 A$mainSupport$     1213 GR
  2 A$mainSupport$     1217 GR  |   2 A$mainSupport$     1219 GR
  2 A$mainSupport$     121C GR  |   2 A$mainSupport$     121F GR
  2 A$mainSupport$     1222 GR  |   2 A$mainSupport$     01DA GR
  2 A$mainSupport$     1225 GR  |   2 A$mainSupport$     1228 GR
  2 A$mainSupport$     01DC GR  |   2 A$mainSupport$     122B GR
  2 A$mainSupport$     122C GR  |   2 A$mainSupport$     122E GR
  2 A$mainSupport$     122F GR  |   2 A$mainSupport$     1230 GR
  2 A$mainSupport$     1232 GR  |   2 A$mainSupport$     1236 GR
  2 A$mainSupport$     1238 GR  |   2 A$mainSupport$     123B GR
  2 A$mainSupport$     01DE GR  |   2 A$mainSupport$     123E GR
  2 A$mainSupport$     1241 GR  |   2 A$mainSupport$     1243 GR
  2 A$mainSupport$     1245 GR  |   2 A$mainSupport$     01E0 GR
  2 A$mainSupport$     1249 GR  |   2 A$mainSupport$     124B GR
  2 A$mainSupport$     124E GR  |   2 A$mainSupport$     1250 GR
  2 A$mainSupport$     1253 GR  |   2 A$mainSupport$     1256 GR
  2 A$mainSupport$     1258 GR  |   2 A$mainSupport$     125A GR
  2 A$mainSupport$     125E GR  |   2 A$mainSupport$     01E3 GR
  2 A$mainSupport$     1260 GR  |   2 A$mainSupport$     1262 GR
  2 A$mainSupport$     1265 GR  |   2 A$mainSupport$     01E5 GR
  2 A$mainSupport$     1268 GR  |   2 A$mainSupport$     126A GR
  2 A$mainSupport$     126D GR  |   2 A$mainSupport$     126F GR
  2 A$mainSupport$     01E7 GR  |   2 A$mainSupport$     1272 GR
  2 A$mainSupport$     1275 GR  |   2 A$mainSupport$     1276 GR
  2 A$mainSupport$     1279 GR  |   2 A$mainSupport$     127A GR
  2 A$mainSupport$     127D GR  |   2 A$mainSupport$     127F GR
  2 A$mainSupport$     1282 GR  |   2 A$mainSupport$     1285 GR
  2 A$mainSupport$     1287 GR  |   2 A$mainSupport$     1289 GR
  2 A$mainSupport$     128B GR  |   2 A$mainSupport$     128E GR
  2 A$mainSupport$     1291 GR  |   2 A$mainSupport$     1295 GR
  2 A$mainSupport$     1297 GR  |   2 A$mainSupport$     129A GR
  2 A$mainSupport$     129C GR  |   2 A$mainSupport$     129D GR
  2 A$mainSupport$     129F GR  |   2 A$mainSupport$     12A1 GR
  2 A$mainSupport$     12A4 GR  |   2 A$mainSupport$     12A7 GR
  2 A$mainSupport$     12A9 GR  |   2 A$mainSupport$     12AC GR
  2 A$mainSupport$     12AE GR  |   2 A$mainSupport$     01EB GR
  2 A$mainSupport$     12B1 GR  |   2 A$mainSupport$     12B4 GR
  2 A$mainSupport$     12B6 GR  |   2 A$mainSupport$     12B8 GR
  2 A$mainSupport$     01ED GR  |   2 A$mainSupport$     12BA GR
  2 A$mainSupport$     12BC GR  |   2 A$mainSupport$     12BF GR
  2 A$mainSupport$     12C1 GR  |   2 A$mainSupport$     12C4 GR
  2 A$mainSupport$     01EF GR  |   2 A$mainSupport$     12C7 GR
  2 A$mainSupport$     12C9 GR  |   2 A$mainSupport$     12CB GR
  2 A$mainSupport$     12CD GR  |   2 A$mainSupport$     12CF GR
  2 A$mainSupport$     12D2 GR  |   2 A$mainSupport$     01F2 GR
  2 A$mainSupport$     12D4 GR  |   2 A$mainSupport$     12D7 GR
  2 A$mainSupport$     12DA GR  |   2 A$mainSupport$     12DC GR
  2 A$mainSupport$     12DE GR  |   2 A$mainSupport$     01F4 GR
  2 A$mainSupport$     12E2 GR  |   2 A$mainSupport$     12E4 GR
  2 A$mainSupport$     12E8 GR  |   2 A$mainSupport$     12EA GR
  2 A$mainSupport$     12ED GR  |   2 A$mainSupport$     12F0 GR
  2 A$mainSupport$     12F3 GR  |   2 A$mainSupport$     12F5 GR
  2 A$mainSupport$     12F8 GR  |   2 A$mainSupport$     12F9 GR
  2 A$mainSupport$     12FB GR  |   2 A$mainSupport$     12FC GR
  2 A$mainSupport$     12FD GR  |   2 A$mainSupport$     12FF GR
  2 A$mainSupport$     1303 GR  |   2 A$mainSupport$     1305 GR
  2 A$mainSupport$     1308 GR  |   2 A$mainSupport$     130B GR
  2 A$mainSupport$     130E GR  |   2 A$mainSupport$     1311 GR
  2 A$mainSupport$     1314 GR  |   2 A$mainSupport$     1317 GR
  2 A$mainSupport$     1318 GR  |   2 A$mainSupport$     131A GR
  2 A$mainSupport$     131B GR  |   2 A$mainSupport$     01F7 GR
  2 A$mainSupport$     131C GR  |   2 A$mainSupport$     131E GR
  2 A$mainSupport$     1322 GR  |   2 A$mainSupport$     1324 GR
  2 A$mainSupport$     1327 GR  |   2 A$mainSupport$     132A GR
  2 A$mainSupport$     01F9 GR  |   2 A$mainSupport$     132D GR
  2 A$mainSupport$     1330 GR  |   2 A$mainSupport$     1332 GR
  2 A$mainSupport$     1335 GR  |   2 A$mainSupport$     1337 GR
  2 A$mainSupport$     1339 GR  |   2 A$mainSupport$     133B GR
  2 A$mainSupport$     133E GR  |   2 A$mainSupport$     1341 GR
  2 A$mainSupport$     1344 GR  |   2 A$mainSupport$     1346 GR
  2 A$mainSupport$     1349 GR  |   2 A$mainSupport$     134B GR
  2 A$mainSupport$     134E GR  |   2 A$mainSupport$     1350 GR
  2 A$mainSupport$     1352 GR  |   2 A$mainSupport$     1354 GR
  2 A$mainSupport$     1357 GR  |   2 A$mainSupport$     135A GR
  2 A$mainSupport$     135D GR  |   2 A$mainSupport$     1360 GR
  2 A$mainSupport$     1362 GR  |   2 A$mainSupport$     1364 GR
  2 A$mainSupport$     1368 GR  |   2 A$mainSupport$     136A GR
  2 A$mainSupport$     136E GR  |   2 A$mainSupport$     1370 GR
  2 A$mainSupport$     1373 GR  |   2 A$mainSupport$     1376 GR
  2 A$mainSupport$     1379 GR  |   2 A$mainSupport$     01FB GR
  2 A$mainSupport$     137B GR  |   2 A$mainSupport$     137E GR
  2 A$mainSupport$     137F GR  |   2 A$mainSupport$     1381 GR
  2 A$mainSupport$     1382 GR  |   2 A$mainSupport$     1383 GR
  2 A$mainSupport$     1385 GR  |   2 A$mainSupport$     01FE GR
  2 A$mainSupport$     1389 GR  |   2 A$mainSupport$     138B GR
  2 A$mainSupport$     138E GR  |   2 A$mainSupport$     1391 GR
  2 A$mainSupport$     1394 GR  |   2 A$mainSupport$     0201 GR
  2 A$mainSupport$     1397 GR  |   2 A$mainSupport$     139A GR
  2 A$mainSupport$     139D GR  |   2 A$mainSupport$     13A0 GR
  2 A$mainSupport$     13A3 GR  |   2 A$mainSupport$     13A5 GR
  2 A$mainSupport$     13A7 GR  |   2 A$mainSupport$     13AB GR
  2 A$mainSupport$     13AD GR  |   2 A$mainSupport$     13B1 GR
  2 A$mainSupport$     13B3 GR  |   2 A$mainSupport$     13B5 GR
  2 A$mainSupport$     13B8 GR  |   2 A$mainSupport$     13BB GR
  2 A$mainSupport$     13BE GR  |   2 A$mainSupport$     13C1 GR
  2 A$mainSupport$     0204 GR  |   2 A$mainSupport$     13C4 GR
  2 A$mainSupport$     13C7 GR  |   2 A$mainSupport$     0206 GR
  2 A$mainSupport$     13C9 GR  |   2 A$mainSupport$     0208 GR
  2 A$mainSupport$     13CC GR  |   2 A$mainSupport$     13CF GR
  2 A$mainSupport$     13D2 GR  |   2 A$mainSupport$     13D4 GR
  2 A$mainSupport$     13D6 GR  |   2 A$mainSupport$     020B GR
  2 A$mainSupport$     13D9 GR  |   2 A$mainSupport$     13DC GR
  2 A$mainSupport$     020D GR  |   2 A$mainSupport$     13DE GR
  2 A$mainSupport$     13E1 GR  |   2 A$mainSupport$     13E3 GR
  2 A$mainSupport$     13E5 GR  |   2 A$mainSupport$     13E8 GR
  2 A$mainSupport$     13EB GR  |   2 A$mainSupport$     13EE GR
  2 A$mainSupport$     13EF GR  |   2 A$mainSupport$     13F2 GR
  2 A$mainSupport$     13F4 GR  |   2 A$mainSupport$     13F7 GR
  2 A$mainSupport$     13FA GR  |   2 A$mainSupport$     13FD GR
  2 A$mainSupport$     13FF GR  |   2 A$mainSupport$     1402 GR
  2 A$mainSupport$     1405 GR  |   2 A$mainSupport$     1407 GR
  2 A$mainSupport$     140A GR  |   2 A$mainSupport$     140C GR
  2 A$mainSupport$     0210 GR  |   2 A$mainSupport$     140E GR
  2 A$mainSupport$     140F GR  |   2 A$mainSupport$     1412 GR
  2 A$mainSupport$     1414 GR  |   2 A$mainSupport$     1417 GR
  2 A$mainSupport$     141A GR  |   2 A$mainSupport$     0212 GR
  2 A$mainSupport$     141D GR  |   2 A$mainSupport$     141F GR
  2 A$mainSupport$     1422 GR  |   2 A$mainSupport$     1425 GR
  2 A$mainSupport$     1427 GR  |   2 A$mainSupport$     142A GR
  2 A$mainSupport$     142C GR  |   2 A$mainSupport$     1430 GR
  2 A$mainSupport$     1431 GR  |   2 A$mainSupport$     1434 GR
  2 A$mainSupport$     1436 GR  |   2 A$mainSupport$     1439 GR
  2 A$mainSupport$     143C GR  |   2 A$mainSupport$     143F GR
  2 A$mainSupport$     1441 GR  |   2 A$mainSupport$     1444 GR
  2 A$mainSupport$     1447 GR  |   2 A$mainSupport$     1449 GR
  2 A$mainSupport$     144C GR  |   2 A$mainSupport$     144E GR
  2 A$mainSupport$     1450 GR  |   2 A$mainSupport$     1451 GR
  2 A$mainSupport$     1454 GR  |   2 A$mainSupport$     1456 GR
  2 A$mainSupport$     1459 GR  |   2 A$mainSupport$     145C GR
  2 A$mainSupport$     145F GR  |   2 A$mainSupport$     1461 GR
  2 A$mainSupport$     1464 GR  |   2 A$mainSupport$     1467 GR
  2 A$mainSupport$     0214 GR  |   2 A$mainSupport$     1469 GR
  2 A$mainSupport$     146B GR  |   2 A$mainSupport$     146D GR
  2 A$mainSupport$     1470 GR  |   2 A$mainSupport$     1473 GR
  2 A$mainSupport$     0217 GR  |   2 A$mainSupport$     1475 GR
  2 A$mainSupport$     1477 GR  |   2 A$mainSupport$     1479 GR
  2 A$mainSupport$     147C GR  |   2 A$mainSupport$     147F GR
  2 A$mainSupport$     0219 GR  |   2 A$mainSupport$     1481 GR
  2 A$mainSupport$     1483 GR  |   2 A$mainSupport$     1485 GR
  2 A$mainSupport$     1488 GR  |   2 A$mainSupport$     148B GR
  2 A$mainSupport$     021C GR  |   2 A$mainSupport$     148D GR
  2 A$mainSupport$     148F GR  |   2 A$mainSupport$     1491 GR
  2 A$mainSupport$     1494 GR  |   2 A$mainSupport$     1497 GR
  2 A$mainSupport$     021F GR  |   2 A$mainSupport$     1499 GR
  2 A$mainSupport$     149C GR  |   2 A$mainSupport$     149F GR
  2 A$mainSupport$     14A1 GR  |   2 A$mainSupport$     14A3 GR
  2 A$mainSupport$     14A6 GR  |   2 A$mainSupport$     14A8 GR
  2 A$mainSupport$     14AB GR  |   2 A$mainSupport$     14AE GR
  2 A$mainSupport$     14B1 GR  |   2 A$mainSupport$     14B3 GR
  2 A$mainSupport$     14B5 GR  |   2 A$mainSupport$     14B9 GR
  2 A$mainSupport$     14BC GR  |   2 A$mainSupport$     14BF GR
  2 A$mainSupport$     14C1 GR  |   2 A$mainSupport$     0222 GR
  2 A$mainSupport$     14C4 GR  |   2 A$mainSupport$     14C7 GR
  2 A$mainSupport$     14C8 GR  |   2 A$mainSupport$     14CA GR
  2 A$mainSupport$     14CB GR  |   2 A$mainSupport$     14CC GR
  2 A$mainSupport$     14CE GR  |   2 A$mainSupport$     14D2 GR
  2 A$mainSupport$     0224 GR  |   2 A$mainSupport$     14D4 GR
  2 A$mainSupport$     14D7 GR  |   2 A$mainSupport$     14DA GR
  2 A$mainSupport$     14DD GR  |   2 A$mainSupport$     0226 GR
  2 A$mainSupport$     14E0 GR  |   2 A$mainSupport$     14E3 GR
  2 A$mainSupport$     14E5 GR  |   2 A$mainSupport$     14E6 GR
  2 A$mainSupport$     14E8 GR  |   2 A$mainSupport$     0229 GR
  2 A$mainSupport$     14EB GR  |   2 A$mainSupport$     14ED GR
  2 A$mainSupport$     14F0 GR  |   2 A$mainSupport$     14F3 GR
  2 A$mainSupport$     14F5 GR  |   2 A$mainSupport$     022B GR
  2 A$mainSupport$     14F7 GR  |   2 A$mainSupport$     14F9 GR
  2 A$mainSupport$     14FB GR  |   2 A$mainSupport$     14FE GR
  2 A$mainSupport$     1500 GR  |   2 A$mainSupport$     1503 GR
  2 A$mainSupport$     1506 GR  |   2 A$mainSupport$     1508 GR
  2 A$mainSupport$     150A GR  |   2 A$mainSupport$     150E GR
  2 A$mainSupport$     1510 GR  |   2 A$mainSupport$     1514 GR
  2 A$mainSupport$     1516 GR  |   2 A$mainSupport$     1519 GR
  2 A$mainSupport$     151B GR  |   2 A$mainSupport$     151D GR
  2 A$mainSupport$     1520 GR  |   2 A$mainSupport$     1521 GR
  2 A$mainSupport$     1523 GR  |   2 A$mainSupport$     1524 GR
  2 A$mainSupport$     1525 GR  |   2 A$mainSupport$     1527 GR
  2 A$mainSupport$     152B GR  |   2 A$mainSupport$     152D GR
  2 A$mainSupport$     1530 GR  |   2 A$mainSupport$     022E GR
  2 A$mainSupport$     1533 GR  |   2 A$mainSupport$     1536 GR
  2 A$mainSupport$     1539 GR  |   2 A$mainSupport$     0230 GR
  2 A$mainSupport$     153C GR  |   2 A$mainSupport$     153F GR
  2 A$mainSupport$     1542 GR  |   2 A$mainSupport$     1545 GR
  2 A$mainSupport$     1547 GR  |   2 A$mainSupport$     1549 GR
  2 A$mainSupport$     154B GR  |   2 A$mainSupport$     154D GR
  2 A$mainSupport$     1550 GR  |   2 A$mainSupport$     1552 GR
  2 A$mainSupport$     1555 GR  |   2 A$mainSupport$     1558 GR
  2 A$mainSupport$     155A GR  |   2 A$mainSupport$     155C GR
  2 A$mainSupport$     1560 GR  |   2 A$mainSupport$     1563 GR
  2 A$mainSupport$     1566 GR  |   2 A$mainSupport$     1568 GR
  2 A$mainSupport$     156C GR  |   2 A$mainSupport$     156F GR
  2 A$mainSupport$     1571 GR  |   2 A$mainSupport$     1574 GR
  2 A$mainSupport$     1577 GR  |   2 A$mainSupport$     157A GR
  2 A$mainSupport$     157D GR  |   2 A$mainSupport$     157E GR
  2 A$mainSupport$     157F GR  |   2 A$mainSupport$     1581 GR
  2 A$mainSupport$     1582 GR  |   2 A$mainSupport$     1584 GR
  2 A$mainSupport$     1587 GR  |   2 A$mainSupport$     1588 GR
  2 A$mainSupport$     158B GR  |   2 A$mainSupport$     158C GR
  2 A$mainSupport$     158E GR  |   2 A$mainSupport$     1590 GR
  2 A$mainSupport$     1592 GR  |   2 A$mainSupport$     1594 GR
  2 A$mainSupport$     0232 GR  |   2 A$mainSupport$     1597 GR
  2 A$mainSupport$     1599 GR  |   2 A$mainSupport$     159C GR
  2 A$mainSupport$     159E GR  |   2 A$mainSupport$     0235 GR
  2 A$mainSupport$     15A1 GR  |   2 A$mainSupport$     15A2 GR
  2 A$mainSupport$     15A6 GR  |   2 A$mainSupport$     15AA GR
  2 A$mainSupport$     15AD GR  |   2 A$mainSupport$     15AE GR
  2 A$mainSupport$     0236 GR  |   2 A$mainSupport$     15B0 GR
  2 A$mainSupport$     15B1 GR  |   2 A$mainSupport$     15B2 GR
  2 A$mainSupport$     15B4 GR  |   2 A$mainSupport$     15B8 GR
  2 A$mainSupport$     15BA GR  |   2 A$mainSupport$     15BD GR
  2 A$mainSupport$     0238 GR  |   2 A$mainSupport$     15C0 GR
  2 A$mainSupport$     15C3 GR  |   2 A$mainSupport$     15C6 GR
  2 A$mainSupport$     15C9 GR  |   2 A$mainSupport$     0239 GR
  2 A$mainSupport$     15CB GR  |   2 A$mainSupport$     15CD GR
  2 A$mainSupport$     15D1 GR  |   2 A$mainSupport$     15D3 GR
  2 A$mainSupport$     023A GR  |   2 A$mainSupport$     023C GR
  2 A$mainSupport$     15D7 GR  |   2 A$mainSupport$     15D9 GR
  2 A$mainSupport$     15DB GR  |   2 A$mainSupport$     15DE GR
  2 A$mainSupport$     0240 GR  |   2 A$mainSupport$     15E1 GR
  2 A$mainSupport$     15E4 GR  |   2 A$mainSupport$     0242 GR
  2 A$mainSupport$     15E7 GR  |   2 A$mainSupport$     15EA GR
  2 A$mainSupport$     0245 GR  |   2 A$mainSupport$     15ED GR
  2 A$mainSupport$     15F1 GR  |   2 A$mainSupport$     15F5 GR
  2 A$mainSupport$     15F9 GR  |   2 A$mainSupport$     15FC GR
  2 A$mainSupport$     15FF GR  |   2 A$mainSupport$     1602 GR
  2 A$mainSupport$     1605 GR  |   2 A$mainSupport$     1608 GR
  2 A$mainSupport$     160B GR  |   2 A$mainSupport$     160D GR
  2 A$mainSupport$     160F GR  |   2 A$mainSupport$     1611 GR
  2 A$mainSupport$     1613 GR  |   2 A$mainSupport$     1616 GR
  2 A$mainSupport$     0248 GR  |   2 A$mainSupport$     1618 GR
  2 A$mainSupport$     161B GR  |   2 A$mainSupport$     161D GR
  2 A$mainSupport$     161F GR  |   2 A$mainSupport$     1622 GR
  2 A$mainSupport$     024A GR  |   2 A$mainSupport$     1625 GR
  2 A$mainSupport$     1627 GR  |   2 A$mainSupport$     162A GR
  2 A$mainSupport$     024C GR  |   2 A$mainSupport$     162D GR
  2 A$mainSupport$     162F GR  |   2 A$mainSupport$     1631 GR
  2 A$mainSupport$     1634 GR  |   2 A$mainSupport$     1636 GR
  2 A$mainSupport$     1639 GR  |   2 A$mainSupport$     024F GR
  2 A$mainSupport$     163C GR  |   2 A$mainSupport$     163F GR
  2 A$mainSupport$     1642 GR  |   2 A$mainSupport$     1644 GR
  2 A$mainSupport$     1646 GR  |   2 A$mainSupport$     1649 GR
  2 A$mainSupport$     0251 GR  |   2 A$mainSupport$     164B GR
  2 A$mainSupport$     164E GR  |   2 A$mainSupport$     1651 GR
  2 A$mainSupport$     1654 GR  |   2 A$mainSupport$     1657 GR
  2 A$mainSupport$     1659 GR  |   2 A$mainSupport$     165B GR
  2 A$mainSupport$     165E GR  |   2 A$mainSupport$     1660 GR
  2 A$mainSupport$     1663 GR  |   2 A$mainSupport$     1665 GR
  2 A$mainSupport$     1668 GR  |   2 A$mainSupport$     166A GR
  2 A$mainSupport$     166C GR  |   2 A$mainSupport$     166E GR
  2 A$mainSupport$     1671 GR  |   2 A$mainSupport$     1673 GR
  2 A$mainSupport$     1676 GR  |   2 A$mainSupport$     1679 GR
  2 A$mainSupport$     167B GR  |   2 A$mainSupport$     167C GR
  2 A$mainSupport$     167E GR  |   2 A$mainSupport$     1681 GR
  2 A$mainSupport$     1683 GR  |   2 A$mainSupport$     1685 GR
  2 A$mainSupport$     0254 GR  |   2 A$mainSupport$     1686 GR
  2 A$mainSupport$     1688 GR  |   2 A$mainSupport$     168B GR
  2 A$mainSupport$     168D GR  |   2 A$mainSupport$     168F GR
  2 A$mainSupport$     0256 GR  |   2 A$mainSupport$     1692 GR
  2 A$mainSupport$     1694 GR  |   2 A$mainSupport$     1696 GR
  2 A$mainSupport$     1698 GR  |   2 A$mainSupport$     169A GR
  2 A$mainSupport$     169D GR  |   2 A$mainSupport$     169F GR
  2 A$mainSupport$     16A2 GR  |   2 A$mainSupport$     16A5 GR
  2 A$mainSupport$     16A7 GR  |   2 A$mainSupport$     16A9 GR
  2 A$mainSupport$     16AA GR  |   2 A$mainSupport$     16AC GR
  2 A$mainSupport$     16AF GR  |   2 A$mainSupport$     16B1 GR
  2 A$mainSupport$     16B4 GR  |   2 A$mainSupport$     16B7 GR
  2 A$mainSupport$     16BA GR  |   2 A$mainSupport$     16BC GR
  2 A$mainSupport$     16BE GR  |   2 A$mainSupport$     16C1 GR
  2 A$mainSupport$     16C3 GR  |   2 A$mainSupport$     16C6 GR
  2 A$mainSupport$     16C9 GR  |   2 A$mainSupport$     16CC GR
  2 A$mainSupport$     16CF GR  |   2 A$mainSupport$     16D1 GR
  2 A$mainSupport$     16D3 GR  |   2 A$mainSupport$     16D5 GR
  2 A$mainSupport$     16D7 GR  |   2 A$mainSupport$     16DA GR
  2 A$mainSupport$     16DC GR  |   2 A$mainSupport$     16DF GR
  2 A$mainSupport$     16E2 GR  |   2 A$mainSupport$     16E4 GR
  2 A$mainSupport$     16E6 GR  |   2 A$mainSupport$     16E7 GR
  2 A$mainSupport$     16E9 GR  |   2 A$mainSupport$     16EC GR
  2 A$mainSupport$     16EE GR  |   2 A$mainSupport$     16F1 GR
  2 A$mainSupport$     16F4 GR  |   2 A$mainSupport$     0258 GR
  2 A$mainSupport$     16F7 GR  |   2 A$mainSupport$     16F9 GR
  2 A$mainSupport$     16FB GR  |   2 A$mainSupport$     16FE GR
  2 A$mainSupport$     1700 GR  |   2 A$mainSupport$     1703 GR
  2 A$mainSupport$     1706 GR  |   2 A$mainSupport$     025B GR
  2 A$mainSupport$     1709 GR  |   2 A$mainSupport$     170C GR
  2 A$mainSupport$     170E GR  |   2 A$mainSupport$     1710 GR
  2 A$mainSupport$     1713 GR  |   2 A$mainSupport$     025D GR
  2 A$mainSupport$     1715 GR  |   2 A$mainSupport$     1718 GR
  2 A$mainSupport$     171A GR  |   2 A$mainSupport$     171D GR
  2 A$mainSupport$     171F GR  |   2 A$mainSupport$     025E GR
  2 A$mainSupport$     1721 GR  |   2 A$mainSupport$     1724 GR
  2 A$mainSupport$     1726 GR  |   2 A$mainSupport$     1729 GR
  2 A$mainSupport$     172B GR  |   2 A$mainSupport$     172D GR
  2 A$mainSupport$     172E GR  |   2 A$mainSupport$     1731 GR
  2 A$mainSupport$     1733 GR  |   2 A$mainSupport$     1736 GR
  2 A$mainSupport$     1739 GR  |   2 A$mainSupport$     173B GR
  2 A$mainSupport$     173D GR  |   2 A$mainSupport$     173F GR
  2 A$mainSupport$     1741 GR  |   2 A$mainSupport$     1744 GR
  2 A$mainSupport$     1747 GR  |   2 A$mainSupport$     1749 GR
  2 A$mainSupport$     174C GR  |   2 A$mainSupport$     174F GR
  2 A$mainSupport$     1752 GR  |   2 A$mainSupport$     1755 GR
  2 A$mainSupport$     1758 GR  |   2 A$mainSupport$     1759 GR
  2 A$mainSupport$     175A GR  |   2 A$mainSupport$     175D GR
  2 A$mainSupport$     175E GR  |   2 A$mainSupport$     1760 GR
  2 A$mainSupport$     1762 GR  |   2 A$mainSupport$     1766 GR
  2 A$mainSupport$     0260 GR  |   2 A$mainSupport$     1768 GR
  2 A$mainSupport$     176A GR  |   2 A$mainSupport$     176B GR
  2 A$mainSupport$     176C GR  |   2 A$mainSupport$     176E GR
  2 A$mainSupport$     1770 GR  |   2 A$mainSupport$     1772 GR
  2 A$mainSupport$     1774 GR  |   2 A$mainSupport$     1776 GR
  2 A$mainSupport$     0261 GR  |   2 A$mainSupport$     177A GR
  2 A$mainSupport$     177C GR  |   2 A$mainSupport$     177E GR
  2 A$mainSupport$     177F GR  |   2 A$mainSupport$     1780 GR
  2 A$mainSupport$     1782 GR  |   2 A$mainSupport$     1784 GR
  2 A$mainSupport$     1786 GR  |   2 A$mainSupport$     1788 GR
  2 A$mainSupport$     0262 GR  |   2 A$mainSupport$     178B GR
  2 A$mainSupport$     178D GR  |   2 A$mainSupport$     178F GR
  2 A$mainSupport$     1790 GR  |   2 A$mainSupport$     1791 GR
  2 A$mainSupport$     1793 GR  |   2 A$mainSupport$     1795 GR
  2 A$mainSupport$     1797 GR  |   2 A$mainSupport$     0263 GR
  2 A$mainSupport$     1799 GR  |   2 A$mainSupport$     179C GR
  2 A$mainSupport$     0265 GR  |   2 A$mainSupport$     179F GR
  2 A$mainSupport$     17A1 GR  |   2 A$mainSupport$     17A4 GR
  2 A$mainSupport$     0269 GR  |   2 A$mainSupport$     17A7 GR
  2 A$mainSupport$     17AA GR  |   2 A$mainSupport$     17AB GR
  2 A$mainSupport$     17AD GR  |   2 A$mainSupport$     17B0 GR
  2 A$mainSupport$     026B GR  |   2 A$mainSupport$     17B3 GR
  2 A$mainSupport$     17B6 GR  |   2 A$mainSupport$     17B8 GR
  2 A$mainSupport$     17BB GR  |   2 A$mainSupport$     026E GR
  2 A$mainSupport$     17BD GR  |   2 A$mainSupport$     17C0 GR
  2 A$mainSupport$     17C2 GR  |   2 A$mainSupport$     17C5 GR
  2 A$mainSupport$     17C7 GR  |   2 A$mainSupport$     17C9 GR
  2 A$mainSupport$     17CA GR  |   2 A$mainSupport$     0271 GR
  2 A$mainSupport$     17CC GR  |   2 A$mainSupport$     17CE GR
  2 A$mainSupport$     17D2 GR  |   2 A$mainSupport$     17D4 GR
  2 A$mainSupport$     17D8 GR  |   2 A$mainSupport$     17DA GR
  2 A$mainSupport$     17DC GR  |   2 A$mainSupport$     17DD GR
  2 A$mainSupport$     17DF GR  |   2 A$mainSupport$     17E2 GR
  2 A$mainSupport$     0274 GR  |   2 A$mainSupport$     17E4 GR
  2 A$mainSupport$     17E6 GR  |   2 A$mainSupport$     17E8 GR
  2 A$mainSupport$     17EA GR  |   2 A$mainSupport$     17ED GR
  2 A$mainSupport$     17F0 GR  |   2 A$mainSupport$     17F3 GR
  2 A$mainSupport$     17F6 GR  |   2 A$mainSupport$     17F9 GR
  2 A$mainSupport$     17FB GR  |   2 A$mainSupport$     17FC GR
  2 A$mainSupport$     17FE GR  |   2 A$mainSupport$     1801 GR
  2 A$mainSupport$     1804 GR  |   2 A$mainSupport$     1807 GR
  2 A$mainSupport$     180A GR  |   2 A$mainSupport$     180D GR
  2 A$mainSupport$     1810 GR  |   2 A$mainSupport$     1813 GR
  2 A$mainSupport$     1815 GR  |   2 A$mainSupport$     0276 GR
  2 A$mainSupport$     1818 GR  |   2 A$mainSupport$     181A GR
  2 A$mainSupport$     181D GR  |   2 A$mainSupport$     0279 GR
  2 A$mainSupport$     1820 GR  |   2 A$mainSupport$     1823 GR
  2 A$mainSupport$     1825 GR  |   2 A$mainSupport$     027B GR
  2 A$mainSupport$     1828 GR  |   2 A$mainSupport$     182B GR
  2 A$mainSupport$     182D GR  |   2 A$mainSupport$     182F GR
  2 A$mainSupport$     027E GR  |   2 A$mainSupport$     1831 GR
  2 A$mainSupport$     1833 GR  |   2 A$mainSupport$     1836 GR
  2 A$mainSupport$     1838 GR  |   2 A$mainSupport$     183B GR
  2 A$mainSupport$     183E GR  |   2 A$mainSupport$     1840 GR
  2 A$mainSupport$     1842 GR  |   2 A$mainSupport$     1846 GR
  2 A$mainSupport$     1848 GR  |   2 A$mainSupport$     0281 GR
  2 A$mainSupport$     184C GR  |   2 A$mainSupport$     184F GR
  2 A$mainSupport$     1852 GR  |   2 A$mainSupport$     1854 GR
  2 A$mainSupport$     1857 GR  |   2 A$mainSupport$     185A GR
  2 A$mainSupport$     185C GR  |   2 A$mainSupport$     185F GR
  2 A$mainSupport$     1861 GR  |   2 A$mainSupport$     1864 GR
  2 A$mainSupport$     1866 GR  |   2 A$mainSupport$     1868 GR
  2 A$mainSupport$     186B GR  |   2 A$mainSupport$     186C GR
  2 A$mainSupport$     186E GR  |   2 A$mainSupport$     186F GR
  2 A$mainSupport$     1870 GR  |   2 A$mainSupport$     1872 GR
  2 A$mainSupport$     1876 GR  |   2 A$mainSupport$     1878 GR
  2 A$mainSupport$     187B GR  |   2 A$mainSupport$     187E GR
  2 A$mainSupport$     0283 GR  |   2 A$mainSupport$     1881 GR
  2 A$mainSupport$     1884 GR  |   2 A$mainSupport$     0285 GR
  2 A$mainSupport$     1887 GR  |   2 A$mainSupport$     188A GR
  2 A$mainSupport$     188C GR  |   2 A$mainSupport$     188E GR
  2 A$mainSupport$     0287 GR  |   2 A$mainSupport$     1890 GR
  2 A$mainSupport$     1892 GR  |   2 A$mainSupport$     1896 GR
  2 A$mainSupport$     1899 GR  |   2 A$mainSupport$     028A GR
  2 A$mainSupport$     189C GR  |   2 A$mainSupport$     189E GR
  2 A$mainSupport$     18A1 GR  |   2 A$mainSupport$     18A3 GR
  2 A$mainSupport$     028C GR  |   2 A$mainSupport$     18A6 GR
  2 A$mainSupport$     18A9 GR  |   2 A$mainSupport$     18AB GR
  2 A$mainSupport$     18AD GR  |   2 A$mainSupport$     18B1 GR
  2 A$mainSupport$     18B4 GR  |   2 A$mainSupport$     18B7 GR
  2 A$mainSupport$     18BA GR  |   2 A$mainSupport$     18BD GR
  2 A$mainSupport$     18C0 GR  |   2 A$mainSupport$     18C2 GR
  2 A$mainSupport$     18C5 GR  |   2 A$mainSupport$     18C7 GR
  2 A$mainSupport$     18CA GR  |   2 A$mainSupport$     18CC GR
  2 A$mainSupport$     18CE GR  |   2 A$mainSupport$     18D1 GR
  2 A$mainSupport$     18D2 GR  |   2 A$mainSupport$     18D4 GR
  2 A$mainSupport$     18D5 GR  |   2 A$mainSupport$     18D6 GR
  2 A$mainSupport$     18D8 GR  |   2 A$mainSupport$     18DC GR
  2 A$mainSupport$     18DE GR  |   2 A$mainSupport$     18E1 GR
  2 A$mainSupport$     028F GR  |   2 A$mainSupport$     18E4 GR
  2 A$mainSupport$     18E7 GR  |   2 A$mainSupport$     18EA GR
  2 A$mainSupport$     18ED GR  |   2 A$mainSupport$     18F0 GR
  2 A$mainSupport$     18F1 GR  |   2 A$mainSupport$     18F3 GR
  2 A$mainSupport$     0292 GR  |   2 A$mainSupport$     18F4 GR
  2 A$mainSupport$     18F5 GR  |   2 A$mainSupport$     18F7 GR
  2 A$mainSupport$     18FB GR  |   2 A$mainSupport$     18FD GR
  2 A$mainSupport$     1900 GR  |   2 A$mainSupport$     0294 GR
  2 A$mainSupport$     1903 GR  |   2 A$mainSupport$     1906 GR
  2 A$mainSupport$     1909 GR  |   2 A$mainSupport$     190B GR
  2 A$mainSupport$     190E GR  |   2 A$mainSupport$     1910 GR
  2 A$mainSupport$     0296 GR  |   2 A$mainSupport$     1913 GR
  2 A$mainSupport$     1915 GR  |   2 A$mainSupport$     1918 GR
  2 A$mainSupport$     191A GR  |   2 A$mainSupport$     191C GR
  2 A$mainSupport$     1920 GR  |   2 A$mainSupport$     1922 GR
  2 A$mainSupport$     1926 GR  |   2 A$mainSupport$     1929 GR
  2 A$mainSupport$     192D GR  |   2 A$mainSupport$     1930 GR
  2 A$mainSupport$     1931 GR  |   2 A$mainSupport$     1933 GR
  2 A$mainSupport$     1934 GR  |   2 A$mainSupport$     1935 GR
  2 A$mainSupport$     1937 GR  |   2 A$mainSupport$     193B GR
  2 A$mainSupport$     193D GR  |   2 A$mainSupport$     1940 GR
  2 A$mainSupport$     1943 GR  |   2 A$mainSupport$     1946 GR
  2 A$mainSupport$     1949 GR  |   2 A$mainSupport$     194B GR
  2 A$mainSupport$     194E GR  |   2 A$mainSupport$     029A GR
  2 A$mainSupport$     1950 GR  |   2 A$mainSupport$     1953 GR
  2 A$mainSupport$     1955 GR  |   2 A$mainSupport$     1958 GR
  2 A$mainSupport$     029C GR  |   2 A$mainSupport$     195B GR
  2 A$mainSupport$     195E GR  |   2 A$mainSupport$     1960 GR
  2 A$mainSupport$     029E GR  |   2 A$mainSupport$     1963 GR
  2 A$mainSupport$     1965 GR  |   2 A$mainSupport$     1968 GR
  2 A$mainSupport$     196A GR  |   2 A$mainSupport$     196C GR
  2 A$mainSupport$     196E GR  |   2 A$mainSupport$     02A1 GR
  2 A$mainSupport$     1971 GR  |   2 A$mainSupport$     1974 GR
  2 A$mainSupport$     02A3 GR  |   2 A$mainSupport$     1977 GR
  2 A$mainSupport$     1979 GR  |   2 A$mainSupport$     197C GR
  2 A$mainSupport$     197E GR  |   2 A$mainSupport$     1980 GR
  2 A$mainSupport$     1984 GR  |   2 A$mainSupport$     1986 GR
  2 A$mainSupport$     1988 GR  |   2 A$mainSupport$     198B GR
  2 A$mainSupport$     198E GR  |   2 A$mainSupport$     1991 GR
  2 A$mainSupport$     1994 GR  |   2 A$mainSupport$     1996 GR
  2 A$mainSupport$     1999 GR  |   2 A$mainSupport$     199B GR
  2 A$mainSupport$     199E GR  |   2 A$mainSupport$     19A0 GR
  2 A$mainSupport$     19A2 GR  |   2 A$mainSupport$     19A6 GR
  2 A$mainSupport$     19A9 GR  |   2 A$mainSupport$     19AB GR
  2 A$mainSupport$     19AD GR  |   2 A$mainSupport$     02A6 GR
  2 A$mainSupport$     19AF GR  |   2 A$mainSupport$     19B1 GR
  2 A$mainSupport$     19B4 GR  |   2 A$mainSupport$     19B6 GR
  2 A$mainSupport$     02A8 GR  |   2 A$mainSupport$     19B9 GR
  2 A$mainSupport$     19BB GR  |   2 A$mainSupport$     19BD GR
  2 A$mainSupport$     19BF GR  |   2 A$mainSupport$     19C3 GR
  2 A$mainSupport$     19C5 GR  |   2 A$mainSupport$     19C9 GR
  2 A$mainSupport$     19CB GR  |   2 A$mainSupport$     19CE GR
  2 A$mainSupport$     19D0 GR  |   2 A$mainSupport$     19D2 GR
  2 A$mainSupport$     19D4 GR  |   2 A$mainSupport$     19D7 GR
  2 A$mainSupport$     19DA GR  |   2 A$mainSupport$     19DB GR
  2 A$mainSupport$     19DD GR  |   2 A$mainSupport$     19DE GR
  2 A$mainSupport$     19DF GR  |   2 A$mainSupport$     19E1 GR
  2 A$mainSupport$     19E5 GR  |   2 A$mainSupport$     19E7 GR
  2 A$mainSupport$     19EA GR  |   2 A$mainSupport$     19ED GR
  2 A$mainSupport$     19F0 GR  |   2 A$mainSupport$     19F3 GR
  2 A$mainSupport$     19F6 GR  |   2 A$mainSupport$     19F8 GR
  2 A$mainSupport$     19FA GR  |   2 A$mainSupport$     19FE GR
  2 A$mainSupport$     1A00 GR  |   2 A$mainSupport$     1A02 GR
  2 A$mainSupport$     1A05 GR  |   2 A$mainSupport$     02AA GR
  2 A$mainSupport$     1A08 GR  |   2 A$mainSupport$     1A0B GR
  2 A$mainSupport$     02AD GR  |   2 A$mainSupport$     1A0E GR
  2 A$mainSupport$     1A11 GR  |   2 A$mainSupport$     1A13 GR
  2 A$mainSupport$     1A16 GR  |   2 A$mainSupport$     02B0 GR
  2 A$mainSupport$     1A18 GR  |   2 A$mainSupport$     1A1B GR
  2 A$mainSupport$     1A1E GR  |   2 A$mainSupport$     1A22 GR
  2 A$mainSupport$     1A24 GR  |   2 A$mainSupport$     1A28 GR
  2 A$mainSupport$     1A2C GR  |   2 A$mainSupport$     1A2E GR
  2 A$mainSupport$     1A2F GR  |   2 A$mainSupport$     1A30 GR
  2 A$mainSupport$     1A32 GR  |   2 A$mainSupport$     1A35 GR
  2 A$mainSupport$     1A39 GR  |   2 A$mainSupport$     1A3B GR
  2 A$mainSupport$     1A3F GR  |   2 A$mainSupport$     1A41 GR
  2 A$mainSupport$     1A43 GR  |   2 A$mainSupport$     1A46 GR
  2 A$mainSupport$     1A48 GR  |   2 A$mainSupport$     02B3 GR
  2 A$mainSupport$     1A4B GR  |   2 A$mainSupport$     1A4D GR
  2 A$mainSupport$     1A50 GR  |   2 A$mainSupport$     02B5 GR
  2 A$mainSupport$     1A53 GR  |   2 A$mainSupport$     1A56 GR
  2 A$mainSupport$     1A59 GR  |   2 A$mainSupport$     02B7 GR
  2 A$mainSupport$     1A5C GR  |   2 A$mainSupport$     1A5E GR
  2 A$mainSupport$     1A61 GR  |   2 A$mainSupport$     1A64 GR
  2 A$mainSupport$     02BA GR  |   2 A$mainSupport$     1A66 GR
  2 A$mainSupport$     1A68 GR  |   2 A$mainSupport$     1A6A GR
  2 A$mainSupport$     1A6D GR  |   2 A$mainSupport$     02BC GR
  2 A$mainSupport$     1A70 GR  |   2 A$mainSupport$     1A73 GR
  2 A$mainSupport$     1A76 GR  |   2 A$mainSupport$     1A79 GR
  2 A$mainSupport$     1A7B GR  |   2 A$mainSupport$     1A7D GR
  2 A$mainSupport$     1A81 GR  |   2 A$mainSupport$     1A84 GR
  2 A$mainSupport$     1A87 GR  |   2 A$mainSupport$     1A89 GR
  2 A$mainSupport$     1A8B GR  |   2 A$mainSupport$     1A8D GR
  2 A$mainSupport$     1A90 GR  |   2 A$mainSupport$     1A93 GR
  2 A$mainSupport$     1A94 GR  |   2 A$mainSupport$     1A96 GR
  2 A$mainSupport$     1A97 GR  |   2 A$mainSupport$     1A98 GR
  2 A$mainSupport$     1A9A GR  |   2 A$mainSupport$     1A9E GR
  2 A$mainSupport$     1AA0 GR  |   2 A$mainSupport$     1AA3 GR
  2 A$mainSupport$     1AA6 GR  |   2 A$mainSupport$     02BF GR
  2 A$mainSupport$     1AA9 GR  |   2 A$mainSupport$     1AAC GR
  2 A$mainSupport$     1AAE GR  |   2 A$mainSupport$     1AB0 GR
  2 A$mainSupport$     02C1 GR  |   2 A$mainSupport$     1AB3 GR
  2 A$mainSupport$     1AB5 GR  |   2 A$mainSupport$     1AB8 GR
  2 A$mainSupport$     1ABB GR  |   2 A$mainSupport$     1ABE GR
  2 A$mainSupport$     1AC0 GR  |   2 A$mainSupport$     1AC3 GR
  2 A$mainSupport$     1AC5 GR  |   2 A$mainSupport$     1AC8 GR
  2 A$mainSupport$     1ACA GR  |   2 A$mainSupport$     1ACC GR
  2 A$mainSupport$     1ACF GR  |   2 A$mainSupport$     1AD2 GR
  2 A$mainSupport$     1AD5 GR  |   2 A$mainSupport$     1AD8 GR
  2 A$mainSupport$     1ADB GR  |   2 A$mainSupport$     1ADE GR
  2 A$mainSupport$     1ADF GR  |   2 A$mainSupport$     1AE1 GR
  2 A$mainSupport$     1AE4 GR  |   2 A$mainSupport$     1AE6 GR
  2 A$mainSupport$     1AE8 GR  |   2 A$mainSupport$     1AEA GR
  2 A$mainSupport$     1AED GR  |   2 A$mainSupport$     1AF1 GR
  2 A$mainSupport$     02C3 GR  |   2 A$mainSupport$     1AF3 GR
  2 A$mainSupport$     1AF6 GR  |   2 A$mainSupport$     1AF8 GR
  2 A$mainSupport$     1AFB GR  |   2 A$mainSupport$     02C6 GR
  2 A$mainSupport$     1B53 GR  |   2 A$mainSupport$     1B55 GR
  2 A$mainSupport$     02C8 GR  |   2 A$mainSupport$     1B57 GR
  2 A$mainSupport$     1B5A GR  |   2 A$mainSupport$     1B5D GR
  2 A$mainSupport$     1B61 GR  |   2 A$mainSupport$     02CB GR
  2 A$mainSupport$     1B62 GR  |   2 A$mainSupport$     1B64 GR
  2 A$mainSupport$     1B65 GR  |   2 A$mainSupport$     1B67 GR
  2 A$mainSupport$     1B69 GR  |   2 A$mainSupport$     1B6B GR
  2 A$mainSupport$     1B6E GR  |   2 A$mainSupport$     1B70 GR
  2 A$mainSupport$     1B73 GR  |   2 A$mainSupport$     1B75 GR
  2 A$mainSupport$     02CD GR  |   2 A$mainSupport$     1B78 GR
  2 A$mainSupport$     1B7B GR  |   2 A$mainSupport$     1B7D GR
  2 A$mainSupport$     1B80 GR  |   2 A$mainSupport$     1B82 GR
  2 A$mainSupport$     1B85 GR  |   2 A$mainSupport$     1B87 GR
  2 A$mainSupport$     1B8A GR  |   2 A$mainSupport$     1B8C GR
  2 A$mainSupport$     1B8F GR  |   2 A$mainSupport$     02D0 GR
  2 A$mainSupport$     1B91 GR  |   2 A$mainSupport$     1B94 GR
  2 A$mainSupport$     1B97 GR  |   2 A$mainSupport$     1B99 GR
  2 A$mainSupport$     1B9B GR  |   2 A$mainSupport$     1B9D GR
  2 A$mainSupport$     1B9F GR  |   2 A$mainSupport$     1BA1 GR
  2 A$mainSupport$     1BA5 GR  |   2 A$mainSupport$     1BA7 GR
  2 A$mainSupport$     1BA9 GR  |   2 A$mainSupport$     1BAC GR
  2 A$mainSupport$     1BB0 GR  |   2 A$mainSupport$     1BB3 GR
  2 A$mainSupport$     1BB6 GR  |   2 A$mainSupport$     1BB9 GR
  2 A$mainSupport$     1BBB GR  |   2 A$mainSupport$     1BBC GR
  2 A$mainSupport$     1BBF GR  |   2 A$mainSupport$     1BC1 GR
  2 A$mainSupport$     1BC2 GR  |   2 A$mainSupport$     1BC4 GR
  2 A$mainSupport$     1BC6 GR  |   2 A$mainSupport$     1BC9 GR
  2 A$mainSupport$     1BCB GR  |   2 A$mainSupport$     1BCE GR
  2 A$mainSupport$     1BD0 GR  |   2 A$mainSupport$     1BD3 GR
  2 A$mainSupport$     1BD6 GR  |   2 A$mainSupport$     1BD8 GR
  2 A$mainSupport$     1BDB GR  |   2 A$mainSupport$     1BDD GR
  2 A$mainSupport$     1BE0 GR  |   2 A$mainSupport$     1BE2 GR
  2 A$mainSupport$     1BE5 GR  |   2 A$mainSupport$     1BE7 GR
  2 A$mainSupport$     1BEA GR  |   2 A$mainSupport$     02D3 GR
  2 A$mainSupport$     1BEC GR  |   2 A$mainSupport$     1BEF GR
  2 A$mainSupport$     1BF2 GR  |   2 A$mainSupport$     1BF4 GR
  2 A$mainSupport$     1BF6 GR  |   2 A$mainSupport$     1BF8 GR
  2 A$mainSupport$     1BFA GR  |   2 A$mainSupport$     02D5 GR
  2 A$mainSupport$     1BFC GR  |   2 A$mainSupport$     1BFF GR
  2 A$mainSupport$     1C02 GR  |   2 A$mainSupport$     1C03 GR
  2 A$mainSupport$     1C05 GR  |   2 A$mainSupport$     02D7 GR
  2 A$mainSupport$     1C08 GR  |   2 A$mainSupport$     1C09 GR
  2 A$mainSupport$     1C0B GR  |   2 A$mainSupport$     1C0E GR
  2 A$mainSupport$     1C10 GR  |   2 A$mainSupport$     1C13 GR
  2 A$mainSupport$     02DA GR  |   2 A$mainSupport$     1C15 GR
  2 A$mainSupport$     1C18 GR  |   2 A$mainSupport$     1C1B GR
  2 A$mainSupport$     1C1D GR  |   2 A$mainSupport$     1C20 GR
  2 A$mainSupport$     1C22 GR  |   2 A$mainSupport$     02DC GR
  2 A$mainSupport$     1C24 GR  |   2 A$mainSupport$     1C26 GR
  2 A$mainSupport$     1C29 GR  |   2 A$mainSupport$     1C2B GR
  2 A$mainSupport$     1C2D GR  |   2 A$mainSupport$     1C30 GR
  2 A$mainSupport$     1C33 GR  |   2 A$mainSupport$     1C35 GR
  2 A$mainSupport$     1C37 GR  |   2 A$mainSupport$     1C39 GR
  2 A$mainSupport$     1C3C GR  |   2 A$mainSupport$     1C3F GR
  2 A$mainSupport$     1C40 GR  |   2 A$mainSupport$     1C42 GR
  2 A$mainSupport$     1C45 GR  |   2 A$mainSupport$     1C47 GR
  2 A$mainSupport$     1C4A GR  |   2 A$mainSupport$     1C4C GR
  2 A$mainSupport$     1C4F GR  |   2 A$mainSupport$     1C52 GR
  2 A$mainSupport$     1C54 GR  |   2 A$mainSupport$     1C57 GR
  2 A$mainSupport$     1C5A GR  |   2 A$mainSupport$     1C5D GR
  2 A$mainSupport$     1C60 GR  |   2 A$mainSupport$     02DF GR
  2 A$mainSupport$     1C63 GR  |   2 A$mainSupport$     1C65 GR
  2 A$mainSupport$     1C67 GR  |   2 A$mainSupport$     1C69 GR
  2 A$mainSupport$     1C6C GR  |   2 A$mainSupport$     1C6F GR
  2 A$mainSupport$     1C71 GR  |   2 A$mainSupport$     02E1 GR
  2 A$mainSupport$     1C73 GR  |   2 A$mainSupport$     1C75 GR
  2 A$mainSupport$     1C77 GR  |   2 A$mainSupport$     1C78 GR
  2 A$mainSupport$     1C7A GR  |   2 A$mainSupport$     1C7C GR
  2 A$mainSupport$     1C7E GR  |   2 A$mainSupport$     1C80 GR
  2 A$mainSupport$     1C82 GR  |   2 A$mainSupport$     1C84 GR
  2 A$mainSupport$     1C87 GR  |   2 A$mainSupport$     1C89 GR
  2 A$mainSupport$     1C8C GR  |   2 A$mainSupport$     1C8E GR
  2 A$mainSupport$     1C91 GR  |   2 A$mainSupport$     1C94 GR
  2 A$mainSupport$     1C96 GR  |   2 A$mainSupport$     1C99 GR
  2 A$mainSupport$     1C9B GR  |   2 A$mainSupport$     1C9E GR
  2 A$mainSupport$     1CA0 GR  |   2 A$mainSupport$     1CA3 GR
  2 A$mainSupport$     1CA5 GR  |   2 A$mainSupport$     1CA8 GR
  2 A$mainSupport$     1CAA GR  |   2 A$mainSupport$     1CAD GR
  2 A$mainSupport$     1CB0 GR  |   2 A$mainSupport$     1CB2 GR
  2 A$mainSupport$     1CB4 GR  |   2 A$mainSupport$     1CB6 GR
  2 A$mainSupport$     1CB8 GR  |   2 A$mainSupport$     1CBA GR
  2 A$mainSupport$     1CBC GR  |   2 A$mainSupport$     1CC0 GR
  2 A$mainSupport$     1CC2 GR  |   2 A$mainSupport$     1CC5 GR
  2 A$mainSupport$     1CC9 GR  |   2 A$mainSupport$     1CCB GR
  2 A$mainSupport$     1CCC GR  |   2 A$mainSupport$     1CCE GR
  2 A$mainSupport$     1CD1 GR  |   2 A$mainSupport$     1CD3 GR
  2 A$mainSupport$     1CD5 GR  |   2 A$mainSupport$     1CD7 GR
  2 A$mainSupport$     1CDA GR  |   2 A$mainSupport$     1CDC GR
  2 A$mainSupport$     1CDE GR  |   2 A$mainSupport$     1CE0 GR
  2 A$mainSupport$     1CE3 GR  |   2 A$mainSupport$     1CE6 GR
  2 A$mainSupport$     1CE8 GR  |   2 A$mainSupport$     1CEA GR
  2 A$mainSupport$     1CED GR  |   2 A$mainSupport$     1CF0 GR
  2 A$mainSupport$     02E3 GR  |   2 A$mainSupport$     1CF3 GR
  2 A$mainSupport$     1CF6 GR  |   2 A$mainSupport$     02E5 GR
  2 A$mainSupport$     1CF9 GR  |   2 A$mainSupport$     1CFC GR
  2 A$mainSupport$     1CFD GR  |   2 A$mainSupport$     1CFF GR
  2 A$mainSupport$     1D02 GR  |   2 A$mainSupport$     1D05 GR
  2 A$mainSupport$     02E8 GR  |   2 A$mainSupport$     1D06 GR
  2 A$mainSupport$     1D08 GR  |   2 A$mainSupport$     1D0A GR
  2 A$mainSupport$     1D0D GR  |   2 A$mainSupport$     1D0F GR
  2 A$mainSupport$     1D12 GR  |   2 A$mainSupport$     02EA GR
  2 A$mainSupport$     1D14 GR  |   2 A$mainSupport$     1D17 GR
  2 A$mainSupport$     1D1A GR  |   2 A$mainSupport$     02ED GR
  2 A$mainSupport$     1D1C GR  |   2 A$mainSupport$     1D1E GR
  2 A$mainSupport$     1D20 GR  |   2 A$mainSupport$     1D22 GR
  2 A$mainSupport$     02EF GR  |   2 A$mainSupport$     1D25 GR
  2 A$mainSupport$     1D28 GR  |   2 A$mainSupport$     1D2A GR
  2 A$mainSupport$     1D2C GR  |   2 A$mainSupport$     1D2F GR
  2 A$mainSupport$     02F2 GR  |   2 A$mainSupport$     1D31 GR
  2 A$mainSupport$     1D34 GR  |   2 A$mainSupport$     1D37 GR
  2 A$mainSupport$     1D3A GR  |   2 A$mainSupport$     1D3D GR
  2 A$mainSupport$     1D40 GR  |   2 A$mainSupport$     1D7E GR
  2 A$mainSupport$     1D80 GR  |   2 A$mainSupport$     1D83 GR
  2 A$mainSupport$     1D86 GR  |   2 A$mainSupport$     1D87 GR
  2 A$mainSupport$     1D88 GR  |   2 A$mainSupport$     1D8A GR
  2 A$mainSupport$     1D8B GR  |   2 A$mainSupport$     1D8C GR
  2 A$mainSupport$     1D8D GR  |   2 A$mainSupport$     1D8E GR
  2 A$mainSupport$     1D90 GR  |   2 A$mainSupport$     1D91 GR
  2 A$mainSupport$     1D92 GR  |   2 A$mainSupport$     1D93 GR
  2 A$mainSupport$     1D94 GR  |   2 A$mainSupport$     1D95 GR
  2 A$mainSupport$     1D96 GR  |   2 A$mainSupport$     1D97 GR
  2 A$mainSupport$     1D98 GR  |   2 A$mainSupport$     1D99 GR
  2 A$mainSupport$     1D9A GR  |   2 A$mainSupport$     1D9C GR
  2 A$mainSupport$     1D9E GR  |   2 A$mainSupport$     1D9F GR
  2 A$mainSupport$     02F5 GR  |   2 A$mainSupport$     1DA0 GR
  2 A$mainSupport$     1DA1 GR  |   2 A$mainSupport$     1DA2 GR
  2 A$mainSupport$     1DA5 GR  |   2 A$mainSupport$     1DA7 GR
  2 A$mainSupport$     1DAA GR  |   2 A$mainSupport$     02F7 GR
  2 A$mainSupport$     1DAC GR  |   2 A$mainSupport$     1DAE GR
  2 A$mainSupport$     1DB1 GR  |   2 A$mainSupport$     1DB3 GR
  2 A$mainSupport$     1DB6 GR  |   2 A$mainSupport$     02F9 GR
  2 A$mainSupport$     1DB9 GR  |   2 A$mainSupport$     1DBC GR
  2 A$mainSupport$     1DBE GR  |   2 A$mainSupport$     1DC0 GR
  2 A$mainSupport$     1DC1 GR  |   2 A$mainSupport$     1DC2 GR
  2 A$mainSupport$     1DC3 GR  |   2 A$mainSupport$     02FB GR
  2 A$mainSupport$     1DC5 GR  |   2 A$mainSupport$     1DC6 GR
  2 A$mainSupport$     1DC8 GR  |   2 A$mainSupport$     1DCB GR
  2 A$mainSupport$     1DCD GR  |   2 A$mainSupport$     1DD0 GR
  2 A$mainSupport$     1DD3 GR  |   2 A$mainSupport$     1DD5 GR
  2 A$mainSupport$     1DD7 GR  |   2 A$mainSupport$     1DDA GR
  2 A$mainSupport$     02FE GR  |   2 A$mainSupport$     1DDC GR
  2 A$mainSupport$     1DDF GR  |   2 A$mainSupport$     1DE2 GR
  2 A$mainSupport$     1DE4 GR  |   2 A$mainSupport$     1DE7 GR
  2 A$mainSupport$     0300 GR  |   2 A$mainSupport$     1DEA GR
  2 A$mainSupport$     1DED GR  |   2 A$mainSupport$     1DEF GR
  2 A$mainSupport$     1DF2 GR  |   2 A$mainSupport$     1DF5 GR
  2 A$mainSupport$     1DF7 GR  |   2 A$mainSupport$     1DF9 GR
  2 A$mainSupport$     1DFD GR  |   2 A$mainSupport$     1DFF GR
  2 A$mainSupport$     1E01 GR  |   2 A$mainSupport$     1E03 GR
  2 A$mainSupport$     1E07 GR  |   2 A$mainSupport$     1E09 GR
  2 A$mainSupport$     1E0C GR  |   2 A$mainSupport$     1E0F GR
  2 A$mainSupport$     1E12 GR  |   2 A$mainSupport$     1E14 GR
  2 A$mainSupport$     1E17 GR  |   2 A$mainSupport$     1E19 GR
  2 A$mainSupport$     1E1B GR  |   2 A$mainSupport$     1E1D GR
  2 A$mainSupport$     1E1E GR  |   2 A$mainSupport$     1E1F GR
  2 A$mainSupport$     1E20 GR  |   2 A$mainSupport$     1E22 GR
  2 A$mainSupport$     1E23 GR  |   2 A$mainSupport$     1E25 GR
  2 A$mainSupport$     1E27 GR  |   2 A$mainSupport$     1E29 GR
  2 A$mainSupport$     1E2C GR  |   2 A$mainSupport$     1E2E GR
  2 A$mainSupport$     1E30 GR  |   2 A$mainSupport$     1E32 GR
  2 A$mainSupport$     1E35 GR  |   2 A$mainSupport$     1E38 GR
  2 A$mainSupport$     0303 GR  |   2 A$mainSupport$     1E3B GR
  2 A$mainSupport$     1E3E GR  |   2 A$mainSupport$     1E41 GR
  2 A$mainSupport$     1E42 GR  |   2 A$mainSupport$     1E44 GR
  2 A$mainSupport$     0305 GR  |   2 A$mainSupport$     1E46 GR
  2 A$mainSupport$     1E48 GR  |   2 A$mainSupport$     1E4A GR
  2 A$mainSupport$     1E4B GR  |   2 A$mainSupport$     1E4D GR
  2 A$mainSupport$     1E4E GR  |   2 A$mainSupport$     1E4F GR
  2 A$mainSupport$     1E50 GR  |   2 A$mainSupport$     1E51 GR
  2 A$mainSupport$     1E52 GR  |   2 A$mainSupport$     1E53 GR
  2 A$mainSupport$     1E56 GR  |   2 A$mainSupport$     1E58 GR
  2 A$mainSupport$     1E5A GR  |   2 A$mainSupport$     1E5D GR
  2 A$mainSupport$     1E5F GR  |   2 A$mainSupport$     1E61 GR
  2 A$mainSupport$     1E63 GR  |   2 A$mainSupport$     1E65 GR
  2 A$mainSupport$     1E67 GR  |   2 A$mainSupport$     1E69 GR
  2 A$mainSupport$     1E6B GR  |   2 A$mainSupport$     1E6D GR
  2 A$mainSupport$     1E6F GR  |   2 A$mainSupport$     1E71 GR
  2 A$mainSupport$     1E73 GR  |   2 A$mainSupport$     1E75 GR
  2 A$mainSupport$     1E77 GR  |   2 A$mainSupport$     1E79 GR
  2 A$mainSupport$     1E7C GR  |   2 A$mainSupport$     1E7F GR
  2 A$mainSupport$     1E82 GR  |   2 A$mainSupport$     1E85 GR
  2 A$mainSupport$     0307 GR  |   2 A$mainSupport$     1E87 GR
  2 A$mainSupport$     1E89 GR  |   2 A$mainSupport$     1E8A GR
  2 A$mainSupport$     1E8C GR  |   2 A$mainSupport$     1E8D GR
  2 A$mainSupport$     1E8E GR  |   2 A$mainSupport$     1E8F GR
  2 A$mainSupport$     0309 GR  |   2 A$mainSupport$     1E90 GR
  2 A$mainSupport$     1E91 GR  |   2 A$mainSupport$     1E92 GR
  2 A$mainSupport$     1E95 GR  |   2 A$mainSupport$     1E97 GR
  2 A$mainSupport$     030C GR  |   2 A$mainSupport$     1E98 GR
  2 A$mainSupport$     1E9B GR  |   2 A$mainSupport$     1E9D GR
  2 A$mainSupport$     1E9E GR  |   2 A$mainSupport$     1EA0 GR
  2 A$mainSupport$     1EA2 GR  |   2 A$mainSupport$     1EA4 GR
  2 A$mainSupport$     1EA6 GR  |   2 A$mainSupport$     1EA8 GR
  2 A$mainSupport$     030E GR  |   2 A$mainSupport$     1EAA GR
  2 A$mainSupport$     1EAC GR  |   2 A$mainSupport$     1EAF GR
  2 A$mainSupport$     0311 GR  |   2 A$mainSupport$     1EB1 GR
  2 A$mainSupport$     1EB4 GR  |   2 A$mainSupport$     0313 GR
  2 A$mainSupport$     1EB7 GR  |   2 A$mainSupport$     1EB9 GR
  2 A$mainSupport$     1EBC GR  |   2 A$mainSupport$     0316 GR
  2 A$mainSupport$     1EBF GR  |   2 A$mainSupport$     1EC2 GR
  2 A$mainSupport$     1EC5 GR  |   2 A$mainSupport$     1EC8 GR
  2 A$mainSupport$     1ECB GR  |   2 A$mainSupport$     1ECE GR
  2 A$mainSupport$     1ED1 GR  |   2 A$mainSupport$     1ED4 GR
  2 A$mainSupport$     1ED7 GR  |   2 A$mainSupport$     1ED9 GR
  2 A$mainSupport$     1EDC GR  |   2 A$mainSupport$     0319 GR
  2 A$mainSupport$     1EDF GR  |   2 A$mainSupport$     1EE1 GR
  2 A$mainSupport$     1EE4 GR  |   2 A$mainSupport$     1EE6 GR
  2 A$mainSupport$     031B GR  |   2 A$mainSupport$     1EE9 GR
  2 A$mainSupport$     1EEC GR  |   2 A$mainSupport$     031D GR
  2 A$mainSupport$     1EEF GR  |   2 A$mainSupport$     1EF2 GR
  2 A$mainSupport$     0320 GR  |   2 A$mainSupport$     1EF5 GR
  2 A$mainSupport$     1EF7 GR  |   2 A$mainSupport$     0322 GR
  2 A$mainSupport$     0325 GR  |   2 A$mainSupport$     0327 GR
  2 A$mainSupport$     0329 GR  |   2 A$mainSupport$     032B GR
  2 A$mainSupport$     032E GR  |   2 A$mainSupport$     0330 GR
  2 A$mainSupport$     0333 GR  |   2 A$mainSupport$     0335 GR
  2 A$mainSupport$     0338 GR  |   2 A$mainSupport$     033B GR
  2 A$mainSupport$     033D GR  |   2 A$mainSupport$     033F GR
  2 A$mainSupport$     0341 GR  |   2 A$mainSupport$     0344 GR
  2 A$mainSupport$     0346 GR  |   2 A$mainSupport$     0349 GR
  2 A$mainSupport$     034B GR  |   2 A$mainSupport$     034D GR
  2 A$mainSupport$     034F GR  |   2 A$mainSupport$     0352 GR
  2 A$mainSupport$     0354 GR  |   2 A$mainSupport$     0356 GR
  2 A$mainSupport$     035A GR  |   2 A$mainSupport$     035C GR
  2 A$mainSupport$     035E GR  |   2 A$mainSupport$     0361 GR
  2 A$mainSupport$     0363 GR  |   2 A$mainSupport$     0366 GR
  2 A$mainSupport$     0368 GR  |   2 A$mainSupport$     036A GR
  2 A$mainSupport$     036C GR  |   2 A$mainSupport$     036E GR
  2 A$mainSupport$     0372 GR  |   2 A$mainSupport$     0374 GR
  2 A$mainSupport$     0378 GR  |   2 A$mainSupport$     037A GR
  2 A$mainSupport$     037C GR  |   2 A$mainSupport$     0380 GR
  2 A$mainSupport$     0382 GR  |   2 A$mainSupport$     0385 GR
  2 A$mainSupport$     0388 GR  |   2 A$mainSupport$     038A GR
  2 A$mainSupport$     038C GR  |   2 A$mainSupport$     038F GR
  2 A$mainSupport$     0391 GR  |   2 A$mainSupport$     0394 GR
  2 A$mainSupport$     0396 GR  |   2 A$mainSupport$     0398 GR
  2 A$mainSupport$     039A GR  |   2 A$mainSupport$     039C GR
  2 A$mainSupport$     039E GR  |   2 A$mainSupport$     03A0 GR
  2 A$mainSupport$     03A2 GR  |   2 A$mainSupport$     03A6 GR
  2 A$mainSupport$     03AA GR  |   2 A$mainSupport$     03AD GR
  2 A$mainSupport$     03AF GR  |   2 A$mainSupport$     03B1 GR
  2 A$mainSupport$     03B5 GR  |   2 A$mainSupport$     03B7 GR
  2 A$mainSupport$     03B9 GR  |   2 A$mainSupport$     03BC GR
  2 A$mainSupport$     03BE GR  |   2 A$mainSupport$     03C1 GR
  2 A$mainSupport$     03C3 GR  |   2 A$mainSupport$     03C5 GR
  2 A$mainSupport$     03C9 GR  |   2 A$mainSupport$     03CB GR
  2 A$mainSupport$     03CF GR  |   2 A$mainSupport$     03D1 GR
  2 A$mainSupport$     03D5 GR  |   2 A$mainSupport$     03D7 GR
  2 A$mainSupport$     03DA GR  |   2 A$mainSupport$     03DD GR
  2 A$mainSupport$     03DF GR  |   2 A$mainSupport$     03E1 GR
  2 A$mainSupport$     03E2 GR  |   2 A$mainSupport$     03E4 GR
  2 A$mainSupport$     03E6 GR  |   2 A$mainSupport$     03E8 GR
  2 A$mainSupport$     03EB GR  |   2 A$mainSupport$     03ED GR
  2 A$mainSupport$     03F0 GR  |   2 A$mainSupport$     03F2 GR
  2 A$mainSupport$     03F4 GR  |   2 A$mainSupport$     03F6 GR
  2 A$mainSupport$     03F8 GR  |   2 A$mainSupport$     03FC GR
  2 A$mainSupport$     03FE GR  |   2 A$mainSupport$     0401 GR
  2 A$mainSupport$     0403 GR  |   2 A$mainSupport$     0405 GR
  2 A$mainSupport$     0407 GR  |   2 A$mainSupport$     0409 GR
  2 A$mainSupport$     040B GR  |   2 A$mainSupport$     040D GR
  2 A$mainSupport$     040E GR  |   2 A$mainSupport$     0410 GR
  2 A$mainSupport$     0412 GR  |   2 A$mainSupport$     0414 GR
  2 A$mainSupport$     0416 GR  |   2 A$mainSupport$     0418 GR
  2 A$mainSupport$     041A GR  |   2 A$mainSupport$     041B GR
  2 A$mainSupport$     041D GR  |   2 A$mainSupport$     041F GR
  2 A$mainSupport$     0421 GR  |   2 A$mainSupport$     0422 GR
  2 A$mainSupport$     0424 GR  |   2 A$mainSupport$     0426 GR
  2 A$mainSupport$     0428 GR  |   2 A$mainSupport$     042B GR
  2 A$mainSupport$     042D GR  |   2 A$mainSupport$     0430 GR
  2 A$mainSupport$     0433 GR  |   2 A$mainSupport$     0435 GR
  2 A$mainSupport$     0437 GR  |   2 A$mainSupport$     043A GR
  2 A$mainSupport$     043E GR  |   2 A$mainSupport$     0440 GR
  2 A$mainSupport$     0442 GR  |   2 A$mainSupport$     0444 GR
  2 A$mainSupport$     0445 GR  |   2 A$mainSupport$     0447 GR
  2 A$mainSupport$     0449 GR  |   2 A$mainSupport$     044B GR
  2 A$mainSupport$     044D GR  |   2 A$mainSupport$     044F GR
  2 A$mainSupport$     0450 GR  |   2 A$mainSupport$     0451 GR
  2 A$mainSupport$     0453 GR  |   2 A$mainSupport$     0457 GR
  2 A$mainSupport$     0459 GR  |   2 A$mainSupport$     045B GR
  2 A$mainSupport$     045E GR  |   2 A$mainSupport$     0461 GR
  2 A$mainSupport$     0464 GR  |   2 A$mainSupport$     0466 GR
  2 A$mainSupport$     0469 GR  |   2 A$mainSupport$     046B GR
  2 A$mainSupport$     046D GR  |   2 A$mainSupport$     0470 GR
  2 A$mainSupport$     0474 GR  |   2 A$mainSupport$     0476 GR
  2 A$mainSupport$     0479 GR  |   2 A$mainSupport$     047C GR
  2 A$mainSupport$     047F GR  |   2 A$mainSupport$     0482 GR
  2 A$mainSupport$     0484 GR  |   2 A$mainSupport$     0486 GR
  2 A$mainSupport$     0488 GR  |   2 A$mainSupport$     048A GR
  2 A$mainSupport$     048D GR  |   2 A$mainSupport$     048F GR
  2 A$mainSupport$     0492 GR  |   2 A$mainSupport$     0494 GR
  2 A$mainSupport$     0497 GR  |   2 A$mainSupport$     049A GR
  2 A$mainSupport$     049D GR  |   2 A$mainSupport$     049F GR
  2 A$mainSupport$     04A2 GR  |   2 A$mainSupport$     04A4 GR
  2 A$mainSupport$     04A6 GR  |   2 A$mainSupport$     04A9 GR
  2 A$mainSupport$     04AB GR  |   2 A$mainSupport$     04AD GR
  2 A$mainSupport$     04AF GR  |   2 A$mainSupport$     04B2 GR
  2 A$mainSupport$     04B5 GR  |   2 A$mainSupport$     04B9 GR
  2 A$mainSupport$     04BB GR  |   2 A$mainSupport$     04BE GR
  2 A$mainSupport$     04C0 GR  |   2 A$mainSupport$     04C1 GR
  2 A$mainSupport$     04C3 GR  |   2 A$mainSupport$     04C5 GR
  2 A$mainSupport$     04C8 GR  |   2 A$mainSupport$     04CB GR
  2 A$mainSupport$     04CD GR  |   2 A$mainSupport$     04D0 GR
  2 A$mainSupport$     04D2 GR  |   2 A$mainSupport$     04D5 GR
  2 A$mainSupport$     04D7 GR  |   2 A$mainSupport$     04DA GR
  2 A$mainSupport$     04DD GR  |   2 A$mainSupport$     04DF GR
  2 A$mainSupport$     04E2 GR  |   2 A$mainSupport$     04E4 GR
  2 A$mainSupport$     04E7 GR  |   2 A$mainSupport$     04E9 GR
  2 A$mainSupport$     04EB GR  |   2 A$mainSupport$     04EE GR
  2 A$mainSupport$     04F0 GR  |   2 A$mainSupport$     0120 GR
  2 A$mainSupport$     04F3 GR  |   2 A$mainSupport$     04F5 GR
  2 A$mainSupport$     04F7 GR  |   2 A$mainSupport$     04F9 GR
  2 A$mainSupport$     04FC GR  |   2 A$mainSupport$     0122 GR
  2 A$mainSupport$     04FE GR  |   2 L10                0276 R
  2 L100               1AF8 R   |   2 L101               0F0A R
  2 L102               0E0F R   |   2 L103               0F22 R
  2 L104               0F36 R   |   2 L105               10EF R
  2 L106               0F80 R   |   2 L107               1AC8 R
  2 L108               1010 R   |   2 L109               1AB8 R
  2 L110               0F9C R   |   2 L111               0FC6 R
  2 L112               0FF6 R   |   2 L113               1002 R
  2 L114               103F R   |   2 L115               103C R
  2 L116               1052 R   |   2 L117               10DA R
  2 L118               108C R   |   2 L119               10C7 R
  2 L12                0352 R   |   2 L120               1AB3 R
  2 L121               1256 R   |   2 L122               1193 R
  2 L123               1149 R   |   2 L124               1161 R
  2 L125               117B R   |   2 L126               118A R
  2 L127               11A6 R   |   2 L128               11B9 R
  2 L129               11CC R   |   2 L13                03AD R
  2 L130               1241 R   |   2 L131               11E8 R
  2 L132               1228 R   |   2 L133               13A3 R
  2 L134               1285 R   |   2 L135               12B4 R
  2 L136               12B1 R   |   2 L137               12C7 R
  2 L138               12DA R   |   2 L139               1360 R
  2 L14                03A0 R   |   2 L140               1314 R
  2 L141               1344 R   |   2 L142               1357 R
  2 L143               139A R   |   2 L144               15C9 R
  2 L145               14B1 R   |   2 L146               13BE R
  2 L147               13D9 R   |   2 L148               1402 R
  2 L149               13EE R   |   2 L15                0374 R
  2 L150               13E5 R   |   2 L151               1422 R
  2 L152               1444 R   |   2 L153               1464 R
  2 L154               1454 R   |   2 L155               1470 R
  2 L156               147C R   |   2 L157               1488 R
  2 L158               1494 R   |   2 L159               149F R
  2 L16                03CB R   |   2 L160               13CC R
  2 L161               14A8 R   |   2 L163               14F3 R
  2 L164               1506 R   |   2 L165               1545 R
  2 L166               153C R   |   2 L167               1558 R
  2 L168               157A R   |   2 L169               1571 R
  2 L17                040D R   |   2 L170               1AF6 R
  2 L171               197C R   |   2 L172               182B R
  2 L173               15E4 R   |   2 L174               15ED R
  2 L175               168F R   |   2 L176               1685 R
  2 L177               16CC R   |   2 L178               16BA R
  2 L179               1709 R   |   2 L18                041D R
  2 L180               16F7 R   |   2 L181               171D R
  2 L182               1731 R   |   2 L184               1744 R
  2 L185               1741 R   |   2 L186               174C R
  2 L187               15FC R   |   2 L188               1799 R
  2 L189               1770 R   |   2 L19                0469 R
  2 L190               1784 R   |   2 L191               17A7 R
  2 L192               1795 R   |   2 L193               17EA R
  2 L194               17F9 R   |   2 L195               180D R
  2 L196               183E R   |   2 L197               188A R
  2 L198               185F R   |   2 L199               1887 R
  2 L2                 012E R   |   2 L20                04EE R
  2 L200               18A9 R   |   2 L201               1918 R
  2 L202               18ED R   |   2 L203               195E R
  2 L204               1971 R   |   2 L205               19A9 R
  2 L207               19BB R   |   2 L208               19F6 R
  2 L209               19D7 R   |   2 L21                04A9 R
  2 L210               1A64 R   |   2 L211               1A0B R
  2 L212               1A0E R   |   2 L213               1A22 R
  2 L214               1A79 R   |   2 L219               115F R
  2 L22                04E9 R   |   2 L220               14AB R
  2 L221               1913 R   |   2 L222               1AC3 R
  2 L223               1AAE R   |   2 L224               1176 R
  2 L225               1AB3 R   |   2 L226               19D2 R
  2 L227               1087 R   |   2 L228               1AAC R
  2 L23                04D7 R   |   2 L230               1C63 R
  2 L232               1C3C R   |   2 L235               1C71 R
  2 L236               1CB6 R   |   2 L238               1CDC R
  2 L24                04D2 R   |   2 L240               1D14 R
  2 L241               1D1C R   |   2 L242               1D3D R
  2 L243               1BB0 R   |   2 L244               1C2B R
  2 L245               1CC9 R   |   2 L246               1CE0 R
  2 L248               1DDF R   |   2 L249               1E35 R
  2 L25                04FE R   |   2 L250               1E14 R
  2 L253               1E09 R   |   2 L255               1E5A R
  2 L256               1E48 R   |   2 L26                04FC R
  2 L261               1E98 R   |   2 L262               1E87 R
  2 L27                0136 R   |   2 L3                 0124 R
  2 L32                0281 R   |   2 L33                04E7 R
  2 L34                0349 R   |   2 L36                051C R
  2 L37                052B R   |   2 L4                 015A R
  2 L40                0528 R   |   2 L42                056C R
  2 L43                054F R   |   2 L47                0596 R
  2 L48                057E R   |   2 L49                059A R
  2 L5                 0168 R   |   2 L53                05C7 R
  2 L54                0601 R   |   2 L56                060F R
  2 L59                0627 R   |   2 L6                 01E3 R
  2 L60                063A R   |   2 L61                063D R
  2 L67                068B R   |   2 L7                 0187 R
  2 L71                06FA R   |   2 L73                07EC R
  2 L74                075F R   |   2 L75                0765 R
  2 L76                072A R   |   2 L77                081D R
  2 L78                0844 R   |   2 L79                0865 R
  2 L8                 04F0 R   |   2 L87                06F7 R
  2 L89                0E34 R   |   2 L9                 0292 R
  2 L90                0E43 R   |   2 L91                0E89 R
  2 L92                0E5E R   |   2 L93                0E6F R
  2 L94                0E8C R   |   2 L96                0EA0 R
  2 L97                0E9D R   |   2 L98                0ECE R
  2 L99                0F03 R   |   2 LC0                0000 R
  2 LC1                000C R   |   2 LC10               0071 R
  2 LC100              1AFD R   |   2 LC101              1B12 R
  2 LC102              1B28 R   |   2 LC103              1B3D R
  2 LC104              1D42 R   |   2 LC105              1D61 R
  2 LC11               007D R   |   2 LC12               0083 R
  2 LC13               008B R   |   2 LC14               0091 R
  2 LC15               0097 R   |   2 LC16               009D R
  2 LC17               00A9 R   |   2 LC18               00AE R
  2 LC19               00B8 R   |   2 LC2                0011 R
  2 LC20               00BD R   |   2 LC21               00C2 R
  2 LC22               00D7 R   |   2 LC23               00E2 R
  2 LC24               00EE R   |   2 LC25               00FF R
  2 LC26               06AC R   |   2 LC27               06BE R
  2 LC28               06D4 R   |   2 LC29               06E8 R
  2 LC3                0019 R   |   2 LC30               08D3 R
  2 LC31               08DC R   |   2 LC32               08E2 R
  2 LC33               08E7 R   |   2 LC34               0909 R
  2 LC35               092C R   |   2 LC36               0934 R
  2 LC37               0948 R   |   2 LC38               095C R
  2 LC39               097B R   |   2 LC4                0025 R
  2 LC40               0981 R   |   2 LC41               098D R
  2 LC42               099D R   |   2 LC43               09AF R
  2 LC44               09C6 R   |   2 LC45               09E3 R
  2 LC46               09F5 R   |   2 LC47               0A09 R
  2 LC48               0A26 R   |   2 LC49               0A35 R
  2 LC5                0030 R   |   2 LC50               0A54 R
  2 LC51               0A67 R   |   2 LC52               0A85 R
  2 LC53               0A93 R   |   2 LC54               0AA6 R
  2 LC55               0AC1 R   |   2 LC56               0AD8 R
  2 LC57               0AF3 R   |   2 LC58               0B02 R
  2 LC59               0B0D R   |   2 LC6                0041 R
  2 LC60               0B20 R   |   2 LC61               0B25 R
  2 LC62               0B2A R   |   2 LC63               0B30 R
  2 LC64               0B36 R   |   2 LC65               0B3A R
  2 LC66               0B3F R   |   2 LC67               0B4D R
  2 LC68               0B5F R   |   2 LC69               0B77 R
  2 LC7                0049 R   |   2 LC70               0B8C R
  2 LC71               0B97 R   |   2 LC72               0BB1 R
  2 LC73               0BBF R   |   2 LC74               0BCD R
  2 LC75               0BD8 R   |   2 LC76               0BEA R
  2 LC77               0BFD R   |   2 LC78               0C10 R
  2 LC79               0C23 R   |   2 LC8                005E R
  2 LC80               0C36 R   |   2 LC81               0C4A R
  2 LC82               0C5D R   |   2 LC83               0C6E R
  2 LC84               0C7C R   |   2 LC85               0C89 R
  2 LC86               0C9F R   |   2 LC87               0CA9 R
  2 LC88               0CCA R   |   2 LC89               0CEB R
  2 LC9                006C R   |   2 LC90               0CFC R
  2 LC91               0D13 R   |   2 LC92               0D2A R
  2 LC93               0D38 R   |   2 LC94               0D4E R
  2 LC95               0D6E R   |   2 LC96               0D79 R
  2 LC97               0D8E R   |   2 LC98               0DB3 R
  2 LC99               0DD3 R   |     _Joy_Digital2      **** GX
    _RandMax           **** GX  |     _Vec_Buttons       **** GX
    _Vec_Joy_1_X       **** GX  |     _Vec_Joy_1_Y       **** GX
    _Vec_Music_Wk_     **** GX  |     _Vec_Music_Wk_     **** GX
    _Vec_XXX_04        **** GX  |     _Vec_XXX_08        **** GX
    __Do_Sound         **** GX  |     __Intensity_a      **** GX
    __XC               **** GX  |     __YC               **** GX
    ___Intensity_3     **** GX  |     ___Intensity_5     **** GX
    ___Intensity_7     **** GX  |     ___Joy_Digital     **** GX
    ___Read_Btns       **** GX  |     ___Wait_Recal      **** GX
    ___ashlsi3         **** GX  |     ___mulsi3          **** GX
    __fi_s             **** GX  |     __fi_s_s           **** GX
    __fii              **** GX  |     __fl_l_s           **** GX
    __fl_s             **** GX  |     __fll_s            **** GX
    __fs               **** GX  |     __fsi_s            **** GX
    __fsl_s            **** GX  |     _above             **** GX
    _box               **** GX  |   2 _castSpell         0DEB GR
    _ch                **** GX  |   2 _checkXP           1B53 GR
  2 _clearMap          1E42 GR  |   2 _clearMonsterS     0686 GR
  2 _createCharact     06F3 GR  |     _cs                **** GX
    _cx                **** GX  |     _cy                **** GX
    _cz                **** GX  |     _displayMessag     **** GX
  2 _displayRound      0507 GR  |   2 _displayStatus     0120 GR
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
    _effectOffsetX     **** GX  |     _effectOffsetY     **** GX
    _effectTimer       **** GX  |   2 _elevator          0534 GR
    _elevatorY         **** GX  |     _environment_s     **** GX
    _ex                **** GX  |     _fillMap           **** GX
    _gd                **** GX  |     _hp                **** GX
    _inElevator        **** GX  |   2 _initBox           059D GR
    _initSoundNo       **** GX  |     _initString        **** GX
  2 _initVars          1E73 GR  |     _inventory         **** GX
    _items             **** GX  |     _l                 **** GX
    _lRandMax          **** GX  |     _lastX             **** GX
    _lastY             **** GX  |     _lightChange       **** GX
    _lltmp             **** GX  |     _localTimer        **** GX
    _ltmp              **** GX  |     _lv                **** GX
    _m                 **** GX  |     _mh                **** GX
    _ml                **** GX  |     _mo                **** GX
  2 _monsterOnStac     05BE GR  |   2 _monsterOnStac     0613 GR
  2 _monsterOnStac     0679 GR  |     _msgLine           **** GX
    _mulhi3            **** GX  |   2 _pause             057C GR
    _printCharacte     **** GX  |     _printDungeon      **** GX
    _printEnvironm     **** GX  |     _printMessage      **** GX
    _printTreasure     **** GX  |     _printfEffect      **** GX
    _printfsi          **** GX  |   2 _randomXP          1D7E GR
    _s                 **** GX  |     _screen            **** GX
    _sf                **** GX  |     _sfx_status_1      **** GX
    _specialAction     **** GX  |     _spellNames        **** GX
    _stackM            **** GX  |     _stackMH           **** GX
    _stackML           **** GX  |     _stats             **** GX
    _stringBuffer4     **** GX  |     _su                **** GX
    _subBank0          **** GX  |     _syncPrintStrd     **** GX
    _testForButton     **** GX  |     _tg                **** GX
    _timer             **** GX  |     _tmp               **** GX
    _tmp2              **** GX  |     _tmp_hp            **** GX
    _udivhi3           **** GX  |     _un                **** GX
    _wr2               **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 1EF9   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

