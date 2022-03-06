;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	float40.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
; C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c
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
LC0:
	.ascii	"FLOAT ERROR: %\0"
	.globl	_floatError
_floatError:
;----- asm -----
; 14 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[13]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 16 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[14]_fi_s(, (unsigned int)errno);
;--- end asm ---
	ldx	#LC0	;,
	jsr	__fi_s
;----- asm -----
; 18 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[15]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 20 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[16]while (1)
;--- end asm ---
L2:
;----- asm -----
; 23 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[18]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 25 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[19]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 27 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[20]intensity_7f();
;--- end asm ---
	jsr	___Intensity_7F
;----- asm -----
; 29 "C:\Dev\Vide\projects\Telengard\source\bank0\float40.enr.c" 1
	; #ENR#[21]displaymessages();
;--- end asm ---
	clrb	;
	jsr	_subBank1
	bra	L2	;
