;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	string.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
; C:\Dev\Vide\projects\Telengard\source\bank0\string.enr.c
; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
; -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
; -fcrossjumping -fcse-follow-jumps -fdefer-pop
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fexpensive-optimizations
; -fforward-propagate -ffunction-cse -fgcse-after-reload -fgcse-lm
; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
; -finline-functions -finline-functions-called-once
; -finline-small-functions -fipa-pure-const -fivopts -fkeep-static-consts
; -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
; -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
; -foptimize-sibling-calls -fpcc-struct-return -fpeephole -fpeephole2
; -fpredictive-commoning -fregmove -freorder-blocks -freorder-functions
; -frerun-cse-after-loop -fsched-interblock -fsched-spec
; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
; -fsplit-wide-types -fstrict-aliasing -fstrict-overflow -fthread-jumps
; -ftrapping-math -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
; -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
; -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
; -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
; -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
; -fverbose-asm -fzero-initialized-in-bss
; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
	.area	.text
	.globl	_vstrcpy
_vstrcpy:
	pshs	u	;
	leau	,x	; dest, dest
	ldx	4,s	; source, source
	ldb	,x	; prephitmp.32,* source
L3:
	stb	,u+	; prephitmp.32,
	leax	1,x	; source,, source
	ldb	,x	; prephitmp.32,* source
	beq	L2	;
	cmpb	#-128	;cmpqi:	; prephitmp.32,
	bne	L3	;
L2:
	ldb	#-128	;,
	stb	,u	;,* dest
	puls	u,pc	;
	.globl	_printMessage
_printMessage:
	pshs	u	;
	leau	,x	; m, m
	ldb	_msgLine	; msgLine.1, msgLine
	cmpb	#3	;cmpqi:	; msgLine.1,
	beq	L9	;
	sex		;extendqihi2: R:b -> R:d	; msgLine.1, msgLine.1
	aslb	;
	rola	;
	tfr	d,x	; msgLine.1, tmp31
	pshs	u	; m
	ldx	_msg,x	;, msg
	jsr	_vstrcpy
	inc	_msgLine	; msgLine
	leas	2,s	;,,
L9:
	puls	u,pc	;
	.globl	_removeSpaces
_removeSpaces:
	pshs	u	;
	leau	,x	; pointer, pointer
	ldb	,x	;,* pointer
	cmpb	#32	;cmpqi:	;,
	bne	L12	;
L16:
	leax	,u	; tmpPointer, pointer
L13:
	leax	1,x	; tmpPointer,, tmpPointer
	ldb	,x	; D.3028,* tmpPointer
	stb	-1,x	; D.3028,
	bne	L13	;
	clr	,x	;* tmpPointer
	ldb	,u	;,* pointer
	cmpb	#32	;cmpqi:	;,
	beq	L16	;
L12:
	leax	,u	;, pointer
	puls	u,pc	;
	.globl	_itoa
_itoa:
	pshs	y,u	;
	leas	-2,s	;,,
	stb	,s	; n, n
	cmpb	#-57	;cmpqi:	; n,
	bls	L18	;
	addb	#56	; n,
	stb	,s	; n, n
	ldy	#12848	; digit,
	clr	1,s	; useSpace
	ldu	#12856	; digit.100,
	ldx	#12852	; digit.99,
L19:
	cmpb	#79	;cmpqi:	;,
	bls	L21	;
	addb	#-80	;,
	stb	,s	;, n
	leax	,u	; digit.99, digit.100
L22:
	cmpb	#19	;cmpqi:	;,
	bls	L24	;
	addb	#-20	;,
	stb	,s	;, n
	leax	2,x	; digit.99,, digit.99
L24:
	cmpb	#9	;cmpqi:	;,
	bls	L25	;
	addb	#-10	;,
	stb	,s	;, n
	leax	1,x	; digit.99,, digit.99
L26:
	stx	_stringBuffer4	; digit.99,
	ldb	,s	;, n
	addb	#48	;,
	stb	_stringBuffer4+2	;, stringBuffer4
	clr	_stringBuffer4+3	; stringBuffer4
	ldx	#_stringBuffer4	;,
	leas	2,s	;,,
	puls	y,u,pc	;
L21:
	cmpb	#39	;cmpqi:	;,
	bls	L28	;
	addb	#-40	;,
	stb	,s	;, n
	bra	L22	;
L18:
	cmpb	#99	;cmpqi:	;,
	bls	L29	;
	addb	#-100	;,
	stb	,s	;, n
	ldy	#12592	; digit,
	clr	1,s	; useSpace
	ldu	#12600	; digit.100,
	ldx	#12596	; digit.99,
	bra	L19	;
L25:
	cmpx	#8240	;cmphi:	; digit.99,
	bne	L26	;
	ldb	1,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	bne	L26	;
	ldx	#8224	; digit.99,
	bra	L26	;
L29:
	ldy	#8240	; digit,
	ldb	#1	;,
	stb	1,s	;, useSpace
	ldu	#8248	; digit.100,
	ldx	#8244	; digit.99,
	ldb	,s	;, n
	lbra	L19	;
L28:
	leax	,y	; digit.99, digit
	ldb	,s	;, n
	lbra	L22	;
	.globl	_itoa_s
_itoa_s:
	jsr	_itoa
	ldx	#_stringBuffer4	;,
	jmp	_removeSpaces	;
	.globl	__fs
__fs:
	pshs	y,u	;
	leas	-7,s	;,,
	stx	2,s	; s1, s1
	leax	1,x	; s1,, s1
	stx	,s	; s1, s1.155
	leax	-1,x	; s1,, s1
	ldb	,x+	;,
	stb	6,s	;, c.154
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L34	;
	ldu	#0	; ivtmp.150,
	bra	L35	;
L43:
	ldu	4,s	; ivtmp.150, ivtmp.144
L35:
	ldb	6,s	;, c.154
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.150
	stx	4,s	;, ivtmp.144
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp40,, ivtmp.150
	ldb	1,x	;,
	stb	6,s	;, c.154
	tfr	u,d	; ivtmp.150, tmp41
	addd	#2; addhi3,3	; tmp41,
	ldx	2,s	;, s1
	leax	d,x	;, tmp41,
	stx	,s	;, s1.155
	ldb	6,s	;, c.154
	cmpb	#37	;cmpqi:	;,
	bne	L43	;
L34:
	ldx	13,s	;, s2
	ldb	,x	; c.152,
	beq	L36	;
	leax	1,x	; s2.153,,
L37:
	stb	,y+	; c.152,
	ldb	,x+	; c.152,
	bne	L37	;
L36:
	ldu	,s	;, s1.155
	ldb	,u	; c,
	beq	L38	;
	leax	1,u	; s1.151,,
L39:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L39	;
L38:
	ldb	#-128	;,
	stb	,y	;,* to
	ldx	#_stringBuffer40	;,
	leas	7,s	;,,
	puls	y,u,pc	;
	.globl	__fi_s
__fi_s:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	2,s	; s1, s1
	jsr	_itoa
	ldx	#_stringBuffer4	;,
	jsr	_removeSpaces
	stx	4,s	;, D.3587
	ldx	2,s	;, s1
	leax	1,x	;,,
	stx	,s	;, s1.199
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	8,s	;, c.198
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L46	;
	ldu	#0	; ivtmp.189,
	bra	L47	;
L55:
	ldu	6,s	; ivtmp.189, ivtmp.196
L47:
	ldb	8,s	;, c.198
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.189
	stx	6,s	;, ivtmp.196
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp41,, ivtmp.189
	ldb	1,x	;,
	stb	8,s	;, c.198
	tfr	u,d	; ivtmp.189, tmp42
	addd	#2; addhi3,3	; tmp42,
	ldx	2,s	;, s1
	leax	d,x	;, tmp42,
	stx	,s	;, s1.199
	ldb	8,s	;, c.198
	cmpb	#37	;cmpqi:	;,
	bne	L55	;
L46:
	ldx	4,s	;, D.3587
	ldb	,x	; c.197,
	beq	L48	;
	leax	1,x	; s2,,
L49:
	stb	,y+	; c.197,
	ldb	,x+	; c.197,
	bne	L49	;
L48:
	ldu	,s	;, s1.199
	ldb	,u	; c,
	beq	L50	;
	leax	1,u	; s1.195,,
L51:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L51	;
L50:
	ldb	#-128	;,
	stb	,y	;,* to
	ldx	#_stringBuffer40	;,
	leas	9,s	;,,
	puls	y,u,pc	;
	.globl	__ltoa
__ltoa:
	pshs	y,u	;
	leas	-4,s	;,,
	ldy	10,s	; pointer, pointer
	stb	2,s	; zeroToSpaces, zeroToSpaces
	cmpx	#-25537	;cmphi:	; n,
	lbhi	L57	;
	ldu	#12336	; digit,
	ldd	#12848	;,
	std	,s	;, digit.217
L58:
	cmpx	#19999	;cmphi:	; n,
	lbhi	L59	;
	stu	,s	; digit, digit.217
L60:
	cmpx	#9999	;cmphi:	; n,
	bls	L61	;
	leax	-10000,x	; n,, n
	ldd	,s	;, digit.217
	addd	#256; addhi3,3	;,
	std	,s	;, digit.217
L61:
	tst	2,s	; zeroToSpaces
	beq	L62	;
	ldu	,s	;, digit.217
	cmpu	#12336	;cmphi:	;,
	lbeq	L84	;
L62:
	clr	3,s	; useSpace
L63:
	cmpx	#7999	;cmphi:	; n,
	lbls	L64	;
	leax	-8000,x	; n,, n
	ldd	,s	;, digit.217
	addd	#8; addhi3,3	;,
	std	,s	;, digit.217
L65:
	cmpx	#1999	;cmphi:	; n,
	bls	L66	;
	leax	-2000,x	; n,, n
	ldd	,s	;, digit.217
	addd	#2; addhi3,3	;,
	std	,s	;, digit.217
L66:
	cmpx	#999	;cmphi:	; n,
	bls	L67	;
	leax	-1000,x	; n,, n
	ldd	,s	;, digit.217
	addd	#1; addhi3,3	;,
	std	,s	;, digit.217
L67:
	tst	2,s	; zeroToSpaces
	beq	L68	;
	ldb	3,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L85	;
L69:
	clr	3,s	; useSpace
L68:
	ldu	,s	;, digit.217
	stu	,y	;,* pointer
	cmpx	#799	;cmphi:	; n,
	lbls	L70	;
	leax	-800,x	; n,, n
	ldu	#14384	; digit.218,
	ldd	#14896	;,
	std	,s	;, digit.219
L71:
	cmpx	#199	;cmphi:	; n,
	lbhi	L73	;
	stu	,s	; digit.218, digit.219
L74:
	cmpx	#99	;cmphi:	; n,
	bls	L75	;
	leax	-100,x	; n,, n
	ldd	,s	;, digit.219
	addd	#256; addhi3,3	;,
	std	,s	;, digit.219
L75:
	tst	2,s	; zeroToSpaces
	beq	L76	;
	ldb	3,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L86	;
L77:
	clr	3,s	; useSpace
L76:
	cmpx	#79	;cmphi:	; n,
	bls	L78	;
	leax	-80,x	; n,, n
	ldd	,s	;, digit.219
	addd	#8; addhi3,3	;,
	std	,s	;, digit.219
L79:
	cmpx	#19	;cmphi:	; n,
	bls	L80	;
	leax	-20,x	; n,, n
	ldd	,s	;, digit.219
	addd	#2; addhi3,3	;,
	std	,s	;, digit.219
L80:
	cmpx	#9	;cmphi:	; n,
	bls	L81	;
	leax	-10,x	; n,, n
	ldd	,s	;, digit.219
	addd	#1; addhi3,3	;,
	std	,s	;, digit.219
L81:
	tst	2,s	; zeroToSpaces
	beq	L82	;
	ldb	3,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L87	;
L82:
	ldu	,s	;, digit.219
	stu	2,y	;,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; n, n
	addb	#48	; n,
	stb	4,y	; n,
	clr	5,y	;
	leax	,y	;, pointer
	leas	4,s	;,,
	puls	y,u,pc	;
L78:
	cmpx	#39	;cmphi:	; n,
	bls	L79	;
	leax	-40,x	; n,, n
	ldd	,s	;, digit.219
	addd	#4; addhi3,3	;,
	std	,s	;, digit.219
	bra	L79	;
L73:
	leax	-200,x	; n,, n
	lbra	L74	;
L70:
	cmpx	#399	;cmphi:	; n,
	bls	L88	;
	leax	-400,x	; n,, n
	ldu	#13360	; digit.218,
	ldd	#13872	;,
	std	,s	;, digit.219
	lbra	L71	;
L64:
	cmpx	#3999	;cmphi:	; n,
	lbls	L65	;
	leax	-4000,x	; n,, n
	ldd	,s	;, digit.217
	addd	#4; addhi3,3	;,
	std	,s	;, digit.217
	lbra	L65	;
L59:
	leax	-20000,x	; n,, n
	lbra	L60	;
L57:
	leax	25536,x	; n,, n
	ldu	#13360	; digit,
	ldd	#13872	;,
	std	,s	;, digit.217
	lbra	L58	;
L88:
	ldu	#12336	; digit.218,
	ldd	#12848	;,
	std	,s	;, digit.219
	lbra	L71	;
L87:
	ldu	,s	;, digit.219
	cmpu	#8240	;cmphi:	;,
	lbne	L82	;
	ldd	#8224	;,
	std	,s	;, digit.219
	lbra	L82	;
L84:
	ldd	#8240	;,
	std	,s	;, digit.217
	ldb	#1	;,
	stb	3,s	;, useSpace
	lbra	L63	;
L85:
	ldu	,s	;, digit.217
	cmpu	#8240	;cmphi:	;,
	lbne	L69	;
	ldd	#8224	;,
	std	,s	;, digit.217
	lbra	L68	;
L86:
	ldu	,s	;, digit.219
	cmpu	#12336	;cmphi:	;,
	lbne	L77	;
	ldd	#8240	;,
	std	,s	;, digit.219
	lbra	L76	;
	.globl	_ltoa
_ltoa:
	pshs	u	;
	ldu	#_stringBuffer6	;,
	stu	,--s	;,
	ldb	#1	;,
	jsr	__ltoa
	leas	2,s	;,,
	puls	u,pc	;
	.globl	_Rand
_Rand:
	leas	-2,s	;,,
	ldb	__x	;, _x
	incb	;
	stb	,s	;, _x.6
	stb	__x	;, _x
	ldb	__c	;, _c
	eorb	__a	;, _a
	stb	1,s	;, _a.9
	ldb	,s	;, _x.6
	eorb	1,s	;, _a.9
	stb	1,s	;, _a.9
	stb	__a	;, _a
	addb	__b	; _b.11, _b
	stb	__b	; _b.11, _b
	lsrb	; _c.12
	addb	__c	; _c.12, _c
	eorb	1,s	; _c.12, _a.9
	stb	__c	; _c.12, _c
	leas	2,s	;,,
	rts
	.globl	_RandMax
_RandMax:
	leas	-3,s	;,,
	stb	1,s	; m, m
	beq	L95	;
	ldb	__x	;, _x
	incb	;
	stb	,s	;, _x.6
	stb	__x	;, _x
	ldb	__c	;, _c
	eorb	__a	;, _a
	stb	2,s	;, _a.9
	ldb	,s	;, _x.6
	eorb	2,s	;, _a.9
	stb	2,s	;, _a.9
	stb	__a	;, _a
	addb	__b	; _b.11, _b
	stb	__b	; _b.11, _b
	lsrb	; _b.11
	addb	__c	; _b.11, _c
	eorb	2,s	; _b.11, _a.9
	stb	,s	; _b.11, _c.12
	stb	__c	; _b.11, _c
	ldb	1,s	;, m
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; m
	ldb	2,s	;, _c.12
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_umodhi3
	leas	2,s	;,,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp41, D.3115
L95:
	leas	3,s	;,,
	rts
	.globl	__fl_s
__fl_s:
	pshs	y,u	;
	leas	-5,s	;,,
	stx	,s	; s1, s1
	ldy	#_stringBuffer6	; tmp38,
	pshs	y	; tmp38
	ldb	#1	;,
	ldx	13,s	;, i
	jsr	__ltoa
	leax	,y	;, tmp38
	jsr	_removeSpaces
	ldy	2,s	; s1.291, s1
	ldb	,y+	;,
	stb	6,s	;, c.290
	leas	2,s	;,,
	ldu	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L99	;
	ldy	#0	; ivtmp.289,
	bra	L100	;
L108:
	ldy	2,s	; ivtmp.289, ivtmp.281
L100:
	ldb	4,s	;, c.290
	stb	_stringBuffer40,y	;,
	leax	1,y	;,, ivtmp.289
	stx	2,s	;, ivtmp.281
	leau	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,y	; tmp40,, ivtmp.289
	ldb	1,x	;,
	stb	4,s	;, c.290
	tfr	y,d	; ivtmp.289, tmp41
	addd	#2; addhi3,3	; tmp41,
	ldx	,s	;, s1
	leay	d,x	; s1.291, tmp41,
	ldb	4,s	;, c.290
	cmpb	#37	;cmpqi:	;,
	bne	L108	;
L99:
	ldb	_stringBuffer6	; c.288, stringBuffer6
	beq	L101	;
	ldx	#_stringBuffer6+1	; s2,
L102:
	stb	,u+	; c.288,
	ldb	,x+	; c.288,
	bne	L102	;
L101:
	ldb	,y	; c,* s1.291
	beq	L103	;
	leax	1,y	; s1.287,, s1.291
L104:
	stb	,u+	; c,
	ldb	,x+	; c,
	bne	L104	;
L103:
	ldb	#-128	;,
	stb	,u	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	__lltoa
__lltoa:
	pshs	y,u	;
	leas	-7,s	;,,
	ldy	13,s	;, n
	sty	2,s	;, n
	ldu	15,s	;, n
	stu	4,s	;, n
	leau	,x	; pointer, pointer
	cmpy	#30517	;cmphi:	; tmp6,
	lbhi	L110	;
	lbeq	L242	;
L205:
	ldd	#12336	;,
	std	,s	;, digit
	ldx	#12592	; digit.316,
L112:
	ldy	2,s	;, n
	cmpy	#15258	;cmphi:	;,
	lbhi	L206	;
	lbeq	L243	;
L113:
	ldx	,s	;, digit
	cmpx	#12336	;cmphi:	;,
	lbne	L115	;
	ldy	#8240	;,
	sty	,s	;, digit
	ldb	#1	;,
	stb	6,s	;, useSpace
	ldx	2,s	;, n
	cmpx	#12207	;cmphi:	;,
	lbls	L244	;
L207:
	ldd	4,s	;, n
	addd	#-2048	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#80	;
	adca	#-48	;
	std	2,s	;, n
	ldd	,s	;, digit
	addd	#8; addhi3,3	;,
	std	,s	;, digit
L119:
	ldx	2,s	;, n
	cmpx	#3051	;cmphi:	;,
	lbhi	L209	;
L272:
	cmpx	#3051	;cmphi:	; tmp2,
	lbeq	L245	;
L121:
	ldx	2,s	;, n
	cmpx	#1525	;cmphi:	;,
	lbhi	L210	;
L273:
	cmpx	#1525	;cmphi:	; tmp2,
	lbeq	L246	;
L123:
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L247	;
L125:
	clr	6,s	; useSpace
	ldd	,s	;, digit
L126:
	std	,u	;,* pointer
	ldx	2,s	;, n
	cmpx	#1220	;cmphi:	;,
	lbhi	L211	;
	lbeq	L248	;
L127:
	ldd	2,s	;, n
	cmpd	#610	;cmphi:	;,
	lbls	L249	;
L130:
	ldd	4,s	;, n
	addd	#-23040	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-99	;
	adca	#-3	;
	std	2,s	;, n
	ldx	#13360	; digit.308,
	ldy	#13872	;,
	sty	,s	;, digit.309
	ldd	2,s	;, n
	cmpd	#305	;cmphi:	;,
	lbls	L250	;
L132:
	ldd	4,s	;, n
	addd	#-11520	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-50	;
	adca	#-2	;
	std	2,s	;, n
	ldx	2,s	;, n
	cmpx	#152	;cmphi:	;,
	lbls	L251	;
L214:
	ldd	4,s	;, n
	addd	#27008	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#103	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.309
	addd	#256; addhi3,3	;,
	std	,s	;, digit.309
L135:
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L252	;
L137:
	clr	6,s	; useSpace
L138:
	ldd	2,s	;, n
	cmpd	#122	;cmphi:	;,
	lbhi	L215	;
	lbeq	L253	;
L139:
	ldx	2,s	;, n
	cmpx	#61	;cmphi:	;,
	lbls	L254	;
L216:
	ldd	4,s	;, n
	addd	#-2304	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-62	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.309
	addd	#4; addhi3,3	;,
	std	,s	;, digit.309
	ldx	2,s	;, n
	cmpx	#30	;cmphi:	;,
	lbls	L255	;
L217:
	ldd	4,s	;, n
	addd	#31616	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-31	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.309
	addd	#2; addhi3,3	;,
	std	,s	;, digit.309
L143:
	ldx	2,s	;, n
	cmpx	#15	;cmphi:	;,
	lbhi	L218	;
	lbeq	L256	;
L145:
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L257	;
L147:
	clr	6,s	; useSpace
	ldd	,s	;, digit.309
L148:
	std	2,u	;,
	ldx	2,s	;, n
	cmpx	#12	;cmphi:	;,
	lbhi	L219	;
	lbeq	L258	;
L149:
	ldd	2,s	;, n
	cmpd	#6	;cmphi:	;,
	lbls	L259	;
L152:
	ldd	4,s	;, n
	addd	#-6784	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-7	;
	adca	#-1	;
	std	2,s	;, n
	ldx	#13360	; digit.310,
	ldy	#13872	;,
	sty	,s	;, digit.311
	ldd	2,s	;, n
	cmpd	#3	;cmphi:	;,
	lbls	L260	;
L154:
	ldd	4,s	;, n
	addd	#-3392	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-4	;
	adca	#-1	;
	std	2,s	;, n
	ldx	2,s	;, n
	cmpx	#1	;cmphi:	;,
	lbls	L261	;
L222:
	ldd	4,s	;, n
	addd	#31072	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-2	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.311
	addd	#256; addhi3,3	;,
	std	,s	;, digit.311
L157:
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L262	;
L159:
	clr	6,s	; useSpace
L160:
	ldd	2,s	;, n
	cmpd	#1	;cmphi:	;,
	lbhi	L223	;
	lbeq	L263	;
L161:
	ldx	2,s	;, n
	lbeq	L264	;
L224:
	ldd	4,s	;, n
	addd	#25536	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.311
	addd	#4; addhi3,3	;,
	std	,s	;, digit.311
	ldx	2,s	;, n
	lbeq	L265	;
L225:
	ldd	4,s	;, n
	addd	#-20000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.311
	addd	#2; addhi3,3	;,
	std	,s	;, digit.311
L165:
	ldx	2,s	;, n
	lbne	L226	;
	ldy	4,s	;, n
	cmpy	#9999	;cmphi:	;,
	lbhi	L226	;
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L266	;
L169:
	clr	6,s	; useSpace
	ldd	,s	;, digit.311
L170:
	std	4,u	;,
	ldx	2,s	;, n
	bne	L227	;
	ldy	4,s	;, n
	cmpy	#7999	;cmphi:	;,
	lbls	L239	;
L227:
	ldd	4,s	;, n
	addd	#-8000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldx	#14384	; digit.312,
	ldy	#14896	;,
	sty	,s	;, digit.313
L173:
	ldd	2,s	;, n
	lbne	L176	;
	ldy	4,s	;, n
	cmpy	#1999	;cmphi:	;,
	lbhi	L176	;
	stx	,s	; digit.312, digit.313
L178:
	ldx	2,s	;, n
	lbne	L230	;
	ldy	4,s	;, n
	cmpy	#999	;cmphi:	;,
	lbhi	L230	;
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L267	;
L181:
	clr	6,s	; useSpace
L182:
	ldd	2,s	;, n
	bne	L231	;
	ldx	4,s	;, n
	cmpx	#799	;cmphi:	;,
	lbls	L240	;
L231:
	ldd	4,s	;, n
	addd	#-800	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.313
	addd	#8; addhi3,3	;,
	std	,s	;, digit.313
L185:
	ldx	2,s	;, n
	lbne	L233	;
	ldy	4,s	;, n
	cmpy	#199	;cmphi:	;,
	lbhi	L233	;
L187:
	ldx	2,s	;, n
	lbne	L234	;
	ldy	4,s	;, n
	cmpy	#99	;cmphi:	;,
	lbhi	L234	;
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L268	;
L191:
	clr	6,s	; useSpace
	ldd	,s	;, digit.313
L192:
	std	6,u	;,
	ldx	2,s	;, n
	bne	L235	;
	ldy	4,s	;, n
	cmpy	#79	;cmphi:	;,
	lbls	L241	;
L235:
	ldd	4,s	;, n
	addd	#-80	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	#14384	; digit.314,
	ldx	#14896	; digit.315,
L195:
	ldy	2,s	;, n
	lbne	L198	;
	ldy	4,s	;, n
	cmpy	#19	;cmphi:	;,
	lbhi	L198	;
	tfr	d,x	; digit.314, digit.315
L200:
	ldy	2,s	;, n
	lbne	L238	;
	ldd	4,s	;, n
	cmpd	#9	;cmphi:	;,
	lbhi	L238	;
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L269	;
L203:
	ldb	5,s	;, n
	abx
	stx	8,u	; digit.315,
	clr	10,u	;
	leax	,u	;, pointer
	leas	7,s	;,,
	puls	y,u,pc	;
L243:
	ldy	4,s	;, n
	cmpy	#-13825	;cmphi:	;,
	lbls	L113	;
L206:
	ldd	4,s	;, n
	addd	#13824	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#101	;
	adca	#-60	;
	std	2,s	;, n
	stx	,s	; digit.316, digit
L115:
	clr	6,s	; useSpace
	ldx	2,s	;, n
	cmpx	#12207	;cmphi:	;,
	lbhi	L207	;
L244:
	cmpx	#12207	;cmphi:	; tmp2,
	lbeq	L270	;
L117:
	ldx	2,s	;, n
	cmpx	#6103	;cmphi:	;,
	lbls	L271	;
L208:
	ldd	4,s	;, n
	addd	#31744	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#40	;
	adca	#-24	;
	std	2,s	;, n
	ldd	,s	;, digit
	addd	#4; addhi3,3	;,
	std	,s	;, digit
	ldx	2,s	;, n
	cmpx	#3051	;cmphi:	;,
	lbls	L272	;
L209:
	ldd	4,s	;, n
	addd	#15872	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#20	;
	adca	#-12	;
	std	2,s	;, n
	ldd	,s	;, digit
	addd	#2; addhi3,3	;,
	std	,s	;, digit
	ldx	2,s	;, n
	cmpx	#1525	;cmphi:	;,
	lbls	L273	;
L210:
	ldd	4,s	;, n
	addd	#7936	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#10	;
	adca	#-6	;
	std	2,s	;, n
	ldd	,s	;, digit
	addd	#1; addhi3,3	;,
	std	,s	;, digit
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L125	;
L247:
	ldx	,s	;, digit
	cmpx	#8240	;cmphi:	;,
	lbne	L125	;
	ldy	#8224	;,
	tfr	y,d	;,
	lbra	L126	;
L248:
	ldd	4,s	;, n
	cmpd	#-19457	;cmphi:	;,
	lbls	L127	;
L211:
	ldd	4,s	;, n
	addd	#19456	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#59	;
	adca	#-5	;
	std	2,s	;, n
	ldx	#14384	; digit.308,
	ldy	#14896	;,
	sty	,s	;, digit.309
L129:
	ldd	2,s	;, n
	cmpd	#305	;cmphi:	;,
	lbhi	L132	;
L250:
	cmpd	#305	;cmphi:	; tmp2,
	lbeq	L274	;
L213:
	stx	,s	; digit.308, digit.309
	ldx	2,s	;, n
	cmpx	#152	;cmphi:	;,
	lbhi	L214	;
L251:
	cmpx	#152	;cmphi:	; tmp2,
	lbne	L135	;
	ldd	4,s	;, n
	cmpd	#-27009	;cmphi:	;,
	lbls	L135	;
	lbra	L214	;
L253:
	ldy	4,s	;, n
	cmpy	#4607	;cmphi:	;,
	lbls	L139	;
L215:
	ldd	4,s	;, n
	addd	#-4608	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-123	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.309
	addd	#8; addhi3,3	;,
	std	,s	;, digit.309
L141:
	ldx	2,s	;, n
	cmpx	#30	;cmphi:	;,
	lbhi	L217	;
L255:
	cmpx	#30	;cmphi:	; tmp2,
	lbne	L143	;
	ldd	4,s	;, n
	cmpd	#-31617	;cmphi:	;,
	lbls	L143	;
	lbra	L217	;
L258:
	ldd	4,s	;, n
	cmpd	#13567	;cmphi:	;,
	lbls	L149	;
L219:
	ldd	4,s	;, n
	addd	#-13568	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-13	;
	adca	#-1	;
	std	2,s	;, n
	ldx	#14384	; digit.310,
	ldy	#14896	;,
	sty	,s	;, digit.311
L151:
	ldd	2,s	;, n
	cmpd	#3	;cmphi:	;,
	lbhi	L154	;
L260:
	cmpd	#3	;cmphi:	; tmp2,
	lbeq	L275	;
L221:
	stx	,s	; digit.310, digit.311
	ldx	2,s	;, n
	cmpx	#1	;cmphi:	;,
	lbhi	L222	;
L261:
	cmpx	#1	;cmphi:	; tmp2,
	lbne	L157	;
	ldd	4,s	;, n
	cmpd	#-31073	;cmphi:	;,
	lbls	L157	;
	lbra	L222	;
L263:
	ldy	4,s	;, n
	cmpy	#14463	;cmphi:	;,
	lbls	L161	;
L223:
	ldd	4,s	;, n
	addd	#-14464	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-2	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.311
	addd	#8; addhi3,3	;,
	std	,s	;, digit.311
L163:
	ldx	2,s	;, n
	lbne	L225	;
L265:
	ldy	4,s	;, n
	cmpy	#19999	;cmphi:	;,
	lbls	L165	;
	lbra	L225	;
L238:
	ldd	4,s	;, n
	addd	#-10	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	leax	256,x	; digit.315,, digit.315
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L203	;
L269:
	cmpx	#12336	;cmphi:	; digit.315,
	lbne	L203	;
	ldx	#8240	; digit.315,
	lbra	L203	;
L198:
	ldd	4,s	;, n
	addd	#-20	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	lbra	L200	;
L234:
	ldd	4,s	;, n
	addd	#-100	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.313
	addd	#1; addhi3,3	;,
	std	,s	;, digit.313
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L191	;
L268:
	ldx	,s	;, digit.313
	cmpx	#8240	;cmphi:	;,
	lbne	L191	;
	ldy	#8224	;,
	sty	,s	;, digit.313
	tfr	y,d	;,
	lbra	L192	;
L233:
	ldd	4,s	;, n
	addd	#-200	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.313
	addd	#2; addhi3,3	;,
	std	,s	;, digit.313
	lbra	L187	;
L230:
	ldd	4,s	;, n
	addd	#-1000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.313
	addd	#256; addhi3,3	;,
	std	,s	;, digit.313
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L181	;
L267:
	ldx	,s	;, digit.313
	cmpx	#12336	;cmphi:	;,
	lbne	L181	;
	ldy	#8240	;,
	sty	,s	;, digit.313
	lbra	L182	;
L176:
	ldd	4,s	;, n
	addd	#-2000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	lbra	L178	;
L226:
	ldd	4,s	;, n
	addd	#-10000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.311
	addd	#1; addhi3,3	;,
	std	,s	;, digit.311
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L169	;
L266:
	ldx	,s	;, digit.311
	cmpx	#8240	;cmphi:	;,
	lbne	L169	;
	ldy	#8224	;,
	tfr	y,d	;,
	lbra	L170	;
L256:
	ldd	4,s	;, n
	cmpd	#16959	;cmphi:	;,
	lbls	L145	;
L218:
	ldd	4,s	;, n
	addd	#-16960	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-16	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.309
	addd	#1; addhi3,3	;,
	std	,s	;, digit.309
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L147	;
L257:
	ldx	,s	;, digit.309
	cmpx	#8240	;cmphi:	;,
	lbne	L147	;
	ldy	#8224	;,
	tfr	y,d	;,
	lbra	L148	;
L242:
	ldy	4,s	;, n
	cmpy	#-27649	;cmphi:	;,
	lbls	L205	;
L110:
	ldd	4,s	;, n
	addd	#27648	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-54	;
	adca	#-120	;
	std	2,s	;, n
	ldx	#12848	;,
	stx	,s	;, digit
	ldx	#13104	; digit.316,
	lbra	L112	;
L259:
	cmpd	#6	;cmphi:	; tmp1,
	lbeq	L276	;
L220:
	ldx	#12336	; digit.310,
	ldd	#12848	;,
	std	,s	;, digit.311
	lbra	L151	;
L254:
	cmpx	#61	;cmphi:	; tmp2,
	lbne	L141	;
	ldd	4,s	;, n
	cmpd	#2303	;cmphi:	;,
	lbls	L141	;
	lbra	L216	;
L249:
	cmpd	#610	;cmphi:	; tmp1,
	lbeq	L277	;
L212:
	ldx	#12336	; digit.308,
	ldd	#12848	;,
	std	,s	;, digit.309
	lbra	L129	;
L271:
	cmpx	#6103	;cmphi:	; tmp2,
	lbne	L119	;
	ldd	4,s	;, n
	cmpd	#-31745	;cmphi:	;,
	lbls	L119	;
	lbra	L208	;
L262:
	ldx	,s	;, digit.311
	cmpx	#12336	;cmphi:	;,
	lbne	L159	;
	ldy	#8240	;,
	sty	,s	;, digit.311
	lbra	L160	;
L252:
	ldx	,s	;, digit.309
	cmpx	#12336	;cmphi:	;,
	lbne	L137	;
	ldy	#8240	;,
	sty	,s	;, digit.309
	lbra	L138	;
L264:
	ldy	4,s	;, n
	cmpy	#-25537	;cmphi:	;,
	lbls	L163	;
	lbra	L224	;
L275:
	ldd	4,s	;, n
	cmpd	#3391	;cmphi:	;,
	lbhi	L154	;
	lbra	L221	;
L245:
	ldd	4,s	;, n
	cmpd	#-15873	;cmphi:	;,
	lbls	L121	;
	lbra	L209	;
L274:
	ldd	4,s	;, n
	cmpd	#11519	;cmphi:	;,
	lbhi	L132	;
	lbra	L213	;
L270:
	ldd	4,s	;, n
	cmpd	#2047	;cmphi:	;,
	lbls	L117	;
	lbra	L207	;
L246:
	ldd	4,s	;, n
	cmpd	#-7937	;cmphi:	;,
	lbls	L123	;
	lbra	L210	;
L241:
	cmpy	#39	;cmphi:	; tmp1,
	bhi	L196	;
	ldd	#12336	; digit.314,
	ldx	#12848	; digit.315,
	lbra	L195	;
L239:
	cmpy	#3999	;cmphi:	; tmp6,
	bhi	L174	;
	ldx	#12336	; digit.312,
	ldy	#12848	;,
	sty	,s	;, digit.313
	lbra	L173	;
L240:
	cmpx	#399	;cmphi:	;,
	lbls	L185	;
	ldd	4,s	;, n
	addd	#-400	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.313
	addd	#4; addhi3,3	;,
	std	,s	;, digit.313
	lbra	L185	;
L277:
	ldy	4,s	;, n
	cmpy	#23039	;cmphi:	;,
	lbhi	L130	;
	lbra	L212	;
L276:
	ldy	4,s	;, n
	cmpy	#6783	;cmphi:	;,
	lbhi	L152	;
	lbra	L220	;
L196:
	ldd	4,s	;, n
	addd	#-40	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	#13360	; digit.314,
	ldx	#13872	; digit.315,
	lbra	L195	;
L174:
	ldd	4,s	;, n
	addd	#-4000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldx	#13360	; digit.312,
	ldy	#13872	;,
	sty	,s	;, digit.313
	lbra	L173	;
	.globl	_lltoa
_lltoa:
	ldx	#_stringBuffer12	;,
	jmp	__lltoa	;
	.globl	_lltoa_s
_lltoa_s:
	leas	-4,s	;,,
	ldx	6,s	;, n
	stx	,s	;,
	ldx	8,s	;, n
	stx	2,s	;,
	ldx	#_stringBuffer12	;,
	jsr	__lltoa
	leas	4,s	;,,
	ldx	#_stringBuffer12	;,
	jmp	_removeSpaces	;
	.globl	__fll_s
__fll_s:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	4,s	; s1, s1
	ldx	15,s	;, i
	stx	,s	;,
	ldd	17,s	;, i
	std	2,s	;,
	ldx	#_stringBuffer12	;,
	jsr	__lltoa
	ldx	#_stringBuffer12	;,
	jsr	_removeSpaces
	ldu	4,s	; s1.379, s1
	ldb	,u+	;,
	stb	8,s	;, c.378
	leas	4,s	;,,
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L284	;
	ldu	#0	; ivtmp.377,
	bra	L285	;
L293:
	ldu	2,s	; ivtmp.377, ivtmp.369
L285:
	ldb	4,s	;, c.378
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.377
	stx	2,s	;, ivtmp.369
	leay	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,u	; tmp39,, ivtmp.377
	ldb	1,x	;,
	stb	4,s	;, c.378
	tfr	u,d	; ivtmp.377, tmp40
	addd	#2; addhi3,3	; tmp40,
	ldx	,s	;, s1
	leau	d,x	; s1.379, tmp40,
	ldb	4,s	;, c.378
	cmpb	#37	;cmpqi:	;,
	bne	L293	;
L284:
	ldb	_stringBuffer12	; c.376, stringBuffer12
	beq	L286	;
	ldx	#_stringBuffer12+1	; s2,
L287:
	stb	,y+	; c.376,
	ldb	,x+	; c.376,
	bne	L287	;
L286:
	ldb	,u	; c,* s1.379
	beq	L288	;
	leax	1,u	; s1.375,, s1.379
L289:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L289	;
L288:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	_saveSeed
_saveSeed:
	ldb	__x	;, _x
	stb	___x	;, __x
	ldb	__a	;, _a
	stb	___a	;, __a
	ldb	__b	;, _b
	stb	___b	;, __b
	ldb	__c	;, _c
	stb	___c	;, __c
	rts
	.globl	_restoreSeed
_restoreSeed:
	ldb	___x	;, __x
	stb	__x	;, _x
	ldb	___a	;, __a
	stb	__a	;, _a
	ldb	___b	;, __b
	stb	__b	;, _b
	ldb	___c	;, __c
	stb	__c	;, _c
	rts
	.globl	__fsss
__fsss:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	4,s	; s1, s1
	leax	1,x	; s1,, s1
	stx	2,s	; s1, s1.476
	leax	-1,x	; s1,, s1
	ldb	,x+	;,
	stb	8,s	;, c.475
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L300	;
	ldu	#0	; ivtmp.457,
	bra	L301	;
L324:
	ldu	6,s	; ivtmp.457, ivtmp.463
L301:
	ldb	8,s	;, c.475
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.457
	stx	6,s	;, ivtmp.463
	leay	_stringBuffer40,x	; to,,
	ldd	4,s	;, s1
	leax	d,u	; tmp49,, ivtmp.457
	ldb	1,x	;,
	stb	8,s	;, c.475
	tfr	u,d	; ivtmp.457, tmp50
	addd	#2; addhi3,3	; tmp50,
	ldx	4,s	;, s1
	leax	d,x	;, tmp50,
	stx	2,s	;, s1.476
	ldb	8,s	;, c.475
	cmpb	#37	;cmpqi:	;,
	bne	L324	;
L300:
	ldx	15,s	;, s2
	ldb	,x	; c.473,
	beq	L302	;
	leax	1,x	; s2.474,,
L303:
	stb	,y+	; c.473,
	ldb	,x+	; c.473,
	bne	L303	;
L302:
	ldu	2,s	; s1.472, s1.476
	ldb	,u+	; c.471,
	cmpb	#37	;cmpqi:	; c.471,
	beq	L304	;
L316:
	stb	,y+	; c.471,
	ldb	,u+	; c.471,
	cmpb	#37	;cmpqi:	; c.471,
	bne	L316	;
L304:
	ldx	17,s	;, s3
	ldb	,x	; c.469,
	beq	L323	;
	leax	1,x	;,,
	stx	,s	;, s3.470
L307:
	stb	,y+	; c.469,
	ldx	,s	;, s3.470
	leax	1,x	;,,
	stx	,s	;, s3.470
	leax	-1,x	;,,
	ldb	,x+	; c.469,
	bne	L307	;
	ldb	,u+	; c.464,
	cmpb	#37	;cmpqi:	; c.464,
	beq	L325	;
L315:
	stb	,y+	; c.464,
L323:
	ldb	,u+	; c.464,
	cmpb	#37	;cmpqi:	; c.464,
	bne	L315	;
L325:
	ldx	19,s	;, s4
	ldb	,x	; c.465,
	beq	L310	;
	leax	1,x	;,,
	stx	,s	;, s4.468
L311:
	stb	,y+	; c.465,
	ldx	,s	;, s4.468
	leax	1,x	;,,
	stx	,s	;, s4.468
	leax	-1,x	;,,
	ldb	,x+	; c.465,
	bne	L311	;
L310:
	ldb	,u	; c,* s1.467
	beq	L312	;
	leax	1,u	; s1.466,, s1.467
L313:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L313	;
L312:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	9,s	;,,
	puls	y,u,pc	;
