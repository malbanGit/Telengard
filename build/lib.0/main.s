;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
	.module	main.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
; C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c
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
	.area	.bss
	.globl	_screen
_screen:	.blkb	32
	.globl	_above
_above:	.blkb	1
	.globl	_realAbove
_realAbove:	.blkb	1
	.globl	_inElevator
_inElevator:	.blkb	1
	.globl	_elevatorY
_elevatorY:	.blkb	1
	.globl	_lightChange
_lightChange:	.blkb	1
	.globl	_specialAction
_specialAction:	.blkb	1
	.globl	_initSoundNo
_initSoundNo:	.blkb	1
	.globl	_timer
_timer:	.blkb	1
	.globl	_localTimer
_localTimer:	.blkb	1
	.globl	_stringBuffer4
_stringBuffer4:	.blkb	4
	.globl	_stringBuffer6
_stringBuffer6:	.blkb	6
	.globl	_stringBuffer12
_stringBuffer12:	.blkb	12
	.globl	_stringBuffer40
_stringBuffer40:	.blkb	40
	.globl	_stringBufferExtra
_stringBufferExtra:	.blkb	12
	.globl	_printDungeon
_printDungeon:	.blkb	1
	.globl	_printEnvironment
_printEnvironment:	.blkb	1
	.globl	_printTreasure
_printTreasure:	.blkb	1
	.globl	_doEffectStatus
_doEffectStatus:	.blkb	1
	.globl	_printCharacter
_printCharacter:	.blkb	1
	.globl	_printfEffect
_printfEffect:	.blkb	1
	.globl	_effectTimer
_effectTimer:	.blkb	1
	.globl	_effectOffsetY
_effectOffsetY:	.blkb	1
	.globl	_effectOffsetX
_effectOffsetX:	.blkb	1
	.globl	_fillMap
_fillMap:	.blkb	1
	.globl	_utmp
_utmp:	.blkb	1
	.globl	_tmp
_tmp:	.blkb	1
	.globl	_tmp2
_tmp2:	.blkb	1
	.globl	_ultmp
_ultmp:	.blkb	2
	.globl	_ltmp
_ltmp:	.blkb	2
	.globl	_lltmp
_lltmp:	.blkb	4
	.globl	_tmp_hp
_tmp_hp:	.blkb	2
	.globl	_tmp_lv
_tmp_lv:	.blkb	1
	.globl	_tmp_ex
_tmp_ex:	.blkb	4
	.globl	_tmp_su
_tmp_su:	.blkb	2
	.globl	_tmp_cx
_tmp_cx:	.blkb	1
	.globl	_tmp_cy
_tmp_cy:	.blkb	1
	.globl	_tmp_tg
_tmp_tg:	.blkb	4
	.globl	_tmp_s
_tmp_s:	.blkb	6
	.globl	_tmp_inventory
_tmp_inventory:	.blkb	10
	.globl	_tmp_box
_tmp_box:	.blkb	4
	.globl	_hp
_hp:	.blkb	2
	.globl	_ch
_ch:	.blkb	2
	.globl	_lv
_lv:	.blkb	1
	.globl	_ex
_ex:	.blkb	4
	.globl	_su
_su:	.blkb	2
	.globl	_cs
_cs:	.blkb	2
	.globl	_cx
_cx:	.blkb	1
	.globl	_cy
_cy:	.blkb	1
	.globl	_cz
_cz:	.blkb	1
	.globl	_gd
_gd:	.blkb	4
	.globl	_tg
_tg:	.blkb	4
	.globl	_s
_s:	.blkb	6
	.globl	_inventory
_inventory:	.blkb	10
	.globl	_sf
_sf:	.blkb	11
	.globl	_box
_box:	.blkb	4
	.globl	_m
_m:	.blkb	1
	.globl	_mh
_mh:	.blkb	2
	.globl	_db
_db:	.blkb	1
	.globl	_pa
_pa:	.blkb	1
	.globl	_dr
_dr:	.blkb	1
	.globl	_mb
_mb:	.blkb	1
	.globl	_un
_un:	.blkb	1
	.globl	_ml
_ml:	.blkb	1
	.globl	_l
_l:	.blkb	1
	.globl	_stackM
_stackM:	.blkb	20
	.globl	_stackML
_stackML:	.blkb	20
	.globl	_stackMH
_stackMH:	.blkb	40
	.globl	_lastX
_lastX:	.blkb	1
	.globl	_lastY
_lastY:	.blkb	1
	.globl	__y_
__y_:	.blkb	1
	.globl	__x_
__x_:	.blkb	1
	.globl	__XC
__XC:	.blkb	1
	.globl	__YC
__YC:	.blkb	1
	.globl	_msgLine
_msgLine:	.blkb	1
	.globl	_msg_1
_msg_1:	.blkb	40
	.globl	_msg_2
_msg_2:	.blkb	40
	.globl	_msg_3
_msg_3:	.blkb	40
	.globl	_msg_4
_msg_4:	.blkb	40
	.globl	_msg
	.area	.text
_msg:
	.word	_msg_1
	.word	_msg_2
	.word	_msg_3
	.word	_msg_4
	.area	.bss
	.globl	__x
__x:	.blkb	1
	.globl	__a
__a:	.blkb	1
	.globl	__b
__b:	.blkb	1
	.globl	__c
__c:	.blkb	1
	.globl	___x
___x:	.blkb	1
	.globl	___a
___a:	.blkb	1
	.globl	___b
___b:	.blkb	1
	.globl	___c
___c:	.blkb	1
	.globl	_fpackX0x
_fpackX0x:	.blkb	5
	.globl	_fpackY0y
_fpackY0y:	.blkb	5
	.globl	_fpackZ0z
_fpackZ0z:	.blkb	5
	.globl	_fpacktmp1
_fpacktmp1:	.blkb	5
	.globl	_fpacktmp2
_fpacktmp2:	.blkb	5
	.globl	_fpackQ
_fpackQ:	.blkb	5
	.globl	_FP0EXP
_FP0EXP:	.blkb	1
	.globl	_FPA0
_FPA0:	.blkb	4
	.globl	_FP0SGN
_FP0SGN:	.blkb	1
	.globl	_COEFCT
_COEFCT:	.blkb	1
	.globl	_STRDES
_STRDES:	.blkb	5
	.globl	_FPCARY
_FPCARY:	.blkb	1
	.globl	_FP1EXP
_FP1EXP:	.blkb	1
	.globl	_FPA1
_FPA1:	.blkb	4
	.globl	_FP1SGN
_FP1SGN:	.blkb	1
	.globl	_RESSGN
_RESSGN:	.blkb	1
	.globl	_FPSBYT
_FPSBYT:	.blkb	1
	.globl	_COEFPT
_COEFPT:	.blkb	2
	.globl	__TMPTR1
__TMPTR1:	.blkb	1
	.globl	_FPA2
_FPA2:	.blkb	4
	.globl	_V40
_V40:	.blkb	1
	.globl	_V41
_V41:	.blkb	1
	.globl	_V42
_V42:	.blkb	1
	.globl	_V43
_V43:	.blkb	1
	.globl	_V44
_V44:	.blkb	1
	.globl	_V45
_V45:	.blkb	1
	.globl	_V46
_V46:	.blkb	1
	.globl	_V47
_V47:	.blkb	1
	.globl	_V48
_V48:	.blkb	2
	.globl	_V4A
_V4A:	.blkb	1
	.globl	_V4B
_V4B:	.blkb	2
	.globl	_V4D
_V4D:	.blkb	2
	.globl	_VAB
_VAB:	.blkb	1
	.globl	_VAC
_VAC:	.blkb	1
	.globl	_VAD
_VAD:	.blkb	1
	.globl	_VAE
_VAE:	.blkb	1
	.globl	_TMPLOC
_TMPLOC:	.blkb	1
	.globl	_CHARAC
_CHARAC:	.blkb	1
	.globl	_sfx_status_1
_sfx_status_1:	.blkb	1
	.globl	_sfx_pointer_1
_sfx_pointer_1:	.blkb	2
	.globl	_currentSFX_1
_currentSFX_1:	.blkb	2
	.globl	_sfx_doframe_intern_1
_sfx_doframe_intern_1:	.blkb	2
	.globl	_PLY_error
_PLY_error:	.blkb	1
	.globl	_ACCA
_ACCA:	.blkb	1
	.globl	_ACCB
_ACCB:	.blkb	1
	.globl	_volumeRegister
_volumeRegister:	.blkb	1
	.globl	_frequencyRegister
_frequencyRegister:	.blkb	1
	.globl	_r7
_r7:	.blkb	1
	.globl	_initFlag1
_initFlag1:	.blkb	1
	.globl	_initFlag2
_initFlag2:	.blkb	1
	.globl	_initFlag3
_initFlag3:	.blkb	1
	.globl	_PLY_AKY_PATTERNFRAMECOUNTER_OVER
_PLY_AKY_PATTERNFRAMECOUNTER_OVER:	.blkb	2
	.globl	_PLY_AKY_PATTERNFRAMECOUNTER
_PLY_AKY_PATTERNFRAMECOUNTER:	.blkb	2
	.globl	_PLY_AKY_CHANNEL1_PTTRACK
_PLY_AKY_CHANNEL1_PTTRACK:	.blkb	2
	.globl	_PLY_AKY_CHANNEL2_PTTRACK
_PLY_AKY_CHANNEL2_PTTRACK:	.blkb	2
	.globl	_PLY_AKY_CHANNEL3_PTTRACK
_PLY_AKY_CHANNEL3_PTTRACK:	.blkb	2
	.globl	_PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK
_PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
	.globl	_PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK
_PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
	.globl	_PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK
_PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
	.globl	_PLY_AKY_CHANNEL1_PTREGISTERBLOCK
_PLY_AKY_CHANNEL1_PTREGISTERBLOCK:	.blkb	2
	.globl	_PLY_AKY_CHANNEL2_PTREGISTERBLOCK
_PLY_AKY_CHANNEL2_PTREGISTERBLOCK:	.blkb	2
	.globl	_PLY_AKY_CHANNEL3_PTREGISTERBLOCK
_PLY_AKY_CHANNEL3_PTREGISTERBLOCK:	.blkb	2
	.globl	_PLY_AKY_PSGREGISTER13_RETRIG
_PLY_AKY_PSGREGISTER13_RETRIG:	.blkb	1
	.globl	_PLY_AKY_PSGREGISTER6
_PLY_AKY_PSGREGISTER6:	.blkb	1
	.globl	_PLY_AKY_PSGREGISTER11
_PLY_AKY_PSGREGISTER11:	.blkb	1
	.globl	_PLY_AKY_PSGREGISTER12
_PLY_AKY_PSGREGISTER12:	.blkb	1
	.globl	_PLY_AKY_PSGREGISTER13
_PLY_AKY_PSGREGISTER13:	.blkb	1
	.globl	_FP_X0_PACKED
	.area	.text
_FP_X0_PACKED:
	.byte	-127
	.byte	88
	.byte	-125
	.byte	18
	.byte	110
	.globl	_FP_Y0_PACKED
_FP_Y0_PACKED:
	.byte	-127
	.byte	54
	.byte	-62
	.byte	38
	.byte	-126
	.globl	_FP_Z0_PACKED
_FP_Z0_PACKED:
	.byte	-127
	.byte	31
	.byte	-125
	.byte	123
	.byte	74
	.globl	_W0
_W0:
	.word	4694
	.globl	_in1
LC0:
	.byte	83,65,76,84,89,-128,0
LC1:
	.byte	66,79,76,68,-128,0
LC2:
	.byte	76,79,85,68,-128,0
LC3:
	.byte	79,76,68,-128,0
LC4:
	.byte	71,79,79,68,76,89,-128,0
LC5:
	.byte	87,79,82,84,72,89,-128,0
LC6:
	.byte	76,79,70,84,89,-128,0
LC7:
	.byte	70,73,78,69,-128,0
LC8:
	.byte	82,79,67,75,89,-128,0
LC9:
	.byte	65,71,69,68,-128,0
_in1:
	.word	LC0
	.word	LC1
	.word	LC2
	.word	LC3
	.word	LC4
	.word	LC5
	.word	LC6
	.word	LC7
	.word	LC8
	.word	LC9
	.globl	_in2
LC10:
	.byte	82,79,65,68,-128,0
LC11:
	.byte	69,89,69,-128,0
LC12:
	.byte	84,79,79,84,72,-128,0
LC13:
	.byte	68,82,65,71,79,78,-128,0
LC14:
	.byte	77,85,71,-128,0
LC15:
	.byte	68,69,77,79,78,-128,0
LC16:
	.byte	87,72,65,82,70,-128,0
LC17:
	.byte	66,82,73,68,71,69,-128,0
LC18:
	.byte	77,69,65,68,69,-128,0
LC19:
	.byte	65,76,69,-128,0
_in2:
	.word	LC10
	.word	LC11
	.word	LC12
	.word	LC13
	.word	LC14
	.word	LC15
	.word	LC16
	.word	LC17
	.word	LC18
	.word	LC19
	.globl	_in3
LC20:
	.byte	84,65,86,69,82,78,-128,0
LC21:
	.byte	65,76,69,72,79,85,83,69
	.byte	-128,0
LC22:
	.byte	67,69,76,76,65,82,-128,0
LC23:
	.byte	67,76,85,66,-128,0
LC24:
	.byte	73,78,78,-128,0
LC25:
	.byte	72,79,85,83,69,-128,0
LC26:
	.byte	76,79,68,71,69,-128,0
LC27:
	.byte	77,69,65,68,72,65,76,76
	.byte	-128,0
LC28:
	.byte	82,69,83,84,72,79,85,83
	.byte	69,-128,0
_in3:
	.word	LC20
	.word	LC21
	.word	LC22
	.word	LC23
	.word	LC24
	.word	LC25
	.word	LC24
	.word	LC26
	.word	LC27
	.word	LC28
	.globl	_cube_c64_data
_cube_c64_data:
	.byte	-21
	.byte	39
	.byte	1
	.byte	0
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-85
	.byte	22
	.byte	1
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-85
	.byte	39
	.byte	1
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-85
	.byte	75
	.byte	1
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	-117
	.byte	32
	.byte	0
	.byte	0
	.byte	-48
	.byte	32
	.globl	_teleport_data
_teleport_data:
	.byte	108
	.byte	34
	.byte	0
	.byte	0
	.byte	43
	.byte	33
	.byte	0
	.byte	106
	.byte	34
	.byte	0
	.byte	6
	.byte	9
	.byte	108
	.byte	33
	.byte	0
	.byte	0
	.byte	43
	.byte	32
	.byte	0
	.byte	106
	.byte	33
	.byte	0
	.byte	6
	.byte	9
	.byte	108
	.byte	32
	.byte	0
	.byte	0
	.byte	43
	.byte	31
	.byte	0
	.byte	106
	.byte	32
	.byte	0
	.byte	6
	.byte	9
	.byte	72
	.byte	30
	.byte	108
	.byte	30
	.byte	0
	.byte	0
	.byte	43
	.byte	29
	.byte	0
	.byte	106
	.byte	30
	.byte	0
	.byte	6
	.byte	9
	.byte	72
	.byte	30
	.byte	108
	.byte	29
	.byte	0
	.byte	0
	.byte	43
	.byte	28
	.byte	0
	.byte	106
	.byte	29
	.byte	0
	.byte	6
	.byte	108
	.byte	27
	.byte	0
	.byte	0
	.byte	43
	.byte	26
	.byte	0
	.byte	106
	.byte	27
	.byte	0
	.byte	6
	.byte	41
	.byte	25
	.byte	0
	.byte	108
	.byte	22
	.byte	0
	.byte	0
	.byte	10
	.byte	8
	.byte	-80
	.byte	20
	.byte	9
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	42
	.byte	22
	.byte	0
	.byte	8
	.byte	7
	.byte	-80
	.byte	20
	.byte	9
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	41
	.byte	22
	.byte	0
	.byte	7
	.byte	5
	.byte	-80
	.byte	20
	.byte	9
	.byte	-112
	.byte	-112
	.byte	40
	.byte	22
	.byte	0
	.byte	6
	.byte	4
	.byte	-80
	.byte	20
	.byte	9
	.byte	-112
	.byte	-112
	.byte	39
	.byte	22
	.byte	0
	.byte	5
	.byte	3
	.byte	-88
	.byte	1
	.byte	0
	.byte	-48
	.byte	32
	.globl	_box_data
_box_data:
	.byte	-19
	.byte	16
	.byte	0
	.byte	0
	.byte	-83
	.byte	17
	.byte	0
	.byte	-115
	.byte	-83
	.byte	18
	.byte	0
	.byte	-115
	.byte	-86
	.byte	16
	.byte	0
	.byte	-118
	.byte	-86
	.byte	17
	.byte	0
	.byte	-118
	.byte	-86
	.byte	18
	.byte	0
	.byte	-118
	.byte	-88
	.byte	16
	.byte	0
	.byte	-120
	.byte	-88
	.byte	17
	.byte	0
	.byte	-80
	.byte	0
	.byte	0
	.byte	-48
	.byte	32
	.globl	_dragon_data
_dragon_data:
	.byte	106
	.byte	80
	.byte	5
	.byte	30
	.byte	10
	.byte	43
	.byte	80
	.byte	6
	.byte	11
	.byte	44
	.byte	80
	.byte	7
	.byte	12
	.byte	110
	.byte	80
	.byte	8
	.byte	10
	.byte	14
	.byte	14
	.byte	14
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	80
	.byte	7
	.byte	30
	.byte	12
	.byte	45
	.byte	80
	.byte	8
	.byte	13
	.byte	46
	.byte	80
	.byte	9
	.byte	14
	.byte	111
	.byte	82
	.byte	10
	.byte	10
	.byte	15
	.byte	15
	.byte	15
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	108
	.byte	80
	.byte	9
	.byte	30
	.byte	12
	.byte	45
	.byte	0
	.byte	10
	.byte	13
	.byte	46
	.byte	80
	.byte	10
	.byte	14
	.byte	111
	.byte	82
	.byte	11
	.byte	10
	.byte	15
	.byte	15
	.byte	-112
	.byte	-48
	.byte	32
	.globl	_death_data
_death_data:
	.byte	111
	.byte	-1
	.byte	1
	.byte	31
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	-80
	.byte	0
	.byte	0
	.byte	-48
	.byte	32
	.globl	_monsterDrawer
_monsterDrawer:
	.word	_drawGnoll
	.word	_drawKobold
	.word	_drawSkeleton
	.word	_drawHobbit
	.word	_drawZomnbie
	.word	_drawOrc
	.word	_drawFighter
	.word	_drawMummy
	.word	_drawElf
	.word	_drawGhoul
	.word	_drawDwarf
	.word	_drawTroll
	.word	_drawWraith
	.word	_drawOgre
	.word	_drawMinotaur
	.word	_drawGiant
	.word	_drawSpecter
	.word	_drawVampire
	.word	_drawDemon
	.word	_drawDragon
	.globl	_environmentDrawer
_environmentDrawer:
	.word	_drawStaircase
	.word	_drawNone
	.word	_drawNone
	.word	_drawStaircase
	.word	_drawAltar
	.word	_drawFountain
	.word	_drawCube
	.word	_drawThrone
	.word	_drawBox
	.word	_drawNone
LC29:
	.ascii	"ORIGINAL BY DANIEL MICHAEL LAWRENCE\0"
LC30:
	.ascii	"     VECTREX VERSION BY MALBAN\0"
LC31:
	.ascii	"        PRESS BUTTON TO PLAY\0"
LC32:
	.ascii	"           GREETINGS TO:\0"
LC33:
	.ascii	"     PEER, BRETT AND PHILLIP\0"
LC34:
	.ascii	"    TITLE MUSIC BY ROALD STRAUSS\0"
LC35:
	.ascii	"    INTERNET: INDIEGAMEMUSIC.COM\0"
LC36:
	.ascii	"             THANKS!!!\0"
	.globl	_titleScreen
_titleScreen:
	pshs	u	;
	leas	-3,s	;,,
;----- asm -----
; 249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[248]m = 0;
;--- end asm ---
	clr	_m	; m
;----- asm -----
; 251 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[249]initsong();
;--- end asm ---
	jsr	_initSong
;----- asm -----
; 253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[250]titlestart:
;--- end asm ---
L2:
;----- asm -----
; 255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[251]_xc=-0x60;
;--- end asm ---
	ldb	#-96	;,
	stb	__XC	;, _XC
;----- asm -----
; 258 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[253]ltmp=title_timer;
;--- end asm ---
	ldx	#150	;,
	stx	_ltmp	;, ltmp
;----- asm -----
; 260 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[254]int stage = 0;
; 262 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[255]printmessage();
;--- end asm ---
	ldx	#LC29	;,
	jsr	_printMessage
;----- asm -----
; 264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[256]printmessage();
;--- end asm ---
	ldx	#LC30	;,
	jsr	_printMessage
;----- asm -----
; 266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[257]while(1)
;--- end asm ---
	clr	2,s	; stage
	bra	L8	;
L4:
;----- asm -----
; 326 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[293]if (stage == 1)
;--- end asm ---
	ldb	2,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L12	;
L5:
;----- asm -----
; 332 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[297]if (stage == 2)
;--- end asm ---
	cmpb	#2	;cmpqi:	;,
	lbeq	L13	;
L6:
;----- asm -----
; 341 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[303]if (stage == 3)
;--- end asm ---
	cmpb	#3	;cmpqi:	;,
	lbeq	L14	;
L7:
;----- asm -----
; 351 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[309]if (stage == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbeq	L15	;
L3:
;----- asm -----
; 359 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[315]if (buttons_pressed())break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	lbne	L16	;
L8:
;----- asm -----
; 269 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[259]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[261]playsong();
;--- end asm ---
	jsr	_playSong
;----- asm -----
; 274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[262]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[263]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 278 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[264]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 280 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[265]displaymessages();
;--- end asm ---
	clrb	;
	jsr	_subBank1
;----- asm -----
; 282 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[266]intensity_a(0x3f);
;--- end asm ---
	ldb	#63	;,
	jsr	__Intensity_a
;----- asm -----
; 285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[268]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 287 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[269]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[270]monsterdrawer[m]();
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp33
	jsr	[_monsterDrawer,x]
;----- asm -----
; 291 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[271]__ass(::: ,,,);
; 292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 294 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[273]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[278]moveto_d(0,30);
;--- end asm ---
	clr	,-s	;
	ldb	#30	;,
	jsr	__Moveto_d
;----- asm -----
; 303 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[280]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 305 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[281]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 307 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[282]drawplayer();
;--- end asm ---
	jsr	_drawPlayer
;----- asm -----
; 311 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[285]drawtitle();
;--- end asm ---
	jsr	_drawTitle
;----- asm -----
; 313 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[286]if (ltmp-- == 0)
;--- end asm ---
	ldx	_ltmp	; ltmp.3, ltmp
	leau	-1,x	;,, ltmp.3
	stu	_ltmp	;, ltmp
	leas	1,s	;,,
	cmpx	#0	; ltmp.3
	lbne	L3	;
;----- asm -----
; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[288]ltmp = title_timer;
;--- end asm ---
	ldx	#150	;,
	stx	_ltmp	;, ltmp
;----- asm -----
; 318 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[289]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 320 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[290]stage++;
;--- end asm ---
	inc	2,s	; stage
;----- asm -----
; 322 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[291]m++;
;--- end asm ---
	inc	_m	; m
	ldb	_m	; m.5, m
;----- asm -----
; 324 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[292]if (m==20) m=0;
;--- end asm ---
	cmpb	#20	;cmpqi:	; m.5,
	lbne	L4	;
	clr	_m	; m
;----- asm -----
; 326 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[293]if (stage == 1)
;--- end asm ---
	ldb	2,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbne	L5	;
L12:
;----- asm -----
; 329 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[295]printmessage();
;--- end asm ---
	ldx	#LC31	;,
	jsr	_printMessage
	ldb	2,s	;, stage
;----- asm -----
; 332 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[297]if (stage == 2)
;--- end asm ---
	cmpb	#2	;cmpqi:	;,
	lbne	L6	;
L13:
;----- asm -----
; 335 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[299]printmessage();
;--- end asm ---
	ldx	#LC32	;,
	jsr	_printMessage
;----- asm -----
; 337 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[300]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
	ldb	2,s	;, stage
;----- asm -----
; 341 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[303]if (stage == 3)
;--- end asm ---
	cmpb	#3	;cmpqi:	;,
	lbne	L7	;
L14:
;----- asm -----
; 344 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[305]printmessage();
;--- end asm ---
	ldx	#LC34	;,
	jsr	_printMessage
;----- asm -----
; 346 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[306]printmessage();
;--- end asm ---
	ldx	#LC35	;,
	jsr	_printMessage
;----- asm -----
; 348 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[307]printmessage();
;--- end asm ---
	ldx	#LC36	;,
	jsr	_printMessage
	ldb	2,s	;, stage
;----- asm -----
; 351 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[309]if (stage == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbne	L3	;
L15:
;----- asm -----
; 354 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[311]goto titlestart;
;--- end asm ---
	lbra	L2	;
L16:
;----- asm -----
; 362 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[317]vec_music_wk_7 = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 364 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[318]vec_xxx_04 = 0x0;
;--- end asm ---
	clr	_Vec_XXX_04	; Vec_XXX_04
;----- asm -----
; 366 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[319]vec_xxx_03 = 0x0;
;--- end asm ---
	clr	_Vec_XXX_03	; Vec_XXX_03
;----- asm -----
; 368 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[320]vec_music_wk_a = 0x0;
;--- end asm ---
	clr	_Vec_Music_Wk_A	; Vec_Music_Wk_A
;----- asm -----
; 374 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[325]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 376 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[326]_xc = 0x70;
;--- end asm ---
	ldb	#112	;,
	stb	__XC	;, _XC
	leas	3,s	;,,
	puls	u,pc	;
	.globl	_getMapPos
_getMapPos:
	pshs	y,u	;
	leas	-3,s	;,,
	stb	,s	; x, x
;----- asm -----
; 402 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[351]mulif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
;--- end asm ---
	ldx	#_fpackX0x	;,
	pshs	x	;
	ldx	#_FP_X0_PACKED	;,
	pshs	x	;
	clra		;zero_extendqihi: R:b -> R:d	; x,
	tfr	d,x	;,
	jsr	_mulIF
;----- asm -----
; 404 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[352]mulif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
;--- end asm ---
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_FP_Y0_PACKED	;,
	pshs	x	;
	ldb	17,s	;, y
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_mulIF
;----- asm -----
; 406 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[353]mulif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
;--- end asm ---
	ldu	#_FP_Z0_PACKED	; FP_Z0_PACKED.8,
	leas	8,s	;,,
	ldy	#_fpackZ0z	; tmp46,
	pshs	y	; tmp46
	pshs	u	; FP_Z0_PACKED.8
	ldb	14,s	;, z
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_mulIF
;----- asm -----
; 409 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[355]addf(fpackx0x, fpacky0y, fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	pshs	x	;
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_fpackX0x	;,
	jsr	_addF
;----- asm -----
; 411 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[356]addf(fpackz0z, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	8,s	;,,
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	x	;
	leax	,y	;, tmp46
	jsr	_addF
;----- asm -----
; 414 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[358]addif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
;--- end asm ---
	ldx	#_fpackX0x	;,
	pshs	x	;
	ldx	#_FP_X0_PACKED	;,
	pshs	x	;
	ldb	8,s	;, x
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_addIF
;----- asm -----
; 416 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[359]addif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
;--- end asm ---
	leas	8,s	;,,
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_FP_Y0_PACKED	;,
	pshs	x	;
	ldb	13,s	;, y
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_addIF
;----- asm -----
; 418 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[360]addif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
;--- end asm ---
	pshs	y	; tmp46
	pshs	u	; FP_Z0_PACKED.8
	ldb	18,s	;, z
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_addIF
;----- asm -----
; 421 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[362]mulf(fpackx0x, fpacky0y, fpacktmp2);
;--- end asm ---
	leas	8,s	;,,
	ldu	#_fpacktmp2	; tmp54,
	pshs	u	; tmp54
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_fpackX0x	;,
	jsr	_mulF
;----- asm -----
; 423 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[363]mulf(fpackz0z, fpacktmp2, fpacktmp2);
;--- end asm ---
	pshs	u	; tmp54
	pshs	u	; tmp54
	leax	,y	;, tmp46
	jsr	_mulF
;----- asm -----
; 426 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[365]addf(fpacktmp1, fpacktmp2, fpackq);
;--- end asm ---
	leas	8,s	;,,
	ldy	#_fpackQ	; tmp58,
	pshs	y	; tmp58
	pshs	u	; tmp54
	ldx	#_fpacktmp1	;,
	jsr	_addF
;----- asm -----
; 435 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[373]intf(fpackq, fpacktmp2);
;--- end asm ---
	pshs	u	; tmp54
	leax	,y	;, tmp58
	jsr	_intF
;----- asm -----
; 437 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[374]subf(fpackq, fpacktmp2, fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	u	; tmp54
	leax	,y	;, tmp58
	jsr	_subF
;----- asm -----
; 439 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[375]mulif((unsigned long int)w0, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	10,s	;,,
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	x	;
	ldx	#4694	;,
	jsr	_mulIF
;----- asm -----
; 442 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[377]unsigned long int h = (unsigned long int) toint(fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	jsr	_toInt
	stx	5,s	;, h
;----- asm -----
; 447 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[381]if (((h>>8)&0xff) >5) h = h & 0xff;
;--- end asm ---
	tfr	x,d	;, tmp65
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	leas	4,s	;,,
	cmpd	#5	;cmphi:	; tmp65,
	bls	L18	;
	ldd	1,s	;, h
	clra	;andqi(ZERO)	;
		;andqi(-1)
	std	1,s	;, h
L18:
;----- asm -----
; 451 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[384]if ((h&0xff00) > 0)
;--- end asm ---
	ldd	1,s	; tmp66, h
		;andqi(-1)
	clrb	;andqi(ZERO)	;
	cmpd	#0	; tmp66
	bne	L29	;
L19:
;----- asm -----
; 503 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[425]if ((x == 1) || (x == 201)) h = h | 12;
;--- end asm ---
	ldb	,s	;, x
	cmpb	#1	;cmpqi:	;,
	beq	L24	;
	cmpb	#-55	;cmpqi:	;,
	beq	L24	;
L25:
;----- asm -----
; 505 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[426]if ((y == 1) || (y == 201)) h = h | 3;
;--- end asm ---
	ldb	9,s	;, y
	cmpb	#1	;cmpqi:	;,
	beq	L26	;
	cmpb	#-55	;cmpqi:	;,
	beq	L26	;
L27:
;----- asm -----
; 508 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[428]return h;
;--- end asm ---
	ldx	1,s	;, h
	leas	3,s	;,,
	puls	y,u,pc	;
L26:
	ldd	1,s	;, h
		;iorqi(ZERO)
	orb	#3	;,
	std	1,s	;, h
	bra	L27	;
L24:
	ldd	1,s	;, h
		;iorqi(ZERO)
	orb	#12	;,
	std	1,s	;, h
	bra	L25	;
L29:
;----- asm -----
; 457 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[389]mulif((unsigned long int)10, fpackq, fpackq);
;--- end asm ---
	ldu	#_fpackQ	; tmp67,
	pshs	u	; tmp67
	pshs	u	; tmp67
	ldx	#10	;,
	jsr	_mulIF
;----- asm -----
; 461 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[392]intf(fpackq, fpacktmp2);
;--- end asm ---
	ldx	#_fpacktmp2	;,
	pshs	x	;
	leax	,u	;, tmp67
	jsr	_intF
;----- asm -----
; 463 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[393]subf(fpackq, fpacktmp2, fpacktmp1);
;--- end asm ---
	ldy	#_fpacktmp1	; tmp70,
	pshs	y	; tmp70
	ldx	#_fpacktmp2	;,
	pshs	x	;
	leax	,u	;, tmp67
	jsr	_subF
;----- asm -----
; 465 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[394]mulif((unsigned long int)15, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	10,s	;,,
	pshs	y	; tmp70
	pshs	y	; tmp70
	ldx	#15	;,
	jsr	_mulIF
;----- asm -----
; 467 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[395]unsigned long int h2 = (unsigned long int) toint(fpacktmp1);
;--- end asm ---
	leax	,y	;, tmp70
	jsr	_toInt
;----- asm -----
; 469 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[396]h2 += 1;
;--- end asm ---
	leau	1,x	; h2,, D.3438
;----- asm -----
; 489 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[415]if (h2 >9) h2 = 0;
;--- end asm ---
	leas	4,s	;,,
	cmpu	#9	;cmphi:	; h2,
	bhi	L30	;
L20:
;----- asm -----
; 494 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[419]if ((cz == 50) && (h2 == 4)) h2 = 0;
;--- end asm ---
	tfr	u,d	; h2,
	tfr	b,a	;,
	clrb	;
	tfr	d,x	;, prephitmp.139
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	beq	L31	;
L22:
;----- asm -----
; 498 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[422]h2 = h2*256;
; 500 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[423]h = h2 | (h&0xff);
;--- end asm ---
	ldd	1,s	; D.3440, h
	clra	;andqi(ZERO)	;
		;andqi(-1)
	pshs	x	; prephitmp.139
	ora	,s+	;,
	orb	,s+	;,
	std	1,s	; D.3440, h
	lbra	L19	;
L30:
	ldu	#0	; h2,
	bra	L20	;
L31:
	tfr	u,d	; h2,
	tfr	b,a	;,
	clrb	;
	tfr	d,x	;, prephitmp.139
	cmpu	#4	;cmphi:	; h2,
	bne	L22	;
	ldx	#0	; prephitmp.139,
	bra	L22	;
	.globl	_generateDisplayMap
_generateDisplayMap:
	pshs	y,u	;
	leas	-15,s	;,,
;----- asm -----
; 524 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[443]if (cx>200) cx = cx- (unsigned char) 200;
;--- end asm ---
	ldb	_cx	; cx.10, cx
	cmpb	#-56	;cmpqi:	; cx.10,
	bls	L33	;
	addb	#56	; cx.10,
	stb	_cx	; cx.10, cx
L33:
;----- asm -----
; 526 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[444]if (cy>200) cy = cy- (unsigned char) 200;
;--- end asm ---
	ldb	_cy	; cy.12, cy
	cmpb	#-56	;cmpqi:	; cy.12,
	bls	L34	;
	addb	#56	; cy.12,
	stb	_cy	; cy.12, cy
L34:
;----- asm -----
; 528 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[445]if (fillmap != go_no_redraw)
;--- end asm ---
	tst	_fillMap	; fillMap
	lbne	L60	;
;----- asm -----
; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[450]switch (fillmap)
;--- end asm ---
	ldb	_fillMap	; fillMap, fillMap
	cmpb	#3	;cmpqi:	; fillMap,
	lbeq	L39	;
L63:
	cmpb	#3	;cmpqi:	; fillMap,
	ble	L61	;
	cmpb	#4	;cmpqi:	; fillMap,
	lbeq	L40	;
	cmpb	#127	;cmpqi:	; fillMap,
	lbeq	L62	;
L36:
;----- asm -----
; 677 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[547]fillmap = go_no_redraw;
;--- end asm ---
	clr	_fillMap	; fillMap
;----- asm -----
; 679 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[548]return 0;
;--- end asm ---
	clrb	; D.3551
	leas	15,s	;,,
	puls	y,u,pc	;
L61:
	cmpb	#1	;cmpqi:	; fillMap,
	lbeq	L37	;
	cmpb	#2	;cmpqi:	; fillMap,
	bne	L36	;
;----- asm -----
; 590 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[487]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldu	#_screen+10	; ivtmp.199,
	clr	10,s	; yy
L49:
;----- asm -----
; 593 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[489]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	10,s	;, yy
	stb	11,s	;, y
;----- asm -----
; 595 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[490]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	10,s	;, yy
	cmpb	#3	;cmpqi:	;,
	lbeq	L48	;
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	tfr	d,y	;, tmp157
	ldb	10,s	;, yy
	incb	;
	stb	3,s	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	tfr	d,x	;, tmp162
	ldx	_screen,x	;, screen
	stx	_screen,y	;, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldx	,u	;, screen
	stx	-8,u	;, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldd	2,u	;, screen
	std	-6,u	;, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldx	4,u	;, screen
	stx	-4,u	;, screen
	ldb	3,s	;,
	stb	10,s	;, yy
	leau	8,u	; ivtmp.199,, ivtmp.199
	cmpb	#4	;cmpqi:	;,
	lbne	L49	;
;----- asm -----
; 613 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[503]break;
;--- end asm ---
	lbra	L44	;
L60:
;----- asm -----
; 531 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[447]realabove = above = (unsigned int) (getmappos(cx,cy,cz-1) >> 8);
;--- end asm ---
	ldb	_cz	;, cz
	decb	;
	pshs	b	;
	ldb	_cy	;, cy
	stb	,-s	;,
	ldb	_cx	;, cx
	jsr	_getMapPos
	tfr	x,d	;, D.3512
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	stb	_above	;movlsbqihi: R:d -> _above	; above, tmp119
	stb	_realAbove	;movlsbqihi: R:d -> _realAbove	; realAbove, tmp119
	leas	2,s	;,,
;----- asm -----
; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[450]switch (fillmap)
;--- end asm ---
	ldb	_fillMap	; fillMap, fillMap
	cmpb	#3	;cmpqi:	; fillMap,
	lbne	L63	;
L39:
;----- asm -----
; 648 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[527]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldy	#_screen+6	; ivtmp.218,
	clr	13,s	; yy
L52:
;----- asm -----
; 651 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[529]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	stb	14,s	;, cy.263
;----- asm -----
; 653 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[530]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	2,s	;, D.3545
;----- asm -----
; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[533]if (xx == 3)
; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldx	-4,y	;, screen
	stx	-6,y	;, screen
;----- asm -----
; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[533]if (xx == 3)
; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldd	-2,y	;, screen
	std	-4,y	;, screen
;----- asm -----
; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[533]if (xx == 3)
; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldx	,y	;, screen
	stx	-2,y	;, screen
;----- asm -----
; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[533]if (xx == 3)
; 661 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[535]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	2,s	;, D.3545
	addb	#3	;,
	stb	2,s	;, D.3545
	ldb	_cz	;, cz
	stb	,-s	;,
	dec	15,s	; cy.263
	ldb	15,s	;, cy.263
	addb	14,s	;, yy
	pshs	b	;
	ldb	4,s	;, D.3545
	jsr	_getMapPos
	stx	,y	; D.3548, screen
	inc	15,s	; yy
	leay	8,y	; ivtmp.218,, ivtmp.218
	leas	2,s	;,,
	ldb	13,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L52	;
;----- asm -----
; 671 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[543]break;
;--- end asm ---
	lbra	L44	;
L62:
;----- asm -----
; 541 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[454]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldu	#_screen	; ivtmp.239,
	clr	6,s	; yy
L43:
;----- asm -----
; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[456]unsigned int y = yy+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	6,s	;, yy
	stb	7,s	;, y
;----- asm -----
; 546 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[457]for (unsigned char xx=0;xx<4;xx++)
; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[459]unsigned int x = xx+cx-1;
; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	2,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	8,s	;, y
	pshs	b	;
	ldb	4,s	;,
	jsr	_getMapPos
	stx	,u	; temp.304, screen
;----- asm -----
; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[459]unsigned int x = xx+cx-1;
; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	4,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	10,s	;, y
	pshs	b	;
	ldb	6,s	;,
	jsr	_getMapPos
	stx	2,u	; temp.309, screen
;----- asm -----
; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[459]unsigned int x = xx+cx-1;
; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	incb	;
	stb	6,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	12,s	;, y
	pshs	b	;
	ldb	8,s	;,
	jsr	_getMapPos
	stx	4,u	; temp.314, screen
;----- asm -----
; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[459]unsigned int x = xx+cx-1;
; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	addb	#2	;,
	stb	8,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	14,s	;, y
	pshs	b	;
	ldb	10,s	;,
	jsr	_getMapPos
	stx	6,u	; D.3520, screen
	inc	14,s	; yy
	leau	8,u	; ivtmp.239,, ivtmp.239
	leas	8,s	;,,
	ldb	6,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L43	;
;----- asm -----
; 555 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[463]break;
;--- end asm ---
L44:
;----- asm -----
; 683 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[551]fillmap = go_no_redraw;
;--- end asm ---
	clr	_fillMap	; fillMap
;----- asm -----
; 685 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[552]return 1;
;--- end asm ---
	ldb	#1	; D.3551,
	leas	15,s	;,,
	puls	y,u,pc	;
L40:
;----- asm -----
; 619 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[507]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldy	#_screen	; ivtmp.228,
	clr	12,s	; yy
L51:
;----- asm -----
; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[509]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	stb	2,s	;, cy.260
;----- asm -----
; 624 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[510]for (signed char xx=3;xx>=0;xx--)
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	5,s	;, D.3538
;----- asm -----
; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[513]if (xx == 0)
; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldx	4,y	;, screen
	stx	6,y	;, screen
;----- asm -----
; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[513]if (xx == 0)
; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldd	2,y	;, screen
	std	4,y	;, screen
;----- asm -----
; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[513]if (xx == 0)
; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldx	,y	;, screen
	stx	2,y	;, screen
;----- asm -----
; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[513]if (xx == 0)
; 632 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[515]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cz	;, cz
	stb	,-s	;,
	dec	3,s	; cy.260
	ldb	3,s	;, cy.260
	addb	13,s	;, yy
	pshs	b	;
	ldb	7,s	;, D.3538
	jsr	_getMapPos
	stx	,y	; D.3541, screen
	inc	14,s	; yy
	leay	8,y	; ivtmp.228,, ivtmp.228
	leas	2,s	;,,
	ldb	12,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L51	;
;----- asm -----
; 642 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[523]break;
;--- end asm ---
	lbra	L44	;
L37:
;----- asm -----
; 561 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[467]for (signed char yy=3;yy>=0;yy--)
;--- end asm ---
	ldu	#_screen+18	; ivtmp.184,
	ldb	#3	;,
	stb	8,s	;, yy
L46:
;----- asm -----
; 564 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[469]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	8,s	;, yy
	stb	9,s	;, y
;----- asm -----
; 566 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[470]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	tst	8,s	; yy
	lbeq	L45	;
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldb	8,s	;, yy
	sex		;extendqihi2: R:b -> R:d	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	tfr	d,y	;, tmp132
	ldb	8,s	;, yy
	decb	;
	stb	4,s	;,
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	aslb	;
	rola	;
	tfr	d,x	;, tmp137
	ldx	_screen,x	;, screen
	stx	_screen,y	;, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldx	,u	;, screen
	stx	8,u	;, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldd	2,u	;, screen
	std	10,u	;, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldx	4,u	;, screen
	stx	12,u	;, screen
	ldb	4,s	;,
	stb	8,s	;, yy
	leau	-8,u	; ivtmp.184,, ivtmp.184
	cmpb	#-1	;cmpqi:	;,
	lbne	L46	;
	lbra	L47	;
L45:
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	10,s	;, y
	pshs	b	;
	ldb	2,s	;,
	jsr	_getMapPos
	stx	_screen	; temp.275, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	2,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	12,s	;, y
	pshs	b	;
	ldb	4,s	;,
	jsr	_getMapPos
	stx	_screen+2	; temp.266, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	incb	;
	stb	4,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	14,s	;, y
	pshs	b	;
	ldb	6,s	;,
	jsr	_getMapPos
	stx	_screen+4	; D.3526, screen
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]unsigned int x = xx+cx-1;
; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[473]if (yy == 0)
; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	addb	#2	;,
	stb	6,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	16,s	;, y
	pshs	b	;
	ldb	8,s	;,
	jsr	_getMapPos
	stx	_screen+6	; temp.256, screen
	leas	8,s	;,,
L47:
;----- asm -----
; 584 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[483]break;
;--- end asm ---
	lbra	L44	;
L48:
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	12,s	;, y
	pshs	b	;
	ldb	2,s	;,
	jsr	_getMapPos
	stx	_screen+24	; temp.286, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	2,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	14,s	;, y
	pshs	b	;
	ldb	4,s	;,
	jsr	_getMapPos
	stx	_screen+26	; temp.291, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	incb	;
	stb	4,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	16,s	;, y
	pshs	b	;
	ldb	6,s	;,
	jsr	_getMapPos
	stx	_screen+28	; temp.296, screen
;----- asm -----
; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]unsigned int x = xx+cx-1;
; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[493]if (yy == 3)
; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	addb	#2	;,
	stb	6,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	18,s	;, y
	pshs	b	;
	ldb	8,s	;,
	jsr	_getMapPos
	stx	_screen+30	; D.3533, screen
	leas	8,s	;,,
;----- asm -----
; 613 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[503]break;
;--- end asm ---
	lbra	L44	;
	.globl	_drawMap
_drawMap:
	pshs	y,u	;
	leas	-61,s	;,,
;----- asm -----
; 771 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[619]if (fillmap != go_no_redraw) generatedisplaymap();
;--- end asm ---
	tst	_fillMap	; fillMap
	lbne	L293	;
L65:
;----- asm -----
; 775 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[622]printenvironment = (int)map11_hi;
;--- end asm ---
	ldb	_screen+10	;,
	stb	_printEnvironment	;, printEnvironment
;----- asm -----
; 777 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[623]if (above == 4) printenvironment = 4;
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L294	;
L66:
;----- asm -----
; 780 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[625]if (inelevator)
;--- end asm ---
	tst	_inElevator	; inElevator
	lbeq	L67	;
;----- asm -----
; 783 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[627]_x_ =0;
;--- end asm ---
	clr	__x_	; _x_
;----- asm -----
; 785 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[628]_y_ =elevatory;
;--- end asm ---
	ldb	_elevatorY	;, elevatorY
	stb	__y_	;, _y_
;----- asm -----
; 787 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[629]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 789 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[630]moveto_start_yx
; 790 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 791 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[631]printenvironment = 0;
;--- end asm ---
	clr	_printEnvironment	; printEnvironment
;----- asm -----
; 793 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[632]elevatory++;
;--- end asm ---
	inc	_elevatorY	; elevatorY
	ldb	_elevatorY	; elevatorY.36, elevatorY
;----- asm -----
; 795 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[633]if (elevatory==120)
;--- end asm ---
	cmpb	#120	;cmpqi:	; elevatorY.36,
	lbeq	L295	;
L68:
;----- asm -----
; 803 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[638]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 805 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[639]my_move_to_a_end
; 806 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      #0x40
	BITA     *0x0D
	BEQ      . -2
; 807 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[640]drawelevator();
;--- end asm ---
	jsr	_drawElevator
;----- asm -----
; 811 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[643]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 813 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[644]moveto_start_yx
; 814 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 815 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[645]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 817 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      #0x40
	BITA     *0x0D
	BEQ      . -2
;--- end asm ---
L67:
;----- asm -----
; 820 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[649]if (specialaction)
;--- end asm ---
	ldb	_specialAction	; specialAction.37, specialAction
	beq	L69	;
;----- asm -----
; 823 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[651]if (specialaction == special_dragonbreath)
;--- end asm ---
	cmpb	#1	;cmpqi:	; specialAction.37,
	lbeq	L296	;
	cmpb	#2	;cmpqi:	; specialAction.37,
	lbeq	L297	;
L69:
;----- asm -----
; 843 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[664]if (initsoundno)
;--- end asm ---
	ldb	_initSoundNo	; initSoundNo.40, initSoundNo
	beq	L71	;
;----- asm -----
; 846 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[666]if (initsoundno == sound_cube)
;--- end asm ---
	cmpb	#1	;cmpqi:	; initSoundNo.40,
	lbeq	L298	;
	cmpb	#2	;cmpqi:	; initSoundNo.40,
	lbeq	L299	;
	cmpb	#3	;cmpqi:	; initSoundNo.40,
	lbeq	L300	;
	cmpb	#4	;cmpqi:	; initSoundNo.40,
	lbeq	L301	;
	cmpb	#5	;cmpqi:	; initSoundNo.40,
	lbeq	L302	;
L73:
;----- asm -----
; 872 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[686]sfx_status_1 = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_sfx_status_1	;, sfx_status_1
;----- asm -----
; 875 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[688]initsoundno = 0;
;--- end asm ---
	clr	_initSoundNo	; initSoundNo
L71:
;----- asm -----
; 878 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[690]if (sfx_status_1 == 1)
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.46, sfx_status_1
	cmpb	#1	;cmpqi:	; sfx_status_1.46,
	lbeq	L303	;
L77:
;----- asm -----
; 884 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[694]if (printcharacter)
;--- end asm ---
	tst	_printCharacter	; printCharacter
	lbne	L304	;
L78:
;----- asm -----
; 895 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[701]if (!printdungeon) return;
;--- end asm ---
	tst	_printDungeon	; printDungeon
	lbeq	L275	;
;----- asm -----
; 899 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[704]if (m != -1)
;--- end asm ---
	ldb	_m	;, m
	cmpb	#-1	;cmpqi:	;,
	lbeq	L80	;
;----- asm -----
; 902 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[706]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 904 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[707]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 906 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[708]monsterdrawer[m]();
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp142
	jsr	[_monsterDrawer,x]
L81:
;----- asm -----
; 929 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[724]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 934 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[728]drawroom(any_item(item(item_00, map00_hi)), getup(drawup_00, map00_lo), getleft(drawleft_00, map00_lo), room_y(0), room_x(0));
;--- end asm ---
	ldb	_screen+9	;,
	stb	4,s	;, D.3603
	ldb	#3	;,
	andb	4,s	;, D.3603
	stb	4,s	;, D.3603
	cmpb	#1	;cmpqi:	;,
	lbls	L83	;
	ldy	#_screen+11	; prephitmp.327,
	ldb	_screen+11	;,
	stb	40,s	;, prephitmp.329
	clr	3,s	; iftmp.52
L84:
	ldb	#3	;,
	andb	40,s	;, prephitmp.329
	stb	6,s	;, D.3613
	cmpb	#1	;cmpqi:	;,
	lbls	L305	;
L86:
	clr	5,s	; iftmp.53
L87:
	tst	_sf+2	; sf
	beq	L88	;
	ldb	4,s	;, D.3603
	cmpb	#1	;cmpqi:	;,
	lbls	L306	;
L89:
	ldb	6,s	;, D.3613
	cmpb	#1	;cmpqi:	;,
	lbls	L307	;
L88:
	clr	7,s	; iftmp.54
L91:
	ldb	#127	;,
	stb	60,s	;, ry
	incb	;
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	5,s	; tmp162, iftmp.53
	addb	3,s	; tmp162, iftmp.52
	addb	7,s	; tmp162, iftmp.54
	lbeq	L92	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	5,s	;, iftmp.53
	cmpb	#2	;cmpqi:	;,
	lbeq	L308	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L309	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	3,s	;, iftmp.52
	cmpb	#2	;cmpqi:	;,
	lbeq	L310	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L311	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	7,s	;, iftmp.54
	cmpb	#10	;cmpqi:	;,
	lbeq	L312	;
L96:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L92:
;----- asm -----
; 936 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[729]drawroom(any_item(item(item_01, map01_hi)), getup(drawup_01, map01_lo), getleft(drawleft_01, map01_lo), room_y(0), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.327
	stb	45,s	;, temp.362
	ldb	#3	;,
	andb	45,s	;, temp.362
	stb	45,s	;, temp.362
	cmpb	#1	;cmpqi:	;,
	lbls	L102	;
	clr	9,s	; iftmp.57
	clr	8,s	; iftmp.56
	clr	46,s	; prephitmp.366
L103:
	tst	_sf+2	; sf
	beq	L104	;
	ldb	45,s	;, temp.362
	cmpb	#1	;cmpqi:	;,
	lbls	L313	;
L104:
	clr	10,s	; iftmp.58
L105:
	ldb	#127	;,
	stb	59,s	;, ry
	ldb	#-43	;,
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	10,s	;, iftmp.58
	addb	46,s	;, prephitmp.366
	lbeq	L106	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	9,s	;, iftmp.57
	cmpb	#2	;cmpqi:	;,
	lbeq	L314	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L315	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	8,s	;, iftmp.56
	cmpb	#2	;cmpqi:	;,
	lbeq	L316	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L317	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	10,s	;, iftmp.58
	cmpb	#10	;cmpqi:	;,
	lbeq	L318	;
L110:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L106:
;----- asm -----
; 938 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[730]drawroom(any_item(item(item_02, map02_hi)), getup(drawup_02, map02_lo), getleft(drawleft_02, map02_lo), room_y(0), room_x(2));
;--- end asm ---
	ldb	_screen+5	;,
	stb	11,s	;, D.3637
	lsrb	;
	lsrb	;
	stb	12,s	;, D.3639
	ldb	#3	;,
	andb	12,s	;, D.3639
	stb	12,s	;, D.3639
	ldb	,y	;,* prephitmp.327
	stb	47,s	;, temp.369
	ldb	#3	;,
	andb	47,s	;, temp.369
	stb	47,s	;, temp.369
	cmpb	#1	;cmpqi:	;,
	lbls	L319	;
L116:
	clr	13,s	; iftmp.60
L117:
	tst	_sf+2	; sf
	lbne	L118	;
	ldx	#_screen+13	;,
	stx	53,s	;, prephitmp.395
	clr	14,s	; iftmp.61
L119:
	ldb	#127	;,
	stb	60,s	;, ry
	ldb	#42	;,
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	13,s	; tmp177, iftmp.60
	addb	12,s	; tmp177, D.3639
	addb	14,s	; tmp177, iftmp.61
	lbeq	L124	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	13,s	;, iftmp.60
	cmpb	#2	;cmpqi:	;,
	lbeq	L320	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L321	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	12,s	;, D.3639
	cmpb	#2	;cmpqi:	;,
	lbeq	L322	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L323	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	14,s	;, iftmp.61
	cmpb	#10	;cmpqi:	;,
	lbeq	L324	;
L128:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L124:
;----- asm -----
; 940 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[731]drawroom(0, getup(drawup_03, map03_lo), getleft(drawleft_03, map03_lo), room_y(0), room_x(3));
;--- end asm ---
	ldx	53,s	;, prephitmp.395
	ldb	,x	;,
	stb	48,s	;, temp.372
	ldb	#3	; tmp179,
	andb	48,s	; tmp179, temp.372
	cmpb	#1	;cmpqi:	; tmp179,
	lbls	L325	;
L134:
	clr	16,s	; iftmp.63
L135:
	ldb	#127	;,
	stb	59,s	;, ry
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	16,s	; iftmp.63
	lbeq	L136	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	16,s	;, iftmp.63
	cmpb	#2	;cmpqi:	;,
	lbeq	L326	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L327	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L138:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L136:
;----- asm -----
; 943 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[733]drawroom(any_item(item(item_10, map10_hi)), getup(drawup_10, map10_lo), getleft(drawleft_10, map10_lo), room_y(1), room_x(0));
;--- end asm ---
	ldb	,y	;,* prephitmp.327
	stb	49,s	;, temp.376
	ldb	#12	;,
	andb	49,s	;, temp.376
	stb	49,s	;, temp.376
	cmpb	#4	;cmpqi:	;,
	lbls	L140	;
	clr	18,s	; iftmp.65
	clr	17,s	; iftmp.64
	clr	41,s	; prephitmp.331
L141:
	tst	_sf+2	; sf
	beq	L142	;
	ldb	49,s	;, temp.376
	cmpb	#4	;cmpqi:	;,
	lbls	L328	;
L142:
	clr	19,s	; iftmp.66
L143:
	ldb	#42	;,
	stb	60,s	;, ry
	ldb	#-128	;,
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	19,s	;, iftmp.66
	addb	41,s	;, prephitmp.331
	lbeq	L144	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	18,s	;, iftmp.65
	cmpb	#2	;cmpqi:	;,
	lbeq	L329	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L330	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	17,s	;, iftmp.64
	cmpb	#2	;cmpqi:	;,
	lbeq	L331	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L332	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	19,s	;, iftmp.66
	cmpb	#10	;cmpqi:	;,
	lbeq	L333	;
L148:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L144:
;----- asm -----
; 946 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[735]drawroom(0, getup(drawup_11, map11_lo), getleft(drawleft_11, map11_lo), room_y(1), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.327
	lsrb	;
	lsrb	;
	stb	20,s	;, D.3674
	ldb	#3	;,
	andb	20,s	;, D.3674
	stb	20,s	;, D.3674
	ldb	#3	;,
	andb	,y	;,* prephitmp.327
	stb	36,s	;, D.4168
	ldb	#42	;,
	stb	59,s	;, ry
	ldb	#-43	;,
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	20,s	; tmp188, D.3674
	addb	36,s	; tmp188, D.4168
	lbeq	L154	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	36,s	;, D.4168
	cmpb	#2	;cmpqi:	;,
	lbeq	L334	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L335	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	20,s	;, D.3674
	cmpb	#2	;cmpqi:	;,
	lbeq	L336	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L337	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L158:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L154:
;----- asm -----
; 948 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[736]drawroom(any_item(item(item_12, map12_hi)), getup(drawup_12, map12_lo), getleft(drawleft_12, map12_lo), room_y(1), room_x(2));
;--- end asm ---
	ldx	53,s	;, prephitmp.395
	ldb	,x	;,
	stb	2,s	;, temp.382
	lsrb	;
	lsrb	;
	stb	21,s	;, D.3676
	ldb	#3	;,
	andb	21,s	;, D.3676
	stb	21,s	;, D.3676
	ldb	#12	;,
	andb	2,s	;, temp.382
	stb	50,s	;, temp.383
	cmpb	#4	;cmpqi:	;,
	lbls	L164	;
	clr	22,s	; iftmp.68
L165:
	tst	_sf+2	; sf
	beq	L166	;
	ldb	50,s	;, temp.383
	cmpb	#4	;cmpqi:	;,
	lbls	L338	;
L166:
	clr	23,s	; iftmp.69
L167:
	ldb	#42	;,
	stb	60,s	;, ry
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	22,s	; tmp192, iftmp.68
	addb	21,s	; tmp192, D.3676
	addb	23,s	; tmp192, iftmp.69
	lbeq	L168	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	22,s	;, iftmp.68
	cmpb	#2	;cmpqi:	;,
	lbeq	L339	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L340	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	21,s	;, D.3676
	cmpb	#2	;cmpqi:	;,
	lbeq	L341	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L342	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	23,s	;, iftmp.69
	cmpb	#10	;cmpqi:	;,
	lbeq	L343	;
L172:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L168:
;----- asm -----
; 950 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[737]drawroom(0, getup(drawup_13, map13_lo), getleft(drawleft_13, map13_lo), room_y(1), room_x(3));
;--- end asm ---
	ldx	53,s	;, prephitmp.395
	ldb	,x	; tmp195,
	andb	#12	; tmp195,
	cmpb	#4	;cmpqi:	; tmp195,
	lbls	L178	;
	clr	24,s	; iftmp.71
L179:
	ldb	#42	;,
	stb	59,s	;, ry
	ldb	#127	;,
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	24,s	; iftmp.71
	lbeq	L180	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	24,s	;, iftmp.71
	cmpb	#2	;cmpqi:	;,
	lbeq	L344	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L345	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L182:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L180:
;----- asm -----
; 953 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[739]drawroom(any_item(item(item_20, map20_hi)), getup(drawup_20, map20_lo), getleft(drawleft_20, map20_lo), room_y(2), room_x(0));
;--- end asm ---
	ldb	_screen+17	;,
	stb	26,s	;, D.3693
	ldb	#3	;,
	andb	26,s	;, D.3693
	stb	51,s	;, iftmp.387
	cmpb	#1	;cmpqi:	;,
	lbls	L346	;
	ldb	,y	;,* prephitmp.327
	stb	2,s	;, temp.389
	ldb	#12	;,
	andb	2,s	;, temp.389
	stb	2,s	;, temp.389
	cmpb	#4	;cmpqi:	;,
	lbls	L347	;
L185:
	clr	27,s	; iftmp.73
	clr	25,s	; iftmp.72
	clr	44,s	; prephitmp.351
L187:
	tst	_sf+2	; sf
	lbne	L188	;
	ldy	#_screen+19	; prephitmp.397,
	clr	28,s	; iftmp.74
L189:
	ldb	#-43	;,
	stb	60,s	;, ry
	ldb	#-128	;,
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	28,s	;, iftmp.74
	addb	44,s	;, prephitmp.351
	lbeq	L194	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	27,s	;, iftmp.73
	cmpb	#2	;cmpqi:	;,
	lbeq	L348	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L349	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	25,s	;, iftmp.72
	cmpb	#2	;cmpqi:	;,
	lbeq	L350	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L351	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	28,s	;, iftmp.74
	cmpb	#10	;cmpqi:	;,
	lbeq	L352	;
L198:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L194:
;----- asm -----
; 955 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[740]drawroom(any_item(item(item_21, map21_hi)), getup(drawup_21, map21_lo), getleft(drawleft_21, map21_lo), room_y(2), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.397
	stb	2,s	;, temp.393
	ldb	#3	;,
	andb	2,s	;, temp.393
	stb	52,s	;, temp.394
	cmpb	#1	;cmpqi:	;,
	lbls	L204	;
	clr	30,s	; iftmp.76
L205:
	tst	_sf+2	; sf
	beq	L206	;
	ldb	52,s	;, temp.394
	cmpb	#1	;cmpqi:	;,
	lbls	L353	;
L206:
	clr	31,s	; iftmp.77
L207:
	ldb	#-43	;,
	stb	59,s	;, ry
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	30,s	; tmp208, iftmp.76
	addb	52,s	; tmp208, temp.394
	addb	31,s	; tmp208, iftmp.77
	lbeq	L208	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	52,s	;, temp.394
	cmpb	#2	;cmpqi:	;,
	lbeq	L354	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L355	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	30,s	;, iftmp.76
	cmpb	#2	;cmpqi:	;,
	lbeq	L356	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L357	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	31,s	;, iftmp.77
	cmpb	#10	;cmpqi:	;,
	lbeq	L358	;
L212:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L208:
;----- asm -----
; 957 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[741]drawroom(any_item(item(item_22, map22_hi)), getup(drawup_22, map22_lo), getleft(drawleft_22, map22_lo), room_y(2), room_x(2));
;--- end asm ---
	ldb	,y	;,* prephitmp.397
	stb	55,s	;, temp.400
	ldb	#3	;,
	andb	55,s	;, temp.400
	stb	55,s	;, temp.400
	cmpb	#1	;cmpqi:	;,
	lbls	L218	;
	ldx	#_screen+21	;,
	stx	42,s	;, prephitmp.333
	clr	32,s	; iftmp.79
L219:
	ldx	53,s	;, prephitmp.395
	ldb	,x	;,
	stb	56,s	;, temp.402
	ldb	#12	;,
	andb	56,s	;, temp.402
	stb	56,s	;, temp.402
	cmpb	#4	;cmpqi:	;,
	lbls	L220	;
	clr	33,s	; iftmp.80
L221:
	tst	_sf+2	; sf
	beq	L222	;
	ldx	42,s	;, prephitmp.333
	ldb	,x	;,
	stb	57,s	;, temp.405
	ldb	#3	; tmp215,
	andb	57,s	; tmp215, temp.405
	cmpb	#1	;cmpqi:	; tmp215,
	lbls	L359	;
L223:
	ldb	55,s	;, temp.400
	cmpb	#1	;cmpqi:	;,
	lbls	L360	;
L222:
	clr	34,s	; iftmp.81
L225:
	ldb	#-43	;,
	stb	60,s	;, ry
	ldb	#42	;,
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	33,s	; tmp218, iftmp.80
	addb	32,s	; tmp218, iftmp.79
	addb	34,s	; tmp218, iftmp.81
	lbeq	L226	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	33,s	;, iftmp.80
	cmpb	#2	;cmpqi:	;,
	lbeq	L361	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L362	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	32,s	;, iftmp.79
	cmpb	#2	;cmpqi:	;,
	lbeq	L363	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L364	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
	ldb	34,s	;, iftmp.81
	cmpb	#10	;cmpqi:	;,
	lbeq	L365	;
L230:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L226:
;----- asm -----
; 959 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[742]drawroom(0, getup(drawup_23, map23_lo), getleft(drawleft_23, map23_lo), room_y(2), room_x(3));
;--- end asm ---
	ldx	42,s	;, prephitmp.333
	ldb	,x	; tmp221,
	andb	#3	; tmp221,
	cmpb	#1	;cmpqi:	; tmp221,
	lbls	L366	;
L236:
	clr	35,s	; iftmp.83
L237:
	ldb	#-43	;,
	stb	59,s	;, ry
	ldb	#127	;,
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	35,s	; iftmp.83
	lbeq	L238	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
;--- end asm ---
	ldb	35,s	;, iftmp.83
	cmpb	#2	;cmpqi:	;,
	lbeq	L367	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L368	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L240:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L238:
;----- asm -----
; 962 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[744]drawroom(0, getup(drawup_30, map30_lo), getleft(drawleft_30, map30_lo), room_y(3), room_x(0));
;--- end asm ---
	ldb	,y	;,* prephitmp.397
	stb	58,s	;, temp.411
	ldb	#3	; tmp225,
	andb	58,s	; tmp225, temp.411
	cmpb	#1	;cmpqi:	; tmp225,
	lbls	L369	;
L242:
	clr	37,s	; D.4217
L243:
	ldb	#-128	;,
	stb	60,s	;, ry
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	37,s	; D.4217
	lbeq	L244	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	37,s	;, D.4217
	cmpb	#2	;cmpqi:	;,
	lbeq	L370	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L371	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L246:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L244:
;----- asm -----
; 964 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[745]drawroom(0, getup(drawup_31, map31_lo), getleft(drawleft_31, map31_lo), room_y(3), room_x(1));
;--- end asm ---
	ldb	,y	; tmp229,* prephitmp.397
	andb	#3	; tmp229,
	cmpb	#1	;cmpqi:	; tmp229,
	lbls	L248	;
	clr	38,s	; D.4224
L249:
	ldb	#-128	;,
	stb	59,s	;, ry
	ldb	#-43	;,
	stb	60,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	38,s	; D.4224
	lbeq	L250	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      59,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      60,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	38,s	;, D.4224
	cmpb	#2	;cmpqi:	;,
	lbeq	L372	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L373	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L252:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L250:
;----- asm -----
; 966 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[746]drawroom(0, getup(drawup_32, map32_lo), getleft(drawleft_32, map32_lo), room_y(3), room_x(2));
;--- end asm ---
	ldb	,y	; tmp232,* prephitmp.397
	andb	#3	; tmp232,
	cmpb	#1	;cmpqi:	; tmp232,
	lbls	L374	;
L254:
	clr	39,s	; D.4231
L255:
	ldb	#-128	;,
	stb	60,s	;, ry
	ldb	#42	;,
	stb	59,s	;, rx
;----- asm -----
; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	tst	39,s	; D.4231
	lbeq	L256	;
;----- asm -----
; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	addb	#28	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[569]moveto_start;
; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      60,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      59,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[572]if (drawup == 2)
;--- end asm ---
	ldb	39,s	;, D.4231
	cmpb	#2	;cmpqi:	;,
	lbeq	L375	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L376	;
;----- asm -----
; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[592]if (drawleft == 2)
; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[604]if (content == 10) drawunkown();
;--- end asm ---
L258:
;----- asm -----
; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[607]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L256:
;----- asm -----
; 969 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[748]_y_  = 90;
;--- end asm ---
	ldb	#90	;,
	stb	__y_	;, _y_
;----- asm -----
; 971 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[749]if (lightchange>0) intensity_a((unsigned int) (lightchange-0x20));
;--- end asm ---
	ldb	_lightChange	; lightChange.87, lightChange
	lble	L260	;
	addb	#-32	; lightChange.87,
	jsr	__Intensity_a
L261:
;----- asm -----
; 975 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[752]for (int i=0;i<11;i++)
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf	; sf
	lbne	L377	;
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+1	; sf
	lbne	L378	;
L263:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+2	; sf
	lbne	L379	;
L264:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+3	; sf
	lbne	L380	;
L265:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+4	; sf
	lbne	L381	;
L266:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+5	; sf
	lbne	L382	;
L267:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+6	; sf
	lbne	L383	;
L268:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+7	; sf
	lbne	L384	;
L269:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+8	; sf
	lbne	L385	;
L270:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+9	; sf
	lbne	L386	;
L271:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+10	; sf
	lbne	L387	;
L272:
;----- asm -----
; 994 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[764]_x_  = 100;
;--- end asm ---
	ldb	#100	;,
	stb	__x_	;, _x_
;----- asm -----
; 996 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[765]for (int i=0; i<19;i++)
;--- end asm ---
	ldy	#0	; ivtmp.343,
L274:
;----- asm -----
; 999 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[767]if (stackm[i] != -1)
;--- end asm ---
	ldb	_stackM,y	;, stackM
	cmpb	#-1	;cmpqi:	;,
	lbeq	L273	;
;----- asm -----
; 1002 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1004 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[770]_y_ =70-i*10;
;--- end asm ---
	tfr	y,d	; ivtmp.343,
	lda	#-10	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp249
; ORG>	tfr	d,x	;, tmp249
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp249, tmp250
	addb	#70	; tmp250,
	stb	__y_	; tmp250, _y_
;----- asm -----
; 1006 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]moveto_start_yx
; 1007 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]drawdot();
;--- end asm ---
	jsr	_drawDot
L273:
	leay	1,y	; ivtmp.343,, ivtmp.343
	cmpy	#19	;cmphi:	; ivtmp.343,
	lbne	L274	;
L275:
	leas	61,s	;,,
	puls	y,u,pc	;
L80:
	ldb	_printTreasure	;, printTreasure
	cmpb	#-1	;cmpqi:	;,
	lbeq	L82	;
;----- asm -----
; 911 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[712]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 913 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[713]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 915 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[714]drawtreasure(printtreasure);
;--- end asm ---
	ldb	_printTreasure	;, printTreasure
	jsr	_drawTreasure
	lbra	L81	;
L294:
	stb	_printEnvironment	;, printEnvironment
	lbra	L66	;
L293:
	jsr	_generateDisplayMap
	lbra	L65	;
L304:
;----- asm -----
; 887 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[696]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 889 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[697]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 891 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[698]drawplayer();
;--- end asm ---
	jsr	_drawPlayer
	lbra	L78	;
L303:
;----- asm -----
; 881 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[692]ayfx_sound1();
; 93 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	jsr sfx_doframe_intern_1; DO_SFX1
;--- end asm ---
	lbra	L77	;
L220:
	ldx	42,s	;, prephitmp.333
	ldb	,x	;,
	stb	33,s	;, iftmp.80
	ldb	#3	;,
	andb	33,s	;, iftmp.80
	stb	33,s	;, iftmp.80
	lbra	L221	;
L188:
	ldb	51,s	;, iftmp.387
	cmpb	#1	;cmpqi:	;,
	lbls	L388	;
L190:
	ldy	#_screen+19	; prephitmp.397,
	ldb	_screen+19	;,
	stb	29,s	;, D.3704
	ldb	#3	; tmp201,
	andb	29,s	; tmp201, D.3704
	cmpb	#1	;cmpqi:	; tmp201,
	lbls	L389	;
L192:
	clr	28,s	; iftmp.74
	lbra	L189	;
L178:
	ldb	_screen+15	;,
	lsrb	;
	lsrb	;
	stb	24,s	;, iftmp.71
	ldb	#3	;,
	andb	24,s	;, iftmp.71
	stb	24,s	;, iftmp.71
	lbra	L179	;
L164:
	ldb	#3	;,
	andb	2,s	;, temp.382
	stb	22,s	;, iftmp.68
	lbra	L165	;
L140:
	ldb	_screen+9	;,
	lsrb	;
	lsrb	;
	stb	17,s	;, iftmp.64
	ldb	#3	;,
	andb	17,s	;, iftmp.64
	stb	17,s	;, iftmp.64
	ldb	#3	;,
	andb	_screen+9	;,
	stb	18,s	;, iftmp.65
	ldb	17,s	;, iftmp.64
	addb	18,s	;, iftmp.65
	stb	41,s	;, prephitmp.331
	lbra	L141	;
L118:
	ldb	47,s	;, temp.369
	cmpb	#1	;cmpqi:	;,
	lbls	L390	;
L120:
	ldx	#_screen+13	;,
	stx	53,s	;, prephitmp.395
	ldb	_screen+13	;,
	stb	15,s	;, D.3651
	ldb	#3	; tmp174,
	andb	15,s	; tmp174, D.3651
	cmpb	#1	;cmpqi:	; tmp174,
	lbls	L391	;
L122:
	clr	14,s	; iftmp.61
	lbra	L119	;
L347:
	clr	25,s	; iftmp.72
	ldb	25,s	;, iftmp.72
L186:
	addb	51,s	;, iftmp.387
	stb	44,s	;, prephitmp.351
	ldb	51,s	;, iftmp.387
	stb	27,s	;, iftmp.73
	lbra	L187	;
L298:
;----- asm -----
; 849 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[668]sfx_pointer_1 = (long unsigned int) (&cube_c64_data);
;--- end asm ---
	ldx	#_cube_c64_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L73	;
L295:
;----- asm -----
; 798 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[635]elevatory = 0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 800 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[636]inelevator = 0;
;--- end asm ---
	clr	_inElevator	; inElevator
	lbra	L68	;
L82:
	tst	_printEnvironment	; printEnvironment
	lbeq	L81	;
;----- asm -----
; 920 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[718]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 922 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[719]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 924 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[720]environmentdrawer[printenvironment-1]();
;--- end asm ---
	ldb	_printEnvironment	; tmp145, printEnvironment
	decb	; tmp145
	sex		;extendqihi2: R:b -> R:d	; tmp145, tmp146
	aslb	;
	rola	;
	tfr	d,x	; tmp146, tmp148
	jsr	[_environmentDrawer,x]
	lbra	L81	;
L328:
	ldb	_screen+8	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	19,s	;, iftmp.66
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L143	;
	lbra	L142	;
L338:
	ldb	_screen+12	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	23,s	;, iftmp.69
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L167	;
	lbra	L166	;
L297:
;----- asm -----
; 839 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[661]if (sfx_status_1==0) initsoundno = sound_box;
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.39, sfx_status_1
	lbne	L69	;
	ldb	#3	;,
	stb	_initSoundNo	;, initSoundNo
	lbra	L69	;
L296:
;----- asm -----
; 826 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[653]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 828 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[654]dp_via_cntl = 0xce;
;--- end asm ---
	addb	#2	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 830 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[655]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 832 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[656]drawflame();
;--- end asm ---
	jsr	_drawFlame
;----- asm -----
; 834 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[657]if (sfx_status_1==0) initsoundno = sound_dragon;
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.38, sfx_status_1
	lbne	L69	;
	ldb	#4	;,
	stb	_initSoundNo	;, initSoundNo
	lbra	L69	;
L306:
	ldb	#12	;,
	andb	40,s	;, prephitmp.329
	cmpb	#4	;cmpqi:	;,
	lbhi	L89	;
L90:
	ldb	_screen	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	7,s	;, iftmp.54
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L91	;
	lbra	L88	;
L353:
	ldb	_screen+18	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	31,s	;, iftmp.77
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L207	;
	lbra	L206	;
L390:
	ldb	#12	;,
	andb	11,s	;, D.3637
	ldx	#_screen+13	;,
	stx	53,s	;, prephitmp.395
	cmpb	#4	;cmpqi:	;,
	lbhi	L120	;
L121:
	ldb	_screen+4	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	14,s	;, iftmp.61
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L119	;
	ldx	#_screen+13	;,
	stx	53,s	;, prephitmp.395
	lbra	L122	;
L388:
	ldy	#_screen+19	; prephitmp.397,
	ldb	2,s	;, temp.389
	cmpb	#4	;cmpqi:	;,
	lbhi	L190	;
L191:
	ldb	_screen+16	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	28,s	;, iftmp.74
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L189	;
	ldy	#_screen+19	; prephitmp.397,
	lbra	L192	;
L359:
	ldb	56,s	;, temp.402
	cmpb	#4	;cmpqi:	;,
	lbhi	L223	;
L224:
	ldb	_screen+20	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	34,s	;, iftmp.81
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L225	;
	lbra	L222	;
L313:
	ldb	_screen+2	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	10,s	;, iftmp.58
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L105	;
	lbra	L104	;
L300:
;----- asm -----
; 859 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[676]sfx_pointer_1 = (long unsigned int) (&box_data);
;--- end asm ---
	ldx	#_box_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L73	;
L391:
	ldb	#12	;,
	andb	15,s	;, D.3651
	cmpb	#4	;cmpqi:	;,
	lbhi	L122	;
	lbra	L121	;
L307:
	ldb	_screen+3	; tmp160,
	andb	#12	; tmp160,
	cmpb	#4	;cmpqi:	; tmp160,
	lbhi	L88	;
	lbra	L90	;
L360:
	ldb	#12	;,
	andb	57,s	;, temp.405
	cmpb	#4	;cmpqi:	;,
	lbhi	L222	;
	bra	L224	;
L389:
	ldb	#12	;,
	andb	29,s	;, D.3704
	cmpb	#4	;cmpqi:	;,
	lbhi	L192	;
	lbra	L191	;
L377:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	addb	#29	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	clrb	;
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+1	; sf
	lbeq	L263	;
L378:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	addb	#49	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#1	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+2	; sf
	lbeq	L264	;
L379:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-60	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#2	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+3	; sf
	lbeq	L265	;
L380:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-40	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#3	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+4	; sf
	lbeq	L266	;
L381:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-20	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#4	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+5	; sf
	lbeq	L267	;
L382:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	clr	__x_	; _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#5	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+6	; sf
	lbeq	L268	;
L383:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#20	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#6	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+7	; sf
	lbeq	L269	;
L384:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#40	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#7	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+8	; sf
	lbeq	L270	;
L385:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#60	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#8	;,
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+9	; sf
	lbeq	L271	;
L386:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#80	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	jsr	_drawSpell
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]if (sf[i]>0)
;--- end asm ---
	tst	_sf+10	; sf
	lbeq	L272	;
L387:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#100	;,
	stb	__x_	;, _x_
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[758]moveto_start_yx
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      __y_	; _y_
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      __x_	; _x_
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawspell(i);
;--- end asm ---
	ldb	#10	;,
	jsr	_drawSpell
	lbra	L272	;
L260:
	ldb	#63	;,
	jsr	__Intensity_a
	lbra	L261	;
L319:
	ldb	#12	; tmp171,
	andb	11,s	; tmp171, D.3637
	cmpb	#4	;cmpqi:	; tmp171,
	lbhi	L116	;
	ldb	#3	;,
	andb	11,s	;, D.3637
	stb	13,s	;, iftmp.60
	lbra	L117	;
L102:
	ldb	_screen+3	;,
	lsrb	;
	lsrb	;
	stb	8,s	;, iftmp.56
	ldb	#3	;,
	andb	8,s	;, iftmp.56
	stb	8,s	;, iftmp.56
	ldb	#3	;,
	andb	_screen+3	;,
	stb	9,s	;, iftmp.57
	ldb	8,s	;, iftmp.56
	addb	9,s	;, iftmp.57
	stb	46,s	;, prephitmp.366
	lbra	L103	;
L374:
	ldx	42,s	;, prephitmp.333
	ldb	,x	; tmp234,
	andb	#12	; tmp234,
	cmpb	#4	;cmpqi:	; tmp234,
	lbhi	L254	;
	ldb	_screen+29	;,
	stb	39,s	;, D.4231
	ldb	#3	;,
	andb	39,s	;, D.4231
	stb	39,s	;, D.4231
	lbra	L255	;
L369:
	ldb	#12	;,
	andb	58,s	;, temp.411
	cmpb	#4	;cmpqi:	;,
	lbhi	L242	;
	ldb	_screen+25	;,
	stb	37,s	;, D.4217
	ldb	#3	;,
	andb	37,s	;, D.4217
	stb	37,s	;, D.4217
	lbra	L243	;
L248:
	ldb	_screen+27	;,
	stb	38,s	;, D.4224
	ldb	#3	;,
	andb	38,s	;, D.4224
	stb	38,s	;, D.4224
	lbra	L249	;
L366:
	ldx	53,s	;, prephitmp.395
	ldb	,x	; tmp223,
	andb	#12	; tmp223,
	cmpb	#4	;cmpqi:	; tmp223,
	lbhi	L236	;
	ldb	_screen+23	;,
	lsrb	;
	lsrb	;
	stb	35,s	;, iftmp.83
	ldb	#3	;,
	andb	35,s	;, iftmp.83
	stb	35,s	;, iftmp.83
	lbra	L237	;
L204:
	ldb	2,s	;, temp.393
	lsrb	;
	lsrb	;
	stb	30,s	;, iftmp.76
	ldb	#3	;,
	andb	30,s	;, iftmp.76
	stb	30,s	;, iftmp.76
	lbra	L205	;
L325:
	ldb	#12	;,
	andb	48,s	;, temp.372
	cmpb	#4	;cmpqi:	;,
	lbhi	L134	;
	ldb	_screen+7	;,
	lsrb	;
	lsrb	;
	stb	16,s	;, iftmp.63
	ldb	#3	;,
	andb	16,s	;, iftmp.63
	stb	16,s	;, iftmp.63
	lbra	L135	;
L305:
	ldb	_screen+3	; tmp155,
	andb	#12	; tmp155,
	cmpb	#4	;cmpqi:	; tmp155,
	lbhi	L86	;
	ldb	_screen+1	;,
	stb	5,s	;, iftmp.53
	ldb	#3	;,
	andb	5,s	;, iftmp.53
	stb	5,s	;, iftmp.53
	lbra	L87	;
L83:
	ldy	#_screen+11	; prephitmp.327,
	ldb	_screen+11	;,
	stb	40,s	;, prephitmp.329
	ldb	#12	; tmp152,
	andb	40,s	; tmp152, prephitmp.329
	cmpb	#4	;cmpqi:	; tmp152,
	bls	L85	;
	clr	3,s	; iftmp.52
	lbra	L84	;
L346:
	ldb	,y	;,* prephitmp.327
	stb	2,s	;, temp.389
	ldb	#12	;,
	andb	2,s	;, temp.389
	stb	2,s	;, temp.389
	cmpb	#4	;cmpqi:	;,
	lbhi	L185	;
	ldb	26,s	;, D.3693
	lsrb	;
	lsrb	;
	stb	25,s	;, iftmp.72
	ldb	#3	;,
	andb	25,s	;, iftmp.72
	stb	25,s	;, iftmp.72
	lbra	L186	;
L218:
	ldx	#_screen+21	;,
	stx	42,s	;, prephitmp.333
	ldb	_screen+21	;,
	lsrb	;
	lsrb	;
	stb	32,s	;, iftmp.79
	ldb	#3	;,
	andb	32,s	;, iftmp.79
	stb	32,s	;, iftmp.79
	lbra	L219	;
L299:
;----- asm -----
; 854 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[672]sfx_pointer_1 = (long unsigned int) (&teleport_data);
;--- end asm ---
	ldx	#_teleport_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L73	;
L85:
	ldb	_screen+1	;,
	lsrb	;
	lsrb	;
	stb	3,s	;, iftmp.52
	ldb	#3	;,
	andb	3,s	;, iftmp.52
	stb	3,s	;, iftmp.52
	lbra	L84	;
L301:
;----- asm -----
; 864 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[680]sfx_pointer_1 = (long unsigned int) (&dragon_data);
;--- end asm ---
	ldx	#_dragon_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L73	;
L321:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	12,s	;, D.3639
	cmpb	#2	;cmpqi:	;,
	lbeq	L392	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L393	;
L131:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	14,s	;, iftmp.61
	cmpb	#10	;cmpqi:	;,
	lbne	L128	;
L282:
	jsr	_drawUnkown_noZero
	lbra	L128	;
L327:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L138	;
L315:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	8,s	;, iftmp.56
	cmpb	#2	;cmpqi:	;,
	lbeq	L394	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L395	;
L113:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	10,s	;, iftmp.58
	cmpb	#10	;cmpqi:	;,
	lbne	L110	;
L280:
	jsr	_drawUnkown_noZero
	lbra	L110	;
L368:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L240	;
L371:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L246	;
L309:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	3,s	;, iftmp.52
	cmpb	#2	;cmpqi:	;,
	lbeq	L396	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L397	;
L99:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	7,s	;, iftmp.54
	cmpb	#10	;cmpqi:	;,
	lbne	L96	;
L278:
	jsr	_drawUnkown_noZero
	lbra	L96	;
L349:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	25,s	;, iftmp.72
	cmpb	#2	;cmpqi:	;,
	lbeq	L398	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L399	;
L201:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	28,s	;, iftmp.74
	cmpb	#10	;cmpqi:	;,
	lbne	L198	;
L288:
	jsr	_drawUnkown_noZero
	lbra	L198	;
L330:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	17,s	;, iftmp.64
	cmpb	#2	;cmpqi:	;,
	lbeq	L400	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L401	;
L151:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	19,s	;, iftmp.66
	cmpb	#10	;cmpqi:	;,
	lbne	L148	;
L284:
	jsr	_drawUnkown_noZero
	lbra	L148	;
L335:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	20,s	;, D.3674
	cmpb	#2	;cmpqi:	;,
	lbeq	L402	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L403	;
L161:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L158	;
L345:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L182	;
L340:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	21,s	;, D.3676
	cmpb	#2	;cmpqi:	;,
	lbeq	L404	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L405	;
L175:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	23,s	;, iftmp.69
	cmpb	#10	;cmpqi:	;,
	lbne	L172	;
L286:
	jsr	_drawUnkown_noZero
	lbra	L172	;
L373:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L252	;
L376:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L258	;
L355:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	30,s	;, iftmp.76
	cmpb	#2	;cmpqi:	;,
	lbeq	L406	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L407	;
L215:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	31,s	;, iftmp.77
	cmpb	#10	;cmpqi:	;,
	lbne	L212	;
L290:
	jsr	_drawUnkown_noZero
	lbra	L212	;
L362:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[583]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]if (drawleft == 2)
;--- end asm ---
	ldb	32,s	;, iftmp.79
	cmpb	#2	;cmpqi:	;,
	lbeq	L408	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L409	;
L233:
;----- asm -----
; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[588]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	34,s	;, iftmp.81
	cmpb	#10	;cmpqi:	;,
	lbne	L230	;
L292:
	jsr	_drawUnkown_noZero
	lbra	L230	;
L320:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	12,s	;, D.3639
	cmpb	#2	;cmpqi:	;,
	lbeq	L410	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L411	;
L127:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	14,s	;, iftmp.61
	cmpb	#10	;cmpqi:	;,
	lbne	L128	;
	lbra	L282	;
L308:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	3,s	;, iftmp.52
	cmpb	#2	;cmpqi:	;,
	lbeq	L412	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L413	;
L95:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	7,s	;, iftmp.54
	cmpb	#10	;cmpqi:	;,
	lbne	L96	;
	lbra	L278	;
L348:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	25,s	;, iftmp.72
	cmpb	#2	;cmpqi:	;,
	lbeq	L414	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L415	;
L197:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	28,s	;, iftmp.74
	cmpb	#10	;cmpqi:	;,
	lbne	L198	;
	lbra	L288	;
L326:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L138	;
L314:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	8,s	;, iftmp.56
	cmpb	#2	;cmpqi:	;,
	lbeq	L416	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L417	;
L109:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	10,s	;, iftmp.58
	cmpb	#10	;cmpqi:	;,
	lbne	L110	;
	lbra	L280	;
L329:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	17,s	;, iftmp.64
	cmpb	#2	;cmpqi:	;,
	lbeq	L418	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L419	;
L147:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	19,s	;, iftmp.66
	cmpb	#10	;cmpqi:	;,
	lbne	L148	;
	lbra	L284	;
L334:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	20,s	;, D.3674
	cmpb	#2	;cmpqi:	;,
	lbeq	L420	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L421	;
L157:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L158	;
L372:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L252	;
L370:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L246	;
L354:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	30,s	;, iftmp.76
	cmpb	#2	;cmpqi:	;,
	lbeq	L422	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L423	;
L211:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	31,s	;, iftmp.77
	cmpb	#10	;cmpqi:	;,
	lbne	L212	;
	lbra	L290	;
L367:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L240	;
L375:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L258	;
L361:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	32,s	;, iftmp.79
	cmpb	#2	;cmpqi:	;,
	lbeq	L424	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L425	;
L229:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	34,s	;, iftmp.81
	cmpb	#10	;cmpqi:	;,
	lbne	L230	;
	lbra	L292	;
L344:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L182	;
L339:
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[574]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]if (drawleft == 2)
;--- end asm ---
	ldb	21,s	;, D.3676
	cmpb	#2	;cmpqi:	;,
	lbeq	L426	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L427	;
L171:
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[579]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	23,s	;, iftmp.69
	cmpb	#10	;cmpqi:	;,
	lbne	L172	;
	lbra	L286	;
L302:
;----- asm -----
; 869 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[684]sfx_pointer_1 = (long unsigned int) (&death_data);
;--- end asm ---
	ldx	#_death_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L73	;
L350:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	28,s	;, iftmp.74
	cmpb	#10	;cmpqi:	;,
	lbne	L198	;
	lbra	L288	;
L356:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	31,s	;, iftmp.77
	cmpb	#10	;cmpqi:	;,
	lbne	L212	;
	lbra	L290	;
L363:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	34,s	;, iftmp.81
	cmpb	#10	;cmpqi:	;,
	lbne	L230	;
	lbra	L292	;
L310:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	7,s	;, iftmp.54
	cmpb	#10	;cmpqi:	;,
	lbne	L96	;
	lbra	L278	;
L316:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	10,s	;, iftmp.58
	cmpb	#10	;cmpqi:	;,
	lbne	L110	;
	lbra	L280	;
L322:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	14,s	;, iftmp.61
	cmpb	#10	;cmpqi:	;,
	lbne	L128	;
	lbra	L282	;
L331:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	19,s	;, iftmp.66
	cmpb	#10	;cmpqi:	;,
	lbne	L148	;
	lbra	L284	;
L336:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L158	;
L341:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[594]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	23,s	;, iftmp.69
	cmpb	#10	;cmpqi:	;,
	lbne	L172	;
	lbra	L286	;
L342:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	23,s	;, iftmp.69
	cmpb	#10	;cmpqi:	;,
	lbne	L172	;
	lbra	L286	;
L332:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	19,s	;, iftmp.66
	cmpb	#10	;cmpqi:	;,
	lbne	L148	;
	lbra	L284	;
L337:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	lbra	L158	;
L357:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	31,s	;, iftmp.77
	cmpb	#10	;cmpqi:	;,
	lbne	L212	;
	lbra	L290	;
L323:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	14,s	;, iftmp.61
	cmpb	#10	;cmpqi:	;,
	lbne	L128	;
	lbra	L282	;
L364:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	34,s	;, iftmp.81
	cmpb	#10	;cmpqi:	;,
	lbne	L230	;
	lbra	L292	;
L311:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	7,s	;, iftmp.54
	cmpb	#10	;cmpqi:	;,
	lbne	L96	;
	lbra	L278	;
L317:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	10,s	;, iftmp.58
	cmpb	#10	;cmpqi:	;,
	lbne	L110	;
	lbra	L280	;
L351:
;----- asm -----
; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[599]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	28,s	;, iftmp.74
	cmpb	#10	;cmpqi:	;,
	lbne	L198	;
	lbra	L288	;
L358:
	jsr	_drawUnkown
	lbra	L212	;
L324:
	jsr	_drawUnkown
	lbra	L128	;
L365:
	jsr	_drawUnkown
	lbra	L230	;
L312:
	jsr	_drawUnkown
	lbra	L96	;
L333:
	jsr	_drawUnkown
	lbra	L148	;
L343:
	jsr	_drawUnkown
	lbra	L172	;
L318:
	jsr	_drawUnkown
	lbra	L110	;
L352:
	jsr	_drawUnkown
	lbra	L198	;
L410:
	jsr	_drawLeftDoor_noZero
	lbra	L127	;
L412:
	jsr	_drawLeftDoor_noZero
	lbra	L95	;
L426:
	jsr	_drawLeftDoor_noZero
	lbra	L171	;
L414:
	jsr	_drawLeftDoor_noZero
	lbra	L197	;
L420:
	jsr	_drawLeftDoor_noZero
	lbra	L157	;
L418:
	jsr	_drawLeftDoor_noZero
	lbra	L147	;
L416:
	jsr	_drawLeftDoor_noZero
	lbra	L109	;
L422:
	jsr	_drawLeftDoor_noZero
	lbra	L211	;
L424:
	jsr	_drawLeftDoor_noZero
	lbra	L229	;
L425:
	jsr	_drawLeftWall_noZero
	lbra	L229	;
L417:
	jsr	_drawLeftWall_noZero
	lbra	L109	;
L423:
	jsr	_drawLeftWall_noZero
	lbra	L211	;
L406:
	jsr	_drawLeftDoor_noZero
	lbra	L215	;
L394:
	jsr	_drawLeftDoor_noZero
	lbra	L113	;
L427:
	jsr	_drawLeftWall_noZero
	lbra	L171	;
L415:
	jsr	_drawLeftWall_noZero
	lbra	L197	;
L421:
	jsr	_drawLeftWall_noZero
	lbra	L157	;
L419:
	jsr	_drawLeftWall_noZero
	lbra	L147	;
L411:
	jsr	_drawLeftWall_noZero
	lbra	L127	;
L413:
	jsr	_drawLeftWall_noZero
	lbra	L95	;
L398:
	jsr	_drawLeftDoor_noZero
	lbra	L201	;
L392:
	jsr	_drawLeftDoor_noZero
	lbra	L131	;
L404:
	jsr	_drawLeftDoor_noZero
	lbra	L175	;
L400:
	jsr	_drawLeftDoor_noZero
	lbra	L151	;
L396:
	jsr	_drawLeftDoor_noZero
	lbra	L99	;
L402:
	jsr	_drawLeftDoor_noZero
	lbra	L161	;
L408:
	jsr	_drawLeftDoor_noZero
	lbra	L233	;
L409:
	jsr	_drawLeftWall_noZero
	lbra	L233	;
L405:
	jsr	_drawLeftWall_noZero
	lbra	L175	;
L401:
	jsr	_drawLeftWall_noZero
	lbra	L151	;
L397:
	jsr	_drawLeftWall_noZero
	lbra	L99	;
L403:
	jsr	_drawLeftWall_noZero
	lbra	L161	;
L407:
	jsr	_drawLeftWall_noZero
	lbra	L215	;
L395:
	jsr	_drawLeftWall_noZero
	lbra	L113	;
L399:
	jsr	_drawLeftWall_noZero
	lbra	L201	;
L393:
	jsr	_drawLeftWall_noZero
	lbra	L131	;
LC37:
	.ascii	"YOU HAVE % IN THE SAFE\0"
LC38:
	.ascii	"THEY CASH IN YOUR GOLD\0"
LC39:
	.ascii	"CHARACTER SAVED (TEMPORARILY)\0"
LC40:
	.ascii	"YOU SPEND THE NIGHT\0"
LC41:
	.ascii	"YOU FEEL BETTER\0"
LC42:
	.ascii	"<4> TO RETURN TO THE DUNGEON\0"
LC43:
	.ascii	"<1> TO SAVE CHARACTER\0"
	.globl	_displayInn
_displayInn:
	pshs	y,u	;
	leas	-10,s	;,,
;----- asm -----
; 1034 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[796]saveseed();
;--- end asm ---
	jsr	_saveSeed
;----- asm -----
; 1036 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[797]unsigned long int m1 = cy;
;--- end asm ---
	ldb	_cy	;, cy
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, m1
;----- asm -----
; 1038 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[798]setrandseed((unsigned int) (m1*m1));
;--- end asm ---
	pshs	d	; m1
	jsr	_mulhi3
	leas	2,s	;,,
	tfr	x,d	;, tmp55
	stb	__x	;movlsbqihi: R:d -> __x	; _x, tmp55
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1041 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[800]const char * s1;
; 1043 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[801]const char * s2;
; 1045 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[802]const char * s3;
; 1047 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[803]s1 = in1[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3796, D.3796
	aslb	;
	rola	;
	tfr	d,x	; D.3796, tmp58
	ldx	_in1,x	;, in1
	stx	2,s	;, s1
;----- asm -----
; 1050 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[805]setrandseed((unsigned int) (cx+cy));
;--- end asm ---
	ldb	_cy	;, cy
	addb	_cx	;, cx
	stb	__x	;, _x
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1052 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[806]s2 = in2[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3799, D.3799
	aslb	;
	rola	;
	tfr	d,x	; D.3799, tmp62
	ldy	_in2,x	; s2, in2
;----- asm -----
; 1055 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[808]setrandseed((unsigned int) (cx*3+cy*7));
;--- end asm ---
	ldb	_cy	;, cy
	lda	#7	;umulqihi3	;
	mul
	tfr	d,x	;, tmp64
	ldb	_cx	;, cx
	aslb	;
	addb	_cx	;, cx
	stb	,s	;,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp64,
	stb	1,s	;,
	ldb	,s	;,
	addb	1,s	;,
	stb	__x	;, _x
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1057 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[809]s3 = in3[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3803, D.3803
	aslb	;
	rola	;
	tfr	d,x	; D.3803, tmp72
	ldu	_in3,x	; s3, in3
;----- asm -----
; 1059 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[810]restoreseed();
;--- end asm ---
	jsr	_restoreSeed
;----- asm -----
; 1063 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[813]if ((cx == 25) && (cy==13))
;--- end asm ---
	ldb	_cx	; cx.535, cx
	cmpb	#25	;cmpqi:	; cx.535,
	lbeq	L455	;
	cmpb	#26	;cmpqi:	; cx.535,
	beq	L456	;
	cmpb	#27	;cmpqi:	; cx.535,
	bne	L430	;
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	bne	L430	;
;----- asm -----
; 1087 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[830]s1 = in1[1];
;--- end asm ---
	ldx	#LC1	;,
	stx	2,s	;, s1
;----- asm -----
; 1089 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[831]s2 = in2[0];
;--- end asm ---
	ldy	#LC10	; s2,
;----- asm -----
; 1091 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[832]s3 = in3[2];
;--- end asm ---
	ldu	#LC22	; s3,
	bra	L430	;
L456:
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	lbeq	L457	;
L430:
;----- asm -----
; 1095 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[835]ex = ex + gd;
;--- end asm ---
	ldd	_ex+2	;, ex
	addd	_gd+2	;, gd
	std	_ex+2	;, ex
	ldd	_ex	;, ex
	adcb	_gd+1	; gd
	adca	_gd	; gd
	std	_ex	;, ex
;----- asm -----
; 1097 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[836]tg = tg + gd;
;--- end asm ---
	ldd	_tg+2	;, tg
	addd	_gd+2	;, gd
	std	_tg+2	;, tg
	ldd	_tg	;, tg
	adcb	_gd+1	; gd
	adca	_gd	; gd
	std	_tg	;, tg
;----- asm -----
; 1099 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[837]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 1101 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[838]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1103 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[839]cs = su;
;--- end asm ---
	ldd	_su	;, su
	std	_cs	;, cs
;----- asm -----
; 1109 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[844]for (int i=0; i<11;i++)
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+1	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+2	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+3	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+4	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+5	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+6	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+7	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+8	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+9	; sf
;----- asm -----
; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]sf[i] = 0;
;--- end asm ---
	clr	_sf+10	; sf
;----- asm -----
; 1117 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[850]_fll_s(, ((unsigned long long int) tg));
;--- end asm ---
	leas	-4,s	;,,
	ldx	_tg	;, tg
	stx	,s	;,
	ldd	_tg+2	;, tg
	std	2,s	;,
	ldx	#LC37	;,
	jsr	__fll_s
;----- asm -----
; 1120 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[852]int stage = 0;
; 1122 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[853]int counter = 100;
; 1124 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[854]int innx=0;
; 1126 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[855]int direction = 0;
; 1128 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[856]int b=0;
; 1130 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[857]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1132 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[858]printmessage();
;--- end asm ---
	ldx	#LC38	;,
	jsr	_printMessage
;----- asm -----
; 1134 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[859]printmessage( stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1136 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]while (1)
;--- end asm ---
	clr	8,s	; stage
	ldb	#100	;,
	stb	9,s	;, counter
	clr	10,s	; innx
	clr	11,s	; direction
	clr	12,s	; b
	leas	4,s	;,,
L454:
;----- asm -----
; 1139 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[862]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 1141 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[863]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 1143 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[864]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1145 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[865]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 1147 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[866]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 1150 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[868]displaymessages();
;--- end asm ---
	clrb	;
	jsr	_subBank1
;----- asm -----
; 1154 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[871]vec_text_height = -3;
;--- end asm ---
	ldb	#-3	;,
	stb	_Vec_Text_Height	;, Vec_Text_Height
;----- asm -----
; 1156 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[872]vec_text_width = 0x30;
;--- end asm ---
	ldb	#48	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 1159 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[874]print_str_d_org(0x0,-0x30, s1);
;--- end asm ---
	clr	,-s	;
	ldx	3,s	;, s1
	ldb	#-48	;,
	jsr	__Print_Str_d
;----- asm -----
; 1161 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[875]print_str_d_org(-0x10,-0x10, s2);
;--- end asm ---
	ldb	#-16	;,
	stb	,-s	;,
	leax	,y	;, s2
	jsr	__Print_Str_d
;----- asm -----
; 1163 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[876]print_str_d_org(-0x20,0x10, s3);
;--- end asm ---
	ldb	#-32	;,
	stb	,-s	;,
	leax	,u	;, s3
	ldb	#16	;,
	jsr	__Print_Str_d
;----- asm -----
; 1166 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[878]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 1168 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[879]moveto_d(0x30,-0x00);
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	clrb	;
	jsr	__Moveto_d
;----- asm -----
; 1170 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[880]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1172 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[881]drawhome();
;--- end asm ---
	jsr	_drawHome
;----- asm -----
; 1174 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[882]__ass(::: ,,,);
; 1175 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 1176 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[883]if (direction)
;--- end asm ---
	leas	4,s	;,,
	tst	7,s	; direction
	lbeq	L433	;
;----- asm -----
; 1179 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[885]innx++;
;--- end asm ---
	inc	6,s	; innx
;----- asm -----
; 1181 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[886]if (innx==0x40) direction=0;
;--- end asm ---
	ldb	6,s	;, innx
	cmpb	#64	;cmpqi:	;,
	lbeq	L458	;
L434:
;----- asm -----
; 1191 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[893]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1193 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[894]moveto_d(0x70,innx);
;--- end asm ---
	ldb	#112	;,
	stb	,-s	;,
	ldb	7,s	;, innx
	jsr	__Moveto_d
;----- asm -----
; 1195 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[895]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1198 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[897]intensity_a(0x3f);
;--- end asm ---
	addb	#54	;,
	jsr	__Intensity_a
;----- asm -----
; 1200 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[898]drawinn();
;--- end asm ---
	jsr	_drawInn
;----- asm -----
; 1202 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[899]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 1205 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[901]__ass(::: ,,,);
; 1206 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 1207 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[902]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1210 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[904]if (buttons_pressed()) b=1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	10,s	;, D.4118
	leas	1,s	;,,
	tstb	;
	beq	L435	;
	ldb	#1	;,
	stb	8,s	;, b
L435:
;----- asm -----
; 1212 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[905]if (stage == 0)
;--- end asm ---
	tst	4,s	; stage
	beq	L436	;
	ldb	4,s	;, stage
	cmpb	#1	;cmpqi:	;,
	beq	L436	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L459	;
L436:
;----- asm -----
; 1277 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[949]if ((b==1) && (!buttons_pressed()))
;--- end asm ---
	ldb	8,s	;, b
	cmpb	#1	;cmpqi:	;,
	lbeq	L460	;
L446:
;----- asm -----
; 1286 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[955]if (counter!=-1) counter--;
;--- end asm ---
	ldb	5,s	;, counter
	cmpb	#-1	;cmpqi:	;,
	beq	L448	;
	decb	;
	stb	5,s	;, counter
L448:
;----- asm -----
; 1289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[957]if (counter == 0)
;--- end asm ---
	tst	5,s	; counter
	lbne	L454	;
;----- asm -----
; 1292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[959]stage++;
;--- end asm ---
	inc	4,s	; stage
;----- asm -----
; 1294 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[960]counter = 100;
; 1296 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[961]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1298 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[962]if (stage == 1)
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L461	;
	ldb	#100	;,
	stb	5,s	;, counter
	ldb	4,s	;, stage
	cmpb	#2	;cmpqi:	;,
	lbne	L454	;
;----- asm -----
; 1308 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[969]printmessage();
;--- end asm ---
	ldx	#LC42	;,
	jsr	_printMessage
;----- asm -----
; 1310 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[970]printmessage();
;--- end asm ---
	ldx	#LC43	;,
	jsr	_printMessage
	lbra	L454	;
L433:
;----- asm -----
; 1186 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[890]innx--;
;--- end asm ---
	dec	6,s	; innx
;----- asm -----
; 1188 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[891]if (innx==-0x40) direction=1;
;--- end asm ---
	ldb	6,s	;, innx
	cmpb	#-64	;cmpqi:	;,
	lbne	L434	;
	ldb	#1	;,
	stb	7,s	;, direction
	lbra	L434	;
L460:
	tst	9,s	; D.4118
	lbne	L446	;
;----- asm -----
; 1280 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[951]b = 0;
; 1282 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[952]if (stage != 2) counter = 1;
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#2	;cmpqi:	;,
	beq	L447	;
	ldb	8,s	;, b
	stb	5,s	;, counter
	clr	8,s	; b
	lbra	L446	;
L458:
	clr	7,s	; direction
	lbra	L434	;
L459:
;----- asm -----
; 1227 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[919]counter = -1;
; 1229 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[920]if (button_1_4_pressed())
;--- end asm ---
	ldb	#8	; tmp91,
	andb	9,s	; tmp91, D.4118
	bne	L462	;
;----- asm -----
; 1235 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[924]if (button_1_1_pressed())
;--- end asm ---
	ldb	#1	; tmp92,
	andb	9,s	; tmp92, D.4118
	bne	L463	;
	ldb	#-1	;,
	stb	5,s	;, counter
	lbra	L436	;
L461:
;----- asm -----
; 1301 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[964]printmessage();
;--- end asm ---
	ldx	#LC40	;,
	jsr	_printMessage
;----- asm -----
; 1303 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[965]printmessage();
;--- end asm ---
	ldx	#LC41	;,
	jsr	_printMessage
	ldb	#100	;,
	stb	5,s	;, counter
	lbra	L454	;
L447:
	clr	8,s	; b
	lbra	L446	;
L462:
;----- asm -----
; 1232 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[922]return;
;--- end asm ---
	leas	10,s	;,,
	puls	y,u,pc	;
L463:
;----- asm -----
; 1238 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[926]#if flash_support == 1
; 1243 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[929]tmp_hp = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_tmp_hp	;, tmp_hp
;----- asm -----
; 1245 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[930]tmp_lv = lv;
;--- end asm ---
	ldb	_lv	;, lv
	stb	_tmp_lv	;, tmp_lv
;----- asm -----
; 1248 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[932]tmp_ex = ex;
;--- end asm ---
	ldx	_ex	;, ex
	stx	_tmp_ex	;, tmp_ex
	ldd	_ex+2	;, ex
	std	_tmp_ex+2	;, tmp_ex
;----- asm -----
; 1250 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[933]tmp_su = su;
;--- end asm ---
	ldx	_su	;, su
	stx	_tmp_su	;, tmp_su
;----- asm -----
; 1253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[935]tmp_cx = cx;
;--- end asm ---
	ldb	_cx	;, cx
	stb	_tmp_cx	;, tmp_cx
;----- asm -----
; 1255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[936]tmp_cy = cy;
;--- end asm ---
	ldb	_cy	;, cy
	stb	_tmp_cy	;, tmp_cy
;----- asm -----
; 1258 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[938]tmp_tg = tg;
;--- end asm ---
	ldx	_tg	;, tg
	stx	_tmp_tg	;, tmp_tg
	ldd	_tg+2	;, tg
	std	_tmp_tg+2	;, tmp_tg
;----- asm -----
; 1260 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[939]for (int i=0;i<6;i++) tmp_s[i] = s[i];
;--- end asm ---
	ldx	#_s	; vect_ps.507,
	ldd	#_tmp_s	; tmp99,
	pshs	x	; vect_ps.507
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp100
	lbne	L440	;
	ldx	_s	;,
	stx	_tmp_s	;,
	ldd	_s+2	;,
	std	_tmp_s+2	;,
	ldx	_s+4	;,
	stx	_tmp_s+4	;,
L441:
;----- asm -----
; 1262 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[940]for (int i=0;i<10;i++) tmp_inventory[i] = inventory[i];
;--- end asm ---
	ldx	#_inventory	; vect_pinventory.479,
	ldd	#_tmp_inventory	; tmp116,
	pshs	x	; vect_pinventory.479
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp117
	lbne	L442	;
	ldx	_inventory	;,
	stx	_tmp_inventory	;,
	ldd	_inventory+2	;,
	std	_tmp_inventory+2	;,
	ldx	_inventory+4	;,
	stx	_tmp_inventory+4	;,
	ldd	_inventory+6	;,
	std	_tmp_inventory+6	;,
	ldx	_inventory+8	;,
	stx	_tmp_inventory+8	;,
L443:
;----- asm -----
; 1264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[941]for (int i=0;i<4;i++)  tmp_box[i]  = box[i];
;--- end asm ---
	ldx	#_box	; vect_pbox.451,
	ldd	#_tmp_box	; tmp143,
	pshs	x	; vect_pbox.451
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp144
	lbne	L444	;
	ldx	_box	;,
	stx	_tmp_box	;,
	ldd	_box+2	;,
	std	_tmp_box+2	;,
L445:
;----- asm -----
; 1266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[942]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1268 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[943]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 1270 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[944]#endif
; 1272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[945]return;
;--- end asm ---
	leas	10,s	;,,
	puls	y,u,pc	;
L455:
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	lbne	L430	;
;----- asm -----
; 1067 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[816]s1 = in1[5];
;--- end asm ---
	ldx	#LC5	;,
	stx	2,s	;, s1
;----- asm -----
; 1069 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[817]s2 = in2[8];
;--- end asm ---
	ldy	#LC18	; s2,
;----- asm -----
; 1071 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[818]s3 = in3[4];
;--- end asm ---
	ldu	#LC24	; s3,
	lbra	L430	;
L444:
	ldb	_box	;, box
	stb	_tmp_box	;, tmp_box
	ldb	_box+1	;, box
	stb	_tmp_box+1	;, tmp_box
	ldb	_box+2	;, box
	stb	_tmp_box+2	;, tmp_box
	ldb	_box+3	;, box
	stb	_tmp_box+3	;, tmp_box
	lbra	L445	;
L442:
	ldb	_inventory	;, inventory
	stb	_tmp_inventory	;, tmp_inventory
	ldb	_inventory+1	;, inventory
	stb	_tmp_inventory+1	;, tmp_inventory
	ldb	_inventory+2	;, inventory
	stb	_tmp_inventory+2	;, tmp_inventory
	ldb	_inventory+3	;, inventory
	stb	_tmp_inventory+3	;, tmp_inventory
	ldb	_inventory+4	;, inventory
	stb	_tmp_inventory+4	;, tmp_inventory
	ldb	_inventory+5	;, inventory
	stb	_tmp_inventory+5	;, tmp_inventory
	ldb	_inventory+6	;, inventory
	stb	_tmp_inventory+6	;, tmp_inventory
	ldb	_inventory+7	;, inventory
	stb	_tmp_inventory+7	;, tmp_inventory
	ldb	_inventory+8	;, inventory
	stb	_tmp_inventory+8	;, tmp_inventory
	ldb	_inventory+9	;, inventory
	stb	_tmp_inventory+9	;, tmp_inventory
	lbra	L443	;
L440:
	ldb	_s	;, s
	stb	_tmp_s	;, tmp_s
	ldb	_s+1	;, s
	stb	_tmp_s+1	;, tmp_s
	ldb	_s+2	;, s
	stb	_tmp_s+2	;, tmp_s
	ldb	_s+3	;, s
	stb	_tmp_s+3	;, tmp_s
	ldb	_s+4	;, s
	stb	_tmp_s+4	;, tmp_s
	ldb	_s+5	;, s
	stb	_tmp_s+5	;, tmp_s
	lbra	L441	;
L457:
;----- asm -----
; 1077 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[823]s1 = in1[8];
;--- end asm ---
	ldx	#LC8	;,
	stx	2,s	;, s1
;----- asm -----
; 1079 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[824]s2 = in2[9];
;--- end asm ---
	ldy	#LC19	; s2,
;----- asm -----
; 1081 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[825]s3 = in3[9];
;--- end asm ---
	ldu	#LC28	; s3,
	lbra	L430	;
	.globl	_main
_main:
	clrb	;
	rts
