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
   388F                      39 LC0:
   388F 20 20 20 53 54 41    40 	.byte	32,32,32,83,84,65,84,83
        54 53
   3897 20 3E 3E 80 00       41 	.byte	32,62,62,-128,0
   389C                      42 LC1:
   389C 25 3A 20 25 00       43 	.ascii	"%: %\0"
   38A1                      44 LC2:
   38A1 44 55 4E 47 45 4F    45 	.ascii	"DUNGEON: %\0"
        4E 3A 20 25 00
   38AC                      46 LC3:
   38AC 48 50 3A 20 25 2F    47 	.ascii	"HP: %/%\0"
        25 00
   38B4                      48 LC4:
   38B4 3C 3C 20 56 41 52    49 	.byte	60,60,32,86,65,82,83,32
        53 20
   38BC 3E 3E 80 00          50 	.byte	62,62,-128,0
   38C0                      51 LC5:
   38C0 4C 56 3A 20 25 00    52 	.ascii	"LV: %\0"
   38C6                      53 LC6:
   38C6 53 55 3A 20 25 2F    54 	.ascii	"SU: %/%\0"
        25 00
   38CE                      55 LC7:
   38CE 58 50 3A 20 25 00    56 	.ascii	"XP: %\0"
   38D4                      57 LC8:
   38D4 47 44 3A 20 25 00    58 	.ascii	"GD: %\0"
   38DA                      59 LC9:
   38DA 54 47 3A 20 25 00    60 	.ascii	"TG: %\0"
   38E0                      61 LC10:
   38E0 3C 3C 20 4D 4F 44    62 	.byte	60,60,32,77,79,68,83,32
        53 20
   38E8 3E 3E 80 00          63 	.byte	62,62,-128,0
   38EC                      64 LC11:
   38EC 25 20 2B 25 00       65 	.ascii	"% +%\0"
   38F1                      66 LC12:
   38F1 3C 3C 20 49 54 45    67 	.byte	60,60,32,73,84,69,77,83
        4D 53
   38F9 80 00                68 	.byte	-128,0
   38FB                      69 LC13:
   38FB 25 20 3A 25 00       70 	.ascii	"% :%\0"
   3900                      71 LC14:
   3900 2D 2D 3E 80 00       72 	.byte	45,45,62,-128,0
   3905                      73 LC15:
   3905 59 4F 55 20 44 4F    74 	.ascii	"YOU DON'T HAVE ONE!!\0"
        4E 27 54 20 48 41
        56 45 20 4F 4E 45
        21 21 00
   391A                      75 LC16:
   391A 59 4F 55 20 55 53    76 	.ascii	"YOU USED %\0"
        45 44 20 25 00
   3925                      77 LC17:
   3925 2A 2A 2A 5A 41 50    78 	.ascii	"***ZAP!!***\0"
        21 21 2A 2A 2A 00
   3931                      79 LC18:
   3931 59 4F 55 20 46 45    80 	.ascii	"YOU FEEL BETTER!\0"
        45 4C 20 42 45 54
        54 45 52 21 00
   3942                      81 LC19:
   3942 53 54 52 45 4E 47    82 	.ascii	"STRENGTH FLOWS THROUGH YOUR BODY\0"
        54 48 20 46 4C 4F
        57 53 20 54 48 52
        4F 55 47 48 20 59
        4F 55 52 20 42 4F
        44 59 00
                             83 	.globl	_displayStatusPage
   3963                      84 _displayStatusPage:
   3963 34 60         [ 7]   85 	pshs	y,u	;
   3965 32 76         [ 5]   86 	leas	-10,s	;,,
                             87 ;----- asm -----
                             88 ; 48 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             89 	; #ENR#[47]unsigned int page = 0;
                             90 ; 50 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             91 	; #ENR#[48]int itemselect = 0;
                             92 ; 52 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             93 	; #ENR#[49]int lastdir = 0;
                             94 ; 54 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             95 	; #ENR#[50]int lastdiry = 0;
                             96 ; 56 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             97 	; #ENR#[51]int ret = 0;
                             98 ; 60 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                             99 	; #ENR#[54]do
                            100 ;--- end asm ---
   3967                     101 L3:
                            102 ;----- asm -----
                            103 ; 63 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            104 	; #ENR#[56]check_buttons();
                            105 ;--- end asm ---
   3967 BD F1 BA      [ 8]  106 	jsr	___Read_Btns
                            107 ;----- asm -----
                            108 ; 65 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            109 	; #ENR#[57]if (!buttons_pressed()) break;
                            110 ;--- end asm ---
   396A 7D C8 11      [ 7]  111 	tst	_Vec_Buttons	; Vec_Buttons
   396D 27 02         [ 3]  112 	beq	L2	;
                            113 ;----- asm -----
                            114 ; 67 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            115 	; #ENR#[58]} while (1);
                            116 ;--- end asm ---
   396F 20 F6         [ 3]  117 	bra	L3	;
   3971                     118 L2:
                            119 ;----- asm -----
                            120 ; 70 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            121 	; #ENR#[60]do
                            122 ;--- end asm ---
   3971 6F 63         [ 7]  123 	clr	3,s	; page
   3973 6F 64         [ 7]  124 	clr	4,s	; itemSelect
   3975 6F 65         [ 7]  125 	clr	5,s	; lastDir
   3977 6F 66         [ 7]  126 	clr	6,s	; lastDirY
   3979                     127 L25:
                            128 ;----- asm -----
                            129 ; 73 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            130 	; #ENR#[62]wait_recal();
                            131 ;--- end asm ---
   3979 BD F1 92      [ 8]  132 	jsr	___Wait_Recal
                            133 ;----- asm -----
                            134 ; 75 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            135 	; #ENR#[63]do_sound();
                            136 ;--- end asm ---
   397C BD 70 3C      [ 8]  137 	jsr	__Do_Sound
                            138 ;----- asm -----
                            139 ; 77 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            140 	; #ENR#[64]joy_digital();
                            141 ;--- end asm ---
   397F BD F1 F8      [ 8]  142 	jsr	___Joy_Digital
                            143 ;----- asm -----
                            144 ; 79 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            145 	; #ENR#[65]check_buttons();
                            146 ;--- end asm ---
   3982 BD F1 BA      [ 8]  147 	jsr	___Read_Btns
                            148 ;----- asm -----
                            149 ; 81 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            150 	; #ENR#[66]dp_via_t1_cnt_lo  = 0x7f;
                            151 ;--- end asm ---
   3985 C6 7F         [ 2]  152 	ldb	#127	;,
   3987 D7 04         [ 4]  153 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                            154 ;----- asm -----
                            155 ; 84 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            156 	; #ENR#[68]if ((vec_joy_1_x > 0) && (!lastdir))
                            157 ;--- end asm ---
   3989 F6 C8 1B      [ 5]  158 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   398C E7 69         [ 5]  159 	stb	9,s	;, lastDir.177
   398E 2F 0D         [ 3]  160 	ble	L4	;
   3990 6D 65         [ 7]  161 	tst	5,s	; lastDir
   3992 26 09         [ 3]  162 	bne	L4	;
   3994 E6 63         [ 5]  163 	ldb	3,s	;, page
   3996 C1 02         [ 2]  164 	cmpb	#2	;cmpqi:	;,
   3998 22 03         [ 3]  165 	bhi	L4	;
   399A 5C            [ 2]  166 	incb	;
   399B E7 63         [ 5]  167 	stb	3,s	;, page
   399D                     168 L4:
                            169 ;----- asm -----
                            170 ; 87 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            171 	; #ENR#[70]if ((vec_joy_1_x < 0) && (!lastdir))
                            172 ;--- end asm ---
   399D 6D 69         [ 7]  173 	tst	9,s	; lastDir.177
   399F 2C 0A         [ 3]  174 	bge	L5	;
   39A1 6D 65         [ 7]  175 	tst	5,s	; lastDir
   39A3 26 06         [ 3]  176 	bne	L5	;
   39A5 6D 63         [ 7]  177 	tst	3,s	; page
   39A7 27 02         [ 3]  178 	beq	L5	;
   39A9 6A 63         [ 7]  179 	dec	3,s	; page
   39AB                     180 L5:
                            181 ;----- asm -----
                            182 ; 90 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            183 	; #ENR#[72]lastdir = vec_joy_1_x;
                            184 ; 92 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            185 	; #ENR#[73]intensity_5f();
                            186 ;--- end asm ---
   39AB BD F2 A5      [ 8]  187 	jsr	___Intensity_5F
                            188 ;----- asm -----
                            189 ; 95 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            190 	; #ENR#[75]int y=0x78;
                            191 ; 97 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            192 	; #ENR#[76]if (page == 0)
                            193 ;--- end asm ---
   39AE C6 78         [ 2]  194 	ldb	#120	;,
   39B0 E7 E4         [ 4]  195 	stb	,s	;, y
   39B2 6D 63         [ 7]  196 	tst	3,s	; page
   39B4 10 26 00 88   [ 6]  197 	lbne	L7	;
                            198 ;----- asm -----
                            199 ; 100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            200 	; #ENR#[78]print_str_d(y,-0x20, );
                            201 ;--- end asm ---
   39B8 C6 78         [ 2]  202 	ldb	#120	;,
   39BA E7 E2         [ 6]  203 	stb	,-s	;,
   39BC 8E 38 8F      [ 3]  204 	ldx	#LC0	;,
   39BF C6 E0         [ 2]  205 	ldb	#-32	;,
   39C1 BD 58 75      [ 8]  206 	jsr	_syncPrintStrd
                            207 ;----- asm -----
                            208 ; 102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            209 	; #ENR#[79]reset0ref();
                            210 ;--- end asm ---
   39C4 C6 CC         [ 2]  211 	ldb	#-52	;,
   39C6 D7 0C         [ 4]  212 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            213 ;----- asm -----
                            214 ; 104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            215 	; #ENR#[80]y = 0x50;
                            216 ; 106 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            217 	; #ENR#[81]for (int i=0; i<6;i++)
                            218 ;--- end asm ---
   39C8 10 8E 00 00   [ 4]  219 	ldy	#0	; ivtmp.165,
   39CC 32 61         [ 5]  220 	leas	1,s	;,,
   39CE                     221 L8:
                            222 ;----- asm -----
                            223 ; 109 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            224 	; #ENR#[83]_fsi_s( , stats[i], s[i]);
                            225 ;--- end asm ---
   39CE 1F 20         [ 6]  226 	tfr	y,d	; ivtmp.165,
   39D0 58            [ 2]  227 	aslb	;
   39D1 49            [ 2]  228 	rola	;
   39D2 1F 01         [ 6]  229 	tfr	d,x	;, tmp173
   39D4 AE 89 01 64   [ 9]  230 	ldx	_stats,x	;, stats
   39D8 AF E3         [ 8]  231 	stx	,--s	;,
   39DA E6 A9 C9 43   [ 8]  232 	ldb	_s,y	;, s
   39DE 8E 38 9C      [ 3]  233 	ldx	#LC1	;,
   39E1 BD 6A 6A      [ 8]  234 	jsr	__fsi_s
                            235 ;----- asm -----
                            236 ; 111 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            237 	; #ENR#[84]print_str_d(y,-0x20, stringbuffer40);
                            238 ;--- end asm ---
   39E4 1F 20         [ 6]  239 	tfr	y,d	; ivtmp.165,
   39E6 86 F6         [ 2]  240 	lda	#-10	;umulqihi3	;
   39E8 3D            [11]  241 	mul
                            242 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   39E9 1F 01         [ 6]  243 	tfr	d,x	;, tmp176
                            244 ; ORG>	tfr	d,x	;, tmp176
                            245 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp176, tmp178
   39EB CB 50         [ 2]  246 	addb	#80	; tmp178,
   39ED 34 04         [ 6]  247 	pshs	b	; tmp178
   39EF 8E C8 BF      [ 3]  248 	ldx	#_stringBuffer40	;,
   39F2 C6 E0         [ 2]  249 	ldb	#-32	;,
   39F4 BD 58 75      [ 8]  250 	jsr	_syncPrintStrd
                            251 ;----- asm -----
                            252 ; 113 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            253 	; #ENR#[85]reset0ref();
                            254 ;--- end asm ---
   39F7 C6 CC         [ 2]  255 	ldb	#-52	;,
   39F9 D7 0C         [ 4]  256 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            257 ;----- asm -----
                            258 ; 115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            259 	; #ENR#[86]y -= 10;
                            260 ;--- end asm ---
   39FB 31 21         [ 5]  261 	leay	1,y	; ivtmp.165,, ivtmp.165
   39FD 32 63         [ 5]  262 	leas	3,s	;,,
   39FF 10 8C 00 06   [ 5]  263 	cmpy	#6	;cmphi:	; ivtmp.165,
   3A03 26 C9         [ 3]  264 	bne	L8	;
                            265 ;----- asm -----
                            266 ; 118 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            267 	; #ENR#[88]y -= 10;
                            268 ; 120 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            269 	; #ENR#[89]_fi_s( , cz);
                            270 ;--- end asm ---
   3A05 F6 C9 3A      [ 5]  271 	ldb	_cz	;, cz
   3A08 8E 38 A1      [ 3]  272 	ldx	#LC2	;,
   3A0B BD 5B BD      [ 8]  273 	jsr	__fi_s
                            274 ;----- asm -----
                            275 ; 122 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            276 	; #ENR#[90]print_str_d(y,-0x20, stringbuffer40);
                            277 ;--- end asm ---
   3A0E C6 0A         [ 2]  278 	ldb	#10	;,
   3A10 E7 E2         [ 6]  279 	stb	,-s	;,
   3A12 8E C8 BF      [ 3]  280 	ldx	#_stringBuffer40	;,
   3A15 C6 E0         [ 2]  281 	ldb	#-32	;,
   3A17 BD 58 75      [ 8]  282 	jsr	_syncPrintStrd
                            283 ;----- asm -----
                            284 ; 124 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            285 	; #ENR#[91]reset0ref();
                            286 ;--- end asm ---
   3A1A C6 CC         [ 2]  287 	ldb	#-52	;,
   3A1C D7 0C         [ 4]  288 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            289 ;----- asm -----
                            290 ; 127 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            291 	; #ENR#[93]y -= 10;
                            292 ; 129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            293 	; #ENR#[94]_fl_l_s( , (unsigned long int)ch, (unsigned long int)hp);
                            294 ;--- end asm ---
   3A1E BE C9 2B      [ 6]  295 	ldx	_hp	;, hp
   3A21 AF E3         [ 8]  296 	stx	,--s	;,
   3A23 FE C9 2D      [ 6]  297 	ldu	_ch	;, ch
   3A26 EF E3         [ 8]  298 	stu	,--s	;,
   3A28 8E 38 AC      [ 3]  299 	ldx	#LC3	;,
   3A2B BD 6C EE      [ 8]  300 	jsr	__fl_l_s
                            301 ;----- asm -----
                            302 ; 131 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            303 	; #ENR#[95]print_str_d(y,-0x20, stringbuffer40);
                            304 ;--- end asm ---
   3A2E 6F E2         [ 8]  305 	clr	,-s	;
   3A30 8E C8 BF      [ 3]  306 	ldx	#_stringBuffer40	;,
   3A33 C6 E0         [ 2]  307 	ldb	#-32	;,
   3A35 BD 58 75      [ 8]  308 	jsr	_syncPrintStrd
                            309 ;----- asm -----
                            310 ; 133 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            311 	; #ENR#[96]reset0ref();
                            312 ;--- end asm ---
   3A38 C6 CC         [ 2]  313 	ldb	#-52	;,
   3A3A D7 0C         [ 4]  314 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   3A3C 6F 66         [ 7]  315 	clr	6,s	; y
   3A3E 32 66         [ 5]  316 	leas	6,s	;,,
   3A40                     317 L7:
                            318 ;----- asm -----
                            319 ; 137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            320 	; #ENR#[99]if (page == 1)
                            321 ;--- end asm ---
   3A40 E6 63         [ 5]  322 	ldb	3,s	;, page
   3A42 C1 01         [ 2]  323 	cmpb	#1	;cmpqi:	;,
   3A44 10 26 00 B5   [ 6]  324 	lbne	L9	;
                            325 ;----- asm -----
                            326 ; 140 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            327 	; #ENR#[101]print_str_d(y,-0x20, );
                            328 ;--- end asm ---
   3A48 E6 E4         [ 4]  329 	ldb	,s	;, y
   3A4A 34 04         [ 6]  330 	pshs	b	;
   3A4C 8E 38 B4      [ 3]  331 	ldx	#LC4	;,
   3A4F C6 E0         [ 2]  332 	ldb	#-32	;,
   3A51 BD 58 75      [ 8]  333 	jsr	_syncPrintStrd
                            334 ;----- asm -----
                            335 ; 142 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            336 	; #ENR#[102]reset0ref();
                            337 ;--- end asm ---
   3A54 C6 CC         [ 2]  338 	ldb	#-52	;,
   3A56 D7 0C         [ 4]  339 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            340 ;----- asm -----
                            341 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            342 	; #ENR#[103]y = 0x50;
                            343 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            344 	; #ENR#[105]_fi_s( , lv);
                            345 ;--- end asm ---
   3A58 F6 C9 2F      [ 5]  346 	ldb	_lv	;, lv
   3A5B 8E 38 C0      [ 3]  347 	ldx	#LC5	;,
   3A5E BD 5B BD      [ 8]  348 	jsr	__fi_s
                            349 ;----- asm -----
                            350 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            351 	; #ENR#[106]print_str_d(y,-0x20, stringbuffer40);
                            352 ;--- end asm ---
   3A61 C6 50         [ 2]  353 	ldb	#80	;,
   3A63 E7 E2         [ 6]  354 	stb	,-s	;,
   3A65 8E C8 BF      [ 3]  355 	ldx	#_stringBuffer40	;,
   3A68 C6 E0         [ 2]  356 	ldb	#-32	;,
   3A6A BD 58 75      [ 8]  357 	jsr	_syncPrintStrd
                            358 ;----- asm -----
                            359 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            360 	; #ENR#[107]reset0ref();
                            361 ;--- end asm ---
   3A6D C6 CC         [ 2]  362 	ldb	#-52	;,
   3A6F D7 0C         [ 4]  363 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            364 ;----- asm -----
                            365 ; 155 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            366 	; #ENR#[110]y -= 10;
                            367 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            368 	; #ENR#[111]_fl_l_s( , cs, su);
                            369 ;--- end asm ---
   3A71 BE C9 34      [ 6]  370 	ldx	_su	;, su
   3A74 AF E3         [ 8]  371 	stx	,--s	;,
   3A76 FE C9 36      [ 6]  372 	ldu	_cs	;, cs
   3A79 EF E3         [ 8]  373 	stu	,--s	;,
   3A7B 8E 38 C6      [ 3]  374 	ldx	#LC6	;,
   3A7E BD 6C EE      [ 8]  375 	jsr	__fl_l_s
                            376 ;----- asm -----
                            377 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            378 	; #ENR#[112]print_str_d(y,-0x20, stringbuffer40);
                            379 ;--- end asm ---
   3A81 C6 46         [ 2]  380 	ldb	#70	;,
   3A83 E7 E2         [ 6]  381 	stb	,-s	;,
   3A85 8E C8 BF      [ 3]  382 	ldx	#_stringBuffer40	;,
   3A88 C6 E0         [ 2]  383 	ldb	#-32	;,
   3A8A BD 58 75      [ 8]  384 	jsr	_syncPrintStrd
                            385 ;----- asm -----
                            386 ; 161 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            387 	; #ENR#[113]reset0ref();
                            388 ;--- end asm ---
   3A8D C6 CC         [ 2]  389 	ldb	#-52	;,
   3A8F D7 0C         [ 4]  390 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            391 ;----- asm -----
                            392 ; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            393 	; #ENR#[115]y -= 10;
                            394 ; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            395 	; #ENR#[116]_fll_s( , ex);
                            396 ;--- end asm ---
   3A91 32 7C         [ 5]  397 	leas	-4,s	;,,
   3A93 BE C9 30      [ 6]  398 	ldx	_ex	;, ex
   3A96 AF E4         [ 5]  399 	stx	,s	;,
   3A98 FE C9 32      [ 6]  400 	ldu	_ex+2	;, ex
   3A9B EF 62         [ 6]  401 	stu	2,s	;,
   3A9D 8E 38 CE      [ 3]  402 	ldx	#LC7	;,
   3AA0 BD 66 B4      [ 8]  403 	jsr	__fll_s
                            404 ;----- asm -----
                            405 ; 168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            406 	; #ENR#[117]print_str_d(y,-0x20, stringbuffer40);
                            407 ;--- end asm ---
   3AA3 32 6B         [ 5]  408 	leas	11,s	;,,
   3AA5 C6 3C         [ 2]  409 	ldb	#60	;,
   3AA7 E7 E2         [ 6]  410 	stb	,-s	;,
   3AA9 8E C8 BF      [ 3]  411 	ldx	#_stringBuffer40	;,
   3AAC C6 E0         [ 2]  412 	ldb	#-32	;,
   3AAE BD 58 75      [ 8]  413 	jsr	_syncPrintStrd
                            414 ;----- asm -----
                            415 ; 170 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            416 	; #ENR#[118]reset0ref();
                            417 ;--- end asm ---
   3AB1 C6 CC         [ 2]  418 	ldb	#-52	;,
   3AB3 D7 0C         [ 4]  419 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            420 ;----- asm -----
                            421 ; 173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            422 	; #ENR#[120]y -= 10;
                            423 ; 175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            424 	; #ENR#[121]_fll_s( , gd);
                            425 ;--- end asm ---
   3AB5 32 7C         [ 5]  426 	leas	-4,s	;,,
   3AB7 BE C9 3B      [ 6]  427 	ldx	_gd	;, gd
   3ABA AF E4         [ 5]  428 	stx	,s	;,
   3ABC FE C9 3D      [ 6]  429 	ldu	_gd+2	;, gd
   3ABF EF 62         [ 6]  430 	stu	2,s	;,
   3AC1 8E 38 D4      [ 3]  431 	ldx	#LC8	;,
   3AC4 BD 66 B4      [ 8]  432 	jsr	__fll_s
                            433 ;----- asm -----
                            434 ; 177 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            435 	; #ENR#[122]print_str_d(y,-0x20, stringbuffer40);
                            436 ;--- end asm ---
   3AC7 C6 32         [ 2]  437 	ldb	#50	;,
   3AC9 E7 E2         [ 6]  438 	stb	,-s	;,
   3ACB 8E C8 BF      [ 3]  439 	ldx	#_stringBuffer40	;,
   3ACE C6 E0         [ 2]  440 	ldb	#-32	;,
   3AD0 BD 58 75      [ 8]  441 	jsr	_syncPrintStrd
                            442 ;----- asm -----
                            443 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            444 	; #ENR#[123]reset0ref();
                            445 ;--- end asm ---
   3AD3 C6 CC         [ 2]  446 	ldb	#-52	;,
   3AD5 D7 0C         [ 4]  447 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            448 ;----- asm -----
                            449 ; 182 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            450 	; #ENR#[125]y -= 10;
                            451 ; 184 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            452 	; #ENR#[126]_fll_s( , tg);
                            453 ;--- end asm ---
   3AD7 32 7C         [ 5]  454 	leas	-4,s	;,,
   3AD9 BE C9 3F      [ 6]  455 	ldx	_tg	;, tg
   3ADC AF E4         [ 5]  456 	stx	,s	;,
   3ADE FE C9 41      [ 6]  457 	ldu	_tg+2	;, tg
   3AE1 EF 62         [ 6]  458 	stu	2,s	;,
   3AE3 8E 38 DA      [ 3]  459 	ldx	#LC9	;,
   3AE6 BD 66 B4      [ 8]  460 	jsr	__fll_s
                            461 ;----- asm -----
                            462 ; 186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            463 	; #ENR#[127]print_str_d(y,-0x20, stringbuffer40);
                            464 ;--- end asm ---
   3AE9 32 6A         [ 5]  465 	leas	10,s	;,,
   3AEB C6 28         [ 2]  466 	ldb	#40	;,
   3AED E7 E2         [ 6]  467 	stb	,-s	;,
   3AEF 8E C8 BF      [ 3]  468 	ldx	#_stringBuffer40	;,
   3AF2 C6 E0         [ 2]  469 	ldb	#-32	;,
   3AF4 BD 58 75      [ 8]  470 	jsr	_syncPrintStrd
                            471 ;----- asm -----
                            472 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            473 	; #ENR#[128]reset0ref();
                            474 ;--- end asm ---
   3AF7 C6 CC         [ 2]  475 	ldb	#-52	;,
   3AF9 D7 0C         [ 4]  476 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   3AFB 32 61         [ 5]  477 	leas	1,s	;,,
   3AFD                     478 L9:
                            479 ;----- asm -----
                            480 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            481 	; #ENR#[131]if (page == 2)
                            482 ;--- end asm ---
   3AFD E6 63         [ 5]  483 	ldb	3,s	;, page
   3AFF C1 02         [ 2]  484 	cmpb	#2	;cmpqi:	;,
   3B01 10 26 00 58   [ 6]  485 	lbne	L10	;
                            486 ;----- asm -----
                            487 ; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            488 	; #ENR#[133]print_str_d(0x78,-0x20, );
                            489 ;--- end asm ---
   3B05 C6 78         [ 2]  490 	ldb	#120	;,
   3B07 E7 E2         [ 6]  491 	stb	,-s	;,
   3B09 8E 38 E0      [ 3]  492 	ldx	#LC10	;,
   3B0C C6 E0         [ 2]  493 	ldb	#-32	;,
   3B0E BD 58 75      [ 8]  494 	jsr	_syncPrintStrd
                            495 ;----- asm -----
                            496 ; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            497 	; #ENR#[134]reset0ref();
                            498 ;--- end asm ---
   3B11 C6 CC         [ 2]  499 	ldb	#-52	;,
   3B13 D7 0C         [ 4]  500 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            501 ;----- asm -----
                            502 ; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            503 	; #ENR#[135]y = 0x50;
                            504 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            505 	; #ENR#[136]for (int i=0; i<7;i++)
                            506 ;--- end asm ---
   3B15 C6 50         [ 2]  507 	ldb	#80	;,
   3B17 E7 69         [ 5]  508 	stb	9,s	;, y.176
   3B19 10 8E 00 00   [ 4]  509 	ldy	#0	; ivtmp.156,
   3B1D 32 61         [ 5]  510 	leas	1,s	;,,
   3B1F                     511 L12:
                            512 ;----- asm -----
                            513 ; 204 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            514 	; #ENR#[138]if (inventory[i]<=0) continue;
                            515 ;--- end asm ---
   3B1F E6 A9 C9 49   [ 8]  516 	ldb	_inventory,y	;, inventory
   3B23 E7 E4         [ 4]  517 	stb	,s	;, D.3315
   3B25 27 2C         [ 3]  518 	beq	L11	;
                            519 ;----- asm -----
                            520 ; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            521 	; #ENR#[139]_fsi_s( , items[i], inventory[i]);
                            522 ;--- end asm ---
   3B27 1F 20         [ 6]  523 	tfr	y,d	; ivtmp.156,
   3B29 58            [ 2]  524 	aslb	;
   3B2A 49            [ 2]  525 	rola	;
   3B2B 1F 01         [ 6]  526 	tfr	d,x	;, tmp190
   3B2D AE 89 01 F9   [ 9]  527 	ldx	_items,x	;, items
   3B31 AF E3         [ 8]  528 	stx	,--s	;,
   3B33 E6 62         [ 5]  529 	ldb	2,s	;, D.3315
   3B35 8E 38 EC      [ 3]  530 	ldx	#LC11	;,
   3B38 BD 6A 6A      [ 8]  531 	jsr	__fsi_s
                            532 ;----- asm -----
                            533 ; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            534 	; #ENR#[140]print_str_d(y,-0x20, stringbuffer40);
                            535 ;--- end asm ---
   3B3B E6 6A         [ 5]  536 	ldb	10,s	;, y.176
   3B3D 34 04         [ 6]  537 	pshs	b	;
   3B3F 8E C8 BF      [ 3]  538 	ldx	#_stringBuffer40	;,
   3B42 C6 E0         [ 2]  539 	ldb	#-32	;,
   3B44 BD 58 75      [ 8]  540 	jsr	_syncPrintStrd
                            541 ;----- asm -----
                            542 ; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            543 	; #ENR#[141]reset0ref();
                            544 ;--- end asm ---
   3B47 C6 CC         [ 2]  545 	ldb	#-52	;,
   3B49 D7 0C         [ 4]  546 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            547 ;----- asm -----
                            548 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            549 	; #ENR#[142]y -= 10;
                            550 ;--- end asm ---
   3B4B E6 6B         [ 5]  551 	ldb	11,s	;, y.176
   3B4D CB F6         [ 2]  552 	addb	#-10	;,
   3B4F E7 6B         [ 5]  553 	stb	11,s	;, y.176
   3B51 32 63         [ 5]  554 	leas	3,s	;,,
   3B53                     555 L11:
   3B53 31 21         [ 5]  556 	leay	1,y	; ivtmp.156,, ivtmp.156
   3B55 10 8C 00 07   [ 5]  557 	cmpy	#7	;cmphi:	; ivtmp.156,
   3B59 10 26 FF C2   [ 6]  558 	lbne	L12	;
   3B5D                     559 L10:
                            560 ;----- asm -----
                            561 ; 217 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            562 	; #ENR#[146]if (page == 3)
                            563 ;--- end asm ---
   3B5D E6 63         [ 5]  564 	ldb	3,s	;, page
   3B5F C1 03         [ 2]  565 	cmpb	#3	;cmpqi:	;,
   3B61 10 26 01 40   [ 6]  566 	lbne	L13	;
                            567 ;----- asm -----
                            568 ; 220 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            569 	; #ENR#[148]print_str_d(0x78,-0x20, );
                            570 ;--- end asm ---
   3B65 C6 78         [ 2]  571 	ldb	#120	;,
   3B67 E7 E2         [ 6]  572 	stb	,-s	;,
   3B69 8E 38 F1      [ 3]  573 	ldx	#LC12	;,
   3B6C C6 E0         [ 2]  574 	ldb	#-32	;,
   3B6E BD 58 75      [ 8]  575 	jsr	_syncPrintStrd
                            576 ;----- asm -----
                            577 ; 222 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            578 	; #ENR#[149]reset0ref();
                            579 ;--- end asm ---
   3B71 C6 CC         [ 2]  580 	ldb	#-52	;,
   3B73 D7 0C         [ 4]  581 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            582 ;----- asm -----
                            583 ; 224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            584 	; #ENR#[150]y = 0x50;
                            585 ; 227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            586 	; #ENR#[152]for (int i=7; i<10;i++)
                            587 ;--- end asm ---
   3B75 10 8E 00 00   [ 4]  588 	ldy	#0	; ivtmp.140,
   3B79 32 61         [ 5]  589 	leas	1,s	;,,
   3B7B                     590 L14:
                            591 ;----- asm -----
                            592 ; 230 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            593 	; #ENR#[154]_fsi_s( , items[i], inventory[i]);
                            594 ;--- end asm ---
   3B7B 1F 20         [ 6]  595 	tfr	y,d	; ivtmp.140,
   3B7D 58            [ 2]  596 	aslb	;
   3B7E 49            [ 2]  597 	rola	;
   3B7F 1F 01         [ 6]  598 	tfr	d,x	;, tmp194
   3B81 AE 89 02 07   [ 9]  599 	ldx	_items+14,x	;, items
   3B85 AF E3         [ 8]  600 	stx	,--s	;,
   3B87 E6 A9 C9 50   [ 8]  601 	ldb	_inventory+7,y	;, inventory
   3B8B 8E 38 FB      [ 3]  602 	ldx	#LC13	;,
   3B8E BD 6A 6A      [ 8]  603 	jsr	__fsi_s
                            604 ;----- asm -----
                            605 ; 232 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            606 	; #ENR#[155]print_str_d(y,-0x20, stringbuffer40);
                            607 ;--- end asm ---
   3B91 1F 20         [ 6]  608 	tfr	y,d	; ivtmp.140,
   3B93 86 F6         [ 2]  609 	lda	#-10	;umulqihi3	;
   3B95 3D            [11]  610 	mul
                            611 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3B96 1F 01         [ 6]  612 	tfr	d,x	;, tmp197
                            613 ; ORG>	tfr	d,x	;, tmp197
                            614 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp197, tmp199
   3B98 CB 50         [ 2]  615 	addb	#80	; tmp199,
   3B9A 34 04         [ 6]  616 	pshs	b	; tmp199
   3B9C 8E C8 BF      [ 3]  617 	ldx	#_stringBuffer40	;,
   3B9F C6 E0         [ 2]  618 	ldb	#-32	;,
   3BA1 BD 58 75      [ 8]  619 	jsr	_syncPrintStrd
                            620 ;----- asm -----
                            621 ; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            622 	; #ENR#[156]reset0ref();
                            623 ;--- end asm ---
   3BA4 C6 CC         [ 2]  624 	ldb	#-52	;,
   3BA6 D7 0C         [ 4]  625 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                            626 ;----- asm -----
                            627 ; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            628 	; #ENR#[157]y -= 10;
                            629 ;--- end asm ---
   3BA8 31 21         [ 5]  630 	leay	1,y	; ivtmp.140,, ivtmp.140
   3BAA 32 63         [ 5]  631 	leas	3,s	;,,
   3BAC 10 8C 00 03   [ 5]  632 	cmpy	#3	;cmphi:	; ivtmp.140,
   3BB0 26 C9         [ 3]  633 	bne	L14	;
                            634 ;----- asm -----
                            635 ; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            636 	; #ENR#[160]if ((vec_joy_1_y > 0) && (!lastdiry))
                            637 ;--- end asm ---
   3BB2 F6 C8 1C      [ 5]  638 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.17, Vec_Joy_1_Y
   3BB5 2F 0A         [ 3]  639 	ble	L15	;
   3BB7 6D 66         [ 7]  640 	tst	6,s	; lastDirY
   3BB9 26 06         [ 3]  641 	bne	L15	;
   3BBB 6D 64         [ 7]  642 	tst	4,s	; itemSelect
   3BBD 27 02         [ 3]  643 	beq	L15	;
   3BBF 6A 64         [ 7]  644 	dec	4,s	; itemSelect
   3BC1                     645 L15:
                            646 ;----- asm -----
                            647 ; 243 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            648 	; #ENR#[162]if ((vec_joy_1_y < 0) && (!lastdiry))
                            649 ;--- end asm ---
   3BC1 5D            [ 2]  650 	tstb	; Vec_Joy_1_Y.17
   3BC2 2C 0D         [ 3]  651 	bge	L16	;
   3BC4 6D 66         [ 7]  652 	tst	6,s	; lastDirY
   3BC6 26 09         [ 3]  653 	bne	L16	;
   3BC8 E6 64         [ 5]  654 	ldb	4,s	;, itemSelect
   3BCA C1 01         [ 2]  655 	cmpb	#1	;cmpqi:	;,
   3BCC 2E 03         [ 3]  656 	bgt	L16	;
   3BCE 5C            [ 2]  657 	incb	;
   3BCF E7 64         [ 5]  658 	stb	4,s	;, itemSelect
   3BD1                     659 L16:
                            660 ;----- asm -----
                            661 ; 247 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            662 	; #ENR#[165]print_str_d(0x50-10*itemselect,-0x65, );
                            663 ;--- end asm ---
   3BD1 E6 64         [ 5]  664 	ldb	4,s	;, itemSelect
   3BD3 86 F6         [ 2]  665 	lda	#-10	;mulqihi3	;
   3BD5 3D            [11]  666 	mul
                            667 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3BD6 1F 01         [ 6]  668 	tfr	d,x	;, tmp200
                            669 ; ORG>	tfr	d,x	;, tmp200
                            670 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp200, tmp202
   3BD8 CB 50         [ 2]  671 	addb	#80	; tmp202,
   3BDA 34 04         [ 6]  672 	pshs	b	; tmp202
   3BDC 8E 39 00      [ 3]  673 	ldx	#LC14	;,
   3BDF C6 9B         [ 2]  674 	ldb	#-101	;,
   3BE1 BD 58 75      [ 8]  675 	jsr	_syncPrintStrd
                            676 ;----- asm -----
                            677 ; 249 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            678 	; #ENR#[166]lastdiry = vec_joy_1_y;
                            679 ;--- end asm ---
   3BE4 F6 C8 1C      [ 5]  680 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   3BE7 E7 67         [ 5]  681 	stb	7,s	;, lastDirY
                            682 ;----- asm -----
                            683 ; 252 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            684 	; #ENR#[168]if (buttons_pressed())
                            685 ;--- end asm ---
   3BE9 32 61         [ 5]  686 	leas	1,s	;,,
   3BEB 7D C8 11      [ 7]  687 	tst	_Vec_Buttons	; Vec_Buttons
   3BEE 10 27 00 B3   [ 6]  688 	lbeq	L13	;
                            689 ;----- asm -----
                            690 ; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            691 	; #ENR#[170]if (inventory[itemselect+7]<=0)
                            692 ;--- end asm ---
   3BF2 E6 64         [ 5]  693 	ldb	4,s	;, itemSelect
   3BF4 CB 07         [ 2]  694 	addb	#7	;,
   3BF6 E7 64         [ 5]  695 	stb	4,s	;, itemSelect
   3BF8 1D            [ 2]  696 	sex		;extendqihi2: R:b -> R:d	;,
   3BF9 ED 61         [ 6]  697 	std	1,s	;,
   3BFB E6 64         [ 5]  698 	ldb	4,s	;, itemSelect
   3BFD CB F9         [ 2]  699 	addb	#-7	;,
   3BFF E7 64         [ 5]  700 	stb	4,s	;, itemSelect
   3C01 EE 61         [ 6]  701 	ldu	1,s	;,
   3C03 30 C9 C9 49   [ 8]  702 	leax	_inventory,u	; tmp205,,
   3C07 E6 84         [ 4]  703 	ldb	,x	; D.3325, inventory
   3C09 26 0E         [ 3]  704 	bne	L17	;
                            705 ;----- asm -----
                            706 ; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            707 	; #ENR#[174]clearmessage();
                            708 ;--- end asm ---
   3C0B 7F C9 C2      [ 7]  709 	clr	_msgLine	; msgLine
                            710 ;----- asm -----
                            711 ; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            712 	; #ENR#[175]printmessage();
                            713 ;--- end asm ---
   3C0E 8E 39 05      [ 3]  714 	ldx	#LC15	;,
   3C11 BD 5A 71      [ 8]  715 	jsr	_printMessage
   3C14 6F 67         [ 7]  716 	clr	7,s	; ret
   3C16 16 00 8A      [ 5]  717 	lbra	L18	;
   3C19                     718 L17:
                            719 ;----- asm -----
                            720 ; 267 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            721 	; #ENR#[179]inventory[itemselect+7]--;
                            722 ;--- end asm ---
   3C19 5A            [ 2]  723 	decb	; D.3325
   3C1A E7 84         [ 4]  724 	stb	,x	; D.3325, inventory
                            725 ;----- asm -----
                            726 ; 269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            727 	; #ENR#[180]clearmessage();
                            728 ;--- end asm ---
   3C1C 7F C9 C2      [ 7]  729 	clr	_msgLine	; msgLine
                            730 ;----- asm -----
                            731 ; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            732 	; #ENR#[181]_fs( , items[itemselect+7]);
                            733 ;--- end asm ---
   3C1F EC 61         [ 6]  734 	ldd	1,s	;,
   3C21 58            [ 2]  735 	aslb	;
   3C22 49            [ 2]  736 	rola	;
   3C23 1F 01         [ 6]  737 	tfr	d,x	;, tmp211
   3C25 AE 89 01 F9   [ 9]  738 	ldx	_items,x	;, items
   3C29 AF E3         [ 8]  739 	stx	,--s	;,
   3C2B 8E 39 1A      [ 3]  740 	ldx	#LC16	;,
   3C2E BD 5B 50      [ 8]  741 	jsr	__fs
                            742 ;----- asm -----
                            743 ; 273 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            744 	; #ENR#[182]printmessage(stringbuffer40);
                            745 ;--- end asm ---
   3C31 8E C8 BF      [ 3]  746 	ldx	#_stringBuffer40	;,
   3C34 BD 5A 71      [ 8]  747 	jsr	_printMessage
                            748 ;----- asm -----
                            749 ; 275 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            750 	; #ENR#[183]if (itemselect == 0)
                            751 ;--- end asm ---
   3C37 32 62         [ 5]  752 	leas	2,s	;,,
   3C39 6D 64         [ 7]  753 	tst	4,s	; itemSelect
   3C3B 26 21         [ 3]  754 	bne	L19	;
                            755 ;----- asm -----
                            756 ; 284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            757 	; #ENR#[191]cz = 1;
                            758 ;--- end asm ---
   3C3D C6 01         [ 2]  759 	ldb	#1	;,
   3C3F F7 C9 3A      [ 5]  760 	stb	_cz	;, cz
                            761 ;----- asm -----
                            762 ; 286 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            763 	; #ENR#[192]cx = 25;
                            764 ;--- end asm ---
   3C42 C6 19         [ 2]  765 	ldb	#25	;,
   3C44 F7 C9 38      [ 5]  766 	stb	_cx	;, cx
                            767 ;----- asm -----
                            768 ; 288 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            769 	; #ENR#[193]cy = 13;
                            770 ;--- end asm ---
   3C47 C6 0D         [ 2]  771 	ldb	#13	;,
   3C49 F7 C9 39      [ 5]  772 	stb	_cy	;, cy
                            773 ;----- asm -----
                            774 ; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            775 	; #ENR#[194]printmessage();
                            776 ;--- end asm ---
   3C4C 8E 39 25      [ 3]  777 	ldx	#LC17	;,
   3C4F BD 5A 71      [ 8]  778 	jsr	_printMessage
                            779 ;----- asm -----
                            780 ; 292 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            781 	; #ENR#[195]ret = 1;
                            782 ; 294 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            783 	; #ENR#[196]fillmap = go_redraw;
                            784 ;--- end asm ---
   3C52 C6 7F         [ 2]  785 	ldb	#127	;,
   3C54 F7 C8 FC      [ 5]  786 	stb	_fillMap	;, fillMap
   3C57 C6 01         [ 2]  787 	ldb	#1	;,
   3C59 E7 67         [ 5]  788 	stb	7,s	;, ret
   3C5B 16 00 40      [ 5]  789 	lbra	L20	;
   3C5E                     790 L19:
   3C5E E6 64         [ 5]  791 	ldb	4,s	;, itemSelect
   3C60 C1 01         [ 2]  792 	cmpb	#1	;cmpqi:	;,
   3C62 26 28         [ 3]  793 	bne	L21	;
                            794 ;----- asm -----
                            795 ; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            796 	; #ENR#[204]printmessage();
                            797 ;--- end asm ---
   3C64 8E 39 31      [ 3]  798 	ldx	#LC18	;,
   3C67 BD 5A 71      [ 8]  799 	jsr	_printMessage
                            800 ;----- asm -----
                            801 ; 306 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            802 	; #ENR#[206]ch = ch +randmax(20)+1;
                            803 ;--- end asm ---
   3C6A 10 BE C9 2D   [ 7]  804 	ldy	_ch	; ch.178, ch
   3C6E C6 14         [ 2]  805 	ldb	#20	;,
   3C70 BD 5E 21      [ 8]  806 	jsr	_RandMax
   3C73 30 21         [ 5]  807 	leax	1,y	; tmp214,, ch.178
   3C75 4F            [ 2]  808 	clra		;zero_extendqihi: R:b -> R:d	; D.3328, D.3328
   3C76 34 10         [ 6]  809 	pshs	x	;addhi: R:d += R:x	; tmp214, ch.18
   3C78 E3 E1         [ 9]  810 	addd	,s++	; ch.18
   3C7A FD C9 2D      [ 6]  811 	std	_ch	; ch.18, ch
                            812 ;----- asm -----
                            813 ; 308 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            814 	; #ENR#[207]if (ch>hp) ch = hp;
                            815 ;--- end asm ---
   3C7D BE C9 2B      [ 6]  816 	ldx	_hp	; hp.179, hp
   3C80 34 10         [ 6]  817 	pshs	x	;cmphi: R:x with R:d	; hp.179, ch.18
   3C82 10 A3 E1      [10]  818 	cmpd	,s++	;cmphi:	; ch.18
   3C85 2F 15         [ 3]  819 	ble	L30	;
   3C87                     820 L22:
   3C87 BF C9 2D      [ 6]  821 	stx	_ch	; hp.179, ch
   3C8A 20 10         [ 3]  822 	bra	L30	;
   3C8C                     823 L21:
                            824 ;----- asm -----
                            825 ; 317 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            826 	; #ENR#[215]printmessage();
                            827 ;--- end asm ---
   3C8C 8E 39 42      [ 3]  828 	ldx	#LC19	;,
   3C8F BD 5A 71      [ 8]  829 	jsr	_printMessage
                            830 ;----- asm -----
                            831 ; 319 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            832 	; #ENR#[216]sf[strength] = randmax(20)+11;
                            833 ;--- end asm ---
   3C92 C6 14         [ 2]  834 	ldb	#20	;,
   3C94 BD 5E 21      [ 8]  835 	jsr	_RandMax
   3C97 CB 0B         [ 2]  836 	addb	#11	; D.3332,
   3C99 F7 C9 53      [ 5]  837 	stb	_sf	; D.3332, sf
   3C9C                     838 L30:
   3C9C 6F 67         [ 7]  839 	clr	7,s	; ret
   3C9E                     840 L20:
                            841 ;----- asm -----
                            842 ; 323 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            843 	; #ENR#[219]pause(small_pause);
                            844 ;--- end asm ---
   3C9E C6 4B         [ 2]  845 	ldb	#75	;,
   3CA0 BD 3D 31      [ 8]  846 	jsr	_pause
   3CA3                     847 L18:
                            848 ;----- asm -----
                            849 ; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            850 	; #ENR#[221]break;
                            851 ;--- end asm ---
   3CA3 20 0E         [ 3]  852 	bra	L23	;
   3CA5                     853 L13:
                            854 ;----- asm -----
                            855 ; 330 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            856 	; #ENR#[224]if (buttons_pressed()) break;
                            857 ;--- end asm ---
   3CA5 7D C8 11      [ 7]  858 	tst	_Vec_Buttons	; Vec_Buttons
   3CA8 26 07         [ 3]  859 	bne	L24	;
                            860 ;----- asm -----
                            861 ; 332 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            862 	; #ENR#[226]while (1);
                            863 ;--- end asm ---
   3CAA E6 69         [ 5]  864 	ldb	9,s	;, lastDir.177
   3CAC E7 65         [ 5]  865 	stb	5,s	;, lastDir
   3CAE 16 FC C8      [ 5]  866 	lbra	L25	;
   3CB1                     867 L24:
   3CB1 6F 67         [ 7]  868 	clr	7,s	; ret
   3CB3                     869 L23:
                            870 ;----- asm -----
                            871 ; 335 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            872 	; #ENR#[227]resetbuttons();
                            873 ;--- end asm ---
   3CB3 7F C8 11      [ 7]  874 	clr	_Vec_Buttons	; Vec_Buttons
                            875 ;----- asm -----
                            876 ; 337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            877 	; #ENR#[228]return ret;
                            878 ;--- end asm ---
   3CB6 E6 67         [ 5]  879 	ldb	7,s	;, ret
   3CB8 32 6A         [ 5]  880 	leas	10,s	;,,
   3CBA 35 E0         [ 8]  881 	puls	y,u,pc	;
                            882 	.globl	_displayRound
   3CBC                     883 _displayRound:
                            884 ;----- asm -----
                            885 ; 344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            886 	; #ENR#[234]#if do_original_wr == 1
                            887 ; 350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            888 	; #ENR#[237]wr2();
                            889 ;--- end asm ---
   3CBC BD 5A 2F      [ 8]  890 	jsr	_wr2
                            891 ;----- asm -----
                            892 ; 352 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            893 	; #ENR#[238]#endif
                            894 ; 355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            895 	; #ENR#[240]do_sound();
                            896 ;--- end asm ---
   3CBF BD 70 3C      [ 8]  897 	jsr	__Do_Sound
                            898 ;----- asm -----
                            899 ; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            900 	; #ENR#[241]joy_digital2();
                            901 ;--- end asm ---
   3CC2 BD 59 E4      [ 8]  902 	jsr	_Joy_Digital2
                            903 ;----- asm -----
                            904 ; 359 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            905 	; #ENR#[242]check_buttons();
                            906 ;--- end asm ---
   3CC5 BD F1 BA      [ 8]  907 	jsr	___Read_Btns
                            908 ;----- asm -----
                            909 ; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            910 	; #ENR#[243]dp_via_t1_cnt_lo  = 0x7f;
                            911 ;--- end asm ---
   3CC8 C6 7F         [ 2]  912 	ldb	#127	;,
   3CCA D7 04         [ 4]  913 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                            914 ;----- asm -----
                            915 ; 364 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            916 	; #ENR#[245]if (lightchange>0) intensity_a((unsigned int)lightchange);
                            917 ;--- end asm ---
   3CCC F6 C8 A4      [ 5]  918 	ldb	_lightChange	; lightChange.19, lightChange
   3CCF 2E 0C         [ 3]  919 	bgt	L36	;
   3CD1                     920 L32:
                            921 ;----- asm -----
                            922 ; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            923 	; #ENR#[248]if (sf[light]>0)
                            924 ;--- end asm ---
   3CD1 C6 4F         [ 2]  925 	ldb	#79	;,
   3CD3 7D C9 55      [ 7]  926 	tst	_sf+2	; sf
   3CD6 27 05         [ 3]  927 	beq	L36	;
   3CD8 BD F2 A9      [ 8]  928 	jsr	___Intensity_7F
   3CDB 20 03         [ 3]  929 	bra	L33	;
   3CDD                     930 L36:
   3CDD BD 6F BB      [ 8]  931 	jsr	__Intensity_a
   3CE0                     932 L33:
                            933 ;----- asm -----
                            934 ; 374 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            935 	; #ENR#[253]drawmap();
                            936 ;--- end asm ---
   3CE0 C6 03         [ 2]  937 	ldb	#3	;,
   3CE2 BD 00 6E      [ 8]  938 	jsr	_subBank0
                            939 ;----- asm -----
                            940 ; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            941 	; #ENR#[254]displaymessages();
                            942 ;--- end asm ---
   3CE5 BD 6F 25      [ 8]  943 	jsr	_displayMessages
   3CE8 39            [ 5]  944 	rts
                            945 	.globl	_elevator
   3CE9                     946 _elevator:
   3CE9 32 7A         [ 5]  947 	leas	-6,s	;,,
                            948 ;----- asm -----
                            949 ; 382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            950 	; #ENR#[259]inelevator = 1;
                            951 ;--- end asm ---
   3CEB C6 01         [ 2]  952 	ldb	#1	;,
   3CED F7 C8 A2      [ 5]  953 	stb	_inElevator	;, inElevator
                            954 ;----- asm -----
                            955 ; 384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            956 	; #ENR#[260]elevatory=0;
                            957 ;--- end asm ---
   3CF0 7F C8 A3      [ 7]  958 	clr	_elevatorY	; elevatorY
                            959 ;----- asm -----
                            960 ; 386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            961 	; #ENR#[261]vec_music_wk_7 = 0x3e;
                            962 ;--- end asm ---
   3CF3 C6 3E         [ 2]  963 	ldb	#62	;,
   3CF5 F7 C8 45      [ 5]  964 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                            965 ;----- asm -----
                            966 ; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            967 	; #ENR#[262]vec_xxx_04 = 0xf;
                            968 ;--- end asm ---
   3CF8 C6 0F         [ 2]  969 	ldb	#15	;,
   3CFA F7 C8 44      [ 5]  970 	stb	_Vec_XXX_04	;, Vec_XXX_04
                            971 ;----- asm -----
                            972 ; 391 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            973 	; #ENR#[264]signed long int freq = 5000;
                            974 ;--- end asm ---
   3CFD 8E 13 88      [ 3]  975 	ldx	#5000	;,
   3D00 AF 64         [ 6]  976 	stx	4,s	;, freq
                            977 ;----- asm -----
                            978 ; 394 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            979 	; #ENR#[266]while (inelevator)
                            980 ;--- end asm ---
   3D02 20 1D         [ 3]  981 	bra	L38	;
   3D04                     982 L39:
                            983 ;----- asm -----
                            984 ; 397 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            985 	; #ENR#[268]freq = freq-5;
                            986 ;--- end asm ---
   3D04 EC 64         [ 6]  987 	ldd	4,s	;, freq
   3D06 C3 FF FB      [ 4]  988 	addd	#-5; addhi3,3	;,
   3D09 ED E4         [ 5]  989 	std	,s	;, freq.22
   3D0B 1F 89         [ 6]  990 	tfr	a,b	;,
   3D0D 4F            [ 2]  991 	clra		;zero_extendqihi: R:b -> R:d	;,
   3D0E E7 63         [ 5]  992 	stb	3,s	;,
   3D10 AE E4         [ 5]  993 	ldx	,s	;, freq.22
   3D12 AF 64         [ 6]  994 	stx	4,s	;, freq
                            995 ;----- asm -----
                            996 ; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                            997 	; #ENR#[269]vec_xxx_08 = (signed int) (freq&0xff);
                            998 ;--- end asm ---
   3D14 1F 10         [ 6]  999 	tfr	x,d	;,
   3D16 F7 C8 4C      [ 5] 1000 	stb	_Vec_XXX_08	;movlsbqihi: R:d -> _Vec_XXX_08	; Vec_XXX_08,
                           1001 ;----- asm -----
                           1002 ; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1003 	; #ENR#[270]vec_music_wk_1 = *((signed int*) &freq);
                           1004 ;--- end asm ---
   3D19 E6 63         [ 5] 1005 	ldb	3,s	;,
   3D1B F7 C8 4B      [ 5] 1006 	stb	_Vec_Music_Wk_1	;, Vec_Music_Wk_1
                           1007 ;----- asm -----
                           1008 ; 403 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1009 	; #ENR#[271]displayround();
                           1010 ;--- end asm ---
   3D1E BD 3C BC      [ 8] 1011 	jsr	_displayRound
                           1012 ;----- asm -----
                           1013 ; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1014 	; #ENR#[272]freq+50;
                           1015 ;--- end asm ---
   3D21                    1016 L38:
   3D21 7D C8 A2      [ 7] 1017 	tst	_inElevator	; inElevator
   3D24 26 DE         [ 3] 1018 	bne	L39	;
                           1019 ;----- asm -----
                           1020 ; 408 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1021 	; #ENR#[274]vec_music_wk_7 = 0x3f;
                           1022 ;--- end asm ---
   3D26 C6 3F         [ 2] 1023 	ldb	#63	;,
   3D28 F7 C8 45      [ 5] 1024 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                           1025 ;----- asm -----
                           1026 ; 410 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1027 	; #ENR#[275]vec_xxx_04 = 0;
                           1028 ;--- end asm ---
   3D2B 7F C8 44      [ 7] 1029 	clr	_Vec_XXX_04	; Vec_XXX_04
   3D2E 32 66         [ 5] 1030 	leas	6,s	;,,
   3D30 39            [ 5] 1031 	rts
                           1032 	.globl	_pause
   3D31                    1033 _pause:
   3D31 34 04         [ 6] 1034 	pshs	b	;
                           1035 ;----- asm -----
                           1036 ; 418 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1037 	; #ENR#[282]while(1)
                           1038 ;--- end asm ---
   3D33                    1039 L44:
                           1040 ;----- asm -----
                           1041 ; 421 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1042 	; #ENR#[284]displayround();
                           1043 ;--- end asm ---
   3D33 BD 3C BC      [ 8] 1044 	jsr	_displayRound
                           1045 ;----- asm -----
                           1046 ; 423 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1047 	; #ENR#[285]if (vec_joy_1_x != 0) return;
                           1048 ;--- end asm ---
   3D36 7D C8 1B      [ 7] 1049 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   3D39 26 14         [ 3] 1050 	bne	L45	;
                           1051 ;----- asm -----
                           1052 ; 425 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1053 	; #ENR#[286]if (vec_joy_1_y != 0) return;
                           1054 ;--- end asm ---
   3D3B 7D C8 1C      [ 7] 1055 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   3D3E 26 0F         [ 3] 1056 	bne	L45	;
                           1057 ;----- asm -----
                           1058 ; 427 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1059 	; #ENR#[287]if (buttons_pressed() != 0) return;
                           1060 ;--- end asm ---
   3D40 7D C8 11      [ 7] 1061 	tst	_Vec_Buttons	; Vec_Buttons
   3D43 26 0A         [ 3] 1062 	bne	L45	;
                           1063 ;----- asm -----
                           1064 ; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1065 	; #ENR#[291]if (t == 0)
                           1066 ;--- end asm ---
   3D45 6D E4         [ 6] 1067 	tst	,s	; t
   3D47 26 02         [ 3] 1068 	bne	L43	;
                           1069 ;----- asm -----
                           1070 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1071 	; #ENR#[293]return;
                           1072 ;--- end asm ---
   3D49 20 04         [ 3] 1073 	bra	L45	;
   3D4B                    1074 L43:
                           1075 ;----- asm -----
                           1076 ; 438 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1077 	; #ENR#[295]t--;
                           1078 ;--- end asm ---
   3D4B 6A E4         [ 6] 1079 	dec	,s	; t
   3D4D 20 E4         [ 3] 1080 	bra	L44	;
   3D4F                    1081 L45:
   3D4F 32 61         [ 5] 1082 	leas	1,s	;,,
   3D51 39            [ 5] 1083 	rts
                           1084 	.globl	_initBox
   3D52                    1085 _initBox:
                           1086 ;----- asm -----
                           1087 ; 446 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1088 	; #ENR#[302]for (int i=0; i<4;i++)
                           1089 ; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1090 	; #ENR#[304]box[i] = (signed int)randmax(4);
                           1091 ;--- end asm ---
   3D52 C6 04         [ 2] 1092 	ldb	#4	;,
   3D54 BD 5E 21      [ 8] 1093 	jsr	_RandMax
   3D57 F7 C9 5E      [ 5] 1094 	stb	_box	; temp.215, box
                           1095 ;----- asm -----
                           1096 ; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1097 	; #ENR#[304]box[i] = (signed int)randmax(4);
                           1098 ;--- end asm ---
   3D5A C6 04         [ 2] 1099 	ldb	#4	;,
   3D5C BD 5E 21      [ 8] 1100 	jsr	_RandMax
   3D5F F7 C9 5F      [ 5] 1101 	stb	_box+1	; temp.217, box
                           1102 ;----- asm -----
                           1103 ; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1104 	; #ENR#[304]box[i] = (signed int)randmax(4);
                           1105 ;--- end asm ---
   3D62 C6 04         [ 2] 1106 	ldb	#4	;,
   3D64 BD 5E 21      [ 8] 1107 	jsr	_RandMax
   3D67 F7 C9 60      [ 5] 1108 	stb	_box+2	; temp.219, box
                           1109 ;----- asm -----
                           1110 ; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1111 	; #ENR#[304]box[i] = (signed int)randmax(4);
                           1112 ;--- end asm ---
   3D6A C6 04         [ 2] 1113 	ldb	#4	;,
   3D6C BD 5E 21      [ 8] 1114 	jsr	_RandMax
   3D6F F7 C9 61      [ 5] 1115 	stb	_box+3	; D.3367, box
   3D72 39            [ 5] 1116 	rts
                           1117 	.globl	_monsterOnStack
   3D73                    1118 _monsterOnStack:
   3D73 34 60         [ 7] 1119 	pshs	y,u	;
   3D75 34 04         [ 6] 1120 	pshs	b	;
   3D77 31 84         [ 4] 1121 	leay	,x	; mh, mh
                           1122 ;----- asm -----
                           1123 ; 460 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1124 	; #ENR#[314]for (int i=18;i>=0;i--)
                           1125 ;--- end asm ---
   3D79 CE 00 00      [ 3] 1126 	ldu	#0	; ivtmp.234,
   3D7C                    1127 L49:
                           1128 ;----- asm -----
                           1129 ; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1130 	; #ENR#[316]stackm[i+1] = stackm[i];
                           1131 ;--- end asm ---
   3D7C E6 C9 C9 7E   [ 8] 1132 	ldb	_stackM+18,u	;, stackM
   3D80 E7 C9 C9 7F   [ 8] 1133 	stb	_stackM+19,u	;, stackM
                           1134 ;----- asm -----
                           1135 ; 465 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1136 	; #ENR#[317]stackml[i+1] = stackml[i];
                           1137 ;--- end asm ---
   3D84 E6 C9 C9 92   [ 8] 1138 	ldb	_stackML+18,u	;, stackML
   3D88 E7 C9 C9 93   [ 8] 1139 	stb	_stackML+19,u	;, stackML
                           1140 ;----- asm -----
                           1141 ; 467 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1142 	; #ENR#[318]stackmh[i+1] = stackmh[i];
                           1143 ;--- end asm ---
   3D8C 1F 30         [ 6] 1144 	tfr	u,d	; ivtmp.234,
   3D8E 58            [ 2] 1145 	aslb	;
   3D8F 49            [ 2] 1146 	rola	;
   3D90 1F 01         [ 6] 1147 	tfr	d,x	;, D.4295
   3D92 EC 89 C9 B8   [ 9] 1148 	ldd	_stackMH+36,x	;, stackMH
   3D96 ED 89 C9 BA   [ 9] 1149 	std	_stackMH+38,x	;, stackMH
   3D9A 33 5F         [ 5] 1150 	leau	-1,u	; ivtmp.234,, ivtmp.234
   3D9C 11 83 FF ED   [ 5] 1151 	cmpu	#-19	;cmphi:	; ivtmp.234,
   3DA0 26 DA         [ 3] 1152 	bne	L49	;
                           1153 ;----- asm -----
                           1154 ; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1155 	; #ENR#[323]if (m==-1)
                           1156 ;--- end asm ---
   3DA2 E6 E4         [ 4] 1157 	ldb	,s	;, m
   3DA4 C1 FF         [ 2] 1158 	cmpb	#-1	;cmpqi:	;,
   3DA6 26 0E         [ 3] 1159 	bne	L50	;
                           1160 ;----- asm -----
                           1161 ; 476 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1162 	; #ENR#[325]stackm[0] = -1;
                           1163 ;--- end asm ---
   3DA8 F7 C9 6C      [ 5] 1164 	stb	_stackM	;, stackM
                           1165 ;----- asm -----
                           1166 ; 478 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1167 	; #ENR#[326]stackml[0] = 0;
                           1168 ;--- end asm ---
   3DAB 7F C9 80      [ 7] 1169 	clr	_stackML	; stackML
                           1170 ;----- asm -----
                           1171 ; 480 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1172 	; #ENR#[327]stackmh[0] = 0;
                           1173 ;--- end asm ---
   3DAE CC 00 00      [ 3] 1174 	ldd	#0	;,
   3DB1 FD C9 94      [ 6] 1175 	std	_stackMH	;, stackMH
                           1176 ;----- asm -----
                           1177 ; 482 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1178 	; #ENR#[328]return;
                           1179 ;--- end asm ---
   3DB4 20 0E         [ 3] 1180 	bra	L52	;
   3DB6                    1181 L50:
                           1182 ;----- asm -----
                           1183 ; 485 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1184 	; #ENR#[330]stackm[0] = (signed int)m;
                           1185 ;--- end asm ---
   3DB6 E6 E4         [ 4] 1186 	ldb	,s	;, m
   3DB8 F7 C9 6C      [ 5] 1187 	stb	_stackM	;, stackM
                           1188 ;----- asm -----
                           1189 ; 487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1190 	; #ENR#[331]stackml[0] = ml;
                           1191 ;--- end asm ---
   3DBB E6 67         [ 5] 1192 	ldb	7,s	;, ml
   3DBD F7 C9 80      [ 5] 1193 	stb	_stackML	;, stackML
                           1194 ;----- asm -----
                           1195 ; 489 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1196 	; #ENR#[332]stackmh[0] = mh;
                           1197 ;--- end asm ---
   3DC0 10 BF C9 94   [ 7] 1198 	sty	_stackMH	; mh, stackMH
                           1199 ;----- asm -----
                           1200 ; 491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1201 	; #ENR#[333]m=-1;
                           1202 ; 493 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1203 	; #ENR#[334]ml = 0;
                           1204 ; 495 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1205 	; #ENR#[335]mh = 0;
                           1206 ;--- end asm ---
   3DC4                    1207 L52:
   3DC4 32 61         [ 5] 1208 	leas	1,s	;,,
   3DC6 35 E0         [ 8] 1209 	puls	y,u,pc	;
                           1210 	.globl	_monsterOnStackAdvance
   3DC8                    1211 _monsterOnStackAdvance:
   3DC8 34 60         [ 7] 1212 	pshs	y,u	;
   3DCA 32 7F         [ 5] 1213 	leas	-1,s	;,,
                           1214 ;----- asm -----
                           1215 ; 503 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1216 	; #ENR#[342]int ret = 0;
                           1217 ; 507 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1218 	; #ENR#[345]m=-1;
                           1219 ;--- end asm ---
   3DCC C6 FF         [ 2] 1220 	ldb	#-1	;,
   3DCE F7 C9 62      [ 5] 1221 	stb	_m	;, m
                           1222 ;----- asm -----
                           1223 ; 509 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1224 	; #ENR#[346]if (stackm[0] != -1)
                           1225 ;--- end asm ---
   3DD1 F6 C9 6C      [ 5] 1226 	ldb	_stackM	; m.31, stackM
   3DD4 C1 FF         [ 2] 1227 	cmpb	#-1	;cmpqi:	; m.31,
   3DD6 26 04         [ 3] 1228 	bne	L55	;
   3DD8 6F E4         [ 6] 1229 	clr	,s	; ret
   3DDA 20 13         [ 3] 1230 	bra	L56	;
   3DDC                    1231 L55:
                           1232 ;----- asm -----
                           1233 ; 512 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1234 	; #ENR#[348]ret = 1;
                           1235 ; 516 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1236 	; #ENR#[351]m = (signed int) stackm[0];
                           1237 ;--- end asm ---
   3DDC F7 C9 62      [ 5] 1238 	stb	_m	; m.31, m
                           1239 ;----- asm -----
                           1240 ; 518 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1241 	; #ENR#[352]ml = stackml[0];
                           1242 ;--- end asm ---
   3DDF F6 C9 80      [ 5] 1243 	ldb	_stackML	;, stackML
   3DE2 F7 C9 6A      [ 5] 1244 	stb	_ml	;, ml
                           1245 ;----- asm -----
                           1246 ; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1247 	; #ENR#[353]mh = stackmh[0];
                           1248 ;--- end asm ---
   3DE5 BE C9 94      [ 6] 1249 	ldx	_stackMH	;, stackMH
   3DE8 BF C9 63      [ 6] 1250 	stx	_mh	;, mh
   3DEB C6 01         [ 2] 1251 	ldb	#1	;,
   3DED E7 E4         [ 4] 1252 	stb	,s	;, ret
   3DEF                    1253 L56:
                           1254 ;----- asm -----
                           1255 ; 525 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1256 	; #ENR#[357]for (int i=0; i<19;i++)
                           1257 ;--- end asm ---
   3DEF CE 00 00      [ 3] 1258 	ldu	#0	; ivtmp.251,
   3DF2                    1259 L57:
                           1260 ;----- asm -----
                           1261 ; 528 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1262 	; #ENR#[359]stackm[i] = stackm[i+1];
                           1263 ;--- end asm ---
   3DF2 E6 C9 C9 6D   [ 8] 1264 	ldb	_stackM+1,u	;, stackM
   3DF6 E7 C9 C9 6C   [ 8] 1265 	stb	_stackM,u	;, stackM
                           1266 ;----- asm -----
                           1267 ; 530 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1268 	; #ENR#[360]stackml[i] = stackml[i+1];
                           1269 ;--- end asm ---
   3DFA E6 C9 C9 81   [ 8] 1270 	ldb	_stackML+1,u	;, stackML
   3DFE E7 C9 C9 80   [ 8] 1271 	stb	_stackML,u	;, stackML
                           1272 ;----- asm -----
                           1273 ; 532 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1274 	; #ENR#[361]stackmh[i] = stackmh[i+1];
                           1275 ;--- end asm ---
   3E02 1F 30         [ 6] 1276 	tfr	u,d	; ivtmp.251,
   3E04 58            [ 2] 1277 	aslb	;
   3E05 49            [ 2] 1278 	rola	;
   3E06 1F 01         [ 6] 1279 	tfr	d,x	;, D.4319
   3E08 10 AE 89 C9 96[10] 1280 	ldy	_stackMH+2,x	;, stackMH
   3E0D 10 AF 89 C9 94[10] 1281 	sty	_stackMH,x	;, stackMH
   3E12 33 41         [ 5] 1282 	leau	1,u	; ivtmp.251,, ivtmp.251
   3E14 11 83 00 13   [ 5] 1283 	cmpu	#19	;cmphi:	; ivtmp.251,
   3E18 26 D8         [ 3] 1284 	bne	L57	;
                           1285 ;----- asm -----
                           1286 ; 535 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1287 	; #ENR#[363]stackm[19] = -1;
                           1288 ;--- end asm ---
   3E1A C6 FF         [ 2] 1289 	ldb	#-1	;,
   3E1C F7 C9 7F      [ 5] 1290 	stb	_stackM+19	;, stackM
                           1291 ;----- asm -----
                           1292 ; 537 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1293 	; #ENR#[364]stackml[19] = 0;
                           1294 ;--- end asm ---
   3E1F 7F C9 93      [ 7] 1295 	clr	_stackML+19	; stackML
                           1296 ;----- asm -----
                           1297 ; 539 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1298 	; #ENR#[365]stackmh[19] = 0;
                           1299 ;--- end asm ---
   3E22 CC 00 00      [ 3] 1300 	ldd	#0	;,
   3E25 FD C9 BA      [ 6] 1301 	std	_stackMH+38	;, stackMH
                           1302 ;----- asm -----
                           1303 ; 542 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1304 	; #ENR#[367]return ret;
                           1305 ;--- end asm ---
   3E28 E6 E4         [ 4] 1306 	ldb	,s	;, ret
   3E2A 32 61         [ 5] 1307 	leas	1,s	;,,
   3E2C 35 E0         [ 8] 1308 	puls	y,u,pc	;
                           1309 	.globl	_monsterOnStackEvadeFurther
   3E2E                    1310 _monsterOnStackEvadeFurther:
                           1311 ;----- asm -----
                           1312 ; 548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1313 	; #ENR#[372]monsteronstack(-1, 0, 0);
                           1314 ;--- end asm ---
   3E2E 6F E2         [ 8] 1315 	clr	,-s	;
   3E30 8E 00 00      [ 3] 1316 	ldx	#0	;,
   3E33 C6 FF         [ 2] 1317 	ldb	#-1	;,
   3E35 BD 3D 73      [ 8] 1318 	jsr	_monsterOnStack
   3E38 32 61         [ 5] 1319 	leas	1,s	;,,
   3E3A 39            [ 5] 1320 	rts
                           1321 	.globl	_clearMonsterStack
   3E3B                    1322 _clearMonsterStack:
   3E3B 34 40         [ 6] 1323 	pshs	u	;
                           1324 ;----- asm -----
                           1325 ; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1326 	; #ENR#[380]for (int i=0;i<20;i++)
                           1327 ;--- end asm ---
   3E3D CE 00 00      [ 3] 1328 	ldu	#0	; ivtmp.278,
   3E40                    1329 L63:
                           1330 ;----- asm -----
                           1331 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1332 	; #ENR#[382]stackm[i] = -1;
                           1333 ;--- end asm ---
   3E40 C6 FF         [ 2] 1334 	ldb	#-1	;,
   3E42 E7 C9 C9 6C   [ 8] 1335 	stb	_stackM,u	;, stackM
                           1336 ;----- asm -----
                           1337 ; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1338 	; #ENR#[383]stackml[i] = 0;
                           1339 ;--- end asm ---
   3E46 6F C9 C9 80   [10] 1340 	clr	_stackML,u	; stackML
                           1341 ;----- asm -----
                           1342 ; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1343 	; #ENR#[384]stackmh[i] = 0;
                           1344 ;--- end asm ---
   3E4A 1F 30         [ 6] 1345 	tfr	u,d	; ivtmp.278,
   3E4C 58            [ 2] 1346 	aslb	;
   3E4D 49            [ 2] 1347 	rola	;
   3E4E 1F 01         [ 6] 1348 	tfr	d,x	;, tmp43
   3E50 CC 00 00      [ 3] 1349 	ldd	#0	;,
   3E53 ED 89 C9 94   [ 9] 1350 	std	_stackMH,x	;, stackMH
   3E57 33 41         [ 5] 1351 	leau	1,u	; ivtmp.278,, ivtmp.278
   3E59 11 83 00 14   [ 5] 1352 	cmpu	#20	;cmphi:	; ivtmp.278,
   3E5D 26 E1         [ 3] 1353 	bne	L63	;
   3E5F 35 C0         [ 7] 1354 	puls	u,pc	;
   3E61                    1355 LC20:
   3E61 3C 34 3E 20 54 4F  1356 	.byte	60,52,62,32,84,79,32,85
        20 55
   3E69 53 45 20 53 54 41  1357 	.byte	83,69,32,83,84,65,84,83
        54 53
   3E71 80 00              1358 	.byte	-128,0
   3E73                    1359 LC21:
   3E73 59 4F 55 20 44 45  1360 	.byte	89,79,85,32,68,69,83,67
        53 43
   3E7B 45 4E 44 20 49 4E  1361 	.byte	69,78,68,32,73,78,84,79
        54 4F
   3E83 20 54 48 45 80 00  1362 	.byte	32,84,72,69,-128,0
   3E89                    1363 LC22:
   3E89 44 45 50 54 48 20  1364 	.byte	68,69,80,84,72,32,79,70
        4F 46
   3E91 20 54 45 4C 45 4E  1365 	.byte	32,84,69,76,69,78,71,65
        47 41
   3E99 52 44 80 00        1366 	.byte	82,68,-128,0
   3E9D                    1367 LC23:
   3E9D 42 45 57 41 52 45  1368 	.byte	66,69,87,65,82,69,46,46
        2E 2E
   3EA5 2E 80 00           1369 	.byte	46,-128,0
                           1370 	.globl	_createCharacter
   3EA8                    1371 _createCharacter:
   3EA8 34 40         [ 6] 1372 	pshs	u	;
   3EAA 32 7B         [ 5] 1373 	leas	-5,s	;,,
                           1374 ;----- asm -----
                           1375 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1376 	; #ENR#[390]int pressed;
                           1377 ; 573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1378 	; #ENR#[391]rollagain:
                           1379 ;--- end asm ---
   3EAC                    1380 L83:
                           1381 ;----- asm -----
                           1382 ; 575 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1383 	; #ENR#[392]for (int i=0; i<6;i++)
                           1384 ;--- end asm ---
   3EAC CE C9 43      [ 3] 1385 	ldu	#_s	; ivtmp.331,
   3EAF                    1386 L67:
                           1387 ;----- asm -----
                           1388 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1389 	; #ENR#[394]s[i] = randmax(6)+1 + randmax(6)+1 + randmax(6)+1;
                           1390 ;--- end asm ---
   3EAF C6 06         [ 2] 1391 	ldb	#6	;,
   3EB1 BD 5E 21      [ 8] 1392 	jsr	_RandMax
   3EB4 E7 61         [ 5] 1393 	stb	1,s	;, D.3430
   3EB6 C6 06         [ 2] 1394 	ldb	#6	;,
   3EB8 BD 5E 21      [ 8] 1395 	jsr	_RandMax
   3EBB E7 62         [ 5] 1396 	stb	2,s	;, D.3431
   3EBD C6 06         [ 2] 1397 	ldb	#6	;,
   3EBF BD 5E 21      [ 8] 1398 	jsr	_RandMax
   3EC2 E7 E4         [ 4] 1399 	stb	,s	;, D.3433
   3EC4 E6 61         [ 5] 1400 	ldb	1,s	;, D.3430
   3EC6 EB 62         [ 5] 1401 	addb	2,s	;, D.3431
   3EC8 CB 03         [ 2] 1402 	addb	#3	;,
   3ECA E7 61         [ 5] 1403 	stb	1,s	;, D.3430
   3ECC E6 E4         [ 4] 1404 	ldb	,s	;, D.3433
   3ECE EB 61         [ 5] 1405 	addb	1,s	;, D.3430
   3ED0 E7 C0         [ 6] 1406 	stb	,u+	;, s
   3ED2 11 83 C9 49   [ 5] 1407 	cmpu	#_s+6	;cmphi:	; ivtmp.331,
   3ED6 26 D7         [ 3] 1408 	bne	L67	;
                           1409 ;----- asm -----
                           1410 ; 581 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1411 	; #ENR#[396]pressed = 0;
                           1412 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1413 	; #ENR#[397]localtimer = action_time;
                           1414 ;--- end asm ---
   3ED8 C6 FA         [ 2] 1415 	ldb	#-6	;,
   3EDA F7 C8 A8      [ 5] 1416 	stb	_localTimer	;, localTimer
                           1417 ;----- asm -----
                           1418 ; 585 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1419 	; #ENR#[398]#ifndef no_title
                           1420 ; 587 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1421 	; #ENR#[399]do
                           1422 ;--- end asm ---
   3EDD 6F 63         [ 7] 1423 	clr	3,s	; pressed
   3EDF                    1424 L72:
                           1425 ;----- asm -----
                           1426 ; 590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1427 	; #ENR#[401]localtimer--;
                           1428 ;--- end asm ---
   3EDF 7A C8 A8      [ 7] 1429 	dec	_localTimer	; localTimer
   3EE2 F6 C8 A8      [ 5] 1430 	ldb	_localTimer	; localTimer.38, localTimer
                           1431 ;----- asm -----
                           1432 ; 592 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1433 	; #ENR#[402]if (localtimer == 0) goto rollagain;
                           1434 ;--- end asm ---
   3EE5 5D            [ 2] 1435 	tstb	; localTimer.38
   3EE6 10 27 FF C2   [ 6] 1436 	lbeq	L83	;
                           1437 ;----- asm -----
                           1438 ; 594 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1439 	; #ENR#[403]cls;
                           1440 ;--- end asm ---
   3EEA C6 90         [ 2] 1441 	ldb	#-112	;,
   3EEC F7 C9 C0      [ 5] 1442 	stb	__XC	;, _XC
   3EEF C6 70         [ 2] 1443 	ldb	#112	;,
   3EF1 F7 C9 C1      [ 5] 1444 	stb	__YC	;, _YC
                           1445 ;----- asm -----
                           1446 ; 596 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1447 	; #ENR#[404]wait_recal();
                           1448 ;--- end asm ---
   3EF4 BD F1 92      [ 8] 1449 	jsr	___Wait_Recal
                           1450 ;----- asm -----
                           1451 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1452 	; #ENR#[405]do_sound();
                           1453 ;--- end asm ---
   3EF7 BD 70 3C      [ 8] 1454 	jsr	__Do_Sound
                           1455 ;----- asm -----
                           1456 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1457 	; #ENR#[406]check_buttons();
                           1458 ;--- end asm ---
   3EFA BD F1 BA      [ 8] 1459 	jsr	___Read_Btns
                           1460 ;----- asm -----
                           1461 ; 602 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1462 	; #ENR#[407]check_joysticks();
                           1463 ;--- end asm ---
   3EFD BD F1 F8      [ 8] 1464 	jsr	___Joy_Digital
                           1465 ;----- asm -----
                           1466 ; 605 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1467 	; #ENR#[409]if (button_1_4_pressed()) break;
                           1468 ;--- end asm ---
   3F00 F6 C8 11      [ 5] 1469 	ldb	_Vec_Buttons	;, Vec_Buttons
   3F03 E7 E4         [ 4] 1470 	stb	,s	;, D.4128
   3F05 C5 08         [ 2] 1471 	bitb	#8	;,
   3F07 10 26 00 96   [ 6] 1472 	lbne	L69	;
                           1473 ;----- asm -----
                           1474 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1475 	; #ENR#[410]if (buttons_pressed()) pressed = 1;
                           1476 ;--- end asm ---
   3F0B 5D            [ 2] 1477 	tstb	;
   3F0C 27 06         [ 3] 1478 	beq	L70	;
   3F0E C6 01         [ 2] 1479 	ldb	#1	;,
   3F10 E7 63         [ 5] 1480 	stb	3,s	;, pressed
   3F12 20 06         [ 3] 1481 	bra	L71	;
   3F14                    1482 L70:
   3F14 6D 63         [ 7] 1483 	tst	3,s	; pressed
   3F16 10 26 FF 92   [ 6] 1484 	lbne	L83	;
   3F1A                    1485 L71:
                           1486 ;----- asm -----
                           1487 ; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1488 	; #ENR#[413]dp_via_t1_cnt_lo = text_scale;
                           1489 ;--- end asm ---
   3F1A C6 44         [ 2] 1490 	ldb	#68	;,
   3F1C D7 04         [ 4] 1491 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1492 ;----- asm -----
                           1493 ; 613 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1494 	; #ENR#[414]dp_via_t1_cnt_lo = 0x70;
                           1495 ;--- end asm ---
   3F1E CB 2C         [ 2] 1496 	addb	#44	;,
   3F20 D7 04         [ 4] 1497 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1498 ;----- asm -----
                           1499 ; 615 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1500 	; #ENR#[415]intensity_a(0x5f);
                           1501 ;--- end asm ---
   3F22 C6 5F         [ 2] 1502 	ldb	#95	;,
   3F24 BD 6F BB      [ 8] 1503 	jsr	__Intensity_a
                           1504 ;----- asm -----
                           1505 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1506 	; #ENR#[416]print();
                           1507 ;--- end asm ---
   3F27 F6 C9 C1      [ 5] 1508 	ldb	__YC	; _YC.40, _YC
   3F2A CB F6         [ 2] 1509 	addb	#-10	; _YC.40,
   3F2C F7 C9 C1      [ 5] 1510 	stb	__YC	; _YC.40, _YC
   3F2F 34 04         [ 6] 1511 	pshs	b	; _YC.40
   3F31 8E 3E 61      [ 3] 1512 	ldx	#LC20	;,
   3F34 F6 C9 C0      [ 5] 1513 	ldb	__XC	;, _XC
   3F37 BD 58 75      [ 8] 1514 	jsr	_syncPrintStrd
   3F3A C6 CC         [ 2] 1515 	ldb	#-52	;,
   3F3C D7 0C         [ 4] 1516 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1517 ;----- asm -----
                           1518 ; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1519 	; #ENR#[417]addline;
                           1520 ;--- end asm ---
   3F3E F6 C9 C1      [ 5] 1521 	ldb	__YC	;, _YC
   3F41 CB F6         [ 2] 1522 	addb	#-10	;,
   3F43 F7 C9 C1      [ 5] 1523 	stb	__YC	;, _YC
                           1524 ;----- asm -----
                           1525 ; 622 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1526 	; #ENR#[419]for (int i=0; i<6;i++) printfsi( , stats[i], s[i]);
                           1527 ;--- end asm ---
   3F46 BE 01 64      [ 6] 1528 	ldx	_stats	;, stats
   3F49 AF E3         [ 8] 1529 	stx	,--s	;,
   3F4B F6 C9 43      [ 5] 1530 	ldb	_s	;, s
   3F4E 8E 38 9C      [ 3] 1531 	ldx	#LC1	;,
   3F51 BD 6E 08      [ 8] 1532 	jsr	_printfsi
   3F54 FC 01 66      [ 6] 1533 	ldd	_stats+2	;, stats
   3F57 ED E3         [ 8] 1534 	std	,--s	;,
   3F59 F6 C9 44      [ 5] 1535 	ldb	_s+1	;, s
   3F5C 8E 38 9C      [ 3] 1536 	ldx	#LC1	;,
   3F5F BD 6E 08      [ 8] 1537 	jsr	_printfsi
   3F62 BE 01 68      [ 6] 1538 	ldx	_stats+4	;, stats
   3F65 AF E3         [ 8] 1539 	stx	,--s	;,
   3F67 F6 C9 45      [ 5] 1540 	ldb	_s+2	;, s
   3F6A 8E 38 9C      [ 3] 1541 	ldx	#LC1	;,
   3F6D BD 6E 08      [ 8] 1542 	jsr	_printfsi
   3F70 FC 01 6A      [ 6] 1543 	ldd	_stats+6	;, stats
   3F73 ED E3         [ 8] 1544 	std	,--s	;,
   3F75 F6 C9 46      [ 5] 1545 	ldb	_s+3	;, s
   3F78 8E 38 9C      [ 3] 1546 	ldx	#LC1	;,
   3F7B BD 6E 08      [ 8] 1547 	jsr	_printfsi
   3F7E 32 69         [ 5] 1548 	leas	9,s	;,,
   3F80 BE 01 6C      [ 6] 1549 	ldx	_stats+8	;, stats
   3F83 AF E3         [ 8] 1550 	stx	,--s	;,
   3F85 F6 C9 47      [ 5] 1551 	ldb	_s+4	;, s
   3F88 8E 38 9C      [ 3] 1552 	ldx	#LC1	;,
   3F8B BD 6E 08      [ 8] 1553 	jsr	_printfsi
   3F8E FC 01 6E      [ 6] 1554 	ldd	_stats+10	;, stats
   3F91 ED E3         [ 8] 1555 	std	,--s	;,
   3F93 F6 C9 48      [ 5] 1556 	ldb	_s+5	;, s
   3F96 8E 38 9C      [ 3] 1557 	ldx	#LC1	;,
   3F99 BD 6E 08      [ 8] 1558 	jsr	_printfsi
                           1559 ;----- asm -----
                           1560 ; 624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1561 	; #ENR#[421]while (1);
                           1562 ;--- end asm ---
   3F9C 32 64         [ 5] 1563 	leas	4,s	;,,
   3F9E 16 FF 3E      [ 5] 1564 	lbra	L72	;
   3FA1                    1565 L69:
                           1566 ;----- asm -----
                           1567 ; 627 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1568 	; #ENR#[422]#endif
                           1569 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1570 	; #ENR#[423]hp = s[3];
                           1571 ;--- end asm ---
   3FA1 F6 C9 46      [ 5] 1572 	ldb	_s+3	;, s
   3FA4 4F            [ 2] 1573 	clra		;zero_extendqihi: R:b -> R:d	;,
   3FA5 FD C9 2B      [ 6] 1574 	std	_hp	; hp.43, hp
                           1575 ;----- asm -----
                           1576 ; 631 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1577 	; #ENR#[424]ch = (signed long int) hp;
                           1578 ;--- end asm ---
   3FA8 FD C9 2D      [ 6] 1579 	std	_ch	; hp.43, ch
                           1580 ;----- asm -----
                           1581 ; 633 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1582 	; #ENR#[425]gd = 0;
                           1583 ;--- end asm ---
   3FAB CC 00 00      [ 3] 1584 	ldd	#0	;,
   3FAE FD C9 3B      [ 6] 1585 	std	_gd	;, gd
   3FB1 FD C9 3D      [ 6] 1586 	std	_gd+2	;, gd
                           1587 ;----- asm -----
                           1588 ; 635 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1589 	; #ENR#[426]tg = 0;
                           1590 ;--- end asm ---
   3FB4 FD C9 3F      [ 6] 1591 	std	_tg	;, tg
   3FB7 FD C9 41      [ 6] 1592 	std	_tg+2	;, tg
                           1593 ;----- asm -----
                           1594 ; 637 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1595 	; #ENR#[427]lv = 1;
                           1596 ;--- end asm ---
   3FBA C6 01         [ 2] 1597 	ldb	#1	;,
   3FBC F7 C9 2F      [ 5] 1598 	stb	_lv	;, lv
                           1599 ;----- asm -----
                           1600 ; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1601 	; #ENR#[429]cz = 1;
                           1602 ;--- end asm ---
   3FBF F7 C9 3A      [ 5] 1603 	stb	_cz	;, cz
                           1604 ;----- asm -----
                           1605 ; 642 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1606 	; #ENR#[430]cx = 25;
                           1607 ;--- end asm ---
   3FC2 C6 19         [ 2] 1608 	ldb	#25	;,
   3FC4 F7 C9 38      [ 5] 1609 	stb	_cx	;, cx
                           1610 ;----- asm -----
                           1611 ; 644 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1612 	; #ENR#[431]cy = 13;
                           1613 ;--- end asm ---
   3FC7 C6 0D         [ 2] 1614 	ldb	#13	;,
   3FC9 F7 C9 39      [ 5] 1615 	stb	_cy	;, cy
                           1616 ;----- asm -----
                           1617 ; 648 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1618 	; #ENR#[434]for (int i=0; i<10;i++)
                           1619 ;--- end asm ---
   3FCC 8E 00 00      [ 3] 1620 	ldx	#0	; ivtmp.318,
   3FCF                    1621 L73:
                           1622 ;----- asm -----
                           1623 ; 651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1624 	; #ENR#[436]inventory[i] = 0;
                           1625 ;--- end asm ---
   3FCF 6F 89 C9 49   [10] 1626 	clr	_inventory,x	; inventory
                           1627 ;----- asm -----
                           1628 ; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1629 	; #ENR#[437]sf[i] = 0;
                           1630 ;--- end asm ---
   3FD3 6F 89 C9 53   [10] 1631 	clr	_sf,x	; sf
   3FD7 30 01         [ 5] 1632 	leax	1,x	; ivtmp.318,, ivtmp.318
   3FD9 8C 00 0A      [ 4] 1633 	cmpx	#10	;cmphi:	; ivtmp.318,
   3FDC 26 F1         [ 3] 1634 	bne	L73	;
                           1635 ;----- asm -----
                           1636 ; 656 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1637 	; #ENR#[439]sf[10] = 0;
                           1638 ;--- end asm ---
   3FDE 7F C9 5D      [ 7] 1639 	clr	_sf+10	; sf
                           1640 ;----- asm -----
                           1641 ; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1642 	; #ENR#[442]initbox();
                           1643 ;--- end asm ---
   3FE1 BD 3D 52      [ 8] 1644 	jsr	_initBox
                           1645 ;----- asm -----
                           1646 ; 664 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1647 	; #ENR#[445]ex = 0;
                           1648 ;--- end asm ---
   3FE4 CC 00 00      [ 3] 1649 	ldd	#0	;,
   3FE7 FD C9 30      [ 6] 1650 	std	_ex	;, ex
   3FEA FD C9 32      [ 6] 1651 	std	_ex+2	;, ex
                           1652 ;----- asm -----
                           1653 ; 666 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1654 	; #ENR#[446]su = 1;
                           1655 ;--- end asm ---
   3FED 8E 00 01      [ 3] 1656 	ldx	#1	; tmp110,
   3FF0 BF C9 34      [ 6] 1657 	stx	_su	; tmp110, su
                           1658 ;----- asm -----
                           1659 ; 668 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1660 	; #ENR#[447]cs = 1;
                           1661 ;--- end asm ---
   3FF3 BF C9 36      [ 6] 1662 	stx	_cs	; tmp110, cs
                           1663 ;----- asm -----
                           1664 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1665 	; #ENR#[453]clearmonsterstack();
                           1666 ; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1667 	; #ENR#[380]for (int i=0;i<20;i++)
                           1668 ;--- end asm ---
   3FF6 CE 00 00      [ 3] 1669 	ldu	#0	; ivtmp.308,
   3FF9                    1670 L74:
                           1671 ;----- asm -----
                           1672 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1673 	; #ENR#[382]stackm[i] = -1;
                           1674 ;--- end asm ---
   3FF9 C6 FF         [ 2] 1675 	ldb	#-1	;,
   3FFB E7 C9 C9 6C   [ 8] 1676 	stb	_stackM,u	;, stackM
                           1677 ;----- asm -----
                           1678 ; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1679 	; #ENR#[383]stackml[i] = 0;
                           1680 ;--- end asm ---
   3FFF 6F C9 C9 80   [10] 1681 	clr	_stackML,u	; stackML
                           1682 ;----- asm -----
                           1683 ; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1684 	; #ENR#[384]stackmh[i] = 0;
                           1685 ;--- end asm ---
   4003 1F 30         [ 6] 1686 	tfr	u,d	; ivtmp.308,
   4005 58            [ 2] 1687 	aslb	;
   4006 49            [ 2] 1688 	rola	;
   4007 1F 01         [ 6] 1689 	tfr	d,x	;, tmp114
   4009 CC 00 00      [ 3] 1690 	ldd	#0	;,
   400C ED 89 C9 94   [ 9] 1691 	std	_stackMH,x	;, stackMH
   4010 33 41         [ 5] 1692 	leau	1,u	; ivtmp.308,, ivtmp.308
   4012 11 83 00 14   [ 5] 1693 	cmpu	#20	;cmphi:	; ivtmp.308,
   4016 26 E1         [ 3] 1694 	bne	L74	;
                           1695 ;----- asm -----
                           1696 ; 677 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1697 	; #ENR#[454]#ifndef no_title
                           1698 ; 679 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1699 	; #ENR#[455]unsigned int i=0;
                           1700 ; 681 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1701 	; #ENR#[456]do
                           1702 ;--- end asm ---
   4018 6F 64         [ 7] 1703 	clr	4,s	; i
   401A                    1704 L75:
                           1705 ;----- asm -----
                           1706 ; 684 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1707 	; #ENR#[458]cls;
                           1708 ;--- end asm ---
   401A C6 90         [ 2] 1709 	ldb	#-112	;,
   401C F7 C9 C0      [ 5] 1710 	stb	__XC	;, _XC
   401F C6 70         [ 2] 1711 	ldb	#112	;,
   4021 F7 C9 C1      [ 5] 1712 	stb	__YC	;, _YC
                           1713 ;----- asm -----
                           1714 ; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1715 	; #ENR#[459]wait_recal();
                           1716 ;--- end asm ---
   4024 BD F1 92      [ 8] 1717 	jsr	___Wait_Recal
                           1718 ;----- asm -----
                           1719 ; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1720 	; #ENR#[460]do_sound();
                           1721 ;--- end asm ---
   4027 BD 70 3C      [ 8] 1722 	jsr	__Do_Sound
                           1723 ;----- asm -----
                           1724 ; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1725 	; #ENR#[462]dp_via_t1_cnt_lo = 0x70;
                           1726 ;--- end asm ---
   402A C6 70         [ 2] 1727 	ldb	#112	;,
   402C D7 04         [ 4] 1728 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1729 ;----- asm -----
                           1730 ; 693 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1731 	; #ENR#[463]intensity_a(0x5f);
                           1732 ;--- end asm ---
   402E C6 5F         [ 2] 1733 	ldb	#95	;,
   4030 BD 6F BB      [ 8] 1734 	jsr	__Intensity_a
                           1735 ;----- asm -----
                           1736 ; 695 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1737 	; #ENR#[464]print();
                           1738 ;--- end asm ---
   4033 F6 C9 C1      [ 5] 1739 	ldb	__YC	; _YC.335, _YC
   4036 CB F6         [ 2] 1740 	addb	#-10	; _YC.335,
   4038 F7 C9 C1      [ 5] 1741 	stb	__YC	; _YC.335, _YC
   403B 34 04         [ 6] 1742 	pshs	b	; _YC.335
   403D 8E 3E 73      [ 3] 1743 	ldx	#LC21	;,
   4040 F6 C9 C0      [ 5] 1744 	ldb	__XC	;, _XC
   4043 BD 58 75      [ 8] 1745 	jsr	_syncPrintStrd
   4046 C6 CC         [ 2] 1746 	ldb	#-52	;,
   4048 D7 0C         [ 4] 1747 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1748 ;----- asm -----
                           1749 ; 697 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1750 	; #ENR#[465]print();
                           1751 ;--- end asm ---
   404A F6 C9 C1      [ 5] 1752 	ldb	__YC	; _YC.338, _YC
   404D CB F6         [ 2] 1753 	addb	#-10	; _YC.338,
   404F F7 C9 C1      [ 5] 1754 	stb	__YC	; _YC.338, _YC
   4052 34 04         [ 6] 1755 	pshs	b	; _YC.338
   4054 8E 3E 89      [ 3] 1756 	ldx	#LC22	;,
   4057 F6 C9 C0      [ 5] 1757 	ldb	__XC	;, _XC
   405A BD 58 75      [ 8] 1758 	jsr	_syncPrintStrd
   405D C6 CC         [ 2] 1759 	ldb	#-52	;,
   405F D7 0C         [ 4] 1760 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1761 ;----- asm -----
                           1762 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1763 	; #ENR#[466]addline;
                           1764 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1765 	; #ENR#[467]print();
                           1766 ;--- end asm ---
   4061 F6 C9 C1      [ 5] 1767 	ldb	__YC	; _YC.342, _YC
   4064 CB EC         [ 2] 1768 	addb	#-20	; _YC.342,
   4066 F7 C9 C1      [ 5] 1769 	stb	__YC	; _YC.342, _YC
   4069 34 04         [ 6] 1770 	pshs	b	; _YC.342
   406B 8E 3E 9D      [ 3] 1771 	ldx	#LC23	;,
   406E F6 C9 C0      [ 5] 1772 	ldb	__XC	;, _XC
   4071 BD 58 75      [ 8] 1773 	jsr	_syncPrintStrd
   4074 C6 CC         [ 2] 1774 	ldb	#-52	;,
   4076 D7 0C         [ 4] 1775 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1776 ;----- asm -----
                           1777 ; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1778 	; #ENR#[470]while (i++<160);
                           1779 ;--- end asm ---
   4078 6C 67         [ 7] 1780 	inc	7,s	; i
   407A 32 63         [ 5] 1781 	leas	3,s	;,,
   407C E6 64         [ 5] 1782 	ldb	4,s	;, i
   407E C1 A1         [ 2] 1783 	cmpb	#-95	;cmpqi:	;,
   4080 10 26 FF 96   [ 6] 1784 	lbne	L75	;
   4084 32 65         [ 5] 1785 	leas	5,s	;,,
   4086 35 C0         [ 7] 1786 	puls	u,pc	;
   4088                    1787 LC24:
   4088 4C 45 56 45 4C 20  1788 	.byte	76,69,86,69,76,32,37,-128
        25 80
   4090 00                 1789 	.byte	0
   4091                    1790 LC25:
   4091 41 42 4F 52 54 00  1791 	.ascii	"ABORT\0"
   4097                    1792 LC26:
   4097 43 41 53 54 00     1793 	.ascii	"CAST\0"
   409C                    1794 LC27:
   409C 59 4F 55 20 44 4F  1795 	.ascii	"YOU DON'T HAVE THAT LEVEL SPELLS!\0"
        4E 27 54 20 48 41
        56 45 20 54 48 41
        54 20 4C 45 56 45
        4C 20 53 50 45 4C
        4C 53 21 00
   40BE                    1796 LC28:
   40BE 59 4F 55 20 44 4F  1797 	.ascii	"YOU DON'T HAVE ENOUGH SPELL UNITS!\0"
        4E 27 54 20 48 41
        56 45 20 45 4E 4F
        55 47 48 20 53 50
        45 4C 4C 20 55 4E
        49 54 53 21 00
   40E1                    1798 LC29:
   40E1 43 41 53 54 3A 20  1799 	.ascii	"CAST: %\0"
        25 00
   40E9                    1800 LC30:
   40E9 55 4E 44 45 41 44  1801 	.ascii	"UNDEAD DON'T SLEEP!\0"
        20 44 4F 4E 27 54
        20 53 4C 45 45 50
        21 00
   40FD                    1802 LC31:
   40FD 54 48 45 20 25 20  1803 	.ascii	"THE % ISN'T SLEEPY!\0"
        49 53 4E 27 54 20
        53 4C 45 45 50 59
        21 00
   4111                    1804 LC32:
   4111 54 48 45 20 25 20  1805 	.ascii	"THE % IS SLEEPING <4> TO KILL:\0"
        49 53 20 53 4C 45
        45 50 49 4E 47 20
        3C 34 3E 20 54 4F
        20 4B 49 4C 4C 3A
        00
   4130                    1806 LC33:
   4130 45 56 41 44 45 00  1807 	.ascii	"EVADE\0"
   4136                    1808 LC34:
   4136 49 54 20 57 4F 4B  1809 	.ascii	"IT WOKE UP!\0"
        45 20 55 50 21 00
   4142                    1810 LC35:
   4142 59 4F 55 20 46 45  1811 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   4152                    1812 LC36:
   4152 54 48 45 20 25 20  1813 	.ascii	"THE % IS INSULTED\0"
        49 53 20 49 4E 53
        55 4C 54 45 44 00
   4164                    1814 LC37:
   4164 41 54 20 42 45 49  1815 	.ascii	"AT BEING CALLED UNDEAD\0"
        4E 47 20 43 41 4C
        4C 45 44 20 55 4E
        44 45 41 44 00
   417B                    1816 LC38:
   417B 54 48 45 20 25 20  1817 	.ascii	"THE % LISTENS WITH DEAF EARS\0"
        4C 49 53 54 45 4E
        53 20 57 49 54 48
        20 44 45 41 46 20
        45 41 52 53 00
   4198                    1818 LC39:
   4198 49 54 20 52 55 4E  1819 	.ascii	"IT RUNS IN FEAR!!\0"
        53 20 49 4E 20 46
        45 41 52 21 21 00
   41AA                    1820 LC40:
   41AA 54 48 45 20 25 20  1821 	.ascii	"THE % DODGES ASIDE!\0"
        44 4F 44 47 45 53
        20 41 53 49 44 45
        21 00
   41BE                    1822 LC41:
   41BE 54 48 45 20 25 20  1823 	.ascii	"THE % IS WEBBED <4> TO KILL:\0"
        49 53 20 57 45 42
        42 45 44 20 3C 34
        3E 20 54 4F 20 4B
        49 4C 4C 3A 00
   41DB                    1824 LC42:
   41DB 49 54 20 42 52 4F  1825 	.ascii	"IT BROKE FREE!\0"
        4B 45 20 46 52 45
        45 21 00
   41EA                    1826 LC43:
   41EA 54 48 45 20 55 4E  1827 	.ascii	"THE UNDEAD IGNORES YOUR WILES!\0"
        44 45 41 44 20 49
        47 4E 4F 52 45 53
        20 59 4F 55 52 20
        57 49 4C 45 53 21
        00
   4209                    1828 LC44:
   4209 54 48 45 20 25 20  1829 	.ascii	"THE % RESISTS YOU!\0"
        52 45 53 49 53 54
        53 20 59 4F 55 21
        00
   421C                    1830 LC45:
   421C 54 48 45 20 25 20  1831 	.ascii	"THE % IS CHARMED <4> TO KILL:\0"
        49 53 20 43 48 41
        52 4D 45 44 20 3C
        34 3E 20 54 4F 20
        4B 49 4C 4C 3A 00
   423A                    1832 LC46:
   423A 5A 5A 5A 5A 41 41  1833 	.ascii	"ZZZZAAAPPP!!!\0"
        41 50 50 50 21 21
        21 00
   4248                    1834 LC47:
   4248 54 48 45 20 25 20  1835 	.ascii	"THE % IGNORES YOU!\0"
        49 47 4E 4F 52 45
        53 20 59 4F 55 21
        00
   425B                    1836 LC48:
   425B 54 48 45 20 25 20  1837 	.ascii	"THE % IS HELD <4> TO KILL:\0"
        49 53 20 48 45 4C
        44 20 3C 34 3E 20
        54 4F 20 4B 49 4C
        4C 3A 00
   4276                    1838 LC49:
   4276 54 48 45 20 25 20  1839 	.ascii	"THE % DOESN'T BELIEVE!\0"
        44 4F 45 53 4E 27
        54 20 42 45 4C 49
        45 56 45 21 00
   428D                    1840 LC50:
   428D 49 54 20 42 45 4C  1841 	.ascii	"IT BELIEVES! .... ARRGH...\0"
        49 45 56 45 53 21
        20 2E 2E 2E 2E 20
        41 52 52 47 48 2E
        2E 2E 00
   42A8                    1842 LC51:
   42A8 4E 4F 54 20 49 4E  1843 	.ascii	"NOT IN MELEE!!\0"
        20 4D 45 4C 45 45
        21 21 00
   42B7                    1844 LC52:
   42B7 44 49 52 45 43 54  1845 	.ascii	"DIRECTION>\0"
        49 4F 4E 3E 00
   42C2                    1846 LC53:
   42C2 4F 4E 4C 59 20 53  1847 	.ascii	"ONLY STONE HERE...\0"
        54 4F 4E 45 20 48
        45 52 45 2E 2E 2E
        00
   42D5                    1848 LC54:
   42D5 45 41 53 54 00     1849 	.ascii	"EAST\0"
   42DA                    1850 LC55:
   42DA 57 45 53 54 00     1851 	.ascii	"WEST\0"
   42DF                    1852 LC56:
   42DF 4E 4F 52 54 48 00  1853 	.ascii	"NORTH\0"
   42E5                    1854 LC57:
   42E5 53 4F 55 54 48 00  1855 	.ascii	"SOUTH\0"
   42EB                    1856 LC58:
   42EB 3F 3F 3F 00        1857 	.ascii	"???\0"
   42EF                    1858 LC59:
   42EF 50 4F 4F 46 00     1859 	.ascii	"POOF\0"
   42F4                    1860 LC60:
   42F4 57 48 4F 4F 4F 4F  1861 	.ascii	"WHOOOOOSHH!!!\0"
        4F 53 48 48 21 21
        21 00
   4302                    1862 LC61:
   4302 54 48 45 20 25 20  1863 	.ascii	"THE % IS BURNING!\0"
        49 53 20 42 55 52
        4E 49 4E 47 21 00
   4314                    1864 LC62:
   4314 54 48 45 20 25 20  1865 	.ascii	"THE % IS ISN'T AFFECTED\0"
        49 53 20 49 53 4E
        27 54 20 41 46 46
        45 43 54 45 44 00
   432C                    1866 LC63:
   432C 4F 4E 45 20 53 54  1867 	.ascii	"ONE STONE STATUE....\0"
        4F 4E 45 20 53 54
        41 54 55 45 2E 2E
        2E 2E 00
   4341                    1868 LC64:
   4341 44 49 45 21 21 21  1869 	.ascii	"DIE!!!!!!!\0"
        21 21 21 21 00
   434C                    1870 LC65:
   434C 55 4E 44 45 41 44  1871 	.ascii	"UNDEAD ARE ALREADY DEAD!!\0"
        20 41 52 45 20 41
        4C 52 45 41 44 59
        20 44 45 41 44 21
        21 00
   4366                    1872 LC66:
   4366 54 48 45 20 25 20  1873 	.ascii	"THE % LAUGHS!\0"
        4C 41 55 47 48 53
        21 00
   4374                    1874 LC67:
   4374 43 41 53 54 20 54  1875 	.ascii	"CAST TELEPORT\0"
        45 4C 45 50 4F 52
        54 00
   4382                    1876 LC68:
   4382 54 45 4C 45 50 4F  1877 	.byte	84,69,76,69,80,79,82,84
        52 54
   438A 21 80 00           1878 	.byte	33,-128,0
   438D                    1879 LC69:
   438D 42 55 54 54 4F 4E  1880 	.byte	66,85,84,84,79,78,32,84
        20 54
   4395 4F 20 46 49 4E 49  1881 	.byte	79,32,70,73,78,73,83,72
        53 48
   439D 80 00              1882 	.byte	-128,0
   439F                    1883 LC70:
   439F 4E 4F 52 54 48 2D  1884 	.byte	78,79,82,84,72,45,32,83
        20 53
   43A7 4F 55 54 48 2B 20  1885 	.byte	79,85,84,72,43,32,58,32
        3A 20
   43AF 25 80 00           1886 	.byte	37,-128,0
   43B2                    1887 LC71:
   43B2 57 45 53 54 2D 20  1888 	.byte	87,69,83,84,45,32,69,65
        45 41
   43BA 53 54 2B 20 20 20  1889 	.byte	83,84,43,32,32,32,58,32
        3A 20
   43C2 25 80 00           1890 	.byte	37,-128,0
   43C5                    1891 LC72:
   43C5 55 50 2D 20 44 4F  1892 	.byte	85,80,45,32,68,79,87,78
        57 4E
   43CD 2B 20 20 20 20 20  1893 	.byte	43,32,32,32,32,32,58,32
        3A 20
   43D5 25 80 00           1894 	.byte	37,-128,0
   43D8                    1895 LC73:
   43D8 54 4F 20 46 41 52  1896 	.ascii	"TO FAR...TRY AGAIN\0"
        2E 2E 2E 54 52 59
        20 41 47 41 49 4E
        00
   43EB                    1897 LC74:
   43EB 4F 4E 4C 59 20 53  1898 	.ascii	"ONLY STONE THERE...\0"
        54 4F 4E 45 20 54
        48 45 52 45 2E 2E
        2E 00
   43FF                    1899 LC75:
   43FF 54 48 45 20 53 50  1900 	.ascii	"THE SPELL FAILS...\0"
        45 4C 4C 20 46 41
        49 4C 53 2E 2E 2E
        00
   4412                    1901 LC76:
   4412 4F 4E 4C 59 20 54  1902 	.ascii	"ONLY THIN AIR...\0"
        48 49 4E 20 41 49
        52 2E 2E 2E 00
   4423                    1903 LC77:
   4423 2A 2A 2A 20 50 4F  1904 	.ascii	"*** POOF! ***\0"
        4F 46 21 20 2A 2A
        2A 00
   4431                    1905 LC78:
   4431 51 57 45 52 54 59  1906 	.ascii	"QWERTY!!!!!!\0"
        21 21 21 21 21 21
        00
   443E                    1907 LC79:
   443E 54 48 45 20 25 20  1908 	.ascii	"THE % DOESN'T HEAR...\0"
        44 4F 45 53 4E 27
        54 20 48 45 41 52
        2E 2E 2E 00
   4454                    1909 LC80:
   4454 42 52 52 52 52 21  1910 	.ascii	"BRRRR!!!!\0"
        21 21 21 00
   445E                    1911 LC81:
   445E 43 41 53 54 20 57  1912 	.ascii	"CAST WALL OF FIRE - WWHOOOSSH!!!\0"
        41 4C 4C 20 4F 46
        20 46 49 52 45 20
        2D 20 57 57 48 4F
        4F 4F 53 53 48 21
        21 21 00
   447F                    1913 LC82:
   447F 41 20 57 41 4C 4C  1914 	.ascii	"A WALL OF FIRE APPEARS ABOUT YOU\0"
        20 4F 46 20 46 49
        52 45 20 41 50 50
        45 41 52 53 20 41
        42 4F 55 54 20 59
        4F 55 00
   44A0                    1915 LC83:
   44A0 54 48 45 20 25 20  1916 	.ascii	"THE % IS GONE...\0"
        49 53 20 47 4F 4E
        45 2E 2E 2E 00
   44B1                    1917 LC84:
   44B1 54 48 45 20 25 20  1918 	.ascii	"THE % WALKS THROUGH!!!\0"
        57 41 4C 4B 53 20
        54 48 52 4F 55 47
        48 21 21 21 00
   44C8                    1919 LC85:
   44C8 42 4C 41 43 4B 20  1920 	.ascii	"BLACK DEATH FOR THE % \0"
        44 45 41 54 48 20
        46 4F 52 20 54 48
        45 20 25 20 00
   44DF                    1921 LC86:
   44DF 49 54 20 49 53 20  1922 	.ascii	"IT IS IMMUNE!\0"
        49 4D 4D 55 4E 45
        21 00
   44ED                    1923 LC87:
   44ED 54 48 45 20 53 50  1924 	.ascii	"THE SPELL BACKFIRES!!\0"
        45 4C 4C 20 42 41
        43 4B 46 49 52 45
        53 21 21 00
   4503                    1925 LC88:
   4503 54 49 4D 45 20 49  1926 	.ascii	"TIME IS FROZEN, MONSTERS CANNOT\0"
        53 20 46 52 4F 5A
        45 4E 2C 20 4D 4F
        4E 53 54 45 52 53
        20 43 41 4E 4E 4F
        54 00
   4523                    1927 LC89:
   4523 41 54 54 41 43 4B  1928 	.ascii	"ATTACK YOU\0"
        20 59 4F 55 00
   452E                    1929 LC90:
   452E 54 48 45 20 25 20  1930 	.ascii	"THE % DOESN'T SEE...\0"
        44 4F 45 53 4E 27
        54 20 53 45 45 2E
        2E 2E 00
   4543                    1931 LC91:
   4543 41 20 53 43 49 4E  1932 	.ascii	"A SCINILLATING SHIFTING WALL APPEARS\0"
        49 4C 4C 41 54 49
        4E 47 20 53 48 49
        46 54 49 4E 47 20
        57 41 4C 4C 20 41
        50 50 45 41 52 53
        00
   4568                    1933 LC92:
   4568 59 4F 55 20 4A 55  1934 	.ascii	"YOU JUST WASTED A COMBAT SPELL!\0"
        53 54 20 57 41 53
        54 45 44 20 41 20
        43 4F 4D 42 41 54
        20 53 50 45 4C 4C
        21 00
   4588                    1935 LC93:
   4588 49 54 20 53 55 46  1936 	.ascii	"IT SUFFERS % HIT POINTS\0"
        46 45 52 53 20 25
        20 48 49 54 20 50
        4F 49 4E 54 53 00
                           1937 	.globl	_castSpell
   45A0                    1938 _castSpell:
   45A0 34 60         [ 7] 1939 	pshs	y,u	;
   45A2 32 E8 E7      [ 5] 1940 	leas	-25,s	;,,
   45A5 E7 65         [ 5] 1941 	stb	5,s	; inCombat, inCombat
                           1942 ;----- asm -----
                           1943 ; 728 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1944 	; #ENR#[492]unsigned int spelllevel = 0;
                           1945 ; 730 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1946 	; #ENR#[493]unsigned int spellselect = 0;
                           1947 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1948 	; #ENR#[494]unsigned int availablelevel = (lv/3);
                           1949 ;--- end asm ---
   45A7 F6 C9 2F      [ 5] 1950 	ldb	_lv	;, lv
   45AA 4F            [ 2] 1951 	clra		;zero_extendqihi: R:b -> R:d	;,
   45AB ED E4         [ 5] 1952 	std	,s	;,
   45AD CC 00 03      [ 3] 1953 	ldd	#3	;,
   45B0 ED E3         [ 8] 1954 	std	,--s	;,
   45B2 AE 62         [ 6] 1955 	ldx	2,s	;,
   45B4 BD 70 43      [ 8] 1956 	jsr	_udivhi3
   45B7 32 62         [ 5] 1957 	leas	2,s	;,,
   45B9 1F 10         [ 6] 1958 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp154,
   45BB E7 6E         [ 5] 1959 	stb	14,s	;, availableLevel
                           1960 ;----- asm -----
                           1961 ; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1962 	; #ENR#[495]int lastdir = 0;
                           1963 ; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1964 	; #ENR#[496]do
                           1965 ;--- end asm ---
   45BD 6F 6C         [ 7] 1966 	clr	12,s	; spellLevel
   45BF 6F 6D         [ 7] 1967 	clr	13,s	; spellSelect
   45C1 6F 6F         [ 7] 1968 	clr	15,s	; lastDir
   45C3                    1969 L98:
                           1970 ;----- asm -----
                           1971 ; 739 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1972 	; #ENR#[498]wait_recal();
                           1973 ;--- end asm ---
   45C3 BD F1 92      [ 8] 1974 	jsr	___Wait_Recal
                           1975 ;----- asm -----
                           1976 ; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1977 	; #ENR#[499]do_sound();
                           1978 ;--- end asm ---
   45C6 BD 70 3C      [ 8] 1979 	jsr	__Do_Sound
                           1980 ;----- asm -----
                           1981 ; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1982 	; #ENR#[500]joy_digital();
                           1983 ;--- end asm ---
   45C9 BD F1 F8      [ 8] 1984 	jsr	___Joy_Digital
                           1985 ;----- asm -----
                           1986 ; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1987 	; #ENR#[501]check_buttons();
                           1988 ;--- end asm ---
   45CC BD F1 BA      [ 8] 1989 	jsr	___Read_Btns
                           1990 ;----- asm -----
                           1991 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1992 	; #ENR#[502]dp_via_t1_cnt_lo  = 0x7f;
                           1993 ;--- end asm ---
   45CF C6 7F         [ 2] 1994 	ldb	#127	;,
   45D1 D7 04         [ 4] 1995 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1996 ;----- asm -----
                           1997 ; 750 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           1998 	; #ENR#[504]if ((vec_joy_1_x > 0) && (!lastdir))
                           1999 ;--- end asm ---
   45D3 F6 C8 1B      [ 5] 2000 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   45D6 E7 E4         [ 4] 2001 	stb	,s	;, Vec_Joy_1_X.47
   45D8 2F 0D         [ 3] 2002 	ble	L85	;
   45DA 6D 6F         [ 7] 2003 	tst	15,s	; lastDir
   45DC 26 09         [ 3] 2004 	bne	L85	;
   45DE E6 6C         [ 5] 2005 	ldb	12,s	;, spellLevel
   45E0 C1 04         [ 2] 2006 	cmpb	#4	;cmpqi:	;,
   45E2 22 03         [ 3] 2007 	bhi	L85	;
   45E4 5C            [ 2] 2008 	incb	;
   45E5 E7 6C         [ 5] 2009 	stb	12,s	;, spellLevel
   45E7                    2010 L85:
                           2011 ;----- asm -----
                           2012 ; 753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2013 	; #ENR#[506]if ((vec_joy_1_x < 0) && (!lastdir))
                           2014 ;--- end asm ---
   45E7 6D E4         [ 6] 2015 	tst	,s	; Vec_Joy_1_X.47
   45E9 2C 0A         [ 3] 2016 	bge	L86	;
   45EB 6D 6F         [ 7] 2017 	tst	15,s	; lastDir
   45ED 26 06         [ 3] 2018 	bne	L86	;
   45EF 6D 6C         [ 7] 2019 	tst	12,s	; spellLevel
   45F1 27 02         [ 3] 2020 	beq	L86	;
   45F3 6A 6C         [ 7] 2021 	dec	12,s	; spellLevel
   45F5                    2022 L86:
                           2023 ;----- asm -----
                           2024 ; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2025 	; #ENR#[509]if (spelllevel <= availablelevel)
                           2026 ;--- end asm ---
   45F5 E6 6C         [ 5] 2027 	ldb	12,s	;, spellLevel
   45F7 E1 6E         [ 5] 2028 	cmpb	14,s	;cmpqi:	;, availableLevel
   45F9 10 22 00 3C   [ 6] 2029 	lbhi	L87	;
                           2030 ;----- asm -----
                           2031 ; 760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2032 	; #ENR#[511]intensity_5f();
                           2033 ;--- end asm ---
   45FD BD F2 A5      [ 8] 2034 	jsr	___Intensity_5F
                           2035 ;----- asm -----
                           2036 ; 762 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2037 	; #ENR#[512]if ((vec_joy_1_y > 0) && (!lastdir))
                           2038 ;--- end asm ---
   4600 F6 C8 1C      [ 5] 2039 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y.48, Vec_Joy_1_Y
   4603 2F 0A         [ 3] 2040 	ble	L88	;
   4605 6D 6F         [ 7] 2041 	tst	15,s	; lastDir
   4607 26 06         [ 3] 2042 	bne	L88	;
   4609 6D 6D         [ 7] 2043 	tst	13,s	; spellSelect
   460B 27 02         [ 3] 2044 	beq	L88	;
   460D 6A 6D         [ 7] 2045 	dec	13,s	; spellSelect
   460F                    2046 L88:
                           2047 ;----- asm -----
                           2048 ; 765 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2049 	; #ENR#[514]if ((vec_joy_1_y < 0) && (!lastdir))
                           2050 ;--- end asm ---
   460F 5D            [ 2] 2051 	tstb	; Vec_Joy_1_Y.48
   4610 2C 0D         [ 3] 2052 	bge	L89	;
   4612 6D 6F         [ 7] 2053 	tst	15,s	; lastDir
   4614 26 09         [ 3] 2054 	bne	L89	;
   4616 E6 6D         [ 5] 2055 	ldb	13,s	;, spellSelect
   4618 C1 04         [ 2] 2056 	cmpb	#4	;cmpqi:	;,
   461A 22 03         [ 3] 2057 	bhi	L89	;
   461C 5C            [ 2] 2058 	incb	;
   461D E7 6D         [ 5] 2059 	stb	13,s	;, spellSelect
   461F                    2060 L89:
                           2061 ;----- asm -----
                           2062 ; 769 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2063 	; #ENR#[517]print_str_d(0x60-0x10*spellselect,-0x65, );
                           2064 ;--- end asm ---
   461F C6 06         [ 2] 2065 	ldb	#6	; tmp157,
   4621 E0 6D         [ 5] 2066 	subb	13,s	; tmp156, spellSelect
   4623 58            [ 2] 2067 	aslb	; tmp156
   4624 58            [ 2] 2068 	aslb	; tmp156
   4625 58            [ 2] 2069 	aslb	; tmp156
   4626 58            [ 2] 2070 	aslb	; tmp156
   4627 34 04         [ 6] 2071 	pshs	b	; tmp156
   4629 8E 39 00      [ 3] 2072 	ldx	#LC14	;,
   462C C6 9B         [ 2] 2073 	ldb	#-101	;,
   462E BD 58 75      [ 8] 2074 	jsr	_syncPrintStrd
                           2075 ;----- asm -----
                           2076 ; 771 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2077 	; #ENR#[518]reset0ref();
                           2078 ;--- end asm ---
   4631 C6 CC         [ 2] 2079 	ldb	#-52	;,
   4633 D7 0C         [ 4] 2080 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   4635 32 61         [ 5] 2081 	leas	1,s	;,,
   4637 20 03         [ 3] 2082 	bra	L90	;
   4639                    2083 L87:
   4639 BD F2 A1      [ 8] 2084 	jsr	___Intensity_3F
   463C                    2085 L90:
                           2086 ;----- asm -----
                           2087 ; 777 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2088 	; #ENR#[523]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           2089 ;--- end asm ---
   463C C6 01         [ 2] 2090 	ldb	#1	;,
   463E E7 6F         [ 5] 2091 	stb	15,s	;, lastDir
   4640 7D C8 1B      [ 7] 2092 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4643 26 09         [ 3] 2093 	bne	L92	;
   4645 F6 C8 1C      [ 5] 2094 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
   4648 27 02         [ 3] 2095 	beq	L93	;
   464A C6 01         [ 2] 2096 	ldb	#1	; Vec_Joy_1_Y,
   464C                    2097 L93:
   464C E7 6F         [ 5] 2098 	stb	15,s	; Vec_Joy_1_Y, lastDir
   464E                    2099 L92:
                           2100 ;----- asm -----
                           2101 ; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2102 	; #ENR#[525]_fi_s(, (unsigned int) spelllevel+1);
                           2103 ;--- end asm ---
   464E E6 6C         [ 5] 2104 	ldb	12,s	; tmp160, spellLevel
   4650 5C            [ 2] 2105 	incb	; tmp160
   4651 8E 40 88      [ 3] 2106 	ldx	#LC24	;,
   4654 BD 5B BD      [ 8] 2107 	jsr	__fi_s
                           2108 ;----- asm -----
                           2109 ; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2110 	; #ENR#[526]print_str_d(0x78,-0x20, stringbuffer40);
                           2111 ;--- end asm ---
   4657 C6 78         [ 2] 2112 	ldb	#120	;,
   4659 E7 E2         [ 6] 2113 	stb	,-s	;,
   465B 8E C8 BF      [ 3] 2114 	ldx	#_stringBuffer40	;,
   465E C6 E0         [ 2] 2115 	ldb	#-32	;,
   4660 BD 58 75      [ 8] 2116 	jsr	_syncPrintStrd
                           2117 ;----- asm -----
                           2118 ; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2119 	; #ENR#[527]reset0ref();
                           2120 ;--- end asm ---
   4663 C6 CC         [ 2] 2121 	ldb	#-52	;,
   4665 D7 0C         [ 4] 2122 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           2123 ;----- asm -----
                           2124 ; 787 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2125 	; #ENR#[529]for (unsigned int i=0;i<6;i++)
                           2126 ;--- end asm ---
   4667 E6 6D         [ 5] 2127 	ldb	13,s	;, spellLevel
   4669 4F            [ 2] 2128 	clra		;zero_extendqihi: R:b -> R:d	;,
   466A ED 61         [ 6] 2129 	std	1,s	;,
   466C 58            [ 2] 2130 	aslb	;
   466D 49            [ 2] 2131 	rola	;
   466E 1F 01         [ 6] 2132 	tfr	d,x	;, tmp163
   4670 EE 89 04 30   [ 9] 2133 	ldu	_spellNames,x	; D.3494, spellNames
   4674 10 8E 00 00   [ 4] 2134 	ldy	#0	; ivtmp.412,
   4678 32 61         [ 5] 2135 	leas	1,s	;,,
   467A                    2136 L94:
                           2137 ;----- asm -----
                           2138 ; 790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2139 	; #ENR#[531]print_str_d(0x60-0x10*i,-0x50, spellnames[spelllevel][i]);
                           2140 ;--- end asm ---
   467A 1F 30         [ 6] 2141 	tfr	u,d	; D.3494,
   467C 30 AB         [ 8] 2142 	leax	d,y	; tmp165,, ivtmp.412
   467E 1F 20         [ 6] 2143 	tfr	y,d	;movlsbqihi: R:y -> R:b	; ivtmp.412, ivtmp.412
   4680 58            [ 2] 2144 	aslb	; ivtmp.412
   4681 58            [ 2] 2145 	aslb	; ivtmp.412
   4682 58            [ 2] 2146 	aslb	; ivtmp.412
   4683 50            [ 2] 2147 	negb	; ivtmp.412
   4684 CB 60         [ 2] 2148 	addb	#96	; ivtmp.412,
   4686 34 04         [ 6] 2149 	pshs	b	; ivtmp.412
   4688 AE 84         [ 5] 2150 	ldx	,x	;,
   468A C6 B0         [ 2] 2151 	ldb	#-80	;,
   468C BD 58 75      [ 8] 2152 	jsr	_syncPrintStrd
                           2153 ;----- asm -----
                           2154 ; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2155 	; #ENR#[532]reset0ref();
                           2156 ;--- end asm ---
   468F C6 CC         [ 2] 2157 	ldb	#-52	;,
   4691 D7 0C         [ 4] 2158 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   4693 31 22         [ 5] 2159 	leay	2,y	; ivtmp.412,, ivtmp.412
   4695 32 61         [ 5] 2160 	leas	1,s	;,,
   4697 10 8C 00 0C   [ 5] 2161 	cmpy	#12	;cmphi:	; ivtmp.412,
   469B 26 DD         [ 3] 2162 	bne	L94	;
                           2163 ;----- asm -----
                           2164 ; 796 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2165 	; #ENR#[535]if (button_1_1_pressed())
                           2166 ;--- end asm ---
   469D F6 C8 11      [ 5] 2167 	ldb	_Vec_Buttons	;, Vec_Buttons
   46A0 E7 62         [ 5] 2168 	stb	2,s	;, D.4140
   46A2 C5 01         [ 2] 2169 	bitb	#1	;,
   46A4 27 09         [ 3] 2170 	beq	L95	;
                           2171 ;----- asm -----
                           2172 ; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2173 	; #ENR#[537]printmessage();
                           2174 ;--- end asm ---
   46A6 8E 40 91      [ 3] 2175 	ldx	#LC25	;,
   46A9 BD 5A 71      [ 8] 2176 	jsr	_printMessage
                           2177 ;----- asm -----
                           2178 ; 801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2179 	; #ENR#[538]return 2;
                           2180 ;--- end asm ---
   46AC 16 0B A0      [ 5] 2181 	lbra	L221	;
   46AF                    2182 L95:
                           2183 ;----- asm -----
                           2184 ; 804 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2185 	; #ENR#[540]if (buttons_pressed()) break;
                           2186 ;--- end asm ---
   46AF 6D 62         [ 7] 2187 	tst	2,s	; D.4140
   46B1 26 03         [ 3] 2188 	bne	L97	;
                           2189 ;----- asm -----
                           2190 ; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2191 	; #ENR#[545]while (1);
                           2192 ;--- end asm ---
   46B3 16 FF 0D      [ 5] 2193 	lbra	L98	;
   46B6                    2194 L97:
                           2195 ;----- asm -----
                           2196 ; 812 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2197 	; #ENR#[546]clearmessage();
                           2198 ;--- end asm ---
   46B6 7F C9 C2      [ 7] 2199 	clr	_msgLine	; msgLine
                           2200 ;----- asm -----
                           2201 ; 814 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2202 	; #ENR#[547]printmessage();
                           2203 ;--- end asm ---
   46B9 8E 40 97      [ 3] 2204 	ldx	#LC26	;,
   46BC BD 5A 71      [ 8] 2205 	jsr	_printMessage
                           2206 ;----- asm -----
                           2207 ; 818 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2208 	; #ENR#[550]if (spelllevel > availablelevel)
                           2209 ;--- end asm ---
   46BF E6 6C         [ 5] 2210 	ldb	12,s	;, spellLevel
   46C1 E1 6E         [ 5] 2211 	cmpb	14,s	;cmpqi:	;, availableLevel
   46C3 23 09         [ 3] 2212 	bls	L99	;
                           2213 ;----- asm -----
                           2214 ; 821 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2215 	; #ENR#[552]printmessage();
                           2216 ;--- end asm ---
   46C5 8E 40 9C      [ 3] 2217 	ldx	#LC27	;,
   46C8 BD 5A 71      [ 8] 2218 	jsr	_printMessage
                           2219 ;----- asm -----
                           2220 ; 823 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2221 	; #ENR#[553]return 2;
                           2222 ;--- end asm ---
   46CB 16 0B 81      [ 5] 2223 	lbra	L221	;
   46CE                    2224 L99:
                           2225 ;----- asm -----
                           2226 ; 827 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2227 	; #ENR#[556]if (spelllevel > cs)
                           2228 ;--- end asm ---
   46CE E6 6C         [ 5] 2229 	ldb	12,s	;, spellLevel
   46D0 4F            [ 2] 2230 	clra		;zero_extendqihi: R:b -> R:d	;,
   46D1 1F 02         [ 6] 2231 	tfr	d,y	;, D.3505
   46D3 10 B3 C9 36   [ 8] 2232 	cmpd	_cs	;cmphi:	; D.3505, cs
   46D7 23 09         [ 3] 2233 	bls	L100	;
                           2234 ;----- asm -----
                           2235 ; 830 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2236 	; #ENR#[558]printmessage();
                           2237 ;--- end asm ---
   46D9 8E 40 BE      [ 3] 2238 	ldx	#LC28	;,
   46DC BD 5A 71      [ 8] 2239 	jsr	_printMessage
                           2240 ;----- asm -----
                           2241 ; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2242 	; #ENR#[559]return 1;
                           2243 ;--- end asm ---
   46DF 16 0B 7D      [ 5] 2244 	lbra	L218	;
   46E2                    2245 L100:
                           2246 ;----- asm -----
                           2247 ; 835 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2248 	; #ENR#[561]clearmessage();
                           2249 ;--- end asm ---
   46E2 7F C9 C2      [ 7] 2250 	clr	_msgLine	; msgLine
                           2251 ;----- asm -----
                           2252 ; 837 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2253 	; #ENR#[562]_fs(, (void *)spellnames[spelllevel][spellselect]);
                           2254 ;--- end asm ---
   46E5 1F 20         [ 6] 2255 	tfr	y,d	; D.3505,
   46E7 58            [ 2] 2256 	aslb	;
   46E8 49            [ 2] 2257 	rola	;
   46E9 1F 01         [ 6] 2258 	tfr	d,x	;, tmp174
   46EB E6 6D         [ 5] 2259 	ldb	13,s	;, spellSelect
   46ED 4F            [ 2] 2260 	clra		;zero_extendqihi: R:b -> R:d	;,
   46EE ED E4         [ 5] 2261 	std	,s	;,
   46F0 58            [ 2] 2262 	aslb	;
   46F1 49            [ 2] 2263 	rola	;
   46F2 AE 89 04 30   [ 9] 2264 	ldx	_spellNames,x	;, spellNames
   46F6 30 8B         [ 8] 2265 	leax	d,x	; tmp179, tmp178,
   46F8 AE 84         [ 5] 2266 	ldx	,x	;,
   46FA AF E3         [ 8] 2267 	stx	,--s	;,
   46FC 8E 40 E1      [ 3] 2268 	ldx	#LC29	;,
   46FF BD 5B 50      [ 8] 2269 	jsr	__fs
                           2270 ;----- asm -----
                           2271 ; 839 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2272 	; #ENR#[563]printmessage(stringbuffer40);
                           2273 ;--- end asm ---
   4702 8E C8 BF      [ 3] 2274 	ldx	#_stringBuffer40	;,
   4705 BD 5A 71      [ 8] 2275 	jsr	_printMessage
                           2276 ;----- asm -----
                           2277 ; 842 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2278 	; #ENR#[565]cs=cs-spelllevel;
                           2279 ;--- end asm ---
   4708 FC C9 36      [ 6] 2280 	ldd	_cs	; cs, cs
   470B 34 20         [ 6] 2281 	pshs	y	;subhi: R:d -= R:y	; D.3505, tmp182
   470D A3 E1         [ 9] 2282 	subd	,s++	; tmp182
   470F FD C9 36      [ 6] 2283 	std	_cs	; tmp182, cs
                           2284 ;----- asm -----
                           2285 ; 845 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2286 	; #ENR#[567]if (spelllevel == 0)
                           2287 ;--- end asm ---
   4712 32 62         [ 5] 2288 	leas	2,s	;,,
   4714 6D 6C         [ 7] 2289 	tst	12,s	; spellLevel
   4716 10 26 01 80   [ 6] 2290 	lbne	L101	;
                           2291 ;----- asm -----
                           2292 ; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2293 	; #ENR#[569]if (spellselect == 0)
                           2294 ;--- end asm ---
   471A 6D 6D         [ 7] 2295 	tst	13,s	; spellSelect
   471C 26 0D         [ 3] 2296 	bne	L102	;
                           2297 ;----- asm -----
                           2298 ; 854 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2299 	; #ENR#[574]tmp = (signed int) randmax(8)+5;
                           2300 ;--- end asm ---
   471E C6 08         [ 2] 2301 	ldb	#8	;,
   4720 BD 5E 21      [ 8] 2302 	jsr	_RandMax
   4723 CB 05         [ 2] 2303 	addb	#5	; D.3512,
   4725 F7 C8 FE      [ 5] 2304 	stb	_tmp	; D.3512, tmp
                           2305 ;----- asm -----
                           2306 ; 856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2307 	; #ENR#[575]goto damagespell;
                           2308 ;--- end asm ---
   4728 16 0B 39      [ 5] 2309 	lbra	L103	;
   472B                    2310 L102:
   472B E6 6D         [ 5] 2311 	ldb	13,s	;, spellSelect
   472D C1 01         [ 2] 2312 	cmpb	#1	;cmpqi:	;,
   472F 10 26 00 88   [ 6] 2313 	lbne	L104	;
                           2314 ;----- asm -----
                           2315 ; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2316 	; #ENR#[579]if (!incombat) goto nocombatspell;
                           2317 ;--- end asm ---
   4733 6D 65         [ 7] 2318 	tst	5,s	; inCombat
   4735 10 27 0B 1B   [ 6] 2319 	lbeq	L105	;
                           2320 ;----- asm -----
                           2321 ; 865 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2322 	; #ENR#[582]if (un != 0)
                           2323 ;--- end asm ---
   4739 7D C9 69      [ 7] 2324 	tst	_un	; un
   473C 27 09         [ 3] 2325 	beq	L106	;
                           2326 ;----- asm -----
                           2327 ; 868 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2328 	; #ENR#[584]printmessage();
                           2329 ;--- end asm ---
   473E 8E 40 E9      [ 3] 2330 	ldx	#LC30	;,
   4741 BD 5A 71      [ 8] 2331 	jsr	_printMessage
                           2332 ;----- asm -----
                           2333 ; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2334 	; #ENR#[585]return 1;
                           2335 ;--- end asm ---
   4744 16 0B 18      [ 5] 2336 	lbra	L218	;
   4747                    2337 L106:
                           2338 ;----- asm -----
                           2339 ; 875 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2340 	; #ENR#[589]if (randmax(20)+1 > s[int] )
                           2341 ;--- end asm ---
   4747 C6 14         [ 2] 2342 	ldb	#20	;,
   4749 BD 5E 21      [ 8] 2343 	jsr	_RandMax
   474C 5C            [ 2] 2344 	incb	; D.3516
   474D F1 C9 44      [ 5] 2345 	cmpb	_s+1	;cmpqi:	; D.3516, s
   4750 23 1F         [ 3] 2346 	bls	L107	;
                           2347 ;----- asm -----
                           2348 ; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2349 	; #ENR#[591]_fs(, mo[m]);
                           2350 ;--- end asm ---
   4752 F6 C9 62      [ 5] 2351 	ldb	_m	;, m
   4755 1D            [ 2] 2352 	sex		;extendqihi2: R:b -> R:d	;,
   4756 ED E4         [ 5] 2353 	std	,s	;,
   4758 58            [ 2] 2354 	aslb	;
   4759 49            [ 2] 2355 	rola	;
   475A 1F 01         [ 6] 2356 	tfr	d,x	;, tmp187
   475C AE 89 01 24   [ 9] 2357 	ldx	_mo,x	;, mo
   4760 AF E3         [ 8] 2358 	stx	,--s	;,
   4762 8E 40 FD      [ 3] 2359 	ldx	#LC31	;,
   4765 BD 5B 50      [ 8] 2360 	jsr	__fs
                           2361 ;----- asm -----
                           2362 ; 880 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2363 	; #ENR#[592]printmessage(stringbuffer40);
                           2364 ;--- end asm ---
   4768 8E C8 BF      [ 3] 2365 	ldx	#_stringBuffer40	;,
   476B BD 5A 71      [ 8] 2366 	jsr	_printMessage
                           2367 ;----- asm -----
                           2368 ; 882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2369 	; #ENR#[593]return 1;
                           2370 ;--- end asm ---
   476E 16 00 C1      [ 5] 2371 	lbra	L223	;
   4771                    2372 L107:
                           2373 ;----- asm -----
                           2374 ; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2375 	; #ENR#[598]_fs(, mo[m]);
                           2376 ;--- end asm ---
   4771 F6 C9 62      [ 5] 2377 	ldb	_m	;, m
   4774 1D            [ 2] 2378 	sex		;extendqihi2: R:b -> R:d	;,
   4775 ED E4         [ 5] 2379 	std	,s	;,
   4777 58            [ 2] 2380 	aslb	;
   4778 49            [ 2] 2381 	rola	;
   4779 1F 01         [ 6] 2382 	tfr	d,x	;, tmp192
   477B AE 89 01 24   [ 9] 2383 	ldx	_mo,x	;, mo
   477F AF E3         [ 8] 2384 	stx	,--s	;,
   4781 8E 41 11      [ 3] 2385 	ldx	#LC32	;,
   4784 BD 5B 50      [ 8] 2386 	jsr	__fs
                           2387 ;----- asm -----
                           2388 ; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2389 	; #ENR#[599]printmessage(stringbuffer40);
                           2390 ;--- end asm ---
   4787 8E C8 BF      [ 3] 2391 	ldx	#_stringBuffer40	;,
   478A BD 5A 71      [ 8] 2392 	jsr	_printMessage
                           2393 ;----- asm -----
                           2394 ; 892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2395 	; #ENR#[600]if (testforbutton(1) != 4)
                           2396 ;--- end asm ---
   478D C6 01         [ 2] 2397 	ldb	#1	;,
   478F BD 04 AF      [ 8] 2398 	jsr	_testForButton
   4792 32 62         [ 5] 2399 	leas	2,s	;,,
   4794 C1 04         [ 2] 2400 	cmpb	#4	;cmpqi:	; D.3521,
   4796 27 09         [ 3] 2401 	beq	L108	;
                           2402 ;----- asm -----
                           2403 ; 895 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2404 	; #ENR#[602]printmessage();
                           2405 ;--- end asm ---
   4798 8E 41 30      [ 3] 2406 	ldx	#LC33	;,
   479B BD 5A 71      [ 8] 2407 	jsr	_printMessage
                           2408 ;----- asm -----
                           2409 ; 897 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2410 	; #ENR#[603]return 4;
                           2411 ;--- end asm ---
   479E 16 01 80      [ 5] 2412 	lbra	L220	;
   47A1                    2413 L108:
                           2414 ;----- asm -----
                           2415 ; 903 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2416 	; #ENR#[608]if (randmax(5) < 4 )
                           2417 ;--- end asm ---
   47A1 C6 05         [ 2] 2418 	ldb	#5	;,
   47A3 BD 5E 21      [ 8] 2419 	jsr	_RandMax
   47A6 C1 03         [ 2] 2420 	cmpb	#3	;cmpqi:	; D.3522,
   47A8 22 03         [ 3] 2421 	bhi	L109	;
                           2422 ;----- asm -----
                           2423 ; 906 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2424 	; #ENR#[610]return 3;
                           2425 ;--- end asm ---
   47AA 16 0A E5      [ 5] 2426 	lbra	L166	;
   47AD                    2427 L109:
                           2428 ;----- asm -----
                           2429 ; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2430 	; #ENR#[612]printmessage();
                           2431 ;--- end asm ---
   47AD 8E 41 36      [ 3] 2432 	ldx	#LC34	;,
   47B0 BD 5A 71      [ 8] 2433 	jsr	_printMessage
                           2434 ;----- asm -----
                           2435 ; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2436 	; #ENR#[613]pause(small_pause);
                           2437 ;--- end asm ---
   47B3 C6 4B         [ 2] 2438 	ldb	#75	;,
   47B5 BD 3D 31      [ 8] 2439 	jsr	_pause
                           2440 ;----- asm -----
                           2441 ; 913 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2442 	; #ENR#[614]return 1;
                           2443 ;--- end asm ---
   47B8 16 0A A4      [ 5] 2444 	lbra	L218	;
   47BB                    2445 L104:
   47BB E6 6D         [ 5] 2446 	ldb	13,s	;, spellSelect
   47BD C1 02         [ 2] 2447 	cmpb	#2	;cmpqi:	;,
   47BF 26 29         [ 3] 2448 	bne	L110	;
                           2449 ;----- asm -----
                           2450 ; 922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2451 	; #ENR#[622]printmessage();
                           2452 ;--- end asm ---
   47C1 8E 41 42      [ 3] 2453 	ldx	#LC35	;,
   47C4 BD 5A 71      [ 8] 2454 	jsr	_printMessage
                           2455 ;----- asm -----
                           2456 ; 924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2457 	; #ENR#[623]ch = ch + randmax(8)+1;
                           2458 ;--- end asm ---
   47C7 10 BE C9 2D   [ 7] 2459 	ldy	_ch	; ch.56, ch
   47CB C6 08         [ 2] 2460 	ldb	#8	;,
   47CD BD 5E 21      [ 8] 2461 	jsr	_RandMax
   47D0 30 21         [ 5] 2462 	leax	1,y	; tmp195,, ch.56
   47D2 4F            [ 2] 2463 	clra		;zero_extendqihi: R:b -> R:d	; D.3524, D.3524
   47D3 34 10         [ 6] 2464 	pshs	x	;addhi: R:d += R:x	; tmp195, ch.57
   47D5 E3 E1         [ 9] 2465 	addd	,s++	; ch.57
   47D7 FD C9 2D      [ 6] 2466 	std	_ch	; ch.57, ch
                           2467 ;----- asm -----
                           2468 ; 926 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2469 	; #ENR#[624]if (ch > hp) ch = hp;
                           2470 ;--- end asm ---
   47DA BE C9 2B      [ 6] 2471 	ldx	_hp	; hp.58, hp
   47DD 34 10         [ 6] 2472 	pshs	x	;cmphi: R:x with R:d	; hp.58, ch.57
   47DF 10 A3 E1      [10] 2473 	cmpd	,s++	;cmphi:	; ch.57
   47E2 2F 03         [ 3] 2474 	ble	L111	;
   47E4 BF C9 2D      [ 6] 2475 	stx	_ch	; hp.58, ch
   47E7                    2476 L111:
                           2477 ;----- asm -----
                           2478 ; 928 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2479 	; #ENR#[625]return 1;
                           2480 ;--- end asm ---
   47E7 16 0A 75      [ 5] 2481 	lbra	L218	;
   47EA                    2482 L110:
   47EA E6 6D         [ 5] 2483 	ldb	13,s	;, spellSelect
   47EC C1 03         [ 2] 2484 	cmpb	#3	;cmpqi:	;,
   47EE 26 0D         [ 3] 2485 	bne	L112	;
                           2486 ;----- asm -----
                           2487 ; 938 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2488 	; #ENR#[634]sf[light] = randmax(11)+5;
                           2489 ;--- end asm ---
   47F0 C6 0B         [ 2] 2490 	ldb	#11	;,
   47F2 BD 5E 21      [ 8] 2491 	jsr	_RandMax
   47F5 CB 05         [ 2] 2492 	addb	#5	; D.3529,
   47F7 F7 C9 55      [ 5] 2493 	stb	_sf+2	; D.3529, sf
                           2494 ;----- asm -----
                           2495 ; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2496 	; #ENR#[635]return 1;
                           2497 ;--- end asm ---
   47FA 16 0A 62      [ 5] 2498 	lbra	L218	;
   47FD                    2499 L112:
   47FD E6 6D         [ 5] 2500 	ldb	13,s	;, spellSelect
   47FF C1 04         [ 2] 2501 	cmpb	#4	;cmpqi:	;,
   4801 10 26 00 80   [ 6] 2502 	lbne	L113	;
                           2503 ;----- asm -----
                           2504 ; 947 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2505 	; #ENR#[641]if (!incombat) goto nocombatspell;
                           2506 ;--- end asm ---
   4805 6D 65         [ 7] 2507 	tst	5,s	; inCombat
   4807 10 27 0A 49   [ 6] 2508 	lbeq	L105	;
                           2509 ;----- asm -----
                           2510 ; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2511 	; #ENR#[645]if (un == 0)
                           2512 ;--- end asm ---
   480B 7D C9 69      [ 7] 2513 	tst	_un	; un
   480E 26 27         [ 3] 2514 	bne	L114	;
                           2515 ;----- asm -----
                           2516 ; 955 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2517 	; #ENR#[647]_fs(, mo[m]);
                           2518 ;--- end asm ---
   4810 F6 C9 62      [ 5] 2519 	ldb	_m	;, m
   4813 1D            [ 2] 2520 	sex		;extendqihi2: R:b -> R:d	;,
   4814 ED E4         [ 5] 2521 	std	,s	;,
   4816 58            [ 2] 2522 	aslb	;
   4817 49            [ 2] 2523 	rola	;
   4818 1F 01         [ 6] 2524 	tfr	d,x	;, tmp200
   481A AE 89 01 24   [ 9] 2525 	ldx	_mo,x	;, mo
   481E AF E3         [ 8] 2526 	stx	,--s	;,
   4820 8E 41 52      [ 3] 2527 	ldx	#LC36	;,
   4823 BD 5B 50      [ 8] 2528 	jsr	__fs
                           2529 ;----- asm -----
                           2530 ; 957 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2531 	; #ENR#[648]printmessage(stringbuffer40);
                           2532 ;--- end asm ---
   4826 8E C8 BF      [ 3] 2533 	ldx	#_stringBuffer40	;,
   4829 BD 5A 71      [ 8] 2534 	jsr	_printMessage
                           2535 ;----- asm -----
                           2536 ; 959 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2537 	; #ENR#[649]printmessage();
                           2538 ;--- end asm ---
   482C 8E 41 64      [ 3] 2539 	ldx	#LC37	;,
   482F BD 5A 71      [ 8] 2540 	jsr	_printMessage
                           2541 ;----- asm -----
                           2542 ; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2543 	; #ENR#[650]return 1;
                           2544 ;--- end asm ---
   4832                    2545 L223:
   4832 C6 01         [ 2] 2546 	ldb	#1	; D.3503,
   4834 16 0A 13      [ 5] 2547 	lbra	L219	;
   4837                    2548 L114:
                           2549 ;----- asm -----
                           2550 ; 967 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2551 	; #ENR#[655]if (randmax(20) > s[wis] + lv-ml)
                           2552 ;--- end asm ---
   4837 C6 14         [ 2] 2553 	ldb	#20	;,
   4839 BD 5E 21      [ 8] 2554 	jsr	_RandMax
   483C E7 E4         [ 4] 2555 	stb	,s	;, D.3531
   483E F6 C9 6A      [ 5] 2556 	ldb	_ml	;, ml
   4841 E7 66         [ 5] 2557 	stb	6,s	;, ml.59
   4843 F6 C9 2F      [ 5] 2558 	ldb	_lv	;, lv
   4846 FB C9 45      [ 5] 2559 	addb	_s+2	;, s
   4849 E0 66         [ 5] 2560 	subb	6,s	;, ml.59
   484B E7 63         [ 5] 2561 	stb	3,s	;,
   484D E6 E4         [ 4] 2562 	ldb	,s	;, D.3531
   484F E1 63         [ 5] 2563 	cmpb	3,s	;cmpqi:	;,
   4851 23 1F         [ 3] 2564 	bls	L115	;
                           2565 ;----- asm -----
                           2566 ; 970 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2567 	; #ENR#[657]_fs(, mo[m]);
                           2568 ;--- end asm ---
   4853 F6 C9 62      [ 5] 2569 	ldb	_m	;, m
   4856 1D            [ 2] 2570 	sex		;extendqihi2: R:b -> R:d	;,
   4857 ED E4         [ 5] 2571 	std	,s	;,
   4859 58            [ 2] 2572 	aslb	;
   485A 49            [ 2] 2573 	rola	;
   485B 1F 01         [ 6] 2574 	tfr	d,x	;, tmp208
   485D AE 89 01 24   [ 9] 2575 	ldx	_mo,x	;, mo
   4861 AF E3         [ 8] 2576 	stx	,--s	;,
   4863 8E 41 7B      [ 3] 2577 	ldx	#LC38	;,
   4866 BD 5B 50      [ 8] 2578 	jsr	__fs
                           2579 ;----- asm -----
                           2580 ; 972 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2581 	; #ENR#[658]printmessage(stringbuffer40);
                           2582 ;--- end asm ---
   4869 8E C8 BF      [ 3] 2583 	ldx	#_stringBuffer40	;,
   486C BD 5A 71      [ 8] 2584 	jsr	_printMessage
                           2585 ;----- asm -----
                           2586 ; 974 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2587 	; #ENR#[659]return 1;
                           2588 ;--- end asm ---
   486F 16 FF C0      [ 5] 2589 	lbra	L223	;
   4872                    2590 L115:
                           2591 ;----- asm -----
                           2592 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2593 	; #ENR#[662]ml=(ml+1)>>1;
                           2594 ;--- end asm ---
   4872 6C 66         [ 7] 2595 	inc	6,s	; ml.59
   4874 E6 66         [ 5] 2596 	ldb	6,s	;, ml.59
   4876 54            [ 2] 2597 	lsrb	;
   4877 F7 C9 6A      [ 5] 2598 	stb	_ml	;, ml
                           2599 ;----- asm -----
                           2600 ; 980 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2601 	; #ENR#[663]printmessage();
                           2602 ;--- end asm ---
   487A 8E 41 98      [ 3] 2603 	ldx	#LC39	;,
   487D BD 5A 71      [ 8] 2604 	jsr	_printMessage
                           2605 ;----- asm -----
                           2606 ; 982 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2607 	; #ENR#[664]return 5;
                           2608 ;--- end asm ---
   4880 C6 05         [ 2] 2609 	ldb	#5	; D.3503,
   4882 16 0A 0F      [ 5] 2610 	lbra	L96	;
   4885                    2611 L113:
   4885 E6 6D         [ 5] 2612 	ldb	13,s	;, spellSelect
   4887 C1 05         [ 2] 2613 	cmpb	#5	;cmpqi:	;,
   4889 10 26 09 C2   [ 6] 2614 	lbne	L116	;
                           2615 ;----- asm -----
                           2616 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2617 	; #ENR#[670]sf[protection_from_evil] = randmax(11)+5;
                           2618 ;--- end asm ---
   488D C6 0B         [ 2] 2619 	ldb	#11	;,
   488F BD 5E 21      [ 8] 2620 	jsr	_RandMax
   4892 CB 05         [ 2] 2621 	addb	#5	; D.3538,
   4894 F7 C9 56      [ 5] 2622 	stb	_sf+3	; D.3538, sf
                           2623 ;----- asm -----
                           2624 ; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2625 	; #ENR#[671]return 1;
                           2626 ;--- end asm ---
   4897 16 09 C5      [ 5] 2627 	lbra	L218	;
   489A                    2628 L101:
   489A E6 6C         [ 5] 2629 	ldb	12,s	;, spellLevel
   489C C1 01         [ 2] 2630 	cmpb	#1	;cmpqi:	;,
   489E 10 26 01 5F   [ 6] 2631 	lbne	L117	;
                           2632 ;----- asm -----
                           2633 ; 997 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2634 	; #ENR#[676]if (spellselect == 0)
                           2635 ;--- end asm ---
   48A2 6D 6D         [ 7] 2636 	tst	13,s	; spellSelect
   48A4 10 26 00 96   [ 6] 2637 	lbne	L118	;
                           2638 ;----- asm -----
                           2639 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2640 	; #ENR#[683]if (!incombat) goto nocombatspell;
                           2641 ;--- end asm ---
   48A8 6D 65         [ 7] 2642 	tst	5,s	; inCombat
   48AA 10 27 09 A6   [ 6] 2643 	lbeq	L105	;
                           2644 ;----- asm -----
                           2645 ; 1007 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2646 	; #ENR#[684]if ( ((lrandmax(6)*lrandmax(5)))  + ml > s[int])
                           2647 ;--- end asm ---
   48AE C6 06         [ 2] 2648 	ldb	#6	;,
   48B0 BD 6F 6B      [ 8] 2649 	jsr	_lRandMax
   48B3 31 84         [ 4] 2650 	leay	,x	; D.3540,
   48B5 C6 05         [ 2] 2651 	ldb	#5	;,
   48B7 BD 6F 6B      [ 8] 2652 	jsr	_lRandMax
   48BA 34 20         [ 6] 2653 	pshs	y	; D.3540
   48BC BD 76 87      [ 8] 2654 	jsr	_mulhi3
   48BF 32 62         [ 5] 2655 	leas	2,s	;,,
   48C1 F6 C9 6A      [ 5] 2656 	ldb	_ml	;, ml
   48C4 4F            [ 2] 2657 	clra		;zero_extendqihi: R:b -> R:d	;,
   48C5 ED E4         [ 5] 2658 	std	,s	;,
   48C7 30 8B         [ 8] 2659 	leax	d,x	; tmp215,, tmp213
   48C9 F6 C9 44      [ 5] 2660 	ldb	_s+1	;, s
   48CC 4F            [ 2] 2661 	clra		;zero_extendqihi: R:b -> R:d	;,
   48CD 1F 03         [ 6] 2662 	tfr	d,u	;, s
   48CF 34 06         [ 7] 2663 	pshs	d	;cmphi: R:d with R:x	; s, tmp215
   48D1 AC E1         [ 9] 2664 	cmpx	,s++	;cmphi:	; tmp215
   48D3 23 1F         [ 3] 2665 	bls	L119	;
                           2666 ;----- asm -----
                           2667 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2668 	; #ENR#[686]_fs(, mo[m]);
                           2669 ;--- end asm ---
   48D5 F6 C9 62      [ 5] 2670 	ldb	_m	;, m
   48D8 1D            [ 2] 2671 	sex		;extendqihi2: R:b -> R:d	;,
   48D9 ED E4         [ 5] 2672 	std	,s	;,
   48DB 58            [ 2] 2673 	aslb	;
   48DC 49            [ 2] 2674 	rola	;
   48DD 1F 01         [ 6] 2675 	tfr	d,x	;, tmp220
   48DF AE 89 01 24   [ 9] 2676 	ldx	_mo,x	;, mo
   48E3 AF E3         [ 8] 2677 	stx	,--s	;,
   48E5 8E 41 AA      [ 3] 2678 	ldx	#LC40	;,
   48E8 BD 5B 50      [ 8] 2679 	jsr	__fs
                           2680 ;----- asm -----
                           2681 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2682 	; #ENR#[687]printmessage(stringbuffer40);
                           2683 ;--- end asm ---
   48EB 8E C8 BF      [ 3] 2684 	ldx	#_stringBuffer40	;,
   48EE BD 5A 71      [ 8] 2685 	jsr	_printMessage
                           2686 ;----- asm -----
                           2687 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2688 	; #ENR#[688]return 1;
                           2689 ;--- end asm ---
   48F1 16 FF 3E      [ 5] 2690 	lbra	L223	;
   48F4                    2691 L119:
                           2692 ;----- asm -----
                           2693 ; 1020 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2694 	; #ENR#[693]_fs(, mo[m]);
                           2695 ;--- end asm ---
   48F4 F6 C9 62      [ 5] 2696 	ldb	_m	;, m
   48F7 1D            [ 2] 2697 	sex		;extendqihi2: R:b -> R:d	;,
   48F8 ED E4         [ 5] 2698 	std	,s	;,
   48FA 58            [ 2] 2699 	aslb	;
   48FB 49            [ 2] 2700 	rola	;
   48FC 1F 01         [ 6] 2701 	tfr	d,x	;, tmp225
   48FE AE 89 01 24   [ 9] 2702 	ldx	_mo,x	;, mo
   4902 AF E3         [ 8] 2703 	stx	,--s	;,
   4904 8E 41 BE      [ 3] 2704 	ldx	#LC41	;,
   4907 BD 5B 50      [ 8] 2705 	jsr	__fs
                           2706 ;----- asm -----
                           2707 ; 1022 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2708 	; #ENR#[694]dressedtokill:
                           2709 ;--- end asm ---
   490A                    2710 L215:
   490A 32 62         [ 5] 2711 	leas	2,s	;,,
   490C                    2712 L120:
                           2713 ;----- asm -----
                           2714 ; 1024 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2715 	; #ENR#[695]printmessage(stringbuffer40);
                           2716 ;--- end asm ---
   490C 8E C8 BF      [ 3] 2717 	ldx	#_stringBuffer40	;,
   490F BD 5A 71      [ 8] 2718 	jsr	_printMessage
                           2719 ;----- asm -----
                           2720 ; 1026 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2721 	; #ENR#[696]if (testforbutton(1) != 4)
                           2722 ;--- end asm ---
   4912 C6 01         [ 2] 2723 	ldb	#1	;,
   4914 BD 04 AF      [ 8] 2724 	jsr	_testForButton
   4917 C1 04         [ 2] 2725 	cmpb	#4	;cmpqi:	; D.3546,
   4919 27 0B         [ 3] 2726 	beq	L121	;
                           2727 ;----- asm -----
                           2728 ; 1029 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2729 	; #ENR#[698]printmessage();
                           2730 ;--- end asm ---
   491B 8E 41 30      [ 3] 2731 	ldx	#LC33	;,
   491E BD 5A 71      [ 8] 2732 	jsr	_printMessage
                           2733 ;----- asm -----
                           2734 ; 1031 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2735 	; #ENR#[699]return 4;
                           2736 ;--- end asm ---
   4921                    2737 L220:
   4921 C6 04         [ 2] 2738 	ldb	#4	; D.3503,
   4923 16 09 6E      [ 5] 2739 	lbra	L96	;
   4926                    2740 L121:
                           2741 ;----- asm -----
                           2742 ; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2743 	; #ENR#[704]if (randmax(20)-ml > 10 )
                           2744 ;--- end asm ---
   4926 C6 14         [ 2] 2745 	ldb	#20	;,
   4928 BD 5E 21      [ 8] 2746 	jsr	_RandMax
   492B F0 C9 6A      [ 5] 2747 	subb	_ml	; tmp228, ml
   492E C1 0A         [ 2] 2748 	cmpb	#10	;cmpqi:	; tmp228,
   4930 23 03         [ 3] 2749 	bls	L122	;
                           2750 ;----- asm -----
                           2751 ; 1040 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2752 	; #ENR#[706]return 3;
                           2753 ;--- end asm ---
   4932 16 09 5D      [ 5] 2754 	lbra	L166	;
   4935                    2755 L122:
                           2756 ;----- asm -----
                           2757 ; 1043 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2758 	; #ENR#[708]printmessage();
                           2759 ;--- end asm ---
   4935 8E 41 DB      [ 3] 2760 	ldx	#LC42	;,
   4938 BD 5A 71      [ 8] 2761 	jsr	_printMessage
                           2762 ;----- asm -----
                           2763 ; 1045 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2764 	; #ENR#[709]return 1;
                           2765 ;--- end asm ---
   493B 16 09 21      [ 5] 2766 	lbra	L218	;
   493E                    2767 L118:
   493E E6 6D         [ 5] 2768 	ldb	13,s	;, spellSelect
   4940 C1 01         [ 2] 2769 	cmpb	#1	;cmpqi:	;,
   4942 26 0D         [ 3] 2770 	bne	L123	;
                           2771 ;----- asm -----
                           2772 ; 1052 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2773 	; #ENR#[715]sf[levitate] = randmax(21)+5;
                           2774 ;--- end asm ---
   4944 C6 15         [ 2] 2775 	ldb	#21	;,
   4946 BD 5E 21      [ 8] 2776 	jsr	_RandMax
   4949 CB 05         [ 2] 2777 	addb	#5	; D.3549,
   494B F7 C9 57      [ 5] 2778 	stb	_sf+4	; D.3549, sf
                           2779 ;----- asm -----
                           2780 ; 1054 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2781 	; #ENR#[716]return 1;
                           2782 ;--- end asm ---
   494E 16 08 1D      [ 5] 2783 	lbra	L222	;
   4951                    2784 L123:
   4951 E6 6D         [ 5] 2785 	ldb	13,s	;, spellSelect
   4953 C1 02         [ 2] 2786 	cmpb	#2	;cmpqi:	;,
   4955 26 0D         [ 3] 2787 	bne	L124	;
                           2788 ;----- asm -----
                           2789 ; 1062 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2790 	; #ENR#[723]tmp = (signed int) randmax(12)+3;
                           2791 ;--- end asm ---
   4957 C6 0C         [ 2] 2792 	ldb	#12	;,
   4959 BD 5E 21      [ 8] 2793 	jsr	_RandMax
   495C CB 03         [ 2] 2794 	addb	#3	; D.3551,
   495E F7 C8 FE      [ 5] 2795 	stb	_tmp	; D.3551, tmp
                           2796 ;----- asm -----
                           2797 ; 1064 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2798 	; #ENR#[724]goto damagespell;
                           2799 ;--- end asm ---
   4961 16 09 00      [ 5] 2800 	lbra	L103	;
   4964                    2801 L124:
   4964 E6 6D         [ 5] 2802 	ldb	13,s	;, spellSelect
   4966 C1 03         [ 2] 2803 	cmpb	#3	;cmpqi:	;,
   4968 26 0D         [ 3] 2804 	bne	L125	;
                           2805 ;----- asm -----
                           2806 ; 1071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2807 	; #ENR#[730]sf[detect_traps] = randmax(21)+5;
                           2808 ;--- end asm ---
   496A C6 15         [ 2] 2809 	ldb	#21	;,
   496C BD 5E 21      [ 8] 2810 	jsr	_RandMax
   496F CB 05         [ 2] 2811 	addb	#5	; D.3554,
   4971 F7 C9 54      [ 5] 2812 	stb	_sf+1	; D.3554, sf
                           2813 ;----- asm -----
                           2814 ; 1073 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2815 	; #ENR#[731]return 1;
                           2816 ;--- end asm ---
   4974 16 08 E8      [ 5] 2817 	lbra	L218	;
   4977                    2818 L125:
   4977 E6 6D         [ 5] 2819 	ldb	13,s	;, spellSelect
   4979 C1 04         [ 2] 2820 	cmpb	#4	;cmpqi:	;,
   497B 10 26 00 6D   [ 6] 2821 	lbne	L126	;
                           2822 ;----- asm -----
                           2823 ; 1080 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2824 	; #ENR#[737]if (!incombat) goto nocombatspell;
                           2825 ;--- end asm ---
   497F 6D 65         [ 7] 2826 	tst	5,s	; inCombat
   4981 10 27 08 CF   [ 6] 2827 	lbeq	L105	;
                           2828 ;----- asm -----
                           2829 ; 1084 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2830 	; #ENR#[740]if (un != 0)
                           2831 ;--- end asm ---
   4985 7D C9 69      [ 7] 2832 	tst	_un	; un
   4988 27 09         [ 3] 2833 	beq	L127	;
                           2834 ;----- asm -----
                           2835 ; 1087 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2836 	; #ENR#[742]printmessage();
                           2837 ;--- end asm ---
   498A 8E 41 EA      [ 3] 2838 	ldx	#LC43	;,
   498D BD 5A 71      [ 8] 2839 	jsr	_printMessage
                           2840 ;----- asm -----
                           2841 ; 1089 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2842 	; #ENR#[743]return 1;
                           2843 ;--- end asm ---
   4990 16 08 CC      [ 5] 2844 	lbra	L218	;
   4993                    2845 L127:
                           2846 ;----- asm -----
                           2847 ; 1097 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2848 	; #ENR#[750]if ( ((lrandmax(6)*lrandmax(5)))  + 1 > s[chr])
                           2849 ;--- end asm ---
   4993 C6 06         [ 2] 2850 	ldb	#6	;,
   4995 BD 6F 6B      [ 8] 2851 	jsr	_lRandMax
   4998 31 84         [ 4] 2852 	leay	,x	; D.3556,
   499A C6 05         [ 2] 2853 	ldb	#5	;,
   499C BD 6F 6B      [ 8] 2854 	jsr	_lRandMax
   499F 34 20         [ 6] 2855 	pshs	y	; D.3556
   49A1 BD 76 87      [ 8] 2856 	jsr	_mulhi3
   49A4 32 62         [ 5] 2857 	leas	2,s	;,,
   49A6 30 01         [ 5] 2858 	leax	1,x	; tmp232,, tmp231
   49A8 F6 C9 48      [ 5] 2859 	ldb	_s+5	;, s
   49AB 4F            [ 2] 2860 	clra		;zero_extendqihi: R:b -> R:d	;,
   49AC 1F 03         [ 6] 2861 	tfr	d,u	;, s
   49AE 34 06         [ 7] 2862 	pshs	d	;cmphi: R:d with R:x	; s, tmp232
   49B0 AC E1         [ 9] 2863 	cmpx	,s++	;cmphi:	; tmp232
   49B2 23 1F         [ 3] 2864 	bls	L128	;
                           2865 ;----- asm -----
                           2866 ; 1100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2867 	; #ENR#[752]_fs(, mo[m]);
                           2868 ;--- end asm ---
   49B4 F6 C9 62      [ 5] 2869 	ldb	_m	;, m
   49B7 1D            [ 2] 2870 	sex		;extendqihi2: R:b -> R:d	;,
   49B8 ED E4         [ 5] 2871 	std	,s	;,
   49BA 58            [ 2] 2872 	aslb	;
   49BB 49            [ 2] 2873 	rola	;
   49BC 1F 01         [ 6] 2874 	tfr	d,x	;, tmp237
   49BE AE 89 01 24   [ 9] 2875 	ldx	_mo,x	;, mo
   49C2 AF E3         [ 8] 2876 	stx	,--s	;,
   49C4 8E 42 09      [ 3] 2877 	ldx	#LC44	;,
   49C7 BD 5B 50      [ 8] 2878 	jsr	__fs
                           2879 ;----- asm -----
                           2880 ; 1102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2881 	; #ENR#[753]printmessage(stringbuffer40);
                           2882 ;--- end asm ---
   49CA 8E C8 BF      [ 3] 2883 	ldx	#_stringBuffer40	;,
   49CD BD 5A 71      [ 8] 2884 	jsr	_printMessage
                           2885 ;----- asm -----
                           2886 ; 1104 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2887 	; #ENR#[754]return 1;
                           2888 ;--- end asm ---
   49D0 16 FE 5F      [ 5] 2889 	lbra	L223	;
   49D3                    2890 L128:
                           2891 ;----- asm -----
                           2892 ; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2893 	; #ENR#[759]_fs(, mo[m]);
                           2894 ;--- end asm ---
   49D3 F6 C9 62      [ 5] 2895 	ldb	_m	;, m
   49D6 1D            [ 2] 2896 	sex		;extendqihi2: R:b -> R:d	;,
   49D7 ED E4         [ 5] 2897 	std	,s	;,
   49D9 58            [ 2] 2898 	aslb	;
   49DA 49            [ 2] 2899 	rola	;
   49DB 1F 01         [ 6] 2900 	tfr	d,x	;, tmp242
   49DD AE 89 01 24   [ 9] 2901 	ldx	_mo,x	;, mo
   49E1 AF E3         [ 8] 2902 	stx	,--s	;,
   49E3 8E 42 1C      [ 3] 2903 	ldx	#LC45	;,
   49E6 BD 5B 50      [ 8] 2904 	jsr	__fs
                           2905 ;----- asm -----
                           2906 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2907 	; #ENR#[760]goto dressedtokill;
                           2908 ;--- end asm ---
   49E9 16 FF 1E      [ 5] 2909 	lbra	L215	;
   49EC                    2910 L126:
   49EC E6 6D         [ 5] 2911 	ldb	13,s	;, spellSelect
   49EE C1 05         [ 2] 2912 	cmpb	#5	;cmpqi:	;,
   49F0 10 26 08 5B   [ 6] 2913 	lbne	L116	;
                           2914 ;----- asm -----
                           2915 ; 1119 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2916 	; #ENR#[766]sf[strength] = randmax(21)+5;
                           2917 ;--- end asm ---
   49F4 C6 15         [ 2] 2918 	ldb	#21	;,
   49F6 BD 5E 21      [ 8] 2919 	jsr	_RandMax
   49F9 CB 05         [ 2] 2920 	addb	#5	; D.3562,
   49FB F7 C9 53      [ 5] 2921 	stb	_sf	; D.3562, sf
                           2922 ;----- asm -----
                           2923 ; 1121 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2924 	; #ENR#[767]return 1;
                           2925 ;--- end asm ---
   49FE 16 08 5E      [ 5] 2926 	lbra	L218	;
   4A01                    2927 L117:
   4A01 E6 6C         [ 5] 2928 	ldb	12,s	;, spellLevel
   4A03 C1 02         [ 2] 2929 	cmpb	#2	;cmpqi:	;,
   4A05 10 26 01 40   [ 6] 2930 	lbne	L129	;
                           2931 ;----- asm -----
                           2932 ; 1127 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2933 	; #ENR#[772]if (spellselect == 0)
                           2934 ;--- end asm ---
   4A09 6D 6D         [ 7] 2935 	tst	13,s	; spellSelect
   4A0B 26 1E         [ 3] 2936 	bne	L130	;
                           2937 ;----- asm -----
                           2938 ; 1132 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2939 	; #ENR#[776]printmessage();
                           2940 ;--- end asm ---
   4A0D 8E 42 3A      [ 3] 2941 	ldx	#LC46	;,
   4A10 BD 5A 71      [ 8] 2942 	jsr	_printMessage
                           2943 ;----- asm -----
                           2944 ; 1137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2945 	; #ENR#[780]pause(small_pause);
                           2946 ;--- end asm ---
   4A13 C6 4B         [ 2] 2947 	ldb	#75	;,
   4A15 BD 3D 31      [ 8] 2948 	jsr	_pause
                           2949 ;----- asm -----
                           2950 ; 1139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2951 	; #ENR#[781]tmp = (signed int) randmax(6*lv)+15;
                           2952 ;--- end asm ---
   4A18 F6 C9 2F      [ 5] 2953 	ldb	_lv	; tmp248, lv
   4A1B 58            [ 2] 2954 	aslb	; tmp248
   4A1C FB C9 2F      [ 5] 2955 	addb	_lv	; tmp248, lv
   4A1F 58            [ 2] 2956 	aslb	; tmp248
   4A20 BD 5E 21      [ 8] 2957 	jsr	_RandMax
   4A23 CB 0F         [ 2] 2958 	addb	#15	; D.3565,
   4A25 F7 C8 FE      [ 5] 2959 	stb	_tmp	; D.3565, tmp
                           2960 ;----- asm -----
                           2961 ; 1141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2962 	; #ENR#[782]goto damagespell;
                           2963 ;--- end asm ---
   4A28 16 08 39      [ 5] 2964 	lbra	L103	;
   4A2B                    2965 L130:
   4A2B E6 6D         [ 5] 2966 	ldb	13,s	;, spellSelect
   4A2D C1 01         [ 2] 2967 	cmpb	#1	;cmpqi:	;,
   4A2F 26 29         [ 3] 2968 	bne	L131	;
                           2969 ;----- asm -----
                           2970 ; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2971 	; #ENR#[791]printmessage();
                           2972 ;--- end asm ---
   4A31 8E 41 42      [ 3] 2973 	ldx	#LC35	;,
   4A34 BD 5A 71      [ 8] 2974 	jsr	_printMessage
                           2975 ;----- asm -----
                           2976 ; 1153 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2977 	; #ENR#[792]ch = ch + randmax(24)+1;
                           2978 ;--- end asm ---
   4A37 10 BE C9 2D   [ 7] 2979 	ldy	_ch	; ch.440, ch
   4A3B C6 18         [ 2] 2980 	ldb	#24	;,
   4A3D BD 5E 21      [ 8] 2981 	jsr	_RandMax
   4A40 30 21         [ 5] 2982 	leax	1,y	; tmp251,, ch.440
   4A42 4F            [ 2] 2983 	clra		;zero_extendqihi: R:b -> R:d	; D.3568, D.3568
   4A43 34 10         [ 6] 2984 	pshs	x	;addhi: R:d += R:x	; tmp251, ch.63
   4A45 E3 E1         [ 9] 2985 	addd	,s++	; ch.63
   4A47 FD C9 2D      [ 6] 2986 	std	_ch	; ch.63, ch
                           2987 ;----- asm -----
                           2988 ; 1155 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2989 	; #ENR#[793]if (ch > hp) ch = hp;
                           2990 ;--- end asm ---
   4A4A BE C9 2B      [ 6] 2991 	ldx	_hp	; hp.441, hp
   4A4D 34 10         [ 6] 2992 	pshs	x	;cmphi: R:x with R:d	; hp.441, ch.63
   4A4F 10 A3 E1      [10] 2993 	cmpd	,s++	;cmphi:	; ch.63
   4A52 2F 03         [ 3] 2994 	ble	L132	;
   4A54 BF C9 2D      [ 6] 2995 	stx	_ch	; hp.441, ch
   4A57                    2996 L132:
                           2997 ;----- asm -----
                           2998 ; 1157 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           2999 	; #ENR#[794]return 1;
                           3000 ;--- end asm ---
   4A57 16 08 05      [ 5] 3001 	lbra	L218	;
   4A5A                    3002 L131:
   4A5A E6 6D         [ 5] 3003 	ldb	13,s	;, spellSelect
   4A5C C1 02         [ 2] 3004 	cmpb	#2	;cmpqi:	;,
   4A5E 26 0D         [ 3] 3005 	bne	L133	;
                           3006 ;----- asm -----
                           3007 ; 1164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3008 	; #ENR#[800]sf[light] = randmax(31)+5;
                           3009 ;--- end asm ---
   4A60 C6 1F         [ 2] 3010 	ldb	#31	;,
   4A62 BD 5E 21      [ 8] 3011 	jsr	_RandMax
   4A65 CB 05         [ 2] 3012 	addb	#5	; D.3572,
   4A67 F7 C9 55      [ 5] 3013 	stb	_sf+2	; D.3572, sf
                           3014 ;----- asm -----
                           3015 ; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3016 	; #ENR#[801]return 1;
                           3017 ;--- end asm ---
   4A6A 16 07 F2      [ 5] 3018 	lbra	L218	;
   4A6D                    3019 L133:
   4A6D E6 6D         [ 5] 3020 	ldb	13,s	;, spellSelect
   4A6F C1 03         [ 2] 3021 	cmpb	#3	;cmpqi:	;,
   4A71 26 0D         [ 3] 3022 	bne	L134	;
                           3023 ;----- asm -----
                           3024 ; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3025 	; #ENR#[807]sf[invisible] = randmax(21)+5;
                           3026 ;--- end asm ---
   4A73 C6 15         [ 2] 3027 	ldb	#21	;,
   4A75 BD 5E 21      [ 8] 3028 	jsr	_RandMax
   4A78 CB 05         [ 2] 3029 	addb	#5	; D.3574,
   4A7A F7 C9 58      [ 5] 3030 	stb	_sf+5	; D.3574, sf
                           3031 ;----- asm -----
                           3032 ; 1175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3033 	; #ENR#[808]return 1;
                           3034 ;--- end asm ---
   4A7D 16 07 DF      [ 5] 3035 	lbra	L218	;
   4A80                    3036 L134:
   4A80 E6 6D         [ 5] 3037 	ldb	13,s	;, spellSelect
   4A82 C1 04         [ 2] 3038 	cmpb	#4	;cmpqi:	;,
   4A84 10 26 00 7E   [ 6] 3039 	lbne	L135	;
                           3040 ;----- asm -----
                           3041 ; 1183 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3042 	; #ENR#[815]if (!incombat) goto nocombatspell;
                           3043 ;--- end asm ---
   4A88 6D 65         [ 7] 3044 	tst	5,s	; inCombat
   4A8A 10 27 07 C6   [ 6] 3045 	lbeq	L105	;
                           3046 ;----- asm -----
                           3047 ; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3048 	; #ENR#[819]if ( randmax(20)+ml > s[int])
                           3049 ;--- end asm ---
   4A8E C6 14         [ 2] 3050 	ldb	#20	;,
   4A90 BD 5E 21      [ 8] 3051 	jsr	_RandMax
   4A93 FB C9 6A      [ 5] 3052 	addb	_ml	; D.3576, ml
   4A96 F1 C9 44      [ 5] 3053 	cmpb	_s+1	;cmpqi:	; D.3576, s
   4A99 23 1F         [ 3] 3054 	bls	L136	;
                           3055 ;----- asm -----
                           3056 ; 1191 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3057 	; #ENR#[821]_fs(, mo[m]);
                           3058 ;--- end asm ---
   4A9B F6 C9 62      [ 5] 3059 	ldb	_m	;, m
   4A9E 1D            [ 2] 3060 	sex		;extendqihi2: R:b -> R:d	;,
   4A9F ED E4         [ 5] 3061 	std	,s	;,
   4AA1 58            [ 2] 3062 	aslb	;
   4AA2 49            [ 2] 3063 	rola	;
   4AA3 1F 01         [ 6] 3064 	tfr	d,x	;, tmp259
   4AA5 AE 89 01 24   [ 9] 3065 	ldx	_mo,x	;, mo
   4AA9 AF E3         [ 8] 3066 	stx	,--s	;,
   4AAB 8E 42 48      [ 3] 3067 	ldx	#LC47	;,
   4AAE BD 5B 50      [ 8] 3068 	jsr	__fs
                           3069 ;----- asm -----
                           3070 ; 1193 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3071 	; #ENR#[822]printmessage(stringbuffer40);
                           3072 ;--- end asm ---
   4AB1 8E C8 BF      [ 3] 3073 	ldx	#_stringBuffer40	;,
   4AB4 BD 5A 71      [ 8] 3074 	jsr	_printMessage
                           3075 ;----- asm -----
                           3076 ; 1195 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3077 	; #ENR#[823]return 1;
                           3078 ;--- end asm ---
   4AB7 16 FD 78      [ 5] 3079 	lbra	L223	;
   4ABA                    3080 L136:
                           3081 ;----- asm -----
                           3082 ; 1202 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3083 	; #ENR#[829]_fs(, mo[m]);
                           3084 ;--- end asm ---
   4ABA F6 C9 62      [ 5] 3085 	ldb	_m	;, m
   4ABD 1D            [ 2] 3086 	sex		;extendqihi2: R:b -> R:d	;,
   4ABE ED E4         [ 5] 3087 	std	,s	;,
   4AC0 58            [ 2] 3088 	aslb	;
   4AC1 49            [ 2] 3089 	rola	;
   4AC2 1F 01         [ 6] 3090 	tfr	d,x	;, tmp264
   4AC4 AE 89 01 24   [ 9] 3091 	ldx	_mo,x	;, mo
   4AC8 AF E3         [ 8] 3092 	stx	,--s	;,
   4ACA 8E 42 5B      [ 3] 3093 	ldx	#LC48	;,
   4ACD BD 5B 50      [ 8] 3094 	jsr	__fs
                           3095 ;----- asm -----
                           3096 ; 1204 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3097 	; #ENR#[830]printmessage(stringbuffer40);
                           3098 ;--- end asm ---
   4AD0 8E C8 BF      [ 3] 3099 	ldx	#_stringBuffer40	;,
   4AD3 BD 5A 71      [ 8] 3100 	jsr	_printMessage
                           3101 ;----- asm -----
                           3102 ; 1206 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3103 	; #ENR#[831]if (testforbutton(1) != 4)
                           3104 ;--- end asm ---
   4AD6 C6 01         [ 2] 3105 	ldb	#1	;,
   4AD8 BD 04 AF      [ 8] 3106 	jsr	_testForButton
   4ADB 32 62         [ 5] 3107 	leas	2,s	;,,
   4ADD C1 04         [ 2] 3108 	cmpb	#4	;cmpqi:	; D.3578,
   4ADF 27 09         [ 3] 3109 	beq	L137	;
                           3110 ;----- asm -----
                           3111 ; 1209 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3112 	; #ENR#[833]printmessage();
                           3113 ;--- end asm ---
   4AE1 8E 41 30      [ 3] 3114 	ldx	#LC33	;,
   4AE4 BD 5A 71      [ 8] 3115 	jsr	_printMessage
                           3116 ;----- asm -----
                           3117 ; 1211 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3118 	; #ENR#[834]return 4;
                           3119 ;--- end asm ---
   4AE7 16 06 84      [ 5] 3120 	lbra	L222	;
   4AEA                    3121 L137:
                           3122 ;----- asm -----
                           3123 ; 1221 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3124 	; #ENR#[843]if (randmax(33) > 7+ml )
                           3125 ;--- end asm ---
   4AEA C6 21         [ 2] 3126 	ldb	#33	;,
   4AEC BD 5E 21      [ 8] 3127 	jsr	_RandMax
   4AEF E7 67         [ 5] 3128 	stb	7,s	;, D.3579
   4AF1 F6 C9 6A      [ 5] 3129 	ldb	_ml	; tmp267, ml
   4AF4 CB 07         [ 2] 3130 	addb	#7	; tmp267,
   4AF6 E1 67         [ 5] 3131 	cmpb	7,s	;cmpqi:(R)	; tmp267, D.3579
   4AF8 24 03         [ 3] 3132 	bhs	L138	;
                           3133 ;----- asm -----
                           3134 ; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3135 	; #ENR#[845]return 3;
                           3136 ;--- end asm ---
   4AFA 16 07 95      [ 5] 3137 	lbra	L166	;
   4AFD                    3138 L138:
                           3139 ;----- asm -----
                           3140 ; 1227 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3141 	; #ENR#[847]printmessage();
                           3142 ;--- end asm ---
   4AFD 8E 41 DB      [ 3] 3143 	ldx	#LC42	;,
   4B00 BD 5A 71      [ 8] 3144 	jsr	_printMessage
                           3145 ;----- asm -----
                           3146 ; 1229 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3147 	; #ENR#[848]return 1;
                           3148 ;--- end asm ---
   4B03 16 07 59      [ 5] 3149 	lbra	L218	;
   4B06                    3150 L135:
   4B06 E6 6D         [ 5] 3151 	ldb	13,s	;, spellSelect
   4B08 C1 05         [ 2] 3152 	cmpb	#5	;cmpqi:	;,
   4B0A 10 26 07 41   [ 6] 3153 	lbne	L116	;
                           3154 ;----- asm -----
                           3155 ; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3156 	; #ENR#[854]if (!incombat) goto nocombatspell;
                           3157 ;--- end asm ---
   4B0E 6D 65         [ 7] 3158 	tst	5,s	; inCombat
   4B10 10 27 07 40   [ 6] 3159 	lbeq	L105	;
                           3160 ;----- asm -----
                           3161 ; 1241 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3162 	; #ENR#[858]if (randmax(22)+ml >= s[int])
                           3163 ;--- end asm ---
   4B14 C6 16         [ 2] 3164 	ldb	#22	;,
   4B16 BD 5E 21      [ 8] 3165 	jsr	_RandMax
   4B19 FB C9 6A      [ 5] 3166 	addb	_ml	; D.3581, ml
   4B1C F1 C9 44      [ 5] 3167 	cmpb	_s+1	;cmpqi:	; D.3581, s
   4B1F 25 1F         [ 3] 3168 	blo	L139	;
                           3169 ;----- asm -----
                           3170 ; 1244 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3171 	; #ENR#[860]_fs(, mo[m]);
                           3172 ;--- end asm ---
   4B21 F6 C9 62      [ 5] 3173 	ldb	_m	;, m
   4B24 1D            [ 2] 3174 	sex		;extendqihi2: R:b -> R:d	;,
   4B25 ED E4         [ 5] 3175 	std	,s	;,
   4B27 58            [ 2] 3176 	aslb	;
   4B28 49            [ 2] 3177 	rola	;
   4B29 1F 01         [ 6] 3178 	tfr	d,x	;, tmp272
   4B2B AE 89 01 24   [ 9] 3179 	ldx	_mo,x	;, mo
   4B2F AF E3         [ 8] 3180 	stx	,--s	;,
   4B31 8E 42 76      [ 3] 3181 	ldx	#LC49	;,
   4B34 BD 5B 50      [ 8] 3182 	jsr	__fs
                           3183 ;----- asm -----
                           3184 ; 1246 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3185 	; #ENR#[861]printmessage(stringbuffer40);
                           3186 ;--- end asm ---
   4B37 8E C8 BF      [ 3] 3187 	ldx	#_stringBuffer40	;,
   4B3A BD 5A 71      [ 8] 3188 	jsr	_printMessage
                           3189 ;----- asm -----
                           3190 ; 1248 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3191 	; #ENR#[862]return 1;
                           3192 ;--- end asm ---
   4B3D 16 FC F2      [ 5] 3193 	lbra	L223	;
   4B40                    3194 L139:
                           3195 ;----- asm -----
                           3196 ; 1253 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3197 	; #ENR#[866]printmessage();
                           3198 ;--- end asm ---
   4B40 8E 42 8D      [ 3] 3199 	ldx	#LC50	;,
   4B43 BD 5A 71      [ 8] 3200 	jsr	_printMessage
                           3201 ;----- asm -----
                           3202 ; 1255 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3203 	; #ENR#[867]return 3;
                           3204 ;--- end asm ---
   4B46 16 07 49      [ 5] 3205 	lbra	L166	;
   4B49                    3206 L129:
   4B49 E6 6C         [ 5] 3207 	ldb	12,s	;, spellLevel
   4B4B C1 03         [ 2] 3208 	cmpb	#3	;cmpqi:	;,
   4B4D 10 26 02 1E   [ 6] 3209 	lbne	L140	;
                           3210 ;----- asm -----
                           3211 ; 1261 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3212 	; #ENR#[872]if (spellselect == 0)
                           3213 ;--- end asm ---
   4B51 6D 6D         [ 7] 3214 	tst	13,s	; spellSelect
   4B53 10 26 01 00   [ 6] 3215 	lbne	L141	;
                           3216 ;----- asm -----
                           3217 ; 1266 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3218 	; #ENR#[876]if (incombat)
                           3219 ;--- end asm ---
   4B57 6D 65         [ 7] 3220 	tst	5,s	; inCombat
   4B59 27 09         [ 3] 3221 	beq	L142	;
                           3222 ;----- asm -----
                           3223 ; 1269 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3224 	; #ENR#[878]printmessage();
                           3225 ;--- end asm ---
   4B5B 8E 42 A8      [ 3] 3226 	ldx	#LC51	;,
   4B5E BD 5A 71      [ 8] 3227 	jsr	_printMessage
                           3228 ;----- asm -----
                           3229 ; 1271 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3230 	; #ENR#[879]return 1;
                           3231 ;--- end asm ---
   4B61 16 06 FB      [ 5] 3232 	lbra	L218	;
   4B64                    3233 L142:
                           3234 ;----- asm -----
                           3235 ; 1274 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3236 	; #ENR#[881]printmessage();
                           3237 ;--- end asm ---
   4B64 8E 42 B7      [ 3] 3238 	ldx	#LC52	;,
   4B67 BD 5A 71      [ 8] 3239 	jsr	_printMessage
                           3240 ;----- asm -----
                           3241 ; 1282 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3242 	; #ENR#[888]tmp2 = 0;
                           3243 ;--- end asm ---
   4B6A 7F C8 FF      [ 7] 3244 	clr	_tmp2	; tmp2
                           3245 ;----- asm -----
                           3246 ; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3247 	; #ENR#[889]localtimer = action_time;
                           3248 ;--- end asm ---
   4B6D C6 FA         [ 2] 3249 	ldb	#-6	;,
   4B6F F7 C8 A8      [ 5] 3250 	stb	_localTimer	;, localTimer
                           3251 ;----- asm -----
                           3252 ; 1287 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3253 	; #ENR#[891]while(1)
                           3254 ;--- end asm ---
   4B72                    3255 L156:
                           3256 ;----- asm -----
                           3257 ; 1290 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3258 	; #ENR#[893]displayround();
                           3259 ;--- end asm ---
   4B72 BD 3C BC      [ 8] 3260 	jsr	_displayRound
                           3261 ;----- asm -----
                           3262 ; 1292 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3263 	; #ENR#[894]if (localtimer == 0) tmp2 = -1;
                           3264 ;--- end asm ---
   4B75 7D C8 A8      [ 7] 3265 	tst	_localTimer	; localTimer
   4B78 26 05         [ 3] 3266 	bne	L143	;
   4B7A C6 FF         [ 2] 3267 	ldb	#-1	;,
   4B7C F7 C8 FF      [ 5] 3268 	stb	_tmp2	;, tmp2
   4B7F                    3269 L143:
                           3270 ;----- asm -----
                           3271 ; 1294 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3272 	; #ENR#[895]if (vec_joy_1_x>0)
                           3273 ;--- end asm ---
   4B7F 7D C8 1B      [ 7] 3274 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4B82 2F 24         [ 3] 3275 	ble	L144	;
                           3276 ;----- asm -----
                           3277 ; 1297 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3278 	; #ENR#[897]if (cx==200)
                           3279 ;--- end asm ---
   4B84 F6 C9 38      [ 5] 3280 	ldb	_cx	; cx.65, cx
   4B87 C1 C8         [ 2] 3281 	cmpb	#-56	;cmpqi:	; cx.65,
   4B89 26 09         [ 3] 3282 	bne	L145	;
                           3283 ;----- asm -----
                           3284 ; 1300 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3285 	; #ENR#[899]onlystone:
                           3286 ;--- end asm ---
   4B8B                    3287 L146:
                           3288 ;----- asm -----
                           3289 ; 1302 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3290 	; #ENR#[900]printmessage();
                           3291 ;--- end asm ---
   4B8B 8E 42 C2      [ 3] 3292 	ldx	#LC53	;,
   4B8E BD 5A 71      [ 8] 3293 	jsr	_printMessage
                           3294 ;----- asm -----
                           3295 ; 1304 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3296 	; #ENR#[901]return 1;
                           3297 ;--- end asm ---
   4B91 16 06 CB      [ 5] 3298 	lbra	L218	;
   4B94                    3299 L145:
                           3300 ;----- asm -----
                           3301 ; 1308 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3302 	; #ENR#[904]cx +=1;fillmap=go_east;printmessage();
                           3303 ;--- end asm ---
   4B94 5C            [ 2] 3304 	incb	; cx.65
   4B95 F7 C9 38      [ 5] 3305 	stb	_cx	; cx.65, cx
   4B98 C6 03         [ 2] 3306 	ldb	#3	;,
   4B9A F7 C8 FC      [ 5] 3307 	stb	_fillMap	;, fillMap
   4B9D 8E 42 D5      [ 3] 3308 	ldx	#LC54	;,
   4BA0 BD 5A 71      [ 8] 3309 	jsr	_printMessage
                           3310 ;----- asm -----
                           3311 ; 1310 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3312 	; #ENR#[905]tmp2 = 1;
                           3313 ;--- end asm ---
   4BA3 C6 01         [ 2] 3314 	ldb	#1	;,
   4BA5 F7 C8 FF      [ 5] 3315 	stb	_tmp2	;, tmp2
   4BA8                    3316 L144:
                           3317 ;----- asm -----
                           3318 ; 1314 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3319 	; #ENR#[908]if (vec_joy_1_x<0)
                           3320 ;--- end asm ---
   4BA8 7D C8 1B      [ 7] 3321 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4BAB 2C 1B         [ 3] 3322 	bge	L147	;
                           3323 ;----- asm -----
                           3324 ; 1317 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3325 	; #ENR#[910]if (cx==2) goto onlystone;
                           3326 ;--- end asm ---
   4BAD F6 C9 38      [ 5] 3327 	ldb	_cx	; cx.455, cx
   4BB0 C1 02         [ 2] 3328 	cmpb	#2	;cmpqi:	; cx.455,
   4BB2 27 D7         [ 3] 3329 	beq	L146	;
                           3330 ;----- asm -----
                           3331 ; 1319 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3332 	; #ENR#[911]cx -=1;fillmap=go_west;printmessage();
                           3333 ;--- end asm ---
   4BB4 5A            [ 2] 3334 	decb	; cx.455
   4BB5 F7 C9 38      [ 5] 3335 	stb	_cx	; cx.455, cx
   4BB8 C6 04         [ 2] 3336 	ldb	#4	;,
   4BBA F7 C8 FC      [ 5] 3337 	stb	_fillMap	;, fillMap
   4BBD 8E 42 DA      [ 3] 3338 	ldx	#LC55	;,
   4BC0 BD 5A 71      [ 8] 3339 	jsr	_printMessage
                           3340 ;----- asm -----
                           3341 ; 1321 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3342 	; #ENR#[912]tmp2 = 2;
                           3343 ;--- end asm ---
   4BC3 C6 02         [ 2] 3344 	ldb	#2	;,
   4BC5 F7 C8 FF      [ 5] 3345 	stb	_tmp2	;, tmp2
   4BC8                    3346 L147:
                           3347 ;----- asm -----
                           3348 ; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3349 	; #ENR#[914]if (vec_joy_1_y>0)
                           3350 ;--- end asm ---
   4BC8 7D C8 1C      [ 7] 3351 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   4BCB 2F 1D         [ 3] 3352 	ble	L148	;
                           3353 ;----- asm -----
                           3354 ; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3355 	; #ENR#[916]if (cy==2) goto onlystone;
                           3356 ;--- end asm ---
   4BCD F6 C9 39      [ 5] 3357 	ldb	_cy	; cy.68, cy
   4BD0 C1 02         [ 2] 3358 	cmpb	#2	;cmpqi:	; cy.68,
   4BD2 10 27 FF B5   [ 6] 3359 	lbeq	L146	;
                           3360 ;----- asm -----
                           3361 ; 1329 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3362 	; #ENR#[917]cy -=1;fillmap=go_north;printmessage();
                           3363 ;--- end asm ---
   4BD6 5A            [ 2] 3364 	decb	; cy.68
   4BD7 F7 C9 39      [ 5] 3365 	stb	_cy	; cy.68, cy
   4BDA C6 01         [ 2] 3366 	ldb	#1	;,
   4BDC F7 C8 FC      [ 5] 3367 	stb	_fillMap	;, fillMap
   4BDF 8E 42 DF      [ 3] 3368 	ldx	#LC56	;,
   4BE2 BD 5A 71      [ 8] 3369 	jsr	_printMessage
                           3370 ;----- asm -----
                           3371 ; 1331 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3372 	; #ENR#[918]tmp2 = 3;
                           3373 ;--- end asm ---
   4BE5 C6 03         [ 2] 3374 	ldb	#3	;,
   4BE7 F7 C8 FF      [ 5] 3375 	stb	_tmp2	;, tmp2
   4BEA                    3376 L148:
                           3377 ;----- asm -----
                           3378 ; 1334 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3379 	; #ENR#[920]if (vec_joy_1_y<0)
                           3380 ;--- end asm ---
   4BEA 7D C8 1C      [ 7] 3381 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   4BED 2C 1B         [ 3] 3382 	bge	L149	;
                           3383 ;----- asm -----
                           3384 ; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3385 	; #ENR#[922]if (cy==200)
                           3386 ;--- end asm ---
   4BEF F6 C9 39      [ 5] 3387 	ldb	_cy	;, cy
   4BF2 C1 C8         [ 2] 3388 	cmpb	#-56	;cmpqi:	;,
   4BF4 26 04         [ 3] 3389 	bne	L150	;
   4BF6 5C            [ 2] 3390 	incb	;
   4BF7 F7 C9 39      [ 5] 3391 	stb	_cy	;, cy
   4BFA                    3392 L150:
   4BFA C6 02         [ 2] 3393 	ldb	#2	;,
   4BFC F7 C8 FC      [ 5] 3394 	stb	_fillMap	;, fillMap
   4BFF 8E 42 E5      [ 3] 3395 	ldx	#LC57	;,
   4C02 BD 5A 71      [ 8] 3396 	jsr	_printMessage
                           3397 ;----- asm -----
                           3398 ; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3399 	; #ENR#[924]tmp2 = 4;
                           3400 ;--- end asm ---
   4C05 C6 04         [ 2] 3401 	ldb	#4	;,
   4C07 F7 C8 FF      [ 5] 3402 	stb	_tmp2	;, tmp2
   4C0A                    3403 L149:
                           3404 ;----- asm -----
                           3405 ; 1344 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3406 	; #ENR#[927]if (button_1_4_pressed()) tmp2 = -1;
                           3407 ;--- end asm ---
   4C0A F6 C8 11      [ 5] 3408 	ldb	_Vec_Buttons	;, Vec_Buttons
   4C0D C5 08         [ 2] 3409 	bitb	#8	;,
   4C0F 27 05         [ 3] 3410 	beq	L151	;
   4C11 C6 FF         [ 2] 3411 	ldb	#-1	;,
   4C13 F7 C8 FF      [ 5] 3412 	stb	_tmp2	;, tmp2
   4C16                    3413 L151:
                           3414 ;----- asm -----
                           3415 ; 1346 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3416 	; #ENR#[928]if (button_1_3_pressed()) tmp2 = -1;
                           3417 ;--- end asm ---
   4C16 F6 C8 11      [ 5] 3418 	ldb	_Vec_Buttons	;, Vec_Buttons
   4C19 C5 04         [ 2] 3419 	bitb	#4	;,
   4C1B 27 05         [ 3] 3420 	beq	L152	;
   4C1D C6 FF         [ 2] 3421 	ldb	#-1	;,
   4C1F F7 C8 FF      [ 5] 3422 	stb	_tmp2	;, tmp2
   4C22                    3423 L152:
                           3424 ;----- asm -----
                           3425 ; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3426 	; #ENR#[929]if (button_1_2_pressed()) tmp2 = -1;
                           3427 ;--- end asm ---
   4C22 F6 C8 11      [ 5] 3428 	ldb	_Vec_Buttons	;, Vec_Buttons
   4C25 C5 02         [ 2] 3429 	bitb	#2	;,
   4C27 27 05         [ 3] 3430 	beq	L153	;
   4C29 C6 FF         [ 2] 3431 	ldb	#-1	;,
   4C2B F7 C8 FF      [ 5] 3432 	stb	_tmp2	;, tmp2
   4C2E                    3433 L153:
                           3434 ;----- asm -----
                           3435 ; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3436 	; #ENR#[930]if (button_1_1_pressed()) tmp2 = -1;
                           3437 ;--- end asm ---
   4C2E F6 C8 11      [ 5] 3438 	ldb	_Vec_Buttons	;, Vec_Buttons
   4C31 C5 01         [ 2] 3439 	bitb	#1	;,
   4C33 27 05         [ 3] 3440 	beq	L154	;
   4C35 C6 FF         [ 2] 3441 	ldb	#-1	;,
   4C37 F7 C8 FF      [ 5] 3442 	stb	_tmp2	;, tmp2
   4C3A                    3443 L154:
                           3444 ;----- asm -----
                           3445 ; 1353 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3446 	; #ENR#[932]if (tmp2 != 0) break;
                           3447 ;--- end asm ---
   4C3A F6 C8 FF      [ 5] 3448 	ldb	_tmp2	; tmp2.71, tmp2
   4C3D 26 06         [ 3] 3449 	bne	L155	;
                           3450 ;----- asm -----
                           3451 ; 1355 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3452 	; #ENR#[933]localtimer--;
                           3453 ;--- end asm ---
   4C3F 7A C8 A8      [ 7] 3454 	dec	_localTimer	; localTimer
   4C42 16 FF 2D      [ 5] 3455 	lbra	L156	;
   4C45                    3456 L155:
                           3457 ;----- asm -----
                           3458 ; 1358 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3459 	; #ENR#[935]if (tmp2 == -1)
                           3460 ;--- end asm ---
   4C45 C1 FF         [ 2] 3461 	cmpb	#-1	;cmpqi:	; tmp2.71,
   4C47 26 05         [ 3] 3462 	bne	L157	;
                           3463 ;----- asm -----
                           3464 ; 1361 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3465 	; #ENR#[937]printmessage();
                           3466 ;--- end asm ---
   4C49 8E 42 EB      [ 3] 3467 	ldx	#LC58	;,
   4C4C 20 03         [ 3] 3468 	bra	L216	;
   4C4E                    3469 L157:
                           3470 ;----- asm -----
                           3471 ; 1366 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3472 	; #ENR#[941]printmessage();
                           3473 ;--- end asm ---
   4C4E 8E 42 EF      [ 3] 3474 	ldx	#LC59	;,
   4C51                    3475 L216:
   4C51 BD 5A 71      [ 8] 3476 	jsr	_printMessage
                           3477 ;----- asm -----
                           3478 ; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3479 	; #ENR#[943]return 2;
                           3480 ;--- end asm ---
   4C54 16 05 F8      [ 5] 3481 	lbra	L221	;
   4C57                    3482 L141:
   4C57 E6 6D         [ 5] 3483 	ldb	13,s	;, spellSelect
   4C59 C1 01         [ 2] 3484 	cmpb	#1	;cmpqi:	;,
   4C5B 10 26 00 3A   [ 6] 3485 	lbne	L159	;
                           3486 ;----- asm -----
                           3487 ; 1376 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3488 	; #ENR#[949]printmessage();
                           3489 ;--- end asm ---
   4C5F 8E 42 F4      [ 3] 3490 	ldx	#LC60	;,
   4C62 BD 5A 71      [ 8] 3491 	jsr	_printMessage
                           3492 ;----- asm -----
                           3493 ; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3494 	; #ENR#[952]pause(small_pause);
                           3495 ;--- end asm ---
   4C65 C6 4B         [ 2] 3496 	ldb	#75	;,
   4C67 BD 3D 31      [ 8] 3497 	jsr	_pause
                           3498 ;----- asm -----
                           3499 ; 1382 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3500 	; #ENR#[953]_fs(, mo[m]);
                           3501 ;--- end asm ---
   4C6A F6 C9 62      [ 5] 3502 	ldb	_m	;, m
   4C6D 1D            [ 2] 3503 	sex		;extendqihi2: R:b -> R:d	;,
   4C6E ED E4         [ 5] 3504 	std	,s	;,
   4C70 58            [ 2] 3505 	aslb	;
   4C71 49            [ 2] 3506 	rola	;
   4C72 1F 01         [ 6] 3507 	tfr	d,x	;, tmp285
   4C74 AE 89 01 24   [ 9] 3508 	ldx	_mo,x	;, mo
   4C78 AF E3         [ 8] 3509 	stx	,--s	;,
   4C7A 8E 43 02      [ 3] 3510 	ldx	#LC61	;,
   4C7D BD 5B 50      [ 8] 3511 	jsr	__fs
                           3512 ;----- asm -----
                           3513 ; 1384 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3514 	; #ENR#[954]printmessage(stringbuffer40);
                           3515 ;--- end asm ---
   4C80 8E C8 BF      [ 3] 3516 	ldx	#_stringBuffer40	;,
   4C83 BD 5A 71      [ 8] 3517 	jsr	_printMessage
                           3518 ;----- asm -----
                           3519 ; 1386 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3520 	; #ENR#[955]tmp = (signed int) randmax(12*lv)+15;
                           3521 ;--- end asm ---
   4C86 F6 C9 2F      [ 5] 3522 	ldb	_lv	;, lv
   4C89 86 0C         [ 2] 3523 	lda	#12	;umulqihi3	;
   4C8B 3D            [11] 3524 	mul
                           3525 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   4C8C 1F 01         [ 6] 3526 	tfr	d,x	;, tmp288
                           3527 ; ORG>	tfr	d,x	;, tmp288
                           3528 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp288,
   4C8E BD 5E 21      [ 8] 3529 	jsr	_RandMax
   4C91 CB 0F         [ 2] 3530 	addb	#15	; D.3597,
   4C93 F7 C8 FE      [ 5] 3531 	stb	_tmp	; D.3597, tmp
                           3532 ;----- asm -----
                           3533 ; 1388 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3534 	; #ENR#[956]goto damagespell;
                           3535 ;--- end asm ---
   4C96 16 04 16      [ 5] 3536 	lbra	L217	;
   4C99                    3537 L159:
   4C99 E6 6D         [ 5] 3538 	ldb	13,s	;, spellSelect
   4C9B C1 02         [ 2] 3539 	cmpb	#2	;cmpqi:	;,
   4C9D 26 0D         [ 3] 3540 	bne	L160	;
                           3541 ;----- asm -----
                           3542 ; 1396 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3543 	; #ENR#[963]tmp = (signed int) randmax(32)+10;
                           3544 ;--- end asm ---
   4C9F C6 20         [ 2] 3545 	ldb	#32	;,
   4CA1 BD 5E 21      [ 8] 3546 	jsr	_RandMax
   4CA4 CB 0A         [ 2] 3547 	addb	#10	; D.3600,
   4CA6 F7 C8 FE      [ 5] 3548 	stb	_tmp	; D.3600, tmp
                           3549 ;----- asm -----
                           3550 ; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3551 	; #ENR#[964]goto damagespell;
                           3552 ;--- end asm ---
   4CA9 16 05 B8      [ 5] 3553 	lbra	L103	;
   4CAC                    3554 L160:
   4CAC E6 6D         [ 5] 3555 	ldb	13,s	;, spellSelect
   4CAE C1 03         [ 2] 3556 	cmpb	#3	;cmpqi:	;,
   4CB0 10 26 00 37   [ 6] 3557 	lbne	L161	;
                           3558 ;----- asm -----
                           3559 ; 1405 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3560 	; #ENR#[970]if (!incombat) goto nocombatspell;
                           3561 ;--- end asm ---
   4CB4 6D 65         [ 7] 3562 	tst	5,s	; inCombat
   4CB6 10 27 05 9A   [ 6] 3563 	lbeq	L105	;
                           3564 ;----- asm -----
                           3565 ; 1409 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3566 	; #ENR#[973]if (randmax(10)>6)
                           3567 ;--- end asm ---
   4CBA C6 0A         [ 2] 3568 	ldb	#10	;,
   4CBC BD 5E 21      [ 8] 3569 	jsr	_RandMax
   4CBF C1 06         [ 2] 3570 	cmpb	#6	;cmpqi:	; D.3603,
   4CC1 23 1F         [ 3] 3571 	bls	L162	;
                           3572 ;----- asm -----
                           3573 ; 1412 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3574 	; #ENR#[975]_fs(, mo[m]);
                           3575 ;--- end asm ---
   4CC3 F6 C9 62      [ 5] 3576 	ldb	_m	;, m
   4CC6 1D            [ 2] 3577 	sex		;extendqihi2: R:b -> R:d	;,
   4CC7 ED E4         [ 5] 3578 	std	,s	;,
   4CC9 58            [ 2] 3579 	aslb	;
   4CCA 49            [ 2] 3580 	rola	;
   4CCB 1F 01         [ 6] 3581 	tfr	d,x	;, tmp291
   4CCD AE 89 01 24   [ 9] 3582 	ldx	_mo,x	;, mo
   4CD1 AF E3         [ 8] 3583 	stx	,--s	;,
   4CD3 8E 43 14      [ 3] 3584 	ldx	#LC62	;,
   4CD6 BD 5B 50      [ 8] 3585 	jsr	__fs
                           3586 ;----- asm -----
                           3587 ; 1414 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3588 	; #ENR#[976]printmessage(stringbuffer40);
                           3589 ;--- end asm ---
   4CD9 8E C8 BF      [ 3] 3590 	ldx	#_stringBuffer40	;,
   4CDC BD 5A 71      [ 8] 3591 	jsr	_printMessage
                           3592 ;----- asm -----
                           3593 ; 1416 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3594 	; #ENR#[977]return 1;
                           3595 ;--- end asm ---
   4CDF 16 FB 50      [ 5] 3596 	lbra	L223	;
   4CE2                    3597 L162:
                           3598 ;----- asm -----
                           3599 ; 1419 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3600 	; #ENR#[979]printmessage();
                           3601 ;--- end asm ---
   4CE2 8E 43 2C      [ 3] 3602 	ldx	#LC63	;,
   4CE5 BD 5A 71      [ 8] 3603 	jsr	_printMessage
                           3604 ;----- asm -----
                           3605 ; 1421 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3606 	; #ENR#[980]return 3;
                           3607 ;--- end asm ---
   4CE8 16 04 83      [ 5] 3608 	lbra	L222	;
   4CEB                    3609 L161:
   4CEB E6 6D         [ 5] 3610 	ldb	13,s	;, spellSelect
   4CED C1 04         [ 2] 3611 	cmpb	#4	;cmpqi:	;,
   4CEF 26 0D         [ 3] 3612 	bne	L163	;
                           3613 ;----- asm -----
                           3614 ; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3615 	; #ENR#[986]sf[fear] = randmax(30)+5;
                           3616 ;--- end asm ---
   4CF1 C6 1E         [ 2] 3617 	ldb	#30	;,
   4CF3 BD 5E 21      [ 8] 3618 	jsr	_RandMax
   4CF6 CB 05         [ 2] 3619 	addb	#5	; D.3604,
   4CF8 F7 C9 59      [ 5] 3620 	stb	_sf+6	; D.3604, sf
                           3621 ;----- asm -----
                           3622 ; 1430 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3623 	; #ENR#[987]return 1;
                           3624 ;--- end asm ---
   4CFB 16 05 61      [ 5] 3625 	lbra	L218	;
   4CFE                    3626 L163:
   4CFE E6 6D         [ 5] 3627 	ldb	13,s	;, spellSelect
   4D00 C1 05         [ 2] 3628 	cmpb	#5	;cmpqi:	;,
   4D02 10 26 05 49   [ 6] 3629 	lbne	L116	;
                           3630 ;----- asm -----
                           3631 ; 1437 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3632 	; #ENR#[993]printmessage();
                           3633 ;--- end asm ---
   4D06 8E 43 41      [ 3] 3634 	ldx	#LC64	;,
   4D09 BD 5A 71      [ 8] 3635 	jsr	_printMessage
                           3636 ;----- asm -----
                           3637 ; 1439 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3638 	; #ENR#[994]if (!incombat) goto nocombatspell;
                           3639 ;--- end asm ---
   4D0C 6D 65         [ 7] 3640 	tst	5,s	; inCombat
   4D0E 10 27 05 42   [ 6] 3641 	lbeq	L105	;
                           3642 ;----- asm -----
                           3643 ; 1444 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3644 	; #ENR#[998]if (un != 0)
                           3645 ;--- end asm ---
   4D12 7D C9 69      [ 7] 3646 	tst	_un	; un
   4D15 27 09         [ 3] 3647 	beq	L164	;
                           3648 ;----- asm -----
                           3649 ; 1447 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3650 	; #ENR#[1000]undeadaredead:
                           3651 ;--- end asm ---
   4D17                    3652 L165:
                           3653 ;----- asm -----
                           3654 ; 1449 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3655 	; #ENR#[1001]printmessage();
                           3656 ;--- end asm ---
   4D17 8E 43 4C      [ 3] 3657 	ldx	#LC65	;,
   4D1A BD 5A 71      [ 8] 3658 	jsr	_printMessage
                           3659 ;----- asm -----
                           3660 ; 1451 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3661 	; #ENR#[1002]return 1;
                           3662 ;--- end asm ---
   4D1D 16 05 3F      [ 5] 3663 	lbra	L218	;
   4D20                    3664 L164:
                           3665 ;----- asm -----
                           3666 ; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3667 	; #ENR#[1006]ltmp = 30 + ml*4;
                           3668 ;--- end asm ---
   4D20 F6 C9 6A      [ 5] 3669 	ldb	_ml	; tmp295, ml
   4D23 58            [ 2] 3670 	aslb	; tmp295
   4D24 58            [ 2] 3671 	aslb	; tmp295
   4D25 CB 1E         [ 2] 3672 	addb	#30	; tmp295,
   4D27 4F            [ 2] 3673 	clra		;zero_extendqihi: R:b -> R:d	; tmp295,
   4D28 ED 68         [ 6] 3674 	std	8,s	;, ltmp.75
                           3675 ;----- asm -----
                           3676 ; 1458 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3677 	; #ENR#[1007]ltmp = ltmp - lv*3;
                           3678 ;--- end asm ---
   4D2A F6 C9 2F      [ 5] 3679 	ldb	_lv	; tmp299, lv
   4D2D 58            [ 2] 3680 	aslb	; tmp299
   4D2E FB C9 2F      [ 5] 3681 	addb	_lv	; tmp299, lv
   4D31 4F            [ 2] 3682 	clra		;zero_extendqihi: R:b -> R:d	; tmp299,
   4D32 1F 01         [ 6] 3683 	tfr	d,x	;, tmp301
   4D34 EC 68         [ 6] 3684 	ldd	8,s	;, ltmp.75
   4D36 34 10         [ 6] 3685 	pshs	x	;subhi: R:d -= R:x	; tmp301,
   4D38 A3 E1         [ 9] 3686 	subd	,s++	;
   4D3A FD C9 02      [ 6] 3687 	std	_ltmp	; tmp302, ltmp
                           3688 ;----- asm -----
                           3689 ; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3690 	; #ENR#[1009]pause(small_pause);
                           3691 ;--- end asm ---
   4D3D C6 4B         [ 2] 3692 	ldb	#75	;,
   4D3F BD 3D 31      [ 8] 3693 	jsr	_pause
                           3694 ;----- asm -----
                           3695 ; 1463 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3696 	; #ENR#[1010]if (randmax(100) > (unsigned long int)ltmp)
                           3697 ;--- end asm ---
   4D42 C6 64         [ 2] 3698 	ldb	#100	;,
   4D44 BD 5E 21      [ 8] 3699 	jsr	_RandMax
   4D47 4F            [ 2] 3700 	clra		;zero_extendqihi: R:b -> R:d	; D.3613, D.3613
   4D48 10 B3 C9 02   [ 8] 3701 	cmpd	_ltmp	;cmphi:	; D.3613, ltmp
   4D4C 10 22 05 42   [ 6] 3702 	lbhi	L166	;
                           3703 ;----- asm -----
                           3704 ; 1468 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3705 	; #ENR#[1014]_fs(, mo[m]);
                           3706 ;--- end asm ---
   4D50 F6 C9 62      [ 5] 3707 	ldb	_m	;, m
   4D53 1D            [ 2] 3708 	sex		;extendqihi2: R:b -> R:d	;,
   4D54 ED E4         [ 5] 3709 	std	,s	;,
   4D56 58            [ 2] 3710 	aslb	;
   4D57 49            [ 2] 3711 	rola	;
   4D58 1F 01         [ 6] 3712 	tfr	d,x	;, tmp306
   4D5A AE 89 01 24   [ 9] 3713 	ldx	_mo,x	;, mo
   4D5E AF E3         [ 8] 3714 	stx	,--s	;,
   4D60 8E 43 66      [ 3] 3715 	ldx	#LC66	;,
   4D63 BD 5B 50      [ 8] 3716 	jsr	__fs
                           3717 ;----- asm -----
                           3718 ; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3719 	; #ENR#[1015]printmessage(stringbuffer40);
                           3720 ;--- end asm ---
   4D66 8E C8 BF      [ 3] 3721 	ldx	#_stringBuffer40	;,
   4D69 BD 5A 71      [ 8] 3722 	jsr	_printMessage
                           3723 ;----- asm -----
                           3724 ; 1472 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3725 	; #ENR#[1016]return 1;
                           3726 ;--- end asm ---
   4D6C 16 FA C3      [ 5] 3727 	lbra	L223	;
   4D6F                    3728 L140:
   4D6F E6 6C         [ 5] 3729 	ldb	12,s	;, spellLevel
   4D71 C1 04         [ 2] 3730 	cmpb	#4	;cmpqi:	;,
   4D73 10 26 03 A1   [ 6] 3731 	lbne	L167	;
                           3732 ;----- asm -----
                           3733 ; 1478 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3734 	; #ENR#[1021]if (spellselect == 0)
                           3735 ;--- end asm ---
   4D77 6D 6D         [ 7] 3736 	tst	13,s	; spellSelect
   4D79 10 26 02 4A   [ 6] 3737 	lbne	L168	;
                           3738 ;----- asm -----
                           3739 ; 1481 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3740 	; #ENR#[1023]signed long int ns;
                           3741 ; 1483 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3742 	; #ENR#[1024]signed long int ew;
                           3743 ; 1485 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3744 	; #ENR#[1025]signed long int upd;
                           3745 ; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3746 	; #ENR#[1026]signed int sel;
                           3747 ; 1491 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3748 	; #ENR#[1029]if (incombat)
                           3749 ;--- end asm ---
   4D7D 6D 65         [ 7] 3750 	tst	5,s	; inCombat
   4D7F 27 09         [ 3] 3751 	beq	L169	;
                           3752 ;----- asm -----
                           3753 ; 1494 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3754 	; #ENR#[1031]printmessage();
                           3755 ;--- end asm ---
   4D81 8E 42 A8      [ 3] 3756 	ldx	#LC51	;,
   4D84 BD 5A 71      [ 8] 3757 	jsr	_printMessage
                           3758 ;----- asm -----
                           3759 ; 1496 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3760 	; #ENR#[1032]return 1;
                           3761 ;--- end asm ---
   4D87 16 04 D5      [ 5] 3762 	lbra	L218	;
   4D8A                    3763 L169:
                           3764 ;----- asm -----
                           3765 ; 1500 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3766 	; #ENR#[1035]clearmessage();
                           3767 ;--- end asm ---
   4D8A 7F C9 C2      [ 7] 3768 	clr	_msgLine	; msgLine
                           3769 ;----- asm -----
                           3770 ; 1502 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3771 	; #ENR#[1036]printmessage();
                           3772 ;--- end asm ---
   4D8D 8E 43 74      [ 3] 3773 	ldx	#LC67	;,
   4D90 BD 5A 71      [ 8] 3774 	jsr	_printMessage
                           3775 ;----- asm -----
                           3776 ; 1506 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3777 	; #ENR#[1039]teleportagain:
                           3778 ;--- end asm ---
   4D93                    3779 L170:
                           3780 ;----- asm -----
                           3781 ; 1508 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3782 	; #ENR#[1040]ns = ew = upd = sel = 0;
                           3783 ; 1510 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3784 	; #ENR#[1041]do
                           3785 ;--- end asm ---
   4D93 10 8E 00 00   [ 4] 3786 	ldy	#0	; ns,
   4D97 10 AF E8 10   [ 7] 3787 	sty	16,s	; ns, ew
   4D9B 10 AF E8 12   [ 7] 3788 	sty	18,s	; ns, upd
   4D9F 6F E8 14      [ 7] 3789 	clr	20,s	; sel
   4DA2                    3790 L183:
                           3791 ;----- asm -----
                           3792 ; 1513 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3793 	; #ENR#[1043]do_sound();
                           3794 ;--- end asm ---
   4DA2 BD 70 3C      [ 8] 3795 	jsr	__Do_Sound
                           3796 ;----- asm -----
                           3797 ; 1515 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3798 	; #ENR#[1044]joy_digital();
                           3799 ;--- end asm ---
   4DA5 BD F1 F8      [ 8] 3800 	jsr	___Joy_Digital
                           3801 ;----- asm -----
                           3802 ; 1517 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3803 	; #ENR#[1045]check_buttons();
                           3804 ;--- end asm ---
   4DA8 BD F1 BA      [ 8] 3805 	jsr	___Read_Btns
                           3806 ;----- asm -----
                           3807 ; 1519 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3808 	; #ENR#[1046]wait_recal();
                           3809 ;--- end asm ---
   4DAB BD F1 92      [ 8] 3810 	jsr	___Wait_Recal
                           3811 ;----- asm -----
                           3812 ; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3813 	; #ENR#[1047]intensity_5f();
                           3814 ;--- end asm ---
   4DAE BD F2 A5      [ 8] 3815 	jsr	___Intensity_5F
                           3816 ;----- asm -----
                           3817 ; 1523 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3818 	; #ENR#[1048]dp_via_t1_cnt_lo  = 0x7f;
                           3819 ;--- end asm ---
   4DB1 C6 7F         [ 2] 3820 	ldb	#127	;,
   4DB3 D7 04         [ 4] 3821 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3822 ;----- asm -----
                           3823 ; 1526 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3824 	; #ENR#[1050]print_str_d(0x78,-0x20, );
                           3825 ;--- end asm ---
   4DB5 C6 78         [ 2] 3826 	ldb	#120	;,
   4DB7 E7 E2         [ 6] 3827 	stb	,-s	;,
   4DB9 8E 43 82      [ 3] 3828 	ldx	#LC68	;,
   4DBC C6 E0         [ 2] 3829 	ldb	#-32	;,
   4DBE BD 58 75      [ 8] 3830 	jsr	_syncPrintStrd
                           3831 ;----- asm -----
                           3832 ; 1528 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3833 	; #ENR#[1051]print_str_d(-0x40,-0x40, );
                           3834 ;--- end asm ---
   4DC1 C6 C0         [ 2] 3835 	ldb	#-64	;,
   4DC3 E7 E2         [ 6] 3836 	stb	,-s	;,
   4DC5 8E 43 8D      [ 3] 3837 	ldx	#LC69	;,
   4DC8 BD 58 75      [ 8] 3838 	jsr	_syncPrintStrd
                           3839 ;----- asm -----
                           3840 ; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3841 	; #ENR#[1053]_fi_s_s(, (signed int) ns);
                           3842 ;--- end asm ---
   4DCB 1F 20         [ 6] 3843 	tfr	y,d	;movlsbqihi: R:y -> R:b	; ns,
   4DCD 8E 43 9F      [ 3] 3844 	ldx	#LC70	;,
   4DD0 BD 67 F5      [ 8] 3845 	jsr	__fi_s_s
                           3846 ;----- asm -----
                           3847 ; 1533 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3848 	; #ENR#[1054]print_str_d(0x50,-0x50, stringbuffer40);
                           3849 ;--- end asm ---
   4DD3 C6 50         [ 2] 3850 	ldb	#80	;,
   4DD5 E7 E2         [ 6] 3851 	stb	,-s	;,
   4DD7 8E C8 BF      [ 3] 3852 	ldx	#_stringBuffer40	;,
   4DDA C6 B0         [ 2] 3853 	ldb	#-80	;,
   4DDC BD 58 75      [ 8] 3854 	jsr	_syncPrintStrd
                           3855 ;----- asm -----
                           3856 ; 1535 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3857 	; #ENR#[1055]_fi_s_s(, (signed int) ew);
                           3858 ;--- end asm ---
   4DDF E6 E8 14      [ 5] 3859 	ldb	20,s	;movlsbqihi: msb:19,s -> R:b	;, ew
   4DE2 8E 43 B2      [ 3] 3860 	ldx	#LC71	;,
   4DE5 BD 67 F5      [ 8] 3861 	jsr	__fi_s_s
                           3862 ;----- asm -----
                           3863 ; 1537 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3864 	; #ENR#[1056]print_str_d(0x30,-0x50, stringbuffer40);
                           3865 ;--- end asm ---
   4DE8 C6 30         [ 2] 3866 	ldb	#48	;,
   4DEA E7 E2         [ 6] 3867 	stb	,-s	;,
   4DEC 8E C8 BF      [ 3] 3868 	ldx	#_stringBuffer40	;,
   4DEF C6 B0         [ 2] 3869 	ldb	#-80	;,
   4DF1 BD 58 75      [ 8] 3870 	jsr	_syncPrintStrd
                           3871 ;----- asm -----
                           3872 ; 1539 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3873 	; #ENR#[1057]_fi_s_s(, (signed int) upd);
                           3874 ;--- end asm ---
   4DF4 E6 E8 17      [ 5] 3875 	ldb	23,s	;movlsbqihi: msb:22,s -> R:b	;, upd
   4DF7 8E 43 C5      [ 3] 3876 	ldx	#LC72	;,
   4DFA BD 67 F5      [ 8] 3877 	jsr	__fi_s_s
                           3878 ;----- asm -----
                           3879 ; 1541 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3880 	; #ENR#[1058]print_str_d(0x10,-0x50, stringbuffer40);
                           3881 ;--- end asm ---
   4DFD C6 10         [ 2] 3882 	ldb	#16	;,
   4DFF E7 E2         [ 6] 3883 	stb	,-s	;,
   4E01 8E C8 BF      [ 3] 3884 	ldx	#_stringBuffer40	;,
   4E04 C6 B0         [ 2] 3885 	ldb	#-80	;,
   4E06 BD 58 75      [ 8] 3886 	jsr	_syncPrintStrd
                           3887 ;----- asm -----
                           3888 ; 1543 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3889 	; #ENR#[1059]if (sel == 0)
                           3890 ;--- end asm ---
   4E09 32 65         [ 5] 3891 	leas	5,s	;,,
   4E0B 6D E8 14      [ 7] 3892 	tst	20,s	; sel
   4E0E 26 23         [ 3] 3893 	bne	L171	;
                           3894 ;----- asm -----
                           3895 ; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3896 	; #ENR#[1061]print_str_d(0x50,-0x65, );
                           3897 ;--- end asm ---
   4E10 C6 50         [ 2] 3898 	ldb	#80	;,
   4E12 E7 E2         [ 6] 3899 	stb	,-s	;,
   4E14 8E 39 00      [ 3] 3900 	ldx	#LC14	;,
   4E17 C6 9B         [ 2] 3901 	ldb	#-101	;,
   4E19 BD 58 75      [ 8] 3902 	jsr	_syncPrintStrd
                           3903 ;----- asm -----
                           3904 ; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3905 	; #ENR#[1062]if ((vec_joy_1_x > 0) && (!lastdir)) ns+=1;
                           3906 ;--- end asm ---
   4E1C F6 C8 1B      [ 5] 3907 	ldb	_Vec_Joy_1_X	; Vec_Joy_1_X.470, Vec_Joy_1_X
   4E1F 32 61         [ 5] 3908 	leas	1,s	;,,
   4E21 5D            [ 2] 3909 	tstb	; Vec_Joy_1_X.470
   4E22 2F 06         [ 3] 3910 	ble	L172	;
   4E24 6D 6F         [ 7] 3911 	tst	15,s	; lastDir
   4E26 26 02         [ 3] 3912 	bne	L172	;
   4E28 31 21         [ 5] 3913 	leay	1,y	; ns,, ns
   4E2A                    3914 L172:
                           3915 ;----- asm -----
                           3916 ; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3917 	; #ENR#[1063]if ((vec_joy_1_x < 0) && (!lastdir)) ns-=1;
                           3918 ;--- end asm ---
   4E2A 5D            [ 2] 3919 	tstb	; Vec_Joy_1_X.470
   4E2B 2C 06         [ 3] 3920 	bge	L171	;
   4E2D 6D 6F         [ 7] 3921 	tst	15,s	; lastDir
   4E2F 26 02         [ 3] 3922 	bne	L171	;
   4E31 31 3F         [ 5] 3923 	leay	-1,y	; ns,, ns
   4E33                    3924 L171:
                           3925 ;----- asm -----
                           3926 ; 1553 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3927 	; #ENR#[1065]if (sel == 1)
                           3928 ;--- end asm ---
   4E33 E6 E8 14      [ 5] 3929 	ldb	20,s	;, sel
   4E36 C1 01         [ 2] 3930 	cmpb	#1	;cmpqi:	;,
   4E38 26 34         [ 3] 3931 	bne	L173	;
                           3932 ;----- asm -----
                           3933 ; 1556 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3934 	; #ENR#[1067]print_str_d(0x30,-0x65, );
                           3935 ;--- end asm ---
   4E3A C6 30         [ 2] 3936 	ldb	#48	;,
   4E3C E7 E2         [ 6] 3937 	stb	,-s	;,
   4E3E 8E 39 00      [ 3] 3938 	ldx	#LC14	;,
   4E41 C6 9B         [ 2] 3939 	ldb	#-101	;,
   4E43 BD 58 75      [ 8] 3940 	jsr	_syncPrintStrd
                           3941 ;----- asm -----
                           3942 ; 1558 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3943 	; #ENR#[1068]if ((vec_joy_1_x > 0) && (!lastdir)) ew+=1;
                           3944 ;--- end asm ---
   4E46 F6 C8 1B      [ 5] 3945 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   4E49 E7 63         [ 5] 3946 	stb	3,s	;, Vec_Joy_1_X.471
   4E4B 32 61         [ 5] 3947 	leas	1,s	;,,
   4E4D 5D            [ 2] 3948 	tstb	;
   4E4E 2F 0D         [ 3] 3949 	ble	L174	;
   4E50 6D 6F         [ 7] 3950 	tst	15,s	; lastDir
   4E52 26 09         [ 3] 3951 	bne	L174	;
   4E54 EC E8 10      [ 6] 3952 	ldd	16,s	;, ew
   4E57 C3 00 01      [ 4] 3953 	addd	#1; addhi3,3	;,
   4E5A ED E8 10      [ 6] 3954 	std	16,s	;, ew
   4E5D                    3955 L174:
                           3956 ;----- asm -----
                           3957 ; 1560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3958 	; #ENR#[1069]if ((vec_joy_1_x < 0) && (!lastdir)) ew-=1;
                           3959 ;--- end asm ---
   4E5D 6D 62         [ 7] 3960 	tst	2,s	; Vec_Joy_1_X.471
   4E5F 2C 0D         [ 3] 3961 	bge	L173	;
   4E61 6D 6F         [ 7] 3962 	tst	15,s	; lastDir
   4E63 26 09         [ 3] 3963 	bne	L173	;
   4E65 EC E8 10      [ 6] 3964 	ldd	16,s	;, ew
   4E68 C3 FF FF      [ 4] 3965 	addd	#-1; addhi3,3	;,
   4E6B ED E8 10      [ 6] 3966 	std	16,s	;, ew
   4E6E                    3967 L173:
                           3968 ;----- asm -----
                           3969 ; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3970 	; #ENR#[1071]if (sel == 2)
                           3971 ;--- end asm ---
   4E6E E6 E8 14      [ 5] 3972 	ldb	20,s	;, sel
   4E71 C1 02         [ 2] 3973 	cmpb	#2	;cmpqi:	;,
   4E73 26 34         [ 3] 3974 	bne	L175	;
                           3975 ;----- asm -----
                           3976 ; 1566 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3977 	; #ENR#[1073]print_str_d(0x10,-0x65, );
                           3978 ;--- end asm ---
   4E75 C6 10         [ 2] 3979 	ldb	#16	;,
   4E77 E7 E2         [ 6] 3980 	stb	,-s	;,
   4E79 8E 39 00      [ 3] 3981 	ldx	#LC14	;,
   4E7C C6 9B         [ 2] 3982 	ldb	#-101	;,
   4E7E BD 58 75      [ 8] 3983 	jsr	_syncPrintStrd
                           3984 ;----- asm -----
                           3985 ; 1568 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           3986 	; #ENR#[1074]if ((vec_joy_1_x > 0) && (!lastdir)) upd+=1;
                           3987 ;--- end asm ---
   4E81 F6 C8 1B      [ 5] 3988 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   4E84 E7 63         [ 5] 3989 	stb	3,s	;, Vec_Joy_1_X.472
   4E86 32 61         [ 5] 3990 	leas	1,s	;,,
   4E88 5D            [ 2] 3991 	tstb	;
   4E89 2F 0D         [ 3] 3992 	ble	L176	;
   4E8B 6D 6F         [ 7] 3993 	tst	15,s	; lastDir
   4E8D 26 09         [ 3] 3994 	bne	L176	;
   4E8F EC E8 12      [ 6] 3995 	ldd	18,s	;, upd
   4E92 C3 00 01      [ 4] 3996 	addd	#1; addhi3,3	;,
   4E95 ED E8 12      [ 6] 3997 	std	18,s	;, upd
   4E98                    3998 L176:
                           3999 ;----- asm -----
                           4000 ; 1570 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4001 	; #ENR#[1075]if ((vec_joy_1_x < 0) && (!lastdir)) upd-=1;
                           4002 ;--- end asm ---
   4E98 6D 62         [ 7] 4003 	tst	2,s	; Vec_Joy_1_X.472
   4E9A 2C 0D         [ 3] 4004 	bge	L175	;
   4E9C 6D 6F         [ 7] 4005 	tst	15,s	; lastDir
   4E9E 26 09         [ 3] 4006 	bne	L175	;
   4EA0 EC E8 12      [ 6] 4007 	ldd	18,s	;, upd
   4EA3 C3 FF FF      [ 4] 4008 	addd	#-1; addhi3,3	;,
   4EA6 ED E8 12      [ 6] 4009 	std	18,s	;, upd
   4EA9                    4010 L175:
                           4011 ;----- asm -----
                           4012 ; 1573 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4013 	; #ENR#[1077]if ((vec_joy_1_y > 0) && (!lastdir))
                           4014 ;--- end asm ---
   4EA9 F6 C8 1C      [ 5] 4015 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   4EAC E7 62         [ 5] 4016 	stb	2,s	;, Vec_Joy_1_Y.473
   4EAE 2F 0C         [ 3] 4017 	ble	L177	;
   4EB0 6D 6F         [ 7] 4018 	tst	15,s	; lastDir
   4EB2 26 08         [ 3] 4019 	bne	L177	;
   4EB4 6D E8 14      [ 7] 4020 	tst	20,s	; sel
   4EB7 27 03         [ 3] 4021 	beq	L177	;
   4EB9 6A E8 14      [ 7] 4022 	dec	20,s	; sel
   4EBC                    4023 L177:
                           4024 ;----- asm -----
                           4025 ; 1576 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4026 	; #ENR#[1079]if ((vec_joy_1_y < 0) && (!lastdir))
                           4027 ;--- end asm ---
   4EBC 6D 62         [ 7] 4028 	tst	2,s	; Vec_Joy_1_Y.473
   4EBE 2C 0F         [ 3] 4029 	bge	L178	;
   4EC0 6D 6F         [ 7] 4030 	tst	15,s	; lastDir
   4EC2 26 0B         [ 3] 4031 	bne	L178	;
   4EC4 E6 E8 14      [ 5] 4032 	ldb	20,s	;, sel
   4EC7 C1 01         [ 2] 4033 	cmpb	#1	;cmpqi:	;,
   4EC9 2E 04         [ 3] 4034 	bgt	L178	;
   4ECB 5C            [ 2] 4035 	incb	;
   4ECC E7 E8 14      [ 5] 4036 	stb	20,s	;, sel
   4ECF                    4037 L178:
                           4038 ;----- asm -----
                           4039 ; 1579 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4040 	; #ENR#[1081]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           4041 ;--- end asm ---
   4ECF C6 01         [ 2] 4042 	ldb	#1	;,
   4ED1 E7 6F         [ 5] 4043 	stb	15,s	;, lastDir
   4ED3 7D C8 1B      [ 7] 4044 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   4ED6 26 08         [ 3] 4045 	bne	L180	;
   4ED8 E6 62         [ 5] 4046 	ldb	2,s	; Vec_Joy_1_Y.473, Vec_Joy_1_Y.473
   4EDA 27 02         [ 3] 4047 	beq	L181	;
   4EDC C6 01         [ 2] 4048 	ldb	#1	; Vec_Joy_1_Y.473,
   4EDE                    4049 L181:
   4EDE E7 6F         [ 5] 4050 	stb	15,s	; Vec_Joy_1_Y.473, lastDir
   4EE0                    4051 L180:
                           4052 ;----- asm -----
                           4053 ; 1582 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4054 	; #ENR#[1083]if (buttons_pressed()) break;
                           4055 ;--- end asm ---
   4EE0 7D C8 11      [ 7] 4056 	tst	_Vec_Buttons	; Vec_Buttons
   4EE3 26 03         [ 3] 4057 	bne	L182	;
                           4058 ;----- asm -----
                           4059 ; 1584 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4060 	; #ENR#[1085]while (1);
                           4061 ;--- end asm ---
   4EE5 16 FE BA      [ 5] 4062 	lbra	L183	;
   4EE8                    4063 L182:
   4EE8 EE E8 10      [ 6] 4064 	ldu	16,s	; ew.501, ew
   4EEB AE E8 12      [ 6] 4065 	ldx	18,s	;, upd
   4EEE AF E8 17      [ 6] 4066 	stx	23,s	;, upd.502
                           4067 ;----- asm -----
                           4068 ; 1590 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4069 	; #ENR#[1089]if ((abs(ns)>lv*5) || (abs(ew)>lv*5) ||(abs(upd)>lv*5) )
                           4070 ;--- end asm ---
   4EF1 F6 C9 2F      [ 5] 4071 	ldb	_lv	; tmp312, lv
   4EF4 58            [ 2] 4072 	aslb	; tmp312
   4EF5 58            [ 2] 4073 	aslb	; tmp312
   4EF6 FB C9 2F      [ 5] 4074 	addb	_lv	; tmp312, lv
   4EF9 4F            [ 2] 4075 	clra		;zero_extendqihi: R:b -> R:d	; tmp312,
   4EFA ED E4         [ 5] 4076 	std	,s	;, D.3628
   4EFC 30 A4         [ 4] 4077 	leax	,y	; ns.476, ns
   4EFE 10 8C 00 00   [ 5] 4078 	cmpy	#0	; ns
   4F02 2C 08         [ 3] 4079 	bge	L185	;
   4F04 1F 20         [ 6] 4080 	tfr	y,d	; ns,
   4F06 40            [ 2] 4081 	nega
   4F07 50            [ 2] 4082 	negb
   4F08 82 00         [ 2] 4083 	sbca	#0
   4F0A 1F 01         [ 6] 4084 	tfr	d,x	;, ns.476
   4F0C                    4085 L185:
   4F0C AC E4         [ 6] 4086 	cmpx	,s	;cmphi:	; ns.476, D.3628
   4F0E 2E 25         [ 3] 4087 	bgt	L184	;
   4F10 30 C4         [ 4] 4088 	leax	,u	; ew.501, ew.501
   4F12 11 83 00 00   [ 5] 4089 	cmpu	#0	; ew.501
   4F16 2C 08         [ 3] 4090 	bge	L186	;
   4F18 1E 01         [ 8] 4091 	exg	d,x	; ew.501
   4F1A 40            [ 2] 4092 	nega
   4F1B 50            [ 2] 4093 	negb
   4F1C 82 00         [ 2] 4094 	sbca	#0
   4F1E 1E 01         [ 8] 4095 	exg	d,x	; ew.501
   4F20                    4096 L186:
   4F20 AC E4         [ 6] 4097 	cmpx	,s	;cmphi:	; ew.501, D.3628
   4F22 2E 11         [ 3] 4098 	bgt	L184	;
   4F24 AE E8 17      [ 6] 4099 	ldx	23,s	; upd.502, upd.502
   4F27 2C 08         [ 3] 4100 	bge	L188	;
   4F29 1E 01         [ 8] 4101 	exg	d,x	; upd.502
   4F2B 40            [ 2] 4102 	nega
   4F2C 50            [ 2] 4103 	negb
   4F2D 82 00         [ 2] 4104 	sbca	#0
   4F2F 1E 01         [ 8] 4105 	exg	d,x	; upd.502
   4F31                    4106 L188:
   4F31 AC E4         [ 6] 4107 	cmpx	,s	;cmphi:	; upd.502, D.3628
   4F33 2F 0E         [ 3] 4108 	ble	L187	;
   4F35                    4109 L184:
                           4110 ;----- asm -----
                           4111 ; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4112 	; #ENR#[1091]printmessage();
                           4113 ;--- end asm ---
   4F35 8E 43 D8      [ 3] 4114 	ldx	#LC73	;,
   4F38 BD 5A 71      [ 8] 4115 	jsr	_printMessage
                           4116 ;----- asm -----
                           4117 ; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4118 	; #ENR#[1092]pause(small_pause);
                           4119 ;--- end asm ---
   4F3B C6 4B         [ 2] 4120 	ldb	#75	;,
   4F3D BD 3D 31      [ 8] 4121 	jsr	_pause
                           4122 ;----- asm -----
                           4123 ; 1597 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4124 	; #ENR#[1093]goto teleportagain;
                           4125 ;--- end asm ---
   4F40 16 FE 50      [ 5] 4126 	lbra	L170	;
   4F43                    4127 L187:
                           4128 ;----- asm -----
                           4129 ; 1604 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4130 	; #ENR#[1099]ew += cx;
                           4131 ;--- end asm ---
   4F43 F6 C9 38      [ 5] 4132 	ldb	_cx	;, cx
   4F46 4F            [ 2] 4133 	clra		;zero_extendqihi: R:b -> R:d	;,
   4F47 ED E4         [ 5] 4134 	std	,s	;,
   4F49 E3 E8 10      [ 7] 4135 	addd	16,s; addhi3,3	;, ew
   4F4C ED E8 15      [ 6] 4136 	std	21,s	;, ew.478
                           4137 ;----- asm -----
                           4138 ; 1606 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4139 	; #ENR#[1100]ns += cy;
                           4140 ;--- end asm ---
   4F4F F6 C9 39      [ 5] 4141 	ldb	_cy	;, cy
   4F52 E7 62         [ 5] 4142 	stb	2,s	;, cy.479
                           4143 ;----- asm -----
                           4144 ; 1608 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4145 	; #ENR#[1101]upd += cz;
                           4146 ;--- end asm ---
   4F54 F6 C9 3A      [ 5] 4147 	ldb	_cz	;, cz
   4F57 E7 6A         [ 5] 4148 	stb	10,s	;, cz.80
                           4149 ;----- asm -----
                           4150 ; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4151 	; #ENR#[1102]if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
                           4152 ;--- end asm ---
   4F59 EE E8 15      [ 6] 4153 	ldu	21,s	;, ew.478
   4F5C 30 5F         [ 5] 4154 	leax	-1,u	; tmp318,,
   4F5E 8C 00 C7      [ 4] 4155 	cmpx	#199	;cmphi:	; tmp318,
   4F61 22 23         [ 3] 4156 	bhi	L189	;
   4F63 E6 62         [ 5] 4157 	ldb	2,s	;, cy.479
   4F65 4F            [ 2] 4158 	clra		;zero_extendqihi: R:b -> R:d	;,
   4F66 ED E4         [ 5] 4159 	std	,s	;,
   4F68 31 AB         [ 8] 4160 	leay	d,y	; ns.480,, ns
   4F6A 10 8C 00 00   [ 5] 4161 	cmpy	#0	; ns.480
   4F6E 2F 16         [ 3] 4162 	ble	L189	;
   4F70 10 8C 00 C8   [ 5] 4163 	cmpy	#200	;cmphi:	; ns.480,
   4F74 2E 10         [ 3] 4164 	bgt	L189	;
   4F76 E6 6A         [ 5] 4165 	ldb	10,s	;, cz.80
   4F78 4F            [ 2] 4166 	clra		;zero_extendqihi: R:b -> R:d	;,
   4F79 ED E4         [ 5] 4167 	std	,s	;,
   4F7B AE E8 12      [ 6] 4168 	ldx	18,s	; upd.481, upd
   4F7E 30 8B         [ 8] 4169 	leax	d,x	; upd.481,, upd.481
   4F80 1F 10         [ 6] 4170 	tfr	x,d	;movlsbqihi: R:x -> R:b	; upd.481, temp.482
   4F82 C1 32         [ 2] 4171 	cmpb	#50	;cmpqi:	; temp.482,
   4F84 2F 0F         [ 3] 4172 	ble	L190	;
   4F86                    4173 L189:
                           4174 ;----- asm -----
                           4175 ; 1614 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4176 	; #ENR#[1105]printmessage();
                           4177 ;--- end asm ---
   4F86 8E 43 EB      [ 3] 4178 	ldx	#LC74	;,
   4F89 BD 5A 71      [ 8] 4179 	jsr	_printMessage
                           4180 ;----- asm -----
                           4181 ; 1616 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4182 	; #ENR#[1106]printmessage();
                           4183 ;--- end asm ---
   4F8C 8E 43 FF      [ 3] 4184 	ldx	#LC75	;,
   4F8F BD 5A 71      [ 8] 4185 	jsr	_printMessage
                           4186 ;----- asm -----
                           4187 ; 1618 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4188 	; #ENR#[1107]return 1;
                           4189 ;--- end asm ---
   4F92 16 02 CA      [ 5] 4190 	lbra	L218	;
   4F95                    4191 L190:
                           4192 ;----- asm -----
                           4193 ; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4194 	; #ENR#[1109]if ((signed int) upd<1)
                           4195 ;--- end asm ---
   4F95 1F 10         [ 6] 4196 	tfr	x,d	; upd.481,
   4F97 5D            [ 2] 4197 	tstb	;
   4F98 2E 0F         [ 3] 4198 	bgt	L191	;
                           4199 ;----- asm -----
                           4200 ; 1624 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4201 	; #ENR#[1111]printmessage();
                           4202 ;--- end asm ---
   4F9A 8E 44 12      [ 3] 4203 	ldx	#LC76	;,
   4F9D BD 5A 71      [ 8] 4204 	jsr	_printMessage
                           4205 ;----- asm -----
                           4206 ; 1626 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4207 	; #ENR#[1112]printmessage();
                           4208 ;--- end asm ---
   4FA0 8E 43 FF      [ 3] 4209 	ldx	#LC75	;,
   4FA3 BD 5A 71      [ 8] 4210 	jsr	_printMessage
                           4211 ;----- asm -----
                           4212 ; 1628 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4213 	; #ENR#[1113]return 1;
                           4214 ;--- end asm ---
   4FA6 16 02 B6      [ 5] 4215 	lbra	L218	;
   4FA9                    4216 L191:
                           4217 ;----- asm -----
                           4218 ; 1632 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4219 	; #ENR#[1116]cx = (unsigned char)ew;
                           4220 ;--- end asm ---
   4FA9 EC E8 15      [ 6] 4221 	ldd	21,s	;, ew.478
   4FAC F7 C9 38      [ 5] 4222 	stb	_cx	;movlsbqihi: R:d -> _cx	; cx,
                           4223 ;----- asm -----
                           4224 ; 1634 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4225 	; #ENR#[1117]cy = (unsigned char)ns;
                           4226 ;--- end asm ---
   4FAF 1F 20         [ 6] 4227 	tfr	y,d	; ns.480,
   4FB1 F7 C9 39      [ 5] 4228 	stb	_cy	;movlsbqihi: R:d -> _cy	; cy,
                           4229 ;----- asm -----
                           4230 ; 1636 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4231 	; #ENR#[1118]cz = (unsigned char)upd;
                           4232 ;--- end asm ---
   4FB4 1F 10         [ 6] 4233 	tfr	x,d	; upd.481,
   4FB6 F7 C9 3A      [ 5] 4234 	stb	_cz	;movlsbqihi: R:d -> _cz	; cz,
                           4235 ;----- asm -----
                           4236 ; 1638 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4237 	; #ENR#[1119]printmessage();
                           4238 ;--- end asm ---
   4FB9 8E 44 23      [ 3] 4239 	ldx	#LC77	;,
   4FBC BD 5A 71      [ 8] 4240 	jsr	_printMessage
                           4241 ;----- asm -----
                           4242 ; 1640 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4243 	; #ENR#[1120]fillmap = go_redraw;
                           4244 ;--- end asm ---
   4FBF C6 7F         [ 2] 4245 	ldb	#127	;,
   4FC1 F7 C8 FC      [ 5] 4246 	stb	_fillMap	;, fillMap
                           4247 ;----- asm -----
                           4248 ; 1642 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4249 	; #ENR#[1121]return 2;
                           4250 ;--- end asm ---
   4FC4 16 02 88      [ 5] 4251 	lbra	L221	;
   4FC7                    4252 L168:
   4FC7 E6 6D         [ 5] 4253 	ldb	13,s	;, spellSelect
   4FC9 C1 01         [ 2] 4254 	cmpb	#1	;cmpqi:	;,
   4FCB 26 0D         [ 3] 4255 	bne	L192	;
                           4256 ;----- asm -----
                           4257 ; 1649 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4258 	; #ENR#[1127]sf[astral_walk] = randmax(16)+5;
                           4259 ;--- end asm ---
   4FCD C6 10         [ 2] 4260 	ldb	#16	;,
   4FCF BD 5E 21      [ 8] 4261 	jsr	_RandMax
   4FD2 CB 05         [ 2] 4262 	addb	#5	; D.3642,
   4FD4 F7 C9 5A      [ 5] 4263 	stb	_sf+7	; D.3642, sf
                           4264 ;----- asm -----
                           4265 ; 1651 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4266 	; #ENR#[1128]return 1;
                           4267 ;--- end asm ---
   4FD7 16 01 94      [ 5] 4268 	lbra	L222	;
   4FDA                    4269 L192:
   4FDA E6 6D         [ 5] 4270 	ldb	13,s	;, spellSelect
   4FDC C1 02         [ 2] 4271 	cmpb	#2	;cmpqi:	;,
   4FDE 10 26 00 44   [ 6] 4272 	lbne	L193	;
                           4273 ;----- asm -----
                           4274 ; 1658 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4275 	; #ENR#[1134]if (!incombat) goto nocombatspell;
                           4276 ;--- end asm ---
   4FE2 6D 65         [ 7] 4277 	tst	5,s	; inCombat
   4FE4 10 27 02 6C   [ 6] 4278 	lbeq	L105	;
                           4279 ;----- asm -----
                           4280 ; 1661 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4281 	; #ENR#[1136]printmessage();
                           4282 ;--- end asm ---
   4FE8 8E 44 31      [ 3] 4283 	ldx	#LC78	;,
   4FEB BD 5A 71      [ 8] 4284 	jsr	_printMessage
                           4285 ;----- asm -----
                           4286 ; 1663 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4287 	; #ENR#[1137]pause(small_pause);
                           4288 ;--- end asm ---
   4FEE C6 4B         [ 2] 4289 	ldb	#75	;,
   4FF0 BD 3D 31      [ 8] 4290 	jsr	_pause
                           4291 ;----- asm -----
                           4292 ; 1667 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4293 	; #ENR#[1140]if (un != 0)
                           4294 ;--- end asm ---
   4FF3 7D C9 69      [ 7] 4295 	tst	_un	; un
   4FF6 27 03         [ 3] 4296 	beq	L194	;
                           4297 ;----- asm -----
                           4298 ; 1670 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4299 	; #ENR#[1142]goto undeadaredead;
                           4300 ;--- end asm ---
   4FF8 16 FD 1C      [ 5] 4301 	lbra	L165	;
   4FFB                    4302 L194:
                           4303 ;----- asm -----
                           4304 ; 1673 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4305 	; #ENR#[1144]if (randmax(11)>8)
                           4306 ;--- end asm ---
   4FFB C6 0B         [ 2] 4307 	ldb	#11	;,
   4FFD BD 5E 21      [ 8] 4308 	jsr	_RandMax
   5000 C1 08         [ 2] 4309 	cmpb	#8	;cmpqi:	; D.3644,
   5002 23 1F         [ 3] 4310 	bls	L195	;
                           4311 ;----- asm -----
                           4312 ; 1676 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4313 	; #ENR#[1146]_fs(, mo[m]);
                           4314 ;--- end asm ---
   5004 F6 C9 62      [ 5] 4315 	ldb	_m	;, m
   5007 1D            [ 2] 4316 	sex		;extendqihi2: R:b -> R:d	;,
   5008 ED E4         [ 5] 4317 	std	,s	;,
   500A 58            [ 2] 4318 	aslb	;
   500B 49            [ 2] 4319 	rola	;
   500C 1F 01         [ 6] 4320 	tfr	d,x	;, tmp324
   500E AE 89 01 24   [ 9] 4321 	ldx	_mo,x	;, mo
   5012 AF E3         [ 8] 4322 	stx	,--s	;,
   5014 8E 44 3E      [ 3] 4323 	ldx	#LC79	;,
   5017 BD 5B 50      [ 8] 4324 	jsr	__fs
                           4325 ;----- asm -----
                           4326 ; 1678 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4327 	; #ENR#[1147]printmessage(stringbuffer40);
                           4328 ;--- end asm ---
   501A 8E C8 BF      [ 3] 4329 	ldx	#_stringBuffer40	;,
   501D BD 5A 71      [ 8] 4330 	jsr	_printMessage
                           4331 ;----- asm -----
                           4332 ; 1680 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4333 	; #ENR#[1148]return 1;
                           4334 ;--- end asm ---
   5020 16 F8 0F      [ 5] 4335 	lbra	L223	;
   5023                    4336 L195:
                           4337 ;----- asm -----
                           4338 ; 1683 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4339 	; #ENR#[1150]return 3;
                           4340 ;--- end asm ---
   5023 16 02 6C      [ 5] 4341 	lbra	L166	;
   5026                    4342 L193:
   5026 E6 6D         [ 5] 4343 	ldb	13,s	;, spellSelect
   5028 C1 03         [ 2] 4344 	cmpb	#3	;cmpqi:	;,
   502A 26 19         [ 3] 4345 	bne	L196	;
                           4346 ;----- asm -----
                           4347 ; 1691 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4348 	; #ENR#[1157]if (!incombat) goto nocombatspell;
                           4349 ;--- end asm ---
   502C 6D 65         [ 7] 4350 	tst	5,s	; inCombat
   502E 10 27 02 22   [ 6] 4351 	lbeq	L105	;
                           4352 ;----- asm -----
                           4353 ; 1693 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4354 	; #ENR#[1158]printmessage();
                           4355 ;--- end asm ---
   5032 8E 44 54      [ 3] 4356 	ldx	#LC80	;,
   5035 BD 5A 71      [ 8] 4357 	jsr	_printMessage
                           4358 ;----- asm -----
                           4359 ; 1695 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4360 	; #ENR#[1159]tmp = (signed int) randmax(60)+5;
                           4361 ;--- end asm ---
   5038 C6 3C         [ 2] 4362 	ldb	#60	;,
   503A BD 5E 21      [ 8] 4363 	jsr	_RandMax
   503D CB 05         [ 2] 4364 	addb	#5	; D.3645,
   503F F7 C8 FE      [ 5] 4365 	stb	_tmp	; D.3645, tmp
                           4366 ;----- asm -----
                           4367 ; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4368 	; #ENR#[1160]goto damagespell;
                           4369 ;--- end asm ---
   5042 16 02 1F      [ 5] 4370 	lbra	L103	;
   5045                    4371 L196:
   5045 E6 6D         [ 5] 4372 	ldb	13,s	;, spellSelect
   5047 C1 04         [ 2] 4373 	cmpb	#4	;cmpqi:	;,
   5049 10 26 00 67   [ 6] 4374 	lbne	L197	;
                           4375 ;----- asm -----
                           4376 ; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4377 	; #ENR#[1169]clearmessage();
                           4378 ;--- end asm ---
   504D 7F C9 C2      [ 7] 4379 	clr	_msgLine	; msgLine
                           4380 ;----- asm -----
                           4381 ; 1709 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4382 	; #ENR#[1170]printmessage();
                           4383 ;--- end asm ---
   5050 8E 44 5E      [ 3] 4384 	ldx	#LC81	;,
   5053 BD 5A 71      [ 8] 4385 	jsr	_printMessage
                           4386 ;----- asm -----
                           4387 ; 1711 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4388 	; #ENR#[1171]printmessage();
                           4389 ;--- end asm ---
   5056 8E 44 7F      [ 3] 4390 	ldx	#LC82	;,
   5059 BD 5A 71      [ 8] 4391 	jsr	_printMessage
                           4392 ;----- asm -----
                           4393 ; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4394 	; #ENR#[1172]pause(small_pause);
                           4395 ;--- end asm ---
   505C C6 4B         [ 2] 4396 	ldb	#75	;,
   505E BD 3D 31      [ 8] 4397 	jsr	_pause
                           4398 ;----- asm -----
                           4399 ; 1715 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4400 	; #ENR#[1173]if (randmax(10) >4)
                           4401 ;--- end asm ---
   5061 C6 0A         [ 2] 4402 	ldb	#10	;,
   5063 BD 5E 21      [ 8] 4403 	jsr	_RandMax
   5066 C1 04         [ 2] 4404 	cmpb	#4	;cmpqi:	; D.3648,
   5068 23 1F         [ 3] 4405 	bls	L198	;
                           4406 ;----- asm -----
                           4407 ; 1718 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4408 	; #ENR#[1175]_fs(, mo[m]);
                           4409 ;--- end asm ---
   506A F6 C9 62      [ 5] 4410 	ldb	_m	;, m
   506D 1D            [ 2] 4411 	sex		;extendqihi2: R:b -> R:d	;,
   506E ED E4         [ 5] 4412 	std	,s	;,
   5070 58            [ 2] 4413 	aslb	;
   5071 49            [ 2] 4414 	rola	;
   5072 1F 01         [ 6] 4415 	tfr	d,x	;, tmp329
   5074 AE 89 01 24   [ 9] 4416 	ldx	_mo,x	;, mo
   5078 AF E3         [ 8] 4417 	stx	,--s	;,
   507A 8E 44 A0      [ 3] 4418 	ldx	#LC83	;,
   507D BD 5B 50      [ 8] 4419 	jsr	__fs
                           4420 ;----- asm -----
                           4421 ; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4422 	; #ENR#[1176]printmessage(stringbuffer40);
                           4423 ;--- end asm ---
   5080 8E C8 BF      [ 3] 4424 	ldx	#_stringBuffer40	;,
   5083 BD 5A 71      [ 8] 4425 	jsr	_printMessage
                           4426 ;----- asm -----
                           4427 ; 1722 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4428 	; #ENR#[1177]return 6;
                           4429 ;--- end asm ---
   5086 16 01 BF      [ 5] 4430 	lbra	L224	;
   5089                    4431 L198:
                           4432 ;----- asm -----
                           4433 ; 1725 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4434 	; #ENR#[1179]_fs(, mo[m]);
                           4435 ;--- end asm ---
   5089 F6 C9 62      [ 5] 4436 	ldb	_m	;, m
   508C 1D            [ 2] 4437 	sex		;extendqihi2: R:b -> R:d	;,
   508D ED E4         [ 5] 4438 	std	,s	;,
   508F 58            [ 2] 4439 	aslb	;
   5090 49            [ 2] 4440 	rola	;
   5091 1F 01         [ 6] 4441 	tfr	d,x	;, tmp334
   5093 AE 89 01 24   [ 9] 4442 	ldx	_mo,x	;, mo
   5097 AF E3         [ 8] 4443 	stx	,--s	;,
   5099 8E 44 B1      [ 3] 4444 	ldx	#LC84	;,
   509C BD 5B 50      [ 8] 4445 	jsr	__fs
                           4446 ;----- asm -----
                           4447 ; 1727 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4448 	; #ENR#[1180]printmessage(stringbuffer40);
                           4449 ;--- end asm ---
   509F 8E C8 BF      [ 3] 4450 	ldx	#_stringBuffer40	;,
   50A2 BD 5A 71      [ 8] 4451 	jsr	_printMessage
                           4452 ;----- asm -----
                           4453 ; 1729 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4454 	; #ENR#[1181]tmp = (signed int) randmax(10)+15;
                           4455 ;--- end asm ---
   50A5 C6 0A         [ 2] 4456 	ldb	#10	;,
   50A7 BD 5E 21      [ 8] 4457 	jsr	_RandMax
   50AA CB 0F         [ 2] 4458 	addb	#15	; D.3649,
   50AC F7 C8 FE      [ 5] 4459 	stb	_tmp	; D.3649, tmp
                           4460 ;----- asm -----
                           4461 ; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4462 	; #ENR#[1182]goto damagespell;
                           4463 ;--- end asm ---
   50AF                    4464 L217:
   50AF 32 62         [ 5] 4465 	leas	2,s	;,,
   50B1 16 01 B0      [ 5] 4466 	lbra	L103	;
   50B4                    4467 L197:
   50B4 E6 6D         [ 5] 4468 	ldb	13,s	;, spellSelect
   50B6 C1 05         [ 2] 4469 	cmpb	#5	;cmpqi:	;,
   50B8 10 26 01 93   [ 6] 4470 	lbne	L116	;
                           4471 ;----- asm -----
                           4472 ; 1738 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4473 	; #ENR#[1188]if (!incombat) goto nocombatspell;
                           4474 ;--- end asm ---
   50BC 6D 65         [ 7] 4475 	tst	5,s	; inCombat
   50BE 10 27 01 92   [ 6] 4476 	lbeq	L105	;
                           4477 ;----- asm -----
                           4478 ; 1741 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4479 	; #ENR#[1190]if (un != 0) goto undeadaredead;
                           4480 ;--- end asm ---
   50C2 7D C9 69      [ 7] 4481 	tst	_un	; un
   50C5 10 26 FC 4E   [ 6] 4482 	lbne	L165	;
                           4483 ;----- asm -----
                           4484 ; 1745 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4485 	; #ENR#[1193]_fs(, mo[m]);
                           4486 ;--- end asm ---
   50C9 F6 C9 62      [ 5] 4487 	ldb	_m	;, m
   50CC 1D            [ 2] 4488 	sex		;extendqihi2: R:b -> R:d	;,
   50CD ED E4         [ 5] 4489 	std	,s	;,
   50CF 58            [ 2] 4490 	aslb	;
   50D0 49            [ 2] 4491 	rola	;
   50D1 1F 01         [ 6] 4492 	tfr	d,x	;, tmp339
   50D3 AE 89 01 24   [ 9] 4493 	ldx	_mo,x	;, mo
   50D7 AF E3         [ 8] 4494 	stx	,--s	;,
   50D9 8E 44 C8      [ 3] 4495 	ldx	#LC85	;,
   50DC BD 5B 50      [ 8] 4496 	jsr	__fs
                           4497 ;----- asm -----
                           4498 ; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4499 	; #ENR#[1194]printmessage(stringbuffer40);
                           4500 ;--- end asm ---
   50DF 8E C8 BF      [ 3] 4501 	ldx	#_stringBuffer40	;,
   50E2 BD 5A 71      [ 8] 4502 	jsr	_printMessage
                           4503 ;----- asm -----
                           4504 ; 1750 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4505 	; #ENR#[1196]if (randmax(20)>s[wis])
                           4506 ;--- end asm ---
   50E5 C6 14         [ 2] 4507 	ldb	#20	;,
   50E7 BD 5E 21      [ 8] 4508 	jsr	_RandMax
   50EA 32 62         [ 5] 4509 	leas	2,s	;,,
   50EC F1 C9 45      [ 5] 4510 	cmpb	_s+2	;cmpqi:	; D.3652, s
   50EF 23 09         [ 3] 4511 	bls	L199	;
                           4512 ;----- asm -----
                           4513 ; 1753 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4514 	; #ENR#[1198]printmessage();
                           4515 ;--- end asm ---
   50F1 8E 44 DF      [ 3] 4516 	ldx	#LC86	;,
   50F4 BD 5A 71      [ 8] 4517 	jsr	_printMessage
                           4518 ;----- asm -----
                           4519 ; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4520 	; #ENR#[1199]return 1;
                           4521 ;--- end asm ---
   50F7 16 01 65      [ 5] 4522 	lbra	L218	;
   50FA                    4523 L199:
                           4524 ;----- asm -----
                           4525 ; 1760 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4526 	; #ENR#[1203]if (  randmax((unsigned int)(67)) < (unsigned int) ((s[con]) +33))
                           4527 ;--- end asm ---
   50FA C6 43         [ 2] 4528 	ldb	#67	;,
   50FC BD 5E 21      [ 8] 4529 	jsr	_RandMax
   50FF E7 6B         [ 5] 4530 	stb	11,s	;, D.3653
   5101 F6 C9 46      [ 5] 4531 	ldb	_s+3	; tmp344, s
   5104 CB 21         [ 2] 4532 	addb	#33	; tmp344,
   5106 E1 6B         [ 5] 4533 	cmpb	11,s	;cmpqi:(R)	; tmp344, D.3653
   5108 23 03         [ 3] 4534 	bls	L200	;
                           4535 ;----- asm -----
                           4536 ; 1763 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4537 	; #ENR#[1205]return 2;
                           4538 ;--- end asm ---
   510A 16 01 42      [ 5] 4539 	lbra	L221	;
   510D                    4540 L200:
                           4541 ;----- asm -----
                           4542 ; 1766 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4543 	; #ENR#[1207]printmessage();
                           4544 ;--- end asm ---
   510D 8E 44 ED      [ 3] 4545 	ldx	#LC87	;,
   5110 BD 5A 71      [ 8] 4546 	jsr	_printMessage
                           4547 ;----- asm -----
                           4548 ; 1768 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4549 	; #ENR#[1208]return 7;
                           4550 ;--- end asm ---
   5113 C6 07         [ 2] 4551 	ldb	#7	; D.3503,
   5115 16 01 7C      [ 5] 4552 	lbra	L96	;
   5118                    4553 L167:
   5118 E6 6C         [ 5] 4554 	ldb	12,s	;, spellLevel
   511A C1 05         [ 2] 4555 	cmpb	#5	;cmpqi:	;,
   511C 10 26 01 2F   [ 6] 4556 	lbne	L116	;
                           4557 ;----- asm -----
                           4558 ; 1775 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4559 	; #ENR#[1214]if (spellselect == 0)
                           4560 ;--- end asm ---
   5120 6D 6D         [ 7] 4561 	tst	13,s	; spellSelect
   5122 26 21         [ 3] 4562 	bne	L201	;
                           4563 ;----- asm -----
                           4564 ; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4565 	; #ENR#[1219]printmessage();
                           4566 ;--- end asm ---
   5124 8E 45 03      [ 3] 4567 	ldx	#LC88	;,
   5127 BD 5A 71      [ 8] 4568 	jsr	_printMessage
                           4569 ;----- asm -----
                           4570 ; 1783 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4571 	; #ENR#[1220]printmessage();
                           4572 ;--- end asm ---
   512A 8E 45 23      [ 3] 4573 	ldx	#LC89	;,
   512D BD 5A 71      [ 8] 4574 	jsr	_printMessage
                           4575 ;----- asm -----
                           4576 ; 1788 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4577 	; #ENR#[1224]sf[timestop] = randmax(20)+4;
                           4578 ;--- end asm ---
   5130 C6 14         [ 2] 4579 	ldb	#20	;,
   5132 BD 5E 21      [ 8] 4580 	jsr	_RandMax
   5135 CB 04         [ 2] 4581 	addb	#4	; D.3656,
   5137 F7 C9 5B      [ 5] 4582 	stb	_sf+8	; D.3656, sf
                           4583 ;----- asm -----
                           4584 ; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4585 	; #ENR#[1225]if (incombat) return 6;
                           4586 ;--- end asm ---
   513A C6 06         [ 2] 4587 	ldb	#6	; D.3503,
   513C 6D 65         [ 7] 4588 	tst	5,s	; inCombat
   513E 10 26 01 52   [ 6] 4589 	lbne	L96	;
                           4590 ;----- asm -----
                           4591 ; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4592 	; #ENR#[1226]return 1;
                           4593 ;--- end asm ---
   5142 16 01 1A      [ 5] 4594 	lbra	L218	;
   5145                    4595 L201:
   5145 E6 6D         [ 5] 4596 	ldb	13,s	;, spellSelect
   5147 C1 01         [ 2] 4597 	cmpb	#1	;cmpqi:	;,
   5149 26 0C         [ 3] 4598 	bne	L203	;
                           4599 ;----- asm -----
                           4600 ; 1799 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4601 	; #ENR#[1232]sf[raise_dead] = randmax(40)+5;
                           4602 ;--- end asm ---
   514B C6 28         [ 2] 4603 	ldb	#40	;,
   514D BD 5E 21      [ 8] 4604 	jsr	_RandMax
   5150 CB 05         [ 2] 4605 	addb	#5	; D.3658,
   5152 F7 C9 5C      [ 5] 4606 	stb	_sf+9	; D.3658, sf
                           4607 ;----- asm -----
                           4608 ; 1801 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4609 	; #ENR#[1233]return 1;
                           4610 ;--- end asm ---
   5155 20 17         [ 3] 4611 	bra	L222	;
   5157                    4612 L203:
   5157 E6 6D         [ 5] 4613 	ldb	13,s	;, spellSelect
   5159 C1 02         [ 2] 4614 	cmpb	#2	;cmpqi:	;,
   515B 10 26 00 33   [ 6] 4615 	lbne	L204	;
                           4616 ;----- asm -----
                           4617 ; 1808 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4618 	; #ENR#[1239]if (!incombat) goto nocombatspell;
                           4619 ;--- end asm ---
   515F 6D 65         [ 7] 4620 	tst	5,s	; inCombat
   5161 10 27 00 EF   [ 6] 4621 	lbeq	L105	;
                           4622 ;----- asm -----
                           4623 ; 1813 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4624 	; #ENR#[1243]if (randmax(10+1) != 10)
                           4625 ;--- end asm ---
   5165 C6 0B         [ 2] 4626 	ldb	#11	;,
   5167 BD 5E 21      [ 8] 4627 	jsr	_RandMax
   516A C1 0A         [ 2] 4628 	cmpb	#10	;cmpqi:	; D.3660,
   516C 27 05         [ 3] 4629 	beq	L205	;
                           4630 ;----- asm -----
                           4631 ; 1816 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4632 	; #ENR#[1245]return 2;
                           4633 ;--- end asm ---
   516E                    4634 L222:
   516E E6 6D         [ 5] 4635 	ldb	13,s	; D.3503, spellSelect
   5170 16 01 21      [ 5] 4636 	lbra	L96	;
   5173                    4637 L205:
                           4638 ;----- asm -----
                           4639 ; 1820 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4640 	; #ENR#[1248]_fs(, mo[m]);
                           4641 ;--- end asm ---
   5173 F6 C9 62      [ 5] 4642 	ldb	_m	;, m
   5176 1D            [ 2] 4643 	sex		;extendqihi2: R:b -> R:d	;,
   5177 ED E4         [ 5] 4644 	std	,s	;,
   5179 58            [ 2] 4645 	aslb	;
   517A 49            [ 2] 4646 	rola	;
   517B 1F 01         [ 6] 4647 	tfr	d,x	;, tmp349
   517D AE 89 01 24   [ 9] 4648 	ldx	_mo,x	;, mo
   5181 AF E3         [ 8] 4649 	stx	,--s	;,
   5183 8E 45 2E      [ 3] 4650 	ldx	#LC90	;,
   5186 BD 5B 50      [ 8] 4651 	jsr	__fs
                           4652 ;----- asm -----
                           4653 ; 1822 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4654 	; #ENR#[1249]printmessage(stringbuffer40);
                           4655 ;--- end asm ---
   5189 8E C8 BF      [ 3] 4656 	ldx	#_stringBuffer40	;,
   518C BD 5A 71      [ 8] 4657 	jsr	_printMessage
                           4658 ;----- asm -----
                           4659 ; 1824 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4660 	; #ENR#[1250]return 1;
                           4661 ;--- end asm ---
   518F 16 F6 A0      [ 5] 4662 	lbra	L223	;
   5192                    4663 L204:
   5192 E6 6D         [ 5] 4664 	ldb	13,s	;, spellSelect
   5194 C1 03         [ 2] 4665 	cmpb	#3	;cmpqi:	;,
   5196 10 26 00 66   [ 6] 4666 	lbne	L206	;
                           4667 ;----- asm -----
                           4668 ; 1831 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4669 	; #ENR#[1256]if (incombat)
                           4670 ;--- end asm ---
   519A 6D 65         [ 7] 4671 	tst	5,s	; inCombat
   519C 27 09         [ 3] 4672 	beq	L207	;
                           4673 ;----- asm -----
                           4674 ; 1834 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4675 	; #ENR#[1258]printmessage();
                           4676 ;--- end asm ---
   519E 8E 42 A8      [ 3] 4677 	ldx	#LC51	;,
   51A1 BD 5A 71      [ 8] 4678 	jsr	_printMessage
                           4679 ;----- asm -----
                           4680 ; 1836 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4681 	; #ENR#[1259]return 1;
                           4682 ;--- end asm ---
   51A4 16 00 B8      [ 5] 4683 	lbra	L218	;
   51A7                    4684 L207:
                           4685 ;----- asm -----
                           4686 ; 1842 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4687 	; #ENR#[1264]for (int i=0; i<10;i++)
                           4688 ;--- end asm ---
   51A7 8E C9 49      [ 3] 4689 	ldx	#_inventory	; ivtmp.404,
   51AA                    4690 L208:
                           4691 ;----- asm -----
                           4692 ; 1845 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4693 	; #ENR#[1266]inventory[i] = 0;
                           4694 ;--- end asm ---
   51AA 6F 80         [ 8] 4695 	clr	,x+	; inventory
   51AC 8C C9 53      [ 4] 4696 	cmpx	#_inventory+10	;cmphi:	; ivtmp.404,
   51AF 26 F9         [ 3] 4697 	bne	L208	;
                           4698 ;----- asm -----
                           4699 ; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4700 	; #ENR#[1268]gd = 0;
                           4701 ;--- end asm ---
   51B1 CC 00 00      [ 3] 4702 	ldd	#0	;,
   51B4 FD C9 3B      [ 6] 4703 	std	_gd	;, gd
   51B7 FD C9 3D      [ 6] 4704 	std	_gd+2	;, gd
                           4705 ;----- asm -----
                           4706 ; 1850 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4707 	; #ENR#[1269]clearmonsterstack();
                           4708 ; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4709 	; #ENR#[380]for (int i=0;i<20;i++)
                           4710 ;--- end asm ---
   51BA 10 8E 00 00   [ 4] 4711 	ldy	#0	; ivtmp.389,
   51BE                    4712 L209:
                           4713 ;----- asm -----
                           4714 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4715 	; #ENR#[382]stackm[i] = -1;
                           4716 ;--- end asm ---
   51BE C6 FF         [ 2] 4717 	ldb	#-1	;,
   51C0 E7 A9 C9 6C   [ 8] 4718 	stb	_stackM,y	;, stackM
                           4719 ;----- asm -----
                           4720 ; 562 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4721 	; #ENR#[383]stackml[i] = 0;
                           4722 ;--- end asm ---
   51C4 6F A9 C9 80   [10] 4723 	clr	_stackML,y	; stackML
                           4724 ;----- asm -----
                           4725 ; 564 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4726 	; #ENR#[384]stackmh[i] = 0;
                           4727 ;--- end asm ---
   51C8 1F 20         [ 6] 4728 	tfr	y,d	; ivtmp.389,
   51CA 58            [ 2] 4729 	aslb	;
   51CB 49            [ 2] 4730 	rola	;
   51CC 1F 01         [ 6] 4731 	tfr	d,x	;, tmp356
   51CE CC 00 00      [ 3] 4732 	ldd	#0	;,
   51D1 ED 89 C9 94   [ 9] 4733 	std	_stackMH,x	;, stackMH
   51D5 31 21         [ 5] 4734 	leay	1,y	; ivtmp.389,, ivtmp.389
   51D7 10 8C 00 14   [ 5] 4735 	cmpy	#20	;cmphi:	; ivtmp.389,
   51DB 26 E1         [ 3] 4736 	bne	L209	;
                           4737 ;----- asm -----
                           4738 ; 1852 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4739 	; #ENR#[1270]cz = 1;
                           4740 ;--- end asm ---
   51DD C6 01         [ 2] 4741 	ldb	#1	;,
   51DF F7 C9 3A      [ 5] 4742 	stb	_cz	;, cz
                           4743 ;----- asm -----
                           4744 ; 1854 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4745 	; #ENR#[1271]cx = 25;
                           4746 ;--- end asm ---
   51E2 C6 19         [ 2] 4747 	ldb	#25	;,
   51E4 F7 C9 38      [ 5] 4748 	stb	_cx	;, cx
                           4749 ;----- asm -----
                           4750 ; 1856 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4751 	; #ENR#[1272]cy = 13;
                           4752 ;--- end asm ---
   51E7 C6 0D         [ 2] 4753 	ldb	#13	;,
   51E9 F7 C9 39      [ 5] 4754 	stb	_cy	;, cy
                           4755 ;----- asm -----
                           4756 ; 1858 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4757 	; #ENR#[1273]ch = hp;
                           4758 ;--- end asm ---
   51EC BE C9 2B      [ 6] 4759 	ldx	_hp	;, hp
   51EF BF C9 2D      [ 6] 4760 	stx	_ch	;, ch
                           4761 ;----- asm -----
                           4762 ; 1860 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4763 	; #ENR#[1274]printmessage();
                           4764 ;--- end asm ---
   51F2 8E 39 25      [ 3] 4765 	ldx	#LC17	;,
   51F5 BD 5A 71      [ 8] 4766 	jsr	_printMessage
                           4767 ;----- asm -----
                           4768 ; 1862 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4769 	; #ENR#[1275]pause(small_pause);
                           4770 ;--- end asm ---
   51F8 C6 4B         [ 2] 4771 	ldb	#75	;,
   51FA BD 3D 31      [ 8] 4772 	jsr	_pause
                           4773 ;----- asm -----
                           4774 ; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4775 	; #ENR#[1276]return 1;
                           4776 ;--- end asm ---
   51FD 16 00 5F      [ 5] 4777 	lbra	L218	;
   5200                    4778 L206:
   5200 E6 6D         [ 5] 4779 	ldb	13,s	;, spellSelect
   5202 C1 04         [ 2] 4780 	cmpb	#4	;cmpqi:	;,
   5204 26 0F         [ 3] 4781 	bne	L210	;
                           4782 ;----- asm -----
                           4783 ; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4784 	; #ENR#[1282]printmessage();
                           4785 ;--- end asm ---
   5206 8E 41 42      [ 3] 4786 	ldx	#LC35	;,
   5209 BD 5A 71      [ 8] 4787 	jsr	_printMessage
                           4788 ;----- asm -----
                           4789 ; 1873 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4790 	; #ENR#[1283]ch = hp;
                           4791 ;--- end asm ---
   520C BE C9 2B      [ 6] 4792 	ldx	_hp	;, hp
   520F BF C9 2D      [ 6] 4793 	stx	_ch	;, ch
                           4794 ;----- asm -----
                           4795 ; 1875 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4796 	; #ENR#[1284]return 1;
                           4797 ;--- end asm ---
   5212 16 00 4A      [ 5] 4798 	lbra	L218	;
   5215                    4799 L210:
   5215 E6 6D         [ 5] 4800 	ldb	13,s	;, spellSelect
   5217 C1 05         [ 2] 4801 	cmpb	#5	;cmpqi:	;,
   5219 10 26 00 32   [ 6] 4802 	lbne	L116	;
                           4803 ;----- asm -----
                           4804 ; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4805 	; #ENR#[1290]printmessage();
                           4806 ;--- end asm ---
   521D 8E 45 43      [ 3] 4807 	ldx	#LC91	;,
   5220 BD 5A 71      [ 8] 4808 	jsr	_printMessage
                           4809 ;----- asm -----
                           4810 ; 1884 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4811 	; #ENR#[1291]if (!incombat) goto nocombatspell;
                           4812 ;--- end asm ---
   5223 6D 65         [ 7] 4813 	tst	5,s	; inCombat
   5225 27 2D         [ 3] 4814 	beq	L105	;
                           4815 ;----- asm -----
                           4816 ; 1886 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4817 	; #ENR#[1292]pause(small_pause);
                           4818 ;--- end asm ---
   5227 C6 4B         [ 2] 4819 	ldb	#75	;,
   5229 BD 3D 31      [ 8] 4820 	jsr	_pause
                           4821 ;----- asm -----
                           4822 ; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4823 	; #ENR#[1297]_fs(, mo[m]);
                           4824 ;--- end asm ---
   522C F6 C9 62      [ 5] 4825 	ldb	_m	;, m
   522F 1D            [ 2] 4826 	sex		;extendqihi2: R:b -> R:d	;,
   5230 ED E4         [ 5] 4827 	std	,s	;,
   5232 58            [ 2] 4828 	aslb	;
   5233 49            [ 2] 4829 	rola	;
   5234 1F 01         [ 6] 4830 	tfr	d,x	;, tmp363
   5236 AE 89 01 24   [ 9] 4831 	ldx	_mo,x	;, mo
   523A AF E3         [ 8] 4832 	stx	,--s	;,
   523C 8E 44 A0      [ 3] 4833 	ldx	#LC83	;,
   523F BD 5B 50      [ 8] 4834 	jsr	__fs
                           4835 ;----- asm -----
                           4836 ; 1894 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4837 	; #ENR#[1298]printmessage(stringbuffer40);
                           4838 ;--- end asm ---
   5242 8E C8 BF      [ 3] 4839 	ldx	#_stringBuffer40	;,
   5245 BD 5A 71      [ 8] 4840 	jsr	_printMessage
                           4841 ;----- asm -----
                           4842 ; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4843 	; #ENR#[1299]return 6;
                           4844 ;--- end asm ---
   5248                    4845 L224:
   5248 C6 06         [ 2] 4846 	ldb	#6	; D.3503,
   524A                    4847 L219:
   524A 32 62         [ 5] 4848 	leas	2,s	;,,
   524C 16 00 45      [ 5] 4849 	lbra	L96	;
   524F                    4850 L116:
                           4851 ;----- asm -----
                           4852 ; 1901 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4853 	; #ENR#[1303]return 2;
                           4854 ;--- end asm ---
   524F                    4855 L221:
   524F C6 02         [ 2] 4856 	ldb	#2	; D.3503,
   5251 16 00 40      [ 5] 4857 	lbra	L96	;
   5254                    4858 L105:
                           4859 ;----- asm -----
                           4860 ; 1906 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4861 	; #ENR#[1306]printmessage();
                           4862 ;--- end asm ---
   5254 8E 45 68      [ 3] 4863 	ldx	#LC92	;,
   5257 BD 5A 71      [ 8] 4864 	jsr	_printMessage
                           4865 ;----- asm -----
                           4866 ; 1908 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4867 	; #ENR#[1307]pause(small_pause);
                           4868 ;--- end asm ---
   525A C6 4B         [ 2] 4869 	ldb	#75	;,
   525C BD 3D 31      [ 8] 4870 	jsr	_pause
                           4871 ;----- asm -----
                           4872 ; 1910 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4873 	; #ENR#[1308]return 1;
                           4874 ;--- end asm ---
   525F                    4875 L218:
   525F C6 01         [ 2] 4876 	ldb	#1	; D.3503,
   5261 16 00 30      [ 5] 4877 	lbra	L96	;
   5264                    4878 L103:
                           4879 ;----- asm -----
                           4880 ; 1914 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4881 	; #ENR#[1310]if (!incombat) goto nocombatspell;
                           4882 ;--- end asm ---
   5264 6D 65         [ 7] 4883 	tst	5,s	; inCombat
   5266 27 EC         [ 3] 4884 	beq	L105	;
                           4885 ;----- asm -----
                           4886 ; 1916 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4887 	; #ENR#[1311]_fi_s(, (unsigned int) tmp);
                           4888 ;--- end asm ---
   5268 F6 C8 FE      [ 5] 4889 	ldb	_tmp	;, tmp
   526B 8E 45 88      [ 3] 4890 	ldx	#LC93	;,
   526E BD 5B BD      [ 8] 4891 	jsr	__fi_s
                           4892 ;----- asm -----
                           4893 ; 1918 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4894 	; #ENR#[1312]printmessage(stringbuffer40);
                           4895 ;--- end asm ---
   5271 8E C8 BF      [ 3] 4896 	ldx	#_stringBuffer40	;,
   5274 BD 5A 71      [ 8] 4897 	jsr	_printMessage
                           4898 ;----- asm -----
                           4899 ; 1920 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4900 	; #ENR#[1313]mh = mh -tmp;
                           4901 ;--- end asm ---
   5277 F6 C8 FE      [ 5] 4902 	ldb	_tmp	;, tmp
   527A 1D            [ 2] 4903 	sex		;extendqihi2: R:b -> R:d	;,
   527B 1F 03         [ 6] 4904 	tfr	d,u	;, tmp
   527D BE C9 63      [ 6] 4905 	ldx	_mh	; mh, mh
   5280 1F 10         [ 6] 4906 	tfr	x,d	; mh,
   5282 34 40         [ 6] 4907 	pshs	u	;subhi: R:d -= R:u	; tmp,
   5284 A3 E1         [ 9] 4908 	subd	,s++	;
   5286 FD C9 63      [ 6] 4909 	std	_mh	; mh.91, mh
                           4910 ;----- asm -----
                           4911 ; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4912 	; #ENR#[1314]if (mh <0) return 3;
                           4913 ;--- end asm ---
   5289 10 83 00 00   [ 5] 4914 	cmpd	#0	; mh.91
   528D 2D 03         [ 3] 4915 	blt	L166	;
                           4916 ;----- asm -----
                           4917 ; 1924 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4918 	; #ENR#[1315]return 1;
                           4919 ;--- end asm ---
   528F 16 FF CD      [ 5] 4920 	lbra	L218	;
   5292                    4921 L166:
   5292 C6 03         [ 2] 4922 	ldb	#3	; D.3503,
   5294                    4923 L96:
   5294 32 E8 19      [ 5] 4924 	leas	25,s	;,,
   5297 35 E0         [ 8] 4925 	puls	y,u,pc	;
   5299                    4926 LC94:
   5299 59 4F 55 20 57 45  4927 	.ascii	"YOU WENT UP A LEVEL!\0"
        4E 54 20 55 50 20
        41 20 4C 45 56 45
        4C 21 00
   52AE                    4928 LC95:
   52AE 59 4F 55 20 47 41  4929 	.ascii	"YOU GAIN % HIT POINTS\0"
        49 4E 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   52C4                    4930 LC96:
   52C4 59 4F 55 20 47 4F  4931 	.ascii	"YOU GO DOWN A LEVEL!\0"
        20 44 4F 57 4E 20
        41 20 4C 45 56 45
        4C 21 00
   52D9                    4932 LC97:
   52D9 59 4F 55 20 4C 4F  4933 	.ascii	"YOU LOSE % HIT POINTS\0"
        53 45 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
                           4934 	.globl	_checkXP
   52EF                    4935 _checkXP:
   52EF 34 60         [ 7] 4936 	pshs	y,u	;
   52F1 32 70         [ 5] 4937 	leas	-16,s	;,,
                           4938 ;----- asm -----
                           4939 ; 1980 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4940 	; #ENR#[1370]unsigned long long int t = ull(1000)*ull(ull(2)<<(lv-1));
                           4941 ;--- end asm ---
   52F3 F6 C9 2F      [ 5] 4942 	ldb	_lv	;, lv
                           4943 ;----- asm -----
                           4944 ; 1989 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4945 	; #ENR#[1378]if (ex >= t)
                           4946 ;--- end asm ---
   52F6 FE C9 30      [ 6] 4947 	ldu	_ex	; ex.93, ex
   52F9 10 BE C9 32   [ 7] 4948 	ldy	_ex+2	; ex.93, ex
   52FD 5A            [ 2] 4949 	decb	;
   52FE E7 61         [ 5] 4950 	stb	1,s	;, lv.92
   5300 4F            [ 2] 4951 	clra		;zero_extendqihi: R:b -> R:d	;,
   5301 6C 61         [ 7] 4952 	inc	1,s	; lv.92
   5303 34 06         [ 7] 4953 	pshs	d	; tmp45
   5305 32 7C         [ 5] 4954 	leas	-4,s	;,,
   5307 CC 00 00      [ 3] 4955 	ldd	#0	;,
   530A ED E4         [ 5] 4956 	std	,s	;,
   530C CC 00 02      [ 3] 4957 	ldd	#2	;,
   530F ED 62         [ 6] 4958 	std	2,s	;,
   5311 30 E8 12      [ 5] 4959 	leax	18,s	;,,
   5314 BD 6F C0      [ 8] 4960 	jsr	___ashlsi3
   5317 32 7E         [ 5] 4961 	leas	-2,s	;,,
   5319 CC 00 00      [ 3] 4962 	ldd	#0	;,
   531C ED 64         [ 6] 4963 	std	4,s	;,
   531E 8E 03 E8      [ 3] 4964 	ldx	#1000	;,
   5321 AF 66         [ 6] 4965 	stx	6,s	;,
   5323 EC E8 14      [ 6] 4966 	ldd	20,s	;,
   5326 ED E4         [ 5] 4967 	std	,s	;,
   5328 AE E8 16      [ 6] 4968 	ldx	22,s	;,
   532B AF 62         [ 6] 4969 	stx	2,s	;,
   532D 30 E8 10      [ 5] 4970 	leax	16,s	;,,
   5330 BD 76 A6      [ 8] 4971 	jsr	___mulsi3
   5333 32 68         [ 5] 4972 	leas	8,s	;,,
   5335 AE 68         [ 6] 4973 	ldx	8,s	; tmp89,
   5337 EC 6A         [ 6] 4974 	ldd	10,s	; tmp90,
   5339 34 40         [ 6] 4975 	pshs	u	;cmphi: R:u with R:x	; ex.93, tmp89
   533B AC E1         [ 9] 4976 	cmpx	,s++	;cmphi:	; tmp89
   533D 10 22 00 BE   [ 6] 4977 	lbhi	L226	;
   5341 26 09         [ 3] 4978 	bne	L239	;
   5343 34 20         [ 6] 4979 	pshs	y	;cmphi: R:y with R:d	; ex.93, tmp90
   5345 10 A3 E1      [10] 4980 	cmpd	,s++	;cmphi:	; tmp90
   5348 10 22 00 B3   [ 6] 4981 	lbhi	L226	;
   534C                    4982 L239:
                           4983 ;----- asm -----
                           4984 ; 1992 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4985 	; #ENR#[1380]printmessage();
                           4986 ;--- end asm ---
   534C 8E 52 99      [ 3] 4987 	ldx	#LC94	;,
   534F BD 5A 71      [ 8] 4988 	jsr	_printMessage
                           4989 ;----- asm -----
                           4990 ; 1994 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4991 	; #ENR#[1381]lv = lv +1;
                           4992 ;--- end asm ---
   5352 F6 C9 2F      [ 5] 4993 	ldb	_lv	;, lv
   5355 E7 E4         [ 4] 4994 	stb	,s	;, lv.509
   5357 5C            [ 2] 4995 	incb	;
   5358 F7 C9 2F      [ 5] 4996 	stb	_lv	;, lv
                           4997 ;----- asm -----
                           4998 ; 1996 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           4999 	; #ENR#[1382]t = ull(1000)*ull(ull(2)<<(lv-1));
                           5000 ;--- end asm ---
   535B E6 E4         [ 4] 5001 	ldb	,s	;, lv.509
   535D 4F            [ 2] 5002 	clra		;zero_extendqihi: R:b -> R:d	;,
   535E 34 06         [ 7] 5003 	pshs	d	; lv.509
   5360 32 7C         [ 5] 5004 	leas	-4,s	;,,
   5362 CC 00 00      [ 3] 5005 	ldd	#0	;,
   5365 ED E4         [ 5] 5006 	std	,s	;,
   5367 CC 00 02      [ 3] 5007 	ldd	#2	;,
   536A ED 62         [ 6] 5008 	std	2,s	;,
   536C 30 E8 12      [ 5] 5009 	leax	18,s	;,,
   536F BD 6F C0      [ 8] 5010 	jsr	___ashlsi3
   5372 32 7E         [ 5] 5011 	leas	-2,s	;,,
   5374 CC 00 00      [ 3] 5012 	ldd	#0	;,
   5377 ED 64         [ 6] 5013 	std	4,s	;,
   5379 8E 03 E8      [ 3] 5014 	ldx	#1000	;,
   537C AF 66         [ 6] 5015 	stx	6,s	;,
   537E EC E8 14      [ 6] 5016 	ldd	20,s	;,
   5381 ED E4         [ 5] 5017 	std	,s	;,
   5383 AE E8 16      [ 6] 5018 	ldx	22,s	;,
   5386 AF 62         [ 6] 5019 	stx	2,s	;,
   5388 30 E8 10      [ 5] 5020 	leax	16,s	;,,
   538B BD 76 A6      [ 8] 5021 	jsr	___mulsi3
   538E 32 68         [ 5] 5022 	leas	8,s	;,,
   5390 EC 68         [ 6] 5023 	ldd	8,s	;,
   5392 ED 64         [ 6] 5024 	std	4,s	;, t.512
   5394 AE 6A         [ 6] 5025 	ldx	10,s	;,
   5396 AF 66         [ 6] 5026 	stx	6,s	;, t.512
                           5027 ;----- asm -----
                           5028 ; 1998 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5029 	; #ENR#[1383]tmp = (signed int) (randmax( s[con] ) + 1);
                           5030 ;--- end asm ---
   5398 F6 C9 46      [ 5] 5031 	ldb	_s+3	;, s
   539B BD 5E 21      [ 8] 5032 	jsr	_RandMax
   539E 5C            [ 2] 5033 	incb	;
   539F E7 62         [ 5] 5034 	stb	2,s	;, D.3681
   53A1 F7 C8 FE      [ 5] 5035 	stb	_tmp	;, tmp
                           5036 ;----- asm -----
                           5037 ; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5038 	; #ENR#[1386]ch += tmp;
                           5039 ;--- end asm ---
   53A4 1D            [ 2] 5040 	sex		;extendqihi2: R:b -> R:d	;,
   53A5 1F 03         [ 6] 5041 	tfr	d,u	;, D.3685
   53A7 FC C9 2D      [ 6] 5042 	ldd	_ch	;, ch
   53AA 30 CB         [ 8] 5043 	leax	d,u	;,, D.3685
   53AC BF C9 2D      [ 6] 5044 	stx	_ch	;, ch
                           5045 ;----- asm -----
                           5046 ; 2004 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5047 	; #ENR#[1387]hp += (long signed int) tmp;
                           5048 ;--- end asm ---
   53AF 1F 30         [ 6] 5049 	tfr	u,d	; D.3685,
   53B1 F3 C9 2B      [ 7] 5050 	addd	_hp; addhi3,3	;, hp
   53B4 FD C9 2B      [ 6] 5051 	std	_hp	;, hp
                           5052 ;----- asm -----
                           5053 ; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5054 	; #ENR#[1388]if (ex>t) ex = t-1;
                           5055 ;--- end asm ---
   53B7 AE 64         [ 6] 5056 	ldx	4,s	;, t.512
   53B9 BC C9 30      [ 7] 5057 	cmpx	_ex	;cmphi:(R)	;, ex
   53BC 25 09         [ 3] 5058 	blo	L240	;
   53BE 26 18         [ 3] 5059 	bne	L228	;
   53C0 AE 66         [ 6] 5060 	ldx	6,s	;, t.512
   53C2 BC C9 32      [ 7] 5061 	cmpx	_ex+2	;cmphi:(R)	;, ex
   53C5 24 11         [ 3] 5062 	bhs	L228	;
   53C7                    5063 L240:
   53C7 EC 66         [ 6] 5064 	ldd	6,s	;, t.512
   53C9 C3 FF FF      [ 4] 5065 	addd	#-1	;,
   53CC FD C9 32      [ 6] 5066 	std	_ex+2	;, ex
   53CF EC 64         [ 6] 5067 	ldd	4,s	;, t.512
   53D1 C9 FF         [ 2] 5068 	adcb	#-1	;
   53D3 89 FF         [ 2] 5069 	adca	#-1	;
   53D5 FD C9 30      [ 6] 5070 	std	_ex	;, ex
   53D8                    5071 L228:
                           5072 ;----- asm -----
                           5073 ; 2011 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5074 	; #ENR#[1392]cs = cs + lv;
                           5075 ;--- end asm ---
   53D8 F6 C9 2F      [ 5] 5076 	ldb	_lv	;, lv
   53DB 4F            [ 2] 5077 	clra		;zero_extendqihi: R:b -> R:d	;,
   53DC 1F 03         [ 6] 5078 	tfr	d,u	;, D.3691
   53DE FC C9 36      [ 6] 5079 	ldd	_cs	;, cs
   53E1 30 CB         [ 8] 5080 	leax	d,u	;,, D.3691
   53E3 BF C9 36      [ 6] 5081 	stx	_cs	;, cs
                           5082 ;----- asm -----
                           5083 ; 2013 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5084 	; #ENR#[1393]su = su +lv;
                           5085 ;--- end asm ---
   53E6 1F 30         [ 6] 5086 	tfr	u,d	; D.3691,
   53E8 F3 C9 34      [ 7] 5087 	addd	_su; addhi3,3	;, su
   53EB FD C9 34      [ 6] 5088 	std	_su	;, su
                           5089 ;----- asm -----
                           5090 ; 2016 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5091 	; #ENR#[1395]_fi_s(, (unsigned int)tmp);
                           5092 ;--- end asm ---
   53EE E6 62         [ 5] 5093 	ldb	2,s	;, D.3681
   53F0 8E 52 AE      [ 3] 5094 	ldx	#LC95	;,
   53F3 BD 5B BD      [ 8] 5095 	jsr	__fi_s
                           5096 ;----- asm -----
                           5097 ; 2018 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5098 	; #ENR#[1396]printmessage(stringbuffer40);
                           5099 ;--- end asm ---
   53F6 8E C8 BF      [ 3] 5100 	ldx	#_stringBuffer40	;,
   53F9 BD 5A 71      [ 8] 5101 	jsr	_printMessage
                           5102 ;----- asm -----
                           5103 ; 2020 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5104 	; #ENR#[1397]return;
                           5105 ;--- end asm ---
   53FC 16 00 DA      [ 5] 5106 	lbra	L238	;
   53FF                    5107 L226:
                           5108 ;----- asm -----
                           5109 ; 2027 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5110 	; #ENR#[1403]if (lv >1)
                           5111 ;--- end asm ---
   53FF E6 61         [ 5] 5112 	ldb	1,s	;, lv.92
   5401 C1 01         [ 2] 5113 	cmpb	#1	;cmpqi:	;,
   5403 22 08         [ 3] 5114 	bhi	L231	;
   5405 8E 00 00      [ 3] 5115 	ldx	#0	; t,
   5408 CC 00 00      [ 3] 5116 	ldd	#0	; t,
   540B 20 45         [ 3] 5117 	bra	L232	;
   540D                    5118 L231:
   540D E6 61         [ 5] 5119 	ldb	1,s	;, lv.92
   540F CB FE         [ 2] 5120 	addb	#-2	;,
   5411 E7 61         [ 5] 5121 	stb	1,s	;, lv.92
   5413 4F            [ 2] 5122 	clra		;zero_extendqihi: R:b -> R:d	;,
   5414 1F 01         [ 6] 5123 	tfr	d,x	;, tmp65
   5416 E6 61         [ 5] 5124 	ldb	1,s	;, lv.92
   5418 CB 02         [ 2] 5125 	addb	#2	;,
   541A E7 61         [ 5] 5126 	stb	1,s	;, lv.92
   541C 34 10         [ 6] 5127 	pshs	x	; tmp65
   541E 32 7C         [ 5] 5128 	leas	-4,s	;,,
   5420 CC 00 00      [ 3] 5129 	ldd	#0	;,
   5423 ED E4         [ 5] 5130 	std	,s	;,
   5425 CC 00 02      [ 3] 5131 	ldd	#2	;,
   5428 ED 62         [ 6] 5132 	std	2,s	;,
   542A 30 E8 12      [ 5] 5133 	leax	18,s	;,,
   542D BD 6F C0      [ 8] 5134 	jsr	___ashlsi3
   5430 32 7E         [ 5] 5135 	leas	-2,s	;,,
   5432 CC 00 00      [ 3] 5136 	ldd	#0	;,
   5435 ED 64         [ 6] 5137 	std	4,s	;,
   5437 8E 03 E8      [ 3] 5138 	ldx	#1000	;,
   543A AF 66         [ 6] 5139 	stx	6,s	;,
   543C EC E8 14      [ 6] 5140 	ldd	20,s	;,
   543F ED E4         [ 5] 5141 	std	,s	;,
   5441 AE E8 16      [ 6] 5142 	ldx	22,s	;,
   5444 AF 62         [ 6] 5143 	stx	2,s	;,
   5446 30 E8 10      [ 5] 5144 	leax	16,s	;,,
   5449 BD 76 A6      [ 8] 5145 	jsr	___mulsi3
   544C 32 68         [ 5] 5146 	leas	8,s	;,,
   544E AE 68         [ 6] 5147 	ldx	8,s	; t,
   5450 EC 6A         [ 6] 5148 	ldd	10,s	; t,
   5452                    5149 L232:
                           5150 ;----- asm -----
                           5151 ; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5152 	; #ENR#[1416]if (ex>=t) return;
                           5153 ;--- end asm ---
   5452 34 40         [ 6] 5154 	pshs	u	;cmphi: R:u with R:x	; ex.93, t
   5454 AC E1         [ 9] 5155 	cmpx	,s++	;cmphi:	; t
   5456 22 0D         [ 3] 5156 	bhi	L241	;
   5458 10 26 00 7D   [ 6] 5157 	lbne	L238	;
   545C 34 20         [ 6] 5158 	pshs	y	;cmphi: R:y with R:d	; ex.93, t
   545E 10 A3 E1      [10] 5159 	cmpd	,s++	;cmphi:	; t
   5461 10 23 00 74   [ 6] 5160 	lbls	L238	;
   5465                    5161 L241:
   5465 E6 61         [ 5] 5162 	ldb	1,s	;, lv.92
   5467 4F            [ 2] 5163 	clra		;zero_extendqihi: R:b -> R:d	;,
   5468 1F 01         [ 6] 5164 	tfr	d,x	;, temp.515
   546A FC C9 36      [ 6] 5165 	ldd	_cs	; cs.516, cs
   546D 34 06         [ 7] 5166 	pshs	d	;cmphi: R:d with R:x	; cs.516, temp.515
   546F AC E1         [ 9] 5167 	cmpx	,s++	;cmphi:	; temp.515
   5471 23 05         [ 3] 5168 	bls	L234	;
   5473 CC 00 00      [ 3] 5169 	ldd	#0	;,
   5476 20 04         [ 3] 5170 	bra	L242	;
   5478                    5171 L234:
   5478 34 10         [ 6] 5172 	pshs	x	;subhi: R:d -= R:x	; temp.515, tmp75
   547A A3 E1         [ 9] 5173 	subd	,s++	; tmp75
   547C                    5174 L242:
   547C FD C9 36      [ 6] 5175 	std	_cs	; tmp75, cs
                           5176 ;----- asm -----
                           5177 ; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5178 	; #ENR#[1421]su = su -lv;
                           5179 ;--- end asm ---
   547F FC C9 34      [ 6] 5180 	ldd	_su	; su, su
   5482 34 10         [ 6] 5181 	pshs	x	;subhi: R:d -= R:x	; temp.515, tmp77
   5484 A3 E1         [ 9] 5182 	subd	,s++	; tmp77
   5486 FD C9 34      [ 6] 5183 	std	_su	; tmp77, su
                           5184 ;----- asm -----
                           5185 ; 2051 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5186 	; #ENR#[1424]printmessage();
                           5187 ;--- end asm ---
   5489 8E 52 C4      [ 3] 5188 	ldx	#LC96	;,
   548C BD 5A 71      [ 8] 5189 	jsr	_printMessage
                           5190 ;----- asm -----
                           5191 ; 2053 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5192 	; #ENR#[1425]lv = lv -1;
                           5193 ;--- end asm ---
   548F 7A C9 2F      [ 7] 5194 	dec	_lv	; lv
                           5195 ;----- asm -----
                           5196 ; 2055 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5197 	; #ENR#[1426]tmp = (signed int)(randmax(s[con])+1);
                           5198 ;--- end asm ---
   5492 F6 C9 46      [ 5] 5199 	ldb	_s+3	;, s
   5495 BD 5E 21      [ 8] 5200 	jsr	_RandMax
   5498 5C            [ 2] 5201 	incb	;
   5499 E7 63         [ 5] 5202 	stb	3,s	;, D.3702
   549B F7 C8 FE      [ 5] 5203 	stb	_tmp	;, tmp
                           5204 ;----- asm -----
                           5205 ; 2063 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5206 	; #ENR#[1433]if ((ch<tmp) || (lv == 0))
                           5207 ;--- end asm ---
   549E FE C9 2D      [ 6] 5208 	ldu	_ch	; ch.521, ch
   54A1 1D            [ 2] 5209 	sex		;extendqihi2: R:b -> R:d	;,
   54A2 1F 01         [ 6] 5210 	tfr	d,x	;, temp.522
   54A4 34 06         [ 7] 5211 	pshs	d	;cmphi: R:d with R:u	; temp.522, ch.521
   54A6 11 A3 E1      [10] 5212 	cmpu	,s++	;cmphi:	; ch.521
   54A9 2D 05         [ 3] 5213 	blt	L236	;
   54AB 7D C9 2F      [ 7] 5214 	tst	_lv	; lv
   54AE 26 08         [ 3] 5215 	bne	L237	;
   54B0                    5216 L236:
                           5217 ;----- asm -----
                           5218 ; 2066 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5219 	; #ENR#[1435]ch=0;
                           5220 ;--- end asm ---
   54B0 CC 00 00      [ 3] 5221 	ldd	#0	;,
   54B3 FD C9 2D      [ 6] 5222 	std	_ch	;, ch
                           5223 ;----- asm -----
                           5224 ; 2068 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5225 	; #ENR#[1436]return;
                           5226 ;--- end asm ---
   54B6 20 21         [ 3] 5227 	bra	L238	;
   54B8                    5228 L237:
                           5229 ;----- asm -----
                           5230 ; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5231 	; #ENR#[1438]ch = ch -tmp;
                           5232 ;--- end asm ---
   54B8 1F 30         [ 6] 5233 	tfr	u,d	; ch.521, tmp80
   54BA 34 10         [ 6] 5234 	pshs	x	;subhi: R:d -= R:x	; temp.522, tmp80
   54BC A3 E1         [ 9] 5235 	subd	,s++	; tmp80
   54BE FD C9 2D      [ 6] 5236 	std	_ch	; tmp80, ch
                           5237 ;----- asm -----
                           5238 ; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5239 	; #ENR#[1439]hp = hp -(long signed int)tmp;
                           5240 ;--- end asm ---
   54C1 FC C9 2B      [ 6] 5241 	ldd	_hp	; hp, hp
   54C4 34 10         [ 6] 5242 	pshs	x	;subhi: R:d -= R:x	; temp.522, tmp82
   54C6 A3 E1         [ 9] 5243 	subd	,s++	; tmp82
   54C8 FD C9 2B      [ 6] 5244 	std	_hp	; tmp82, hp
                           5245 ;----- asm -----
                           5246 ; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5247 	; #ENR#[1440]_fi_s(, (unsigned int)tmp);
                           5248 ;--- end asm ---
   54CB E6 63         [ 5] 5249 	ldb	3,s	;, D.3702
   54CD 8E 52 D9      [ 3] 5250 	ldx	#LC97	;,
   54D0 BD 5B BD      [ 8] 5251 	jsr	__fi_s
                           5252 ;----- asm -----
                           5253 ; 2077 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5254 	; #ENR#[1441]printmessage(stringbuffer40);
                           5255 ;--- end asm ---
   54D3 8E C8 BF      [ 3] 5256 	ldx	#_stringBuffer40	;,
   54D6 BD 5A 71      [ 8] 5257 	jsr	_printMessage
                           5258 ;----- asm -----
                           5259 ; 2079 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5260 	; #ENR#[1442]return;
                           5261 ;--- end asm ---
   54D9                    5262 L238:
   54D9 32 E8 10      [ 5] 5263 	leas	16,s	;,,
   54DC 35 E0         [ 8] 5264 	puls	y,u,pc	;
   54DE                    5265 LC98:
   54DE 59 4F 55 20 47 41  5266 	.ascii	"YOU GAINED % EXPERIENCE POINTS\0"
        49 4E 45 44 20 25
        20 45 58 50 45 52
        49 45 4E 43 45 20
        50 4F 49 4E 54 53
        00
   54FD                    5267 LC99:
   54FD 59 4F 55 20 4C 4F  5268 	.ascii	"YOU LOST % EXPERIENCE POINTS\0"
        53 54 20 25 20 45
        58 50 45 52 49 45
        4E 43 45 20 50 4F
        49 4E 54 53 00
                           5269 	.globl	_randomXP
   551A                    5270 _randomXP:
   551A 32 70         [ 5] 5271 	leas	-16,s	;,,
                           5272 ;----- asm -----
                           5273 ; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5274 	; #ENR#[1456]ltmp = (signed long int) ( ul(randmax(cz)+1)*ul(500));
                           5275 ;--- end asm ---
   551C F6 C9 3A      [ 5] 5276 	ldb	_cz	;, cz
   551F BD 5E 21      [ 8] 5277 	jsr	_RandMax
   5522 5C            [ 2] 5278 	incb	; D.3711
   5523 4F            [ 2] 5279 	clra		;zero_extendqihi: R:b -> R:d	; D.3711,
   5524 ED 6A         [ 6] 5280 	std	10,s	;,
   5526 58            [ 2] 5281 	aslb	;
   5527 49            [ 2] 5282 	rola	;
   5528 58            [ 2] 5283 	aslb	;
   5529 49            [ 2] 5284 	rola	;
   552A ED 68         [ 6] 5285 	std	8,s	;,
   552C 58            [ 2] 5286 	aslb	;
   552D 49            [ 2] 5287 	rola	;
   552E 58            [ 2] 5288 	aslb	;
   552F 49            [ 2] 5289 	rola	;
   5530 58            [ 2] 5290 	aslb	;
   5531 49            [ 2] 5291 	rola	;
   5532 58            [ 2] 5292 	aslb	;
   5533 49            [ 2] 5293 	rola	;
   5534 58            [ 2] 5294 	aslb	;
   5535 49            [ 2] 5295 	rola	;
   5536 A3 68         [ 7] 5296 	subd	8,s	;subhi: R:d -= 8,s	; tmp35,
   5538 E3 6A         [ 7] 5297 	addd	10,s; addhi3,3	; tmp36,
   553A 58            [ 2] 5298 	aslb	;
   553B 49            [ 2] 5299 	rola	;
   553C 58            [ 2] 5300 	aslb	;
   553D 49            [ 2] 5301 	rola	;
   553E FD C9 02      [ 6] 5302 	std	_ltmp	; tmp36, ltmp
                           5303 ;----- asm -----
                           5304 ; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5305 	; #ENR#[1457]if (randmax(2) == 1)
                           5306 ;--- end asm ---
   5541 C6 02         [ 2] 5307 	ldb	#2	;,
   5543 BD 5E 21      [ 8] 5308 	jsr	_RandMax
   5546 C1 01         [ 2] 5309 	cmpb	#1	;cmpqi:	; D.3716,
   5548 26 31         [ 3] 5310 	bne	L244	;
                           5311 ;----- asm -----
                           5312 ; 2100 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5313 	; #ENR#[1460]_fl_s(,  ul(ltmp));
                           5314 ;--- end asm ---
   554A BE C9 02      [ 6] 5315 	ldx	_ltmp	;, ltmp
   554D AF E3         [ 8] 5316 	stx	,--s	;,
   554F 8E 54 DE      [ 3] 5317 	ldx	#LC98	;,
   5552 BD 5E 66      [ 8] 5318 	jsr	__fl_s
                           5319 ;----- asm -----
                           5320 ; 2102 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5321 	; #ENR#[1461]ex += ull(ltmp);
                           5322 ;--- end asm ---
   5555 FC C9 02      [ 6] 5323 	ldd	_ltmp	;, ltmp
   5558 ED 68         [ 6] 5324 	std	8,s	;,
   555A 1F 89         [ 6] 5325 	tfr	a,b	;,
   555C 1D            [ 2] 5326 	sex		;extendqihi2: R:b -> R:d	;,
   555D 59            [ 2] 5327 	rolb	;
   555E 59            [ 2] 5328 	rolb	;
   555F C4 01         [ 2] 5329 	andb	#1	;,
   5561 50            [ 2] 5330 	negb	;
   5562 ED 66         [ 6] 5331 	std	6,s	;,
   5564 FC C9 32      [ 6] 5332 	ldd	_ex+2	;, ex
   5567 E3 68         [ 7] 5333 	addd	8,s	;,
   5569 FD C9 32      [ 6] 5334 	std	_ex+2	;, ex
   556C FC C9 30      [ 6] 5335 	ldd	_ex	;, ex
   556F E9 67         [ 5] 5336 	adcb	7,s	;
   5571 A9 66         [ 5] 5337 	adca	6,s	;
   5573 FD C9 30      [ 6] 5338 	std	_ex	;, ex
   5576 32 62         [ 5] 5339 	leas	2,s	;,,
   5578 16 00 56      [ 5] 5340 	lbra	L245	;
   557B                    5341 L244:
                           5342 ;----- asm -----
                           5343 ; 2108 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5344 	; #ENR#[1466]_fl_s(, ul(ltmp));
                           5345 ;--- end asm ---
   557B BE C9 02      [ 6] 5346 	ldx	_ltmp	;, ltmp
   557E AF E3         [ 8] 5347 	stx	,--s	;,
   5580 8E 54 FD      [ 3] 5348 	ldx	#LC99	;,
   5583 BD 5E 66      [ 8] 5349 	jsr	__fl_s
                           5350 ;----- asm -----
                           5351 ; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5352 	; #ENR#[1467]if (ull(lltmp) > ex) ex = 0;
                           5353 ;--- end asm ---
   5586 FC C9 30      [ 6] 5354 	ldd	_ex	;, ex
   5589 ED 6E         [ 6] 5355 	std	14,s	;, ex.533
   558B BE C9 32      [ 6] 5356 	ldx	_ex+2	;, ex
   558E AF E8 10      [ 6] 5357 	stx	16,s	;, ex.533
   5591 32 62         [ 5] 5358 	leas	2,s	;,,
   5593 EC 6C         [ 6] 5359 	ldd	12,s	;, ex.533
   5595 10 B3 C9 04   [ 8] 5360 	cmpd	_lltmp	;cmphi:(R)	;, lltmp
   5599 25 0A         [ 3] 5361 	blo	L249	;
   559B 26 13         [ 3] 5362 	bne	L246	;
   559D EC 6E         [ 6] 5363 	ldd	14,s	;, ex.533
   559F 10 B3 C9 06   [ 8] 5364 	cmpd	_lltmp+2	;cmphi:(R)	;, lltmp
   55A3 24 0B         [ 3] 5365 	bhs	L246	;
   55A5                    5366 L249:
   55A5 CC 00 00      [ 3] 5367 	ldd	#0	;,
   55A8 FD C9 30      [ 6] 5368 	std	_ex	;, ex
   55AB FD C9 32      [ 6] 5369 	std	_ex+2	;, ex
   55AE 20 21         [ 3] 5370 	bra	L245	;
   55B0                    5371 L246:
   55B0 BE C9 02      [ 6] 5372 	ldx	_ltmp	;, ltmp
   55B3 AF 62         [ 6] 5373 	stx	2,s	;,
   55B5 1F 10         [ 6] 5374 	tfr	x,d	;,
   55B7 1F 89         [ 6] 5375 	tfr	a,b	;,
   55B9 1D            [ 2] 5376 	sex		;extendqihi2: R:b -> R:d	;,
   55BA 59            [ 2] 5377 	rolb	;
   55BB 59            [ 2] 5378 	rolb	;
   55BC C4 01         [ 2] 5379 	andb	#1	;,
   55BE 50            [ 2] 5380 	negb	;
   55BF ED E4         [ 5] 5381 	std	,s	;,
   55C1 EC 6E         [ 6] 5382 	ldd	14,s	;, ex.533
   55C3 A3 62         [ 7] 5383 	subd	2,s	;,
   55C5 FD C9 32      [ 6] 5384 	std	_ex+2	;, ex
   55C8 EC 6C         [ 6] 5385 	ldd	12,s	;, ex.533
   55CA E2 61         [ 5] 5386 	sbcb	1,s	;
   55CC A2 E4         [ 4] 5387 	sbca	,s	;
   55CE FD C9 30      [ 6] 5388 	std	_ex	;, ex
   55D1                    5389 L245:
                           5390 ;----- asm -----
                           5391 ; 2115 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5392 	; #ENR#[1471]printmessage(stringbuffer40);
                           5393 ;--- end asm ---
   55D1 8E C8 BF      [ 3] 5394 	ldx	#_stringBuffer40	;,
   55D4 BD 5A 71      [ 8] 5395 	jsr	_printMessage
                           5396 ;----- asm -----
                           5397 ; 2117 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5398 	; #ENR#[1472]checkxp();
                           5399 ;--- end asm ---
   55D7 BD 52 EF      [ 8] 5400 	jsr	_checkXP
   55DA 32 E8 10      [ 5] 5401 	leas	16,s	;,,
   55DD 39            [ 5] 5402 	rts
                           5403 	.globl	_clearMap
   55DE                    5404 _clearMap:
   55DE 34 40         [ 6] 5405 	pshs	u	;
   55E0 32 7C         [ 5] 5406 	leas	-4,s	;,,
                           5407 ;----- asm -----
                           5408 ; 2123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5409 	; #ENR#[1477]for (unsigned char yy=0;yy<4;yy++)
                           5410 ;--- end asm ---
   55E2 6F 63         [ 7] 5411 	clr	3,s	; yy
   55E4                    5412 L252:
                           5413 ;----- asm -----
                           5414 ; 2126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5415 	; #ENR#[1479]for (unsigned char xx=0;xx<4;xx++)
                           5416 ;--- end asm ---
   55E4 E6 63         [ 5] 5417 	ldb	3,s	;, yy
   55E6 4F            [ 2] 5418 	clra		;zero_extendqihi: R:b -> R:d	;,
   55E7 ED E4         [ 5] 5419 	std	,s	;,
   55E9 58            [ 2] 5420 	aslb	;
   55EA 49            [ 2] 5421 	rola	;
   55EB 58            [ 2] 5422 	aslb	;
   55EC 49            [ 2] 5423 	rola	;
   55ED 58            [ 2] 5424 	aslb	;
   55EE 49            [ 2] 5425 	rola	;
   55EF CE C8 80      [ 3] 5426 	ldu	#_screen	;,
   55F2 30 CB         [ 8] 5427 	leax	d,u	; ivtmp.549, tmp39,
   55F4 6F 62         [ 7] 5428 	clr	2,s	; xx
   55F6                    5429 L251:
                           5430 ;----- asm -----
                           5431 ; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5432 	; #ENR#[1481]screen[yy][xx] = 0xffff;
                           5433 ;--- end asm ---
   55F6 CC FF FF      [ 3] 5434 	ldd	#-1	;,
   55F9 ED 81         [ 8] 5435 	std	,x++	;, screen
   55FB 6C 62         [ 7] 5436 	inc	2,s	; xx
   55FD E6 62         [ 5] 5437 	ldb	2,s	;, xx
   55FF C1 04         [ 2] 5438 	cmpb	#4	;cmpqi:	;,
   5601 26 F3         [ 3] 5439 	bne	L251	;
   5603 6C 63         [ 7] 5440 	inc	3,s	; yy
   5605 E6 63         [ 5] 5441 	ldb	3,s	;, yy
   5607 C1 04         [ 2] 5442 	cmpb	#4	;cmpqi:	;,
   5609 26 D9         [ 3] 5443 	bne	L252	;
   560B 32 64         [ 5] 5444 	leas	4,s	;,,
   560D 35 C0         [ 7] 5445 	puls	u,pc	;
                           5446 	.globl	_initVars
   560F                    5447 _initVars:
   560F 34 40         [ 6] 5448 	pshs	u	;
   5611 32 7D         [ 5] 5449 	leas	-3,s	;,,
                           5450 ;----- asm -----
                           5451 ; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5452 	; #ENR#[1488]initfp();
                           5453 ;--- end asm ---
   5613 C6 01         [ 2] 5454 	ldb	#1	;,
   5615 BD 00 6E      [ 8] 5455 	jsr	_subBank0
                           5456 ;----- asm -----
                           5457 ; 2139 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5458 	; #ENR#[1489]initstring();
                           5459 ;--- end asm ---
   5618 BD 67 61      [ 8] 5460 	jsr	_initString
                           5461 ;----- asm -----
                           5462 ; 2141 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5463 	; #ENR#[1490]lastx=0;
                           5464 ;--- end asm ---
   561B 7F C9 BC      [ 7] 5465 	clr	_lastX	; lastX
                           5466 ;----- asm -----
                           5467 ; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5468 	; #ENR#[1491]lasty=0;
                           5469 ;--- end asm ---
   561E 7F C9 BD      [ 7] 5470 	clr	_lastY	; lastY
                           5471 ;----- asm -----
                           5472 ; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5473 	; #ENR#[1492]clearmap();
                           5474 ; 2123 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5475 	; #ENR#[1477]for (unsigned char yy=0;yy<4;yy++)
                           5476 ;--- end asm ---
   5621 6F 62         [ 7] 5477 	clr	2,s	; yy
   5623                    5478 L258:
                           5479 ;----- asm -----
                           5480 ; 2126 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5481 	; #ENR#[1479]for (unsigned char xx=0;xx<4;xx++)
                           5482 ;--- end asm ---
   5623 E6 62         [ 5] 5483 	ldb	2,s	;, yy
   5625 4F            [ 2] 5484 	clra		;zero_extendqihi: R:b -> R:d	;,
   5626 ED E4         [ 5] 5485 	std	,s	;,
   5628 58            [ 2] 5486 	aslb	;
   5629 49            [ 2] 5487 	rola	;
   562A 58            [ 2] 5488 	aslb	;
   562B 49            [ 2] 5489 	rola	;
   562C 58            [ 2] 5490 	aslb	;
   562D 49            [ 2] 5491 	rola	;
   562E CE C8 80      [ 3] 5492 	ldu	#_screen	;,
   5631 30 CB         [ 8] 5493 	leax	d,u	; ivtmp.571, tmp37,
   5633 5F            [ 2] 5494 	clrb	; xx
   5634                    5495 L257:
                           5496 ;----- asm -----
                           5497 ; 2129 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5498 	; #ENR#[1481]screen[yy][xx] = 0xffff;
                           5499 ;--- end asm ---
   5634 CE FF FF      [ 3] 5500 	ldu	#-1	; tmp38,
   5637 EF 81         [ 8] 5501 	stu	,x++	; tmp38, screen
   5639 5C            [ 2] 5502 	incb	; xx
   563A C1 04         [ 2] 5503 	cmpb	#4	;cmpqi:	; xx,
   563C 26 F6         [ 3] 5504 	bne	L257	;
   563E 6C 62         [ 7] 5505 	inc	2,s	; yy
   5640 E6 62         [ 5] 5506 	ldb	2,s	;, yy
   5642 C1 04         [ 2] 5507 	cmpb	#4	;cmpqi:	;,
   5644 26 DD         [ 3] 5508 	bne	L258	;
                           5509 ;----- asm -----
                           5510 ; 2147 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5511 	; #ENR#[1493]fillmap = go_redraw;
                           5512 ;--- end asm ---
   5646 C6 7F         [ 2] 5513 	ldb	#127	;,
   5648 F7 C8 FC      [ 5] 5514 	stb	_fillMap	;, fillMap
                           5515 ;----- asm -----
                           5516 ; 2149 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5517 	; #ENR#[1494]timer = action_time;
                           5518 ;--- end asm ---
   564B C6 FA         [ 2] 5519 	ldb	#-6	;,
   564D F7 C8 A7      [ 5] 5520 	stb	_timer	;, timer
                           5521 ;----- asm -----
                           5522 ; 2151 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5523 	; #ENR#[1495]localtimer = action_time;
                           5524 ;--- end asm ---
   5650 F7 C8 A8      [ 5] 5525 	stb	_localTimer	;, localTimer
                           5526 ;----- asm -----
                           5527 ; 2153 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5528 	; #ENR#[1496]l = 1;
                           5529 ;--- end asm ---
   5653 C6 01         [ 2] 5530 	ldb	#1	;,
   5655 F7 C9 6B      [ 5] 5531 	stb	_l	;, l
                           5532 ;----- asm -----
                           5533 ; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5534 	; #ENR#[1498]tmp_hp = -1;
                           5535 ;--- end asm ---
   5658 FF C9 08      [ 6] 5536 	stu	_tmp_hp	; tmp38, tmp_hp
                           5537 ;----- asm -----
                           5538 ; 2158 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5539 	; #ENR#[1499]above = 0;
                           5540 ;--- end asm ---
   565B 7F C8 A0      [ 7] 5541 	clr	_above	; above
                           5542 ;----- asm -----
                           5543 ; 2160 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5544 	; #ENR#[1500]inelevator = 0;
                           5545 ;--- end asm ---
   565E 7F C8 A2      [ 7] 5546 	clr	_inElevator	; inElevator
                           5547 ;----- asm -----
                           5548 ; 2162 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5549 	; #ENR#[1501]elevatory = 0;
                           5550 ;--- end asm ---
   5661 7F C8 A3      [ 7] 5551 	clr	_elevatorY	; elevatorY
                           5552 ;----- asm -----
                           5553 ; 2164 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5554 	; #ENR#[1502]lightchange = 0;
                           5555 ;--- end asm ---
   5664 7F C8 A4      [ 7] 5556 	clr	_lightChange	; lightChange
                           5557 ;----- asm -----
                           5558 ; 2166 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5559 	; #ENR#[1503]specialaction = 0;
                           5560 ;--- end asm ---
   5667 7F C8 A5      [ 7] 5561 	clr	_specialAction	; specialAction
                           5562 ;----- asm -----
                           5563 ; 2168 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5564 	; #ENR#[1504]initsoundno = 0;
                           5565 ;--- end asm ---
   566A 7F C8 A6      [ 7] 5566 	clr	_initSoundNo	; initSoundNo
                           5567 ;----- asm -----
                           5568 ; 2170 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5569 	; #ENR#[1505]sfx_status_1 = 0;
                           5570 ;--- end asm ---
   566D 7F CA BA      [ 7] 5571 	clr	_sfx_status_1	; sfx_status_1
                           5572 ;----- asm -----
                           5573 ; 2173 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5574 	; #ENR#[1507]printdungeon = 1;
                           5575 ;--- end asm ---
   5670 F7 C8 F3      [ 5] 5576 	stb	_printDungeon	;, printDungeon
                           5577 ;----- asm -----
                           5578 ; 2175 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5579 	; #ENR#[1508]m = -1;
                           5580 ;--- end asm ---
   5673 1F 30         [ 6] 5581 	tfr	u,d	; tmp38,
   5675 F7 C9 62      [ 5] 5582 	stb	_m	;movlsbqihi: R:d -> _m	; m,
                           5583 ;----- asm -----
                           5584 ; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5585 	; #ENR#[1509]printenvironment = -1;
                           5586 ;--- end asm ---
   5678 F7 C8 F4      [ 5] 5587 	stb	_printEnvironment	;movlsbqihi: R:d -> _printEnvironment	; printEnvironment,
                           5588 ;----- asm -----
                           5589 ; 2179 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5590 	; #ENR#[1510]printcharacter = 1;
                           5591 ;--- end asm ---
   567B C6 01         [ 2] 5592 	ldb	#1	;,
   567D F7 C8 F7      [ 5] 5593 	stb	_printCharacter	;, printCharacter
                           5594 ;----- asm -----
                           5595 ; 2181 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5596 	; #ENR#[1511]printtreasure = -1;
                           5597 ;--- end asm ---
   5680 1F 30         [ 6] 5598 	tfr	u,d	; tmp38,
   5682 F7 C8 F5      [ 5] 5599 	stb	_printTreasure	;movlsbqihi: R:d -> _printTreasure	; printTreasure,
                           5600 ;----- asm -----
                           5601 ; 2184 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5602 	; #ENR#[1513]printfeffect = 0;
                           5603 ;--- end asm ---
   5685 7F C8 F8      [ 7] 5604 	clr	_printfEffect	; printfEffect
                           5605 ;----- asm -----
                           5606 ; 2186 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5607 	; #ENR#[1514]effecttimer = 0;
                           5608 ;--- end asm ---
   5688 7F C8 F9      [ 7] 5609 	clr	_effectTimer	; effectTimer
                           5610 ;----- asm -----
                           5611 ; 2188 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5612 	; #ENR#[1515]effectoffsety = 0;
                           5613 ;--- end asm ---
   568B 7F C8 FA      [ 7] 5614 	clr	_effectOffsetY	; effectOffsetY
                           5615 ;----- asm -----
                           5616 ; 2190 "C:\Dev\Vide\projects\Telengard\source\bank1\mainSupport.enr.c" 1
                           5617 	; #ENR#[1516]effectoffsetx = 0;
                           5618 ;--- end asm ---
   568E 7F C8 FB      [ 7] 5619 	clr	_effectOffsetX	; effectOffsetX
   5691 32 63         [ 5] 5620 	leas	3,s	;,,
   5693 35 C0         [ 7] 5621 	puls	u,pc	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$mainSupport$     0487 GR  |   2 A$mainSupport$     048A GR
  2 A$mainSupport$     048C GR  |   2 A$mainSupport$     048F GR
  2 A$mainSupport$     0492 GR  |   2 A$mainSupport$     0495 GR
  2 A$mainSupport$     0497 GR  |   2 A$mainSupport$     0499 GR
  2 A$mainSupport$     049C GR  |   2 A$mainSupport$     049F GR
  2 A$mainSupport$     04A1 GR  |   2 A$mainSupport$     04A2 GR
  2 A$mainSupport$     04A4 GR  |   2 A$mainSupport$     04A7 GR
  2 A$mainSupport$     04AA GR  |   2 A$mainSupport$     04AC GR
  2 A$mainSupport$     04AF GR  |   2 A$mainSupport$     00D8 GR
  2 A$mainSupport$     04B1 GR  |   2 A$mainSupport$     04B4 GR
  2 A$mainSupport$     04B6 GR  |   2 A$mainSupport$     04B8 GR
  2 A$mainSupport$     04BA GR  |   2 A$mainSupport$     04BC GR
  2 A$mainSupport$     04BE GR  |   2 A$mainSupport$     04C0 GR
  2 A$mainSupport$     04C2 GR  |   2 A$mainSupport$     04C3 GR
  2 A$mainSupport$     04C5 GR  |   2 A$mainSupport$     04C8 GR
  2 A$mainSupport$     04CB GR  |   2 A$mainSupport$     04CD GR
  2 A$mainSupport$     04D0 GR  |   2 A$mainSupport$     04D3 GR
  2 A$mainSupport$     04D5 GR  |   2 A$mainSupport$     04D8 GR
  2 A$mainSupport$     00DB GR  |   2 A$mainSupport$     04DB GR
  2 A$mainSupport$     04DD GR  |   2 A$mainSupport$     04E0 GR
  2 A$mainSupport$     04E3 GR  |   2 A$mainSupport$     04E4 GR
  2 A$mainSupport$     00DE GR  |   2 A$mainSupport$     04E6 GR
  2 A$mainSupport$     04E8 GR  |   2 A$mainSupport$     04EA GR
  2 A$mainSupport$     04ED GR  |   2 A$mainSupport$     04F1 GR
  2 A$mainSupport$     04F5 GR  |   2 A$mainSupport$     04F9 GR
  2 A$mainSupport$     04FD GR  |   2 A$mainSupport$     04FF GR
  2 A$mainSupport$     0500 GR  |   2 A$mainSupport$     0501 GR
  2 A$mainSupport$     0503 GR  |   2 A$mainSupport$     0507 GR
  2 A$mainSupport$     050B GR  |   2 A$mainSupport$     050D GR
  2 A$mainSupport$     0511 GR  |   2 A$mainSupport$     0513 GR
  2 A$mainSupport$     0515 GR  |   2 A$mainSupport$     0517 GR
  2 A$mainSupport$     0519 GR  |   2 A$mainSupport$     051C GR
  2 A$mainSupport$     00E0 GR  |   2 A$mainSupport$     051F GR
  2 A$mainSupport$     0522 GR  |   2 A$mainSupport$     0525 GR
  2 A$mainSupport$     0527 GR  |   2 A$mainSupport$     0529 GR
  2 A$mainSupport$     052C GR  |   2 A$mainSupport$     052E GR
  2 A$mainSupport$     0531 GR  |   2 A$mainSupport$     0535 GR
  2 A$mainSupport$     0537 GR  |   2 A$mainSupport$     0539 GR
  2 A$mainSupport$     053B GR  |   2 A$mainSupport$     053D GR
  2 A$mainSupport$     053F GR  |   2 A$mainSupport$     0542 GR
  2 A$mainSupport$     0545 GR  |   2 A$mainSupport$     0547 GR
  2 A$mainSupport$     0549 GR  |   2 A$mainSupport$     00E2 GR
  2 A$mainSupport$     054B GR  |   2 A$mainSupport$     054D GR
  2 A$mainSupport$     00E4 GR  |   2 A$mainSupport$     0550 GR
  2 A$mainSupport$     0553 GR  |   2 A$mainSupport$     0556 GR
  2 A$mainSupport$     00E6 GR  |   2 A$mainSupport$     0559 GR
  2 A$mainSupport$     055C GR  |   2 A$mainSupport$     055E GR
  2 A$mainSupport$     0560 GR  |   2 A$mainSupport$     00E8 GR
  2 A$mainSupport$     0563 GR  |   2 A$mainSupport$     0567 GR
  2 A$mainSupport$     056B GR  |   2 A$mainSupport$     056F GR
  2 A$mainSupport$     0573 GR  |   2 A$mainSupport$     0575 GR
  2 A$mainSupport$     0576 GR  |   2 A$mainSupport$     0577 GR
  2 A$mainSupport$     0579 GR  |   2 A$mainSupport$     057E GR
  2 A$mainSupport$     0583 GR  |   2 A$mainSupport$     0585 GR
  2 A$mainSupport$     0589 GR  |   2 A$mainSupport$     058B GR
  2 A$mainSupport$     058D GR  |   2 A$mainSupport$     0590 GR
  2 A$mainSupport$     0593 GR  |   2 A$mainSupport$     0596 GR
  2 A$mainSupport$     0599 GR  |   2 A$mainSupport$     059B GR
  2 A$mainSupport$     059D GR  |   2 A$mainSupport$     059F GR
  2 A$mainSupport$     05A1 GR  |   2 A$mainSupport$     05A4 GR
  2 A$mainSupport$     05A6 GR  |   2 A$mainSupport$     05A9 GR
  2 A$mainSupport$     00EA GR  |   2 A$mainSupport$     05AB GR
  2 A$mainSupport$     05AC GR  |   2 A$mainSupport$     05AE GR
  2 A$mainSupport$     05B1 GR  |   2 A$mainSupport$     05B3 GR
  2 A$mainSupport$     05B7 GR  |   2 A$mainSupport$     05BB GR
  2 A$mainSupport$     05BD GR  |   2 A$mainSupport$     05BE GR
  2 A$mainSupport$     05BF GR  |   2 A$mainSupport$     05C1 GR
  2 A$mainSupport$     05C4 GR  |   2 A$mainSupport$     05C8 GR
  2 A$mainSupport$     05CA GR  |   2 A$mainSupport$     05CE GR
  2 A$mainSupport$     05D0 GR  |   2 A$mainSupport$     00ED GR
  2 A$mainSupport$     0619 GR  |   2 A$mainSupport$     061B GR
  2 A$mainSupport$     061D GR  |   2 A$mainSupport$     0620 GR
  2 A$mainSupport$     0622 GR  |   2 A$mainSupport$     0625 GR
  2 A$mainSupport$     0627 GR  |   2 A$mainSupport$     0629 GR
  2 A$mainSupport$     062C GR  |   2 A$mainSupport$     062E GR
  2 A$mainSupport$     0630 GR  |   2 A$mainSupport$     0633 GR
  2 A$mainSupport$     0635 GR  |   2 A$mainSupport$     0637 GR
  2 A$mainSupport$     0639 GR  |   2 A$mainSupport$     063B GR
  2 A$mainSupport$     063D GR  |   2 A$mainSupport$     063F GR
  2 A$mainSupport$     0641 GR  |   2 A$mainSupport$     0643 GR
  2 A$mainSupport$     0647 GR  |   2 A$mainSupport$     0649 GR
  2 A$mainSupport$     064B GR  |   2 A$mainSupport$     00F0 GR
  2 A$mainSupport$     064E GR  |   2 A$mainSupport$     0650 GR
  2 A$mainSupport$     0653 GR  |   2 A$mainSupport$     0656 GR
  2 A$mainSupport$     0657 GR  |   2 A$mainSupport$     065B GR
  2 A$mainSupport$     065D GR  |   2 A$mainSupport$     0660 GR
  2 A$mainSupport$     0662 GR  |   2 A$mainSupport$     0665 GR
  2 A$mainSupport$     0668 GR  |   2 A$mainSupport$     066B GR
  2 A$mainSupport$     066E GR  |   2 A$mainSupport$     0671 GR
  2 A$mainSupport$     00F3 GR  |   2 A$mainSupport$     0674 GR
  2 A$mainSupport$     0676 GR  |   2 A$mainSupport$     0678 GR
  2 A$mainSupport$     067C GR  |   2 A$mainSupport$     067D GR
  2 A$mainSupport$     067F GR  |   2 A$mainSupport$     0681 GR
  2 A$mainSupport$     0683 GR  |   2 A$mainSupport$     0685 GR
  2 A$mainSupport$     0687 GR  |   2 A$mainSupport$     068B GR
  2 A$mainSupport$     068D GR  |   2 A$mainSupport$     068F GR
  2 A$mainSupport$     0691 GR  |   2 A$mainSupport$     0693 GR
  2 A$mainSupport$     0695 GR  |   2 A$mainSupport$     0698 GR
  2 A$mainSupport$     069B GR  |   2 A$mainSupport$     069D GR
  2 A$mainSupport$     06A0 GR  |   2 A$mainSupport$     06A2 GR
  2 A$mainSupport$     06A5 GR  |   2 A$mainSupport$     06A8 GR
  2 A$mainSupport$     06AB GR  |   2 A$mainSupport$     06AD GR
  2 A$mainSupport$     00F6 GR  |   2 A$mainSupport$     06AF GR
  2 A$mainSupport$     06B2 GR  |   2 A$mainSupport$     06B4 GR
  2 A$mainSupport$     06B7 GR  |   2 A$mainSupport$     06BA GR
  2 A$mainSupport$     00F8 GR  |   2 A$mainSupport$     06BC GR
  2 A$mainSupport$     06BF GR  |   2 A$mainSupport$     06C2 GR
  2 A$mainSupport$     06C5 GR  |   2 A$mainSupport$     06C8 GR
  2 A$mainSupport$     06CA GR  |   2 A$mainSupport$     06CD GR
  2 A$mainSupport$     06D0 GR  |   2 A$mainSupport$     06D3 GR
  2 A$mainSupport$     06D6 GR  |   2 A$mainSupport$     06D8 GR
  2 A$mainSupport$     06DB GR  |   2 A$mainSupport$     06DE GR
  2 A$mainSupport$     06E1 GR  |   2 A$mainSupport$     06E4 GR
  2 A$mainSupport$     06E6 GR  |   2 A$mainSupport$     06E9 GR
  2 A$mainSupport$     06EC GR  |   2 A$mainSupport$     06EF GR
  2 A$mainSupport$     06F1 GR  |   2 A$mainSupport$     06F4 GR
  2 A$mainSupport$     06F6 GR  |   2 A$mainSupport$     06F9 GR
  2 A$mainSupport$     06FC GR  |   2 A$mainSupport$     06FF GR
  2 A$mainSupport$     0702 GR  |   2 A$mainSupport$     0704 GR
  2 A$mainSupport$     0707 GR  |   2 A$mainSupport$     070A GR
  2 A$mainSupport$     070D GR  |   2 A$mainSupport$     070F GR
  2 A$mainSupport$     0712 GR  |   2 A$mainSupport$     0715 GR
  2 A$mainSupport$     0716 GR  |   2 A$mainSupport$     0719 GR
  2 A$mainSupport$     00FA GR  |   2 A$mainSupport$     071C GR
  2 A$mainSupport$     071F GR  |   2 A$mainSupport$     0722 GR
  2 A$mainSupport$     00FD GR  |   2 A$mainSupport$     0725 GR
  2 A$mainSupport$     0728 GR  |   2 A$mainSupport$     072B GR
  2 A$mainSupport$     072D GR  |   2 A$mainSupport$     00FF GR
  2 A$mainSupport$     0730 GR  |   2 A$mainSupport$     0733 GR
  2 A$mainSupport$     0735 GR  |   2 A$mainSupport$     0101 GR
  2 A$mainSupport$     0738 GR  |   2 A$mainSupport$     073A GR
  2 A$mainSupport$     0103 GR  |   2 A$mainSupport$     073D GR
  2 A$mainSupport$     0740 GR  |   2 A$mainSupport$     0105 GR
  2 A$mainSupport$     0744 GR  |   2 A$mainSupport$     0748 GR
  2 A$mainSupport$     074A GR  |   2 A$mainSupport$     074D GR
  2 A$mainSupport$     074F GR  |   2 A$mainSupport$     0107 GR
  2 A$mainSupport$     0752 GR  |   2 A$mainSupport$     0755 GR
  2 A$mainSupport$     0109 GR  |   2 A$mainSupport$     0758 GR
  2 A$mainSupport$     075B GR  |   2 A$mainSupport$     075E GR
  2 A$mainSupport$     0761 GR  |   2 A$mainSupport$     010B GR
  2 A$mainSupport$     0764 GR  |   2 A$mainSupport$     0767 GR
  2 A$mainSupport$     010C GR  |   2 A$mainSupport$     076A GR
  2 A$mainSupport$     076C GR  |   2 A$mainSupport$     0770 GR
  2 A$mainSupport$     0774 GR  |   2 A$mainSupport$     0776 GR
  2 A$mainSupport$     0777 GR  |   2 A$mainSupport$     0778 GR
  2 A$mainSupport$     077A GR  |   2 A$mainSupport$     077D GR
  2 A$mainSupport$     0781 GR  |   2 A$mainSupport$     0783 GR
  2 A$mainSupport$     0787 GR  |   2 A$mainSupport$     0789 GR
  2 A$mainSupport$     078B GR  |   2 A$mainSupport$     078D GR
  2 A$mainSupport$     0790 GR  |   2 A$mainSupport$     0792 GR
  2 A$mainSupport$     0795 GR  |   2 A$mainSupport$     0798 GR
  2 A$mainSupport$     079B GR  |   2 A$mainSupport$     079D GR
  2 A$mainSupport$     010E GR  |   2 A$mainSupport$     079F GR
  2 A$mainSupport$     07A1 GR  |   2 A$mainSupport$     07A4 GR
  2 A$mainSupport$     0110 GR  |   2 A$mainSupport$     07A7 GR
  2 A$mainSupport$     07A9 GR  |   2 A$mainSupport$     07AC GR
  2 A$mainSupport$     07AE GR  |   2 A$mainSupport$     07B1 GR
  2 A$mainSupport$     07B4 GR  |   2 A$mainSupport$     07B7 GR
  2 A$mainSupport$     07B9 GR  |   2 A$mainSupport$     0112 GR
  2 A$mainSupport$     07BB GR  |   2 A$mainSupport$     07BE GR
  2 A$mainSupport$     07C0 GR  |   2 A$mainSupport$     07C3 GR
  2 A$mainSupport$     07C5 GR  |   2 A$mainSupport$     07C8 GR
  2 A$mainSupport$     07CB GR  |   2 A$mainSupport$     07CE GR
  2 A$mainSupport$     0114 GR  |   2 A$mainSupport$     07D0 GR
  2 A$mainSupport$     07D2 GR  |   2 A$mainSupport$     07D5 GR
  2 A$mainSupport$     07D7 GR  |   2 A$mainSupport$     0116 GR
  2 A$mainSupport$     07DA GR  |   2 A$mainSupport$     07DC GR
  2 A$mainSupport$     07DF GR  |   2 A$mainSupport$     07E2 GR
  2 A$mainSupport$     07E5 GR  |   2 A$mainSupport$     07E7 GR
  2 A$mainSupport$     0118 GR  |   2 A$mainSupport$     07E9 GR
  2 A$mainSupport$     07EB GR  |   2 A$mainSupport$     07ED GR
  2 A$mainSupport$     07EF GR  |   2 A$mainSupport$     07F1 GR
  2 A$mainSupport$     07F5 GR  |   2 A$mainSupport$     07F7 GR
  2 A$mainSupport$     011A GR  |   2 A$mainSupport$     011C GR
  2 A$mainSupport$     0D11 GR  |   2 A$mainSupport$     011F GR
  2 A$mainSupport$     0D13 GR  |   2 A$mainSupport$     0D16 GR
  2 A$mainSupport$     0121 GR  |   2 A$mainSupport$     0D18 GR
  2 A$mainSupport$     0D1B GR  |   2 A$mainSupport$     0D1C GR
  2 A$mainSupport$     0D1E GR  |   2 A$mainSupport$     0D21 GR
  2 A$mainSupport$     0D23 GR  |   2 A$mainSupport$     0D25 GR
  2 A$mainSupport$     0D28 GR  |   2 A$mainSupport$     0D2A GR
  2 A$mainSupport$     0D2C GR  |   2 A$mainSupport$     0123 GR
  2 A$mainSupport$     0D2E GR  |   2 A$mainSupport$     0D30 GR
  2 A$mainSupport$     0D32 GR  |   2 A$mainSupport$     0125 GR
  2 A$mainSupport$     0D34 GR  |   2 A$mainSupport$     0D37 GR
  2 A$mainSupport$     0D3A GR  |   2 A$mainSupport$     0D3D GR
  2 A$mainSupport$     0D40 GR  |   2 A$mainSupport$     0D42 GR
  2 A$mainSupport$     0D44 GR  |   2 A$mainSupport$     0D47 GR
  2 A$mainSupport$     0D49 GR  |   2 A$mainSupport$     0D4B GR
  2 A$mainSupport$     0D4D GR  |   2 A$mainSupport$     0D4F GR
  2 A$mainSupport$     0D51 GR  |   2 A$mainSupport$     0D53 GR
  2 A$mainSupport$     0D55 GR  |   2 A$mainSupport$     0D56 GR
  2 A$mainSupport$     0D58 GR  |   2 A$mainSupport$     0D5A GR
  2 A$mainSupport$     0D5C GR  |   2 A$mainSupport$     0D5E GR
  2 A$mainSupport$     0D60 GR  |   2 A$mainSupport$     0129 GR
  2 A$mainSupport$     0D62 GR  |   2 A$mainSupport$     0D64 GR
  2 A$mainSupport$     0D66 GR  |   2 A$mainSupport$     0D68 GR
  2 A$mainSupport$     0D6A GR  |   2 A$mainSupport$     012B GR
  2 A$mainSupport$     0D6E GR  |   2 A$mainSupport$     0D71 GR
  2 A$mainSupport$     012D GR  |   2 A$mainSupport$     0D74 GR
  2 A$mainSupport$     0D76 GR  |   2 A$mainSupport$     0D78 GR
  2 A$mainSupport$     0D7A GR  |   2 A$mainSupport$     0D7C GR
  2 A$mainSupport$     0D7E GR  |   2 A$mainSupport$     0130 GR
  2 A$mainSupport$     0D80 GR  |   2 A$mainSupport$     0D81 GR
  2 A$mainSupport$     0D83 GR  |   2 A$mainSupport$     0D85 GR
  2 A$mainSupport$     0D87 GR  |   2 A$mainSupport$     0D89 GR
  2 A$mainSupport$     0D8B GR  |   2 A$mainSupport$     0D8D GR
  2 A$mainSupport$     0D8E GR  |   2 A$mainSupport$     0132 GR
  2 A$mainSupport$     0D90 GR  |   2 A$mainSupport$     0D92 GR
  2 A$mainSupport$     0D94 GR  |   2 A$mainSupport$     0D95 GR
  2 A$mainSupport$     0D96 GR  |   2 A$mainSupport$     0D97 GR
  2 A$mainSupport$     0D98 GR  |   2 A$mainSupport$     0D9A GR
  2 A$mainSupport$     0D9D GR  |   2 A$mainSupport$     0D9F GR
  2 A$mainSupport$     0DA2 GR  |   2 A$mainSupport$     0DA4 GR
  2 A$mainSupport$     0DA6 GR  |   2 A$mainSupport$     0DA8 GR
  2 A$mainSupport$     0DAA GR  |   2 A$mainSupport$     0DAD GR
  2 A$mainSupport$     0DAF GR  |   2 A$mainSupport$     0DB1 GR
  2 A$mainSupport$     0DB4 GR  |   2 A$mainSupport$     0DB6 GR
  2 A$mainSupport$     0DB9 GR  |   2 A$mainSupport$     0DBB GR
  2 A$mainSupport$     0DBD GR  |   2 A$mainSupport$     0DBF GR
  2 A$mainSupport$     0DC1 GR  |   2 A$mainSupport$     0DC2 GR
  2 A$mainSupport$     0DC5 GR  |   2 A$mainSupport$     0135 GR
  2 A$mainSupport$     0DC8 GR  |   2 A$mainSupport$     0DCA GR
  2 A$mainSupport$     0DCC GR  |   2 A$mainSupport$     0DCF GR
  2 A$mainSupport$     0DD1 GR  |   2 A$mainSupport$     0137 GR
  2 A$mainSupport$     0DD4 GR  |   2 A$mainSupport$     0DD6 GR
  2 A$mainSupport$     0DD8 GR  |   2 A$mainSupport$     0DDA GR
  2 A$mainSupport$     0DDB GR  |   2 A$mainSupport$     0DDD GR
  2 A$mainSupport$     0DDE GR  |   2 A$mainSupport$     0DDF GR
  2 A$mainSupport$     0DE1 GR  |   2 A$mainSupport$     0DE5 GR
  2 A$mainSupport$     0DE9 GR  |   2 A$mainSupport$     0DEB GR
  2 A$mainSupport$     0DED GR  |   2 A$mainSupport$     0DEF GR
  2 A$mainSupport$     0DF1 GR  |   2 A$mainSupport$     0DF2 GR
  2 A$mainSupport$     0DF3 GR  |   2 A$mainSupport$     0DF4 GR
  2 A$mainSupport$     0DF5 GR  |   2 A$mainSupport$     0DF7 GR
  2 A$mainSupport$     0DF9 GR  |   2 A$mainSupport$     0DFB GR
  2 A$mainSupport$     0DFD GR  |   2 A$mainSupport$     0E00 GR
  2 A$mainSupport$     0E02 GR  |   2 A$mainSupport$     0E04 GR
  2 A$mainSupport$     0E06 GR  |   2 A$mainSupport$     0E08 GR
  2 A$mainSupport$     0E0C GR  |   2 A$mainSupport$     0E0E GR
  2 A$mainSupport$     0E11 GR  |   2 A$mainSupport$     0E13 GR
  2 A$mainSupport$     0E15 GR  |   2 A$mainSupport$     0E17 GR
  2 A$mainSupport$     0E1A GR  |   2 A$mainSupport$     0E1D GR
  2 A$mainSupport$     0E20 GR  |   2 A$mainSupport$     0E22 GR
  2 A$mainSupport$     0139 GR  |   2 A$mainSupport$     0E24 GR
  2 A$mainSupport$     0E27 GR  |   2 A$mainSupport$     013D GR
  2 A$mainSupport$     0E2A GR  |   2 A$mainSupport$     0E2D GR
  2 A$mainSupport$     0E30 GR  |   2 A$mainSupport$     0E32 GR
  2 A$mainSupport$     0E34 GR  |   2 A$mainSupport$     0E36 GR
  2 A$mainSupport$     0E39 GR  |   2 A$mainSupport$     0E3C GR
  2 A$mainSupport$     0E3F GR  |   2 A$mainSupport$     0E41 GR
  2 A$mainSupport$     0E42 GR  |   2 A$mainSupport$     0E44 GR
  2 A$mainSupport$     0E48 GR  |   2 A$mainSupport$     0E4A GR
  2 A$mainSupport$     0E4D GR  |   2 A$mainSupport$     0E50 GR
  2 A$mainSupport$     0E53 GR  |   2 A$mainSupport$     0E56 GR
  2 A$mainSupport$     0E58 GR  |   2 A$mainSupport$     0E59 GR
  2 A$mainSupport$     0E5A GR  |   2 A$mainSupport$     0E5C GR
  2 A$mainSupport$     013F GR  |   2 A$mainSupport$     0E5E GR
  2 A$mainSupport$     0E5F GR  |   2 A$mainSupport$     0E61 GR
  2 A$mainSupport$     0E62 GR  |   2 A$mainSupport$     0E63 GR
  2 A$mainSupport$     0E67 GR  |   2 A$mainSupport$     0E69 GR
  2 A$mainSupport$     0E6B GR  |   2 A$mainSupport$     0E6D GR
  2 A$mainSupport$     0E70 GR  |   2 A$mainSupport$     0141 GR
  2 A$mainSupport$     0E73 GR  |   2 A$mainSupport$     0E76 GR
  2 A$mainSupport$     0142 GR  |   2 A$mainSupport$     0E79 GR
  2 A$mainSupport$     0E7C GR  |   2 A$mainSupport$     0E7E GR
  2 A$mainSupport$     0E80 GR  |   2 A$mainSupport$     0E83 GR
  2 A$mainSupport$     0E85 GR  |   2 A$mainSupport$     0143 GR
  2 A$mainSupport$     0E87 GR  |   2 A$mainSupport$     0E8B GR
  2 A$mainSupport$     0E8D GR  |   2 A$mainSupport$     0145 GR
  2 A$mainSupport$     0E8F GR  |   2 A$mainSupport$     0E91 GR
  2 A$mainSupport$     0E94 GR  |   2 A$mainSupport$     0E96 GR
  2 A$mainSupport$     0E99 GR  |   2 A$mainSupport$     0149 GR
  2 A$mainSupport$     0E9C GR  |   2 A$mainSupport$     0E9E GR
  2 A$mainSupport$     0EA0 GR  |   2 A$mainSupport$     0EA4 GR
  2 A$mainSupport$     0EA6 GR  |   2 A$mainSupport$     014B GR
  2 A$mainSupport$     0EAA GR  |   2 A$mainSupport$     0EAD GR
  2 A$mainSupport$     014F GR  |   2 A$mainSupport$     0EAF GR
  2 A$mainSupport$     0EB2 GR  |   2 A$mainSupport$     0EB5 GR
  2 A$mainSupport$     0152 GR  |   2 A$mainSupport$     0EB8 GR
  2 A$mainSupport$     0EBA GR  |   2 A$mainSupport$     0EBD GR
  2 A$mainSupport$     0EBE GR  |   2 A$mainSupport$     0EC1 GR
  2 A$mainSupport$     0EC3 GR  |   2 A$mainSupport$     0EC6 GR
  2 A$mainSupport$     0EC7 GR  |   2 A$mainSupport$     0EC9 GR
  2 A$mainSupport$     0ECA GR  |   2 A$mainSupport$     0ECB GR
  2 A$mainSupport$     0ECD GR  |   2 A$mainSupport$     0ED1 GR
  2 A$mainSupport$     0ED3 GR  |   2 A$mainSupport$     0ED6 GR
  2 A$mainSupport$     0ED9 GR  |   2 A$mainSupport$     0EDC GR
  2 A$mainSupport$     0EDF GR  |   2 A$mainSupport$     0EE2 GR
  2 A$mainSupport$     0EE5 GR  |   2 A$mainSupport$     0EE6 GR
  2 A$mainSupport$     0EE8 GR  |   2 A$mainSupport$     0EE9 GR
  2 A$mainSupport$     0EEA GR  |   2 A$mainSupport$     0EEC GR
  2 A$mainSupport$     0EF0 GR  |   2 A$mainSupport$     0EF2 GR
  2 A$mainSupport$     0EF5 GR  |   2 A$mainSupport$     0155 GR
  2 A$mainSupport$     0EF8 GR  |   2 A$mainSupport$     0EFB GR
  2 A$mainSupport$     0EFE GR  |   2 A$mainSupport$     0F00 GR
  2 A$mainSupport$     0F03 GR  |   2 A$mainSupport$     0157 GR
  2 A$mainSupport$     0F05 GR  |   2 A$mainSupport$     0F07 GR
  2 A$mainSupport$     0F09 GR  |   2 A$mainSupport$     0F0C GR
  2 A$mainSupport$     0159 GR  |   2 A$mainSupport$     0F0F GR
  2 A$mainSupport$     0F12 GR  |   2 A$mainSupport$     0F14 GR
  2 A$mainSupport$     0F17 GR  |   2 A$mainSupport$     0F19 GR
  2 A$mainSupport$     0F1B GR  |   2 A$mainSupport$     015A GR
  2 A$mainSupport$     0F1E GR  |   2 A$mainSupport$     0F21 GR
  2 A$mainSupport$     0F24 GR  |   2 A$mainSupport$     0F26 GR
  2 A$mainSupport$     0F29 GR  |   2 A$mainSupport$     0F2C GR
  2 A$mainSupport$     0F2E GR  |   2 A$mainSupport$     0F30 GR
  2 A$mainSupport$     0F32 GR  |   2 A$mainSupport$     0F35 GR
  2 A$mainSupport$     0F38 GR  |   2 A$mainSupport$     015C GR
  2 A$mainSupport$     0F3C GR  |   2 A$mainSupport$     0F3E GR
  2 A$mainSupport$     0F41 GR  |   2 A$mainSupport$     0F43 GR
  2 A$mainSupport$     0F44 GR  |   2 A$mainSupport$     0F46 GR
  2 A$mainSupport$     0F48 GR  |   2 A$mainSupport$     015E GR
  2 A$mainSupport$     0F4B GR  |   2 A$mainSupport$     0F4E GR
  2 A$mainSupport$     0F50 GR  |   2 A$mainSupport$     0F53 GR
  2 A$mainSupport$     0F55 GR  |   2 A$mainSupport$     0160 GR
  2 A$mainSupport$     0F58 GR  |   2 A$mainSupport$     0F5B GR
  2 A$mainSupport$     0F5D GR  |   2 A$mainSupport$     0F5F GR
  2 A$mainSupport$     0163 GR  |   2 A$mainSupport$     0F61 GR
  2 A$mainSupport$     0F63 GR  |   2 A$mainSupport$     0F66 GR
  2 A$mainSupport$     0F68 GR  |   2 A$mainSupport$     0F6B GR
  2 A$mainSupport$     0165 GR  |   2 A$mainSupport$     0F6E GR
  2 A$mainSupport$     0F70 GR  |   2 A$mainSupport$     0F72 GR
  2 A$mainSupport$     0F76 GR  |   2 A$mainSupport$     0F78 GR
  2 A$mainSupport$     0F7C GR  |   2 A$mainSupport$     0F7F GR
  2 A$mainSupport$     0F81 GR  |   2 A$mainSupport$     0F84 GR
  2 A$mainSupport$     0F85 GR  |   2 A$mainSupport$     0F87 GR
  2 A$mainSupport$     0F88 GR  |   2 A$mainSupport$     0F89 GR
  2 A$mainSupport$     0F8B GR  |   2 A$mainSupport$     0F8F GR
  2 A$mainSupport$     0F91 GR  |   2 A$mainSupport$     0F94 GR
  2 A$mainSupport$     0F97 GR  |   2 A$mainSupport$     0F9A GR
  2 A$mainSupport$     0F9D GR  |   2 A$mainSupport$     0FA0 GR
  2 A$mainSupport$     0FA3 GR  |   2 A$mainSupport$     0FA5 GR
  2 A$mainSupport$     0168 GR  |   2 A$mainSupport$     0FA8 GR
  2 A$mainSupport$     0FAA GR  |   2 A$mainSupport$     0FAD GR
  2 A$mainSupport$     0FAF GR  |   2 A$mainSupport$     0FB2 GR
  2 A$mainSupport$     0FB4 GR  |   2 A$mainSupport$     0FB7 GR
  2 A$mainSupport$     016A GR  |   2 A$mainSupport$     0FBA GR
  2 A$mainSupport$     0FBC GR  |   2 A$mainSupport$     0FBE GR
  2 A$mainSupport$     0FC0 GR  |   2 A$mainSupport$     0FC2 GR
  2 A$mainSupport$     0FC4 GR  |   2 A$mainSupport$     0FC7 GR
  2 A$mainSupport$     0FC8 GR  |   2 A$mainSupport$     0FCA GR
  2 A$mainSupport$     0FCB GR  |   2 A$mainSupport$     0FCC GR
  2 A$mainSupport$     0FCE GR  |   2 A$mainSupport$     0FD2 GR
  2 A$mainSupport$     0FD4 GR  |   2 A$mainSupport$     0FD7 GR
  2 A$mainSupport$     0FDA GR  |   2 A$mainSupport$     0FDD GR
  2 A$mainSupport$     0FE0 GR  |   2 A$mainSupport$     0FE3 GR
  2 A$mainSupport$     0FE5 GR  |   2 A$mainSupport$     0FE7 GR
  2 A$mainSupport$     0FE8 GR  |   2 A$mainSupport$     0FEB GR
  2 A$mainSupport$     0FEE GR  |   2 A$mainSupport$     0FF1 GR
  2 A$mainSupport$     016C GR  |   2 A$mainSupport$     0FF3 GR
  2 A$mainSupport$     0FF6 GR  |   2 A$mainSupport$     0FF8 GR
  2 A$mainSupport$     0FFA GR  |   2 A$mainSupport$     0FFE GR
  2 A$mainSupport$     016E GR  |   2 A$mainSupport$     1000 GR
  2 A$mainSupport$     1003 GR  |   2 A$mainSupport$     1005 GR
  2 A$mainSupport$     1008 GR  |   2 A$mainSupport$     100B GR
  2 A$mainSupport$     0170 GR  |   2 A$mainSupport$     100D GR
  2 A$mainSupport$     100F GR  |   2 A$mainSupport$     1013 GR
  2 A$mainSupport$     1015 GR  |   2 A$mainSupport$     0174 GR
  2 A$mainSupport$     1019 GR  |   2 A$mainSupport$     101B GR
  2 A$mainSupport$     101F GR  |   2 A$mainSupport$     1021 GR
  2 A$mainSupport$     1024 GR  |   2 A$mainSupport$     1026 GR
  2 A$mainSupport$     1028 GR  |   2 A$mainSupport$     102B GR
  2 A$mainSupport$     102D GR  |   2 A$mainSupport$     1030 GR
  2 A$mainSupport$     1032 GR  |   2 A$mainSupport$     1035 GR
  2 A$mainSupport$     1036 GR  |   2 A$mainSupport$     1038 GR
  2 A$mainSupport$     103A GR  |   2 A$mainSupport$     103D GR
  2 A$mainSupport$     103E GR  |   2 A$mainSupport$     1040 GR
  2 A$mainSupport$     1042 GR  |   2 A$mainSupport$     1044 GR
  2 A$mainSupport$     1046 GR  |   2 A$mainSupport$     1049 GR
  2 A$mainSupport$     104A GR  |   2 A$mainSupport$     104C GR
  2 A$mainSupport$     104D GR  |   2 A$mainSupport$     104E GR
  2 A$mainSupport$     1050 GR  |   2 A$mainSupport$     1054 GR
  2 A$mainSupport$     1056 GR  |   2 A$mainSupport$     1059 GR
  2 A$mainSupport$     105C GR  |   2 A$mainSupport$     105F GR
  2 A$mainSupport$     1062 GR  |   2 A$mainSupport$     1065 GR
  2 A$mainSupport$     1068 GR  |   2 A$mainSupport$     1069 GR
  2 A$mainSupport$     106B GR  |   2 A$mainSupport$     106C GR
  2 A$mainSupport$     106D GR  |   2 A$mainSupport$     106F GR
  2 A$mainSupport$     1073 GR  |   2 A$mainSupport$     1075 GR
  2 A$mainSupport$     1078 GR  |   2 A$mainSupport$     0176 GR
  2 A$mainSupport$     107B GR  |   2 A$mainSupport$     107D GR
  2 A$mainSupport$     1080 GR  |   2 A$mainSupport$     0179 GR
  2 A$mainSupport$     1083 GR  |   2 A$mainSupport$     1085 GR
  2 A$mainSupport$     1088 GR  |   2 A$mainSupport$     108A GR
  2 A$mainSupport$     017C GR  |   2 A$mainSupport$     108C GR
  2 A$mainSupport$     108F GR  |   2 A$mainSupport$     1092 GR
  2 A$mainSupport$     1094 GR  |   2 A$mainSupport$     1097 GR
  2 A$mainSupport$     1099 GR  |   2 A$mainSupport$     109C GR
  2 A$mainSupport$     109F GR  |   2 A$mainSupport$     10A1 GR
  2 A$mainSupport$     10A3 GR  |   2 A$mainSupport$     10A6 GR
  2 A$mainSupport$     10A9 GR  |   2 A$mainSupport$     10AC GR
  2 A$mainSupport$     10AF GR  |   2 A$mainSupport$     10B1 GR
  2 A$mainSupport$     10B3 GR  |   2 A$mainSupport$     10B5 GR
  2 A$mainSupport$     10B7 GR  |   2 A$mainSupport$     10BA GR
  2 A$mainSupport$     10BC GR  |   2 A$mainSupport$     017F GR
  2 A$mainSupport$     10BF GR  |   2 A$mainSupport$     10C2 GR
  2 A$mainSupport$     10C4 GR  |   2 A$mainSupport$     10C6 GR
  2 A$mainSupport$     0181 GR  |   2 A$mainSupport$     10C8 GR
  2 A$mainSupport$     10CA GR  |   2 A$mainSupport$     10CD GR
  2 A$mainSupport$     10CF GR  |   2 A$mainSupport$     0183 GR
  2 A$mainSupport$     10D2 GR  |   2 A$mainSupport$     10D5 GR
  2 A$mainSupport$     10D7 GR  |   2 A$mainSupport$     10D9 GR
  2 A$mainSupport$     10DB GR  |   2 A$mainSupport$     0186 GR
  2 A$mainSupport$     10DD GR  |   2 A$mainSupport$     10E0 GR
  2 A$mainSupport$     10E2 GR  |   2 A$mainSupport$     10E5 GR
  2 A$mainSupport$     10E8 GR  |   2 A$mainSupport$     0188 GR
  2 A$mainSupport$     10EA GR  |   2 A$mainSupport$     10EC GR
  2 A$mainSupport$     10F0 GR  |   2 A$mainSupport$     10F2 GR
  2 A$mainSupport$     10F6 GR  |   2 A$mainSupport$     10F9 GR
  2 A$mainSupport$     10FB GR  |   2 A$mainSupport$     10FE GR
  2 A$mainSupport$     1101 GR  |   2 A$mainSupport$     1104 GR
  2 A$mainSupport$     1106 GR  |   2 A$mainSupport$     1109 GR
  2 A$mainSupport$     110B GR  |   2 A$mainSupport$     110D GR
  2 A$mainSupport$     1110 GR  |   2 A$mainSupport$     1112 GR
  2 A$mainSupport$     1115 GR  |   2 A$mainSupport$     1117 GR
  2 A$mainSupport$     1119 GR  |   2 A$mainSupport$     111C GR
  2 A$mainSupport$     111D GR  |   2 A$mainSupport$     111F GR
  2 A$mainSupport$     1121 GR  |   2 A$mainSupport$     1123 GR
  2 A$mainSupport$     1125 GR  |   2 A$mainSupport$     018B GR
  2 A$mainSupport$     1128 GR  |   2 A$mainSupport$     1129 GR
  2 A$mainSupport$     112B GR  |   2 A$mainSupport$     112C GR
  2 A$mainSupport$     112D GR  |   2 A$mainSupport$     112F GR
  2 A$mainSupport$     1133 GR  |   2 A$mainSupport$     1135 GR
  2 A$mainSupport$     1138 GR  |   2 A$mainSupport$     018D GR
  2 A$mainSupport$     113B GR  |   2 A$mainSupport$     113E GR
  2 A$mainSupport$     1141 GR  |   2 A$mainSupport$     1144 GR
  2 A$mainSupport$     1147 GR  |   2 A$mainSupport$     1148 GR
  2 A$mainSupport$     114A GR  |   2 A$mainSupport$     114B GR
  2 A$mainSupport$     114C GR  |   2 A$mainSupport$     114E GR
  2 A$mainSupport$     1152 GR  |   2 A$mainSupport$     1154 GR
  2 A$mainSupport$     1157 GR  |   2 A$mainSupport$     115A GR
  2 A$mainSupport$     115D GR  |   2 A$mainSupport$     115F GR
  2 A$mainSupport$     1161 GR  |   2 A$mainSupport$     1165 GR
  2 A$mainSupport$     1167 GR  |   2 A$mainSupport$     116A GR
  2 A$mainSupport$     116C GR  |   2 A$mainSupport$     116F GR
  2 A$mainSupport$     1172 GR  |   2 A$mainSupport$     1174 GR
  2 A$mainSupport$     1176 GR  |   2 A$mainSupport$     117A GR
  2 A$mainSupport$     117C GR  |   2 A$mainSupport$     117E GR
  2 A$mainSupport$     1181 GR  |   2 A$mainSupport$     1184 GR
  2 A$mainSupport$     1186 GR  |   2 A$mainSupport$     018F GR
  2 A$mainSupport$     1189 GR  |   2 A$mainSupport$     118C GR
  2 A$mainSupport$     118D GR  |   2 A$mainSupport$     1190 GR
  2 A$mainSupport$     1191 GR  |   2 A$mainSupport$     1194 GR
  2 A$mainSupport$     1196 GR  |   2 A$mainSupport$     0192 GR
  2 A$mainSupport$     1199 GR  |   2 A$mainSupport$     119C GR
  2 A$mainSupport$     119E GR  |   2 A$mainSupport$     11A0 GR
  2 A$mainSupport$     0194 GR  |   2 A$mainSupport$     11A2 GR
  2 A$mainSupport$     11A5 GR  |   2 A$mainSupport$     11A8 GR
  2 A$mainSupport$     0197 GR  |   2 A$mainSupport$     11AC GR
  2 A$mainSupport$     11AE GR  |   2 A$mainSupport$     11B1 GR
  2 A$mainSupport$     11B3 GR  |   2 A$mainSupport$     11B4 GR
  2 A$mainSupport$     11B6 GR  |   2 A$mainSupport$     11B8 GR
  2 A$mainSupport$     0199 GR  |   2 A$mainSupport$     11BB GR
  2 A$mainSupport$     11BE GR  |   2 A$mainSupport$     11C0 GR
  2 A$mainSupport$     11C3 GR  |   2 A$mainSupport$     11C5 GR
  2 A$mainSupport$     019C GR  |   2 A$mainSupport$     11C8 GR
  2 A$mainSupport$     11CB GR  |   2 A$mainSupport$     11CD GR
  2 A$mainSupport$     11CF GR  |   2 A$mainSupport$     11D1 GR
  2 A$mainSupport$     11D3 GR  |   2 A$mainSupport$     11D6 GR
  2 A$mainSupport$     11D8 GR  |   2 A$mainSupport$     11DB GR
  2 A$mainSupport$     11DE GR  |   2 A$mainSupport$     11E0 GR
  2 A$mainSupport$     11E2 GR  |   2 A$mainSupport$     11E4 GR
  2 A$mainSupport$     11E6 GR  |   2 A$mainSupport$     11E9 GR
  2 A$mainSupport$     11EB GR  |   2 A$mainSupport$     11EE GR
  2 A$mainSupport$     11F1 GR  |   2 A$mainSupport$     11F3 GR
  2 A$mainSupport$     11F5 GR  |   2 A$mainSupport$     11F9 GR
  2 A$mainSupport$     11FB GR  |   2 A$mainSupport$     019F GR
  2 A$mainSupport$     11FF GR  |   2 A$mainSupport$     1201 GR
  2 A$mainSupport$     1204 GR  |   2 A$mainSupport$     1207 GR
  2 A$mainSupport$     120A GR  |   2 A$mainSupport$     120C GR
  2 A$mainSupport$     01A1 GR  |   2 A$mainSupport$     120F GR
  2 A$mainSupport$     1210 GR  |   2 A$mainSupport$     1212 GR
  2 A$mainSupport$     1213 GR  |   2 A$mainSupport$     1214 GR
  2 A$mainSupport$     1216 GR  |   2 A$mainSupport$     121A GR
  2 A$mainSupport$     121C GR  |   2 A$mainSupport$     121F GR
  2 A$mainSupport$     01A4 GR  |   2 A$mainSupport$     1222 GR
  2 A$mainSupport$     1225 GR  |   2 A$mainSupport$     1228 GR
  2 A$mainSupport$     01A6 GR  |   2 A$mainSupport$     122B GR
  2 A$mainSupport$     122E GR  |   2 A$mainSupport$     122F GR
  2 A$mainSupport$     1231 GR  |   2 A$mainSupport$     1232 GR
  2 A$mainSupport$     1233 GR  |   2 A$mainSupport$     1235 GR
  2 A$mainSupport$     1239 GR  |   2 A$mainSupport$     123B GR
  2 A$mainSupport$     123E GR  |   2 A$mainSupport$     1241 GR
  2 A$mainSupport$     1244 GR  |   2 A$mainSupport$     1247 GR
  2 A$mainSupport$     1249 GR  |   2 A$mainSupport$     124C GR
  2 A$mainSupport$     124E GR  |   2 A$mainSupport$     1250 GR
  2 A$mainSupport$     1252 GR  |   2 A$mainSupport$     1255 GR
  2 A$mainSupport$     1258 GR  |   2 A$mainSupport$     125B GR
  2 A$mainSupport$     125D GR  |   2 A$mainSupport$     1260 GR
  2 A$mainSupport$     1262 GR  |   2 A$mainSupport$     01A9 GR
  2 A$mainSupport$     1265 GR  |   2 A$mainSupport$     1267 GR
  2 A$mainSupport$     1269 GR  |   2 A$mainSupport$     126B GR
  2 A$mainSupport$     01AB GR  |   2 A$mainSupport$     126E GR
  2 A$mainSupport$     1271 GR  |   2 A$mainSupport$     1274 GR
  2 A$mainSupport$     01AD GR  |   2 A$mainSupport$     1277 GR
  2 A$mainSupport$     1279 GR  |   2 A$mainSupport$     127B GR
  2 A$mainSupport$     127F GR  |   2 A$mainSupport$     1281 GR
  2 A$mainSupport$     01AF GR  |   2 A$mainSupport$     1285 GR
  2 A$mainSupport$     1287 GR  |   2 A$mainSupport$     128A GR
  2 A$mainSupport$     128D GR  |   2 A$mainSupport$     1290 GR
  2 A$mainSupport$     1292 GR  |   2 A$mainSupport$     1295 GR
  2 A$mainSupport$     1296 GR  |   2 A$mainSupport$     1298 GR
  2 A$mainSupport$     1299 GR  |   2 A$mainSupport$     129A GR
  2 A$mainSupport$     129C GR  |   2 A$mainSupport$     12A0 GR
  2 A$mainSupport$     12A2 GR  |   2 A$mainSupport$     12A5 GR
  2 A$mainSupport$     12A8 GR  |   2 A$mainSupport$     12AB GR
  2 A$mainSupport$     12AE GR  |   2 A$mainSupport$     12B1 GR
  2 A$mainSupport$     12B4 GR  |   2 A$mainSupport$     12B7 GR
  2 A$mainSupport$     12BA GR  |   2 A$mainSupport$     12BC GR
  2 A$mainSupport$     12BE GR  |   2 A$mainSupport$     12C2 GR
  2 A$mainSupport$     12C4 GR  |   2 A$mainSupport$     01B1 GR
  2 A$mainSupport$     12C8 GR  |   2 A$mainSupport$     12CA GR
  2 A$mainSupport$     12CC GR  |   2 A$mainSupport$     12CF GR
  2 A$mainSupport$     01B3 GR  |   2 A$mainSupport$     12D2 GR
  2 A$mainSupport$     12D5 GR  |   2 A$mainSupport$     12D8 GR
  2 A$mainSupport$     01B5 GR  |   2 A$mainSupport$     12DB GR
  2 A$mainSupport$     12DE GR  |   2 A$mainSupport$     12E0 GR
  2 A$mainSupport$     12E3 GR  |   2 A$mainSupport$     12E6 GR
  2 A$mainSupport$     12E9 GR  |   2 A$mainSupport$     12EB GR
  2 A$mainSupport$     12ED GR  |   2 A$mainSupport$     12F0 GR
  2 A$mainSupport$     12F3 GR  |   2 A$mainSupport$     12F5 GR
  2 A$mainSupport$     12F8 GR  |   2 A$mainSupport$     12FA GR
  2 A$mainSupport$     01B9 GR  |   2 A$mainSupport$     12FC GR
  2 A$mainSupport$     12FF GR  |   2 A$mainSupport$     1302 GR
  2 A$mainSupport$     01BB GR  |   2 A$mainSupport$     1305 GR
  2 A$mainSupport$     1306 GR  |   2 A$mainSupport$     1309 GR
  2 A$mainSupport$     130B GR  |   2 A$mainSupport$     130E GR
  2 A$mainSupport$     1311 GR  |   2 A$mainSupport$     01BD GR
  2 A$mainSupport$     1314 GR  |   2 A$mainSupport$     1316 GR
  2 A$mainSupport$     01C0 GR  |   2 A$mainSupport$     1319 GR
  2 A$mainSupport$     131C GR  |   2 A$mainSupport$     131E GR
  2 A$mainSupport$     1321 GR  |   2 A$mainSupport$     1323 GR
  2 A$mainSupport$     01C2 GR  |   2 A$mainSupport$     1325 GR
  2 A$mainSupport$     1326 GR  |   2 A$mainSupport$     1329 GR
  2 A$mainSupport$     132B GR  |   2 A$mainSupport$     132E GR
  2 A$mainSupport$     1331 GR  |   2 A$mainSupport$     1334 GR
  2 A$mainSupport$     1336 GR  |   2 A$mainSupport$     1339 GR
  2 A$mainSupport$     133C GR  |   2 A$mainSupport$     133E GR
  2 A$mainSupport$     1341 GR  |   2 A$mainSupport$     1343 GR
  2 A$mainSupport$     1347 GR  |   2 A$mainSupport$     1348 GR
  2 A$mainSupport$     134B GR  |   2 A$mainSupport$     134D GR
  2 A$mainSupport$     1350 GR  |   2 A$mainSupport$     1353 GR
  2 A$mainSupport$     1356 GR  |   2 A$mainSupport$     1358 GR
  2 A$mainSupport$     01C5 GR  |   2 A$mainSupport$     135B GR
  2 A$mainSupport$     135E GR  |   2 A$mainSupport$     1360 GR
  2 A$mainSupport$     1363 GR  |   2 A$mainSupport$     1365 GR
  2 A$mainSupport$     01C7 GR  |   2 A$mainSupport$     1367 GR
  2 A$mainSupport$     1368 GR  |   2 A$mainSupport$     136B GR
  2 A$mainSupport$     136D GR  |   2 A$mainSupport$     1370 GR
  2 A$mainSupport$     1373 GR  |   2 A$mainSupport$     1376 GR
  2 A$mainSupport$     1378 GR  |   2 A$mainSupport$     137B GR
  2 A$mainSupport$     137E GR  |   2 A$mainSupport$     1380 GR
  2 A$mainSupport$     1382 GR  |   2 A$mainSupport$     1384 GR
  2 A$mainSupport$     1387 GR  |   2 A$mainSupport$     138A GR
  2 A$mainSupport$     138C GR  |   2 A$mainSupport$     138E GR
  2 A$mainSupport$     1390 GR  |   2 A$mainSupport$     1393 GR
  2 A$mainSupport$     1396 GR  |   2 A$mainSupport$     1398 GR
  2 A$mainSupport$     139A GR  |   2 A$mainSupport$     139C GR
  2 A$mainSupport$     139F GR  |   2 A$mainSupport$     13A2 GR
  2 A$mainSupport$     13A4 GR  |   2 A$mainSupport$     13A6 GR
  2 A$mainSupport$     13A8 GR  |   2 A$mainSupport$     13AB GR
  2 A$mainSupport$     13AE GR  |   2 A$mainSupport$     13B0 GR
  2 A$mainSupport$     13B3 GR  |   2 A$mainSupport$     01C9 GR
  2 A$mainSupport$     13B6 GR  |   2 A$mainSupport$     13B8 GR
  2 A$mainSupport$     13BA GR  |   2 A$mainSupport$     13BD GR
  2 A$mainSupport$     01CC GR  |   2 A$mainSupport$     13BF GR
  2 A$mainSupport$     13C2 GR  |   2 A$mainSupport$     01CF GR
  2 A$mainSupport$     13C5 GR  |   2 A$mainSupport$     13C8 GR
  2 A$mainSupport$     13CA GR  |   2 A$mainSupport$     13CC GR
  2 A$mainSupport$     13D0 GR  |   2 A$mainSupport$     13D3 GR
  2 A$mainSupport$     13D6 GR  |   2 A$mainSupport$     13D8 GR
  2 A$mainSupport$     13DB GR  |   2 A$mainSupport$     13DE GR
  2 A$mainSupport$     13DF GR  |   2 A$mainSupport$     13E1 GR
  2 A$mainSupport$     13E2 GR  |   2 A$mainSupport$     13E3 GR
  2 A$mainSupport$     13E5 GR  |   2 A$mainSupport$     13E9 GR
  2 A$mainSupport$     13EB GR  |   2 A$mainSupport$     13EE GR
  2 A$mainSupport$     13F1 GR  |   2 A$mainSupport$     13F4 GR
  2 A$mainSupport$     13F7 GR  |   2 A$mainSupport$     13FA GR
  2 A$mainSupport$     13FC GR  |   2 A$mainSupport$     13FD GR
  2 A$mainSupport$     13FF GR  |   2 A$mainSupport$     01D2 GR
  2 A$mainSupport$     1402 GR  |   2 A$mainSupport$     1404 GR
  2 A$mainSupport$     1407 GR  |   2 A$mainSupport$     140A GR
  2 A$mainSupport$     140C GR  |   2 A$mainSupport$     01D4 GR
  2 A$mainSupport$     140E GR  |   2 A$mainSupport$     1410 GR
  2 A$mainSupport$     1412 GR  |   2 A$mainSupport$     1415 GR
  2 A$mainSupport$     1417 GR  |   2 A$mainSupport$     01D6 GR
  2 A$mainSupport$     141A GR  |   2 A$mainSupport$     141D GR
  2 A$mainSupport$     141F GR  |   2 A$mainSupport$     1421 GR
  2 A$mainSupport$     01D9 GR  |   2 A$mainSupport$     1425 GR
  2 A$mainSupport$     1427 GR  |   2 A$mainSupport$     142B GR
  2 A$mainSupport$     142D GR  |   2 A$mainSupport$     01DB GR
  2 A$mainSupport$     1430 GR  |   2 A$mainSupport$     1432 GR
  2 A$mainSupport$     1434 GR  |   2 A$mainSupport$     1437 GR
  2 A$mainSupport$     1438 GR  |   2 A$mainSupport$     143A GR
  2 A$mainSupport$     143B GR  |   2 A$mainSupport$     143C GR
  2 A$mainSupport$     143E GR  |   2 A$mainSupport$     1442 GR
  2 A$mainSupport$     1444 GR  |   2 A$mainSupport$     1447 GR
  2 A$mainSupport$     144A GR  |   2 A$mainSupport$     144D GR
  2 A$mainSupport$     1450 GR  |   2 A$mainSupport$     1453 GR
  2 A$mainSupport$     1456 GR  |   2 A$mainSupport$     1459 GR
  2 A$mainSupport$     145C GR  |   2 A$mainSupport$     145E GR
  2 A$mainSupport$     1460 GR  |   2 A$mainSupport$     1462 GR
  2 A$mainSupport$     1464 GR  |   2 A$mainSupport$     1467 GR
  2 A$mainSupport$     01DE GR  |   2 A$mainSupport$     1469 GR
  2 A$mainSupport$     146C GR  |   2 A$mainSupport$     146F GR
  2 A$mainSupport$     1471 GR  |   2 A$mainSupport$     1473 GR
  2 A$mainSupport$     01E0 GR  |   2 A$mainSupport$     1477 GR
  2 A$mainSupport$     147A GR  |   2 A$mainSupport$     147D GR
  2 A$mainSupport$     147F GR  |   2 A$mainSupport$     1483 GR
  2 A$mainSupport$     1486 GR  |   2 A$mainSupport$     1488 GR
  2 A$mainSupport$     148B GR  |   2 A$mainSupport$     148E GR
  2 A$mainSupport$     1491 GR  |   2 A$mainSupport$     1494 GR
  2 A$mainSupport$     1495 GR  |   2 A$mainSupport$     1496 GR
  2 A$mainSupport$     1498 GR  |   2 A$mainSupport$     1499 GR
  2 A$mainSupport$     149B GR  |   2 A$mainSupport$     149E GR
  2 A$mainSupport$     149F GR  |   2 A$mainSupport$     14A2 GR
  2 A$mainSupport$     14A3 GR  |   2 A$mainSupport$     14A5 GR
  2 A$mainSupport$     14A7 GR  |   2 A$mainSupport$     14A9 GR
  2 A$mainSupport$     14AB GR  |   2 A$mainSupport$     14AE GR
  2 A$mainSupport$     14B0 GR  |   2 A$mainSupport$     14B3 GR
  2 A$mainSupport$     14B5 GR  |   2 A$mainSupport$     01E2 GR
  2 A$mainSupport$     14B8 GR  |   2 A$mainSupport$     14B9 GR
  2 A$mainSupport$     14BD GR  |   2 A$mainSupport$     14C1 GR
  2 A$mainSupport$     14C4 GR  |   2 A$mainSupport$     14C5 GR
  2 A$mainSupport$     01E5 GR  |   2 A$mainSupport$     14C7 GR
  2 A$mainSupport$     14C8 GR  |   2 A$mainSupport$     14C9 GR
  2 A$mainSupport$     14CB GR  |   2 A$mainSupport$     14CF GR
  2 A$mainSupport$     14D1 GR  |   2 A$mainSupport$     14D4 GR
  2 A$mainSupport$     01E7 GR  |   2 A$mainSupport$     14D7 GR
  2 A$mainSupport$     14DA GR  |   2 A$mainSupport$     14DD GR
  2 A$mainSupport$     14E0 GR  |   2 A$mainSupport$     01EA GR
  2 A$mainSupport$     14E2 GR  |   2 A$mainSupport$     14E4 GR
  2 A$mainSupport$     14E8 GR  |   2 A$mainSupport$     14EA GR
  2 A$mainSupport$     01EC GR  |   2 A$mainSupport$     01EF GR
  2 A$mainSupport$     14EE GR  |   2 A$mainSupport$     14F0 GR
  2 A$mainSupport$     14F2 GR  |   2 A$mainSupport$     14F5 GR
  2 A$mainSupport$     14F8 GR  |   2 A$mainSupport$     14FB GR
  2 A$mainSupport$     14FE GR  |   2 A$mainSupport$     1501 GR
  2 A$mainSupport$     1504 GR  |   2 A$mainSupport$     1508 GR
  2 A$mainSupport$     150C GR  |   2 A$mainSupport$     1510 GR
  2 A$mainSupport$     1513 GR  |   2 A$mainSupport$     01F2 GR
  2 A$mainSupport$     1516 GR  |   2 A$mainSupport$     1519 GR
  2 A$mainSupport$     01F4 GR  |   2 A$mainSupport$     151C GR
  2 A$mainSupport$     151F GR  |   2 A$mainSupport$     01F6 GR
  2 A$mainSupport$     1522 GR  |   2 A$mainSupport$     1524 GR
  2 A$mainSupport$     1526 GR  |   2 A$mainSupport$     1528 GR
  2 A$mainSupport$     152A GR  |   2 A$mainSupport$     152D GR
  2 A$mainSupport$     01F9 GR  |   2 A$mainSupport$     152F GR
  2 A$mainSupport$     1532 GR  |   2 A$mainSupport$     1534 GR
  2 A$mainSupport$     1536 GR  |   2 A$mainSupport$     1539 GR
  2 A$mainSupport$     01FB GR  |   2 A$mainSupport$     153C GR
  2 A$mainSupport$     153E GR  |   2 A$mainSupport$     1541 GR
  2 A$mainSupport$     1544 GR  |   2 A$mainSupport$     1546 GR
  2 A$mainSupport$     1548 GR  |   2 A$mainSupport$     154B GR
  2 A$mainSupport$     154D GR  |   2 A$mainSupport$     1550 GR
  2 A$mainSupport$     1553 GR  |   2 A$mainSupport$     1556 GR
  2 A$mainSupport$     1559 GR  |   2 A$mainSupport$     155B GR
  2 A$mainSupport$     155D GR  |   2 A$mainSupport$     1560 GR
  2 A$mainSupport$     1562 GR  |   2 A$mainSupport$     1565 GR
  2 A$mainSupport$     1568 GR  |   2 A$mainSupport$     156B GR
  2 A$mainSupport$     156E GR  |   2 A$mainSupport$     1570 GR
  2 A$mainSupport$     1572 GR  |   2 A$mainSupport$     1575 GR
  2 A$mainSupport$     1577 GR  |   2 A$mainSupport$     01FE GR
  2 A$mainSupport$     157A GR  |   2 A$mainSupport$     157C GR
  2 A$mainSupport$     157F GR  |   2 A$mainSupport$     1581 GR
  2 A$mainSupport$     1583 GR  |   2 A$mainSupport$     0200 GR
  2 A$mainSupport$     1585 GR  |   2 A$mainSupport$     1588 GR
  2 A$mainSupport$     158A GR  |   2 A$mainSupport$     158D GR
  2 A$mainSupport$     1590 GR  |   2 A$mainSupport$     1592 GR
  2 A$mainSupport$     1593 GR  |   2 A$mainSupport$     1595 GR
  2 A$mainSupport$     1597 GR  |   2 A$mainSupport$     1599 GR
  2 A$mainSupport$     159B GR  |   2 A$mainSupport$     159C GR
  2 A$mainSupport$     159E GR  |   2 A$mainSupport$     15A0 GR
  2 A$mainSupport$     15A2 GR  |   2 A$mainSupport$     15A4 GR
  2 A$mainSupport$     15A7 GR  |   2 A$mainSupport$     15A9 GR
  2 A$mainSupport$     15AB GR  |   2 A$mainSupport$     15AD GR
  2 A$mainSupport$     15AF GR  |   2 A$mainSupport$     15B2 GR
  2 A$mainSupport$     15B4 GR  |   2 A$mainSupport$     15B7 GR
  2 A$mainSupport$     15BA GR  |   2 A$mainSupport$     15BC GR
  2 A$mainSupport$     15BE GR  |   2 A$mainSupport$     15BF GR
  2 A$mainSupport$     15C1 GR  |   2 A$mainSupport$     15C3 GR
  2 A$mainSupport$     15C5 GR  |   2 A$mainSupport$     15C8 GR
  2 A$mainSupport$     15CB GR  |   2 A$mainSupport$     15CE GR
  2 A$mainSupport$     15D0 GR  |   2 A$mainSupport$     15D2 GR
  2 A$mainSupport$     15D4 GR  |   2 A$mainSupport$     15D6 GR
  2 A$mainSupport$     15D9 GR  |   2 A$mainSupport$     15DC GR
  2 A$mainSupport$     0202 GR  |   2 A$mainSupport$     15DF GR
  2 A$mainSupport$     15E2 GR  |   2 A$mainSupport$     15E4 GR
  2 A$mainSupport$     15E6 GR  |   2 A$mainSupport$     0204 GR
  2 A$mainSupport$     15E8 GR  |   2 A$mainSupport$     15EA GR
  2 A$mainSupport$     15ED GR  |   2 A$mainSupport$     15EF GR
  2 A$mainSupport$     15F2 GR  |   2 A$mainSupport$     15F5 GR
  2 A$mainSupport$     0207 GR  |   2 A$mainSupport$     15F7 GR
  2 A$mainSupport$     15F9 GR  |   2 A$mainSupport$     15FA GR
  2 A$mainSupport$     15FC GR  |   2 A$mainSupport$     15FE GR
  2 A$mainSupport$     1600 GR  |   2 A$mainSupport$     1603 GR
  2 A$mainSupport$     1606 GR  |   2 A$mainSupport$     0209 GR
  2 A$mainSupport$     1609 GR  |   2 A$mainSupport$     160B GR
  2 A$mainSupport$     160D GR  |   2 A$mainSupport$     160F GR
  2 A$mainSupport$     1611 GR  |   2 A$mainSupport$     1614 GR
  2 A$mainSupport$     1617 GR  |   2 A$mainSupport$     020C GR
  2 A$mainSupport$     161A GR  |   2 A$mainSupport$     161D GR
  2 A$mainSupport$     161F GR  |   2 A$mainSupport$     1621 GR
  2 A$mainSupport$     1623 GR  |   2 A$mainSupport$     020E GR
  2 A$mainSupport$     1625 GR  |   2 A$mainSupport$     1628 GR
  2 A$mainSupport$     162A GR  |   2 A$mainSupport$     162D GR
  2 A$mainSupport$     162F GR  |   2 A$mainSupport$     0211 GR
  2 A$mainSupport$     1631 GR  |   2 A$mainSupport$     1633 GR
  2 A$mainSupport$     1635 GR  |   2 A$mainSupport$     1638 GR
  2 A$mainSupport$     163A GR  |   2 A$mainSupport$     163C GR
  2 A$mainSupport$     163D GR  |   2 A$mainSupport$     1640 GR
  2 A$mainSupport$     1642 GR  |   2 A$mainSupport$     1644 GR
  2 A$mainSupport$     1647 GR  |   2 A$mainSupport$     1649 GR
  2 A$mainSupport$     164B GR  |   2 A$mainSupport$     164D GR
  2 A$mainSupport$     164F GR  |   2 A$mainSupport$     1651 GR
  2 A$mainSupport$     1654 GR  |   2 A$mainSupport$     1656 GR
  2 A$mainSupport$     1659 GR  |   2 A$mainSupport$     165C GR
  2 A$mainSupport$     165F GR  |   2 A$mainSupport$     1662 GR
  2 A$mainSupport$     1665 GR  |   2 A$mainSupport$     1666 GR
  2 A$mainSupport$     1667 GR  |   2 A$mainSupport$     166A GR
  2 A$mainSupport$     166B GR  |   2 A$mainSupport$     166D GR
  2 A$mainSupport$     166F GR  |   2 A$mainSupport$     1673 GR
  2 A$mainSupport$     0214 GR  |   2 A$mainSupport$     1675 GR
  2 A$mainSupport$     1677 GR  |   2 A$mainSupport$     1678 GR
  2 A$mainSupport$     1679 GR  |   2 A$mainSupport$     167B GR
  2 A$mainSupport$     167D GR  |   2 A$mainSupport$     167F GR
  2 A$mainSupport$     1681 GR  |   2 A$mainSupport$     1683 GR
  2 A$mainSupport$     0216 GR  |   2 A$mainSupport$     1687 GR
  2 A$mainSupport$     1689 GR  |   2 A$mainSupport$     168B GR
  2 A$mainSupport$     168C GR  |   2 A$mainSupport$     168D GR
  2 A$mainSupport$     168F GR  |   2 A$mainSupport$     1691 GR
  2 A$mainSupport$     1693 GR  |   2 A$mainSupport$     1695 GR
  2 A$mainSupport$     0218 GR  |   2 A$mainSupport$     1698 GR
  2 A$mainSupport$     169A GR  |   2 A$mainSupport$     169C GR
  2 A$mainSupport$     169D GR  |   2 A$mainSupport$     169E GR
  2 A$mainSupport$     16A0 GR  |   2 A$mainSupport$     16A2 GR
  2 A$mainSupport$     16A4 GR  |   2 A$mainSupport$     021A GR
  2 A$mainSupport$     16A6 GR  |   2 A$mainSupport$     16A9 GR
  2 A$mainSupport$     021D GR  |   2 A$mainSupport$     16AC GR
  2 A$mainSupport$     16AE GR  |   2 A$mainSupport$     16B1 GR
  2 A$mainSupport$     021F GR  |   2 A$mainSupport$     16B4 GR
  2 A$mainSupport$     16B7 GR  |   2 A$mainSupport$     16B8 GR
  2 A$mainSupport$     16BA GR  |   2 A$mainSupport$     16BD GR
  2 A$mainSupport$     16C0 GR  |   2 A$mainSupport$     16C3 GR
  2 A$mainSupport$     16C5 GR  |   2 A$mainSupport$     16C8 GR
  2 A$mainSupport$     16CA GR  |   2 A$mainSupport$     16CD GR
  2 A$mainSupport$     16CF GR  |   2 A$mainSupport$     16D2 GR
  2 A$mainSupport$     16D4 GR  |   2 A$mainSupport$     16D6 GR
  2 A$mainSupport$     16D7 GR  |   2 A$mainSupport$     16D9 GR
  2 A$mainSupport$     16DB GR  |   2 A$mainSupport$     16DF GR
  2 A$mainSupport$     16E1 GR  |   2 A$mainSupport$     16E5 GR
  2 A$mainSupport$     16E7 GR  |   2 A$mainSupport$     16E9 GR
  2 A$mainSupport$     16EA GR  |   2 A$mainSupport$     16EC GR
  2 A$mainSupport$     16EF GR  |   2 A$mainSupport$     16F1 GR
  2 A$mainSupport$     16F3 GR  |   2 A$mainSupport$     16F5 GR
  2 A$mainSupport$     16F7 GR  |   2 A$mainSupport$     16FA GR
  2 A$mainSupport$     0222 GR  |   2 A$mainSupport$     16FD GR
  2 A$mainSupport$     1700 GR  |   2 A$mainSupport$     0224 GR
  2 A$mainSupport$     1703 GR  |   2 A$mainSupport$     1706 GR
  2 A$mainSupport$     1708 GR  |   2 A$mainSupport$     1709 GR
  2 A$mainSupport$     170B GR  |   2 A$mainSupport$     170E GR
  2 A$mainSupport$     1711 GR  |   2 A$mainSupport$     1714 GR
  2 A$mainSupport$     1717 GR  |   2 A$mainSupport$     171A GR
  2 A$mainSupport$     171D GR  |   2 A$mainSupport$     1720 GR
  2 A$mainSupport$     1722 GR  |   2 A$mainSupport$     1725 GR
  2 A$mainSupport$     1727 GR  |   2 A$mainSupport$     172A GR
  2 A$mainSupport$     172D GR  |   2 A$mainSupport$     1730 GR
  2 A$mainSupport$     1732 GR  |   2 A$mainSupport$     1735 GR
  2 A$mainSupport$     1738 GR  |   2 A$mainSupport$     173A GR
  2 A$mainSupport$     173C GR  |   2 A$mainSupport$     0226 GR
  2 A$mainSupport$     173E GR  |   2 A$mainSupport$     1740 GR
  2 A$mainSupport$     1743 GR  |   2 A$mainSupport$     1745 GR
  2 A$mainSupport$     1748 GR  |   2 A$mainSupport$     0228 GR
  2 A$mainSupport$     174B GR  |   2 A$mainSupport$     174D GR
  2 A$mainSupport$     174F GR  |   2 A$mainSupport$     1753 GR
  2 A$mainSupport$     1755 GR  |   2 A$mainSupport$     022B GR
  2 A$mainSupport$     1759 GR  |   2 A$mainSupport$     175C GR
  2 A$mainSupport$     175F GR  |   2 A$mainSupport$     022D GR
  2 A$mainSupport$     1761 GR  |   2 A$mainSupport$     1764 GR
  2 A$mainSupport$     1767 GR  |   2 A$mainSupport$     0230 GR
  2 A$mainSupport$     1769 GR  |   2 A$mainSupport$     176C GR
  2 A$mainSupport$     176E GR  |   2 A$mainSupport$     1771 GR
  2 A$mainSupport$     0232 GR  |   2 A$mainSupport$     1773 GR
  2 A$mainSupport$     1775 GR  |   2 A$mainSupport$     1778 GR
  2 A$mainSupport$     1779 GR  |   2 A$mainSupport$     177B GR
  2 A$mainSupport$     177C GR  |   2 A$mainSupport$     0235 GR
  2 A$mainSupport$     177D GR  |   2 A$mainSupport$     177F GR
  2 A$mainSupport$     1783 GR  |   2 A$mainSupport$     1785 GR
  2 A$mainSupport$     1788 GR  |   2 A$mainSupport$     178B GR
  2 A$mainSupport$     178E GR  |   2 A$mainSupport$     1791 GR
  2 A$mainSupport$     1794 GR  |   2 A$mainSupport$     1797 GR
  2 A$mainSupport$     1799 GR  |   2 A$mainSupport$     179B GR
  2 A$mainSupport$     179D GR  |   2 A$mainSupport$     179F GR
  2 A$mainSupport$     17A3 GR  |   2 A$mainSupport$     17A6 GR
  2 A$mainSupport$     17A9 GR  |   2 A$mainSupport$     17AB GR
  2 A$mainSupport$     17AE GR  |   2 A$mainSupport$     17B0 GR
  2 A$mainSupport$     0238 GR  |   2 A$mainSupport$     17B3 GR
  2 A$mainSupport$     17B6 GR  |   2 A$mainSupport$     17B8 GR
  2 A$mainSupport$     17BA GR  |   2 A$mainSupport$     17BE GR
  2 A$mainSupport$     023A GR  |   2 A$mainSupport$     17C1 GR
  2 A$mainSupport$     17C4 GR  |   2 A$mainSupport$     023C GR
  2 A$mainSupport$     17C7 GR  |   2 A$mainSupport$     17CA GR
  2 A$mainSupport$     17CD GR  |   2 A$mainSupport$     17CF GR
  2 A$mainSupport$     023F GR  |   2 A$mainSupport$     17D2 GR
  2 A$mainSupport$     17D4 GR  |   2 A$mainSupport$     17D7 GR
  2 A$mainSupport$     17D9 GR  |   2 A$mainSupport$     0241 GR
  2 A$mainSupport$     17DB GR  |   2 A$mainSupport$     17DE GR
  2 A$mainSupport$     17DF GR  |   2 A$mainSupport$     17E1 GR
  2 A$mainSupport$     17E2 GR  |   2 A$mainSupport$     17E3 GR
  2 A$mainSupport$     17E5 GR  |   2 A$mainSupport$     17E9 GR
  2 A$mainSupport$     17EB GR  |   2 A$mainSupport$     17EE GR
  2 A$mainSupport$     17F1 GR  |   2 A$mainSupport$     17F4 GR
  2 A$mainSupport$     17F7 GR  |   2 A$mainSupport$     17FA GR
  2 A$mainSupport$     17FD GR  |   2 A$mainSupport$     17FE GR
  2 A$mainSupport$     1800 GR  |   2 A$mainSupport$     1801 GR
  2 A$mainSupport$     1802 GR  |   2 A$mainSupport$     1804 GR
  2 A$mainSupport$     1808 GR  |   2 A$mainSupport$     180A GR
  2 A$mainSupport$     180D GR  |   2 A$mainSupport$     1810 GR
  2 A$mainSupport$     1813 GR  |   2 A$mainSupport$     1816 GR
  2 A$mainSupport$     1818 GR  |   2 A$mainSupport$     181B GR
  2 A$mainSupport$     181D GR  |   2 A$mainSupport$     0244 GR
  2 A$mainSupport$     1820 GR  |   2 A$mainSupport$     1822 GR
  2 A$mainSupport$     1825 GR  |   2 A$mainSupport$     1827 GR
  2 A$mainSupport$     0246 GR  |   2 A$mainSupport$     1829 GR
  2 A$mainSupport$     182D GR  |   2 A$mainSupport$     182F GR
  2 A$mainSupport$     1833 GR  |   2 A$mainSupport$     1836 GR
  2 A$mainSupport$     183A GR  |   2 A$mainSupport$     183D GR
  2 A$mainSupport$     183E GR  |   2 A$mainSupport$     1840 GR
  2 A$mainSupport$     1841 GR  |   2 A$mainSupport$     1842 GR
  2 A$mainSupport$     1844 GR  |   2 A$mainSupport$     1848 GR
  2 A$mainSupport$     184A GR  |   2 A$mainSupport$     184D GR
  2 A$mainSupport$     1850 GR  |   2 A$mainSupport$     1853 GR
  2 A$mainSupport$     1856 GR  |   2 A$mainSupport$     1858 GR
  2 A$mainSupport$     185B GR  |   2 A$mainSupport$     185D GR
  2 A$mainSupport$     1860 GR  |   2 A$mainSupport$     1862 GR
  2 A$mainSupport$     1865 GR  |   2 A$mainSupport$     1868 GR
  2 A$mainSupport$     186B GR  |   2 A$mainSupport$     186D GR
  2 A$mainSupport$     1870 GR  |   2 A$mainSupport$     1872 GR
  2 A$mainSupport$     1875 GR  |   2 A$mainSupport$     1877 GR
  2 A$mainSupport$     1879 GR  |   2 A$mainSupport$     187B GR
  2 A$mainSupport$     0248 GR  |   2 A$mainSupport$     187E GR
  2 A$mainSupport$     1881 GR  |   2 A$mainSupport$     024A GR
  2 A$mainSupport$     1884 GR  |   2 A$mainSupport$     1886 GR
  2 A$mainSupport$     1889 GR  |   2 A$mainSupport$     188B GR
  2 A$mainSupport$     188D GR  |   2 A$mainSupport$     024D GR
  2 A$mainSupport$     1891 GR  |   2 A$mainSupport$     1893 GR
  2 A$mainSupport$     1895 GR  |   2 A$mainSupport$     1898 GR
  2 A$mainSupport$     024F GR  |   2 A$mainSupport$     189B GR
  2 A$mainSupport$     189E GR  |   2 A$mainSupport$     18A1 GR
  2 A$mainSupport$     0252 GR  |   2 A$mainSupport$     18A3 GR
  2 A$mainSupport$     18A6 GR  |   2 A$mainSupport$     18A8 GR
  2 A$mainSupport$     18AB GR  |   2 A$mainSupport$     18AD GR
  2 A$mainSupport$     18AF GR  |   2 A$mainSupport$     0254 GR
  2 A$mainSupport$     18B3 GR  |   2 A$mainSupport$     18B6 GR
  2 A$mainSupport$     18B8 GR  |   2 A$mainSupport$     18BA GR
  2 A$mainSupport$     0257 GR  |   2 A$mainSupport$     18BC GR
  2 A$mainSupport$     18BE GR  |   2 A$mainSupport$     18C1 GR
  2 A$mainSupport$     18C3 GR  |   2 A$mainSupport$     18C6 GR
  2 A$mainSupport$     18C8 GR  |   2 A$mainSupport$     18CA GR
  2 A$mainSupport$     18CC GR  |   2 A$mainSupport$     18D0 GR
  2 A$mainSupport$     18D2 GR  |   2 A$mainSupport$     18D6 GR
  2 A$mainSupport$     18D8 GR  |   2 A$mainSupport$     18DB GR
  2 A$mainSupport$     18DD GR  |   2 A$mainSupport$     18DF GR
  2 A$mainSupport$     18E1 GR  |   2 A$mainSupport$     18E4 GR
  2 A$mainSupport$     18E7 GR  |   2 A$mainSupport$     18E8 GR
  2 A$mainSupport$     18EA GR  |   2 A$mainSupport$     18EB GR
  2 A$mainSupport$     18EC GR  |   2 A$mainSupport$     18EE GR
  2 A$mainSupport$     18F2 GR  |   2 A$mainSupport$     025A GR
  2 A$mainSupport$     18F4 GR  |   2 A$mainSupport$     18F7 GR
  2 A$mainSupport$     18FA GR  |   2 A$mainSupport$     18FD GR
  2 A$mainSupport$     025C GR  |   2 A$mainSupport$     1900 GR
  2 A$mainSupport$     1903 GR  |   2 A$mainSupport$     1905 GR
  2 A$mainSupport$     1907 GR  |   2 A$mainSupport$     025E GR
  2 A$mainSupport$     190B GR  |   2 A$mainSupport$     190D GR
  2 A$mainSupport$     190F GR  |   2 A$mainSupport$     1912 GR
  2 A$mainSupport$     0260 GR  |   2 A$mainSupport$     1915 GR
  2 A$mainSupport$     1918 GR  |   2 A$mainSupport$     0263 GR
  2 A$mainSupport$     191B GR  |   2 A$mainSupport$     191D GR
  2 A$mainSupport$     1920 GR  |   2 A$mainSupport$     0265 GR
  2 A$mainSupport$     1922 GR  |   2 A$mainSupport$     1925 GR
  2 A$mainSupport$     1928 GR  |   2 A$mainSupport$     192B GR
  2 A$mainSupport$     192F GR  |   2 A$mainSupport$     1931 GR
  2 A$mainSupport$     1935 GR  |   2 A$mainSupport$     1939 GR
  2 A$mainSupport$     193B GR  |   2 A$mainSupport$     193C GR
  2 A$mainSupport$     193D GR  |   2 A$mainSupport$     193F GR
  2 A$mainSupport$     1942 GR  |   2 A$mainSupport$     1946 GR
  2 A$mainSupport$     1948 GR  |   2 A$mainSupport$     194C GR
  2 A$mainSupport$     194E GR  |   2 A$mainSupport$     1950 GR
  2 A$mainSupport$     1953 GR  |   2 A$mainSupport$     1955 GR
  2 A$mainSupport$     0268 GR  |   2 A$mainSupport$     1958 GR
  2 A$mainSupport$     195A GR  |   2 A$mainSupport$     195D GR
  2 A$mainSupport$     026A GR  |   2 A$mainSupport$     1960 GR
  2 A$mainSupport$     1963 GR  |   2 A$mainSupport$     1966 GR
  2 A$mainSupport$     026C GR  |   2 A$mainSupport$     1969 GR
  2 A$mainSupport$     196B GR  |   2 A$mainSupport$     196E GR
  2 A$mainSupport$     1971 GR  |   2 A$mainSupport$     1973 GR
  2 A$mainSupport$     1975 GR  |   2 A$mainSupport$     1977 GR
  2 A$mainSupport$     197A GR  |   2 A$mainSupport$     197D GR
  2 A$mainSupport$     1980 GR  |   2 A$mainSupport$     1983 GR
  2 A$mainSupport$     1986 GR  |   2 A$mainSupport$     1988 GR
  2 A$mainSupport$     198A GR  |   2 A$mainSupport$     198E GR
  2 A$mainSupport$     1991 GR  |   2 A$mainSupport$     1994 GR
  2 A$mainSupport$     1996 GR  |   2 A$mainSupport$     1998 GR
  2 A$mainSupport$     199A GR  |   2 A$mainSupport$     199D GR
  2 A$mainSupport$     19A0 GR  |   2 A$mainSupport$     19A1 GR
  2 A$mainSupport$     19A3 GR  |   2 A$mainSupport$     19A4 GR
  2 A$mainSupport$     026E GR  |   2 A$mainSupport$     19A5 GR
  2 A$mainSupport$     19A7 GR  |   2 A$mainSupport$     19AB GR
  2 A$mainSupport$     19AD GR  |   2 A$mainSupport$     19B0 GR
  2 A$mainSupport$     19B3 GR  |   2 A$mainSupport$     0270 GR
  2 A$mainSupport$     19B6 GR  |   2 A$mainSupport$     19B9 GR
  2 A$mainSupport$     19BB GR  |   2 A$mainSupport$     19BD GR
  2 A$mainSupport$     0272 GR  |   2 A$mainSupport$     19C0 GR
  2 A$mainSupport$     19C2 GR  |   2 A$mainSupport$     19C5 GR
  2 A$mainSupport$     19C8 GR  |   2 A$mainSupport$     19CB GR
  2 A$mainSupport$     19CD GR  |   2 A$mainSupport$     19D0 GR
  2 A$mainSupport$     19D2 GR  |   2 A$mainSupport$     19D5 GR
  2 A$mainSupport$     19D7 GR  |   2 A$mainSupport$     19D9 GR
  2 A$mainSupport$     19DC GR  |   2 A$mainSupport$     19DF GR
  2 A$mainSupport$     19E2 GR  |   2 A$mainSupport$     19E5 GR
  2 A$mainSupport$     0276 GR  |   2 A$mainSupport$     19E8 GR
  2 A$mainSupport$     19EB GR  |   2 A$mainSupport$     19EC GR
  2 A$mainSupport$     19EE GR  |   2 A$mainSupport$     19F1 GR
  2 A$mainSupport$     19F3 GR  |   2 A$mainSupport$     19F5 GR
  2 A$mainSupport$     19F7 GR  |   2 A$mainSupport$     0278 GR
  2 A$mainSupport$     19FA GR  |   2 A$mainSupport$     19FE GR
  2 A$mainSupport$     027A GR  |   2 A$mainSupport$     1A00 GR
  2 A$mainSupport$     1A03 GR  |   2 A$mainSupport$     1A05 GR
  2 A$mainSupport$     1A08 GR  |   2 A$mainSupport$     027D GR
  2 A$mainSupport$     1A60 GR  |   2 A$mainSupport$     1A62 GR
  2 A$mainSupport$     027F GR  |   2 A$mainSupport$     1A64 GR
  2 A$mainSupport$     1A67 GR  |   2 A$mainSupport$     1A6A GR
  2 A$mainSupport$     1A6E GR  |   2 A$mainSupport$     1A6F GR
  2 A$mainSupport$     1A71 GR  |   2 A$mainSupport$     1A72 GR
  2 A$mainSupport$     1A74 GR  |   2 A$mainSupport$     1A76 GR
  2 A$mainSupport$     1A78 GR  |   2 A$mainSupport$     1A7B GR
  2 A$mainSupport$     1A7D GR  |   2 A$mainSupport$     1A80 GR
  2 A$mainSupport$     1A82 GR  |   2 A$mainSupport$     1A85 GR
  2 A$mainSupport$     1A88 GR  |   2 A$mainSupport$     1A8A GR
  2 A$mainSupport$     1A8D GR  |   2 A$mainSupport$     1A8F GR
  2 A$mainSupport$     1A92 GR  |   2 A$mainSupport$     1A94 GR
  2 A$mainSupport$     1A97 GR  |   2 A$mainSupport$     1A99 GR
  2 A$mainSupport$     1A9C GR  |   2 A$mainSupport$     1A9E GR
  2 A$mainSupport$     1AA1 GR  |   2 A$mainSupport$     1AA4 GR
  2 A$mainSupport$     1AA6 GR  |   2 A$mainSupport$     1AA8 GR
  2 A$mainSupport$     1AAA GR  |   2 A$mainSupport$     1AAC GR
  2 A$mainSupport$     1AAE GR  |   2 A$mainSupport$     1AB2 GR
  2 A$mainSupport$     1AB4 GR  |   2 A$mainSupport$     1AB6 GR
  2 A$mainSupport$     1AB9 GR  |   2 A$mainSupport$     1ABD GR
  2 A$mainSupport$     1AC0 GR  |   2 A$mainSupport$     0282 GR
  2 A$mainSupport$     1AC3 GR  |   2 A$mainSupport$     1AC6 GR
  2 A$mainSupport$     1AC8 GR  |   2 A$mainSupport$     1AC9 GR
  2 A$mainSupport$     0284 GR  |   2 A$mainSupport$     1ACC GR
  2 A$mainSupport$     1ACE GR  |   2 A$mainSupport$     1ACF GR
  2 A$mainSupport$     1AD1 GR  |   2 A$mainSupport$     1AD3 GR
  2 A$mainSupport$     1AD6 GR  |   2 A$mainSupport$     1AD8 GR
  2 A$mainSupport$     1ADB GR  |   2 A$mainSupport$     1ADD GR
  2 A$mainSupport$     1AE0 GR  |   2 A$mainSupport$     1AE3 GR
  2 A$mainSupport$     1AE5 GR  |   2 A$mainSupport$     1AE8 GR
  2 A$mainSupport$     1AEA GR  |   2 A$mainSupport$     1AED GR
  2 A$mainSupport$     1AEF GR  |   2 A$mainSupport$     1AF2 GR
  2 A$mainSupport$     1AF4 GR  |   2 A$mainSupport$     1AF7 GR
  2 A$mainSupport$     1AF9 GR  |   2 A$mainSupport$     1AFC GR
  2 A$mainSupport$     1AFF GR  |   2 A$mainSupport$     1B01 GR
  2 A$mainSupport$     1B03 GR  |   2 A$mainSupport$     1B05 GR
  2 A$mainSupport$     1B07 GR  |   2 A$mainSupport$     1B09 GR
  2 A$mainSupport$     1B0C GR  |   2 A$mainSupport$     1B0F GR
  2 A$mainSupport$     1B10 GR  |   2 A$mainSupport$     1B12 GR
  2 A$mainSupport$     1B15 GR  |   2 A$mainSupport$     1B16 GR
  2 A$mainSupport$     1B18 GR  |   2 A$mainSupport$     1B1B GR
  2 A$mainSupport$     1B1D GR  |   2 A$mainSupport$     1B20 GR
  2 A$mainSupport$     1B22 GR  |   2 A$mainSupport$     1B25 GR
  2 A$mainSupport$     1B28 GR  |   2 A$mainSupport$     1B2A GR
  2 A$mainSupport$     1B2D GR  |   2 A$mainSupport$     1B2F GR
  2 A$mainSupport$     1B31 GR  |   2 A$mainSupport$     1B33 GR
  2 A$mainSupport$     1B36 GR  |   2 A$mainSupport$     1B38 GR
  2 A$mainSupport$     1B3A GR  |   2 A$mainSupport$     1B3D GR
  2 A$mainSupport$     1B40 GR  |   2 A$mainSupport$     1B42 GR
  2 A$mainSupport$     1B44 GR  |   2 A$mainSupport$     0286 GR
  2 A$mainSupport$     1B46 GR  |   2 A$mainSupport$     1B49 GR
  2 A$mainSupport$     1B4C GR  |   2 A$mainSupport$     1B4D GR
  2 A$mainSupport$     1B4F GR  |   2 A$mainSupport$     0288 GR
  2 A$mainSupport$     1B52 GR  |   2 A$mainSupport$     1B54 GR
  2 A$mainSupport$     1B57 GR  |   2 A$mainSupport$     1B59 GR
  2 A$mainSupport$     1B5C GR  |   2 A$mainSupport$     028A GR
  2 A$mainSupport$     1B5F GR  |   2 A$mainSupport$     1B61 GR
  2 A$mainSupport$     1B64 GR  |   2 A$mainSupport$     028E GR
  2 A$mainSupport$     1B67 GR  |   2 A$mainSupport$     1B6A GR
  2 A$mainSupport$     1B6D GR  |   2 A$mainSupport$     1B70 GR
  2 A$mainSupport$     1B72 GR  |   2 A$mainSupport$     1B74 GR
  2 A$mainSupport$     1B76 GR  |   2 A$mainSupport$     1B79 GR
  2 A$mainSupport$     1B7C GR  |   2 A$mainSupport$     1B7E GR
  2 A$mainSupport$     1B80 GR  |   2 A$mainSupport$     1B82 GR
  2 A$mainSupport$     1B84 GR  |   2 A$mainSupport$     1B85 GR
  2 A$mainSupport$     1B87 GR  |   2 A$mainSupport$     1B89 GR
  2 A$mainSupport$     1B8B GR  |   2 A$mainSupport$     1B8D GR
  2 A$mainSupport$     1B8F GR  |   2 A$mainSupport$     1B91 GR
  2 A$mainSupport$     1B94 GR  |   2 A$mainSupport$     1B96 GR
  2 A$mainSupport$     1B99 GR  |   2 A$mainSupport$     1B9B GR
  2 A$mainSupport$     1B9E GR  |   2 A$mainSupport$     1BA1 GR
  2 A$mainSupport$     1BA3 GR  |   2 A$mainSupport$     1BA6 GR
  2 A$mainSupport$     1BA8 GR  |   2 A$mainSupport$     1BAB GR
  2 A$mainSupport$     1BAD GR  |   2 A$mainSupport$     1BB0 GR
  2 A$mainSupport$     1BB2 GR  |   2 A$mainSupport$     1BB5 GR
  2 A$mainSupport$     1BB7 GR  |   2 A$mainSupport$     1BBA GR
  2 A$mainSupport$     1BBD GR  |   2 A$mainSupport$     1BBF GR
  2 A$mainSupport$     1BC1 GR  |   2 A$mainSupport$     1BC3 GR
  2 A$mainSupport$     1BC5 GR  |   2 A$mainSupport$     1BC7 GR
  2 A$mainSupport$     1BC9 GR  |   2 A$mainSupport$     1BCD GR
  2 A$mainSupport$     1BCF GR  |   2 A$mainSupport$     0290 GR
  2 A$mainSupport$     1BD2 GR  |   2 A$mainSupport$     1BD6 GR
  2 A$mainSupport$     1BD8 GR  |   2 A$mainSupport$     1BD9 GR
  2 A$mainSupport$     1BDB GR  |   2 A$mainSupport$     1BDE GR
  2 A$mainSupport$     1BE0 GR  |   2 A$mainSupport$     1BE2 GR
  2 A$mainSupport$     1BE4 GR  |   2 A$mainSupport$     0294 GR
  2 A$mainSupport$     1BE7 GR  |   2 A$mainSupport$     1BE9 GR
  2 A$mainSupport$     1BEB GR  |   2 A$mainSupport$     1BED GR
  2 A$mainSupport$     0296 GR  |   2 A$mainSupport$     1BF0 GR
  2 A$mainSupport$     1BF3 GR  |   2 A$mainSupport$     1BF5 GR
  2 A$mainSupport$     1BF7 GR  |   2 A$mainSupport$     1BFA GR
  2 A$mainSupport$     1BFD GR  |   2 A$mainSupport$     1C00 GR
  2 A$mainSupport$     1C03 GR  |   2 A$mainSupport$     1C06 GR
  2 A$mainSupport$     1C09 GR  |   2 A$mainSupport$     1C0A GR
  2 A$mainSupport$     1C0C GR  |   2 A$mainSupport$     1C0F GR
  2 A$mainSupport$     1C12 GR  |   2 A$mainSupport$     1C13 GR
  2 A$mainSupport$     1C15 GR  |   2 A$mainSupport$     1C17 GR
  2 A$mainSupport$     1C1A GR  |   2 A$mainSupport$     1C1C GR
  2 A$mainSupport$     1C1F GR  |   2 A$mainSupport$     1C21 GR
  2 A$mainSupport$     1C24 GR  |   2 A$mainSupport$     1C27 GR
  2 A$mainSupport$     0298 GR  |   2 A$mainSupport$     1C29 GR
  2 A$mainSupport$     1C2B GR  |   2 A$mainSupport$     1C2D GR
  2 A$mainSupport$     1C2F GR  |   2 A$mainSupport$     029A GR
  2 A$mainSupport$     1C32 GR  |   2 A$mainSupport$     1C35 GR
  2 A$mainSupport$     1C37 GR  |   2 A$mainSupport$     1C39 GR
  2 A$mainSupport$     1C3C GR  |   2 A$mainSupport$     029B GR
  2 A$mainSupport$     1C3E GR  |   2 A$mainSupport$     1C41 GR
  2 A$mainSupport$     1C44 GR  |   2 A$mainSupport$     1C47 GR
  2 A$mainSupport$     029C GR  |   2 A$mainSupport$     1C4A GR
  2 A$mainSupport$     1C4D GR  |   2 A$mainSupport$     029E GR
  2 A$mainSupport$     1C8B GR  |   2 A$mainSupport$     1C8D GR
  2 A$mainSupport$     1C90 GR  |   2 A$mainSupport$     1C93 GR
  2 A$mainSupport$     1C94 GR  |   2 A$mainSupport$     02A2 GR
  2 A$mainSupport$     1C95 GR  |   2 A$mainSupport$     1C97 GR
  2 A$mainSupport$     1C98 GR  |   2 A$mainSupport$     1C99 GR
  2 A$mainSupport$     1C9A GR  |   2 A$mainSupport$     1C9B GR
  2 A$mainSupport$     1C9D GR  |   2 A$mainSupport$     1C9E GR
  2 A$mainSupport$     1C9F GR  |   2 A$mainSupport$     1CA0 GR
  2 A$mainSupport$     02A4 GR  |   2 A$mainSupport$     1CA1 GR
  2 A$mainSupport$     1CA2 GR  |   2 A$mainSupport$     1CA3 GR
  2 A$mainSupport$     1CA4 GR  |   2 A$mainSupport$     1CA5 GR
  2 A$mainSupport$     1CA6 GR  |   2 A$mainSupport$     1CA7 GR
  2 A$mainSupport$     1CA9 GR  |   2 A$mainSupport$     1CAB GR
  2 A$mainSupport$     1CAC GR  |   2 A$mainSupport$     02A6 GR
  2 A$mainSupport$     1CAD GR  |   2 A$mainSupport$     1CAE GR
  2 A$mainSupport$     1CAF GR  |   2 A$mainSupport$     1CB2 GR
  2 A$mainSupport$     1CB4 GR  |   2 A$mainSupport$     1CB7 GR
  2 A$mainSupport$     02A9 GR  |   2 A$mainSupport$     1CB9 GR
  2 A$mainSupport$     1CBB GR  |   2 A$mainSupport$     1CBE GR
  2 A$mainSupport$     1CC0 GR  |   2 A$mainSupport$     1CC3 GR
  2 A$mainSupport$     1CC6 GR  |   2 A$mainSupport$     1CC9 GR
  2 A$mainSupport$     1CCB GR  |   2 A$mainSupport$     1CCD GR
  2 A$mainSupport$     1CCE GR  |   2 A$mainSupport$     1CCF GR
  2 A$mainSupport$     1CD0 GR  |   2 A$mainSupport$     1CD2 GR
  2 A$mainSupport$     1CD3 GR  |   2 A$mainSupport$     1CD5 GR
  2 A$mainSupport$     1CD8 GR  |   2 A$mainSupport$     1CDA GR
  2 A$mainSupport$     1CDD GR  |   2 A$mainSupport$     1CE0 GR
  2 A$mainSupport$     1CE2 GR  |   2 A$mainSupport$     1CE4 GR
  2 A$mainSupport$     1CE7 GR  |   2 A$mainSupport$     1CE9 GR
  2 A$mainSupport$     1CEC GR  |   2 A$mainSupport$     1CEF GR
  2 A$mainSupport$     1CF1 GR  |   2 A$mainSupport$     1CF4 GR
  2 A$mainSupport$     1CF7 GR  |   2 A$mainSupport$     1CFA GR
  2 A$mainSupport$     1CFC GR  |   2 A$mainSupport$     1CFF GR
  2 A$mainSupport$     1D02 GR  |   2 A$mainSupport$     1D04 GR
  2 A$mainSupport$     02AC GR  |   2 A$mainSupport$     1D06 GR
  2 A$mainSupport$     1D0A GR  |   2 A$mainSupport$     1D0C GR
  2 A$mainSupport$     1D0E GR  |   2 A$mainSupport$     1D10 GR
  2 A$mainSupport$     1D14 GR  |   2 A$mainSupport$     1D16 GR
  2 A$mainSupport$     1D19 GR  |   2 A$mainSupport$     1D1C GR
  2 A$mainSupport$     02AE GR  |   2 A$mainSupport$     1D1F GR
  2 A$mainSupport$     1D21 GR  |   2 A$mainSupport$     1D24 GR
  2 A$mainSupport$     1D26 GR  |   2 A$mainSupport$     1D28 GR
  2 A$mainSupport$     1D2A GR  |   2 A$mainSupport$     1D2B GR
  2 A$mainSupport$     1D2C GR  |   2 A$mainSupport$     1D2D GR
  2 A$mainSupport$     02B0 GR  |   2 A$mainSupport$     1D2F GR
  2 A$mainSupport$     1D30 GR  |   2 A$mainSupport$     1D32 GR
  2 A$mainSupport$     1D34 GR  |   2 A$mainSupport$     1D36 GR
  2 A$mainSupport$     1D39 GR  |   2 A$mainSupport$     1D3B GR
  2 A$mainSupport$     1D3D GR  |   2 A$mainSupport$     1D3F GR
  2 A$mainSupport$     02B3 GR  |   2 A$mainSupport$     1D42 GR
  2 A$mainSupport$     1D45 GR  |   2 A$mainSupport$     02B5 GR
  2 A$mainSupport$     1D48 GR  |   2 A$mainSupport$     1D4B GR
  2 A$mainSupport$     1D4E GR  |   2 A$mainSupport$     1D4F GR
  2 A$mainSupport$     1D51 GR  |   2 A$mainSupport$     1D53 GR
  2 A$mainSupport$     1D55 GR  |   2 A$mainSupport$     1D57 GR
  2 A$mainSupport$     1D58 GR  |   2 A$mainSupport$     1D5A GR
  2 A$mainSupport$     1D5B GR  |   2 A$mainSupport$     1D5C GR
  2 A$mainSupport$     1D5D GR  |   2 A$mainSupport$     1D5E GR
  2 A$mainSupport$     1D5F GR  |   2 A$mainSupport$     1D60 GR
  2 A$mainSupport$     1D63 GR  |   2 A$mainSupport$     1D65 GR
  2 A$mainSupport$     1D67 GR  |   2 A$mainSupport$     1D6A GR
  2 A$mainSupport$     1D6C GR  |   2 A$mainSupport$     1D6E GR
  2 A$mainSupport$     1D70 GR  |   2 A$mainSupport$     1D72 GR
  2 A$mainSupport$     1D74 GR  |   2 A$mainSupport$     1D76 GR
  2 A$mainSupport$     1D78 GR  |   2 A$mainSupport$     1D7A GR
  2 A$mainSupport$     1D7C GR  |   2 A$mainSupport$     1D7E GR
  2 A$mainSupport$     1D80 GR  |   2 A$mainSupport$     1D82 GR
  2 A$mainSupport$     02B8 GR  |   2 A$mainSupport$     1D84 GR
  2 A$mainSupport$     1D86 GR  |   2 A$mainSupport$     02BA GR
  2 A$mainSupport$     1D89 GR  |   2 A$mainSupport$     1D8C GR
  2 A$mainSupport$     1D8F GR  |   2 A$mainSupport$     1D92 GR
  2 A$mainSupport$     1D94 GR  |   2 A$mainSupport$     1D96 GR
  2 A$mainSupport$     1D97 GR  |   2 A$mainSupport$     1D99 GR
  2 A$mainSupport$     1D9A GR  |   2 A$mainSupport$     1D9B GR
  2 A$mainSupport$     1D9C GR  |   2 A$mainSupport$     1D9D GR
  2 A$mainSupport$     1D9E GR  |   2 A$mainSupport$     1D9F GR
  2 A$mainSupport$     1DA2 GR  |   2 A$mainSupport$     1DA4 GR
  2 A$mainSupport$     1DA5 GR  |   2 A$mainSupport$     1DA8 GR
  2 A$mainSupport$     1DAA GR  |   2 A$mainSupport$     1DAB GR
  2 A$mainSupport$     1DAD GR  |   2 A$mainSupport$     1DAF GR
  2 A$mainSupport$     1DB1 GR  |   2 A$mainSupport$     1DB3 GR
  2 A$mainSupport$     1DB5 GR  |   2 A$mainSupport$     02BC GR
  2 A$mainSupport$     1DB7 GR  |   2 A$mainSupport$     1DB9 GR
  2 A$mainSupport$     1DBC GR  |   2 A$mainSupport$     02BE GR
  2 A$mainSupport$     1DBE GR  |   2 A$mainSupport$     1DC1 GR
  2 A$mainSupport$     02C0 GR  |   2 A$mainSupport$     1DC4 GR
  2 A$mainSupport$     1DC6 GR  |   2 A$mainSupport$     1DC9 GR
  2 A$mainSupport$     02C2 GR  |   2 A$mainSupport$     1DCC GR
  2 A$mainSupport$     1DCF GR  |   2 A$mainSupport$     1DD2 GR
  2 A$mainSupport$     1DD5 GR  |   2 A$mainSupport$     02C4 GR
  2 A$mainSupport$     1DD8 GR  |   2 A$mainSupport$     1DDB GR
  2 A$mainSupport$     02C6 GR  |   2 A$mainSupport$     1DDE GR
  2 A$mainSupport$     1DE1 GR  |   2 A$mainSupport$     02CA GR
  2 A$mainSupport$     1DE4 GR  |   2 A$mainSupport$     1DE6 GR
  2 A$mainSupport$     1DE9 GR  |   2 A$mainSupport$     1DEC GR
  2 A$mainSupport$     1DEE GR  |   2 A$mainSupport$     1DF1 GR
  2 A$mainSupport$     1DF3 GR  |   2 A$mainSupport$     1DF6 GR
  2 A$mainSupport$     1DF9 GR  |   2 A$mainSupport$     1DFC GR
  2 A$mainSupport$     1DFF GR  |   2 A$mainSupport$     1E02 GR
  2 A$mainSupport$     1E04 GR  |   2 A$mainSupport$     02CE GR
  2 A$mainSupport$     02D0 GR  |   2 A$mainSupport$     02D2 GR
  2 A$mainSupport$     02D6 GR  |   2 A$mainSupport$     02D8 GR
  2 A$mainSupport$     02DA GR  |   2 A$mainSupport$     02DD GR
  2 A$mainSupport$     02DF GR  |   2 A$mainSupport$     02E2 GR
  2 A$mainSupport$     02E4 GR  |   2 A$mainSupport$     02E6 GR
  2 A$mainSupport$     02EA GR  |   2 A$mainSupport$     02EC GR
  2 A$mainSupport$     02EE GR  |   2 A$mainSupport$     02EF GR
  2 A$mainSupport$     02F0 GR  |   2 A$mainSupport$     02F2 GR
  2 A$mainSupport$     02F6 GR  |   2 A$mainSupport$     02F8 GR
  2 A$mainSupport$     02FC GR  |   2 A$mainSupport$     02FF GR
  2 A$mainSupport$     0302 GR  |   2 A$mainSupport$     0304 GR
  2 A$mainSupport$     0306 GR  |   2 A$mainSupport$     0307 GR
  2 A$mainSupport$     0309 GR  |   2 A$mainSupport$     030B GR
  2 A$mainSupport$     030D GR  |   2 A$mainSupport$     0310 GR
  2 A$mainSupport$     0312 GR  |   2 A$mainSupport$     0315 GR
  2 A$mainSupport$     0317 GR  |   2 A$mainSupport$     0319 GR
  2 A$mainSupport$     031B GR  |   2 A$mainSupport$     031D GR
  2 A$mainSupport$     0321 GR  |   2 A$mainSupport$     0323 GR
  2 A$mainSupport$     0326 GR  |   2 A$mainSupport$     0328 GR
  2 A$mainSupport$     032A GR  |   2 A$mainSupport$     032C GR
  2 A$mainSupport$     032E GR  |   2 A$mainSupport$     0330 GR
  2 A$mainSupport$     0332 GR  |   2 A$mainSupport$     0333 GR
  2 A$mainSupport$     0335 GR  |   2 A$mainSupport$     0337 GR
  2 A$mainSupport$     0339 GR  |   2 A$mainSupport$     033B GR
  2 A$mainSupport$     033D GR  |   2 A$mainSupport$     033F GR
  2 A$mainSupport$     0340 GR  |   2 A$mainSupport$     0342 GR
  2 A$mainSupport$     0344 GR  |   2 A$mainSupport$     0346 GR
  2 A$mainSupport$     0347 GR  |   2 A$mainSupport$     0349 GR
  2 A$mainSupport$     034B GR  |   2 A$mainSupport$     034D GR
  2 A$mainSupport$     0350 GR  |   2 A$mainSupport$     0352 GR
  2 A$mainSupport$     0355 GR  |   2 A$mainSupport$     0358 GR
  2 A$mainSupport$     035A GR  |   2 A$mainSupport$     035C GR
  2 A$mainSupport$     035F GR  |   2 A$mainSupport$     0363 GR
  2 A$mainSupport$     0365 GR  |   2 A$mainSupport$     0367 GR
  2 A$mainSupport$     0369 GR  |   2 A$mainSupport$     036A GR
  2 A$mainSupport$     036C GR  |   2 A$mainSupport$     036E GR
  2 A$mainSupport$     0370 GR  |   2 A$mainSupport$     0372 GR
  2 A$mainSupport$     0374 GR  |   2 A$mainSupport$     0378 GR
  2 A$mainSupport$     037A GR  |   2 A$mainSupport$     037C GR
  2 A$mainSupport$     037F GR  |   2 A$mainSupport$     0382 GR
  2 A$mainSupport$     0385 GR  |   2 A$mainSupport$     0387 GR
  2 A$mainSupport$     038A GR  |   2 A$mainSupport$     038B GR
  2 A$mainSupport$     038D GR  |   2 A$mainSupport$     0390 GR
  2 A$mainSupport$     0392 GR  |   2 A$mainSupport$     0393 GR
  2 A$mainSupport$     0394 GR  |   2 A$mainSupport$     0396 GR
  2 A$mainSupport$     039A GR  |   2 A$mainSupport$     039C GR
  2 A$mainSupport$     039F GR  |   2 A$mainSupport$     03A2 GR
  2 A$mainSupport$     03A5 GR  |   2 A$mainSupport$     03A8 GR
  2 A$mainSupport$     03AA GR  |   2 A$mainSupport$     03AC GR
  2 A$mainSupport$     03AE GR  |   2 A$mainSupport$     03B0 GR
  2 A$mainSupport$     03B3 GR  |   2 A$mainSupport$     03B5 GR
  2 A$mainSupport$     03B8 GR  |   2 A$mainSupport$     03BA GR
  2 A$mainSupport$     03BD GR  |   2 A$mainSupport$     03C0 GR
  2 A$mainSupport$     03C3 GR  |   2 A$mainSupport$     03C5 GR
  2 A$mainSupport$     03C8 GR  |   2 A$mainSupport$     03CA GR
  2 A$mainSupport$     03CC GR  |   2 A$mainSupport$     03CF GR
  2 A$mainSupport$     03D1 GR  |   2 A$mainSupport$     03D3 GR
  2 A$mainSupport$     03D5 GR  |   2 A$mainSupport$     03D8 GR
  2 A$mainSupport$     03DB GR  |   2 A$mainSupport$     03DF GR
  2 A$mainSupport$     03E1 GR  |   2 A$mainSupport$     03E4 GR
  2 A$mainSupport$     03E6 GR  |   2 A$mainSupport$     03E7 GR
  2 A$mainSupport$     03E9 GR  |   2 A$mainSupport$     03EB GR
  2 A$mainSupport$     03EE GR  |   2 A$mainSupport$     03F1 GR
  2 A$mainSupport$     03F3 GR  |   2 A$mainSupport$     03F6 GR
  2 A$mainSupport$     03F8 GR  |   2 A$mainSupport$     03FB GR
  2 A$mainSupport$     03FD GR  |   2 A$mainSupport$     0400 GR
  2 A$mainSupport$     0403 GR  |   2 A$mainSupport$     0405 GR
  2 A$mainSupport$     0408 GR  |   2 A$mainSupport$     040A GR
  2 A$mainSupport$     040D GR  |   2 A$mainSupport$     040F GR
  2 A$mainSupport$     0411 GR  |   2 A$mainSupport$     00D4 GR
  2 A$mainSupport$     0414 GR  |   2 A$mainSupport$     0416 GR
  2 A$mainSupport$     0419 GR  |   2 A$mainSupport$     00D6 GR
  2 A$mainSupport$     041B GR  |   2 A$mainSupport$     041D GR
  2 A$mainSupport$     041F GR  |   2 A$mainSupport$     0422 GR
  2 A$mainSupport$     0424 GR  |   2 A$mainSupport$     0427 GR
  2 A$mainSupport$     0429 GR  |   2 A$mainSupport$     042B GR
  2 A$mainSupport$     042D GR  |   2 A$mainSupport$     0430 GR
  2 A$mainSupport$     0433 GR  |   2 A$mainSupport$     0436 GR
  2 A$mainSupport$     0439 GR  |   2 A$mainSupport$     043B GR
  2 A$mainSupport$     043D GR  |   2 A$mainSupport$     0440 GR
  2 A$mainSupport$     0442 GR  |   2 A$mainSupport$     0444 GR
  2 A$mainSupport$     0447 GR  |   2 A$mainSupport$     0449 GR
  2 A$mainSupport$     044C GR  |   2 A$mainSupport$     044E GR
  2 A$mainSupport$     0451 GR  |   2 A$mainSupport$     0453 GR
  2 A$mainSupport$     0456 GR  |   2 A$mainSupport$     0459 GR
  2 A$mainSupport$     045A GR  |   2 A$mainSupport$     045C GR
  2 A$mainSupport$     045E GR  |   2 A$mainSupport$     0461 GR
  2 A$mainSupport$     0464 GR  |   2 A$mainSupport$     0466 GR
  2 A$mainSupport$     0469 GR  |   2 A$mainSupport$     046B GR
  2 A$mainSupport$     046E GR  |   2 A$mainSupport$     0471 GR
  2 A$mainSupport$     0473 GR  |   2 A$mainSupport$     0475 GR
  2 A$mainSupport$     0477 GR  |   2 A$mainSupport$     047A GR
  2 A$mainSupport$     047C GR  |   2 A$mainSupport$     047E GR
  2 A$mainSupport$     047F GR  |   2 A$mainSupport$     0481 GR
  2 A$mainSupport$     0483 GR  |   2 A$mainSupport$     0485 GR
  2 L10                02CE R   |   2 L100               0E53 R
  2 L101               100B R   |   2 L102               0E9C R
  2 L103               19D5 R   |   2 L104               0F2C R
  2 L105               19C5 R   |   2 L106               0EB8 R
  2 L107               0EE2 R   |   2 L108               0F12 R
  2 L109               0F1E R   |   2 L11                02C4 R
  2 L110               0F5B R   |   2 L111               0F58 R
  2 L112               0F6E R   |   2 L113               0FF6 R
  2 L114               0FA8 R   |   2 L115               0FE3 R
  2 L116               19C0 R   |   2 L117               1172 R
  2 L118               10AF R   |   2 L119               1065 R
  2 L12                0290 R   |   2 L120               107D R
  2 L121               1097 R   |   2 L122               10A6 R
  2 L123               10C2 R   |   2 L124               10D5 R
  2 L125               10E8 R   |   2 L126               115D R
  2 L127               1104 R   |   2 L128               1144 R
  2 L129               12BA R   |   2 L13                0416 R
  2 L130               119C R   |   2 L131               11CB R
  2 L132               11C8 R   |   2 L133               11DE R
  2 L134               11F1 R   |   2 L135               1277 R
  2 L136               122B R   |   2 L137               125B R
  2 L138               126E R   |   2 L139               12B1 R
  2 L14                02EC R   |   2 L140               14E0 R
  2 L141               13C8 R   |   2 L142               12D5 R
  2 L143               12F0 R   |   2 L144               1319 R
  2 L145               1305 R   |   2 L146               12FC R
  2 L147               1339 R   |   2 L148               135B R
  2 L149               137B R   |   2 L15                0332 R
  2 L150               136B R   |   2 L151               1387 R
  2 L152               1393 R   |   2 L153               139F R
  2 L154               13AB R   |   2 L155               13B6 R
  2 L156               12E3 R   |   2 L157               13BF R
  2 L159               140A R   |   2 L16                0342 R
  2 L160               141D R   |   2 L161               145C R
  2 L162               1453 R   |   2 L163               146F R
  2 L164               1491 R   |   2 L165               1488 R
  2 L166               1A03 R   |   2 L167               1889 R
  2 L168               1738 R   |   2 L169               14FB R
  2 L17                038A R   |   2 L170               1504 R
  2 L171               15A4 R   |   2 L172               159B R
  2 L173               15DF R   |   2 L174               15CE R
  2 L175               161A R   |   2 L176               1609 R
  2 L177               162D R   |   2 L178               1640 R
  2 L18                0414 R   |   2 L180               1651 R
  2 L181               164F R   |   2 L182               1659 R
  2 L183               1513 R   |   2 L184               16A6 R
  2 L185               167D R   |   2 L186               1691 R
  2 L187               16B4 R   |   2 L188               16A2 R
  2 L189               16F7 R   |   2 L19                03CF R
  2 L190               1706 R   |   2 L191               171A R
  2 L192               174B R   |   2 L193               1797 R
  2 L194               176C R   |   2 L195               1794 R
  2 L196               17B6 R   |   2 L197               1825 R
  2 L198               17FA R   |   2 L199               186B R
  2 L2                 00E2 R   |   2 L20                040F R
  2 L200               187E R   |   2 L201               18B6 R
  2 L203               18C8 R   |   2 L204               1903 R
  2 L205               18E4 R   |   2 L206               1971 R
  2 L207               1918 R   |   2 L208               191B R
  2 L209               192F R   |   2 L21                03FD R
  2 L210               1986 R   |   2 L215               107B R
  2 L216               13C2 R   |   2 L217               1820 R
  2 L218               19D0 R   |   2 L219               19BB R
  2 L22                03F8 R   |   2 L220               1092 R
  2 L221               19C0 R   |   2 L222               18DF R
  2 L223               0FA3 R   |   2 L224               19B9 R
  2 L226               1B70 R   |   2 L228               1B49 R
  2 L23                0424 R   |   2 L231               1B7E R
  2 L232               1BC3 R   |   2 L234               1BE9 R
  2 L236               1C21 R   |   2 L237               1C29 R
  2 L238               1C4A R   |   2 L239               1ABD R
  2 L24                0422 R   |   2 L240               1B38 R
  2 L241               1BD6 R   |   2 L242               1BED R
  2 L244               1CEC R   |   2 L245               1D42 R
  2 L246               1D21 R   |   2 L249               1D16 R
  2 L25                00EA R   |   2 L251               1D67 R
  2 L252               1D55 R   |   2 L257               1DA5 R
  2 L258               1D94 R   |   2 L3                 00D8 R
  2 L30                040D R   |   2 L32                0442 R
  2 L33                0451 R   |   2 L36                044E R
  2 L38                0492 R   |   2 L39                0475 R
  2 L4                 010E R   |   2 L43                04BC R
  2 L44                04A4 R   |   2 L45                04C0 R
  2 L49                04ED R   |   2 L5                 011C R
  2 L50                0527 R   |   2 L52                0535 R
  2 L55                054D R   |   2 L56                0560 R
  2 L57                0563 R   |   2 L63                05B1 R
  2 L67                0620 R   |   2 L69                0712 R
  2 L7                 01B1 R   |   2 L70                0685 R
  2 L71                068B R   |   2 L72                0650 R
  2 L73                0740 R   |   2 L74                076A R
  2 L75                078B R   |   2 L8                 013F R
  2 L83                061D R   |   2 L85                0D58 R
  2 L86                0D66 R   |   2 L87                0DAA R
  2 L88                0D80 R   |   2 L89                0D90 R
  2 L9                 026E R   |   2 L90                0DAD R
  2 L92                0DBF R   |   2 L93                0DBD R
  2 L94                0DEB R   |   2 L95                0E20 R
  2 L96                1A05 R   |   2 L97                0E27 R
  2 L98                0D34 R   |   2 L99                0E3F R
  2 LC0                0000 R   |   2 LC1                000D R
  2 LC10               0051 R   |   2 LC11               005D R
  2 LC12               0062 R   |   2 LC13               006C R
  2 LC14               0071 R   |   2 LC15               0076 R
  2 LC16               008B R   |   2 LC17               0096 R
  2 LC18               00A2 R   |   2 LC19               00B3 R
  2 LC2                0012 R   |   2 LC20               05D2 R
  2 LC21               05E4 R   |   2 LC22               05FA R
  2 LC23               060E R   |   2 LC24               07F9 R
  2 LC25               0802 R   |   2 LC26               0808 R
  2 LC27               080D R   |   2 LC28               082F R
  2 LC29               0852 R   |   2 LC3                001D R
  2 LC30               085A R   |   2 LC31               086E R
  2 LC32               0882 R   |   2 LC33               08A1 R
  2 LC34               08A7 R   |   2 LC35               08B3 R
  2 LC36               08C3 R   |   2 LC37               08D5 R
  2 LC38               08EC R   |   2 LC39               0909 R
  2 LC4                0025 R   |   2 LC40               091B R
  2 LC41               092F R   |   2 LC42               094C R
  2 LC43               095B R   |   2 LC44               097A R
  2 LC45               098D R   |   2 LC46               09AB R
  2 LC47               09B9 R   |   2 LC48               09CC R
  2 LC49               09E7 R   |   2 LC5                0031 R
  2 LC50               09FE R   |   2 LC51               0A19 R
  2 LC52               0A28 R   |   2 LC53               0A33 R
  2 LC54               0A46 R   |   2 LC55               0A4B R
  2 LC56               0A50 R   |   2 LC57               0A56 R
  2 LC58               0A5C R   |   2 LC59               0A60 R
  2 LC6                0037 R   |   2 LC60               0A65 R
  2 LC61               0A73 R   |   2 LC62               0A85 R
  2 LC63               0A9D R   |   2 LC64               0AB2 R
  2 LC65               0ABD R   |   2 LC66               0AD7 R
  2 LC67               0AE5 R   |   2 LC68               0AF3 R
  2 LC69               0AFE R   |   2 LC7                003F R
  2 LC70               0B10 R   |   2 LC71               0B23 R
  2 LC72               0B36 R   |   2 LC73               0B49 R
  2 LC74               0B5C R   |   2 LC75               0B70 R
  2 LC76               0B83 R   |   2 LC77               0B94 R
  2 LC78               0BA2 R   |   2 LC79               0BAF R
  2 LC8                0045 R   |   2 LC80               0BC5 R
  2 LC81               0BCF R   |   2 LC82               0BF0 R
  2 LC83               0C11 R   |   2 LC84               0C22 R
  2 LC85               0C39 R   |   2 LC86               0C50 R
  2 LC87               0C5E R   |   2 LC88               0C74 R
  2 LC89               0C94 R   |   2 LC9                004B R
  2 LC90               0C9F R   |   2 LC91               0CB4 R
  2 LC92               0CD9 R   |   2 LC93               0CF9 R
  2 LC94               1A0A R   |   2 LC95               1A1F R
  2 LC96               1A35 R   |   2 LC97               1A4A R
  2 LC98               1C4F R   |   2 LC99               1C6E R
    _Joy_Digital2      **** GX  |     _RandMax           **** GX
    _Vec_Buttons       **** GX  |     _Vec_Joy_1_X       **** GX
    _Vec_Joy_1_Y       **** GX  |     _Vec_Music_Wk_     **** GX
    _Vec_Music_Wk_     **** GX  |     _Vec_XXX_04        **** GX
    _Vec_XXX_08        **** GX  |     __Do_Sound         **** GX
    __Intensity_a      **** GX  |     __XC               **** GX
    __YC               **** GX  |     ___Intensity_3     **** GX
    ___Intensity_5     **** GX  |     ___Intensity_7     **** GX
    ___Joy_Digital     **** GX  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |     ___ashlsi3         **** GX
    ___mulsi3          **** GX  |     __fi_s             **** GX
    __fi_s_s           **** GX  |     __fl_l_s           **** GX
    __fl_s             **** GX  |     __fll_s            **** GX
    __fs               **** GX  |     __fsi_s            **** GX
    _above             **** GX  |     _box               **** GX
  2 _castSpell         0D11 GR  |     _ch                **** GX
  2 _checkXP           1A60 GR  |   2 _clearMap          1D4F GR
  2 _clearMonsterS     05AC GR  |   2 _createCharact     0619 GR
    _cs                **** GX  |     _cx                **** GX
    _cy                **** GX  |     _cz                **** GX
    _displayMessag     **** GX  |   2 _displayRound      042D GR
  2 _displayStatus     00D4 GR  |     _dp_VIA_cntl       **** GX
    _dp_VIA_t1_cnt     **** GX  |     _effectOffsetX     **** GX
    _effectOffsetY     **** GX  |     _effectTimer       **** GX
  2 _elevator          045A GR  |     _elevatorY         **** GX
    _ex                **** GX  |     _fillMap           **** GX
    _gd                **** GX  |     _hp                **** GX
    _inElevator        **** GX  |   2 _initBox           04C3 GR
    _initSoundNo       **** GX  |     _initString        **** GX
  2 _initVars          1D80 GR  |     _inventory         **** GX
    _items             **** GX  |     _l                 **** GX
    _lRandMax          **** GX  |     _lastX             **** GX
    _lastY             **** GX  |     _lightChange       **** GX
    _lltmp             **** GX  |     _localTimer        **** GX
    _ltmp              **** GX  |     _lv                **** GX
    _m                 **** GX  |     _mh                **** GX
    _ml                **** GX  |     _mo                **** GX
  2 _monsterOnStac     04E4 GR  |   2 _monsterOnStac     0539 GR
  2 _monsterOnStac     059F GR  |     _msgLine           **** GX
    _mulhi3            **** GX  |   2 _pause             04A2 GR
    _printCharacte     **** GX  |     _printDungeon      **** GX
    _printEnvironm     **** GX  |     _printMessage      **** GX
    _printTreasure     **** GX  |     _printfEffect      **** GX
    _printfsi          **** GX  |   2 _randomXP          1C8B GR
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
   2 .text            size 1E06   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

