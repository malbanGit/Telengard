                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	string.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
                             10 ; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
                             11 ; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
                             13 ; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
                             14 ; C:\Dev\Vide\projects\Telengard\source\bank0\string.enr.c
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
                             40 	.globl	_vstrcpy
   388F                      41 _vstrcpy:
   388F 34 40         [ 6]   42 	pshs	u	;
   3891 33 84         [ 4]   43 	leau	,x	; dest, dest
   3893 AE 64         [ 6]   44 	ldx	4,s	; source, source
   3895 E6 84         [ 4]   45 	ldb	,x	; prephitmp.32,* source
   3897                      46 L3:
   3897 E7 C0         [ 6]   47 	stb	,u+	; prephitmp.32,
   3899 30 01         [ 5]   48 	leax	1,x	; source,, source
   389B E6 84         [ 4]   49 	ldb	,x	; prephitmp.32,* source
   389D 27 04         [ 3]   50 	beq	L2	;
   389F C1 80         [ 2]   51 	cmpb	#-128	;cmpqi:	; prephitmp.32,
   38A1 26 F4         [ 3]   52 	bne	L3	;
   38A3                      53 L2:
   38A3 C6 80         [ 2]   54 	ldb	#-128	;,
   38A5 E7 C4         [ 4]   55 	stb	,u	;,* dest
   38A7 35 C0         [ 7]   56 	puls	u,pc	;
                             57 	.globl	_printMessage
   38A9                      58 _printMessage:
   38A9 34 40         [ 6]   59 	pshs	u	;
   38AB 33 84         [ 4]   60 	leau	,x	; m, m
   38AD F6 C9 87      [ 5]   61 	ldb	_msgLine	; msgLine.1, msgLine
   38B0 C1 03         [ 2]   62 	cmpb	#3	;cmpqi:	; msgLine.1,
   38B2 27 13         [ 3]   63 	beq	L9	;
   38B4 1D            [ 2]   64 	sex		;extendqihi2: R:b -> R:d	; msgLine.1, msgLine.1
   38B5 58            [ 2]   65 	aslb	;
   38B6 49            [ 2]   66 	rola	;
   38B7 1F 01         [ 6]   67 	tfr	d,x	; msgLine.1, tmp31
   38B9 34 40         [ 6]   68 	pshs	u	; m
   38BB AE 89 1D 82   [ 9]   69 	ldx	_msg,x	;, msg
   38BF BD 38 8F      [ 8]   70 	jsr	_vstrcpy
   38C2 7C C9 87      [ 7]   71 	inc	_msgLine	; msgLine
   38C5 32 62         [ 5]   72 	leas	2,s	;,,
   38C7                      73 L9:
   38C7 35 C0         [ 7]   74 	puls	u,pc	;
                             75 	.globl	_removeSpaces
   38C9                      76 _removeSpaces:
   38C9 34 40         [ 6]   77 	pshs	u	;
   38CB 33 84         [ 4]   78 	leau	,x	; pointer, pointer
   38CD E6 84         [ 4]   79 	ldb	,x	;,* pointer
   38CF C1 20         [ 2]   80 	cmpb	#32	;cmpqi:	;,
   38D1 26 12         [ 3]   81 	bne	L12	;
   38D3                      82 L16:
   38D3 30 C4         [ 4]   83 	leax	,u	; tmpPointer, pointer
   38D5                      84 L13:
   38D5 30 01         [ 5]   85 	leax	1,x	; tmpPointer,, tmpPointer
   38D7 E6 84         [ 4]   86 	ldb	,x	; D.3036,* tmpPointer
   38D9 E7 1F         [ 5]   87 	stb	-1,x	; D.3036,
   38DB 26 F8         [ 3]   88 	bne	L13	;
   38DD 6F 84         [ 6]   89 	clr	,x	;* tmpPointer
   38DF E6 C4         [ 4]   90 	ldb	,u	;,* pointer
   38E1 C1 20         [ 2]   91 	cmpb	#32	;cmpqi:	;,
   38E3 27 EE         [ 3]   92 	beq	L16	;
   38E5                      93 L12:
   38E5 30 C4         [ 4]   94 	leax	,u	;, pointer
   38E7 35 C0         [ 7]   95 	puls	u,pc	;
                             96 	.globl	_itoa
   38E9                      97 _itoa:
   38E9 34 60         [ 7]   98 	pshs	y,u	;
   38EB 32 7E         [ 5]   99 	leas	-2,s	;,,
   38ED E7 E4         [ 4]  100 	stb	,s	; n, n
   38EF C1 C7         [ 2]  101 	cmpb	#-57	;cmpqi:	; n,
   38F1 23 4C         [ 3]  102 	bls	L18	;
   38F3 CB 38         [ 2]  103 	addb	#56	; n,
   38F5 E7 E4         [ 4]  104 	stb	,s	; n, n
   38F7 10 8E 32 30   [ 4]  105 	ldy	#12848	; digit,
   38FB 6F 61         [ 7]  106 	clr	1,s	; useSpace
   38FD CE 32 38      [ 3]  107 	ldu	#12856	; digit.100,
   3900 8E 32 34      [ 3]  108 	ldx	#12852	; digit.99,
   3903                     109 L19:
   3903 C1 4F         [ 2]  110 	cmpb	#79	;cmpqi:	;,
   3905 23 2E         [ 3]  111 	bls	L21	;
   3907 CB B0         [ 2]  112 	addb	#-80	;,
   3909 E7 E4         [ 4]  113 	stb	,s	;, n
   390B 30 C4         [ 4]  114 	leax	,u	; digit.99, digit.100
   390D                     115 L22:
   390D C1 13         [ 2]  116 	cmpb	#19	;cmpqi:	;,
   390F 23 06         [ 3]  117 	bls	L24	;
   3911 CB EC         [ 2]  118 	addb	#-20	;,
   3913 E7 E4         [ 4]  119 	stb	,s	;, n
   3915 30 02         [ 5]  120 	leax	2,x	; digit.99,, digit.99
   3917                     121 L24:
   3917 C1 09         [ 2]  122 	cmpb	#9	;cmpqi:	;,
   3919 23 3A         [ 3]  123 	bls	L25	;
   391B CB F6         [ 2]  124 	addb	#-10	;,
   391D E7 E4         [ 4]  125 	stb	,s	;, n
   391F 30 01         [ 5]  126 	leax	1,x	; digit.99,, digit.99
   3921                     127 L26:
   3921 BF C8 A9      [ 6]  128 	stx	_stringBuffer4	; digit.99,
   3924 E6 E4         [ 4]  129 	ldb	,s	;, n
   3926 CB 30         [ 2]  130 	addb	#48	;,
   3928 F7 C8 AB      [ 5]  131 	stb	_stringBuffer4+2	;, stringBuffer4
   392B 7F C8 AC      [ 7]  132 	clr	_stringBuffer4+3	; stringBuffer4
   392E 8E C8 A9      [ 3]  133 	ldx	#_stringBuffer4	;,
   3931 32 62         [ 5]  134 	leas	2,s	;,,
   3933 35 E0         [ 8]  135 	puls	y,u,pc	;
   3935                     136 L21:
   3935 C1 27         [ 2]  137 	cmpb	#39	;cmpqi:	;,
   3937 23 3F         [ 3]  138 	bls	L28	;
   3939 CB D8         [ 2]  139 	addb	#-40	;,
   393B E7 E4         [ 4]  140 	stb	,s	;, n
   393D 20 CE         [ 3]  141 	bra	L22	;
   393F                     142 L18:
   393F C1 63         [ 2]  143 	cmpb	#99	;cmpqi:	;,
   3941 23 22         [ 3]  144 	bls	L29	;
   3943 CB 9C         [ 2]  145 	addb	#-100	;,
   3945 E7 E4         [ 4]  146 	stb	,s	;, n
   3947 10 8E 31 30   [ 4]  147 	ldy	#12592	; digit,
   394B 6F 61         [ 7]  148 	clr	1,s	; useSpace
   394D CE 31 38      [ 3]  149 	ldu	#12600	; digit.100,
   3950 8E 31 34      [ 3]  150 	ldx	#12596	; digit.99,
   3953 20 AE         [ 3]  151 	bra	L19	;
   3955                     152 L25:
   3955 8C 20 30      [ 4]  153 	cmpx	#8240	;cmphi:	; digit.99,
   3958 26 C7         [ 3]  154 	bne	L26	;
   395A E6 61         [ 5]  155 	ldb	1,s	;, useSpace
   395C C1 01         [ 2]  156 	cmpb	#1	;cmpqi:	;,
   395E 26 C1         [ 3]  157 	bne	L26	;
   3960 8E 20 20      [ 3]  158 	ldx	#8224	; digit.99,
   3963 20 BC         [ 3]  159 	bra	L26	;
   3965                     160 L29:
   3965 10 8E 20 30   [ 4]  161 	ldy	#8240	; digit,
   3969 C6 01         [ 2]  162 	ldb	#1	;,
   396B E7 61         [ 5]  163 	stb	1,s	;, useSpace
   396D CE 20 38      [ 3]  164 	ldu	#8248	; digit.100,
   3970 8E 20 34      [ 3]  165 	ldx	#8244	; digit.99,
   3973 E6 E4         [ 4]  166 	ldb	,s	;, n
   3975 16 FF 8B      [ 5]  167 	lbra	L19	;
   3978                     168 L28:
   3978 30 A4         [ 4]  169 	leax	,y	; digit.99, digit
   397A E6 E4         [ 4]  170 	ldb	,s	;, n
   397C 16 FF 8E      [ 5]  171 	lbra	L22	;
                            172 	.globl	_itoa_s
   397F                     173 _itoa_s:
   397F BD 38 E9      [ 8]  174 	jsr	_itoa
   3982 8E C8 A9      [ 3]  175 	ldx	#_stringBuffer4	;,
   3985 7E 38 C9      [ 4]  176 	jmp	_removeSpaces	;
                            177 	.globl	__fs
   3988                     178 __fs:
   3988 34 60         [ 7]  179 	pshs	y,u	;
   398A 32 79         [ 5]  180 	leas	-7,s	;,,
   398C AF 62         [ 6]  181 	stx	2,s	; s1, s1
   398E 30 01         [ 5]  182 	leax	1,x	; s1,, s1
   3990 AF E4         [ 5]  183 	stx	,s	; s1, s1.155
   3992 30 1F         [ 5]  184 	leax	-1,x	; s1,, s1
   3994 E6 80         [ 6]  185 	ldb	,x+	;,
   3996 E7 66         [ 5]  186 	stb	6,s	;, c.154
   3998 10 8E C8 BF   [ 4]  187 	ldy	#_stringBuffer40	; to,
   399C C1 25         [ 2]  188 	cmpb	#37	;cmpqi:	;,
   399E 27 2E         [ 3]  189 	beq	L34	;
   39A0 CE 00 00      [ 3]  190 	ldu	#0	; ivtmp.150,
   39A3 20 02         [ 3]  191 	bra	L35	;
   39A5                     192 L43:
   39A5 EE 64         [ 6]  193 	ldu	4,s	; ivtmp.150, ivtmp.144
   39A7                     194 L35:
   39A7 E6 66         [ 5]  195 	ldb	6,s	;, c.154
   39A9 E7 C9 C8 BF   [ 8]  196 	stb	_stringBuffer40,u	;,
   39AD 30 41         [ 5]  197 	leax	1,u	;,, ivtmp.150
   39AF AF 64         [ 6]  198 	stx	4,s	;, ivtmp.144
   39B1 31 89 C8 BF   [ 8]  199 	leay	_stringBuffer40,x	; to,,
   39B5 EC 62         [ 6]  200 	ldd	2,s	;, s1
   39B7 30 CB         [ 8]  201 	leax	d,u	; tmp40,, ivtmp.150
   39B9 E6 01         [ 5]  202 	ldb	1,x	;,
   39BB E7 66         [ 5]  203 	stb	6,s	;, c.154
   39BD 1F 30         [ 6]  204 	tfr	u,d	; ivtmp.150, tmp41
   39BF C3 00 02      [ 4]  205 	addd	#2; addhi3,3	; tmp41,
   39C2 AE 62         [ 6]  206 	ldx	2,s	;, s1
   39C4 30 8B         [ 8]  207 	leax	d,x	;, tmp41,
   39C6 AF E4         [ 5]  208 	stx	,s	;, s1.155
   39C8 E6 66         [ 5]  209 	ldb	6,s	;, c.154
   39CA C1 25         [ 2]  210 	cmpb	#37	;cmpqi:	;,
   39CC 26 D7         [ 3]  211 	bne	L43	;
   39CE                     212 L34:
   39CE AE 6D         [ 6]  213 	ldx	13,s	;, s2
   39D0 E6 84         [ 4]  214 	ldb	,x	; c.152,
   39D2 27 08         [ 3]  215 	beq	L36	;
   39D4 30 01         [ 5]  216 	leax	1,x	; s2.153,,
   39D6                     217 L37:
   39D6 E7 A0         [ 6]  218 	stb	,y+	; c.152,
   39D8 E6 80         [ 6]  219 	ldb	,x+	; c.152,
   39DA 26 FA         [ 3]  220 	bne	L37	;
   39DC                     221 L36:
   39DC EE E4         [ 5]  222 	ldu	,s	;, s1.155
   39DE E6 C4         [ 4]  223 	ldb	,u	; c,
   39E0 27 08         [ 3]  224 	beq	L38	;
   39E2 30 41         [ 5]  225 	leax	1,u	; s1.151,,
   39E4                     226 L39:
   39E4 E7 A0         [ 6]  227 	stb	,y+	; c,
   39E6 E6 80         [ 6]  228 	ldb	,x+	; c,
   39E8 26 FA         [ 3]  229 	bne	L39	;
   39EA                     230 L38:
   39EA C6 80         [ 2]  231 	ldb	#-128	;,
   39EC E7 A4         [ 4]  232 	stb	,y	;,* to
   39EE 8E C8 BF      [ 3]  233 	ldx	#_stringBuffer40	;,
   39F1 32 67         [ 5]  234 	leas	7,s	;,,
   39F3 35 E0         [ 8]  235 	puls	y,u,pc	;
                            236 	.globl	__fi_s
   39F5                     237 __fi_s:
   39F5 34 60         [ 7]  238 	pshs	y,u	;
   39F7 32 77         [ 5]  239 	leas	-9,s	;,,
   39F9 AF 62         [ 6]  240 	stx	2,s	; s1, s1
   39FB BD 38 E9      [ 8]  241 	jsr	_itoa
   39FE 8E C8 A9      [ 3]  242 	ldx	#_stringBuffer4	;,
   3A01 BD 38 C9      [ 8]  243 	jsr	_removeSpaces
   3A04 AF 64         [ 6]  244 	stx	4,s	;, D.3595
   3A06 AE 62         [ 6]  245 	ldx	2,s	;, s1
   3A08 30 01         [ 5]  246 	leax	1,x	;,,
   3A0A AF E4         [ 5]  247 	stx	,s	;, s1.199
   3A0C 30 1F         [ 5]  248 	leax	-1,x	;,,
   3A0E E6 80         [ 6]  249 	ldb	,x+	;,
   3A10 E7 68         [ 5]  250 	stb	8,s	;, c.198
   3A12 10 8E C8 BF   [ 4]  251 	ldy	#_stringBuffer40	; to,
   3A16 C1 25         [ 2]  252 	cmpb	#37	;cmpqi:	;,
   3A18 27 2E         [ 3]  253 	beq	L46	;
   3A1A CE 00 00      [ 3]  254 	ldu	#0	; ivtmp.189,
   3A1D 20 02         [ 3]  255 	bra	L47	;
   3A1F                     256 L55:
   3A1F EE 66         [ 6]  257 	ldu	6,s	; ivtmp.189, ivtmp.196
   3A21                     258 L47:
   3A21 E6 68         [ 5]  259 	ldb	8,s	;, c.198
   3A23 E7 C9 C8 BF   [ 8]  260 	stb	_stringBuffer40,u	;,
   3A27 30 41         [ 5]  261 	leax	1,u	;,, ivtmp.189
   3A29 AF 66         [ 6]  262 	stx	6,s	;, ivtmp.196
   3A2B 31 89 C8 BF   [ 8]  263 	leay	_stringBuffer40,x	; to,,
   3A2F EC 62         [ 6]  264 	ldd	2,s	;, s1
   3A31 30 CB         [ 8]  265 	leax	d,u	; tmp41,, ivtmp.189
   3A33 E6 01         [ 5]  266 	ldb	1,x	;,
   3A35 E7 68         [ 5]  267 	stb	8,s	;, c.198
   3A37 1F 30         [ 6]  268 	tfr	u,d	; ivtmp.189, tmp42
   3A39 C3 00 02      [ 4]  269 	addd	#2; addhi3,3	; tmp42,
   3A3C AE 62         [ 6]  270 	ldx	2,s	;, s1
   3A3E 30 8B         [ 8]  271 	leax	d,x	;, tmp42,
   3A40 AF E4         [ 5]  272 	stx	,s	;, s1.199
   3A42 E6 68         [ 5]  273 	ldb	8,s	;, c.198
   3A44 C1 25         [ 2]  274 	cmpb	#37	;cmpqi:	;,
   3A46 26 D7         [ 3]  275 	bne	L55	;
   3A48                     276 L46:
   3A48 AE 64         [ 6]  277 	ldx	4,s	;, D.3595
   3A4A E6 84         [ 4]  278 	ldb	,x	; c.197,
   3A4C 27 08         [ 3]  279 	beq	L48	;
   3A4E 30 01         [ 5]  280 	leax	1,x	; s2,,
   3A50                     281 L49:
   3A50 E7 A0         [ 6]  282 	stb	,y+	; c.197,
   3A52 E6 80         [ 6]  283 	ldb	,x+	; c.197,
   3A54 26 FA         [ 3]  284 	bne	L49	;
   3A56                     285 L48:
   3A56 EE E4         [ 5]  286 	ldu	,s	;, s1.199
   3A58 E6 C4         [ 4]  287 	ldb	,u	; c,
   3A5A 27 08         [ 3]  288 	beq	L50	;
   3A5C 30 41         [ 5]  289 	leax	1,u	; s1.195,,
   3A5E                     290 L51:
   3A5E E7 A0         [ 6]  291 	stb	,y+	; c,
   3A60 E6 80         [ 6]  292 	ldb	,x+	; c,
   3A62 26 FA         [ 3]  293 	bne	L51	;
   3A64                     294 L50:
   3A64 C6 80         [ 2]  295 	ldb	#-128	;,
   3A66 E7 A4         [ 4]  296 	stb	,y	;,* to
   3A68 8E C8 BF      [ 3]  297 	ldx	#_stringBuffer40	;,
   3A6B 32 69         [ 5]  298 	leas	9,s	;,,
   3A6D 35 E0         [ 8]  299 	puls	y,u,pc	;
                            300 	.globl	__ltoa
   3A6F                     301 __ltoa:
   3A6F 34 60         [ 7]  302 	pshs	y,u	;
   3A71 32 7C         [ 5]  303 	leas	-4,s	;,,
   3A73 10 AE 6A      [ 7]  304 	ldy	10,s	; pointer, pointer
   3A76 E7 62         [ 5]  305 	stb	2,s	; zeroToSpaces, zeroToSpaces
   3A78 8C 9C 3F      [ 4]  306 	cmpx	#-25537	;cmphi:	; n,
   3A7B 10 22 01 40   [ 6]  307 	lbhi	L57	;
   3A7F CE 30 30      [ 3]  308 	ldu	#12336	; digit,
   3A82 CC 32 30      [ 3]  309 	ldd	#12848	;,
   3A85 ED E4         [ 5]  310 	std	,s	;, digit.217
   3A87                     311 L58:
   3A87 8C 4E 1F      [ 4]  312 	cmpx	#19999	;cmphi:	; n,
   3A8A 10 22 01 2A   [ 6]  313 	lbhi	L59	;
   3A8E EF E4         [ 5]  314 	stu	,s	; digit, digit.217
   3A90                     315 L60:
   3A90 8C 27 0F      [ 4]  316 	cmpx	#9999	;cmphi:	; n,
   3A93 23 0B         [ 3]  317 	bls	L61	;
   3A95 30 89 D8 F0   [ 8]  318 	leax	-10000,x	; n,, n
   3A99 EC E4         [ 5]  319 	ldd	,s	;, digit.217
   3A9B C3 01 00      [ 4]  320 	addd	#256; addhi3,3	;,
   3A9E ED E4         [ 5]  321 	std	,s	;, digit.217
   3AA0                     322 L61:
   3AA0 6D 62         [ 7]  323 	tst	2,s	; zeroToSpaces
   3AA2 27 0A         [ 3]  324 	beq	L62	;
   3AA4 EE E4         [ 5]  325 	ldu	,s	;, digit.217
   3AA6 11 83 30 30   [ 5]  326 	cmpu	#12336	;cmphi:	;,
   3AAA 10 27 01 3D   [ 6]  327 	lbeq	L84	;
   3AAE                     328 L62:
   3AAE 6F 63         [ 7]  329 	clr	3,s	; useSpace
   3AB0                     330 L63:
   3AB0 8C 1F 3F      [ 4]  331 	cmpx	#7999	;cmphi:	; n,
   3AB3 10 23 00 EC   [ 6]  332 	lbls	L64	;
   3AB7 30 89 E0 C0   [ 8]  333 	leax	-8000,x	; n,, n
   3ABB EC E4         [ 5]  334 	ldd	,s	;, digit.217
   3ABD C3 00 08      [ 4]  335 	addd	#8; addhi3,3	;,
   3AC0 ED E4         [ 5]  336 	std	,s	;, digit.217
   3AC2                     337 L65:
   3AC2 8C 07 CF      [ 4]  338 	cmpx	#1999	;cmphi:	; n,
   3AC5 23 0B         [ 3]  339 	bls	L66	;
   3AC7 30 89 F8 30   [ 8]  340 	leax	-2000,x	; n,, n
   3ACB EC E4         [ 5]  341 	ldd	,s	;, digit.217
   3ACD C3 00 02      [ 4]  342 	addd	#2; addhi3,3	;,
   3AD0 ED E4         [ 5]  343 	std	,s	;, digit.217
   3AD2                     344 L66:
   3AD2 8C 03 E7      [ 4]  345 	cmpx	#999	;cmphi:	; n,
   3AD5 23 0B         [ 3]  346 	bls	L67	;
   3AD7 30 89 FC 18   [ 8]  347 	leax	-1000,x	; n,, n
   3ADB EC E4         [ 5]  348 	ldd	,s	;, digit.217
   3ADD C3 00 01      [ 4]  349 	addd	#1; addhi3,3	;,
   3AE0 ED E4         [ 5]  350 	std	,s	;, digit.217
   3AE2                     351 L67:
   3AE2 6D 62         [ 7]  352 	tst	2,s	; zeroToSpaces
   3AE4 27 0A         [ 3]  353 	beq	L68	;
   3AE6 E6 63         [ 5]  354 	ldb	3,s	;, useSpace
   3AE8 C1 01         [ 2]  355 	cmpb	#1	;cmpqi:	;,
   3AEA 10 27 01 09   [ 6]  356 	lbeq	L85	;
   3AEE                     357 L69:
   3AEE 6F 63         [ 7]  358 	clr	3,s	; useSpace
   3AF0                     359 L68:
   3AF0 EE E4         [ 5]  360 	ldu	,s	;, digit.217
   3AF2 EF A4         [ 5]  361 	stu	,y	;,* pointer
   3AF4 8C 03 1F      [ 4]  362 	cmpx	#799	;cmphi:	; n,
   3AF7 10 23 00 94   [ 6]  363 	lbls	L70	;
   3AFB 30 89 FC E0   [ 8]  364 	leax	-800,x	; n,, n
   3AFF CE 38 30      [ 3]  365 	ldu	#14384	; digit.218,
   3B02 CC 3A 30      [ 3]  366 	ldd	#14896	;,
   3B05 ED E4         [ 5]  367 	std	,s	;, digit.219
   3B07                     368 L71:
   3B07 8C 00 C7      [ 4]  369 	cmpx	#199	;cmphi:	; n,
   3B0A 10 22 00 7A   [ 6]  370 	lbhi	L73	;
   3B0E EF E4         [ 5]  371 	stu	,s	; digit.218, digit.219
   3B10                     372 L74:
   3B10 8C 00 63      [ 4]  373 	cmpx	#99	;cmphi:	; n,
   3B13 23 0A         [ 3]  374 	bls	L75	;
   3B15 30 88 9C      [ 5]  375 	leax	-100,x	; n,, n
   3B18 EC E4         [ 5]  376 	ldd	,s	;, digit.219
   3B1A C3 01 00      [ 4]  377 	addd	#256; addhi3,3	;,
   3B1D ED E4         [ 5]  378 	std	,s	;, digit.219
   3B1F                     379 L75:
   3B1F 6D 62         [ 7]  380 	tst	2,s	; zeroToSpaces
   3B21 27 0A         [ 3]  381 	beq	L76	;
   3B23 E6 63         [ 5]  382 	ldb	3,s	;, useSpace
   3B25 C1 01         [ 2]  383 	cmpb	#1	;cmpqi:	;,
   3B27 10 27 00 DE   [ 6]  384 	lbeq	L86	;
   3B2B                     385 L77:
   3B2B 6F 63         [ 7]  386 	clr	3,s	; useSpace
   3B2D                     387 L76:
   3B2D 8C 00 4F      [ 4]  388 	cmpx	#79	;cmphi:	; n,
   3B30 23 45         [ 3]  389 	bls	L78	;
   3B32 30 88 B0      [ 5]  390 	leax	-80,x	; n,, n
   3B35 EC E4         [ 5]  391 	ldd	,s	;, digit.219
   3B37 C3 00 08      [ 4]  392 	addd	#8; addhi3,3	;,
   3B3A ED E4         [ 5]  393 	std	,s	;, digit.219
   3B3C                     394 L79:
   3B3C 8C 00 13      [ 4]  395 	cmpx	#19	;cmphi:	; n,
   3B3F 23 0A         [ 3]  396 	bls	L80	;
   3B41 30 88 EC      [ 5]  397 	leax	-20,x	; n,, n
   3B44 EC E4         [ 5]  398 	ldd	,s	;, digit.219
   3B46 C3 00 02      [ 4]  399 	addd	#2; addhi3,3	;,
   3B49 ED E4         [ 5]  400 	std	,s	;, digit.219
   3B4B                     401 L80:
   3B4B 8C 00 09      [ 4]  402 	cmpx	#9	;cmphi:	; n,
   3B4E 23 09         [ 3]  403 	bls	L81	;
   3B50 30 16         [ 5]  404 	leax	-10,x	; n,, n
   3B52 EC E4         [ 5]  405 	ldd	,s	;, digit.219
   3B54 C3 00 01      [ 4]  406 	addd	#1; addhi3,3	;,
   3B57 ED E4         [ 5]  407 	std	,s	;, digit.219
   3B59                     408 L81:
   3B59 6D 62         [ 7]  409 	tst	2,s	; zeroToSpaces
   3B5B 27 08         [ 3]  410 	beq	L82	;
   3B5D E6 63         [ 5]  411 	ldb	3,s	;, useSpace
   3B5F C1 01         [ 2]  412 	cmpb	#1	;cmpqi:	;,
   3B61 10 27 00 74   [ 6]  413 	lbeq	L87	;
   3B65                     414 L82:
   3B65 EE E4         [ 5]  415 	ldu	,s	;, digit.219
   3B67 EF 22         [ 6]  416 	stu	2,y	;,
   3B69 1F 10         [ 6]  417 	tfr	x,d	;movlsbqihi: R:x -> R:b	; n, n
   3B6B CB 30         [ 2]  418 	addb	#48	; n,
   3B6D E7 24         [ 5]  419 	stb	4,y	; n,
   3B6F 6F 25         [ 7]  420 	clr	5,y	;
   3B71 30 A4         [ 4]  421 	leax	,y	;, pointer
   3B73 32 64         [ 5]  422 	leas	4,s	;,,
   3B75 35 E0         [ 8]  423 	puls	y,u,pc	;
   3B77                     424 L78:
   3B77 8C 00 27      [ 4]  425 	cmpx	#39	;cmphi:	; n,
   3B7A 23 C0         [ 3]  426 	bls	L79	;
   3B7C 30 88 D8      [ 5]  427 	leax	-40,x	; n,, n
   3B7F EC E4         [ 5]  428 	ldd	,s	;, digit.219
   3B81 C3 00 04      [ 4]  429 	addd	#4; addhi3,3	;,
   3B84 ED E4         [ 5]  430 	std	,s	;, digit.219
   3B86 20 B4         [ 3]  431 	bra	L79	;
   3B88                     432 L73:
   3B88 30 89 FF 38   [ 8]  433 	leax	-200,x	; n,, n
   3B8C 16 FF 81      [ 5]  434 	lbra	L74	;
   3B8F                     435 L70:
   3B8F 8C 01 8F      [ 4]  436 	cmpx	#399	;cmphi:	; n,
   3B92 23 3A         [ 3]  437 	bls	L88	;
   3B94 30 89 FE 70   [ 8]  438 	leax	-400,x	; n,, n
   3B98 CE 34 30      [ 3]  439 	ldu	#13360	; digit.218,
   3B9B CC 36 30      [ 3]  440 	ldd	#13872	;,
   3B9E ED E4         [ 5]  441 	std	,s	;, digit.219
   3BA0 16 FF 64      [ 5]  442 	lbra	L71	;
   3BA3                     443 L64:
   3BA3 8C 0F 9F      [ 4]  444 	cmpx	#3999	;cmphi:	; n,
   3BA6 10 23 FF 18   [ 6]  445 	lbls	L65	;
   3BAA 30 89 F0 60   [ 8]  446 	leax	-4000,x	; n,, n
   3BAE EC E4         [ 5]  447 	ldd	,s	;, digit.217
   3BB0 C3 00 04      [ 4]  448 	addd	#4; addhi3,3	;,
   3BB3 ED E4         [ 5]  449 	std	,s	;, digit.217
   3BB5 16 FF 0A      [ 5]  450 	lbra	L65	;
   3BB8                     451 L59:
   3BB8 30 89 B1 E0   [ 8]  452 	leax	-20000,x	; n,, n
   3BBC 16 FE D1      [ 5]  453 	lbra	L60	;
   3BBF                     454 L57:
   3BBF 30 89 63 C0   [ 8]  455 	leax	25536,x	; n,, n
   3BC3 CE 34 30      [ 3]  456 	ldu	#13360	; digit,
   3BC6 CC 36 30      [ 3]  457 	ldd	#13872	;,
   3BC9 ED E4         [ 5]  458 	std	,s	;, digit.217
   3BCB 16 FE B9      [ 5]  459 	lbra	L58	;
   3BCE                     460 L88:
   3BCE CE 30 30      [ 3]  461 	ldu	#12336	; digit.218,
   3BD1 CC 32 30      [ 3]  462 	ldd	#12848	;,
   3BD4 ED E4         [ 5]  463 	std	,s	;, digit.219
   3BD6 16 FF 2E      [ 5]  464 	lbra	L71	;
   3BD9                     465 L87:
   3BD9 EE E4         [ 5]  466 	ldu	,s	;, digit.219
   3BDB 11 83 20 30   [ 5]  467 	cmpu	#8240	;cmphi:	;,
   3BDF 10 26 FF 82   [ 6]  468 	lbne	L82	;
   3BE3 CC 20 20      [ 3]  469 	ldd	#8224	;,
   3BE6 ED E4         [ 5]  470 	std	,s	;, digit.219
   3BE8 16 FF 7A      [ 5]  471 	lbra	L82	;
   3BEB                     472 L84:
   3BEB CC 20 30      [ 3]  473 	ldd	#8240	;,
   3BEE ED E4         [ 5]  474 	std	,s	;, digit.217
   3BF0 C6 01         [ 2]  475 	ldb	#1	;,
   3BF2 E7 63         [ 5]  476 	stb	3,s	;, useSpace
   3BF4 16 FE B9      [ 5]  477 	lbra	L63	;
   3BF7                     478 L85:
   3BF7 EE E4         [ 5]  479 	ldu	,s	;, digit.217
   3BF9 11 83 20 30   [ 5]  480 	cmpu	#8240	;cmphi:	;,
   3BFD 10 26 FE ED   [ 6]  481 	lbne	L69	;
   3C01 CC 20 20      [ 3]  482 	ldd	#8224	;,
   3C04 ED E4         [ 5]  483 	std	,s	;, digit.217
   3C06 16 FE E7      [ 5]  484 	lbra	L68	;
   3C09                     485 L86:
   3C09 EE E4         [ 5]  486 	ldu	,s	;, digit.219
   3C0B 11 83 30 30   [ 5]  487 	cmpu	#12336	;cmphi:	;,
   3C0F 10 26 FF 18   [ 6]  488 	lbne	L77	;
   3C13 CC 20 30      [ 3]  489 	ldd	#8240	;,
   3C16 ED E4         [ 5]  490 	std	,s	;, digit.219
   3C18 16 FF 12      [ 5]  491 	lbra	L76	;
                            492 	.globl	_ltoa
   3C1B                     493 _ltoa:
   3C1B 34 40         [ 6]  494 	pshs	u	;
   3C1D CE C8 AD      [ 3]  495 	ldu	#_stringBuffer6	;,
   3C20 EF E3         [ 8]  496 	stu	,--s	;,
   3C22 C6 01         [ 2]  497 	ldb	#1	;,
   3C24 BD 3A 6F      [ 8]  498 	jsr	__ltoa
   3C27 32 62         [ 5]  499 	leas	2,s	;,,
   3C29 35 C0         [ 7]  500 	puls	u,pc	;
                            501 	.globl	_Rand
   3C2B                     502 _Rand:
   3C2B 32 7E         [ 5]  503 	leas	-2,s	;,,
   3C2D F6 CA 78      [ 5]  504 	ldb	__x	;, _x
   3C30 5C            [ 2]  505 	incb	;
   3C31 E7 E4         [ 4]  506 	stb	,s	;, _x.6
   3C33 F7 CA 78      [ 5]  507 	stb	__x	;, _x
   3C36 F6 CA 7B      [ 5]  508 	ldb	__c	;, _c
   3C39 F8 CA 79      [ 5]  509 	eorb	__a	;, _a
   3C3C E7 61         [ 5]  510 	stb	1,s	;, _a.9
   3C3E E6 E4         [ 4]  511 	ldb	,s	;, _x.6
   3C40 E8 61         [ 5]  512 	eorb	1,s	;, _a.9
   3C42 E7 61         [ 5]  513 	stb	1,s	;, _a.9
   3C44 F7 CA 79      [ 5]  514 	stb	__a	;, _a
   3C47 FB CA 7A      [ 5]  515 	addb	__b	; _b.11, _b
   3C4A F7 CA 7A      [ 5]  516 	stb	__b	; _b.11, _b
   3C4D 54            [ 2]  517 	lsrb	; _c.12
   3C4E FB CA 7B      [ 5]  518 	addb	__c	; _c.12, _c
   3C51 E8 61         [ 5]  519 	eorb	1,s	; _c.12, _a.9
   3C53 F7 CA 7B      [ 5]  520 	stb	__c	; _c.12, _c
   3C56 32 62         [ 5]  521 	leas	2,s	;,,
   3C58 39            [ 5]  522 	rts
                            523 	.globl	_RandMax
   3C59                     524 _RandMax:
   3C59 32 7D         [ 5]  525 	leas	-3,s	;,,
   3C5B E7 61         [ 5]  526 	stb	1,s	; m, m
   3C5D 27 3C         [ 3]  527 	beq	L95	;
   3C5F F6 CA 78      [ 5]  528 	ldb	__x	;, _x
   3C62 5C            [ 2]  529 	incb	;
   3C63 E7 E4         [ 4]  530 	stb	,s	;, _x.6
   3C65 F7 CA 78      [ 5]  531 	stb	__x	;, _x
   3C68 F6 CA 7B      [ 5]  532 	ldb	__c	;, _c
   3C6B F8 CA 79      [ 5]  533 	eorb	__a	;, _a
   3C6E E7 62         [ 5]  534 	stb	2,s	;, _a.9
   3C70 E6 E4         [ 4]  535 	ldb	,s	;, _x.6
   3C72 E8 62         [ 5]  536 	eorb	2,s	;, _a.9
   3C74 E7 62         [ 5]  537 	stb	2,s	;, _a.9
   3C76 F7 CA 79      [ 5]  538 	stb	__a	;, _a
   3C79 FB CA 7A      [ 5]  539 	addb	__b	; _b.11, _b
   3C7C F7 CA 7A      [ 5]  540 	stb	__b	; _b.11, _b
   3C7F 54            [ 2]  541 	lsrb	; _b.11
   3C80 FB CA 7B      [ 5]  542 	addb	__c	; _b.11, _c
   3C83 E8 62         [ 5]  543 	eorb	2,s	; _b.11, _a.9
   3C85 E7 E4         [ 4]  544 	stb	,s	; _b.11, _c.12
   3C87 F7 CA 7B      [ 5]  545 	stb	__c	; _b.11, _c
   3C8A E6 61         [ 5]  546 	ldb	1,s	;, m
   3C8C 4F            [ 2]  547 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C8D 34 06         [ 7]  548 	pshs	d	; m
   3C8F E6 62         [ 5]  549 	ldb	2,s	;, _c.12
   3C91 4F            [ 2]  550 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C92 1F 01         [ 6]  551 	tfr	d,x	;,
   3C94 BD 7C 9A      [ 8]  552 	jsr	_umodhi3
   3C97 32 62         [ 5]  553 	leas	2,s	;,,
   3C99 1F 10         [ 6]  554 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp41, D.3123
   3C9B                     555 L95:
   3C9B 32 63         [ 5]  556 	leas	3,s	;,,
   3C9D 39            [ 5]  557 	rts
                            558 	.globl	__fl_s
   3C9E                     559 __fl_s:
   3C9E 34 60         [ 7]  560 	pshs	y,u	;
   3CA0 32 7B         [ 5]  561 	leas	-5,s	;,,
   3CA2 AF E4         [ 5]  562 	stx	,s	; s1, s1
   3CA4 10 8E C8 AD   [ 4]  563 	ldy	#_stringBuffer6	; tmp38,
   3CA8 34 20         [ 6]  564 	pshs	y	; tmp38
   3CAA C6 01         [ 2]  565 	ldb	#1	;,
   3CAC AE 6D         [ 6]  566 	ldx	13,s	;, i
   3CAE BD 3A 6F      [ 8]  567 	jsr	__ltoa
   3CB1 30 A4         [ 4]  568 	leax	,y	;, tmp38
   3CB3 BD 38 C9      [ 8]  569 	jsr	_removeSpaces
   3CB6 10 AE 62      [ 7]  570 	ldy	2,s	; s1.291, s1
   3CB9 E6 A0         [ 6]  571 	ldb	,y+	;,
   3CBB E7 66         [ 5]  572 	stb	6,s	;, c.290
   3CBD 32 62         [ 5]  573 	leas	2,s	;,,
   3CBF CE C8 BF      [ 3]  574 	ldu	#_stringBuffer40	; to,
   3CC2 C1 25         [ 2]  575 	cmpb	#37	;cmpqi:	;,
   3CC4 27 2E         [ 3]  576 	beq	L99	;
   3CC6 10 8E 00 00   [ 4]  577 	ldy	#0	; ivtmp.289,
   3CCA 20 03         [ 3]  578 	bra	L100	;
   3CCC                     579 L108:
   3CCC 10 AE 62      [ 7]  580 	ldy	2,s	; ivtmp.289, ivtmp.281
   3CCF                     581 L100:
   3CCF E6 64         [ 5]  582 	ldb	4,s	;, c.290
   3CD1 E7 A9 C8 BF   [ 8]  583 	stb	_stringBuffer40,y	;,
   3CD5 30 21         [ 5]  584 	leax	1,y	;,, ivtmp.289
   3CD7 AF 62         [ 6]  585 	stx	2,s	;, ivtmp.281
   3CD9 33 89 C8 BF   [ 8]  586 	leau	_stringBuffer40,x	; to,,
   3CDD EC E4         [ 5]  587 	ldd	,s	;, s1
   3CDF 30 AB         [ 8]  588 	leax	d,y	; tmp40,, ivtmp.289
   3CE1 E6 01         [ 5]  589 	ldb	1,x	;,
   3CE3 E7 64         [ 5]  590 	stb	4,s	;, c.290
   3CE5 1F 20         [ 6]  591 	tfr	y,d	; ivtmp.289, tmp41
   3CE7 C3 00 02      [ 4]  592 	addd	#2; addhi3,3	; tmp41,
   3CEA AE E4         [ 5]  593 	ldx	,s	;, s1
   3CEC 31 8B         [ 8]  594 	leay	d,x	; s1.291, tmp41,
   3CEE E6 64         [ 5]  595 	ldb	4,s	;, c.290
   3CF0 C1 25         [ 2]  596 	cmpb	#37	;cmpqi:	;,
   3CF2 26 D8         [ 3]  597 	bne	L108	;
   3CF4                     598 L99:
   3CF4 F6 C8 AD      [ 5]  599 	ldb	_stringBuffer6	; c.288, stringBuffer6
   3CF7 27 09         [ 3]  600 	beq	L101	;
   3CF9 8E C8 AE      [ 3]  601 	ldx	#_stringBuffer6+1	; s2,
   3CFC                     602 L102:
   3CFC E7 C0         [ 6]  603 	stb	,u+	; c.288,
   3CFE E6 80         [ 6]  604 	ldb	,x+	; c.288,
   3D00 26 FA         [ 3]  605 	bne	L102	;
   3D02                     606 L101:
   3D02 E6 A4         [ 4]  607 	ldb	,y	; c,* s1.291
   3D04 27 08         [ 3]  608 	beq	L103	;
   3D06 30 21         [ 5]  609 	leax	1,y	; s1.287,, s1.291
   3D08                     610 L104:
   3D08 E7 C0         [ 6]  611 	stb	,u+	; c,
   3D0A E6 80         [ 6]  612 	ldb	,x+	; c,
   3D0C 26 FA         [ 3]  613 	bne	L104	;
   3D0E                     614 L103:
   3D0E C6 80         [ 2]  615 	ldb	#-128	;,
   3D10 E7 C4         [ 4]  616 	stb	,u	;,* to
   3D12 32 65         [ 5]  617 	leas	5,s	;,,
   3D14 35 E0         [ 8]  618 	puls	y,u,pc	;
                            619 	.globl	__lltoa
   3D16                     620 __lltoa:
   3D16 34 60         [ 7]  621 	pshs	y,u	;
   3D18 32 79         [ 5]  622 	leas	-7,s	;,,
   3D1A 10 AE 6D      [ 7]  623 	ldy	13,s	;, n
   3D1D 10 AF 62      [ 7]  624 	sty	2,s	;, n
   3D20 EE 6F         [ 6]  625 	ldu	15,s	;, n
   3D22 EF 64         [ 6]  626 	stu	4,s	;, n
   3D24 33 84         [ 4]  627 	leau	,x	; pointer, pointer
   3D26 10 8C 77 35   [ 5]  628 	cmpy	#30517	;cmphi:	; tmp6,
   3D2A 10 22 06 31   [ 6]  629 	lbhi	L110	;
   3D2E 10 27 06 22   [ 6]  630 	lbeq	L242	;
   3D32                     631 L205:
   3D32 CC 30 30      [ 3]  632 	ldd	#12336	;,
   3D35 ED E4         [ 5]  633 	std	,s	;, digit
   3D37 8E 31 30      [ 3]  634 	ldx	#12592	; digit.316,
   3D3A                     635 L112:
   3D3A 10 AE 62      [ 7]  636 	ldy	2,s	;, n
   3D3D 10 8C 3B 9A   [ 5]  637 	cmpy	#15258	;cmphi:	;,
   3D41 10 22 03 27   [ 6]  638 	lbhi	L206	;
   3D45 10 27 03 18   [ 6]  639 	lbeq	L243	;
   3D49                     640 L113:
   3D49 AE E4         [ 5]  641 	ldx	,s	;, digit
   3D4B 8C 30 30      [ 4]  642 	cmpx	#12336	;cmphi:	;,
   3D4E 10 26 03 2B   [ 6]  643 	lbne	L115	;
   3D52 10 8E 20 30   [ 4]  644 	ldy	#8240	;,
   3D56 10 AF E4      [ 6]  645 	sty	,s	;, digit
   3D59 C6 01         [ 2]  646 	ldb	#1	;,
   3D5B E7 66         [ 5]  647 	stb	6,s	;, useSpace
   3D5D AE 62         [ 6]  648 	ldx	2,s	;, n
   3D5F 8C 2F AF      [ 4]  649 	cmpx	#12207	;cmphi:	;,
   3D62 10 23 03 22   [ 6]  650 	lbls	L244	;
   3D66                     651 L207:
   3D66 EC 64         [ 6]  652 	ldd	4,s	;, n
   3D68 C3 F8 00      [ 4]  653 	addd	#-2048	;,
   3D6B ED 64         [ 6]  654 	std	4,s	;, n
   3D6D EC 62         [ 6]  655 	ldd	2,s	;, n
   3D6F C9 50         [ 2]  656 	adcb	#80	;
   3D71 89 D0         [ 2]  657 	adca	#-48	;
   3D73 ED 62         [ 6]  658 	std	2,s	;, n
   3D75 EC E4         [ 5]  659 	ldd	,s	;, digit
   3D77 C3 00 08      [ 4]  660 	addd	#8; addhi3,3	;,
   3D7A ED E4         [ 5]  661 	std	,s	;, digit
   3D7C                     662 L119:
   3D7C AE 62         [ 6]  663 	ldx	2,s	;, n
   3D7E 8C 0B EB      [ 4]  664 	cmpx	#3051	;cmphi:	;,
   3D81 10 22 03 32   [ 6]  665 	lbhi	L209	;
   3D85                     666 L272:
   3D85 8C 0B EB      [ 4]  667 	cmpx	#3051	;cmphi:	; tmp2,
   3D88 10 27 06 7C   [ 6]  668 	lbeq	L245	;
   3D8C                     669 L121:
   3D8C AE 62         [ 6]  670 	ldx	2,s	;, n
   3D8E 8C 05 F5      [ 4]  671 	cmpx	#1525	;cmphi:	;,
   3D91 10 22 03 41   [ 6]  672 	lbhi	L210	;
   3D95                     673 L273:
   3D95 8C 05 F5      [ 4]  674 	cmpx	#1525	;cmphi:	; tmp2,
   3D98 10 27 06 93   [ 6]  675 	lbeq	L246	;
   3D9C                     676 L123:
   3D9C E6 66         [ 5]  677 	ldb	6,s	;, useSpace
   3D9E C1 01         [ 2]  678 	cmpb	#1	;cmpqi:	;,
   3DA0 10 27 03 50   [ 6]  679 	lbeq	L247	;
   3DA4                     680 L125:
   3DA4 6F 66         [ 7]  681 	clr	6,s	; useSpace
   3DA6 EC E4         [ 5]  682 	ldd	,s	;, digit
   3DA8                     683 L126:
   3DA8 ED C4         [ 5]  684 	std	,u	;,* pointer
   3DAA AE 62         [ 6]  685 	ldx	2,s	;, n
   3DAC 8C 04 C4      [ 4]  686 	cmpx	#1220	;cmphi:	;,
   3DAF 10 22 03 5D   [ 6]  687 	lbhi	L211	;
   3DB3 10 27 03 4F   [ 6]  688 	lbeq	L248	;
   3DB7                     689 L127:
   3DB7 EC 62         [ 6]  690 	ldd	2,s	;, n
   3DB9 10 83 02 62   [ 5]  691 	cmpd	#610	;cmphi:	;,
   3DBD 10 23 05 DF   [ 6]  692 	lbls	L249	;
   3DC1                     693 L130:
   3DC1 EC 64         [ 6]  694 	ldd	4,s	;, n
   3DC3 C3 A6 00      [ 4]  695 	addd	#-23040	;,
   3DC6 ED 64         [ 6]  696 	std	4,s	;, n
   3DC8 EC 62         [ 6]  697 	ldd	2,s	;, n
   3DCA C9 9D         [ 2]  698 	adcb	#-99	;
   3DCC 89 FD         [ 2]  699 	adca	#-3	;
   3DCE ED 62         [ 6]  700 	std	2,s	;, n
   3DD0 8E 34 30      [ 3]  701 	ldx	#13360	; digit.308,
   3DD3 10 8E 36 30   [ 4]  702 	ldy	#13872	;,
   3DD7 10 AF E4      [ 6]  703 	sty	,s	;, digit.309
   3DDA EC 62         [ 6]  704 	ldd	2,s	;, n
   3DDC 10 83 01 31   [ 5]  705 	cmpd	#305	;cmphi:	;,
   3DE0 10 23 03 4F   [ 6]  706 	lbls	L250	;
   3DE4                     707 L132:
   3DE4 EC 64         [ 6]  708 	ldd	4,s	;, n
   3DE6 C3 D3 00      [ 4]  709 	addd	#-11520	;,
   3DE9 ED 64         [ 6]  710 	std	4,s	;, n
   3DEB EC 62         [ 6]  711 	ldd	2,s	;, n
   3DED C9 CE         [ 2]  712 	adcb	#-50	;
   3DEF 89 FE         [ 2]  713 	adca	#-2	;
   3DF1 ED 62         [ 6]  714 	std	2,s	;, n
   3DF3 AE 62         [ 6]  715 	ldx	2,s	;, n
   3DF5 8C 00 98      [ 4]  716 	cmpx	#152	;cmphi:	;,
   3DF8 10 23 03 4A   [ 6]  717 	lbls	L251	;
   3DFC                     718 L214:
   3DFC EC 64         [ 6]  719 	ldd	4,s	;, n
   3DFE C3 69 80      [ 4]  720 	addd	#27008	;,
   3E01 ED 64         [ 6]  721 	std	4,s	;, n
   3E03 EC 62         [ 6]  722 	ldd	2,s	;, n
   3E05 C9 67         [ 2]  723 	adcb	#103	;
   3E07 89 FF         [ 2]  724 	adca	#-1	;
   3E09 ED 62         [ 6]  725 	std	2,s	;, n
   3E0B EC E4         [ 5]  726 	ldd	,s	;, digit.309
   3E0D C3 01 00      [ 4]  727 	addd	#256; addhi3,3	;,
   3E10 ED E4         [ 5]  728 	std	,s	;, digit.309
   3E12                     729 L135:
   3E12 E6 66         [ 5]  730 	ldb	6,s	;, useSpace
   3E14 C1 01         [ 2]  731 	cmpb	#1	;cmpqi:	;,
   3E16 10 27 05 C0   [ 6]  732 	lbeq	L252	;
   3E1A                     733 L137:
   3E1A 6F 66         [ 7]  734 	clr	6,s	; useSpace
   3E1C                     735 L138:
   3E1C EC 62         [ 6]  736 	ldd	2,s	;, n
   3E1E 10 83 00 7A   [ 5]  737 	cmpd	#122	;cmphi:	;,
   3E22 10 22 03 3F   [ 6]  738 	lbhi	L215	;
   3E26 10 27 03 30   [ 6]  739 	lbeq	L253	;
   3E2A                     740 L139:
   3E2A AE 62         [ 6]  741 	ldx	2,s	;, n
   3E2C 8C 00 3D      [ 4]  742 	cmpx	#61	;cmphi:	;,
   3E2F 10 23 05 59   [ 6]  743 	lbls	L254	;
   3E33                     744 L216:
   3E33 EC 64         [ 6]  745 	ldd	4,s	;, n
   3E35 C3 F7 00      [ 4]  746 	addd	#-2304	;,
   3E38 ED 64         [ 6]  747 	std	4,s	;, n
   3E3A EC 62         [ 6]  748 	ldd	2,s	;, n
   3E3C C9 C2         [ 2]  749 	adcb	#-62	;
   3E3E 89 FF         [ 2]  750 	adca	#-1	;
   3E40 ED 62         [ 6]  751 	std	2,s	;, n
   3E42 EC E4         [ 5]  752 	ldd	,s	;, digit.309
   3E44 C3 00 04      [ 4]  753 	addd	#4; addhi3,3	;,
   3E47 ED E4         [ 5]  754 	std	,s	;, digit.309
   3E49 AE 62         [ 6]  755 	ldx	2,s	;, n
   3E4B 8C 00 1E      [ 4]  756 	cmpx	#30	;cmphi:	;,
   3E4E 10 23 03 32   [ 6]  757 	lbls	L255	;
   3E52                     758 L217:
   3E52 EC 64         [ 6]  759 	ldd	4,s	;, n
   3E54 C3 7B 80      [ 4]  760 	addd	#31616	;,
   3E57 ED 64         [ 6]  761 	std	4,s	;, n
   3E59 EC 62         [ 6]  762 	ldd	2,s	;, n
   3E5B C9 E1         [ 2]  763 	adcb	#-31	;
   3E5D 89 FF         [ 2]  764 	adca	#-1	;
   3E5F ED 62         [ 6]  765 	std	2,s	;, n
   3E61 EC E4         [ 5]  766 	ldd	,s	;, digit.309
   3E63 C3 00 02      [ 4]  767 	addd	#2; addhi3,3	;,
   3E66 ED E4         [ 5]  768 	std	,s	;, digit.309
   3E68                     769 L143:
   3E68 AE 62         [ 6]  770 	ldx	2,s	;, n
   3E6A 8C 00 0F      [ 4]  771 	cmpx	#15	;cmphi:	;,
   3E6D 10 22 04 B3   [ 6]  772 	lbhi	L218	;
   3E71 10 27 04 A5   [ 6]  773 	lbeq	L256	;
   3E75                     774 L145:
   3E75 E6 66         [ 5]  775 	ldb	6,s	;, useSpace
   3E77 C1 01         [ 2]  776 	cmpb	#1	;cmpqi:	;,
   3E79 10 27 04 C5   [ 6]  777 	lbeq	L257	;
   3E7D                     778 L147:
   3E7D 6F 66         [ 7]  779 	clr	6,s	; useSpace
   3E7F EC E4         [ 5]  780 	ldd	,s	;, digit.309
   3E81                     781 L148:
   3E81 ED 42         [ 6]  782 	std	2,u	;,
   3E83 AE 62         [ 6]  783 	ldx	2,s	;, n
   3E85 8C 00 0C      [ 4]  784 	cmpx	#12	;cmphi:	;,
   3E88 10 22 03 16   [ 6]  785 	lbhi	L219	;
   3E8C 10 27 03 08   [ 6]  786 	lbeq	L258	;
   3E90                     787 L149:
   3E90 EC 62         [ 6]  788 	ldd	2,s	;, n
   3E92 10 83 00 06   [ 5]  789 	cmpd	#6	;cmphi:	;,
   3E96 10 23 04 DF   [ 6]  790 	lbls	L259	;
   3E9A                     791 L152:
   3E9A EC 64         [ 6]  792 	ldd	4,s	;, n
   3E9C C3 E5 80      [ 4]  793 	addd	#-6784	;,
   3E9F ED 64         [ 6]  794 	std	4,s	;, n
   3EA1 EC 62         [ 6]  795 	ldd	2,s	;, n
   3EA3 C9 F9         [ 2]  796 	adcb	#-7	;
   3EA5 89 FF         [ 2]  797 	adca	#-1	;
   3EA7 ED 62         [ 6]  798 	std	2,s	;, n
   3EA9 8E 34 30      [ 3]  799 	ldx	#13360	; digit.310,
   3EAC 10 8E 36 30   [ 4]  800 	ldy	#13872	;,
   3EB0 10 AF E4      [ 6]  801 	sty	,s	;, digit.311
   3EB3 EC 62         [ 6]  802 	ldd	2,s	;, n
   3EB5 10 83 00 03   [ 5]  803 	cmpd	#3	;cmphi:	;,
   3EB9 10 23 03 08   [ 6]  804 	lbls	L260	;
   3EBD                     805 L154:
   3EBD EC 64         [ 6]  806 	ldd	4,s	;, n
   3EBF C3 F2 C0      [ 4]  807 	addd	#-3392	;,
   3EC2 ED 64         [ 6]  808 	std	4,s	;, n
   3EC4 EC 62         [ 6]  809 	ldd	2,s	;, n
   3EC6 C9 FC         [ 2]  810 	adcb	#-4	;
   3EC8 89 FF         [ 2]  811 	adca	#-1	;
   3ECA ED 62         [ 6]  812 	std	2,s	;, n
   3ECC AE 62         [ 6]  813 	ldx	2,s	;, n
   3ECE 8C 00 01      [ 4]  814 	cmpx	#1	;cmphi:	;,
   3ED1 10 23 03 03   [ 6]  815 	lbls	L261	;
   3ED5                     816 L222:
   3ED5 EC 64         [ 6]  817 	ldd	4,s	;, n
   3ED7 C3 79 60      [ 4]  818 	addd	#31072	;,
   3EDA ED 64         [ 6]  819 	std	4,s	;, n
   3EDC EC 62         [ 6]  820 	ldd	2,s	;, n
   3EDE C9 FE         [ 2]  821 	adcb	#-2	;
   3EE0 89 FF         [ 2]  822 	adca	#-1	;
   3EE2 ED 62         [ 6]  823 	std	2,s	;, n
   3EE4 EC E4         [ 5]  824 	ldd	,s	;, digit.311
   3EE6 C3 01 00      [ 4]  825 	addd	#256; addhi3,3	;,
   3EE9 ED E4         [ 5]  826 	std	,s	;, digit.311
   3EEB                     827 L157:
   3EEB E6 66         [ 5]  828 	ldb	6,s	;, useSpace
   3EED C1 01         [ 2]  829 	cmpb	#1	;cmpqi:	;,
   3EEF 10 27 04 D4   [ 6]  830 	lbeq	L262	;
   3EF3                     831 L159:
   3EF3 6F 66         [ 7]  832 	clr	6,s	; useSpace
   3EF5                     833 L160:
   3EF5 EC 62         [ 6]  834 	ldd	2,s	;, n
   3EF7 10 83 00 01   [ 5]  835 	cmpd	#1	;cmphi:	;,
   3EFB 10 22 02 F8   [ 6]  836 	lbhi	L223	;
   3EFF 10 27 02 E9   [ 6]  837 	lbeq	L263	;
   3F03                     838 L161:
   3F03 AE 62         [ 6]  839 	ldx	2,s	;, n
   3F05 10 27 04 E4   [ 6]  840 	lbeq	L264	;
   3F09                     841 L224:
   3F09 EC 64         [ 6]  842 	ldd	4,s	;, n
   3F0B C3 63 C0      [ 4]  843 	addd	#25536	;,
   3F0E ED 64         [ 6]  844 	std	4,s	;, n
   3F10 EC 62         [ 6]  845 	ldd	2,s	;, n
   3F12 C9 FF         [ 2]  846 	adcb	#-1	;
   3F14 89 FF         [ 2]  847 	adca	#-1	;
   3F16 ED 62         [ 6]  848 	std	2,s	;, n
   3F18 EC E4         [ 5]  849 	ldd	,s	;, digit.311
   3F1A C3 00 04      [ 4]  850 	addd	#4; addhi3,3	;,
   3F1D ED E4         [ 5]  851 	std	,s	;, digit.311
   3F1F AE 62         [ 6]  852 	ldx	2,s	;, n
   3F21 10 27 02 EE   [ 6]  853 	lbeq	L265	;
   3F25                     854 L225:
   3F25 EC 64         [ 6]  855 	ldd	4,s	;, n
   3F27 C3 B1 E0      [ 4]  856 	addd	#-20000	;,
   3F2A ED 64         [ 6]  857 	std	4,s	;, n
   3F2C EC 62         [ 6]  858 	ldd	2,s	;, n
   3F2E C9 FF         [ 2]  859 	adcb	#-1	;
   3F30 89 FF         [ 2]  860 	adca	#-1	;
   3F32 ED 62         [ 6]  861 	std	2,s	;, n
   3F34 EC E4         [ 5]  862 	ldd	,s	;, digit.311
   3F36 C3 00 02      [ 4]  863 	addd	#2; addhi3,3	;,
   3F39 ED E4         [ 5]  864 	std	,s	;, digit.311
   3F3B                     865 L165:
   3F3B AE 62         [ 6]  866 	ldx	2,s	;, n
   3F3D 10 26 03 A9   [ 6]  867 	lbne	L226	;
   3F41 10 AE 64      [ 7]  868 	ldy	4,s	;, n
   3F44 10 8C 27 0F   [ 5]  869 	cmpy	#9999	;cmphi:	;,
   3F48 10 22 03 9E   [ 6]  870 	lbhi	L226	;
   3F4C E6 66         [ 5]  871 	ldb	6,s	;, useSpace
   3F4E C1 01         [ 2]  872 	cmpb	#1	;cmpqi:	;,
   3F50 10 27 03 B4   [ 6]  873 	lbeq	L266	;
   3F54                     874 L169:
   3F54 6F 66         [ 7]  875 	clr	6,s	; useSpace
   3F56 EC E4         [ 5]  876 	ldd	,s	;, digit.311
   3F58                     877 L170:
   3F58 ED 44         [ 6]  878 	std	4,u	;,
   3F5A AE 62         [ 6]  879 	ldx	2,s	;, n
   3F5C 26 0B         [ 3]  880 	bne	L227	;
   3F5E 10 AE 64      [ 7]  881 	ldy	4,s	;, n
   3F61 10 8C 1F 3F   [ 5]  882 	cmpy	#7999	;cmphi:	;,
   3F65 10 23 04 E2   [ 6]  883 	lbls	L239	;
   3F69                     884 L227:
   3F69 EC 64         [ 6]  885 	ldd	4,s	;, n
   3F6B C3 E0 C0      [ 4]  886 	addd	#-8000	;,
   3F6E ED 64         [ 6]  887 	std	4,s	;, n
   3F70 EC 62         [ 6]  888 	ldd	2,s	;, n
   3F72 C9 FF         [ 2]  889 	adcb	#-1	;
   3F74 89 FF         [ 2]  890 	adca	#-1	;
   3F76 ED 62         [ 6]  891 	std	2,s	;, n
   3F78 8E 38 30      [ 3]  892 	ldx	#14384	; digit.312,
   3F7B 10 8E 3A 30   [ 4]  893 	ldy	#14896	;,
   3F7F 10 AF E4      [ 6]  894 	sty	,s	;, digit.313
   3F82                     895 L173:
   3F82 EC 62         [ 6]  896 	ldd	2,s	;, n
   3F84 10 26 03 50   [ 6]  897 	lbne	L176	;
   3F88 10 AE 64      [ 7]  898 	ldy	4,s	;, n
   3F8B 10 8C 07 CF   [ 5]  899 	cmpy	#1999	;cmphi:	;,
   3F8F 10 22 03 45   [ 6]  900 	lbhi	L176	;
   3F93 AF E4         [ 5]  901 	stx	,s	; digit.312, digit.313
   3F95                     902 L178:
   3F95 AE 62         [ 6]  903 	ldx	2,s	;, n
   3F97 10 26 03 0C   [ 6]  904 	lbne	L230	;
   3F9B 10 AE 64      [ 7]  905 	ldy	4,s	;, n
   3F9E 10 8C 03 E7   [ 5]  906 	cmpy	#999	;cmphi:	;,
   3FA2 10 22 03 01   [ 6]  907 	lbhi	L230	;
   3FA6 E6 66         [ 5]  908 	ldb	6,s	;, useSpace
   3FA8 C1 01         [ 2]  909 	cmpb	#1	;cmpqi:	;,
   3FAA 10 27 03 17   [ 6]  910 	lbeq	L267	;
   3FAE                     911 L181:
   3FAE 6F 66         [ 7]  912 	clr	6,s	; useSpace
   3FB0                     913 L182:
   3FB0 EC 62         [ 6]  914 	ldd	2,s	;, n
   3FB2 26 09         [ 3]  915 	bne	L231	;
   3FB4 AE 64         [ 6]  916 	ldx	4,s	;, n
   3FB6 8C 03 1F      [ 4]  917 	cmpx	#799	;cmphi:	;,
   3FB9 10 23 04 A1   [ 6]  918 	lbls	L240	;
   3FBD                     919 L231:
   3FBD EC 64         [ 6]  920 	ldd	4,s	;, n
   3FBF C3 FC E0      [ 4]  921 	addd	#-800	;,
   3FC2 ED 64         [ 6]  922 	std	4,s	;, n
   3FC4 EC 62         [ 6]  923 	ldd	2,s	;, n
   3FC6 C9 FF         [ 2]  924 	adcb	#-1	;
   3FC8 89 FF         [ 2]  925 	adca	#-1	;
   3FCA ED 62         [ 6]  926 	std	2,s	;, n
   3FCC EC E4         [ 5]  927 	ldd	,s	;, digit.313
   3FCE C3 00 08      [ 4]  928 	addd	#8; addhi3,3	;,
   3FD1 ED E4         [ 5]  929 	std	,s	;, digit.313
   3FD3                     930 L185:
   3FD3 AE 62         [ 6]  931 	ldx	2,s	;, n
   3FD5 10 26 02 B5   [ 6]  932 	lbne	L233	;
   3FD9 10 AE 64      [ 7]  933 	ldy	4,s	;, n
   3FDC 10 8C 00 C7   [ 5]  934 	cmpy	#199	;cmphi:	;,
   3FE0 10 22 02 AA   [ 6]  935 	lbhi	L233	;
   3FE4                     936 L187:
   3FE4 AE 62         [ 6]  937 	ldx	2,s	;, n
   3FE6 10 26 02 71   [ 6]  938 	lbne	L234	;
   3FEA 10 AE 64      [ 7]  939 	ldy	4,s	;, n
   3FED 10 8C 00 63   [ 5]  940 	cmpy	#99	;cmphi:	;,
   3FF1 10 22 02 66   [ 6]  941 	lbhi	L234	;
   3FF5 E6 66         [ 5]  942 	ldb	6,s	;, useSpace
   3FF7 C1 01         [ 2]  943 	cmpb	#1	;cmpqi:	;,
   3FF9 10 27 02 7C   [ 6]  944 	lbeq	L268	;
   3FFD                     945 L191:
   3FFD 6F 66         [ 7]  946 	clr	6,s	; useSpace
   3FFF EC E4         [ 5]  947 	ldd	,s	;, digit.313
   4001                     948 L192:
   4001 ED 46         [ 6]  949 	std	6,u	;,
   4003 AE 62         [ 6]  950 	ldx	2,s	;, n
   4005 26 0B         [ 3]  951 	bne	L235	;
   4007 10 AE 64      [ 7]  952 	ldy	4,s	;, n
   400A 10 8C 00 4F   [ 5]  953 	cmpy	#79	;cmphi:	;,
   400E 10 23 04 2A   [ 6]  954 	lbls	L241	;
   4012                     955 L235:
   4012 EC 64         [ 6]  956 	ldd	4,s	;, n
   4014 C3 FF B0      [ 4]  957 	addd	#-80	;,
   4017 ED 64         [ 6]  958 	std	4,s	;, n
   4019 EC 62         [ 6]  959 	ldd	2,s	;, n
   401B C9 FF         [ 2]  960 	adcb	#-1	;
   401D 89 FF         [ 2]  961 	adca	#-1	;
   401F ED 62         [ 6]  962 	std	2,s	;, n
   4021 CC 38 30      [ 3]  963 	ldd	#14384	; digit.314,
   4024 8E 3A 30      [ 3]  964 	ldx	#14896	; digit.315,
   4027                     965 L195:
   4027 10 AE 62      [ 7]  966 	ldy	2,s	;, n
   402A 10 26 02 1B   [ 6]  967 	lbne	L198	;
   402E 10 AE 64      [ 7]  968 	ldy	4,s	;, n
   4031 10 8C 00 13   [ 5]  969 	cmpy	#19	;cmphi:	;,
   4035 10 22 02 10   [ 6]  970 	lbhi	L198	;
   4039 1F 01         [ 6]  971 	tfr	d,x	; digit.314, digit.315
   403B                     972 L200:
   403B 10 AE 62      [ 7]  973 	ldy	2,s	;, n
   403E 10 26 01 DF   [ 6]  974 	lbne	L238	;
   4042 EC 64         [ 6]  975 	ldd	4,s	;, n
   4044 10 83 00 09   [ 5]  976 	cmpd	#9	;cmphi:	;,
   4048 10 22 01 D5   [ 6]  977 	lbhi	L238	;
   404C E6 66         [ 5]  978 	ldb	6,s	;, useSpace
   404E C1 01         [ 2]  979 	cmpb	#1	;cmpqi:	;,
   4050 10 27 01 E8   [ 6]  980 	lbeq	L269	;
   4054                     981 L203:
   4054 E6 65         [ 5]  982 	ldb	5,s	;, n
   4056 3A            [ 3]  983 	abx
   4057 AF 48         [ 6]  984 	stx	8,u	; digit.315,
   4059 6F 4A         [ 7]  985 	clr	10,u	;
   405B 30 C4         [ 4]  986 	leax	,u	;, pointer
   405D 32 67         [ 5]  987 	leas	7,s	;,,
   405F 35 E0         [ 8]  988 	puls	y,u,pc	;
   4061                     989 L243:
   4061 10 AE 64      [ 7]  990 	ldy	4,s	;, n
   4064 10 8C C9 FF   [ 5]  991 	cmpy	#-13825	;cmphi:	;,
   4068 10 23 FC DD   [ 6]  992 	lbls	L113	;
   406C                     993 L206:
   406C EC 64         [ 6]  994 	ldd	4,s	;, n
   406E C3 36 00      [ 4]  995 	addd	#13824	;,
   4071 ED 64         [ 6]  996 	std	4,s	;, n
   4073 EC 62         [ 6]  997 	ldd	2,s	;, n
   4075 C9 65         [ 2]  998 	adcb	#101	;
   4077 89 C4         [ 2]  999 	adca	#-60	;
   4079 ED 62         [ 6] 1000 	std	2,s	;, n
   407B AF E4         [ 5] 1001 	stx	,s	; digit.316, digit
   407D                    1002 L115:
   407D 6F 66         [ 7] 1003 	clr	6,s	; useSpace
   407F AE 62         [ 6] 1004 	ldx	2,s	;, n
   4081 8C 2F AF      [ 4] 1005 	cmpx	#12207	;cmphi:	;,
   4084 10 22 FC DE   [ 6] 1006 	lbhi	L207	;
   4088                    1007 L244:
   4088 8C 2F AF      [ 4] 1008 	cmpx	#12207	;cmphi:	; tmp2,
   408B 10 27 03 93   [ 6] 1009 	lbeq	L270	;
   408F                    1010 L117:
   408F AE 62         [ 6] 1011 	ldx	2,s	;, n
   4091 8C 17 D7      [ 4] 1012 	cmpx	#6103	;cmphi:	;,
   4094 10 23 03 1B   [ 6] 1013 	lbls	L271	;
   4098                    1014 L208:
   4098 EC 64         [ 6] 1015 	ldd	4,s	;, n
   409A C3 7C 00      [ 4] 1016 	addd	#31744	;,
   409D ED 64         [ 6] 1017 	std	4,s	;, n
   409F EC 62         [ 6] 1018 	ldd	2,s	;, n
   40A1 C9 28         [ 2] 1019 	adcb	#40	;
   40A3 89 E8         [ 2] 1020 	adca	#-24	;
   40A5 ED 62         [ 6] 1021 	std	2,s	;, n
   40A7 EC E4         [ 5] 1022 	ldd	,s	;, digit
   40A9 C3 00 04      [ 4] 1023 	addd	#4; addhi3,3	;,
   40AC ED E4         [ 5] 1024 	std	,s	;, digit
   40AE AE 62         [ 6] 1025 	ldx	2,s	;, n
   40B0 8C 0B EB      [ 4] 1026 	cmpx	#3051	;cmphi:	;,
   40B3 10 23 FC CE   [ 6] 1027 	lbls	L272	;
   40B7                    1028 L209:
   40B7 EC 64         [ 6] 1029 	ldd	4,s	;, n
   40B9 C3 3E 00      [ 4] 1030 	addd	#15872	;,
   40BC ED 64         [ 6] 1031 	std	4,s	;, n
   40BE EC 62         [ 6] 1032 	ldd	2,s	;, n
   40C0 C9 14         [ 2] 1033 	adcb	#20	;
   40C2 89 F4         [ 2] 1034 	adca	#-12	;
   40C4 ED 62         [ 6] 1035 	std	2,s	;, n
   40C6 EC E4         [ 5] 1036 	ldd	,s	;, digit
   40C8 C3 00 02      [ 4] 1037 	addd	#2; addhi3,3	;,
   40CB ED E4         [ 5] 1038 	std	,s	;, digit
   40CD AE 62         [ 6] 1039 	ldx	2,s	;, n
   40CF 8C 05 F5      [ 4] 1040 	cmpx	#1525	;cmphi:	;,
   40D2 10 23 FC BF   [ 6] 1041 	lbls	L273	;
   40D6                    1042 L210:
   40D6 EC 64         [ 6] 1043 	ldd	4,s	;, n
   40D8 C3 1F 00      [ 4] 1044 	addd	#7936	;,
   40DB ED 64         [ 6] 1045 	std	4,s	;, n
   40DD EC 62         [ 6] 1046 	ldd	2,s	;, n
   40DF C9 0A         [ 2] 1047 	adcb	#10	;
   40E1 89 FA         [ 2] 1048 	adca	#-6	;
   40E3 ED 62         [ 6] 1049 	std	2,s	;, n
   40E5 EC E4         [ 5] 1050 	ldd	,s	;, digit
   40E7 C3 00 01      [ 4] 1051 	addd	#1; addhi3,3	;,
   40EA ED E4         [ 5] 1052 	std	,s	;, digit
   40EC E6 66         [ 5] 1053 	ldb	6,s	;, useSpace
   40EE C1 01         [ 2] 1054 	cmpb	#1	;cmpqi:	;,
   40F0 10 26 FC B0   [ 6] 1055 	lbne	L125	;
   40F4                    1056 L247:
   40F4 AE E4         [ 5] 1057 	ldx	,s	;, digit
   40F6 8C 20 30      [ 4] 1058 	cmpx	#8240	;cmphi:	;,
   40F9 10 26 FC A7   [ 6] 1059 	lbne	L125	;
   40FD 10 8E 20 20   [ 4] 1060 	ldy	#8224	;,
   4101 1F 20         [ 6] 1061 	tfr	y,d	;,
   4103 16 FC A2      [ 5] 1062 	lbra	L126	;
   4106                    1063 L248:
   4106 EC 64         [ 6] 1064 	ldd	4,s	;, n
   4108 10 83 B3 FF   [ 5] 1065 	cmpd	#-19457	;cmphi:	;,
   410C 10 23 FC A7   [ 6] 1066 	lbls	L127	;
   4110                    1067 L211:
   4110 EC 64         [ 6] 1068 	ldd	4,s	;, n
   4112 C3 4C 00      [ 4] 1069 	addd	#19456	;,
   4115 ED 64         [ 6] 1070 	std	4,s	;, n
   4117 EC 62         [ 6] 1071 	ldd	2,s	;, n
   4119 C9 3B         [ 2] 1072 	adcb	#59	;
   411B 89 FB         [ 2] 1073 	adca	#-5	;
   411D ED 62         [ 6] 1074 	std	2,s	;, n
   411F 8E 38 30      [ 3] 1075 	ldx	#14384	; digit.308,
   4122 10 8E 3A 30   [ 4] 1076 	ldy	#14896	;,
   4126 10 AF E4      [ 6] 1077 	sty	,s	;, digit.309
   4129                    1078 L129:
   4129 EC 62         [ 6] 1079 	ldd	2,s	;, n
   412B 10 83 01 31   [ 5] 1080 	cmpd	#305	;cmphi:	;,
   412F 10 22 FC B1   [ 6] 1081 	lbhi	L132	;
   4133                    1082 L250:
   4133 10 83 01 31   [ 5] 1083 	cmpd	#305	;cmphi:	; tmp2,
   4137 10 27 02 DA   [ 6] 1084 	lbeq	L274	;
   413B                    1085 L213:
   413B AF E4         [ 5] 1086 	stx	,s	; digit.308, digit.309
   413D AE 62         [ 6] 1087 	ldx	2,s	;, n
   413F 8C 00 98      [ 4] 1088 	cmpx	#152	;cmphi:	;,
   4142 10 22 FC B6   [ 6] 1089 	lbhi	L214	;
   4146                    1090 L251:
   4146 8C 00 98      [ 4] 1091 	cmpx	#152	;cmphi:	; tmp2,
   4149 10 26 FC C5   [ 6] 1092 	lbne	L135	;
   414D EC 64         [ 6] 1093 	ldd	4,s	;, n
   414F 10 83 96 7F   [ 5] 1094 	cmpd	#-27009	;cmphi:	;,
   4153 10 23 FC BB   [ 6] 1095 	lbls	L135	;
   4157 16 FC A2      [ 5] 1096 	lbra	L214	;
   415A                    1097 L253:
   415A 10 AE 64      [ 7] 1098 	ldy	4,s	;, n
   415D 10 8C 11 FF   [ 5] 1099 	cmpy	#4607	;cmphi:	;,
   4161 10 23 FC C5   [ 6] 1100 	lbls	L139	;
   4165                    1101 L215:
   4165 EC 64         [ 6] 1102 	ldd	4,s	;, n
   4167 C3 EE 00      [ 4] 1103 	addd	#-4608	;,
   416A ED 64         [ 6] 1104 	std	4,s	;, n
   416C EC 62         [ 6] 1105 	ldd	2,s	;, n
   416E C9 85         [ 2] 1106 	adcb	#-123	;
   4170 89 FF         [ 2] 1107 	adca	#-1	;
   4172 ED 62         [ 6] 1108 	std	2,s	;, n
   4174 EC E4         [ 5] 1109 	ldd	,s	;, digit.309
   4176 C3 00 08      [ 4] 1110 	addd	#8; addhi3,3	;,
   4179 ED E4         [ 5] 1111 	std	,s	;, digit.309
   417B                    1112 L141:
   417B AE 62         [ 6] 1113 	ldx	2,s	;, n
   417D 8C 00 1E      [ 4] 1114 	cmpx	#30	;cmphi:	;,
   4180 10 22 FC CE   [ 6] 1115 	lbhi	L217	;
   4184                    1116 L255:
   4184 8C 00 1E      [ 4] 1117 	cmpx	#30	;cmphi:	; tmp2,
   4187 10 26 FC DD   [ 6] 1118 	lbne	L143	;
   418B EC 64         [ 6] 1119 	ldd	4,s	;, n
   418D 10 83 84 7F   [ 5] 1120 	cmpd	#-31617	;cmphi:	;,
   4191 10 23 FC D3   [ 6] 1121 	lbls	L143	;
   4195 16 FC BA      [ 5] 1122 	lbra	L217	;
   4198                    1123 L258:
   4198 EC 64         [ 6] 1124 	ldd	4,s	;, n
   419A 10 83 34 FF   [ 5] 1125 	cmpd	#13567	;cmphi:	;,
   419E 10 23 FC EE   [ 6] 1126 	lbls	L149	;
   41A2                    1127 L219:
   41A2 EC 64         [ 6] 1128 	ldd	4,s	;, n
   41A4 C3 CB 00      [ 4] 1129 	addd	#-13568	;,
   41A7 ED 64         [ 6] 1130 	std	4,s	;, n
   41A9 EC 62         [ 6] 1131 	ldd	2,s	;, n
   41AB C9 F3         [ 2] 1132 	adcb	#-13	;
   41AD 89 FF         [ 2] 1133 	adca	#-1	;
   41AF ED 62         [ 6] 1134 	std	2,s	;, n
   41B1 8E 38 30      [ 3] 1135 	ldx	#14384	; digit.310,
   41B4 10 8E 3A 30   [ 4] 1136 	ldy	#14896	;,
   41B8 10 AF E4      [ 6] 1137 	sty	,s	;, digit.311
   41BB                    1138 L151:
   41BB EC 62         [ 6] 1139 	ldd	2,s	;, n
   41BD 10 83 00 03   [ 5] 1140 	cmpd	#3	;cmphi:	;,
   41C1 10 22 FC F8   [ 6] 1141 	lbhi	L154	;
   41C5                    1142 L260:
   41C5 10 83 00 03   [ 5] 1143 	cmpd	#3	;cmphi:	; tmp2,
   41C9 10 27 02 2E   [ 6] 1144 	lbeq	L275	;
   41CD                    1145 L221:
   41CD AF E4         [ 5] 1146 	stx	,s	; digit.310, digit.311
   41CF AE 62         [ 6] 1147 	ldx	2,s	;, n
   41D1 8C 00 01      [ 4] 1148 	cmpx	#1	;cmphi:	;,
   41D4 10 22 FC FD   [ 6] 1149 	lbhi	L222	;
   41D8                    1150 L261:
   41D8 8C 00 01      [ 4] 1151 	cmpx	#1	;cmphi:	; tmp2,
   41DB 10 26 FD 0C   [ 6] 1152 	lbne	L157	;
   41DF EC 64         [ 6] 1153 	ldd	4,s	;, n
   41E1 10 83 86 9F   [ 5] 1154 	cmpd	#-31073	;cmphi:	;,
   41E5 10 23 FD 02   [ 6] 1155 	lbls	L157	;
   41E9 16 FC E9      [ 5] 1156 	lbra	L222	;
   41EC                    1157 L263:
   41EC 10 AE 64      [ 7] 1158 	ldy	4,s	;, n
   41EF 10 8C 38 7F   [ 5] 1159 	cmpy	#14463	;cmphi:	;,
   41F3 10 23 FD 0C   [ 6] 1160 	lbls	L161	;
   41F7                    1161 L223:
   41F7 EC 64         [ 6] 1162 	ldd	4,s	;, n
   41F9 C3 C7 80      [ 4] 1163 	addd	#-14464	;,
   41FC ED 64         [ 6] 1164 	std	4,s	;, n
   41FE EC 62         [ 6] 1165 	ldd	2,s	;, n
   4200 C9 FE         [ 2] 1166 	adcb	#-2	;
   4202 89 FF         [ 2] 1167 	adca	#-1	;
   4204 ED 62         [ 6] 1168 	std	2,s	;, n
   4206 EC E4         [ 5] 1169 	ldd	,s	;, digit.311
   4208 C3 00 08      [ 4] 1170 	addd	#8; addhi3,3	;,
   420B ED E4         [ 5] 1171 	std	,s	;, digit.311
   420D                    1172 L163:
   420D AE 62         [ 6] 1173 	ldx	2,s	;, n
   420F 10 26 FD 12   [ 6] 1174 	lbne	L225	;
   4213                    1175 L265:
   4213 10 AE 64      [ 7] 1176 	ldy	4,s	;, n
   4216 10 8C 4E 1F   [ 5] 1177 	cmpy	#19999	;cmphi:	;,
   421A 10 23 FD 1D   [ 6] 1178 	lbls	L165	;
   421E 16 FD 04      [ 5] 1179 	lbra	L225	;
   4221                    1180 L238:
   4221 EC 64         [ 6] 1181 	ldd	4,s	;, n
   4223 C3 FF F6      [ 4] 1182 	addd	#-10	;,
   4226 ED 64         [ 6] 1183 	std	4,s	;, n
   4228 EC 62         [ 6] 1184 	ldd	2,s	;, n
   422A C9 FF         [ 2] 1185 	adcb	#-1	;
   422C 89 FF         [ 2] 1186 	adca	#-1	;
   422E ED 62         [ 6] 1187 	std	2,s	;, n
   4230 30 89 01 00   [ 8] 1188 	leax	256,x	; digit.315,, digit.315
   4234 E6 66         [ 5] 1189 	ldb	6,s	;, useSpace
   4236 C1 01         [ 2] 1190 	cmpb	#1	;cmpqi:	;,
   4238 10 26 FE 18   [ 6] 1191 	lbne	L203	;
   423C                    1192 L269:
   423C 8C 30 30      [ 4] 1193 	cmpx	#12336	;cmphi:	; digit.315,
   423F 10 26 FE 11   [ 6] 1194 	lbne	L203	;
   4243 8E 20 30      [ 3] 1195 	ldx	#8240	; digit.315,
   4246 16 FE 0B      [ 5] 1196 	lbra	L203	;
   4249                    1197 L198:
   4249 EC 64         [ 6] 1198 	ldd	4,s	;, n
   424B C3 FF EC      [ 4] 1199 	addd	#-20	;,
   424E ED 64         [ 6] 1200 	std	4,s	;, n
   4250 EC 62         [ 6] 1201 	ldd	2,s	;, n
   4252 C9 FF         [ 2] 1202 	adcb	#-1	;
   4254 89 FF         [ 2] 1203 	adca	#-1	;
   4256 ED 62         [ 6] 1204 	std	2,s	;, n
   4258 16 FD E0      [ 5] 1205 	lbra	L200	;
   425B                    1206 L234:
   425B EC 64         [ 6] 1207 	ldd	4,s	;, n
   425D C3 FF 9C      [ 4] 1208 	addd	#-100	;,
   4260 ED 64         [ 6] 1209 	std	4,s	;, n
   4262 EC 62         [ 6] 1210 	ldd	2,s	;, n
   4264 C9 FF         [ 2] 1211 	adcb	#-1	;
   4266 89 FF         [ 2] 1212 	adca	#-1	;
   4268 ED 62         [ 6] 1213 	std	2,s	;, n
   426A EC E4         [ 5] 1214 	ldd	,s	;, digit.313
   426C C3 00 01      [ 4] 1215 	addd	#1; addhi3,3	;,
   426F ED E4         [ 5] 1216 	std	,s	;, digit.313
   4271 E6 66         [ 5] 1217 	ldb	6,s	;, useSpace
   4273 C1 01         [ 2] 1218 	cmpb	#1	;cmpqi:	;,
   4275 10 26 FD 84   [ 6] 1219 	lbne	L191	;
   4279                    1220 L268:
   4279 AE E4         [ 5] 1221 	ldx	,s	;, digit.313
   427B 8C 20 30      [ 4] 1222 	cmpx	#8240	;cmphi:	;,
   427E 10 26 FD 7B   [ 6] 1223 	lbne	L191	;
   4282 10 8E 20 20   [ 4] 1224 	ldy	#8224	;,
   4286 10 AF E4      [ 6] 1225 	sty	,s	;, digit.313
   4289 1F 20         [ 6] 1226 	tfr	y,d	;,
   428B 16 FD 73      [ 5] 1227 	lbra	L192	;
   428E                    1228 L233:
   428E EC 64         [ 6] 1229 	ldd	4,s	;, n
   4290 C3 FF 38      [ 4] 1230 	addd	#-200	;,
   4293 ED 64         [ 6] 1231 	std	4,s	;, n
   4295 EC 62         [ 6] 1232 	ldd	2,s	;, n
   4297 C9 FF         [ 2] 1233 	adcb	#-1	;
   4299 89 FF         [ 2] 1234 	adca	#-1	;
   429B ED 62         [ 6] 1235 	std	2,s	;, n
   429D EC E4         [ 5] 1236 	ldd	,s	;, digit.313
   429F C3 00 02      [ 4] 1237 	addd	#2; addhi3,3	;,
   42A2 ED E4         [ 5] 1238 	std	,s	;, digit.313
   42A4 16 FD 3D      [ 5] 1239 	lbra	L187	;
   42A7                    1240 L230:
   42A7 EC 64         [ 6] 1241 	ldd	4,s	;, n
   42A9 C3 FC 18      [ 4] 1242 	addd	#-1000	;,
   42AC ED 64         [ 6] 1243 	std	4,s	;, n
   42AE EC 62         [ 6] 1244 	ldd	2,s	;, n
   42B0 C9 FF         [ 2] 1245 	adcb	#-1	;
   42B2 89 FF         [ 2] 1246 	adca	#-1	;
   42B4 ED 62         [ 6] 1247 	std	2,s	;, n
   42B6 EC E4         [ 5] 1248 	ldd	,s	;, digit.313
   42B8 C3 01 00      [ 4] 1249 	addd	#256; addhi3,3	;,
   42BB ED E4         [ 5] 1250 	std	,s	;, digit.313
   42BD E6 66         [ 5] 1251 	ldb	6,s	;, useSpace
   42BF C1 01         [ 2] 1252 	cmpb	#1	;cmpqi:	;,
   42C1 10 26 FC E9   [ 6] 1253 	lbne	L181	;
   42C5                    1254 L267:
   42C5 AE E4         [ 5] 1255 	ldx	,s	;, digit.313
   42C7 8C 30 30      [ 4] 1256 	cmpx	#12336	;cmphi:	;,
   42CA 10 26 FC E0   [ 6] 1257 	lbne	L181	;
   42CE 10 8E 20 30   [ 4] 1258 	ldy	#8240	;,
   42D2 10 AF E4      [ 6] 1259 	sty	,s	;, digit.313
   42D5 16 FC D8      [ 5] 1260 	lbra	L182	;
   42D8                    1261 L176:
   42D8 EC 64         [ 6] 1262 	ldd	4,s	;, n
   42DA C3 F8 30      [ 4] 1263 	addd	#-2000	;,
   42DD ED 64         [ 6] 1264 	std	4,s	;, n
   42DF EC 62         [ 6] 1265 	ldd	2,s	;, n
   42E1 C9 FF         [ 2] 1266 	adcb	#-1	;
   42E3 89 FF         [ 2] 1267 	adca	#-1	;
   42E5 ED 62         [ 6] 1268 	std	2,s	;, n
   42E7 16 FC AB      [ 5] 1269 	lbra	L178	;
   42EA                    1270 L226:
   42EA EC 64         [ 6] 1271 	ldd	4,s	;, n
   42EC C3 D8 F0      [ 4] 1272 	addd	#-10000	;,
   42EF ED 64         [ 6] 1273 	std	4,s	;, n
   42F1 EC 62         [ 6] 1274 	ldd	2,s	;, n
   42F3 C9 FF         [ 2] 1275 	adcb	#-1	;
   42F5 89 FF         [ 2] 1276 	adca	#-1	;
   42F7 ED 62         [ 6] 1277 	std	2,s	;, n
   42F9 EC E4         [ 5] 1278 	ldd	,s	;, digit.311
   42FB C3 00 01      [ 4] 1279 	addd	#1; addhi3,3	;,
   42FE ED E4         [ 5] 1280 	std	,s	;, digit.311
   4300 E6 66         [ 5] 1281 	ldb	6,s	;, useSpace
   4302 C1 01         [ 2] 1282 	cmpb	#1	;cmpqi:	;,
   4304 10 26 FC 4C   [ 6] 1283 	lbne	L169	;
   4308                    1284 L266:
   4308 AE E4         [ 5] 1285 	ldx	,s	;, digit.311
   430A 8C 20 30      [ 4] 1286 	cmpx	#8240	;cmphi:	;,
   430D 10 26 FC 43   [ 6] 1287 	lbne	L169	;
   4311 10 8E 20 20   [ 4] 1288 	ldy	#8224	;,
   4315 1F 20         [ 6] 1289 	tfr	y,d	;,
   4317 16 FC 3E      [ 5] 1290 	lbra	L170	;
   431A                    1291 L256:
   431A EC 64         [ 6] 1292 	ldd	4,s	;, n
   431C 10 83 42 3F   [ 5] 1293 	cmpd	#16959	;cmphi:	;,
   4320 10 23 FB 51   [ 6] 1294 	lbls	L145	;
   4324                    1295 L218:
   4324 EC 64         [ 6] 1296 	ldd	4,s	;, n
   4326 C3 BD C0      [ 4] 1297 	addd	#-16960	;,
   4329 ED 64         [ 6] 1298 	std	4,s	;, n
   432B EC 62         [ 6] 1299 	ldd	2,s	;, n
   432D C9 F0         [ 2] 1300 	adcb	#-16	;
   432F 89 FF         [ 2] 1301 	adca	#-1	;
   4331 ED 62         [ 6] 1302 	std	2,s	;, n
   4333 EC E4         [ 5] 1303 	ldd	,s	;, digit.309
   4335 C3 00 01      [ 4] 1304 	addd	#1; addhi3,3	;,
   4338 ED E4         [ 5] 1305 	std	,s	;, digit.309
   433A E6 66         [ 5] 1306 	ldb	6,s	;, useSpace
   433C C1 01         [ 2] 1307 	cmpb	#1	;cmpqi:	;,
   433E 10 26 FB 3B   [ 6] 1308 	lbne	L147	;
   4342                    1309 L257:
   4342 AE E4         [ 5] 1310 	ldx	,s	;, digit.309
   4344 8C 20 30      [ 4] 1311 	cmpx	#8240	;cmphi:	;,
   4347 10 26 FB 32   [ 6] 1312 	lbne	L147	;
   434B 10 8E 20 20   [ 4] 1313 	ldy	#8224	;,
   434F 1F 20         [ 6] 1314 	tfr	y,d	;,
   4351 16 FB 2D      [ 5] 1315 	lbra	L148	;
   4354                    1316 L242:
   4354 10 AE 64      [ 7] 1317 	ldy	4,s	;, n
   4357 10 8C 93 FF   [ 5] 1318 	cmpy	#-27649	;cmphi:	;,
   435B 10 23 F9 D3   [ 6] 1319 	lbls	L205	;
   435F                    1320 L110:
   435F EC 64         [ 6] 1321 	ldd	4,s	;, n
   4361 C3 6C 00      [ 4] 1322 	addd	#27648	;,
   4364 ED 64         [ 6] 1323 	std	4,s	;, n
   4366 EC 62         [ 6] 1324 	ldd	2,s	;, n
   4368 C9 CA         [ 2] 1325 	adcb	#-54	;
   436A 89 88         [ 2] 1326 	adca	#-120	;
   436C ED 62         [ 6] 1327 	std	2,s	;, n
   436E 8E 32 30      [ 3] 1328 	ldx	#12848	;,
   4371 AF E4         [ 5] 1329 	stx	,s	;, digit
   4373 8E 33 30      [ 3] 1330 	ldx	#13104	; digit.316,
   4376 16 F9 C1      [ 5] 1331 	lbra	L112	;
   4379                    1332 L259:
   4379 10 83 00 06   [ 5] 1333 	cmpd	#6	;cmphi:	; tmp1,
   437D 10 27 01 0B   [ 6] 1334 	lbeq	L276	;
   4381                    1335 L220:
   4381 8E 30 30      [ 3] 1336 	ldx	#12336	; digit.310,
   4384 CC 32 30      [ 3] 1337 	ldd	#12848	;,
   4387 ED E4         [ 5] 1338 	std	,s	;, digit.311
   4389 16 FE 2F      [ 5] 1339 	lbra	L151	;
   438C                    1340 L254:
   438C 8C 00 3D      [ 4] 1341 	cmpx	#61	;cmphi:	; tmp2,
   438F 10 26 FD E8   [ 6] 1342 	lbne	L141	;
   4393 EC 64         [ 6] 1343 	ldd	4,s	;, n
   4395 10 83 08 FF   [ 5] 1344 	cmpd	#2303	;cmphi:	;,
   4399 10 23 FD DE   [ 6] 1345 	lbls	L141	;
   439D 16 FA 93      [ 5] 1346 	lbra	L216	;
   43A0                    1347 L249:
   43A0 10 83 02 62   [ 5] 1348 	cmpd	#610	;cmphi:	; tmp1,
   43A4 10 27 00 D6   [ 6] 1349 	lbeq	L277	;
   43A8                    1350 L212:
   43A8 8E 30 30      [ 3] 1351 	ldx	#12336	; digit.308,
   43AB CC 32 30      [ 3] 1352 	ldd	#12848	;,
   43AE ED E4         [ 5] 1353 	std	,s	;, digit.309
   43B0 16 FD 76      [ 5] 1354 	lbra	L129	;
   43B3                    1355 L271:
   43B3 8C 17 D7      [ 4] 1356 	cmpx	#6103	;cmphi:	; tmp2,
   43B6 10 26 F9 C2   [ 6] 1357 	lbne	L119	;
   43BA EC 64         [ 6] 1358 	ldd	4,s	;, n
   43BC 10 83 83 FF   [ 5] 1359 	cmpd	#-31745	;cmphi:	;,
   43C0 10 23 F9 B8   [ 6] 1360 	lbls	L119	;
   43C4 16 FC D1      [ 5] 1361 	lbra	L208	;
   43C7                    1362 L262:
   43C7 AE E4         [ 5] 1363 	ldx	,s	;, digit.311
   43C9 8C 30 30      [ 4] 1364 	cmpx	#12336	;cmphi:	;,
   43CC 10 26 FB 23   [ 6] 1365 	lbne	L159	;
   43D0 10 8E 20 30   [ 4] 1366 	ldy	#8240	;,
   43D4 10 AF E4      [ 6] 1367 	sty	,s	;, digit.311
   43D7 16 FB 1B      [ 5] 1368 	lbra	L160	;
   43DA                    1369 L252:
   43DA AE E4         [ 5] 1370 	ldx	,s	;, digit.309
   43DC 8C 30 30      [ 4] 1371 	cmpx	#12336	;cmphi:	;,
   43DF 10 26 FA 37   [ 6] 1372 	lbne	L137	;
   43E3 10 8E 20 30   [ 4] 1373 	ldy	#8240	;,
   43E7 10 AF E4      [ 6] 1374 	sty	,s	;, digit.309
   43EA 16 FA 2F      [ 5] 1375 	lbra	L138	;
   43ED                    1376 L264:
   43ED 10 AE 64      [ 7] 1377 	ldy	4,s	;, n
   43F0 10 8C 9C 3F   [ 5] 1378 	cmpy	#-25537	;cmphi:	;,
   43F4 10 23 FE 15   [ 6] 1379 	lbls	L163	;
   43F8 16 FB 0E      [ 5] 1380 	lbra	L224	;
   43FB                    1381 L275:
   43FB EC 64         [ 6] 1382 	ldd	4,s	;, n
   43FD 10 83 0D 3F   [ 5] 1383 	cmpd	#3391	;cmphi:	;,
   4401 10 22 FA B8   [ 6] 1384 	lbhi	L154	;
   4405 16 FD C5      [ 5] 1385 	lbra	L221	;
   4408                    1386 L245:
   4408 EC 64         [ 6] 1387 	ldd	4,s	;, n
   440A 10 83 C1 FF   [ 5] 1388 	cmpd	#-15873	;cmphi:	;,
   440E 10 23 F9 7A   [ 6] 1389 	lbls	L121	;
   4412 16 FC A2      [ 5] 1390 	lbra	L209	;
   4415                    1391 L274:
   4415 EC 64         [ 6] 1392 	ldd	4,s	;, n
   4417 10 83 2C FF   [ 5] 1393 	cmpd	#11519	;cmphi:	;,
   441B 10 22 F9 C5   [ 6] 1394 	lbhi	L132	;
   441F 16 FD 19      [ 5] 1395 	lbra	L213	;
   4422                    1396 L270:
   4422 EC 64         [ 6] 1397 	ldd	4,s	;, n
   4424 10 83 07 FF   [ 5] 1398 	cmpd	#2047	;cmphi:	;,
   4428 10 23 FC 63   [ 6] 1399 	lbls	L117	;
   442C 16 F9 37      [ 5] 1400 	lbra	L207	;
   442F                    1401 L246:
   442F EC 64         [ 6] 1402 	ldd	4,s	;, n
   4431 10 83 E0 FF   [ 5] 1403 	cmpd	#-7937	;cmphi:	;,
   4435 10 23 F9 63   [ 6] 1404 	lbls	L123	;
   4439 16 FC 9A      [ 5] 1405 	lbra	L210	;
   443C                    1406 L241:
   443C 10 8C 00 27   [ 5] 1407 	cmpy	#39	;cmphi:	; tmp1,
   4440 22 58         [ 3] 1408 	bhi	L196	;
   4442 CC 30 30      [ 3] 1409 	ldd	#12336	; digit.314,
   4445 8E 32 30      [ 3] 1410 	ldx	#12848	; digit.315,
   4448 16 FB DC      [ 5] 1411 	lbra	L195	;
   444B                    1412 L239:
   444B 10 8C 0F 9F   [ 5] 1413 	cmpy	#3999	;cmphi:	; tmp6,
   444F 22 61         [ 3] 1414 	bhi	L174	;
   4451 8E 30 30      [ 3] 1415 	ldx	#12336	; digit.312,
   4454 10 8E 32 30   [ 4] 1416 	ldy	#12848	;,
   4458 10 AF E4      [ 6] 1417 	sty	,s	;, digit.313
   445B 16 FB 24      [ 5] 1418 	lbra	L173	;
   445E                    1419 L240:
   445E 8C 01 8F      [ 4] 1420 	cmpx	#399	;cmphi:	;,
   4461 10 23 FB 6E   [ 6] 1421 	lbls	L185	;
   4465 EC 64         [ 6] 1422 	ldd	4,s	;, n
   4467 C3 FE 70      [ 4] 1423 	addd	#-400	;,
   446A ED 64         [ 6] 1424 	std	4,s	;, n
   446C EC 62         [ 6] 1425 	ldd	2,s	;, n
   446E C9 FF         [ 2] 1426 	adcb	#-1	;
   4470 89 FF         [ 2] 1427 	adca	#-1	;
   4472 ED 62         [ 6] 1428 	std	2,s	;, n
   4474 EC E4         [ 5] 1429 	ldd	,s	;, digit.313
   4476 C3 00 04      [ 4] 1430 	addd	#4; addhi3,3	;,
   4479 ED E4         [ 5] 1431 	std	,s	;, digit.313
   447B 16 FB 55      [ 5] 1432 	lbra	L185	;
   447E                    1433 L277:
   447E 10 AE 64      [ 7] 1434 	ldy	4,s	;, n
   4481 10 8C 59 FF   [ 5] 1435 	cmpy	#23039	;cmphi:	;,
   4485 10 22 F9 38   [ 6] 1436 	lbhi	L130	;
   4489 16 FF 1C      [ 5] 1437 	lbra	L212	;
   448C                    1438 L276:
   448C 10 AE 64      [ 7] 1439 	ldy	4,s	;, n
   448F 10 8C 1A 7F   [ 5] 1440 	cmpy	#6783	;cmphi:	;,
   4493 10 22 FA 03   [ 6] 1441 	lbhi	L152	;
   4497 16 FE E7      [ 5] 1442 	lbra	L220	;
   449A                    1443 L196:
   449A EC 64         [ 6] 1444 	ldd	4,s	;, n
   449C C3 FF D8      [ 4] 1445 	addd	#-40	;,
   449F ED 64         [ 6] 1446 	std	4,s	;, n
   44A1 EC 62         [ 6] 1447 	ldd	2,s	;, n
   44A3 C9 FF         [ 2] 1448 	adcb	#-1	;
   44A5 89 FF         [ 2] 1449 	adca	#-1	;
   44A7 ED 62         [ 6] 1450 	std	2,s	;, n
   44A9 CC 34 30      [ 3] 1451 	ldd	#13360	; digit.314,
   44AC 8E 36 30      [ 3] 1452 	ldx	#13872	; digit.315,
   44AF 16 FB 75      [ 5] 1453 	lbra	L195	;
   44B2                    1454 L174:
   44B2 EC 64         [ 6] 1455 	ldd	4,s	;, n
   44B4 C3 F0 60      [ 4] 1456 	addd	#-4000	;,
   44B7 ED 64         [ 6] 1457 	std	4,s	;, n
   44B9 EC 62         [ 6] 1458 	ldd	2,s	;, n
   44BB C9 FF         [ 2] 1459 	adcb	#-1	;
   44BD 89 FF         [ 2] 1460 	adca	#-1	;
   44BF ED 62         [ 6] 1461 	std	2,s	;, n
   44C1 8E 34 30      [ 3] 1462 	ldx	#13360	; digit.312,
   44C4 10 8E 36 30   [ 4] 1463 	ldy	#13872	;,
   44C8 10 AF E4      [ 6] 1464 	sty	,s	;, digit.313
   44CB 16 FA B4      [ 5] 1465 	lbra	L173	;
                           1466 	.globl	_lltoa
   44CE                    1467 _lltoa:
   44CE 8E C8 B3      [ 3] 1468 	ldx	#_stringBuffer12	;,
   44D1 7E 3D 16      [ 4] 1469 	jmp	__lltoa	;
                           1470 	.globl	_lltoa_s
   44D4                    1471 _lltoa_s:
   44D4 32 7C         [ 5] 1472 	leas	-4,s	;,,
   44D6 AE 66         [ 6] 1473 	ldx	6,s	;, n
   44D8 AF E4         [ 5] 1474 	stx	,s	;,
   44DA AE 68         [ 6] 1475 	ldx	8,s	;, n
   44DC AF 62         [ 6] 1476 	stx	2,s	;,
   44DE 8E C8 B3      [ 3] 1477 	ldx	#_stringBuffer12	;,
   44E1 BD 3D 16      [ 8] 1478 	jsr	__lltoa
   44E4 32 64         [ 5] 1479 	leas	4,s	;,,
   44E6 8E C8 B3      [ 3] 1480 	ldx	#_stringBuffer12	;,
   44E9 7E 38 C9      [ 4] 1481 	jmp	_removeSpaces	;
                           1482 	.globl	__fll_s
   44EC                    1483 __fll_s:
   44EC 34 60         [ 7] 1484 	pshs	y,u	;
   44EE 32 77         [ 5] 1485 	leas	-9,s	;,,
   44F0 AF 64         [ 6] 1486 	stx	4,s	; s1, s1
   44F2 AE 6F         [ 6] 1487 	ldx	15,s	;, i
   44F4 AF E4         [ 5] 1488 	stx	,s	;,
   44F6 EC E8 11      [ 6] 1489 	ldd	17,s	;, i
   44F9 ED 62         [ 6] 1490 	std	2,s	;,
   44FB 8E C8 B3      [ 3] 1491 	ldx	#_stringBuffer12	;,
   44FE BD 3D 16      [ 8] 1492 	jsr	__lltoa
   4501 8E C8 B3      [ 3] 1493 	ldx	#_stringBuffer12	;,
   4504 BD 38 C9      [ 8] 1494 	jsr	_removeSpaces
   4507 EE 64         [ 6] 1495 	ldu	4,s	; s1.379, s1
   4509 E6 C0         [ 6] 1496 	ldb	,u+	;,
   450B E7 68         [ 5] 1497 	stb	8,s	;, c.378
   450D 32 64         [ 5] 1498 	leas	4,s	;,,
   450F 10 8E C8 BF   [ 4] 1499 	ldy	#_stringBuffer40	; to,
   4513 C1 25         [ 2] 1500 	cmpb	#37	;cmpqi:	;,
   4515 27 2C         [ 3] 1501 	beq	L284	;
   4517 CE 00 00      [ 3] 1502 	ldu	#0	; ivtmp.377,
   451A 20 02         [ 3] 1503 	bra	L285	;
   451C                    1504 L293:
   451C EE 62         [ 6] 1505 	ldu	2,s	; ivtmp.377, ivtmp.369
   451E                    1506 L285:
   451E E6 64         [ 5] 1507 	ldb	4,s	;, c.378
   4520 E7 C9 C8 BF   [ 8] 1508 	stb	_stringBuffer40,u	;,
   4524 30 41         [ 5] 1509 	leax	1,u	;,, ivtmp.377
   4526 AF 62         [ 6] 1510 	stx	2,s	;, ivtmp.369
   4528 31 89 C8 BF   [ 8] 1511 	leay	_stringBuffer40,x	; to,,
   452C EC E4         [ 5] 1512 	ldd	,s	;, s1
   452E 30 CB         [ 8] 1513 	leax	d,u	; tmp39,, ivtmp.377
   4530 E6 01         [ 5] 1514 	ldb	1,x	;,
   4532 E7 64         [ 5] 1515 	stb	4,s	;, c.378
   4534 1F 30         [ 6] 1516 	tfr	u,d	; ivtmp.377, tmp40
   4536 C3 00 02      [ 4] 1517 	addd	#2; addhi3,3	; tmp40,
   4539 AE E4         [ 5] 1518 	ldx	,s	;, s1
   453B 33 8B         [ 8] 1519 	leau	d,x	; s1.379, tmp40,
   453D E6 64         [ 5] 1520 	ldb	4,s	;, c.378
   453F C1 25         [ 2] 1521 	cmpb	#37	;cmpqi:	;,
   4541 26 D9         [ 3] 1522 	bne	L293	;
   4543                    1523 L284:
   4543 F6 C8 B3      [ 5] 1524 	ldb	_stringBuffer12	; c.376, stringBuffer12
   4546 27 09         [ 3] 1525 	beq	L286	;
   4548 8E C8 B4      [ 3] 1526 	ldx	#_stringBuffer12+1	; s2,
   454B                    1527 L287:
   454B E7 A0         [ 6] 1528 	stb	,y+	; c.376,
   454D E6 80         [ 6] 1529 	ldb	,x+	; c.376,
   454F 26 FA         [ 3] 1530 	bne	L287	;
   4551                    1531 L286:
   4551 E6 C4         [ 4] 1532 	ldb	,u	; c,* s1.379
   4553 27 08         [ 3] 1533 	beq	L288	;
   4555 30 41         [ 5] 1534 	leax	1,u	; s1.375,, s1.379
   4557                    1535 L289:
   4557 E7 A0         [ 6] 1536 	stb	,y+	; c,
   4559 E6 80         [ 6] 1537 	ldb	,x+	; c,
   455B 26 FA         [ 3] 1538 	bne	L289	;
   455D                    1539 L288:
   455D C6 80         [ 2] 1540 	ldb	#-128	;,
   455F E7 A4         [ 4] 1541 	stb	,y	;,* to
   4561 32 65         [ 5] 1542 	leas	5,s	;,,
   4563 35 E0         [ 8] 1543 	puls	y,u,pc	;
                           1544 	.globl	_saveSeed
   4565                    1545 _saveSeed:
   4565 F6 CA 78      [ 5] 1546 	ldb	__x	;, _x
   4568 F7 CA 7C      [ 5] 1547 	stb	___x	;, __x
   456B F6 CA 79      [ 5] 1548 	ldb	__a	;, _a
   456E F7 CA 7D      [ 5] 1549 	stb	___a	;, __a
   4571 F6 CA 7A      [ 5] 1550 	ldb	__b	;, _b
   4574 F7 CA 7E      [ 5] 1551 	stb	___b	;, __b
   4577 F6 CA 7B      [ 5] 1552 	ldb	__c	;, _c
   457A F7 CA 7F      [ 5] 1553 	stb	___c	;, __c
   457D 39            [ 5] 1554 	rts
                           1555 	.globl	_restoreSeed
   457E                    1556 _restoreSeed:
   457E F6 CA 7C      [ 5] 1557 	ldb	___x	;, __x
   4581 F7 CA 78      [ 5] 1558 	stb	__x	;, _x
   4584 F6 CA 7D      [ 5] 1559 	ldb	___a	;, __a
   4587 F7 CA 79      [ 5] 1560 	stb	__a	;, _a
   458A F6 CA 7E      [ 5] 1561 	ldb	___b	;, __b
   458D F7 CA 7A      [ 5] 1562 	stb	__b	;, _b
   4590 F6 CA 7F      [ 5] 1563 	ldb	___c	;, __c
   4593 F7 CA 7B      [ 5] 1564 	stb	__c	;, _c
   4596 39            [ 5] 1565 	rts
                           1566 	.globl	__fsss
   4597                    1567 __fsss:
   4597 34 60         [ 7] 1568 	pshs	y,u	;
   4599 32 77         [ 5] 1569 	leas	-9,s	;,,
   459B AF 64         [ 6] 1570 	stx	4,s	; s1, s1
   459D 30 01         [ 5] 1571 	leax	1,x	; s1,, s1
   459F AF 62         [ 6] 1572 	stx	2,s	; s1, s1.476
   45A1 30 1F         [ 5] 1573 	leax	-1,x	; s1,, s1
   45A3 E6 80         [ 6] 1574 	ldb	,x+	;,
   45A5 E7 68         [ 5] 1575 	stb	8,s	;, c.475
   45A7 10 8E C8 BF   [ 4] 1576 	ldy	#_stringBuffer40	; to,
   45AB C1 25         [ 2] 1577 	cmpb	#37	;cmpqi:	;,
   45AD 27 2E         [ 3] 1578 	beq	L300	;
   45AF CE 00 00      [ 3] 1579 	ldu	#0	; ivtmp.457,
   45B2 20 02         [ 3] 1580 	bra	L301	;
   45B4                    1581 L324:
   45B4 EE 66         [ 6] 1582 	ldu	6,s	; ivtmp.457, ivtmp.463
   45B6                    1583 L301:
   45B6 E6 68         [ 5] 1584 	ldb	8,s	;, c.475
   45B8 E7 C9 C8 BF   [ 8] 1585 	stb	_stringBuffer40,u	;,
   45BC 30 41         [ 5] 1586 	leax	1,u	;,, ivtmp.457
   45BE AF 66         [ 6] 1587 	stx	6,s	;, ivtmp.463
   45C0 31 89 C8 BF   [ 8] 1588 	leay	_stringBuffer40,x	; to,,
   45C4 EC 64         [ 6] 1589 	ldd	4,s	;, s1
   45C6 30 CB         [ 8] 1590 	leax	d,u	; tmp49,, ivtmp.457
   45C8 E6 01         [ 5] 1591 	ldb	1,x	;,
   45CA E7 68         [ 5] 1592 	stb	8,s	;, c.475
   45CC 1F 30         [ 6] 1593 	tfr	u,d	; ivtmp.457, tmp50
   45CE C3 00 02      [ 4] 1594 	addd	#2; addhi3,3	; tmp50,
   45D1 AE 64         [ 6] 1595 	ldx	4,s	;, s1
   45D3 30 8B         [ 8] 1596 	leax	d,x	;, tmp50,
   45D5 AF 62         [ 6] 1597 	stx	2,s	;, s1.476
   45D7 E6 68         [ 5] 1598 	ldb	8,s	;, c.475
   45D9 C1 25         [ 2] 1599 	cmpb	#37	;cmpqi:	;,
   45DB 26 D7         [ 3] 1600 	bne	L324	;
   45DD                    1601 L300:
   45DD AE 6F         [ 6] 1602 	ldx	15,s	;, s2
   45DF E6 84         [ 4] 1603 	ldb	,x	; c.473,
   45E1 27 08         [ 3] 1604 	beq	L302	;
   45E3 30 01         [ 5] 1605 	leax	1,x	; s2.474,,
   45E5                    1606 L303:
   45E5 E7 A0         [ 6] 1607 	stb	,y+	; c.473,
   45E7 E6 80         [ 6] 1608 	ldb	,x+	; c.473,
   45E9 26 FA         [ 3] 1609 	bne	L303	;
   45EB                    1610 L302:
   45EB EE 62         [ 6] 1611 	ldu	2,s	; s1.472, s1.476
   45ED E6 C0         [ 6] 1612 	ldb	,u+	; c.471,
   45EF C1 25         [ 2] 1613 	cmpb	#37	;cmpqi:	; c.471,
   45F1 27 08         [ 3] 1614 	beq	L304	;
   45F3                    1615 L316:
   45F3 E7 A0         [ 6] 1616 	stb	,y+	; c.471,
   45F5 E6 C0         [ 6] 1617 	ldb	,u+	; c.471,
   45F7 C1 25         [ 2] 1618 	cmpb	#37	;cmpqi:	; c.471,
   45F9 26 F8         [ 3] 1619 	bne	L316	;
   45FB                    1620 L304:
   45FB AE E8 11      [ 6] 1621 	ldx	17,s	;, s3
   45FE E6 84         [ 4] 1622 	ldb	,x	; c.469,
   4600 27 1A         [ 3] 1623 	beq	L323	;
   4602 30 01         [ 5] 1624 	leax	1,x	;,,
   4604 AF E4         [ 5] 1625 	stx	,s	;, s3.470
   4606                    1626 L307:
   4606 E7 A0         [ 6] 1627 	stb	,y+	; c.469,
   4608 AE E4         [ 5] 1628 	ldx	,s	;, s3.470
   460A 30 01         [ 5] 1629 	leax	1,x	;,,
   460C AF E4         [ 5] 1630 	stx	,s	;, s3.470
   460E 30 1F         [ 5] 1631 	leax	-1,x	;,,
   4610 E6 80         [ 6] 1632 	ldb	,x+	; c.469,
   4612 26 F2         [ 3] 1633 	bne	L307	;
   4614 E6 C0         [ 6] 1634 	ldb	,u+	; c.464,
   4616 C1 25         [ 2] 1635 	cmpb	#37	;cmpqi:	; c.464,
   4618 27 08         [ 3] 1636 	beq	L325	;
   461A                    1637 L315:
   461A E7 A0         [ 6] 1638 	stb	,y+	; c.464,
   461C                    1639 L323:
   461C E6 C0         [ 6] 1640 	ldb	,u+	; c.464,
   461E C1 25         [ 2] 1641 	cmpb	#37	;cmpqi:	; c.464,
   4620 26 F8         [ 3] 1642 	bne	L315	;
   4622                    1643 L325:
   4622 AE E8 13      [ 6] 1644 	ldx	19,s	;, s4
   4625 E6 84         [ 4] 1645 	ldb	,x	; c.465,
   4627 27 12         [ 3] 1646 	beq	L310	;
   4629 30 01         [ 5] 1647 	leax	1,x	;,,
   462B AF E4         [ 5] 1648 	stx	,s	;, s4.468
   462D                    1649 L311:
   462D E7 A0         [ 6] 1650 	stb	,y+	; c.465,
   462F AE E4         [ 5] 1651 	ldx	,s	;, s4.468
   4631 30 01         [ 5] 1652 	leax	1,x	;,,
   4633 AF E4         [ 5] 1653 	stx	,s	;, s4.468
   4635 30 1F         [ 5] 1654 	leax	-1,x	;,,
   4637 E6 80         [ 6] 1655 	ldb	,x+	; c.465,
   4639 26 F2         [ 3] 1656 	bne	L311	;
   463B                    1657 L310:
   463B E6 C4         [ 4] 1658 	ldb	,u	; c,* s1.467
   463D 27 08         [ 3] 1659 	beq	L312	;
   463F 30 41         [ 5] 1660 	leax	1,u	; s1.466,, s1.467
   4641                    1661 L313:
   4641 E7 A0         [ 6] 1662 	stb	,y+	; c,
   4643 E6 80         [ 6] 1663 	ldb	,x+	; c,
   4645 26 FA         [ 3] 1664 	bne	L313	;
   4647                    1665 L312:
   4647 C6 80         [ 2] 1666 	ldb	#-128	;,
   4649 E7 A4         [ 4] 1667 	stb	,y	;,* to
   464B 32 69         [ 5] 1668 	leas	9,s	;,,
   464D 35 E0         [ 8] 1669 	puls	y,u,pc	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$string$100       005E GR  |   2 A$string$1000      07EA GR
  2 A$string$1001      07EC GR  |   2 A$string$1003      07EE GR
  2 A$string$1004      07F0 GR  |   2 A$string$1005      07F2 GR
  2 A$string$1006      07F5 GR  |   2 A$string$1008      07F9 GR
  2 A$string$1009      07FC GR  |   2 A$string$101       0060 GR
  2 A$string$1011      0800 GR  |   2 A$string$1012      0802 GR
  2 A$string$1013      0805 GR  |   2 A$string$1015      0809 GR
  2 A$string$1016      080B GR  |   2 A$string$1017      080E GR
  2 A$string$1018      0810 GR  |   2 A$string$1019      0812 GR
  2 A$string$102       0062 GR  |   2 A$string$1020      0814 GR
  2 A$string$1021      0816 GR  |   2 A$string$1022      0818 GR
  2 A$string$1023      081A GR  |   2 A$string$1024      081D GR
  2 A$string$1025      081F GR  |   2 A$string$1026      0821 GR
  2 A$string$1027      0824 GR  |   2 A$string$1029      0828 GR
  2 A$string$103       0064 GR  |   2 A$string$1030      082A GR
  2 A$string$1031      082D GR  |   2 A$string$1032      082F GR
  2 A$string$1033      0831 GR  |   2 A$string$1034      0833 GR
  2 A$string$1035      0835 GR  |   2 A$string$1036      0837 GR
  2 A$string$1037      0839 GR  |   2 A$string$1038      083C GR
  2 A$string$1039      083E GR  |   2 A$string$104       0066 GR
  2 A$string$1040      0840 GR  |   2 A$string$1041      0843 GR
  2 A$string$1043      0847 GR  |   2 A$string$1044      0849 GR
  2 A$string$1045      084C GR  |   2 A$string$1046      084E GR
  2 A$string$1047      0850 GR  |   2 A$string$1048      0852 GR
  2 A$string$1049      0854 GR  |   2 A$string$105       0068 GR
  2 A$string$1050      0856 GR  |   2 A$string$1051      0858 GR
  2 A$string$1052      085B GR  |   2 A$string$1053      085D GR
  2 A$string$1054      085F GR  |   2 A$string$1055      0861 GR
  2 A$string$1057      0865 GR  |   2 A$string$1058      0867 GR
  2 A$string$1059      086A GR  |   2 A$string$106       006C GR
  2 A$string$1060      086E GR  |   2 A$string$1061      0872 GR
  2 A$string$1062      0874 GR  |   2 A$string$1064      0877 GR
  2 A$string$1065      0879 GR  |   2 A$string$1066      087D GR
  2 A$string$1068      0881 GR  |   2 A$string$1069      0883 GR
  2 A$string$107       006E GR  |   2 A$string$1070      0886 GR
  2 A$string$1071      0888 GR  |   2 A$string$1072      088A GR
  2 A$string$1073      088C GR  |   2 A$string$1074      088E GR
  2 A$string$1075      0890 GR  |   2 A$string$1076      0893 GR
  2 A$string$1077      0897 GR  |   2 A$string$1079      089A GR
  2 A$string$108       0071 GR  |   2 A$string$1080      089C GR
  2 A$string$1081      08A0 GR  |   2 A$string$1083      08A4 GR
  2 A$string$1084      08A8 GR  |   2 A$string$1086      08AC GR
  2 A$string$1087      08AE GR  |   2 A$string$1088      08B0 GR
  2 A$string$1089      08B3 GR  |   2 A$string$1091      08B7 GR
  2 A$string$1092      08BA GR  |   2 A$string$1093      08BE GR
  2 A$string$1094      08C0 GR  |   2 A$string$1095      08C4 GR
  2 A$string$1096      08C8 GR  |   2 A$string$1098      08CB GR
  2 A$string$1099      08CE GR  |   2 A$string$110       0074 GR
  2 A$string$1100      08D2 GR  |   2 A$string$1102      08D6 GR
  2 A$string$1103      08D8 GR  |   2 A$string$1104      08DB GR
  2 A$string$1105      08DD GR  |   2 A$string$1106      08DF GR
  2 A$string$1107      08E1 GR  |   2 A$string$1108      08E3 GR
  2 A$string$1109      08E5 GR  |   2 A$string$111       0076 GR
  2 A$string$1110      08E7 GR  |   2 A$string$1111      08EA GR
  2 A$string$1113      08EC GR  |   2 A$string$1114      08EE GR
  2 A$string$1115      08F1 GR  |   2 A$string$1117      08F5 GR
  2 A$string$1118      08F8 GR  |   2 A$string$1119      08FC GR
  2 A$string$112       0078 GR  |   2 A$string$1120      08FE GR
  2 A$string$1121      0902 GR  |   2 A$string$1122      0906 GR
  2 A$string$1124      0909 GR  |   2 A$string$1125      090B GR
  2 A$string$1126      090F GR  |   2 A$string$1128      0913 GR
  2 A$string$1129      0915 GR  |   2 A$string$113       007A GR
  2 A$string$1130      0918 GR  |   2 A$string$1131      091A GR
  2 A$string$1132      091C GR  |   2 A$string$1133      091E GR
  2 A$string$1134      0920 GR  |   2 A$string$1135      0922 GR
  2 A$string$1136      0925 GR  |   2 A$string$1137      0929 GR
  2 A$string$1139      092C GR  |   2 A$string$114       007C GR
  2 A$string$1140      092E GR  |   2 A$string$1141      0932 GR
  2 A$string$1143      0936 GR  |   2 A$string$1144      093A GR
  2 A$string$1146      093E GR  |   2 A$string$1147      0940 GR
  2 A$string$1148      0942 GR  |   2 A$string$1149      0945 GR
  2 A$string$1151      0949 GR  |   2 A$string$1152      094C GR
  2 A$string$1153      0950 GR  |   2 A$string$1154      0952 GR
  2 A$string$1155      0956 GR  |   2 A$string$1156      095A GR
  2 A$string$1158      095D GR  |   2 A$string$1159      0960 GR
  2 A$string$116       007E GR  |   2 A$string$1160      0964 GR
  2 A$string$1162      0968 GR  |   2 A$string$1163      096A GR
  2 A$string$1164      096D GR  |   2 A$string$1165      096F GR
  2 A$string$1166      0971 GR  |   2 A$string$1167      0973 GR
  2 A$string$1168      0975 GR  |   2 A$string$1169      0977 GR
  2 A$string$117       0080 GR  |   2 A$string$1170      0979 GR
  2 A$string$1171      097C GR  |   2 A$string$1173      097E GR
  2 A$string$1174      0980 GR  |   2 A$string$1176      0984 GR
  2 A$string$1177      0987 GR  |   2 A$string$1178      098B GR
  2 A$string$1179      098F GR  |   2 A$string$118       0082 GR
  2 A$string$1181      0992 GR  |   2 A$string$1182      0994 GR
  2 A$string$1183      0997 GR  |   2 A$string$1184      0999 GR
  2 A$string$1185      099B GR  |   2 A$string$1186      099D GR
  2 A$string$1187      099F GR  |   2 A$string$1188      09A1 GR
  2 A$string$1189      09A5 GR  |   2 A$string$119       0084 GR
  2 A$string$1190      09A7 GR  |   2 A$string$1191      09A9 GR
  2 A$string$1193      09AD GR  |   2 A$string$1194      09B0 GR
  2 A$string$1195      09B4 GR  |   2 A$string$1196      09B7 GR
  2 A$string$1198      09BA GR  |   2 A$string$1199      09BC GR
  2 A$string$120       0086 GR  |   2 A$string$1200      09BF GR
  2 A$string$1201      09C1 GR  |   2 A$string$1202      09C3 GR
  2 A$string$1203      09C5 GR  |   2 A$string$1204      09C7 GR
  2 A$string$1205      09C9 GR  |   2 A$string$1207      09CC GR
  2 A$string$1208      09CE GR  |   2 A$string$1209      09D1 GR
  2 A$string$1210      09D3 GR  |   2 A$string$1211      09D5 GR
  2 A$string$1212      09D7 GR  |   2 A$string$1213      09D9 GR
  2 A$string$1214      09DB GR  |   2 A$string$1215      09DD GR
  2 A$string$1216      09E0 GR  |   2 A$string$1217      09E2 GR
  2 A$string$1218      09E4 GR  |   2 A$string$1219      09E6 GR
  2 A$string$122       0088 GR  |   2 A$string$1221      09EA GR
  2 A$string$1222      09EC GR  |   2 A$string$1223      09EF GR
  2 A$string$1224      09F3 GR  |   2 A$string$1225      09F7 GR
  2 A$string$1226      09FA GR  |   2 A$string$1227      09FC GR
  2 A$string$1229      09FF GR  |   2 A$string$123       008A GR
  2 A$string$1230      0A01 GR  |   2 A$string$1231      0A04 GR
  2 A$string$1232      0A06 GR  |   2 A$string$1233      0A08 GR
  2 A$string$1234      0A0A GR  |   2 A$string$1235      0A0C GR
  2 A$string$1236      0A0E GR  |   2 A$string$1237      0A10 GR
  2 A$string$1238      0A13 GR  |   2 A$string$1239      0A15 GR
  2 A$string$124       008C GR  |   2 A$string$1241      0A18 GR
  2 A$string$1242      0A1A GR  |   2 A$string$1243      0A1D GR
  2 A$string$1244      0A1F GR  |   2 A$string$1245      0A21 GR
  2 A$string$1246      0A23 GR  |   2 A$string$1247      0A25 GR
  2 A$string$1248      0A27 GR  |   2 A$string$1249      0A29 GR
  2 A$string$125       008E GR  |   2 A$string$1250      0A2C GR
  2 A$string$1251      0A2E GR  |   2 A$string$1252      0A30 GR
  2 A$string$1253      0A32 GR  |   2 A$string$1255      0A36 GR
  2 A$string$1256      0A38 GR  |   2 A$string$1257      0A3B GR
  2 A$string$1258      0A3F GR  |   2 A$string$1259      0A43 GR
  2 A$string$126       0090 GR  |   2 A$string$1260      0A46 GR
  2 A$string$1262      0A49 GR  |   2 A$string$1263      0A4B GR
  2 A$string$1264      0A4E GR  |   2 A$string$1265      0A50 GR
  2 A$string$1266      0A52 GR  |   2 A$string$1267      0A54 GR
  2 A$string$1268      0A56 GR  |   2 A$string$1269      0A58 GR
  2 A$string$1271      0A5B GR  |   2 A$string$1272      0A5D GR
  2 A$string$1273      0A60 GR  |   2 A$string$1274      0A62 GR
  2 A$string$1275      0A64 GR  |   2 A$string$1276      0A66 GR
  2 A$string$1277      0A68 GR  |   2 A$string$1278      0A6A GR
  2 A$string$1279      0A6C GR  |   2 A$string$128       0092 GR
  2 A$string$1280      0A6F GR  |   2 A$string$1281      0A71 GR
  2 A$string$1282      0A73 GR  |   2 A$string$1283      0A75 GR
  2 A$string$1285      0A79 GR  |   2 A$string$1286      0A7B GR
  2 A$string$1287      0A7E GR  |   2 A$string$1288      0A82 GR
  2 A$string$1289      0A86 GR  |   2 A$string$129       0095 GR
  2 A$string$1290      0A88 GR  |   2 A$string$1292      0A8B GR
  2 A$string$1293      0A8D GR  |   2 A$string$1294      0A91 GR
  2 A$string$1296      0A95 GR  |   2 A$string$1297      0A97 GR
  2 A$string$1298      0A9A GR  |   2 A$string$1299      0A9C GR
  2 A$string$130       0097 GR  |   2 A$string$1300      0A9E GR
  2 A$string$1301      0AA0 GR  |   2 A$string$1302      0AA2 GR
  2 A$string$1303      0AA4 GR  |   2 A$string$1304      0AA6 GR
  2 A$string$1305      0AA9 GR  |   2 A$string$1306      0AAB GR
  2 A$string$1307      0AAD GR  |   2 A$string$1308      0AAF GR
  2 A$string$131       0099 GR  |   2 A$string$1310      0AB3 GR
  2 A$string$1311      0AB5 GR  |   2 A$string$1312      0AB8 GR
  2 A$string$1313      0ABC GR  |   2 A$string$1314      0AC0 GR
  2 A$string$1315      0AC2 GR  |   2 A$string$1317      0AC5 GR
  2 A$string$1318      0AC8 GR  |   2 A$string$1319      0ACC GR
  2 A$string$132       009C GR  |   2 A$string$1321      0AD0 GR
  2 A$string$1322      0AD2 GR  |   2 A$string$1323      0AD5 GR
  2 A$string$1324      0AD7 GR  |   2 A$string$1325      0AD9 GR
  2 A$string$1326      0ADB GR  |   2 A$string$1327      0ADD GR
  2 A$string$1328      0ADF GR  |   2 A$string$1329      0AE2 GR
  2 A$string$133       009F GR  |   2 A$string$1330      0AE4 GR
  2 A$string$1331      0AE7 GR  |   2 A$string$1333      0AEA GR
  2 A$string$1334      0AEE GR  |   2 A$string$1336      0AF2 GR
  2 A$string$1337      0AF5 GR  |   2 A$string$1338      0AF8 GR
  2 A$string$1339      0AFA GR  |   2 A$string$134       00A2 GR
  2 A$string$1341      0AFD GR  |   2 A$string$1342      0B00 GR
  2 A$string$1343      0B04 GR  |   2 A$string$1344      0B06 GR
  2 A$string$1345      0B0A GR  |   2 A$string$1346      0B0E GR
  2 A$string$1348      0B11 GR  |   2 A$string$1349      0B15 GR
  2 A$string$135       00A4 GR  |   2 A$string$1351      0B19 GR
  2 A$string$1352      0B1C GR  |   2 A$string$1353      0B1F GR
  2 A$string$1354      0B21 GR  |   2 A$string$1356      0B24 GR
  2 A$string$1357      0B27 GR  |   2 A$string$1358      0B2B GR
  2 A$string$1359      0B2D GR  |   2 A$string$1360      0B31 GR
  2 A$string$1361      0B35 GR  |   2 A$string$1363      0B38 GR
  2 A$string$1364      0B3A GR  |   2 A$string$1365      0B3D GR
  2 A$string$1366      0B41 GR  |   2 A$string$1367      0B45 GR
  2 A$string$1368      0B48 GR  |   2 A$string$137       00A6 GR
  2 A$string$1370      0B4B GR  |   2 A$string$1371      0B4D GR
  2 A$string$1372      0B50 GR  |   2 A$string$1373      0B54 GR
  2 A$string$1374      0B58 GR  |   2 A$string$1375      0B5B GR
  2 A$string$1377      0B5E GR  |   2 A$string$1378      0B61 GR
  2 A$string$1379      0B65 GR  |   2 A$string$138       00A8 GR
  2 A$string$1380      0B69 GR  |   2 A$string$1382      0B6C GR
  2 A$string$1383      0B6E GR  |   2 A$string$1384      0B72 GR
  2 A$string$1385      0B76 GR  |   2 A$string$1387      0B79 GR
  2 A$string$1388      0B7B GR  |   2 A$string$1389      0B7F GR
  2 A$string$139       00AA GR  |   2 A$string$1390      0B83 GR
  2 A$string$1392      0B86 GR  |   2 A$string$1393      0B88 GR
  2 A$string$1394      0B8C GR  |   2 A$string$1395      0B90 GR
  2 A$string$1397      0B93 GR  |   2 A$string$1398      0B95 GR
  2 A$string$1399      0B99 GR  |   2 A$string$140       00AC GR
  2 A$string$1400      0B9D GR  |   2 A$string$1402      0BA0 GR
  2 A$string$1403      0BA2 GR  |   2 A$string$1404      0BA6 GR
  2 A$string$1405      0BAA GR  |   2 A$string$1407      0BAD GR
  2 A$string$1408      0BB1 GR  |   2 A$string$1409      0BB3 GR
  2 A$string$141       00AE GR  |   2 A$string$1410      0BB6 GR
  2 A$string$1411      0BB9 GR  |   2 A$string$1413      0BBC GR
  2 A$string$1414      0BC0 GR  |   2 A$string$1415      0BC2 GR
  2 A$string$1416      0BC5 GR  |   2 A$string$1417      0BC9 GR
  2 A$string$1418      0BCC GR  |   2 A$string$1420      0BCF GR
  2 A$string$1421      0BD2 GR  |   2 A$string$1422      0BD6 GR
  2 A$string$1423      0BD8 GR  |   2 A$string$1424      0BDB GR
  2 A$string$1425      0BDD GR  |   2 A$string$1426      0BDF GR
  2 A$string$1427      0BE1 GR  |   2 A$string$1428      0BE3 GR
  2 A$string$1429      0BE5 GR  |   2 A$string$143       00B0 GR
  2 A$string$1430      0BE7 GR  |   2 A$string$1431      0BEA GR
  2 A$string$1432      0BEC GR  |   2 A$string$1434      0BEF GR
  2 A$string$1435      0BF2 GR  |   2 A$string$1436      0BF6 GR
  2 A$string$1437      0BFA GR  |   2 A$string$1439      0BFD GR
  2 A$string$144       00B2 GR  |   2 A$string$1440      0C00 GR
  2 A$string$1441      0C04 GR  |   2 A$string$1442      0C08 GR
  2 A$string$1444      0C0B GR  |   2 A$string$1445      0C0D GR
  2 A$string$1446      0C10 GR  |   2 A$string$1447      0C12 GR
  2 A$string$1448      0C14 GR  |   2 A$string$1449      0C16 GR
  2 A$string$145       00B4 GR  |   2 A$string$1450      0C18 GR
  2 A$string$1451      0C1A GR  |   2 A$string$1452      0C1D GR
  2 A$string$1453      0C20 GR  |   2 A$string$1455      0C23 GR
  2 A$string$1456      0C25 GR  |   2 A$string$1457      0C28 GR
  2 A$string$1458      0C2A GR  |   2 A$string$1459      0C2C GR
  2 A$string$146       00B6 GR  |   2 A$string$1460      0C2E GR
  2 A$string$1461      0C30 GR  |   2 A$string$1462      0C32 GR
  2 A$string$1463      0C35 GR  |   2 A$string$1464      0C39 GR
  2 A$string$1465      0C3C GR  |   2 A$string$1468      0C3F GR
  2 A$string$1469      0C42 GR  |   2 A$string$147       00B8 GR
  2 A$string$1472      0C45 GR  |   2 A$string$1473      0C47 GR
  2 A$string$1474      0C49 GR  |   2 A$string$1475      0C4B GR
  2 A$string$1476      0C4D GR  |   2 A$string$1477      0C4F GR
  2 A$string$1478      0C52 GR  |   2 A$string$1479      0C55 GR
  2 A$string$148       00BC GR  |   2 A$string$1480      0C57 GR
  2 A$string$1481      0C5A GR  |   2 A$string$1484      0C5D GR
  2 A$string$1485      0C5F GR  |   2 A$string$1486      0C61 GR
  2 A$string$1487      0C63 GR  |   2 A$string$1488      0C65 GR
  2 A$string$1489      0C67 GR  |   2 A$string$149       00BE GR
  2 A$string$1490      0C6A GR  |   2 A$string$1491      0C6C GR
  2 A$string$1492      0C6F GR  |   2 A$string$1493      0C72 GR
  2 A$string$1494      0C75 GR  |   2 A$string$1495      0C78 GR
  2 A$string$1496      0C7A GR  |   2 A$string$1497      0C7C GR
  2 A$string$1498      0C7E GR  |   2 A$string$1499      0C80 GR
  2 A$string$150       00C1 GR  |   2 A$string$1500      0C84 GR
  2 A$string$1501      0C86 GR  |   2 A$string$1502      0C88 GR
  2 A$string$1503      0C8B GR  |   2 A$string$1505      0C8D GR
  2 A$string$1507      0C8F GR  |   2 A$string$1508      0C91 GR
  2 A$string$1509      0C95 GR  |   2 A$string$151       00C4 GR
  2 A$string$1510      0C97 GR  |   2 A$string$1511      0C99 GR
  2 A$string$1512      0C9D GR  |   2 A$string$1513      0C9F GR
  2 A$string$1514      0CA1 GR  |   2 A$string$1515      0CA3 GR
  2 A$string$1516      0CA5 GR  |   2 A$string$1517      0CA7 GR
  2 A$string$1518      0CAA GR  |   2 A$string$1519      0CAC GR
  2 A$string$1520      0CAE GR  |   2 A$string$1521      0CB0 GR
  2 A$string$1522      0CB2 GR  |   2 A$string$1524      0CB4 GR
  2 A$string$1525      0CB7 GR  |   2 A$string$1526      0CB9 GR
  2 A$string$1528      0CBC GR  |   2 A$string$1529      0CBE GR
  2 A$string$153       00C6 GR  |   2 A$string$1530      0CC0 GR
  2 A$string$1532      0CC2 GR  |   2 A$string$1533      0CC4 GR
  2 A$string$1534      0CC6 GR  |   2 A$string$1536      0CC8 GR
  2 A$string$1537      0CCA GR  |   2 A$string$1538      0CCC GR
  2 A$string$154       00C9 GR  |   2 A$string$1540      0CCE GR
  2 A$string$1541      0CD0 GR  |   2 A$string$1542      0CD2 GR
  2 A$string$1543      0CD4 GR  |   2 A$string$1546      0CD6 GR
  2 A$string$1547      0CD9 GR  |   2 A$string$1548      0CDC GR
  2 A$string$1549      0CDF GR  |   2 A$string$155       00CB GR
  2 A$string$1550      0CE2 GR  |   2 A$string$1551      0CE5 GR
  2 A$string$1552      0CE8 GR  |   2 A$string$1553      0CEB GR
  2 A$string$1554      0CEE GR  |   2 A$string$1557      0CEF GR
  2 A$string$1558      0CF2 GR  |   2 A$string$1559      0CF5 GR
  2 A$string$156       00CD GR  |   2 A$string$1560      0CF8 GR
  2 A$string$1561      0CFB GR  |   2 A$string$1562      0CFE GR
  2 A$string$1563      0D01 GR  |   2 A$string$1564      0D04 GR
  2 A$string$1565      0D07 GR  |   2 A$string$1568      0D08 GR
  2 A$string$1569      0D0A GR  |   2 A$string$157       00CF GR
  2 A$string$1570      0D0C GR  |   2 A$string$1571      0D0E GR
  2 A$string$1572      0D10 GR  |   2 A$string$1573      0D12 GR
  2 A$string$1574      0D14 GR  |   2 A$string$1575      0D16 GR
  2 A$string$1576      0D18 GR  |   2 A$string$1577      0D1C GR
  2 A$string$1578      0D1E GR  |   2 A$string$1579      0D20 GR
  2 A$string$158       00D1 GR  |   2 A$string$1580      0D23 GR
  2 A$string$1582      0D25 GR  |   2 A$string$1584      0D27 GR
  2 A$string$1585      0D29 GR  |   2 A$string$1586      0D2D GR
  2 A$string$1587      0D2F GR  |   2 A$string$1588      0D31 GR
  2 A$string$1589      0D35 GR  |   2 A$string$159       00D4 GR
  2 A$string$1590      0D37 GR  |   2 A$string$1591      0D39 GR
  2 A$string$1592      0D3B GR  |   2 A$string$1593      0D3D GR
  2 A$string$1594      0D3F GR  |   2 A$string$1595      0D42 GR
  2 A$string$1596      0D44 GR  |   2 A$string$1597      0D46 GR
  2 A$string$1598      0D48 GR  |   2 A$string$1599      0D4A GR
  2 A$string$1600      0D4C GR  |   2 A$string$1602      0D4E GR
  2 A$string$1603      0D50 GR  |   2 A$string$1604      0D52 GR
  2 A$string$1605      0D54 GR  |   2 A$string$1607      0D56 GR
  2 A$string$1608      0D58 GR  |   2 A$string$1609      0D5A GR
  2 A$string$161       00D6 GR  |   2 A$string$1611      0D5C GR
  2 A$string$1612      0D5E GR  |   2 A$string$1613      0D60 GR
  2 A$string$1614      0D62 GR  |   2 A$string$1616      0D64 GR
  2 A$string$1617      0D66 GR  |   2 A$string$1618      0D68 GR
  2 A$string$1619      0D6A GR  |   2 A$string$162       00DA GR
  2 A$string$1621      0D6C GR  |   2 A$string$1622      0D6F GR
  2 A$string$1623      0D71 GR  |   2 A$string$1624      0D73 GR
  2 A$string$1625      0D75 GR  |   2 A$string$1627      0D77 GR
  2 A$string$1628      0D79 GR  |   2 A$string$1629      0D7B GR
  2 A$string$163       00DC GR  |   2 A$string$1630      0D7D GR
  2 A$string$1631      0D7F GR  |   2 A$string$1632      0D81 GR
  2 A$string$1633      0D83 GR  |   2 A$string$1634      0D85 GR
  2 A$string$1635      0D87 GR  |   2 A$string$1636      0D89 GR
  2 A$string$1638      0D8B GR  |   2 A$string$164       00DE GR
  2 A$string$1640      0D8D GR  |   2 A$string$1641      0D8F GR
  2 A$string$1642      0D91 GR  |   2 A$string$1644      0D93 GR
  2 A$string$1645      0D96 GR  |   2 A$string$1646      0D98 GR
  2 A$string$1647      0D9A GR  |   2 A$string$1648      0D9C GR
  2 A$string$165       00E1 GR  |   2 A$string$1650      0D9E GR
  2 A$string$1651      0DA0 GR  |   2 A$string$1652      0DA2 GR
  2 A$string$1653      0DA4 GR  |   2 A$string$1654      0DA6 GR
  2 A$string$1655      0DA8 GR  |   2 A$string$1656      0DAA GR
  2 A$string$1658      0DAC GR  |   2 A$string$1659      0DAE GR
  2 A$string$166       00E4 GR  |   2 A$string$1660      0DB0 GR
  2 A$string$1662      0DB2 GR  |   2 A$string$1663      0DB4 GR
  2 A$string$1664      0DB6 GR  |   2 A$string$1666      0DB8 GR
  2 A$string$1667      0DBA GR  |   2 A$string$1668      0DBC GR
  2 A$string$1669      0DBE GR  |   2 A$string$167       00E6 GR
  2 A$string$169       00E9 GR  |   2 A$string$170       00EB GR
  2 A$string$171       00ED GR  |   2 A$string$174       00F0 GR
  2 A$string$175       00F3 GR  |   2 A$string$176       00F6 GR
  2 A$string$179       00F9 GR  |   2 A$string$180       00FB GR
  2 A$string$181       00FD GR  |   2 A$string$182       00FF GR
  2 A$string$183       0101 GR  |   2 A$string$184       0103 GR
  2 A$string$185       0105 GR  |   2 A$string$186       0107 GR
  2 A$string$187       0109 GR  |   2 A$string$188       010D GR
  2 A$string$189       010F GR  |   2 A$string$190       0111 GR
  2 A$string$191       0114 GR  |   2 A$string$193       0116 GR
  2 A$string$195       0118 GR  |   2 A$string$196       011A GR
  2 A$string$197       011E GR  |   2 A$string$198       0120 GR
  2 A$string$199       0122 GR  |   2 A$string$200       0126 GR
  2 A$string$201       0128 GR  |   2 A$string$202       012A GR
  2 A$string$203       012C GR  |   2 A$string$204       012E GR
  2 A$string$205       0130 GR  |   2 A$string$206       0133 GR
  2 A$string$207       0135 GR  |   2 A$string$208       0137 GR
  2 A$string$209       0139 GR  |   2 A$string$210       013B GR
  2 A$string$211       013D GR  |   2 A$string$213       013F GR
  2 A$string$214       0141 GR  |   2 A$string$215       0143 GR
  2 A$string$216       0145 GR  |   2 A$string$218       0147 GR
  2 A$string$219       0149 GR  |   2 A$string$220       014B GR
  2 A$string$222       014D GR  |   2 A$string$223       014F GR
  2 A$string$224       0151 GR  |   2 A$string$225       0153 GR
  2 A$string$227       0155 GR  |   2 A$string$228       0157 GR
  2 A$string$229       0159 GR  |   2 A$string$231       015B GR
  2 A$string$232       015D GR  |   2 A$string$233       015F GR
  2 A$string$234       0162 GR  |   2 A$string$235       0164 GR
  2 A$string$238       0166 GR  |   2 A$string$239       0168 GR
  2 A$string$240       016A GR  |   2 A$string$241       016C GR
  2 A$string$242       016F GR  |   2 A$string$243       0172 GR
  2 A$string$244       0175 GR  |   2 A$string$245       0177 GR
  2 A$string$246       0179 GR  |   2 A$string$247       017B GR
  2 A$string$248       017D GR  |   2 A$string$249       017F GR
  2 A$string$250       0181 GR  |   2 A$string$251       0183 GR
  2 A$string$252       0187 GR  |   2 A$string$253       0189 GR
  2 A$string$254       018B GR  |   2 A$string$255       018E GR
  2 A$string$257       0190 GR  |   2 A$string$259       0192 GR
  2 A$string$260       0194 GR  |   2 A$string$261       0198 GR
  2 A$string$262       019A GR  |   2 A$string$263       019C GR
  2 A$string$264       01A0 GR  |   2 A$string$265       01A2 GR
  2 A$string$266       01A4 GR  |   2 A$string$267       01A6 GR
  2 A$string$268       01A8 GR  |   2 A$string$269       01AA GR
  2 A$string$270       01AD GR  |   2 A$string$271       01AF GR
  2 A$string$272       01B1 GR  |   2 A$string$273       01B3 GR
  2 A$string$274       01B5 GR  |   2 A$string$275       01B7 GR
  2 A$string$277       01B9 GR  |   2 A$string$278       01BB GR
  2 A$string$279       01BD GR  |   2 A$string$280       01BF GR
  2 A$string$282       01C1 GR  |   2 A$string$283       01C3 GR
  2 A$string$284       01C5 GR  |   2 A$string$286       01C7 GR
  2 A$string$287       01C9 GR  |   2 A$string$288       01CB GR
  2 A$string$289       01CD GR  |   2 A$string$291       01CF GR
  2 A$string$292       01D1 GR  |   2 A$string$293       01D3 GR
  2 A$string$295       01D5 GR  |   2 A$string$296       01D7 GR
  2 A$string$297       01D9 GR  |   2 A$string$298       01DC GR
  2 A$string$299       01DE GR  |   2 A$string$302       01E0 GR
  2 A$string$303       01E2 GR  |   2 A$string$304       01E4 GR
  2 A$string$305       01E7 GR  |   2 A$string$306       01E9 GR
  2 A$string$307       01EC GR  |   2 A$string$308       01F0 GR
  2 A$string$309       01F3 GR  |   2 A$string$310       01F6 GR
  2 A$string$312       01F8 GR  |   2 A$string$313       01FB GR
  2 A$string$314       01FF GR  |   2 A$string$316       0201 GR
  2 A$string$317       0204 GR  |   2 A$string$318       0206 GR
  2 A$string$319       020A GR  |   2 A$string$320       020C GR
  2 A$string$321       020F GR  |   2 A$string$323       0211 GR
  2 A$string$324       0213 GR  |   2 A$string$325       0215 GR
  2 A$string$326       0217 GR  |   2 A$string$327       021B GR
  2 A$string$329       021F GR  |   2 A$string$331       0221 GR
  2 A$string$332       0224 GR  |   2 A$string$333       0228 GR
  2 A$string$334       022C GR  |   2 A$string$335       022E GR
  2 A$string$336       0231 GR  |   2 A$string$338       0233 GR
  2 A$string$339       0236 GR  |   2 A$string$340       0238 GR
  2 A$string$341       023C GR  |   2 A$string$342       023E GR
  2 A$string$343       0241 GR  |   2 A$string$345       0243 GR
  2 A$string$346       0246 GR  |   2 A$string$347       0248 GR
  2 A$string$348       024C GR  |   2 A$string$349       024E GR
  2 A$string$350       0251 GR  |   2 A$string$352       0253 GR
  2 A$string$353       0255 GR  |   2 A$string$354       0257 GR
  2 A$string$355       0259 GR  |   2 A$string$356       025B GR
  2 A$string$358       025F GR  |   2 A$string$360       0261 GR
  2 A$string$361       0263 GR  |   2 A$string$362       0265 GR
  2 A$string$363       0268 GR  |   2 A$string$364       026C GR
  2 A$string$365       0270 GR  |   2 A$string$366       0273 GR
  2 A$string$367       0276 GR  |   2 A$string$369       0278 GR
  2 A$string$370       027B GR  |   2 A$string$371       027F GR
  2 A$string$373       0281 GR  |   2 A$string$374       0284 GR
  2 A$string$375       0286 GR  |   2 A$string$376       0289 GR
  2 A$string$377       028B GR  |   2 A$string$378       028E GR
  2 A$string$380       0290 GR  |   2 A$string$381       0292 GR
  2 A$string$382       0294 GR  |   2 A$string$383       0296 GR
  2 A$string$384       0298 GR  |   2 A$string$386       029C GR
  2 A$string$388       029E GR  |   2 A$string$389       02A1 GR
  2 A$string$390       02A3 GR  |   2 A$string$391       02A6 GR
  2 A$string$392       02A8 GR  |   2 A$string$393       02AB GR
  2 A$string$395       02AD GR  |   2 A$string$396       02B0 GR
  2 A$string$397       02B2 GR  |   2 A$string$398       02B5 GR
  2 A$string$399       02B7 GR  |   2 A$string$400       02BA GR
  2 A$string$402       02BC GR  |   2 A$string$403       02BF GR
  2 A$string$404       02C1 GR  |   2 A$string$405       02C3 GR
  2 A$string$406       02C5 GR  |   2 A$string$407       02C8 GR
  2 A$string$409       02CA GR  |   2 A$string$410       02CC GR
  2 A$string$411       02CE GR  |   2 A$string$412       02D0 GR
  2 A$string$413       02D2 GR  |   2 A$string$415       02D6 GR
  2 A$string$416       02D8 GR  |   2 A$string$417       02DA GR
  2 A$string$418       02DC GR  |   2 A$string$419       02DE GR
  2 A$string$42        0000 GR  |   2 A$string$420       02E0 GR
  2 A$string$421       02E2 GR  |   2 A$string$422       02E4 GR
  2 A$string$423       02E6 GR  |   2 A$string$425       02E8 GR
  2 A$string$426       02EB GR  |   2 A$string$427       02ED GR
  2 A$string$428       02F0 GR  |   2 A$string$429       02F2 GR
  2 A$string$43        0002 GR  |   2 A$string$430       02F5 GR
  2 A$string$431       02F7 GR  |   2 A$string$433       02F9 GR
  2 A$string$434       02FD GR  |   2 A$string$436       0300 GR
  2 A$string$437       0303 GR  |   2 A$string$438       0305 GR
  2 A$string$439       0309 GR  |   2 A$string$44        0004 GR
  2 A$string$440       030C GR  |   2 A$string$441       030F GR
  2 A$string$442       0311 GR  |   2 A$string$444       0314 GR
  2 A$string$445       0317 GR  |   2 A$string$446       031B GR
  2 A$string$447       031F GR  |   2 A$string$448       0321 GR
  2 A$string$449       0324 GR  |   2 A$string$45        0006 GR
  2 A$string$450       0326 GR  |   2 A$string$452       0329 GR
  2 A$string$453       032D GR  |   2 A$string$455       0330 GR
  2 A$string$456       0334 GR  |   2 A$string$457       0337 GR
  2 A$string$458       033A GR  |   2 A$string$459       033C GR
  2 A$string$461       033F GR  |   2 A$string$462       0342 GR
  2 A$string$463       0345 GR  |   2 A$string$464       0347 GR
  2 A$string$466       034A GR  |   2 A$string$467       034C GR
  2 A$string$468       0350 GR  |   2 A$string$469       0354 GR
  2 A$string$47        0008 GR  |   2 A$string$470       0357 GR
  2 A$string$471       0359 GR  |   2 A$string$473       035C GR
  2 A$string$474       035F GR  |   2 A$string$475       0361 GR
  2 A$string$476       0363 GR  |   2 A$string$477       0365 GR
  2 A$string$479       0368 GR  |   2 A$string$48        000A GR
  2 A$string$480       036A GR  |   2 A$string$481       036E GR
  2 A$string$482       0372 GR  |   2 A$string$483       0375 GR
  2 A$string$484       0377 GR  |   2 A$string$486       037A GR
  2 A$string$487       037C GR  |   2 A$string$488       0380 GR
  2 A$string$489       0384 GR  |   2 A$string$49        000C GR
  2 A$string$490       0387 GR  |   2 A$string$491       0389 GR
  2 A$string$494       038C GR  |   2 A$string$495       038E GR
  2 A$string$496       0391 GR  |   2 A$string$497       0393 GR
  2 A$string$498       0395 GR  |   2 A$string$499       0398 GR
  2 A$string$50        000E GR  |   2 A$string$500       039A GR
  2 A$string$503       039C GR  |   2 A$string$504       039E GR
  2 A$string$505       03A1 GR  |   2 A$string$506       03A2 GR
  2 A$string$507       03A4 GR  |   2 A$string$508       03A7 GR
  2 A$string$509       03AA GR  |   2 A$string$51        0010 GR
  2 A$string$510       03AD GR  |   2 A$string$511       03AF GR
  2 A$string$512       03B1 GR  |   2 A$string$513       03B3 GR
  2 A$string$514       03B5 GR  |   2 A$string$515       03B8 GR
  2 A$string$516       03BB GR  |   2 A$string$517       03BE GR
  2 A$string$518       03BF GR  |   2 A$string$519       03C2 GR
  2 A$string$52        0012 GR  |   2 A$string$520       03C4 GR
  2 A$string$521       03C7 GR  |   2 A$string$522       03C9 GR
  2 A$string$525       03CA GR  |   2 A$string$526       03CC GR
  2 A$string$527       03CE GR  |   2 A$string$528       03D0 GR
  2 A$string$529       03D3 GR  |   2 A$string$530       03D4 GR
  2 A$string$531       03D6 GR  |   2 A$string$532       03D9 GR
  2 A$string$533       03DC GR  |   2 A$string$534       03DF GR
  2 A$string$535       03E1 GR  |   2 A$string$536       03E3 GR
  2 A$string$537       03E5 GR  |   2 A$string$538       03E7 GR
  2 A$string$539       03EA GR  |   2 A$string$54        0014 GR
  2 A$string$540       03ED GR  |   2 A$string$541       03F0 GR
  2 A$string$542       03F1 GR  |   2 A$string$543       03F4 GR
  2 A$string$544       03F6 GR  |   2 A$string$545       03F8 GR
  2 A$string$546       03FB GR  |   2 A$string$547       03FD GR
  2 A$string$548       03FE GR  |   2 A$string$549       0400 GR
  2 A$string$55        0016 GR  |   2 A$string$550       0402 GR
  2 A$string$551       0403 GR  |   2 A$string$552       0405 GR
  2 A$string$553       0408 GR  |   2 A$string$554       040A GR
  2 A$string$556       040C GR  |   2 A$string$557       040E GR
  2 A$string$56        0018 GR  |   2 A$string$560       040F GR
  2 A$string$561       0411 GR  |   2 A$string$562       0413 GR
  2 A$string$563       0415 GR  |   2 A$string$564       0419 GR
  2 A$string$565       041B GR  |   2 A$string$566       041D GR
  2 A$string$567       041F GR  |   2 A$string$568       0422 GR
  2 A$string$569       0424 GR  |   2 A$string$570       0427 GR
  2 A$string$571       042A GR  |   2 A$string$572       042C GR
  2 A$string$573       042E GR  |   2 A$string$574       0430 GR
  2 A$string$575       0433 GR  |   2 A$string$576       0435 GR
  2 A$string$577       0437 GR  |   2 A$string$578       043B GR
  2 A$string$580       043D GR  |   2 A$string$582       0440 GR
  2 A$string$583       0442 GR  |   2 A$string$584       0446 GR
  2 A$string$585       0448 GR  |   2 A$string$586       044A GR
  2 A$string$587       044E GR  |   2 A$string$588       0450 GR
  2 A$string$589       0452 GR  |   2 A$string$59        001A GR
  2 A$string$590       0454 GR  |   2 A$string$591       0456 GR
  2 A$string$592       0458 GR  |   2 A$string$593       045B GR
  2 A$string$594       045D GR  |   2 A$string$595       045F GR
  2 A$string$596       0461 GR  |   2 A$string$597       0463 GR
  2 A$string$599       0465 GR  |   2 A$string$60        001C GR
  2 A$string$600       0468 GR  |   2 A$string$601       046A GR
  2 A$string$603       046D GR  |   2 A$string$604       046F GR
  2 A$string$605       0471 GR  |   2 A$string$607       0473 GR
  2 A$string$608       0475 GR  |   2 A$string$609       0477 GR
  2 A$string$61        001E GR  |   2 A$string$611       0479 GR
  2 A$string$612       047B GR  |   2 A$string$613       047D GR
  2 A$string$615       047F GR  |   2 A$string$616       0481 GR
  2 A$string$617       0483 GR  |   2 A$string$618       0485 GR
  2 A$string$62        0021 GR  |   2 A$string$621       0487 GR
  2 A$string$622       0489 GR  |   2 A$string$623       048B GR
  2 A$string$624       048E GR  |   2 A$string$625       0491 GR
  2 A$string$626       0493 GR  |   2 A$string$627       0495 GR
  2 A$string$628       0497 GR  |   2 A$string$629       049B GR
  2 A$string$63        0023 GR  |   2 A$string$630       049F GR
  2 A$string$632       04A3 GR  |   2 A$string$633       04A6 GR
  2 A$string$634       04A8 GR  |   2 A$string$636       04AB GR
  2 A$string$637       04AE GR  |   2 A$string$638       04B2 GR
  2 A$string$639       04B6 GR  |   2 A$string$64        0025 GR
  2 A$string$641       04BA GR  |   2 A$string$642       04BC GR
  2 A$string$643       04BF GR  |   2 A$string$644       04C3 GR
  2 A$string$645       04C7 GR  |   2 A$string$646       04CA GR
  2 A$string$647       04CC GR  |   2 A$string$648       04CE GR
  2 A$string$649       04D0 GR  |   2 A$string$65        0026 GR
  2 A$string$650       04D3 GR  |   2 A$string$652       04D7 GR
  2 A$string$653       04D9 GR  |   2 A$string$654       04DC GR
  2 A$string$655       04DE GR  |   2 A$string$656       04E0 GR
  2 A$string$657       04E2 GR  |   2 A$string$658       04E4 GR
  2 A$string$659       04E6 GR  |   2 A$string$66        0027 GR
  2 A$string$660       04E8 GR  |   2 A$string$661       04EB GR
  2 A$string$663       04ED GR  |   2 A$string$664       04EF GR
  2 A$string$665       04F2 GR  |   2 A$string$667       04F6 GR
  2 A$string$668       04F9 GR  |   2 A$string$67        0028 GR
  2 A$string$670       04FD GR  |   2 A$string$671       04FF GR
  2 A$string$672       0502 GR  |   2 A$string$674       0506 GR
  2 A$string$675       0509 GR  |   2 A$string$677       050D GR
  2 A$string$678       050F GR  |   2 A$string$679       0511 GR
  2 A$string$68        002A GR  |   2 A$string$681       0515 GR
  2 A$string$682       0517 GR  |   2 A$string$684       0519 GR
  2 A$string$685       051B GR  |   2 A$string$686       051D GR
  2 A$string$687       0520 GR  |   2 A$string$688       0524 GR
  2 A$string$69        002C GR  |   2 A$string$690       0528 GR
  2 A$string$691       052A GR  |   2 A$string$692       052E GR
  2 A$string$694       0532 GR  |   2 A$string$695       0534 GR
  2 A$string$696       0537 GR  |   2 A$string$697       0539 GR
  2 A$string$698       053B GR  |   2 A$string$699       053D GR
  2 A$string$70        0030 GR  |   2 A$string$700       053F GR
  2 A$string$701       0541 GR  |   2 A$string$702       0544 GR
  2 A$string$703       0548 GR  |   2 A$string$704       054B GR
  2 A$string$705       054D GR  |   2 A$string$706       0551 GR
  2 A$string$708       0555 GR  |   2 A$string$709       0557 GR
  2 A$string$71        0033 GR  |   2 A$string$710       055A GR
  2 A$string$711       055C GR  |   2 A$string$712       055E GR
  2 A$string$713       0560 GR  |   2 A$string$714       0562 GR
  2 A$string$715       0564 GR  |   2 A$string$716       0566 GR
  2 A$string$717       0569 GR  |   2 A$string$719       056D GR
  2 A$string$72        0036 GR  |   2 A$string$720       056F GR
  2 A$string$721       0572 GR  |   2 A$string$722       0574 GR
  2 A$string$723       0576 GR  |   2 A$string$724       0578 GR
  2 A$string$725       057A GR  |   2 A$string$726       057C GR
  2 A$string$727       057E GR  |   2 A$string$728       0581 GR
  2 A$string$730       0583 GR  |   2 A$string$731       0585 GR
  2 A$string$732       0587 GR  |   2 A$string$734       058B GR
  2 A$string$736       058D GR  |   2 A$string$737       058F GR
  2 A$string$738       0593 GR  |   2 A$string$739       0597 GR
  2 A$string$74        0038 GR  |   2 A$string$741       059B GR
  2 A$string$742       059D GR  |   2 A$string$743       05A0 GR
  2 A$string$745       05A4 GR  |   2 A$string$746       05A6 GR
  2 A$string$747       05A9 GR  |   2 A$string$748       05AB GR
  2 A$string$749       05AD GR  |   2 A$string$750       05AF GR
  2 A$string$751       05B1 GR  |   2 A$string$752       05B3 GR
  2 A$string$753       05B5 GR  |   2 A$string$754       05B8 GR
  2 A$string$755       05BA GR  |   2 A$string$756       05BC GR
  2 A$string$757       05BF GR  |   2 A$string$759       05C3 GR
  2 A$string$760       05C5 GR  |   2 A$string$761       05C8 GR
  2 A$string$762       05CA GR  |   2 A$string$763       05CC GR
  2 A$string$764       05CE GR  |   2 A$string$765       05D0 GR
  2 A$string$766       05D2 GR  |   2 A$string$767       05D4 GR
  2 A$string$768       05D7 GR  |   2 A$string$77        003A GR
  2 A$string$770       05D9 GR  |   2 A$string$771       05DB GR
  2 A$string$772       05DE GR  |   2 A$string$773       05E2 GR
  2 A$string$775       05E6 GR  |   2 A$string$776       05E8 GR
  2 A$string$777       05EA GR  |   2 A$string$779       05EE GR
  2 A$string$78        003C GR  |   2 A$string$780       05F0 GR
  2 A$string$782       05F2 GR  |   2 A$string$783       05F4 GR
  2 A$string$784       05F6 GR  |   2 A$string$785       05F9 GR
  2 A$string$786       05FD GR  |   2 A$string$788       0601 GR
  2 A$string$789       0603 GR  |   2 A$string$79        003E GR
  2 A$string$790       0607 GR  |   2 A$string$792       060B GR
  2 A$string$793       060D GR  |   2 A$string$794       0610 GR
  2 A$string$795       0612 GR  |   2 A$string$796       0614 GR
  2 A$string$797       0616 GR  |   2 A$string$798       0618 GR
  2 A$string$799       061A GR  |   2 A$string$80        0040 GR
  2 A$string$800       061D GR  |   2 A$string$801       0621 GR
  2 A$string$802       0624 GR  |   2 A$string$803       0626 GR
  2 A$string$804       062A GR  |   2 A$string$806       062E GR
  2 A$string$807       0630 GR  |   2 A$string$808       0633 GR
  2 A$string$809       0635 GR  |   2 A$string$81        0042 GR
  2 A$string$810       0637 GR  |   2 A$string$811       0639 GR
  2 A$string$812       063B GR  |   2 A$string$813       063D GR
  2 A$string$814       063F GR  |   2 A$string$815       0642 GR
  2 A$string$817       0646 GR  |   2 A$string$818       0648 GR
  2 A$string$819       064B GR  |   2 A$string$820       064D GR
  2 A$string$821       064F GR  |   2 A$string$822       0651 GR
  2 A$string$823       0653 GR  |   2 A$string$824       0655 GR
  2 A$string$825       0657 GR  |   2 A$string$826       065A GR
  2 A$string$828       065C GR  |   2 A$string$829       065E GR
  2 A$string$83        0044 GR  |   2 A$string$830       0660 GR
  2 A$string$832       0664 GR  |   2 A$string$834       0666 GR
  2 A$string$835       0668 GR  |   2 A$string$836       066C GR
  2 A$string$837       0670 GR  |   2 A$string$839       0674 GR
  2 A$string$840       0676 GR  |   2 A$string$842       067A GR
  2 A$string$843       067C GR  |   2 A$string$844       067F GR
  2 A$string$845       0681 GR  |   2 A$string$846       0683 GR
  2 A$string$847       0685 GR  |   2 A$string$848       0687 GR
  2 A$string$849       0689 GR  |   2 A$string$85        0046 GR
  2 A$string$850       068B GR  |   2 A$string$851       068E GR
  2 A$string$852       0690 GR  |   2 A$string$853       0692 GR
  2 A$string$855       0696 GR  |   2 A$string$856       0698 GR
  2 A$string$857       069B GR  |   2 A$string$858       069D GR
  2 A$string$859       069F GR  |   2 A$string$86        0048 GR
  2 A$string$860       06A1 GR  |   2 A$string$861       06A3 GR
  2 A$string$862       06A5 GR  |   2 A$string$863       06A7 GR
  2 A$string$864       06AA GR  |   2 A$string$866       06AC GR
  2 A$string$867       06AE GR  |   2 A$string$868       06B2 GR
  2 A$string$869       06B5 GR  |   2 A$string$87        004A GR
  2 A$string$870       06B9 GR  |   2 A$string$871       06BD GR
  2 A$string$872       06BF GR  |   2 A$string$873       06C1 GR
  2 A$string$875       06C5 GR  |   2 A$string$876       06C7 GR
  2 A$string$878       06C9 GR  |   2 A$string$879       06CB GR
  2 A$string$88        004C GR  |   2 A$string$880       06CD GR
  2 A$string$881       06CF GR  |   2 A$string$882       06D2 GR
  2 A$string$883       06D6 GR  |   2 A$string$885       06DA GR
  2 A$string$886       06DC GR  |   2 A$string$887       06DF GR
  2 A$string$888       06E1 GR  |   2 A$string$889       06E3 GR
  2 A$string$89        004E GR  |   2 A$string$890       06E5 GR
  2 A$string$891       06E7 GR  |   2 A$string$892       06E9 GR
  2 A$string$893       06EC GR  |   2 A$string$894       06F0 GR
  2 A$string$896       06F3 GR  |   2 A$string$897       06F5 GR
  2 A$string$898       06F9 GR  |   2 A$string$899       06FC GR
  2 A$string$90        0050 GR  |   2 A$string$900       0700 GR
  2 A$string$901       0704 GR  |   2 A$string$903       0706 GR
  2 A$string$904       0708 GR  |   2 A$string$905       070C GR
  2 A$string$906       070F GR  |   2 A$string$907       0713 GR
  2 A$string$908       0717 GR  |   2 A$string$909       0719 GR
  2 A$string$91        0052 GR  |   2 A$string$910       071B GR
  2 A$string$912       071F GR  |   2 A$string$914       0721 GR
  2 A$string$915       0723 GR  |   2 A$string$916       0725 GR
  2 A$string$917       0727 GR  |   2 A$string$918       072A GR
  2 A$string$92        0054 GR  |   2 A$string$920       072E GR
  2 A$string$921       0730 GR  |   2 A$string$922       0733 GR
  2 A$string$923       0735 GR  |   2 A$string$924       0737 GR
  2 A$string$925       0739 GR  |   2 A$string$926       073B GR
  2 A$string$927       073D GR  |   2 A$string$928       073F GR
  2 A$string$929       0742 GR  |   2 A$string$931       0744 GR
  2 A$string$932       0746 GR  |   2 A$string$933       074A GR
  2 A$string$934       074D GR  |   2 A$string$935       0751 GR
  2 A$string$937       0755 GR  |   2 A$string$938       0757 GR
  2 A$string$939       075B GR  |   2 A$string$94        0056 GR
  2 A$string$940       075E GR  |   2 A$string$941       0762 GR
  2 A$string$942       0766 GR  |   2 A$string$943       0768 GR
  2 A$string$944       076A GR  |   2 A$string$946       076E GR
  2 A$string$947       0770 GR  |   2 A$string$949       0772 GR
  2 A$string$95        0058 GR  |   2 A$string$950       0774 GR
  2 A$string$951       0776 GR  |   2 A$string$952       0778 GR
  2 A$string$953       077B GR  |   2 A$string$954       077F GR
  2 A$string$956       0783 GR  |   2 A$string$957       0785 GR
  2 A$string$958       0788 GR  |   2 A$string$959       078A GR
  2 A$string$960       078C GR  |   2 A$string$961       078E GR
  2 A$string$962       0790 GR  |   2 A$string$963       0792 GR
  2 A$string$964       0795 GR  |   2 A$string$966       0798 GR
  2 A$string$967       079B GR  |   2 A$string$968       079F GR
  2 A$string$969       07A2 GR  |   2 A$string$970       07A6 GR
  2 A$string$971       07AA GR  |   2 A$string$973       07AC GR
  2 A$string$974       07AF GR  |   2 A$string$975       07B3 GR
  2 A$string$976       07B5 GR  |   2 A$string$977       07B9 GR
  2 A$string$978       07BD GR  |   2 A$string$979       07BF GR
  2 A$string$98        005A GR  |   2 A$string$980       07C1 GR
  2 A$string$982       07C5 GR  |   2 A$string$983       07C7 GR
  2 A$string$984       07C8 GR  |   2 A$string$985       07CA GR
  2 A$string$986       07CC GR  |   2 A$string$987       07CE GR
  2 A$string$988       07D0 GR  |   2 A$string$99        005C GR
  2 A$string$990       07D2 GR  |   2 A$string$991       07D5 GR
  2 A$string$992       07D9 GR  |   2 A$string$994       07DD GR
  2 A$string$995       07DF GR  |   2 A$string$996       07E2 GR
  2 A$string$997       07E4 GR  |   2 A$string$998       07E6 GR
  2 A$string$999       07E8 GR  |   2 L100               0440 R
  2 L101               0473 R   |   2 L102               046D R
  2 L103               047F R   |   2 L104               0479 R
  2 L108               043D R   |   2 L110               0AD0 R
  2 L112               04AB R   |   2 L113               04BA R
  2 L115               07EE R   |   2 L117               0800 R
  2 L119               04ED R   |   2 L12                0056 R
  2 L121               04FD R   |   2 L123               050D R
  2 L125               0515 R   |   2 L126               0519 R
  2 L127               0528 R   |   2 L129               089A R
  2 L13                0046 R   |   2 L130               0532 R
  2 L132               0555 R   |   2 L135               0583 R
  2 L137               058B R   |   2 L138               058D R
  2 L139               059B R   |   2 L141               08EC R
  2 L143               05D9 R   |   2 L145               05E6 R
  2 L147               05EE R   |   2 L148               05F2 R
  2 L149               0601 R   |   2 L151               092C R
  2 L152               060B R   |   2 L154               062E R
  2 L157               065C R   |   2 L159               0664 R
  2 L16                0044 R   |   2 L160               0666 R
  2 L161               0674 R   |   2 L163               097E R
  2 L165               06AC R   |   2 L169               06C5 R
  2 L170               06C9 R   |   2 L173               06F3 R
  2 L174               0C23 R   |   2 L176               0A49 R
  2 L178               0706 R   |   2 L18                00B0 R
  2 L181               071F R   |   2 L182               0721 R
  2 L185               0744 R   |   2 L187               0755 R
  2 L19                0074 R   |   2 L191               076E R
  2 L192               0772 R   |   2 L195               0798 R
  2 L196               0C0B R   |   2 L198               09BA R
  2 L2                 0014 R   |   2 L200               07AC R
  2 L203               07C5 R   |   2 L205               04A3 R
  2 L206               07DD R   |   2 L207               04D7 R
  2 L208               0809 R   |   2 L209               0828 R
  2 L21                00A6 R   |   2 L210               0847 R
  2 L211               0881 R   |   2 L212               0B19 R
  2 L213               08AC R   |   2 L214               056D R
  2 L215               08D6 R   |   2 L216               05A4 R
  2 L217               05C3 R   |   2 L218               0A95 R
  2 L219               0913 R   |   2 L22                007E R
  2 L220               0AF2 R   |   2 L221               093E R
  2 L222               0646 R   |   2 L223               0968 R
  2 L224               067A R   |   2 L225               0696 R
  2 L226               0A5B R   |   2 L227               06DA R
  2 L230               0A18 R   |   2 L231               072E R
  2 L233               09FF R   |   2 L234               09CC R
  2 L235               0783 R   |   2 L238               0992 R
  2 L239               0BBC R   |   2 L24                0088 R
  2 L240               0BCF R   |   2 L241               0BAD R
  2 L242               0AC5 R   |   2 L243               07D2 R
  2 L244               07F9 R   |   2 L245               0B79 R
  2 L246               0BA0 R   |   2 L247               0865 R
  2 L248               0877 R   |   2 L249               0B11 R
  2 L25                00C6 R   |   2 L250               08A4 R
  2 L251               08B7 R   |   2 L252               0B4B R
  2 L253               08CB R   |   2 L254               0AFD R
  2 L255               08F5 R   |   2 L256               0A8B R
  2 L257               0AB3 R   |   2 L258               0909 R
  2 L259               0AEA R   |   2 L26                0092 R
  2 L260               0936 R   |   2 L261               0949 R
  2 L262               0B38 R   |   2 L263               095D R
  2 L264               0B5E R   |   2 L265               0984 R
  2 L266               0A79 R   |   2 L267               0A36 R
  2 L268               09EA R   |   2 L269               09AD R
  2 L270               0B93 R   |   2 L271               0B24 R
  2 L272               04F6 R   |   2 L273               0506 R
  2 L274               0B86 R   |   2 L275               0B6C R
  2 L276               0BFD R   |   2 L277               0BEF R
  2 L28                00E9 R   |   2 L284               0CB4 R
  2 L285               0C8F R   |   2 L286               0CC2 R
  2 L287               0CBC R   |   2 L288               0CCE R
  2 L289               0CC8 R   |   2 L29                00D6 R
  2 L293               0C8D R   |   2 L3                 0008 R
  2 L300               0D4E R   |   2 L301               0D27 R
  2 L302               0D5C R   |   2 L303               0D56 R
  2 L304               0D6C R   |   2 L307               0D77 R
  2 L310               0DAC R   |   2 L311               0D9E R
  2 L312               0DB8 R   |   2 L313               0DB2 R
  2 L315               0D8B R   |   2 L316               0D64 R
  2 L323               0D8D R   |   2 L324               0D25 R
  2 L325               0D93 R   |   2 L34                013F R
  2 L35                0118 R   |   2 L36                014D R
  2 L37                0147 R   |   2 L38                015B R
  2 L39                0155 R   |   2 L43                0116 R
  2 L46                01B9 R   |   2 L47                0192 R
  2 L48                01C7 R   |   2 L49                01C1 R
  2 L50                01D5 R   |   2 L51                01CF R
  2 L55                0190 R   |   2 L57                0330 R
  2 L58                01F8 R   |   2 L59                0329 R
  2 L60                0201 R   |   2 L61                0211 R
  2 L62                021F R   |   2 L63                0221 R
  2 L64                0314 R   |   2 L65                0233 R
  2 L66                0243 R   |   2 L67                0253 R
  2 L68                0261 R   |   2 L69                025F R
  2 L70                0300 R   |   2 L71                0278 R
  2 L73                02F9 R   |   2 L74                0281 R
  2 L75                0290 R   |   2 L76                029E R
  2 L77                029C R   |   2 L78                02E8 R
  2 L79                02AD R   |   2 L80                02BC R
  2 L81                02CA R   |   2 L82                02D6 R
  2 L84                035C R   |   2 L85                0368 R
  2 L86                037A R   |   2 L87                034A R
  2 L88                033F R   |   2 L9                 0038 R
  2 L95                040C R   |   2 L99                0465 R
  2 _Rand              039C GR  |   2 _RandMax           03CA GR
    ___a               **** GX  |     ___b               **** GX
    ___c               **** GX  |     ___x               **** GX
    __a                **** GX  |     __b                **** GX
    __c                **** GX  |   2 __fi_s             0166 GR
  2 __fl_s             040F GR  |   2 __fll_s            0C5D GR
  2 __fs               00F9 GR  |   2 __fsss             0D08 GR
  2 __lltoa            0487 GR  |   2 __ltoa             01E0 GR
    __x                **** GX  |   2 _itoa              005A GR
  2 _itoa_s            00F0 GR  |   2 _lltoa             0C3F GR
  2 _lltoa_s           0C45 GR  |   2 _ltoa              038C GR
    _msg               **** GX  |     _msgLine           **** GX
  2 _printMessage      001A GR  |   2 _removeSpaces      003A GR
  2 _restoreSeed       0CEF GR  |   2 _saveSeed          0CD6 GR
    _stringBuffer1     **** GX  |     _stringBuffer4     **** GX
    _stringBuffer4     **** GX  |     _stringBuffer6     **** GX
    _umodhi3           **** GX  |   2 _vstrcpy           0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  DC0   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

