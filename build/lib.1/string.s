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
; C:\Dev\Vide\projects\Telengard\source\bank1\string.enr.c
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
	ldb	,x	; prephitmp.45,* source
L3:
	stb	,u+	; prephitmp.45,
	leax	1,x	; source,, source
	ldb	,x	; prephitmp.45,* source
	beq	L2	;
	cmpb	#-128	;cmpqi:	; prephitmp.45,
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
	ldb	,x	; D.3027,* tmpPointer
	stb	-1,x	; D.3027,
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
	ldu	#12856	; digit.113,
	ldx	#12852	; digit.112,
L19:
	cmpb	#79	;cmpqi:	;,
	bls	L21	;
	addb	#-80	;,
	stb	,s	;, n
	leax	,u	; digit.112, digit.113
L22:
	cmpb	#19	;cmpqi:	;,
	bls	L24	;
	addb	#-20	;,
	stb	,s	;, n
	leax	2,x	; digit.112,, digit.112
L24:
	cmpb	#9	;cmpqi:	;,
	bls	L25	;
	addb	#-10	;,
	stb	,s	;, n
	leax	1,x	; digit.112,, digit.112
L26:
	stx	_stringBuffer4	; digit.112,
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
	ldu	#12600	; digit.113,
	ldx	#12596	; digit.112,
	bra	L19	;
L25:
	cmpx	#8240	;cmphi:	; digit.112,
	bne	L26	;
	ldb	1,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	bne	L26	;
	ldx	#8224	; digit.112,
	bra	L26	;
L29:
	ldy	#8240	; digit,
	ldb	#1	;,
	stb	1,s	;, useSpace
	ldu	#8248	; digit.113,
	ldx	#8244	; digit.112,
	ldb	,s	;, n
	lbra	L19	;
L28:
	leax	,y	; digit.112, digit
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
	stx	,s	; s1, s1.168
	leax	-1,x	; s1,, s1
	ldb	,x+	;,
	stb	6,s	;, c.167
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L34	;
	ldu	#0	; ivtmp.163,
	bra	L35	;
L43:
	ldu	4,s	; ivtmp.163, ivtmp.157
L35:
	ldb	6,s	;, c.167
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.163
	stx	4,s	;, ivtmp.157
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp40,, ivtmp.163
	ldb	1,x	;,
	stb	6,s	;, c.167
	tfr	u,d	; ivtmp.163, tmp41
	addd	#2; addhi3,3	; tmp41,
	ldx	2,s	;, s1
	leax	d,x	;, tmp41,
	stx	,s	;, s1.168
	ldb	6,s	;, c.167
	cmpb	#37	;cmpqi:	;,
	bne	L43	;
L34:
	ldx	13,s	;, s2
	ldb	,x	; c.165,
	beq	L36	;
	leax	1,x	; s2.166,,
L37:
	stb	,y+	; c.165,
	ldb	,x+	; c.165,
	bne	L37	;
L36:
	ldu	,s	;, s1.168
	ldb	,u	; c,
	beq	L38	;
	leax	1,u	; s1.164,,
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
	stx	4,s	;, D.3901
	ldx	2,s	;, s1
	leax	1,x	;,,
	stx	,s	;, s1.212
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	8,s	;, c.211
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L46	;
	ldu	#0	; ivtmp.202,
	bra	L47	;
L55:
	ldu	6,s	; ivtmp.202, ivtmp.209
L47:
	ldb	8,s	;, c.211
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.202
	stx	6,s	;, ivtmp.209
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp41,, ivtmp.202
	ldb	1,x	;,
	stb	8,s	;, c.211
	tfr	u,d	; ivtmp.202, tmp42
	addd	#2; addhi3,3	; tmp42,
	ldx	2,s	;, s1
	leax	d,x	;, tmp42,
	stx	,s	;, s1.212
	ldb	8,s	;, c.211
	cmpb	#37	;cmpqi:	;,
	bne	L55	;
L46:
	ldx	4,s	;, D.3901
	ldb	,x	; c.210,
	beq	L48	;
	leax	1,x	; s2,,
L49:
	stb	,y+	; c.210,
	ldb	,x+	; c.210,
	bne	L49	;
L48:
	ldu	,s	;, s1.212
	ldb	,u	; c,
	beq	L50	;
	leax	1,u	; s1.208,,
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
	std	,s	;, digit.230
L58:
	cmpx	#19999	;cmphi:	; n,
	lbhi	L59	;
	stu	,s	; digit, digit.230
L60:
	cmpx	#9999	;cmphi:	; n,
	bls	L61	;
	leax	-10000,x	; n,, n
	ldd	,s	;, digit.230
	addd	#256; addhi3,3	;,
	std	,s	;, digit.230
L61:
	tst	2,s	; zeroToSpaces
	beq	L62	;
	ldu	,s	;, digit.230
	cmpu	#12336	;cmphi:	;,
	lbeq	L84	;
L62:
	clr	3,s	; useSpace
L63:
	cmpx	#7999	;cmphi:	; n,
	lbls	L64	;
	leax	-8000,x	; n,, n
	ldd	,s	;, digit.230
	addd	#8; addhi3,3	;,
	std	,s	;, digit.230
L65:
	cmpx	#1999	;cmphi:	; n,
	bls	L66	;
	leax	-2000,x	; n,, n
	ldd	,s	;, digit.230
	addd	#2; addhi3,3	;,
	std	,s	;, digit.230
L66:
	cmpx	#999	;cmphi:	; n,
	bls	L67	;
	leax	-1000,x	; n,, n
	ldd	,s	;, digit.230
	addd	#1; addhi3,3	;,
	std	,s	;, digit.230
L67:
	tst	2,s	; zeroToSpaces
	beq	L68	;
	ldb	3,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L85	;
L69:
	clr	3,s	; useSpace
L68:
	ldu	,s	;, digit.230
	stu	,y	;,* pointer
	cmpx	#799	;cmphi:	; n,
	lbls	L70	;
	leax	-800,x	; n,, n
	ldu	#14384	; digit.231,
	ldd	#14896	;,
	std	,s	;, digit.232
L71:
	cmpx	#199	;cmphi:	; n,
	lbhi	L73	;
	stu	,s	; digit.231, digit.232
L74:
	cmpx	#99	;cmphi:	; n,
	bls	L75	;
	leax	-100,x	; n,, n
	ldd	,s	;, digit.232
	addd	#256; addhi3,3	;,
	std	,s	;, digit.232
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
	ldd	,s	;, digit.232
	addd	#8; addhi3,3	;,
	std	,s	;, digit.232
L79:
	cmpx	#19	;cmphi:	; n,
	bls	L80	;
	leax	-20,x	; n,, n
	ldd	,s	;, digit.232
	addd	#2; addhi3,3	;,
	std	,s	;, digit.232
L80:
	cmpx	#9	;cmphi:	; n,
	bls	L81	;
	leax	-10,x	; n,, n
	ldd	,s	;, digit.232
	addd	#1; addhi3,3	;,
	std	,s	;, digit.232
L81:
	tst	2,s	; zeroToSpaces
	beq	L82	;
	ldb	3,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbeq	L87	;
L82:
	ldu	,s	;, digit.232
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
	ldd	,s	;, digit.232
	addd	#4; addhi3,3	;,
	std	,s	;, digit.232
	bra	L79	;
L73:
	leax	-200,x	; n,, n
	lbra	L74	;
L70:
	cmpx	#399	;cmphi:	; n,
	bls	L88	;
	leax	-400,x	; n,, n
	ldu	#13360	; digit.231,
	ldd	#13872	;,
	std	,s	;, digit.232
	lbra	L71	;
L64:
	cmpx	#3999	;cmphi:	; n,
	lbls	L65	;
	leax	-4000,x	; n,, n
	ldd	,s	;, digit.230
	addd	#4; addhi3,3	;,
	std	,s	;, digit.230
	lbra	L65	;
L59:
	leax	-20000,x	; n,, n
	lbra	L60	;
L57:
	leax	25536,x	; n,, n
	ldu	#13360	; digit,
	ldd	#13872	;,
	std	,s	;, digit.230
	lbra	L58	;
L88:
	ldu	#12336	; digit.231,
	ldd	#12848	;,
	std	,s	;, digit.232
	lbra	L71	;
L87:
	ldu	,s	;, digit.232
	cmpu	#8240	;cmphi:	;,
	lbne	L82	;
	ldd	#8224	;,
	std	,s	;, digit.232
	lbra	L82	;
L84:
	ldd	#8240	;,
	std	,s	;, digit.230
	ldb	#1	;,
	stb	3,s	;, useSpace
	lbra	L63	;
L85:
	ldu	,s	;, digit.230
	cmpu	#8240	;cmphi:	;,
	lbne	L69	;
	ldd	#8224	;,
	std	,s	;, digit.230
	lbra	L68	;
L86:
	ldu	,s	;, digit.232
	cmpu	#12336	;cmphi:	;,
	lbne	L77	;
	ldd	#8240	;,
	std	,s	;, digit.232
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
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp41, D.3114
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
	ldy	2,s	; s1.304, s1
	ldb	,y+	;,
	stb	6,s	;, c.303
	leas	2,s	;,,
	ldu	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L99	;
	ldy	#0	; ivtmp.302,
	bra	L100	;
L108:
	ldy	2,s	; ivtmp.302, ivtmp.294
L100:
	ldb	4,s	;, c.303
	stb	_stringBuffer40,y	;,
	leax	1,y	;,, ivtmp.302
	stx	2,s	;, ivtmp.294
	leau	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,y	; tmp40,, ivtmp.302
	ldb	1,x	;,
	stb	4,s	;, c.303
	tfr	y,d	; ivtmp.302, tmp41
	addd	#2; addhi3,3	; tmp41,
	ldx	,s	;, s1
	leay	d,x	; s1.304, tmp41,
	ldb	4,s	;, c.303
	cmpb	#37	;cmpqi:	;,
	bne	L108	;
L99:
	ldb	_stringBuffer6	; c.301, stringBuffer6
	beq	L101	;
	ldx	#_stringBuffer6+1	; s2,
L102:
	stb	,u+	; c.301,
	ldb	,x+	; c.301,
	bne	L102	;
L101:
	ldb	,y	; c,* s1.304
	beq	L103	;
	leax	1,y	; s1.300,, s1.304
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
	ldx	#12592	; digit.329,
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
	ldx	#13360	; digit.321,
	ldy	#13872	;,
	sty	,s	;, digit.322
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
	ldd	,s	;, digit.322
	addd	#256; addhi3,3	;,
	std	,s	;, digit.322
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
	ldd	,s	;, digit.322
	addd	#4; addhi3,3	;,
	std	,s	;, digit.322
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
	ldd	,s	;, digit.322
	addd	#2; addhi3,3	;,
	std	,s	;, digit.322
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
	ldd	,s	;, digit.322
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
	ldx	#13360	; digit.323,
	ldy	#13872	;,
	sty	,s	;, digit.324
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
	ldd	,s	;, digit.324
	addd	#256; addhi3,3	;,
	std	,s	;, digit.324
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
	ldd	,s	;, digit.324
	addd	#4; addhi3,3	;,
	std	,s	;, digit.324
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
	ldd	,s	;, digit.324
	addd	#2; addhi3,3	;,
	std	,s	;, digit.324
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
	ldd	,s	;, digit.324
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
	ldx	#14384	; digit.325,
	ldy	#14896	;,
	sty	,s	;, digit.326
L173:
	ldd	2,s	;, n
	lbne	L176	;
	ldy	4,s	;, n
	cmpy	#1999	;cmphi:	;,
	lbhi	L176	;
	stx	,s	; digit.325, digit.326
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
	ldd	,s	;, digit.326
	addd	#8; addhi3,3	;,
	std	,s	;, digit.326
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
	ldd	,s	;, digit.326
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
	ldd	#14384	; digit.327,
	ldx	#14896	; digit.328,
L195:
	ldy	2,s	;, n
	lbne	L198	;
	ldy	4,s	;, n
	cmpy	#19	;cmphi:	;,
	lbhi	L198	;
	tfr	d,x	; digit.327, digit.328
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
	stx	8,u	; digit.328,
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
	stx	,s	; digit.329, digit
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
	ldx	#14384	; digit.321,
	ldy	#14896	;,
	sty	,s	;, digit.322
L129:
	ldd	2,s	;, n
	cmpd	#305	;cmphi:	;,
	lbhi	L132	;
L250:
	cmpd	#305	;cmphi:	; tmp2,
	lbeq	L274	;
L213:
	stx	,s	; digit.321, digit.322
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
	ldd	,s	;, digit.322
	addd	#8; addhi3,3	;,
	std	,s	;, digit.322
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
	ldx	#14384	; digit.323,
	ldy	#14896	;,
	sty	,s	;, digit.324
L151:
	ldd	2,s	;, n
	cmpd	#3	;cmphi:	;,
	lbhi	L154	;
L260:
	cmpd	#3	;cmphi:	; tmp2,
	lbeq	L275	;
L221:
	stx	,s	; digit.323, digit.324
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
	ldd	,s	;, digit.324
	addd	#8; addhi3,3	;,
	std	,s	;, digit.324
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
	leax	256,x	; digit.328,, digit.328
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L203	;
L269:
	cmpx	#12336	;cmphi:	; digit.328,
	lbne	L203	;
	ldx	#8240	; digit.328,
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
	ldd	,s	;, digit.326
	addd	#1; addhi3,3	;,
	std	,s	;, digit.326
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L191	;
L268:
	ldx	,s	;, digit.326
	cmpx	#8240	;cmphi:	;,
	lbne	L191	;
	ldy	#8224	;,
	sty	,s	;, digit.326
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
	ldd	,s	;, digit.326
	addd	#2; addhi3,3	;,
	std	,s	;, digit.326
	lbra	L187	;
L230:
	ldd	4,s	;, n
	addd	#-1000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldd	,s	;, digit.326
	addd	#256; addhi3,3	;,
	std	,s	;, digit.326
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L181	;
L267:
	ldx	,s	;, digit.326
	cmpx	#12336	;cmphi:	;,
	lbne	L181	;
	ldy	#8240	;,
	sty	,s	;, digit.326
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
	ldd	,s	;, digit.324
	addd	#1; addhi3,3	;,
	std	,s	;, digit.324
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L169	;
L266:
	ldx	,s	;, digit.324
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
	ldd	,s	;, digit.322
	addd	#1; addhi3,3	;,
	std	,s	;, digit.322
	ldb	6,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	lbne	L147	;
L257:
	ldx	,s	;, digit.322
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
	ldx	#13104	; digit.329,
	lbra	L112	;
L259:
	cmpd	#6	;cmphi:	; tmp1,
	lbeq	L276	;
L220:
	ldx	#12336	; digit.323,
	ldd	#12848	;,
	std	,s	;, digit.324
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
	ldx	#12336	; digit.321,
	ldd	#12848	;,
	std	,s	;, digit.322
	lbra	L129	;
L271:
	cmpx	#6103	;cmphi:	; tmp2,
	lbne	L119	;
	ldd	4,s	;, n
	cmpd	#-31745	;cmphi:	;,
	lbls	L119	;
	lbra	L208	;
L262:
	ldx	,s	;, digit.324
	cmpx	#12336	;cmphi:	;,
	lbne	L159	;
	ldy	#8240	;,
	sty	,s	;, digit.324
	lbra	L160	;
L252:
	ldx	,s	;, digit.322
	cmpx	#12336	;cmphi:	;,
	lbne	L137	;
	ldy	#8240	;,
	sty	,s	;, digit.322
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
	ldd	#12336	; digit.327,
	ldx	#12848	; digit.328,
	lbra	L195	;
L239:
	cmpy	#3999	;cmphi:	; tmp6,
	bhi	L174	;
	ldx	#12336	; digit.325,
	ldy	#12848	;,
	sty	,s	;, digit.326
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
	ldd	,s	;, digit.326
	addd	#4; addhi3,3	;,
	std	,s	;, digit.326
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
	ldd	#13360	; digit.327,
	ldx	#13872	; digit.328,
	lbra	L195	;
L174:
	ldd	4,s	;, n
	addd	#-4000	;,
	std	4,s	;, n
	ldd	2,s	;, n
	adcb	#-1	;
	adca	#-1	;
	std	2,s	;, n
	ldx	#13360	; digit.325,
	ldy	#13872	;,
	sty	,s	;, digit.326
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
	ldu	4,s	; s1.392, s1
	ldb	,u+	;,
	stb	8,s	;, c.391
	leas	4,s	;,,
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L284	;
	ldu	#0	; ivtmp.390,
	bra	L285	;
L293:
	ldu	2,s	; ivtmp.390, ivtmp.382
L285:
	ldb	4,s	;, c.391
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.390
	stx	2,s	;, ivtmp.382
	leay	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,u	; tmp39,, ivtmp.390
	ldb	1,x	;,
	stb	4,s	;, c.391
	tfr	u,d	; ivtmp.390, tmp40
	addd	#2; addhi3,3	; tmp40,
	ldx	,s	;, s1
	leau	d,x	; s1.392, tmp40,
	ldb	4,s	;, c.391
	cmpb	#37	;cmpqi:	;,
	bne	L293	;
L284:
	ldb	_stringBuffer12	; c.389, stringBuffer12
	beq	L286	;
	ldx	#_stringBuffer12+1	; s2,
L287:
	stb	,y+	; c.389,
	ldb	,x+	; c.389,
	bne	L287	;
L286:
	ldb	,u	; c,* s1.392
	beq	L288	;
	leax	1,u	; s1.388,, s1.392
L289:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L289	;
L288:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	_setRandSeedNP
_setRandSeedNP:
	leas	-4,s	;,,
	ldb	__x	;, _x
	stb	,s	;, _x.14
	ldb	#-127	; tmp32,
	subb	,s	; tmp32, _x.14
	stb	1,s	; tmp32, _c.17
	ldb	,s	;, _x.14
	incb	;
	stb	2,s	;, _x.18
	stb	__x	;, _x
	ldb	#73	; tmp34,
	subb	,s	; tmp33, _x.14
	eorb	1,s	; tmp33, _c.17
	eorb	2,s	; tmp33, _x.18
	stb	3,s	; tmp33, _a.21
	stb	__a	; tmp33, _a
	subb	,s	; _b.23, _x.14
	addb	#-45	; _b.23,
	stb	__b	; _b.23, _b
	lsrb	; _b.23
	addb	1,s	; _b.23, _c.17
	eorb	3,s	; _b.23, _a.21
	stb	__c	; _b.23, _c
	leas	4,s	;,,
	rts
	.globl	_initString
_initString:
	ldb	#12	;,
	stb	__x	;, _x
	addb	#56	;,
	stb	__a	;, _a
	ldb	#12	;,
	stb	__b	;, _b
	ldb	#56	;,
	stb	__c	;, _c
	clr	_msgLine	; msgLine
	clr	__YC	; _YC
	ldb	#-112	;,
	stb	__XC	;, _XC
	rts
	.globl	__fi
__fi:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	2,s	; s1, s1
	jsr	_itoa
	stx	4,s	;, D.3218
	ldx	2,s	;, s1
	leax	1,x	;,,
	stx	,s	;, s1.452
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	8,s	;, c.451
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L300	;
	ldu	#0	; ivtmp.442,
	bra	L301	;
L309:
	ldu	6,s	; ivtmp.442, ivtmp.449
L301:
	ldb	8,s	;, c.451
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.442
	stx	6,s	;, ivtmp.449
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp41,, ivtmp.442
	ldb	1,x	;,
	stb	8,s	;, c.451
	tfr	u,d	; ivtmp.442, tmp42
	addd	#2; addhi3,3	; tmp42,
	ldx	2,s	;, s1
	leax	d,x	;, tmp42,
	stx	,s	;, s1.452
	ldb	8,s	;, c.451
	cmpb	#37	;cmpqi:	;,
	bne	L309	;
L300:
	ldx	4,s	;, D.3218
	ldb	,x	; c.450,
	beq	L302	;
	leax	1,x	; s2,,
L303:
	stb	,y+	; c.450,
	ldb	,x+	; c.450,
	bne	L303	;
L302:
	ldu	,s	;, s1.452
	ldb	,u	; c,
	beq	L304	;
	leax	1,u	; s1.448,,
L305:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L305	;
L304:
	ldb	#-128	;,
	stb	,y	;,* to
	ldx	#_stringBuffer40	;,
	leas	9,s	;,,
	puls	y,u,pc	;
	.globl	__fi_s_s
__fi_s_s:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	2,s	; s1, s1
	jsr	_itoa_s_s
	stx	4,s	;, D.3225
	ldx	2,s	;, s1
	leax	1,x	;,,
	stx	,s	;, s1.492
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	8,s	;, c.491
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L312	;
	ldu	#0	; ivtmp.482,
	bra	L313	;
L321:
	ldu	6,s	; ivtmp.482, ivtmp.489
L313:
	ldb	8,s	;, c.491
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.482
	stx	6,s	;, ivtmp.489
	leay	_stringBuffer40,x	; to,,
	ldd	2,s	;, s1
	leax	d,u	; tmp41,, ivtmp.482
	ldb	1,x	;,
	stb	8,s	;, c.491
	tfr	u,d	; ivtmp.482, tmp42
	addd	#2; addhi3,3	; tmp42,
	ldx	2,s	;, s1
	leax	d,x	;, tmp42,
	stx	,s	;, s1.492
	ldb	8,s	;, c.491
	cmpb	#37	;cmpqi:	;,
	bne	L321	;
L312:
	ldx	4,s	;, D.3225
	ldb	,x	; c.490,
	beq	L314	;
	leax	1,x	; s2,,
L315:
	stb	,y+	; c.490,
	ldb	,x+	; c.490,
	bne	L315	;
L314:
	ldu	,s	;, s1.492
	ldb	,u	; c,
	beq	L316	;
	leax	1,u	; s1.488,,
L317:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L317	;
L316:
	ldb	#-128	;,
	stb	,y	;,* to
	ldx	#_stringBuffer40	;,
	leas	9,s	;,,
	puls	y,u,pc	;
	.globl	_itoa_s_s
_itoa_s_s:
	leas	-3,s	;,,
	stb	,s	; n, n
	lblt	L323	;
	clr	1,s	; sign
L324:
	ldb	,s	;, n
	cmpb	#99	;cmpqi:	;,
	ble	L325	;
	addb	#-100	;,
	stb	,s	;, n
	ldx	#12592	; digit,
	clr	2,s	; useSpace
L326:
	cmpb	#19	;cmpqi:	;,
	ble	L328	;
	addb	#-20	;,
	stb	,s	;, n
	leax	2,x	; digit,, digit
L328:
	cmpb	#9	;cmpqi:	;,
	ble	L330	;
L336:
	addb	#-10	;,
	stb	,s	;, n
	leax	1,x	; digit,, digit
L331:
	stx	_stringBuffer6	; digit,
	ldb	,s	;, n
	addb	#48	;,
	stb	_stringBuffer6+2	;, stringBuffer6
	clr	_stringBuffer6+3	; stringBuffer6
	ldx	#_stringBuffer6	;,
	jsr	_removeSpaces
	ldb	_stringBuffer6+3	;, stringBuffer6
	stb	_stringBuffer6+4	;, stringBuffer6
	ldb	_stringBuffer6+2	;, stringBuffer6
	stb	_stringBuffer6+3	;, stringBuffer6
	ldb	_stringBuffer6+1	;, stringBuffer6
	stb	_stringBuffer6+2	;, stringBuffer6
	ldb	_stringBuffer6	;, stringBuffer6
	stb	_stringBuffer6+1	;, stringBuffer6
	tst	1,s	; sign
	bne	L335	;
	ldb	#43	;,
	stb	_stringBuffer6	;, stringBuffer6
	ldx	#_stringBuffer6	;,
	leas	3,s	;,,
	rts
L325:
	cmpb	#79	;cmpqi:	;,
	ble	L327	;
	addb	#-80	;,
	stb	,s	;, n
	ldx	#8248	; digit,
	ldb	#1	;,
	stb	2,s	;, useSpace
	ldb	,s	;, n
	cmpb	#9	;cmpqi:	;,
	bgt	L336	;
L330:
	cmpx	#8240	;cmphi:	; digit,
	bne	L331	;
	ldb	2,s	;, useSpace
	cmpb	#1	;cmpqi:	;,
	bne	L331	;
	ldx	#8224	; digit,
	bra	L331	;
L335:
	ldb	#45	;,
	stb	_stringBuffer6	;, stringBuffer6
	ldx	#_stringBuffer6	;,
	leas	3,s	;,,
	rts
L323:
	neg	,s	; n
	ldb	#1	;,
	stb	1,s	;, sign
	lbra	L324	;
L327:
	ldx	#8240	; digit,
	ldb	#1	;,
	stb	2,s	;, useSpace
	ldb	,s	;, n
	cmpb	#39	;cmpqi:	;,
	lble	L326	;
	addb	#-40	;,
	stb	,s	;, n
	ldx	#8244	; digit,
	ldb	#1	;,
	stb	2,s	;, useSpace
	ldb	,s	;, n
	lbra	L326	;
	.globl	_ltoa_s
_ltoa_s:
	pshs	y	;
	ldy	#_stringBuffer6	; tmp30,
	pshs	y	; tmp30
	ldb	#1	;,
	jsr	__ltoa
	leas	2,s	;,,
	leax	,y	;, tmp30
	puls	y	;
	jmp	_removeSpaces	;
	.globl	__fss
__fss:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	4,s	; s1, s1
	leax	1,x	; s1,, s1
	stx	2,s	; s1, s1.575
	leax	-1,x	; s1,, s1
	ldb	,x+	;,
	stb	8,s	;, c.574
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L341	;
	ldu	#0	; ivtmp.560,
	bra	L342	;
L357:
	ldu	6,s	; ivtmp.560, ivtmp.566
L342:
	ldb	8,s	;, c.574
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.560
	stx	6,s	;, ivtmp.566
	leay	_stringBuffer40,x	; to,,
	ldd	4,s	;, s1
	leax	d,u	; tmp44,, ivtmp.560
	ldb	1,x	;,
	stb	8,s	;, c.574
	tfr	u,d	; ivtmp.560, tmp45
	addd	#2; addhi3,3	; tmp45,
	ldx	4,s	;, s1
	leax	d,x	;, tmp45,
	stx	2,s	;, s1.575
	ldb	8,s	;, c.574
	cmpb	#37	;cmpqi:	;,
	bne	L357	;
L341:
	ldx	15,s	;, s2
	ldb	,x	; c.572,
	beq	L343	;
	leax	1,x	; s2.573,,
L344:
	stb	,y+	; c.572,
	ldb	,x+	; c.572,
	bne	L344	;
L343:
	ldu	2,s	; s1.571, s1.575
	ldb	,u+	; c.570,
	cmpb	#37	;cmpqi:	; c.570,
	beq	L345	;
L352:
	stb	,y+	; c.570,
	ldb	,u+	; c.570,
	cmpb	#37	;cmpqi:	; c.570,
	bne	L352	;
L345:
	ldx	17,s	;, s3
	ldb	,x	; c.568,
	beq	L347	;
	leax	1,x	;,,
	stx	,s	;, s3.567
L348:
	stb	,y+	; c.568,
	ldx	,s	;, s3.567
	leax	1,x	;,,
	stx	,s	;, s3.567
	leax	-1,x	;,,
	ldb	,x+	; c.568,
	bne	L348	;
L347:
	ldb	,u	; c,* s1.571
	beq	L349	;
	leax	1,u	; s1.569,, s1.571
L350:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L350	;
L349:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	9,s	;,,
	puls	y,u,pc	;
	.globl	__fsi2_s
__fsi2_s:
	pshs	y,u	;
	leas	-7,s	;,,
	stx	2,s	; s1, s1
	jsr	_itoa
	ldx	#_stringBuffer4	;,
	jsr	_removeSpaces
	ldu	2,s	; s1.630, s1
	ldb	,u+	;,
	stb	6,s	;, c.629
	ldx	#_stringBuffer40	;,
	stx	4,s	;, to
	cmpb	#37	;cmpqi:	;,
	beq	L360	;
	ldu	#0	; ivtmp.616,
	bra	L361	;
L375:
	leau	,y	; ivtmp.616, ivtmp.625
L361:
	ldb	6,s	;, c.629
	stb	_stringBuffer40,u	;,
	leay	1,u	; ivtmp.625,, ivtmp.616
	leax	_stringBuffer40,y	;,, ivtmp.625
	stx	4,s	;, to
	ldd	2,s	;, s1
	leax	d,u	; tmp45,, ivtmp.616
	ldb	1,x	;,
	stb	6,s	;, c.629
	tfr	u,d	; ivtmp.616, tmp46
	addd	#2; addhi3,3	; tmp46,
	ldx	2,s	;, s1
	leau	d,x	; s1.630, tmp46,
	ldb	6,s	;, c.629
	cmpb	#37	;cmpqi:	;,
	bne	L375	;
L360:
	ldx	4,s	; to.623, to
	ldb	_stringBuffer4	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+1	; D.3299, stringBuffer4
	beq	L362	;
	stb	,x+	; D.3299,
L362:
	ldb	_stringBuffer4+2	; D.3301, stringBuffer4
	beq	L363	;
	stb	,x+	; D.3301,
L363:
	leay	,u	; s1.628, s1.630
	ldb	,y+	; c.627,
	cmpb	#37	;cmpqi:	; c.627,
	beq	L364	;
L371:
	stb	,x+	; c.627,
	ldb	,y+	; c.627,
	cmpb	#37	;cmpqi:	; c.627,
	bne	L371	;
L364:
	ldu	13,s	;, s2
	ldb	,u	; c.626,
	beq	L366	;
	leau	1,u	;,,
	stu	,s	;, s2.624
L367:
	stb	,x+	; c.626,
	ldu	,s	;, s2.624
	leau	1,u	;,,
	stu	,s	;, s2.624
	leau	-1,u	;,,
	ldb	,u+	; c.626,
	bne	L367	;
L366:
	ldb	,y	; c,* s1.628
	beq	L368	;
	leau	1,y	; s1.622,, s1.628
L369:
	stb	,x+	; c,
	ldb	,u+	; c,
	bne	L369	;
L368:
	ldb	#-128	;,
	stb	,x	;,* to.623
	leas	7,s	;,,
	puls	y,u,pc	;
	.globl	__fsi_s
__fsi_s:
	pshs	y,u	;
	leas	-7,s	;,,
	stx	2,s	; s1, s1
	jsr	_itoa
	ldx	#_stringBuffer4	;,
	jsr	_removeSpaces
	ldx	2,s	;, s1
	leax	1,x	;,,
	stx	,s	;, s1.685
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	6,s	;, c.684
	ldy	#_stringBuffer40	; to.678,
	cmpb	#37	;cmpqi:	;,
	beq	L378	;
	ldu	#0	; ivtmp.671,
	bra	L379	;
L393:
	ldu	4,s	; ivtmp.671, ivtmp.681
L379:
	ldb	6,s	;, c.684
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.671
	stx	4,s	;, ivtmp.681
	leay	_stringBuffer40,x	; to.678,,
	ldd	2,s	;, s1
	leax	d,u	; tmp45,, ivtmp.671
	ldb	1,x	;,
	stb	6,s	;, c.684
	tfr	u,d	; ivtmp.671, tmp46
	addd	#2; addhi3,3	; tmp46,
	ldx	2,s	;, s1
	leax	d,x	;, tmp46,
	stx	,s	;, s1.685
	ldb	6,s	;, c.684
	cmpb	#37	;cmpqi:	;,
	bne	L393	;
L378:
	ldx	13,s	;, s2
	ldb	,x	; c.682,
	beq	L380	;
	leax	1,x	; s2.683,,
L381:
	stb	,y+	; c.682,
	ldb	,x+	; c.682,
	bne	L381	;
L380:
	ldx	,s	; s1.680, s1.685
	ldb	,x+	; c.679,
	cmpb	#37	;cmpqi:	; c.679,
	beq	L382	;
L389:
	stb	,y+	; c.679,
	ldb	,x+	; c.679,
	cmpb	#37	;cmpqi:	; c.679,
	bne	L389	;
L382:
	leau	,y	; to, to.678
	ldb	_stringBuffer4	;, stringBuffer4
	stb	,u+	;,
	ldb	_stringBuffer4+1	; D.3329, stringBuffer4
	beq	L384	;
	stb	,u+	; D.3329,
L384:
	ldb	_stringBuffer4+2	; D.3331, stringBuffer4
	beq	L385	;
	stb	,u+	; D.3331,
L385:
	ldb	,x	; c,* s1.680
	beq	L386	;
	leax	1,x	; s1.677,, s1.680
L387:
	stb	,u+	; c,
	ldb	,x+	; c,
	bne	L387	;
L386:
	ldb	#-128	;,
	stb	,u	;,* to
	leas	7,s	;,,
	puls	y,u,pc	;
	.globl	__fsi2
__fsi2:
	pshs	y,u	;
	leas	-10,s	;,,
	stx	1,s	; s1, s1
	jsr	_itoa
	ldx	1,s	;, s1
	leax	1,x	;,,
	stx	8,s	;, s1.742
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	7,s	;, c.741
	ldx	#_stringBuffer40	;,
	stx	3,s	;, to.734
	cmpb	#37	;cmpqi:	;,
	beq	L396	;
	ldu	#0	; ivtmp.740,
	bra	L397	;
L408:
	leau	,y	; ivtmp.740, ivtmp.726
L397:
	ldb	7,s	;, c.741
	stb	_stringBuffer40,u	;,
	leay	1,u	; ivtmp.726,, ivtmp.740
	leax	_stringBuffer40,y	;,, ivtmp.726
	stx	3,s	;, to.734
	ldd	1,s	;, s1
	leax	d,u	; tmp46,, ivtmp.740
	ldb	1,x	;,
	stb	7,s	;, c.741
	tfr	u,d	; ivtmp.740, tmp47
	addd	#2; addhi3,3	; tmp47,
	addd	1,s; addhi3,3	; tmp47, s1
	std	8,s	; tmp47, s1.742
	ldb	7,s	;, c.741
	cmpb	#37	;cmpqi:	;,
	bne	L408	;
L396:
	ldx	3,s	; to, to.734
	ldb	_stringBuffer4	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+1	;, stringBuffer4
	stb	,x+	;,
	leay	,x	; to.733, to.732
	ldb	_stringBuffer4+2	;, stringBuffer4
	stb	,y+	;,
	ldx	8,s	;, s1.742
	leax	1,x	;,,
	stx	5,s	;, s1.739
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	,s	;, c.738
	cmpb	#37	;cmpqi:	;,
	beq	L398	;
	ldu	#0	; ivtmp.718,
L399:
	ldd	3,s	;, to.734
	leax	d,u	; tmp51,, ivtmp.718
	ldb	,s	;, c.738
	stb	3,x	;,
	leax	4,u	; tmp52,, ivtmp.718
	ldd	3,s	;, to.734
	leay	d,x	; to.733,, tmp52
	ldd	8,s	;, s1.742
	leax	d,u	; tmp53,, ivtmp.718
	ldb	1,x	;,
	stb	,s	;, c.738
	leax	2,u	; tmp54,, ivtmp.718
	exg	d,x	;, tmp54
	addd	8,s; addhi3,3	;, s1.742
	exg	d,x	;, tmp54
	stx	5,s	; tmp54, s1.739
	leau	1,u	; ivtmp.718,, ivtmp.718
	cmpb	#37	;cmpqi:	;,
	bne	L399	;
L398:
	ldx	16,s	;, s2
	ldb	,x	; c.736,
	beq	L400	;
	leax	1,x	; s2.735,,
L401:
	stb	,y+	; c.736,
	ldb	,x+	; c.736,
	bne	L401	;
L400:
	ldu	5,s	;, s1.739
	ldb	,u	; c,
	beq	L402	;
	leax	1,u	; s1.737,,
L403:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L403	;
L402:
	ldb	#-128	;,
	stb	,y	;,* to.733
	leas	10,s	;,,
	puls	y,u,pc	;
	.globl	__fsi
__fsi:
	pshs	y,u	;
	leas	-12,s	;,,
	stx	3,s	; s1, s1
	jsr	_itoa
	ldx	3,s	;, s1
	leax	1,x	;,,
	stx	1,s	;, s1.798
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	11,s	;, c.797
	ldy	#_stringBuffer40	; to.790,
	cmpb	#37	;cmpqi:	;,
	beq	L411	;
	ldu	#0	; ivtmp.794,
	bra	L412	;
L424:
	ldu	5,s	; ivtmp.794, ivtmp.783
L412:
	ldb	11,s	;, c.797
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.794
	stx	5,s	;, ivtmp.783
	leay	_stringBuffer40,x	; to.790,,
	ldd	3,s	;, s1
	leax	d,u	; tmp45,, ivtmp.794
	ldb	1,x	;,
	stb	11,s	;, c.797
	tfr	u,d	; ivtmp.794, tmp46
	addd	#2; addhi3,3	; tmp46,
	ldx	3,s	;, s1
	leax	d,x	;, tmp46,
	stx	1,s	;, s1.798
	ldb	11,s	;, c.797
	cmpb	#37	;cmpqi:	;,
	bne	L424	;
L411:
	ldx	18,s	;, s2
	ldb	,x	; c.795,
	beq	L413	;
	leau	1,x	; s2.796,,
L414:
	stb	,y+	; c.795,
	ldb	,u+	; c.795,
	bne	L414	;
L413:
	ldu	1,s	;, s1.798
	leau	1,u	;,,
	stu	9,s	;, s1.792
	leau	-1,u	;,,
	ldb	,u+	; c.793,
	cmpb	#37	;cmpqi:	; c.793,
	beq	L415	;
L420:
	stb	,y+	; c.793,
	ldx	9,s	;, s1.792
	leax	1,x	;,,
	stx	9,s	;, s1.792
	leax	-1,x	;,,
	ldb	,x+	; c.793,
	cmpb	#37	;cmpqi:	; c.793,
	bne	L420	;
L415:
	leax	,y	; to, to.790
	ldb	_stringBuffer4	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+1	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+2	;, stringBuffer4
	leax	1,x	; to.789,, to.789
	stx	7,s	; to.789, to.791
	leax	-1,x	; to.789,, to.789
	stb	,x+	;,
	ldx	9,s	;, s1.792
	ldb	,x	;,
	stb	,s	;, c
	beq	L417	;
	ldu	#0	; ivtmp.761,
L418:
	tfr	y,d	; to.790,
	leax	d,u	; tmp50,, ivtmp.761
	ldb	,s	;, c
	stb	3,x	;,
	leax	4,u	; tmp51,, ivtmp.761
	tfr	y,d	; to.790,
	leax	d,x	;,, tmp51
	stx	7,s	;, to.791
	ldd	9,s	;, s1.792
	leax	d,u	; tmp52,, ivtmp.761
	ldb	1,x	;,
	stb	,s	;, c
	leau	1,u	; ivtmp.761,, ivtmp.761
	tstb	;
	bne	L418	;
L417:
	ldb	#-128	;,
	ldx	7,s	;, to.791
	stb	,x	;,
	leas	12,s	;,,
	puls	y,u,pc	;
	.globl	__fl
__fl:
	pshs	y,u	;
	leas	-5,s	;,,
	stx	,s	; s1, s1
	ldx	#_stringBuffer6	;,
	stx	,--s	;,
	ldb	#1	;,
	ldx	13,s	;, i
	jsr	__ltoa
	ldu	2,s	; s1.840, s1
	ldb	,u+	;,
	stb	6,s	;, c.839
	leas	2,s	;,,
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L427	;
	ldu	#0	; ivtmp.838,
	bra	L428	;
L436:
	ldu	2,s	; ivtmp.838, ivtmp.830
L428:
	ldb	4,s	;, c.839
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.838
	stx	2,s	;, ivtmp.830
	leay	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,u	; tmp40,, ivtmp.838
	ldb	1,x	;,
	stb	4,s	;, c.839
	tfr	u,d	; ivtmp.838, tmp41
	addd	#2; addhi3,3	; tmp41,
	ldx	,s	;, s1
	leau	d,x	; s1.840, tmp41,
	ldb	4,s	;, c.839
	cmpb	#37	;cmpqi:	;,
	bne	L436	;
L427:
	ldb	_stringBuffer6	; c.837, stringBuffer6
	beq	L429	;
	ldx	#_stringBuffer6+1	; s2,
L430:
	stb	,y+	; c.837,
	ldb	,x+	; c.837,
	bne	L430	;
L429:
	ldb	,u	; c,* s1.840
	beq	L431	;
	leax	1,u	; s1.836,, s1.840
L432:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L432	;
L431:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	__fl_l_s
__fl_l_s:
	pshs	y,u	;
	leas	-5,s	;,,
	stx	,s	; s1, s1
	ldy	#_stringBuffer12	; tmp43,
	pshs	y	; tmp43
	ldb	#1	;,
	ldx	13,s	;, i1
	jsr	__ltoa
	leax	,y	;, tmp43
	jsr	_removeSpaces
	ldy	#_stringBufferExtra	; tmp44,
	pshs	y	; tmp44
	ldb	#1	;,
	ldx	17,s	;, i2
	jsr	__ltoa
	leax	,y	;, tmp44
	jsr	_removeSpaces
	ldy	4,s	; s1.900, s1
	ldb	,y+	;,
	stb	8,s	;, c.899
	leas	4,s	;,,
	ldu	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L439	;
	ldy	#0	; ivtmp.893,
	bra	L440	;
L456:
	ldy	2,s	; ivtmp.893, ivtmp.887
L440:
	ldb	4,s	;, c.899
	stb	_stringBuffer40,y	;,
	leax	1,y	;,, ivtmp.893
	stx	2,s	;, ivtmp.887
	leau	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,y	; tmp46,, ivtmp.893
	ldb	1,x	;,
	stb	4,s	;, c.899
	tfr	y,d	; ivtmp.893, tmp47
	addd	#2; addhi3,3	; tmp47,
	ldx	,s	;, s1
	leay	d,x	; s1.900, tmp47,
	ldb	4,s	;, c.899
	cmpb	#37	;cmpqi:	;,
	bne	L456	;
L439:
	ldb	_stringBuffer12	; c.898, stringBuffer12
	beq	L455	;
	ldx	#_stringBuffer12+1	; from,
L442:
	stb	,u+	; c.898,
	ldb	,x+	; c.898,
	bne	L442	;
	ldb	,y+	; c.896,
	cmpb	#37	;cmpqi:	; c.896,
	beq	L457	;
L450:
	stb	,u+	; c.896,
L455:
	ldb	,y+	; c.896,
	cmpb	#37	;cmpqi:	; c.896,
	bne	L450	;
L457:
	ldb	_stringBufferExtra	; c.894, stringBufferExtra
	beq	L445	;
	ldx	#_stringBufferExtra+1	; from2,
L446:
	stb	,u+	; c.894,
	ldb	,x+	; c.894,
	bne	L446	;
L445:
	ldb	,y	; c,* s1.897
	beq	L447	;
	leax	1,y	; s1.895,, s1.897
L448:
	stb	,u+	; c,
	ldb	,x+	; c,
	bne	L448	;
L447:
	ldb	#-128	;,
	stb	,u	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	__fll
__fll:
	pshs	y,u	;
	leas	-9,s	;,,
	stx	4,s	; s1, s1
	ldx	15,s	;, i
	stx	,s	;,
	ldd	17,s	;, i
	std	2,s	;,
	ldx	#_stringBuffer12	;,
	jsr	__lltoa
	ldu	4,s	; s1.942, s1
	ldb	,u+	;,
	stb	8,s	;, c.941
	leas	4,s	;,,
	ldy	#_stringBuffer40	; to,
	cmpb	#37	;cmpqi:	;,
	beq	L460	;
	ldu	#0	; ivtmp.940,
	bra	L461	;
L469:
	ldu	2,s	; ivtmp.940, ivtmp.932
L461:
	ldb	4,s	;, c.941
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.940
	stx	2,s	;, ivtmp.932
	leay	_stringBuffer40,x	; to,,
	ldd	,s	;, s1
	leax	d,u	; tmp39,, ivtmp.940
	ldb	1,x	;,
	stb	4,s	;, c.941
	tfr	u,d	; ivtmp.940, tmp40
	addd	#2; addhi3,3	; tmp40,
	ldx	,s	;, s1
	leau	d,x	; s1.942, tmp40,
	ldb	4,s	;, c.941
	cmpb	#37	;cmpqi:	;,
	bne	L469	;
L460:
	ldb	_stringBuffer12	; c.939, stringBuffer12
	beq	L462	;
	ldx	#_stringBuffer12+1	; from,
L463:
	stb	,y+	; c.939,
	ldb	,x+	; c.939,
	bne	L463	;
L462:
	ldb	,u	; c,* s1.942
	beq	L464	;
	leax	1,u	; s1.938,, s1.942
L465:
	stb	,y+	; c,
	ldb	,x+	; c,
	bne	L465	;
L464:
	ldb	#-128	;,
	stb	,y	;,* to
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	_printfsi
_printfsi:
	pshs	y,u	;
	leas	-12,s	;,,
	stx	3,s	; s1, s1
	jsr	_itoa
	ldx	3,s	;, s1
	leax	1,x	;,,
	stx	1,s	;, s1.998
	leax	-1,x	;,,
	ldb	,x+	;,
	stb	11,s	;, c.997
	ldy	#_stringBuffer40	; to.990,
	cmpb	#37	;cmpqi:	;,
	beq	L472	;
	ldu	#0	; ivtmp.994,
	bra	L473	;
L485:
	ldu	5,s	; ivtmp.994, ivtmp.983
L473:
	ldb	11,s	;, c.997
	stb	_stringBuffer40,u	;,
	leax	1,u	;,, ivtmp.994
	stx	5,s	;, ivtmp.983
	leay	_stringBuffer40,x	; to.990,,
	ldd	3,s	;, s1
	leax	d,u	; tmp46,, ivtmp.994
	ldb	1,x	;,
	stb	11,s	;, c.997
	tfr	u,d	; ivtmp.994, tmp47
	addd	#2; addhi3,3	; tmp47,
	ldx	3,s	;, s1
	leax	d,x	;, tmp47,
	stx	1,s	;, s1.998
	ldb	11,s	;, c.997
	cmpb	#37	;cmpqi:	;,
	bne	L485	;
L472:
	ldx	18,s	;, s2
	ldb	,x	; c.995,
	beq	L474	;
	leau	1,x	; s2.996,,
L475:
	stb	,y+	; c.995,
	ldb	,u+	; c.995,
	bne	L475	;
L474:
	ldu	1,s	;, s1.998
	leau	1,u	;,,
	stu	9,s	;, s1.993
	leau	-1,u	;,,
	ldb	,u+	; c.992,
	cmpb	#37	;cmpqi:	; c.992,
	beq	L476	;
L481:
	stb	,y+	; c.992,
	ldx	9,s	;, s1.993
	leax	1,x	;,,
	stx	9,s	;, s1.993
	leax	-1,x	;,,
	ldb	,x+	; c.992,
	cmpb	#37	;cmpqi:	; c.992,
	bne	L481	;
L476:
	leax	,y	; to, to.990
	ldb	_stringBuffer4	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+1	;, stringBuffer4
	stb	,x+	;,
	ldb	_stringBuffer4+2	;, stringBuffer4
	leax	1,x	; to.989,, to.989
	stx	7,s	; to.989, to.991
	leax	-1,x	; to.989,, to.989
	stb	,x+	;,
	ldx	9,s	;, s1.993
	ldb	,x	;,
	stb	,s	;, c
	beq	L478	;
	ldu	#0	; ivtmp.961,
L479:
	tfr	y,d	; to.990,
	leax	d,u	; tmp51,, ivtmp.961
	ldb	,s	;, c
	stb	3,x	;,
	leax	4,u	; tmp52,, ivtmp.961
	tfr	y,d	; to.990,
	leax	d,x	;,, tmp52
	stx	7,s	;, to.991
	ldd	9,s	;, s1.993
	leax	d,u	; tmp53,, ivtmp.961
	ldb	1,x	;,
	stb	,s	;, c
	leau	1,u	; ivtmp.961,, ivtmp.961
	tstb	;
	bne	L479	;
L478:
	ldb	#-128	;,
	ldx	7,s	;, to.991
	stb	,x	;,
	ldb	__YC	; _YC.28, _YC
	addb	#-10	; _YC.28,
	stb	__YC	; _YC.28, _YC
	pshs	b	; _YC.28
	ldx	#_stringBuffer40	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	13,s	;,,
	puls	y,u,pc	;
	.globl	_vstrlen
_vstrlen:
	pshs	u	;
	leas	-1,s	;,,
	leau	,x	; s, s
	ldb	,x	; temp.1018,* s
	beq	L487	;
	cmpb	#-128	;cmpqi:	; temp.1018,
	bne	L489	;
	bra	L487	;
L492:
	cmpb	#-128	;cmpqi:	; D.3494,
	beq	L488	;
L489:
	tfr	u,d	;movlsbqihi: R:u -> R:b	; s,
	stb	,s	;, t
	ldb	#1	; tmp49,
	subb	,s	; tmp49, t
	stb	,s	; tmp49, t
	tfr	x,d	;movlsbqihi: R:x -> R:b	; s.1017, s.1017
	addb	,s	; s.1017, t
	stb	,s	; s.1017, t
	leax	1,x	; s.1017,, s.1017
	ldb	,x	; D.3494,* s.1017
	bne	L492	;
L488:
	ldb	,s	;, t
	leas	1,s	;,,
	puls	u,pc	;
L487:
	clr	,s	; t
	bra	L488	;
	.globl	_exchange0with80
_exchange0with80:
	bra	L500	;
L501:
	cmpb	#-128	;cmpqi:	; temp.1036,
	beq	L494	;
	leax	1,x	; s,, s
L500:
	ldb	,x	; D.3502,* s
	bne	L501	;
L494:
	ldb	#-128	;,
	stb	,x	;,* s
	rts
	.globl	_displayMessages
_displayMessages:
	pshs	u	;
	leas	-1,s	;,,
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#40	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
	addb	#55	;,
	jsr	__Intensity_a
	ldb	#-84	;,
	stb	__YC	;, _YC
	tst	_msgLine	; msgLine
	ble	L505	;
	ldu	#_msg	; ivtmp.1055,
	clr	,s	; i
L504:
	ldx	,u++	; D.3510, msg
	ldb	__YC	; _YC.32, _YC
	addb	#-10	; _YC.32,
	stb	__YC	; _YC.32, _YC
	pshs	b	; _YC.32
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	inc	1,s	; i
	leas	1,s	;,,
	ldb	,s	;, i
	cmpb	_msgLine	;cmpqi:(R)	;, msgLine
	blt	L504	;
L505:
	leas	1,s	;,,
	puls	u,pc	;
	.globl	_lRandMax
_lRandMax:
	leas	-3,s	;,,
	stb	1,s	; m, m
	beq	L511	;
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
	tfr	x,d	;, tmp41
	clra		;zero_extendqihi: R:b -> R:d	; tmp41, prephitmp.1065
	tfr	d,x	; prephitmp.1065,
	leas	3,s	;,,
	rts
L511:
	ldd	#0	; prephitmp.1065,
	tfr	d,x	; prephitmp.1065,
	leas	3,s	;,,
	rts
