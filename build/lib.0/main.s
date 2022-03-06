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
	.globl	_flashAvailable
_flashAvailable:	.blkb	1
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
_tmp_inventory:	.blkb	20
	.globl	_tmp_box
_tmp_box:	.blkb	4
	.globl	_hp
_hp:	.blkb	2
	.globl	_lv
_lv:	.blkb	1
	.globl	_ex
_ex:	.blkb	4
	.globl	_su
_su:	.blkb	2
	.globl	_cx
_cx:	.blkb	1
	.globl	_cy
_cy:	.blkb	1
	.globl	_tg
_tg:	.blkb	4
	.globl	_s
_s:	.blkb	6
	.globl	_inventory
_inventory:	.blkb	20
	.globl	_box
_box:	.blkb	4
	.globl	_ch
_ch:	.blkb	2
	.globl	_cs
_cs:	.blkb	2
	.globl	_cz
_cz:	.blkb	1
	.globl	_gd
_gd:	.blkb	4
	.globl	_sf
_sf:	.blkb	11
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
	.globl	_stackM
_stackM:	.blkb	20
	.globl	_stackML
_stackML:	.blkb	20
	.globl	_stackMH
_stackMH:	.blkb	40
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
	.globl	_PLY_SONG_PLAYING
_PLY_SONG_PLAYING:	.blkb	1
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
	.globl	_gong_data
_gong_data:
	.byte	-19
	.byte	-75
	.byte	5
	.byte	0
	.byte	-116
	.byte	-83
	.byte	60
	.byte	5
	.byte	-116
	.byte	-84
	.byte	-75
	.byte	5
	.byte	-117
	.byte	-84
	.byte	60
	.byte	5
	.byte	-118
	.byte	-85
	.byte	-75
	.byte	5
	.byte	-118
	.byte	-86
	.byte	60
	.byte	5
	.byte	-119
	.byte	-86
	.byte	-75
	.byte	5
	.byte	-120
	.byte	-87
	.byte	60
	.byte	5
	.byte	-120
	.byte	-88
	.byte	-75
	.byte	5
	.byte	-121
	.byte	-88
	.byte	60
	.byte	5
	.byte	-121
	.byte	-89
	.byte	-75
	.byte	5
	.byte	-122
	.byte	-89
	.byte	60
	.byte	5
	.byte	-122
	.byte	-90
	.byte	-75
	.byte	5
	.byte	-121
	.byte	-90
	.byte	60
	.byte	5
	.byte	-123
	.byte	-90
	.byte	-75
	.byte	5
	.byte	-122
	.byte	-91
	.byte	60
	.byte	5
	.byte	-122
	.byte	-91
	.byte	-75
	.byte	5
	.byte	-124
	.byte	-91
	.byte	60
	.byte	5
	.byte	-123
	.byte	-92
	.byte	-75
	.byte	5
	.byte	-123
	.byte	-92
	.byte	60
	.byte	5
	.byte	-124
	.byte	32
	.byte	0
	.byte	5
	.byte	-48
	.byte	32
	.globl	_down_data
_down_data:
	.byte	-17
	.byte	3
	.byte	2
	.byte	0
	.byte	-81
	.byte	-48
	.byte	1
	.byte	-113
	.byte	-113
	.byte	-81
	.byte	-35
	.byte	1
	.byte	-81
	.byte	-22
	.byte	1
	.byte	-81
	.byte	15
	.byte	2
	.byte	-81
	.byte	65
	.byte	2
	.byte	-81
	.byte	91
	.byte	2
	.byte	-81
	.byte	116
	.byte	2
	.byte	-113
	.byte	-81
	.byte	-115
	.byte	2
	.byte	-113
	.byte	-81
	.byte	-103
	.byte	2
	.byte	-113
	.byte	-81
	.byte	-77
	.byte	2
	.byte	-81
	.byte	-65
	.byte	2
	.byte	-81
	.byte	-52
	.byte	2
	.byte	-81
	.byte	-15
	.byte	2
	.byte	-81
	.byte	10
	.byte	3
	.byte	-81
	.byte	36
	.byte	3
	.byte	-81
	.byte	48
	.byte	3
	.byte	-81
	.byte	86
	.byte	3
	.byte	-81
	.byte	124
	.byte	3
	.byte	-81
	.byte	-107
	.byte	3
	.byte	-81
	.byte	-57
	.byte	3
	.byte	-81
	.byte	-7
	.byte	3
	.byte	-81
	.byte	43
	.byte	4
	.byte	-81
	.byte	-125
	.byte	4
	.byte	-81
	.byte	-49
	.byte	4
	.byte	-81
	.byte	-11
	.byte	4
	.byte	-81
	.byte	102
	.byte	5
	.byte	-81
	.byte	-104
	.byte	5
	.byte	-81
	.byte	9
	.byte	6
	.byte	-81
	.byte	72
	.byte	6
	.byte	-81
	.byte	-121
	.byte	6
	.byte	-81
	.byte	-33
	.byte	6
	.byte	-81
	.byte	54
	.byte	7
	.byte	-81
	.byte	117
	.byte	7
	.byte	-81
	.byte	-26
	.byte	7
	.byte	-81
	.byte	12
	.byte	8
	.byte	-81
	.byte	125
	.byte	8
	.byte	-81
	.byte	-30
	.byte	8
	.byte	-81
	.byte	83
	.byte	9
	.byte	-81
	.byte	-110
	.byte	9
	.byte	-81
	.byte	40
	.byte	10
	.byte	-81
	.byte	-128
	.byte	10
	.byte	-81
	.byte	-15
	.byte	10
	.byte	-81
	.byte	-120
	.byte	11
	.byte	-81
	.byte	6
	.byte	12
	.byte	-81
	.byte	119
	.byte	12
	.byte	-81
	.byte	39
	.byte	13
	.byte	-81
	.byte	-66
	.byte	13
	.byte	-81
	.byte	109
	.byte	14
	.byte	-81
	.byte	17
	.byte	15
	.byte	-81
	.byte	-126
	.byte	15
	.byte	-81
	.byte	-1
	.byte	15
	.byte	-113
	.byte	-113
	.byte	-48
	.byte	32
	.globl	_lightning_data
_lightning_data:
	.byte	111
	.byte	18
	.byte	7
	.byte	10
	.byte	47
	.byte	-50
	.byte	2
	.byte	47
	.byte	-60
	.byte	1
	.byte	47
	.byte	102
	.byte	1
	.byte	47
	.byte	-30
	.byte	0
	.byte	47
	.byte	18
	.byte	7
	.byte	47
	.byte	-50
	.byte	2
	.byte	47
	.byte	-60
	.byte	1
	.byte	47
	.byte	102
	.byte	1
	.byte	47
	.byte	-30
	.byte	0
	.byte	47
	.byte	18
	.byte	7
	.byte	47
	.byte	-50
	.byte	2
	.byte	47
	.byte	-60
	.byte	1
	.byte	47
	.byte	102
	.byte	1
	.byte	47
	.byte	-30
	.byte	0
	.byte	47
	.byte	18
	.byte	7
	.byte	47
	.byte	-50
	.byte	2
	.byte	47
	.byte	-60
	.byte	1
	.byte	47
	.byte	18
	.byte	7
	.byte	47
	.byte	102
	.byte	1
	.byte	47
	.byte	-50
	.byte	2
	.byte	47
	.byte	-60
	.byte	1
	.byte	47
	.byte	18
	.byte	7
	.byte	47
	.byte	-50
	.byte	2
	.byte	14
	.byte	46
	.byte	-60
	.byte	1
	.byte	46
	.byte	18
	.byte	7
	.byte	46
	.byte	-50
	.byte	2
	.byte	46
	.byte	-60
	.byte	1
	.byte	13
	.byte	45
	.byte	18
	.byte	7
	.byte	45
	.byte	-50
	.byte	2
	.byte	45
	.byte	-60
	.byte	1
	.byte	44
	.byte	18
	.byte	7
	.byte	12
	.byte	12
	.byte	44
	.byte	-50
	.byte	2
	.byte	43
	.byte	-60
	.byte	1
	.byte	43
	.byte	18
	.byte	7
	.byte	11
	.byte	11
	.byte	42
	.byte	-50
	.byte	2
	.byte	42
	.byte	-60
	.byte	1
	.byte	42
	.byte	18
	.byte	7
	.byte	10
	.byte	42
	.byte	-50
	.byte	2
	.byte	41
	.byte	-60
	.byte	1
	.byte	41
	.byte	18
	.byte	7
	.byte	41
	.byte	-50
	.byte	2
	.byte	9
	.byte	8
	.byte	40
	.byte	-60
	.byte	1
	.byte	40
	.byte	18
	.byte	7
	.byte	40
	.byte	-50
	.byte	2
	.byte	7
	.byte	7
	.byte	39
	.byte	-60
	.byte	1
	.byte	39
	.byte	18
	.byte	7
	.byte	38
	.byte	-50
	.byte	2
	.byte	6
	.byte	38
	.byte	-60
	.byte	1
	.byte	38
	.byte	18
	.byte	7
	.byte	38
	.byte	-50
	.byte	2
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
	.ascii	"        PRESS <1-3> BUTTON TO PLAY\0"
LC32:
	.ascii	"        PRESS <4> BUTTON TO LOAD\0"
LC33:
	.ascii	"           GREETINGS TO:\0"
LC34:
	.ascii	"     PEER, BRETT AND PHILLIP\0"
LC35:
	.ascii	"    TITLE MUSIC BY ROALD STRAUSS\0"
LC36:
	.ascii	"    INTERNET: INDIEGAMEMUSIC.COM\0"
LC37:
	.ascii	"             THANKS!!!\0"
	.globl	_titleScreen
_titleScreen:
	pshs	u	;
	leas	-3,s	;,,
;----- asm -----
; 240 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[239]m = 0;
;--- end asm ---
	clr	_m	; m
;----- asm -----
; 242 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[240]initsong();
;--- end asm ---
	jsr	_initSong
;----- asm -----
; 245 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[242]if (flashavailable) checksavedflash();
;--- end asm ---
	tst	_flashAvailable	; flashAvailable
	lbne	L14	;
L2:
;----- asm -----
; 247 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[243]titlestart:
;--- end asm ---
L3:
;----- asm -----
; 249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[244]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 251 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[245]_xc=-0x60;
;--- end asm ---
	ldb	#-96	;,
	stb	__XC	;, _XC
;----- asm -----
; 253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[246]ltmp=title_timer;
;--- end asm ---
	ldx	#150	;,
	stx	_ltmp	;, ltmp
;----- asm -----
; 255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[247]int stage = 0;
; 257 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[248]printmessage();
;--- end asm ---
	ldx	#LC29	;,
	jsr	_printMessage
;----- asm -----
; 259 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[249]printmessage();
;--- end asm ---
	ldx	#LC30	;,
	jsr	_printMessage
;----- asm -----
; 261 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[250]while(1)
;--- end asm ---
	clr	2,s	; stage
	bra	L9	;
L5:
;----- asm -----
; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[281]if (stage == 1)
;--- end asm ---
	ldb	2,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L15	;
L6:
;----- asm -----
; 328 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[289]if (stage == 2)
;--- end asm ---
	ldb	2,s	;, stage
	cmpb	#2	;cmpqi:	;,
	lbeq	L16	;
L7:
;----- asm -----
; 337 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[295]if (stage == 3)
;--- end asm ---
	cmpb	#3	;cmpqi:	;,
	lbeq	L17	;
;----- asm -----
; 347 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[301]if (stage == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbeq	L18	;
L4:
;----- asm -----
; 355 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[307]if (buttons_pressed())break;
;--- end asm ---
	ldb	_Vec_Buttons	; D.4185, Vec_Buttons
	lbne	L19	;
L9:
;----- asm -----
; 264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[252]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[253]playsong();
;--- end asm ---
	jsr	_playSong
;----- asm -----
; 268 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[254]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 270 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[255]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[256]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[257]displaymessages();
;--- end asm ---
	clrb	;
	jsr	_subBank1
;----- asm -----
; 276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[258]intensity_a(0x3f);
;--- end asm ---
	ldb	#63	;,
	jsr	__Intensity_a
;----- asm -----
; 279 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[260]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 281 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[261]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 283 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[262]monsterdrawer[m]();
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp34
	jsr	[_monsterDrawer,x]
;----- asm -----
; 285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[263]__ass(::: ,,,);
; 286 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 288 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[265]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 290 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[266]moveto_d(0,30);
;--- end asm ---
	clr	,-s	;
	ldb	#30	;,
	jsr	__Moveto_d
;----- asm -----
; 293 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[268]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 295 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[269]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[270]drawplayer();
;--- end asm ---
	jsr	_drawPlayer
;----- asm -----
; 300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[272]drawtitle();
;--- end asm ---
	jsr	_drawTitle
;----- asm -----
; 302 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[273]if (ltmp-- == 0)
;--- end asm ---
	ldx	_ltmp	; ltmp.4, ltmp
	leau	-1,x	;,, ltmp.4
	stu	_ltmp	;, ltmp
	leas	1,s	;,,
	cmpx	#0	; ltmp.4
	lbne	L4	;
;----- asm -----
; 305 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[275]ltmp = title_timer;
;--- end asm ---
	ldx	#150	;,
	stx	_ltmp	;, ltmp
;----- asm -----
; 307 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[276]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 309 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[277]stage++;
;--- end asm ---
	inc	2,s	; stage
;----- asm -----
; 311 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[278]m++;
;--- end asm ---
	inc	_m	; m
	ldb	_m	; m.6, m
;----- asm -----
; 313 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[279]if (m==20) m=0;
;--- end asm ---
	cmpb	#20	;cmpqi:	; m.6,
	lbne	L5	;
	clr	_m	; m
;----- asm -----
; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[281]if (stage == 1)
;--- end asm ---
	ldb	2,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbne	L6	;
L15:
;----- asm -----
; 319 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[283]printmessage();
;--- end asm ---
	ldx	#LC31	;,
	jsr	_printMessage
;----- asm -----
; 321 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[284]if ((!vec_num_players) && (flashavailable))
;--- end asm ---
	tst	_Vec_Num_Players	; Vec_Num_Players
	lbne	L6	;
	tst	_flashAvailable	; flashAvailable
	lbeq	L6	;
;----- asm -----
; 324 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[286]printmessage();
;--- end asm ---
	ldx	#LC32	;,
	jsr	_printMessage
	lbra	L6	;
L19:
;----- asm -----
; 358 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[309]if ((!vec_num_players) && (flashavailable))
;--- end asm ---
	tst	_Vec_Num_Players	; Vec_Num_Players
	bne	L10	;
	tst	_flashAvailable	; flashAvailable
	beq	L10	;
;----- asm -----
; 361 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[311]if (button_1_4_pressed())
;--- end asm ---
	andb	#8	; D.4185,
	beq	L10	;
	ldd	#1	;,
	std	_ch	;, ch
L10:
;----- asm -----
; 373 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[322]vec_music_wk_7 = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
;----- asm -----
; 375 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[323]vec_xxx_04 = 0x0;
;--- end asm ---
	clr	_Vec_XXX_04	; Vec_XXX_04
;----- asm -----
; 377 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[324]vec_xxx_03 = 0x0;
;--- end asm ---
	clr	_Vec_XXX_03	; Vec_XXX_03
;----- asm -----
; 379 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[325]vec_music_wk_a = 0x0;
;--- end asm ---
	clr	_Vec_Music_Wk_A	; Vec_Music_Wk_A
;----- asm -----
; 382 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[327]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 384 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[328]_xc = -0x70;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
;----- asm -----
; 386 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[329]ply_song_playing = 0;
;--- end asm ---
	clr	_PLY_SONG_PLAYING	; PLY_SONG_PLAYING
	leas	3,s	;,,
	puls	u,pc	;
L17:
;----- asm -----
; 340 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[297]printmessage();
;--- end asm ---
	ldx	#LC35	;,
	jsr	_printMessage
;----- asm -----
; 342 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[298]printmessage();
;--- end asm ---
	ldx	#LC36	;,
	jsr	_printMessage
;----- asm -----
; 344 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[299]printmessage();
;--- end asm ---
	ldx	#LC37	;,
	jsr	_printMessage
	ldb	2,s	;, stage
;----- asm -----
; 347 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[301]if (stage == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbne	L4	;
L18:
;----- asm -----
; 350 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[303]goto titlestart;
;--- end asm ---
	lbra	L3	;
L16:
;----- asm -----
; 331 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[291]printmessage();
;--- end asm ---
	ldx	#LC33	;,
	jsr	_printMessage
;----- asm -----
; 333 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[292]printmessage();
;--- end asm ---
	ldx	#LC34	;,
	jsr	_printMessage
	ldb	2,s	;, stage
	lbra	L7	;
L14:
	jsr	_checkSavedFlash
	lbra	L2	;
	.globl	_getMapPos
_getMapPos:
	pshs	y,u	;
	leas	-3,s	;,,
	stb	,s	; x, x
;----- asm -----
; 411 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[353]mulif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
;--- end asm ---
	ldx	#_fpackX0x	;,
	pshs	x	;
	ldx	#_FP_X0_PACKED	;,
	pshs	x	;
	clra		;zero_extendqihi: R:b -> R:d	; x,
	tfr	d,x	;,
	jsr	_mulIF
;----- asm -----
; 413 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[354]mulif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
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
; 415 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[355]mulif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
;--- end asm ---
	ldu	#_FP_Z0_PACKED	; FP_Z0_PACKED.10,
	leas	8,s	;,,
	ldy	#_fpackZ0z	; tmp46,
	pshs	y	; tmp46
	pshs	u	; FP_Z0_PACKED.10
	ldb	14,s	;, z
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_mulIF
;----- asm -----
; 418 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[357]addf(fpackx0x, fpacky0y, fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	pshs	x	;
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_fpackX0x	;,
	jsr	_addF
;----- asm -----
; 420 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[358]addf(fpackz0z, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	8,s	;,,
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	x	;
	leax	,y	;, tmp46
	jsr	_addF
;----- asm -----
; 423 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[360]addif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
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
; 425 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[361]addif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
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
; 427 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[362]addif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
;--- end asm ---
	pshs	y	; tmp46
	pshs	u	; FP_Z0_PACKED.10
	ldb	18,s	;, z
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_addIF
;----- asm -----
; 430 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[364]mulf(fpackx0x, fpacky0y, fpacktmp2);
;--- end asm ---
	leas	8,s	;,,
	ldu	#_fpacktmp2	; tmp54,
	pshs	u	; tmp54
	ldx	#_fpackY0y	;,
	pshs	x	;
	ldx	#_fpackX0x	;,
	jsr	_mulF
;----- asm -----
; 432 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[365]mulf(fpackz0z, fpacktmp2, fpacktmp2);
;--- end asm ---
	pshs	u	; tmp54
	pshs	u	; tmp54
	leax	,y	;, tmp46
	jsr	_mulF
;----- asm -----
; 435 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[367]addf(fpacktmp1, fpacktmp2, fpackq);
;--- end asm ---
	leas	8,s	;,,
	ldy	#_fpackQ	; tmp58,
	pshs	y	; tmp58
	pshs	u	; tmp54
	ldx	#_fpacktmp1	;,
	jsr	_addF
;----- asm -----
; 444 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[375]intf(fpackq, fpacktmp2);
;--- end asm ---
	pshs	u	; tmp54
	leax	,y	;, tmp58
	jsr	_intF
;----- asm -----
; 446 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[376]subf(fpackq, fpacktmp2, fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	u	; tmp54
	leax	,y	;, tmp58
	jsr	_subF
;----- asm -----
; 448 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[377]mulif((unsigned long int)w0, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	10,s	;,,
	ldx	#_fpacktmp1	;,
	pshs	x	;
	pshs	x	;
	ldx	#4694	;,
	jsr	_mulIF
;----- asm -----
; 451 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[379]unsigned long int h = (unsigned long int) toint(fpacktmp1);
;--- end asm ---
	ldx	#_fpacktmp1	;,
	jsr	_toInt
	stx	5,s	;, h
;----- asm -----
; 456 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[383]if (((h>>8)&0xff) >5) h = h & 0xff;
;--- end asm ---
	tfr	x,d	;, tmp65
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	leas	4,s	;,,
	cmpd	#5	;cmphi:	; tmp65,
	bls	L21	;
	ldd	1,s	;, h
	clra	;andqi(ZERO)	;
		;andqi(-1)
	std	1,s	;, h
L21:
;----- asm -----
; 460 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[386]if ((h&0xff00) > 0)
;--- end asm ---
	ldd	1,s	; tmp66, h
		;andqi(-1)
	clrb	;andqi(ZERO)	;
	cmpd	#0	; tmp66
	bne	L32	;
L22:
;----- asm -----
; 512 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[427]if ((x == 1) || (x == 201)) h = h | 12;
;--- end asm ---
	ldb	,s	;, x
	cmpb	#1	;cmpqi:	;,
	beq	L27	;
	cmpb	#-55	;cmpqi:	;,
	beq	L27	;
L28:
;----- asm -----
; 514 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[428]if ((y == 1) || (y == 201)) h = h | 3;
;--- end asm ---
	ldb	9,s	;, y
	cmpb	#1	;cmpqi:	;,
	beq	L29	;
	cmpb	#-55	;cmpqi:	;,
	beq	L29	;
L30:
;----- asm -----
; 517 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[430]return h;
;--- end asm ---
	ldx	1,s	;, h
	leas	3,s	;,,
	puls	y,u,pc	;
L29:
	ldd	1,s	;, h
		;iorqi(ZERO)
	orb	#3	;,
	std	1,s	;, h
	bra	L30	;
L27:
	ldd	1,s	;, h
		;iorqi(ZERO)
	orb	#12	;,
	std	1,s	;, h
	bra	L28	;
L32:
;----- asm -----
; 466 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[391]mulif((unsigned long int)10, fpackq, fpackq);
;--- end asm ---
	ldu	#_fpackQ	; tmp67,
	pshs	u	; tmp67
	pshs	u	; tmp67
	ldx	#10	;,
	jsr	_mulIF
;----- asm -----
; 470 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[394]intf(fpackq, fpacktmp2);
;--- end asm ---
	ldx	#_fpacktmp2	;,
	pshs	x	;
	leax	,u	;, tmp67
	jsr	_intF
;----- asm -----
; 472 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[395]subf(fpackq, fpacktmp2, fpacktmp1);
;--- end asm ---
	ldy	#_fpacktmp1	; tmp70,
	pshs	y	; tmp70
	ldx	#_fpacktmp2	;,
	pshs	x	;
	leax	,u	;, tmp67
	jsr	_subF
;----- asm -----
; 474 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[396]mulif((unsigned long int)15, fpacktmp1, fpacktmp1);
;--- end asm ---
	leas	10,s	;,,
	pshs	y	; tmp70
	pshs	y	; tmp70
	ldx	#15	;,
	jsr	_mulIF
;----- asm -----
; 476 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[397]unsigned long int h2 = (unsigned long int) toint(fpacktmp1);
;--- end asm ---
	leax	,y	;, tmp70
	jsr	_toInt
;----- asm -----
; 478 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[398]h2 += 1;
;--- end asm ---
	leau	1,x	; h2,, D.3457
;----- asm -----
; 498 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[417]if (h2 >9) h2 = 0;
;--- end asm ---
	leas	4,s	;,,
	cmpu	#9	;cmphi:	; h2,
	bhi	L33	;
L23:
;----- asm -----
; 503 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[421]if ((cz == 50) && (h2 == 4)) h2 = 0;
;--- end asm ---
	tfr	u,d	; h2,
	tfr	b,a	;,
	clrb	;
	tfr	d,x	;, prephitmp.150
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	beq	L34	;
L25:
;----- asm -----
; 507 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[424]h2 = h2*256;
; 509 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[425]h = h2 | (h&0xff);
;--- end asm ---
	ldd	1,s	; D.3459, h
	clra	;andqi(ZERO)	;
		;andqi(-1)
	pshs	x	; prephitmp.150
	ora	,s+	;,
	orb	,s+	;,
	std	1,s	; D.3459, h
	lbra	L22	;
L33:
	ldu	#0	; h2,
	bra	L23	;
L34:
	tfr	u,d	; h2,
	tfr	b,a	;,
	clrb	;
	tfr	d,x	;, prephitmp.150
	cmpu	#4	;cmphi:	; h2,
	bne	L25	;
	ldx	#0	; prephitmp.150,
	bra	L25	;
	.globl	_generateDisplayMap
_generateDisplayMap:
	pshs	y,u	;
	leas	-15,s	;,,
;----- asm -----
; 533 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[445]if (cx>200) cx = cx- (unsigned char) 200;
;--- end asm ---
	ldb	_cx	; cx.12, cx
	cmpb	#-56	;cmpqi:	; cx.12,
	bls	L36	;
	addb	#56	; cx.12,
	stb	_cx	; cx.12, cx
L36:
;----- asm -----
; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[446]if (cy>200) cy = cy- (unsigned char) 200;
;--- end asm ---
	ldb	_cy	; cy.14, cy
	cmpb	#-56	;cmpqi:	; cy.14,
	bls	L37	;
	addb	#56	; cy.14,
	stb	_cy	; cy.14, cy
L37:
;----- asm -----
; 537 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[447]if (fillmap != go_no_redraw)
;--- end asm ---
	tst	_fillMap	; fillMap
	lbne	L63	;
;----- asm -----
; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[452]switch (fillmap)
;--- end asm ---
	ldb	_fillMap	; fillMap, fillMap
	cmpb	#3	;cmpqi:	; fillMap,
	lbeq	L42	;
L66:
	cmpb	#3	;cmpqi:	; fillMap,
	ble	L64	;
	cmpb	#4	;cmpqi:	; fillMap,
	lbeq	L43	;
	cmpb	#127	;cmpqi:	; fillMap,
	lbeq	L65	;
L39:
;----- asm -----
; 686 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[549]fillmap = go_no_redraw;
;--- end asm ---
	clr	_fillMap	; fillMap
;----- asm -----
; 688 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[550]return 0;
;--- end asm ---
	clrb	; D.3570
	leas	15,s	;,,
	puls	y,u,pc	;
L64:
	cmpb	#1	;cmpqi:	; fillMap,
	lbeq	L40	;
	cmpb	#2	;cmpqi:	; fillMap,
	bne	L39	;
;----- asm -----
; 599 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[489]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldu	#_screen+10	; ivtmp.210,
	clr	10,s	; yy
L52:
;----- asm -----
; 602 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[491]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	10,s	;, yy
	stb	11,s	;, y
;----- asm -----
; 604 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[492]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	10,s	;, yy
	cmpb	#3	;cmpqi:	;,
	lbeq	L51	;
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
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
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldx	,u	;, screen
	stx	-8,u	;, screen
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldd	2,u	;, screen
	std	-6,u	;, screen
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
;--- end asm ---
	ldx	4,u	;, screen
	stx	-4,u	;, screen
	ldb	3,s	;,
	stb	10,s	;, yy
	leau	8,u	; ivtmp.210,, ivtmp.210
	cmpb	#4	;cmpqi:	;,
	lbne	L52	;
;----- asm -----
; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[505]break;
;--- end asm ---
	lbra	L47	;
L63:
;----- asm -----
; 540 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[449]realabove = above = (unsigned int) (getmappos(cx,cy,cz-1) >> 8);
;--- end asm ---
	ldb	_cz	;, cz
	decb	;
	pshs	b	;
	ldb	_cy	;, cy
	stb	,-s	;,
	ldb	_cx	;, cx
	jsr	_getMapPos
	tfr	x,d	;, D.3531
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	stb	_above	;movlsbqihi: R:d -> _above	; above, tmp119
	stb	_realAbove	;movlsbqihi: R:d -> _realAbove	; realAbove, tmp119
	leas	2,s	;,,
;----- asm -----
; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[452]switch (fillmap)
;--- end asm ---
	ldb	_fillMap	; fillMap, fillMap
	cmpb	#3	;cmpqi:	; fillMap,
	lbne	L66	;
L42:
;----- asm -----
; 657 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[529]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldy	#_screen+6	; ivtmp.229,
	clr	13,s	; yy
L55:
;----- asm -----
; 660 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[531]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	stb	14,s	;, cy.274
;----- asm -----
; 662 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[532]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	2,s	;, D.3564
;----- asm -----
; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[535]if (xx == 3)
; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldx	-4,y	;, screen
	stx	-6,y	;, screen
;----- asm -----
; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[535]if (xx == 3)
; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldd	-2,y	;, screen
	std	-4,y	;, screen
;----- asm -----
; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[535]if (xx == 3)
; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
;--- end asm ---
	ldx	,y	;, screen
	stx	-2,y	;, screen
;----- asm -----
; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[535]if (xx == 3)
; 670 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[537]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	2,s	;, D.3564
	addb	#3	;,
	stb	2,s	;, D.3564
	ldb	_cz	;, cz
	stb	,-s	;,
	dec	15,s	; cy.274
	ldb	15,s	;, cy.274
	addb	14,s	;, yy
	pshs	b	;
	ldb	4,s	;, D.3564
	jsr	_getMapPos
	stx	,y	; D.3567, screen
	inc	15,s	; yy
	leay	8,y	; ivtmp.229,, ivtmp.229
	leas	2,s	;,,
	ldb	13,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L55	;
;----- asm -----
; 680 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[545]break;
;--- end asm ---
	lbra	L47	;
L65:
;----- asm -----
; 550 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[456]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldu	#_screen	; ivtmp.250,
	clr	6,s	; yy
L46:
;----- asm -----
; 553 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[458]unsigned int y = yy+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	6,s	;, yy
	stb	7,s	;, y
;----- asm -----
; 555 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[459]for (unsigned char xx=0;xx<4;xx++)
; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[461]unsigned int x = xx+cx-1;
; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	,u	; temp.315, screen
;----- asm -----
; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[461]unsigned int x = xx+cx-1;
; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	4,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	10,s	;, y
	pshs	b	;
	ldb	6,s	;,
	jsr	_getMapPos
	stx	2,u	; temp.320, screen
;----- asm -----
; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[461]unsigned int x = xx+cx-1;
; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	4,u	; temp.325, screen
;----- asm -----
; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[461]unsigned int x = xx+cx-1;
; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	6,u	; D.3539, screen
	inc	14,s	; yy
	leau	8,u	; ivtmp.250,, ivtmp.250
	leas	8,s	;,,
	ldb	6,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L46	;
;----- asm -----
; 564 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[465]break;
;--- end asm ---
L47:
;----- asm -----
; 692 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[553]fillmap = go_no_redraw;
;--- end asm ---
	clr	_fillMap	; fillMap
;----- asm -----
; 694 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[554]return 1;
;--- end asm ---
	ldb	#1	; D.3570,
	leas	15,s	;,,
	puls	y,u,pc	;
L43:
;----- asm -----
; 628 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[509]for (unsigned char yy=0;yy<4;yy++)
;--- end asm ---
	ldy	#_screen	; ivtmp.239,
	clr	12,s	; yy
L54:
;----- asm -----
; 631 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[511]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	stb	2,s	;, cy.271
;----- asm -----
; 633 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[512]for (signed char xx=3;xx>=0;xx--)
;--- end asm ---
	ldb	_cx	;, cx
	decb	;
	stb	5,s	;, D.3557
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[515]if (xx == 0)
; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldx	4,y	;, screen
	stx	6,y	;, screen
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[515]if (xx == 0)
; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldd	2,y	;, screen
	std	4,y	;, screen
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[515]if (xx == 0)
; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
;--- end asm ---
	ldx	,y	;, screen
	stx	2,y	;, screen
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[515]if (xx == 0)
; 641 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[517]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cz	;, cz
	stb	,-s	;,
	dec	3,s	; cy.271
	ldb	3,s	;, cy.271
	addb	13,s	;, yy
	pshs	b	;
	ldb	7,s	;, D.3557
	jsr	_getMapPos
	stx	,y	; D.3560, screen
	inc	14,s	; yy
	leay	8,y	; ivtmp.239,, ivtmp.239
	leas	2,s	;,,
	ldb	12,s	;, yy
	cmpb	#4	;cmpqi:	;,
	lbne	L54	;
;----- asm -----
; 651 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[525]break;
;--- end asm ---
	lbra	L47	;
L40:
;----- asm -----
; 570 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[469]for (signed char yy=3;yy>=0;yy--)
;--- end asm ---
	ldu	#_screen+18	; ivtmp.195,
	ldb	#3	;,
	stb	8,s	;, yy
L49:
;----- asm -----
; 573 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[471]unsigned int y = ((unsigned int)yy)+cy-1;
;--- end asm ---
	ldb	_cy	;, cy
	decb	;
	addb	8,s	;, yy
	stb	9,s	;, y
;----- asm -----
; 575 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[472]for (unsigned char xx=0;xx<4;xx++)
;--- end asm ---
	tst	8,s	; yy
	lbeq	L48	;
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
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
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldx	,u	;, screen
	stx	8,u	;, screen
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldd	2,u	;, screen
	std	10,u	;, screen
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
;--- end asm ---
	ldx	4,u	;, screen
	stx	12,u	;, screen
	ldb	4,s	;,
	stb	8,s	;, yy
	leau	-8,u	; ivtmp.195,, ivtmp.195
	cmpb	#-1	;cmpqi:	;,
	lbne	L49	;
	lbra	L50	;
L48:
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen	; temp.286, screen
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	2,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	12,s	;, y
	pshs	b	;
	ldb	4,s	;,
	jsr	_getMapPos
	stx	_screen+2	; temp.277, screen
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen+4	; D.3545, screen
;----- asm -----
; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[474]unsigned int x = xx+cx-1;
; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[475]if (yy == 0)
; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen+6	; temp.267, screen
	leas	8,s	;,,
L50:
;----- asm -----
; 593 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[485]break;
;--- end asm ---
	lbra	L47	;
L51:
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen+24	; temp.297, screen
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
;--- end asm ---
	ldb	_cx	;, cx
	stb	2,s	;,
	ldb	_cz	;, cz
	stb	,-s	;,
	ldb	14,s	;, y
	pshs	b	;
	ldb	4,s	;,
	jsr	_getMapPos
	stx	_screen+26	; temp.302, screen
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen+28	; temp.307, screen
;----- asm -----
; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[494]unsigned int x = xx+cx-1;
; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[495]if (yy == 3)
; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
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
	stx	_screen+30	; D.3552, screen
	leas	8,s	;,,
;----- asm -----
; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[505]break;
;--- end asm ---
	lbra	L47	;
	.globl	_drawRoom
_drawRoom:
	pshs	b	;
;----- asm -----
; 708 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[567]if ((content + drawup + drawleft) == 0) return;
;--- end asm ---
	ldb	3,s	; tmp30, drawUp
	addb	,s	; tmp30, content
	addb	4,s	; tmp30, drawLeft
	lbeq	L78	;
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[568]dp_via_t1_cnt_lo  = 0x46;
;--- end asm ---
	ldb	#70	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[570]moveto_start;
; 714 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      5,s	; ry
	STA      *0x01
	LDA      #0xCE
	STA      *0x0C
	CLRA     
	STA      *0x00
	LDB      6,s	; rx
	INC      *0x00
	STB      *0x01
	STA      *0x05
; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[571]dp_via_t1_cnt_lo  = 9;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 718 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[573]if (drawup == 2)
;--- end asm ---
	ldb	3,s	;, drawUp
	cmpb	#2	;cmpqi:	;,
	beq	L81	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L82	;
;----- asm -----
; 745 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[593]if (drawleft == 2)
;--- end asm ---
	ldb	4,s	;, drawLeft
	cmpb	#2	;cmpqi:	;,
	lbeq	L83	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L84	;
;----- asm -----
; 762 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[605]if (content == 10) drawunkown();
;--- end asm ---
	ldb	,s	;, content
	cmpb	#10	;cmpqi:	;,
	lbeq	L85	;
L72:
;----- asm -----
; 766 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[608]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
L78:
	leas	1,s	;,,
	rts
L81:
;----- asm -----
; 721 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[575]drawupdoor();
;--- end asm ---
	jsr	_drawUpDoor
;----- asm -----
; 723 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[576]if (drawleft == 2)
;--- end asm ---
	ldb	4,s	;, drawLeft
	cmpb	#2	;cmpqi:	;,
	lbeq	L86	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L87	;
L71:
;----- asm -----
; 728 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[580]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	,s	;, content
	cmpb	#10	;cmpqi:	;,
	bne	L72	;
L80:
	jsr	_drawUnkown_noZero
	bra	L72	;
L82:
;----- asm -----
; 733 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[584]drawupwall();
;--- end asm ---
	jsr	_drawUpWall
;----- asm -----
; 735 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[585]if (drawleft == 2)
;--- end asm ---
	ldb	4,s	;, drawLeft
	cmpb	#2	;cmpqi:	;,
	beq	L88	;
	cmpb	#3	;cmpqi:	;,
	beq	L89	;
L75:
;----- asm -----
; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[589]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	,s	;, content
	cmpb	#10	;cmpqi:	;,
	lbne	L72	;
	bra	L80	;
L83:
;----- asm -----
; 748 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[595]drawleftdoor();
;--- end asm ---
	jsr	_drawLeftDoor
;----- asm -----
; 750 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[596]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	,s	;, content
	cmpb	#10	;cmpqi:	;,
	lbne	L72	;
	bra	L80	;
L84:
;----- asm -----
; 755 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[600]drawleftwall();
;--- end asm ---
	jsr	_drawLeftWall
;----- asm -----
; 757 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[601]if (content == 10) drawunkown_nozero();
;--- end asm ---
	ldb	,s	;, content
	cmpb	#10	;cmpqi:	;,
	lbne	L72	;
	lbra	L80	;
L85:
	jsr	_drawUnkown
	lbra	L72	;
L86:
	jsr	_drawLeftDoor_noZero
	lbra	L71	;
L87:
	jsr	_drawLeftWall_noZero
	lbra	L71	;
L88:
	jsr	_drawLeftDoor_noZero
	bra	L75	;
L89:
	jsr	_drawLeftWall_noZero
	lbra	L75	;
	.globl	_drawMap
_drawMap:
	pshs	y,u	;
	leas	-47,s	;,,
;----- asm -----
; 778 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[619]if (fillmap != go_no_redraw) generatedisplaymap();
;--- end asm ---
	tst	_fillMap	; fillMap
	lbne	L193	;
L91:
;----- asm -----
; 782 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[622]printenvironment = (int)map11_hi;
;--- end asm ---
	ldb	_screen+10	;,
	stb	_printEnvironment	;, printEnvironment
;----- asm -----
; 784 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[623]if (above == 4) printenvironment = 4;
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L194	;
L92:
;----- asm -----
; 787 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[625]if (inelevator)
;--- end asm ---
	tst	_inElevator	; inElevator
	lbeq	L93	;
;----- asm -----
; 790 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[627]_x_ =0;
;--- end asm ---
	clr	__x_	; _x_
;----- asm -----
; 792 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[628]_y_ =elevatory;
;--- end asm ---
	ldb	_elevatorY	;, elevatorY
	stb	__y_	;, _y_
;----- asm -----
; 794 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[629]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 796 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[630]moveto_start_yx
; 797 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 798 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[631]printenvironment = 0;
;--- end asm ---
	clr	_printEnvironment	; printEnvironment
;----- asm -----
; 800 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[632]elevatory++;
;--- end asm ---
	inc	_elevatorY	; elevatorY
	ldb	_elevatorY	; elevatorY.38, elevatorY
;----- asm -----
; 802 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[633]if (elevatory==120)
;--- end asm ---
	cmpb	#120	;cmpqi:	; elevatorY.38,
	lbeq	L195	;
L94:
;----- asm -----
; 810 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[638]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 812 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[639]my_move_to_a_end
; 813 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      #0x40
	BITA     *0x0D
	BEQ      . -2
; 814 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[640]drawelevator();
;--- end asm ---
	jsr	_drawElevator
;----- asm -----
; 818 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[643]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 820 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[644]moveto_start_yx
; 821 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 822 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[645]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 824 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	LDA      #0x40
	BITA     *0x0D
	BEQ      . -2
;--- end asm ---
L93:
;----- asm -----
; 827 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[649]if (specialaction)
;--- end asm ---
	ldb	_specialAction	; specialAction.39, specialAction
	beq	L95	;
;----- asm -----
; 830 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[651]if (specialaction == special_dragonbreath)
;--- end asm ---
	cmpb	#1	;cmpqi:	; specialAction.39,
	lbeq	L196	;
	cmpb	#2	;cmpqi:	; specialAction.39,
	lbeq	L197	;
	cmpb	#3	;cmpqi:	; specialAction.39,
	lbeq	L198	;
L95:
;----- asm -----
; 857 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[669]if (initsoundno)
;--- end asm ---
	ldb	_initSoundNo	; initSoundNo.42, initSoundNo
	beq	L98	;
;----- asm -----
; 860 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[671]if (initsoundno == sound_cube)
;--- end asm ---
	cmpb	#1	;cmpqi:	; initSoundNo.42,
	beq	L199	;
	cmpb	#2	;cmpqi:	; initSoundNo.42,
	lbeq	L200	;
	cmpb	#3	;cmpqi:	; initSoundNo.42,
	lbeq	L201	;
	cmpb	#4	;cmpqi:	; initSoundNo.42,
	lbeq	L202	;
	cmpb	#5	;cmpqi:	; initSoundNo.42,
	lbeq	L203	;
	cmpb	#6	;cmpqi:	; initSoundNo.42,
	lbeq	L204	;
	cmpb	#7	;cmpqi:	; initSoundNo.42,
	bne	L100	;
;----- asm -----
; 893 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[697]sfx_pointer_1 = (long unsigned int) (&down_data);
;--- end asm ---
	ldx	#_down_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	bra	L100	;
L199:
;----- asm -----
; 863 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[673]sfx_pointer_1 = (long unsigned int) (&cube_c64_data);
;--- end asm ---
	ldx	#_cube_c64_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
L100:
;----- asm -----
; 901 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[703]sfx_status_1 = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_sfx_status_1	;, sfx_status_1
;----- asm -----
; 903 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[704]initsoundno = 0;
;--- end asm ---
	clr	_initSoundNo	; initSoundNo
L98:
;----- asm -----
; 907 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[707]if (ply_song_playing)
;--- end asm ---
	tst	_PLY_SONG_PLAYING	; PLY_SONG_PLAYING
	lbne	L205	;
L106:
;----- asm -----
; 910 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[709]if (sfx_status_1 == 1)
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.52, sfx_status_1
	cmpb	#1	;cmpqi:	; sfx_status_1.52,
	lbeq	L206	;
L107:
;----- asm -----
; 914 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[712]if (printcharacter)
;--- end asm ---
	tst	_printCharacter	; printCharacter
	lbne	L207	;
L108:
;----- asm -----
; 925 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[719]if (!printdungeon) return;
;--- end asm ---
	tst	_printDungeon	; printDungeon
	lbeq	L191	;
;----- asm -----
; 928 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[721]if (m != -1)
;--- end asm ---
	ldb	_m	;, m
	cmpb	#-1	;cmpqi:	;,
	lbeq	L110	;
;----- asm -----
; 931 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[723]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 933 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[724]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 935 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[725]monsterdrawer[m]();
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp137
	jsr	[_monsterDrawer,x]
L111:
;----- asm -----
; 958 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[741]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 962 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[744]drawroom(any_item(item(item_00, map00_hi)), getup(drawup_00, map00_lo), getleft(drawleft_00, map00_lo), room_y(0), room_x(0));
;--- end asm ---
	ldb	_screen+9	;,
	stb	4,s	;, D.3626
	ldb	#3	;,
	andb	4,s	;, D.3626
	stb	4,s	;, D.3626
	cmpb	#1	;cmpqi:	;,
	lbls	L113	;
	ldy	#_screen+11	; prephitmp.348,
	ldb	_screen+11	;,
	stb	30,s	;, prephitmp.350
	clr	3,s	; iftmp.58
L114:
	ldb	#3	;,
	andb	30,s	;, prephitmp.350
	stb	6,s	;, D.3636
	cmpb	#1	;cmpqi:	;,
	lbls	L208	;
L116:
	clr	5,s	; iftmp.59
L117:
	tst	_sf+2	; sf
	beq	L118	;
	ldb	4,s	;, D.3626
	cmpb	#1	;cmpqi:	;,
	lbls	L209	;
L119:
	ldb	6,s	;, D.3636
	cmpb	#1	;cmpqi:	;,
	lbls	L210	;
L118:
	clr	7,s	; iftmp.60
L121:
	ldb	#-128	;,
	stb	,-s	;,
	ldb	#127	;,
	stb	,-s	;,
	ldb	5,s	;, iftmp.58
	pshs	b	;
	ldb	8,s	;, iftmp.59
	pshs	b	;
	ldb	11,s	;, iftmp.60
	jsr	_drawRoom
;----- asm -----
; 964 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[745]drawroom(any_item(item(item_01, map01_hi)), getup(drawup_01, map01_lo), getleft(drawleft_01, map01_lo), room_y(0), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.348
	andb	#3	;,
	stb	35,s	;, temp.381
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	;,
	lbls	L122	;
	clr	9,s	; iftmp.63
	clr	8,s	; iftmp.62
L123:
	tst	_sf+2	; sf
	beq	L124	;
	ldb	31,s	;, temp.381
	cmpb	#1	;cmpqi:	;,
	lbls	L211	;
L124:
	clr	10,s	; iftmp.64
L125:
	ldb	#-43	;,
	stb	,-s	;,
	ldb	#127	;,
	stb	,-s	;,
	ldb	10,s	;, iftmp.62
	pshs	b	;
	ldb	12,s	;, iftmp.63
	pshs	b	;
	ldb	14,s	;, iftmp.64
	jsr	_drawRoom
;----- asm -----
; 966 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[746]drawroom(any_item(item(item_02, map02_hi)), getup(drawup_02, map02_lo), getleft(drawleft_02, map02_lo), room_y(0), room_x(2));
;--- end asm ---
	ldb	_screen+5	;,
	stb	15,s	;, D.3660
	ldb	,y	;,* prephitmp.348
	andb	#3	;,
	stb	38,s	;, temp.388
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	;,
	lbls	L212	;
L126:
	clr	12,s	; iftmp.66
L127:
	tst	_sf+2	; sf
	lbne	L128	;
	ldx	#_screen+13	;,
	stx	45,s	;, prephitmp.438
	clr	13,s	; iftmp.67
L129:
	ldb	#42	;,
	stb	,-s	;,
	ldb	#127	;,
	stb	,-s	;,
	lsr	13,s	; D.3660
	lsr	13,s	; D.3660
	ldb	13,s	;, D.3660
	andb	#3	;,
	pshs	b	;
	ldb	15,s	;, iftmp.66
	pshs	b	;
	ldb	17,s	;, iftmp.67
	jsr	_drawRoom
;----- asm -----
; 968 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[747]drawroom(0, getup(drawup_03, map03_lo), getleft(drawleft_03, map03_lo), room_y(0), room_x(3));
;--- end asm ---
	ldb	[49,s]	;,* prephitmp.438
	stb	39,s	;, temp.392
	andb	#3	; tmp170,
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	; tmp170,
	lbls	L213	;
L134:
	clr	2,s	; iftmp.69
L135:
	ldb	#127	;,
	stb	,-s	;,
	stb	,-s	;,
	ldb	4,s	;, iftmp.69
	pshs	b	;
	clr	,-s	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 971 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[749]drawroom(any_item(item(item_10, map10_hi)), getup(drawup_10, map10_lo), getleft(drawleft_10, map10_lo), room_y(1), room_x(0));
;--- end asm ---
	ldb	,y	;,* prephitmp.348
	andb	#12	;,
	stb	40,s	;, temp.396
	leas	4,s	;,,
	cmpb	#4	;cmpqi:	;,
	lbls	L136	;
	clr	16,s	; iftmp.71
	clr	15,s	; iftmp.70
L137:
	tst	_sf+2	; sf
	beq	L138	;
	ldb	36,s	;, temp.396
	cmpb	#4	;cmpqi:	;,
	lbls	L214	;
L138:
	clr	17,s	; iftmp.72
L139:
	ldb	#-128	;,
	stb	,-s	;,
	ldb	#42	;,
	stb	,-s	;,
	ldb	17,s	;, iftmp.70
	pshs	b	;
	ldb	19,s	;, iftmp.71
	pshs	b	;
	ldb	21,s	;, iftmp.72
	jsr	_drawRoom
;----- asm -----
; 973 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[750]drawroom(0, getup(drawup_11, map11_lo), getleft(drawleft_11, map11_lo), room_y(1), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.348
	stb	41,s	;, temp.399
	ldb	#-43	;,
	stb	,-s	;,
	ldb	#42	;,
	stb	,-s	;,
	ldb	43,s	; tmp177, temp.399
	lsrb	; tmp177
	lsrb	; tmp177
	andb	#3	; tmp177,
	pshs	b	; tmp177
	ldb	44,s	;, temp.399
	andb	#3	;,
	pshs	b	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 975 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[751]drawroom(any_item(item(item_12, map12_hi)), getup(drawup_12, map12_lo), getleft(drawleft_12, map12_lo), room_y(1), room_x(2));
;--- end asm ---
	ldb	[53,s]	;,* prephitmp.438
	stb	46,s	;, temp.401
	andb	#12	;,
	stb	10,s	;, temp.402
	leas	8,s	;,,
	cmpb	#4	;cmpqi:	;,
	lbls	L140	;
	clr	18,s	; iftmp.74
L141:
	tst	_sf+2	; sf
	beq	L142	;
	ldb	2,s	;, temp.402
	cmpb	#4	;cmpqi:	;,
	lbls	L215	;
L142:
	clr	19,s	; iftmp.75
L143:
	ldb	#42	;,
	stb	,-s	;,
	stb	,-s	;,
	lsr	40,s	; temp.401
	lsr	40,s	; temp.401
	ldb	40,s	;, temp.401
	andb	#3	;,
	pshs	b	;
	ldb	21,s	;, iftmp.74
	pshs	b	;
	ldb	23,s	;, iftmp.75
	jsr	_drawRoom
;----- asm -----
; 977 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[752]drawroom(0, getup(drawup_13, map13_lo), getleft(drawleft_13, map13_lo), room_y(1), room_x(3));
;--- end asm ---
	ldb	[49,s]	; tmp185,* prephitmp.438
	andb	#12	; tmp185,
	leas	4,s	;,,
	cmpb	#4	;cmpqi:	; tmp185,
	lbls	L144	;
	clr	2,s	; iftmp.77
L145:
	ldb	#127	;,
	stb	,-s	;,
	ldb	#42	;,
	stb	,-s	;,
	ldb	4,s	;, iftmp.77
	pshs	b	;
	clr	,-s	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 980 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[754]drawroom(any_item(item(item_20, map20_hi)), getup(drawup_20, map20_lo), getleft(drawleft_20, map20_lo), room_y(2), room_x(0));
;--- end asm ---
	ldb	_screen+17	;,
	stb	25,s	;, D.3716
	andb	#3	;,
	stb	43,s	;, iftmp.407
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	;,
	lbls	L216	;
	ldb	,y	;,* prephitmp.348
	stb	2,s	;, temp.409
	ldb	#12	;,
	andb	2,s	;, temp.409
	stb	2,s	;, temp.409
	cmpb	#4	;cmpqi:	;,
	lbls	L217	;
L147:
	clr	22,s	; iftmp.79
	clr	20,s	; iftmp.78
L149:
	tst	_sf+2	; sf
	lbne	L150	;
	ldy	#_screen+19	; prephitmp.352,
	clr	23,s	; iftmp.80
L151:
	ldb	#-128	;,
	stb	,-s	;,
	ldb	#-43	;,
	stb	,-s	;,
	ldb	22,s	;, iftmp.78
	pshs	b	;
	ldb	25,s	;, iftmp.79
	pshs	b	;
	ldb	27,s	;, iftmp.80
	jsr	_drawRoom
;----- asm -----
; 982 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[755]drawroom(any_item(item(item_21, map21_hi)), getup(drawup_21, map21_lo), getleft(drawleft_21, map21_lo), room_y(2), room_x(1));
;--- end asm ---
	ldb	,y	;,* prephitmp.352
	stb	6,s	;, temp.413
	andb	#3	;,
	stb	44,s	;, temp.414
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	;,
	lbls	L156	;
	clr	25,s	; iftmp.82
L157:
	tst	_sf+2	; sf
	beq	L158	;
	ldb	40,s	;, temp.414
	cmpb	#1	;cmpqi:	;,
	lbls	L218	;
L158:
	clr	26,s	; iftmp.83
L159:
	ldb	#-43	;,
	stb	,-s	;,
	stb	,-s	;,
	ldb	27,s	;, iftmp.82
	pshs	b	;
	ldb	43,s	;, temp.414
	pshs	b	;
	ldb	30,s	;, iftmp.83
	jsr	_drawRoom
;----- asm -----
; 984 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[756]drawroom(any_item(item(item_22, map22_hi)), getup(drawup_22, map22_lo), getleft(drawleft_22, map22_lo), room_y(2), room_x(2));
;--- end asm ---
	ldb	,y	;,* prephitmp.352
	andb	#3	;,
	stb	45,s	;, temp.417
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	;,
	lbls	L160	;
	ldx	#_screen+21	;,
	stx	32,s	;, prephitmp.384
	clr	27,s	; iftmp.85
L161:
	ldx	45,s	;, prephitmp.438
	ldb	,x	;,
	stb	42,s	;, temp.419
	ldb	#12	;,
	andb	42,s	;, temp.419
	stb	42,s	;, temp.419
	cmpb	#4	;cmpqi:	;,
	lbls	L162	;
	clr	28,s	; iftmp.86
L163:
	tst	_sf+2	; sf
	beq	L164	;
	ldx	32,s	;, prephitmp.384
	ldb	,x	;,
	stb	43,s	;, temp.422
	ldb	#3	; tmp202,
	andb	43,s	; tmp202, temp.422
	cmpb	#1	;cmpqi:	; tmp202,
	lbls	L219	;
L165:
	ldb	41,s	;, temp.417
	cmpb	#1	;cmpqi:	;,
	lbls	L220	;
L164:
	clr	29,s	; iftmp.87
L167:
	ldb	#42	;,
	stb	,-s	;,
	ldb	#-43	;,
	stb	,-s	;,
	ldb	29,s	;, iftmp.85
	pshs	b	;
	ldb	31,s	;, iftmp.86
	pshs	b	;
	ldb	33,s	;, iftmp.87
	jsr	_drawRoom
;----- asm -----
; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[757]drawroom(0, getup(drawup_23, map23_lo), getleft(drawleft_23, map23_lo), room_y(2), room_x(3));
;--- end asm ---
	ldb	[36,s]	; tmp206,* prephitmp.384
	andb	#3	; tmp206,
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	; tmp206,
	lbls	L221	;
L168:
	clr	2,s	; iftmp.89
L169:
	ldb	#127	;,
	stb	,-s	;,
	ldb	#-43	;,
	stb	,-s	;,
	ldb	4,s	;, iftmp.89
	pshs	b	;
	clr	,-s	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[759]drawroom(0, getup(drawup_30, map30_lo), getleft(drawleft_30, map30_lo), room_y(3), room_x(0));
;--- end asm ---
	ldb	,y	;,* prephitmp.352
	stb	48,s	;, temp.428
	andb	#3	; tmp210,
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	; tmp210,
	lbls	L222	;
L170:
	clr	2,s	; iftmp.90
L171:
	ldb	#-128	;,
	stb	,-s	;,
	stb	,-s	;,
	clr	,-s	;
	ldb	5,s	;, iftmp.90
	pshs	b	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 991 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[760]drawroom(0, getup(drawup_31, map31_lo), getleft(drawleft_31, map31_lo), room_y(3), room_x(1));
;--- end asm ---
	ldb	,y	; tmp214,* prephitmp.352
	andb	#3	; tmp214,
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	; tmp214,
	lbls	L172	;
	clr	2,s	; iftmp.91
L173:
	ldb	#-43	;,
	stb	,-s	;,
	ldb	#-128	;,
	stb	,-s	;,
	clr	,-s	;
	ldb	5,s	;, iftmp.91
	pshs	b	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 993 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[761]drawroom(0, getup(drawup_32, map32_lo), getleft(drawleft_32, map32_lo), room_y(3), room_x(2));
;--- end asm ---
	ldb	,y	; tmp217,* prephitmp.352
	andb	#3	; tmp217,
	leas	4,s	;,,
	cmpb	#1	;cmpqi:	; tmp217,
	lbls	L223	;
L174:
	clr	2,s	; iftmp.92
L175:
	ldb	#42	;,
	stb	,-s	;,
	ldb	#-128	;,
	stb	,-s	;,
	clr	,-s	;
	ldb	5,s	;, iftmp.92
	pshs	b	;
	clrb	;
	jsr	_drawRoom
;----- asm -----
; 996 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[763]_y_  = 90;
;--- end asm ---
	ldb	#90	;,
	stb	__y_	;, _y_
;----- asm -----
; 998 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[764]if (lightchange>0) intensity_a((unsigned int) (lightchange-0x20));
;--- end asm ---
	ldb	_lightChange	; lightChange.93, lightChange
	leas	4,s	;,,
	tstb	; lightChange.93
	lble	L176	;
	addb	#-32	; lightChange.93,
	jsr	__Intensity_a
L177:
;----- asm -----
; 1002 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[767]for (int i=0;i<11;i++)
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf	; sf
	lbne	L224	;
L178:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+1	; sf
	lbne	L225	;
L179:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+2	; sf
	lbne	L226	;
L180:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+3	; sf
	lbne	L227	;
L181:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+4	; sf
	lbne	L228	;
L182:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+5	; sf
	lbne	L229	;
L183:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+6	; sf
	lbne	L230	;
L184:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+7	; sf
	lbne	L231	;
L185:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+8	; sf
	lbne	L232	;
L186:
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+9	; sf
	lbne	L233	;
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+10	; sf
	lbne	L234	;
L188:
;----- asm -----
; 1021 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[779]_x_  = 100;
;--- end asm ---
	ldb	#100	;,
	stb	__x_	;, _x_
;----- asm -----
; 1023 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[780]for (int i=0; i<19;i++)
;--- end asm ---
	ldy	#0	; ivtmp.362,
L190:
;----- asm -----
; 1026 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[782]if (stackm[i] != -1)
;--- end asm ---
	ldb	_stackM,y	;, stackM
	cmpb	#-1	;cmpqi:	;,
	lbeq	L189	;
;----- asm -----
; 1029 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[784]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1031 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[785]_y_ =70-i*10;
;--- end asm ---
	tfr	y,d	; ivtmp.362,
	lda	#-10	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp234
; ORG>	tfr	d,x	;, tmp234
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp234, tmp235
	addb	#70	; tmp235,
	stb	__y_	; tmp235, _y_
;----- asm -----
; 1033 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[786]moveto_start_yx
; 1034 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1035 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[787]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1037 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[788]drawdot();
;--- end asm ---
	jsr	_drawDot
L189:
	leay	1,y	; ivtmp.362,, ivtmp.362
	cmpy	#19	;cmphi:	; ivtmp.362,
	lbne	L190	;
L191:
	leas	47,s	;,,
	puls	y,u,pc	;
L110:
	ldb	_printTreasure	;, printTreasure
	cmpb	#-1	;cmpqi:	;,
	lbeq	L112	;
;----- asm -----
; 940 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[729]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 942 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[730]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 944 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[731]drawtreasure(printtreasure);
;--- end asm ---
	ldb	_printTreasure	;, printTreasure
	jsr	_drawTreasure
	lbra	L111	;
L194:
	stb	_printEnvironment	;, printEnvironment
	lbra	L92	;
L193:
	jsr	_generateDisplayMap
	lbra	L91	;
L207:
;----- asm -----
; 917 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[714]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 919 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[715]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 921 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[716]drawplayer();
;--- end asm ---
	jsr	_drawPlayer
	lbra	L108	;
L206:
;----- asm -----
; 82 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	jsr sfx_doframe_intern_1; DO_SFX1
;--- end asm ---
	lbra	L107	;
L205:
	jsr	_playSong
	lbra	L106	;
L136:
	ldb	_screen+9	;,
	lsrb	;
	lsrb	;
	stb	15,s	;, iftmp.70
	ldb	#3	;,
	andb	15,s	;, iftmp.70
	stb	15,s	;, iftmp.70
	ldb	#3	;,
	andb	_screen+9	;,
	stb	16,s	;, iftmp.71
	lbra	L137	;
L128:
	ldb	34,s	;, temp.388
	cmpb	#1	;cmpqi:	;,
	lbls	L235	;
L130:
	ldx	#_screen+13	;,
	stx	45,s	;, prephitmp.438
	ldb	_screen+13	;,
	stb	14,s	;, D.3674
	ldb	#3	; tmp165,
	andb	14,s	; tmp165, D.3674
	cmpb	#1	;cmpqi:	; tmp165,
	lbls	L236	;
L132:
	clr	13,s	; iftmp.67
	lbra	L129	;
L162:
	ldx	32,s	;, prephitmp.384
	ldb	,x	;,
	stb	28,s	;, iftmp.86
	ldb	#3	;,
	andb	28,s	;, iftmp.86
	stb	28,s	;, iftmp.86
	lbra	L163	;
L150:
	ldb	39,s	;, iftmp.407
	cmpb	#1	;cmpqi:	;,
	lbls	L237	;
L152:
	ldy	#_screen+19	; prephitmp.352,
	ldb	_screen+19	;,
	stb	24,s	;, D.3727
	ldb	#3	; tmp191,
	andb	24,s	; tmp191, D.3727
	cmpb	#1	;cmpqi:	; tmp191,
	lbls	L238	;
L154:
	clr	23,s	; iftmp.80
	lbra	L151	;
L144:
	ldb	_screen+15	;,
	lsrb	;
	lsrb	;
	stb	2,s	;, iftmp.77
	ldb	#3	;,
	andb	2,s	;, iftmp.77
	stb	2,s	;, iftmp.77
	lbra	L145	;
L140:
	ldb	#3	;,
	andb	38,s	;, temp.401
	stb	18,s	;, iftmp.74
	lbra	L141	;
L217:
	clr	20,s	; iftmp.78
L148:
	ldb	39,s	;, iftmp.407
	stb	22,s	;, iftmp.79
	lbra	L149	;
L195:
;----- asm -----
; 805 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[635]elevatory = 0;
;--- end asm ---
	clr	_elevatorY	; elevatorY
;----- asm -----
; 807 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[636]inelevator = 0;
;--- end asm ---
	clr	_inElevator	; inElevator
	lbra	L94	;
L214:
	ldb	_screen+8	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	17,s	;, iftmp.72
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L139	;
	lbra	L138	;
L112:
	tst	_printEnvironment	; printEnvironment
	lbeq	L111	;
;----- asm -----
; 949 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[735]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 951 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[736]dp_via_cntl = 0xce;
;--- end asm ---
	ldb	#-50	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 953 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[737]environmentdrawer[printenvironment-1]();
;--- end asm ---
	ldb	_printEnvironment	; tmp140, printEnvironment
	decb	; tmp140
	sex		;extendqihi2: R:b -> R:d	; tmp140, tmp141
	aslb	;
	rola	;
	tfr	d,x	; tmp141, tmp143
	jsr	[_environmentDrawer,x]
	lbra	L111	;
L215:
	ldb	_screen+12	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	19,s	;, iftmp.75
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L143	;
	lbra	L142	;
L196:
;----- asm -----
; 833 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[653]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 835 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[654]dp_via_cntl = 0xce;
;--- end asm ---
	addb	#2	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 837 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[655]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 839 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[656]drawflame();
;--- end asm ---
	jsr	_drawFlame
;----- asm -----
; 841 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[657]if (sfx_status_1==0) initsoundno = sound_dragon;
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.40, sfx_status_1
	lbne	L95	;
	ldb	#4	;,
	stb	_initSoundNo	;, initSoundNo
	lbra	L95	;
L235:
	ldb	#12	; tmp164,
	andb	11,s	; tmp164, D.3660
	ldx	#_screen+13	;,
	stx	45,s	;, prephitmp.438
	cmpb	#4	;cmpqi:	; tmp164,
	lbhi	L130	;
L131:
	ldb	_screen+4	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	13,s	;, iftmp.67
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L129	;
	ldx	#_screen+13	;,
	stx	45,s	;, prephitmp.438
	lbra	L132	;
L209:
	ldb	#12	;,
	andb	30,s	;, prephitmp.350
	cmpb	#4	;cmpqi:	;,
	lbhi	L119	;
L120:
	ldb	_screen	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	7,s	;, iftmp.60
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L121	;
	lbra	L118	;
L219:
	ldb	42,s	;, temp.419
	cmpb	#4	;cmpqi:	;,
	lbhi	L165	;
L166:
	ldb	_screen+20	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	29,s	;, iftmp.87
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L167	;
	lbra	L164	;
L237:
	ldy	#_screen+19	; prephitmp.352,
	ldb	2,s	;, temp.409
	cmpb	#4	;cmpqi:	;,
	lbhi	L152	;
L153:
	ldb	_screen+16	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	23,s	;, iftmp.80
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L151	;
	ldy	#_screen+19	; prephitmp.352,
	lbra	L154	;
L218:
	ldb	_screen+18	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	26,s	;, iftmp.83
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L159	;
	lbra	L158	;
L211:
	ldb	_screen+2	;,
	decb	;
	stb	,s	;,
	ldb	#10	;,
	stb	10,s	;, iftmp.64
	ldb	,s	;,
	cmpb	#8	;cmpqi:	;,
	lbls	L125	;
	lbra	L124	;
L201:
;----- asm -----
; 873 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[681]sfx_pointer_1 = (long unsigned int) (&box_data);
;--- end asm ---
	ldx	#_box_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L100	;
L238:
	ldb	#12	;,
	andb	24,s	;, D.3727
	cmpb	#4	;cmpqi:	;,
	lbhi	L154	;
	lbra	L153	;
L236:
	ldb	#12	;,
	andb	14,s	;, D.3674
	cmpb	#4	;cmpqi:	;,
	lbhi	L132	;
	lbra	L131	;
L210:
	ldb	_screen+3	; tmp155,
	andb	#12	; tmp155,
	cmpb	#4	;cmpqi:	; tmp155,
	lbhi	L118	;
	lbra	L120	;
L220:
	ldb	#12	;,
	andb	43,s	;, temp.422
	cmpb	#4	;cmpqi:	;,
	lbhi	L164	;
	lbra	L166	;
L233:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#80	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	jsr	_drawSpell
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[769]if (sf[i]>0)
;--- end asm ---
	tst	_sf+10	; sf
	lbeq	L188	;
L234:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#100	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#10	;,
	jsr	_drawSpell
	lbra	L188	;
L232:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#60	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#8	;,
	jsr	_drawSpell
	lbra	L186	;
L231:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#40	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#7	;,
	jsr	_drawSpell
	lbra	L185	;
L230:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#20	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#6	;,
	jsr	_drawSpell
	lbra	L184	;
L229:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	clr	__x_	; _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#5	;,
	jsr	_drawSpell
	lbra	L183	;
L228:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-20	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#4	;,
	jsr	_drawSpell
	lbra	L182	;
L227:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-40	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#3	;,
	jsr	_drawSpell
	lbra	L181	;
L226:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	ldb	#-60	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#2	;,
	jsr	_drawSpell
	lbra	L180	;
L225:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	addb	#49	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	ldb	#1	;,
	jsr	_drawSpell
	lbra	L179	;
L224:
;----- asm -----
; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[772]_x_ =-100+(i*20);
;--- end asm ---
	addb	#29	;,
	stb	__x_	;, _x_
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[773]moveto_start_yx
; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
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
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[775]drawspell(i);
;--- end asm ---
	clrb	;
	jsr	_drawSpell
	lbra	L178	;
L208:
	ldb	_screen+3	; tmp150,
	andb	#12	; tmp150,
	cmpb	#4	;cmpqi:	; tmp150,
	lbhi	L116	;
	ldb	_screen+1	;,
	stb	5,s	;, iftmp.59
	ldb	#3	;,
	andb	5,s	;, iftmp.59
	stb	5,s	;, iftmp.59
	lbra	L117	;
L160:
	ldx	#_screen+21	;,
	stx	32,s	;, prephitmp.384
	ldb	_screen+21	;,
	lsrb	;
	lsrb	;
	stb	27,s	;, iftmp.85
	ldb	#3	;,
	andb	27,s	;, iftmp.85
	stb	27,s	;, iftmp.85
	lbra	L161	;
L176:
	ldb	#63	;,
	jsr	__Intensity_a
	lbra	L177	;
L223:
	ldx	32,s	;, prephitmp.384
	ldb	,x	; tmp219,
	andb	#12	; tmp219,
	cmpb	#4	;cmpqi:	; tmp219,
	lbhi	L174	;
	ldb	_screen+29	;,
	stb	2,s	;, iftmp.92
	ldb	#3	;,
	andb	2,s	;, iftmp.92
	stb	2,s	;, iftmp.92
	lbra	L175	;
L212:
	ldb	#12	; tmp162,
	andb	11,s	; tmp162, D.3660
	cmpb	#4	;cmpqi:	; tmp162,
	lbhi	L126	;
	ldb	#3	;,
	andb	11,s	;, D.3660
	stb	12,s	;, iftmp.66
	lbra	L127	;
L113:
	ldy	#_screen+11	; prephitmp.348,
	ldb	_screen+11	;,
	stb	30,s	;, prephitmp.350
	ldb	#12	; tmp147,
	andb	30,s	; tmp147, prephitmp.350
	cmpb	#4	;cmpqi:	; tmp147,
	lbls	L115	;
	clr	3,s	; iftmp.58
	lbra	L114	;
L216:
	ldb	,y	;,* prephitmp.348
	stb	2,s	;, temp.409
	ldb	#12	;,
	andb	2,s	;, temp.409
	stb	2,s	;, temp.409
	cmpb	#4	;cmpqi:	;,
	lbhi	L147	;
	ldb	21,s	;, D.3716
	lsrb	;
	lsrb	;
	stb	20,s	;, iftmp.78
	ldb	#3	;,
	andb	20,s	;, iftmp.78
	stb	20,s	;, iftmp.78
	lbra	L148	;
L156:
	ldb	2,s	;, temp.413
	lsrb	;
	lsrb	;
	stb	25,s	;, iftmp.82
	ldb	#3	;,
	andb	25,s	;, iftmp.82
	stb	25,s	;, iftmp.82
	lbra	L157	;
L213:
	ldb	#12	;,
	andb	35,s	;, temp.392
	cmpb	#4	;cmpqi:	;,
	lbhi	L134	;
	ldb	_screen+7	;,
	lsrb	;
	lsrb	;
	stb	2,s	;, iftmp.69
	ldb	#3	;,
	andb	2,s	;, iftmp.69
	stb	2,s	;, iftmp.69
	lbra	L135	;
L122:
	ldb	_screen+3	;,
	lsrb	;
	lsrb	;
	stb	8,s	;, iftmp.62
	ldb	#3	;,
	andb	8,s	;, iftmp.62
	stb	8,s	;, iftmp.62
	ldb	#3	;,
	andb	_screen+3	;,
	stb	9,s	;, iftmp.63
	lbra	L123	;
L221:
	ldx	45,s	;, prephitmp.438
	ldb	,x	; tmp208,
	andb	#12	; tmp208,
	cmpb	#4	;cmpqi:	; tmp208,
	lbhi	L168	;
	ldb	_screen+23	;,
	lsrb	;
	lsrb	;
	stb	2,s	;, iftmp.89
	ldb	#3	;,
	andb	2,s	;, iftmp.89
	stb	2,s	;, iftmp.89
	lbra	L169	;
L172:
	ldb	_screen+27	;,
	stb	2,s	;, iftmp.91
	ldb	#3	;,
	andb	2,s	;, iftmp.91
	stb	2,s	;, iftmp.91
	lbra	L173	;
L222:
	ldb	#12	;,
	andb	44,s	;, temp.428
	cmpb	#4	;cmpqi:	;,
	lbhi	L170	;
	ldb	_screen+25	;,
	stb	2,s	;, iftmp.90
	ldb	#3	;,
	andb	2,s	;, iftmp.90
	stb	2,s	;, iftmp.90
	lbra	L171	;
L197:
;----- asm -----
; 846 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[661]if (sfx_status_1==0) initsoundno = sound_box;
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.41, sfx_status_1
	lbne	L95	;
	ldb	#3	;,
	stb	_initSoundNo	;, initSoundNo
	lbra	L95	;
L200:
;----- asm -----
; 868 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[677]sfx_pointer_1 = (long unsigned int) (&teleport_data);
;--- end asm ---
	ldx	#_teleport_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L100	;
L115:
	ldb	_screen+1	;,
	lsrb	;
	lsrb	;
	stb	3,s	;, iftmp.58
	ldb	#3	;,
	andb	3,s	;, iftmp.58
	stb	3,s	;, iftmp.58
	lbra	L114	;
L202:
;----- asm -----
; 878 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[685]sfx_pointer_1 = (long unsigned int) (&dragon_data);
;--- end asm ---
	ldx	#_dragon_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L100	;
L198:
;----- asm -----
; 851 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[665]initthronesong();
;--- end asm ---
	jsr	_initThroneSong
;----- asm -----
; 853 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[666]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
	lbra	L95	;
L203:
;----- asm -----
; 883 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[689]sfx_pointer_1 = (long unsigned int) (&death_data);
;--- end asm ---
	ldx	#_death_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L100	;
L204:
;----- asm -----
; 888 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[693]sfx_pointer_1 = (long unsigned int) (&gong_data);
;--- end asm ---
	ldx	#_gong_data	;,
	stx	_sfx_pointer_1	;, sfx_pointer_1
	lbra	L100	;
LC38:
	.ascii	"YOU HAVE % IN THE SAFE\0"
LC39:
	.ascii	"THEY CASH IN YOUR GOLD\0"
LC40:
	.ascii	"CHARACTER SAVED\0"
LC41:
	.ascii	"CHARACTER SAVED (TEMPORARILY)\0"
LC42:
	.ascii	"YOU SPEND THE NIGHT\0"
LC43:
	.ascii	"YOU FEEL BETTER\0"
LC44:
	.ascii	"<4> TO RETURN TO THE DUNGEON\0"
LC45:
	.ascii	"<1> TO SAVE CHARACTER\0"
	.globl	_displayInn
_displayInn:
	pshs	y,u	;
	leas	-10,s	;,,
;----- asm -----
; 1060 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[810]saveseed();
;--- end asm ---
	jsr	_saveSeed
;----- asm -----
; 1062 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[811]unsigned long int m1 = cy;
;--- end asm ---
	ldb	_cy	;, cy
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, m1
;----- asm -----
; 1064 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[812]setrandseed((unsigned int) (m1*m1));
;--- end asm ---
	pshs	d	; m1
	jsr	_mulhi3
	leas	2,s	;,,
	tfr	x,d	;, tmp47
	stb	__x	;movlsbqihi: R:d -> __x	; _x, tmp47
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1067 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[814]const char * s1;
; 1069 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[815]const char * s2;
; 1071 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[816]const char * s3;
; 1073 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[817]s1 = in1[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3819, D.3819
	aslb	;
	rola	;
	tfr	d,x	; D.3819, tmp50
	ldx	_in1,x	;, in1
	stx	2,s	;, s1
;----- asm -----
; 1076 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[819]setrandseed((unsigned int) (cx+cy));
;--- end asm ---
	ldb	_cy	;, cy
	addb	_cx	;, cx
	stb	__x	;, _x
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1078 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[820]s2 = in2[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3822, D.3822
	aslb	;
	rola	;
	tfr	d,x	; D.3822, tmp54
	ldy	_in2,x	; s2, in2
;----- asm -----
; 1081 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[822]setrandseed((unsigned int) (cx*3+cy*7));
;--- end asm ---
	ldb	_cy	;, cy
	lda	#7	;umulqihi3	;
	mul
	tfr	d,x	;, tmp56
	ldb	_cx	;, cx
	aslb	;
	addb	_cx	;, cx
	stb	,s	;,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp56,
	stb	1,s	;,
	ldb	,s	;,
	addb	1,s	;,
	stb	__x	;, _x
	ldb	#2	;,
	jsr	_subBank1
;----- asm -----
; 1083 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[823]s3 = in3[randmax(10)];
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3826, D.3826
	aslb	;
	rola	;
	tfr	d,x	; D.3826, tmp64
	ldu	_in3,x	; s3, in3
;----- asm -----
; 1085 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[824]restoreseed();
;--- end asm ---
	jsr	_restoreSeed
;----- asm -----
; 1089 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[827]if ((cx == 25) && (cy==13))
;--- end asm ---
	ldb	_cx	; cx.525, cx
	cmpb	#25	;cmpqi:	; cx.525,
	lbeq	L266	;
	cmpb	#26	;cmpqi:	; cx.525,
	lbeq	L267	;
	cmpb	#27	;cmpqi:	; cx.525,
	bne	L241	;
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	lbeq	L268	;
L241:
;----- asm -----
; 1121 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[849]ex = ex + gd;
;--- end asm ---
	ldd	_ex+2	;, ex
	addd	_gd+2	;, gd
	std	_ex+2	;, ex
	ldd	_ex	;, ex
	adcb	_gd+1	; gd
	adca	_gd	; gd
	std	_ex	;, ex
;----- asm -----
; 1123 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[850]tg = tg + gd;
;--- end asm ---
	ldd	_tg+2	;, tg
	addd	_gd+2	;, gd
	std	_tg+2	;, tg
	ldd	_tg	;, tg
	adcb	_gd+1	; gd
	adca	_gd	; gd
	std	_tg	;, tg
;----- asm -----
; 1125 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[851]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 1127 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[852]ch = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 1129 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[853]cs = su;
;--- end asm ---
	ldd	_su	;, su
	std	_cs	;, cs
;----- asm -----
; 1135 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[858]for (int i=0; i<11;i++)
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+1	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+2	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+3	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+4	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+5	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+6	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+7	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+8	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+9	; sf
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[860]sf[i] = 0;
;--- end asm ---
	clr	_sf+10	; sf
;----- asm -----
; 1143 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[864]_fll_s(, ((unsigned long long int) tg));
;--- end asm ---
	leas	-4,s	;,,
	ldx	_tg	;, tg
	stx	,s	;,
	ldd	_tg+2	;, tg
	std	2,s	;,
	ldx	#LC38	;,
	jsr	__fll_s
;----- asm -----
; 1146 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[866]int stage = 0;
; 1148 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[867]int counter = 100;
; 1150 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[868]int innx=0;
; 1152 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[869]int direction = 0;
; 1154 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[870]int b=0;
; 1156 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[871]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1158 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[872]printmessage();
;--- end asm ---
	ldx	#LC39	;,
	jsr	_printMessage
;----- asm -----
; 1160 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[873]printmessage( stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1162 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[874]while (1)
;--- end asm ---
	clr	8,s	; stage
	ldb	#100	;,
	stb	9,s	;, counter
	clr	10,s	; innx
	clr	11,s	; direction
	clr	12,s	; b
	leas	4,s	;,,
L265:
;----- asm -----
; 1165 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[876]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 1167 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[877]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 1169 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[878]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1171 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[879]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 1173 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[880]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 1176 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[882]displaymessages();
;--- end asm ---
	clrb	;
	jsr	_subBank1
;----- asm -----
; 1180 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[885]vec_text_height = -3;
;--- end asm ---
	ldb	#-3	;,
	stb	_Vec_Text_Height	;, Vec_Text_Height
;----- asm -----
; 1182 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[886]vec_text_width = 0x30;
;--- end asm ---
	ldb	#48	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 1185 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[888]print_str_d_org(0x0,-0x30, s1);
;--- end asm ---
	clr	,-s	;
	ldx	3,s	;, s1
	ldb	#-48	;,
	jsr	__Print_Str_d
;----- asm -----
; 1187 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[889]print_str_d_org(-0x10,-0x10, s2);
;--- end asm ---
	ldb	#-16	;,
	stb	,-s	;,
	leax	,y	;, s2
	jsr	__Print_Str_d
;----- asm -----
; 1189 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[890]print_str_d_org(-0x20,0x10, s3);
;--- end asm ---
	ldb	#-32	;,
	stb	,-s	;,
	leax	,u	;, s3
	ldb	#16	;,
	jsr	__Print_Str_d
;----- asm -----
; 1192 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[892]reset0ref();
;--- end asm ---
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 1194 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[893]moveto_d(0x30,-0x00);
;--- end asm ---
	ldb	#48	;,
	stb	,-s	;,
	clrb	;
	jsr	__Moveto_d
;----- asm -----
; 1196 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[894]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1198 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[895]drawhome();
;--- end asm ---
	jsr	_drawHome
;----- asm -----
; 1200 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[896]__ass(::: ,,,);
; 1201 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 1202 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[897]if (direction)
;--- end asm ---
	leas	4,s	;,,
	tst	7,s	; direction
	lbeq	L244	;
;----- asm -----
; 1205 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[899]innx++;
;--- end asm ---
	inc	6,s	; innx
;----- asm -----
; 1207 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[900]if (innx==0x40) direction=0;
;--- end asm ---
	ldb	6,s	;, innx
	cmpb	#64	;cmpqi:	;,
	lbeq	L269	;
L245:
;----- asm -----
; 1217 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[907]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1219 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[908]moveto_d(0x70,innx);
;--- end asm ---
	ldb	#112	;,
	stb	,-s	;,
	ldb	7,s	;, innx
	jsr	__Moveto_d
;----- asm -----
; 1221 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[909]dp_via_t1_cnt_lo  = 0x09;
;--- end asm ---
	ldb	#9	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1224 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[911]intensity_a(0x3f);
;--- end asm ---
	addb	#54	;,
	jsr	__Intensity_a
;----- asm -----
; 1226 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[912]drawinn();
;--- end asm ---
	jsr	_drawInn
;----- asm -----
; 1228 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[913]intensity_a(0x4f);
;--- end asm ---
	ldb	#79	;,
	jsr	__Intensity_a
;----- asm -----
; 1231 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[915]__ass(::: ,,,);
; 1232 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	clra
	sta *0x0a
; 1233 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[916]dp_via_t1_cnt_lo  = 0x80;
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 1236 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[918]if (buttons_pressed()) b=1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	10,s	;, D.4167
	leas	1,s	;,,
	tstb	;
	beq	L246	;
	ldb	#1	;,
	stb	8,s	;, b
L246:
;----- asm -----
; 1238 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[919]if (stage == 2)
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#2	;cmpqi:	;,
	lbeq	L270	;
;----- asm -----
; 1297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[956]if ((b==1) && (!buttons_pressed()))
;--- end asm ---
	ldb	8,s	;, b
	cmpb	#1	;cmpqi:	;,
	lbeq	L271	;
L257:
;----- asm -----
; 1306 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[962]if (counter!=-1) counter--;
;--- end asm ---
	ldb	5,s	;, counter
	cmpb	#-1	;cmpqi:	;,
	beq	L259	;
	decb	;
	stb	5,s	;, counter
L259:
;----- asm -----
; 1309 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[964]if (counter == 0)
;--- end asm ---
	tst	5,s	; counter
	lbne	L265	;
;----- asm -----
; 1312 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[966]stage++;
;--- end asm ---
	inc	4,s	; stage
;----- asm -----
; 1314 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[967]counter = 100;
; 1316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[968]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1318 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[969]if (stage == 1)
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L272	;
	ldb	#100	;,
	stb	5,s	;, counter
	ldb	4,s	;, stage
	cmpb	#2	;cmpqi:	;,
	lbne	L265	;
;----- asm -----
; 1328 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[976]printmessage();
;--- end asm ---
	ldx	#LC44	;,
	jsr	_printMessage
;----- asm -----
; 1330 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[977]printmessage();
;--- end asm ---
	ldx	#LC45	;,
	jsr	_printMessage
	lbra	L265	;
L267:
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	lbne	L241	;
;----- asm -----
; 1103 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[837]s1 = in1[8];
;--- end asm ---
	ldx	#LC8	;,
	stx	2,s	;, s1
;----- asm -----
; 1105 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[838]s2 = in2[9];
;--- end asm ---
	ldy	#LC19	; s2,
;----- asm -----
; 1107 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[839]s3 = in3[9];
;--- end asm ---
	ldu	#LC28	; s3,
	lbra	L241	;
L244:
;----- asm -----
; 1212 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[904]innx--;
;--- end asm ---
	dec	6,s	; innx
;----- asm -----
; 1214 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[905]if (innx==-0x40) direction=1;
;--- end asm ---
	ldb	6,s	;, innx
	cmpb	#-64	;cmpqi:	;,
	lbne	L245	;
	ldb	#1	;,
	stb	7,s	;, direction
	lbra	L245	;
L270:
;----- asm -----
; 1241 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[921]counter = -1;
; 1243 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[922]if (button_1_4_pressed())
;--- end asm ---
	ldb	#8	; tmp83,
	andb	9,s	; tmp83, D.4167
	lbne	L273	;
;----- asm -----
; 1249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[926]if (button_1_1_pressed())
;--- end asm ---
	ldb	#1	; tmp84,
	andb	9,s	; tmp84, D.4167
	lbne	L274	;
	ldb	#-1	;,
	stb	5,s	;, counter
;----- asm -----
; 1297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[956]if ((b==1) && (!buttons_pressed()))
;--- end asm ---
	ldb	8,s	;, b
	cmpb	#1	;cmpqi:	;,
	lbne	L257	;
L271:
	tst	9,s	; D.4167
	lbne	L257	;
;----- asm -----
; 1300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[958]b = 0;
; 1302 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[959]if (stage != 2) counter = 1;
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#2	;cmpqi:	;,
	beq	L258	;
	ldb	8,s	;, b
	stb	5,s	;, counter
	clr	8,s	; b
	lbra	L257	;
L269:
	clr	7,s	; direction
	lbra	L245	;
L272:
;----- asm -----
; 1321 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[971]printmessage();
;--- end asm ---
	ldx	#LC42	;,
	jsr	_printMessage
;----- asm -----
; 1323 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[972]printmessage();
;--- end asm ---
	ldx	#LC43	;,
	jsr	_printMessage
	ldb	#100	;,
	stb	5,s	;, counter
	lbra	L265	;
L258:
	clr	8,s	; b
	lbra	L257	;
L273:
;----- asm -----
; 1246 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[924]return;
;--- end asm ---
	leas	10,s	;,,
	puls	y,u,pc	;
L274:
;----- asm -----
; 1252 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[928]if (flashavailable)
;--- end asm ---
	tst	_flashAvailable	; flashAvailable
	lbne	L275	;
;----- asm -----
; 1264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[936]tmp_hp = hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_tmp_hp	;, tmp_hp
;----- asm -----
; 1266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[937]tmp_lv = lv;
;--- end asm ---
	ldb	_lv	;, lv
	stb	_tmp_lv	;, tmp_lv
;----- asm -----
; 1269 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[939]tmp_ex = ex;
;--- end asm ---
	ldx	_ex	;, ex
	stx	_tmp_ex	;, tmp_ex
	ldd	_ex+2	;, ex
	std	_tmp_ex+2	;, tmp_ex
;----- asm -----
; 1271 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[940]tmp_su = su;
;--- end asm ---
	ldx	_su	;, su
	stx	_tmp_su	;, tmp_su
;----- asm -----
; 1274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[942]tmp_cx = cx;
;--- end asm ---
	ldb	_cx	;, cx
	stb	_tmp_cx	;, tmp_cx
;----- asm -----
; 1276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[943]tmp_cy = cy;
;--- end asm ---
	ldb	_cy	;, cy
	stb	_tmp_cy	;, tmp_cy
;----- asm -----
; 1279 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[945]tmp_tg = tg;
;--- end asm ---
	ldx	_tg	;, tg
	stx	_tmp_tg	;, tmp_tg
	ldd	_tg+2	;, tg
	std	_tmp_tg+2	;, tmp_tg
;----- asm -----
; 1281 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[946]for (int i=0;i<6;i++) tmp_s[i] = s[i];
;--- end asm ---
	ldx	#_s	; vect_ps.497,
	ldd	#_tmp_s	; tmp91,
	pshs	x	; vect_ps.497
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp92
	lbne	L253	;
	ldx	_s	;,
	stx	_tmp_s	;,
	ldd	_s+2	;,
	std	_tmp_s+2	;,
	ldx	_s+4	;,
	stx	_tmp_s+4	;,
L254:
;----- asm -----
; 1283 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[947]for (int i=0;i<10;i++) tmp_inventory[i] = inventory[i];
;--- end asm ---
	ldx	_inventory	;, inventory
	stx	_tmp_inventory	;, tmp_inventory
	ldd	_inventory+2	;, inventory
	std	_tmp_inventory+2	;, tmp_inventory
	ldx	_inventory+4	;, inventory
	stx	_tmp_inventory+4	;, tmp_inventory
	ldd	_inventory+6	;, inventory
	std	_tmp_inventory+6	;, tmp_inventory
	ldx	_inventory+8	;, inventory
	stx	_tmp_inventory+8	;, tmp_inventory
	ldd	_inventory+10	;, inventory
	std	_tmp_inventory+10	;, tmp_inventory
	ldx	_inventory+12	;, inventory
	stx	_tmp_inventory+12	;, tmp_inventory
	ldd	_inventory+14	;, inventory
	std	_tmp_inventory+14	;, tmp_inventory
	ldx	_inventory+16	;, inventory
	stx	_tmp_inventory+16	;, tmp_inventory
	ldd	_inventory+18	;, inventory
	std	_tmp_inventory+18	;, tmp_inventory
;----- asm -----
; 1285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[948]for (int i=0;i<4;i++)  tmp_box[i]  = box[i];
;--- end asm ---
	ldx	#_box	; vect_pbox.469,
	ldd	#_tmp_box	; tmp138,
	pshs	x	; vect_pbox.469
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp139
	lbne	L255	;
	ldx	_box	;,
	stx	_tmp_box	;,
	ldd	_box+2	;,
	std	_tmp_box+2	;,
L256:
;----- asm -----
; 1287 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[949]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[950]printmessage();
;--- end asm ---
	ldx	#LC41	;,
	jsr	_printMessage
L252:
;----- asm -----
; 1292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[952]return;
;--- end asm ---
	leas	10,s	;,,
	puls	y,u,pc	;
L266:
	ldb	_cy	;, cy
	cmpb	#13	;cmpqi:	;,
	lbne	L241	;
;----- asm -----
; 1093 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[830]s1 = in1[5];
;--- end asm ---
	ldx	#LC5	;,
	stx	2,s	;, s1
;----- asm -----
; 1095 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[831]s2 = in2[8];
;--- end asm ---
	ldy	#LC18	; s2,
;----- asm -----
; 1097 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[832]s3 = in3[4];
;--- end asm ---
	ldu	#LC24	; s3,
	lbra	L241	;
L268:
;----- asm -----
; 1113 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[844]s1 = in1[1];
;--- end asm ---
	ldx	#LC1	;,
	stx	2,s	;, s1
;----- asm -----
; 1115 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[845]s2 = in2[0];
;--- end asm ---
	ldy	#LC10	; s2,
;----- asm -----
; 1117 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[846]s3 = in3[2];
;--- end asm ---
	ldu	#LC22	; s3,
	lbra	L241	;
L275:
;----- asm -----
; 1255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[930]saveflash();
;--- end asm ---
	jsr	_saveFlash
;----- asm -----
; 1257 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[931]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1259 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
	; #ENR#[932]printmessage();
;--- end asm ---
	ldx	#LC40	;,
	jsr	_printMessage
	lbra	L252	;
L255:
	ldb	_box	;, box
	stb	_tmp_box	;, tmp_box
	ldb	_box+1	;, box
	stb	_tmp_box+1	;, tmp_box
	ldb	_box+2	;, box
	stb	_tmp_box+2	;, tmp_box
	ldb	_box+3	;, box
	stb	_tmp_box+3	;, tmp_box
	lbra	L256	;
L253:
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
	lbra	L254	;
	.globl	_main
_main:
	clrb	;
	rts
