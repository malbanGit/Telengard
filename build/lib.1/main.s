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
; C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c
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
	.globl	_mo
	.area	.text
LC0:
	.ascii	"GNOLL\0"
LC1:
	.ascii	"KOBOLD\0"
LC2:
	.ascii	"SKELETON\0"
LC3:
	.ascii	"HOBBIT\0"
LC4:
	.ascii	"ZOMBIE\0"
LC5:
	.ascii	"ORC\0"
LC6:
	.ascii	"FIGHTER\0"
LC7:
	.ascii	"MUMMY\0"
LC8:
	.ascii	"ELF\0"
LC9:
	.ascii	"GHOUL\0"
LC10:
	.ascii	"DWARF\0"
LC11:
	.ascii	"TROLL\0"
LC12:
	.ascii	"WRAITH\0"
LC13:
	.ascii	"OGRE\0"
LC14:
	.ascii	"MINOTAUR\0"
LC15:
	.ascii	"GIANT\0"
LC16:
	.ascii	"SPECTER\0"
LC17:
	.ascii	"VAMPIRE\0"
LC18:
	.ascii	"DEMON\0"
LC19:
	.ascii	"DRAGON\0"
_mo:
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
	.globl	_stats
LC20:
	.ascii	"STR\0"
LC21:
	.ascii	"INT\0"
LC22:
	.ascii	"WIS\0"
LC23:
	.ascii	"CON\0"
LC24:
	.ascii	"DEX\0"
LC25:
	.ascii	"CHR\0"
_stats:
	.word	LC20
	.word	LC21
	.word	LC22
	.word	LC23
	.word	LC24
	.word	LC25
	.globl	_items
LC26:
	.ascii	"SWORD\0"
LC27:
	.ascii	"ARMOR\0"
LC28:
	.ascii	"SHILED\0"
LC29:
	.ascii	"ELVEN CLOAK\0"
LC30:
	.ascii	"ELVEN BOOTS\0"
LC31:
	.ascii	"RING OF REGENERATION\0"
LC32:
	.ascii	"RING OF PROTECTION\0"
LC33:
	.ascii	"SCROLL OF RESCUE\0"
LC34:
	.ascii	"POTION OF HEALING\0"
LC35:
	.ascii	"POTION OF STRENGTH\0"
_items:
	.word	LC26
	.word	LC27
	.word	LC28
	.word	LC29
	.word	LC30
	.word	LC31
	.word	LC32
	.word	LC33
	.word	LC34
	.word	LC35
	.globl	_spellNames1
LC36:
	.byte	77,65,71,73,67,32,77,73
	.byte	83,83,73,76,69,-128,0
LC37:
	.byte	83,76,69,69,80,-128,0
LC38:
	.byte	67,85,82,69,32,76,73,71
	.byte	72,84,32,87,79,85,78,68
	.byte	83,-128,0
LC39:
	.byte	76,73,71,72,84,-128,0
LC40:
	.byte	84,85,82,78,32,85,78,68
	.byte	69,65,68,-128,0
LC41:
	.byte	80,82,79,84,47,69,86,73
	.byte	76,-128,0
_spellNames1:
	.word	LC36
	.word	LC37
	.word	LC38
	.word	LC39
	.word	LC40
	.word	LC41
	.globl	_spellNames2
LC42:
	.byte	87,69,66,-128,0
LC43:
	.byte	76,69,86,73,84,65,84,69
	.byte	-128,0
LC44:
	.byte	67,65,85,83,69,32,76,73
	.byte	71,72,84,32,87,79,85,78
	.byte	68,83,-128,0
LC45:
	.byte	68,69,84,69,67,84,32,84
	.byte	82,65,80,83,-128,0
LC46:
	.byte	67,72,65,82,77,-128,0
LC47:
	.byte	83,84,82,69,78,71,84,72
	.byte	-128,0
_spellNames2:
	.word	LC42
	.word	LC43
	.word	LC44
	.word	LC45
	.word	LC46
	.word	LC47
	.globl	_spellNames3
LC48:
	.byte	76,73,71,72,84,78,73,78
	.byte	71,32,66,79,76,84,-128,0
LC49:
	.byte	67,85,82,69,32,83,69,82
	.byte	73,79,85,83,32,87,79,85
	.byte	78,68,83,-128,0
LC50:
	.byte	67,79,78,84,73,78,85,65
	.byte	76,32,76,73,71,72,84,-128
	.byte	0
LC51:
	.byte	73,78,86,73,83,73,66,73
	.byte	76,73,84,89,-128,0
LC52:
	.byte	72,79,76,68,32,77,79,78
	.byte	83,84,69,82,-128,0
LC53:
	.byte	80,72,65,78,84,65,83,77
	.byte	65,76,32,70,79,82,67,69
	.byte	83,-128,0
_spellNames3:
	.word	LC48
	.word	LC49
	.word	LC50
	.word	LC51
	.word	LC52
	.word	LC53
	.globl	_spellNames4
LC54:
	.byte	80,65,83,83,32,87,65,76
	.byte	76,-128,0
LC55:
	.byte	70,73,82,69,66,65,76,76
	.byte	-128,0
LC56:
	.byte	67,65,85,83,69,32,83,69
	.byte	82,73,79,85,83,32,87,79
	.byte	85,78,68,83,-128,0
LC57:
	.byte	70,76,69,83,72,32,84,79
	.byte	32,83,84,79,78,69,-128,0
LC58:
	.byte	70,69,65,82,-128,0
LC59:
	.byte	70,73,78,71,69,82,32,79
	.byte	70,32,68,69,65,84,72,-128
	.byte	0
_spellNames4:
	.word	LC54
	.word	LC55
	.word	LC56
	.word	LC57
	.word	LC58
	.word	LC59
	.globl	_spellNames5
LC60:
	.byte	84,69,76,69,80,79,82,84
	.byte	-128,0
LC61:
	.byte	65,83,84,82,65,76,32,87
	.byte	65,76,75,-128,0
LC62:
	.byte	80,79,87,69,82,32,87,79
	.byte	82,68,32,75,73,76,76,-128
	.byte	0
LC63:
	.byte	73,67,69,32,83,84,79,82
	.byte	77,-128,0
LC64:
	.byte	87,65,76,76,32,79,70,32
	.byte	70,73,82,69,-128,0
LC65:
	.byte	80,76,65,71,85,69,-128,0
_spellNames5:
	.word	LC60
	.word	LC61
	.word	LC62
	.word	LC63
	.word	LC64
	.word	LC65
	.globl	_spellNames6
LC66:
	.byte	84,73,77,69,32,83,84,79
	.byte	80,-128,0
LC67:
	.byte	82,65,73,83,69,32,68,69
	.byte	65,68,-128,0
LC68:
	.byte	72,79,76,89,32,83,89,77
	.byte	66,79,76,-128,0
LC69:
	.byte	87,79,82,68,32,79,70,32
	.byte	82,69,67,65,76,76,-128,0
LC70:
	.byte	82,69,83,84,79,82,65,84
	.byte	73,79,78,-128,0
LC71:
	.byte	80,82,73,83,77,65,84,73
	.byte	67,32,87,65,76,76,-128,0
_spellNames6:
	.word	LC66
	.word	LC67
	.word	LC68
	.word	LC69
	.word	LC70
	.word	LC71
	.globl	_spellNames
_spellNames:
	.word	_spellNames1
	.word	_spellNames2
	.word	_spellNames3
	.word	_spellNames4
	.word	_spellNames5
	.word	_spellNames6
	.globl	_treasure
LC72:
	.ascii	"REFUSE\0"
LC73:
	.ascii	"SILVER\0"
LC74:
	.ascii	"GOLD\0"
LC75:
	.ascii	"GEMS\0"
LC76:
	.ascii	"JEWELS\0"
_treasure:
	.word	LC72
	.word	LC73
	.word	LC74
	.word	LC75
	.word	LC76
	.globl	_fountain
LC77:
	.ascii	"WHITE\0"
LC78:
	.ascii	"GREEN\0"
LC79:
	.ascii	"CLEAR\0"
LC80:
	.ascii	"RED\0"
LC81:
	.ascii	"BLACK\0"
_fountain:
	.word	LC77
	.word	LC78
	.word	LC79
	.word	LC80
	.word	LC81
	.globl	_boxColors
LC82:
	.byte	82,69,68,-128,0
LC83:
	.byte	71,82,69,69,78,-128,0
LC84:
	.byte	89,69,76,76,79,87,-128,0
LC85:
	.byte	66,76,85,69,-128,0
_boxColors:
	.word	LC82
	.word	LC83
	.word	LC84
	.word	LC85
	.globl	_loadCharacter
_loadCharacter:
	rts
	.globl	_saveCharacter
_saveCharacter:
	rts
	.globl	_testForButton
_testForButton:
	leas	-9,s	;,,
	stb	1,s	; d, d
;----- asm -----
; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[163]signed int p = 0;
; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[164]signed int t = 0;
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[166]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[167]do
;--- end asm ---
	tst	1,s	; d
	lbne	L6	;
	clr	7,s	; p.251
	clr	4,s	; t
	lbra	L15	;
L27:
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	6,s	;, temp.246
	bitb	#8	;,
	beq	L8	;
	ldb	#1	;,
	stb	7,s	;, p.251
	ldb	#4	;,
	stb	4,s	;, t
L8:
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp40,
	andb	6,s	; tmp40, temp.246
	beq	L9	;
	ldb	#1	;,
	stb	7,s	;, p.251
	ldb	#3	;,
	stb	4,s	;, t
L9:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp41,
	andb	6,s	; tmp41, temp.246
	beq	L10	;
	ldb	#1	;,
	stb	7,s	;, p.251
	ldb	#2	;,
	stb	4,s	;, t
L10:
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp42,
	andb	6,s	; tmp42, temp.246
	beq	L11	;
	ldb	#1	;,
	stb	7,s	;, p.251
	stb	4,s	;, t
L11:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	8,s	;, Vec_Joy_1_X.252
	beq	L12	;
	ldb	#1	;,
	stb	7,s	;, p.251
	ldb	#5	;,
	stb	4,s	;, t
L12:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.253
	beq	L13	;
	ldb	#1	;,
	stb	7,s	;, p.251
	ldb	#5	;,
	stb	4,s	;, t
L13:
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	7,s	; p.251
	beq	L14	;
	tst	8,s	; Vec_Joy_1_X.252
	bne	L14	;
	tst	,s	; Vec_Joy_1_Y.253
	bne	L14	;
	tst	6,s	; temp.246
	beq	L7	;
L14:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[198]while (1);
;--- end asm ---
L15:
;----- asm -----
; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[170]if (d!=0) localtimer--;
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (localtimer == 0) break;
;--- end asm ---
	tst	_localTimer	; localTimer
	lbne	L27	;
L7:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[200]if (t == 0) return d;
;--- end asm ---
	tst	4,s	; t
	beq	L24	;
;----- asm -----
; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[201]return t;
;--- end asm ---
	ldb	4,s	;, t
	stb	1,s	;, d
L24:
	ldb	1,s	;, d
	leas	9,s	;,,
	rts
L6:
	clr	3,s	; p
	clr	4,s	; t
	lbra	L23	;
L28:
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	5,s	;, D.4698
	bitb	#8	;,
	beq	L16	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#4	;,
	stb	4,s	;, t
L16:
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp44,
	andb	5,s	; tmp44, D.4698
	beq	L17	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#3	;,
	stb	4,s	;, t
L17:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp45,
	andb	5,s	; tmp45, D.4698
	beq	L18	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#2	;,
	stb	4,s	;, t
L18:
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp46,
	andb	5,s	; tmp46, D.4698
	beq	L19	;
	ldb	#1	;,
	stb	3,s	;, p
	stb	4,s	;, t
L19:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	2,s	;, Vec_Joy_1_X.4
	beq	L20	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#5	;,
	stb	4,s	;, t
L20:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.5
	beq	L21	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#5	;,
	stb	4,s	;, t
L21:
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	3,s	; p
	beq	L22	;
	tst	2,s	; Vec_Joy_1_X.4
	bne	L22	;
	tst	,s	; Vec_Joy_1_Y.5
	bne	L22	;
	tst	5,s	; D.4698
	lbeq	L7	;
L22:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[198]while (1);
;--- end asm ---
L23:
;----- asm -----
; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[170]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L28	;
	lbra	L7	;
	.globl	_testForInput
_testForInput:
	leas	-7,s	;,,
	stb	1,s	; d, d
;----- asm -----
; 228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[210]int b=0;
; 230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[211]signed int t = 0;
; 232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[212]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[213]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[214]do
;--- end asm ---
	tst	1,s	; d
	lbne	L30	;
	clr	3,s	; t
	bra	L42	;
L37:
;----- asm -----
; 257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[226]if (vec_joy_1_y > 0) {t = 5; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.271
	ble	L38	;
	ldb	#5	;,
	stb	3,s	;, t
L38:
;----- asm -----
; 259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[227]if (vec_joy_1_y < 0) {t = 6; b=1;}
;--- end asm ---
	tst	,s	; Vec_Joy_1_Y.271
	lblt	L55	;
L39:
;----- asm -----
; 263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[230]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
;--- end asm ---
	tst	5,s	; temp.264
	bne	L40	;
	tst	6,s	; Vec_Joy_1_X.270
	bne	L40	;
	tst	,s	; Vec_Joy_1_Y.271
	bne	L40	;
	tst	3,s	; t
	lbne	L41	;
L40:
;----- asm -----
; 266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[232]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[234]while (1);
;--- end asm ---
L42:
;----- asm -----
; 239 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[216]if (d!=0) localtimer--;
; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[218]if (localtimer == 0) {t = 0; break;}
;--- end asm ---
	tst	_localTimer	; localTimer
	lbeq	L31	;
;----- asm -----
; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[219]if (button_1_4_pressed()) {t = 4; b=1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	5,s	;, temp.264
	bitb	#8	;,
	beq	L32	;
	ldb	#4	;,
	stb	3,s	;, t
L32:
;----- asm -----
; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[220]if (button_1_3_pressed()) {t = 3; b=1;}
;--- end asm ---
	ldb	#4	; tmp38,
	andb	5,s	; tmp38, temp.264
	beq	L33	;
	ldb	#3	;,
	stb	3,s	;, t
L33:
;----- asm -----
; 248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[221]if (button_1_2_pressed()) {t = 2; b=1;}
;--- end asm ---
	ldb	#2	; tmp39,
	andb	5,s	; tmp39, temp.264
	beq	L34	;
	ldb	#2	;,
	stb	3,s	;, t
L34:
;----- asm -----
; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[222]if (button_1_1_pressed()) {t = 1; b=1;}
;--- end asm ---
	ldb	#1	; tmp40,
	andb	5,s	; tmp40, temp.264
	beq	L35	;
	ldb	#1	;,
	stb	3,s	;, t
L35:
;----- asm -----
; 253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[224]if (vec_joy_1_x > 0) {t = 8; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	6,s	;, Vec_Joy_1_X.270
	ble	L36	;
	ldb	#8	;,
	stb	3,s	;, t
L36:
;----- asm -----
; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[225]if (vec_joy_1_x < 0) {t = 7; b=1;}
;--- end asm ---
	tst	6,s	; Vec_Joy_1_X.270
	lbge	L37	;
	ldb	#7	;,
	stb	3,s	;, t
	lbra	L37	;
L55:
	ldb	#6	;,
	stb	3,s	;, t
	lbra	L39	;
L31:
	clr	3,s	; t
L41:
;----- asm -----
; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[235]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[236]if (t == 0) return d;
;--- end asm ---
	tst	3,s	; t
	beq	L53	;
;----- asm -----
; 275 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[237]return t;
;--- end asm ---
	ldb	3,s	;, t
	stb	1,s	;, d
L53:
	ldb	1,s	;, d
	leas	7,s	;,,
	rts
L30:
	clr	3,s	; t
	bra	L52	;
L48:
;----- asm -----
; 257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[226]if (vec_joy_1_y > 0) {t = 5; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.9
	ble	L49	;
	ldb	#5	;,
	stb	3,s	;, t
L49:
;----- asm -----
; 259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[227]if (vec_joy_1_y < 0) {t = 6; b=1;}
;--- end asm ---
	tst	,s	; Vec_Joy_1_Y.9
	lblt	L56	;
L50:
;----- asm -----
; 263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[230]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
;--- end asm ---
	tst	4,s	; D.4684
	bne	L51	;
	tst	2,s	; Vec_Joy_1_X.8
	bne	L51	;
	tst	,s	; Vec_Joy_1_Y.9
	bne	L51	;
	tst	3,s	; t
	lbne	L41	;
L51:
;----- asm -----
; 266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[232]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[234]while (1);
;--- end asm ---
L52:
;----- asm -----
; 239 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[216]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.7, localTimer
;----- asm -----
; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[218]if (localtimer == 0) {t = 0; break;}
;--- end asm ---
	tstb	; localTimer.7
	lbeq	L31	;
;----- asm -----
; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[219]if (button_1_4_pressed()) {t = 4; b=1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	4,s	;, D.4684
	bitb	#8	;,
	beq	L43	;
	ldb	#4	;,
	stb	3,s	;, t
L43:
;----- asm -----
; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[220]if (button_1_3_pressed()) {t = 3; b=1;}
;--- end asm ---
	ldb	#4	; tmp42,
	andb	4,s	; tmp42, D.4684
	beq	L44	;
	ldb	#3	;,
	stb	3,s	;, t
L44:
;----- asm -----
; 248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[221]if (button_1_2_pressed()) {t = 2; b=1;}
;--- end asm ---
	ldb	#2	; tmp43,
	andb	4,s	; tmp43, D.4684
	beq	L45	;
	ldb	#2	;,
	stb	3,s	;, t
L45:
;----- asm -----
; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[222]if (button_1_1_pressed()) {t = 1; b=1;}
;--- end asm ---
	ldb	#1	; tmp44,
	andb	4,s	; tmp44, D.4684
	beq	L46	;
	ldb	#1	;,
	stb	3,s	;, t
L46:
;----- asm -----
; 253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[224]if (vec_joy_1_x > 0) {t = 8; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	2,s	;, Vec_Joy_1_X.8
	ble	L47	;
	ldb	#8	;,
	stb	3,s	;, t
L47:
;----- asm -----
; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[225]if (vec_joy_1_x < 0) {t = 7; b=1;}
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.8
	lbge	L48	;
	ldb	#7	;,
	stb	3,s	;, t
	lbra	L48	;
L56:
	ldb	#6	;,
	stb	3,s	;, t
	lbra	L50	;
LC86:
	.byte	69,78,84,69,82,32,78,85
	.byte	77,66,69,82,58,-128,0
LC87:
	.ascii	"( MAX: % )\0"
LC88:
	.ascii	"( MIN: % )\0"
LC89:
	.byte	32,94,32,-128,0
	.globl	_inputNumber
_inputNumber:
	pshs	y,u	;
	leas	-42,s	;,,
	stx	23,s	; message, message
;----- asm -----
; 285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[246]unsigned long long int ulltmp = (unsigned long long int) min;
; 287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[247]signed int maxdigit = 4;
; 289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[248]char *ascii = stringbuffer12;
; 291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[249]extern char * _ltoa(unsigned long n, char *pointer, int zerotospaces);
; 293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[250]unsigned int len = vstrlen(message)>>1;
;--- end asm ---
	jsr	_vstrlen
	stb	31,s	;, len
	lsr	31,s	; len
;----- asm -----
; 297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[253]_ltoa(min, ascii,0);
;--- end asm ---
	ldy	#_stringBuffer12	; tmp49,
	pshs	y	; tmp49
	clrb	;
	ldx	50,s	;, min
	jsr	__ltoa
;----- asm -----
; 299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[254]if (*(ascii+0) == ' ') *(ascii+0) = '0';
;--- end asm ---
	leas	2,s	;,,
	ldb	,y	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L91	;
L58:
;----- asm -----
; 301 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[255]if (*(ascii+1) == ' ') *(ascii+1) = '0';
;--- end asm ---
	ldb	_stringBuffer12+1	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L92	;
L59:
;----- asm -----
; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[256]if (*(ascii+2) == ' ') *(ascii+2) = '0';
;--- end asm ---
	ldb	_stringBuffer12+2	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L93	;
L60:
;----- asm -----
; 305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[257]if (*(ascii+3) == ' ') *(ascii+3) = '0';
;--- end asm ---
	ldb	_stringBuffer12+3	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L94	;
L61:
;----- asm -----
; 307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[258]if (*(ascii+4) == ' ') *(ascii+4) = '0';
;--- end asm ---
	ldb	_stringBuffer12+4	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L95	;
L62:
;----- asm -----
; 309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[259]*(ascii+5) = '�';
;--- end asm ---
	ldb	#-128	;,
	stb	_stringBuffer12+5	;, stringBuffer12
;----- asm -----
; 312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[261]if (max<10000) {ascii++; maxdigit = 3;}
;--- end asm ---
	ldx	50,s	;, max
	cmpx	#9999	;cmphi:	;,
	lbhi	L63	;
	ldu	#_stringBuffer12+1	; ascii,
	ldb	#3	;,
	stb	30,s	;, maxDigit
	ldx	#3	;,
	stx	33,s	;, prephitmp.287
L64:
;----- asm -----
; 314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[262]if (max<1000) {ascii++; maxdigit = 2;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#999	;cmphi:	;,
	bhi	L65	;
	leau	1,u	; ascii,, ascii
	ldb	#2	;,
	stb	30,s	;, maxDigit
	ldx	#2	;,
	stx	33,s	;, prephitmp.287
L65:
;----- asm -----
; 316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[263]if (max<100) {ascii++; maxdigit = 1;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#99	;cmphi:	;,
	bhi	L66	;
	leau	1,u	; ascii,, ascii
	ldb	#1	;,
	stb	30,s	;, maxDigit
	ldx	#1	;,
	stx	33,s	;, prephitmp.287
L66:
;----- asm -----
; 318 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[264]if (max<10) {ascii++; maxdigit = 0;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#9	;cmphi:	;,
	bhi	L67	;
	leau	1,u	; ascii,, ascii
	clr	30,s	; maxDigit
	ldx	#0	;,
	stx	33,s	;, prephitmp.287
L67:
;----- asm -----
; 321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[266]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[268]int lastdir = 0;
; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[269]do
;--- end asm ---
	ldd	33,s	;, prephitmp.287
	leax	d,u	;,, ascii
	stx	35,s	;, pretmp.288
	ldd	50,s	;, max
	std	3,s	;,
	ldx	48,s	;, min
	stx	5,s	;,
	ldb	31,s	;, len
	lda	#12	;umulqihi3	;
	mul
	std	,s	;,
	negb	;
	stb	25,s	;, D.3409
	clr	32,s	; lastDir
	lbra	L87	;
L89:
;----- asm -----
; 413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[324]_ltoa(max, stringbuffer6,0);
;--- end asm ---
	ldy	#_stringBuffer6	; tmp114,
	pshs	y	; tmp114
	clrb	;
	ldx	52,s	;, max
	jsr	__ltoa
;----- asm -----
; 415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[325]vstrcpy(stringbuffer12, stringbuffer6);
;--- end asm ---
	pshs	y	; tmp114
	ldx	#_stringBuffer12	;,
	jsr	_vstrcpy
	leas	4,s	;,,
L79:
;----- asm -----
; 418 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[327]if (ulltmp < ull(min) )
;--- end asm ---
	ldd	26,s	;, ulltmp
	cmpd	#0	;cmphi:(R)	;,
	lbhs	L96	;
L90:
;----- asm -----
; 421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[329]_ltoa(min, stringbuffer6,0);
;--- end asm ---
	ldy	#_stringBuffer6	; tmp116,
	pshs	y	; tmp116
	clrb	;
	ldx	50,s	;, min
	jsr	__ltoa
;----- asm -----
; 423 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[330]vstrcpy(stringbuffer12, stringbuffer6);
;--- end asm ---
	pshs	y	; tmp116
	ldx	#_stringBuffer12	;,
	jsr	_vstrcpy
	leas	4,s	;,,
L81:
;----- asm -----
; 428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[334]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	32,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L84	;
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
	beq	L85	;
	ldb	#1	; Vec_Joy_1_Y,
L85:
	stb	32,s	; Vec_Joy_1_Y, lastDir
L84:
;----- asm -----
; 430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[335]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	lbne	L86	;
;----- asm -----
; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[337]while (1);
;--- end asm ---
L87:
;----- asm -----
; 329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[271]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[272]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 333 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[273]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 335 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[274]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 337 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[275]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[276]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[279]if (message != 0)
;--- end asm ---
	ldx	23,s	;, message
	beq	L68	;
;----- asm -----
; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[281]print_str_d(0x60,-(len*12), message);reset0ref();
;--- end asm ---
	ldb	#96	;,
	stb	,-s	;,
	ldx	24,s	;, message
	ldb	26,s	;, D.3409
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
L68:
;----- asm -----
; 350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[284]print_str_d(0x20,-0x50, ); reset0ref();
;--- end asm ---
	ldb	#32	;,
	stb	,-s	;,
	ldx	#LC86	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 353 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[286]tmp2 = vec_text_width;
;--- end asm ---
	ldb	_Vec_Text_Width	;, Vec_Text_Width
	stb	_tmp2	;, tmp2
;----- asm -----
; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[289]vec_text_width = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[290]_fl(, max);
;--- end asm ---
	ldx	51,s	;, max
	pshs	x	;
	ldx	#LC87	;,
	jsr	__fl
;----- asm -----
; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[291]print_str_d(0x10,-0x48, stringbuffer40);reset0ref();
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-72	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[292]_fl(, min);
;--- end asm ---
	ldx	52,s	;, min
	pshs	x	;
	ldx	#LC88	;,
	jsr	__fl
;----- asm -----
; 365 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[293]print_str_d(0x00,-0x48, stringbuffer40);reset0ref();
;--- end asm ---
	clr	,-s	;
	ldx	#_stringBuffer40	;,
	ldb	#-72	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[295]vec_text_width = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[298]print_str_d(-0x20,-0x30, ascii);reset0ref();
;--- end asm ---
	ldb	#-32	;,
	stb	,-s	;,
	leax	,u	;, ascii
	ldb	#-48	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[301]print_str_d(-0x2b,-0x30-35+((maxdigit+1)-tmp )*0x12, );reset0ref();
;--- end asm ---
	leas	8,s	;,,
	ldb	30,s	; tmp62, maxDigit
	subb	_tmp	; tmp62, tmp
	incb	; tmp62
	lda	#18	;mulqihi3	;
	mul
		;movlsbqihi: D->B
	addb	#-83	;,
	stb	,s	;,
	ldb	#-43	;,
	stb	,-s	;,
	ldx	#LC89	;,
	ldb	1,s	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[302]vec_text_width = tmp2;
;--- end asm ---
	ldb	_tmp2	;, tmp2
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[304]if ((vec_joy_1_x > 0) && (!lastdir)) if (tmp>0) tmp--;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.13
	leas	1,s	;,,
	tstb	;
	ble	L69	;
	tst	32,s	; lastDir
	bne	L69	;
	ldb	_tmp	;, tmp
	stb	37,s	;, tmp.297
	ble	L69	;
	decb	;
	stb	_tmp	;, tmp
L69:
;----- asm -----
; 383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[305]if ((vec_joy_1_x < 0) && (!lastdir)) if (tmp<maxdigit) tmp++;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.13
	lblt	L97	;
L70:
;----- asm -----
; 386 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[307]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L71	;
	tst	32,s	; lastDir
	bne	L71	;
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.287
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; D.3424,, ascii
	inc	,x	;* D.3424
L71:
;----- asm -----
; 389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[309]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	lblt	L98	;
L72:
;----- asm -----
; 393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[312]if (*(ascii+maxdigit-tmp)>'9') *(ascii+maxdigit-tmp) = '0';
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.287
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.309,, ascii
	ldb	,x	;,* temp.309
	cmpb	#57	;cmpqi:	;,
	bls	L73	;
	ldb	#48	;,
	stb	,x	;,* temp.309
L73:
;----- asm -----
; 395 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[313]if (*(ascii+maxdigit-tmp)<'0') *(ascii+maxdigit-tmp) = '9';
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.287
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.314,, ascii
	ldb	,x	;,* temp.314
	cmpb	#47	;cmpqi:	;,
	bhi	L74	;
	ldb	#57	;,
	stb	,x	;,* temp.314
L74:
;----- asm -----
; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[316]ulltmp = ull(*(ascii+maxdigit)-'0');
;--- end asm ---
	ldx	35,s	;, pretmp.288
	ldb	,x	; tmp76,
	addb	#-48	; tmp76,
	clra		;zero_extendqihi: R:b -> R:d	; tmp76,
	std	28,s	;, ulltmp
	ldd	#0	;,
	std	26,s	;, ulltmp
;----- asm -----
; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[317]if (max>=10) ulltmp += ull(*(ascii+(maxdigit-1))-'0') * ull(10);
;--- end asm ---
	ldx	50,s	;, max
	cmpx	#9	;cmphi:	;,
	bls	L75	;
	ldd	33,s	;, prephitmp.287
	leax	d,u	; tmp78,, ascii
	ldb	-1,x	; tmp80,
	addb	#-48	; tmp80,
	clra		;zero_extendqihi: R:b -> R:d	; tmp80,
	tfr	d,x	;, tmp82
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldd	#10	;,
	std	6,s	;,
	ldd	#0	;,
	std	,s	;,
	stx	2,s	; tmp82,
	leax	46,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldx	38,s	;,
	stx	19,s	;,
	ldd	40,s	;,
	std	21,s	;,
	ldd	28,s	;, ulltmp
	addd	21,s	;,
	std	28,s	;, ulltmp
	ldd	26,s	;, ulltmp
	adcb	20,s	;
	adca	19,s	;
	std	26,s	;, ulltmp
	ldx	50,s	;, max
L75:
;----- asm -----
; 403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[318]if (max>=100) ulltmp += ull(*(ascii+(maxdigit-2))-'0') * ull(100);
;--- end asm ---
	cmpx	#99	;cmphi:	;,
	bls	L76	;
	ldd	33,s	;, prephitmp.287
	leax	d,u	; tmp87,, ascii
	ldb	-2,x	; tmp89,
	addb	#-48	; tmp89,
	clra		;zero_extendqihi: R:b -> R:d	; tmp89,
	tfr	d,x	;, tmp91
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldd	#100	;,
	std	6,s	;,
	ldd	#0	;,
	std	,s	;,
	stx	2,s	; tmp91,
	leax	46,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldx	38,s	;,
	stx	15,s	;,
	ldd	40,s	;,
	std	17,s	;,
	ldd	28,s	;, ulltmp
	addd	17,s	;,
	std	28,s	;, ulltmp
	ldd	26,s	;, ulltmp
	adcb	16,s	;
	adca	15,s	;
	std	26,s	;, ulltmp
	ldx	50,s	;, max
L76:
;----- asm -----
; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[319]if (max>=1000) ulltmp += ull(*(ascii+(maxdigit-3))-'0') * ull(1000);
;--- end asm ---
	cmpx	#999	;cmphi:	;,
	bls	L77	;
	ldd	33,s	;, prephitmp.287
	leax	d,u	; tmp96,, ascii
	ldb	-3,x	; tmp98,
	addb	#-48	; tmp98,
	clra		;zero_extendqihi: R:b -> R:d	; tmp98,
	tfr	d,y	;, tmp100
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	std	,s	;,
	sty	2,s	; tmp100,
	leax	46,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldd	38,s	;,
	std	11,s	;,
	ldx	40,s	;,
	stx	13,s	;,
	ldd	28,s	;, ulltmp
	addd	13,s	;,
	std	28,s	;, ulltmp
	ldd	26,s	;, ulltmp
	adcb	12,s	;
	adca	11,s	;
	std	26,s	;, ulltmp
	ldx	50,s	;, max
L77:
;----- asm -----
; 407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[320]if (max>=10000) ulltmp += ull(*(ascii+(maxdigit-4))-'0') * ull(10000);
;--- end asm ---
	cmpx	#9999	;cmphi:	;,
	bls	L78	;
	ldd	33,s	;, prephitmp.287
	leax	d,u	; tmp105,, ascii
	ldb	-4,x	; tmp107,
	addb	#-48	; tmp107,
	clra		;zero_extendqihi: R:b -> R:d	; tmp107,
	tfr	d,y	;, tmp109
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#10000	;,
	stx	6,s	;,
	std	,s	;,
	sty	2,s	; tmp109,
	leax	46,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldd	38,s	;,
	std	7,s	;,
	ldx	40,s	;,
	stx	9,s	;,
	ldd	28,s	;, ulltmp
	addd	9,s	;,
	std	28,s	;, ulltmp
	ldd	26,s	;, ulltmp
	adcb	8,s	;
	adca	7,s	;
	std	26,s	;, ulltmp
L78:
;----- asm -----
; 410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[322]if (ulltmp > ull(max) )
;--- end asm ---
	ldx	26,s	;, ulltmp
	cmpx	#0	;cmphi:	;,
	lbhi	L89	;
	lbne	L79	;
	ldx	28,s	;, ulltmp
	cmpx	3,s	;cmphi:	;,
	lbls	L79	;
	lbra	L89	;
L96:
	cmpd	#0	;cmphi:(R)	; tmp1,
	lbne	L81	;
	ldd	28,s	;, ulltmp
	cmpd	5,s	;cmphi:(R)	;,
	lbhs	L81	;
	lbra	L90	;
L97:
	tst	32,s	; lastDir
	lbne	L70	;
	ldb	_tmp	; tmp.298, tmp
	cmpb	30,s	;cmpqi:(R)	; tmp.298, maxDigit
	lbge	L70	;
	incb	; tmp.298
	stb	_tmp	; tmp.298, tmp
	lbra	L70	;
L98:
	tst	32,s	; lastDir
	lbne	L72	;
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.287
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.304,, ascii
	dec	,x	;* temp.304
	lbra	L72	;
L86:
;----- asm -----
; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[338]return (unsigned long int)ulltmp;
;--- end asm ---
	ldx	28,s	;, ulltmp
	leas	42,s	;,,
	puls	y,u,pc	;
L63:
	ldu	#_stringBuffer12	; ascii,
	ldb	#4	;,
	stb	30,s	;, maxDigit
	ldx	#4	;,
	stx	33,s	;, prephitmp.287
	lbra	L64	;
L91:
	ldb	#48	;,
	stb	_stringBuffer12	;, stringBuffer12
	lbra	L58	;
L95:
	ldb	#48	;,
	stb	_stringBuffer12+4	;, stringBuffer12
	lbra	L62	;
L94:
	ldb	#48	;,
	stb	_stringBuffer12+3	;, stringBuffer12
	lbra	L61	;
L93:
	ldb	#48	;,
	stb	_stringBuffer12+2	;, stringBuffer12
	lbra	L60	;
L92:
	ldb	#48	;,
	stb	_stringBuffer12+1	;, stringBuffer12
	lbra	L59	;
LC90:
	.ascii	"YOU HAVE NOT BEEN NOTICED...\0"
LC91:
	.ascii	"<4> TO APPROACH:\0"
LC92:
	.ascii	"YOU ENCOUNTER A LVL % %\0"
LC93:
	.ascii	"% LIKES YOUR BODY\0"
LC94:
	.ascii	"HE HEALS YOU TO FULL STRENGTH\0"
LC95:
	.ascii	"% MAKES A QUICK MOVE\0"
LC96:
	.ascii	"YOU HAVE NOTHING HE WANTS\0"
LC97:
	.ascii	"TO STEAL!\0"
LC98:
	.ascii	"HE STEALS YOUR %\0"
LC99:
	.ascii	"HE STEALS A %\0"
LC100:
	.ascii	"THE % LIKES YOU!\0"
LC101:
	.ascii	"HE GIVES YOU A %+%\0"
LC102:
	.ascii	"FIGHT(4), CAST(3), EVADE(1)\0"
LC103:
	.ascii	"WAIT\0"
LC104:
	.ascii	"EVADE\0"
LC105:
	.ascii	"YOU'RE ROOTED TO THE SPOT\0"
LC106:
	.ascii	"NORTH\0"
LC107:
	.ascii	"SOUTH\0"
LC108:
	.ascii	"WEST\0"
LC109:
	.ascii	"EAST\0"
LC110:
	.ascii	"FIGHT\0"
LC111:
	.ascii	"YOU MISSED...\0"
LC112:
	.ascii	"YOU DO % POINTS DAMAGE\0"
LC113:
	.ascii	"IT DIED...\0"
LC114:
	.ascii	"YOU GAIN % EXPERIENCE POINTS\0"
LC115:
	.ascii	"IT MISSED...\0"
LC116:
	.ascii	"IT DOES % POINTS DAMAGE\0"
LC117:
	.ascii	"IT DRAINS A LEVEL!!!\0"
LC118:
	.ascii	"YOU ARE PARALIZED!!!\0"
LC119:
	.ascii	"IT USES IT'S SWORD!!!\0"
LC120:
	.ascii	"IT USES IT'S WHIP!!\0"
LC121:
	.ascii	"THE DRAGON BREATHS FIRE!!!\0"
LC122:
	.ascii	"YOU PARTIALLY DODGE IT\0"
LC123:
	.ascii	"YOU BURN FOR % POINTS DAMAGE\0"
LC124:
	.ascii	"THE % IS NOT AMUSED\0"
	.globl	_handleEncounters
_handleEncounters:
	pshs	u	;
	leas	-23,s	;,,
;----- asm -----
; 448 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[350]if (forcemonster == return_spanw_monster)
;--- end asm ---
	cmpb	#30	;cmpqi:	; forceMonster,
	lbeq	L216	;
;----- asm -----
; 456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[356]if (forcemonster == return_monster_is_set)
;--- end asm ---
	cmpb	#31	;cmpqi:	; forceMonster,
	lbne	L102	;
;----- asm -----
; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[360]goto monsterforced;
;--- end asm ---
L103:
;----- asm -----
; 553 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[432]un = 0;
;--- end asm ---
	clr	_un	; un
;----- asm -----
; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[435]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
;--- end asm ---
	ldb	_m	; m.352, m
	cmpb	#2	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#4	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#7	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#9	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#12	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#16	;cmpqi:	; m.352,
	beq	L110	;
	cmpb	#17	;cmpqi:	; m.352,
	bne	L111	;
L110:
	ldb	#1	;,
	stb	_un	;, un
L111:
;----- asm -----
; 563 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[440]#ifdef atari_version
; 565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[441]if ( (sf[astral_walk] >0) && (un == 1) && (randmax(100)<20) )
;--- end asm ---
	tst	_sf+7	; sf
	beq	L112	;
	ldb	_un	;, un
	cmpb	#1	;cmpqi:	;,
	lbeq	L217	;
L112:
;----- asm -----
; 568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[443]#else
; 583 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[455]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 585 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[456]_fsi2_s(, ml, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp107
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldb	_ml	;, ml
	ldx	#LC92	;,
	jsr	__fsi2_s
;----- asm -----
; 587 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[457]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 594 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[463]#ifndef atari_version
; 609 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[475]l=ml;
;--- end asm ---
	ldb	_ml	;, ml
	stb	_l	;, l
;----- asm -----
; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[476]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 616 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[480]if (randmax(100)>94)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	leas	2,s	;,,
	cmpb	#94	;cmpqi:	; D.3533,
	lbhi	L218	;
;----- asm -----
; 642 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[500]if (m == elf)
;--- end asm ---
	ldb	_m	; m.356, m
	cmpb	#8	;cmpqi:	; m.356,
	lbeq	L219	;
	cmpb	#3	;cmpqi:	; m.356,
	lbeq	L220	;
L118:
	ldb	_m	;, m
	cmpb	#19	;cmpqi:	;,
	lbeq	L221	;
L115:
;----- asm -----
; 672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[525]if (tmp == 1)
;--- end asm ---
	ldb	_tmp	;, tmp
	stb	15,s	;, tmp.28
	cmpb	#1	;cmpqi:	;,
	lbeq	L222	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L223	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L224	;
L137:
;----- asm -----
; 825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[630]if (randmax(100) > 50+ s[dex]*2) goto label3300;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	16,s	;, D.3555
	ldb	_s+4	; tmp182, s
	addb	#25	; tmp182,
	aslb	; tmp182
	cmpb	16,s	;cmpqi:(R)	; tmp182, D.3555
	lblo	L212	;
	lbra	L249	;
L196:
;----- asm -----
; 1321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[972]if (m == specter) {dr = 2; goto label3305;}
;--- end asm ---
	cmpb	#16	;cmpqi:	; m.425,
	lbeq	L226	;
;----- asm -----
; 1326 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[976]if (m == vampire) {dr = 3; goto label3305;}
;--- end asm ---
	cmpb	#17	;cmpqi:	; m.425,
	lbeq	L227	;
;----- asm -----
; 1331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[980]if (m == ghoul) {pa = 5; goto label3305;}
;--- end asm ---
	cmpb	#9	;cmpqi:	; m.425,
	lbeq	L228	;
;----- asm -----
; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[988]if (m == demon)
;--- end asm ---
	cmpb	#18	;cmpqi:	; m.425,
	lbeq	L229	;
;----- asm -----
; 1377 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1014]if (m == dragon)
;--- end asm ---
	cmpb	#19	;cmpqi:	; m.425,
	lbeq	L230	;
L203:
;----- asm -----
; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1049]goto label3305;
;--- end asm ---
L189:
;----- asm -----
; 1225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[902]tmp = (signed int)(randmax(20) + ml -inventory[armor] - inventory[shield] + mb);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	18,s	;, D.3632
	ldb	_mb	; tmp234, mb
	addb	_ml	; tmp234, ml
	subb	_inventory+2	; tmp236, inventory
	subb	_inventory+1	; tmp236, inventory
	addb	18,s	; tmp236, D.3632
	stb	19,s	; tmp236, tmp.64
	stb	_tmp	; tmp236, tmp
;----- asm -----
; 1230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[906]if ((m>=specter) && (m<=vampire))
;--- end asm ---
	ldb	_m	; tmp239, m
	addb	#-16	; tmp239,
	cmpb	#1	;cmpqi:	; tmp239,
	lbls	L231	;
L190:
;----- asm -----
; 1240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[914]if (tmp < 10)
;--- end asm ---
	ldb	_tmp	;, tmp
	cmpb	#9	;cmpqi:	;,
	lble	L232	;
;----- asm -----
; 1251 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[922]ltmp = (signed long int )  (randmax(8) + randmax(ml*2) +1 ) *db;
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	stb	20,s	;, D.3644
	ldb	_ml	; tmp241, ml
	aslb	; tmp241
	jsr	_RandMax
	addb	20,s	; D.3646, D.3644
	incb	; D.3646
	lda	_db	;umulqihi3	; db
	mul
	tfr	d,x	;, ltmp.67
	std	_ltmp	; ltmp.67, ltmp
;----- asm -----
; 1253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[923]_fi_s(, (unsigned int)ltmp);
;--- end asm ---
	tfr	x,d	;movlsbqihi: R:x -> R:b	; ltmp.67,
	ldx	#LC116	;,
	jsr	__fi_s
;----- asm -----
; 1255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[924]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[928]label3320:
;--- end asm ---
L192:
;----- asm -----
; 1262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[929]ch = ch - ltmp;
;--- end asm ---
	ldd	_ch	; ch, ch
	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.69, ltmp
	std	_ch	; ch.69, ch
;----- asm -----
; 1264 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[930]if (ch <1)
;--- end asm ---
	cmpd	#0	; ch.69
	lble	L233	;
;----- asm -----
; 1272 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[936]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[940]if ((randmax(10) < dr) && (sf[protection_from_evil]) !=0)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	_dr	;cmpqi:	; D.3655, dr
	bhs	L194	;
	tst	_sf+3	; sf
	lbne	L234	;
L194:
;----- asm -----
; 1305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[961]if (randmax(10) >= pa) goto fightstart;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	_pa	;cmpqi:	; D.3658, pa
	lbhs	L214	;
;----- asm -----
; 1307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[962]printmessage();
;--- end asm ---
	ldx	#LC118	;,
	jsr	_printMessage
;----- asm -----
; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[963]goto label3300;
;--- end asm ---
L212:
;----- asm -----
; 1206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[889]db = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_db	;, db
;----- asm -----
; 1208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[890]pa = 0;
;--- end asm ---
	clr	_pa	; pa
;----- asm -----
; 1210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[891]dr = 0;
;--- end asm ---
	clr	_dr	; dr
;----- asm -----
; 1212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[892]mb = 0;
;--- end asm ---
	clr	_mb	; mb
;----- asm -----
; 1214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[893]goto label3330;
L188:
; 1316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[968]if (m == wraith) {dr = 1; goto label3305;}
;--- end asm ---
	ldb	_m	; m.425, m
	cmpb	#12	;cmpqi:	; m.425,
	lbne	L196	;
	ldb	#1	;,
	stb	_dr	;, dr
	lbra	L189	;
L102:
;----- asm -----
; 466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[364]if (randmax(100)>30) return return_treasure;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#30	;cmpqi:	; D.3500,
	lbhi	L104	;
;----- asm -----
; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[370]#ifdef atari_version
; 475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[371]if (sf[timestop]>0) return return_treasure;
;--- end asm ---
	tst	_sf+8	; sf
	bne	L104	;
;----- asm -----
; 477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[372]#endif
; 482 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[376]if ( (sf[invisible]>0) && (randmax(100)>20) ) return return_treasure;
;--- end asm ---
	tst	_sf+5	; sf
	bne	L235	;
L105:
;----- asm -----
; 489 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[382]monsteragain:
;--- end asm ---
L209:
;----- asm -----
; 491 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[383]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3505, m
;----- asm -----
; 496 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[387]if ((sf[fear]>0) && (m<5)) goto monsteragain;
;--- end asm ---
	tst	_sf+6	; sf
	beq	L106	;
	cmpb	#4	;cmpqi:	; D.3505,
	ble	L209	;
L106:
;----- asm -----
; 499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[389]if ( (randmax(20)+1)  <=  inventory[elven_cloak] )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	incb	; D.3509
	cmpb	_inventory+3	;cmpqi:	; D.3509, inventory
	lbls	L236	;
L108:
;----- asm -----
; 522 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[406]monsterset:
;--- end asm ---
	lbra	L101	;
L235:
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#20	;cmpqi:	; D.3504,
	bls	L105	;
L104:
	ldb	#3	;,
	stb	11,s	;, D.3501
L109:
	ldb	11,s	; <result>, D.3501
L99:
	leas	23,s	;,,
	puls	u,pc	;
L154:
;----- asm -----
; 1083 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[803]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1085 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[804]if (displaystatuspage())
;--- end asm ---
	jsr	_displayStatusPage
	tstb	; D.3594
	lbne	L237	;
;----- asm -----
; 1093 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[810]goto fightstart;
;--- end asm ---
L214:
;----- asm -----
; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[634]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[639]printmessage();
;--- end asm ---
	ldx	#LC102	;,
	jsr	_printMessage
;----- asm -----
; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[640]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 842 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[641]tmp2 = 0;
;--- end asm ---
	clr	_tmp2	; tmp2
;----- asm -----
; 844 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[642]while(1)
;--- end asm ---
	lbra	L150	;
L142:
;----- asm -----
; 859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[651]if (vec_joy_1_y>0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L143	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
L143:
;----- asm -----
; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[652]if (vec_joy_1_y<0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	lblt	L238	;
L144:
;----- asm -----
; 864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[654]if (button_1_4_pressed()) tmp2 = 4;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L145	;
	ldb	#4	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L145:
;----- asm -----
; 866 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[655]if (button_1_3_pressed()) tmp2 = 3;
;--- end asm ---
	bitb	#4	;,
	beq	L146	;
	ldb	#3	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L146:
;----- asm -----
; 868 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[656]if (button_1_2_pressed()) tmp2 = 2;
;--- end asm ---
	bitb	#2	;,
	beq	L147	;
	ldb	#2	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L147:
;----- asm -----
; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[657]if (button_1_1_pressed()) tmp2 = 1;
;--- end asm ---
	bitb	#1	;,
	beq	L148	;
	ldb	#1	;,
	stb	_tmp2	;, tmp2
L148:
;----- asm -----
; 874 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[660]if ((!buttons_pressed()) && (tmp2))
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L149	;
	tst	_tmp2	; tmp2
	lbne	L140	;
L149:
;----- asm -----
; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[663]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
L150:
;----- asm -----
; 847 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[644]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 849 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[645]if (localtimer == 0)
;--- end asm ---
	tst	_localTimer	; localTimer
	beq	L239	;
;----- asm -----
; 855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[649]if (vec_joy_1_x>0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	ble	L141	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
L141:
;----- asm -----
; 857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[650]if (vec_joy_1_x<0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	lbge	L142	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
	lbra	L142	;
L238:
	ldb	#5	;,
	stb	_tmp2	;, tmp2
	lbra	L144	;
L231:
;----- asm -----
; 1233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[908]if (sf[protection_from_evil] > 0) tmp = tmp -6;
;--- end asm ---
	tst	_sf+3	; sf
	lbeq	L190	;
	ldb	19,s	;, tmp.64
	addb	#-6	;,
	stb	_tmp	;, tmp
	lbra	L190	;
L239:
;----- asm -----
; 852 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[647]break;
;--- end asm ---
L140:
;----- asm -----
; 882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[666]db = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_db	;, db
;----- asm -----
; 884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[667]pa = 0;
;--- end asm ---
	clr	_pa	; pa
;----- asm -----
; 886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[668]dr = 0;
;--- end asm ---
	clr	_dr	; dr
;----- asm -----
; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[669]mb = 0;
;--- end asm ---
	clr	_mb	; mb
;----- asm -----
; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[670]switch (tmp2)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	cmpb	#4	;cmpqi:	;,
	lbls	L240	;
;----- asm -----
; 1434 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1053]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1054]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp259
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC124	;,
	jsr	__fs
;----- asm -----
; 1438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1055]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1440 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1056]goto fightstart;
;--- end asm ---
	leas	2,s	;,,
	lbra	L214	;
L226:
	ldb	#2	;,
	stb	_dr	;, dr
	lbra	L189	;
L234:
;----- asm -----
; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[946]printmessage();
;--- end asm ---
	ldx	#LC117	;,
	jsr	_printMessage
;----- asm -----
; 1286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[947]ex = ex >>1;
;--- end asm ---
	ldd	_ex	; tmp246, ex
	tfr	b,a	;,
	clrb	;
	rora	;
	rora	;
	anda	#-128	;,
	lsr	_ex+2	; ex
	ror	_ex+3	; ex
	ldx	_ex+2	; ex, ex
	pshs	x	; ex
	ora	,s+	;,
	orb	,s+	;,
	std	_ex+2	; tmp248, ex
	lsr	_ex	; ex
	ror	_ex+1	; ex
;----- asm -----
; 1289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[949]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[950]if (ch==0)
;--- end asm ---
	ldx	_ch	; ch, ch
	lbeq	L241	;
;----- asm -----
; 1298 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[955]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
	lbra	L194	;
L227:
	ldb	#3	;,
	stb	_dr	;, dr
	lbra	L189	;
L240:
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp194
	jmp	[L157,x]	;, tmp194
L157:
	.word	L152
	.word	L153
	.word	L154
	.word	L155
	.word	L156
L228:
	ldb	#5	;,
	stb	_pa	;, pa
	lbra	L189	;
L216:
;----- asm -----
; 452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[353]goto monsterset;
;--- end asm ---
L101:
;----- asm -----
; 529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[412]ml = randmax(cz+1)*randmax(2+1) + 1;
;--- end asm ---
	ldb	_cz	; tmp99, cz
	incb	; tmp99
	jsr	_RandMax
	stb	12,s	;, D.3515
	ldb	#3	;,
	jsr	_RandMax
	lda	12,s	;umulqihi3	; D.3515
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp100
; ORG>	tfr	d,x	;, tmp100
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp100,
	incb	;
	stb	13,s	;, ml.21
	stb	_ml	;, ml
;----- asm -----
; 531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[413]ml = ml - randmax(ml);
;--- end asm ---
	jsr	_RandMax
	subb	13,s	; ml.23, ml.21
	negb	; ml.23
	stb	_ml	; ml.23, ml
;----- asm -----
; 542 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[423]mh = (signed long) randmax(ml*(unsigned int)m)+1;
;--- end asm ---
	lda	_m	;umulqihi3	; m
	mul
		;movlsbqihi: D->B
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3524, D.3524
	addd	#1; addhi3,3	; D.3524,
	std	_mh	; D.3524, mh
;----- asm -----
; 545 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[425]monsterforced:
;--- end asm ---
	lbra	L103	;
L156:
;----- asm -----
; 1120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[831]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1122 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[832]printmessage();
;--- end asm ---
	ldx	#LC110	;,
	jsr	_printMessage
;----- asm -----
; 1124 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[833]ltmp = randmax(20) + lv + inventory[sword] + s[str]/2;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	2,s	;, D.3596
	ldb	_inventory	;, inventory
	addb	_lv	;, lv
	stb	10,s	;,
	ldb	_s	;, s
	lsrb	;
	stb	9,s	;,
	ldb	10,s	;,
	addb	9,s	;,
	stb	10,s	;,
	ldb	2,s	;, D.3596
	addb	10,s	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, ltmp.51
	std	_ltmp	; ltmp.51, ltmp
;----- asm -----
; 1126 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[834]if (sf[strength]>0) ltmp = ltmp +4;
;--- end asm ---
	tst	_sf	; sf
	beq	L183	;
	leax	4,x	;,, ltmp.51
	stx	_ltmp	;, ltmp
L183:
;----- asm -----
; 1130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[837]if (ltmp <10)
;--- end asm ---
	cmpx	#9	;cmphi:	;,
	lbgt	L184	;
;----- asm -----
; 1133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[839]printmessage();
;--- end asm ---
	ldx	#LC111	;,
	jsr	_printMessage
L185:
;----- asm -----
; 1204 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[888]label3300:
;--- end asm ---
	lbra	L212	;
L155:
;----- asm -----
; 1100 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[815]tmp2 = castspell(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_castSpell
	stb	2,s	;, tmp2.36
	stb	_tmp2	;, tmp2
;----- asm -----
; 1102 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[816]if (tmp2 == 1) goto label3300;
;--- end asm ---
	cmpb	#1	;cmpqi:	;,
	lbeq	L212	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L214	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L180	;
	cmpb	#4	;cmpqi:	;,
	lbeq	L161	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L181	;
	cmpb	#6	;cmpqi:	;,
	lbeq	L104	;
	ldb	#2	;,
	stb	11,s	;, D.3501
	ldb	2,s	;, tmp2.36
	cmpb	#7	;cmpqi:	;,
	lbeq	L109	;
;----- asm -----
; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[823]break;
;--- end asm ---
	lbra	L99	;
L152:
;----- asm -----
; 896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[674]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[675]printmessage();
;--- end asm ---
	ldx	#LC103	;,
	jsr	_printMessage
;----- asm -----
; 900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[676]goto fightstart;
;--- end asm ---
	lbra	L214	;
L153:
;----- asm -----
; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[685]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 913 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[686]printmessage();
;--- end asm ---
	ldx	#LC104	;,
	jsr	_printMessage
;----- asm -----
; 915 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[687]tmp = (signed int)randmax(18) + 1;
;--- end asm ---
	ldb	#18	;,
	jsr	_RandMax
	incb	; tmp.38
	stb	_tmp	; tmp.38, tmp
;----- asm -----
; 920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[691]if ((unsigned int)tmp >= s[dex])
;--- end asm ---
	cmpb	_s+4	;cmpqi:	; tmp.38, s
	lblo	L159	;
;----- asm -----
; 923 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[693]cantevade:
;--- end asm ---
L160:
;----- asm -----
; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[696]printmessage();
;--- end asm ---
	ldx	#LC105	;,
	jsr	_printMessage
;----- asm -----
; 929 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[697]pause(50);
;--- end asm ---
	ldb	#50	;,
	jsr	_pause
;----- asm -----
; 931 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[698]goto label3300;
;--- end asm ---
	lbra	L212	;
L218:
;----- asm -----
; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[482]unsigned int t = randmax(91);
;--- end asm ---
	ldb	#91	;,
	jsr	_RandMax
;----- asm -----
; 621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[483]if (t<30)
;--- end asm ---
	cmpb	#29	;cmpqi:	; t,
	lbhi	L114	;
;----- asm -----
; 624 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[485]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L229:
;----- asm -----
; 1343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[990]if (randmax(10)>6)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#6	;cmpqi:	; D.3660,
	lbls	L201	;
;----- asm -----
; 1346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[992]printmessage();
;--- end asm ---
	ldx	#LC119	;,
	jsr	_printMessage
;----- asm -----
; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[993]mb = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_mb	;, mb
;----- asm -----
; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[994]db = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_db	;, db
L202:
;----- asm -----
; 1362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1002]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1003]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1366 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1004]goto label3305;
;--- end asm ---
	lbra	L189	;
L224:
;----- asm -----
; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[601]tmp = (signed int) randmax(7);
;--- end asm ---
	ldb	#7	;,
	jsr	_RandMax
	stb	_tmp	; D.3551, tmp
;----- asm -----
; 786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[602]if (inventory[tmp] < ml)
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3551,
	tfr	d,x	;, tmp.32
	ldb	_inventory,x	;, inventory
	stb	2,s	;, temp.373
	ldb	_ml	;, ml
	stb	21,s	;, ml.374
	ldb	2,s	;, temp.373
	cmpb	21,s	;cmpqi:	;, ml.374
	lbhs	L137	;
;----- asm -----
; 791 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[606]unsigned int c = ml - inventory[tmp];
; 793 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[607]c = randmax(c) + 1;
;--- end asm ---
	ldb	21,s	;, ml.374
	subb	2,s	;, temp.373
	stb	2,s	;, temp.373
	jsr	_RandMax
	stb	2,s	;, D.3553
;----- asm -----
; 795 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[608]inventory[tmp] = inventory[tmp]+c;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp.376
	ldb	2,s	;, D.3553
	addb	_inventory,x	;, inventory
	incb	;
	stb	_inventory,x	;, inventory
;----- asm -----
; 800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[612]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp170
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC100	;,
	jsr	__fs
;----- asm -----
; 802 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[613]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[617]_fsi_s(, items[tmp], inventory[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	2,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp178
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	4,s	;,
	ldb	_inventory,x	;, inventory
	ldx	#LC101	;,
	jsr	__fsi_s
;----- asm -----
; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[618]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 811 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[619]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 813 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[620]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[621]return return_treasure;
;--- end asm ---
	ldb	19,s	;, tmp.28
	stb	15,s	;, D.3501
	leas	4,s	;,,
	lbra	L109	;
L230:
;----- asm -----
; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1016]if (randmax(10)>3)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#3	;cmpqi:	; D.3661,
	lbls	L204	;
;----- asm -----
; 1383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1018]mb = 5;
;--- end asm ---
	ldb	#5	;,
	stb	_mb	;, mb
;----- asm -----
; 1385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1019]db = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_db	;, db
	lbra	L203	;
L249:
;----- asm -----
; 828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[632]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 830 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[633]fightstart:
;--- end asm ---
	lbra	L214	;
L114:
	cmpb	#59	;cmpqi:	; t,
	lbhi	L116	;
;----- asm -----
; 629 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[489]tmp = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L222:
;----- asm -----
; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[527]tmp = 1;
; 680 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[531]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp116
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC93	;,
	jsr	__fs
;----- asm -----
; 682 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[532]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 684 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[533]printmessage();
;--- end asm ---
	ldx	#LC94	;,
	jsr	_printMessage
;----- asm -----
; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[534]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[535]ch = (signed long int) hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[536]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	13,s	;, D.3501
	leas	2,s	;,,
	lbra	L109	;
L223:
;----- asm -----
; 698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[543]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp122
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC95	;,
	jsr	__fs
;----- asm -----
; 700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[544]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 702 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[545]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[547]tmp = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_tmp	;, tmp
;----- asm -----
; 710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[551]for (int i=0; i<10; i++)
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	leas	2,s	;,,
	tst	_inventory	; inventory
	lbne	L242	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#1	; i,
	tst	_inventory+1	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	tst	_inventory+2	; inventory
	lbne	L243	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#3	; i,
	tst	_inventory+3	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#4	; i,
	tst	_inventory+4	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#5	; i,
	tst	_inventory+5	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#6	; i,
	tst	_inventory+6	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#7	; i,
	tst	_inventory+7	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	ldb	#8	; i,
	tst	_inventory+8	; inventory
	lbne	L122	;
;----- asm -----
; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[553]if (inventory[i] != 0)
;--- end asm ---
	tst	_inventory+9	; inventory
	lbne	L244	;
L131:
;----- asm -----
; 722 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[559]if (tmp==-1)
;--- end asm ---
	ldb	_tmp	;, tmp
	cmpb	#-1	;cmpqi:	;,
	lbeq	L245	;
;----- asm -----
; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[568]tmp=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_tmp	;, tmp
;----- asm -----
; 738 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[569]do
;--- end asm ---
L134:
;----- asm -----
; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[571]tmp = (signed int) randmax(10);
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	stb	_tmp	; D.3546, tmp
;----- asm -----
; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[572]if (inventory[tmp] == 0) tmp = -1;
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3546,
	tfr	d,x	;, tmp.31
	tst	_inventory,x	; inventory
	bne	L133	;
	ldb	#-1	;,
	stb	_tmp	;, tmp
L133:
;----- asm -----
; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[574]while (tmp == -1);
;--- end asm ---
	ldb	_tmp	; tmp.366, tmp
	cmpb	#-1	;cmpqi:	; tmp.366,
	beq	L134	;
;----- asm -----
; 754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[581]if (tmp <scroll_of_rescue)
;--- end asm ---
	cmpb	#6	;cmpqi:	; tmp.366,
	lble	L246	;
;----- asm -----
; 766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[589]_fs(,items[tmp]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; tmp.366, tmp.366
	aslb	;
	rola	;
	tfr	d,x	; tmp.366, tmp148
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC99	;,
	jsr	__fs
;----- asm -----
; 768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[590]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 770 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[591]inventory[tmp] -=1;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp.370
	dec	_inventory,x	; inventory
	leas	2,s	;,,
L136:
;----- asm -----
; 773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[593]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[594]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[595]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L232:
;----- asm -----
; 1243 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[916]printmessage();
;--- end asm ---
	ldx	#LC115	;,
	jsr	_printMessage
;----- asm -----
; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[917]goto fightstart;
;--- end asm ---
	lbra	L214	;
L233:
;----- asm -----
; 1268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[933]return return_player_dead;
;--- end asm ---
	ldb	#2	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L217:
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#19	;cmpqi:	; D.3531,
	lbls	L209	;
	lbra	L112	;
L201:
;----- asm -----
; 1355 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[998]printmessage();
;--- end asm ---
	ldx	#LC120	;,
	jsr	_printMessage
;----- asm -----
; 1357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[999]mb = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_mb	;, mb
;----- asm -----
; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1000]db = 2;
;--- end asm ---
	stb	_db	;, db
	lbra	L202	;
L184:
;----- asm -----
; 1142 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[847]ltmp = (signed long int) randmax(8);
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3608, D.3608
	std	_ltmp	; D.3608, ltmp
;----- asm -----
; 1144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[848]ltmp += (signed long int) randmax(lv*2) + inventory[sword] + 1;
;--- end asm ---
	ldb	_lv	; tmp218, lv
	aslb	; tmp218
	jsr	_RandMax
	stb	17,s	;, D.3611
	ldu	_ltmp	;, ltmp
	leax	1,u	; tmp219,,
	ldb	_inventory	;, inventory
	abx
	ldb	17,s	;, D.3611
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leax	d,x	; ltmp.55,, tmp222
	stx	_ltmp	; ltmp.55, ltmp
;----- asm -----
; 1146 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[849]if (sf[strength]>0) ltmp = ltmp +5;
;--- end asm ---
	tst	_sf	; sf
	beq	L186	;
	leax	5,x	;,, ltmp.55
	stx	_ltmp	;, ltmp
L186:
;----- asm -----
; 1149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[851]_fi_s(, (unsigned int) ltmp);
;--- end asm ---
	ldb	_ltmp+1	;, ltmp
	ldx	#LC112	;,
	jsr	__fi_s
;----- asm -----
; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[852]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[856]mh = mh - (unsigned int)ltmp;
;--- end asm ---
	ldb	_ltmp+1	;, ltmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, ltmp
	ldx	_mh	; mh, mh
	tfr	x,d	; mh,
	pshs	u	;subhi: R:d -= R:u	; ltmp,
	subd	,s++	;
	std	_mh	; mh.57, mh
;----- asm -----
; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[857]if (mh <0)
;--- end asm ---
	cmpd	#0	; mh.57
	lbge	L185	;
;----- asm -----
; 1161 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[859]label3220:
;--- end asm ---
L180:
;----- asm -----
; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[863]printmessage();
;--- end asm ---
	ldx	#LC113	;,
	jsr	_printMessage
;----- asm -----
; 1168 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[864]label3223:
;--- end asm ---
L181:
;----- asm -----
; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[868]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1175 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[869]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[870]ltmp = ml*(unsigned int)(m+1)*10;
;--- end asm ---
	ldb	_ml	;, ml
	lda	#10	;umulqihi3	;
	mul
	std	7,s	;,
	ldb	_m	;, m
	incb	;
	stb	,s	;,
	ldb	8,s	;movlsbqihi: msb:7,s -> R:b	;,
	lda	,s	;umulqihi3	;
	mul
	std	,s	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, ltmp.58
	std	_ltmp	; ltmp.58, ltmp
;----- asm -----
; 1179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[871]ex = ex + (unsigned long int) ltmp;
;--- end asm ---
	std	5,s	; tmp1,
	ldd	#0	;,
	std	3,s	;,
	ldd	_ex+2	;, ex
	addd	5,s	;,
	std	_ex+2	;, ex
	ldd	_ex	;, ex
	adcb	4,s	;
	adca	3,s	;
	std	_ex	;, ex
;----- asm -----
; 1184 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[875]_fl_s(, (unsigned long int) ltmp);
;--- end asm ---
	pshs	u	; ltmp.58
	ldx	#LC114	;,
	jsr	__fl_s
;----- asm -----
; 1186 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[876]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[877]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[878]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[882]tmp = (signed int) randmax(100);
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	4,s	;, D.3630
	stb	_tmp	;, tmp
;----- asm -----
; 1197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[883]if (tmp>50)
;--- end asm ---
	leas	2,s	;,,
	ldb	#4	;,
	stb	11,s	;, D.3501
	ldb	2,s	;, D.3630
	cmpb	#50	;cmpqi:	;,
	lbgt	L109	;
;----- asm -----
; 1200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[885]return  return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L219:
;----- asm -----
; 647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[504]if ( randmax(100) > 4*s[chr] )
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	14,s	;, D.3535
	ldb	_s+5	; tmp111, s
	aslb	; tmp111
	aslb	; tmp111
	cmpb	14,s	;cmpqi:(R)	; tmp111, D.3535
	lbhs	L115	;
;----- asm -----
; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[509]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L159:
;----- asm -----
; 938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[704]doevade:
;--- end asm ---
L161:
;----- asm -----
; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[705]tmp = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_tmp	; D.3573, tmp
;----- asm -----
; 944 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[708]switch (tmp)
;--- end asm ---
	cmpb	#1	;cmpqi:	; D.3573,
	lbeq	L164	;
	lble	L247	;
	cmpb	#2	;cmpqi:	; D.3573,
	lbeq	L165	;
	ldx	#_screen	; prephitmp.338,
	cmpb	#3	;cmpqi:	; D.3573,
	lbeq	L168	;
L162:
	ldx	#_screen	; prephitmp.338,
L175:
;----- asm -----
; 1032 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[769]if (!can_go_north)
;--- end asm ---
	ldb	11,x	;,
	stb	22,s	;, temp.397
	ldb	#3	; tmp206,
	andb	22,s	; tmp206, temp.397
	cmpb	#3	;cmpqi:	; tmp206,
	lbeq	L176	;
;----- asm -----
; 1035 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[771]fillmap=go_north;
;--- end asm ---
	ldb	#1	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[772]printmessage();
;--- end asm ---
	ldx	#LC106	;,
	jsr	_printMessage
;----- asm -----
; 1039 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[773]cy -=1;
;--- end asm ---
	dec	_cy	; cy
;----- asm -----
; 1041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[774]goto evadeout;
;--- end asm ---
L172:
;----- asm -----
; 966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[723]monsteronstack((signed int)m, ml, mh);
;--- end asm ---
	ldb	_ml	;, ml
	stb	,-s	;,
	ldx	_mh	;, mh
	ldb	_m	;, m
	jsr	_monsterOnStack
;----- asm -----
; 969 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[725]return return_new_turn;
;--- end asm ---
	ldb	#1	;,
	stb	12,s	;, D.3501
	leas	1,s	;,,
	lbra	L109	;
L220:
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+5	;cmpqi:	; D.3540, s
	lbls	L118	;
;----- asm -----
; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[515]tmp = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L221:
	ldb	#30	;,
	jsr	_RandMax
	cmpb	_s+5	;cmpqi:	; D.3541, s
	lbhs	L115	;
;----- asm -----
; 667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[521]tmp = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L116:
;----- asm -----
; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[493]tmp = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp	;, tmp
	lbra	L115	;
L246:
;----- asm -----
; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[583]_fs(,items[tmp]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; tmp.366, tmp.366
	aslb	;
	rola	;
	tfr	d,x	; tmp.366, tmp140
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC98	;,
	jsr	__fs
;----- asm -----
; 759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[584]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[585]inventory[tmp]=0;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	clr	_inventory,x	; inventory
	leas	2,s	;,,
	lbra	L136	;
L247:
	tstb	; D.3573
	lbne	L162	;
;----- asm -----
; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[714]if (!can_go_north)
;--- end asm ---
	ldx	#_screen	; prephitmp.338,
	ldb	_screen+11	; tmp199,
	andb	#3	; tmp199,
	cmpb	#3	;cmpqi:	; tmp199,
	lbeq	L171	;
;----- asm -----
; 955 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[716]fillmap=go_north;
;--- end asm ---
	ldb	#1	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 957 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[717]printmessage();
;--- end asm ---
	ldx	#LC106	;,
	jsr	_printMessage
;----- asm -----
; 959 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[718]cy -=1;
;--- end asm ---
	dec	_cy	; cy
;----- asm -----
; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[719]evadeout:
;--- end asm ---
	lbra	L172	;
L204:
;----- asm -----
; 1390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1023]printmessage();
;--- end asm ---
	ldx	#LC121	;,
	jsr	_printMessage
;----- asm -----
; 1393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1025]specialaction = special_dragonbreath;
;--- end asm ---
	ldb	#1	;,
	stb	_specialAction	;, specialAction
;----- asm -----
; 1396 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1027]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1028]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 1401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1030]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1031]ltmp = randmax(20)*ml+1;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	lda	_ml	;umulqihi3	; ml
	mul
		;movlsbqihi: D->B
	incb	; tmp252
	clra		;zero_extendqihi: R:b -> R:d	; tmp252, tmp253
	std	_ltmp	; tmp253, ltmp
;----- asm -----
; 1412 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1039]if (randmax(20) <s[con])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+3	;cmpqi:	; D.3666, s
	lblo	L248	;
L205:
;----- asm -----
; 1420 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1044]_fl_s(, (unsigned long int) ltmp);
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC123	;,
	jsr	__fl_s
;----- asm -----
; 1422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1045]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1046]goto label3320;
;--- end asm ---
	leas	2,s	;,,
	lbra	L192	;
L236:
;----- asm -----
; 506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[395]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 508 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[396]printmessage();
;--- end asm ---
	ldx	#LC90	;,
	jsr	_printMessage
;----- asm -----
; 510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[397]printmessage();
;--- end asm ---
	ldx	#LC91	;,
	jsr	_printMessage
;----- asm -----
; 513 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[399]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3512,
	lbeq	L108	;
;----- asm -----
; 517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[402]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L174:
;----- asm -----
; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[752]case 3:
;--- end asm ---
L168:
;----- asm -----
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[756]if (!can_go_east)
;--- end asm ---
	ldb	13,x	; tmp205,
	andb	#12	; tmp205,
	cmpb	#12	;cmpqi:	; tmp205,
	lbeq	L175	;
;----- asm -----
; 1017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[758]fillmap=go_east;
;--- end asm ---
	ldb	#3	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[759]printmessage();
;--- end asm ---
	ldx	#LC109	;,
	jsr	_printMessage
;----- asm -----
; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[760]cx +=1;
;--- end asm ---
	inc	_cx	; cx
;----- asm -----
; 1023 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[761]goto evadeout;
;--- end asm ---
	lbra	L172	;
L244:
	ldb	#9	; i,
L122:
;----- asm -----
; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[555]tmp = i;
;--- end asm ---
	stb	_tmp	; i, tmp
;----- asm -----
; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[556]break;
;--- end asm ---
	lbra	L131	;
L241:
;----- asm -----
; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[953]return return_player_dead;
;--- end asm ---
	ldb	#2	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L165:
	ldx	#_screen	; prephitmp.338,
L169:
;----- asm -----
; 996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[744]if (!can_go_west)
;--- end asm ---
	ldb	11,x	; tmp203,
	andb	#12	; tmp203,
	cmpb	#12	;cmpqi:	; tmp203,
	lbeq	L174	;
;----- asm -----
; 999 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[746]fillmap=go_west;
;--- end asm ---
	ldb	#4	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1001 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[747]printmessage();
;--- end asm ---
	ldx	#LC108	;,
	jsr	_printMessage
;----- asm -----
; 1003 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[748]cx -=1;
;--- end asm ---
	dec	_cx	; cx
;----- asm -----
; 1005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[749]goto evadeout;
;--- end asm ---
	lbra	L172	;
L164:
	ldx	#_screen	; prephitmp.338,
L170:
;----- asm -----
; 978 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[732]if (!can_go_south)
;--- end asm ---
	ldb	19,x	; tmp201,
	andb	#3	; tmp201,
	cmpb	#3	;cmpqi:	; tmp201,
	lbeq	L173	;
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[734]fillmap=go_south;
;--- end asm ---
	ldb	#2	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 983 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[735]printmessage();
;--- end asm ---
	ldx	#LC107	;,
	jsr	_printMessage
;----- asm -----
; 985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[736]cy +=1;
;--- end asm ---
	inc	_cy	; cy
;----- asm -----
; 987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[737]goto evadeout;
;--- end asm ---
	lbra	L172	;
L176:
;----- asm -----
; 1046 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[778]if (!can_go_south)
;--- end asm ---
	ldb	19,x	; tmp208,
	andb	#3	; tmp208,
	cmpb	#3	;cmpqi:	; tmp208,
	lbeq	L177	;
;----- asm -----
; 1049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[780]fillmap=go_south;
;--- end asm ---
	ldb	#2	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[781]printmessage();
;--- end asm ---
	ldx	#LC107	;,
	jsr	_printMessage
;----- asm -----
; 1053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[782]cy +=1;
;--- end asm ---
	inc	_cy	; cy
;----- asm -----
; 1055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[783]goto evadeout;
;--- end asm ---
	lbra	L172	;
L245:
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[561]printmessage();
;--- end asm ---
	ldx	#LC96	;,
	jsr	_printMessage
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[562]printmessage();
;--- end asm ---
	ldx	#LC97	;,
	jsr	_printMessage
;----- asm -----
; 729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[563]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 731 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[564]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	11,s	;, D.3501
	lbra	L109	;
L248:
;----- asm -----
; 1415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1041]ltmp = (ltmp>>1)+1;
;--- end asm ---
	ldd	_ltmp	; tmp255, ltmp
	asra	;
	rorb	;
	addd	#1; addhi3,3	; tmp255,
	std	_ltmp	; tmp255, ltmp
;----- asm -----
; 1417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1042]printmessage();
;--- end asm ---
	ldx	#LC122	;,
	jsr	_printMessage
	lbra	L205	;
L173:
;----- asm -----
; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[740]case 2:
;--- end asm ---
	lbra	L169	;
L171:
;----- asm -----
; 973 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[728]case 1:
;--- end asm ---
	lbra	L170	;
L177:
;----- asm -----
; 1060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[787]if (!can_go_west)
;--- end asm ---
	ldb	#12	;,
	andb	22,s	;, temp.397
	cmpb	#12	;cmpqi:	;,
	beq	L178	;
;----- asm -----
; 1063 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[789]fillmap=go_west;
;--- end asm ---
	ldb	#4	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1065 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[790]printmessage();
;--- end asm ---
	ldx	#LC108	;,
	jsr	_printMessage
;----- asm -----
; 1067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[791]cx -=1;
;--- end asm ---
	dec	_cx	; cx
;----- asm -----
; 1069 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[792]goto evadeout;
;--- end asm ---
	lbra	L172	;
L242:
	clrb	; i
	lbra	L122	;
L243:
	ldb	15,s	; i, tmp.28
	lbra	L122	;
L178:
;----- asm -----
; 1072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[794]goto cantevade;
;--- end asm ---
	lbra	L160	;
L237:
;----- asm -----
; 1088 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[806]return return_new_turn;
;--- end asm ---
	ldb	#1	;,
	stb	11,s	;, D.3501
	lbra	L109	;
LC125:
	.ascii	"NO\0"
	.globl	_handleMovement
_handleMovement:
;----- asm -----
; 1450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1065]if ((lastx == 0) && (lasty == 0))
;--- end asm ---
	ldb	_lastX	; lastX.75, lastX
	bne	L251	;
	tst	_lastY	; lastY
	lbeq	L263	;
L251:
;----- asm -----
; 1460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1071]if ((vec_joy_1_x == 0) && (vec_joy_1_y == 0))
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L253	;
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	bne	L253	;
;----- asm -----
; 1463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1073]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1076]if (lastx>0)
;--- end asm ---
	tstb	; lastX.75
	lble	L254	;
;----- asm -----
; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1078]if ((can_go_east) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+13	; tmp33,
	andb	#12	; tmp33,
	cmpb	#12	;cmpqi:	; tmp33,
	bne	L255	;
	tst	_sf+7	; sf
	lbeq	L264	;
L255:
;----- asm -----
; 1478 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1084]cx +=1;fillmap=go_east;printmessage();
;--- end asm ---
	inc	_cx	; cx
	ldb	#3	;,
	stb	_fillMap	;, fillMap
	ldx	#LC109	;,
	jsr	_printMessage
L256:
;----- asm -----
; 1524 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1120]lastx = 0;
;--- end asm ---
	clr	_lastX	; lastX
;----- asm -----
; 1526 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1121]lasty = 0;
;--- end asm ---
	clr	_lastY	; lastY
L253:
;----- asm -----
; 1532 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1126]return fillmap;
;--- end asm ---
	ldb	_fillMap	; D.3676, fillMap
	rts
L263:
;----- asm -----
; 1453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1067]lastx = vec_joy_1_x;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	_lastX	;, lastX
;----- asm -----
; 1455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1068]lasty = vec_joy_1_y;
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	_lastY	;, lastY
;----- asm -----
; 1457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1069]return 0;
;--- end asm ---
	clrb	; D.3676
	rts
L254:
	tstb	; lastX.75
	bne	L265	;
	ldb	_lastY	; lastY.459, lastY
	lble	L259	;
;----- asm -----
; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1100]if ((can_go_north) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+11	; tmp41,
	andb	#3	; tmp41,
	cmpb	#3	;cmpqi:	; tmp41,
	bne	L260	;
	tst	_sf+7	; sf
	lbeq	L266	;
L260:
;----- asm -----
; 1506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1106]cy -=1;fillmap=go_north;printmessage();
;--- end asm ---
	dec	_cy	; cy
	ldb	#1	;,
	stb	_fillMap	;, fillMap
	ldx	#LC106	;,
	jsr	_printMessage
	lbra	L256	;
L264:
;----- asm -----
; 1473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1080]printmessage();
;--- end asm ---
	ldx	#LC125	;,
	jsr	_printMessage
	lbra	L256	;
L265:
;----- asm -----
; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1089]if ((can_go_west) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+11	; tmp37,
	andb	#12	; tmp37,
	cmpb	#12	;cmpqi:	; tmp37,
	bne	L258	;
	tst	_sf+7	; sf
	lbeq	L267	;
L258:
;----- asm -----
; 1492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1095]cx -=1;fillmap=go_west;printmessage();
;--- end asm ---
	dec	_cx	; cx
	ldb	#4	;,
	stb	_fillMap	;, fillMap
	ldx	#LC108	;,
	jsr	_printMessage
	lbra	L256	;
L259:
	tstb	; lastY.459
	lbeq	L256	;
;----- asm -----
; 1512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1111]if ((can_go_south) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+19	; tmp45,
	andb	#3	; tmp45,
	cmpb	#3	;cmpqi:	; tmp45,
	bne	L261	;
	tst	_sf+7	; sf
	beq	L268	;
L261:
;----- asm -----
; 1520 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1117]cy +=1;fillmap=go_south; printmessage();
;--- end asm ---
	inc	_cy	; cy
	ldb	#2	;,
	stb	_fillMap	;, fillMap
	ldx	#LC107	;,
	jsr	_printMessage
	lbra	L256	;
L266:
;----- asm -----
; 1501 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1102]printmessage();
;--- end asm ---
	ldx	#LC125	;,
	jsr	_printMessage
	lbra	L256	;
L267:
;----- asm -----
; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1091]printmessage();
;--- end asm ---
	ldx	#LC125	;,
	jsr	_printMessage
	lbra	L256	;
L268:
;----- asm -----
; 1515 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1113]printmessage();
;--- end asm ---
	ldx	#LC125	;,
	jsr	_printMessage
	lbra	L256	;
LC126:
	.ascii	"YOU SEE SOME % <4> TO PICK UP\0"
LC127:
	.ascii	"YOU DETECT TRAPS!\0"
LC128:
	.ascii	"YOU LEAVE IT\0"
LC129:
	.ascii	"SNARF IT\0"
LC130:
	.ascii	"IT'S TRAPPED!\0"
LC131:
	.ascii	"YOU SUFFER % POINTS DAMAGE\0"
LC132:
	.ascii	"IT'S WORTH % GOLD\0"
LC133:
	.ascii	"YOU HAVE FOUND A TREASURE CHEST!!\0"
LC134:
	.ascii	"<4> TO OPEN IT: \0"
LC135:
	.ascii	"IGNORE IT\0"
LC136:
	.ascii	"OPEN IT\0"
LC137:
	.ascii	"CHEST EXPLODES!!\0"
LC138:
	.ascii	"INSIDE, THERE IS ONLY COBWEBS...\0"
LC139:
	.ascii	"YOU SEE A % +%\0"
LC140:
	.ascii	"<4> TO PICK IT UP:\0"
LC141:
	.ascii	"LEAVE IT\0"
LC142:
	.ascii	"IT IS CURSED!!\0"
LC143:
	.ascii	"YOU SUFFER % DAMAGE POINTS\0"
LC144:
	.ascii	"IT'S YOURS!\0"
	.globl	_handleTreasure
_handleTreasure:
	pshs	y,u	;
	leas	-41,s	;,,
	stb	11,s	; fix, fix
;----- asm -----
; 1539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1132]unsigned int tno;
; 1541 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1133]unsigned int ilv;
; 1543 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1134]unsigned int t,c;
; 1545 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1135]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1547 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1136]if (!fix)
;--- end asm ---
	tstb	; fix
	lbeq	L316	;
L270:
;----- asm -----
; 1555 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1142]if (!fix) return return_special;
;--- end asm ---
	ldb	#5	; D.3712,
	tst	11,s	; fix
	bne	L317	;
L273:
	leas	41,s	;,,
	puls	y,u,pc	;
L317:
;----- asm -----
; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1147]t = 0;
; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1148]if (randmax(100)<15) t = 1;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clr	18,s	; t
	cmpb	#14	;cmpqi:	; D.3713,
	lbls	L318	;
L274:
;----- asm -----
; 1565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1149]c = 0;
; 1570 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1153]if (randmax(100)>30)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#30	;cmpqi:	; D.3714,
	lbhi	L319	;
;----- asm -----
; 1679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1228]if (randmax(100)<50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#49	;cmpqi:	; D.3742,
	lbls	L291	;
	clr	19,s	; c
L292:
;----- asm -----
; 1796 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1309]itemfound:
;--- end asm ---
L315:
;----- asm -----
; 1798 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1310]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1803 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1314]tno = randmax(10);
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	stb	32,s	;, tno.499
;----- asm -----
; 1807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1317]ilv = randmax((l+1)>>2) + randmax((l+1)>>2) + 1;
;--- end asm ---
	ldb	_l	; tmp116, l
	incb	; tmp116
	lsrb	; tmp116
	lsrb	; tmp116
	jsr	_RandMax
	stb	17,s	;, ilv
	ldb	_l	; tmp118, l
	incb	; tmp118
	lsrb	; tmp118
	lsrb	; tmp118
	jsr	_RandMax
	addb	17,s	; D.3763, ilv
	incb	; D.3763
	stb	17,s	; D.3763, ilv
;----- asm -----
; 1810 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1319]_fsi_s(, items[tno], ilv);
;--- end asm ---
	ldb	32,s	;, tno.499
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp123
	ldx	_items,x	;, items
	stx	,--s	;,
	ldb	19,s	;, ilv
	ldx	#LC139	;,
	jsr	__fsi_s
;----- asm -----
; 1812 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1320]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1818 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1325]printmessage();
;--- end asm ---
	ldx	#LC140	;,
	jsr	_printMessage
;----- asm -----
; 1820 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1326]if (testforbutton(1) != 4)
; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[163]signed int p = 0;
; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[164]signed int t = 0;
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[166]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[167]do
;--- end asm ---
	clr	28,s	; p
	clr	26,s	; d
	leas	2,s	;,,
	lbra	L306	;
L320:
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	27,s	;, D.5054
	bitb	#8	;,
	beq	L299	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#4	;,
	stb	24,s	;, d
L299:
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp127,
	andb	27,s	; tmp127, D.5054
	beq	L300	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#3	;,
	stb	24,s	;, d
L300:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp128,
	andb	27,s	; tmp128, D.5054
	beq	L301	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#2	;,
	stb	24,s	;, d
L301:
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp129,
	andb	27,s	; tmp129, D.5054
	beq	L302	;
	ldb	#1	;,
	stb	26,s	;, p
	stb	24,s	;, d
L302:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	25,s	;, Vec_Joy_1_X.4
	beq	L303	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#5	;,
	stb	24,s	;, d
L303:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L304	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#5	;,
	stb	24,s	;, d
L304:
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	26,s	; p
	beq	L305	;
	tst	25,s	; Vec_Joy_1_X.4
	bne	L305	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L305	;
	tst	27,s	; D.5054
	beq	L298	;
L305:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[198]while (1);
;--- end asm ---
L306:
;----- asm -----
; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[170]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L320	;
L298:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[200]if (t == 0) return d;
;--- end asm ---
	tst	24,s	; d
	lbeq	L307	;
;----- asm -----
; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[201]return t;
;--- end asm ---
	ldb	24,s	;, d
	cmpb	#4	;cmpqi:	;,
	lbne	L307	;
;----- asm -----
; 1840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1340]if ((t) && (tno!=0))
;--- end asm ---
	tst	18,s	; t
	beq	L310	;
	tst	32,s	; tno.499
	lbne	L321	;
L310:
;----- asm -----
; 1878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1365]printmessage();
;--- end asm ---
	ldx	#LC144	;,
	jsr	_printMessage
;----- asm -----
; 1880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1366]inventory[tno]=inventory[tno]+1;
;--- end asm ---
	ldb	32,s	;, tno.499
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;,
	leax	_inventory,u	; tmp137,,
	inc	,x	; inventory
;----- asm -----
; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1367]if (tno<scroll_of_rescue)
;--- end asm ---
	ldb	32,s	;, tno.499
	cmpb	#6	;cmpqi:	;,
	bhi	L312	;
	ldb	17,s	;, ilv
	stb	,x	;, inventory
L312:
;----- asm -----
; 1885 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1369]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1372]if ((c==1) && (randmax(100)>50))
;--- end asm ---
	ldb	19,s	;, c
	cmpb	#1	;cmpqi:	;,
	lbne	L313	;
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3773,
	lbls	L313	;
;----- asm -----
; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1374]goto itemfound;
;--- end asm ---
	lbra	L315	;
L316:
;----- asm -----
; 1552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1140]fix = randmax(50) > 40;
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3711,
	lbls	L270	;
	ldb	#1	;,
	stb	11,s	;, fix
	lbra	L270	;
L319:
;----- asm -----
; 1580 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1162]tno = randmax(5);
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	stb	16,s	;, tno
;----- asm -----
; 1582 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1163]printtreasure=(signed int)tno;
;--- end asm ---
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 1584 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1164]_fs(, treasure[tno]);
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp76
	ldx	_treasure,x	;, treasure
	stx	,--s	;,
	ldx	#LC126	;,
	jsr	__fs
;----- asm -----
; 1586 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1165]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1592 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1170]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
;--- end asm ---
	leas	2,s	;,,
	tst	_sf+1	; sf
	beq	L276	;
	tst	18,s	; t
	lbne	L322	;
L276:
;----- asm -----
; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1172]if (testforbutton(1) != 4)
; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[163]signed int p = 0;
; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[164]signed int t = 0;
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[166]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[167]do
;--- end asm ---
	clr	22,s	; p
	clr	20,s	; d
	lbra	L285	;
L323:
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	23,s	;, D.5037
	bitb	#8	;,
	beq	L278	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#4	;,
	stb	20,s	;, d
L278:
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp81,
	andb	23,s	; tmp81, D.5037
	beq	L279	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#3	;,
	stb	20,s	;, d
L279:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp82,
	andb	23,s	; tmp82, D.5037
	beq	L280	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#2	;,
	stb	20,s	;, d
L280:
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp83,
	andb	23,s	; tmp83, D.5037
	beq	L281	;
	ldb	#1	;,
	stb	22,s	;, p
	stb	20,s	;, d
L281:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	21,s	;, Vec_Joy_1_X.4
	beq	L282	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#5	;,
	stb	20,s	;, d
L282:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L283	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#5	;,
	stb	20,s	;, d
L283:
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	22,s	; p
	beq	L284	;
	tst	21,s	; Vec_Joy_1_X.4
	bne	L284	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L284	;
	tst	23,s	; D.5037
	beq	L277	;
L284:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[198]while (1);
;--- end asm ---
L285:
;----- asm -----
; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[170]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L323	;
L277:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[200]if (t == 0) return d;
;--- end asm ---
	tst	20,s	; d
	lbeq	L286	;
;----- asm -----
; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[201]return t;
;--- end asm ---
	ldb	20,s	;, d
	cmpb	#4	;cmpqi:	;,
	lbne	L286	;
;----- asm -----
; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1182]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1183]printmessage();
;--- end asm ---
	ldx	#LC129	;,
	jsr	_printMessage
;----- asm -----
; 1614 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1184]if (t)
;--- end asm ---
	tst	18,s	; t
	lbeq	L288	;
;----- asm -----
; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1190]utmp = (unsigned int) randmax(l*3)+1;
;--- end asm ---
	ldb	_l	; tmp86, l
	aslb	; tmp86
	addb	_l	; tmp86, l
	jsr	_RandMax
	incb	; D.3724
	stb	_utmp	; D.3724, utmp
;----- asm -----
; 1623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1191]printmessage();
;--- end asm ---
	ldx	#LC130	;,
	jsr	_printMessage
;----- asm -----
; 1625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1192]_fi_s(, (unsigned int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	ldx	#LC131	;,
	jsr	__fi_s
;----- asm -----
; 1627 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1193]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1629 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1194]ch = ch - ((unsigned int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, utmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; utmp, ch.93
	subd	,s++	; ch.93
	std	_ch	; ch.93, ch
;----- asm -----
; 1631 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1195]if (ch<1)
;--- end asm ---
	cmpd	#0	; ch.93
	bgt	L288	;
;----- asm -----
; 1634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1197]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1636 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1198]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3712,
	lbra	L273	;
L318:
	ldb	#1	;,
	stb	18,s	;, t
	lbra	L274	;
L288:
;----- asm -----
; 1645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1206]lltmp = (signed long long int) ((unsigned long long int) randmax(200));
;--- end asm ---
	ldb	#-56	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3730,
	tfr	d,y	;, D.3730
	ldd	#0	;,
	std	_lltmp	;, lltmp
	sty	_lltmp+2	; D.3730, lltmp
;----- asm -----
; 1647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1207]lltmp = lltmp*l;
; 1649 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1208]lltmp = lltmp*tno;
; 1651 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1209]lltmp++;
;--- end asm ---
	ldb	16,s	;, tno
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, tno
	ldb	_l	;, l
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, l
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	stu	6,s	; l,
	std	,s	;,
	stx	2,s	; tno,
	leax	45,s	;,,
	jsr	___mulsi3
	ldd	#0	;,
	std	4,s	;,
	sty	6,s	; D.3730,
	ldx	45,s	;,
	stx	,s	;,
	ldu	47,s	;,
	stu	2,s	;,
	leax	41,s	;,,
	jsr	___mulsi3
	leas	4,s	;,,
	ldd	37,s	;,
	std	11,s	;,
	ldx	39,s	;,
	stx	13,s	;,
	ldd	13,s	;,
	addd	#1	;,
	std	18,s	;, lltmp.98
	ldd	11,s	;,
	adcb	#0	;
	adca	#0	;
	std	16,s	;, lltmp.98
	ldx	16,s	;, lltmp.98
	stx	_lltmp	;, lltmp
	ldu	18,s	;, lltmp.98
	stu	_lltmp+2	;, lltmp
;----- asm -----
; 1653 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1210]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	18,s	;, lltmp.98
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	17,s	; lltmp.98
	adca	16,s	; lltmp.98
	std	_gd	;, gd
;----- asm -----
; 1655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1211]_fll_s(, ((unsigned long long int) lltmp));
;--- end asm ---
	stx	,s	;,
	ldu	18,s	;, lltmp.98
	stu	2,s	;,
	ldx	#LC132	;,
	jsr	__fll_s
;----- asm -----
; 1657 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1212]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1659 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1213]if (randmax(50)<10)
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	leas	4,s	;,,
	cmpb	#9	;cmpqi:	; D.3741,
	lbhi	L289	;
;----- asm -----
; 1662 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1215]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1664 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1216]goto itemfound;
;--- end asm ---
	clr	19,s	; c
	lbra	L315	;
L307:
;----- asm -----
; 1824 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1329]printmessage();
;--- end asm ---
	ldx	#LC141	;,
	jsr	_printMessage
;----- asm -----
; 1826 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1330]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1331]if ((c==1) && (randmax(100)>50))
;--- end asm ---
	ldb	19,s	;, c
	cmpb	#1	;cmpqi:	;,
	bne	L309	;
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3767,
	bls	L309	;
;----- asm -----
; 1831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1333]goto itemfound;
;--- end asm ---
	lbra	L315	;
L286:
;----- asm -----
; 1599 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1175]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1601 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1176]printmessage();
;--- end asm ---
	ldx	#LC128	;,
	jsr	_printMessage
;----- asm -----
; 1603 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1177]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1605 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1178]return return_special;
;--- end asm ---
	ldb	#5	; D.3712,
	leas	41,s	;,,
	puls	y,u,pc	;
L309:
;----- asm -----
; 1834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1335]return return_special;
;--- end asm ---
	ldb	#5	; D.3712,
	lbra	L273	;
L313:
;----- asm -----
; 1895 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1376]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3712,
	lbra	L273	;
L291:
;----- asm -----
; 1686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1234]printtreasure=5;
;--- end asm ---
	ldb	#5	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 1688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1235]printmessage();
;--- end asm ---
	ldx	#LC133	;,
	jsr	_printMessage
;----- asm -----
; 1690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1236]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
;----- asm -----
; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1242]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
;--- end asm ---
	tst	_sf+1	; sf
	beq	L293	;
	tst	18,s	; t
	beq	L293	;
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3743
	bne	L293	;
	ldx	#LC127	;,
	jsr	_printMessage
L293:
;----- asm -----
; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1247]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3744,
	beq	L294	;
;----- asm -----
; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1250]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1251]printmessage();
;--- end asm ---
	ldx	#LC135	;,
	jsr	_printMessage
;----- asm -----
; 1711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1252]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1253]return return_special;
;--- end asm ---
	ldb	#5	; D.3712,
	lbra	L273	;
L289:
;----- asm -----
; 1669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1220]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1671 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1221]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3712,
	lbra	L273	;
L294:
;----- asm -----
; 1719 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1258]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1721 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1259]printmessage();
;--- end asm ---
	ldx	#LC136	;,
	jsr	_printMessage
;----- asm -----
; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1260]if (t)
;--- end asm ---
	tst	18,s	; t
	lbeq	L295	;
;----- asm -----
; 1729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1265]ltmp = ((signed long int)randmax(10))*((signed long int)cz)+1;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	lda	_cz	;umulqihi3	; cz
	mul
	addd	#1; addhi3,3	; tmp102,
	std	_ltmp	; tmp102, ltmp
;----- asm -----
; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1266]printmessage();
;--- end asm ---
	ldx	#LC137	;,
	jsr	_printMessage
;----- asm -----
; 1733 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1267]_fl_s(, (unsigned long) ltmp);
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC131	;,
	jsr	__fl_s
;----- asm -----
; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1268]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1269]ch = ch - ((signed long int) ltmp);
;--- end asm ---
	ldd	_ch	; ch, ch
	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.106, ltmp
	std	_ch	; ch.106, ch
;----- asm -----
; 1739 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1270]if (ch<1)
;--- end asm ---
	leas	2,s	;,,
	cmpd	#0	; ch.106
	lble	L324	;
L295:
;----- asm -----
; 1754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1282]if (randmax(10)==0)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3754
	lbeq	L325	;
;----- asm -----
; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1293]lltmp = (signed long long int) ((unsigned long long int) randmax(100));
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3755,
	tfr	d,y	;, D.3755
	ldd	#0	;,
	std	_lltmp	;, lltmp
	sty	_lltmp+2	; D.3755, lltmp
;----- asm -----
; 1771 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1294]lltmp = lltmp*l;
; 1773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1295]lltmp = lltmp*10;
; 1775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1296]lltmp++;
;--- end asm ---
	ldb	_l	;, l
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, l
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldd	#10	;,
	std	6,s	;,
	ldd	#0	;,
	std	,s	;,
	stx	2,s	; l,
	leax	45,s	;,,
	jsr	___mulsi3
	ldd	#0	;,
	std	4,s	;,
	sty	6,s	; D.3755,
	ldx	45,s	;,
	stx	,s	;,
	ldu	47,s	;,
	stu	2,s	;,
	leax	41,s	;,,
	jsr	___mulsi3
	leas	4,s	;,,
	ldd	37,s	;,
	std	7,s	;,
	ldx	39,s	;,
	stx	9,s	;,
	ldd	9,s	;,
	addd	#1	;,
	std	34,s	;, lltmp.493
	ldd	7,s	;,
	adcb	#0	;
	adca	#0	;
	std	32,s	;, lltmp.493
	ldx	32,s	;, lltmp.493
	stx	_lltmp	;, lltmp
	ldu	34,s	;, lltmp.493
	stu	_lltmp+2	;, lltmp
;----- asm -----
; 1777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1297]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	34,s	;, lltmp.493
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	33,s	; lltmp.493
	adca	32,s	; lltmp.493
	std	_gd	;, gd
;----- asm -----
; 1779 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1298]_fll_s(, ((unsigned long long int) lltmp));
;--- end asm ---
	stx	,s	;,
	ldu	34,s	;, lltmp.493
	stu	2,s	;,
	ldx	#LC132	;,
	jsr	__fll_s
;----- asm -----
; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1299]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1301]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1302]if (randmax(100)<50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	leas	4,s	;,,
	cmpb	#49	;cmpqi:	; D.3758,
	lbls	L326	;
;----- asm -----
; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1306]c = 1;
;--- end asm ---
	ldb	#1	;,
	stb	19,s	;, c
	lbra	L292	;
L322:
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3720
	lbne	L276	;
	ldx	#LC127	;,
	jsr	_printMessage
	lbra	L276	;
L321:
;----- asm -----
; 1847 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1346]printmessage();
;--- end asm ---
	ldx	#LC142	;,
	jsr	_printMessage
;----- asm -----
; 1849 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1347]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1348]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1853 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1349]utmp =  randmax(tno*5)+1;
;--- end asm ---
	ldb	32,s	; tmp131, tno.499
	aslb	; tmp131
	aslb	; tmp131
	addb	32,s	; tmp131, tno.499
	jsr	_RandMax
	incb	; utmp.110
	stb	_utmp	; utmp.110, utmp
;----- asm -----
; 1855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1350]_fi_s(, utmp);
;--- end asm ---
	ldx	#LC143	;,
	jsr	__fi_s
;----- asm -----
; 1857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1351]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1352]ch = ch - ((signed long int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, utmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; utmp, ch.507
	subd	,s++	; ch.507
	std	_ch	; ch.507, ch
;----- asm -----
; 1861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1353]if (ch<1)
;--- end asm ---
	cmpd	#0	; ch.507
	ble	L327	;
;----- asm -----
; 1869 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1358]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1359]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3712,
	lbra	L273	;
L326:
;----- asm -----
; 1789 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1304]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3712,
	lbra	L273	;
L325:
;----- asm -----
; 1757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1284]printmessage();
;--- end asm ---
	ldx	#LC138	;,
	jsr	_printMessage
;----- asm -----
; 1759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1285]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1286]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3712,
	lbra	L273	;
L327:
;----- asm -----
; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1355]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1866 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1356]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3712,
	lbra	L273	;
L324:
;----- asm -----
; 1742 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1272]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1744 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1273]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3712,
	lbra	L273	;
LC145:
	.ascii	"REENTER\0"
LC146:
	.ascii	"YOU FEEL HEAVY FOR A MOMENT\0"
LC147:
	.ascii	"YOU SEE A PIT\0"
LC148:
	.ascii	"YOU ARE HOVERING ABOVE A PIT\0"
LC149:
	.ascii	"DO YOU WANT TO DESCEND? <4> YES\0"
LC150:
	.ascii	"YES\0"
LC151:
	.ascii	"YOU FALL IN!!\0"
LC152:
	.ascii	"YOU SUFFER % HIT POINTS\0"
LC153:
	.ascii	"ZZAP!! YOU'VE BEEN TELEPORTED...\0"
LC154:
	.ascii	"YOU HAVE FOUND A CIRCULAR STAIRWAY\0"
LC155:
	.ascii	"YOU SEE LIGHT ABOVE\0"
LC156:
	.ascii	"DO YOU WANT TO <1> GO UP, <4> GO DOWN\0"
LC157:
	.ascii	"DO YOU WANT TO <1> GO UP\0"
LC158:
	.ascii	"DO YOU WANT TO <4> GO DOWN\0"
LC159:
	.ascii	"OR STAY ON THE SAME LEVEL?\0"
LC160:
	.ascii	"DOWN\0"
LC161:
	.ascii	"UP\0"
LC162:
	.ascii	"STAY\0"
LC163:
	.ascii	"YOU HAVE FOUND A HOLY ALTAR\0"
LC164:
	.ascii	"PRESS <4> TO WORSHIP\0"
LC165:
	.ascii	"PRESS <4> TO DONATE MONEY\0"
LC166:
	.byte	72,79,87,32,77,85,67,72
	.byte	32,71,79,76,68,63,-128,0
LC167:
	.ascii	"YOU DON'T HAVE THAT MUCH!\0"
LC168:
	.ascii	"YOU HAVE BEEN HEARD\0"
LC169:
	.ascii	"THANK YOU FOR YOUR DONATION\0"
LC170:
	.ascii	"DIRTY PAGAN TRASH!\0"
LC171:
	.ascii	"YOU HAVE FOUND A FOUNTAIN\0"
LC172:
	.ascii	"WITH RUNNING % WATER\0"
LC173:
	.ascii	"PRESS <4> TO DRINK\0"
LC174:
	.ascii	"YOU FEEL BETTER\0"
LC175:
	.ascii	"YOU HEAL % HIT POINTS\0"
LC176:
	.ascii	"IT'S POISON!!!\0"
LC177:
	.ascii	"YOU LOSE % HIT POINTS\0"
LC178:
	.ascii	"YOU FEEL REFRESHED!\0"
LC179:
	.ascii	"ACTUALLY YOU'RE DRUNK!!\0"
LC180:
	.ascii	"YOU HAVE BEEN DISPOSESSED!\0"
LC181:
	.ascii	"MAGIC POWER SURGES THROUGH YOUR BODY\0"
LC182:
	.ascii	"YOU NOW HAVE % SPELLS\0"
LC183:
	.ascii	"YOU CAN SEE A LARGE MISTY CUBE\0"
LC184:
	.ascii	"<4> TO WALK IN\0"
LC185:
	.ascii	"IGNORE\0"
LC186:
	.byte	65,32,78,85,77,66,69,82
	.byte	32,70,82,79,77,32,49,32
	.byte	84,79,32,53,48,-128,0
LC187:
	.ascii	"YOU FLOAT IN SPACE ...\0"
LC188:
	.ascii	"YOU SEE A JEWEL ENCRUSTED THRONE\0"
LC189:
	.ascii	"DO YOU WANT TO PRY<4> SOME JEWELS,\0"
LC190:
	.ascii	"SIT<3> DOWN, READ<2> THE RUNES\0"
LC191:
	.ascii	"OR IGNORE<1> IT?\0"
LC192:
	.ascii	"PRY\0"
LC193:
	.ascii	"NOTHING HAPPENS\0"
LC194:
	.ascii	"THEY POP INTO YOUR GREEDY HANDS!!\0"
LC195:
	.ascii	"THEY ARE WORT % GOLD\0"
LC196:
	.ascii	"SIT\0"
LC197:
	.ascii	"THE % KING RETURNS\0"
LC198:
	.ascii	"A LOUD GONG SOUNDS!\0"
LC199:
	.ascii	"READ\0"
LC200:
	.ascii	"YOU DON'T UNDERSTAND THEM...\0"
LC201:
	.ascii	"A MYSTERIOUS MAGIG GRIPS YOU..\0"
LC202:
	.ascii	"YOU % GOES DOWN BY 1\0"
LC203:
	.ascii	"YOU % GOES UP BY 1\0"
LC204:
	.ascii	"YOU SEE A SMALL BOX WITH FOUR COLORED\0"
LC205:
	.ascii	"LIGHTS. PUSH<4> BUTTONS OR IGNORE:\0"
LC206:
	.ascii	"PUSH (UP/DOWN/LEFT/RIGHT)\0"
LC207:
	.ascii	"<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE\0"
LC208:
	.ascii	"BUTTON TO STOP\0"
LC209:
	.ascii	"STOP\0"
LC210:
	.ascii	"AN ELECTRIC BOLT SHOOTS THROUGH YOU!!\0"
LC211:
	.ascii	"IT OPENS!!\0"
LC212:
	.ascii	"INSIDE YOU FIND JEWELS WORTH\0"
LC213:
	.ascii	"% IN GOLD!!\0"
	.globl	_handleSpecial
_handleSpecial:
	pshs	y,u	;
	leas	-65,s	;,,
;----- asm -----
; 1905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1385]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1406]if (above == 4) goto dostaircase;
;--- end asm ---
	ldy	#_screen+10	; prephitmp.524,
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	beq	L330	;
;----- asm -----
; 1930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1408]switch (map11_hi)
;--- end asm ---
	ldy	#_screen+10	; prephitmp.524,
	ldb	,y	;,* prephitmp.524
	cmpb	#9	;cmpqi:	;,
	bls	L453	;
L331:
;----- asm -----
; 3031 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2187]break;
;--- end asm ---
L431:
;----- asm -----
; 3035 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2190]return return_nothing;
;--- end asm ---
	clrb	; D.3825
L345:
	leas	65,s	;,,
	puls	y,u,pc	;
L453:
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp198
	jmp	[L341,x]	;, tmp198
L341:
	.word	L331
	.word	L332
	.word	L333
	.word	L334
	.word	L335
	.word	L336
	.word	L337
	.word	L338
	.word	L339
	.word	L340
L335:
;----- asm -----
; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1574]dostaircase:
;--- end asm ---
L330:
;----- asm -----
; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1581]printmessage();
;--- end asm ---
	ldx	#LC154	;,
	jsr	_printMessage
;----- asm -----
; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1585]if ((above == 4) && (cz==1))
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L454	;
L363:
;----- asm -----
; 2185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1587]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1588]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1595]if ((above==4) && (map11_hi==4))
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L455	;
	ldb	,y	;,* prephitmp.524
	cmpb	#4	;cmpqi:	;,
	lbeq	L456	;
L366:
;----- asm -----
; 2211 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1607]printmessage();
;--- end asm ---
	ldx	#LC159	;,
	jsr	_printMessage
;----- asm -----
; 2214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1609]tmp = testforbutton(2);
; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[163]signed int p = 0;
; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[164]signed int t = 0;
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[166]localtimer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[167]do
;--- end asm ---
	clr	41,s	; p
	clr	39,s	; d
	lbra	L375	;
L457:
;----- asm -----
; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	42,s	;, D.5113
	bitb	#8	;,
	beq	L368	;
	ldb	#1	;,
	stb	41,s	;, p
	ldb	#4	;,
	stb	39,s	;, d
L368:
;----- asm -----
; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp220,
	andb	42,s	; tmp220, D.5113
	beq	L369	;
	ldb	#1	;,
	stb	41,s	;, p
	ldb	#3	;,
	stb	39,s	;, d
L369:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp221,
	andb	42,s	; tmp221, D.5113
	beq	L370	;
	ldb	#1	;,
	stb	41,s	;, p
	ldb	#2	;,
	stb	39,s	;, d
L370:
;----- asm -----
; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp222,
	andb	42,s	; tmp222, D.5113
	beq	L371	;
	ldb	#1	;,
	stb	41,s	;, p
	stb	39,s	;, d
L371:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	40,s	;, Vec_Joy_1_X.4
	beq	L372	;
	ldb	#1	;,
	stb	41,s	;, p
	ldb	#5	;,
	stb	39,s	;, d
L372:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L373	;
	ldb	#1	;,
	stb	41,s	;, p
	ldb	#5	;,
	stb	39,s	;, d
L373:
;----- asm -----
; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	41,s	; p
	beq	L374	;
	tst	40,s	; Vec_Joy_1_X.4
	bne	L374	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L374	;
	tst	42,s	; D.5113
	beq	L367	;
L374:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[198]while (1);
;--- end asm ---
L375:
;----- asm -----
; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[170]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L457	;
L367:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[200]if (t == 0) return d;
;--- end asm ---
	tst	39,s	; d
	beq	L458	;
;----- asm -----
; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[201]return t;
;--- end asm ---
	ldb	39,s	;, d
L377:
	stb	_tmp	;, tmp
;----- asm -----
; 2219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1613]if ((tmp == 4) && (map11_hi==4))
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbeq	L459	;
	cmpb	#1	;cmpqi:	;,
	lbeq	L460	;
L379:
;----- asm -----
; 2266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1646]printmessage();
;--- end asm ---
	ldx	#LC162	;,
	jsr	_printMessage
;----- asm -----
; 2268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1647]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	leas	65,s	;,,
	puls	y,u,pc	;
L458:
	ldb	#2	;,
	stb	39,s	;, d
	bra	L377	;
L455:
	ldb	,y	;,* prephitmp.524
	cmpb	#4	;cmpqi:	;,
	lbeq	L461	;
;----- asm -----
; 2203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1601]printmessage();
;--- end asm ---
	ldx	#LC157	;,
	jsr	_printMessage
	lbra	L366	;
L454:
	ldb	_cz	;, cz
	cmpb	#1	;cmpqi:	;,
	lbne	L363	;
	ldx	#LC155	;,
	jsr	_printMessage
	lbra	L363	;
L338:
;----- asm -----
; 2564 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1856]printmessage();
;--- end asm ---
	ldx	#LC183	;,
	jsr	_printMessage
;----- asm -----
; 2566 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1857]printmessage();
;--- end asm ---
	ldx	#LC184	;,
	jsr	_printMessage
;----- asm -----
; 2568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1858]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp.159, tmp
;----- asm -----
; 2570 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1859]if (tmp != 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.159,
	lbeq	L407	;
;----- asm -----
; 2573 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1861]printmessage();
;--- end asm ---
	ldx	#LC185	;,
	jsr	_printMessage
;----- asm -----
; 2575 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1862]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L337:
;----- asm -----
; 2399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1739]printmessage();
;--- end asm ---
	ldx	#LC171	;,
	jsr	_printMessage
;----- asm -----
; 2404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1743]tmp2 = (signed int)randmax(5);
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	stb	_tmp2	; D.3895, tmp2
;----- asm -----
; 2406 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1744]_fs(, fountain[tmp2]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3895, tmp2.149
	aslb	;
	rola	;
	tfr	d,x	; tmp2.149, tmp245
	ldx	_fountain,x	;, fountain
	stx	,--s	;,
	ldx	#LC172	;,
	jsr	__fs
;----- asm -----
; 2408 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1745]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1749]printmessage();
;--- end asm ---
	ldx	#LC173	;,
	jsr	_printMessage
;----- asm -----
; 2415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1750]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.150, tmp
;----- asm -----
; 2417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1751]if (tmp != 4)
;--- end asm ---
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; tmp.150,
	lbeq	L393	;
;----- asm -----
; 2422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1755]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L336:
;----- asm -----
; 2281 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1658]printmessage();
;--- end asm ---
	ldx	#LC163	;,
	jsr	_printMessage
;----- asm -----
; 2283 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1659]printmessage();
;--- end asm ---
	ldx	#LC164	;,
	jsr	_printMessage
;----- asm -----
; 2285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1660]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.138, tmp
;----- asm -----
; 2287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1661]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.138,
	lbeq	L462	;
;----- asm -----
; 2354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1709]nomoneynoworship:
;--- end asm ---
L382:
;----- asm -----
; 2358 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1712]if (randmax(100)>70)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3888,
	lbhi	L463	;
;----- asm -----
; 2368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1720]dirtypagantrash:
;--- end asm ---
L385:
;----- asm -----
; 2370 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1721]printmessage();
;--- end asm ---
	ldx	#LC170	;,
	jsr	_printMessage
;----- asm -----
; 2372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1722]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1723]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1724]#ifndef no_monster
; 2378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1725]un = 0;
;--- end asm ---
	clr	_un	; un
;----- asm -----
; 2380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1726]while (un == 0)
;--- end asm ---
L392:
;----- asm -----
; 2383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1728]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3889, m
;----- asm -----
; 2385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1729]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
;--- end asm ---
	cmpb	#2	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#4	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#7	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#9	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#12	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#16	;cmpqi:	; D.3889,
	lbeq	L389	;
	cmpb	#17	;cmpqi:	; D.3889,
	lbeq	L389	;
	tst	_un	; un
	beq	L392	;
	lbra	L391	;
L332:
;----- asm -----
; 1937 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1413]if (cz != 1) goto doelevator;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#1	;cmpqi:	;,
	lbeq	L464	;
L342:
;----- asm -----
; 1982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1442]printmessage();
;--- end asm ---
	ldx	#LC146	;,
	jsr	_printMessage
;----- asm -----
; 1984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1443]elevator();
;--- end asm ---
	jsr	_elevator
;----- asm -----
; 1986 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1444]cz=cz-1;
;--- end asm ---
	dec	_cz	; cz
;----- asm -----
; 1988 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1445]fillmap =go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1447]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L340:
;----- asm -----
; 2874 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2075]printmessage();
;--- end asm ---
	ldx	#LC204	;,
	jsr	_printMessage
;----- asm -----
; 2876 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2076]printmessage();
;--- end asm ---
	ldx	#LC205	;,
	jsr	_printMessage
;----- asm -----
; 2879 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2078]specialaction = special_box;
;--- end asm ---
	ldb	#2	;,
	stb	_specialAction	;, specialAction
;----- asm -----
; 2881 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2079]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp413, tmp
;----- asm -----
; 2883 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2080]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 2887 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2083]if (tmp != 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp413,
	lbeq	L432	;
;----- asm -----
; 2890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2085]printmessage();
;--- end asm ---
	ldx	#LC185	;,
	jsr	_printMessage
;----- asm -----
; 2892 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2086]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L339:
;----- asm -----
; 2635 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1907]printmessage();
;--- end asm ---
	ldx	#LC188	;,
	jsr	_printMessage
;----- asm -----
; 2637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1908]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2639 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1909]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2641 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1910]printmessage();
;--- end asm ---
	ldx	#LC189	;,
	jsr	_printMessage
;----- asm -----
; 2643 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1911]printmessage();
;--- end asm ---
	ldx	#LC190	;,
	jsr	_printMessage
;----- asm -----
; 2645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1912]printmessage();
;--- end asm ---
	ldx	#LC191	;,
	jsr	_printMessage
;----- asm -----
; 2648 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1914]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp.163, tmp
;----- asm -----
; 2650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1915]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1916]if (tmp == 1)
;--- end asm ---
	cmpb	#1	;cmpqi:	; tmp.163,
	lbeq	L465	;
;----- asm -----
; 2662 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1923]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.163,
	lbeq	L466	;
;----- asm -----
; 2705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1953]if (tmp == 3)
;--- end asm ---
	cmpb	#3	;cmpqi:	; tmp.163,
	lbeq	L467	;
;----- asm -----
; 2796 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2017]if (tmp == 2)
;--- end asm ---
	cmpb	#2	;cmpqi:	; tmp.163,
	lbeq	L468	;
;----- asm -----
; 2862 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2065]break;
;--- end asm ---
	lbra	L431	;
L334:
;----- asm -----
; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1521]teleportnow:
;--- end asm ---
L351:
;----- asm -----
; 2099 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1523]printmessage();
;--- end asm ---
	ldx	#LC153	;,
	jsr	_printMessage
;----- asm -----
; 2101 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1524]teleportagain:
L352:
; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1532]lightchange = 0x5f;
; 2112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1533]initsoundno = sound_teleport;
;--- end asm ---
	ldb	#2	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1534]while (--lightchange >=1)
;--- end asm ---
	ldb	#94	;,
	stb	_lightChange	;, lightChange
L354:
	jsr	_displayRound
	dec	_lightChange	; lightChange
	ldb	_lightChange	; lightChange.128, lightChange
	bgt	L354	;
;----- asm -----
; 2120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1539]if (((cx+cy)&1) == 0) cz = cz -1;
;--- end asm ---
	ldb	_cy	; tmp207, cy
	addb	_cx	; tmp207, cx
	andb	#1	; tmp207,
	bne	L355	;
	dec	_cz	; cz
L355:
;----- asm -----
; 2122 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1540]if (((cx+cy)&2) == 2) cz = cz +2;
;--- end asm ---
	ldb	_cy	; tmp209, cy
	addb	_cx	; tmp209, cx
	andb	#2	; tmp209,
	beq	L356	;
	ldb	_cz	;, cz
	addb	#2	;,
	stb	_cz	;, cz
L356:
;----- asm -----
; 2131 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1548]cx = cx+cz*8+cy*13;
;--- end asm ---
	ldb	_cz	;, cz
	aslb	;
	aslb	;
	aslb	;
	stb	20,s	;, cx.132
	ldb	_cy	;, cy
	lda	#13	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp212
; ORG>	tfr	d,x	;, tmp212
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp212, tmp214
	addb	20,s	; tmp214, cx.132
	addb	_cx	; tmp214, cx
	stb	20,s	; tmp214, cx.132
	stb	_cx	; tmp214, cx
;----- asm -----
; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1549]if (cx >200) cx -= (unsigned char)200;
;--- end asm ---
	cmpb	#-56	;cmpqi:	; tmp214,
	bls	L357	;
	addb	#56	; tmp214,
	stb	_cx	; tmp214, cx
L357:
;----- asm -----
; 2136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1551]cy = cy+cy*6+cx*17;
;--- end asm ---
	lda	#17	;umulqihi3	;
	mul
	tfr	d,y	;, tmp215
	ldb	_cy	;, cy
	lda	#7	;umulqihi3	;
	mul
	tfr	d,x	;, tmp216
	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp215,
	stb	2,s	;, cy.134
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp216,
	stb	18,s	;,
	ldb	2,s	;, cy.134
	addb	18,s	;,
	stb	_cy	;, cy
;----- asm -----
; 2138 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1552]if (cy >200) cx -= (unsigned char)200;
;--- end asm ---
	cmpb	#-56	;cmpqi:	;,
	bls	L358	;
	ldb	_cx	;, cx
	addb	#56	;,
	stb	_cx	;, cx
L358:
;----- asm -----
; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1556]if (cz==0) cz = 1;
;--- end asm ---
	tst	_cz	; cz
	bne	L359	;
	ldb	#1	;,
	stb	_cz	;, cz
L359:
;----- asm -----
; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1557]if (cz>50) cz = 50;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	lbhi	L469	;
L360:
;----- asm -----
; 2150 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1561]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1564]initsoundno = sound_teleport;
;--- end asm ---
	ldb	#2	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1565]while (lightchange++<0x5f)
;--- end asm ---
	bra	L452	;
L470:
	jsr	_displayRound
L452:
	ldb	_lightChange	;, lightChange
	stb	2,s	;,
	incb	;
	stb	_lightChange	;, lightChange
	ldb	2,s	;,
	cmpb	#94	;cmpqi:	;,
	ble	L470	;
;----- asm -----
; 2159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1567]lightchange = 0;
;--- end asm ---
	clr	_lightChange	; lightChange
;----- asm -----
; 2163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1570]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L333:
;----- asm -----
; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1455]if (cz == 50) goto doelevator;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	lbeq	L342	;
;----- asm -----
; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1458]printmessage();
;--- end asm ---
	ldx	#LC147	;,
	jsr	_printMessage
;----- asm -----
; 2009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1460]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 2014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1464]if (sf[levitate]>0)
;--- end asm ---
	tst	_sf+4	; sf
	lbeq	L346	;
;----- asm -----
; 2017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1466]printmessage();
;--- end asm ---
	ldx	#LC148	;,
	jsr	_printMessage
;----- asm -----
; 2019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1467]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
L347:
;----- asm -----
; 2030 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1476]if (tmp == 1)
;--- end asm ---
	ldb	_tmp	;, tmp
	cmpb	#1	;cmpqi:	;,
	lbeq	L471	;
;----- asm -----
; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1495]printmessage();
;--- end asm ---
	ldx	#LC151	;,
	jsr	_printMessage
;----- asm -----
; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1496]l = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_l	;, l
;----- asm -----
; 2067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1502]tmp = (signed int)randmax(l*3)+1;
;--- end asm ---
	ldb	#9	;,
	jsr	_RandMax
	incb	; tmp.123
	stb	_tmp	; tmp.123, tmp
;----- asm -----
; 2069 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1503]_fi_s(, ((unsigned int) tmp));
;--- end asm ---
	ldx	#LC152	;,
	jsr	__fi_s
;----- asm -----
; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1504]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1505]ch=ch-tmp;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; tmp, ch.126
	subd	,s++	; ch.126
	std	_ch	; ch.126, ch
;----- asm -----
; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1506]if (ch<=0)
;--- end asm ---
	cmpd	#0	; ch.126
	lble	L472	;
;----- asm -----
; 2084 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1512]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1513]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L460:
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbne	L379	;
;----- asm -----
; 2240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1628]cz = cz - 1;
;--- end asm ---
	dec	_cz	; cz
;----- asm -----
; 2242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1629]printmessage();
;--- end asm ---
	ldx	#LC161	;,
	jsr	_printMessage
;----- asm -----
; 2244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1630]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1631]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2251 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1635]if (((signed int) cz)<=0)
;--- end asm ---
	tst	_cz	; cz
	lble	L473	;
;----- asm -----
; 2260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1641]return return_new_turn;
;--- end asm ---
	ldb	39,s	; D.3825, d
	lbra	L345	;
L459:
	ldb	,y	;,* prephitmp.524
	cmpb	#4	;cmpqi:	;,
	lbne	L379	;
;----- asm -----
; 2224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1617]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2226 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1618]printmessage();
;--- end asm ---
	ldx	#LC160	;,
	jsr	_printMessage
;----- asm -----
; 2228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1619]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1620]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1621]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L469:
	ldb	#50	;,
	stb	_cz	;, cz
	lbra	L360	;
L456:
;----- asm -----
; 2208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1605]printmessage();
;--- end asm ---
	ldx	#LC158	;,
	jsr	_printMessage
	lbra	L366	;
L463:
;----- asm -----
; 2361 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1714]return return_nothing;
;--- end asm ---
	clrb	; D.3825
	lbra	L345	;
L466:
;----- asm -----
; 2667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1927]printmessage();
;--- end asm ---
	ldx	#LC192	;,
	jsr	_printMessage
;----- asm -----
; 2672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1931]if (randmax(100) >40)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3939,
	lbls	L415	;
;----- asm -----
; 2675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1933]thronenothinghappens:
;--- end asm ---
L416:
;----- asm -----
; 2679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1936]printmessage();
;--- end asm ---
	ldx	#LC193	;,
	jsr	_printMessage
;----- asm -----
; 2681 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1937]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L389:
	ldb	#1	;,
	stb	_un	;, un
L391:
;----- asm -----
; 2388 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1731]#endif
; 2390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1732]return return_spanw_monster;
;--- end asm ---
	ldb	#30	; D.3825,
	lbra	L345	;
L464:
;----- asm -----
; 1943 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1418]above = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_above	;, above
;----- asm -----
; 1945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1419]goto dostaircase;
;--- end asm ---
	lbra	L330	;
L432:
;----- asm -----
; 2899 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2092]unsigned int cb = 0;
; 2901 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2093]boxagain:
; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2094]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2095]printmessage();
;--- end asm ---
	ldx	#LC206	;,
	jsr	_printMessage
;----- asm -----
; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2096]printmessage();
;--- end asm ---
	ldx	#LC207	;,
	jsr	_printMessage
;----- asm -----
; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2097]printmessage();
;--- end asm ---
	ldx	#LC208	;,
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2118]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.668, tmp
;----- asm -----
; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2119]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2120]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2121]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2122]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.668,
	lble	L433	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.668,
	sex		;extendqihi2: R:b -> R:d	; tmp.668, tmp345
	aslb	;
	rola	;
	tfr	d,x	; tmp345, tmp347
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2143]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp350, tmp
	addb	#-5	; tmp350,
	cmpb	_box	;cmpqi:(R)	; tmp350, box
	lbne	L434	;
;----- asm -----
; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2165]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2166]cb++;
; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2167]if (cb <4) goto boxagain;
; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2094]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2095]printmessage();
;--- end asm ---
	ldx	#LC206	;,
	jsr	_printMessage
;----- asm -----
; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2096]printmessage();
;--- end asm ---
	ldx	#LC207	;,
	jsr	_printMessage
;----- asm -----
; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2097]printmessage();
;--- end asm ---
	ldx	#LC208	;,
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2118]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.677, tmp
;----- asm -----
; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2119]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2120]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2121]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2122]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.677,
	lble	L433	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.677,
	sex		;extendqihi2: R:b -> R:d	; tmp.677, tmp352
	aslb	;
	rola	;
	tfr	d,x	; tmp352, tmp354
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2143]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp357, tmp
	addb	#-5	; tmp357,
	cmpb	_box+1	;cmpqi:(R)	; tmp357, box
	lbne	L434	;
;----- asm -----
; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2165]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2166]cb++;
; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2167]if (cb <4) goto boxagain;
; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2094]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2095]printmessage();
;--- end asm ---
	ldx	#LC206	;,
	jsr	_printMessage
;----- asm -----
; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2096]printmessage();
;--- end asm ---
	ldx	#LC207	;,
	jsr	_printMessage
;----- asm -----
; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2097]printmessage();
;--- end asm ---
	ldx	#LC208	;,
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2118]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.685, tmp
;----- asm -----
; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2119]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2120]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2121]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2122]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.685,
	lble	L433	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.685,
	sex		;extendqihi2: R:b -> R:d	; tmp.685, tmp359
	aslb	;
	rola	;
	tfr	d,x	; tmp359, tmp361
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2143]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp364, tmp
	addb	#-5	; tmp364,
	cmpb	_box+2	;cmpqi:(R)	; tmp364, box
	lbne	L434	;
;----- asm -----
; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2165]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2166]cb++;
; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2167]if (cb <4) goto boxagain;
L435:
; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2094]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2095]printmessage();
;--- end asm ---
	ldx	#LC206	;,
	jsr	_printMessage
;----- asm -----
; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2096]printmessage();
;--- end asm ---
	ldx	#LC207	;,
	jsr	_printMessage
;----- asm -----
; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2097]printmessage();
;--- end asm ---
	ldx	#LC208	;,
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2118]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.175, tmp
;----- asm -----
; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2119]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2120]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2121]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2122]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.175,
	lble	L433	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.175,
	sex		;extendqihi2: R:b -> R:d	; tmp.175, tmp366
	aslb	;
	rola	;
	tfr	d,x	; tmp366, tmp368
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2143]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp371, tmp
	addb	#-5	; tmp371,
	cmpb	_box+3	;cmpqi:(R)	; tmp371, box
	lbne	L434	;
;----- asm -----
; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2165]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2166]cb++;
; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2167]if (cb <4) goto boxagain;
; 3005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2171]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3007 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2172]printmessage();
;--- end asm ---
	ldx	#LC211	;,
	jsr	_printMessage
;----- asm -----
; 3009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2173]printmessage();
;--- end asm ---
	ldx	#LC212	;,
	jsr	_printMessage
;----- asm -----
; 3015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2178]initbox();
;--- end asm ---
	jsr	_initBox
;----- asm -----
; 3017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2179]lltmp =(signed long long int) (ull(randmax(20)+1) * ull(1000) * ull(cz)* ull(cz) );
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	36,s	;, D.3990
	ldb	_cz	;, cz
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, cz
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	stx	6,s	; cz,
	std	,s	;,
	stx	2,s	; cz,
	leax	69,s	;,,
	jsr	___mulsi3
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	ldy	69,s	;,
	sty	,s	;,
	ldu	71,s	;,
	stu	2,s	;,
	leax	65,s	;,,
	jsr	___mulsi3
	inc	44,s	; D.3990
	ldb	44,s	;, D.3990
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, tmp383
	ldd	#0	;,
	std	4,s	;,
	stx	6,s	; tmp383,
	ldx	65,s	;,
	stx	,s	;,
	ldy	67,s	;,
	sty	2,s	;,
	leax	61,s	;,,
	jsr	___mulsi3
	leas	4,s	;,,
	ldx	57,s	; tmp403,
	ldy	59,s	; tmp404,
	stx	_lltmp	; tmp403, lltmp
	sty	_lltmp+2	; tmp404, lltmp
;----- asm -----
; 3019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2180]_fll_s(, ull(lltmp));
;--- end asm ---
	stx	,s	; tmp403,
	sty	2,s	; tmp404,
	ldx	#LC213	;,
	jsr	__fll_s
;----- asm -----
; 3021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2181]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 3023 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2182]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	_lltmp+2	;, lltmp
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	_lltmp+1	; lltmp
	adca	_lltmp	; lltmp
	std	_gd	;, gd
;----- asm -----
; 3025 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2183]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	leas	4,s	;,,
	lbra	L345	;
L465:
;----- asm -----
; 2655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1918]printmessage();
;--- end asm ---
	ldx	#LC185	;,
	jsr	_printMessage
;----- asm -----
; 2657 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1919]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L346:
;----- asm -----
; 2026 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1473]if (randmax(20)<=s[dex]+inventory[elven_boots])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	19,s	;, D.3828
	ldb	_inventory+4	; tmp204, inventory
	addb	_s+4	; tmp204, s
	cmpb	19,s	;cmpqi:(R)	; tmp204, D.3828
	lblo	L347	;
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L347	;
L407:
;----- asm -----
; 2581 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1867]if (randmax(100)<20)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#19	;cmpqi:	; D.3931,
	lbhi	L408	;
;----- asm -----
; 2586 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1871]cz = randmax(50)+1;
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	incb	; D.3932
	stb	_cz	; D.3932, cz
L409:
;----- asm -----
; 2600 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1883]printmessage();
;--- end asm ---
	ldx	#LC187	;,
	jsr	_printMessage
;----- asm -----
; 2602 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1884]initsoundno = sound_cube;
;--- end asm ---
	ldb	#1	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2604 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1885]int soundplay = 4;
; 2606 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1886]while (1)
;--- end asm ---
	ldb	#4	;,
	stb	38,s	;, soundPlay
	bra	L412	;
L474:
	dec	38,s	; soundPlay
;----- asm -----
; 2615 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1892]initsoundno = sound_cube;
;--- end asm ---
	ldb	#1	;,
	stb	_initSoundNo	;, initSoundNo
L410:
;----- asm -----
; 2618 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1894]displayround();
;--- end asm ---
	jsr	_displayRound
L412:
;----- asm -----
; 2609 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1888]if (sfx_status_1 == 0)
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.162, sfx_status_1
	bne	L410	;
;----- asm -----
; 2612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1890]if (soundplay-- == 0) break;
;--- end asm ---
	tst	38,s	; soundPlay
	bne	L474	;
;----- asm -----
; 2622 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1897]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2624 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1898]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L461:
;----- asm -----
; 2198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1597]printmessage();
;--- end asm ---
	ldx	#LC156	;,
	jsr	_printMessage
	lbra	L366	;
L471:
;----- asm -----
; 2037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1482]printmessage();
;--- end asm ---
	ldx	#LC149	;,
	jsr	_printMessage
;----- asm -----
; 2039 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1483]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.120, tmp
;----- asm -----
; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1484]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.120,
	lbeq	L475	;
;----- asm -----
; 2051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1490]printmessage();
;--- end asm ---
	ldx	#LC125	;,
	jsr	_printMessage
;----- asm -----
; 2053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1491]return return_nothing;
;--- end asm ---
	clrb	; D.3825
	lbra	L345	;
L462:
;----- asm -----
; 2293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1666]printmessage();
;--- end asm ---
	ldx	#LC165	;,
	jsr	_printMessage
;----- asm -----
; 2295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1667]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.139, tmp
;----- asm -----
; 2297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1668]if (tmp != 4) goto nomoneynoworship;
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.139,
	lbne	L382	;
;----- asm -----
; 2299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1669]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1671]ultmp = inputnumber(, 0, 50000);
;--- end asm ---
	ldx	#-15536	;,
	stx	,--s	;,
	ldd	#0	;,
	std	,--s	;,
	ldx	#LC166	;,
	jsr	_inputNumber
	stx	_ultmp	; ultmp.140, ultmp
;----- asm -----
; 2307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1675]if (ull(ultmp)>gd)
;--- end asm ---
	stx	27,s	; ultmp.140, D.3871
	ldd	#0	;,
	std	25,s	;, D.3871
	ldy	_gd	;, gd
	sty	29,s	;, gd.142
	ldu	_gd+2	;, gd
	stu	31,s	;, gd.142
	leas	4,s	;,,
	ldd	21,s	;, D.3871
	ldy	25,s	;, gd.142
	pshs	y	;cmphi: R:y with R:d	;,
	cmpd	,s++	;cmphi:	;
	lbls	L476	;
L440:
;----- asm -----
; 2310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1677]printmessage();
;--- end asm ---
	ldx	#LC167	;,
	jsr	_printMessage
;----- asm -----
; 2312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1678]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1679]goto dirtypagantrash;
;--- end asm ---
	lbra	L385	;
L472:
;----- asm -----
; 2078 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1508]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2080 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1509]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3825,
	lbra	L345	;
L467:
;----- asm -----
; 2710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1957]printmessage();
;--- end asm ---
	ldx	#LC196	;,
	jsr	_printMessage
;----- asm -----
; 2712 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1958]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2714 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1959]if (randmax(100) >70)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3945,
	lbls	L418	;
;----- asm -----
; 2717 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1961]createaking:
;--- end asm ---
L419:
;----- asm -----
; 2720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1963]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3946, m
;----- asm -----
; 2723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1965]_fs(, mo[m]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3946, m.166
	aslb	;
	rola	;
	tfr	d,x	; m.166, tmp294
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC197	;,
	jsr	__fs
;----- asm -----
; 2725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1966]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1969]ml = randmax(5)*cz+5;
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	lda	_cz	;umulqihi3	; cz
	mul
		;movlsbqihi: D->B
	addb	#5	; ml.167,
	stb	_ml	; ml.167, ml
;----- asm -----
; 2732 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1971]mh = (signed long int) (ul(randmax(ml)+1)*ul(m));
;--- end asm ---
	jsr	_RandMax
	incb	;
	stb	4,s	;, D.3953
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	pshs	d	; m
	ldb	6,s	;, D.3953
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_mulhi3
	leas	2,s	;,,
	stx	_mh	;, mh
;----- asm -----
; 2734 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1972]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1973]return return_monster_is_set;
;--- end asm ---
	ldb	#31	; D.3825,
	leas	2,s	;,,
	lbra	L345	;
L408:
;----- asm -----
; 2595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1879]cz = (unsigned char) inputnumber(,(unsigned long int)1,(unsigned long int)50);
;--- end asm ---
	ldd	#50	;,
	std	,--s	;,
	ldd	#1	;,
	std	,--s	;,
	ldx	#LC186	;,
	jsr	_inputNumber
	tfr	x,d	;, D.3934
	stb	_cz	;movlsbqihi: R:d -> _cz	; cz, D.3934
	leas	4,s	;,,
	lbra	L409	;
L393:
;----- asm -----
; 2426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1758]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2431 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1762]if (randmax(100)<60)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#59	;cmpqi:	; D.3899,
	lbhi	L394	;
;----- asm -----
; 2436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1766]if ((signed int)randmax(20)< 20-tmp2*3)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	aslb	;
	addb	_tmp2	;, tmp2
	stb	34,s	;, D.3901
	neg	34,s	; D.3901
	ldb	34,s	;, D.3901
	addb	#19	;,
	stb	34,s	;, D.3901
	ldb	#20	;,
	jsr	_RandMax
	cmpb	34,s	;cmpqi:(R)	; D.3902, D.3901
	lbgt	L395	;
;----- asm -----
; 2441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1770]printmessage();
;--- end asm ---
	ldx	#LC174	;,
	jsr	_printMessage
;----- asm -----
; 2443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1771]tmp = (signed int)  randmax(cz*3)+1;
;--- end asm ---
	ldb	_cz	; tmp255, cz
	aslb	; tmp255
	addb	_cz	; tmp255, cz
	jsr	_RandMax
	incb	; tmp.151
	stb	_tmp	; tmp.151, tmp
;----- asm -----
; 2446 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1773]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldx	#LC175	;,
	jsr	__fi_s
;----- asm -----
; 2448 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1774]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1775]ch = ch + ((unsigned int)tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
; Applied peep: bug1 (gcc does one exg to many)
	addd	_ch; addhi3,3	;, ch
 tfr d,x
; ORG>	tfr	d,x	;, ch.152
; ORG>	exg	d,x	;, ch.152
; ORG>	addd	_ch; addhi3,3	;, ch
; ORG>	exg	d,x	;, ch.152
	stx	_ch	; ch.152, ch
;----- asm -----
; 2452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1776]if (ch > hp) ch = hp;
;--- end asm ---
	ldy	_hp	; hp.153, hp
	pshs	y	;cmphi: R:y with R:x	; hp.153, ch.152
	cmpx	,s++	;cmphi:	; ch.152
	ble	L396	;
	sty	_ch	; hp.153, ch
L396:
;----- asm -----
; 2455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1778]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L468:
;----- asm -----
; 2800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2020]printmessage();
;--- end asm ---
	ldx	#LC199	;,
	jsr	_printMessage
;----- asm -----
; 2805 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2024]if (randmax(100) >70) goto createaking;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3969,
	lbhi	L419	;
;----- asm -----
; 2810 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2028]if (randmax(20)>=s[int])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+1	;cmpqi:	; D.3970, s
	lblo	L427	;
;----- asm -----
; 2815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2032]printmessage();
;--- end asm ---
	ldx	#LC200	;,
	jsr	_printMessage
;----- asm -----
; 2817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2033]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L473:
;----- asm -----
; 2254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1637]cz=1;
;--- end asm ---
	ldb	39,s	;, d
	stb	_cz	;, cz
;----- asm -----
; 2256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1638]goto upperinn;
L343:
; 1952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1423]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1424]displayinn();
;--- end asm ---
	ldb	#7	;,
	jsr	_subBank0
;----- asm -----
; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1425]clearmonsterstack();
;--- end asm ---
	jsr	_clearMonsterStack
;----- asm -----
; 1960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1428]printmessage();
;--- end asm ---
	ldx	#LC145	;,
	jsr	_printMessage
;----- asm -----
; 1962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1429]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1964 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1430]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1431]tmp2 = (signed int)lv;
;--- end asm ---
	ldb	_lv	;, lv
	stb	_tmp2	;, tmp2
;----- asm -----
; 1968 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1432]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1433]if (lv != (unsigned int) tmp2)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	cmpb	_lv	;cmpqi:	;, lv
	beq	L344	;
	ldb	#75	;,
	jsr	_pause
L344:
;----- asm -----
; 1973 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1435]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L415:
;----- asm -----
; 2688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1943]printmessage();
;--- end asm ---
	ldx	#LC194	;,
	jsr	_printMessage
;----- asm -----
; 2690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1944]ultmp = ul(randmax(100)+1)*ul(10)*ul(cz);
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	2,s	;, D.3940
	ldb	_cz	;, cz
	lda	#10	;umulqihi3	;
	mul
	std	12,s	;,
	inc	2,s	; D.3940
	ldb	2,s	;, D.3940
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; tmp289
	ldx	14,s	;,
	jsr	_mulhi3
	leas	2,s	;,,
	stx	_ultmp	; ultmp.164, ultmp
;----- asm -----
; 2692 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1945]gd = gd + ull(ultmp);
;--- end asm ---
	leay	,x	;, ultmp.164
	stx	10,s	; tmp2,
	ldu	#0	;,
	stu	8,s	;,
	ldd	_gd+2	;, gd
	addd	10,s	;,
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	9,s	;
	adca	8,s	;
	std	_gd	;, gd
;----- asm -----
; 2694 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1946]_fl_s(, ultmp);
;--- end asm ---
	pshs	x	; ultmp.164
	ldx	#LC195	;,
	jsr	__fl_s
;----- asm -----
; 2696 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1947]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1948]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1949]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	leas	2,s	;,,
	lbra	L345	;
L475:
;----- asm -----
; 2044 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1486]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2046 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1487]printmessage();
;--- end asm ---
	ldx	#LC150	;,
	jsr	_printMessage
;----- asm -----
; 2048 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1488]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3825,
	lbra	L345	;
L394:
;----- asm -----
; 2499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1809]if (randmax(50)>20)
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	cmpb	#20	;cmpqi:	; D.3918,
	lbls	L399	;
;----- asm -----
; 2502 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1811]printmessage();
;--- end asm ---
	ldx	#LC178	;,
	jsr	_printMessage
;----- asm -----
; 2504 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1812]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L434:
;----- asm -----
; 2970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2147]tmp = (signed int) randmax(2*cz)+1;
;--- end asm ---
	ldb	_cz	; tmp372, cz
	aslb	; tmp372
	jsr	_RandMax
	incb	; D.3987
	stb	_tmp	; D.3987, tmp
;----- asm -----
; 2972 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2148]printmessage();
;--- end asm ---
	ldx	#LC210	;,
	jsr	_printMessage
;----- asm -----
; 2976 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2151]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	ldx	#LC131	;,
	jsr	__fi_s
;----- asm -----
; 2978 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2152]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2155]if (ch<=tmp)
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	cmpd	_ch	;cmphi:	; tmp, ch
	lbge	L477	;
;----- asm -----
; 2991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2161]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L433:
;----- asm -----
; 2943 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2124]printmessage();
;--- end asm ---
	ldx	#LC209	;,
	jsr	_printMessage
;----- asm -----
; 2945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2125]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L418:
;----- asm -----
; 2742 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1978]if (randmax(100) >60)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#60	;cmpqi:	; D.3959,
	lbls	L420	;
;----- asm -----
; 2745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1980]goto thronenothinghappens;
;--- end asm ---
	lbra	L416	;
L395:
;----- asm -----
; 2460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1782]if ((signed int)randmax(20)< tmp2*3)
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	35,s	;, D.3911
	ldb	_tmp2	; tmp260, tmp2
	aslb	; tmp260
	addb	_tmp2	; tmp260, tmp2
	cmpb	35,s	;cmpqi:(R)	; tmp260, D.3911
	lbgt	L478	;
;----- asm -----
; 2491 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1803]randomxp();
;--- end asm ---
	jsr	_randomXP
;----- asm -----
; 2493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1804]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L399:
;----- asm -----
; 2510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1817]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3919,
	lbls	L400	;
;----- asm -----
; 2517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1823]printmessage();
;--- end asm ---
	ldx	#LC178	;,
	jsr	_printMessage
;----- asm -----
; 2519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1824]printmessage();
;--- end asm ---
	ldx	#LC179	;,
	jsr	_printMessage
;----- asm -----
; 2521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1825]sf[drunk] = randmax(16)+1;
;--- end asm ---
	ldb	#16	;,
	jsr	_RandMax
	incb	; D.3920
	stb	_sf+10	; D.3920, sf
;----- asm -----
; 2523 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1826]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L476:
	tfr	d,u	;,
	pshs	y	;cmphi: R:y with R:u	; tmp6,
	cmpu	,s++	;cmphi:	;
	lbeq	L479	;
L383:
;----- asm -----
; 2320 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1684]if (ultmp<ul(ul(50)*ul(cz)))
;--- end asm ---
	ldb	_cz	;, cz
	lda	#50	;umulqihi3	;
	mul
	tfr	d,y	;, tmp225
	pshs	d	;cmphi: R:d with R:x	; tmp225, ultmp.140
	cmpx	,s++	;cmphi:	; ultmp.140
	lblo	L385	;
;----- asm -----
; 2327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1690]gd = gd - ultmp;
;--- end asm ---
	ldd	27,s	;, gd.142
	subd	23,s	;, D.3871
	std	31,s	;, gd.143
	ldd	25,s	;, gd.142
	sbcb	22,s	; D.3871
	sbca	21,s	; D.3871
	std	29,s	;, gd.143
	ldx	29,s	;, gd.143
	stx	_gd	;, gd
	ldy	31,s	;, gd.143
	sty	_gd+2	;, gd
;----- asm -----
; 2329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1691]tmp = (signed int)((ull(ultmp)*ull(100))/ (   ull(gd)+ ull(ultmp) ));
;--- end asm ---
	ldu	_ultmp	;, ultmp
	stu	50,s	;, temp.604
	ldd	#0	;,
	std	48,s	;, temp.604
	ldy	#100	; tmp228,
	leas	-8,s	;,,
	std	4,s	;,
	sty	6,s	; tmp228,
	ldx	56,s	;, temp.604
	stx	,s	;,
	ldu	58,s	;, temp.604
	stu	2,s	;,
	leax	69,s	;,,
	jsr	___mulsi3
	ldd	39,s	;, gd.143
	addd	58,s	;, temp.604
	std	24,s	;,
	ldd	37,s	;, gd.143
	adcb	57,s	; temp.604
	adca	56,s	; temp.604
	std	22,s	;,
	ldx	22,s	;,
	stx	4,s	;,
	ldu	24,s	;,
	stu	6,s	;,
	ldd	69,s	;,
	std	,s	;,
	ldx	71,s	;,
	stx	2,s	;,
	leax	65,s	;,,
	jsr	___udivsi3
	leas	8,s	;,,
	ldb	60,s	;,
	stb	_tmp	;, tmp
;----- asm -----
; 2331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1692]if ((signed int)randmax(100) < tmp)
;--- end asm ---
	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp228,
	jsr	_RandMax
	cmpb	_tmp	;cmpqi:	; D.3880, tmp
	lbge	L386	;
;----- asm -----
; 2336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1696]tmp2 = (signed int) randmax(7);
;--- end asm ---
	ldb	#7	;,
	jsr	_RandMax
	stb	_tmp2	; D.3882, tmp2
;----- asm -----
; 2338 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1697]sf[tmp2] =(unsigned int) (sf[tmp2] + randmax((unsigned int)tmp)+(unsigned int)1);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3882, tmp2.145
	ldx	#_sf	;,
	leay	d,x	; tmp238, tmp2.145,
	ldb	,y	;, sf
	stb	33,s	;, D.3884
	ldb	_tmp	;, tmp
	jsr	_RandMax
	incb	; D.3885
	addb	33,s	; D.3885, D.3884
	stb	,y	; D.3885, sf
;----- asm -----
; 2342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1700]printmessage();
;--- end asm ---
	ldx	#LC168	;,
	jsr	_printMessage
L387:
;----- asm -----
; 2350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1706]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L477:
;----- asm -----
; 2985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2157]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2158]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3825,
	lbra	L345	;
L427:
;----- asm -----
; 2823 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2038]printmessage();
;--- end asm ---
	ldx	#LC201	;,
	jsr	_printMessage
;----- asm -----
; 2827 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2041]thronerolestatagain:
;--- end asm ---
L450:
;----- asm -----
; 2829 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2042]tmp = (signed int)randmax(6);
;--- end asm ---
	ldb	#6	;,
	jsr	_RandMax
	stb	_tmp	; D.3972, tmp
;----- asm -----
; 2831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2043]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3974,
	lbls	L428	;
;----- asm -----
; 2835 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2046]if (s[tmp] <= 3) goto thronerolestatagain;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;,
	leax	_s,y	; tmp324,,
	ldb	,x	; temp.605, s
	cmpb	#3	;cmpqi:	; temp.605,
	bls	L450	;
;----- asm -----
; 2840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2050]s[tmp] = s[tmp] - 1;
;--- end asm ---
	decb	; temp.605
	stb	,x	; temp.605, s
;----- asm -----
; 2842 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2051]_fs(, stats[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp330
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldx	#LC202	;,
	jsr	__fs
	leas	2,s	;,,
L430:
;----- asm -----
; 2857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2062]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2063]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L428:
;----- asm -----
; 2848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2056]if (s[tmp] >= 18) goto thronerolestatagain;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;,
	leax	_s,y	; tmp335,,
	ldb	,x	; D.3975, s
	cmpb	#17	;cmpqi:	; D.3975,
	lbhi	L450	;
;----- asm -----
; 2852 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2059]s[tmp] = s[tmp] + 1;
;--- end asm ---
	incb	; D.3975
	stb	,x	; D.3975, s
;----- asm -----
; 2854 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2060]_fs(, stats[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp341
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldx	#LC203	;,
	jsr	__fs
	leas	2,s	;,,
	lbra	L430	;
L400:
;----- asm -----
; 2529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1831]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3922,
	lbls	L401	;
;----- asm -----
; 2534 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1835]printmessage();
;--- end asm ---
	ldx	#LC180	;,
	jsr	_printMessage
;----- asm -----
; 2536 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1836]for (int i=0;i<10;i++) inventory[i]=0;
;--- end asm ---
	ldx	#2	; tmp273,
	ldd	#_inventory	; tmp271,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	tfr	d,y	; tmp271, tmp270
	tfr	x,d	; tmp273,
	pshs	y	;subhi: R:d -= R:y	; tmp270,
	subd	,s++	;
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp272
; ORG>	tfr	d,x	;, tmp272
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp272,
	andb	#1	;,
	stb	44,s	;, prolog_loop_niters.542
	lbeq	L480	;
	clr	_inventory	; inventory
	ldb	#1	;,
	stb	37,s	;, i
	ldb	#9	;,
	stb	43,s	;, ivtmp.535
L403:
	ldb	#10	; tmp276,
	subb	44,s	; tmp276, prolog_loop_niters.542
	stb	45,s	; tmp276, niters.545
	lsrb	; tmp276
	stb	46,s	; tmp276, bnd.546
	aslb	; tmp276
	stb	47,s	; tmp276, ratio_mult_vf.547
	beq	L443	;
	ldb	44,s	;, prolog_loop_niters.542
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,y	;,
	leax	_inventory,y	; ivtmp.579,,
	clr	2,s	; ivtmp.574
L405:
	ldd	#0	;,
	std	,x++	;,
	inc	2,s	; ivtmp.574
	ldb	46,s	;, bnd.546
	cmpb	2,s	;cmpqi:	;, ivtmp.574
	bhi	L405	;
	ldb	43,s	;, ivtmp.535
	subb	47,s	;, ratio_mult_vf.547
	stb	43,s	;, ivtmp.535
	ldb	37,s	;, i
	addb	47,s	;, ratio_mult_vf.547
	stb	37,s	;, i
	ldb	47,s	;, ratio_mult_vf.547
	cmpb	45,s	;cmpqi:	;, niters.545
	bne	L443	;
L406:
;----- asm -----
; 2539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1838]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L443:
	ldb	37,s	;, i
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, i
	clr	_inventory,x	; inventory
	inc	37,s	; i
	dec	43,s	; ivtmp.535
	bne	L443	;
	bra	L406	;
L420:
;----- asm -----
; 2751 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1985]if (randmax(100) >40)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3960,
	lbls	L421	;
;----- asm -----
; 2754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1987]goto teleportnow;
;--- end asm ---
	lbra	L351	;
L386:
;----- asm -----
; 2347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1704]printmessage();
;--- end asm ---
	ldx	#LC169	;,
	jsr	_printMessage
	lbra	L387	;
L478:
;----- asm -----
; 2465 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1786]printmessage();
;--- end asm ---
	ldx	#LC176	;,
	jsr	_printMessage
;----- asm -----
; 2467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1787]tmp = (signed int)randmax(cz*3)+1;
;--- end asm ---
	ldb	_cz	; tmp264, cz
	aslb	; tmp264
	addb	_cz	; tmp264, cz
	jsr	_RandMax
	incb	; tmp.154
	stb	_tmp	; tmp.154, tmp
;----- asm -----
; 2469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1788]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldx	#LC177	;,
	jsr	__fi_s
;----- asm -----
; 2471 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1789]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2476 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1793]if (tmp>=ch)
;--- end asm ---
	ldb	_tmp	;, tmp
	stb	52,s	;, tmp.618
	ldx	_ch	; ch.620, ch
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;, tmp.618
	pshs	x	;cmphi: R:x with R:d	; ch.620, tmp.618
	cmpd	,s++	;cmphi:	; tmp.618
	lbge	L481	;
;----- asm -----
; 2484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1798]ch = ch - ((unsigned int)tmp);
;--- end asm ---
	ldb	52,s	;, tmp.618
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,y	;, tmp.618
	tfr	x,d	; ch.620,
	pshs	y	;subhi: R:d -= R:y	; tmp.618,
	subd	,s++	;
	std	_ch	; tmp268, ch
;----- asm -----
; 2486 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1799]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L479:
	ldy	23,s	;, D.3871
	ldu	27,s	;, gd.142
	pshs	u	;cmphi: R:u with R:y	;,
	cmpy	,s++	;cmphi:	;
	lbls	L383	;
	lbra	L440	;
L401:
;----- asm -----
; 2546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1844]printmessage();
;--- end asm ---
	ldx	#LC181	;,
	jsr	_printMessage
;----- asm -----
; 2548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1845]cs = cs + randmax(cz*4)+1;
;--- end asm ---
	ldb	_cz	; tmp282, cz
	aslb	; tmp282
	aslb	; tmp282
	jsr	_RandMax
	ldy	_cs	;, cs
	leax	1,y	; tmp283,,
	abx
	stx	_cs	; cs.158, cs
;----- asm -----
; 2550 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1846]_fl_s(, cs);
;--- end asm ---
	pshs	x	; cs.158
	ldx	#LC182	;,
	jsr	__fl_s
;----- asm -----
; 2552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1847]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2554 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1848]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	leas	2,s	;,,
	lbra	L345	;
L480:
	clr	37,s	; i
	ldb	#10	;,
	stb	43,s	;, ivtmp.535
	lbra	L403	;
L421:
;----- asm -----
; 2758 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1990]printmessage();
;--- end asm ---
	ldx	#LC198	;,
	jsr	_printMessage
;----- asm -----
; 2760 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1991]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3961,
	lbhi	L482	;
;----- asm -----
; 2783 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2008]if (lv>cz) goto thronenothinghappens;
;--- end asm ---
	ldb	_lv	;, lv
	stb	2,s	;, lv.114
	cmpb	_cz	;cmpqi:	;, cz
	lbhi	L416	;
;----- asm -----
; 2787 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2011]ex = ull(1000)*ull(ull(2)<<(lv-1)) + 1;
;--- end asm ---
	decb	;
	stb	7,s	;,
	ldb	2,s	; tmp308, lv.114
	addb	#-17	; tmp308,
	lbmi	L424	;
	clra		;zero_extendqihi: R:b -> R:d	; tmp308,
	tfr	d,x	;, tmp309
	ldd	#2	;,
	pshs	x	; tmp309
	leax	-1,x	; tmp309
	cmpx	#-1	; tmp309
	beq	.+6
	aslb
	rola
	bra	.-9
	puls	x	; tmp309
	tfr	d,y	;, tmp395
	ldu	#0	; tmp396,
L425:
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	sty	,s	; tmp395,
	stu	2,s	; tmp396,
	leax	69,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldy	61,s	;,
	sty	3,s	;,
	ldu	63,s	;,
	stu	5,s	;,
	ldd	5,s	;,
	addd	#1	;,
	std	_ex+2	;, ex
	ldd	3,s	;,
	adcb	#0	;
	adca	#0	;
	std	_ex	;, ex
;----- asm -----
; 2789 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2012]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 2791 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2013]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
L481:
;----- asm -----
; 2479 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1795]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1796]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3825,
	lbra	L345	;
L424:
	ldb	#15	; tmp312,
	subb	7,s	; tmp311,
	clra		;zero_extendqihi: R:b -> R:d	; tmp311,
	tfr	d,x	;, tmp314
	ldb	7,s	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldd	#1	;,
	pshs	x	; tmp314
	leax	-1,x	; tmp314
	cmpx	#-1	; tmp314
	beq	.+6
	lsra
	rorb
	bra	.-9
	puls	x	; tmp314
	tfr	d,y	;, tmp395
	ldd	#2	;,
	ldx	,s	;,
	pshs	x	;
	leax	-1,x	;
	cmpx	#-1	;
	beq	.+6
	aslb
	rola
	bra	.-9
	puls	x	;
	tfr	d,u	;, tmp396
	lbra	L425	;
L482:
;----- asm -----
; 2766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1996]ex = ex >> 1;
;--- end asm ---
	ldd	_ex	; tmp302, ex
	tfr	b,a	;,
	clrb	;
	rora	;
	rora	;
	anda	#-128	;,
	lsr	_ex+2	; ex
	ror	_ex+3	; ex
	ldx	_ex+2	; ex, ex
	pshs	x	; ex
	ora	,s+	;,
	orb	,s+	;,
	std	_ex+2	; tmp304, ex
	lsr	_ex	; ex
	ror	_ex+1	; ex
;----- asm -----
; 2768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1997]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 2770 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1998]if (ch==0)
;--- end asm ---
	ldx	_ch	; ch, ch
	bne	L423	;
;----- asm -----
; 2774 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2001]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3825,
	lbra	L345	;
L423:
;----- asm -----
; 2777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2003]return return_pause;
;--- end asm ---
	ldb	#7	; D.3825,
	lbra	L345	;
LC214:
	.ascii	">\0"
LC215:
	.ascii	"STAY...\0"
LC216:
	.ascii	"YOU DIED!!\0"
LC217:
	.byte	65,78,79,84,72,69,82,32
	.byte	78,79,84,32,83,79,32,-128
	.byte	0
LC218:
	.byte	65,78,79,84,72,69,82,-128
	.byte	0
LC219:
	.byte	77,73,71,72,84,89,32,65
	.byte	68,86,69,78,84,85,82,69
	.byte	82,-128,0
LC220:
	.byte	66,73,84,69,83,32,84,72
	.byte	69,32,68,85,83,84,-128,0
LC221:
	.byte	68,79,32,89,79,85,32,87
	.byte	65,78,84,32,84,79,32,-128
	.byte	0
LC222:
	.byte	84,82,89,32,65,71,65,73
	.byte	78,63,32,60,49,45,52,62
	.byte	-128,0
LC223:
	.byte	76,79,65,68,32,65,32,67
	.byte	72,65,82,65,67,84,69,82
	.byte	63,32,60,52,62,-128,0
LC224:
	.ascii	"CHARACTER LOADED\0"
	.globl	_main
_main:
	pshs	u	;
	leas	-14,s	;,,
;----- asm -----
; 3041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2195]restart:
;--- end asm ---
L484:
;----- asm -----
; 3043 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2196]initvars();
;--- end asm ---
	jsr	_initVars
;----- asm -----
; 3045 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2197]#ifndef no_title
; 3047 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2198]titlescreen();
;--- end asm ---
	clrb	;
	jsr	_subBank0
;----- asm -----
; 3049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2199]#endif
; 3051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2200]vec_text_hw = 0xfa50;
;--- end asm ---
	ldx	#-1456	;,
	stx	_Vec_Text_HW	;, Vec_Text_HW
;----- asm -----
; 3053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2201]_x = vec_loop_count_lo;
;--- end asm ---
	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
	stb	__x	;, _x
;----- asm -----
; 3055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2202]setrandseednp();
;--- end asm ---
	jsr	_setRandSeedNP
;----- asm -----
; 3059 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2205]createcharacter();
;--- end asm ---
	jsr	_createCharacter
;----- asm -----
; 3062 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2207]#if start_strong == 1
; 3080 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2217]unsigned int turnstarting = 1;
; 3082 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2218]while(1)
;--- end asm ---
	ldb	#1	;,
	stb	4,s	;, turnStarting
L521:
;----- asm -----
; 3089 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2224]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 3092 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2226]if (turnstarting)
;--- end asm ---
	tst	4,s	; turnStarting
	lbeq	L485	;
;----- asm -----
; 3095 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2228]turnstarting = 0;
; 3097 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2229]l = cz;
;--- end asm ---
	ldb	_cz	;, cz
	stb	_l	;, l
;----- asm -----
; 3104 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2235]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3106 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2236]#ifndef no_monster
; 3108 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2237]monsterreturns:
;--- end asm ---
	ldb	_tmp	;, tmp
L549:
;----- asm -----
; 3110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2238]tmp = handleencounters(tmp);
;--- end asm ---
	jsr	_handleEncounters
	stb	2,s	;, tmp.185
	stb	_tmp	;, tmp
;----- asm -----
; 3112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2239]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 3114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2240]ml = 0;
;--- end asm ---
	clr	_ml	; ml
;----- asm -----
; 3116 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2241]mh = 0;
;--- end asm ---
	ldd	#0	;,
	std	_mh	;, mh
;----- asm -----
; 3118 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2242]if (tmp== return_new_turn)
;--- end asm ---
	ldb	2,s	;, tmp.185
	cmpb	#1	;cmpqi:	;,
	lbeq	L551	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L552	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L553	;
	cmpb	#4	;cmpqi:	;,
	lbeq	L554	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L555	;
L491:
;----- asm -----
; 3157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2271]#endif
; 3162 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2275]tmp = handletreasure(tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	jsr	_handleTreasure
	stb	2,s	;, tmp.186
	stb	_tmp	;, tmp
;----- asm -----
; 3164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2276]printtreasure=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 3167 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2278]if (tmp == return_player_dead)
;--- end asm ---
	ldb	2,s	;, tmp.186
	cmpb	#2	;cmpqi:	;,
	lbeq	L556	;
	cmpb	#6	;cmpqi:	;,
	lbeq	L557	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L558	;
L496:
;----- asm -----
; 3198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2301]handlespecial:
;--- end asm ---
L493:
;----- asm -----
; 3200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2302]tmp = handlespecial(tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	jsr	_handleSpecial
	stb	_tmp	; tmp.187, tmp
;----- asm -----
; 3202 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2303]if (tmp == return_pause)
;--- end asm ---
	cmpb	#7	;cmpqi:	; tmp.187,
	lbeq	L559	;
	cmpb	#1	;cmpqi:	; tmp.187,
	lbeq	L560	;
	cmpb	#2	;cmpqi:	; tmp.187,
	lbeq	L561	;
	cmpb	#30	;cmpqi:	; tmp.187,
	beq	L562	;
	cmpb	#31	;cmpqi:	; tmp.187,
	lbne	L485	;
;----- asm -----
; 3238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2328]#ifndef no_monster
; 3240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2329]tmp = return_monster_is_set;
;--- end asm ---
	stb	_tmp	;, tmp
;----- asm -----
; 3242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2330]goto monsterreturns;
;--- end asm ---
	lbra	L549	;
L553:
;----- asm -----
; 3137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2255]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
	lbra	L491	;
L562:
;----- asm -----
; 3228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2321]#ifndef no_monster
; 3230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2322]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2323]goto monsterreturns;
;--- end asm ---
	ldb	_tmp	;, tmp
	lbra	L549	;
L558:
;----- asm -----
; 3191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2295]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
	lbra	L496	;
L554:
;----- asm -----
; 3145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2262]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L491	;
L555:
;----- asm -----
; 3150 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2266]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2269]goto handlespecial;
;--- end asm ---
	lbra	L493	;
L557:
;----- asm -----
; 3177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2285]#ifndef no_monster
; 3179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2286]if (monsteronstackadvance() != 0)
;--- end asm ---
	jsr	_monsterOnStackAdvance
	tstb	; D.4041
	lbeq	L496	;
;----- asm -----
; 3182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2288]tmp = return_monster_is_set;
;--- end asm ---
	ldb	#31	;,
	stb	_tmp	;, tmp
;----- asm -----
; 3184 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2289]goto monsterreturns;
;--- end asm ---
	lbra	L549	;
L559:
;----- asm -----
; 3205 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2305]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2306]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
L485:
;----- asm -----
; 3248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2335]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2336]printmessage();
;--- end asm ---
	ldx	#LC214	;,
	jsr	_printMessage
;----- asm -----
; 3258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2343]tmp = handlemovement();
;--- end asm ---
	jsr	_handleMovement
	stb	_tmp	; tmp.188, tmp
;----- asm -----
; 3260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2344]if (tmp)
;--- end asm ---
	tstb	; tmp.188
	lbne	L563	;
;----- asm -----
; 3285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2365]if (button_1_4_pressed()) timer = 0;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	7,s	;, D.4729
	bitb	#8	;,
	lbeq	L503	;
	clr	_timer	; timer
L504:
;----- asm -----
; 3311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2385]if ((timer == 0) || (tmp))
;--- end asm ---
	tst	_timer	; timer
	beq	L506	;
	tst	_tmp	; tmp
	bne	L506	;
	clr	4,s	; turnStarting
L507:
;----- asm -----
; 3376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2430]timer--;
;--- end asm ---
	dec	_timer	; timer
	lbra	L521	;
L506:
;----- asm -----
; 3314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2387]if (!tmp)
;--- end asm ---
	tst	_tmp	; tmp
	lbeq	L564	;
L508:
;----- asm -----
; 3339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2403]newturnstart:
;--- end asm ---
L487:
;----- asm -----
; 3341 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2404]turnstarting = 1;
; 3343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2405]m = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 3345 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2406]mh = 0;
;--- end asm ---
	ldd	#0	;,
	std	_mh	;, mh
;----- asm -----
; 3347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2407]timer = action_time;
;--- end asm ---
	ldb	#-106	;,
	stb	_timer	;, timer
;----- asm -----
; 3356 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2415]for (int i=0; i<11;i++)
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf	; temp.887, sf
	beq	L509	;
	decb	; temp.887
	stb	_sf	; temp.887, sf
L509:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+1	; temp.889, sf
	beq	L510	;
	decb	; temp.889
	stb	_sf+1	; temp.889, sf
L510:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+2	; temp.891, sf
	beq	L511	;
	decb	; temp.891
	stb	_sf+2	; temp.891, sf
L511:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+3	; temp.893, sf
	beq	L512	;
	decb	; temp.893
	stb	_sf+3	; temp.893, sf
L512:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+4	; temp.895, sf
	beq	L513	;
	decb	; temp.895
	stb	_sf+4	; temp.895, sf
L513:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+5	; temp.897, sf
	beq	L514	;
	decb	; temp.897
	stb	_sf+5	; temp.897, sf
L514:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+6	; temp.899, sf
	beq	L515	;
	decb	; temp.899
	stb	_sf+6	; temp.899, sf
L515:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+7	; temp.901, sf
	beq	L516	;
	decb	; temp.901
	stb	_sf+7	; temp.901, sf
L516:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+8	; temp.903, sf
	beq	L517	;
	decb	; temp.903
	stb	_sf+8	; temp.903, sf
L517:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+9	; temp.905, sf
	beq	L518	;
	decb	; temp.905
	stb	_sf+9	; temp.905, sf
L518:
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2417]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+10	; D.4052, sf
	beq	L519	;
	decb	; D.4052
	stb	_sf+10	; D.4052, sf
L519:
;----- asm -----
; 3367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2424]if ((inventory[ring_of_regeneration]) && ((unsigned int)ch != hp))
;--- end asm ---
	ldb	_inventory+5	;, inventory
	stb	3,s	;, D.4054
	beq	L520	;
	ldx	_ch	; ch.192, ch
	tfr	x,d	; ch.192,
	clra		;zero_extendqihi: R:b -> R:d	;,
	cmpd	_hp	;cmphi:	; ch.192, hp
	beq	L520	;
;----- asm -----
; 3370 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2426]ch=ch+inventory[ring_of_regeneration];
;--- end asm ---
	ldb	3,s	;, D.4054
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.4054
	exg	d,x	;, ch.192
	leau	d,u	; ch.194,, ch.194
	stu	_ch	; ch.194, ch
;----- asm -----
; 3372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2427]if ((unsigned int)ch>hp) ch=(signed int)hp;
;--- end asm ---
	ldx	_hp	; hp.870, hp
	tfr	u,d	; ch.194,
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	x	;cmphi: R:x with R:d	; hp.870, ch.194
	cmpd	,s++	;cmphi:	; ch.194
	ble	L520	;
	tfr	x,d	; hp.870,
	sex		;extendqihi2: R:b -> R:d	;,
	std	_ch	; hp.870, ch
	ldb	#1	;,
	stb	4,s	;, turnStarting
	lbra	L507	;
L520:
	ldb	#1	;,
	stb	4,s	;, turnStarting
	lbra	L507	;
L503:
	ldb	#4	; tmp113,
	andb	7,s	; tmp113, D.4729
	lbne	L565	;
	ldb	#2	;,
	andb	7,s	;, D.4729
	lbeq	L504	;
;----- asm -----
; 3300 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2375]displaystatuspage();
;--- end asm ---
	jsr	_displayStatusPage
	lbra	L504	;
L563:
;----- asm -----
; 3263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2346]monsteronstackevadefurther();
;--- end asm ---
	jsr	_monsterOnStackEvadeFurther
;----- asm -----
; 3265 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2347]pause(very_small_pause);
;--- end asm ---
	ldb	#25	;,
	jsr	_pause
;----- asm -----
; 3267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2348]goto newturnstart;
;--- end asm ---
	lbra	L487	;
L551:
;----- asm -----
; 3121 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2244]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3123 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2245]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2246]goto newturnstart;
;--- end asm ---
	lbra	L487	;
L552:
;----- asm -----
; 3130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2250]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2251]goto playerdead;
;--- end asm ---
L489:
;----- asm -----
; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2433]if (msgline == 3)
;--- end asm ---
	ldb	_msgLine	;, msgLine
	cmpb	#3	;cmpqi:	;,
	lbeq	L566	;
L522:
;----- asm -----
; 3389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2438]initsoundno = sound_death;
;--- end asm ---
	ldb	#5	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 3391 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2439]printmessage();
;--- end asm ---
	ldx	#LC216	;,
	jsr	_printMessage
;----- asm -----
; 3393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2440]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3397 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2443]printcharacter = 0;
;--- end asm ---
	clr	_printCharacter	; printCharacter
;----- asm -----
; 3399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2444]printtreasure = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 3401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2445]printdungeon = 0;
;--- end asm ---
	clr	_printDungeon	; printDungeon
;----- asm -----
; 3403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2446]m = -1;
;--- end asm ---
	stb	_m	;, m
;----- asm -----
; 3406 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2448]int stage =0;
; 3408 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2449]int b=0;
; 3410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2450]vec_text_hw = 0xfa50;
;--- end asm ---
	ldx	#-1456	;,
	stx	_Vec_Text_HW	;, Vec_Text_HW
;----- asm -----
; 3412 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2451]while (1)
;--- end asm ---
	clr	6,s	; b
	clr	5,s	; stage
	lbra	L544	;
L569:
	ldb	__YC	; _YC.200, _YC
	addb	#-10	; _YC.200,
	stb	__YC	; _YC.200, _YC
	pshs	b	; _YC.200
	ldx	#LC217	;,
L550:
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3432 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2463]print();
;--- end asm ---
	ldb	__YC	; _YC.842, _YC
	addb	#-10	; _YC.842,
	stb	__YC	; _YC.842, _YC
	stb	,s	; _YC.842,
	ldx	#LC219	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3434 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2464]print();
;--- end asm ---
	ldb	__YC	; _YC.845, _YC
	addb	#-10	; _YC.845,
	stb	__YC	; _YC.845, _YC
	pshs	b	; _YC.845
	ldx	#LC220	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2465]addline;
;--- end asm ---
	ldb	__YC	; _YC.848, _YC
	addb	#-10	; _YC.848,
	stb	__YC	; _YC.848, _YC
;----- asm -----
; 3438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2466]if (stage == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	5,s	; stage
	lbeq	L567	;
L525:
;----- asm -----
; 3450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2474]if (stage == 1)
;--- end asm ---
	ldb	5,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L568	;
L527:
;----- asm -----
; 3529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2520]overstepprint:
;--- end asm ---
L543:
;----- asm -----
; 3531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2521]drawmap();
;--- end asm ---
	ldb	#3	;,
	jsr	_subBank0
L544:
;----- asm -----
; 3415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2453]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 3417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2454]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 3419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2455]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 3421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2456]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 3424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2458]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	ldb	#112	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 3426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2459]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 3429 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2461]if (lv<4) print();
;--- end asm ---
	ldb	_lv	;, lv
	cmpb	#3	;cmpqi:	;,
	lbls	L569	;
	ldb	__YC	; _YC.839, _YC
	addb	#-10	; _YC.839,
	stb	__YC	; _YC.839, _YC
	pshs	b	; _YC.839
	ldx	#LC218	;,
	lbra	L550	;
L567:
;----- asm -----
; 3441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2468]print();
;--- end asm ---
	addb	#-10	; _YC.849,
	stb	__YC	; _YC.849, _YC
	pshs	b	; _YC.849
	ldx	#LC221	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2469]print();
;--- end asm ---
	ldb	__YC	; _YC.852, _YC
	addb	#-10	; _YC.852,
	stb	__YC	; _YC.852, _YC
	pshs	b	; _YC.852
	ldx	#LC222	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3445 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2470]if (buttons_pressed()) b=1;
;--- end asm ---
	leas	2,s	;,,
	tst	_Vec_Buttons	; Vec_Buttons
	lbeq	L526	;
	ldb	#1	;,
	stb	6,s	;, b
;----- asm -----
; 3450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2474]if (stage == 1)
;--- end asm ---
	ldb	5,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbne	L527	;
L568:
;----- asm -----
; 3453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2476]if (tmp_hp == -1) break;
;--- end asm ---
	ldx	_tmp_hp	;, tmp_hp
	cmpx	#-1	;cmphi:	;,
	lbeq	L528	;
;----- asm -----
; 3455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2477]print();
;--- end asm ---
	ldb	__YC	; _YC.855, _YC
	addb	#-10	; _YC.855,
	stb	__YC	; _YC.855, _YC
	pshs	b	; _YC.855
	ldx	#LC221	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2478]print();
;--- end asm ---
	ldb	__YC	; _YC.859, _YC
	addb	#-10	; _YC.859,
	stb	__YC	; _YC.859, _YC
	pshs	b	; _YC.859
	ldx	#LC223	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2479]if (buttons_pressed()) b=1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	10,s	;, D.4743
	leas	2,s	;,,
	tstb	;
	beq	L529	;
	ldb	5,s	;, stage
	stb	6,s	;, b
L529:
;----- asm -----
; 3461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2480]if (button_1_4_pressed()) {b = 4;}
;--- end asm ---
	ldb	#8	; tmp144,
	andb	8,s	; tmp144, D.4743
	beq	L530	;
	ldb	#4	;,
	stb	6,s	;, b
L530:
;----- asm -----
; 3463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2481]if ((!buttons_pressed()) && (b!=0))
;--- end asm ---
	tst	8,s	; D.4743
	lbne	L527	;
	tst	6,s	; b
	lbeq	L527	;
;----- asm -----
; 3466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2483]if (b==4)
;--- end asm ---
	ldb	6,s	;, b
	cmpb	#4	;cmpqi:	;,
	lbne	L531	;
;----- asm -----
; 3469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2485]#if flash_support == 1
; 3474 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2488]ltmp = tmp_hp;
;--- end asm ---
	ldx	_tmp_hp	;, tmp_hp
	stx	_ltmp	;, ltmp
;----- asm -----
; 3476 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2489]initvars();
;--- end asm ---
	jsr	_initVars
;----- asm -----
; 3478 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2490]hp = tmp_hp = ltmp;
;--- end asm ---
	ldx	_ltmp	; ltmp.203, ltmp
	stx	_tmp_hp	; ltmp.203, tmp_hp
	stx	_hp	; ltmp.203, hp
;----- asm -----
; 3480 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2491]lv = tmp_lv;
;--- end asm ---
	ldb	_tmp_lv	;, tmp_lv
	stb	_lv	;, lv
;----- asm -----
; 3483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2493]ex = tmp_ex;
;--- end asm ---
	ldx	_tmp_ex	;, tmp_ex
	stx	_ex	;, ex
	ldu	_tmp_ex+2	;, tmp_ex
	stu	_ex+2	;, ex
;----- asm -----
; 3485 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2494]su = tmp_su;
;--- end asm ---
	ldd	_tmp_su	;, tmp_su
	std	_su	;, su
;----- asm -----
; 3488 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2496]cx = tmp_cx;
;--- end asm ---
	ldb	_tmp_cx	;, tmp_cx
	stb	_cx	;, cx
;----- asm -----
; 3490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2497]cy = tmp_cy;
;--- end asm ---
	ldb	_tmp_cy	;, tmp_cy
	stb	_cy	;, cy
;----- asm -----
; 3493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2499]tg = tmp_tg;
;--- end asm ---
	ldx	_tmp_tg	;, tmp_tg
	stx	_tg	;, tg
	ldu	_tmp_tg+2	;, tmp_tg
	stu	_tg+2	;, tg
;----- asm -----
; 3495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2500]for (int i=0;i<6;i++) s[i] = tmp_s[i];
;--- end asm ---
	ldx	#_s	; vect_ps.796,
	ldd	#_tmp_s	; tmp151,
	pshs	x	; vect_ps.796
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp152
	lbne	L532	;
	ldd	_tmp_s	;,
	std	_s	;,
	ldx	_tmp_s+2	;,
	stx	_s+2	;,
	ldu	_tmp_s+4	;,
	stu	_s+4	;,
L533:
;----- asm -----
; 3497 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2501]for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
;--- end asm ---
	ldx	#_inventory	; vect_pinventory.768,
	ldd	#_tmp_inventory	; tmp168,
	pshs	x	; vect_pinventory.768
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp169
	lbne	L534	;
	ldx	_tmp_inventory	;,
	stx	_inventory	;,
	ldu	_tmp_inventory+2	;,
	stu	_inventory+2	;,
	ldd	_tmp_inventory+4	;,
	std	_inventory+4	;,
	ldx	_tmp_inventory+6	;,
	stx	_inventory+6	;,
	ldu	_tmp_inventory+8	;,
	stu	_inventory+8	;,
L535:
;----- asm -----
; 3499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2502]for (int i=0;i<4;i++) box[i] = tmp_box[i];
;--- end asm ---
	ldx	#_tmp_box	; vect_ptmp_box.735,
	ldd	#_box	; tmp195,
	pshs	x	; vect_ptmp_box.735
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp196
	lbne	L536	;
	ldx	_tmp_box	;,
	stx	_box	;,
	ldu	_tmp_box+2	;,
	stu	_box+2	;,
L537:
;----- asm -----
; 3501 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2503]printmessage();
;--- end asm ---
	ldx	#LC224	;,
	jsr	_printMessage
;----- asm -----
; 3503 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2504]#endif
; 3505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2505]ch = (signed long int) hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 3507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2506]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 3509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2507]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 3511 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2508]cs = su;
;--- end asm ---
	ldx	_su	;, su
	stx	_cs	;, cs
;----- asm -----
; 3514 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2510]for (int i=0; i<11;i++) sf[i] = 0;
;--- end asm ---
	ldx	#2	; tmp214,
	ldd	#_sf	; tmp212,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	tfr	d,u	; tmp212, tmp211
	tfr	x,d	; tmp214,
	pshs	u	;subhi: R:d -= R:u	; tmp211,
	subd	,s++	;
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp213
; ORG>	tfr	d,x	;, tmp213
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp213,
	andb	#1	;,
	stb	10,s	;, prolog_loop_niters.715
	lbeq	L570	;
	clr	_sf	; sf
	ldb	#1	;,
	stb	13,s	;, i.856
	ldb	#10	;,
	stb	9,s	;, ivtmp.706
L539:
	ldb	#11	; tmp217,
	subb	10,s	; tmp217, prolog_loop_niters.715
	stb	11,s	; tmp217, niters.718
	ldb	10,s	;, prolog_loop_niters.715
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;,
	leax	_sf,u	; ivtmp.835,,
	clr	2,s	; ivtmp.830
L540:
	ldd	#0	;,
	std	,x++	;,
	inc	2,s	; ivtmp.830
	ldb	2,s	;, ivtmp.830
	cmpb	#4	;cmpqi:	;,
	bls	L540	;
	ldb	9,s	;, ivtmp.706
	addb	#-10	;,
	stb	12,s	;, ivtmp.818
	ldb	13,s	;, i.856
	addb	#10	;,
	stb	2,s	;, i
	ldb	11,s	;, niters.718
	cmpb	#10	;cmpqi:	;,
	beq	L541	;
L546:
	ldb	2,s	;, i
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, i
	clr	_sf,x	; sf
	inc	2,s	; i
	dec	12,s	; ivtmp.818
	bne	L546	;
L541:
	jsr	_clearMonsterStack
;----- asm -----
; 3517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2512]_x = vec_loop_count_lo;
;--- end asm ---
	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
	stb	__x	;, _x
;----- asm -----
; 3519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2513]setrandseednp();
;--- end asm ---
	jsr	_setRandSeedNP
;----- asm -----
; 3522 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2515]goto newturnstart;
;--- end asm ---
	lbra	L487	;
L526:
	ldb	6,s	;, b
	cmpb	#1	;cmpqi:	;,
	lbne	L525	;
	clr	6,s	; b
	stb	5,s	;, stage
	lbra	L543	;
L531:
;----- asm -----
; 3525 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2517]break;
;--- end asm ---
L528:
;----- asm -----
; 3535 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2524]goto restart;
;--- end asm ---
	lbra	L484	;
L560:
;----- asm -----
; 3212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2310]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2311]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2312]goto newturnstart;
;--- end asm ---
	lbra	L487	;
L561:
;----- asm -----
; 3221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2316]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3223 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2317]goto playerdead;
; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2433]if (msgline == 3)
;--- end asm ---
	ldb	_msgLine	;, msgLine
	cmpb	#3	;cmpqi:	;,
	lbne	L522	;
L566:
;----- asm -----
; 3384 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2435]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3386 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2436]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
	lbra	L522	;
L556:
;----- asm -----
; 3170 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2280]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3172 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2281]goto playerdead;
;--- end asm ---
	lbra	L489	;
L564:
;----- asm -----
; 3317 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2389]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3319 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2390]printmessage();
;--- end asm ---
	ldx	#LC215	;,
	jsr	_printMessage
;----- asm -----
; 3321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2391]pause(very_small_pause);
;--- end asm ---
	ldb	#25	;,
	jsr	_pause
;----- asm -----
; 3323 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2392]#ifndef no_monster
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2393]tmp = monsteronstackadvance();
;--- end asm ---
	jsr	_monsterOnStackAdvance
	stb	_tmp	; tmp.190, tmp
;----- asm -----
; 3327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2394]if (tmp != 0)
;--- end asm ---
	tstb	; tmp.190
	lbeq	L508	;
;----- asm -----
; 3330 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2396]tmp = return_monster_is_set;
;--- end asm ---
	ldb	#31	;,
	stb	_tmp	;, tmp
;----- asm -----
; 3332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2397]goto monsterreturns;
;--- end asm ---
	lbra	L549	;
L565:
;----- asm -----
; 3289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2368]castspell(0);
;--- end asm ---
	clrb	;
	jsr	_castSpell
;----- asm -----
; 3291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2369]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2370]timer = 0;
;--- end asm ---
	clr	_timer	; timer
;----- asm -----
; 3295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2371]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L504	;
L532:
	ldb	_tmp_s	;, tmp_s
	stb	_s	;, s
	ldb	_tmp_s+1	;, tmp_s
	stb	_s+1	;, s
	ldb	_tmp_s+2	;, tmp_s
	stb	_s+2	;, s
	ldb	_tmp_s+3	;, tmp_s
	stb	_s+3	;, s
	ldb	_tmp_s+4	;, tmp_s
	stb	_s+4	;, s
	ldb	_tmp_s+5	;, tmp_s
	stb	_s+5	;, s
	lbra	L533	;
L536:
	ldb	_tmp_box	;, tmp_box
	stb	_box	;, box
	ldb	_tmp_box+1	;, tmp_box
	stb	_box+1	;, box
	ldb	_tmp_box+2	;, tmp_box
	stb	_box+2	;, box
	ldb	_tmp_box+3	;, tmp_box
	stb	_box+3	;, box
	lbra	L537	;
L534:
	ldb	_tmp_inventory	;, tmp_inventory
	stb	_inventory	;, inventory
	ldb	_tmp_inventory+1	;, tmp_inventory
	stb	_inventory+1	;, inventory
	ldb	_tmp_inventory+2	;, tmp_inventory
	stb	_inventory+2	;, inventory
	ldb	_tmp_inventory+3	;, tmp_inventory
	stb	_inventory+3	;, inventory
	ldb	_tmp_inventory+4	;, tmp_inventory
	stb	_inventory+4	;, inventory
	ldb	_tmp_inventory+5	;, tmp_inventory
	stb	_inventory+5	;, inventory
	ldb	_tmp_inventory+6	;, tmp_inventory
	stb	_inventory+6	;, inventory
	ldb	_tmp_inventory+7	;, tmp_inventory
	stb	_inventory+7	;, inventory
	ldb	_tmp_inventory+8	;, tmp_inventory
	stb	_inventory+8	;, inventory
	ldb	_tmp_inventory+9	;, tmp_inventory
	stb	_inventory+9	;, inventory
	lbra	L535	;
L570:
	clr	13,s	; i.856
	ldb	#11	;,
	stb	9,s	;, ivtmp.706
	lbra	L539	;
