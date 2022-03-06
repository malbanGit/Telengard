;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	cartridge.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
; C:\Dev\Vide\projects\Telengard\source\bank0\cartridge.enr.c
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
	.globl	_game_header
	.area	.cartridge
_game_header:
; copyright:
	.byte	103,32,71,67,69,32,49,57
	.byte	56,50,-128
; music:
	.word	_Vec_Music_1
; title_height:
	.byte	-8
; title_width:
	.byte	80
; title_y:
	.byte	-16
; title_x:
	.byte	-72
; title:
	.byte	84,69,76,69,78,71,65,82
	.byte	68,-128,0
;----- asm -----
	.area .bootloader
 jmp _endOfHeading
	.area .bankswitch.code
.setdp 0xd000,_DATA
.globl _subBank0
_subBank0:
 lda      #0xDF                          ; Prepare DDR Registers % 1101 1111 1111 1111
 sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
 lda      #0x01                          ; A = 0x01, B = 0
 sta      *_VIA_port_b                    ; ORB = 0x1 (ramp on, mux off), ORA = 0 (DAC)
 ldx      #_bankFunctions
 lslb
 ldx b,x
 jsr      ,x
 lda      #0x9F                           ; Prepare DDR Registers % 1001 1111 1111 1111
 sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
 rts
.globl _subBank1
_subBank1:
 lda      #0x9F                           ; Prepare DDR Registers % 1001 1111 1111 1111
 sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
 ldx      #_bankFunctions
 lslb
 ldx b,x
 jsr      ,x
 lda      #0xDF                          ; Prepare DDR Registers % 1101 1111 1111 1111
 sta      *_VIA_DDR_b                     ; all ORB/ORA to output except ORB 5, PB6 goes LOW
 lda      #0x01                          ; A = 0x01, B = 0
 sta      *_VIA_port_b                    ; ORB = 0x1 (ramp on, mux off), ORA = 0 (DAC)
 rts
_endOfHeading:
;--- end asm ---
	.globl	_bankFunctions
	.area	.bankswitch.data
_bankFunctions:
	.word	_titleScreen
	.word	_initFP
	.word	_generateDisplayMap
	.word	_drawMap
	.word	_loadFlash
	.word	1
	.word	1
	.word	_displayInn
	.word	_initFlash
	.word	_checkSavedFlash
