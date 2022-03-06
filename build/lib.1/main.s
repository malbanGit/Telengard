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
	.globl	_environment_string
LC86:
	.ascii	"NONE\0"
LC87:
	.ascii	"STAIR\0"
LC88:
	.ascii	"PIT\0"
LC89:
	.ascii	"TELEPORT\0"
LC90:
	.ascii	"ALTAR\0"
LC91:
	.ascii	"FOUNTAIN\0"
LC92:
	.ascii	"CUBE\0"
LC93:
	.ascii	"THRONE\0"
LC94:
	.ascii	"BOX\0"
_environment_string:
	.word	LC86
	.word	LC87
	.word	LC88
	.word	LC89
	.word	LC87
	.word	LC90
	.word	LC91
	.word	LC92
	.word	LC93
	.word	LC94
	.globl	_testForButton
_testForButton:
	leas	-9,s	;,,
	stb	1,s	; d, d
;----- asm -----
; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[129]signed int p = 0;
; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[130]signed int t = 0;
; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[131]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[132]do
;--- end asm ---
	tst	1,s	; d
	lbne	L2	;
	clr	7,s	; p.235
	clr	4,s	; t
	lbra	L11	;
L23:
;----- asm -----
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	6,s	;, temp.230
	bitb	#8	;,
	beq	L4	;
	ldb	#1	;,
	stb	7,s	;, p.235
	ldb	#4	;,
	stb	4,s	;, t
L4:
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp40,
	andb	6,s	; tmp40, temp.230
	beq	L5	;
	ldb	#1	;,
	stb	7,s	;, p.235
	ldb	#3	;,
	stb	4,s	;, t
L5:
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp41,
	andb	6,s	; tmp41, temp.230
	beq	L6	;
	ldb	#1	;,
	stb	7,s	;, p.235
	ldb	#2	;,
	stb	4,s	;, t
L6:
;----- asm -----
; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp42,
	andb	6,s	; tmp42, temp.230
	beq	L7	;
	ldb	#1	;,
	stb	7,s	;, p.235
	stb	4,s	;, t
L7:
;----- asm -----
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	8,s	;, Vec_Joy_1_X.236
	beq	L8	;
	ldb	#1	;,
	stb	7,s	;, p.235
	ldb	#5	;,
	stb	4,s	;, t
L8:
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.237
	beq	L9	;
	ldb	#1	;,
	stb	7,s	;, p.235
	ldb	#5	;,
	stb	4,s	;, t
L9:
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	7,s	; p.235
	beq	L10	;
	tst	8,s	; Vec_Joy_1_X.236
	bne	L10	;
	tst	,s	; Vec_Joy_1_Y.237
	bne	L10	;
	tst	6,s	; temp.230
	beq	L3	;
L10:
;----- asm -----
; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[151]while (1);
;--- end asm ---
L11:
;----- asm -----
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[134]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[135]if (d!=0) localtimer--;
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[137]if (localtimer == 0) break;
;--- end asm ---
	tst	_localTimer	; localTimer
	lbne	L23	;
L3:
;----- asm -----
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[153]if (t == 0) return d;
;--- end asm ---
	tst	4,s	; t
	beq	L20	;
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[154]return t;
;--- end asm ---
	ldb	4,s	;, t
	stb	1,s	;, d
L20:
	ldb	1,s	;, d
	leas	9,s	;,,
	rts
L2:
	clr	3,s	; p
	clr	4,s	; t
	lbra	L19	;
L24:
;----- asm -----
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	5,s	;, D.4749
	bitb	#8	;,
	beq	L12	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#4	;,
	stb	4,s	;, t
L12:
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp44,
	andb	5,s	; tmp44, D.4749
	beq	L13	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#3	;,
	stb	4,s	;, t
L13:
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp45,
	andb	5,s	; tmp45, D.4749
	beq	L14	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#2	;,
	stb	4,s	;, t
L14:
;----- asm -----
; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp46,
	andb	5,s	; tmp46, D.4749
	beq	L15	;
	ldb	#1	;,
	stb	3,s	;, p
	stb	4,s	;, t
L15:
;----- asm -----
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	2,s	;, Vec_Joy_1_X.4
	beq	L16	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#5	;,
	stb	4,s	;, t
L16:
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.5
	beq	L17	;
	ldb	#1	;,
	stb	3,s	;, p
	ldb	#5	;,
	stb	4,s	;, t
L17:
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	3,s	; p
	beq	L18	;
	tst	2,s	; Vec_Joy_1_X.4
	bne	L18	;
	tst	,s	; Vec_Joy_1_Y.5
	bne	L18	;
	tst	5,s	; D.4749
	lbeq	L3	;
L18:
;----- asm -----
; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[151]while (1);
;--- end asm ---
L19:
;----- asm -----
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[134]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[135]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[137]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L24	;
	lbra	L3	;
	.globl	_testForInput
_testForInput:
	leas	-7,s	;,,
	stb	1,s	; d, d
;----- asm -----
; 181 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[163]int b=0;
; 183 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[164]signed int t = 0;
; 185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[165]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[166]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 189 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[167]do
;--- end asm ---
	tst	1,s	; d
	lbne	L26	;
	clr	3,s	; t
	bra	L38	;
L33:
;----- asm -----
; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[179]if (vec_joy_1_y > 0) {t = 5; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.255
	ble	L34	;
	ldb	#5	;,
	stb	3,s	;, t
L34:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (vec_joy_1_y < 0) {t = 6; b=1;}
;--- end asm ---
	tst	,s	; Vec_Joy_1_Y.255
	lblt	L51	;
L35:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
;--- end asm ---
	tst	5,s	; temp.248
	bne	L36	;
	tst	6,s	; Vec_Joy_1_X.254
	bne	L36	;
	tst	,s	; Vec_Joy_1_Y.255
	bne	L36	;
	tst	3,s	; t
	lbne	L37	;
L36:
;----- asm -----
; 219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[185]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[187]while (1);
;--- end asm ---
L38:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]if (d!=0) localtimer--;
; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[171]if (localtimer == 0) {t = 0; break;}
;--- end asm ---
	tst	_localTimer	; localTimer
	lbeq	L27	;
;----- asm -----
; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (button_1_4_pressed()) {t = 4; b=1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	5,s	;, temp.248
	bitb	#8	;,
	beq	L28	;
	ldb	#4	;,
	stb	3,s	;, t
L28:
;----- asm -----
; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[173]if (button_1_3_pressed()) {t = 3; b=1;}
;--- end asm ---
	ldb	#4	; tmp38,
	andb	5,s	; tmp38, temp.248
	beq	L29	;
	ldb	#3	;,
	stb	3,s	;, t
L29:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[174]if (button_1_2_pressed()) {t = 2; b=1;}
;--- end asm ---
	ldb	#2	; tmp39,
	andb	5,s	; tmp39, temp.248
	beq	L30	;
	ldb	#2	;,
	stb	3,s	;, t
L30:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[175]if (button_1_1_pressed()) {t = 1; b=1;}
;--- end asm ---
	ldb	#1	; tmp40,
	andb	5,s	; tmp40, temp.248
	beq	L31	;
	ldb	#1	;,
	stb	3,s	;, t
L31:
;----- asm -----
; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[177]if (vec_joy_1_x > 0) {t = 8; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	6,s	;, Vec_Joy_1_X.254
	ble	L32	;
	ldb	#8	;,
	stb	3,s	;, t
L32:
;----- asm -----
; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[178]if (vec_joy_1_x < 0) {t = 7; b=1;}
;--- end asm ---
	tst	6,s	; Vec_Joy_1_X.254
	lbge	L33	;
	ldb	#7	;,
	stb	3,s	;, t
	lbra	L33	;
L51:
	ldb	#6	;,
	stb	3,s	;, t
	lbra	L35	;
L27:
	clr	3,s	; t
L37:
;----- asm -----
; 224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[188]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 226 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[189]if (t == 0) return d;
;--- end asm ---
	tst	3,s	; t
	beq	L49	;
;----- asm -----
; 228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[190]return t;
;--- end asm ---
	ldb	3,s	;, t
	stb	1,s	;, d
L49:
	ldb	1,s	;, d
	leas	7,s	;,,
	rts
L26:
	clr	3,s	; t
	bra	L48	;
L44:
;----- asm -----
; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[179]if (vec_joy_1_y > 0) {t = 5; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	,s	;, Vec_Joy_1_Y.9
	ble	L45	;
	ldb	#5	;,
	stb	3,s	;, t
L45:
;----- asm -----
; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[180]if (vec_joy_1_y < 0) {t = 6; b=1;}
;--- end asm ---
	tst	,s	; Vec_Joy_1_Y.9
	lblt	L52	;
L46:
;----- asm -----
; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[183]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
;--- end asm ---
	tst	4,s	; D.4735
	bne	L47	;
	tst	2,s	; Vec_Joy_1_X.8
	bne	L47	;
	tst	,s	; Vec_Joy_1_Y.9
	bne	L47	;
	tst	3,s	; t
	lbne	L37	;
L47:
;----- asm -----
; 219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[185]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[187]while (1);
;--- end asm ---
L48:
;----- asm -----
; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[169]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.7, localTimer
;----- asm -----
; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[171]if (localtimer == 0) {t = 0; break;}
;--- end asm ---
	tstb	; localTimer.7
	lbeq	L27	;
;----- asm -----
; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[172]if (button_1_4_pressed()) {t = 4; b=1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	4,s	;, D.4735
	bitb	#8	;,
	beq	L39	;
	ldb	#4	;,
	stb	3,s	;, t
L39:
;----- asm -----
; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[173]if (button_1_3_pressed()) {t = 3; b=1;}
;--- end asm ---
	ldb	#4	; tmp42,
	andb	4,s	; tmp42, D.4735
	beq	L40	;
	ldb	#3	;,
	stb	3,s	;, t
L40:
;----- asm -----
; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[174]if (button_1_2_pressed()) {t = 2; b=1;}
;--- end asm ---
	ldb	#2	; tmp43,
	andb	4,s	; tmp43, D.4735
	beq	L41	;
	ldb	#2	;,
	stb	3,s	;, t
L41:
;----- asm -----
; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[175]if (button_1_1_pressed()) {t = 1; b=1;}
;--- end asm ---
	ldb	#1	; tmp44,
	andb	4,s	; tmp44, D.4735
	beq	L42	;
	ldb	#1	;,
	stb	3,s	;, t
L42:
;----- asm -----
; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[177]if (vec_joy_1_x > 0) {t = 8; b=1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	2,s	;, Vec_Joy_1_X.8
	ble	L43	;
	ldb	#8	;,
	stb	3,s	;, t
L43:
;----- asm -----
; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[178]if (vec_joy_1_x < 0) {t = 7; b=1;}
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.8
	lbge	L44	;
	ldb	#7	;,
	stb	3,s	;, t
	lbra	L44	;
L52:
	ldb	#6	;,
	stb	3,s	;, t
	lbra	L46	;
LC95:
	.byte	69,78,84,69,82,32,78,85
	.byte	77,66,69,82,58,-128,0
LC96:
	.ascii	"( MAX: % )\0"
LC97:
	.ascii	"( MIN: % )\0"
LC98:
	.byte	32,94,32,-128,0
	.globl	_inputNumber
_inputNumber:
	pshs	y,u	;
	leas	-42,s	;,,
	stx	23,s	; message, message
;----- asm -----
; 238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[199]unsigned long long int ulltmp = (unsigned long long int) min;
; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[200]signed int maxdigit = 4;
; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[201]char *ascii = stringbuffer12;
; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[202]extern char * _ltoa(unsigned long n, char *pointer, int zerotospaces);
; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[203]unsigned int len = vstrlen(message)>>1;
;--- end asm ---
	jsr	_vstrlen
	stb	31,s	;, len
	lsr	31,s	; len
;----- asm -----
; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[206]_ltoa(min, ascii,0);
;--- end asm ---
	ldy	#_stringBuffer12	; tmp49,
	pshs	y	; tmp49
	clrb	;
	ldx	50,s	;, min
	jsr	__ltoa
;----- asm -----
; 252 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[207]if (*(ascii+0) == ' ') *(ascii+0) = '0';
;--- end asm ---
	leas	2,s	;,,
	ldb	,y	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L87	;
L54:
;----- asm -----
; 254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[208]if (*(ascii+1) == ' ') *(ascii+1) = '0';
;--- end asm ---
	ldb	_stringBuffer12+1	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L88	;
L55:
;----- asm -----
; 256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[209]if (*(ascii+2) == ' ') *(ascii+2) = '0';
;--- end asm ---
	ldb	_stringBuffer12+2	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L89	;
L56:
;----- asm -----
; 258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[210]if (*(ascii+3) == ' ') *(ascii+3) = '0';
;--- end asm ---
	ldb	_stringBuffer12+3	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L90	;
L57:
;----- asm -----
; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[211]if (*(ascii+4) == ' ') *(ascii+4) = '0';
;--- end asm ---
	ldb	_stringBuffer12+4	;, stringBuffer12
	cmpb	#32	;cmpqi:	;,
	lbeq	L91	;
L58:
;----- asm -----
; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[212]*(ascii+5) = '�';
;--- end asm ---
	ldb	#-128	;,
	stb	_stringBuffer12+5	;, stringBuffer12
;----- asm -----
; 265 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[214]if (max<10000) {ascii++; maxdigit = 3;}
;--- end asm ---
	ldx	50,s	;, max
	cmpx	#9999	;cmphi:	;,
	lbhi	L59	;
	ldb	#3	;,
	stb	30,s	;, maxDigit
	ldu	#_stringBuffer12+1	; ascii,
	ldx	#3	;,
	stx	33,s	;, prephitmp.271
L60:
;----- asm -----
; 267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[215]if (max<1000) {ascii++; maxdigit = 2;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#999	;cmphi:	;,
	bhi	L61	;
	leau	1,u	; ascii,, ascii
	ldb	#2	;,
	stb	30,s	;, maxDigit
	ldx	#2	;,
	stx	33,s	;, prephitmp.271
L61:
;----- asm -----
; 269 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[216]if (max<100) {ascii++; maxdigit = 1;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#99	;cmphi:	;,
	bhi	L62	;
	leau	1,u	; ascii,, ascii
	ldb	#1	;,
	stb	30,s	;, maxDigit
	ldx	#1	;,
	stx	33,s	;, prephitmp.271
L62:
;----- asm -----
; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[217]if (max<10) {ascii++; maxdigit = 0;}
;--- end asm ---
	ldd	50,s	;, max
	cmpd	#9	;cmphi:	;,
	bhi	L63	;
	leau	1,u	; ascii,, ascii
	clr	30,s	; maxDigit
	ldx	#0	;,
	stx	33,s	;, prephitmp.271
L63:
;----- asm -----
; 274 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[219]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[221]int lastdir = 0;
; 279 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[222]do
;--- end asm ---
	ldd	33,s	;, prephitmp.271
	leax	d,u	;,, ascii
	stx	35,s	;, pretmp.272
	ldd	50,s	;, max
	std	3,s	;,
	ldx	48,s	;, min
	stx	5,s	;,
	ldb	31,s	;, len
	lda	#12	;umulqihi3	;
	mul
	std	,s	;,
	negb	;
	stb	25,s	;, D.3416
	clr	32,s	; lastDir
	lbra	L83	;
L85:
;----- asm -----
; 366 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[277]_ltoa(max, stringbuffer6,0);
;--- end asm ---
	ldy	#_stringBuffer6	; tmp114,
	pshs	y	; tmp114
	clrb	;
	ldx	52,s	;, max
	jsr	__ltoa
;----- asm -----
; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[278]vstrcpy(stringbuffer12, stringbuffer6);
;--- end asm ---
	pshs	y	; tmp114
	ldx	#_stringBuffer12	;,
	jsr	_vstrcpy
	leas	4,s	;,,
L75:
;----- asm -----
; 371 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[280]if (ulltmp < ull(min) )
;--- end asm ---
	ldd	26,s	;, ulltmp
	cmpd	#0	;cmphi:(R)	;,
	lbhs	L92	;
L86:
;----- asm -----
; 374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[282]_ltoa(min, stringbuffer6,0);
;--- end asm ---
	ldy	#_stringBuffer6	; tmp116,
	pshs	y	; tmp116
	clrb	;
	ldx	50,s	;, min
	jsr	__ltoa
;----- asm -----
; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[283]vstrcpy(stringbuffer12, stringbuffer6);
;--- end asm ---
	pshs	y	; tmp116
	ldx	#_stringBuffer12	;,
	jsr	_vstrcpy
	leas	4,s	;,,
L77:
;----- asm -----
; 381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[287]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
;--- end asm ---
	ldb	#1	;,
	stb	32,s	;, lastDir
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	bne	L80	;
	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
	beq	L81	;
	ldb	#1	; Vec_Joy_1_Y,
L81:
	stb	32,s	; Vec_Joy_1_Y, lastDir
L80:
;----- asm -----
; 383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[288]if (buttons_pressed()) break;
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	lbne	L82	;
;----- asm -----
; 385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[290]while (1);
;--- end asm ---
L83:
;----- asm -----
; 282 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[224]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[225]joy_digital();
;--- end asm ---
	jsr	___Joy_Digital
;----- asm -----
; 286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[226]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[227]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[228]intensity_5f();
;--- end asm ---
	jsr	___Intensity_5F
;----- asm -----
; 292 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[229]dp_via_t1_cnt_lo  = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 296 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[232]if (message != 0)
;--- end asm ---
	ldx	23,s	;, message
	beq	L64	;
;----- asm -----
; 299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[234]print_str_d(0x60,-(len*12), message);reset0ref();
;--- end asm ---
	ldb	#96	;,
	stb	,-s	;,
	ldx	24,s	;, message
	ldb	26,s	;, D.3416
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
	leas	1,s	;,,
L64:
;----- asm -----
; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[237]print_str_d(0x20,-0x50, ); reset0ref();
;--- end asm ---
	ldb	#32	;,
	stb	,-s	;,
	ldx	#LC95	;,
	ldb	#-80	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[239]tmp2 = vec_text_width;
;--- end asm ---
	ldb	_Vec_Text_Width	;, Vec_Text_Width
	stb	_tmp2	;, tmp2
;----- asm -----
; 310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[242]vec_text_width = 0x3f;
;--- end asm ---
	ldb	#63	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[243]_fl(, max);
;--- end asm ---
	ldx	51,s	;, max
	pshs	x	;
	ldx	#LC96	;,
	jsr	__fl
;----- asm -----
; 314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[244]print_str_d(0x10,-0x48, stringbuffer40);reset0ref();
;--- end asm ---
	ldb	#16	;,
	stb	,-s	;,
	ldx	#_stringBuffer40	;,
	ldb	#-72	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[245]_fl(, min);
;--- end asm ---
	ldx	52,s	;, min
	pshs	x	;
	ldx	#LC97	;,
	jsr	__fl
;----- asm -----
; 318 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[246]print_str_d(0x00,-0x48, stringbuffer40);reset0ref();
;--- end asm ---
	clr	,-s	;
	ldx	#_stringBuffer40	;,
	ldb	#-72	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[248]vec_text_width = 0x7f;
;--- end asm ---
	ldb	#127	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[251]print_str_d(-0x20,-0x30, ascii);reset0ref();
;--- end asm ---
	ldb	#-32	;,
	stb	,-s	;,
	leax	,u	;, ascii
	ldb	#-48	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[254]print_str_d(-0x2b,-0x30-35+((maxdigit+1)-tmp )*0x12, );reset0ref();
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
	ldx	#LC98	;,
	ldb	1,s	;,
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[255]vec_text_width = tmp2;
;--- end asm ---
	ldb	_tmp2	;, tmp2
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 334 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[257]if ((vec_joy_1_x > 0) && (!lastdir)) if (tmp>0) tmp--;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	3,s	;, Vec_Joy_1_X.13
	leas	1,s	;,,
	tstb	;
	ble	L65	;
	tst	32,s	; lastDir
	bne	L65	;
	ldb	_tmp	;, tmp
	stb	37,s	;, tmp.281
	ble	L65	;
	decb	;
	stb	_tmp	;, tmp
L65:
;----- asm -----
; 336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[258]if ((vec_joy_1_x < 0) && (!lastdir)) if (tmp<maxdigit) tmp++;
;--- end asm ---
	tst	2,s	; Vec_Joy_1_X.13
	lblt	L93	;
L66:
;----- asm -----
; 339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[260]if ((vec_joy_1_y > 0) && (!lastdir))
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L67	;
	tst	32,s	; lastDir
	bne	L67	;
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.271
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; D.3431,, ascii
	inc	,x	;* D.3431
L67:
;----- asm -----
; 342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[262]if ((vec_joy_1_y < 0) && (!lastdir))
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	lblt	L94	;
L68:
;----- asm -----
; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[265]if (*(ascii+maxdigit-tmp)>'9') *(ascii+maxdigit-tmp) = '0';
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.271
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.293,, ascii
	ldb	,x	;,* temp.293
	cmpb	#57	;cmpqi:	;,
	bls	L69	;
	ldb	#48	;,
	stb	,x	;,* temp.293
L69:
;----- asm -----
; 348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[266]if (*(ascii+maxdigit-tmp)<'0') *(ascii+maxdigit-tmp) = '9';
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.271
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.298,, ascii
	ldb	,x	;,* temp.298
	cmpb	#47	;cmpqi:	;,
	bhi	L70	;
	ldb	#57	;,
	stb	,x	;,* temp.298
L70:
;----- asm -----
; 352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[269]ulltmp = ull(*(ascii+maxdigit)-'0');
;--- end asm ---
	ldx	35,s	;, pretmp.272
	ldb	,x	; tmp76,
	addb	#-48	; tmp76,
	clra		;zero_extendqihi: R:b -> R:d	; tmp76,
	std	28,s	;, ulltmp
	ldd	#0	;,
	std	26,s	;, ulltmp
;----- asm -----
; 354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[270]if (max>=10) ulltmp += ull(*(ascii+(maxdigit-1))-'0') * ull(10);
;--- end asm ---
	ldx	50,s	;, max
	cmpx	#9	;cmphi:	;,
	bls	L71	;
	ldd	33,s	;, prephitmp.271
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
L71:
;----- asm -----
; 356 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[271]if (max>=100) ulltmp += ull(*(ascii+(maxdigit-2))-'0') * ull(100);
;--- end asm ---
	cmpx	#99	;cmphi:	;,
	bls	L72	;
	ldd	33,s	;, prephitmp.271
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
L72:
;----- asm -----
; 358 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[272]if (max>=1000) ulltmp += ull(*(ascii+(maxdigit-3))-'0') * ull(1000);
;--- end asm ---
	cmpx	#999	;cmphi:	;,
	bls	L73	;
	ldd	33,s	;, prephitmp.271
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
L73:
;----- asm -----
; 360 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[273]if (max>=10000) ulltmp += ull(*(ascii+(maxdigit-4))-'0') * ull(10000);
;--- end asm ---
	cmpx	#9999	;cmphi:	;,
	bls	L74	;
	ldd	33,s	;, prephitmp.271
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
L74:
;----- asm -----
; 363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[275]if (ulltmp > ull(max) )
;--- end asm ---
	ldx	26,s	;, ulltmp
	cmpx	#0	;cmphi:	;,
	lbhi	L85	;
	lbne	L75	;
	ldx	28,s	;, ulltmp
	cmpx	3,s	;cmphi:	;,
	lbls	L75	;
	lbra	L85	;
L92:
	cmpd	#0	;cmphi:(R)	; tmp1,
	lbne	L77	;
	ldd	28,s	;, ulltmp
	cmpd	5,s	;cmphi:(R)	;,
	lbhs	L77	;
	lbra	L86	;
L93:
	tst	32,s	; lastDir
	lbne	L66	;
	ldb	_tmp	; tmp.282, tmp
	cmpb	30,s	;cmpqi:(R)	; tmp.282, maxDigit
	lbge	L66	;
	incb	; tmp.282
	stb	_tmp	; tmp.282, tmp
	lbra	L66	;
L94:
	tst	32,s	; lastDir
	lbne	L68	;
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	33,s	;, prephitmp.271
	pshs	x	;subhi: R:d -= R:x	; tmp,
	subd	,s++	;
	leax	d,u	; temp.288,, ascii
	dec	,x	;* temp.288
	lbra	L68	;
L82:
;----- asm -----
; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[291]return (unsigned long int)ulltmp;
;--- end asm ---
	ldx	28,s	;, ulltmp
	leas	42,s	;,,
	puls	y,u,pc	;
L59:
	ldb	#4	;,
	stb	30,s	;, maxDigit
	ldu	#_stringBuffer12	; ascii,
	ldx	#4	;,
	stx	33,s	;, prephitmp.271
	lbra	L60	;
L87:
	ldb	#48	;,
	stb	_stringBuffer12	;, stringBuffer12
	lbra	L54	;
L91:
	ldb	#48	;,
	stb	_stringBuffer12+4	;, stringBuffer12
	lbra	L58	;
L90:
	ldb	#48	;,
	stb	_stringBuffer12+3	;, stringBuffer12
	lbra	L57	;
L89:
	ldb	#48	;,
	stb	_stringBuffer12+2	;, stringBuffer12
	lbra	L56	;
L88:
	ldb	#48	;,
	stb	_stringBuffer12+1	;, stringBuffer12
	lbra	L55	;
LC99:
	.ascii	"YOU HAVE NOT BEEN NOTICED...\0"
LC100:
	.ascii	"<4> TO APPROACH:\0"
LC101:
	.ascii	"YOU ENCOUNTER A LVL % %\0"
LC102:
	.ascii	"% LIKES YOUR BODY\0"
LC103:
	.ascii	"HE HEALS YOU TO FULL STRENGTH\0"
LC104:
	.ascii	"% MAKES A QUICK MOVE\0"
LC105:
	.ascii	"YOU HAVE NOTHING HE WANTS\0"
LC106:
	.ascii	"TO STEAL!\0"
LC107:
	.ascii	"HE STEALS YOUR %\0"
LC108:
	.ascii	"HE STEALS A %\0"
LC109:
	.ascii	"THE % LIKES YOU!\0"
LC110:
	.ascii	"HE GIVES YOU A %+%\0"
LC111:
	.ascii	"FIGHT(4), CAST(3), EVADE(1)\0"
LC112:
	.ascii	"WAIT\0"
LC113:
	.ascii	"EVADE\0"
LC114:
	.ascii	"YOU'RE ROOTED TO THE SPOT\0"
LC115:
	.ascii	"NORTH\0"
LC116:
	.ascii	"SOUTH\0"
LC117:
	.ascii	"WEST\0"
LC118:
	.ascii	"EAST\0"
LC119:
	.ascii	"FIGHT\0"
LC120:
	.ascii	"YOU MISSED...\0"
LC121:
	.ascii	"YOU DO % POINTS DAMAGE\0"
LC122:
	.ascii	"IT DIED...\0"
LC123:
	.ascii	"YOU GAIN % EXPERIENCE POINTS\0"
LC124:
	.ascii	"IT MISSED...\0"
LC125:
	.ascii	"IT DOES % POINTS DAMAGE\0"
LC126:
	.ascii	"IT DRAINS A LEVEL!!!\0"
LC127:
	.ascii	"YOU ARE PARALIZED!!!\0"
LC128:
	.ascii	"IT USES IT'S SWORD!!!\0"
LC129:
	.ascii	"IT USES IT'S WHIP!!\0"
LC130:
	.ascii	"THE DRAGON BREATHS FIRE!!!\0"
LC131:
	.ascii	"YOU PARTIALLY DODGE IT\0"
LC132:
	.ascii	"YOU BURN FOR % POINTS DAMAGE\0"
LC133:
	.ascii	"THE % IS NOT AMUSED\0"
	.globl	_handleEncounters
_handleEncounters:
	pshs	u	;
	leas	-20,s	;,,
;----- asm -----
; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[303]if (forcemonster == return_spanw_monster)
;--- end asm ---
	cmpb	#30	;cmpqi:	; forceMonster,
	lbeq	L212	;
;----- asm -----
; 409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[309]if (forcemonster == return_monster_is_set)
;--- end asm ---
	cmpb	#31	;cmpqi:	; forceMonster,
	lbne	L98	;
;----- asm -----
; 414 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[313]goto monsterforced;
;--- end asm ---
L99:
;----- asm -----
; 505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[384]un = 0;
;--- end asm ---
	clr	_un	; un
;----- asm -----
; 509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[387]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
;--- end asm ---
	ldb	_m	; m.336, m
	cmpb	#2	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#4	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#7	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#9	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#12	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#16	;cmpqi:	; m.336,
	beq	L106	;
	cmpb	#17	;cmpqi:	; m.336,
	bne	L107	;
L106:
	ldb	#1	;,
	stb	_un	;, un
L107:
;----- asm -----
; 515 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[392]#ifdef atari_version
; 517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[393]if ( (sf[astral_walk] >0) && (un == 1) && (randmax(100)<20) )
;--- end asm ---
	tst	_sf+7	; sf
	beq	L108	;
	ldb	_un	;, un
	cmpb	#1	;cmpqi:	;,
	lbeq	L213	;
L108:
;----- asm -----
; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[395]#else
; 535 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[407]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 537 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[408]_fsi2_s(, ml, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp108
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldb	_ml	;, ml
	ldx	#LC101	;,
	jsr	__fsi2_s
;----- asm -----
; 539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[409]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[415]#ifndef atari_version
; 559 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[425]l=ml;
;--- end asm ---
	ldb	_ml	;, ml
	stb	_l	;, l
;----- asm -----
; 561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[426]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 566 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[430]if (randmax(100)>94)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	leas	2,s	;,,
	cmpb	#94	;cmpqi:	; D.3541,
	lbhi	L214	;
;----- asm -----
; 592 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[450]if (m == elf)
;--- end asm ---
	ldb	_m	; m.340, m
	cmpb	#8	;cmpqi:	; m.340,
	lbeq	L215	;
	cmpb	#3	;cmpqi:	; m.340,
	lbeq	L216	;
L114:
	ldb	_m	;, m
	cmpb	#19	;cmpqi:	;,
	lbeq	L217	;
L111:
;----- asm -----
; 622 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[475]if (tmp == 1)
;--- end asm ---
	ldb	_tmp	;, tmp
	stb	13,s	;, tmp.28
	cmpb	#1	;cmpqi:	;,
	lbeq	L218	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L219	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L220	;
L133:
;----- asm -----
; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[580]if (randmax(100) > 50+ s[dex]*2) goto label3300;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	15,s	;, D.3566
	ldb	_s+4	; tmp205, s
	addb	#25	; tmp205,
	aslb	; tmp205
	cmpb	15,s	;cmpqi:(R)	; tmp205, D.3566
	lblo	L208	;
	lbra	L245	;
L192:
;----- asm -----
; 1268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[919]if (m == specter) {dr = 2; goto label3305;}
;--- end asm ---
	cmpb	#16	;cmpqi:	; m.410,
	lbeq	L222	;
;----- asm -----
; 1273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[923]if (m == vampire) {dr = 3; goto label3305;}
;--- end asm ---
	cmpb	#17	;cmpqi:	; m.410,
	lbeq	L223	;
;----- asm -----
; 1278 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[927]if (m == ghoul) {pa = 5; goto label3305;}
;--- end asm ---
	cmpb	#9	;cmpqi:	; m.410,
	lbeq	L224	;
;----- asm -----
; 1287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[935]if (m == demon)
;--- end asm ---
	cmpb	#18	;cmpqi:	; m.410,
	lbeq	L225	;
;----- asm -----
; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[961]if (m == dragon)
;--- end asm ---
	cmpb	#19	;cmpqi:	; m.410,
	lbeq	L226	;
L199:
;----- asm -----
; 1375 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[996]goto label3305;
;--- end asm ---
L185:
;----- asm -----
; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[850]ltmp = (signed long int)(randmax(20) + ml -inventory[armor] - inventory[shield] + mb);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	17,s	;, D.3644
	ldb	_mb	;, mb
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	subd	_inventory+4	;subhi: R:d -= _inventory+4	; tmp259, inventory
	subd	_inventory+2	;subhi: R:d -= _inventory+2	; tmp259, inventory
	tfr	d,x	; tmp259, tmp261
	ldb	17,s	;, D.3644
	addb	_ml	;, ml
	clra		;zero_extendqihi: R:b -> R:d	;,
; Applied peep: 4-2b2 (tfr exg 1=1, 2=2, 2. exg 1=1, 2=2)
	tfr	d,u	;, tmp263
	leax	d,x	; ltmp.64,, ltmp.64
; ORG>	tfr	d,u	;, tmp263
; ORG>	exg	d,u	;, tmp263
; ORG>	leax	d,x	; ltmp.64,, ltmp.64
; ORG>	exg	d,u	;, tmp263
	stx	_ltmp	; ltmp.64, ltmp
;----- asm -----
; 1178 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[854]if ((m>=specter) && (m<=vampire))
;--- end asm ---
	ldb	_m	; tmp264, m
	addb	#-16	; tmp264,
	cmpb	#1	;cmpqi:	; tmp264,
	lbls	L227	;
L186:
;----- asm -----
; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[862]if (ltmp < 10)
;--- end asm ---
	ldx	_ltmp	;, ltmp
	cmpx	#9	;cmphi:	;,
	lble	L228	;
;----- asm -----
; 1199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[870]ltmp = (signed long int )  (randmax(8) + randmax(ml*2) +1 ) *db;
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	stb	18,s	;, D.3658
	ldb	_ml	; tmp266, ml
	aslb	; tmp266
	jsr	_RandMax
	addb	18,s	; D.3660, D.3658
	incb	; D.3660
	lda	_db	;umulqihi3	; db
	mul
	std	_ltmp	; ltmp.67, ltmp
;----- asm -----
; 1201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[871]_fl_s(, (unsigned int)ltmp);
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; ltmp.67
	ldx	#LC125	;,
	jsr	__fl_s
;----- asm -----
; 1203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[872]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[876]label3320:
;--- end asm ---
	leas	2,s	;,,
L188:
;----- asm -----
; 1210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[877]ch = ch - ltmp;
;--- end asm ---
	ldd	_ch	; ch, ch
	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.69, ltmp
	std	_ch	; ch.69, ch
;----- asm -----
; 1212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[878]if (ch <1)
;--- end asm ---
	cmpd	#0	; ch.69
	lble	L229	;
;----- asm -----
; 1219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[883]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[887]if ((randmax(10) < dr) && (sf[protection_from_evil]) !=0)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	_dr	;cmpqi:	; D.3670, dr
	bhs	L190	;
	tst	_sf+3	; sf
	lbne	L230	;
L190:
;----- asm -----
; 1252 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[908]if (randmax(10) >= pa) goto fightstart;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	_pa	;cmpqi:	; D.3673, pa
	lbhs	L210	;
;----- asm -----
; 1254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[909]printmessage();
;--- end asm ---
	ldx	#LC127	;,
	jsr	_printMessage
;----- asm -----
; 1256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[910]goto label3300;
;--- end asm ---
L208:
;----- asm -----
; 1154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[837]db = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_db	;, db
;----- asm -----
; 1156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[838]pa = 0;
;--- end asm ---
	clr	_pa	; pa
;----- asm -----
; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[839]dr = 0;
;--- end asm ---
	clr	_dr	; dr
;----- asm -----
; 1160 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[840]mb = 0;
;--- end asm ---
	clr	_mb	; mb
;----- asm -----
; 1162 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[841]goto label3330;
L184:
; 1263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[915]if (m == wraith) {dr = 1; goto label3305;}
;--- end asm ---
	ldb	_m	; m.410, m
	cmpb	#12	;cmpqi:	; m.410,
	lbne	L192	;
	ldb	#1	;,
	stb	_dr	;, dr
	lbra	L185	;
L98:
;----- asm -----
; 419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[317]if (randmax(100)>30) return return_treasure;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#30	;cmpqi:	; D.3507,
	lbhi	L100	;
;----- asm -----
; 426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[323]#ifdef atari_version
; 428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[324]if (sf[timestop]>0) return return_treasure;
;--- end asm ---
	tst	_sf+8	; sf
	bne	L100	;
;----- asm -----
; 430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[325]#endif
; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[329]if ( (sf[invisible]>0) && (randmax(100)>20) ) return return_treasure;
;--- end asm ---
	tst	_sf+5	; sf
	bne	L231	;
L101:
;----- asm -----
; 442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[335]monsteragain:
;--- end asm ---
L205:
;----- asm -----
; 444 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[336]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3512, m
;----- asm -----
; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[340]if ((sf[fear]>0) && (m<5)) goto monsteragain;
;--- end asm ---
	tst	_sf+6	; sf
	beq	L102	;
	cmpb	#4	;cmpqi:	; D.3512,
	ble	L205	;
L102:
;----- asm -----
; 452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[342]if ( (unsigned long int)(randmax(20)+1)  <=  inventory[elven_cloak] )
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	incb	; D.3516
	clra		;zero_extendqihi: R:b -> R:d	; D.3516, tmp98
	cmpd	_inventory+6	;cmphi:	; tmp98, inventory
	lbls	L232	;
L104:
;----- asm -----
; 474 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[358]monsterset:
;--- end asm ---
	lbra	L97	;
L231:
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#20	;cmpqi:	; D.3511,
	bls	L101	;
L100:
	ldb	#3	;,
	stb	9,s	;, D.3508
L105:
	ldb	9,s	; <result>, D.3508
L95:
	leas	20,s	;,,
	puls	u,pc	;
L150:
;----- asm -----
; 1032 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[752]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1034 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[753]if (displaystatuspage())
;--- end asm ---
	jsr	_displayStatusPage
	tstb	; D.3605
	lbne	L233	;
;----- asm -----
; 1042 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[759]goto fightstart;
;--- end asm ---
L210:
;----- asm -----
; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[584]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 788 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[589]printmessage();
;--- end asm ---
	ldx	#LC111	;,
	jsr	_printMessage
;----- asm -----
; 790 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[590]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[591]tmp2 = 0;
;--- end asm ---
	clr	_tmp2	; tmp2
;----- asm -----
; 794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[592]while(1)
;--- end asm ---
	lbra	L146	;
L138:
;----- asm -----
; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[601]if (vec_joy_1_y>0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	ble	L139	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
L139:
;----- asm -----
; 811 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[602]if (vec_joy_1_y<0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	lblt	L234	;
L140:
;----- asm -----
; 814 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[604]if (button_1_4_pressed()) tmp2 = 4;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L141	;
	ldb	#4	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L141:
;----- asm -----
; 816 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[605]if (button_1_3_pressed()) tmp2 = 3;
;--- end asm ---
	bitb	#4	;,
	beq	L142	;
	ldb	#3	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L142:
;----- asm -----
; 818 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[606]if (button_1_2_pressed()) tmp2 = 2;
;--- end asm ---
	bitb	#2	;,
	beq	L143	;
	ldb	#2	;,
	stb	_tmp2	;, tmp2
	ldb	_Vec_Buttons	;, Vec_Buttons
L143:
;----- asm -----
; 820 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[607]if (button_1_1_pressed()) tmp2 = 1;
;--- end asm ---
	bitb	#1	;,
	beq	L144	;
	ldb	#1	;,
	stb	_tmp2	;, tmp2
L144:
;----- asm -----
; 824 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[610]if ((!buttons_pressed()) && (tmp2))
;--- end asm ---
	tst	_Vec_Buttons	; Vec_Buttons
	bne	L145	;
	tst	_tmp2	; tmp2
	lbne	L136	;
L145:
;----- asm -----
; 828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[613]localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
L146:
;----- asm -----
; 797 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[594]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[595]if (localtimer == 0)
;--- end asm ---
	tst	_localTimer	; localTimer
	beq	L235	;
;----- asm -----
; 805 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[599]if (vec_joy_1_x>0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	ble	L137	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
L137:
;----- asm -----
; 807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[600]if (vec_joy_1_x<0) tmp2 = 5;
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	lbge	L138	;
	ldb	#5	;,
	stb	_tmp2	;, tmp2
	lbra	L138	;
L234:
	ldb	#5	;,
	stb	_tmp2	;, tmp2
	lbra	L140	;
L227:
;----- asm -----
; 1181 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[856]if (sf[protection_from_evil] > 0) ltmp = ltmp -6;
;--- end asm ---
	tst	_sf+3	; sf
	lbeq	L186	;
	leax	-6,x	;,, ltmp.64
	stx	_ltmp	;, ltmp
	lbra	L186	;
L235:
;----- asm -----
; 802 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[597]break;
;--- end asm ---
L136:
;----- asm -----
; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[616]db = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_db	;, db
;----- asm -----
; 834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[617]pa = 0;
;--- end asm ---
	clr	_pa	; pa
;----- asm -----
; 836 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[618]dr = 0;
;--- end asm ---
	clr	_dr	; dr
;----- asm -----
; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[619]mb = 0;
;--- end asm ---
	clr	_mb	; mb
;----- asm -----
; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[620]switch (tmp2)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	cmpb	#4	;cmpqi:	;,
	lbls	L236	;
;----- asm -----
; 1381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1000]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1001]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp285
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC133	;,
	jsr	__fs
;----- asm -----
; 1385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1002]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1003]goto fightstart;
;--- end asm ---
	leas	2,s	;,,
	lbra	L210	;
L222:
	ldb	#2	;,
	stb	_dr	;, dr
	lbra	L185	;
L230:
;----- asm -----
; 1231 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[893]printmessage();
;--- end asm ---
	ldx	#LC126	;,
	jsr	_printMessage
;----- asm -----
; 1233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[894]ex = ex >>1;
;--- end asm ---
	ldd	_ex	; tmp272, ex
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
	std	_ex+2	; tmp274, ex
	lsr	_ex	; ex
	ror	_ex+1	; ex
;----- asm -----
; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[896]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[897]if (ch==0)
;--- end asm ---
	ldx	_ch	; ch, ch
	lbeq	L237	;
;----- asm -----
; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[902]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
	lbra	L190	;
L223:
	ldb	#3	;,
	stb	_dr	;, dr
	lbra	L185	;
L236:
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp217
	jmp	[L153,x]	;, tmp217
L153:
	.word	L148
	.word	L149
	.word	L150
	.word	L151
	.word	L152
L224:
	ldb	#5	;,
	stb	_pa	;, pa
	lbra	L185	;
L212:
;----- asm -----
; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[306]goto monsterset;
;--- end asm ---
L97:
;----- asm -----
; 481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[364]ml = randmax(cz+1)*randmax(2+1) + 1;
;--- end asm ---
	ldb	_cz	; tmp100, cz
	incb	; tmp100
	jsr	_RandMax
	stb	10,s	;, D.3523
	ldb	#3	;,
	jsr	_RandMax
	lda	10,s	;umulqihi3	; D.3523
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp101
; ORG>	tfr	d,x	;, tmp101
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp101,
	incb	;
	stb	11,s	;, ml.21
	stb	_ml	;, ml
;----- asm -----
; 483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[365]ml = ml - randmax(ml);
;--- end asm ---
	jsr	_RandMax
	subb	11,s	; ml.23, ml.21
	negb	; ml.23
	stb	_ml	; ml.23, ml
;----- asm -----
; 494 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[375]mh = (signed long) randmax(ml*(unsigned int)m)+1;
;--- end asm ---
	lda	_m	;umulqihi3	; m
	mul
		;movlsbqihi: D->B
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3532, D.3532
	addd	#1; addhi3,3	; D.3532,
	std	_mh	; D.3532, mh
;----- asm -----
; 497 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[377]monsterforced:
;--- end asm ---
	lbra	L99	;
L152:
;----- asm -----
; 1068 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[779]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[780]printmessage();
;--- end asm ---
	ldx	#LC119	;,
	jsr	_printMessage
;----- asm -----
; 1072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[781]ltmp = randmax(20) + lv + (signed long int)inventory[sword] + s[str]/2;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	16,s	;, D.3607
	ldb	_s	; tmp234, s
	lsrb	; tmp234
	clra		;zero_extendqihi: R:b -> R:d	; tmp234, tmp235
	ldu	_inventory	;, inventory
	leax	d,u	; tmp237, tmp235,
	ldb	16,s	;, D.3607
	addb	_lv	;, lv
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	leax	d,x	; ltmp.51,, tmp237
	stx	_ltmp	; ltmp.51, ltmp
;----- asm -----
; 1074 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[782]if (sf[strength]>0) ltmp = ltmp +4;
;--- end asm ---
	tst	_sf	; sf
	beq	L179	;
	leax	4,x	;,, ltmp.51
	stx	_ltmp	;, ltmp
L179:
;----- asm -----
; 1078 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[785]if (ltmp <10)
;--- end asm ---
	cmpx	#9	;cmphi:	;,
	lbgt	L180	;
;----- asm -----
; 1081 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[787]printmessage();
;--- end asm ---
	ldx	#LC120	;,
	jsr	_printMessage
L181:
;----- asm -----
; 1152 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[836]label3300:
;--- end asm ---
	lbra	L208	;
L151:
;----- asm -----
; 1048 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[763]tmp2 = castspell(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_castSpell
	stb	2,s	;, tmp2.36
	stb	_tmp2	;, tmp2
;----- asm -----
; 1050 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[764]if (tmp2 == 1) goto label3300;
;--- end asm ---
	cmpb	#1	;cmpqi:	;,
	lbeq	L208	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L210	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L176	;
	cmpb	#4	;cmpqi:	;,
	lbeq	L157	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L177	;
	cmpb	#6	;cmpqi:	;,
	lbeq	L100	;
	ldb	#2	;,
	stb	9,s	;, D.3508
	ldb	2,s	;, tmp2.36
	cmpb	#7	;cmpqi:	;,
	lbeq	L105	;
;----- asm -----
; 1058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[771]break;
;--- end asm ---
	lbra	L95	;
L148:
;----- asm -----
; 846 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[624]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[625]printmessage();
;--- end asm ---
	ldx	#LC112	;,
	jsr	_printMessage
;----- asm -----
; 850 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[626]goto fightstart;
;--- end asm ---
	lbra	L210	;
L149:
;----- asm -----
; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[635]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 863 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[636]printmessage();
;--- end asm ---
	ldx	#LC113	;,
	jsr	_printMessage
;----- asm -----
; 865 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[637]tmp = (signed int)randmax(18) + 1;
;--- end asm ---
	ldb	#18	;,
	jsr	_RandMax
	incb	; tmp.38
	stb	_tmp	; tmp.38, tmp
;----- asm -----
; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[641]if ((unsigned int)tmp >= s[dex])
;--- end asm ---
	cmpb	_s+4	;cmpqi:	; tmp.38, s
	lblo	L155	;
;----- asm -----
; 873 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[643]cantevade:
;--- end asm ---
L156:
;----- asm -----
; 877 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[646]printmessage();
;--- end asm ---
	ldx	#LC114	;,
	jsr	_printMessage
;----- asm -----
; 879 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[647]pause(50);
;--- end asm ---
	ldb	#50	;,
	jsr	_pause
;----- asm -----
; 881 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[648]goto label3300;
;--- end asm ---
	lbra	L208	;
L214:
;----- asm -----
; 569 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[432]unsigned int t = randmax(91);
;--- end asm ---
	ldb	#91	;,
	jsr	_RandMax
;----- asm -----
; 571 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[433]if (t<30)
;--- end asm ---
	cmpb	#29	;cmpqi:	; t,
	lbhi	L110	;
;----- asm -----
; 574 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[435]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L225:
;----- asm -----
; 1290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[937]if (randmax(10)>6)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#6	;cmpqi:	; D.3675,
	lbls	L197	;
;----- asm -----
; 1293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[939]printmessage();
;--- end asm ---
	ldx	#LC128	;,
	jsr	_printMessage
;----- asm -----
; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[940]mb = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_mb	;, mb
;----- asm -----
; 1297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[941]db = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_db	;, db
L198:
;----- asm -----
; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[949]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[950]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1313 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[951]goto label3305;
;--- end asm ---
	lbra	L185	;
L220:
;----- asm -----
; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[551]tmp = (signed int) randmax(7);
;--- end asm ---
	ldb	#7	;,
	jsr	_RandMax
	stb	_tmp	; D.3559, tmp
;----- asm -----
; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[552]if (inventory[tmp] < (unsigned long int)ml)
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3559, tmp.32
	aslb	;
	rola	;
	tfr	d,x	; tmp.32, tmp176
	ldx	_inventory,x	; temp.357, inventory
	ldb	_ml	;, ml
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.3561
	pshs	d	;cmphi: R:d with R:x	; D.3561, temp.357
	cmpx	,s++	;cmphi:	; temp.357
	lbhs	L133	;
;----- asm -----
; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[556]unsigned long int c = (unsigned long int)ml - inventory[tmp];
; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[557]c = (unsigned long int) ( randmax((unsigned int)c) + (unsigned int)1);
;--- end asm ---
	pshs	x	;subhi: R:d -= R:x	; temp.357, tmp178
	subd	,s++	; tmp178
		;movlsbqihi: D->B
	jsr	_RandMax
	stb	14,s	;, D.3563
;----- asm -----
; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[558]inventory[tmp] = inventory[tmp]+c;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp181
	inc	14,s	; D.3563
	ldb	14,s	;, D.3563
	clra		;zero_extendqihi: R:b -> R:d	;,
	addd	_inventory,x; addhi3,3	;, inventory
	std	_inventory,x	;, inventory
;----- asm -----
; 750 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[562]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp191
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC109	;,
	jsr	__fs
;----- asm -----
; 752 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[563]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[567]_fsl_s(, items[tmp], inventory[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	2,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp196
	ldu	_inventory,x	;, inventory
	stu	,--s	;,
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC110	;,
	jsr	__fsl_s
;----- asm -----
; 759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[568]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[569]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 763 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[570]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 765 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[571]return return_treasure;
;--- end asm ---
	ldb	19,s	;, tmp.28
	stb	15,s	;, D.3508
	leas	6,s	;,,
	lbra	L105	;
L226:
;----- asm -----
; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[963]if (randmax(10)>3)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	cmpb	#3	;cmpqi:	; D.3676,
	lbls	L200	;
;----- asm -----
; 1330 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[965]mb = 5;
;--- end asm ---
	ldb	#5	;,
	stb	_mb	;, mb
;----- asm -----
; 1332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[966]db = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_db	;, db
	lbra	L199	;
L245:
;----- asm -----
; 778 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[582]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[583]fightstart:
;--- end asm ---
	lbra	L210	;
L110:
	cmpb	#59	;cmpqi:	; t,
	lbhi	L112	;
;----- asm -----
; 579 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[439]tmp = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L218:
;----- asm -----
; 625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[477]tmp = 1;
; 630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[481]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp117
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC102	;,
	jsr	__fs
;----- asm -----
; 632 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[482]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[483]printmessage();
;--- end asm ---
	ldx	#LC103	;,
	jsr	_printMessage
;----- asm -----
; 636 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[484]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 638 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[485]ch = (signed long int) hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[486]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	11,s	;, D.3508
	leas	2,s	;,,
	lbra	L105	;
L219:
;----- asm -----
; 648 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[493]_fs(, mo[m]);
;--- end asm ---
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp123
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC104	;,
	jsr	__fs
;----- asm -----
; 650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[494]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[495]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[497]tmp = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_tmp	;, tmp
;----- asm -----
; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[501]for (int i=0; i<10; i++)
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	leas	2,s	;,,
	ldx	_inventory	; inventory, inventory
	lbne	L238	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#1	; i,
	ldx	_inventory+2	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldx	_inventory+4	; inventory, inventory
	lbne	L239	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#3	; i,
	ldx	_inventory+6	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#4	; i,
	ldx	_inventory+8	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#5	; i,
	ldx	_inventory+10	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#6	; i,
	ldx	_inventory+12	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#7	; i,
	ldx	_inventory+14	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldb	#8	; i,
	ldx	_inventory+16	; inventory, inventory
	lbne	L118	;
;----- asm -----
; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[503]if (inventory[i] != 0)
;--- end asm ---
	ldx	_inventory+18	; inventory, inventory
	lbne	L240	;
L127:
;----- asm -----
; 672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[509]if (tmp==-1)
;--- end asm ---
	ldb	_tmp	;, tmp
	cmpb	#-1	;cmpqi:	;,
	lbeq	L241	;
;----- asm -----
; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[518]tmp=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_tmp	;, tmp
;----- asm -----
; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[519]do
;--- end asm ---
L130:
;----- asm -----
; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[521]tmp = (signed int) randmax(10);
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	stb	_tmp	; D.3554, tmp
;----- asm -----
; 693 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[522]if (inventory[tmp] == 0) tmp = -1;
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3554, tmp.31
	aslb	;
	rola	;
	tfr	d,x	; tmp.31, tmp148
	ldx	_inventory,x	; tmp150, inventory
	bne	L129	;
	ldb	#-1	;,
	stb	_tmp	;, tmp
L129:
;----- asm -----
; 695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[524]while (tmp == -1);
;--- end asm ---
	ldb	_tmp	; tmp.350, tmp
	cmpb	#-1	;cmpqi:	; tmp.350,
	beq	L130	;
;----- asm -----
; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[531]if (tmp <scroll_of_rescue)
;--- end asm ---
	cmpb	#6	;cmpqi:	; tmp.350,
	lble	L242	;
;----- asm -----
; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[539]_fs(,items[tmp]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; tmp.350, tmp.350
	aslb	;
	rola	;
	tfr	d,x	; tmp.350, tmp163
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC108	;,
	jsr	__fs
;----- asm -----
; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[540]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[541]inventory[tmp] -=1;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	2,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp168
	ldd	_inventory,x	;, inventory
	addd	#-1; addhi3,3	;,
	std	_inventory,x	;, inventory
	leas	2,s	;,,
L132:
;----- asm -----
; 723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[543]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[544]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[545]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L228:
;----- asm -----
; 1191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[864]printmessage();
;--- end asm ---
	ldx	#LC124	;,
	jsr	_printMessage
;----- asm -----
; 1193 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[865]goto fightstart;
;--- end asm ---
	lbra	L210	;
L229:
;----- asm -----
; 1215 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[880]return return_player_dead;
;--- end asm ---
	ldb	#2	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L213:
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#19	;cmpqi:	; D.3539,
	lbls	L205	;
	lbra	L108	;
L197:
;----- asm -----
; 1302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[945]printmessage();
;--- end asm ---
	ldx	#LC129	;,
	jsr	_printMessage
;----- asm -----
; 1304 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[946]mb = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_mb	;, mb
;----- asm -----
; 1306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[947]db = 2;
;--- end asm ---
	stb	_db	;, db
	lbra	L198	;
L180:
;----- asm -----
; 1090 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[795]ltmp = (signed long int) randmax(8);
;--- end asm ---
	ldb	#8	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3621, D.3621
	std	_ltmp	; D.3621, ltmp
;----- asm -----
; 1092 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[796]ltmp += (signed long int) randmax(lv*2) + (signed long int)inventory[sword] + 1;
;--- end asm ---
	ldb	_lv	; tmp242, lv
	aslb	; tmp242
	jsr	_RandMax
	ldu	_ltmp	;, ltmp
	leax	1,u	; tmp243,,
	exg	d,x	;, tmp245
	addd	_inventory; addhi3,3	;, inventory
	exg	d,x	;, tmp245
	abx
	stx	_ltmp	; ltmp.55, ltmp
;----- asm -----
; 1094 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[797]if (sf[strength]>0) ltmp = ltmp +5;
;--- end asm ---
	tst	_sf	; sf
	beq	L182	;
	leax	5,x	;,, ltmp.55
	stx	_ltmp	;, ltmp
L182:
;----- asm -----
; 1097 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[799]_fi_s(, (unsigned int) ltmp);
;--- end asm ---
	ldb	_ltmp+1	;, ltmp
	ldx	#LC121	;,
	jsr	__fi_s
;----- asm -----
; 1099 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[800]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1104 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[804]mh = mh - (unsigned int)ltmp;
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
; 1106 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[805]if (mh <0)
;--- end asm ---
	cmpd	#0	; mh.57
	lbge	L181	;
;----- asm -----
; 1109 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[807]label3220:
;--- end asm ---
L176:
;----- asm -----
; 1114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[811]printmessage();
;--- end asm ---
	ldx	#LC122	;,
	jsr	_printMessage
;----- asm -----
; 1116 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[812]label3223:
;--- end asm ---
L177:
;----- asm -----
; 1121 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[816]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1123 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[817]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[818]ltmp = ml*(unsigned int)(m+1)*10;
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
; 1127 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[819]ex = ex + (unsigned long int) ltmp;
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
; 1132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[823]_fl_s(, (unsigned long int) ltmp);
;--- end asm ---
	pshs	u	; ltmp.58
	ldx	#LC123	;,
	jsr	__fl_s
;----- asm -----
; 1134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[824]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[825]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1138 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[826]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[830]tmp = (signed int) randmax(100);
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	4,s	;, D.3642
	stb	_tmp	;, tmp
;----- asm -----
; 1145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[831]if (tmp>50)
;--- end asm ---
	leas	2,s	;,,
	ldb	#4	;,
	stb	9,s	;, D.3508
	ldb	2,s	;, D.3642
	cmpb	#50	;cmpqi:	;,
	lbgt	L105	;
;----- asm -----
; 1148 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[833]return  return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L215:
;----- asm -----
; 597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[454]if ( randmax(100) > 4*s[chr] )
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	12,s	;, D.3543
	ldb	_s+5	; tmp112, s
	aslb	; tmp112
	aslb	; tmp112
	cmpb	12,s	;cmpqi:(R)	; tmp112, D.3543
	lbhs	L111	;
;----- asm -----
; 603 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[459]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L155:
;----- asm -----
; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[654]doevade:
;--- end asm ---
L157:
;----- asm -----
; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[655]tmp = (signed int)randmax(4);
;--- end asm ---
	ldb	#4	;,
	jsr	_RandMax
	stb	_tmp	; D.3584, tmp
;----- asm -----
; 894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[658]switch (tmp)
;--- end asm ---
	cmpb	#1	;cmpqi:	; D.3584,
	lbeq	L160	;
	lble	L243	;
	cmpb	#2	;cmpqi:	; D.3584,
	lbeq	L161	;
	ldx	#_screen	; prephitmp.322,
	cmpb	#3	;cmpqi:	; D.3584,
	lbeq	L164	;
L158:
	ldx	#_screen	; prephitmp.322,
L171:
;----- asm -----
; 981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[718]if (!can_go_north)
;--- end asm ---
	ldb	11,x	;,
	stb	19,s	;, temp.381
	ldb	#3	; tmp229,
	andb	19,s	; tmp229, temp.381
	cmpb	#3	;cmpqi:	; tmp229,
	lbeq	L172	;
;----- asm -----
; 984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[720]fillmap=go_north;
;--- end asm ---
	ldb	#1	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 986 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[721]printmessage();
;--- end asm ---
	ldx	#LC115	;,
	jsr	_printMessage
;----- asm -----
; 988 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[722]cy -=1;
;--- end asm ---
	dec	_cy	; cy
;----- asm -----
; 990 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[723]goto evadeout;
;--- end asm ---
L168:
;----- asm -----
; 915 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[672]monsteronstack((signed int)m, ml, mh);
;--- end asm ---
	ldb	_ml	;, ml
	stb	,-s	;,
	ldx	_mh	;, mh
	ldb	_m	;, m
	jsr	_monsterOnStack
;----- asm -----
; 918 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[674]return return_new_turn;
;--- end asm ---
	ldb	#1	;,
	stb	10,s	;, D.3508
	leas	1,s	;,,
	lbra	L105	;
L216:
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+5	;cmpqi:	; D.3548, s
	lbls	L114	;
;----- asm -----
; 610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[465]tmp = 2;
;--- end asm ---
	ldb	#2	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L217:
	ldb	#30	;,
	jsr	_RandMax
	cmpb	_s+5	;cmpqi:	; D.3549, s
	lbhs	L111	;
;----- asm -----
; 617 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[471]tmp = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L112:
;----- asm -----
; 584 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[443]tmp = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_tmp	;, tmp
	lbra	L111	;
L242:
;----- asm -----
; 707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[533]_fs(,items[tmp]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; tmp.350, tmp.350
	aslb	;
	rola	;
	tfr	d,x	; tmp.350, tmp153
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC107	;,
	jsr	__fs
;----- asm -----
; 709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[534]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[535]inventory[tmp]=0;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	2,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp158
	ldd	#0	;,
	std	_inventory,x	;, inventory
	leas	2,s	;,,
	lbra	L132	;
L243:
	tstb	; D.3584
	lbne	L158	;
;----- asm -----
; 902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[664]if (!can_go_north)
;--- end asm ---
	ldx	#_screen	; prephitmp.322,
	ldb	_screen+11	; tmp222,
	andb	#3	; tmp222,
	cmpb	#3	;cmpqi:	; tmp222,
	lbeq	L167	;
;----- asm -----
; 905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[666]fillmap=go_north;
;--- end asm ---
	ldb	#1	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[667]printmessage();
;--- end asm ---
	ldx	#LC115	;,
	jsr	_printMessage
;----- asm -----
; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[668]cy -=1;
;--- end asm ---
	dec	_cy	; cy
;----- asm -----
; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[669]evadeout:
;--- end asm ---
	lbra	L168	;
L200:
;----- asm -----
; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[970]printmessage();
;--- end asm ---
	ldx	#LC130	;,
	jsr	_printMessage
;----- asm -----
; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[972]specialaction = special_dragonbreath;
;--- end asm ---
	ldb	#1	;,
	stb	_specialAction	;, specialAction
;----- asm -----
; 1343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[974]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1345 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[975]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[977]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[978]ltmp = randmax(20)*ml+1;
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	lda	_ml	;umulqihi3	; ml
	mul
		;movlsbqihi: D->B
	incb	; tmp278
	clra		;zero_extendqihi: R:b -> R:d	; tmp278, tmp279
	std	_ltmp	; tmp279, ltmp
;----- asm -----
; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[986]if (randmax(20) <s[con])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+3	;cmpqi:	; D.3681, s
	lblo	L244	;
L201:
;----- asm -----
; 1367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[991]_fl_s(, (unsigned long int) ltmp);
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC132	;,
	jsr	__fl_s
;----- asm -----
; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[992]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1371 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[993]goto label3320;
;--- end asm ---
	leas	2,s	;,,
	lbra	L188	;
L232:
;----- asm -----
; 459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[348]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[349]printmessage();
;--- end asm ---
	ldx	#LC99	;,
	jsr	_printMessage
;----- asm -----
; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[350]printmessage();
;--- end asm ---
	ldx	#LC100	;,
	jsr	_printMessage
;----- asm -----
; 466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[352]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3520,
	lbeq	L104	;
;----- asm -----
; 469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[354]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L170:
;----- asm -----
; 958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[701]case 3:
;--- end asm ---
L164:
;----- asm -----
; 963 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[705]if (!can_go_east)
;--- end asm ---
	ldb	13,x	; tmp228,
	andb	#12	; tmp228,
	cmpb	#12	;cmpqi:	; tmp228,
	lbeq	L171	;
;----- asm -----
; 966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[707]fillmap=go_east;
;--- end asm ---
	ldb	#3	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 968 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[708]printmessage();
;--- end asm ---
	ldx	#LC118	;,
	jsr	_printMessage
;----- asm -----
; 970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[709]cx +=1;
;--- end asm ---
	inc	_cx	; cx
;----- asm -----
; 972 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[710]goto evadeout;
;--- end asm ---
	lbra	L168	;
L240:
	ldb	#9	; i,
L118:
;----- asm -----
; 666 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[505]tmp = i;
;--- end asm ---
	stb	_tmp	; i, tmp
;----- asm -----
; 668 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[506]break;
;--- end asm ---
	lbra	L127	;
L237:
;----- asm -----
; 1242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[900]return return_player_dead;
;--- end asm ---
	ldb	#2	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L161:
	ldx	#_screen	; prephitmp.322,
L165:
;----- asm -----
; 945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[693]if (!can_go_west)
;--- end asm ---
	ldb	11,x	; tmp226,
	andb	#12	; tmp226,
	cmpb	#12	;cmpqi:	; tmp226,
	lbeq	L170	;
;----- asm -----
; 948 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[695]fillmap=go_west;
;--- end asm ---
	ldb	#4	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 950 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[696]printmessage();
;--- end asm ---
	ldx	#LC117	;,
	jsr	_printMessage
;----- asm -----
; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[697]cx -=1;
;--- end asm ---
	dec	_cx	; cx
;----- asm -----
; 954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[698]goto evadeout;
;--- end asm ---
	lbra	L168	;
L160:
	ldx	#_screen	; prephitmp.322,
L166:
;----- asm -----
; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[681]if (!can_go_south)
;--- end asm ---
	ldb	19,x	; tmp224,
	andb	#3	; tmp224,
	cmpb	#3	;cmpqi:	; tmp224,
	lbeq	L169	;
;----- asm -----
; 930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[683]fillmap=go_south;
;--- end asm ---
	ldb	#2	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[684]printmessage();
;--- end asm ---
	ldx	#LC116	;,
	jsr	_printMessage
;----- asm -----
; 934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[685]cy +=1;
;--- end asm ---
	inc	_cy	; cy
;----- asm -----
; 936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[686]goto evadeout;
;--- end asm ---
	lbra	L168	;
L172:
;----- asm -----
; 995 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[727]if (!can_go_south)
;--- end asm ---
	ldb	19,x	; tmp231,
	andb	#3	; tmp231,
	cmpb	#3	;cmpqi:	; tmp231,
	lbeq	L173	;
;----- asm -----
; 998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[729]fillmap=go_south;
;--- end asm ---
	ldb	#2	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[730]printmessage();
;--- end asm ---
	ldx	#LC116	;,
	jsr	_printMessage
;----- asm -----
; 1002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[731]cy +=1;
;--- end asm ---
	inc	_cy	; cy
;----- asm -----
; 1004 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[732]goto evadeout;
;--- end asm ---
	lbra	L168	;
L241:
;----- asm -----
; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[511]printmessage();
;--- end asm ---
	ldx	#LC105	;,
	jsr	_printMessage
;----- asm -----
; 677 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[512]printmessage();
;--- end asm ---
	ldx	#LC106	;,
	jsr	_printMessage
;----- asm -----
; 679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[513]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 681 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[514]return return_treasure;
;--- end asm ---
	ldb	#3	;,
	stb	9,s	;, D.3508
	lbra	L105	;
L244:
;----- asm -----
; 1362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[988]ltmp = (ltmp>>1)+1;
;--- end asm ---
	ldd	_ltmp	; tmp281, ltmp
	asra	;
	rorb	;
	addd	#1; addhi3,3	; tmp281,
	std	_ltmp	; tmp281, ltmp
;----- asm -----
; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[989]printmessage();
;--- end asm ---
	ldx	#LC131	;,
	jsr	_printMessage
	lbra	L201	;
L169:
;----- asm -----
; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[689]case 2:
;--- end asm ---
	lbra	L165	;
L167:
;----- asm -----
; 922 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[677]case 1:
;--- end asm ---
	lbra	L166	;
L173:
;----- asm -----
; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[736]if (!can_go_west)
;--- end asm ---
	ldb	#12	;,
	andb	19,s	;, temp.381
	cmpb	#12	;cmpqi:	;,
	beq	L174	;
;----- asm -----
; 1012 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[738]fillmap=go_west;
;--- end asm ---
	ldb	#4	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[739]printmessage();
;--- end asm ---
	ldx	#LC117	;,
	jsr	_printMessage
;----- asm -----
; 1016 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[740]cx -=1;
;--- end asm ---
	dec	_cx	; cx
;----- asm -----
; 1018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[741]goto evadeout;
;--- end asm ---
	lbra	L168	;
L238:
	clrb	; i
	lbra	L118	;
L239:
	ldb	13,s	; i, tmp.28
	lbra	L118	;
L174:
;----- asm -----
; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[743]goto cantevade;
;--- end asm ---
	lbra	L156	;
L233:
;----- asm -----
; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[755]return return_new_turn;
;--- end asm ---
	ldb	#1	;,
	stb	9,s	;, D.3508
	lbra	L105	;
LC134:
	.ascii	"NO\0"
	.globl	_handleMovement
_handleMovement:
;----- asm -----
; 1397 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1012]if ((lastx == 0) && (lasty == 0))
;--- end asm ---
	ldb	_lastX	; lastX.75, lastX
	bne	L247	;
	tst	_lastY	; lastY
	lbeq	L259	;
L247:
;----- asm -----
; 1407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1018]if ((vec_joy_1_x == 0) && (vec_joy_1_y == 0))
;--- end asm ---
	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
	lbne	L249	;
	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	lbne	L249	;
;----- asm -----
; 1410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1020]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1022]if ((vec_joy_1_x != 0) || (vec_joy_1_y != 0) )
; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1038]if (lastx>0)
;--- end asm ---
	tstb	; lastX.75
	lble	L250	;
;----- asm -----
; 1439 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1040]if ((can_go_east) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+13	; tmp33,
	andb	#12	; tmp33,
	cmpb	#12	;cmpqi:	; tmp33,
	bne	L251	;
	tst	_sf+7	; sf
	lbeq	L260	;
L251:
;----- asm -----
; 1447 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1046]cx +=1;fillmap=go_east;printmessage();
;--- end asm ---
	inc	_cx	; cx
	ldb	#3	;,
	stb	_fillMap	;, fillMap
	ldx	#LC118	;,
	jsr	_printMessage
L252:
;----- asm -----
; 1493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1082]lastx = 0;
;--- end asm ---
	clr	_lastX	; lastX
;----- asm -----
; 1495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1083]lasty = 0;
;--- end asm ---
	clr	_lastY	; lastY
L249:
;----- asm -----
; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1085]return fillmap;
;--- end asm ---
	ldb	_fillMap	; D.3691, fillMap
	rts
L259:
;----- asm -----
; 1400 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1014]lastx = vec_joy_1_x;
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	_lastX	;, lastX
;----- asm -----
; 1402 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1015]lasty = vec_joy_1_y;
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	_lastY	;, lastY
;----- asm -----
; 1404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1016]return 0;
;--- end asm ---
	clrb	; D.3691
	rts
L250:
	tstb	; lastX.75
	bne	L261	;
	ldb	_lastY	; lastY.444, lastY
	lble	L255	;
;----- asm -----
; 1467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1062]if ((can_go_north) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+11	; tmp41,
	andb	#3	; tmp41,
	cmpb	#3	;cmpqi:	; tmp41,
	bne	L256	;
	tst	_sf+7	; sf
	lbeq	L262	;
L256:
;----- asm -----
; 1475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1068]cy -=1;fillmap=go_north;printmessage();
;--- end asm ---
	dec	_cy	; cy
	ldb	#1	;,
	stb	_fillMap	;, fillMap
	ldx	#LC115	;,
	jsr	_printMessage
	lbra	L252	;
L260:
;----- asm -----
; 1442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1042]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
	lbra	L252	;
L261:
;----- asm -----
; 1453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1051]if ((can_go_west) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+11	; tmp37,
	andb	#12	; tmp37,
	cmpb	#12	;cmpqi:	; tmp37,
	bne	L254	;
	tst	_sf+7	; sf
	lbeq	L263	;
L254:
;----- asm -----
; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1057]cx -=1;fillmap=go_west;printmessage();
;--- end asm ---
	dec	_cx	; cx
	ldb	#4	;,
	stb	_fillMap	;, fillMap
	ldx	#LC117	;,
	jsr	_printMessage
	lbra	L252	;
L255:
	tstb	; lastY.444
	lbeq	L252	;
;----- asm -----
; 1481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1073]if ((can_go_south) && (!sf[astral_walk]))
;--- end asm ---
	ldb	_screen+19	; tmp45,
	andb	#3	; tmp45,
	cmpb	#3	;cmpqi:	; tmp45,
	bne	L257	;
	tst	_sf+7	; sf
	beq	L264	;
L257:
;----- asm -----
; 1489 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1079]cy +=1;fillmap=go_south; printmessage();
;--- end asm ---
	inc	_cy	; cy
	ldb	#2	;,
	stb	_fillMap	;, fillMap
	ldx	#LC116	;,
	jsr	_printMessage
	lbra	L252	;
L262:
;----- asm -----
; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1064]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
	lbra	L252	;
L263:
;----- asm -----
; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1053]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
	lbra	L252	;
L264:
;----- asm -----
; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1075]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
	lbra	L252	;
LC135:
	.ascii	"YOU SEE SOME % <4> TO PICK UP\0"
LC136:
	.ascii	"YOU DETECT TRAPS!\0"
LC137:
	.ascii	"YOU LEAVE IT\0"
LC138:
	.ascii	"SNARF IT\0"
LC139:
	.ascii	"IT'S TRAPPED!\0"
LC140:
	.ascii	"YOU SUFFER % POINTS DAMAGE\0"
LC141:
	.ascii	"IT'S WORTH % GOLD\0"
LC142:
	.ascii	"YOU HAVE FOUND A TREASURE CHEST!!\0"
LC143:
	.ascii	"<4> TO OPEN IT: \0"
LC144:
	.ascii	"IGNORE IT\0"
LC145:
	.ascii	"OPEN IT\0"
LC146:
	.ascii	"CHEST EXPLODES!!\0"
LC147:
	.ascii	"INSIDE, THERE IS ONLY COBWEBS...\0"
LC148:
	.ascii	"YOU SEE A % +%\0"
LC149:
	.ascii	"<4> TO PICK IT UP:\0"
LC150:
	.ascii	"LEAVE IT\0"
LC151:
	.ascii	"IT IS CURSED!!\0"
LC152:
	.ascii	"YOU SUFFER % DAMAGE POINTS\0"
LC153:
	.ascii	"IT'S YOURS!\0"
	.globl	_handleTreasure
_handleTreasure:
	pshs	y,u	;
	leas	-41,s	;,,
	stb	11,s	; fix, fix
;----- asm -----
; 1505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1091]unsigned int tno;
; 1507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1092]unsigned long int ilv;
; 1509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1093]unsigned int t,c;
; 1511 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1094]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1513 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1095]if (!fix)
;--- end asm ---
	tstb	; fix
	lbeq	L312	;
L266:
;----- asm -----
; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1101]if (!fix) return return_special;
;--- end asm ---
	ldb	#5	; D.3733,
	tst	11,s	; fix
	bne	L313	;
L269:
	leas	41,s	;,,
	puls	y,u,pc	;
L313:
;----- asm -----
; 1527 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1106]t = 0;
; 1529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1107]if (randmax(100)<15) t = 1;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clr	18,s	; t
	cmpb	#14	;cmpqi:	; D.3734,
	lbls	L314	;
L270:
;----- asm -----
; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1108]c = 0;
; 1536 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1112]if (randmax(100)>30)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#30	;cmpqi:	; D.3735,
	lbhi	L315	;
;----- asm -----
; 1645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1187]if (randmax(100)<50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#49	;cmpqi:	; D.3763,
	lbls	L287	;
	clr	19,s	; c
L288:
;----- asm -----
; 1762 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1268]itemfound:
;--- end asm ---
L311:
;----- asm -----
; 1764 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1269]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1273]tno = randmax(10);
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	stb	32,s	;, tno.484
;----- asm -----
; 1773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1276]ilv = (unsigned long int) randmax((l+1)>>2) + (unsigned long int) randmax((l+1)>>2) + 1;
;--- end asm ---
	ldb	_l	; tmp116, l
	incb	; tmp116
	lsrb	; tmp116
	lsrb	; tmp116
	jsr	_RandMax
	stb	16,s	;, D.3783
	ldb	_l	; tmp118, l
	incb	; tmp118
	lsrb	; tmp118
	lsrb	; tmp118
	jsr	_RandMax
	stb	2,s	;, D.3785
	ldb	16,s	;, D.3783
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, D.3783
	ldb	2,s	;, D.3785
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;, D.3785
	exg	d,x	;, D.3783
	leau	d,u	; tmp122,, tmp122
	leay	1,u	; ilv,, tmp122
;----- asm -----
; 1776 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1278]_fsl_s(, items[tno], ilv);
;--- end asm ---
	pshs	y	; ilv
	ldb	34,s	;, tno.484
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	2,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp125
	ldx	_items,x	;, items
	stx	,--s	;,
	ldx	#LC148	;,
	jsr	__fsl_s
;----- asm -----
; 1778 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1279]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1284]printmessage();
;--- end asm ---
	ldx	#LC149	;,
	jsr	_printMessage
;----- asm -----
; 1786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1285]if (testforbutton(1) != 4)
; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[129]signed int p = 0;
; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[130]signed int t = 0;
; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[131]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[132]do
;--- end asm ---
	clr	30,s	; p
	clr	28,s	; d
	leas	4,s	;,,
	lbra	L302	;
L316:
;----- asm -----
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	27,s	;, D.5085
	bitb	#8	;,
	beq	L295	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#4	;,
	stb	24,s	;, d
L295:
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp129,
	andb	27,s	; tmp129, D.5085
	beq	L296	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#3	;,
	stb	24,s	;, d
L296:
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp130,
	andb	27,s	; tmp130, D.5085
	beq	L297	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#2	;,
	stb	24,s	;, d
L297:
;----- asm -----
; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp131,
	andb	27,s	; tmp131, D.5085
	beq	L298	;
	ldb	#1	;,
	stb	26,s	;, p
	stb	24,s	;, d
L298:
;----- asm -----
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	25,s	;, Vec_Joy_1_X.4
	beq	L299	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#5	;,
	stb	24,s	;, d
L299:
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L300	;
	ldb	#1	;,
	stb	26,s	;, p
	ldb	#5	;,
	stb	24,s	;, d
L300:
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	26,s	; p
	beq	L301	;
	tst	25,s	; Vec_Joy_1_X.4
	bne	L301	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L301	;
	tst	27,s	; D.5085
	beq	L294	;
L301:
;----- asm -----
; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[151]while (1);
;--- end asm ---
L302:
;----- asm -----
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[134]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[135]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[137]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L316	;
L294:
;----- asm -----
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[153]if (t == 0) return d;
;--- end asm ---
	tst	24,s	; d
	lbeq	L303	;
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[154]return t;
;--- end asm ---
	ldb	24,s	;, d
	cmpb	#4	;cmpqi:	;,
	lbne	L303	;
;----- asm -----
; 1806 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1299]if ((t) && (tno!=0))
;--- end asm ---
	tst	18,s	; t
	beq	L306	;
	tst	32,s	; tno.484
	lbne	L317	;
L306:
;----- asm -----
; 1844 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1324]printmessage();
;--- end asm ---
	ldx	#LC153	;,
	jsr	_printMessage
;----- asm -----
; 1846 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1325]inventory[tno]=inventory[tno]+1;
;--- end asm ---
	ldb	32,s	;, tno.484
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	ldu	#_inventory	;,
	leax	d,u	; tmp140, tmp139,
	ldd	,x	;, inventory
	addd	#1; addhi3,3	;,
	std	,x	;, inventory
;----- asm -----
; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1326]if (tno<scroll_of_rescue)
;--- end asm ---
	ldb	32,s	;, tno.484
	cmpb	#6	;cmpqi:	;,
	bhi	L308	;
	sty	,x	; ilv, inventory
L308:
;----- asm -----
; 1851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1328]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1331]if ((c==1) && (randmax(100)>50))
;--- end asm ---
	ldb	19,s	;, c
	cmpb	#1	;cmpqi:	;,
	lbne	L309	;
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3796,
	lbls	L309	;
;----- asm -----
; 1858 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1333]goto itemfound;
;--- end asm ---
	lbra	L311	;
L312:
;----- asm -----
; 1518 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1099]fix = randmax(50) > 40;
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3732,
	lbls	L266	;
	ldb	#1	;,
	stb	11,s	;, fix
	lbra	L266	;
L315:
;----- asm -----
; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1121]tno = randmax(5);
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	stb	17,s	;, tno
;----- asm -----
; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1122]printtreasure=(signed int)tno;
;--- end asm ---
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1123]_fs(, treasure[tno]);
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp76
	ldx	_treasure,x	;, treasure
	stx	,--s	;,
	ldx	#LC135	;,
	jsr	__fs
;----- asm -----
; 1552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1124]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1558 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1129]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
;--- end asm ---
	leas	2,s	;,,
	tst	_sf+1	; sf
	beq	L272	;
	tst	18,s	; t
	lbne	L318	;
L272:
;----- asm -----
; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1131]if (testforbutton(1) != 4)
; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[129]signed int p = 0;
; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[130]signed int t = 0;
; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[131]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[132]do
;--- end asm ---
	clr	22,s	; p
	clr	20,s	; d
	lbra	L281	;
L319:
;----- asm -----
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	23,s	;, D.5068
	bitb	#8	;,
	beq	L274	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#4	;,
	stb	20,s	;, d
L274:
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp81,
	andb	23,s	; tmp81, D.5068
	beq	L275	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#3	;,
	stb	20,s	;, d
L275:
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp82,
	andb	23,s	; tmp82, D.5068
	beq	L276	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#2	;,
	stb	20,s	;, d
L276:
;----- asm -----
; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp83,
	andb	23,s	; tmp83, D.5068
	beq	L277	;
	ldb	#1	;,
	stb	22,s	;, p
	stb	20,s	;, d
L277:
;----- asm -----
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	21,s	;, Vec_Joy_1_X.4
	beq	L278	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#5	;,
	stb	20,s	;, d
L278:
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L279	;
	ldb	#1	;,
	stb	22,s	;, p
	ldb	#5	;,
	stb	20,s	;, d
L279:
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	22,s	; p
	beq	L280	;
	tst	21,s	; Vec_Joy_1_X.4
	bne	L280	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L280	;
	tst	23,s	; D.5068
	beq	L273	;
L280:
;----- asm -----
; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[151]while (1);
;--- end asm ---
L281:
;----- asm -----
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[134]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[135]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[137]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L319	;
L273:
;----- asm -----
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[153]if (t == 0) return d;
;--- end asm ---
	tst	20,s	; d
	lbeq	L282	;
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[154]return t;
;--- end asm ---
	ldb	20,s	;, d
	cmpb	#4	;cmpqi:	;,
	lbne	L282	;
;----- asm -----
; 1576 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1141]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1578 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1142]printmessage();
;--- end asm ---
	ldx	#LC138	;,
	jsr	_printMessage
;----- asm -----
; 1580 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1143]if (t)
;--- end asm ---
	tst	18,s	; t
	lbeq	L284	;
;----- asm -----
; 1587 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1149]utmp = (unsigned int) randmax(l*3)+1;
;--- end asm ---
	ldb	_l	; tmp86, l
	aslb	; tmp86
	addb	_l	; tmp86, l
	jsr	_RandMax
	incb	; D.3745
	stb	_utmp	; D.3745, utmp
;----- asm -----
; 1589 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1150]printmessage();
;--- end asm ---
	ldx	#LC139	;,
	jsr	_printMessage
;----- asm -----
; 1591 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1151]_fi_s(, (unsigned int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	ldx	#LC140	;,
	jsr	__fi_s
;----- asm -----
; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1152]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1153]ch = ch - ((unsigned int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, utmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; utmp, ch.95
	subd	,s++	; ch.95
	std	_ch	; ch.95, ch
;----- asm -----
; 1597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1154]if (ch<1)
;--- end asm ---
	cmpd	#0	; ch.95
	bgt	L284	;
;----- asm -----
; 1600 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1156]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1602 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1157]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3733,
	lbra	L269	;
L314:
	ldb	#1	;,
	stb	18,s	;, t
	lbra	L270	;
L284:
;----- asm -----
; 1611 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1165]lltmp = (signed long long int) ((unsigned long long int) randmax(200));
;--- end asm ---
	ldb	#-56	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3751,
	tfr	d,y	;, D.3751
	ldd	#0	;,
	std	_lltmp	;, lltmp
	sty	_lltmp+2	; D.3751, lltmp
;----- asm -----
; 1613 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1166]lltmp = lltmp*l;
; 1615 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1167]lltmp = lltmp*tno;
; 1617 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1168]lltmp++;
;--- end asm ---
	ldb	17,s	;, tno
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
	sty	6,s	; D.3751,
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
	std	18,s	;, lltmp.100
	ldd	11,s	;,
	adcb	#0	;
	adca	#0	;
	std	16,s	;, lltmp.100
	ldx	16,s	;, lltmp.100
	stx	_lltmp	;, lltmp
	ldu	18,s	;, lltmp.100
	stu	_lltmp+2	;, lltmp
;----- asm -----
; 1619 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1169]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	18,s	;, lltmp.100
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	17,s	; lltmp.100
	adca	16,s	; lltmp.100
	std	_gd	;, gd
;----- asm -----
; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1170]_fll_s(, ((unsigned long long int) lltmp));
;--- end asm ---
	stx	,s	;,
	ldu	18,s	;, lltmp.100
	stu	2,s	;,
	ldx	#LC141	;,
	jsr	__fll_s
;----- asm -----
; 1623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1171]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1172]if (randmax(50)<10)
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	leas	4,s	;,,
	cmpb	#9	;cmpqi:	; D.3762,
	lbhi	L285	;
;----- asm -----
; 1628 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1174]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1175]goto itemfound;
;--- end asm ---
	clr	19,s	; c
	lbra	L311	;
L303:
;----- asm -----
; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1288]printmessage();
;--- end asm ---
	ldx	#LC150	;,
	jsr	_printMessage
;----- asm -----
; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1289]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1290]if ((c==1) && (randmax(100)>50))
;--- end asm ---
	ldb	19,s	;, c
	cmpb	#1	;cmpqi:	;,
	bne	L305	;
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3790,
	bls	L305	;
;----- asm -----
; 1797 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1292]goto itemfound;
;--- end asm ---
	lbra	L311	;
L282:
;----- asm -----
; 1565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1134]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1567 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1135]printmessage();
;--- end asm ---
	ldx	#LC137	;,
	jsr	_printMessage
;----- asm -----
; 1569 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1136]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1571 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1137]return return_special;
;--- end asm ---
	ldb	#5	; D.3733,
	leas	41,s	;,,
	puls	y,u,pc	;
L305:
;----- asm -----
; 1800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1294]return return_special;
;--- end asm ---
	ldb	#5	; D.3733,
	lbra	L269	;
L309:
;----- asm -----
; 1861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1335]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3733,
	lbra	L269	;
L287:
;----- asm -----
; 1652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1193]printtreasure=5;
;--- end asm ---
	ldb	#5	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 1654 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1194]printmessage();
;--- end asm ---
	ldx	#LC142	;,
	jsr	_printMessage
;----- asm -----
; 1656 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1195]printmessage();
;--- end asm ---
	ldx	#LC143	;,
	jsr	_printMessage
;----- asm -----
; 1663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1201]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
;--- end asm ---
	tst	_sf+1	; sf
	beq	L289	;
	tst	18,s	; t
	beq	L289	;
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3764
	bne	L289	;
	ldx	#LC136	;,
	jsr	_printMessage
L289:
;----- asm -----
; 1669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1206]if (testforbutton(1) != 4)
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	cmpb	#4	;cmpqi:	; D.3765,
	beq	L290	;
;----- asm -----
; 1673 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1209]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1210]printmessage();
;--- end asm ---
	ldx	#LC144	;,
	jsr	_printMessage
;----- asm -----
; 1677 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1211]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1212]return return_special;
;--- end asm ---
	ldb	#5	; D.3733,
	lbra	L269	;
L285:
;----- asm -----
; 1635 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1179]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1180]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3733,
	lbra	L269	;
L290:
;----- asm -----
; 1685 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1217]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1687 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1218]printmessage();
;--- end asm ---
	ldx	#LC145	;,
	jsr	_printMessage
;----- asm -----
; 1689 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1219]if (t)
;--- end asm ---
	tst	18,s	; t
	lbeq	L291	;
;----- asm -----
; 1695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1224]ltmp = ((signed long int)randmax(10))*((signed long int)cz)+1;
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	lda	_cz	;umulqihi3	; cz
	mul
	addd	#1; addhi3,3	; tmp102,
	std	_ltmp	; tmp102, ltmp
;----- asm -----
; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1225]printmessage();
;--- end asm ---
	ldx	#LC146	;,
	jsr	_printMessage
;----- asm -----
; 1699 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1226]_fl_s(, (unsigned long) ltmp);
;--- end asm ---
	ldx	_ltmp	;, ltmp
	stx	,--s	;,
	ldx	#LC140	;,
	jsr	__fl_s
;----- asm -----
; 1701 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1227]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1228]ch = ch - ((signed long int) ltmp);
;--- end asm ---
	ldd	_ch	; ch, ch
	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.108, ltmp
	std	_ch	; ch.108, ch
;----- asm -----
; 1705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1229]if (ch<1)
;--- end asm ---
	leas	2,s	;,,
	cmpd	#0	; ch.108
	lble	L320	;
L291:
;----- asm -----
; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1241]if (randmax(10)==0)
;--- end asm ---
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3775
	lbeq	L321	;
;----- asm -----
; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1252]lltmp = (signed long long int) ((unsigned long long int) randmax(100));
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3776,
	tfr	d,y	;, D.3776
	ldd	#0	;,
	std	_lltmp	;, lltmp
	sty	_lltmp+2	; D.3776, lltmp
;----- asm -----
; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1253]lltmp = lltmp*l;
; 1739 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1254]lltmp = lltmp*10;
; 1741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1255]lltmp++;
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
	sty	6,s	; D.3776,
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
	std	34,s	;, lltmp.478
	ldd	7,s	;,
	adcb	#0	;
	adca	#0	;
	std	32,s	;, lltmp.478
	ldx	32,s	;, lltmp.478
	stx	_lltmp	;, lltmp
	ldu	34,s	;, lltmp.478
	stu	_lltmp+2	;, lltmp
;----- asm -----
; 1743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1256]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	34,s	;, lltmp.478
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	33,s	; lltmp.478
	adca	32,s	; lltmp.478
	std	_gd	;, gd
;----- asm -----
; 1745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1257]_fll_s(, ((unsigned long long int) lltmp));
;--- end asm ---
	stx	,s	;,
	ldu	34,s	;, lltmp.478
	stu	2,s	;,
	ldx	#LC141	;,
	jsr	__fll_s
;----- asm -----
; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1258]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1750 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1260]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1752 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1261]if (randmax(100)<50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	leas	4,s	;,,
	cmpb	#49	;cmpqi:	; D.3779,
	lbls	L322	;
;----- asm -----
; 1758 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1265]c = 1;
;--- end asm ---
	ldb	#1	;,
	stb	19,s	;, c
	lbra	L288	;
L318:
	ldb	#10	;,
	jsr	_RandMax
	tstb	; D.3741
	lbne	L272	;
	ldx	#LC136	;,
	jsr	_printMessage
	lbra	L272	;
L317:
;----- asm -----
; 1813 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1305]printmessage();
;--- end asm ---
	ldx	#LC151	;,
	jsr	_printMessage
;----- asm -----
; 1815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1306]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1307]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1819 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1308]utmp =  randmax(tno*5)+1;
;--- end asm ---
	ldb	32,s	; tmp133, tno.484
	aslb	; tmp133
	aslb	; tmp133
	addb	32,s	; tmp133, tno.484
	jsr	_RandMax
	incb	; utmp.112
	stb	_utmp	; utmp.112, utmp
;----- asm -----
; 1821 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1309]_fi_s(, utmp);
;--- end asm ---
	ldx	#LC152	;,
	jsr	__fi_s
;----- asm -----
; 1823 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1310]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 1825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1311]ch = ch - ((signed long int) utmp);
;--- end asm ---
	ldb	_utmp	;, utmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, utmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; utmp, ch.492
	subd	,s++	; ch.492
	std	_ch	; ch.492, ch
;----- asm -----
; 1827 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1312]if (ch<1)
;--- end asm ---
	cmpd	#0	; ch.492
	ble	L323	;
;----- asm -----
; 1835 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1317]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1837 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1318]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3733,
	lbra	L269	;
L322:
;----- asm -----
; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1263]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3733,
	lbra	L269	;
L321:
;----- asm -----
; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1243]printmessage();
;--- end asm ---
	ldx	#LC147	;,
	jsr	_printMessage
;----- asm -----
; 1725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1244]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1245]return return_monster_stack;
;--- end asm ---
	ldb	#6	; D.3733,
	lbra	L269	;
L323:
;----- asm -----
; 1830 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1314]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1315]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3733,
	lbra	L269	;
L320:
;----- asm -----
; 1708 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1231]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1232]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3733,
	lbra	L269	;
LC154:
	.ascii	"REENTER\0"
LC155:
	.ascii	"YOU FEEL HEAVY FOR A MOMENT\0"
LC156:
	.ascii	"YOU SEE A PIT\0"
LC157:
	.ascii	"YOU ARE HOVERING ABOVE A PIT\0"
LC158:
	.ascii	"DO YOU WANT TO DESCEND? <4> YES\0"
LC159:
	.ascii	"YES\0"
LC160:
	.ascii	"YOU FALL IN!!\0"
LC161:
	.ascii	"YOU SUFFER % HIT POINTS\0"
LC162:
	.ascii	"ZZAP!! YOU'VE BEEN TELEPORTED...\0"
LC163:
	.ascii	"YOU HAVE FOUND A CIRCULAR STAIRWAY\0"
LC164:
	.ascii	"YOU SEE LIGHT ABOVE\0"
LC165:
	.ascii	"DO YOU WANT TO <1> GO UP, <4> GO DOWN\0"
LC166:
	.ascii	"DO YOU WANT TO <1> GO UP\0"
LC167:
	.ascii	"DO YOU WANT TO <4> GO DOWN\0"
LC168:
	.ascii	"OR STAY ON THE SAME LEVEL?\0"
LC169:
	.ascii	"DOWN\0"
LC170:
	.ascii	"UP\0"
LC171:
	.ascii	"STAY\0"
LC172:
	.ascii	"YOU HAVE FOUND A HOLY ALTAR\0"
LC173:
	.ascii	"PRESS <4> TO WORSHIP\0"
LC174:
	.ascii	"PRESS <4> TO DONATE MONEY\0"
LC175:
	.byte	72,79,87,32,77,85,67,72
	.byte	32,71,79,76,68,63,-128,0
LC176:
	.ascii	"YOU DON'T HAVE THAT MUCH!\0"
LC177:
	.ascii	"YOU HAVE BEEN HEARD\0"
LC178:
	.ascii	"THANK YOU FOR YOUR DONATION\0"
LC179:
	.ascii	"DIRTY PAGAN TRASH!\0"
LC180:
	.ascii	"YOU HAVE FOUND A FOUNTAIN\0"
LC181:
	.ascii	"WITH RUNNING % WATER\0"
LC182:
	.ascii	"PRESS <4> TO DRINK\0"
LC183:
	.ascii	"YOU FEEL BETTER\0"
LC184:
	.ascii	"YOU HEAL % HIT POINTS\0"
LC185:
	.ascii	"IT'S POISON!!!\0"
LC186:
	.ascii	"YOU LOSE % HIT POINTS\0"
LC187:
	.ascii	"YOU FEEL REFRESHED!\0"
LC188:
	.ascii	"ACTUALLY YOU'RE DRUNK!!\0"
LC189:
	.ascii	"YOU HAVE BEEN DISPOSESSED!\0"
LC190:
	.ascii	"MAGIC POWER SURGES THROUGH YOUR BODY\0"
LC191:
	.ascii	"YOU NOW HAVE % SPELLS\0"
LC192:
	.ascii	"YOU CAN SEE A LARGE MISTY CUBE\0"
LC193:
	.ascii	"<4> TO WALK IN\0"
LC194:
	.ascii	"IGNORE\0"
LC195:
	.byte	65,32,78,85,77,66,69,82
	.byte	32,70,82,79,77,32,49,32
	.byte	84,79,32,53,48,-128,0
LC196:
	.ascii	"YOU FLOAT IN SPACE ...\0"
LC197:
	.ascii	"YOU SEE A JEWEL ENCRUSTED THRONE\0"
LC198:
	.ascii	"DO YOU WANT TO PRY<4> SOME JEWELS,\0"
LC199:
	.ascii	"SIT<3> DOWN, READ<2> THE RUNES\0"
LC200:
	.ascii	"OR IGNORE<1> IT?\0"
LC201:
	.ascii	"PRY\0"
LC202:
	.ascii	"NOTHING HAPPENS\0"
LC203:
	.ascii	"THEY POP INTO YOUR GREEDY HANDS!!\0"
LC204:
	.ascii	"THEY ARE WORT % GOLD\0"
LC205:
	.ascii	"SIT\0"
LC206:
	.ascii	"THE % KING RETURNS\0"
LC207:
	.ascii	"A LOUD GONG SOUNDS!\0"
LC208:
	.ascii	"READ\0"
LC209:
	.ascii	"YOU DON'T UNDERSTAND THEM...\0"
LC210:
	.ascii	"A MYSTERIOUS MAGIG GRIPS YOU..\0"
LC211:
	.ascii	"YOU % GOES DOWN BY 1\0"
LC212:
	.ascii	"YOU % GOES UP BY 1\0"
LC213:
	.ascii	"YOU SEE A SMALL BOX WITH FOUR COLORED\0"
LC214:
	.ascii	"LIGHTS. PUSH<4> BUTTONS OR IGNORE:\0"
LC215:
	.ascii	"PUSH (UP/DOWN/LEFT/RIGHT)\0"
LC216:
	.ascii	"<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE\0"
LC217:
	.ascii	"BUTTON TO STOP\0"
LC218:
	.ascii	"STOP\0"
LC219:
	.ascii	"AN ELECTRIC BOLT SHOOTS THROUGH YOU!!\0"
LC220:
	.ascii	"IT OPENS!!\0"
LC221:
	.ascii	"INSIDE YOU FIND JEWELS WORTH\0"
LC222:
	.ascii	"% IN GOLD!!\0"
	.globl	_handleSpecial
_handleSpecial:
	pshs	y,u	;
	leas	-58,s	;,,
;----- asm -----
; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1344]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1893 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1365]if (above == 4) goto dostaircase;
;--- end asm ---
	ldy	#_screen+10	; prephitmp.509,
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	beq	L326	;
;----- asm -----
; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1367]switch (map11_hi)
;--- end asm ---
	ldy	#_screen+10	; prephitmp.509,
	ldb	,y	;,* prephitmp.509
	cmpb	#9	;cmpqi:	;,
	bls	L443	;
L327:
;----- asm -----
; 2993 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2135]break;
;--- end asm ---
L423:
;----- asm -----
; 2997 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2138]return return_nothing;
;--- end asm ---
	clrb	; D.3848
L341:
	leas	58,s	;,,
	puls	y,u,pc	;
L443:
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp152
	jmp	[L337,x]	;, tmp152
L337:
	.word	L327
	.word	L328
	.word	L329
	.word	L330
	.word	L331
	.word	L332
	.word	L333
	.word	L334
	.word	L335
	.word	L336
L331:
;----- asm -----
; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1536]dostaircase:
;--- end asm ---
L326:
;----- asm -----
; 2151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1543]printmessage();
;--- end asm ---
	ldx	#LC163	;,
	jsr	_printMessage
;----- asm -----
; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1547]if ((above == 4) && (cz==1))
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L444	;
L359:
;----- asm -----
; 2159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1549]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2161 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1550]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1557]if ((above==4) && (map11_hi==4))
;--- end asm ---
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbeq	L445	;
	ldb	,y	;,* prephitmp.509
	cmpb	#4	;cmpqi:	;,
	lbeq	L446	;
L362:
;----- asm -----
; 2185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1569]printmessage();
;--- end asm ---
	ldx	#LC168	;,
	jsr	_printMessage
;----- asm -----
; 2188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1571]tmp = testforbutton(2);
; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[129]signed int p = 0;
; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[130]signed int t = 0;
; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[131]localtimer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_localTimer	;, localTimer
;----- asm -----
; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[132]do
;--- end asm ---
	clr	39,s	; p
	clr	37,s	; d
	lbra	L371	;
L447:
;----- asm -----
; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	40,s	;, D.5144
	bitb	#8	;,
	beq	L364	;
	ldb	#1	;,
	stb	39,s	;, p
	ldb	#4	;,
	stb	37,s	;, d
L364:
;----- asm -----
; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
;--- end asm ---
	ldb	#4	; tmp180,
	andb	40,s	; tmp180, D.5144
	beq	L365	;
	ldb	#1	;,
	stb	39,s	;, p
	ldb	#3	;,
	stb	37,s	;, d
L365:
;----- asm -----
; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
;--- end asm ---
	ldb	#2	; tmp181,
	andb	40,s	; tmp181, D.5144
	beq	L366	;
	ldb	#1	;,
	stb	39,s	;, p
	ldb	#2	;,
	stb	37,s	;, d
L366:
;----- asm -----
; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
;--- end asm ---
	ldb	#1	; tmp182,
	andb	40,s	; tmp182, D.5144
	beq	L367	;
	ldb	#1	;,
	stb	39,s	;, p
	stb	37,s	;, d
L367:
;----- asm -----
; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
	stb	38,s	;, Vec_Joy_1_X.4
	beq	L368	;
	ldb	#1	;,
	stb	39,s	;, p
	ldb	#5	;,
	stb	37,s	;, d
L368:
;----- asm -----
; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
;--- end asm ---
	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
	stb	2,s	;, Vec_Joy_1_Y.5
	beq	L369	;
	ldb	#1	;,
	stb	39,s	;, p
	ldb	#5	;,
	stb	37,s	;, d
L369:
;----- asm -----
; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
;--- end asm ---
	tst	39,s	; p
	beq	L370	;
	tst	38,s	; Vec_Joy_1_X.4
	bne	L370	;
	tst	2,s	; Vec_Joy_1_Y.5
	bne	L370	;
	tst	40,s	; D.5144
	beq	L363	;
L370:
;----- asm -----
; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[151]while (1);
;--- end asm ---
L371:
;----- asm -----
; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[134]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[135]if (d!=0) localtimer--;
;--- end asm ---
	dec	_localTimer	; localTimer
	ldb	_localTimer	; localTimer.3, localTimer
;----- asm -----
; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[137]if (localtimer == 0) break;
;--- end asm ---
	tstb	; localTimer.3
	lbne	L447	;
L363:
;----- asm -----
; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[153]if (t == 0) return d;
;--- end asm ---
	tst	37,s	; d
	beq	L448	;
;----- asm -----
; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[154]return t;
;--- end asm ---
	ldb	37,s	;, d
L373:
	stb	_tmp	;, tmp
;----- asm -----
; 2193 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1575]if ((tmp == 4) && (map11_hi==4))
;--- end asm ---
	cmpb	#4	;cmpqi:	;,
	lbeq	L449	;
	cmpb	#1	;cmpqi:	;,
	lbeq	L450	;
L375:
;----- asm -----
; 2240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1608]printmessage();
;--- end asm ---
	ldx	#LC171	;,
	jsr	_printMessage
;----- asm -----
; 2242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1609]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	leas	58,s	;,,
	puls	y,u,pc	;
L448:
	ldb	#2	;,
	stb	37,s	;, d
	bra	L373	;
L445:
	ldb	,y	;,* prephitmp.509
	cmpb	#4	;cmpqi:	;,
	lbeq	L451	;
;----- asm -----
; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1563]printmessage();
;--- end asm ---
	ldx	#LC166	;,
	jsr	_printMessage
	lbra	L362	;
L444:
	ldb	_cz	;, cz
	cmpb	#1	;cmpqi:	;,
	lbne	L359	;
	ldx	#LC164	;,
	jsr	_printMessage
	lbra	L359	;
L334:
;----- asm -----
; 2537 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1817]printmessage();
;--- end asm ---
	ldx	#LC192	;,
	jsr	_printMessage
;----- asm -----
; 2539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1818]printmessage();
;--- end asm ---
	ldx	#LC193	;,
	jsr	_printMessage
;----- asm -----
; 2541 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1819]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp.161, tmp
;----- asm -----
; 2543 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1820]if (tmp != 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.161,
	lbeq	L399	;
;----- asm -----
; 2546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1822]printmessage();
;--- end asm ---
	ldx	#LC194	;,
	jsr	_printMessage
;----- asm -----
; 2548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1823]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L333:
;----- asm -----
; 2373 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1701]printmessage();
;--- end asm ---
	ldx	#LC180	;,
	jsr	_printMessage
;----- asm -----
; 2378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1705]tmp2 = (signed int)randmax(5);
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	stb	_tmp2	; D.3920, tmp2
;----- asm -----
; 2380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1706]_fs(, fountain[tmp2]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3920, tmp2.151
	aslb	;
	rola	;
	tfr	d,x	; tmp2.151, tmp205
	ldx	_fountain,x	;, fountain
	stx	,--s	;,
	ldx	#LC181	;,
	jsr	__fs
;----- asm -----
; 2382 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1707]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1711]printmessage();
;--- end asm ---
	ldx	#LC182	;,
	jsr	_printMessage
;----- asm -----
; 2389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1712]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.152, tmp
;----- asm -----
; 2391 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1713]if (tmp != 4)
;--- end asm ---
	leas	2,s	;,,
	cmpb	#4	;cmpqi:	; tmp.152,
	lbeq	L389	;
;----- asm -----
; 2396 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1717]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L332:
;----- asm -----
; 2255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1620]printmessage();
;--- end asm ---
	ldx	#LC172	;,
	jsr	_printMessage
;----- asm -----
; 2257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1621]printmessage();
;--- end asm ---
	ldx	#LC173	;,
	jsr	_printMessage
;----- asm -----
; 2259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1622]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.140, tmp
;----- asm -----
; 2261 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1623]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.140,
	lbeq	L452	;
;----- asm -----
; 2328 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1671]nomoneynoworship:
;--- end asm ---
L378:
;----- asm -----
; 2332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1674]if (randmax(100)>70)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3913,
	lbhi	L453	;
;----- asm -----
; 2342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1682]dirtypagantrash:
;--- end asm ---
L381:
;----- asm -----
; 2344 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1683]printmessage();
;--- end asm ---
	ldx	#LC179	;,
	jsr	_printMessage
;----- asm -----
; 2346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1684]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1685]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1686]#ifndef no_monster
; 2352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1687]un = 0;
;--- end asm ---
	clr	_un	; un
;----- asm -----
; 2354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1688]while (un == 0)
;--- end asm ---
L388:
;----- asm -----
; 2357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1690]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3914, m
;----- asm -----
; 2359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1691]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
;--- end asm ---
	cmpb	#2	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#4	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#7	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#9	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#12	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#16	;cmpqi:	; D.3914,
	lbeq	L385	;
	cmpb	#17	;cmpqi:	; D.3914,
	lbeq	L385	;
	tst	_un	; un
	beq	L388	;
	lbra	L387	;
L328:
;----- asm -----
; 1903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1372]if (cz != 1) goto doelevator;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#1	;cmpqi:	;,
	lbeq	L454	;
L338:
;----- asm -----
; 1948 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1401]printmessage();
;--- end asm ---
	ldx	#LC155	;,
	jsr	_printMessage
;----- asm -----
; 1950 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1402]elevator();
;--- end asm ---
	jsr	_elevator
;----- asm -----
; 1952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1403]cz=cz-1;
;--- end asm ---
	dec	_cz	; cz
;----- asm -----
; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1404]fillmap =go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1405]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L336:
;----- asm -----
; 2851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2038]printmessage();
;--- end asm ---
	ldx	#LC213	;,
	jsr	_printMessage
;----- asm -----
; 2853 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2039]printmessage();
;--- end asm ---
	ldx	#LC214	;,
	jsr	_printMessage
;----- asm -----
; 2856 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2041]specialaction = special_box;
;--- end asm ---
	ldb	#2	;,
	stb	_specialAction	;, specialAction
;----- asm -----
; 2858 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2042]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp362, tmp
;----- asm -----
; 2860 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2043]specialaction = 0;
;--- end asm ---
	clr	_specialAction	; specialAction
;----- asm -----
; 2864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2046]if (tmp != 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp362,
	lbeq	L424	;
;----- asm -----
; 2867 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2048]printmessage();
;--- end asm ---
	ldx	#LC194	;,
	jsr	_printMessage
;----- asm -----
; 2869 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2049]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L335:
;----- asm -----
; 2608 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1868]specialaction = special_throne_music;
;--- end asm ---
	ldb	#3	;,
	stb	_specialAction	;, specialAction
;----- asm -----
; 2610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1869]printmessage();
;--- end asm ---
	ldx	#LC197	;,
	jsr	_printMessage
;----- asm -----
; 2612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1870]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2614 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1871]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2616 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1872]printmessage();
;--- end asm ---
	ldx	#LC198	;,
	jsr	_printMessage
;----- asm -----
; 2618 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1873]printmessage();
;--- end asm ---
	ldx	#LC199	;,
	jsr	_printMessage
;----- asm -----
; 2620 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1874]printmessage();
;--- end asm ---
	ldx	#LC200	;,
	jsr	_printMessage
;----- asm -----
; 2623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1876]tmp = testforbutton(1);
;--- end asm ---
	ldb	#1	;,
	jsr	_testForButton
	stb	_tmp	; tmp.165, tmp
;----- asm -----
; 2625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1877]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2627 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1878]if (tmp == 1)
;--- end asm ---
	cmpb	#1	;cmpqi:	; tmp.165,
	lbeq	L455	;
;----- asm -----
; 2637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1885]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.165,
	lbeq	L456	;
;----- asm -----
; 2680 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1915]if (tmp == 3)
;--- end asm ---
	cmpb	#3	;cmpqi:	; tmp.165,
	lbeq	L457	;
;----- asm -----
; 2773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1980]if (tmp == 2)
;--- end asm ---
	cmpb	#2	;cmpqi:	; tmp.165,
	lbeq	L458	;
;----- asm -----
; 2839 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2028]break;
;--- end asm ---
	lbra	L423	;
L330:
;----- asm -----
; 2070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1483]teleportnow:
;--- end asm ---
L347:
;----- asm -----
; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1485]printmessage();
;--- end asm ---
	ldx	#LC162	;,
	jsr	_printMessage
;----- asm -----
; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1486]teleportagain:
L348:
; 2084 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1494]lightchange = 0x5f;
; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1495]initsoundno = sound_teleport;
;--- end asm ---
	ldb	#2	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2088 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1496]while (--lightchange >=1)
;--- end asm ---
	ldb	#94	;,
	stb	_lightChange	;, lightChange
L350:
	jsr	_displayRound
	dec	_lightChange	; lightChange
	ldb	_lightChange	; lightChange.130, lightChange
	bgt	L350	;
;----- asm -----
; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1501]if (((cx+cy)&1) == 0) cz = cz -1;
;--- end asm ---
	ldb	_cy	; tmp167, cy
	addb	_cx	; tmp167, cx
	andb	#1	; tmp167,
	bne	L351	;
	dec	_cz	; cz
L351:
;----- asm -----
; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1502]if (((cx+cy)&2) == 2) cz = cz +2;
;--- end asm ---
	ldb	_cy	; tmp169, cy
	addb	_cx	; tmp169, cx
	andb	#2	; tmp169,
	beq	L352	;
	ldb	_cz	;, cz
	addb	#2	;,
	stb	_cz	;, cz
L352:
;----- asm -----
; 2105 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1510]cx = cx+cz*8+cy*13;
;--- end asm ---
	ldb	_cz	;, cz
	aslb	;
	aslb	;
	aslb	;
	stb	19,s	;, cx.134
	ldb	_cy	;, cy
	lda	#13	;umulqihi3	;
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp172
; ORG>	tfr	d,x	;, tmp172
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp172, tmp174
	addb	19,s	; tmp174, cx.134
	addb	_cx	; tmp174, cx
	stb	19,s	; tmp174, cx.134
	stb	_cx	; tmp174, cx
;----- asm -----
; 2107 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1511]if (cx >200) cx -= (unsigned char)200;
;--- end asm ---
	cmpb	#-56	;cmpqi:	; tmp174,
	bls	L353	;
	addb	#56	; tmp174,
	stb	_cx	; tmp174, cx
L353:
;----- asm -----
; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1513]cy = cy+cy*6+cx*17;
;--- end asm ---
	lda	#17	;umulqihi3	;
	mul
	tfr	d,y	;, tmp175
	ldb	_cy	;, cy
	lda	#7	;umulqihi3	;
	mul
	tfr	d,x	;, tmp176
	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp175,
	stb	2,s	;, cy.136
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp176,
	stb	18,s	;,
	ldb	2,s	;, cy.136
	addb	18,s	;,
	stb	_cy	;, cy
;----- asm -----
; 2112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1514]if (cy >200) cx -= (unsigned char)200;
;--- end asm ---
	cmpb	#-56	;cmpqi:	;,
	bls	L354	;
	ldb	_cx	;, cx
	addb	#56	;,
	stb	_cx	;, cx
L354:
;----- asm -----
; 2117 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1518]if (cz==0) cz = 1;
;--- end asm ---
	tst	_cz	; cz
	bne	L355	;
	ldb	#1	;,
	stb	_cz	;, cz
L355:
;----- asm -----
; 2119 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1519]if (cz>50) cz = 50;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	lbhi	L459	;
L356:
;----- asm -----
; 2124 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1523]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2128 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1526]initsoundno = sound_teleport;
;--- end asm ---
	ldb	#2	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1527]while (lightchange++<0x5f)
;--- end asm ---
	bra	L442	;
L460:
	jsr	_displayRound
L442:
	ldb	_lightChange	;, lightChange
	stb	2,s	;,
	incb	;
	stb	_lightChange	;, lightChange
	ldb	2,s	;,
	cmpb	#94	;cmpqi:	;,
	ble	L460	;
;----- asm -----
; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1529]lightchange = 0;
;--- end asm ---
	clr	_lightChange	; lightChange
;----- asm -----
; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1532]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L329:
;----- asm -----
; 1967 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1413]if (cz == 50) goto doelevator;
;--- end asm ---
	ldb	_cz	;, cz
	cmpb	#50	;cmpqi:	;,
	lbeq	L338	;
;----- asm -----
; 1971 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1416]printmessage();
;--- end asm ---
	ldx	#LC156	;,
	jsr	_printMessage
;----- asm -----
; 1974 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1418]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 1979 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1422]if (sf[levitate]>0)
;--- end asm ---
	tst	_sf+4	; sf
	lbeq	L342	;
;----- asm -----
; 1982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1424]printmessage();
;--- end asm ---
	ldx	#LC157	;,
	jsr	_printMessage
;----- asm -----
; 1984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1425]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
L343:
;----- asm -----
; 1995 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1434]if (tmp == 1)
;--- end asm ---
	ldb	_tmp	;, tmp
	cmpb	#1	;cmpqi:	;,
	lbeq	L461	;
;----- asm -----
; 2025 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1454]printmessage();
;--- end asm ---
	ldx	#LC160	;,
	jsr	_printMessage
;----- asm -----
; 2027 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1455]initsoundno = sound_pit;
;--- end asm ---
	ldb	#7	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2029 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1456]l = 3;
;--- end asm ---
	ldb	#3	;,
	stb	_l	;, l
;----- asm -----
; 2036 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1462]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2038 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1463]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1465]tmp = (signed int)randmax(l*3)+1;
;--- end asm ---
	ldb	_l	; tmp163, l
	aslb	; tmp163
	addb	_l	; tmp163, l
	jsr	_RandMax
	incb	; tmp.125
	stb	_tmp	; tmp.125, tmp
;----- asm -----
; 2043 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1466]_fi_s(, ((unsigned int) tmp));
;--- end asm ---
	ldx	#LC161	;,
	jsr	__fi_s
;----- asm -----
; 2045 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1467]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1468]ch=ch-tmp;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, tmp
	ldd	_ch	; ch, ch
	pshs	x	;subhi: R:d -= R:x	; tmp, ch.128
	subd	,s++	; ch.128
	std	_ch	; ch.128, ch
;----- asm -----
; 2049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1469]if (ch<=0)
;--- end asm ---
	cmpd	#0	; ch.128
	lble	L462	;
;----- asm -----
; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1475]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1476]fillmap =go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2062 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1477]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L450:
	ldb	_above	;, above
	cmpb	#4	;cmpqi:	;,
	lbne	L375	;
;----- asm -----
; 2214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1590]cz = cz - 1;
;--- end asm ---
	dec	_cz	; cz
;----- asm -----
; 2216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1591]printmessage();
;--- end asm ---
	ldx	#LC170	;,
	jsr	_printMessage
;----- asm -----
; 2218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1592]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2220 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1593]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1597]if (((signed int) cz)<=0)
;--- end asm ---
	tst	_cz	; cz
	lble	L463	;
;----- asm -----
; 2234 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1603]return return_new_turn;
;--- end asm ---
	ldb	37,s	; D.3848, d
	lbra	L341	;
L449:
	ldb	,y	;,* prephitmp.509
	cmpb	#4	;cmpqi:	;,
	lbne	L375	;
;----- asm -----
; 2198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1579]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1580]printmessage();
;--- end asm ---
	ldx	#LC169	;,
	jsr	_printMessage
;----- asm -----
; 2202 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1581]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2204 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1582]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1583]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L459:
	ldb	#50	;,
	stb	_cz	;, cz
	lbra	L356	;
L446:
;----- asm -----
; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1567]printmessage();
;--- end asm ---
	ldx	#LC167	;,
	jsr	_printMessage
	lbra	L362	;
L453:
;----- asm -----
; 2335 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1676]return return_nothing;
;--- end asm ---
	clrb	; D.3848
	lbra	L341	;
L456:
;----- asm -----
; 2642 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1889]printmessage();
;--- end asm ---
	ldx	#LC201	;,
	jsr	_printMessage
;----- asm -----
; 2647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1893]if (randmax(100) >40)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3964,
	lbls	L407	;
;----- asm -----
; 2650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1895]thronenothinghappens:
;--- end asm ---
L408:
;----- asm -----
; 2654 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1898]printmessage();
;--- end asm ---
	ldx	#LC202	;,
	jsr	_printMessage
;----- asm -----
; 2656 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1899]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L385:
	ldb	#1	;,
	stb	_un	;, un
L387:
;----- asm -----
; 2362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1693]#endif
; 2364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1694]return return_spanw_monster;
;--- end asm ---
	ldb	#30	; D.3848,
	lbra	L341	;
L454:
;----- asm -----
; 1909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1377]above = 4;
;--- end asm ---
	ldb	#4	;,
	stb	_above	;, above
;----- asm -----
; 1911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1378]goto dostaircase;
;--- end asm ---
	lbra	L326	;
L424:
;----- asm -----
; 2876 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2055]unsigned int cb = 0;
; 2878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2056]boxagain:
; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2057]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2058]printmessage();
;--- end asm ---
	ldx	#LC215	;,
	jsr	_printMessage
;----- asm -----
; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2059]printmessage();
;--- end asm ---
	ldx	#LC216	;,
	jsr	_printMessage
;----- asm -----
; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2060]printmessage();
;--- end asm ---
	ldx	#LC217	;,
	jsr	_printMessage
;----- asm -----
; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2062]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2066]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.177, tmp
;----- asm -----
; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2067]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2068]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2069]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2070]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.177,
	lble	L425	;
;----- asm -----
; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.177,
	sex		;extendqihi2: R:b -> R:d	; tmp.177, tmp294
	aslb	;
	rola	;
	tfr	d,x	; tmp294, tmp296
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2091]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp299, tmp
	addb	#-5	; tmp299,
	cmpb	_box	;cmpqi:(R)	; tmp299, box
	lbne	L426	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2113]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]cb++;
; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2115]if (cb <4) goto boxagain;
; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2057]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2058]printmessage();
;--- end asm ---
	ldx	#LC215	;,
	jsr	_printMessage
;----- asm -----
; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2059]printmessage();
;--- end asm ---
	ldx	#LC216	;,
	jsr	_printMessage
;----- asm -----
; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2060]printmessage();
;--- end asm ---
	ldx	#LC217	;,
	jsr	_printMessage
;----- asm -----
; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2062]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2066]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.622, tmp
;----- asm -----
; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2067]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2068]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2069]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2070]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.622,
	lble	L425	;
;----- asm -----
; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.622,
	sex		;extendqihi2: R:b -> R:d	; tmp.622, tmp301
	aslb	;
	rola	;
	tfr	d,x	; tmp301, tmp303
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2091]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp306, tmp
	addb	#-5	; tmp306,
	cmpb	_box+1	;cmpqi:(R)	; tmp306, box
	lbne	L426	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2113]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]cb++;
; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2115]if (cb <4) goto boxagain;
; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2057]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2058]printmessage();
;--- end asm ---
	ldx	#LC215	;,
	jsr	_printMessage
;----- asm -----
; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2059]printmessage();
;--- end asm ---
	ldx	#LC216	;,
	jsr	_printMessage
;----- asm -----
; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2060]printmessage();
;--- end asm ---
	ldx	#LC217	;,
	jsr	_printMessage
;----- asm -----
; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2062]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2066]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.635, tmp
;----- asm -----
; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2067]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2068]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2069]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2070]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.635,
	lble	L425	;
;----- asm -----
; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.635,
	sex		;extendqihi2: R:b -> R:d	; tmp.635, tmp308
	aslb	;
	rola	;
	tfr	d,x	; tmp308, tmp310
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2091]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp313, tmp
	addb	#-5	; tmp313,
	cmpb	_box+2	;cmpqi:(R)	; tmp313, box
	lbne	L426	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2113]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]cb++;
; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2115]if (cb <4) goto boxagain;
L427:
; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2057]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2058]printmessage();
;--- end asm ---
	ldx	#LC215	;,
	jsr	_printMessage
;----- asm -----
; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2059]printmessage();
;--- end asm ---
	ldx	#LC216	;,
	jsr	_printMessage
;----- asm -----
; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2060]printmessage();
;--- end asm ---
	ldx	#LC217	;,
	jsr	_printMessage
;----- asm -----
; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2062]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2066]tmp = (signed int) testforinput(0);
;--- end asm ---
	clrb	;
	jsr	_testForInput
	stb	_tmp	; tmp.597, tmp
;----- asm -----
; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2067]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2068]resetbuttons();
;--- end asm ---
	clr	_Vec_Buttons	; Vec_Buttons
;----- asm -----
; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2069]resetjoystick();
;--- end asm ---
	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
;----- asm -----
; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2070]if (tmp<5)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.597,
	lble	L425	;
;----- asm -----
; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
;--- end asm ---
	addb	#-5	; tmp.597,
	sex		;extendqihi2: R:b -> R:d	; tmp.597, tmp315
	aslb	;
	rola	;
	tfr	d,x	; tmp315, tmp317
	ldx	_boxColors,x	;, boxColors
	jsr	_printMessage
;----- asm -----
; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2091]if (box[cb] != tmp-5)
;--- end asm ---
	ldb	_tmp	; tmp320, tmp
	addb	#-5	; tmp320,
	cmpb	_box+3	;cmpqi:(R)	; tmp320, box
	lbne	L426	;
;----- asm -----
; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2113]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2114]cb++;
; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2115]if (cb <4) goto boxagain;
; 2967 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2119]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2969 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2120]printmessage();
;--- end asm ---
	ldx	#LC220	;,
	jsr	_printMessage
;----- asm -----
; 2971 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2121]printmessage();
;--- end asm ---
	ldx	#LC221	;,
	jsr	_printMessage
;----- asm -----
; 2977 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2126]initbox();
;--- end asm ---
	jsr	_initBox
;----- asm -----
; 2979 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2127]lltmp =(signed long long int) (ull(randmax(20)+1) * ull(1000) * ull(cz)* ull(cz) );
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	35,s	;, D.4015
	ldb	_cz	;, cz
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, cz
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	stx	6,s	; cz,
	std	,s	;,
	stx	2,s	; cz,
	leax	62,s	;,,
	jsr	___mulsi3
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	ldy	62,s	;,
	sty	,s	;,
	ldu	64,s	;,
	stu	2,s	;,
	leax	58,s	;,,
	jsr	___mulsi3
	inc	43,s	; D.4015
	ldb	43,s	;, D.4015
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, tmp332
	ldd	#0	;,
	std	4,s	;,
	stx	6,s	; tmp332,
	ldx	58,s	;,
	stx	,s	;,
	ldy	60,s	;,
	sty	2,s	;,
	leax	54,s	;,,
	jsr	___mulsi3
	leas	4,s	;,,
	ldx	50,s	; tmp352,
	ldy	52,s	; tmp353,
	stx	_lltmp	; tmp352, lltmp
	sty	_lltmp+2	; tmp353, lltmp
;----- asm -----
; 2981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2128]_fll_s(, ull(lltmp));
;--- end asm ---
	stx	,s	; tmp352,
	sty	2,s	; tmp353,
	ldx	#LC222	;,
	jsr	__fll_s
;----- asm -----
; 2983 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2129]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2130]gd = gd + ull(lltmp);
;--- end asm ---
	ldd	_gd+2	;, gd
	addd	_lltmp+2	;, lltmp
	std	_gd+2	;, gd
	ldd	_gd	;, gd
	adcb	_lltmp+1	; lltmp
	adca	_lltmp	; lltmp
	std	_gd	;, gd
;----- asm -----
; 2987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2131]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	leas	4,s	;,,
	lbra	L341	;
L455:
;----- asm -----
; 2630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1880]printmessage();
;--- end asm ---
	ldx	#LC194	;,
	jsr	_printMessage
;----- asm -----
; 2632 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1881]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L342:
;----- asm -----
; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1431]if ((unsigned long int )randmax(20)<=  (unsigned long int) s[dex]+inventory[elven_boots])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	clra		;zero_extendqihi: R:b -> R:d	; D.3851,
	tfr	d,y	;, D.3851
	ldb	_s+4	;, s
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
; Applied peep: bug1 (gcc does one exg to many)
	addd	_inventory+8; addhi3,3	;, inventory
 tfr d,x
; ORG>	tfr	d,x	;, tmp160
; ORG>	exg	d,x	;, tmp160
; ORG>	addd	_inventory+8; addhi3,3	;, inventory
; ORG>	exg	d,x	;, tmp160
	pshs	x	;cmphi: R:x with R:y	; tmp160, D.3851
	cmpy	,s++	;cmphi:	; D.3851
	lbhi	L343	;
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L343	;
L399:
;----- asm -----
; 2554 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1828]if (randmax(100)<20)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#19	;cmpqi:	; D.3956,
	lbhi	L400	;
;----- asm -----
; 2559 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1832]cz = randmax(50)+1;
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	incb	; D.3957
	stb	_cz	; D.3957, cz
L401:
;----- asm -----
; 2573 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1844]printmessage();
;--- end asm ---
	ldx	#LC196	;,
	jsr	_printMessage
;----- asm -----
; 2575 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1845]initsoundno = sound_cube;
;--- end asm ---
	ldb	#1	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2577 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1846]int soundplay = 4;
; 2579 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1847]while (1)
;--- end asm ---
	ldb	#4	;,
	stb	36,s	;, soundPlay
	bra	L404	;
L464:
	dec	36,s	; soundPlay
;----- asm -----
; 2588 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1853]initsoundno = sound_cube;
;--- end asm ---
	ldb	#1	;,
	stb	_initSoundNo	;, initSoundNo
L402:
;----- asm -----
; 2591 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1855]displayround();
;--- end asm ---
	jsr	_displayRound
L404:
;----- asm -----
; 2582 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1849]if (sfx_status_1 == 0)
;--- end asm ---
	ldb	_sfx_status_1	; sfx_status_1.164, sfx_status_1
	bne	L402	;
;----- asm -----
; 2585 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1851]if (soundplay-- == 0) break;
;--- end asm ---
	tst	36,s	; soundPlay
	bne	L464	;
;----- asm -----
; 2595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1858]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1859]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L451:
;----- asm -----
; 2172 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1559]printmessage();
;--- end asm ---
	ldx	#LC165	;,
	jsr	_printMessage
	lbra	L362	;
L461:
;----- asm -----
; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1440]printmessage();
;--- end asm ---
	ldx	#LC158	;,
	jsr	_printMessage
;----- asm -----
; 2004 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1441]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.122, tmp
;----- asm -----
; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1442]if (tmp == 4)
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.122,
	lbeq	L465	;
;----- asm -----
; 2018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1449]printmessage();
;--- end asm ---
	ldx	#LC134	;,
	jsr	_printMessage
;----- asm -----
; 2020 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1450]return return_nothing;
;--- end asm ---
	clrb	; D.3848
	lbra	L341	;
L452:
;----- asm -----
; 2267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1628]printmessage();
;--- end asm ---
	ldx	#LC174	;,
	jsr	_printMessage
;----- asm -----
; 2269 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1629]tmp = testforbutton(0);
;--- end asm ---
	clrb	;
	jsr	_testForButton
	stb	_tmp	; tmp.141, tmp
;----- asm -----
; 2271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1630]if (tmp != 4) goto nomoneynoworship;
;--- end asm ---
	cmpb	#4	;cmpqi:	; tmp.141,
	lbne	L378	;
;----- asm -----
; 2273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1631]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2276 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1633]ultmp = inputnumber(, 0, 50000);
;--- end asm ---
	ldx	#-15536	;,
	stx	,--s	;,
	ldd	#0	;,
	std	,--s	;,
	ldx	#LC175	;,
	jsr	_inputNumber
	stx	_ultmp	; ultmp.142, ultmp
;----- asm -----
; 2281 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1637]if (ull(ultmp)>gd)
;--- end asm ---
	stx	26,s	; ultmp.142, D.3896
	ldd	#0	;,
	std	24,s	;, D.3896
	ldy	_gd	;, gd
	sty	28,s	;, gd.144
	ldu	_gd+2	;, gd
	stu	30,s	;, gd.144
	leas	4,s	;,,
	ldd	20,s	;, D.3896
	ldy	24,s	;, gd.144
	pshs	y	;cmphi: R:y with R:d	;,
	cmpd	,s++	;cmphi:	;
	lbls	L466	;
L432:
;----- asm -----
; 2284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1639]printmessage();
;--- end asm ---
	ldx	#LC176	;,
	jsr	_printMessage
;----- asm -----
; 2286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1640]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1641]goto dirtypagantrash;
;--- end asm ---
	lbra	L381	;
L462:
;----- asm -----
; 2052 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1471]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2054 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1472]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3848,
	lbra	L341	;
L457:
;----- asm -----
; 2685 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1919]printmessage();
;--- end asm ---
	ldx	#LC205	;,
	jsr	_printMessage
;----- asm -----
; 2687 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1920]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2689 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1921]if (randmax(100) >70)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3970,
	lbls	L410	;
;----- asm -----
; 2692 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1923]createaking:
;--- end asm ---
L411:
;----- asm -----
; 2695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1925]m = (signed int)randmax(20);
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	_m	; D.3971, m
;----- asm -----
; 2698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1927]_fs(, mo[m]);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3971, m.168
	aslb	;
	rola	;
	tfr	d,x	; m.168, tmp243
	ldx	_mo,x	;, mo
	stx	,--s	;,
	ldx	#LC206	;,
	jsr	__fs
;----- asm -----
; 2700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1928]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2704 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1931]ml = randmax(5)*cz+5;
;--- end asm ---
	ldb	#5	;,
	jsr	_RandMax
	lda	_cz	;umulqihi3	; cz
	mul
		;movlsbqihi: D->B
	addb	#5	; ml.169,
	stb	_ml	; ml.169, ml
;----- asm -----
; 2707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1933]mh = (signed long int) (ul(randmax(ml)+1)*ul(m));
;--- end asm ---
	jsr	_RandMax
	incb	;
	stb	4,s	;, D.3978
	ldb	_m	;, m
	sex		;extendqihi2: R:b -> R:d	;,
	pshs	d	; m
	ldb	6,s	;, D.3978
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;,
	jsr	_mulhi3
	leas	2,s	;,,
	stx	_mh	;, mh
;----- asm -----
; 2709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1934]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1935]return return_monster_is_set;
;--- end asm ---
	ldb	#31	; D.3848,
	leas	2,s	;,,
	lbra	L341	;
L400:
;----- asm -----
; 2568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1840]cz = (unsigned char) inputnumber(,(unsigned long int)1,(unsigned long int)50);
;--- end asm ---
	ldd	#50	;,
	std	,--s	;,
	ldd	#1	;,
	std	,--s	;,
	ldx	#LC195	;,
	jsr	_inputNumber
	tfr	x,d	;, D.3959
	stb	_cz	;movlsbqihi: R:d -> _cz	; cz, D.3959
	leas	4,s	;,,
	lbra	L401	;
L389:
;----- asm -----
; 2399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1719]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 2404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1723]if (randmax(100)<60)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#59	;cmpqi:	; D.3924,
	lbhi	L390	;
;----- asm -----
; 2409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1727]if ((signed int)randmax(20)< 20-tmp2*3)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	aslb	;
	addb	_tmp2	;, tmp2
	stb	33,s	;, D.3926
	neg	33,s	; D.3926
	ldb	33,s	;, D.3926
	addb	#19	;,
	stb	33,s	;, D.3926
	ldb	#20	;,
	jsr	_RandMax
	cmpb	33,s	;cmpqi:(R)	; D.3927, D.3926
	lbgt	L391	;
;----- asm -----
; 2414 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1731]printmessage();
;--- end asm ---
	ldx	#LC183	;,
	jsr	_printMessage
;----- asm -----
; 2416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1732]tmp = (signed int)  randmax(cz*3)+1;
;--- end asm ---
	ldb	_cz	; tmp215, cz
	aslb	; tmp215
	addb	_cz	; tmp215, cz
	jsr	_RandMax
	incb	; tmp.153
	stb	_tmp	; tmp.153, tmp
;----- asm -----
; 2419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1734]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldx	#LC184	;,
	jsr	__fi_s
;----- asm -----
; 2421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1735]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2423 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1736]ch = ch + ((unsigned int)tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
; Applied peep: bug1 (gcc does one exg to many)
	addd	_ch; addhi3,3	;, ch
 tfr d,x
; ORG>	tfr	d,x	;, ch.154
; ORG>	exg	d,x	;, ch.154
; ORG>	addd	_ch; addhi3,3	;, ch
; ORG>	exg	d,x	;, ch.154
	stx	_ch	; ch.154, ch
;----- asm -----
; 2425 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1737]if (ch > hp) ch = hp;
;--- end asm ---
	ldy	_hp	; hp.155, hp
	pshs	y	;cmphi: R:y with R:x	; hp.155, ch.154
	cmpx	,s++	;cmphi:	; ch.154
	ble	L392	;
	sty	_ch	; hp.155, ch
L392:
;----- asm -----
; 2428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1739]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L458:
;----- asm -----
; 2777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1983]printmessage();
;--- end asm ---
	ldx	#LC208	;,
	jsr	_printMessage
;----- asm -----
; 2782 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1987]if (randmax(100) >70) goto createaking;
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#70	;cmpqi:	; D.3994,
	lbhi	L411	;
;----- asm -----
; 2787 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1991]if (randmax(20)>=s[int])
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	cmpb	_s+1	;cmpqi:	; D.3995, s
	lblo	L419	;
;----- asm -----
; 2792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1995]printmessage();
;--- end asm ---
	ldx	#LC209	;,
	jsr	_printMessage
;----- asm -----
; 2794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1996]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L463:
;----- asm -----
; 2228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1599]cz=1;
;--- end asm ---
	ldb	37,s	;, d
	stb	_cz	;, cz
;----- asm -----
; 2230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1600]goto upperinn;
L339:
; 1918 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1382]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1383]displayinn();
;--- end asm ---
	ldb	#7	;,
	jsr	_subBank0
;----- asm -----
; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1384]clearmonsterstack();
;--- end asm ---
	jsr	_clearMonsterStack
;----- asm -----
; 1926 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1387]printmessage();
;--- end asm ---
	ldx	#LC154	;,
	jsr	_printMessage
;----- asm -----
; 1928 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1388]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 1930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1389]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 1932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1390]tmp2 = (signed int)lv;
;--- end asm ---
	ldb	_lv	;, lv
	stb	_tmp2	;, tmp2
;----- asm -----
; 1934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1391]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 1936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1392]if (lv != (unsigned int) tmp2)
;--- end asm ---
	ldb	_tmp2	;, tmp2
	cmpb	_lv	;cmpqi:	;, lv
	beq	L340	;
	ldb	#75	;,
	jsr	_pause
L340:
;----- asm -----
; 1939 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1394]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L407:
;----- asm -----
; 2663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1905]printmessage();
;--- end asm ---
	ldx	#LC203	;,
	jsr	_printMessage
;----- asm -----
; 2665 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1906]ultmp = ul(randmax(100)+1)*ul(10)*ul(cz);
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	stb	2,s	;, D.3965
	ldb	_cz	;, cz
	lda	#10	;umulqihi3	;
	mul
	std	12,s	;,
	inc	2,s	; D.3965
	ldb	2,s	;, D.3965
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	d	; tmp238
	ldx	14,s	;,
	jsr	_mulhi3
	leas	2,s	;,,
	stx	_ultmp	; ultmp.166, ultmp
;----- asm -----
; 2667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1907]gd = gd + ull(ultmp);
;--- end asm ---
	leay	,x	;, ultmp.166
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
; 2669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1908]_fl_s(, ultmp);
;--- end asm ---
	pshs	x	; ultmp.166
	ldx	#LC204	;,
	jsr	__fl_s
;----- asm -----
; 2671 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1909]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2673 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1910]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1911]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	leas	2,s	;,,
	lbra	L341	;
L465:
;----- asm -----
; 2009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1444]cz = cz + 1;
;--- end asm ---
	inc	_cz	; cz
;----- asm -----
; 2011 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1445]printmessage();
;--- end asm ---
	ldx	#LC159	;,
	jsr	_printMessage
;----- asm -----
; 2013 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1446]fillmap =go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 2015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1447]return return_new_turn;
;--- end asm ---
	ldb	#1	; D.3848,
	lbra	L341	;
L390:
;----- asm -----
; 2472 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1770]if (randmax(50)>20)
;--- end asm ---
	ldb	#50	;,
	jsr	_RandMax
	cmpb	#20	;cmpqi:	; D.3943,
	lbls	L395	;
;----- asm -----
; 2475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1772]printmessage();
;--- end asm ---
	ldx	#LC187	;,
	jsr	_printMessage
;----- asm -----
; 2477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1773]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L426:
;----- asm -----
; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2095]tmp = (signed int) randmax(2*cz)+1;
;--- end asm ---
	ldb	_cz	; tmp321, cz
	aslb	; tmp321
	jsr	_RandMax
	incb	; D.4012
	stb	_tmp	; D.4012, tmp
;----- asm -----
; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2096]printmessage();
;--- end asm ---
	ldx	#LC219	;,
	jsr	_printMessage
;----- asm -----
; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2099]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	ldx	#LC140	;,
	jsr	__fi_s
;----- asm -----
; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2100]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2944 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2103]if (ch<=tmp)
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	cmpd	_ch	;cmphi:	; tmp, ch
	lbge	L467	;
;----- asm -----
; 2953 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2109]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L425:
;----- asm -----
; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2072]printmessage();
;--- end asm ---
	ldx	#LC218	;,
	jsr	_printMessage
;----- asm -----
; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2073]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L410:
;----- asm -----
; 2717 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1940]if (randmax(100) >60)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#60	;cmpqi:	; D.3984,
	lbls	L412	;
;----- asm -----
; 2720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1942]goto thronenothinghappens;
;--- end asm ---
	lbra	L408	;
L391:
;----- asm -----
; 2433 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1743]if ((signed int)randmax(20)< tmp2*3)
;--- end asm ---
	ldb	#20	;,
	jsr	_RandMax
	stb	34,s	;, D.3936
	ldb	_tmp2	; tmp220, tmp2
	aslb	; tmp220
	addb	_tmp2	; tmp220, tmp2
	cmpb	34,s	;cmpqi:(R)	; tmp220, D.3936
	lbgt	L468	;
;----- asm -----
; 2464 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1764]randomxp();
;--- end asm ---
	jsr	_randomXP
;----- asm -----
; 2466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1765]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L395:
;----- asm -----
; 2483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1778]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3944,
	lbls	L396	;
;----- asm -----
; 2490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1784]printmessage();
;--- end asm ---
	ldx	#LC187	;,
	jsr	_printMessage
;----- asm -----
; 2492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1785]printmessage();
;--- end asm ---
	ldx	#LC188	;,
	jsr	_printMessage
;----- asm -----
; 2494 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1786]sf[drunk] = randmax(16)+1;
;--- end asm ---
	ldb	#16	;,
	jsr	_RandMax
	incb	; D.3945
	stb	_sf+10	; D.3945, sf
;----- asm -----
; 2496 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1787]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L466:
	tfr	d,u	;,
	pshs	y	;cmphi: R:y with R:u	; tmp6,
	cmpu	,s++	;cmphi:	;
	lbeq	L469	;
L379:
;----- asm -----
; 2294 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1646]if (ultmp<ul(ul(50)*ul(cz)))
;--- end asm ---
	ldb	_cz	;, cz
	lda	#50	;umulqihi3	;
	mul
	tfr	d,y	;, tmp185
	pshs	d	;cmphi: R:d with R:x	; tmp185, ultmp.142
	cmpx	,s++	;cmphi:	; ultmp.142
	lblo	L381	;
;----- asm -----
; 2301 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1652]gd = gd - ultmp;
;--- end asm ---
	ldd	26,s	;, gd.144
	subd	22,s	;, D.3896
	std	30,s	;, gd.145
	ldd	24,s	;, gd.144
	sbcb	21,s	; D.3896
	sbca	20,s	; D.3896
	std	28,s	;, gd.145
	ldx	28,s	;, gd.145
	stx	_gd	;, gd
	ldy	30,s	;, gd.145
	sty	_gd+2	;, gd
;----- asm -----
; 2303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1653]tmp = (signed int)((ull(ultmp)*ull(100))/ (   ull(gd)+ ull(ultmp) ));
;--- end asm ---
	ldu	_ultmp	;, ultmp
	stu	43,s	;, temp.556
	ldd	#0	;,
	std	41,s	;, temp.556
	ldy	#100	; tmp188,
	leas	-8,s	;,,
	std	4,s	;,
	sty	6,s	; tmp188,
	ldx	49,s	;, temp.556
	stx	,s	;,
	ldu	51,s	;, temp.556
	stu	2,s	;,
	leax	62,s	;,,
	jsr	___mulsi3
	ldd	38,s	;, gd.145
	addd	51,s	;, temp.556
	std	24,s	;,
	ldd	36,s	;, gd.145
	adcb	50,s	; temp.556
	adca	49,s	; temp.556
	std	22,s	;,
	ldx	22,s	;,
	stx	4,s	;,
	ldu	24,s	;,
	stu	6,s	;,
	ldd	62,s	;,
	std	,s	;,
	ldx	64,s	;,
	stx	2,s	;,
	leax	58,s	;,,
	jsr	___udivsi3
	leas	8,s	;,,
	ldb	53,s	;,
	stb	_tmp	;, tmp
;----- asm -----
; 2305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1654]if ((signed int)randmax(100) < tmp)
;--- end asm ---
	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp188,
	jsr	_RandMax
	cmpb	_tmp	;cmpqi:	; D.3905, tmp
	lbge	L382	;
;----- asm -----
; 2310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1658]tmp2 = (signed int) randmax(7);
;--- end asm ---
	ldb	#7	;,
	jsr	_RandMax
	stb	_tmp2	; D.3907, tmp2
;----- asm -----
; 2312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1659]sf[tmp2] =(unsigned int) (sf[tmp2] + randmax((unsigned int)tmp)+(unsigned int)1);
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; D.3907, tmp2.147
	ldx	#_sf	;,
	leay	d,x	; tmp198, tmp2.147,
	ldb	,y	;, sf
	stb	32,s	;, D.3909
	ldb	_tmp	;, tmp
	jsr	_RandMax
	incb	; D.3910
	addb	32,s	; D.3910, D.3909
	stb	,y	; D.3910, sf
;----- asm -----
; 2316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1662]printmessage();
;--- end asm ---
	ldx	#LC177	;,
	jsr	_printMessage
L383:
;----- asm -----
; 2324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1668]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L467:
;----- asm -----
; 2947 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2105]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2949 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2106]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3848,
	lbra	L341	;
L419:
;----- asm -----
; 2800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2001]printmessage();
;--- end asm ---
	ldx	#LC210	;,
	jsr	_printMessage
;----- asm -----
; 2804 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2004]thronerolestatagain:
;--- end asm ---
L440:
;----- asm -----
; 2806 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2005]tmp = (signed int)randmax(6);
;--- end asm ---
	ldb	#6	;,
	jsr	_RandMax
	stb	_tmp	; D.3997, tmp
;----- asm -----
; 2808 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2006]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3999,
	lbls	L420	;
;----- asm -----
; 2812 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2009]if (s[tmp] <= 3) goto thronerolestatagain;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;,
	leax	_s,y	; tmp273,,
	ldb	,x	; D.4000, s
	cmpb	#3	;cmpqi:	; D.4000,
	bls	L440	;
;----- asm -----
; 2817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2013]s[tmp] = s[tmp] - 1;
;--- end asm ---
	decb	; D.4000
	stb	,x	; D.4000, s
;----- asm -----
; 2819 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2014]_fs(, stats[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp279
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldx	#LC211	;,
	jsr	__fs
	leas	2,s	;,,
L422:
;----- asm -----
; 2834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2025]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2836 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2026]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L420:
;----- asm -----
; 2825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2019]if (s[tmp] >= 18) goto thronerolestatagain;
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;,
	leax	_s,y	; tmp284,,
	ldb	,x	; temp.592, s
	cmpb	#17	;cmpqi:	; temp.592,
	lbhi	L440	;
;----- asm -----
; 2829 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2022]s[tmp] = s[tmp] + 1;
;--- end asm ---
	incb	; temp.592
	stb	,x	; temp.592, s
;----- asm -----
; 2831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2023]_fs(, stats[tmp]);
;--- end asm ---
	ldb	_tmp	;, tmp
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp290
	ldx	_stats,x	;, stats
	stx	,--s	;,
	ldx	#LC212	;,
	jsr	__fs
	leas	2,s	;,,
	lbra	L422	;
L396:
;----- asm -----
; 2502 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1792]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3947,
	lbls	L397	;
;----- asm -----
; 2507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1796]printmessage();
;--- end asm ---
	ldx	#LC189	;,
	jsr	_printMessage
;----- asm -----
; 2509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1797]for (int i=0;i<10;i++) inventory[i]=0;
;--- end asm ---
	ldx	#_inventory	; ivtmp.528,
L398:
	ldd	#0	;,
	std	,x++	;, inventory
	cmpx	#_inventory+20	;cmphi:	; ivtmp.528,
	bne	L398	;
;----- asm -----
; 2512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1799]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L412:
;----- asm -----
; 2726 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1947]if (randmax(100) >40)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#40	;cmpqi:	; D.3985,
	lbls	L413	;
;----- asm -----
; 2729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1949]goto teleportnow;
;--- end asm ---
	lbra	L347	;
L468:
;----- asm -----
; 2438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1747]printmessage();
;--- end asm ---
	ldx	#LC185	;,
	jsr	_printMessage
;----- asm -----
; 2440 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1748]tmp = (signed int)randmax(cz*3)+1;
;--- end asm ---
	ldb	_cz	; tmp224, cz
	aslb	; tmp224
	addb	_cz	; tmp224, cz
	jsr	_RandMax
	incb	; tmp.156
	stb	_tmp	; tmp.156, tmp
;----- asm -----
; 2442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1749]_fi_s(, (unsigned int) tmp);
;--- end asm ---
	ldx	#LC186	;,
	jsr	__fi_s
;----- asm -----
; 2444 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1750]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1754]if (tmp>=ch)
;--- end asm ---
	ldb	_tmp	;, tmp
	stb	45,s	;, tmp.574
	ldx	_ch	; ch.576, ch
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;, tmp.574
	pshs	x	;cmphi: R:x with R:d	; ch.576, tmp.574
	cmpd	,s++	;cmphi:	; tmp.574
	lbge	L470	;
;----- asm -----
; 2457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1759]ch = ch - ((unsigned int)tmp);
;--- end asm ---
	ldb	45,s	;, tmp.574
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,y	;, tmp.574
	tfr	x,d	; ch.576,
	pshs	y	;subhi: R:d -= R:y	; tmp.574,
	subd	,s++	;
	std	_ch	; tmp228, ch
;----- asm -----
; 2459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1760]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L382:
;----- asm -----
; 2321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1666]printmessage();
;--- end asm ---
	ldx	#LC178	;,
	jsr	_printMessage
	lbra	L383	;
L469:
	ldy	22,s	;, D.3896
	ldu	26,s	;, gd.144
	pshs	u	;cmphi: R:u with R:y	;,
	cmpy	,s++	;cmphi:	;
	lbls	L379	;
	lbra	L432	;
L413:
;----- asm -----
; 2733 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1952]printmessage();
;--- end asm ---
	ldx	#LC207	;,
	jsr	_printMessage
;----- asm -----
; 2735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1953]initsoundno = sound_gong;
;--- end asm ---
	ldb	#6	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 2737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1954]if (randmax(100) > 50)
;--- end asm ---
	ldb	#100	;,
	jsr	_RandMax
	cmpb	#50	;cmpqi:	; D.3986,
	lbhi	L471	;
;----- asm -----
; 2760 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1971]if (lv>cz) goto thronenothinghappens;
;--- end asm ---
	ldb	_lv	;, lv
	stb	2,s	;, lv.116
	cmpb	_cz	;cmpqi:	;, cz
	lbhi	L408	;
;----- asm -----
; 2764 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1974]ex = ull(1000)*ull(ull(2)<<(lv-1)) + 1;
;--- end asm ---
	decb	;
	stb	7,s	;,
	ldb	2,s	; tmp257, lv.116
	addb	#-17	; tmp257,
	lbmi	L416	;
	clra		;zero_extendqihi: R:b -> R:d	; tmp257,
	tfr	d,x	;, tmp258
	ldd	#2	;,
	pshs	x	; tmp258
	leax	-1,x	; tmp258
	cmpx	#-1	; tmp258
	beq	.+6
	aslb
	rola
	bra	.-9
	puls	x	; tmp258
	tfr	d,y	;, tmp344
	ldu	#0	; tmp345,
L417:
	leas	-8,s	;,,
	ldd	#0	;,
	std	4,s	;,
	ldx	#1000	;,
	stx	6,s	;,
	sty	,s	; tmp344,
	stu	2,s	; tmp345,
	leax	62,s	;,,
	jsr	___mulsi3
	leas	8,s	;,,
	ldy	54,s	;,
	sty	3,s	;,
	ldu	56,s	;,
	stu	5,s	;,
	ldd	5,s	;,
	addd	#1	;,
	std	_ex+2	;, ex
	ldd	3,s	;,
	adcb	#0	;
	adca	#0	;
	std	_ex	;, ex
;----- asm -----
; 2766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1975]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 2768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1976]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
L470:
;----- asm -----
; 2452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1756]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 2454 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1757]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3848,
	lbra	L341	;
L416:
	ldb	#15	; tmp261,
	subb	7,s	; tmp260,
	clra		;zero_extendqihi: R:b -> R:d	; tmp260,
	tfr	d,x	;, tmp263
	ldb	7,s	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	ldd	#1	;,
	pshs	x	; tmp263
	leax	-1,x	; tmp263
	cmpx	#-1	; tmp263
	beq	.+6
	lsra
	rorb
	bra	.-9
	puls	x	; tmp263
	tfr	d,y	;, tmp344
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
	tfr	d,u	;, tmp345
	lbra	L417	;
L471:
;----- asm -----
; 2743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1959]ex = ex >> 1;
;--- end asm ---
	ldd	_ex	; tmp251, ex
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
	std	_ex+2	; tmp253, ex
	lsr	_ex	; ex
	ror	_ex+1	; ex
;----- asm -----
; 2745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1960]checkxp();
;--- end asm ---
	jsr	_checkXP
;----- asm -----
; 2747 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1961]if (ch==0)
;--- end asm ---
	ldx	_ch	; ch, ch
	lbne	L415	;
;----- asm -----
; 2751 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1964]return return_player_dead;
;--- end asm ---
	ldb	#2	; D.3848,
	lbra	L341	;
L397:
;----- asm -----
; 2519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1805]printmessage();
;--- end asm ---
	ldx	#LC190	;,
	jsr	_printMessage
;----- asm -----
; 2521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1806]cs = cs + randmax(cz*4)+1;
;--- end asm ---
	ldb	_cz	; tmp231, cz
	aslb	; tmp231
	aslb	; tmp231
	jsr	_RandMax
	ldy	_cs	;, cs
	leax	1,y	; tmp232,,
	abx
	stx	_cs	; cs.160, cs
;----- asm -----
; 2523 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1807]_fl_s(, cs);
;--- end asm ---
	pshs	x	; cs.160
	ldx	#LC191	;,
	jsr	__fl_s
;----- asm -----
; 2525 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1808]printmessage(stringbuffer40);
;--- end asm ---
	ldx	#_stringBuffer40	;,
	jsr	_printMessage
;----- asm -----
; 2527 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1809]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	leas	2,s	;,,
	lbra	L341	;
L415:
;----- asm -----
; 2754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[1966]return return_pause;
;--- end asm ---
	ldb	#7	; D.3848,
	lbra	L341	;
LC223:
	.ascii	">\0"
LC224:
	.ascii	"STAY...\0"
LC225:
	.ascii	"YOU DIED!!\0"
LC226:
	.byte	65,78,79,84,72,69,82,32
	.byte	78,79,84,32,83,79,32,-128
	.byte	0
LC227:
	.byte	65,78,79,84,72,69,82,-128
	.byte	0
LC228:
	.byte	77,73,71,72,84,89,32,65
	.byte	68,86,69,78,84,85,82,69
	.byte	82,-128,0
LC229:
	.byte	66,73,84,69,83,32,84,72
	.byte	69,32,68,85,83,84,-128,0
LC230:
	.byte	68,79,32,89,79,85,32,87
	.byte	65,78,84,32,84,79,32,-128
	.byte	0
LC231:
	.byte	84,82,89,32,65,71,65,73
	.byte	78,63,32,60,49,45,52,62
	.byte	-128,0
LC232:
	.byte	76,79,65,68,32,65,32,67
	.byte	72,65,82,65,67,84,69,82
	.byte	63,32,60,52,62,-128,0
LC233:
	.ascii	"CHARACTER LOADED\0"
	.globl	_main
_main:
	pshs	y,u	;
	leas	-13,s	;,,
;----- asm -----
; 3003 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2143]initflash();
;--- end asm ---
	ldb	#8	;,
	jsr	_subBank0
;----- asm -----
; 3005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2144]restart:
;--- end asm ---
L473:
;----- asm -----
; 3007 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2145]initvars();
;--- end asm ---
	jsr	_initVars
;----- asm -----
; 3009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2146]#ifndef no_title
; 3011 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2147]ch = -1;
;--- end asm ---
	ldd	#-1	;,
	std	_ch	;, ch
;----- asm -----
; 3013 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2148]titlescreen();
;--- end asm ---
	clrb	;
	jsr	_subBank0
;----- asm -----
; 3015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2149]if (ch != -1)
;--- end asm ---
	ldx	_ch	;, ch
	cmpx	#-1	;cmphi:	;,
	lbeq	L474	;
;----- asm -----
; 3018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2151]goto loadfromflash;
;--- end asm ---
L475:
;----- asm -----
; 3443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2436]loadflash();
;--- end asm ---
	ldb	#4	;,
	jsr	_subBank0
;----- asm -----
; 3445 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2437]fillmap = go_redraw;
;--- end asm ---
	ldb	#127	;,
	stb	_fillMap	;, fillMap
;----- asm -----
; 3447 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2438]printcharacter = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_printCharacter	;, printCharacter
;----- asm -----
; 3449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2439]printdungeon = 1;
;--- end asm ---
	stb	_printDungeon	;, printDungeon
L525:
;----- asm -----
; 3482 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2459]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2460]printmessage();
;--- end asm ---
	ldx	#LC233	;,
	jsr	_printMessage
;----- asm -----
; 3486 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2461]ch = (signed long int) hp;
;--- end asm ---
	ldx	_hp	;, hp
	stx	_ch	;, ch
;----- asm -----
; 3488 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2462]gd = 0;
;--- end asm ---
	ldd	#0	;,
	std	_gd	;, gd
	std	_gd+2	;, gd
;----- asm -----
; 3490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2463]cz = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_cz	;, cz
;----- asm -----
; 3492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2464]cs = su;
;--- end asm ---
	ldx	_su	;, su
	stx	_cs	;, cs
;----- asm -----
; 3495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2466]for (int i=0; i<11;i++) sf[i] = 0;
;--- end asm ---
	ldx	#2	; tmp229,
	ldd	#_sf	; tmp227,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	tfr	d,u	; tmp227, tmp226
	tfr	x,d	; tmp229,
	pshs	u	;subhi: R:d -= R:u	; tmp226,
	subd	,s++	;
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	;, tmp228
; ORG>	tfr	d,x	;, tmp228
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp228,
	andb	#1	;,
	stb	10,s	;, prolog_loop_niters.722
	lbeq	L542	;
	clr	_sf	; sf
	ldb	#1	;,
	stb	6,s	;, i
	ldb	#10	;,
	stb	9,s	;, ivtmp.660
L530:
	ldb	#11	; tmp232,
	subb	10,s	; tmp232, prolog_loop_niters.722
	stb	11,s	; tmp232, niters.725
	ldb	10,s	;, prolog_loop_niters.722
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,u	;,
	leax	_sf,u	; ivtmp.755,,
	clr	2,s	; ivtmp.753
L531:
	ldd	#0	;,
	std	,x++	;,
	inc	2,s	; ivtmp.753
	ldb	2,s	;, ivtmp.753
	cmpb	#4	;cmpqi:	;,
	bls	L531	;
	ldb	9,s	;, ivtmp.660
	addb	#-10	;,
	stb	12,s	;, ivtmp.741
	ldb	6,s	;, i
	addb	#10	;,
	stb	2,s	;, i.799
	ldb	11,s	;, niters.725
	cmpb	#10	;cmpqi:	;,
	beq	L532	;
L537:
	ldb	2,s	;, i.799
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,x	;, i.799
	clr	_sf,x	; sf
	inc	2,s	; i.799
	dec	12,s	; ivtmp.741
	bne	L537	;
L532:
	jsr	_clearMonsterStack
;----- asm -----
; 3498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2468]_x = vec_loop_count_lo;
;--- end asm ---
	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
	stb	__x	;, _x
;----- asm -----
; 3500 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2469]setrandseednp();
;--- end asm ---
	jsr	_setRandSeedNP
;----- asm -----
; 3503 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2471]goto newturnstart;
;--- end asm ---
L478:
;----- asm -----
; 3304 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2348]turnstarting = 1;
; 3306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2349]newturnnotstart:
;--- end asm ---
	ldb	#1	;,
	stb	3,s	;, turnStarting
L497:
;----- asm -----
; 3309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2351]m = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 3311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2352]mh = 0;
;--- end asm ---
	ldd	#0	;,
	std	_mh	;, mh
;----- asm -----
; 3313 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2353]timer = action_time;
;--- end asm ---
	ldb	#-6	;,
	stb	_timer	;, timer
;----- asm -----
; 3322 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2361]for (int i=0; i<11;i++)
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf	; temp.820, sf
	beq	L501	;
	decb	; temp.820
	stb	_sf	; temp.820, sf
L501:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+1	; temp.822, sf
	beq	L502	;
	decb	; temp.822
	stb	_sf+1	; temp.822, sf
L502:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+2	; temp.824, sf
	beq	L503	;
	decb	; temp.824
	stb	_sf+2	; temp.824, sf
L503:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+3	; temp.826, sf
	beq	L504	;
	decb	; temp.826
	stb	_sf+3	; temp.826, sf
L504:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+4	; temp.828, sf
	beq	L505	;
	decb	; temp.828
	stb	_sf+4	; temp.828, sf
L505:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+5	; temp.830, sf
	beq	L506	;
	decb	; temp.830
	stb	_sf+5	; temp.830, sf
L506:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+6	; temp.832, sf
	beq	L507	;
	decb	; temp.832
	stb	_sf+6	; temp.832, sf
L507:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+7	; temp.834, sf
	beq	L508	;
	decb	; temp.834
	stb	_sf+7	; temp.834, sf
L508:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+8	; temp.836, sf
	beq	L509	;
	decb	; temp.836
	stb	_sf+8	; temp.836, sf
L509:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+9	; temp.838, sf
	beq	L510	;
	decb	; temp.838
	stb	_sf+9	; temp.838, sf
L510:
;----- asm -----
; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2363]if (sf[i] != 0)
;--- end asm ---
	ldb	_sf+10	; D.4080, sf
	beq	L511	;
	decb	; D.4080
	stb	_sf+10	; D.4080, sf
L511:
;----- asm -----
; 3333 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2370]if ((inventory[ring_of_regeneration]) && ((unsigned int)ch != hp))
;--- end asm ---
	ldx	_inventory+10	; D.4082, inventory
	beq	L499	;
	ldu	_ch	; ch.790, ch
	tfr	u,d	; ch.790,
	clra		;zero_extendqihi: R:b -> R:d	;,
	cmpd	_hp	;cmphi:	; ch.790, hp
	beq	L499	;
;----- asm -----
; 3336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2372]ch=ch+(signed long int)inventory[ring_of_regeneration];
;--- end asm ---
	exg	d,x	;, D.4082
	leau	d,u	; ch.196,, ch.196
	stu	_ch	; ch.196, ch
;----- asm -----
; 3338 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2373]if ((unsigned int)ch>hp) ch=(signed int)hp;
;--- end asm ---
	ldx	_hp	; hp.793, hp
	tfr	u,d	; ch.196,
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	x	;cmphi: R:x with R:d	; hp.793, ch.196
	cmpd	,s++	;cmphi:	; ch.196
	ble	L499	;
	tfr	x,d	; hp.793,
	sex		;extendqihi2: R:b -> R:d	;,
	std	_ch	; hp.793, ch
L499:
;----- asm -----
; 3342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2376]timer--;
;--- end asm ---
	dec	_timer	; timer
L512:
;----- asm -----
; 3064 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2181]displayround();
;--- end asm ---
	jsr	_displayRound
;----- asm -----
; 3067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2183]if (turnstarting)
;--- end asm ---
	tst	3,s	; turnStarting
	lbeq	L476	;
;----- asm -----
; 3070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2185]turnstarting = 0;
; 3072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2186]l = cz;
;--- end asm ---
	ldb	_cz	;, cz
	stb	_l	;, l
;----- asm -----
; 3079 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2192]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3081 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2193]#ifndef no_monster
; 3083 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2194]monsterreturns:
;--- end asm ---
	ldb	_tmp	;, tmp
L540:
;----- asm -----
; 3085 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2195]tmp = handleencounters(tmp);
;--- end asm ---
	jsr	_handleEncounters
	stb	2,s	;, tmp.188
	stb	_tmp	;, tmp
;----- asm -----
; 3087 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2196]m=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_m	;, m
;----- asm -----
; 3089 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2197]ml = 0;
;--- end asm ---
	clr	_ml	; ml
;----- asm -----
; 3091 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2198]mh = 0;
;--- end asm ---
	ldd	#0	;,
	std	_mh	;, mh
;----- asm -----
; 3093 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2199]if (tmp== return_new_turn)
;--- end asm ---
	ldb	2,s	;, tmp.188
	cmpb	#1	;cmpqi:	;,
	lbeq	L543	;
	cmpb	#2	;cmpqi:	;,
	lbeq	L544	;
	cmpb	#3	;cmpqi:	;,
	lbeq	L545	;
	cmpb	#4	;cmpqi:	;,
	lbeq	L546	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L547	;
L482:
;----- asm -----
; 3132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2228]#endif
; 3137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2232]tmp = handletreasure(tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	jsr	_handleTreasure
	stb	2,s	;, tmp.189
	stb	_tmp	;, tmp
;----- asm -----
; 3139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2233]printtreasure=-1;
;--- end asm ---
	ldb	#-1	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 3142 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2235]if (tmp == return_player_dead)
;--- end asm ---
	ldb	2,s	;, tmp.189
	cmpb	#2	;cmpqi:	;,
	lbeq	L548	;
	cmpb	#6	;cmpqi:	;,
	lbeq	L549	;
	cmpb	#5	;cmpqi:	;,
	lbeq	L550	;
L487:
;----- asm -----
; 3173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2258]handlespecial:
;--- end asm ---
L484:
;----- asm -----
; 3175 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2259]tmp = handlespecial(tmp);
;--- end asm ---
	ldb	_tmp	;, tmp
	jsr	_handleSpecial
	stb	_tmp	; tmp.190, tmp
;----- asm -----
; 3177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2260]if (tmp == return_pause)
;--- end asm ---
	cmpb	#7	;cmpqi:	; tmp.190,
	lbeq	L551	;
	cmpb	#1	;cmpqi:	; tmp.190,
	lbeq	L552	;
	cmpb	#2	;cmpqi:	; tmp.190,
	lbeq	L553	;
	cmpb	#30	;cmpqi:	; tmp.190,
	beq	L554	;
	cmpb	#31	;cmpqi:	; tmp.190,
	lbne	L476	;
;----- asm -----
; 3213 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2285]#ifndef no_monster
; 3215 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2286]tmp = return_monster_is_set;
;--- end asm ---
	stb	_tmp	;, tmp
;----- asm -----
; 3217 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2287]goto monsterreturns;
;--- end asm ---
	lbra	L540	;
L545:
;----- asm -----
; 3112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2212]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
	lbra	L482	;
L554:
;----- asm -----
; 3203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2278]#ifndef no_monster
; 3205 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2279]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2280]goto monsterreturns;
;--- end asm ---
	ldb	_tmp	;, tmp
	lbra	L540	;
L550:
;----- asm -----
; 3166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2252]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
	lbra	L487	;
L546:
;----- asm -----
; 3120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2219]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
	lbra	L482	;
L547:
;----- asm -----
; 3125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2223]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3129 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2226]goto handlespecial;
;--- end asm ---
	lbra	L484	;
L549:
;----- asm -----
; 3152 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2242]#ifndef no_monster
; 3154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2243]if (monsteronstackadvance() != 0)
;--- end asm ---
	jsr	_monsterOnStackAdvance
	tstb	; D.4069
	lbeq	L487	;
;----- asm -----
; 3157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2245]tmp = return_monster_is_set;
;--- end asm ---
	ldb	#31	;,
	stb	_tmp	;, tmp
;----- asm -----
; 3159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2246]goto monsterreturns;
;--- end asm ---
	lbra	L540	;
L551:
;----- asm -----
; 3180 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2262]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2263]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
L476:
;----- asm -----
; 3223 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2292]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2293]printmessage();
;--- end asm ---
	ldx	#LC223	;,
	jsr	_printMessage
;----- asm -----
; 3233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2300]tmp = handlemovement();
;--- end asm ---
	jsr	_handleMovement
	stb	_tmp	; tmp.191, tmp
;----- asm -----
; 3235 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2301]if (tmp)
;--- end asm ---
	tstb	; tmp.191
	bne	L555	;
;----- asm -----
; 3250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2312]if (button_1_4_pressed()) timer = 0;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	7,s	;, D.4780
	bitb	#8	;,
	lbeq	L494	;
	clr	_timer	; timer
L495:
;----- asm -----
; 3274 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2329]if ((timer == 0) || (tmp))
;--- end asm ---
	tst	_timer	; timer
	lbne	L556	;
L498:
;----- asm -----
; 3277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2331]if (!tmp)
;--- end asm ---
	tst	_tmp	; tmp
	lbeq	L557	;
L500:
;----- asm -----
; 3302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2347]newturnstart:
;--- end asm ---
	lbra	L478	;
L555:
;----- asm -----
; 3238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2303]monsteronstackevadefurther();
;--- end asm ---
	jsr	_monsterOnStackEvadeFurther
;----- asm -----
; 3240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2304]pause(very_small_pause);
;--- end asm ---
	ldb	#25	;,
	jsr	_pause
;----- asm -----
; 3242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2305]goto newturnstart;
;--- end asm ---
	lbra	L478	;
L474:
;----- asm -----
; 3022 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2154]#endif
; 3024 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2155]vec_text_hw = 0xfa50;
;--- end asm ---
	ldu	#-1456	;,
	stu	_Vec_Text_HW	;, Vec_Text_HW
;----- asm -----
; 3026 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2156]_x = vec_loop_count_lo;
;--- end asm ---
	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
	stb	__x	;, _x
;----- asm -----
; 3028 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2157]setrandseednp();
;--- end asm ---
	jsr	_setRandSeedNP
;----- asm -----
; 3034 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2162]createcharacter();
;--- end asm ---
	jsr	_createCharacter
;----- asm -----
; 3037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2164]#if start_strong == 1
; 3055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2174]unsigned int turnstarting = 1;
; 3057 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2175]while(1)
;--- end asm ---
	ldb	#1	;,
	stb	3,s	;, turnStarting
	lbra	L512	;
L494:
	ldb	#4	; tmp126,
	andb	7,s	; tmp126, D.4780
	bne	L558	;
	ldb	#2	;,
	andb	7,s	;, D.4780
	lbeq	L495	;
;----- asm -----
; 3268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2324]displaystatuspage();
;--- end asm ---
	jsr	_displayStatusPage
	lbra	L495	;
L556:
	clr	3,s	; turnStarting
	tst	_tmp	; tmp
	lbeq	L499	;
	lbra	L498	;
L558:
;----- asm -----
; 3254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2315]castspell(0);
;--- end asm ---
	clrb	;
	jsr	_castSpell
;----- asm -----
; 3256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2316]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2317]timer = 0;
; 3260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2318]tmp = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_tmp	;, tmp
;----- asm -----
; 3262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2319]goto newturnnotstart;
;--- end asm ---
	clr	3,s	; turnStarting
	lbra	L497	;
L543:
;----- asm -----
; 3096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2201]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3098 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2202]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3100 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2203]goto newturnstart;
;--- end asm ---
	lbra	L478	;
L544:
;----- asm -----
; 3105 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2207]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3107 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2208]goto playerdead;
;--- end asm ---
L480:
;----- asm -----
; 3347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2379]if (msgline == 3)
;--- end asm ---
	ldb	_msgLine	;, msgLine
	cmpb	#3	;cmpqi:	;,
	lbeq	L559	;
L513:
;----- asm -----
; 3355 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2384]initsoundno = sound_death;
;--- end asm ---
	ldb	#5	;,
	stb	_initSoundNo	;, initSoundNo
;----- asm -----
; 3357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2385]printmessage();
;--- end asm ---
	ldx	#LC225	;,
	jsr	_printMessage
;----- asm -----
; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2386]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2389]printcharacter = 0;
;--- end asm ---
	clr	_printCharacter	; printCharacter
;----- asm -----
; 3365 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2390]printtreasure = -1;
;--- end asm ---
	ldb	#-1	;,
	stb	_printTreasure	;, printTreasure
;----- asm -----
; 3367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2391]printdungeon = 0;
;--- end asm ---
	clr	_printDungeon	; printDungeon
;----- asm -----
; 3369 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2392]m = -1;
;--- end asm ---
	stb	_m	;, m
;----- asm -----
; 3372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2394]int stage =0;
; 3374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2395]int b=0;
; 3376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2396]vec_text_hw = 0xfa50;
;--- end asm ---
	ldx	#-1456	;,
	stx	_Vec_Text_HW	;, Vec_Text_HW
;----- asm -----
; 3378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2397]while (1)
;--- end asm ---
	clr	4,s	; stage
	clr	5,s	; b
	lbra	L535	;
L562:
	ldb	__YC	; _YC.202, _YC
	addb	#-10	; _YC.202,
	stb	__YC	; _YC.202, _YC
	pshs	b	; _YC.202
	ldx	#LC226	;,
L541:
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3398 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2409]print();
;--- end asm ---
	ldb	__YC	; _YC.767, _YC
	addb	#-10	; _YC.767,
	stb	__YC	; _YC.767, _YC
	stb	,s	; _YC.767,
	ldx	#LC228	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3400 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2410]print();
;--- end asm ---
	ldb	__YC	; _YC.770, _YC
	addb	#-10	; _YC.770,
	stb	__YC	; _YC.770, _YC
	pshs	b	; _YC.770
	ldx	#LC229	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3402 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2411]addline;
;--- end asm ---
	ldb	__YC	; _YC.773, _YC
	addb	#-10	; _YC.773,
	stb	__YC	; _YC.773, _YC
;----- asm -----
; 3404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2412]if (stage == 0)
;--- end asm ---
	leas	2,s	;,,
	tst	4,s	; stage
	lbeq	L560	;
L516:
;----- asm -----
; 3416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2420]if (stage == 1)
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbeq	L561	;
L518:
;----- asm -----
; 3510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2476]overstepprint:
;--- end asm ---
L534:
;----- asm -----
; 3512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2477]drawmap();
;--- end asm ---
	ldb	#3	;,
	jsr	_subBank0
L535:
;----- asm -----
; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2399]cls;
;--- end asm ---
	ldb	#-112	;,
	stb	__XC	;, _XC
	ldb	#112	;,
	stb	__YC	;, _YC
;----- asm -----
; 3383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2400]do_sound();
;--- end asm ---
	jsr	__Do_Sound
;----- asm -----
; 3385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2401]wait_recal();
;--- end asm ---
	jsr	___Wait_Recal
;----- asm -----
; 3387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2402]check_buttons();
;--- end asm ---
	jsr	___Read_Btns
;----- asm -----
; 3390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2404]dp_via_t1_cnt_lo = 0x70;
;--- end asm ---
	ldb	#112	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
;----- asm -----
; 3392 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2405]intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	jsr	__Intensity_a
;----- asm -----
; 3395 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2407]if (lv<4) print();
;--- end asm ---
	ldb	_lv	;, lv
	cmpb	#3	;cmpqi:	;,
	lbls	L562	;
	ldb	__YC	; _YC.764, _YC
	addb	#-10	; _YC.764,
	stb	__YC	; _YC.764, _YC
	pshs	b	; _YC.764
	ldx	#LC227	;,
	lbra	L541	;
L560:
;----- asm -----
; 3407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2414]print();
;--- end asm ---
	addb	#-10	; _YC.774,
	stb	__YC	; _YC.774, _YC
	pshs	b	; _YC.774
	ldx	#LC230	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2415]print();
;--- end asm ---
	ldb	__YC	; _YC.777, _YC
	addb	#-10	; _YC.777,
	stb	__YC	; _YC.777, _YC
	pshs	b	; _YC.777
	ldx	#LC231	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3411 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2416]if (buttons_pressed()) b=1;
;--- end asm ---
	leas	2,s	;,,
	tst	_Vec_Buttons	; Vec_Buttons
	lbeq	L517	;
	ldb	#1	;,
	stb	5,s	;, b
;----- asm -----
; 3416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2420]if (stage == 1)
;--- end asm ---
	ldb	4,s	;, stage
	cmpb	#1	;cmpqi:	;,
	lbne	L518	;
L561:
;----- asm -----
; 3419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2422]if ((tmp_hp == -1) && (!(((flashavailable) && (!vec_num_players)))) )break;
;--- end asm ---
	ldx	_tmp_hp	;, tmp_hp
	cmpx	#-1	;cmphi:	;,
	bne	L519	;
	tst	_flashAvailable	; flashAvailable
	lbeq	L520	;
	tst	_Vec_Num_Players	; Vec_Num_Players
	lbne	L520	;
L519:
;----- asm -----
; 3422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2424]print();
;--- end asm ---
	ldb	__YC	; _YC.780, _YC
	addb	#-10	; _YC.780,
	stb	__YC	; _YC.780, _YC
	pshs	b	; _YC.780
	ldx	#LC230	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2425]print();
;--- end asm ---
	ldb	__YC	; _YC.783, _YC
	addb	#-10	; _YC.783,
	stb	__YC	; _YC.783, _YC
	pshs	b	; _YC.783
	ldx	#LC232	;,
	ldb	__XC	;, _XC
	jsr	_syncPrintStrd
	ldb	#-52	;,
	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
;----- asm -----
; 3426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2426]if (buttons_pressed()) b=1;
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	stb	10,s	;, D.4794
	leas	2,s	;,,
	tstb	;
	beq	L521	;
	ldb	#1	;,
	stb	5,s	;, b
L521:
;----- asm -----
; 3428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2427]if (button_1_4_pressed()) {b = 4;}
;--- end asm ---
	ldb	#8	; tmp156,
	andb	8,s	; tmp156, D.4794
	beq	L522	;
	ldb	#4	;,
	stb	5,s	;, b
L522:
;----- asm -----
; 3430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2428]if ((!buttons_pressed()) && (b!=0))
;--- end asm ---
	tst	8,s	; D.4794
	lbne	L518	;
	tst	5,s	; b
	lbeq	L518	;
;----- asm -----
; 3433 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2430]if (b==4)
;--- end asm ---
	ldb	5,s	;, b
	cmpb	#4	;cmpqi:	;,
	lbeq	L563	;
;----- asm -----
; 3506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2473]break;
;--- end asm ---
L520:
;----- asm -----
; 3516 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2480]goto restart;
;--- end asm ---
	lbra	L473	;
L517:
	ldb	5,s	;, b
	cmpb	#1	;cmpqi:	;,
	lbne	L516	;
	stb	4,s	;, stage
	clr	5,s	; b
	lbra	L534	;
L553:
;----- asm -----
; 3196 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2273]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2274]goto playerdead;
;--- end asm ---
	lbra	L480	;
L552:
;----- asm -----
; 3187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2267]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3189 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2268]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2269]goto newturnstart;
;--- end asm ---
	lbra	L478	;
L548:
;----- asm -----
; 3145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2237]tmp = 0;
;--- end asm ---
	clr	_tmp	; tmp
;----- asm -----
; 3147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2238]goto playerdead;
;--- end asm ---
	lbra	L480	;
L557:
;----- asm -----
; 3280 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2333]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
;----- asm -----
; 3282 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2334]printmessage();
;--- end asm ---
	ldx	#LC224	;,
	jsr	_printMessage
;----- asm -----
; 3284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2335]pause(very_small_pause);
;--- end asm ---
	ldb	#25	;,
	jsr	_pause
;----- asm -----
; 3286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2336]#ifndef no_monster
; 3288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2337]tmp = monsteronstackadvance();
;--- end asm ---
	jsr	_monsterOnStackAdvance
	stb	_tmp	; tmp.193, tmp
;----- asm -----
; 3290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2338]if (tmp != 0)
;--- end asm ---
	tstb	; tmp.193
	lbeq	L500	;
;----- asm -----
; 3293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2340]tmp = return_monster_is_set;
;--- end asm ---
	ldb	#31	;,
	stb	_tmp	;, tmp
;----- asm -----
; 3295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2341]goto monsterreturns;
;--- end asm ---
	lbra	L540	;
L559:
;----- asm -----
; 3350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2381]pause(small_pause);
;--- end asm ---
	ldb	#75	;,
	jsr	_pause
;----- asm -----
; 3352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2382]clearmessage();
;--- end asm ---
	clr	_msgLine	; msgLine
	lbra	L513	;
L563:
;----- asm -----
; 3436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2432]checksavedflash();
;--- end asm ---
	ldb	#9	;,
	jsr	_subBank0
;----- asm -----
; 3438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2433]if ((flashavailable) && (!vec_num_players))
;--- end asm ---
	tst	_flashAvailable	; flashAvailable
	beq	L524	;
	tst	_Vec_Num_Players	; Vec_Num_Players
	bne	L524	;
;----- asm -----
; 3441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2435]loadfromflash:
;--- end asm ---
	lbra	L475	;
L524:
;----- asm -----
; 3454 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2443]ltmp = tmp_hp;
;--- end asm ---
	ldx	_tmp_hp	;, tmp_hp
	stx	_ltmp	;, ltmp
;----- asm -----
; 3456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2444]initvars();
;--- end asm ---
	jsr	_initVars
;----- asm -----
; 3458 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2445]hp = tmp_hp = ltmp;
;--- end asm ---
	ldx	_ltmp	; ltmp.207, ltmp
	stx	_tmp_hp	; ltmp.207, tmp_hp
	stx	_hp	; ltmp.207, hp
;----- asm -----
; 3460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2446]lv = tmp_lv;
;--- end asm ---
	ldb	_tmp_lv	;, tmp_lv
	stb	_lv	;, lv
;----- asm -----
; 3463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2448]ex = tmp_ex;
;--- end asm ---
	ldx	_tmp_ex	;, tmp_ex
	stx	_ex	;, ex
	ldu	_tmp_ex+2	;, tmp_ex
	stu	_ex+2	;, ex
;----- asm -----
; 3465 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2449]su = tmp_su;
;--- end asm ---
	ldd	_tmp_su	;, tmp_su
	std	_su	;, su
;----- asm -----
; 3468 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2451]cx = tmp_cx;
;--- end asm ---
	ldb	_tmp_cx	;, tmp_cx
	stb	_cx	;, cx
;----- asm -----
; 3470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2452]cy = tmp_cy;
;--- end asm ---
	ldb	_tmp_cy	;, tmp_cy
	stb	_cy	;, cy
;----- asm -----
; 3473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2454]tg = tmp_tg;
;--- end asm ---
	ldx	_tmp_tg	;, tmp_tg
	stx	_tg	;, tg
	ldu	_tmp_tg+2	;, tmp_tg
	stu	_tg+2	;, tg
;----- asm -----
; 3475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2455]for (int i=0;i<6;i++) s[i] = tmp_s[i];
;--- end asm ---
	ldx	#_tmp_s	; vect_ptmp_s.692,
	ldd	#_s	; tmp163,
	pshs	x	; vect_ptmp_s.692
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp164
	lbne	L526	;
	ldd	_tmp_s	;,
	std	_s	;,
	ldx	_tmp_s+2	;,
	stx	_s+2	;,
	ldu	_tmp_s+4	;,
	stu	_s+4	;,
L527:
;----- asm -----
; 3477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2456]for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
;--- end asm ---
	ldx	_tmp_inventory	;, tmp_inventory
	stx	_inventory	;, inventory
	ldu	_tmp_inventory+2	;, tmp_inventory
	stu	_inventory+2	;, inventory
	ldd	_tmp_inventory+4	;, tmp_inventory
	std	_inventory+4	;, inventory
	ldx	_tmp_inventory+6	;, tmp_inventory
	stx	_inventory+6	;, inventory
	ldu	_tmp_inventory+8	;, tmp_inventory
	stu	_inventory+8	;, inventory
	ldd	_tmp_inventory+10	;, tmp_inventory
	std	_inventory+10	;, inventory
	ldx	_tmp_inventory+12	;, tmp_inventory
	stx	_inventory+12	;, inventory
	ldu	_tmp_inventory+14	;, tmp_inventory
	stu	_inventory+14	;, inventory
	ldd	_tmp_inventory+16	;, tmp_inventory
	std	_inventory+16	;, inventory
	ldx	_tmp_inventory+18	;, tmp_inventory
	stx	_inventory+18	;, inventory
;----- asm -----
; 3479 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
	; #ENR#[2457]for (int i=0;i<4;i++) box[i] = tmp_box[i];
;--- end asm ---
	ldx	#_tmp_box	; vect_ptmp_box.664,
	ldd	#_box	; tmp210,
	pshs	x	; vect_ptmp_box.664
	ora	,s+	;,
	orb	,s+	;,
	clra	;andqi(ZERO)	;
	andb	#1	;,
	cmpd	#0	; tmp211
	bne	L528	;
	ldu	_tmp_box	;,
	stu	_box	;,
	ldd	_tmp_box+2	;,
	std	_box+2	;,
	lbra	L525	;
L526:
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
	lbra	L527	;
L528:
	ldb	_tmp_box	;, tmp_box
	stb	_box	;, box
	ldb	_tmp_box+1	;, tmp_box
	stb	_box+1	;, box
	ldb	_tmp_box+2	;, tmp_box
	stb	_box+2	;, box
	ldb	_tmp_box+3	;, tmp_box
	stb	_box+3	;, box
	lbra	L525	;
L542:
	clr	6,s	; i
	ldb	#11	;,
	stb	9,s	;, ivtmp.660
	lbra	L530	;
