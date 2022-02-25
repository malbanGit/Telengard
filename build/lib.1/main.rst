                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O3
                              5 	.module	main.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O3 -fno-ipa-reference -ftree-ter -fno-gcse
                             10 ; -fverbose-asm -W -Wextra -Wconversion -Werror -fomit-frame-pointer
                             11 ; -fno-toplevel-reorder -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ; -fno-time-report -IC:\Dev\Vide\C\PeerC\vectrex\include -D__RUM_FUNCTION=1
                             13 ; -DOMMIT_FRAMEPOINTER=1 -IC:\Dev\Vide\projects\Telengard\include
                             14 ; C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c
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
                             39 	.area	.bss
                             40 	.globl	_screen
   C880                      41 _screen:	.blkb	32
                             42 	.globl	_above
   C8A0                      43 _above:	.blkb	1
                             44 	.globl	_realAbove
   C8A1                      45 _realAbove:	.blkb	1
                             46 	.globl	_inElevator
   C8A2                      47 _inElevator:	.blkb	1
                             48 	.globl	_elevatorY
   C8A3                      49 _elevatorY:	.blkb	1
                             50 	.globl	_lightChange
   C8A4                      51 _lightChange:	.blkb	1
                             52 	.globl	_specialAction
   C8A5                      53 _specialAction:	.blkb	1
                             54 	.globl	_initSoundNo
   C8A6                      55 _initSoundNo:	.blkb	1
                             56 	.globl	_timer
   C8A7                      57 _timer:	.blkb	1
                             58 	.globl	_localTimer
   C8A8                      59 _localTimer:	.blkb	1
                             60 	.globl	_stringBuffer4
   C8A9                      61 _stringBuffer4:	.blkb	4
                             62 	.globl	_stringBuffer6
   C8AD                      63 _stringBuffer6:	.blkb	6
                             64 	.globl	_stringBuffer12
   C8B3                      65 _stringBuffer12:	.blkb	12
                             66 	.globl	_stringBuffer40
   C8BF                      67 _stringBuffer40:	.blkb	40
                             68 	.globl	_stringBufferExtra
   C8E7                      69 _stringBufferExtra:	.blkb	12
                             70 	.globl	_printDungeon
   C8F3                      71 _printDungeon:	.blkb	1
                             72 	.globl	_printEnvironment
   C8F4                      73 _printEnvironment:	.blkb	1
                             74 	.globl	_printTreasure
   C8F5                      75 _printTreasure:	.blkb	1
                             76 	.globl	_doEffectStatus
   C8F6                      77 _doEffectStatus:	.blkb	1
                             78 	.globl	_printCharacter
   C8F7                      79 _printCharacter:	.blkb	1
                             80 	.globl	_printfEffect
   C8F8                      81 _printfEffect:	.blkb	1
                             82 	.globl	_effectTimer
   C8F9                      83 _effectTimer:	.blkb	1
                             84 	.globl	_effectOffsetY
   C8FA                      85 _effectOffsetY:	.blkb	1
                             86 	.globl	_effectOffsetX
   C8FB                      87 _effectOffsetX:	.blkb	1
                             88 	.globl	_fillMap
   C8FC                      89 _fillMap:	.blkb	1
                             90 	.globl	_utmp
   C8FD                      91 _utmp:	.blkb	1
                             92 	.globl	_tmp
   C8FE                      93 _tmp:	.blkb	1
                             94 	.globl	_tmp2
   C8FF                      95 _tmp2:	.blkb	1
                             96 	.globl	_ultmp
   C900                      97 _ultmp:	.blkb	2
                             98 	.globl	_ltmp
   C902                      99 _ltmp:	.blkb	2
                            100 	.globl	_lltmp
   C904                     101 _lltmp:	.blkb	4
                            102 	.globl	_tmp_hp
   C908                     103 _tmp_hp:	.blkb	2
                            104 	.globl	_tmp_lv
   C90A                     105 _tmp_lv:	.blkb	1
                            106 	.globl	_tmp_ex
   C90B                     107 _tmp_ex:	.blkb	4
                            108 	.globl	_tmp_su
   C90F                     109 _tmp_su:	.blkb	2
                            110 	.globl	_tmp_cx
   C911                     111 _tmp_cx:	.blkb	1
                            112 	.globl	_tmp_cy
   C912                     113 _tmp_cy:	.blkb	1
                            114 	.globl	_tmp_tg
   C913                     115 _tmp_tg:	.blkb	4
                            116 	.globl	_tmp_s
   C917                     117 _tmp_s:	.blkb	6
                            118 	.globl	_tmp_inventory
   C91D                     119 _tmp_inventory:	.blkb	10
                            120 	.globl	_tmp_box
   C927                     121 _tmp_box:	.blkb	4
                            122 	.globl	_hp
   C92B                     123 _hp:	.blkb	2
                            124 	.globl	_ch
   C92D                     125 _ch:	.blkb	2
                            126 	.globl	_lv
   C92F                     127 _lv:	.blkb	1
                            128 	.globl	_ex
   C930                     129 _ex:	.blkb	4
                            130 	.globl	_su
   C934                     131 _su:	.blkb	2
                            132 	.globl	_cs
   C936                     133 _cs:	.blkb	2
                            134 	.globl	_cx
   C938                     135 _cx:	.blkb	1
                            136 	.globl	_cy
   C939                     137 _cy:	.blkb	1
                            138 	.globl	_cz
   C93A                     139 _cz:	.blkb	1
                            140 	.globl	_gd
   C93B                     141 _gd:	.blkb	4
                            142 	.globl	_tg
   C93F                     143 _tg:	.blkb	4
                            144 	.globl	_s
   C943                     145 _s:	.blkb	6
                            146 	.globl	_inventory
   C949                     147 _inventory:	.blkb	10
                            148 	.globl	_sf
   C953                     149 _sf:	.blkb	11
                            150 	.globl	_box
   C95E                     151 _box:	.blkb	4
                            152 	.globl	_m
   C962                     153 _m:	.blkb	1
                            154 	.globl	_mh
   C963                     155 _mh:	.blkb	2
                            156 	.globl	_db
   C965                     157 _db:	.blkb	1
                            158 	.globl	_pa
   C966                     159 _pa:	.blkb	1
                            160 	.globl	_dr
   C967                     161 _dr:	.blkb	1
                            162 	.globl	_mb
   C968                     163 _mb:	.blkb	1
                            164 	.globl	_un
   C969                     165 _un:	.blkb	1
                            166 	.globl	_ml
   C96A                     167 _ml:	.blkb	1
                            168 	.globl	_l
   C96B                     169 _l:	.blkb	1
                            170 	.globl	_stackM
   C96C                     171 _stackM:	.blkb	20
                            172 	.globl	_stackML
   C980                     173 _stackML:	.blkb	20
                            174 	.globl	_stackMH
   C994                     175 _stackMH:	.blkb	40
                            176 	.globl	_lastX
   C9BC                     177 _lastX:	.blkb	1
                            178 	.globl	_lastY
   C9BD                     179 _lastY:	.blkb	1
                            180 	.globl	__y_
   C9BE                     181 __y_:	.blkb	1
                            182 	.globl	__x_
   C9BF                     183 __x_:	.blkb	1
                            184 	.globl	__XC
   C9C0                     185 __XC:	.blkb	1
                            186 	.globl	__YC
   C9C1                     187 __YC:	.blkb	1
                            188 	.globl	_msgLine
   C9C2                     189 _msgLine:	.blkb	1
                            190 	.globl	_msg_1
   C9C3                     191 _msg_1:	.blkb	40
                            192 	.globl	_msg_2
   C9EB                     193 _msg_2:	.blkb	40
                            194 	.globl	_msg_3
   CA13                     195 _msg_3:	.blkb	40
                            196 	.globl	_msg_4
   CA3B                     197 _msg_4:	.blkb	40
                            198 	.globl	_msg
                            199 	.area	.text
   0098                     200 _msg:
   0098 C9 C3               201 	.word	_msg_1
   009A C9 EB               202 	.word	_msg_2
   009C CA 13               203 	.word	_msg_3
   009E CA 3B               204 	.word	_msg_4
                            205 	.area	.bss
                            206 	.globl	__x
   CA63                     207 __x:	.blkb	1
                            208 	.globl	__a
   CA64                     209 __a:	.blkb	1
                            210 	.globl	__b
   CA65                     211 __b:	.blkb	1
                            212 	.globl	__c
   CA66                     213 __c:	.blkb	1
                            214 	.globl	___x
   CA67                     215 ___x:	.blkb	1
                            216 	.globl	___a
   CA68                     217 ___a:	.blkb	1
                            218 	.globl	___b
   CA69                     219 ___b:	.blkb	1
                            220 	.globl	___c
   CA6A                     221 ___c:	.blkb	1
                            222 	.globl	_fpackX0x
   CA6B                     223 _fpackX0x:	.blkb	5
                            224 	.globl	_fpackY0y
   CA70                     225 _fpackY0y:	.blkb	5
                            226 	.globl	_fpackZ0z
   CA75                     227 _fpackZ0z:	.blkb	5
                            228 	.globl	_fpacktmp1
   CA7A                     229 _fpacktmp1:	.blkb	5
                            230 	.globl	_fpacktmp2
   CA7F                     231 _fpacktmp2:	.blkb	5
                            232 	.globl	_fpackQ
   CA84                     233 _fpackQ:	.blkb	5
                            234 	.globl	_FP0EXP
   CA89                     235 _FP0EXP:	.blkb	1
                            236 	.globl	_FPA0
   CA8A                     237 _FPA0:	.blkb	4
                            238 	.globl	_FP0SGN
   CA8E                     239 _FP0SGN:	.blkb	1
                            240 	.globl	_COEFCT
   CA8F                     241 _COEFCT:	.blkb	1
                            242 	.globl	_STRDES
   CA90                     243 _STRDES:	.blkb	5
                            244 	.globl	_FPCARY
   CA95                     245 _FPCARY:	.blkb	1
                            246 	.globl	_FP1EXP
   CA96                     247 _FP1EXP:	.blkb	1
                            248 	.globl	_FPA1
   CA97                     249 _FPA1:	.blkb	4
                            250 	.globl	_FP1SGN
   CA9B                     251 _FP1SGN:	.blkb	1
                            252 	.globl	_RESSGN
   CA9C                     253 _RESSGN:	.blkb	1
                            254 	.globl	_FPSBYT
   CA9D                     255 _FPSBYT:	.blkb	1
                            256 	.globl	_COEFPT
   CA9E                     257 _COEFPT:	.blkb	2
                            258 	.globl	__TMPTR1
   CAA0                     259 __TMPTR1:	.blkb	1
                            260 	.globl	_FPA2
   CAA1                     261 _FPA2:	.blkb	4
                            262 	.globl	_V40
   CAA5                     263 _V40:	.blkb	1
                            264 	.globl	_V41
   CAA6                     265 _V41:	.blkb	1
                            266 	.globl	_V42
   CAA7                     267 _V42:	.blkb	1
                            268 	.globl	_V43
   CAA8                     269 _V43:	.blkb	1
                            270 	.globl	_V44
   CAA9                     271 _V44:	.blkb	1
                            272 	.globl	_V45
   CAAA                     273 _V45:	.blkb	1
                            274 	.globl	_V46
   CAAB                     275 _V46:	.blkb	1
                            276 	.globl	_V47
   CAAC                     277 _V47:	.blkb	1
                            278 	.globl	_V48
   CAAD                     279 _V48:	.blkb	2
                            280 	.globl	_V4A
   CAAF                     281 _V4A:	.blkb	1
                            282 	.globl	_V4B
   CAB0                     283 _V4B:	.blkb	2
                            284 	.globl	_V4D
   CAB2                     285 _V4D:	.blkb	2
                            286 	.globl	_VAB
   CAB4                     287 _VAB:	.blkb	1
                            288 	.globl	_VAC
   CAB5                     289 _VAC:	.blkb	1
                            290 	.globl	_VAD
   CAB6                     291 _VAD:	.blkb	1
                            292 	.globl	_VAE
   CAB7                     293 _VAE:	.blkb	1
                            294 	.globl	_TMPLOC
   CAB8                     295 _TMPLOC:	.blkb	1
                            296 	.globl	_CHARAC
   CAB9                     297 _CHARAC:	.blkb	1
                            298 	.globl	_sfx_status_1
   CABA                     299 _sfx_status_1:	.blkb	1
                            300 	.globl	_sfx_pointer_1
   CABB                     301 _sfx_pointer_1:	.blkb	2
                            302 	.globl	_currentSFX_1
   CABD                     303 _currentSFX_1:	.blkb	2
                            304 	.globl	_sfx_doframe_intern_1
   CABF                     305 _sfx_doframe_intern_1:	.blkb	2
                            306 	.globl	_PLY_error
   CAC1                     307 _PLY_error:	.blkb	1
                            308 	.globl	_ACCA
   CAC2                     309 _ACCA:	.blkb	1
                            310 	.globl	_ACCB
   CAC3                     311 _ACCB:	.blkb	1
                            312 	.globl	_volumeRegister
   CAC4                     313 _volumeRegister:	.blkb	1
                            314 	.globl	_frequencyRegister
   CAC5                     315 _frequencyRegister:	.blkb	1
                            316 	.globl	_r7
   CAC6                     317 _r7:	.blkb	1
                            318 	.globl	_initFlag1
   CAC7                     319 _initFlag1:	.blkb	1
                            320 	.globl	_initFlag2
   CAC8                     321 _initFlag2:	.blkb	1
                            322 	.globl	_initFlag3
   CAC9                     323 _initFlag3:	.blkb	1
                            324 	.globl	_PLY_AKY_PATTERNFRAMECOUNTER_OVER
   CACA                     325 _PLY_AKY_PATTERNFRAMECOUNTER_OVER:	.blkb	2
                            326 	.globl	_PLY_AKY_PATTERNFRAMECOUNTER
   CACC                     327 _PLY_AKY_PATTERNFRAMECOUNTER:	.blkb	2
                            328 	.globl	_PLY_AKY_CHANNEL1_PTTRACK
   CACE                     329 _PLY_AKY_CHANNEL1_PTTRACK:	.blkb	2
                            330 	.globl	_PLY_AKY_CHANNEL2_PTTRACK
   CAD0                     331 _PLY_AKY_CHANNEL2_PTTRACK:	.blkb	2
                            332 	.globl	_PLY_AKY_CHANNEL3_PTTRACK
   CAD2                     333 _PLY_AKY_CHANNEL3_PTTRACK:	.blkb	2
                            334 	.globl	_PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK
   CAD4                     335 _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            336 	.globl	_PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK
   CAD5                     337 _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            338 	.globl	_PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK
   CAD6                     339 _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            340 	.globl	_PLY_AKY_CHANNEL1_PTREGISTERBLOCK
   CAD7                     341 _PLY_AKY_CHANNEL1_PTREGISTERBLOCK:	.blkb	2
                            342 	.globl	_PLY_AKY_CHANNEL2_PTREGISTERBLOCK
   CAD9                     343 _PLY_AKY_CHANNEL2_PTREGISTERBLOCK:	.blkb	2
                            344 	.globl	_PLY_AKY_CHANNEL3_PTREGISTERBLOCK
   CADB                     345 _PLY_AKY_CHANNEL3_PTREGISTERBLOCK:	.blkb	2
                            346 	.globl	_PLY_AKY_PSGREGISTER13_RETRIG
   CADD                     347 _PLY_AKY_PSGREGISTER13_RETRIG:	.blkb	1
                            348 	.globl	_PLY_AKY_PSGREGISTER6
   CADE                     349 _PLY_AKY_PSGREGISTER6:	.blkb	1
                            350 	.globl	_PLY_AKY_PSGREGISTER11
   CADF                     351 _PLY_AKY_PSGREGISTER11:	.blkb	1
                            352 	.globl	_PLY_AKY_PSGREGISTER12
   CAE0                     353 _PLY_AKY_PSGREGISTER12:	.blkb	1
                            354 	.globl	_PLY_AKY_PSGREGISTER13
   CAE1                     355 _PLY_AKY_PSGREGISTER13:	.blkb	1
                            356 	.globl	_mo
                            357 	.area	.text
   00A0                     358 LC0:
   00A0 47 4E 4F 4C 4C 00   359 	.ascii	"GNOLL\0"
   00A6                     360 LC1:
   00A6 4B 4F 42 4F 4C 44   361 	.ascii	"KOBOLD\0"
        00
   00AD                     362 LC2:
   00AD 53 4B 45 4C 45 54   363 	.ascii	"SKELETON\0"
        4F 4E 00
   00B6                     364 LC3:
   00B6 48 4F 42 42 49 54   365 	.ascii	"HOBBIT\0"
        00
   00BD                     366 LC4:
   00BD 5A 4F 4D 42 49 45   367 	.ascii	"ZOMBIE\0"
        00
   00C4                     368 LC5:
   00C4 4F 52 43 00         369 	.ascii	"ORC\0"
   00C8                     370 LC6:
   00C8 46 49 47 48 54 45   371 	.ascii	"FIGHTER\0"
        52 00
   00D0                     372 LC7:
   00D0 4D 55 4D 4D 59 00   373 	.ascii	"MUMMY\0"
   00D6                     374 LC8:
   00D6 45 4C 46 00         375 	.ascii	"ELF\0"
   00DA                     376 LC9:
   00DA 47 48 4F 55 4C 00   377 	.ascii	"GHOUL\0"
   00E0                     378 LC10:
   00E0 44 57 41 52 46 00   379 	.ascii	"DWARF\0"
   00E6                     380 LC11:
   00E6 54 52 4F 4C 4C 00   381 	.ascii	"TROLL\0"
   00EC                     382 LC12:
   00EC 57 52 41 49 54 48   383 	.ascii	"WRAITH\0"
        00
   00F3                     384 LC13:
   00F3 4F 47 52 45 00      385 	.ascii	"OGRE\0"
   00F8                     386 LC14:
   00F8 4D 49 4E 4F 54 41   387 	.ascii	"MINOTAUR\0"
        55 52 00
   0101                     388 LC15:
   0101 47 49 41 4E 54 00   389 	.ascii	"GIANT\0"
   0107                     390 LC16:
   0107 53 50 45 43 54 45   391 	.ascii	"SPECTER\0"
        52 00
   010F                     392 LC17:
   010F 56 41 4D 50 49 52   393 	.ascii	"VAMPIRE\0"
        45 00
   0117                     394 LC18:
   0117 44 45 4D 4F 4E 00   395 	.ascii	"DEMON\0"
   011D                     396 LC19:
   011D 44 52 41 47 4F 4E   397 	.ascii	"DRAGON\0"
        00
   0124                     398 _mo:
   0124 00 A0               399 	.word	LC0
   0126 00 A6               400 	.word	LC1
   0128 00 AD               401 	.word	LC2
   012A 00 B6               402 	.word	LC3
   012C 00 BD               403 	.word	LC4
   012E 00 C4               404 	.word	LC5
   0130 00 C8               405 	.word	LC6
   0132 00 D0               406 	.word	LC7
   0134 00 D6               407 	.word	LC8
   0136 00 DA               408 	.word	LC9
   0138 00 E0               409 	.word	LC10
   013A 00 E6               410 	.word	LC11
   013C 00 EC               411 	.word	LC12
   013E 00 F3               412 	.word	LC13
   0140 00 F8               413 	.word	LC14
   0142 01 01               414 	.word	LC15
   0144 01 07               415 	.word	LC16
   0146 01 0F               416 	.word	LC17
   0148 01 17               417 	.word	LC18
   014A 01 1D               418 	.word	LC19
                            419 	.globl	_stats
   014C                     420 LC20:
   014C 53 54 52 00         421 	.ascii	"STR\0"
   0150                     422 LC21:
   0150 49 4E 54 00         423 	.ascii	"INT\0"
   0154                     424 LC22:
   0154 57 49 53 00         425 	.ascii	"WIS\0"
   0158                     426 LC23:
   0158 43 4F 4E 00         427 	.ascii	"CON\0"
   015C                     428 LC24:
   015C 44 45 58 00         429 	.ascii	"DEX\0"
   0160                     430 LC25:
   0160 43 48 52 00         431 	.ascii	"CHR\0"
   0164                     432 _stats:
   0164 01 4C               433 	.word	LC20
   0166 01 50               434 	.word	LC21
   0168 01 54               435 	.word	LC22
   016A 01 58               436 	.word	LC23
   016C 01 5C               437 	.word	LC24
   016E 01 60               438 	.word	LC25
                            439 	.globl	_items
   0170                     440 LC26:
   0170 53 57 4F 52 44 00   441 	.ascii	"SWORD\0"
   0176                     442 LC27:
   0176 41 52 4D 4F 52 00   443 	.ascii	"ARMOR\0"
   017C                     444 LC28:
   017C 53 48 49 4C 45 44   445 	.ascii	"SHILED\0"
        00
   0183                     446 LC29:
   0183 45 4C 56 45 4E 20   447 	.ascii	"ELVEN CLOAK\0"
        43 4C 4F 41 4B 00
   018F                     448 LC30:
   018F 45 4C 56 45 4E 20   449 	.ascii	"ELVEN BOOTS\0"
        42 4F 4F 54 53 00
   019B                     450 LC31:
   019B 52 49 4E 47 20 4F   451 	.ascii	"RING OF REGENERATION\0"
        46 20 52 45 47 45
        4E 45 52 41 54 49
        4F 4E 00
   01B0                     452 LC32:
   01B0 52 49 4E 47 20 4F   453 	.ascii	"RING OF PROTECTION\0"
        46 20 50 52 4F 54
        45 43 54 49 4F 4E
        00
   01C3                     454 LC33:
   01C3 53 43 52 4F 4C 4C   455 	.ascii	"SCROLL OF RESCUE\0"
        20 4F 46 20 52 45
        53 43 55 45 00
   01D4                     456 LC34:
   01D4 50 4F 54 49 4F 4E   457 	.ascii	"POTION OF HEALING\0"
        20 4F 46 20 48 45
        41 4C 49 4E 47 00
   01E6                     458 LC35:
   01E6 50 4F 54 49 4F 4E   459 	.ascii	"POTION OF STRENGTH\0"
        20 4F 46 20 53 54
        52 45 4E 47 54 48
        00
   01F9                     460 _items:
   01F9 01 70               461 	.word	LC26
   01FB 01 76               462 	.word	LC27
   01FD 01 7C               463 	.word	LC28
   01FF 01 83               464 	.word	LC29
   0201 01 8F               465 	.word	LC30
   0203 01 9B               466 	.word	LC31
   0205 01 B0               467 	.word	LC32
   0207 01 C3               468 	.word	LC33
   0209 01 D4               469 	.word	LC34
   020B 01 E6               470 	.word	LC35
                            471 	.globl	_spellNames1
   020D                     472 LC36:
   020D 4D 41 47 49 43 20   473 	.byte	77,65,71,73,67,32,77,73
        4D 49
   0215 53 53 49 4C 45 80   474 	.byte	83,83,73,76,69,-128,0
        00
   021C                     475 LC37:
   021C 53 4C 45 45 50 80   476 	.byte	83,76,69,69,80,-128,0
        00
   0223                     477 LC38:
   0223 43 55 52 45 20 4C   478 	.byte	67,85,82,69,32,76,73,71
        49 47
   022B 48 54 20 57 4F 55   479 	.byte	72,84,32,87,79,85,78,68
        4E 44
   0233 53 80 00            480 	.byte	83,-128,0
   0236                     481 LC39:
   0236 4C 49 47 48 54 80   482 	.byte	76,73,71,72,84,-128,0
        00
   023D                     483 LC40:
   023D 54 55 52 4E 20 55   484 	.byte	84,85,82,78,32,85,78,68
        4E 44
   0245 45 41 44 80 00      485 	.byte	69,65,68,-128,0
   024A                     486 LC41:
   024A 50 52 4F 54 2F 45   487 	.byte	80,82,79,84,47,69,86,73
        56 49
   0252 4C 80 00            488 	.byte	76,-128,0
   0255                     489 _spellNames1:
   0255 02 0D               490 	.word	LC36
   0257 02 1C               491 	.word	LC37
   0259 02 23               492 	.word	LC38
   025B 02 36               493 	.word	LC39
   025D 02 3D               494 	.word	LC40
   025F 02 4A               495 	.word	LC41
                            496 	.globl	_spellNames2
   0261                     497 LC42:
   0261 57 45 42 80 00      498 	.byte	87,69,66,-128,0
   0266                     499 LC43:
   0266 4C 45 56 49 54 41   500 	.byte	76,69,86,73,84,65,84,69
        54 45
   026E 80 00               501 	.byte	-128,0
   0270                     502 LC44:
   0270 43 41 55 53 45 20   503 	.byte	67,65,85,83,69,32,76,73
        4C 49
   0278 47 48 54 20 57 4F   504 	.byte	71,72,84,32,87,79,85,78
        55 4E
   0280 44 53 80 00         505 	.byte	68,83,-128,0
   0284                     506 LC45:
   0284 44 45 54 45 43 54   507 	.byte	68,69,84,69,67,84,32,84
        20 54
   028C 52 41 50 53 80 00   508 	.byte	82,65,80,83,-128,0
   0292                     509 LC46:
   0292 43 48 41 52 4D 80   510 	.byte	67,72,65,82,77,-128,0
        00
   0299                     511 LC47:
   0299 53 54 52 45 4E 47   512 	.byte	83,84,82,69,78,71,84,72
        54 48
   02A1 80 00               513 	.byte	-128,0
   02A3                     514 _spellNames2:
   02A3 02 61               515 	.word	LC42
   02A5 02 66               516 	.word	LC43
   02A7 02 70               517 	.word	LC44
   02A9 02 84               518 	.word	LC45
   02AB 02 92               519 	.word	LC46
   02AD 02 99               520 	.word	LC47
                            521 	.globl	_spellNames3
   02AF                     522 LC48:
   02AF 4C 49 47 48 54 4E   523 	.byte	76,73,71,72,84,78,73,78
        49 4E
   02B7 47 20 42 4F 4C 54   524 	.byte	71,32,66,79,76,84,-128,0
        80 00
   02BF                     525 LC49:
   02BF 43 55 52 45 20 53   526 	.byte	67,85,82,69,32,83,69,82
        45 52
   02C7 49 4F 55 53 20 57   527 	.byte	73,79,85,83,32,87,79,85
        4F 55
   02CF 4E 44 53 80 00      528 	.byte	78,68,83,-128,0
   02D4                     529 LC50:
   02D4 43 4F 4E 54 49 4E   530 	.byte	67,79,78,84,73,78,85,65
        55 41
   02DC 4C 20 4C 49 47 48   531 	.byte	76,32,76,73,71,72,84,-128
        54 80
   02E4 00                  532 	.byte	0
   02E5                     533 LC51:
   02E5 49 4E 56 49 53 49   534 	.byte	73,78,86,73,83,73,66,73
        42 49
   02ED 4C 49 54 59 80 00   535 	.byte	76,73,84,89,-128,0
   02F3                     536 LC52:
   02F3 48 4F 4C 44 20 4D   537 	.byte	72,79,76,68,32,77,79,78
        4F 4E
   02FB 53 54 45 52 80 00   538 	.byte	83,84,69,82,-128,0
   0301                     539 LC53:
   0301 50 48 41 4E 54 41   540 	.byte	80,72,65,78,84,65,83,77
        53 4D
   0309 41 4C 20 46 4F 52   541 	.byte	65,76,32,70,79,82,67,69
        43 45
   0311 53 80 00            542 	.byte	83,-128,0
   0314                     543 _spellNames3:
   0314 02 AF               544 	.word	LC48
   0316 02 BF               545 	.word	LC49
   0318 02 D4               546 	.word	LC50
   031A 02 E5               547 	.word	LC51
   031C 02 F3               548 	.word	LC52
   031E 03 01               549 	.word	LC53
                            550 	.globl	_spellNames4
   0320                     551 LC54:
   0320 50 41 53 53 20 57   552 	.byte	80,65,83,83,32,87,65,76
        41 4C
   0328 4C 80 00            553 	.byte	76,-128,0
   032B                     554 LC55:
   032B 46 49 52 45 42 41   555 	.byte	70,73,82,69,66,65,76,76
        4C 4C
   0333 80 00               556 	.byte	-128,0
   0335                     557 LC56:
   0335 43 41 55 53 45 20   558 	.byte	67,65,85,83,69,32,83,69
        53 45
   033D 52 49 4F 55 53 20   559 	.byte	82,73,79,85,83,32,87,79
        57 4F
   0345 55 4E 44 53 80 00   560 	.byte	85,78,68,83,-128,0
   034B                     561 LC57:
   034B 46 4C 45 53 48 20   562 	.byte	70,76,69,83,72,32,84,79
        54 4F
   0353 20 53 54 4F 4E 45   563 	.byte	32,83,84,79,78,69,-128,0
        80 00
   035B                     564 LC58:
   035B 46 45 41 52 80 00   565 	.byte	70,69,65,82,-128,0
   0361                     566 LC59:
   0361 46 49 4E 47 45 52   567 	.byte	70,73,78,71,69,82,32,79
        20 4F
   0369 46 20 44 45 41 54   568 	.byte	70,32,68,69,65,84,72,-128
        48 80
   0371 00                  569 	.byte	0
   0372                     570 _spellNames4:
   0372 03 20               571 	.word	LC54
   0374 03 2B               572 	.word	LC55
   0376 03 35               573 	.word	LC56
   0378 03 4B               574 	.word	LC57
   037A 03 5B               575 	.word	LC58
   037C 03 61               576 	.word	LC59
                            577 	.globl	_spellNames5
   037E                     578 LC60:
   037E 54 45 4C 45 50 4F   579 	.byte	84,69,76,69,80,79,82,84
        52 54
   0386 80 00               580 	.byte	-128,0
   0388                     581 LC61:
   0388 41 53 54 52 41 4C   582 	.byte	65,83,84,82,65,76,32,87
        20 57
   0390 41 4C 4B 80 00      583 	.byte	65,76,75,-128,0
   0395                     584 LC62:
   0395 50 4F 57 45 52 20   585 	.byte	80,79,87,69,82,32,87,79
        57 4F
   039D 52 44 20 4B 49 4C   586 	.byte	82,68,32,75,73,76,76,-128
        4C 80
   03A5 00                  587 	.byte	0
   03A6                     588 LC63:
   03A6 49 43 45 20 53 54   589 	.byte	73,67,69,32,83,84,79,82
        4F 52
   03AE 4D 80 00            590 	.byte	77,-128,0
   03B1                     591 LC64:
   03B1 57 41 4C 4C 20 4F   592 	.byte	87,65,76,76,32,79,70,32
        46 20
   03B9 46 49 52 45 80 00   593 	.byte	70,73,82,69,-128,0
   03BF                     594 LC65:
   03BF 50 4C 41 47 55 45   595 	.byte	80,76,65,71,85,69,-128,0
        80 00
   03C7                     596 _spellNames5:
   03C7 03 7E               597 	.word	LC60
   03C9 03 88               598 	.word	LC61
   03CB 03 95               599 	.word	LC62
   03CD 03 A6               600 	.word	LC63
   03CF 03 B1               601 	.word	LC64
   03D1 03 BF               602 	.word	LC65
                            603 	.globl	_spellNames6
   03D3                     604 LC66:
   03D3 54 49 4D 45 20 53   605 	.byte	84,73,77,69,32,83,84,79
        54 4F
   03DB 50 80 00            606 	.byte	80,-128,0
   03DE                     607 LC67:
   03DE 52 41 49 53 45 20   608 	.byte	82,65,73,83,69,32,68,69
        44 45
   03E6 41 44 80 00         609 	.byte	65,68,-128,0
   03EA                     610 LC68:
   03EA 48 4F 4C 59 20 53   611 	.byte	72,79,76,89,32,83,89,77
        59 4D
   03F2 42 4F 4C 80 00      612 	.byte	66,79,76,-128,0
   03F7                     613 LC69:
   03F7 57 4F 52 44 20 4F   614 	.byte	87,79,82,68,32,79,70,32
        46 20
   03FF 52 45 43 41 4C 4C   615 	.byte	82,69,67,65,76,76,-128,0
        80 00
   0407                     616 LC70:
   0407 52 45 53 54 4F 52   617 	.byte	82,69,83,84,79,82,65,84
        41 54
   040F 49 4F 4E 80 00      618 	.byte	73,79,78,-128,0
   0414                     619 LC71:
   0414 50 52 49 53 4D 41   620 	.byte	80,82,73,83,77,65,84,73
        54 49
   041C 43 20 57 41 4C 4C   621 	.byte	67,32,87,65,76,76,-128,0
        80 00
   0424                     622 _spellNames6:
   0424 03 D3               623 	.word	LC66
   0426 03 DE               624 	.word	LC67
   0428 03 EA               625 	.word	LC68
   042A 03 F7               626 	.word	LC69
   042C 04 07               627 	.word	LC70
   042E 04 14               628 	.word	LC71
                            629 	.globl	_spellNames
   0430                     630 _spellNames:
   0430 02 55               631 	.word	_spellNames1
   0432 02 A3               632 	.word	_spellNames2
   0434 03 14               633 	.word	_spellNames3
   0436 03 72               634 	.word	_spellNames4
   0438 03 C7               635 	.word	_spellNames5
   043A 04 24               636 	.word	_spellNames6
                            637 	.globl	_treasure
   043C                     638 LC72:
   043C 52 45 46 55 53 45   639 	.ascii	"REFUSE\0"
        00
   0443                     640 LC73:
   0443 53 49 4C 56 45 52   641 	.ascii	"SILVER\0"
        00
   044A                     642 LC74:
   044A 47 4F 4C 44 00      643 	.ascii	"GOLD\0"
   044F                     644 LC75:
   044F 47 45 4D 53 00      645 	.ascii	"GEMS\0"
   0454                     646 LC76:
   0454 4A 45 57 45 4C 53   647 	.ascii	"JEWELS\0"
        00
   045B                     648 _treasure:
   045B 04 3C               649 	.word	LC72
   045D 04 43               650 	.word	LC73
   045F 04 4A               651 	.word	LC74
   0461 04 4F               652 	.word	LC75
   0463 04 54               653 	.word	LC76
                            654 	.globl	_fountain
   0465                     655 LC77:
   0465 57 48 49 54 45 00   656 	.ascii	"WHITE\0"
   046B                     657 LC78:
   046B 47 52 45 45 4E 00   658 	.ascii	"GREEN\0"
   0471                     659 LC79:
   0471 43 4C 45 41 52 00   660 	.ascii	"CLEAR\0"
   0477                     661 LC80:
   0477 52 45 44 00         662 	.ascii	"RED\0"
   047B                     663 LC81:
   047B 42 4C 41 43 4B 00   664 	.ascii	"BLACK\0"
   0481                     665 _fountain:
   0481 04 65               666 	.word	LC77
   0483 04 6B               667 	.word	LC78
   0485 04 71               668 	.word	LC79
   0487 04 77               669 	.word	LC80
   0489 04 7B               670 	.word	LC81
                            671 	.globl	_boxColors
   048B                     672 LC82:
   048B 52 45 44 80 00      673 	.byte	82,69,68,-128,0
   0490                     674 LC83:
   0490 47 52 45 45 4E 80   675 	.byte	71,82,69,69,78,-128,0
        00
   0497                     676 LC84:
   0497 59 45 4C 4C 4F 57   677 	.byte	89,69,76,76,79,87,-128,0
        80 00
   049F                     678 LC85:
   049F 42 4C 55 45 80 00   679 	.byte	66,76,85,69,-128,0
   04A5                     680 _boxColors:
   04A5 04 8B               681 	.word	LC82
   04A7 04 90               682 	.word	LC83
   04A9 04 97               683 	.word	LC84
   04AB 04 9F               684 	.word	LC85
                            685 	.globl	_loadCharacter
   04AD                     686 _loadCharacter:
   04AD 39            [ 5]  687 	rts
                            688 	.globl	_saveCharacter
   04AE                     689 _saveCharacter:
   04AE 39            [ 5]  690 	rts
                            691 	.globl	_testForButton
   04AF                     692 _testForButton:
   04AF 32 77         [ 5]  693 	leas	-9,s	;,,
   04B1 E7 61         [ 5]  694 	stb	1,s	; d, d
                            695 ;----- asm -----
                            696 ; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            697 	; #ENR#[163]signed int p = 0;
                            698 ; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            699 	; #ENR#[164]signed int t = 0;
                            700 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            701 	; #ENR#[166]localtimer = action_time;
                            702 ;--- end asm ---
   04B3 C6 96         [ 2]  703 	ldb	#-106	;,
   04B5 F7 C8 A8      [ 5]  704 	stb	_localTimer	;, localTimer
                            705 ;----- asm -----
                            706 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            707 	; #ENR#[167]do
                            708 ;--- end asm ---
   04B8 6D 61         [ 7]  709 	tst	1,s	; d
   04BA 10 26 00 85   [ 6]  710 	lbne	L6	;
   04BE 6F 67         [ 7]  711 	clr	7,s	; p.251
   04C0 6F 64         [ 7]  712 	clr	4,s	; t
   04C2 16 00 67      [ 5]  713 	lbra	L15	;
   04C5                     714 L27:
                            715 ;----- asm -----
                            716 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            717 	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
                            718 ;--- end asm ---
   04C5 F6 C8 11      [ 5]  719 	ldb	_Vec_Buttons	;, Vec_Buttons
   04C8 E7 66         [ 5]  720 	stb	6,s	;, temp.246
   04CA C5 08         [ 2]  721 	bitb	#8	;,
   04CC 27 08         [ 3]  722 	beq	L8	;
   04CE C6 01         [ 2]  723 	ldb	#1	;,
   04D0 E7 67         [ 5]  724 	stb	7,s	;, p.251
   04D2 C6 04         [ 2]  725 	ldb	#4	;,
   04D4 E7 64         [ 5]  726 	stb	4,s	;, t
   04D6                     727 L8:
                            728 ;----- asm -----
                            729 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            730 	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
                            731 ;--- end asm ---
   04D6 C6 04         [ 2]  732 	ldb	#4	; tmp40,
   04D8 E4 66         [ 5]  733 	andb	6,s	; tmp40, temp.246
   04DA 27 08         [ 3]  734 	beq	L9	;
   04DC C6 01         [ 2]  735 	ldb	#1	;,
   04DE E7 67         [ 5]  736 	stb	7,s	;, p.251
   04E0 C6 03         [ 2]  737 	ldb	#3	;,
   04E2 E7 64         [ 5]  738 	stb	4,s	;, t
   04E4                     739 L9:
                            740 ;----- asm -----
                            741 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            742 	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
                            743 ;--- end asm ---
   04E4 C6 02         [ 2]  744 	ldb	#2	; tmp41,
   04E6 E4 66         [ 5]  745 	andb	6,s	; tmp41, temp.246
   04E8 27 08         [ 3]  746 	beq	L10	;
   04EA C6 01         [ 2]  747 	ldb	#1	;,
   04EC E7 67         [ 5]  748 	stb	7,s	;, p.251
   04EE C6 02         [ 2]  749 	ldb	#2	;,
   04F0 E7 64         [ 5]  750 	stb	4,s	;, t
   04F2                     751 L10:
                            752 ;----- asm -----
                            753 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            754 	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
                            755 ;--- end asm ---
   04F2 C6 01         [ 2]  756 	ldb	#1	; tmp42,
   04F4 E4 66         [ 5]  757 	andb	6,s	; tmp42, temp.246
   04F6 27 06         [ 3]  758 	beq	L11	;
   04F8 C6 01         [ 2]  759 	ldb	#1	;,
   04FA E7 67         [ 5]  760 	stb	7,s	;, p.251
   04FC E7 64         [ 5]  761 	stb	4,s	;, t
   04FE                     762 L11:
                            763 ;----- asm -----
                            764 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            765 	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
                            766 ;--- end asm ---
   04FE F6 C8 1B      [ 5]  767 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   0501 E7 68         [ 5]  768 	stb	8,s	;, Vec_Joy_1_X.252
   0503 27 08         [ 3]  769 	beq	L12	;
   0505 C6 01         [ 2]  770 	ldb	#1	;,
   0507 E7 67         [ 5]  771 	stb	7,s	;, p.251
   0509 C6 05         [ 2]  772 	ldb	#5	;,
   050B E7 64         [ 5]  773 	stb	4,s	;, t
   050D                     774 L12:
                            775 ;----- asm -----
                            776 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            777 	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
                            778 ;--- end asm ---
   050D F6 C8 1C      [ 5]  779 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   0510 E7 E4         [ 4]  780 	stb	,s	;, Vec_Joy_1_Y.253
   0512 27 08         [ 3]  781 	beq	L13	;
   0514 C6 01         [ 2]  782 	ldb	#1	;,
   0516 E7 67         [ 5]  783 	stb	7,s	;, p.251
   0518 C6 05         [ 2]  784 	ldb	#5	;,
   051A E7 64         [ 5]  785 	stb	4,s	;, t
   051C                     786 L13:
                            787 ;----- asm -----
                            788 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            789 	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                            790 ;--- end asm ---
   051C 6D 67         [ 7]  791 	tst	7,s	; p.251
   051E 27 0C         [ 3]  792 	beq	L14	;
   0520 6D 68         [ 7]  793 	tst	8,s	; Vec_Joy_1_X.252
   0522 26 08         [ 3]  794 	bne	L14	;
   0524 6D E4         [ 6]  795 	tst	,s	; Vec_Joy_1_Y.253
   0526 26 04         [ 3]  796 	bne	L14	;
   0528 6D 66         [ 7]  797 	tst	6,s	; temp.246
   052A 27 0A         [ 3]  798 	beq	L7	;
   052C                     799 L14:
                            800 ;----- asm -----
                            801 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            802 	; #ENR#[198]while (1);
                            803 ;--- end asm ---
   052C                     804 L15:
                            805 ;----- asm -----
                            806 ; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            807 	; #ENR#[169]displayround();
                            808 ;--- end asm ---
   052C BD 3C BC      [ 8]  809 	jsr	_displayRound
                            810 ;----- asm -----
                            811 ; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            812 	; #ENR#[170]if (d!=0) localtimer--;
                            813 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            814 	; #ENR#[172]if (localtimer == 0) break;
                            815 ;--- end asm ---
   052F 7D C8 A8      [ 7]  816 	tst	_localTimer	; localTimer
   0532 10 26 FF 8F   [ 6]  817 	lbne	L27	;
   0536                     818 L7:
                            819 ;----- asm -----
                            820 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            821 	; #ENR#[200]if (t == 0) return d;
                            822 ;--- end asm ---
   0536 6D 64         [ 7]  823 	tst	4,s	; t
   0538 27 04         [ 3]  824 	beq	L24	;
                            825 ;----- asm -----
                            826 ; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            827 	; #ENR#[201]return t;
                            828 ;--- end asm ---
   053A E6 64         [ 5]  829 	ldb	4,s	;, t
   053C E7 61         [ 5]  830 	stb	1,s	;, d
   053E                     831 L24:
   053E E6 61         [ 5]  832 	ldb	1,s	;, d
   0540 32 69         [ 5]  833 	leas	9,s	;,,
   0542 39            [ 5]  834 	rts
   0543                     835 L6:
   0543 6F 63         [ 7]  836 	clr	3,s	; p
   0545 6F 64         [ 7]  837 	clr	4,s	; t
   0547 16 00 69      [ 5]  838 	lbra	L23	;
   054A                     839 L28:
                            840 ;----- asm -----
                            841 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            842 	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
                            843 ;--- end asm ---
   054A F6 C8 11      [ 5]  844 	ldb	_Vec_Buttons	;, Vec_Buttons
   054D E7 65         [ 5]  845 	stb	5,s	;, D.4698
   054F C5 08         [ 2]  846 	bitb	#8	;,
   0551 27 08         [ 3]  847 	beq	L16	;
   0553 C6 01         [ 2]  848 	ldb	#1	;,
   0555 E7 63         [ 5]  849 	stb	3,s	;, p
   0557 C6 04         [ 2]  850 	ldb	#4	;,
   0559 E7 64         [ 5]  851 	stb	4,s	;, t
   055B                     852 L16:
                            853 ;----- asm -----
                            854 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            855 	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
                            856 ;--- end asm ---
   055B C6 04         [ 2]  857 	ldb	#4	; tmp44,
   055D E4 65         [ 5]  858 	andb	5,s	; tmp44, D.4698
   055F 27 08         [ 3]  859 	beq	L17	;
   0561 C6 01         [ 2]  860 	ldb	#1	;,
   0563 E7 63         [ 5]  861 	stb	3,s	;, p
   0565 C6 03         [ 2]  862 	ldb	#3	;,
   0567 E7 64         [ 5]  863 	stb	4,s	;, t
   0569                     864 L17:
                            865 ;----- asm -----
                            866 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            867 	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
                            868 ;--- end asm ---
   0569 C6 02         [ 2]  869 	ldb	#2	; tmp45,
   056B E4 65         [ 5]  870 	andb	5,s	; tmp45, D.4698
   056D 27 08         [ 3]  871 	beq	L18	;
   056F C6 01         [ 2]  872 	ldb	#1	;,
   0571 E7 63         [ 5]  873 	stb	3,s	;, p
   0573 C6 02         [ 2]  874 	ldb	#2	;,
   0575 E7 64         [ 5]  875 	stb	4,s	;, t
   0577                     876 L18:
                            877 ;----- asm -----
                            878 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            879 	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
                            880 ;--- end asm ---
   0577 C6 01         [ 2]  881 	ldb	#1	; tmp46,
   0579 E4 65         [ 5]  882 	andb	5,s	; tmp46, D.4698
   057B 27 06         [ 3]  883 	beq	L19	;
   057D C6 01         [ 2]  884 	ldb	#1	;,
   057F E7 63         [ 5]  885 	stb	3,s	;, p
   0581 E7 64         [ 5]  886 	stb	4,s	;, t
   0583                     887 L19:
                            888 ;----- asm -----
                            889 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            890 	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
                            891 ;--- end asm ---
   0583 F6 C8 1B      [ 5]  892 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   0586 E7 62         [ 5]  893 	stb	2,s	;, Vec_Joy_1_X.4
   0588 27 08         [ 3]  894 	beq	L20	;
   058A C6 01         [ 2]  895 	ldb	#1	;,
   058C E7 63         [ 5]  896 	stb	3,s	;, p
   058E C6 05         [ 2]  897 	ldb	#5	;,
   0590 E7 64         [ 5]  898 	stb	4,s	;, t
   0592                     899 L20:
                            900 ;----- asm -----
                            901 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            902 	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
                            903 ;--- end asm ---
   0592 F6 C8 1C      [ 5]  904 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   0595 E7 E4         [ 4]  905 	stb	,s	;, Vec_Joy_1_Y.5
   0597 27 08         [ 3]  906 	beq	L21	;
   0599 C6 01         [ 2]  907 	ldb	#1	;,
   059B E7 63         [ 5]  908 	stb	3,s	;, p
   059D C6 05         [ 2]  909 	ldb	#5	;,
   059F E7 64         [ 5]  910 	stb	4,s	;, t
   05A1                     911 L21:
                            912 ;----- asm -----
                            913 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            914 	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                            915 ;--- end asm ---
   05A1 6D 63         [ 7]  916 	tst	3,s	; p
   05A3 27 0E         [ 3]  917 	beq	L22	;
   05A5 6D 62         [ 7]  918 	tst	2,s	; Vec_Joy_1_X.4
   05A7 26 0A         [ 3]  919 	bne	L22	;
   05A9 6D E4         [ 6]  920 	tst	,s	; Vec_Joy_1_Y.5
   05AB 26 06         [ 3]  921 	bne	L22	;
   05AD 6D 65         [ 7]  922 	tst	5,s	; D.4698
   05AF 10 27 FF 83   [ 6]  923 	lbeq	L7	;
   05B3                     924 L22:
                            925 ;----- asm -----
                            926 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            927 	; #ENR#[198]while (1);
                            928 ;--- end asm ---
   05B3                     929 L23:
                            930 ;----- asm -----
                            931 ; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            932 	; #ENR#[169]displayround();
                            933 ;--- end asm ---
   05B3 BD 3C BC      [ 8]  934 	jsr	_displayRound
                            935 ;----- asm -----
                            936 ; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            937 	; #ENR#[170]if (d!=0) localtimer--;
                            938 ;--- end asm ---
   05B6 7A C8 A8      [ 7]  939 	dec	_localTimer	; localTimer
   05B9 F6 C8 A8      [ 5]  940 	ldb	_localTimer	; localTimer.3, localTimer
                            941 ;----- asm -----
                            942 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            943 	; #ENR#[172]if (localtimer == 0) break;
                            944 ;--- end asm ---
   05BC 5D            [ 2]  945 	tstb	; localTimer.3
   05BD 10 26 FF 89   [ 6]  946 	lbne	L28	;
   05C1 16 FF 72      [ 5]  947 	lbra	L7	;
                            948 	.globl	_testForInput
   05C4                     949 _testForInput:
   05C4 32 79         [ 5]  950 	leas	-7,s	;,,
   05C6 E7 61         [ 5]  951 	stb	1,s	; d, d
                            952 ;----- asm -----
                            953 ; 228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            954 	; #ENR#[210]int b=0;
                            955 ; 230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            956 	; #ENR#[211]signed int t = 0;
                            957 ; 232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            958 	; #ENR#[212]resetbuttons();
                            959 ;--- end asm ---
   05C8 7F C8 11      [ 7]  960 	clr	_Vec_Buttons	; Vec_Buttons
                            961 ;----- asm -----
                            962 ; 234 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            963 	; #ENR#[213]localtimer = action_time;
                            964 ;--- end asm ---
   05CB C6 96         [ 2]  965 	ldb	#-106	;,
   05CD F7 C8 A8      [ 5]  966 	stb	_localTimer	;, localTimer
                            967 ;----- asm -----
                            968 ; 236 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            969 	; #ENR#[214]do
                            970 ;--- end asm ---
   05D0 6D 61         [ 7]  971 	tst	1,s	; d
   05D2 10 26 00 8D   [ 6]  972 	lbne	L30	;
   05D6 6F 63         [ 7]  973 	clr	3,s	; t
   05D8 20 26         [ 3]  974 	bra	L42	;
   05DA                     975 L37:
                            976 ;----- asm -----
                            977 ; 257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            978 	; #ENR#[226]if (vec_joy_1_y > 0) {t = 5; b=1;}
                            979 ;--- end asm ---
   05DA F6 C8 1C      [ 5]  980 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   05DD E7 E4         [ 4]  981 	stb	,s	;, Vec_Joy_1_Y.271
   05DF 2F 04         [ 3]  982 	ble	L38	;
   05E1 C6 05         [ 2]  983 	ldb	#5	;,
   05E3 E7 63         [ 5]  984 	stb	3,s	;, t
   05E5                     985 L38:
                            986 ;----- asm -----
                            987 ; 259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            988 	; #ENR#[227]if (vec_joy_1_y < 0) {t = 6; b=1;}
                            989 ;--- end asm ---
   05E5 6D E4         [ 6]  990 	tst	,s	; Vec_Joy_1_Y.271
   05E7 10 2D 00 5F   [ 6]  991 	lblt	L55	;
   05EB                     992 L39:
                            993 ;----- asm -----
                            994 ; 263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            995 	; #ENR#[230]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
                            996 ;--- end asm ---
   05EB 6D 65         [ 7]  997 	tst	5,s	; temp.264
   05ED 26 0E         [ 3]  998 	bne	L40	;
   05EF 6D 66         [ 7]  999 	tst	6,s	; Vec_Joy_1_X.270
   05F1 26 0A         [ 3] 1000 	bne	L40	;
   05F3 6D E4         [ 6] 1001 	tst	,s	; Vec_Joy_1_Y.271
   05F5 26 06         [ 3] 1002 	bne	L40	;
   05F7 6D 63         [ 7] 1003 	tst	3,s	; t
   05F9 10 26 00 56   [ 6] 1004 	lbne	L41	;
   05FD                    1005 L40:
                           1006 ;----- asm -----
                           1007 ; 266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1008 	; #ENR#[232]displayround();
                           1009 ;--- end asm ---
   05FD BD 3C BC      [ 8] 1010 	jsr	_displayRound
                           1011 ;----- asm -----
                           1012 ; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1013 	; #ENR#[234]while (1);
                           1014 ;--- end asm ---
   0600                    1015 L42:
                           1016 ;----- asm -----
                           1017 ; 239 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1018 	; #ENR#[216]if (d!=0) localtimer--;
                           1019 ; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1020 	; #ENR#[218]if (localtimer == 0) {t = 0; break;}
                           1021 ;--- end asm ---
   0600 7D C8 A8      [ 7] 1022 	tst	_localTimer	; localTimer
   0603 10 27 00 4A   [ 6] 1023 	lbeq	L31	;
                           1024 ;----- asm -----
                           1025 ; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1026 	; #ENR#[219]if (button_1_4_pressed()) {t = 4; b=1;}
                           1027 ;--- end asm ---
   0607 F6 C8 11      [ 5] 1028 	ldb	_Vec_Buttons	;, Vec_Buttons
   060A E7 65         [ 5] 1029 	stb	5,s	;, temp.264
   060C C5 08         [ 2] 1030 	bitb	#8	;,
   060E 27 04         [ 3] 1031 	beq	L32	;
   0610 C6 04         [ 2] 1032 	ldb	#4	;,
   0612 E7 63         [ 5] 1033 	stb	3,s	;, t
   0614                    1034 L32:
                           1035 ;----- asm -----
                           1036 ; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1037 	; #ENR#[220]if (button_1_3_pressed()) {t = 3; b=1;}
                           1038 ;--- end asm ---
   0614 C6 04         [ 2] 1039 	ldb	#4	; tmp38,
   0616 E4 65         [ 5] 1040 	andb	5,s	; tmp38, temp.264
   0618 27 04         [ 3] 1041 	beq	L33	;
   061A C6 03         [ 2] 1042 	ldb	#3	;,
   061C E7 63         [ 5] 1043 	stb	3,s	;, t
   061E                    1044 L33:
                           1045 ;----- asm -----
                           1046 ; 248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1047 	; #ENR#[221]if (button_1_2_pressed()) {t = 2; b=1;}
                           1048 ;--- end asm ---
   061E C6 02         [ 2] 1049 	ldb	#2	; tmp39,
   0620 E4 65         [ 5] 1050 	andb	5,s	; tmp39, temp.264
   0622 27 04         [ 3] 1051 	beq	L34	;
   0624 C6 02         [ 2] 1052 	ldb	#2	;,
   0626 E7 63         [ 5] 1053 	stb	3,s	;, t
   0628                    1054 L34:
                           1055 ;----- asm -----
                           1056 ; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1057 	; #ENR#[222]if (button_1_1_pressed()) {t = 1; b=1;}
                           1058 ;--- end asm ---
   0628 C6 01         [ 2] 1059 	ldb	#1	; tmp40,
   062A E4 65         [ 5] 1060 	andb	5,s	; tmp40, temp.264
   062C 27 04         [ 3] 1061 	beq	L35	;
   062E C6 01         [ 2] 1062 	ldb	#1	;,
   0630 E7 63         [ 5] 1063 	stb	3,s	;, t
   0632                    1064 L35:
                           1065 ;----- asm -----
                           1066 ; 253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1067 	; #ENR#[224]if (vec_joy_1_x > 0) {t = 8; b=1;}
                           1068 ;--- end asm ---
   0632 F6 C8 1B      [ 5] 1069 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   0635 E7 66         [ 5] 1070 	stb	6,s	;, Vec_Joy_1_X.270
   0637 2F 04         [ 3] 1071 	ble	L36	;
   0639 C6 08         [ 2] 1072 	ldb	#8	;,
   063B E7 63         [ 5] 1073 	stb	3,s	;, t
   063D                    1074 L36:
                           1075 ;----- asm -----
                           1076 ; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1077 	; #ENR#[225]if (vec_joy_1_x < 0) {t = 7; b=1;}
                           1078 ;--- end asm ---
   063D 6D 66         [ 7] 1079 	tst	6,s	; Vec_Joy_1_X.270
   063F 10 2C FF 97   [ 6] 1080 	lbge	L37	;
   0643 C6 07         [ 2] 1081 	ldb	#7	;,
   0645 E7 63         [ 5] 1082 	stb	3,s	;, t
   0647 16 FF 90      [ 5] 1083 	lbra	L37	;
   064A                    1084 L55:
   064A C6 06         [ 2] 1085 	ldb	#6	;,
   064C E7 63         [ 5] 1086 	stb	3,s	;, t
   064E 16 FF 9A      [ 5] 1087 	lbra	L39	;
   0651                    1088 L31:
   0651 6F 63         [ 7] 1089 	clr	3,s	; t
   0653                    1090 L41:
                           1091 ;----- asm -----
                           1092 ; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1093 	; #ENR#[235]resetbuttons();
                           1094 ;--- end asm ---
   0653 7F C8 11      [ 7] 1095 	clr	_Vec_Buttons	; Vec_Buttons
                           1096 ;----- asm -----
                           1097 ; 273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1098 	; #ENR#[236]if (t == 0) return d;
                           1099 ;--- end asm ---
   0656 6D 63         [ 7] 1100 	tst	3,s	; t
   0658 27 04         [ 3] 1101 	beq	L53	;
                           1102 ;----- asm -----
                           1103 ; 275 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1104 	; #ENR#[237]return t;
                           1105 ;--- end asm ---
   065A E6 63         [ 5] 1106 	ldb	3,s	;, t
   065C E7 61         [ 5] 1107 	stb	1,s	;, d
   065E                    1108 L53:
   065E E6 61         [ 5] 1109 	ldb	1,s	;, d
   0660 32 67         [ 5] 1110 	leas	7,s	;,,
   0662 39            [ 5] 1111 	rts
   0663                    1112 L30:
   0663 6F 63         [ 7] 1113 	clr	3,s	; t
   0665 20 26         [ 3] 1114 	bra	L52	;
   0667                    1115 L48:
                           1116 ;----- asm -----
                           1117 ; 257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1118 	; #ENR#[226]if (vec_joy_1_y > 0) {t = 5; b=1;}
                           1119 ;--- end asm ---
   0667 F6 C8 1C      [ 5] 1120 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   066A E7 E4         [ 4] 1121 	stb	,s	;, Vec_Joy_1_Y.9
   066C 2F 04         [ 3] 1122 	ble	L49	;
   066E C6 05         [ 2] 1123 	ldb	#5	;,
   0670 E7 63         [ 5] 1124 	stb	3,s	;, t
   0672                    1125 L49:
                           1126 ;----- asm -----
                           1127 ; 259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1128 	; #ENR#[227]if (vec_joy_1_y < 0) {t = 6; b=1;}
                           1129 ;--- end asm ---
   0672 6D E4         [ 6] 1130 	tst	,s	; Vec_Joy_1_Y.9
   0674 10 2D 00 63   [ 6] 1131 	lblt	L56	;
   0678                    1132 L50:
                           1133 ;----- asm -----
                           1134 ; 263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1135 	; #ENR#[230]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
                           1136 ;--- end asm ---
   0678 6D 64         [ 7] 1137 	tst	4,s	; D.4684
   067A 26 0E         [ 3] 1138 	bne	L51	;
   067C 6D 62         [ 7] 1139 	tst	2,s	; Vec_Joy_1_X.8
   067E 26 0A         [ 3] 1140 	bne	L51	;
   0680 6D E4         [ 6] 1141 	tst	,s	; Vec_Joy_1_Y.9
   0682 26 06         [ 3] 1142 	bne	L51	;
   0684 6D 63         [ 7] 1143 	tst	3,s	; t
   0686 10 26 FF C9   [ 6] 1144 	lbne	L41	;
   068A                    1145 L51:
                           1146 ;----- asm -----
                           1147 ; 266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1148 	; #ENR#[232]displayround();
                           1149 ;--- end asm ---
   068A BD 3C BC      [ 8] 1150 	jsr	_displayRound
                           1151 ;----- asm -----
                           1152 ; 268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1153 	; #ENR#[234]while (1);
                           1154 ;--- end asm ---
   068D                    1155 L52:
                           1156 ;----- asm -----
                           1157 ; 239 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1158 	; #ENR#[216]if (d!=0) localtimer--;
                           1159 ;--- end asm ---
   068D 7A C8 A8      [ 7] 1160 	dec	_localTimer	; localTimer
   0690 F6 C8 A8      [ 5] 1161 	ldb	_localTimer	; localTimer.7, localTimer
                           1162 ;----- asm -----
                           1163 ; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1164 	; #ENR#[218]if (localtimer == 0) {t = 0; break;}
                           1165 ;--- end asm ---
   0693 5D            [ 2] 1166 	tstb	; localTimer.7
   0694 10 27 FF B9   [ 6] 1167 	lbeq	L31	;
                           1168 ;----- asm -----
                           1169 ; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1170 	; #ENR#[219]if (button_1_4_pressed()) {t = 4; b=1;}
                           1171 ;--- end asm ---
   0698 F6 C8 11      [ 5] 1172 	ldb	_Vec_Buttons	;, Vec_Buttons
   069B E7 64         [ 5] 1173 	stb	4,s	;, D.4684
   069D C5 08         [ 2] 1174 	bitb	#8	;,
   069F 27 04         [ 3] 1175 	beq	L43	;
   06A1 C6 04         [ 2] 1176 	ldb	#4	;,
   06A3 E7 63         [ 5] 1177 	stb	3,s	;, t
   06A5                    1178 L43:
                           1179 ;----- asm -----
                           1180 ; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1181 	; #ENR#[220]if (button_1_3_pressed()) {t = 3; b=1;}
                           1182 ;--- end asm ---
   06A5 C6 04         [ 2] 1183 	ldb	#4	; tmp42,
   06A7 E4 64         [ 5] 1184 	andb	4,s	; tmp42, D.4684
   06A9 27 04         [ 3] 1185 	beq	L44	;
   06AB C6 03         [ 2] 1186 	ldb	#3	;,
   06AD E7 63         [ 5] 1187 	stb	3,s	;, t
   06AF                    1188 L44:
                           1189 ;----- asm -----
                           1190 ; 248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1191 	; #ENR#[221]if (button_1_2_pressed()) {t = 2; b=1;}
                           1192 ;--- end asm ---
   06AF C6 02         [ 2] 1193 	ldb	#2	; tmp43,
   06B1 E4 64         [ 5] 1194 	andb	4,s	; tmp43, D.4684
   06B3 27 04         [ 3] 1195 	beq	L45	;
   06B5 C6 02         [ 2] 1196 	ldb	#2	;,
   06B7 E7 63         [ 5] 1197 	stb	3,s	;, t
   06B9                    1198 L45:
                           1199 ;----- asm -----
                           1200 ; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1201 	; #ENR#[222]if (button_1_1_pressed()) {t = 1; b=1;}
                           1202 ;--- end asm ---
   06B9 C6 01         [ 2] 1203 	ldb	#1	; tmp44,
   06BB E4 64         [ 5] 1204 	andb	4,s	; tmp44, D.4684
   06BD 27 04         [ 3] 1205 	beq	L46	;
   06BF C6 01         [ 2] 1206 	ldb	#1	;,
   06C1 E7 63         [ 5] 1207 	stb	3,s	;, t
   06C3                    1208 L46:
                           1209 ;----- asm -----
                           1210 ; 253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1211 	; #ENR#[224]if (vec_joy_1_x > 0) {t = 8; b=1;}
                           1212 ;--- end asm ---
   06C3 F6 C8 1B      [ 5] 1213 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   06C6 E7 62         [ 5] 1214 	stb	2,s	;, Vec_Joy_1_X.8
   06C8 2F 04         [ 3] 1215 	ble	L47	;
   06CA C6 08         [ 2] 1216 	ldb	#8	;,
   06CC E7 63         [ 5] 1217 	stb	3,s	;, t
   06CE                    1218 L47:
                           1219 ;----- asm -----
                           1220 ; 255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1221 	; #ENR#[225]if (vec_joy_1_x < 0) {t = 7; b=1;}
                           1222 ;--- end asm ---
   06CE 6D 62         [ 7] 1223 	tst	2,s	; Vec_Joy_1_X.8
   06D0 10 2C FF 93   [ 6] 1224 	lbge	L48	;
   06D4 C6 07         [ 2] 1225 	ldb	#7	;,
   06D6 E7 63         [ 5] 1226 	stb	3,s	;, t
   06D8 16 FF 8C      [ 5] 1227 	lbra	L48	;
   06DB                    1228 L56:
   06DB C6 06         [ 2] 1229 	ldb	#6	;,
   06DD E7 63         [ 5] 1230 	stb	3,s	;, t
   06DF 16 FF 96      [ 5] 1231 	lbra	L50	;
   06E2                    1232 LC86:
   06E2 45 4E 54 45 52 20  1233 	.byte	69,78,84,69,82,32,78,85
        4E 55
   06EA 4D 42 45 52 3A 80  1234 	.byte	77,66,69,82,58,-128,0
        00
   06F1                    1235 LC87:
   06F1 28 20 4D 41 58 3A  1236 	.ascii	"( MAX: % )\0"
        20 25 20 29 00
   06FC                    1237 LC88:
   06FC 28 20 4D 49 4E 3A  1238 	.ascii	"( MIN: % )\0"
        20 25 20 29 00
   0707                    1239 LC89:
   0707 20 5E 20 80 00     1240 	.byte	32,94,32,-128,0
                           1241 	.globl	_inputNumber
   070C                    1242 _inputNumber:
   070C 34 60         [ 7] 1243 	pshs	y,u	;
   070E 32 E8 D6      [ 5] 1244 	leas	-42,s	;,,
   0711 AF E8 17      [ 6] 1245 	stx	23,s	; message, message
                           1246 ;----- asm -----
                           1247 ; 285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1248 	; #ENR#[246]unsigned long long int ulltmp = (unsigned long long int) min;
                           1249 ; 287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1250 	; #ENR#[247]signed int maxdigit = 4;
                           1251 ; 289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1252 	; #ENR#[248]char *ascii = stringbuffer12;
                           1253 ; 291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1254 	; #ENR#[249]extern char * _ltoa(unsigned long n, char *pointer, int zerotospaces);
                           1255 ; 293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1256 	; #ENR#[250]unsigned int len = vstrlen(message)>>1;
                           1257 ;--- end asm ---
   0714 BD 6E E0      [ 8] 1258 	jsr	_vstrlen
   0717 E7 E8 1F      [ 5] 1259 	stb	31,s	;, len
   071A 64 E8 1F      [ 7] 1260 	lsr	31,s	; len
                           1261 ;----- asm -----
                           1262 ; 297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1263 	; #ENR#[253]_ltoa(min, ascii,0);
                           1264 ;--- end asm ---
   071D 10 8E C8 B3   [ 4] 1265 	ldy	#_stringBuffer12	; tmp49,
   0721 34 20         [ 6] 1266 	pshs	y	; tmp49
   0723 5F            [ 2] 1267 	clrb	;
   0724 AE E8 32      [ 6] 1268 	ldx	50,s	;, min
   0727 BD 5C 37      [ 8] 1269 	jsr	__ltoa
                           1270 ;----- asm -----
                           1271 ; 299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1272 	; #ENR#[254]if (*(ascii+0) == ' ') *(ascii+0) = '0';
                           1273 ;--- end asm ---
   072A 32 62         [ 5] 1274 	leas	2,s	;,,
   072C E6 A4         [ 4] 1275 	ldb	,y	;, stringBuffer12
   072E C1 20         [ 2] 1276 	cmpb	#32	;cmpqi:	;,
   0730 10 27 03 E1   [ 6] 1277 	lbeq	L91	;
   0734                    1278 L58:
                           1279 ;----- asm -----
                           1280 ; 301 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1281 	; #ENR#[255]if (*(ascii+1) == ' ') *(ascii+1) = '0';
                           1282 ;--- end asm ---
   0734 F6 C8 B4      [ 5] 1283 	ldb	_stringBuffer12+1	;, stringBuffer12
   0737 C1 20         [ 2] 1284 	cmpb	#32	;cmpqi:	;,
   0739 10 27 03 F8   [ 6] 1285 	lbeq	L92	;
   073D                    1286 L59:
                           1287 ;----- asm -----
                           1288 ; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1289 	; #ENR#[256]if (*(ascii+2) == ' ') *(ascii+2) = '0';
                           1290 ;--- end asm ---
   073D F6 C8 B5      [ 5] 1291 	ldb	_stringBuffer12+2	;, stringBuffer12
   0740 C1 20         [ 2] 1292 	cmpb	#32	;cmpqi:	;,
   0742 10 27 03 E7   [ 6] 1293 	lbeq	L93	;
   0746                    1294 L60:
                           1295 ;----- asm -----
                           1296 ; 305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1297 	; #ENR#[257]if (*(ascii+3) == ' ') *(ascii+3) = '0';
                           1298 ;--- end asm ---
   0746 F6 C8 B6      [ 5] 1299 	ldb	_stringBuffer12+3	;, stringBuffer12
   0749 C1 20         [ 2] 1300 	cmpb	#32	;cmpqi:	;,
   074B 10 27 03 D6   [ 6] 1301 	lbeq	L94	;
   074F                    1302 L61:
                           1303 ;----- asm -----
                           1304 ; 307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1305 	; #ENR#[258]if (*(ascii+4) == ' ') *(ascii+4) = '0';
                           1306 ;--- end asm ---
   074F F6 C8 B7      [ 5] 1307 	ldb	_stringBuffer12+4	;, stringBuffer12
   0752 C1 20         [ 2] 1308 	cmpb	#32	;cmpqi:	;,
   0754 10 27 03 C5   [ 6] 1309 	lbeq	L95	;
   0758                    1310 L62:
                           1311 ;----- asm -----
                           1312 ; 309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1313 	; #ENR#[259]*(ascii+5) = '�';
                           1314 ;--- end asm ---
   0758 C6 80         [ 2] 1315 	ldb	#-128	;,
   075A F7 C8 B8      [ 5] 1316 	stb	_stringBuffer12+5	;, stringBuffer12
                           1317 ;----- asm -----
                           1318 ; 312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1319 	; #ENR#[261]if (max<10000) {ascii++; maxdigit = 3;}
                           1320 ;--- end asm ---
   075D AE E8 32      [ 6] 1321 	ldx	50,s	;, max
   0760 8C 27 0F      [ 4] 1322 	cmpx	#9999	;cmphi:	;,
   0763 10 22 03 9D   [ 6] 1323 	lbhi	L63	;
   0767 CE C8 B4      [ 3] 1324 	ldu	#_stringBuffer12+1	; ascii,
   076A C6 03         [ 2] 1325 	ldb	#3	;,
   076C E7 E8 1E      [ 5] 1326 	stb	30,s	;, maxDigit
   076F 8E 00 03      [ 3] 1327 	ldx	#3	;,
   0772 AF E8 21      [ 6] 1328 	stx	33,s	;, prephitmp.287
   0775                    1329 L64:
                           1330 ;----- asm -----
                           1331 ; 314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1332 	; #ENR#[262]if (max<1000) {ascii++; maxdigit = 2;}
                           1333 ;--- end asm ---
   0775 EC E8 32      [ 6] 1334 	ldd	50,s	;, max
   0778 10 83 03 E7   [ 5] 1335 	cmpd	#999	;cmphi:	;,
   077C 22 0D         [ 3] 1336 	bhi	L65	;
   077E 33 41         [ 5] 1337 	leau	1,u	; ascii,, ascii
   0780 C6 02         [ 2] 1338 	ldb	#2	;,
   0782 E7 E8 1E      [ 5] 1339 	stb	30,s	;, maxDigit
   0785 8E 00 02      [ 3] 1340 	ldx	#2	;,
   0788 AF E8 21      [ 6] 1341 	stx	33,s	;, prephitmp.287
   078B                    1342 L65:
                           1343 ;----- asm -----
                           1344 ; 316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1345 	; #ENR#[263]if (max<100) {ascii++; maxdigit = 1;}
                           1346 ;--- end asm ---
   078B EC E8 32      [ 6] 1347 	ldd	50,s	;, max
   078E 10 83 00 63   [ 5] 1348 	cmpd	#99	;cmphi:	;,
   0792 22 0D         [ 3] 1349 	bhi	L66	;
   0794 33 41         [ 5] 1350 	leau	1,u	; ascii,, ascii
   0796 C6 01         [ 2] 1351 	ldb	#1	;,
   0798 E7 E8 1E      [ 5] 1352 	stb	30,s	;, maxDigit
   079B 8E 00 01      [ 3] 1353 	ldx	#1	;,
   079E AF E8 21      [ 6] 1354 	stx	33,s	;, prephitmp.287
   07A1                    1355 L66:
                           1356 ;----- asm -----
                           1357 ; 318 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1358 	; #ENR#[264]if (max<10) {ascii++; maxdigit = 0;}
                           1359 ;--- end asm ---
   07A1 EC E8 32      [ 6] 1360 	ldd	50,s	;, max
   07A4 10 83 00 09   [ 5] 1361 	cmpd	#9	;cmphi:	;,
   07A8 22 0B         [ 3] 1362 	bhi	L67	;
   07AA 33 41         [ 5] 1363 	leau	1,u	; ascii,, ascii
   07AC 6F E8 1E      [ 7] 1364 	clr	30,s	; maxDigit
   07AF 8E 00 00      [ 3] 1365 	ldx	#0	;,
   07B2 AF E8 21      [ 6] 1366 	stx	33,s	;, prephitmp.287
   07B5                    1367 L67:
                           1368 ;----- asm -----
                           1369 ; 321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1370 	; #ENR#[266]tmp = 0;
                           1371 ;--- end asm ---
   07B5 7F C8 FE      [ 7] 1372 	clr	_tmp	; tmp
                           1373 ;----- asm -----
                           1374 ; 324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1375 	; #ENR#[268]int lastdir = 0;
                           1376 ; 326 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1377 	; #ENR#[269]do
                           1378 ;--- end asm ---
   07B8 EC E8 21      [ 6] 1379 	ldd	33,s	;, prephitmp.287
   07BB 30 CB         [ 8] 1380 	leax	d,u	;,, ascii
   07BD AF E8 23      [ 6] 1381 	stx	35,s	;, pretmp.288
   07C0 EC E8 32      [ 6] 1382 	ldd	50,s	;, max
   07C3 ED 63         [ 6] 1383 	std	3,s	;,
   07C5 AE E8 30      [ 6] 1384 	ldx	48,s	;, min
   07C8 AF 65         [ 6] 1385 	stx	5,s	;,
   07CA E6 E8 1F      [ 5] 1386 	ldb	31,s	;, len
   07CD 86 0C         [ 2] 1387 	lda	#12	;umulqihi3	;
   07CF 3D            [11] 1388 	mul
   07D0 ED E4         [ 5] 1389 	std	,s	;,
   07D2 50            [ 2] 1390 	negb	;
   07D3 E7 E8 19      [ 5] 1391 	stb	25,s	;, D.3409
   07D6 6F E8 20      [ 7] 1392 	clr	32,s	; lastDir
   07D9 16 00 54      [ 5] 1393 	lbra	L87	;
   07DC                    1394 L89:
                           1395 ;----- asm -----
                           1396 ; 413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1397 	; #ENR#[324]_ltoa(max, stringbuffer6,0);
                           1398 ;--- end asm ---
   07DC 10 8E C8 AD   [ 4] 1399 	ldy	#_stringBuffer6	; tmp114,
   07E0 34 20         [ 6] 1400 	pshs	y	; tmp114
   07E2 5F            [ 2] 1401 	clrb	;
   07E3 AE E8 34      [ 6] 1402 	ldx	52,s	;, max
   07E6 BD 5C 37      [ 8] 1403 	jsr	__ltoa
                           1404 ;----- asm -----
                           1405 ; 415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1406 	; #ENR#[325]vstrcpy(stringbuffer12, stringbuffer6);
                           1407 ;--- end asm ---
   07E9 34 20         [ 6] 1408 	pshs	y	; tmp114
   07EB 8E C8 B3      [ 3] 1409 	ldx	#_stringBuffer12	;,
   07EE BD 5A 57      [ 8] 1410 	jsr	_vstrcpy
   07F1 32 64         [ 5] 1411 	leas	4,s	;,,
   07F3                    1412 L79:
                           1413 ;----- asm -----
                           1414 ; 418 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1415 	; #ENR#[327]if (ulltmp < ull(min) )
                           1416 ;--- end asm ---
   07F3 EC E8 1A      [ 6] 1417 	ldd	26,s	;, ulltmp
   07F6 10 83 00 00   [ 5] 1418 	cmpd	#0	;cmphi:(R)	;,
   07FA 10 24 02 B6   [ 6] 1419 	lbhs	L96	;
   07FE                    1420 L90:
                           1421 ;----- asm -----
                           1422 ; 421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1423 	; #ENR#[329]_ltoa(min, stringbuffer6,0);
                           1424 ;--- end asm ---
   07FE 10 8E C8 AD   [ 4] 1425 	ldy	#_stringBuffer6	; tmp116,
   0802 34 20         [ 6] 1426 	pshs	y	; tmp116
   0804 5F            [ 2] 1427 	clrb	;
   0805 AE E8 32      [ 6] 1428 	ldx	50,s	;, min
   0808 BD 5C 37      [ 8] 1429 	jsr	__ltoa
                           1430 ;----- asm -----
                           1431 ; 423 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1432 	; #ENR#[330]vstrcpy(stringbuffer12, stringbuffer6);
                           1433 ;--- end asm ---
   080B 34 20         [ 6] 1434 	pshs	y	; tmp116
   080D 8E C8 B3      [ 3] 1435 	ldx	#_stringBuffer12	;,
   0810 BD 5A 57      [ 8] 1436 	jsr	_vstrcpy
   0813 32 64         [ 5] 1437 	leas	4,s	;,,
   0815                    1438 L81:
                           1439 ;----- asm -----
                           1440 ; 428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1441 	; #ENR#[334]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           1442 ;--- end asm ---
   0815 C6 01         [ 2] 1443 	ldb	#1	;,
   0817 E7 E8 20      [ 5] 1444 	stb	32,s	;, lastDir
   081A 7D C8 1B      [ 7] 1445 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   081D 26 0A         [ 3] 1446 	bne	L84	;
   081F F6 C8 1C      [ 5] 1447 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
   0822 27 02         [ 3] 1448 	beq	L85	;
   0824 C6 01         [ 2] 1449 	ldb	#1	; Vec_Joy_1_Y,
   0826                    1450 L85:
   0826 E7 E8 20      [ 5] 1451 	stb	32,s	; Vec_Joy_1_Y, lastDir
   0829                    1452 L84:
                           1453 ;----- asm -----
                           1454 ; 430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1455 	; #ENR#[335]if (buttons_pressed()) break;
                           1456 ;--- end asm ---
   0829 7D C8 11      [ 7] 1457 	tst	_Vec_Buttons	; Vec_Buttons
   082C 10 26 02 CC   [ 6] 1458 	lbne	L86	;
                           1459 ;----- asm -----
                           1460 ; 432 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1461 	; #ENR#[337]while (1);
                           1462 ;--- end asm ---
   0830                    1463 L87:
                           1464 ;----- asm -----
                           1465 ; 329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1466 	; #ENR#[271]do_sound();
                           1467 ;--- end asm ---
   0830 BD 70 3C      [ 8] 1468 	jsr	__Do_Sound
                           1469 ;----- asm -----
                           1470 ; 331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1471 	; #ENR#[272]joy_digital();
                           1472 ;--- end asm ---
   0833 BD F1 F8      [ 8] 1473 	jsr	___Joy_Digital
                           1474 ;----- asm -----
                           1475 ; 333 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1476 	; #ENR#[273]check_buttons();
                           1477 ;--- end asm ---
   0836 BD F1 BA      [ 8] 1478 	jsr	___Read_Btns
                           1479 ;----- asm -----
                           1480 ; 335 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1481 	; #ENR#[274]wait_recal();
                           1482 ;--- end asm ---
   0839 BD F1 92      [ 8] 1483 	jsr	___Wait_Recal
                           1484 ;----- asm -----
                           1485 ; 337 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1486 	; #ENR#[275]intensity_5f();
                           1487 ;--- end asm ---
   083C BD F2 A5      [ 8] 1488 	jsr	___Intensity_5F
                           1489 ;----- asm -----
                           1490 ; 339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1491 	; #ENR#[276]dp_via_t1_cnt_lo  = 0x7f;
                           1492 ;--- end asm ---
   083F C6 7F         [ 2] 1493 	ldb	#127	;,
   0841 D7 04         [ 4] 1494 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1495 ;----- asm -----
                           1496 ; 343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1497 	; #ENR#[279]if (message != 0)
                           1498 ;--- end asm ---
   0843 AE E8 17      [ 6] 1499 	ldx	23,s	;, message
   0846 27 13         [ 3] 1500 	beq	L68	;
                           1501 ;----- asm -----
                           1502 ; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1503 	; #ENR#[281]print_str_d(0x60,-(len*12), message);reset0ref();
                           1504 ;--- end asm ---
   0848 C6 60         [ 2] 1505 	ldb	#96	;,
   084A E7 E2         [ 6] 1506 	stb	,-s	;,
   084C AE E8 18      [ 6] 1507 	ldx	24,s	;, message
   084F E6 E8 1A      [ 5] 1508 	ldb	26,s	;, D.3409
   0852 BD 58 75      [ 8] 1509 	jsr	_syncPrintStrd
   0855 C6 CC         [ 2] 1510 	ldb	#-52	;,
   0857 D7 0C         [ 4] 1511 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   0859 32 61         [ 5] 1512 	leas	1,s	;,,
   085B                    1513 L68:
                           1514 ;----- asm -----
                           1515 ; 350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1516 	; #ENR#[284]print_str_d(0x20,-0x50, ); reset0ref();
                           1517 ;--- end asm ---
   085B C6 20         [ 2] 1518 	ldb	#32	;,
   085D E7 E2         [ 6] 1519 	stb	,-s	;,
   085F 8E 06 E2      [ 3] 1520 	ldx	#LC86	;,
   0862 C6 B0         [ 2] 1521 	ldb	#-80	;,
   0864 BD 58 75      [ 8] 1522 	jsr	_syncPrintStrd
   0867 C6 CC         [ 2] 1523 	ldb	#-52	;,
   0869 D7 0C         [ 4] 1524 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1525 ;----- asm -----
                           1526 ; 353 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1527 	; #ENR#[286]tmp2 = vec_text_width;
                           1528 ;--- end asm ---
   086B F6 C8 2B      [ 5] 1529 	ldb	_Vec_Text_Width	;, Vec_Text_Width
   086E F7 C8 FF      [ 5] 1530 	stb	_tmp2	;, tmp2
                           1531 ;----- asm -----
                           1532 ; 357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1533 	; #ENR#[289]vec_text_width = 0x3f;
                           1534 ;--- end asm ---
   0871 C6 3F         [ 2] 1535 	ldb	#63	;,
   0873 F7 C8 2B      [ 5] 1536 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1537 ;----- asm -----
                           1538 ; 359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1539 	; #ENR#[290]_fl(, max);
                           1540 ;--- end asm ---
   0876 AE E8 33      [ 6] 1541 	ldx	51,s	;, max
   0879 34 10         [ 6] 1542 	pshs	x	;
   087B 8E 06 F1      [ 3] 1543 	ldx	#LC87	;,
   087E BD 6C 7E      [ 8] 1544 	jsr	__fl
                           1545 ;----- asm -----
                           1546 ; 361 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1547 	; #ENR#[291]print_str_d(0x10,-0x48, stringbuffer40);reset0ref();
                           1548 ;--- end asm ---
   0881 C6 10         [ 2] 1549 	ldb	#16	;,
   0883 E7 E2         [ 6] 1550 	stb	,-s	;,
   0885 8E C8 BF      [ 3] 1551 	ldx	#_stringBuffer40	;,
   0888 C6 B8         [ 2] 1552 	ldb	#-72	;,
   088A BD 58 75      [ 8] 1553 	jsr	_syncPrintStrd
   088D C6 CC         [ 2] 1554 	ldb	#-52	;,
   088F D7 0C         [ 4] 1555 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1556 ;----- asm -----
                           1557 ; 363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1558 	; #ENR#[292]_fl(, min);
                           1559 ;--- end asm ---
   0891 AE E8 34      [ 6] 1560 	ldx	52,s	;, min
   0894 34 10         [ 6] 1561 	pshs	x	;
   0896 8E 06 FC      [ 3] 1562 	ldx	#LC88	;,
   0899 BD 6C 7E      [ 8] 1563 	jsr	__fl
                           1564 ;----- asm -----
                           1565 ; 365 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1566 	; #ENR#[293]print_str_d(0x00,-0x48, stringbuffer40);reset0ref();
                           1567 ;--- end asm ---
   089C 6F E2         [ 8] 1568 	clr	,-s	;
   089E 8E C8 BF      [ 3] 1569 	ldx	#_stringBuffer40	;,
   08A1 C6 B8         [ 2] 1570 	ldb	#-72	;,
   08A3 BD 58 75      [ 8] 1571 	jsr	_syncPrintStrd
   08A6 C6 CC         [ 2] 1572 	ldb	#-52	;,
   08A8 D7 0C         [ 4] 1573 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1574 ;----- asm -----
                           1575 ; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1576 	; #ENR#[295]vec_text_width = 0x7f;
                           1577 ;--- end asm ---
   08AA C6 7F         [ 2] 1578 	ldb	#127	;,
   08AC F7 C8 2B      [ 5] 1579 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1580 ;----- asm -----
                           1581 ; 372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1582 	; #ENR#[298]print_str_d(-0x20,-0x30, ascii);reset0ref();
                           1583 ;--- end asm ---
   08AF C6 E0         [ 2] 1584 	ldb	#-32	;,
   08B1 E7 E2         [ 6] 1585 	stb	,-s	;,
   08B3 30 C4         [ 4] 1586 	leax	,u	;, ascii
   08B5 C6 D0         [ 2] 1587 	ldb	#-48	;,
   08B7 BD 58 75      [ 8] 1588 	jsr	_syncPrintStrd
   08BA C6 CC         [ 2] 1589 	ldb	#-52	;,
   08BC D7 0C         [ 4] 1590 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1591 ;----- asm -----
                           1592 ; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1593 	; #ENR#[301]print_str_d(-0x2b,-0x30-35+((maxdigit+1)-tmp )*0x12, );reset0ref();
                           1594 ;--- end asm ---
   08BE 32 68         [ 5] 1595 	leas	8,s	;,,
   08C0 E6 E8 1E      [ 5] 1596 	ldb	30,s	; tmp62, maxDigit
   08C3 F0 C8 FE      [ 5] 1597 	subb	_tmp	; tmp62, tmp
   08C6 5C            [ 2] 1598 	incb	; tmp62
   08C7 86 12         [ 2] 1599 	lda	#18	;mulqihi3	;
   08C9 3D            [11] 1600 	mul
                           1601 		;movlsbqihi: D->B
   08CA CB AD         [ 2] 1602 	addb	#-83	;,
   08CC E7 E4         [ 4] 1603 	stb	,s	;,
   08CE C6 D5         [ 2] 1604 	ldb	#-43	;,
   08D0 E7 E2         [ 6] 1605 	stb	,-s	;,
   08D2 8E 07 07      [ 3] 1606 	ldx	#LC89	;,
   08D5 E6 61         [ 5] 1607 	ldb	1,s	;,
   08D7 BD 58 75      [ 8] 1608 	jsr	_syncPrintStrd
   08DA C6 CC         [ 2] 1609 	ldb	#-52	;,
   08DC D7 0C         [ 4] 1610 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1611 ;----- asm -----
                           1612 ; 378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1613 	; #ENR#[302]vec_text_width = tmp2;
                           1614 ;--- end asm ---
   08DE F6 C8 FF      [ 5] 1615 	ldb	_tmp2	;, tmp2
   08E1 F7 C8 2B      [ 5] 1616 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1617 ;----- asm -----
                           1618 ; 381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1619 	; #ENR#[304]if ((vec_joy_1_x > 0) && (!lastdir)) if (tmp>0) tmp--;
                           1620 ;--- end asm ---
   08E4 F6 C8 1B      [ 5] 1621 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   08E7 E7 63         [ 5] 1622 	stb	3,s	;, Vec_Joy_1_X.13
   08E9 32 61         [ 5] 1623 	leas	1,s	;,,
   08EB 5D            [ 2] 1624 	tstb	;
   08EC 2F 11         [ 3] 1625 	ble	L69	;
   08EE 6D E8 20      [ 7] 1626 	tst	32,s	; lastDir
   08F1 26 0C         [ 3] 1627 	bne	L69	;
   08F3 F6 C8 FE      [ 5] 1628 	ldb	_tmp	;, tmp
   08F6 E7 E8 25      [ 5] 1629 	stb	37,s	;, tmp.297
   08F9 2F 04         [ 3] 1630 	ble	L69	;
   08FB 5A            [ 2] 1631 	decb	;
   08FC F7 C8 FE      [ 5] 1632 	stb	_tmp	;, tmp
   08FF                    1633 L69:
                           1634 ;----- asm -----
                           1635 ; 383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1636 	; #ENR#[305]if ((vec_joy_1_x < 0) && (!lastdir)) if (tmp<maxdigit) tmp++;
                           1637 ;--- end asm ---
   08FF 6D 62         [ 7] 1638 	tst	2,s	; Vec_Joy_1_X.13
   0901 10 2D 01 C4   [ 6] 1639 	lblt	L97	;
   0905                    1640 L70:
                           1641 ;----- asm -----
                           1642 ; 386 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1643 	; #ENR#[307]if ((vec_joy_1_y > 0) && (!lastdir))
                           1644 ;--- end asm ---
   0905 7D C8 1C      [ 7] 1645 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   0908 2F 16         [ 3] 1646 	ble	L71	;
   090A 6D E8 20      [ 7] 1647 	tst	32,s	; lastDir
   090D 26 11         [ 3] 1648 	bne	L71	;
   090F F6 C8 FE      [ 5] 1649 	ldb	_tmp	;, tmp
   0912 1D            [ 2] 1650 	sex		;extendqihi2: R:b -> R:d	;,
   0913 1F 01         [ 6] 1651 	tfr	d,x	;, tmp
   0915 EC E8 21      [ 6] 1652 	ldd	33,s	;, prephitmp.287
   0918 34 10         [ 6] 1653 	pshs	x	;subhi: R:d -= R:x	; tmp,
   091A A3 E1         [ 9] 1654 	subd	,s++	;
   091C 30 CB         [ 8] 1655 	leax	d,u	; D.3424,, ascii
   091E 6C 84         [ 6] 1656 	inc	,x	;* D.3424
   0920                    1657 L71:
                           1658 ;----- asm -----
                           1659 ; 389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1660 	; #ENR#[309]if ((vec_joy_1_y < 0) && (!lastdir))
                           1661 ;--- end asm ---
   0920 7D C8 1C      [ 7] 1662 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   0923 10 2D 01 BA   [ 6] 1663 	lblt	L98	;
   0927                    1664 L72:
                           1665 ;----- asm -----
                           1666 ; 393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1667 	; #ENR#[312]if (*(ascii+maxdigit-tmp)>'9') *(ascii+maxdigit-tmp) = '0';
                           1668 ;--- end asm ---
   0927 F6 C8 FE      [ 5] 1669 	ldb	_tmp	;, tmp
   092A 1D            [ 2] 1670 	sex		;extendqihi2: R:b -> R:d	;,
   092B 1F 01         [ 6] 1671 	tfr	d,x	;, tmp
   092D EC E8 21      [ 6] 1672 	ldd	33,s	;, prephitmp.287
   0930 34 10         [ 6] 1673 	pshs	x	;subhi: R:d -= R:x	; tmp,
   0932 A3 E1         [ 9] 1674 	subd	,s++	;
   0934 30 CB         [ 8] 1675 	leax	d,u	; temp.309,, ascii
   0936 E6 84         [ 4] 1676 	ldb	,x	;,* temp.309
   0938 C1 39         [ 2] 1677 	cmpb	#57	;cmpqi:	;,
   093A 23 04         [ 3] 1678 	bls	L73	;
   093C C6 30         [ 2] 1679 	ldb	#48	;,
   093E E7 84         [ 4] 1680 	stb	,x	;,* temp.309
   0940                    1681 L73:
                           1682 ;----- asm -----
                           1683 ; 395 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1684 	; #ENR#[313]if (*(ascii+maxdigit-tmp)<'0') *(ascii+maxdigit-tmp) = '9';
                           1685 ;--- end asm ---
   0940 F6 C8 FE      [ 5] 1686 	ldb	_tmp	;, tmp
   0943 1D            [ 2] 1687 	sex		;extendqihi2: R:b -> R:d	;,
   0944 1F 01         [ 6] 1688 	tfr	d,x	;, tmp
   0946 EC E8 21      [ 6] 1689 	ldd	33,s	;, prephitmp.287
   0949 34 10         [ 6] 1690 	pshs	x	;subhi: R:d -= R:x	; tmp,
   094B A3 E1         [ 9] 1691 	subd	,s++	;
   094D 30 CB         [ 8] 1692 	leax	d,u	; temp.314,, ascii
   094F E6 84         [ 4] 1693 	ldb	,x	;,* temp.314
   0951 C1 2F         [ 2] 1694 	cmpb	#47	;cmpqi:	;,
   0953 22 04         [ 3] 1695 	bhi	L74	;
   0955 C6 39         [ 2] 1696 	ldb	#57	;,
   0957 E7 84         [ 4] 1697 	stb	,x	;,* temp.314
   0959                    1698 L74:
                           1699 ;----- asm -----
                           1700 ; 399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1701 	; #ENR#[316]ulltmp = ull(*(ascii+maxdigit)-'0');
                           1702 ;--- end asm ---
   0959 AE E8 23      [ 6] 1703 	ldx	35,s	;, pretmp.288
   095C E6 84         [ 4] 1704 	ldb	,x	; tmp76,
   095E CB D0         [ 2] 1705 	addb	#-48	; tmp76,
   0960 4F            [ 2] 1706 	clra		;zero_extendqihi: R:b -> R:d	; tmp76,
   0961 ED E8 1C      [ 6] 1707 	std	28,s	;, ulltmp
   0964 CC 00 00      [ 3] 1708 	ldd	#0	;,
   0967 ED E8 1A      [ 6] 1709 	std	26,s	;, ulltmp
                           1710 ;----- asm -----
                           1711 ; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1712 	; #ENR#[317]if (max>=10) ulltmp += ull(*(ascii+(maxdigit-1))-'0') * ull(10);
                           1713 ;--- end asm ---
   096A AE E8 32      [ 6] 1714 	ldx	50,s	;, max
   096D 8C 00 09      [ 4] 1715 	cmpx	#9	;cmphi:	;,
   0970 23 4B         [ 3] 1716 	bls	L75	;
   0972 EC E8 21      [ 6] 1717 	ldd	33,s	;, prephitmp.287
   0975 30 CB         [ 8] 1718 	leax	d,u	; tmp78,, ascii
   0977 E6 1F         [ 5] 1719 	ldb	-1,x	; tmp80,
   0979 CB D0         [ 2] 1720 	addb	#-48	; tmp80,
   097B 4F            [ 2] 1721 	clra		;zero_extendqihi: R:b -> R:d	; tmp80,
   097C 1F 01         [ 6] 1722 	tfr	d,x	;, tmp82
   097E 32 78         [ 5] 1723 	leas	-8,s	;,,
   0980 CC 00 00      [ 3] 1724 	ldd	#0	;,
   0983 ED 64         [ 6] 1725 	std	4,s	;,
   0985 CC 00 0A      [ 3] 1726 	ldd	#10	;,
   0988 ED 66         [ 6] 1727 	std	6,s	;,
   098A CC 00 00      [ 3] 1728 	ldd	#0	;,
   098D ED E4         [ 5] 1729 	std	,s	;,
   098F AF 62         [ 6] 1730 	stx	2,s	; tmp82,
   0991 30 E8 2E      [ 5] 1731 	leax	46,s	;,,
   0994 BD 76 A6      [ 8] 1732 	jsr	___mulsi3
   0997 32 68         [ 5] 1733 	leas	8,s	;,,
   0999 AE E8 26      [ 6] 1734 	ldx	38,s	;,
   099C AF E8 13      [ 6] 1735 	stx	19,s	;,
   099F EC E8 28      [ 6] 1736 	ldd	40,s	;,
   09A2 ED E8 15      [ 6] 1737 	std	21,s	;,
   09A5 EC E8 1C      [ 6] 1738 	ldd	28,s	;, ulltmp
   09A8 E3 E8 15      [ 7] 1739 	addd	21,s	;,
   09AB ED E8 1C      [ 6] 1740 	std	28,s	;, ulltmp
   09AE EC E8 1A      [ 6] 1741 	ldd	26,s	;, ulltmp
   09B1 E9 E8 14      [ 5] 1742 	adcb	20,s	;
   09B4 A9 E8 13      [ 5] 1743 	adca	19,s	;
   09B7 ED E8 1A      [ 6] 1744 	std	26,s	;, ulltmp
   09BA AE E8 32      [ 6] 1745 	ldx	50,s	;, max
   09BD                    1746 L75:
                           1747 ;----- asm -----
                           1748 ; 403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1749 	; #ENR#[318]if (max>=100) ulltmp += ull(*(ascii+(maxdigit-2))-'0') * ull(100);
                           1750 ;--- end asm ---
   09BD 8C 00 63      [ 4] 1751 	cmpx	#99	;cmphi:	;,
   09C0 23 49         [ 3] 1752 	bls	L76	;
   09C2 EC E8 21      [ 6] 1753 	ldd	33,s	;, prephitmp.287
   09C5 30 CB         [ 8] 1754 	leax	d,u	; tmp87,, ascii
   09C7 E6 1E         [ 5] 1755 	ldb	-2,x	; tmp89,
   09C9 CB D0         [ 2] 1756 	addb	#-48	; tmp89,
   09CB 4F            [ 2] 1757 	clra		;zero_extendqihi: R:b -> R:d	; tmp89,
   09CC 1F 01         [ 6] 1758 	tfr	d,x	;, tmp91
   09CE 32 78         [ 5] 1759 	leas	-8,s	;,,
   09D0 CC 00 00      [ 3] 1760 	ldd	#0	;,
   09D3 ED 64         [ 6] 1761 	std	4,s	;,
   09D5 CC 00 64      [ 3] 1762 	ldd	#100	;,
   09D8 ED 66         [ 6] 1763 	std	6,s	;,
   09DA CC 00 00      [ 3] 1764 	ldd	#0	;,
   09DD ED E4         [ 5] 1765 	std	,s	;,
   09DF AF 62         [ 6] 1766 	stx	2,s	; tmp91,
   09E1 30 E8 2E      [ 5] 1767 	leax	46,s	;,,
   09E4 BD 76 A6      [ 8] 1768 	jsr	___mulsi3
   09E7 32 68         [ 5] 1769 	leas	8,s	;,,
   09E9 AE E8 26      [ 6] 1770 	ldx	38,s	;,
   09EC AF 6F         [ 6] 1771 	stx	15,s	;,
   09EE EC E8 28      [ 6] 1772 	ldd	40,s	;,
   09F1 ED E8 11      [ 6] 1773 	std	17,s	;,
   09F4 EC E8 1C      [ 6] 1774 	ldd	28,s	;, ulltmp
   09F7 E3 E8 11      [ 7] 1775 	addd	17,s	;,
   09FA ED E8 1C      [ 6] 1776 	std	28,s	;, ulltmp
   09FD EC E8 1A      [ 6] 1777 	ldd	26,s	;, ulltmp
   0A00 E9 E8 10      [ 5] 1778 	adcb	16,s	;
   0A03 A9 6F         [ 5] 1779 	adca	15,s	;
   0A05 ED E8 1A      [ 6] 1780 	std	26,s	;, ulltmp
   0A08 AE E8 32      [ 6] 1781 	ldx	50,s	;, max
   0A0B                    1782 L76:
                           1783 ;----- asm -----
                           1784 ; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1785 	; #ENR#[319]if (max>=1000) ulltmp += ull(*(ascii+(maxdigit-3))-'0') * ull(1000);
                           1786 ;--- end asm ---
   0A0B 8C 03 E7      [ 4] 1787 	cmpx	#999	;cmphi:	;,
   0A0E 23 44         [ 3] 1788 	bls	L77	;
   0A10 EC E8 21      [ 6] 1789 	ldd	33,s	;, prephitmp.287
   0A13 30 CB         [ 8] 1790 	leax	d,u	; tmp96,, ascii
   0A15 E6 1D         [ 5] 1791 	ldb	-3,x	; tmp98,
   0A17 CB D0         [ 2] 1792 	addb	#-48	; tmp98,
   0A19 4F            [ 2] 1793 	clra		;zero_extendqihi: R:b -> R:d	; tmp98,
   0A1A 1F 02         [ 6] 1794 	tfr	d,y	;, tmp100
   0A1C 32 78         [ 5] 1795 	leas	-8,s	;,,
   0A1E CC 00 00      [ 3] 1796 	ldd	#0	;,
   0A21 ED 64         [ 6] 1797 	std	4,s	;,
   0A23 8E 03 E8      [ 3] 1798 	ldx	#1000	;,
   0A26 AF 66         [ 6] 1799 	stx	6,s	;,
   0A28 ED E4         [ 5] 1800 	std	,s	;,
   0A2A 10 AF 62      [ 7] 1801 	sty	2,s	; tmp100,
   0A2D 30 E8 2E      [ 5] 1802 	leax	46,s	;,,
   0A30 BD 76 A6      [ 8] 1803 	jsr	___mulsi3
   0A33 32 68         [ 5] 1804 	leas	8,s	;,,
   0A35 EC E8 26      [ 6] 1805 	ldd	38,s	;,
   0A38 ED 6B         [ 6] 1806 	std	11,s	;,
   0A3A AE E8 28      [ 6] 1807 	ldx	40,s	;,
   0A3D AF 6D         [ 6] 1808 	stx	13,s	;,
   0A3F EC E8 1C      [ 6] 1809 	ldd	28,s	;, ulltmp
   0A42 E3 6D         [ 7] 1810 	addd	13,s	;,
   0A44 ED E8 1C      [ 6] 1811 	std	28,s	;, ulltmp
   0A47 EC E8 1A      [ 6] 1812 	ldd	26,s	;, ulltmp
   0A4A E9 6C         [ 5] 1813 	adcb	12,s	;
   0A4C A9 6B         [ 5] 1814 	adca	11,s	;
   0A4E ED E8 1A      [ 6] 1815 	std	26,s	;, ulltmp
   0A51 AE E8 32      [ 6] 1816 	ldx	50,s	;, max
   0A54                    1817 L77:
                           1818 ;----- asm -----
                           1819 ; 407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1820 	; #ENR#[320]if (max>=10000) ulltmp += ull(*(ascii+(maxdigit-4))-'0') * ull(10000);
                           1821 ;--- end asm ---
   0A54 8C 27 0F      [ 4] 1822 	cmpx	#9999	;cmphi:	;,
   0A57 23 41         [ 3] 1823 	bls	L78	;
   0A59 EC E8 21      [ 6] 1824 	ldd	33,s	;, prephitmp.287
   0A5C 30 CB         [ 8] 1825 	leax	d,u	; tmp105,, ascii
   0A5E E6 1C         [ 5] 1826 	ldb	-4,x	; tmp107,
   0A60 CB D0         [ 2] 1827 	addb	#-48	; tmp107,
   0A62 4F            [ 2] 1828 	clra		;zero_extendqihi: R:b -> R:d	; tmp107,
   0A63 1F 02         [ 6] 1829 	tfr	d,y	;, tmp109
   0A65 32 78         [ 5] 1830 	leas	-8,s	;,,
   0A67 CC 00 00      [ 3] 1831 	ldd	#0	;,
   0A6A ED 64         [ 6] 1832 	std	4,s	;,
   0A6C 8E 27 10      [ 3] 1833 	ldx	#10000	;,
   0A6F AF 66         [ 6] 1834 	stx	6,s	;,
   0A71 ED E4         [ 5] 1835 	std	,s	;,
   0A73 10 AF 62      [ 7] 1836 	sty	2,s	; tmp109,
   0A76 30 E8 2E      [ 5] 1837 	leax	46,s	;,,
   0A79 BD 76 A6      [ 8] 1838 	jsr	___mulsi3
   0A7C 32 68         [ 5] 1839 	leas	8,s	;,,
   0A7E EC E8 26      [ 6] 1840 	ldd	38,s	;,
   0A81 ED 67         [ 6] 1841 	std	7,s	;,
   0A83 AE E8 28      [ 6] 1842 	ldx	40,s	;,
   0A86 AF 69         [ 6] 1843 	stx	9,s	;,
   0A88 EC E8 1C      [ 6] 1844 	ldd	28,s	;, ulltmp
   0A8B E3 69         [ 7] 1845 	addd	9,s	;,
   0A8D ED E8 1C      [ 6] 1846 	std	28,s	;, ulltmp
   0A90 EC E8 1A      [ 6] 1847 	ldd	26,s	;, ulltmp
   0A93 E9 68         [ 5] 1848 	adcb	8,s	;
   0A95 A9 67         [ 5] 1849 	adca	7,s	;
   0A97 ED E8 1A      [ 6] 1850 	std	26,s	;, ulltmp
   0A9A                    1851 L78:
                           1852 ;----- asm -----
                           1853 ; 410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1854 	; #ENR#[322]if (ulltmp > ull(max) )
                           1855 ;--- end asm ---
   0A9A AE E8 1A      [ 6] 1856 	ldx	26,s	;, ulltmp
   0A9D 8C 00 00      [ 4] 1857 	cmpx	#0	;cmphi:	;,
   0AA0 10 22 FD 38   [ 6] 1858 	lbhi	L89	;
   0AA4 10 26 FD 4B   [ 6] 1859 	lbne	L79	;
   0AA8 AE E8 1C      [ 6] 1860 	ldx	28,s	;, ulltmp
   0AAB AC 63         [ 7] 1861 	cmpx	3,s	;cmphi:	;,
   0AAD 10 23 FD 42   [ 6] 1862 	lbls	L79	;
   0AB1 16 FD 28      [ 5] 1863 	lbra	L89	;
   0AB4                    1864 L96:
   0AB4 10 83 00 00   [ 5] 1865 	cmpd	#0	;cmphi:(R)	; tmp1,
   0AB8 10 26 FD 59   [ 6] 1866 	lbne	L81	;
   0ABC EC E8 1C      [ 6] 1867 	ldd	28,s	;, ulltmp
   0ABF 10 A3 65      [ 8] 1868 	cmpd	5,s	;cmphi:(R)	;,
   0AC2 10 24 FD 4F   [ 6] 1869 	lbhs	L81	;
   0AC6 16 FD 35      [ 5] 1870 	lbra	L90	;
   0AC9                    1871 L97:
   0AC9 6D E8 20      [ 7] 1872 	tst	32,s	; lastDir
   0ACC 10 26 FE 35   [ 6] 1873 	lbne	L70	;
   0AD0 F6 C8 FE      [ 5] 1874 	ldb	_tmp	; tmp.298, tmp
   0AD3 E1 E8 1E      [ 5] 1875 	cmpb	30,s	;cmpqi:(R)	; tmp.298, maxDigit
   0AD6 10 2C FE 2B   [ 6] 1876 	lbge	L70	;
   0ADA 5C            [ 2] 1877 	incb	; tmp.298
   0ADB F7 C8 FE      [ 5] 1878 	stb	_tmp	; tmp.298, tmp
   0ADE 16 FE 24      [ 5] 1879 	lbra	L70	;
   0AE1                    1880 L98:
   0AE1 6D E8 20      [ 7] 1881 	tst	32,s	; lastDir
   0AE4 10 26 FE 3F   [ 6] 1882 	lbne	L72	;
   0AE8 F6 C8 FE      [ 5] 1883 	ldb	_tmp	;, tmp
   0AEB 1D            [ 2] 1884 	sex		;extendqihi2: R:b -> R:d	;,
   0AEC 1F 01         [ 6] 1885 	tfr	d,x	;, tmp
   0AEE EC E8 21      [ 6] 1886 	ldd	33,s	;, prephitmp.287
   0AF1 34 10         [ 6] 1887 	pshs	x	;subhi: R:d -= R:x	; tmp,
   0AF3 A3 E1         [ 9] 1888 	subd	,s++	;
   0AF5 30 CB         [ 8] 1889 	leax	d,u	; temp.304,, ascii
   0AF7 6A 84         [ 6] 1890 	dec	,x	;* temp.304
   0AF9 16 FE 2B      [ 5] 1891 	lbra	L72	;
   0AFC                    1892 L86:
                           1893 ;----- asm -----
                           1894 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1895 	; #ENR#[338]return (unsigned long int)ulltmp;
                           1896 ;--- end asm ---
   0AFC AE E8 1C      [ 6] 1897 	ldx	28,s	;, ulltmp
   0AFF 32 E8 2A      [ 5] 1898 	leas	42,s	;,,
   0B02 35 E0         [ 8] 1899 	puls	y,u,pc	;
   0B04                    1900 L63:
   0B04 CE C8 B3      [ 3] 1901 	ldu	#_stringBuffer12	; ascii,
   0B07 C6 04         [ 2] 1902 	ldb	#4	;,
   0B09 E7 E8 1E      [ 5] 1903 	stb	30,s	;, maxDigit
   0B0C 8E 00 04      [ 3] 1904 	ldx	#4	;,
   0B0F AF E8 21      [ 6] 1905 	stx	33,s	;, prephitmp.287
   0B12 16 FC 60      [ 5] 1906 	lbra	L64	;
   0B15                    1907 L91:
   0B15 C6 30         [ 2] 1908 	ldb	#48	;,
   0B17 F7 C8 B3      [ 5] 1909 	stb	_stringBuffer12	;, stringBuffer12
   0B1A 16 FC 17      [ 5] 1910 	lbra	L58	;
   0B1D                    1911 L95:
   0B1D C6 30         [ 2] 1912 	ldb	#48	;,
   0B1F F7 C8 B7      [ 5] 1913 	stb	_stringBuffer12+4	;, stringBuffer12
   0B22 16 FC 33      [ 5] 1914 	lbra	L62	;
   0B25                    1915 L94:
   0B25 C6 30         [ 2] 1916 	ldb	#48	;,
   0B27 F7 C8 B6      [ 5] 1917 	stb	_stringBuffer12+3	;, stringBuffer12
   0B2A 16 FC 22      [ 5] 1918 	lbra	L61	;
   0B2D                    1919 L93:
   0B2D C6 30         [ 2] 1920 	ldb	#48	;,
   0B2F F7 C8 B5      [ 5] 1921 	stb	_stringBuffer12+2	;, stringBuffer12
   0B32 16 FC 11      [ 5] 1922 	lbra	L60	;
   0B35                    1923 L92:
   0B35 C6 30         [ 2] 1924 	ldb	#48	;,
   0B37 F7 C8 B4      [ 5] 1925 	stb	_stringBuffer12+1	;, stringBuffer12
   0B3A 16 FC 00      [ 5] 1926 	lbra	L59	;
   0B3D                    1927 LC90:
   0B3D 59 4F 55 20 48 41  1928 	.ascii	"YOU HAVE NOT BEEN NOTICED...\0"
        56 45 20 4E 4F 54
        20 42 45 45 4E 20
        4E 4F 54 49 43 45
        44 2E 2E 2E 00
   0B5A                    1929 LC91:
   0B5A 3C 34 3E 20 54 4F  1930 	.ascii	"<4> TO APPROACH:\0"
        20 41 50 50 52 4F
        41 43 48 3A 00
   0B6B                    1931 LC92:
   0B6B 59 4F 55 20 45 4E  1932 	.ascii	"YOU ENCOUNTER A LVL % %\0"
        43 4F 55 4E 54 45
        52 20 41 20 4C 56
        4C 20 25 20 25 00
   0B83                    1933 LC93:
   0B83 25 20 4C 49 4B 45  1934 	.ascii	"% LIKES YOUR BODY\0"
        53 20 59 4F 55 52
        20 42 4F 44 59 00
   0B95                    1935 LC94:
   0B95 48 45 20 48 45 41  1936 	.ascii	"HE HEALS YOU TO FULL STRENGTH\0"
        4C 53 20 59 4F 55
        20 54 4F 20 46 55
        4C 4C 20 53 54 52
        45 4E 47 54 48 00
   0BB3                    1937 LC95:
   0BB3 25 20 4D 41 4B 45  1938 	.ascii	"% MAKES A QUICK MOVE\0"
        53 20 41 20 51 55
        49 43 4B 20 4D 4F
        56 45 00
   0BC8                    1939 LC96:
   0BC8 59 4F 55 20 48 41  1940 	.ascii	"YOU HAVE NOTHING HE WANTS\0"
        56 45 20 4E 4F 54
        48 49 4E 47 20 48
        45 20 57 41 4E 54
        53 00
   0BE2                    1941 LC97:
   0BE2 54 4F 20 53 54 45  1942 	.ascii	"TO STEAL!\0"
        41 4C 21 00
   0BEC                    1943 LC98:
   0BEC 48 45 20 53 54 45  1944 	.ascii	"HE STEALS YOUR %\0"
        41 4C 53 20 59 4F
        55 52 20 25 00
   0BFD                    1945 LC99:
   0BFD 48 45 20 53 54 45  1946 	.ascii	"HE STEALS A %\0"
        41 4C 53 20 41 20
        25 00
   0C0B                    1947 LC100:
   0C0B 54 48 45 20 25 20  1948 	.ascii	"THE % LIKES YOU!\0"
        4C 49 4B 45 53 20
        59 4F 55 21 00
   0C1C                    1949 LC101:
   0C1C 48 45 20 47 49 56  1950 	.ascii	"HE GIVES YOU A %+%\0"
        45 53 20 59 4F 55
        20 41 20 25 2B 25
        00
   0C2F                    1951 LC102:
   0C2F 46 49 47 48 54 28  1952 	.ascii	"FIGHT(4), CAST(3), EVADE(1)\0"
        34 29 2C 20 43 41
        53 54 28 33 29 2C
        20 45 56 41 44 45
        28 31 29 00
   0C4B                    1953 LC103:
   0C4B 57 41 49 54 00     1954 	.ascii	"WAIT\0"
   0C50                    1955 LC104:
   0C50 45 56 41 44 45 00  1956 	.ascii	"EVADE\0"
   0C56                    1957 LC105:
   0C56 59 4F 55 27 52 45  1958 	.ascii	"YOU'RE ROOTED TO THE SPOT\0"
        20 52 4F 4F 54 45
        44 20 54 4F 20 54
        48 45 20 53 50 4F
        54 00
   0C70                    1959 LC106:
   0C70 4E 4F 52 54 48 00  1960 	.ascii	"NORTH\0"
   0C76                    1961 LC107:
   0C76 53 4F 55 54 48 00  1962 	.ascii	"SOUTH\0"
   0C7C                    1963 LC108:
   0C7C 57 45 53 54 00     1964 	.ascii	"WEST\0"
   0C81                    1965 LC109:
   0C81 45 41 53 54 00     1966 	.ascii	"EAST\0"
   0C86                    1967 LC110:
   0C86 46 49 47 48 54 00  1968 	.ascii	"FIGHT\0"
   0C8C                    1969 LC111:
   0C8C 59 4F 55 20 4D 49  1970 	.ascii	"YOU MISSED...\0"
        53 53 45 44 2E 2E
        2E 00
   0C9A                    1971 LC112:
   0C9A 59 4F 55 20 44 4F  1972 	.ascii	"YOU DO % POINTS DAMAGE\0"
        20 25 20 50 4F 49
        4E 54 53 20 44 41
        4D 41 47 45 00
   0CB1                    1973 LC113:
   0CB1 49 54 20 44 49 45  1974 	.ascii	"IT DIED...\0"
        44 2E 2E 2E 00
   0CBC                    1975 LC114:
   0CBC 59 4F 55 20 47 41  1976 	.ascii	"YOU GAIN % EXPERIENCE POINTS\0"
        49 4E 20 25 20 45
        58 50 45 52 49 45
        4E 43 45 20 50 4F
        49 4E 54 53 00
   0CD9                    1977 LC115:
   0CD9 49 54 20 4D 49 53  1978 	.ascii	"IT MISSED...\0"
        53 45 44 2E 2E 2E
        00
   0CE6                    1979 LC116:
   0CE6 49 54 20 44 4F 45  1980 	.ascii	"IT DOES % POINTS DAMAGE\0"
        53 20 25 20 50 4F
        49 4E 54 53 20 44
        41 4D 41 47 45 00
   0CFE                    1981 LC117:
   0CFE 49 54 20 44 52 41  1982 	.ascii	"IT DRAINS A LEVEL!!!\0"
        49 4E 53 20 41 20
        4C 45 56 45 4C 21
        21 21 00
   0D13                    1983 LC118:
   0D13 59 4F 55 20 41 52  1984 	.ascii	"YOU ARE PARALIZED!!!\0"
        45 20 50 41 52 41
        4C 49 5A 45 44 21
        21 21 00
   0D28                    1985 LC119:
   0D28 49 54 20 55 53 45  1986 	.ascii	"IT USES IT'S SWORD!!!\0"
        53 20 49 54 27 53
        20 53 57 4F 52 44
        21 21 21 00
   0D3E                    1987 LC120:
   0D3E 49 54 20 55 53 45  1988 	.ascii	"IT USES IT'S WHIP!!\0"
        53 20 49 54 27 53
        20 57 48 49 50 21
        21 00
   0D52                    1989 LC121:
   0D52 54 48 45 20 44 52  1990 	.ascii	"THE DRAGON BREATHS FIRE!!!\0"
        41 47 4F 4E 20 42
        52 45 41 54 48 53
        20 46 49 52 45 21
        21 21 00
   0D6D                    1991 LC122:
   0D6D 59 4F 55 20 50 41  1992 	.ascii	"YOU PARTIALLY DODGE IT\0"
        52 54 49 41 4C 4C
        59 20 44 4F 44 47
        45 20 49 54 00
   0D84                    1993 LC123:
   0D84 59 4F 55 20 42 55  1994 	.ascii	"YOU BURN FOR % POINTS DAMAGE\0"
        52 4E 20 46 4F 52
        20 25 20 50 4F 49
        4E 54 53 20 44 41
        4D 41 47 45 00
   0DA1                    1995 LC124:
   0DA1 54 48 45 20 25 20  1996 	.ascii	"THE % IS NOT AMUSED\0"
        49 53 20 4E 4F 54
        20 41 4D 55 53 45
        44 00
                           1997 	.globl	_handleEncounters
   0DB5                    1998 _handleEncounters:
   0DB5 34 40         [ 6] 1999 	pshs	u	;
   0DB7 32 E8 E9      [ 5] 2000 	leas	-23,s	;,,
                           2001 ;----- asm -----
                           2002 ; 448 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2003 	; #ENR#[350]if (forcemonster == return_spanw_monster)
                           2004 ;--- end asm ---
   0DBA C1 1E         [ 2] 2005 	cmpb	#30	;cmpqi:	; forceMonster,
   0DBC 10 27 03 21   [ 6] 2006 	lbeq	L216	;
                           2007 ;----- asm -----
                           2008 ; 456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2009 	; #ENR#[356]if (forcemonster == return_monster_is_set)
                           2010 ;--- end asm ---
   0DC0 C1 1F         [ 2] 2011 	cmpb	#31	;cmpqi:	; forceMonster,
   0DC2 10 26 01 85   [ 6] 2012 	lbne	L102	;
                           2013 ;----- asm -----
                           2014 ; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2015 	; #ENR#[360]goto monsterforced;
                           2016 ;--- end asm ---
   0DC6                    2017 L103:
                           2018 ;----- asm -----
                           2019 ; 553 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2020 	; #ENR#[432]un = 0;
                           2021 ;--- end asm ---
   0DC6 7F C9 69      [ 7] 2022 	clr	_un	; un
                           2023 ;----- asm -----
                           2024 ; 557 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2025 	; #ENR#[435]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
                           2026 ;--- end asm ---
   0DC9 F6 C9 62      [ 5] 2027 	ldb	_m	; m.352, m
   0DCC C1 02         [ 2] 2028 	cmpb	#2	;cmpqi:	; m.352,
   0DCE 27 18         [ 3] 2029 	beq	L110	;
   0DD0 C1 04         [ 2] 2030 	cmpb	#4	;cmpqi:	; m.352,
   0DD2 27 14         [ 3] 2031 	beq	L110	;
   0DD4 C1 07         [ 2] 2032 	cmpb	#7	;cmpqi:	; m.352,
   0DD6 27 10         [ 3] 2033 	beq	L110	;
   0DD8 C1 09         [ 2] 2034 	cmpb	#9	;cmpqi:	; m.352,
   0DDA 27 0C         [ 3] 2035 	beq	L110	;
   0DDC C1 0C         [ 2] 2036 	cmpb	#12	;cmpqi:	; m.352,
   0DDE 27 08         [ 3] 2037 	beq	L110	;
   0DE0 C1 10         [ 2] 2038 	cmpb	#16	;cmpqi:	; m.352,
   0DE2 27 04         [ 3] 2039 	beq	L110	;
   0DE4 C1 11         [ 2] 2040 	cmpb	#17	;cmpqi:	; m.352,
   0DE6 26 05         [ 3] 2041 	bne	L111	;
   0DE8                    2042 L110:
   0DE8 C6 01         [ 2] 2043 	ldb	#1	;,
   0DEA F7 C9 69      [ 5] 2044 	stb	_un	;, un
   0DED                    2045 L111:
                           2046 ;----- asm -----
                           2047 ; 563 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2048 	; #ENR#[440]#ifdef atari_version
                           2049 ; 565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2050 	; #ENR#[441]if ( (sf[astral_walk] >0) && (un == 1) && (randmax(100)<20) )
                           2051 ;--- end asm ---
   0DED 7D C9 5A      [ 7] 2052 	tst	_sf+7	; sf
   0DF0 27 09         [ 3] 2053 	beq	L112	;
   0DF2 F6 C9 69      [ 5] 2054 	ldb	_un	;, un
   0DF5 C1 01         [ 2] 2055 	cmpb	#1	;cmpqi:	;,
   0DF7 10 27 05 EA   [ 6] 2056 	lbeq	L217	;
   0DFB                    2057 L112:
                           2058 ;----- asm -----
                           2059 ; 568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2060 	; #ENR#[443]#else
                           2061 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2062 	; #ENR#[455]clearmessage();
                           2063 ;--- end asm ---
   0DFB 7F C9 C2      [ 7] 2064 	clr	_msgLine	; msgLine
                           2065 ;----- asm -----
                           2066 ; 585 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2067 	; #ENR#[456]_fsi2_s(, ml, mo[m]);
                           2068 ;--- end asm ---
   0DFE F6 C9 62      [ 5] 2069 	ldb	_m	;, m
   0E01 1D            [ 2] 2070 	sex		;extendqihi2: R:b -> R:d	;,
   0E02 ED E4         [ 5] 2071 	std	,s	;,
   0E04 58            [ 2] 2072 	aslb	;
   0E05 49            [ 2] 2073 	rola	;
   0E06 1F 01         [ 6] 2074 	tfr	d,x	;, tmp107
   0E08 AE 89 01 24   [ 9] 2075 	ldx	_mo,x	;, mo
   0E0C AF E3         [ 8] 2076 	stx	,--s	;,
   0E0E F6 C9 6A      [ 5] 2077 	ldb	_ml	;, ml
   0E11 8E 0B 6B      [ 3] 2078 	ldx	#LC92	;,
   0E14 BD 69 CF      [ 8] 2079 	jsr	__fsi2_s
                           2080 ;----- asm -----
                           2081 ; 587 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2082 	; #ENR#[457]printmessage(stringbuffer40);
                           2083 ;--- end asm ---
   0E17 8E C8 BF      [ 3] 2084 	ldx	#_stringBuffer40	;,
   0E1A BD 5A 71      [ 8] 2085 	jsr	_printMessage
                           2086 ;----- asm -----
                           2087 ; 594 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2088 	; #ENR#[463]#ifndef atari_version
                           2089 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2090 	; #ENR#[475]l=ml;
                           2091 ;--- end asm ---
   0E1D F6 C9 6A      [ 5] 2092 	ldb	_ml	;, ml
   0E20 F7 C9 6B      [ 5] 2093 	stb	_l	;, l
                           2094 ;----- asm -----
                           2095 ; 611 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2096 	; #ENR#[476]tmp = 0;
                           2097 ;--- end asm ---
   0E23 7F C8 FE      [ 7] 2098 	clr	_tmp	; tmp
                           2099 ;----- asm -----
                           2100 ; 616 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2101 	; #ENR#[480]if (randmax(100)>94)
                           2102 ;--- end asm ---
   0E26 C6 64         [ 2] 2103 	ldb	#100	;,
   0E28 BD 5E 21      [ 8] 2104 	jsr	_RandMax
   0E2B 32 62         [ 5] 2105 	leas	2,s	;,,
   0E2D C1 5E         [ 2] 2106 	cmpb	#94	;cmpqi:	; D.3533,
   0E2F 10 22 03 99   [ 6] 2107 	lbhi	L218	;
                           2108 ;----- asm -----
                           2109 ; 642 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2110 	; #ENR#[500]if (m == elf)
                           2111 ;--- end asm ---
   0E33 F6 C9 62      [ 5] 2112 	ldb	_m	; m.356, m
   0E36 C1 08         [ 2] 2113 	cmpb	#8	;cmpqi:	; m.356,
   0E38 10 27 06 99   [ 6] 2114 	lbeq	L219	;
   0E3C C1 03         [ 2] 2115 	cmpb	#3	;cmpqi:	; m.356,
   0E3E 10 27 07 06   [ 6] 2116 	lbeq	L220	;
   0E42                    2117 L118:
   0E42 F6 C9 62      [ 5] 2118 	ldb	_m	;, m
   0E45 C1 13         [ 2] 2119 	cmpb	#19	;cmpqi:	;,
   0E47 10 27 07 11   [ 6] 2120 	lbeq	L221	;
   0E4B                    2121 L115:
                           2122 ;----- asm -----
                           2123 ; 672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2124 	; #ENR#[525]if (tmp == 1)
                           2125 ;--- end asm ---
   0E4B F6 C8 FE      [ 5] 2126 	ldb	_tmp	;, tmp
   0E4E E7 6F         [ 5] 2127 	stb	15,s	;, tmp.28
   0E50 C1 01         [ 2] 2128 	cmpb	#1	;cmpqi:	;,
   0E52 10 27 04 6A   [ 6] 2129 	lbeq	L222	;
   0E56 C1 02         [ 2] 2130 	cmpb	#2	;cmpqi:	;,
   0E58 10 27 04 9A   [ 6] 2131 	lbeq	L223	;
   0E5C C1 03         [ 2] 2132 	cmpb	#3	;cmpqi:	;,
   0E5E 10 27 03 A3   [ 6] 2133 	lbeq	L224	;
   0E62                    2134 L137:
                           2135 ;----- asm -----
                           2136 ; 825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2137 	; #ENR#[630]if (randmax(100) > 50+ s[dex]*2) goto label3300;
                           2138 ;--- end asm ---
   0E62 C6 64         [ 2] 2139 	ldb	#100	;,
   0E64 BD 5E 21      [ 8] 2140 	jsr	_RandMax
   0E67 E7 E8 10      [ 5] 2141 	stb	16,s	;, D.3555
   0E6A F6 C9 47      [ 5] 2142 	ldb	_s+4	; tmp182, s
   0E6D CB 19         [ 2] 2143 	addb	#25	; tmp182,
   0E6F 58            [ 2] 2144 	aslb	; tmp182
   0E70 E1 E8 10      [ 5] 2145 	cmpb	16,s	;cmpqi:(R)	; tmp182, D.3555
   0E73 10 25 00 B5   [ 6] 2146 	lblo	L212	;
   0E77 16 04 30      [ 5] 2147 	lbra	L249	;
   0E7A                    2148 L196:
                           2149 ;----- asm -----
                           2150 ; 1321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2151 	; #ENR#[972]if (m == specter) {dr = 2; goto label3305;}
                           2152 ;--- end asm ---
   0E7A C1 10         [ 2] 2153 	cmpb	#16	;cmpqi:	; m.425,
   0E7C 10 27 01 FA   [ 6] 2154 	lbeq	L226	;
                           2155 ;----- asm -----
                           2156 ; 1326 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2157 	; #ENR#[976]if (m == vampire) {dr = 3; goto label3305;}
                           2158 ;--- end asm ---
   0E80 C1 11         [ 2] 2159 	cmpb	#17	;cmpqi:	; m.425,
   0E82 10 27 02 36   [ 6] 2160 	lbeq	L227	;
                           2161 ;----- asm -----
                           2162 ; 1331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2163 	; #ENR#[980]if (m == ghoul) {pa = 5; goto label3305;}
                           2164 ;--- end asm ---
   0E86 C1 09         [ 2] 2165 	cmpb	#9	;cmpqi:	; m.425,
   0E88 10 27 02 4D   [ 6] 2166 	lbeq	L228	;
                           2167 ;----- asm -----
                           2168 ; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2169 	; #ENR#[988]if (m == demon)
                           2170 ;--- end asm ---
   0E8C C1 12         [ 2] 2171 	cmpb	#18	;cmpqi:	; m.425,
   0E8E 10 27 03 4D   [ 6] 2172 	lbeq	L229	;
                           2173 ;----- asm -----
                           2174 ; 1377 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2175 	; #ENR#[1014]if (m == dragon)
                           2176 ;--- end asm ---
   0E92 C1 13         [ 2] 2177 	cmpb	#19	;cmpqi:	; m.425,
   0E94 10 27 03 FA   [ 6] 2178 	lbeq	L230	;
   0E98                    2179 L203:
                           2180 ;----- asm -----
                           2181 ; 1428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2182 	; #ENR#[1049]goto label3305;
                           2183 ;--- end asm ---
   0E98                    2184 L189:
                           2185 ;----- asm -----
                           2186 ; 1225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2187 	; #ENR#[902]tmp = (signed int)(randmax(20) + ml -inventory[armor] - inventory[shield] + mb);
                           2188 ;--- end asm ---
   0E98 C6 14         [ 2] 2189 	ldb	#20	;,
   0E9A BD 5E 21      [ 8] 2190 	jsr	_RandMax
   0E9D E7 E8 12      [ 5] 2191 	stb	18,s	;, D.3632
   0EA0 F6 C9 68      [ 5] 2192 	ldb	_mb	; tmp234, mb
   0EA3 FB C9 6A      [ 5] 2193 	addb	_ml	; tmp234, ml
   0EA6 F0 C9 4B      [ 5] 2194 	subb	_inventory+2	; tmp236, inventory
   0EA9 F0 C9 4A      [ 5] 2195 	subb	_inventory+1	; tmp236, inventory
   0EAC EB E8 12      [ 5] 2196 	addb	18,s	; tmp236, D.3632
   0EAF E7 E8 13      [ 5] 2197 	stb	19,s	; tmp236, tmp.64
   0EB2 F7 C8 FE      [ 5] 2198 	stb	_tmp	; tmp236, tmp
                           2199 ;----- asm -----
                           2200 ; 1230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2201 	; #ENR#[906]if ((m>=specter) && (m<=vampire))
                           2202 ;--- end asm ---
   0EB5 F6 C9 62      [ 5] 2203 	ldb	_m	; tmp239, m
   0EB8 CB F0         [ 2] 2204 	addb	#-16	; tmp239,
   0EBA C1 01         [ 2] 2205 	cmpb	#1	;cmpqi:	; tmp239,
   0EBC 10 23 01 6D   [ 6] 2206 	lbls	L231	;
   0EC0                    2207 L190:
                           2208 ;----- asm -----
                           2209 ; 1240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2210 	; #ENR#[914]if (tmp < 10)
                           2211 ;--- end asm ---
   0EC0 F6 C8 FE      [ 5] 2212 	ldb	_tmp	;, tmp
   0EC3 C1 09         [ 2] 2213 	cmpb	#9	;cmpqi:	;,
   0EC5 10 2F 05 0C   [ 6] 2214 	lble	L232	;
                           2215 ;----- asm -----
                           2216 ; 1251 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2217 	; #ENR#[922]ltmp = (signed long int )  (randmax(8) + randmax(ml*2) +1 ) *db;
                           2218 ;--- end asm ---
   0EC9 C6 08         [ 2] 2219 	ldb	#8	;,
   0ECB BD 5E 21      [ 8] 2220 	jsr	_RandMax
   0ECE E7 E8 14      [ 5] 2221 	stb	20,s	;, D.3644
   0ED1 F6 C9 6A      [ 5] 2222 	ldb	_ml	; tmp241, ml
   0ED4 58            [ 2] 2223 	aslb	; tmp241
   0ED5 BD 5E 21      [ 8] 2224 	jsr	_RandMax
   0ED8 EB E8 14      [ 5] 2225 	addb	20,s	; D.3646, D.3644
   0EDB 5C            [ 2] 2226 	incb	; D.3646
   0EDC B6 C9 65      [ 5] 2227 	lda	_db	;umulqihi3	; db
   0EDF 3D            [11] 2228 	mul
   0EE0 1F 01         [ 6] 2229 	tfr	d,x	;, ltmp.67
   0EE2 FD C9 02      [ 6] 2230 	std	_ltmp	; ltmp.67, ltmp
                           2231 ;----- asm -----
                           2232 ; 1253 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2233 	; #ENR#[923]_fi_s(, (unsigned int)ltmp);
                           2234 ;--- end asm ---
   0EE5 1F 10         [ 6] 2235 	tfr	x,d	;movlsbqihi: R:x -> R:b	; ltmp.67,
   0EE7 8E 0C E6      [ 3] 2236 	ldx	#LC116	;,
   0EEA BD 5B BD      [ 8] 2237 	jsr	__fi_s
                           2238 ;----- asm -----
                           2239 ; 1255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2240 	; #ENR#[924]printmessage(stringbuffer40);
                           2241 ;--- end asm ---
   0EED 8E C8 BF      [ 3] 2242 	ldx	#_stringBuffer40	;,
   0EF0 BD 5A 71      [ 8] 2243 	jsr	_printMessage
                           2244 ;----- asm -----
                           2245 ; 1260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2246 	; #ENR#[928]label3320:
                           2247 ;--- end asm ---
   0EF3                    2248 L192:
                           2249 ;----- asm -----
                           2250 ; 1262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2251 	; #ENR#[929]ch = ch - ltmp;
                           2252 ;--- end asm ---
   0EF3 FC C9 2D      [ 6] 2253 	ldd	_ch	; ch, ch
   0EF6 B3 C9 02      [ 7] 2254 	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.69, ltmp
   0EF9 FD C9 2D      [ 6] 2255 	std	_ch	; ch.69, ch
                           2256 ;----- asm -----
                           2257 ; 1264 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2258 	; #ENR#[930]if (ch <1)
                           2259 ;--- end asm ---
   0EFC 10 83 00 00   [ 5] 2260 	cmpd	#0	; ch.69
   0F00 10 2F 04 DA   [ 6] 2261 	lble	L233	;
                           2262 ;----- asm -----
                           2263 ; 1272 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2264 	; #ENR#[936]pause(small_pause);
                           2265 ;--- end asm ---
   0F04 C6 4B         [ 2] 2266 	ldb	#75	;,
   0F06 BD 3D 31      [ 8] 2267 	jsr	_pause
                           2268 ;----- asm -----
                           2269 ; 1277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2270 	; #ENR#[940]if ((randmax(10) < dr) && (sf[protection_from_evil]) !=0)
                           2271 ;--- end asm ---
   0F09 C6 0A         [ 2] 2272 	ldb	#10	;,
   0F0B BD 5E 21      [ 8] 2273 	jsr	_RandMax
   0F0E F1 C9 67      [ 5] 2274 	cmpb	_dr	;cmpqi:	; D.3655, dr
   0F11 24 07         [ 3] 2275 	bhs	L194	;
   0F13 7D C9 56      [ 7] 2276 	tst	_sf+3	; sf
   0F16 10 26 01 68   [ 6] 2277 	lbne	L234	;
   0F1A                    2278 L194:
                           2279 ;----- asm -----
                           2280 ; 1305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2281 	; #ENR#[961]if (randmax(10) >= pa) goto fightstart;
                           2282 ;--- end asm ---
   0F1A C6 0A         [ 2] 2283 	ldb	#10	;,
   0F1C BD 5E 21      [ 8] 2284 	jsr	_RandMax
   0F1F F1 C9 66      [ 5] 2285 	cmpb	_pa	;cmpqi:	; D.3658, pa
   0F22 10 24 00 7A   [ 6] 2286 	lbhs	L214	;
                           2287 ;----- asm -----
                           2288 ; 1307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2289 	; #ENR#[962]printmessage();
                           2290 ;--- end asm ---
   0F26 8E 0D 13      [ 3] 2291 	ldx	#LC118	;,
   0F29 BD 5A 71      [ 8] 2292 	jsr	_printMessage
                           2293 ;----- asm -----
                           2294 ; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2295 	; #ENR#[963]goto label3300;
                           2296 ;--- end asm ---
   0F2C                    2297 L212:
                           2298 ;----- asm -----
                           2299 ; 1206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2300 	; #ENR#[889]db = 1;
                           2301 ;--- end asm ---
   0F2C C6 01         [ 2] 2302 	ldb	#1	;,
   0F2E F7 C9 65      [ 5] 2303 	stb	_db	;, db
                           2304 ;----- asm -----
                           2305 ; 1208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2306 	; #ENR#[890]pa = 0;
                           2307 ;--- end asm ---
   0F31 7F C9 66      [ 7] 2308 	clr	_pa	; pa
                           2309 ;----- asm -----
                           2310 ; 1210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2311 	; #ENR#[891]dr = 0;
                           2312 ;--- end asm ---
   0F34 7F C9 67      [ 7] 2313 	clr	_dr	; dr
                           2314 ;----- asm -----
                           2315 ; 1212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2316 	; #ENR#[892]mb = 0;
                           2317 ;--- end asm ---
   0F37 7F C9 68      [ 7] 2318 	clr	_mb	; mb
                           2319 ;----- asm -----
                           2320 ; 1214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2321 	; #ENR#[893]goto label3330;
   0F3A                    2322 L188:
                           2323 ; 1316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2324 	; #ENR#[968]if (m == wraith) {dr = 1; goto label3305;}
                           2325 ;--- end asm ---
   0F3A F6 C9 62      [ 5] 2326 	ldb	_m	; m.425, m
   0F3D C1 0C         [ 2] 2327 	cmpb	#12	;cmpqi:	; m.425,
   0F3F 10 26 FF 37   [ 6] 2328 	lbne	L196	;
   0F43 C6 01         [ 2] 2329 	ldb	#1	;,
   0F45 F7 C9 67      [ 5] 2330 	stb	_dr	;, dr
   0F48 16 FF 4D      [ 5] 2331 	lbra	L189	;
   0F4B                    2332 L102:
                           2333 ;----- asm -----
                           2334 ; 466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2335 	; #ENR#[364]if (randmax(100)>30) return return_treasure;
                           2336 ;--- end asm ---
   0F4B C6 64         [ 2] 2337 	ldb	#100	;,
   0F4D BD 5E 21      [ 8] 2338 	jsr	_RandMax
   0F50 C1 1E         [ 2] 2339 	cmpb	#30	;cmpqi:	; D.3500,
   0F52 10 22 00 34   [ 6] 2340 	lbhi	L104	;
                           2341 ;----- asm -----
                           2342 ; 473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2343 	; #ENR#[370]#ifdef atari_version
                           2344 ; 475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2345 	; #ENR#[371]if (sf[timestop]>0) return return_treasure;
                           2346 ;--- end asm ---
   0F56 7D C9 5B      [ 7] 2347 	tst	_sf+8	; sf
   0F59 26 2F         [ 3] 2348 	bne	L104	;
                           2349 ;----- asm -----
                           2350 ; 477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2351 	; #ENR#[372]#endif
                           2352 ; 482 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2353 	; #ENR#[376]if ( (sf[invisible]>0) && (randmax(100)>20) ) return return_treasure;
                           2354 ;--- end asm ---
   0F5B 7D C9 58      [ 7] 2355 	tst	_sf+5	; sf
   0F5E 26 21         [ 3] 2356 	bne	L235	;
   0F60                    2357 L105:
                           2358 ;----- asm -----
                           2359 ; 489 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2360 	; #ENR#[382]monsteragain:
                           2361 ;--- end asm ---
   0F60                    2362 L209:
                           2363 ;----- asm -----
                           2364 ; 491 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2365 	; #ENR#[383]m = (signed int)randmax(20);
                           2366 ;--- end asm ---
   0F60 C6 14         [ 2] 2367 	ldb	#20	;,
   0F62 BD 5E 21      [ 8] 2368 	jsr	_RandMax
   0F65 F7 C9 62      [ 5] 2369 	stb	_m	; D.3505, m
                           2370 ;----- asm -----
                           2371 ; 496 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2372 	; #ENR#[387]if ((sf[fear]>0) && (m<5)) goto monsteragain;
                           2373 ;--- end asm ---
   0F68 7D C9 59      [ 7] 2374 	tst	_sf+6	; sf
   0F6B 27 04         [ 3] 2375 	beq	L106	;
   0F6D C1 04         [ 2] 2376 	cmpb	#4	;cmpqi:	; D.3505,
   0F6F 2F EF         [ 3] 2377 	ble	L209	;
   0F71                    2378 L106:
                           2379 ;----- asm -----
                           2380 ; 499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2381 	; #ENR#[389]if ( (randmax(20)+1)  <=  inventory[elven_cloak] )
                           2382 ;--- end asm ---
   0F71 C6 14         [ 2] 2383 	ldb	#20	;,
   0F73 BD 5E 21      [ 8] 2384 	jsr	_RandMax
   0F76 5C            [ 2] 2385 	incb	; D.3509
   0F77 F1 C9 4C      [ 5] 2386 	cmpb	_inventory+3	;cmpqi:	; D.3509, inventory
   0F7A 10 23 06 8A   [ 6] 2387 	lbls	L236	;
   0F7E                    2388 L108:
                           2389 ;----- asm -----
                           2390 ; 522 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2391 	; #ENR#[406]monsterset:
                           2392 ;--- end asm ---
   0F7E 16 01 60      [ 5] 2393 	lbra	L101	;
   0F81                    2394 L235:
   0F81 C6 64         [ 2] 2395 	ldb	#100	;,
   0F83 BD 5E 21      [ 8] 2396 	jsr	_RandMax
   0F86 C1 14         [ 2] 2397 	cmpb	#20	;cmpqi:	; D.3504,
   0F88 23 D6         [ 3] 2398 	bls	L105	;
   0F8A                    2399 L104:
   0F8A C6 03         [ 2] 2400 	ldb	#3	;,
   0F8C E7 6B         [ 5] 2401 	stb	11,s	;, D.3501
   0F8E                    2402 L109:
   0F8E E6 6B         [ 5] 2403 	ldb	11,s	; <result>, D.3501
   0F90                    2404 L99:
   0F90 32 E8 17      [ 5] 2405 	leas	23,s	;,,
   0F93 35 C0         [ 7] 2406 	puls	u,pc	;
   0F95                    2407 L154:
                           2408 ;----- asm -----
                           2409 ; 1083 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2410 	; #ENR#[803]clearmessage();
                           2411 ;--- end asm ---
   0F95 7F C9 C2      [ 7] 2412 	clr	_msgLine	; msgLine
                           2413 ;----- asm -----
                           2414 ; 1085 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2415 	; #ENR#[804]if (displaystatuspage())
                           2416 ;--- end asm ---
   0F98 BD 39 63      [ 8] 2417 	jsr	_displayStatusPage
   0F9B 5D            [ 2] 2418 	tstb	; D.3594
   0F9C 10 26 07 64   [ 6] 2419 	lbne	L237	;
                           2420 ;----- asm -----
                           2421 ; 1093 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2422 	; #ENR#[810]goto fightstart;
                           2423 ;--- end asm ---
   0FA0                    2424 L214:
                           2425 ;----- asm -----
                           2426 ; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2427 	; #ENR#[634]clearmessage();
                           2428 ;--- end asm ---
   0FA0 7F C9 C2      [ 7] 2429 	clr	_msgLine	; msgLine
                           2430 ;----- asm -----
                           2431 ; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2432 	; #ENR#[639]printmessage();
                           2433 ;--- end asm ---
   0FA3 8E 0C 2F      [ 3] 2434 	ldx	#LC102	;,
   0FA6 BD 5A 71      [ 8] 2435 	jsr	_printMessage
                           2436 ;----- asm -----
                           2437 ; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2438 	; #ENR#[640]localtimer = action_time;
                           2439 ;--- end asm ---
   0FA9 C6 96         [ 2] 2440 	ldb	#-106	;,
   0FAB F7 C8 A8      [ 5] 2441 	stb	_localTimer	;, localTimer
                           2442 ;----- asm -----
                           2443 ; 842 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2444 	; #ENR#[641]tmp2 = 0;
                           2445 ;--- end asm ---
   0FAE 7F C8 FF      [ 7] 2446 	clr	_tmp2	; tmp2
                           2447 ;----- asm -----
                           2448 ; 844 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2449 	; #ENR#[642]while(1)
                           2450 ;--- end asm ---
   0FB1 16 00 50      [ 5] 2451 	lbra	L150	;
   0FB4                    2452 L142:
                           2453 ;----- asm -----
                           2454 ; 859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2455 	; #ENR#[651]if (vec_joy_1_y>0) tmp2 = 5;
                           2456 ;--- end asm ---
   0FB4 7D C8 1C      [ 7] 2457 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   0FB7 2F 05         [ 3] 2458 	ble	L143	;
   0FB9 C6 05         [ 2] 2459 	ldb	#5	;,
   0FBB F7 C8 FF      [ 5] 2460 	stb	_tmp2	;, tmp2
   0FBE                    2461 L143:
                           2462 ;----- asm -----
                           2463 ; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2464 	; #ENR#[652]if (vec_joy_1_y<0) tmp2 = 5;
                           2465 ;--- end asm ---
   0FBE 7D C8 1C      [ 7] 2466 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   0FC1 10 2D 00 60   [ 6] 2467 	lblt	L238	;
   0FC5                    2468 L144:
                           2469 ;----- asm -----
                           2470 ; 864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2471 	; #ENR#[654]if (button_1_4_pressed()) tmp2 = 4;
                           2472 ;--- end asm ---
   0FC5 F6 C8 11      [ 5] 2473 	ldb	_Vec_Buttons	;, Vec_Buttons
   0FC8 C5 08         [ 2] 2474 	bitb	#8	;,
   0FCA 27 08         [ 3] 2475 	beq	L145	;
   0FCC C6 04         [ 2] 2476 	ldb	#4	;,
   0FCE F7 C8 FF      [ 5] 2477 	stb	_tmp2	;, tmp2
   0FD1 F6 C8 11      [ 5] 2478 	ldb	_Vec_Buttons	;, Vec_Buttons
   0FD4                    2479 L145:
                           2480 ;----- asm -----
                           2481 ; 866 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2482 	; #ENR#[655]if (button_1_3_pressed()) tmp2 = 3;
                           2483 ;--- end asm ---
   0FD4 C5 04         [ 2] 2484 	bitb	#4	;,
   0FD6 27 08         [ 3] 2485 	beq	L146	;
   0FD8 C6 03         [ 2] 2486 	ldb	#3	;,
   0FDA F7 C8 FF      [ 5] 2487 	stb	_tmp2	;, tmp2
   0FDD F6 C8 11      [ 5] 2488 	ldb	_Vec_Buttons	;, Vec_Buttons
   0FE0                    2489 L146:
                           2490 ;----- asm -----
                           2491 ; 868 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2492 	; #ENR#[656]if (button_1_2_pressed()) tmp2 = 2;
                           2493 ;--- end asm ---
   0FE0 C5 02         [ 2] 2494 	bitb	#2	;,
   0FE2 27 08         [ 3] 2495 	beq	L147	;
   0FE4 C6 02         [ 2] 2496 	ldb	#2	;,
   0FE6 F7 C8 FF      [ 5] 2497 	stb	_tmp2	;, tmp2
   0FE9 F6 C8 11      [ 5] 2498 	ldb	_Vec_Buttons	;, Vec_Buttons
   0FEC                    2499 L147:
                           2500 ;----- asm -----
                           2501 ; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2502 	; #ENR#[657]if (button_1_1_pressed()) tmp2 = 1;
                           2503 ;--- end asm ---
   0FEC C5 01         [ 2] 2504 	bitb	#1	;,
   0FEE 27 05         [ 3] 2505 	beq	L148	;
   0FF0 C6 01         [ 2] 2506 	ldb	#1	;,
   0FF2 F7 C8 FF      [ 5] 2507 	stb	_tmp2	;, tmp2
   0FF5                    2508 L148:
                           2509 ;----- asm -----
                           2510 ; 874 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2511 	; #ENR#[660]if ((!buttons_pressed()) && (tmp2))
                           2512 ;--- end asm ---
   0FF5 7D C8 11      [ 7] 2513 	tst	_Vec_Buttons	; Vec_Buttons
   0FF8 26 07         [ 3] 2514 	bne	L149	;
   0FFA 7D C8 FF      [ 7] 2515 	tst	_tmp2	; tmp2
   0FFD 10 26 00 3E   [ 6] 2516 	lbne	L140	;
   1001                    2517 L149:
                           2518 ;----- asm -----
                           2519 ; 878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2520 	; #ENR#[663]localtimer--;
                           2521 ;--- end asm ---
   1001 7A C8 A8      [ 7] 2522 	dec	_localTimer	; localTimer
   1004                    2523 L150:
                           2524 ;----- asm -----
                           2525 ; 847 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2526 	; #ENR#[644]displayround();
                           2527 ;--- end asm ---
   1004 BD 3C BC      [ 8] 2528 	jsr	_displayRound
                           2529 ;----- asm -----
                           2530 ; 849 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2531 	; #ENR#[645]if (localtimer == 0)
                           2532 ;--- end asm ---
   1007 7D C8 A8      [ 7] 2533 	tst	_localTimer	; localTimer
   100A 27 33         [ 3] 2534 	beq	L239	;
                           2535 ;----- asm -----
                           2536 ; 855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2537 	; #ENR#[649]if (vec_joy_1_x>0) tmp2 = 5;
                           2538 ;--- end asm ---
   100C 7D C8 1B      [ 7] 2539 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   100F 2F 05         [ 3] 2540 	ble	L141	;
   1011 C6 05         [ 2] 2541 	ldb	#5	;,
   1013 F7 C8 FF      [ 5] 2542 	stb	_tmp2	;, tmp2
   1016                    2543 L141:
                           2544 ;----- asm -----
                           2545 ; 857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2546 	; #ENR#[650]if (vec_joy_1_x<0) tmp2 = 5;
                           2547 ;--- end asm ---
   1016 7D C8 1B      [ 7] 2548 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   1019 10 2C FF 97   [ 6] 2549 	lbge	L142	;
   101D C6 05         [ 2] 2550 	ldb	#5	;,
   101F F7 C8 FF      [ 5] 2551 	stb	_tmp2	;, tmp2
   1022 16 FF 8F      [ 5] 2552 	lbra	L142	;
   1025                    2553 L238:
   1025 C6 05         [ 2] 2554 	ldb	#5	;,
   1027 F7 C8 FF      [ 5] 2555 	stb	_tmp2	;, tmp2
   102A 16 FF 98      [ 5] 2556 	lbra	L144	;
   102D                    2557 L231:
                           2558 ;----- asm -----
                           2559 ; 1233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2560 	; #ENR#[908]if (sf[protection_from_evil] > 0) tmp = tmp -6;
                           2561 ;--- end asm ---
   102D 7D C9 56      [ 7] 2562 	tst	_sf+3	; sf
   1030 10 27 FE 8C   [ 6] 2563 	lbeq	L190	;
   1034 E6 E8 13      [ 5] 2564 	ldb	19,s	;, tmp.64
   1037 CB FA         [ 2] 2565 	addb	#-6	;,
   1039 F7 C8 FE      [ 5] 2566 	stb	_tmp	;, tmp
   103C 16 FE 81      [ 5] 2567 	lbra	L190	;
   103F                    2568 L239:
                           2569 ;----- asm -----
                           2570 ; 852 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2571 	; #ENR#[647]break;
                           2572 ;--- end asm ---
   103F                    2573 L140:
                           2574 ;----- asm -----
                           2575 ; 882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2576 	; #ENR#[666]db = 1;
                           2577 ;--- end asm ---
   103F C6 01         [ 2] 2578 	ldb	#1	;,
   1041 F7 C9 65      [ 5] 2579 	stb	_db	;, db
                           2580 ;----- asm -----
                           2581 ; 884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2582 	; #ENR#[667]pa = 0;
                           2583 ;--- end asm ---
   1044 7F C9 66      [ 7] 2584 	clr	_pa	; pa
                           2585 ;----- asm -----
                           2586 ; 886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2587 	; #ENR#[668]dr = 0;
                           2588 ;--- end asm ---
   1047 7F C9 67      [ 7] 2589 	clr	_dr	; dr
                           2590 ;----- asm -----
                           2591 ; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2592 	; #ENR#[669]mb = 0;
                           2593 ;--- end asm ---
   104A 7F C9 68      [ 7] 2594 	clr	_mb	; mb
                           2595 ;----- asm -----
                           2596 ; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2597 	; #ENR#[670]switch (tmp2)
                           2598 ;--- end asm ---
   104D F6 C8 FF      [ 5] 2599 	ldb	_tmp2	;, tmp2
   1050 C1 04         [ 2] 2600 	cmpb	#4	;cmpqi:	;,
   1052 10 23 00 6E   [ 6] 2601 	lbls	L240	;
                           2602 ;----- asm -----
                           2603 ; 1434 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2604 	; #ENR#[1053]clearmessage();
                           2605 ;--- end asm ---
   1056 7F C9 C2      [ 7] 2606 	clr	_msgLine	; msgLine
                           2607 ;----- asm -----
                           2608 ; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2609 	; #ENR#[1054]_fs(, mo[m]);
                           2610 ;--- end asm ---
   1059 F6 C9 62      [ 5] 2611 	ldb	_m	;, m
   105C 1D            [ 2] 2612 	sex		;extendqihi2: R:b -> R:d	;,
   105D ED E4         [ 5] 2613 	std	,s	;,
   105F 58            [ 2] 2614 	aslb	;
   1060 49            [ 2] 2615 	rola	;
   1061 1F 01         [ 6] 2616 	tfr	d,x	;, tmp259
   1063 AE 89 01 24   [ 9] 2617 	ldx	_mo,x	;, mo
   1067 AF E3         [ 8] 2618 	stx	,--s	;,
   1069 8E 0D A1      [ 3] 2619 	ldx	#LC124	;,
   106C BD 5B 50      [ 8] 2620 	jsr	__fs
                           2621 ;----- asm -----
                           2622 ; 1438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2623 	; #ENR#[1055]printmessage(stringbuffer40);
                           2624 ;--- end asm ---
   106F 8E C8 BF      [ 3] 2625 	ldx	#_stringBuffer40	;,
   1072 BD 5A 71      [ 8] 2626 	jsr	_printMessage
                           2627 ;----- asm -----
                           2628 ; 1440 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2629 	; #ENR#[1056]goto fightstart;
                           2630 ;--- end asm ---
   1075 32 62         [ 5] 2631 	leas	2,s	;,,
   1077 16 FF 26      [ 5] 2632 	lbra	L214	;
   107A                    2633 L226:
   107A C6 02         [ 2] 2634 	ldb	#2	;,
   107C F7 C9 67      [ 5] 2635 	stb	_dr	;, dr
   107F 16 FE 16      [ 5] 2636 	lbra	L189	;
   1082                    2637 L234:
                           2638 ;----- asm -----
                           2639 ; 1284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2640 	; #ENR#[946]printmessage();
                           2641 ;--- end asm ---
   1082 8E 0C FE      [ 3] 2642 	ldx	#LC117	;,
   1085 BD 5A 71      [ 8] 2643 	jsr	_printMessage
                           2644 ;----- asm -----
                           2645 ; 1286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2646 	; #ENR#[947]ex = ex >>1;
                           2647 ;--- end asm ---
   1088 FC C9 30      [ 6] 2648 	ldd	_ex	; tmp246, ex
   108B 1F 98         [ 6] 2649 	tfr	b,a	;,
   108D 5F            [ 2] 2650 	clrb	;
   108E 46            [ 2] 2651 	rora	;
   108F 46            [ 2] 2652 	rora	;
   1090 84 80         [ 2] 2653 	anda	#-128	;,
   1092 74 C9 32      [ 7] 2654 	lsr	_ex+2	; ex
   1095 76 C9 33      [ 7] 2655 	ror	_ex+3	; ex
   1098 BE C9 32      [ 6] 2656 	ldx	_ex+2	; ex, ex
   109B 34 10         [ 6] 2657 	pshs	x	; ex
   109D AA E0         [ 6] 2658 	ora	,s+	;,
   109F EA E0         [ 6] 2659 	orb	,s+	;,
   10A1 FD C9 32      [ 6] 2660 	std	_ex+2	; tmp248, ex
   10A4 74 C9 30      [ 7] 2661 	lsr	_ex	; ex
   10A7 76 C9 31      [ 7] 2662 	ror	_ex+1	; ex
                           2663 ;----- asm -----
                           2664 ; 1289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2665 	; #ENR#[949]checkxp();
                           2666 ;--- end asm ---
   10AA BD 52 EF      [ 8] 2667 	jsr	_checkXP
                           2668 ;----- asm -----
                           2669 ; 1291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2670 	; #ENR#[950]if (ch==0)
                           2671 ;--- end asm ---
   10AD BE C9 2D      [ 6] 2672 	ldx	_ch	; ch, ch
   10B0 10 27 05 98   [ 6] 2673 	lbeq	L241	;
                           2674 ;----- asm -----
                           2675 ; 1298 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2676 	; #ENR#[955]pause(small_pause);
                           2677 ;--- end asm ---
   10B4 C6 4B         [ 2] 2678 	ldb	#75	;,
   10B6 BD 3D 31      [ 8] 2679 	jsr	_pause
   10B9 16 FE 5E      [ 5] 2680 	lbra	L194	;
   10BC                    2681 L227:
   10BC C6 03         [ 2] 2682 	ldb	#3	;,
   10BE F7 C9 67      [ 5] 2683 	stb	_dr	;, dr
   10C1 16 FD D4      [ 5] 2684 	lbra	L189	;
   10C4                    2685 L240:
   10C4 4F            [ 2] 2686 	clra		;zero_extendqihi: R:b -> R:d	;,
   10C5 ED E4         [ 5] 2687 	std	,s	;,
   10C7 58            [ 2] 2688 	aslb	;
   10C8 49            [ 2] 2689 	rola	;
   10C9 1F 01         [ 6] 2690 	tfr	d,x	;, tmp194
   10CB 6E 99 10 CF   [10] 2691 	jmp	[L157,x]	;, tmp194
   10CF                    2692 L157:
   10CF 11 99              2693 	.word	L152
   10D1 11 A5              2694 	.word	L153
   10D3 0F 95              2695 	.word	L154
   10D5 11 5C              2696 	.word	L155
   10D7 11 14              2697 	.word	L156
   10D9                    2698 L228:
   10D9 C6 05         [ 2] 2699 	ldb	#5	;,
   10DB F7 C9 66      [ 5] 2700 	stb	_pa	;, pa
   10DE 16 FD B7      [ 5] 2701 	lbra	L189	;
   10E1                    2702 L216:
                           2703 ;----- asm -----
                           2704 ; 452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2705 	; #ENR#[353]goto monsterset;
                           2706 ;--- end asm ---
   10E1                    2707 L101:
                           2708 ;----- asm -----
                           2709 ; 529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2710 	; #ENR#[412]ml = randmax(cz+1)*randmax(2+1) + 1;
                           2711 ;--- end asm ---
   10E1 F6 C9 3A      [ 5] 2712 	ldb	_cz	; tmp99, cz
   10E4 5C            [ 2] 2713 	incb	; tmp99
   10E5 BD 5E 21      [ 8] 2714 	jsr	_RandMax
   10E8 E7 6C         [ 5] 2715 	stb	12,s	;, D.3515
   10EA C6 03         [ 2] 2716 	ldb	#3	;,
   10EC BD 5E 21      [ 8] 2717 	jsr	_RandMax
   10EF A6 6C         [ 5] 2718 	lda	12,s	;umulqihi3	; D.3515
   10F1 3D            [11] 2719 	mul
                           2720 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   10F2 1F 01         [ 6] 2721 	tfr	d,x	;, tmp100
                           2722 ; ORG>	tfr	d,x	;, tmp100
                           2723 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp100,
   10F4 5C            [ 2] 2724 	incb	;
   10F5 E7 6D         [ 5] 2725 	stb	13,s	;, ml.21
   10F7 F7 C9 6A      [ 5] 2726 	stb	_ml	;, ml
                           2727 ;----- asm -----
                           2728 ; 531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2729 	; #ENR#[413]ml = ml - randmax(ml);
                           2730 ;--- end asm ---
   10FA BD 5E 21      [ 8] 2731 	jsr	_RandMax
   10FD E0 6D         [ 5] 2732 	subb	13,s	; ml.23, ml.21
   10FF 50            [ 2] 2733 	negb	; ml.23
   1100 F7 C9 6A      [ 5] 2734 	stb	_ml	; ml.23, ml
                           2735 ;----- asm -----
                           2736 ; 542 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2737 	; #ENR#[423]mh = (signed long) randmax(ml*(unsigned int)m)+1;
                           2738 ;--- end asm ---
   1103 B6 C9 62      [ 5] 2739 	lda	_m	;umulqihi3	; m
   1106 3D            [11] 2740 	mul
                           2741 		;movlsbqihi: D->B
   1107 BD 5E 21      [ 8] 2742 	jsr	_RandMax
   110A 4F            [ 2] 2743 	clra		;zero_extendqihi: R:b -> R:d	; D.3524, D.3524
   110B C3 00 01      [ 4] 2744 	addd	#1; addhi3,3	; D.3524,
   110E FD C9 63      [ 6] 2745 	std	_mh	; D.3524, mh
                           2746 ;----- asm -----
                           2747 ; 545 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2748 	; #ENR#[425]monsterforced:
                           2749 ;--- end asm ---
   1111 16 FC B2      [ 5] 2750 	lbra	L103	;
   1114                    2751 L156:
                           2752 ;----- asm -----
                           2753 ; 1120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2754 	; #ENR#[831]clearmessage();
                           2755 ;--- end asm ---
   1114 7F C9 C2      [ 7] 2756 	clr	_msgLine	; msgLine
                           2757 ;----- asm -----
                           2758 ; 1122 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2759 	; #ENR#[832]printmessage();
                           2760 ;--- end asm ---
   1117 8E 0C 86      [ 3] 2761 	ldx	#LC110	;,
   111A BD 5A 71      [ 8] 2762 	jsr	_printMessage
                           2763 ;----- asm -----
                           2764 ; 1124 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2765 	; #ENR#[833]ltmp = randmax(20) + lv + inventory[sword] + s[str]/2;
                           2766 ;--- end asm ---
   111D C6 14         [ 2] 2767 	ldb	#20	;,
   111F BD 5E 21      [ 8] 2768 	jsr	_RandMax
   1122 E7 62         [ 5] 2769 	stb	2,s	;, D.3596
   1124 F6 C9 49      [ 5] 2770 	ldb	_inventory	;, inventory
   1127 FB C9 2F      [ 5] 2771 	addb	_lv	;, lv
   112A E7 6A         [ 5] 2772 	stb	10,s	;,
   112C F6 C9 43      [ 5] 2773 	ldb	_s	;, s
   112F 54            [ 2] 2774 	lsrb	;
   1130 E7 69         [ 5] 2775 	stb	9,s	;,
   1132 E6 6A         [ 5] 2776 	ldb	10,s	;,
   1134 EB 69         [ 5] 2777 	addb	9,s	;,
   1136 E7 6A         [ 5] 2778 	stb	10,s	;,
   1138 E6 62         [ 5] 2779 	ldb	2,s	;, D.3596
   113A EB 6A         [ 5] 2780 	addb	10,s	;,
   113C 4F            [ 2] 2781 	clra		;zero_extendqihi: R:b -> R:d	;,
   113D 1F 01         [ 6] 2782 	tfr	d,x	;, ltmp.51
   113F FD C9 02      [ 6] 2783 	std	_ltmp	; ltmp.51, ltmp
                           2784 ;----- asm -----
                           2785 ; 1126 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2786 	; #ENR#[834]if (sf[strength]>0) ltmp = ltmp +4;
                           2787 ;--- end asm ---
   1142 7D C9 53      [ 7] 2788 	tst	_sf	; sf
   1145 27 05         [ 3] 2789 	beq	L183	;
   1147 30 04         [ 5] 2790 	leax	4,x	;,, ltmp.51
   1149 BF C9 02      [ 6] 2791 	stx	_ltmp	;, ltmp
   114C                    2792 L183:
                           2793 ;----- asm -----
                           2794 ; 1130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2795 	; #ENR#[837]if (ltmp <10)
                           2796 ;--- end asm ---
   114C 8C 00 09      [ 4] 2797 	cmpx	#9	;cmphi:	;,
   114F 10 2E 02 B1   [ 6] 2798 	lbgt	L184	;
                           2799 ;----- asm -----
                           2800 ; 1133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2801 	; #ENR#[839]printmessage();
                           2802 ;--- end asm ---
   1153 8E 0C 8C      [ 3] 2803 	ldx	#LC111	;,
   1156 BD 5A 71      [ 8] 2804 	jsr	_printMessage
   1159                    2805 L185:
                           2806 ;----- asm -----
                           2807 ; 1204 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2808 	; #ENR#[888]label3300:
                           2809 ;--- end asm ---
   1159 16 FD D0      [ 5] 2810 	lbra	L212	;
   115C                    2811 L155:
                           2812 ;----- asm -----
                           2813 ; 1100 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2814 	; #ENR#[815]tmp2 = castspell(1);
                           2815 ;--- end asm ---
   115C C6 01         [ 2] 2816 	ldb	#1	;,
   115E BD 45 A0      [ 8] 2817 	jsr	_castSpell
   1161 E7 62         [ 5] 2818 	stb	2,s	;, tmp2.36
   1163 F7 C8 FF      [ 5] 2819 	stb	_tmp2	;, tmp2
                           2820 ;----- asm -----
                           2821 ; 1102 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2822 	; #ENR#[816]if (tmp2 == 1) goto label3300;
                           2823 ;--- end asm ---
   1166 C1 01         [ 2] 2824 	cmpb	#1	;cmpqi:	;,
   1168 10 27 FD C0   [ 6] 2825 	lbeq	L212	;
   116C C1 02         [ 2] 2826 	cmpb	#2	;cmpqi:	;,
   116E 10 27 FE 2E   [ 6] 2827 	lbeq	L214	;
   1172 C1 03         [ 2] 2828 	cmpb	#3	;cmpqi:	;,
   1174 10 27 02 E6   [ 6] 2829 	lbeq	L180	;
   1178 C1 04         [ 2] 2830 	cmpb	#4	;cmpqi:	;,
   117A 10 27 03 71   [ 6] 2831 	lbeq	L161	;
   117E C1 05         [ 2] 2832 	cmpb	#5	;cmpqi:	;,
   1180 10 27 02 E0   [ 6] 2833 	lbeq	L181	;
   1184 C1 06         [ 2] 2834 	cmpb	#6	;cmpqi:	;,
   1186 10 27 FE 00   [ 6] 2835 	lbeq	L104	;
   118A C6 02         [ 2] 2836 	ldb	#2	;,
   118C E7 6B         [ 5] 2837 	stb	11,s	;, D.3501
   118E E6 62         [ 5] 2838 	ldb	2,s	;, tmp2.36
   1190 C1 07         [ 2] 2839 	cmpb	#7	;cmpqi:	;,
   1192 10 27 FD F8   [ 6] 2840 	lbeq	L109	;
                           2841 ;----- asm -----
                           2842 ; 1110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2843 	; #ENR#[823]break;
                           2844 ;--- end asm ---
   1196 16 FD F7      [ 5] 2845 	lbra	L99	;
   1199                    2846 L152:
                           2847 ;----- asm -----
                           2848 ; 896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2849 	; #ENR#[674]clearmessage();
                           2850 ;--- end asm ---
   1199 7F C9 C2      [ 7] 2851 	clr	_msgLine	; msgLine
                           2852 ;----- asm -----
                           2853 ; 898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2854 	; #ENR#[675]printmessage();
                           2855 ;--- end asm ---
   119C 8E 0C 4B      [ 3] 2856 	ldx	#LC103	;,
   119F BD 5A 71      [ 8] 2857 	jsr	_printMessage
                           2858 ;----- asm -----
                           2859 ; 900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2860 	; #ENR#[676]goto fightstart;
                           2861 ;--- end asm ---
   11A2 16 FD FB      [ 5] 2862 	lbra	L214	;
   11A5                    2863 L153:
                           2864 ;----- asm -----
                           2865 ; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2866 	; #ENR#[685]clearmessage();
                           2867 ;--- end asm ---
   11A5 7F C9 C2      [ 7] 2868 	clr	_msgLine	; msgLine
                           2869 ;----- asm -----
                           2870 ; 913 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2871 	; #ENR#[686]printmessage();
                           2872 ;--- end asm ---
   11A8 8E 0C 50      [ 3] 2873 	ldx	#LC104	;,
   11AB BD 5A 71      [ 8] 2874 	jsr	_printMessage
                           2875 ;----- asm -----
                           2876 ; 915 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2877 	; #ENR#[687]tmp = (signed int)randmax(18) + 1;
                           2878 ;--- end asm ---
   11AE C6 12         [ 2] 2879 	ldb	#18	;,
   11B0 BD 5E 21      [ 8] 2880 	jsr	_RandMax
   11B3 5C            [ 2] 2881 	incb	; tmp.38
   11B4 F7 C8 FE      [ 5] 2882 	stb	_tmp	; tmp.38, tmp
                           2883 ;----- asm -----
                           2884 ; 920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2885 	; #ENR#[691]if ((unsigned int)tmp >= s[dex])
                           2886 ;--- end asm ---
   11B7 F1 C9 47      [ 5] 2887 	cmpb	_s+4	;cmpqi:	; tmp.38, s
   11BA 10 25 03 31   [ 6] 2888 	lblo	L159	;
                           2889 ;----- asm -----
                           2890 ; 923 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2891 	; #ENR#[693]cantevade:
                           2892 ;--- end asm ---
   11BE                    2893 L160:
                           2894 ;----- asm -----
                           2895 ; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2896 	; #ENR#[696]printmessage();
                           2897 ;--- end asm ---
   11BE 8E 0C 56      [ 3] 2898 	ldx	#LC105	;,
   11C1 BD 5A 71      [ 8] 2899 	jsr	_printMessage
                           2900 ;----- asm -----
                           2901 ; 929 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2902 	; #ENR#[697]pause(50);
                           2903 ;--- end asm ---
   11C4 C6 32         [ 2] 2904 	ldb	#50	;,
   11C6 BD 3D 31      [ 8] 2905 	jsr	_pause
                           2906 ;----- asm -----
                           2907 ; 931 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2908 	; #ENR#[698]goto label3300;
                           2909 ;--- end asm ---
   11C9 16 FD 60      [ 5] 2910 	lbra	L212	;
   11CC                    2911 L218:
                           2912 ;----- asm -----
                           2913 ; 619 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2914 	; #ENR#[482]unsigned int t = randmax(91);
                           2915 ;--- end asm ---
   11CC C6 5B         [ 2] 2916 	ldb	#91	;,
   11CE BD 5E 21      [ 8] 2917 	jsr	_RandMax
                           2918 ;----- asm -----
                           2919 ; 621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2920 	; #ENR#[483]if (t<30)
                           2921 ;--- end asm ---
   11D1 C1 1D         [ 2] 2922 	cmpb	#29	;cmpqi:	; t,
   11D3 10 22 00 DB   [ 6] 2923 	lbhi	L114	;
                           2924 ;----- asm -----
                           2925 ; 624 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2926 	; #ENR#[485]tmp = 1;
                           2927 ;--- end asm ---
   11D7 C6 01         [ 2] 2928 	ldb	#1	;,
   11D9 F7 C8 FE      [ 5] 2929 	stb	_tmp	;, tmp
   11DC 16 FC 6C      [ 5] 2930 	lbra	L115	;
   11DF                    2931 L229:
                           2932 ;----- asm -----
                           2933 ; 1343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2934 	; #ENR#[990]if (randmax(10)>6)
                           2935 ;--- end asm ---
   11DF C6 0A         [ 2] 2936 	ldb	#10	;,
   11E1 BD 5E 21      [ 8] 2937 	jsr	_RandMax
   11E4 C1 06         [ 2] 2938 	cmpb	#6	;cmpqi:	; D.3660,
   11E6 10 23 02 09   [ 6] 2939 	lbls	L201	;
                           2940 ;----- asm -----
                           2941 ; 1346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2942 	; #ENR#[992]printmessage();
                           2943 ;--- end asm ---
   11EA 8E 0D 28      [ 3] 2944 	ldx	#LC119	;,
   11ED BD 5A 71      [ 8] 2945 	jsr	_printMessage
                           2946 ;----- asm -----
                           2947 ; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2948 	; #ENR#[993]mb = 4;
                           2949 ;--- end asm ---
   11F0 C6 04         [ 2] 2950 	ldb	#4	;,
   11F2 F7 C9 68      [ 5] 2951 	stb	_mb	;, mb
                           2952 ;----- asm -----
                           2953 ; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2954 	; #ENR#[994]db = 3;
                           2955 ;--- end asm ---
   11F5 C6 03         [ 2] 2956 	ldb	#3	;,
   11F7 F7 C9 65      [ 5] 2957 	stb	_db	;, db
   11FA                    2958 L202:
                           2959 ;----- asm -----
                           2960 ; 1362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2961 	; #ENR#[1002]pause(small_pause);
                           2962 ;--- end asm ---
   11FA C6 4B         [ 2] 2963 	ldb	#75	;,
   11FC BD 3D 31      [ 8] 2964 	jsr	_pause
                           2965 ;----- asm -----
                           2966 ; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2967 	; #ENR#[1003]clearmessage();
                           2968 ;--- end asm ---
   11FF 7F C9 C2      [ 7] 2969 	clr	_msgLine	; msgLine
                           2970 ;----- asm -----
                           2971 ; 1366 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2972 	; #ENR#[1004]goto label3305;
                           2973 ;--- end asm ---
   1202 16 FC 93      [ 5] 2974 	lbra	L189	;
   1205                    2975 L224:
                           2976 ;----- asm -----
                           2977 ; 784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2978 	; #ENR#[601]tmp = (signed int) randmax(7);
                           2979 ;--- end asm ---
   1205 C6 07         [ 2] 2980 	ldb	#7	;,
   1207 BD 5E 21      [ 8] 2981 	jsr	_RandMax
   120A F7 C8 FE      [ 5] 2982 	stb	_tmp	; D.3551, tmp
                           2983 ;----- asm -----
                           2984 ; 786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2985 	; #ENR#[602]if (inventory[tmp] < ml)
                           2986 ;--- end asm ---
   120D 1D            [ 2] 2987 	sex		;extendqihi2: R:b -> R:d	; D.3551,
   120E 1F 01         [ 6] 2988 	tfr	d,x	;, tmp.32
   1210 E6 89 C9 49   [ 8] 2989 	ldb	_inventory,x	;, inventory
   1214 E7 62         [ 5] 2990 	stb	2,s	;, temp.373
   1216 F6 C9 6A      [ 5] 2991 	ldb	_ml	;, ml
   1219 E7 E8 15      [ 5] 2992 	stb	21,s	;, ml.374
   121C E6 62         [ 5] 2993 	ldb	2,s	;, temp.373
   121E E1 E8 15      [ 5] 2994 	cmpb	21,s	;cmpqi:	;, ml.374
   1221 10 24 FC 3D   [ 6] 2995 	lbhs	L137	;
                           2996 ;----- asm -----
                           2997 ; 791 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2998 	; #ENR#[606]unsigned int c = ml - inventory[tmp];
                           2999 ; 793 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3000 	; #ENR#[607]c = randmax(c) + 1;
                           3001 ;--- end asm ---
   1225 E6 E8 15      [ 5] 3002 	ldb	21,s	;, ml.374
   1228 E0 62         [ 5] 3003 	subb	2,s	;, temp.373
   122A E7 62         [ 5] 3004 	stb	2,s	;, temp.373
   122C BD 5E 21      [ 8] 3005 	jsr	_RandMax
   122F E7 62         [ 5] 3006 	stb	2,s	;, D.3553
                           3007 ;----- asm -----
                           3008 ; 795 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3009 	; #ENR#[608]inventory[tmp] = inventory[tmp]+c;
                           3010 ;--- end asm ---
   1231 F6 C8 FE      [ 5] 3011 	ldb	_tmp	;, tmp
   1234 1D            [ 2] 3012 	sex		;extendqihi2: R:b -> R:d	;,
   1235 1F 01         [ 6] 3013 	tfr	d,x	;, tmp.376
   1237 E6 62         [ 5] 3014 	ldb	2,s	;, D.3553
   1239 EB 89 C9 49   [ 8] 3015 	addb	_inventory,x	;, inventory
   123D 5C            [ 2] 3016 	incb	;
   123E E7 89 C9 49   [ 8] 3017 	stb	_inventory,x	;, inventory
                           3018 ;----- asm -----
                           3019 ; 800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3020 	; #ENR#[612]_fs(, mo[m]);
                           3021 ;--- end asm ---
   1242 F6 C9 62      [ 5] 3022 	ldb	_m	;, m
   1245 1D            [ 2] 3023 	sex		;extendqihi2: R:b -> R:d	;,
   1246 ED E4         [ 5] 3024 	std	,s	;,
   1248 58            [ 2] 3025 	aslb	;
   1249 49            [ 2] 3026 	rola	;
   124A 1F 01         [ 6] 3027 	tfr	d,x	;, tmp170
   124C AE 89 01 24   [ 9] 3028 	ldx	_mo,x	;, mo
   1250 AF E3         [ 8] 3029 	stx	,--s	;,
   1252 8E 0C 0B      [ 3] 3030 	ldx	#LC100	;,
   1255 BD 5B 50      [ 8] 3031 	jsr	__fs
                           3032 ;----- asm -----
                           3033 ; 802 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3034 	; #ENR#[613]printmessage(stringbuffer40);
                           3035 ;--- end asm ---
   1258 8E C8 BF      [ 3] 3036 	ldx	#_stringBuffer40	;,
   125B BD 5A 71      [ 8] 3037 	jsr	_printMessage
                           3038 ;----- asm -----
                           3039 ; 807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3040 	; #ENR#[617]_fsi_s(, items[tmp], inventory[tmp]);
                           3041 ;--- end asm ---
   125E F6 C8 FE      [ 5] 3042 	ldb	_tmp	;, tmp
   1261 1D            [ 2] 3043 	sex		;extendqihi2: R:b -> R:d	;,
   1262 ED 62         [ 6] 3044 	std	2,s	;,
   1264 58            [ 2] 3045 	aslb	;
   1265 49            [ 2] 3046 	rola	;
   1266 1F 01         [ 6] 3047 	tfr	d,x	;, tmp178
   1268 AE 89 01 F9   [ 9] 3048 	ldx	_items,x	;, items
   126C AF E3         [ 8] 3049 	stx	,--s	;,
   126E AE 64         [ 6] 3050 	ldx	4,s	;,
   1270 E6 89 C9 49   [ 8] 3051 	ldb	_inventory,x	;, inventory
   1274 8E 0C 1C      [ 3] 3052 	ldx	#LC101	;,
   1277 BD 6A 6A      [ 8] 3053 	jsr	__fsi_s
                           3054 ;----- asm -----
                           3055 ; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3056 	; #ENR#[618]printmessage(stringbuffer40);
                           3057 ;--- end asm ---
   127A 8E C8 BF      [ 3] 3058 	ldx	#_stringBuffer40	;,
   127D BD 5A 71      [ 8] 3059 	jsr	_printMessage
                           3060 ;----- asm -----
                           3061 ; 811 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3062 	; #ENR#[619]tmp = 0;
                           3063 ;--- end asm ---
   1280 7F C8 FE      [ 7] 3064 	clr	_tmp	; tmp
                           3065 ;----- asm -----
                           3066 ; 813 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3067 	; #ENR#[620]pause(small_pause);
                           3068 ;--- end asm ---
   1283 C6 4B         [ 2] 3069 	ldb	#75	;,
   1285 BD 3D 31      [ 8] 3070 	jsr	_pause
                           3071 ;----- asm -----
                           3072 ; 815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3073 	; #ENR#[621]return return_treasure;
                           3074 ;--- end asm ---
   1288 E6 E8 13      [ 5] 3075 	ldb	19,s	;, tmp.28
   128B E7 6F         [ 5] 3076 	stb	15,s	;, D.3501
   128D 32 64         [ 5] 3077 	leas	4,s	;,,
   128F 16 FC FC      [ 5] 3078 	lbra	L109	;
   1292                    3079 L230:
                           3080 ;----- asm -----
                           3081 ; 1380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3082 	; #ENR#[1016]if (randmax(10)>3)
                           3083 ;--- end asm ---
   1292 C6 0A         [ 2] 3084 	ldb	#10	;,
   1294 BD 5E 21      [ 8] 3085 	jsr	_RandMax
   1297 C1 03         [ 2] 3086 	cmpb	#3	;cmpqi:	; D.3661,
   1299 10 23 03 25   [ 6] 3087 	lbls	L204	;
                           3088 ;----- asm -----
                           3089 ; 1383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3090 	; #ENR#[1018]mb = 5;
                           3091 ;--- end asm ---
   129D C6 05         [ 2] 3092 	ldb	#5	;,
   129F F7 C9 68      [ 5] 3093 	stb	_mb	;, mb
                           3094 ;----- asm -----
                           3095 ; 1385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3096 	; #ENR#[1019]db = 2;
                           3097 ;--- end asm ---
   12A2 C6 02         [ 2] 3098 	ldb	#2	;,
   12A4 F7 C9 65      [ 5] 3099 	stb	_db	;, db
   12A7 16 FB EE      [ 5] 3100 	lbra	L203	;
   12AA                    3101 L249:
                           3102 ;----- asm -----
                           3103 ; 828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3104 	; #ENR#[632]pause(small_pause);
                           3105 ;--- end asm ---
   12AA C6 4B         [ 2] 3106 	ldb	#75	;,
   12AC BD 3D 31      [ 8] 3107 	jsr	_pause
                           3108 ;----- asm -----
                           3109 ; 830 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3110 	; #ENR#[633]fightstart:
                           3111 ;--- end asm ---
   12AF 16 FC EE      [ 5] 3112 	lbra	L214	;
   12B2                    3113 L114:
   12B2 C1 3B         [ 2] 3114 	cmpb	#59	;cmpqi:	; t,
   12B4 10 22 02 B8   [ 6] 3115 	lbhi	L116	;
                           3116 ;----- asm -----
                           3117 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3118 	; #ENR#[489]tmp = 2;
                           3119 ;--- end asm ---
   12B8 C6 02         [ 2] 3120 	ldb	#2	;,
   12BA F7 C8 FE      [ 5] 3121 	stb	_tmp	;, tmp
   12BD 16 FB 8B      [ 5] 3122 	lbra	L115	;
   12C0                    3123 L222:
                           3124 ;----- asm -----
                           3125 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3126 	; #ENR#[527]tmp = 1;
                           3127 ; 680 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3128 	; #ENR#[531]_fs(, mo[m]);
                           3129 ;--- end asm ---
   12C0 F6 C9 62      [ 5] 3130 	ldb	_m	;, m
   12C3 1D            [ 2] 3131 	sex		;extendqihi2: R:b -> R:d	;,
   12C4 ED E4         [ 5] 3132 	std	,s	;,
   12C6 58            [ 2] 3133 	aslb	;
   12C7 49            [ 2] 3134 	rola	;
   12C8 1F 01         [ 6] 3135 	tfr	d,x	;, tmp116
   12CA AE 89 01 24   [ 9] 3136 	ldx	_mo,x	;, mo
   12CE AF E3         [ 8] 3137 	stx	,--s	;,
   12D0 8E 0B 83      [ 3] 3138 	ldx	#LC93	;,
   12D3 BD 5B 50      [ 8] 3139 	jsr	__fs
                           3140 ;----- asm -----
                           3141 ; 682 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3142 	; #ENR#[532]printmessage(stringbuffer40);
                           3143 ;--- end asm ---
   12D6 8E C8 BF      [ 3] 3144 	ldx	#_stringBuffer40	;,
   12D9 BD 5A 71      [ 8] 3145 	jsr	_printMessage
                           3146 ;----- asm -----
                           3147 ; 684 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3148 	; #ENR#[533]printmessage();
                           3149 ;--- end asm ---
   12DC 8E 0B 95      [ 3] 3150 	ldx	#LC94	;,
   12DF BD 5A 71      [ 8] 3151 	jsr	_printMessage
                           3152 ;----- asm -----
                           3153 ; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3154 	; #ENR#[534]pause(small_pause);
                           3155 ;--- end asm ---
   12E2 C6 4B         [ 2] 3156 	ldb	#75	;,
   12E4 BD 3D 31      [ 8] 3157 	jsr	_pause
                           3158 ;----- asm -----
                           3159 ; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3160 	; #ENR#[535]ch = (signed long int) hp;
                           3161 ;--- end asm ---
   12E7 BE C9 2B      [ 6] 3162 	ldx	_hp	;, hp
   12EA BF C9 2D      [ 6] 3163 	stx	_ch	;, ch
                           3164 ;----- asm -----
                           3165 ; 690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3166 	; #ENR#[536]return return_treasure;
                           3167 ;--- end asm ---
   12ED C6 03         [ 2] 3168 	ldb	#3	;,
   12EF E7 6D         [ 5] 3169 	stb	13,s	;, D.3501
   12F1 32 62         [ 5] 3170 	leas	2,s	;,,
   12F3 16 FC 98      [ 5] 3171 	lbra	L109	;
   12F6                    3172 L223:
                           3173 ;----- asm -----
                           3174 ; 698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3175 	; #ENR#[543]_fs(, mo[m]);
                           3176 ;--- end asm ---
   12F6 F6 C9 62      [ 5] 3177 	ldb	_m	;, m
   12F9 1D            [ 2] 3178 	sex		;extendqihi2: R:b -> R:d	;,
   12FA ED E4         [ 5] 3179 	std	,s	;,
   12FC 58            [ 2] 3180 	aslb	;
   12FD 49            [ 2] 3181 	rola	;
   12FE 1F 01         [ 6] 3182 	tfr	d,x	;, tmp122
   1300 AE 89 01 24   [ 9] 3183 	ldx	_mo,x	;, mo
   1304 AF E3         [ 8] 3184 	stx	,--s	;,
   1306 8E 0B B3      [ 3] 3185 	ldx	#LC95	;,
   1309 BD 5B 50      [ 8] 3186 	jsr	__fs
                           3187 ;----- asm -----
                           3188 ; 700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3189 	; #ENR#[544]printmessage(stringbuffer40);
                           3190 ;--- end asm ---
   130C 8E C8 BF      [ 3] 3191 	ldx	#_stringBuffer40	;,
   130F BD 5A 71      [ 8] 3192 	jsr	_printMessage
                           3193 ;----- asm -----
                           3194 ; 702 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3195 	; #ENR#[545]pause(small_pause);
                           3196 ;--- end asm ---
   1312 C6 4B         [ 2] 3197 	ldb	#75	;,
   1314 BD 3D 31      [ 8] 3198 	jsr	_pause
                           3199 ;----- asm -----
                           3200 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3201 	; #ENR#[547]tmp = -1;
                           3202 ;--- end asm ---
   1317 C6 FF         [ 2] 3203 	ldb	#-1	;,
   1319 F7 C8 FE      [ 5] 3204 	stb	_tmp	;, tmp
                           3205 ;----- asm -----
                           3206 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3207 	; #ENR#[551]for (int i=0; i<10; i++)
                           3208 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3209 	; #ENR#[553]if (inventory[i] != 0)
                           3210 ;--- end asm ---
   131C 32 62         [ 5] 3211 	leas	2,s	;,,
   131E 7D C9 49      [ 7] 3212 	tst	_inventory	; inventory
   1321 10 26 03 D3   [ 6] 3213 	lbne	L242	;
                           3214 ;----- asm -----
                           3215 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3216 	; #ENR#[553]if (inventory[i] != 0)
                           3217 ;--- end asm ---
   1325 C6 01         [ 2] 3218 	ldb	#1	; i,
   1327 7D C9 4A      [ 7] 3219 	tst	_inventory+1	; inventory
   132A 10 26 03 18   [ 6] 3220 	lbne	L122	;
                           3221 ;----- asm -----
                           3222 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3223 	; #ENR#[553]if (inventory[i] != 0)
                           3224 ;--- end asm ---
   132E 7D C9 4B      [ 7] 3225 	tst	_inventory+2	; inventory
   1331 10 26 03 C7   [ 6] 3226 	lbne	L243	;
                           3227 ;----- asm -----
                           3228 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3229 	; #ENR#[553]if (inventory[i] != 0)
                           3230 ;--- end asm ---
   1335 C6 03         [ 2] 3231 	ldb	#3	; i,
   1337 7D C9 4C      [ 7] 3232 	tst	_inventory+3	; inventory
   133A 10 26 03 08   [ 6] 3233 	lbne	L122	;
                           3234 ;----- asm -----
                           3235 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3236 	; #ENR#[553]if (inventory[i] != 0)
                           3237 ;--- end asm ---
   133E C6 04         [ 2] 3238 	ldb	#4	; i,
   1340 7D C9 4D      [ 7] 3239 	tst	_inventory+4	; inventory
   1343 10 26 02 FF   [ 6] 3240 	lbne	L122	;
                           3241 ;----- asm -----
                           3242 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3243 	; #ENR#[553]if (inventory[i] != 0)
                           3244 ;--- end asm ---
   1347 C6 05         [ 2] 3245 	ldb	#5	; i,
   1349 7D C9 4E      [ 7] 3246 	tst	_inventory+5	; inventory
   134C 10 26 02 F6   [ 6] 3247 	lbne	L122	;
                           3248 ;----- asm -----
                           3249 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3250 	; #ENR#[553]if (inventory[i] != 0)
                           3251 ;--- end asm ---
   1350 C6 06         [ 2] 3252 	ldb	#6	; i,
   1352 7D C9 4F      [ 7] 3253 	tst	_inventory+6	; inventory
   1355 10 26 02 ED   [ 6] 3254 	lbne	L122	;
                           3255 ;----- asm -----
                           3256 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3257 	; #ENR#[553]if (inventory[i] != 0)
                           3258 ;--- end asm ---
   1359 C6 07         [ 2] 3259 	ldb	#7	; i,
   135B 7D C9 50      [ 7] 3260 	tst	_inventory+7	; inventory
   135E 10 26 02 E4   [ 6] 3261 	lbne	L122	;
                           3262 ;----- asm -----
                           3263 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3264 	; #ENR#[553]if (inventory[i] != 0)
                           3265 ;--- end asm ---
   1362 C6 08         [ 2] 3266 	ldb	#8	; i,
   1364 7D C9 51      [ 7] 3267 	tst	_inventory+8	; inventory
   1367 10 26 02 DB   [ 6] 3268 	lbne	L122	;
                           3269 ;----- asm -----
                           3270 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3271 	; #ENR#[553]if (inventory[i] != 0)
                           3272 ;--- end asm ---
   136B 7D C9 52      [ 7] 3273 	tst	_inventory+9	; inventory
   136E 10 26 02 D2   [ 6] 3274 	lbne	L244	;
   1372                    3275 L131:
                           3276 ;----- asm -----
                           3277 ; 722 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3278 	; #ENR#[559]if (tmp==-1)
                           3279 ;--- end asm ---
   1372 F6 C8 FE      [ 5] 3280 	ldb	_tmp	;, tmp
   1375 C1 FF         [ 2] 3281 	cmpb	#-1	;cmpqi:	;,
   1377 10 27 03 31   [ 6] 3282 	lbeq	L245	;
                           3283 ;----- asm -----
                           3284 ; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3285 	; #ENR#[568]tmp=-1;
                           3286 ;--- end asm ---
   137B C6 FF         [ 2] 3287 	ldb	#-1	;,
   137D F7 C8 FE      [ 5] 3288 	stb	_tmp	;, tmp
                           3289 ;----- asm -----
                           3290 ; 738 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3291 	; #ENR#[569]do
                           3292 ;--- end asm ---
   1380                    3293 L134:
                           3294 ;----- asm -----
                           3295 ; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3296 	; #ENR#[571]tmp = (signed int) randmax(10);
                           3297 ;--- end asm ---
   1380 C6 0A         [ 2] 3298 	ldb	#10	;,
   1382 BD 5E 21      [ 8] 3299 	jsr	_RandMax
   1385 F7 C8 FE      [ 5] 3300 	stb	_tmp	; D.3546, tmp
                           3301 ;----- asm -----
                           3302 ; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3303 	; #ENR#[572]if (inventory[tmp] == 0) tmp = -1;
                           3304 ;--- end asm ---
   1388 1D            [ 2] 3305 	sex		;extendqihi2: R:b -> R:d	; D.3546,
   1389 1F 01         [ 6] 3306 	tfr	d,x	;, tmp.31
   138B 6D 89 C9 49   [10] 3307 	tst	_inventory,x	; inventory
   138F 26 05         [ 3] 3308 	bne	L133	;
   1391 C6 FF         [ 2] 3309 	ldb	#-1	;,
   1393 F7 C8 FE      [ 5] 3310 	stb	_tmp	;, tmp
   1396                    3311 L133:
                           3312 ;----- asm -----
                           3313 ; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3314 	; #ENR#[574]while (tmp == -1);
                           3315 ;--- end asm ---
   1396 F6 C8 FE      [ 5] 3316 	ldb	_tmp	; tmp.366, tmp
   1399 C1 FF         [ 2] 3317 	cmpb	#-1	;cmpqi:	; tmp.366,
   139B 27 E3         [ 3] 3318 	beq	L134	;
                           3319 ;----- asm -----
                           3320 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3321 	; #ENR#[581]if (tmp <scroll_of_rescue)
                           3322 ;--- end asm ---
   139D C1 06         [ 2] 3323 	cmpb	#6	;cmpqi:	; tmp.366,
   139F 10 2F 01 D5   [ 6] 3324 	lble	L246	;
                           3325 ;----- asm -----
                           3326 ; 766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3327 	; #ENR#[589]_fs(,items[tmp]);
                           3328 ;--- end asm ---
   13A3 1D            [ 2] 3329 	sex		;extendqihi2: R:b -> R:d	; tmp.366, tmp.366
   13A4 58            [ 2] 3330 	aslb	;
   13A5 49            [ 2] 3331 	rola	;
   13A6 1F 01         [ 6] 3332 	tfr	d,x	; tmp.366, tmp148
   13A8 AE 89 01 F9   [ 9] 3333 	ldx	_items,x	;, items
   13AC AF E3         [ 8] 3334 	stx	,--s	;,
   13AE 8E 0B FD      [ 3] 3335 	ldx	#LC99	;,
   13B1 BD 5B 50      [ 8] 3336 	jsr	__fs
                           3337 ;----- asm -----
                           3338 ; 768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3339 	; #ENR#[590]printmessage(stringbuffer40);
                           3340 ;--- end asm ---
   13B4 8E C8 BF      [ 3] 3341 	ldx	#_stringBuffer40	;,
   13B7 BD 5A 71      [ 8] 3342 	jsr	_printMessage
                           3343 ;----- asm -----
                           3344 ; 770 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3345 	; #ENR#[591]inventory[tmp] -=1;
                           3346 ;--- end asm ---
   13BA F6 C8 FE      [ 5] 3347 	ldb	_tmp	;, tmp
   13BD 1D            [ 2] 3348 	sex		;extendqihi2: R:b -> R:d	;,
   13BE 1F 01         [ 6] 3349 	tfr	d,x	;, tmp.370
   13C0 6A 89 C9 49   [10] 3350 	dec	_inventory,x	; inventory
   13C4 32 62         [ 5] 3351 	leas	2,s	;,,
   13C6                    3352 L136:
                           3353 ;----- asm -----
                           3354 ; 773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3355 	; #ENR#[593]tmp = 0;
                           3356 ;--- end asm ---
   13C6 7F C8 FE      [ 7] 3357 	clr	_tmp	; tmp
                           3358 ;----- asm -----
                           3359 ; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3360 	; #ENR#[594]pause(small_pause);
                           3361 ;--- end asm ---
   13C9 C6 4B         [ 2] 3362 	ldb	#75	;,
   13CB BD 3D 31      [ 8] 3363 	jsr	_pause
                           3364 ;----- asm -----
                           3365 ; 777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3366 	; #ENR#[595]return return_treasure;
                           3367 ;--- end asm ---
   13CE C6 03         [ 2] 3368 	ldb	#3	;,
   13D0 E7 6B         [ 5] 3369 	stb	11,s	;, D.3501
   13D2 16 FB B9      [ 5] 3370 	lbra	L109	;
   13D5                    3371 L232:
                           3372 ;----- asm -----
                           3373 ; 1243 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3374 	; #ENR#[916]printmessage();
                           3375 ;--- end asm ---
   13D5 8E 0C D9      [ 3] 3376 	ldx	#LC115	;,
   13D8 BD 5A 71      [ 8] 3377 	jsr	_printMessage
                           3378 ;----- asm -----
                           3379 ; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3380 	; #ENR#[917]goto fightstart;
                           3381 ;--- end asm ---
   13DB 16 FB C2      [ 5] 3382 	lbra	L214	;
   13DE                    3383 L233:
                           3384 ;----- asm -----
                           3385 ; 1268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3386 	; #ENR#[933]return return_player_dead;
                           3387 ;--- end asm ---
   13DE C6 02         [ 2] 3388 	ldb	#2	;,
   13E0 E7 6B         [ 5] 3389 	stb	11,s	;, D.3501
   13E2 16 FB A9      [ 5] 3390 	lbra	L109	;
   13E5                    3391 L217:
   13E5 C6 64         [ 2] 3392 	ldb	#100	;,
   13E7 BD 5E 21      [ 8] 3393 	jsr	_RandMax
   13EA C1 13         [ 2] 3394 	cmpb	#19	;cmpqi:	; D.3531,
   13EC 10 23 FB 70   [ 6] 3395 	lbls	L209	;
   13F0 16 FA 08      [ 5] 3396 	lbra	L112	;
   13F3                    3397 L201:
                           3398 ;----- asm -----
                           3399 ; 1355 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3400 	; #ENR#[998]printmessage();
                           3401 ;--- end asm ---
   13F3 8E 0D 3E      [ 3] 3402 	ldx	#LC120	;,
   13F6 BD 5A 71      [ 8] 3403 	jsr	_printMessage
                           3404 ;----- asm -----
                           3405 ; 1357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3406 	; #ENR#[999]mb = 2;
                           3407 ;--- end asm ---
   13F9 C6 02         [ 2] 3408 	ldb	#2	;,
   13FB F7 C9 68      [ 5] 3409 	stb	_mb	;, mb
                           3410 ;----- asm -----
                           3411 ; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3412 	; #ENR#[1000]db = 2;
                           3413 ;--- end asm ---
   13FE F7 C9 65      [ 5] 3414 	stb	_db	;, db
   1401 16 FD F6      [ 5] 3415 	lbra	L202	;
   1404                    3416 L184:
                           3417 ;----- asm -----
                           3418 ; 1142 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3419 	; #ENR#[847]ltmp = (signed long int) randmax(8);
                           3420 ;--- end asm ---
   1404 C6 08         [ 2] 3421 	ldb	#8	;,
   1406 BD 5E 21      [ 8] 3422 	jsr	_RandMax
   1409 4F            [ 2] 3423 	clra		;zero_extendqihi: R:b -> R:d	; D.3608, D.3608
   140A FD C9 02      [ 6] 3424 	std	_ltmp	; D.3608, ltmp
                           3425 ;----- asm -----
                           3426 ; 1144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3427 	; #ENR#[848]ltmp += (signed long int) randmax(lv*2) + inventory[sword] + 1;
                           3428 ;--- end asm ---
   140D F6 C9 2F      [ 5] 3429 	ldb	_lv	; tmp218, lv
   1410 58            [ 2] 3430 	aslb	; tmp218
   1411 BD 5E 21      [ 8] 3431 	jsr	_RandMax
   1414 E7 E8 11      [ 5] 3432 	stb	17,s	;, D.3611
   1417 FE C9 02      [ 6] 3433 	ldu	_ltmp	;, ltmp
   141A 30 41         [ 5] 3434 	leax	1,u	; tmp219,,
   141C F6 C9 49      [ 5] 3435 	ldb	_inventory	;, inventory
   141F 3A            [ 3] 3436 	abx
   1420 E6 E8 11      [ 5] 3437 	ldb	17,s	;, D.3611
   1423 4F            [ 2] 3438 	clra		;zero_extendqihi: R:b -> R:d	;,
   1424 ED E4         [ 5] 3439 	std	,s	;,
   1426 30 8B         [ 8] 3440 	leax	d,x	; ltmp.55,, tmp222
   1428 BF C9 02      [ 6] 3441 	stx	_ltmp	; ltmp.55, ltmp
                           3442 ;----- asm -----
                           3443 ; 1146 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3444 	; #ENR#[849]if (sf[strength]>0) ltmp = ltmp +5;
                           3445 ;--- end asm ---
   142B 7D C9 53      [ 7] 3446 	tst	_sf	; sf
   142E 27 05         [ 3] 3447 	beq	L186	;
   1430 30 05         [ 5] 3448 	leax	5,x	;,, ltmp.55
   1432 BF C9 02      [ 6] 3449 	stx	_ltmp	;, ltmp
   1435                    3450 L186:
                           3451 ;----- asm -----
                           3452 ; 1149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3453 	; #ENR#[851]_fi_s(, (unsigned int) ltmp);
                           3454 ;--- end asm ---
   1435 F6 C9 03      [ 5] 3455 	ldb	_ltmp+1	;, ltmp
   1438 8E 0C 9A      [ 3] 3456 	ldx	#LC112	;,
   143B BD 5B BD      [ 8] 3457 	jsr	__fi_s
                           3458 ;----- asm -----
                           3459 ; 1151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3460 	; #ENR#[852]printmessage(stringbuffer40);
                           3461 ;--- end asm ---
   143E 8E C8 BF      [ 3] 3462 	ldx	#_stringBuffer40	;,
   1441 BD 5A 71      [ 8] 3463 	jsr	_printMessage
                           3464 ;----- asm -----
                           3465 ; 1156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3466 	; #ENR#[856]mh = mh - (unsigned int)ltmp;
                           3467 ;--- end asm ---
   1444 F6 C9 03      [ 5] 3468 	ldb	_ltmp+1	;, ltmp
   1447 4F            [ 2] 3469 	clra		;zero_extendqihi: R:b -> R:d	;,
   1448 1F 03         [ 6] 3470 	tfr	d,u	;, ltmp
   144A BE C9 63      [ 6] 3471 	ldx	_mh	; mh, mh
   144D 1F 10         [ 6] 3472 	tfr	x,d	; mh,
   144F 34 40         [ 6] 3473 	pshs	u	;subhi: R:d -= R:u	; ltmp,
   1451 A3 E1         [ 9] 3474 	subd	,s++	;
   1453 FD C9 63      [ 6] 3475 	std	_mh	; mh.57, mh
                           3476 ;----- asm -----
                           3477 ; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3478 	; #ENR#[857]if (mh <0)
                           3479 ;--- end asm ---
   1456 10 83 00 00   [ 5] 3480 	cmpd	#0	; mh.57
   145A 10 2C FC FB   [ 6] 3481 	lbge	L185	;
                           3482 ;----- asm -----
                           3483 ; 1161 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3484 	; #ENR#[859]label3220:
                           3485 ;--- end asm ---
   145E                    3486 L180:
                           3487 ;----- asm -----
                           3488 ; 1166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3489 	; #ENR#[863]printmessage();
                           3490 ;--- end asm ---
   145E 8E 0C B1      [ 3] 3491 	ldx	#LC113	;,
   1461 BD 5A 71      [ 8] 3492 	jsr	_printMessage
                           3493 ;----- asm -----
                           3494 ; 1168 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3495 	; #ENR#[864]label3223:
                           3496 ;--- end asm ---
   1464                    3497 L181:
                           3498 ;----- asm -----
                           3499 ; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3500 	; #ENR#[868]pause(small_pause);
                           3501 ;--- end asm ---
   1464 C6 4B         [ 2] 3502 	ldb	#75	;,
   1466 BD 3D 31      [ 8] 3503 	jsr	_pause
                           3504 ;----- asm -----
                           3505 ; 1175 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3506 	; #ENR#[869]clearmessage();
                           3507 ;--- end asm ---
   1469 7F C9 C2      [ 7] 3508 	clr	_msgLine	; msgLine
                           3509 ;----- asm -----
                           3510 ; 1177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3511 	; #ENR#[870]ltmp = ml*(unsigned int)(m+1)*10;
                           3512 ;--- end asm ---
   146C F6 C9 6A      [ 5] 3513 	ldb	_ml	;, ml
   146F 86 0A         [ 2] 3514 	lda	#10	;umulqihi3	;
   1471 3D            [11] 3515 	mul
   1472 ED 67         [ 6] 3516 	std	7,s	;,
   1474 F6 C9 62      [ 5] 3517 	ldb	_m	;, m
   1477 5C            [ 2] 3518 	incb	;
   1478 E7 E4         [ 4] 3519 	stb	,s	;,
   147A E6 68         [ 5] 3520 	ldb	8,s	;movlsbqihi: msb:7,s -> R:b	;,
   147C A6 E4         [ 4] 3521 	lda	,s	;umulqihi3	;
   147E 3D            [11] 3522 	mul
   147F ED E4         [ 5] 3523 	std	,s	;,
   1481 4F            [ 2] 3524 	clra		;zero_extendqihi: R:b -> R:d	;,
   1482 1F 03         [ 6] 3525 	tfr	d,u	;, ltmp.58
   1484 FD C9 02      [ 6] 3526 	std	_ltmp	; ltmp.58, ltmp
                           3527 ;----- asm -----
                           3528 ; 1179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3529 	; #ENR#[871]ex = ex + (unsigned long int) ltmp;
                           3530 ;--- end asm ---
   1487 ED 65         [ 6] 3531 	std	5,s	; tmp1,
   1489 CC 00 00      [ 3] 3532 	ldd	#0	;,
   148C ED 63         [ 6] 3533 	std	3,s	;,
   148E FC C9 32      [ 6] 3534 	ldd	_ex+2	;, ex
   1491 E3 65         [ 7] 3535 	addd	5,s	;,
   1493 FD C9 32      [ 6] 3536 	std	_ex+2	;, ex
   1496 FC C9 30      [ 6] 3537 	ldd	_ex	;, ex
   1499 E9 64         [ 5] 3538 	adcb	4,s	;
   149B A9 63         [ 5] 3539 	adca	3,s	;
   149D FD C9 30      [ 6] 3540 	std	_ex	;, ex
                           3541 ;----- asm -----
                           3542 ; 1184 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3543 	; #ENR#[875]_fl_s(, (unsigned long int) ltmp);
                           3544 ;--- end asm ---
   14A0 34 40         [ 6] 3545 	pshs	u	; ltmp.58
   14A2 8E 0C BC      [ 3] 3546 	ldx	#LC114	;,
   14A5 BD 5E 66      [ 8] 3547 	jsr	__fl_s
                           3548 ;----- asm -----
                           3549 ; 1186 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3550 	; #ENR#[876]printmessage(stringbuffer40);
                           3551 ;--- end asm ---
   14A8 8E C8 BF      [ 3] 3552 	ldx	#_stringBuffer40	;,
   14AB BD 5A 71      [ 8] 3553 	jsr	_printMessage
                           3554 ;----- asm -----
                           3555 ; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3556 	; #ENR#[877]checkxp();
                           3557 ;--- end asm ---
   14AE BD 52 EF      [ 8] 3558 	jsr	_checkXP
                           3559 ;----- asm -----
                           3560 ; 1190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3561 	; #ENR#[878]pause(small_pause);
                           3562 ;--- end asm ---
   14B1 C6 4B         [ 2] 3563 	ldb	#75	;,
   14B3 BD 3D 31      [ 8] 3564 	jsr	_pause
                           3565 ;----- asm -----
                           3566 ; 1195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3567 	; #ENR#[882]tmp = (signed int) randmax(100);
                           3568 ;--- end asm ---
   14B6 C6 64         [ 2] 3569 	ldb	#100	;,
   14B8 BD 5E 21      [ 8] 3570 	jsr	_RandMax
   14BB E7 64         [ 5] 3571 	stb	4,s	;, D.3630
   14BD F7 C8 FE      [ 5] 3572 	stb	_tmp	;, tmp
                           3573 ;----- asm -----
                           3574 ; 1197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3575 	; #ENR#[883]if (tmp>50)
                           3576 ;--- end asm ---
   14C0 32 62         [ 5] 3577 	leas	2,s	;,,
   14C2 C6 04         [ 2] 3578 	ldb	#4	;,
   14C4 E7 6B         [ 5] 3579 	stb	11,s	;, D.3501
   14C6 E6 62         [ 5] 3580 	ldb	2,s	;, D.3630
   14C8 C1 32         [ 2] 3581 	cmpb	#50	;cmpqi:	;,
   14CA 10 2E FA C0   [ 6] 3582 	lbgt	L109	;
                           3583 ;----- asm -----
                           3584 ; 1200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3585 	; #ENR#[885]return  return_treasure;
                           3586 ;--- end asm ---
   14CE C6 03         [ 2] 3587 	ldb	#3	;,
   14D0 E7 6B         [ 5] 3588 	stb	11,s	;, D.3501
   14D2 16 FA B9      [ 5] 3589 	lbra	L109	;
   14D5                    3590 L219:
                           3591 ;----- asm -----
                           3592 ; 647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3593 	; #ENR#[504]if ( randmax(100) > 4*s[chr] )
                           3594 ;--- end asm ---
   14D5 C6 64         [ 2] 3595 	ldb	#100	;,
   14D7 BD 5E 21      [ 8] 3596 	jsr	_RandMax
   14DA E7 6E         [ 5] 3597 	stb	14,s	;, D.3535
   14DC F6 C9 48      [ 5] 3598 	ldb	_s+5	; tmp111, s
   14DF 58            [ 2] 3599 	aslb	; tmp111
   14E0 58            [ 2] 3600 	aslb	; tmp111
   14E1 E1 6E         [ 5] 3601 	cmpb	14,s	;cmpqi:(R)	; tmp111, D.3535
   14E3 10 24 F9 64   [ 6] 3602 	lbhs	L115	;
                           3603 ;----- asm -----
                           3604 ; 653 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3605 	; #ENR#[509]tmp = 1;
                           3606 ;--- end asm ---
   14E7 C6 01         [ 2] 3607 	ldb	#1	;,
   14E9 F7 C8 FE      [ 5] 3608 	stb	_tmp	;, tmp
   14EC 16 F9 5C      [ 5] 3609 	lbra	L115	;
   14EF                    3610 L159:
                           3611 ;----- asm -----
                           3612 ; 938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3613 	; #ENR#[704]doevade:
                           3614 ;--- end asm ---
   14EF                    3615 L161:
                           3616 ;----- asm -----
                           3617 ; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3618 	; #ENR#[705]tmp = (signed int)randmax(4);
                           3619 ;--- end asm ---
   14EF C6 04         [ 2] 3620 	ldb	#4	;,
   14F1 BD 5E 21      [ 8] 3621 	jsr	_RandMax
   14F4 F7 C8 FE      [ 5] 3622 	stb	_tmp	; D.3573, tmp
                           3623 ;----- asm -----
                           3624 ; 944 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3625 	; #ENR#[708]switch (tmp)
                           3626 ;--- end asm ---
   14F7 C1 01         [ 2] 3627 	cmpb	#1	;cmpqi:	; D.3573,
   14F9 10 27 01 74   [ 6] 3628 	lbeq	L164	;
   14FD 10 2F 00 9D   [ 6] 3629 	lble	L247	;
   1501 C1 02         [ 2] 3630 	cmpb	#2	;cmpqi:	; D.3573,
   1503 10 27 01 4C   [ 6] 3631 	lbeq	L165	;
   1507 8E C8 80      [ 3] 3632 	ldx	#_screen	; prephitmp.338,
   150A C1 03         [ 2] 3633 	cmpb	#3	;cmpqi:	; D.3573,
   150C 10 27 01 19   [ 6] 3634 	lbeq	L168	;
   1510                    3635 L162:
   1510 8E C8 80      [ 3] 3636 	ldx	#_screen	; prephitmp.338,
   1513                    3637 L175:
                           3638 ;----- asm -----
                           3639 ; 1032 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3640 	; #ENR#[769]if (!can_go_north)
                           3641 ;--- end asm ---
   1513 E6 0B         [ 5] 3642 	ldb	11,x	;,
   1515 E7 E8 16      [ 5] 3643 	stb	22,s	;, temp.397
   1518 C6 03         [ 2] 3644 	ldb	#3	; tmp206,
   151A E4 E8 16      [ 5] 3645 	andb	22,s	; tmp206, temp.397
   151D C1 03         [ 2] 3646 	cmpb	#3	;cmpqi:	; tmp206,
   151F 10 27 01 6D   [ 6] 3647 	lbeq	L176	;
                           3648 ;----- asm -----
                           3649 ; 1035 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3650 	; #ENR#[771]fillmap=go_north;
                           3651 ;--- end asm ---
   1523 C6 01         [ 2] 3652 	ldb	#1	;,
   1525 F7 C8 FC      [ 5] 3653 	stb	_fillMap	;, fillMap
                           3654 ;----- asm -----
                           3655 ; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3656 	; #ENR#[772]printmessage();
                           3657 ;--- end asm ---
   1528 8E 0C 70      [ 3] 3658 	ldx	#LC106	;,
   152B BD 5A 71      [ 8] 3659 	jsr	_printMessage
                           3660 ;----- asm -----
                           3661 ; 1039 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3662 	; #ENR#[773]cy -=1;
                           3663 ;--- end asm ---
   152E 7A C9 39      [ 7] 3664 	dec	_cy	; cy
                           3665 ;----- asm -----
                           3666 ; 1041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3667 	; #ENR#[774]goto evadeout;
                           3668 ;--- end asm ---
   1531                    3669 L172:
                           3670 ;----- asm -----
                           3671 ; 966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3672 	; #ENR#[723]monsteronstack((signed int)m, ml, mh);
                           3673 ;--- end asm ---
   1531 F6 C9 6A      [ 5] 3674 	ldb	_ml	;, ml
   1534 E7 E2         [ 6] 3675 	stb	,-s	;,
   1536 BE C9 63      [ 6] 3676 	ldx	_mh	;, mh
   1539 F6 C9 62      [ 5] 3677 	ldb	_m	;, m
   153C BD 3D 73      [ 8] 3678 	jsr	_monsterOnStack
                           3679 ;----- asm -----
                           3680 ; 969 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3681 	; #ENR#[725]return return_new_turn;
                           3682 ;--- end asm ---
   153F C6 01         [ 2] 3683 	ldb	#1	;,
   1541 E7 6C         [ 5] 3684 	stb	12,s	;, D.3501
   1543 32 61         [ 5] 3685 	leas	1,s	;,,
   1545 16 FA 46      [ 5] 3686 	lbra	L109	;
   1548                    3687 L220:
   1548 C6 14         [ 2] 3688 	ldb	#20	;,
   154A BD 5E 21      [ 8] 3689 	jsr	_RandMax
   154D F1 C9 48      [ 5] 3690 	cmpb	_s+5	;cmpqi:	; D.3540, s
   1550 10 23 F8 EE   [ 6] 3691 	lbls	L118	;
                           3692 ;----- asm -----
                           3693 ; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3694 	; #ENR#[515]tmp = 2;
                           3695 ;--- end asm ---
   1554 C6 02         [ 2] 3696 	ldb	#2	;,
   1556 F7 C8 FE      [ 5] 3697 	stb	_tmp	;, tmp
   1559 16 F8 EF      [ 5] 3698 	lbra	L115	;
   155C                    3699 L221:
   155C C6 1E         [ 2] 3700 	ldb	#30	;,
   155E BD 5E 21      [ 8] 3701 	jsr	_RandMax
   1561 F1 C9 48      [ 5] 3702 	cmpb	_s+5	;cmpqi:	; D.3541, s
   1564 10 24 F8 E3   [ 6] 3703 	lbhs	L115	;
                           3704 ;----- asm -----
                           3705 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3706 	; #ENR#[521]tmp = 3;
                           3707 ;--- end asm ---
   1568 C6 03         [ 2] 3708 	ldb	#3	;,
   156A F7 C8 FE      [ 5] 3709 	stb	_tmp	;, tmp
   156D 16 F8 DB      [ 5] 3710 	lbra	L115	;
   1570                    3711 L116:
                           3712 ;----- asm -----
                           3713 ; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3714 	; #ENR#[493]tmp = 3;
                           3715 ;--- end asm ---
   1570 C6 03         [ 2] 3716 	ldb	#3	;,
   1572 F7 C8 FE      [ 5] 3717 	stb	_tmp	;, tmp
   1575 16 F8 D3      [ 5] 3718 	lbra	L115	;
   1578                    3719 L246:
                           3720 ;----- asm -----
                           3721 ; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3722 	; #ENR#[583]_fs(,items[tmp]);
                           3723 ;--- end asm ---
   1578 1D            [ 2] 3724 	sex		;extendqihi2: R:b -> R:d	; tmp.366, tmp.366
   1579 58            [ 2] 3725 	aslb	;
   157A 49            [ 2] 3726 	rola	;
   157B 1F 01         [ 6] 3727 	tfr	d,x	; tmp.366, tmp140
   157D AE 89 01 F9   [ 9] 3728 	ldx	_items,x	;, items
   1581 AF E3         [ 8] 3729 	stx	,--s	;,
   1583 8E 0B EC      [ 3] 3730 	ldx	#LC98	;,
   1586 BD 5B 50      [ 8] 3731 	jsr	__fs
                           3732 ;----- asm -----
                           3733 ; 759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3734 	; #ENR#[584]printmessage(stringbuffer40);
                           3735 ;--- end asm ---
   1589 8E C8 BF      [ 3] 3736 	ldx	#_stringBuffer40	;,
   158C BD 5A 71      [ 8] 3737 	jsr	_printMessage
                           3738 ;----- asm -----
                           3739 ; 761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3740 	; #ENR#[585]inventory[tmp]=0;
                           3741 ;--- end asm ---
   158F F6 C8 FE      [ 5] 3742 	ldb	_tmp	;, tmp
   1592 1D            [ 2] 3743 	sex		;extendqihi2: R:b -> R:d	;,
   1593 1F 01         [ 6] 3744 	tfr	d,x	;, tmp
   1595 6F 89 C9 49   [10] 3745 	clr	_inventory,x	; inventory
   1599 32 62         [ 5] 3746 	leas	2,s	;,,
   159B 16 FE 28      [ 5] 3747 	lbra	L136	;
   159E                    3748 L247:
   159E 5D            [ 2] 3749 	tstb	; D.3573
   159F 10 26 FF 6D   [ 6] 3750 	lbne	L162	;
                           3751 ;----- asm -----
                           3752 ; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3753 	; #ENR#[714]if (!can_go_north)
                           3754 ;--- end asm ---
   15A3 8E C8 80      [ 3] 3755 	ldx	#_screen	; prephitmp.338,
   15A6 F6 C8 8B      [ 5] 3756 	ldb	_screen+11	; tmp199,
   15A9 C4 03         [ 2] 3757 	andb	#3	; tmp199,
   15AB C1 03         [ 2] 3758 	cmpb	#3	;cmpqi:	; tmp199,
   15AD 10 27 01 2A   [ 6] 3759 	lbeq	L171	;
                           3760 ;----- asm -----
                           3761 ; 955 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3762 	; #ENR#[716]fillmap=go_north;
                           3763 ;--- end asm ---
   15B1 C6 01         [ 2] 3764 	ldb	#1	;,
   15B3 F7 C8 FC      [ 5] 3765 	stb	_fillMap	;, fillMap
                           3766 ;----- asm -----
                           3767 ; 957 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3768 	; #ENR#[717]printmessage();
                           3769 ;--- end asm ---
   15B6 8E 0C 70      [ 3] 3770 	ldx	#LC106	;,
   15B9 BD 5A 71      [ 8] 3771 	jsr	_printMessage
                           3772 ;----- asm -----
                           3773 ; 959 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3774 	; #ENR#[718]cy -=1;
                           3775 ;--- end asm ---
   15BC 7A C9 39      [ 7] 3776 	dec	_cy	; cy
                           3777 ;----- asm -----
                           3778 ; 961 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3779 	; #ENR#[719]evadeout:
                           3780 ;--- end asm ---
   15BF 16 FF 6F      [ 5] 3781 	lbra	L172	;
   15C2                    3782 L204:
                           3783 ;----- asm -----
                           3784 ; 1390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3785 	; #ENR#[1023]printmessage();
                           3786 ;--- end asm ---
   15C2 8E 0D 52      [ 3] 3787 	ldx	#LC121	;,
   15C5 BD 5A 71      [ 8] 3788 	jsr	_printMessage
                           3789 ;----- asm -----
                           3790 ; 1393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3791 	; #ENR#[1025]specialaction = special_dragonbreath;
                           3792 ;--- end asm ---
   15C8 C6 01         [ 2] 3793 	ldb	#1	;,
   15CA F7 C8 A5      [ 5] 3794 	stb	_specialAction	;, specialAction
                           3795 ;----- asm -----
                           3796 ; 1396 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3797 	; #ENR#[1027]pause(small_pause);
                           3798 ;--- end asm ---
   15CD C6 4B         [ 2] 3799 	ldb	#75	;,
   15CF BD 3D 31      [ 8] 3800 	jsr	_pause
                           3801 ;----- asm -----
                           3802 ; 1398 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3803 	; #ENR#[1028]specialaction = 0;
                           3804 ;--- end asm ---
   15D2 7F C8 A5      [ 7] 3805 	clr	_specialAction	; specialAction
                           3806 ;----- asm -----
                           3807 ; 1401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3808 	; #ENR#[1030]clearmessage();
                           3809 ;--- end asm ---
   15D5 7F C9 C2      [ 7] 3810 	clr	_msgLine	; msgLine
                           3811 ;----- asm -----
                           3812 ; 1403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3813 	; #ENR#[1031]ltmp = randmax(20)*ml+1;
                           3814 ;--- end asm ---
   15D8 C6 14         [ 2] 3815 	ldb	#20	;,
   15DA BD 5E 21      [ 8] 3816 	jsr	_RandMax
   15DD B6 C9 6A      [ 5] 3817 	lda	_ml	;umulqihi3	; ml
   15E0 3D            [11] 3818 	mul
                           3819 		;movlsbqihi: D->B
   15E1 5C            [ 2] 3820 	incb	; tmp252
   15E2 4F            [ 2] 3821 	clra		;zero_extendqihi: R:b -> R:d	; tmp252, tmp253
   15E3 FD C9 02      [ 6] 3822 	std	_ltmp	; tmp253, ltmp
                           3823 ;----- asm -----
                           3824 ; 1412 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3825 	; #ENR#[1039]if (randmax(20) <s[con])
                           3826 ;--- end asm ---
   15E6 C6 14         [ 2] 3827 	ldb	#20	;,
   15E8 BD 5E 21      [ 8] 3828 	jsr	_RandMax
   15EB F1 C9 46      [ 5] 3829 	cmpb	_s+3	;cmpqi:	; D.3666, s
   15EE 10 25 00 D2   [ 6] 3830 	lblo	L248	;
   15F2                    3831 L205:
                           3832 ;----- asm -----
                           3833 ; 1420 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3834 	; #ENR#[1044]_fl_s(, (unsigned long int) ltmp);
                           3835 ;--- end asm ---
   15F2 BE C9 02      [ 6] 3836 	ldx	_ltmp	;, ltmp
   15F5 AF E3         [ 8] 3837 	stx	,--s	;,
   15F7 8E 0D 84      [ 3] 3838 	ldx	#LC123	;,
   15FA BD 5E 66      [ 8] 3839 	jsr	__fl_s
                           3840 ;----- asm -----
                           3841 ; 1422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3842 	; #ENR#[1045]printmessage(stringbuffer40);
                           3843 ;--- end asm ---
   15FD 8E C8 BF      [ 3] 3844 	ldx	#_stringBuffer40	;,
   1600 BD 5A 71      [ 8] 3845 	jsr	_printMessage
                           3846 ;----- asm -----
                           3847 ; 1424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3848 	; #ENR#[1046]goto label3320;
                           3849 ;--- end asm ---
   1603 32 62         [ 5] 3850 	leas	2,s	;,,
   1605 16 F8 EB      [ 5] 3851 	lbra	L192	;
   1608                    3852 L236:
                           3853 ;----- asm -----
                           3854 ; 506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3855 	; #ENR#[395]clearmessage();
                           3856 ;--- end asm ---
   1608 7F C9 C2      [ 7] 3857 	clr	_msgLine	; msgLine
                           3858 ;----- asm -----
                           3859 ; 508 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3860 	; #ENR#[396]printmessage();
                           3861 ;--- end asm ---
   160B 8E 0B 3D      [ 3] 3862 	ldx	#LC90	;,
   160E BD 5A 71      [ 8] 3863 	jsr	_printMessage
                           3864 ;----- asm -----
                           3865 ; 510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3866 	; #ENR#[397]printmessage();
                           3867 ;--- end asm ---
   1611 8E 0B 5A      [ 3] 3868 	ldx	#LC91	;,
   1614 BD 5A 71      [ 8] 3869 	jsr	_printMessage
                           3870 ;----- asm -----
                           3871 ; 513 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3872 	; #ENR#[399]if (testforbutton(1) != 4)
                           3873 ;--- end asm ---
   1617 C6 01         [ 2] 3874 	ldb	#1	;,
   1619 BD 04 AF      [ 8] 3875 	jsr	_testForButton
   161C C1 04         [ 2] 3876 	cmpb	#4	;cmpqi:	; D.3512,
   161E 10 27 F9 5C   [ 6] 3877 	lbeq	L108	;
                           3878 ;----- asm -----
                           3879 ; 517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3880 	; #ENR#[402]return return_treasure;
                           3881 ;--- end asm ---
   1622 C6 03         [ 2] 3882 	ldb	#3	;,
   1624 E7 6B         [ 5] 3883 	stb	11,s	;, D.3501
   1626 16 F9 65      [ 5] 3884 	lbra	L109	;
   1629                    3885 L174:
                           3886 ;----- asm -----
                           3887 ; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3888 	; #ENR#[752]case 3:
                           3889 ;--- end asm ---
   1629                    3890 L168:
                           3891 ;----- asm -----
                           3892 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3893 	; #ENR#[756]if (!can_go_east)
                           3894 ;--- end asm ---
   1629 E6 0D         [ 5] 3895 	ldb	13,x	; tmp205,
   162B C4 0C         [ 2] 3896 	andb	#12	; tmp205,
   162D C1 0C         [ 2] 3897 	cmpb	#12	;cmpqi:	; tmp205,
   162F 10 27 FE E0   [ 6] 3898 	lbeq	L175	;
                           3899 ;----- asm -----
                           3900 ; 1017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3901 	; #ENR#[758]fillmap=go_east;
                           3902 ;--- end asm ---
   1633 C6 03         [ 2] 3903 	ldb	#3	;,
   1635 F7 C8 FC      [ 5] 3904 	stb	_fillMap	;, fillMap
                           3905 ;----- asm -----
                           3906 ; 1019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3907 	; #ENR#[759]printmessage();
                           3908 ;--- end asm ---
   1638 8E 0C 81      [ 3] 3909 	ldx	#LC109	;,
   163B BD 5A 71      [ 8] 3910 	jsr	_printMessage
                           3911 ;----- asm -----
                           3912 ; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3913 	; #ENR#[760]cx +=1;
                           3914 ;--- end asm ---
   163E 7C C9 38      [ 7] 3915 	inc	_cx	; cx
                           3916 ;----- asm -----
                           3917 ; 1023 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3918 	; #ENR#[761]goto evadeout;
                           3919 ;--- end asm ---
   1641 16 FE ED      [ 5] 3920 	lbra	L172	;
   1644                    3921 L244:
   1644 C6 09         [ 2] 3922 	ldb	#9	; i,
   1646                    3923 L122:
                           3924 ;----- asm -----
                           3925 ; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3926 	; #ENR#[555]tmp = i;
                           3927 ;--- end asm ---
   1646 F7 C8 FE      [ 5] 3928 	stb	_tmp	; i, tmp
                           3929 ;----- asm -----
                           3930 ; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3931 	; #ENR#[556]break;
                           3932 ;--- end asm ---
   1649 16 FD 26      [ 5] 3933 	lbra	L131	;
   164C                    3934 L241:
                           3935 ;----- asm -----
                           3936 ; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3937 	; #ENR#[953]return return_player_dead;
                           3938 ;--- end asm ---
   164C C6 02         [ 2] 3939 	ldb	#2	;,
   164E E7 6B         [ 5] 3940 	stb	11,s	;, D.3501
   1650 16 F9 3B      [ 5] 3941 	lbra	L109	;
   1653                    3942 L165:
   1653 8E C8 80      [ 3] 3943 	ldx	#_screen	; prephitmp.338,
   1656                    3944 L169:
                           3945 ;----- asm -----
                           3946 ; 996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3947 	; #ENR#[744]if (!can_go_west)
                           3948 ;--- end asm ---
   1656 E6 0B         [ 5] 3949 	ldb	11,x	; tmp203,
   1658 C4 0C         [ 2] 3950 	andb	#12	; tmp203,
   165A C1 0C         [ 2] 3951 	cmpb	#12	;cmpqi:	; tmp203,
   165C 10 27 FF C9   [ 6] 3952 	lbeq	L174	;
                           3953 ;----- asm -----
                           3954 ; 999 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3955 	; #ENR#[746]fillmap=go_west;
                           3956 ;--- end asm ---
   1660 C6 04         [ 2] 3957 	ldb	#4	;,
   1662 F7 C8 FC      [ 5] 3958 	stb	_fillMap	;, fillMap
                           3959 ;----- asm -----
                           3960 ; 1001 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3961 	; #ENR#[747]printmessage();
                           3962 ;--- end asm ---
   1665 8E 0C 7C      [ 3] 3963 	ldx	#LC108	;,
   1668 BD 5A 71      [ 8] 3964 	jsr	_printMessage
                           3965 ;----- asm -----
                           3966 ; 1003 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3967 	; #ENR#[748]cx -=1;
                           3968 ;--- end asm ---
   166B 7A C9 38      [ 7] 3969 	dec	_cx	; cx
                           3970 ;----- asm -----
                           3971 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3972 	; #ENR#[749]goto evadeout;
                           3973 ;--- end asm ---
   166E 16 FE C0      [ 5] 3974 	lbra	L172	;
   1671                    3975 L164:
   1671 8E C8 80      [ 3] 3976 	ldx	#_screen	; prephitmp.338,
   1674                    3977 L170:
                           3978 ;----- asm -----
                           3979 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3980 	; #ENR#[732]if (!can_go_south)
                           3981 ;--- end asm ---
   1674 E6 88 13      [ 5] 3982 	ldb	19,x	; tmp201,
   1677 C4 03         [ 2] 3983 	andb	#3	; tmp201,
   1679 C1 03         [ 2] 3984 	cmpb	#3	;cmpqi:	; tmp201,
   167B 10 27 00 59   [ 6] 3985 	lbeq	L173	;
                           3986 ;----- asm -----
                           3987 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3988 	; #ENR#[734]fillmap=go_south;
                           3989 ;--- end asm ---
   167F C6 02         [ 2] 3990 	ldb	#2	;,
   1681 F7 C8 FC      [ 5] 3991 	stb	_fillMap	;, fillMap
                           3992 ;----- asm -----
                           3993 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3994 	; #ENR#[735]printmessage();
                           3995 ;--- end asm ---
   1684 8E 0C 76      [ 3] 3996 	ldx	#LC107	;,
   1687 BD 5A 71      [ 8] 3997 	jsr	_printMessage
                           3998 ;----- asm -----
                           3999 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4000 	; #ENR#[736]cy +=1;
                           4001 ;--- end asm ---
   168A 7C C9 39      [ 7] 4002 	inc	_cy	; cy
                           4003 ;----- asm -----
                           4004 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4005 	; #ENR#[737]goto evadeout;
                           4006 ;--- end asm ---
   168D 16 FE A1      [ 5] 4007 	lbra	L172	;
   1690                    4008 L176:
                           4009 ;----- asm -----
                           4010 ; 1046 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4011 	; #ENR#[778]if (!can_go_south)
                           4012 ;--- end asm ---
   1690 E6 88 13      [ 5] 4013 	ldb	19,x	; tmp208,
   1693 C4 03         [ 2] 4014 	andb	#3	; tmp208,
   1695 C1 03         [ 2] 4015 	cmpb	#3	;cmpqi:	; tmp208,
   1697 10 27 00 43   [ 6] 4016 	lbeq	L177	;
                           4017 ;----- asm -----
                           4018 ; 1049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4019 	; #ENR#[780]fillmap=go_south;
                           4020 ;--- end asm ---
   169B C6 02         [ 2] 4021 	ldb	#2	;,
   169D F7 C8 FC      [ 5] 4022 	stb	_fillMap	;, fillMap
                           4023 ;----- asm -----
                           4024 ; 1051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4025 	; #ENR#[781]printmessage();
                           4026 ;--- end asm ---
   16A0 8E 0C 76      [ 3] 4027 	ldx	#LC107	;,
   16A3 BD 5A 71      [ 8] 4028 	jsr	_printMessage
                           4029 ;----- asm -----
                           4030 ; 1053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4031 	; #ENR#[782]cy +=1;
                           4032 ;--- end asm ---
   16A6 7C C9 39      [ 7] 4033 	inc	_cy	; cy
                           4034 ;----- asm -----
                           4035 ; 1055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4036 	; #ENR#[783]goto evadeout;
                           4037 ;--- end asm ---
   16A9 16 FE 85      [ 5] 4038 	lbra	L172	;
   16AC                    4039 L245:
                           4040 ;----- asm -----
                           4041 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4042 	; #ENR#[561]printmessage();
                           4043 ;--- end asm ---
   16AC 8E 0B C8      [ 3] 4044 	ldx	#LC96	;,
   16AF BD 5A 71      [ 8] 4045 	jsr	_printMessage
                           4046 ;----- asm -----
                           4047 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4048 	; #ENR#[562]printmessage();
                           4049 ;--- end asm ---
   16B2 8E 0B E2      [ 3] 4050 	ldx	#LC97	;,
   16B5 BD 5A 71      [ 8] 4051 	jsr	_printMessage
                           4052 ;----- asm -----
                           4053 ; 729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4054 	; #ENR#[563]pause(small_pause);
                           4055 ;--- end asm ---
   16B8 C6 4B         [ 2] 4056 	ldb	#75	;,
   16BA BD 3D 31      [ 8] 4057 	jsr	_pause
                           4058 ;----- asm -----
                           4059 ; 731 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4060 	; #ENR#[564]return return_treasure;
                           4061 ;--- end asm ---
   16BD C6 03         [ 2] 4062 	ldb	#3	;,
   16BF E7 6B         [ 5] 4063 	stb	11,s	;, D.3501
   16C1 16 F8 CA      [ 5] 4064 	lbra	L109	;
   16C4                    4065 L248:
                           4066 ;----- asm -----
                           4067 ; 1415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4068 	; #ENR#[1041]ltmp = (ltmp>>1)+1;
                           4069 ;--- end asm ---
   16C4 FC C9 02      [ 6] 4070 	ldd	_ltmp	; tmp255, ltmp
   16C7 47            [ 2] 4071 	asra	;
   16C8 56            [ 2] 4072 	rorb	;
   16C9 C3 00 01      [ 4] 4073 	addd	#1; addhi3,3	; tmp255,
   16CC FD C9 02      [ 6] 4074 	std	_ltmp	; tmp255, ltmp
                           4075 ;----- asm -----
                           4076 ; 1417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4077 	; #ENR#[1042]printmessage();
                           4078 ;--- end asm ---
   16CF 8E 0D 6D      [ 3] 4079 	ldx	#LC122	;,
   16D2 BD 5A 71      [ 8] 4080 	jsr	_printMessage
   16D5 16 FF 1A      [ 5] 4081 	lbra	L205	;
   16D8                    4082 L173:
                           4083 ;----- asm -----
                           4084 ; 991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4085 	; #ENR#[740]case 2:
                           4086 ;--- end asm ---
   16D8 16 FF 7B      [ 5] 4087 	lbra	L169	;
   16DB                    4088 L171:
                           4089 ;----- asm -----
                           4090 ; 973 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4091 	; #ENR#[728]case 1:
                           4092 ;--- end asm ---
   16DB 16 FF 96      [ 5] 4093 	lbra	L170	;
   16DE                    4094 L177:
                           4095 ;----- asm -----
                           4096 ; 1060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4097 	; #ENR#[787]if (!can_go_west)
                           4098 ;--- end asm ---
   16DE C6 0C         [ 2] 4099 	ldb	#12	;,
   16E0 E4 E8 16      [ 5] 4100 	andb	22,s	;, temp.397
   16E3 C1 0C         [ 2] 4101 	cmpb	#12	;cmpqi:	;,
   16E5 27 1A         [ 3] 4102 	beq	L178	;
                           4103 ;----- asm -----
                           4104 ; 1063 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4105 	; #ENR#[789]fillmap=go_west;
                           4106 ;--- end asm ---
   16E7 C6 04         [ 2] 4107 	ldb	#4	;,
   16E9 F7 C8 FC      [ 5] 4108 	stb	_fillMap	;, fillMap
                           4109 ;----- asm -----
                           4110 ; 1065 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4111 	; #ENR#[790]printmessage();
                           4112 ;--- end asm ---
   16EC 8E 0C 7C      [ 3] 4113 	ldx	#LC108	;,
   16EF BD 5A 71      [ 8] 4114 	jsr	_printMessage
                           4115 ;----- asm -----
                           4116 ; 1067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4117 	; #ENR#[791]cx -=1;
                           4118 ;--- end asm ---
   16F2 7A C9 38      [ 7] 4119 	dec	_cx	; cx
                           4120 ;----- asm -----
                           4121 ; 1069 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4122 	; #ENR#[792]goto evadeout;
                           4123 ;--- end asm ---
   16F5 16 FE 39      [ 5] 4124 	lbra	L172	;
   16F8                    4125 L242:
   16F8 5F            [ 2] 4126 	clrb	; i
   16F9 16 FF 4A      [ 5] 4127 	lbra	L122	;
   16FC                    4128 L243:
   16FC E6 6F         [ 5] 4129 	ldb	15,s	; i, tmp.28
   16FE 16 FF 45      [ 5] 4130 	lbra	L122	;
   1701                    4131 L178:
                           4132 ;----- asm -----
                           4133 ; 1072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4134 	; #ENR#[794]goto cantevade;
                           4135 ;--- end asm ---
   1701 16 FA BA      [ 5] 4136 	lbra	L160	;
   1704                    4137 L237:
                           4138 ;----- asm -----
                           4139 ; 1088 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4140 	; #ENR#[806]return return_new_turn;
                           4141 ;--- end asm ---
   1704 C6 01         [ 2] 4142 	ldb	#1	;,
   1706 E7 6B         [ 5] 4143 	stb	11,s	;, D.3501
   1708 16 F8 83      [ 5] 4144 	lbra	L109	;
   170B                    4145 LC125:
   170B 4E 4F 00           4146 	.ascii	"NO\0"
                           4147 	.globl	_handleMovement
   170E                    4148 _handleMovement:
                           4149 ;----- asm -----
                           4150 ; 1450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4151 	; #ENR#[1065]if ((lastx == 0) && (lasty == 0))
                           4152 ;--- end asm ---
   170E F6 C9 BC      [ 5] 4153 	ldb	_lastX	; lastX.75, lastX
   1711 26 07         [ 3] 4154 	bne	L251	;
   1713 7D C9 BD      [ 7] 4155 	tst	_lastY	; lastY
   1716 10 27 00 3A   [ 6] 4156 	lbeq	L263	;
   171A                    4157 L251:
                           4158 ;----- asm -----
                           4159 ; 1460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4160 	; #ENR#[1071]if ((vec_joy_1_x == 0) && (vec_joy_1_y == 0))
                           4161 ;--- end asm ---
   171A 7D C8 1B      [ 7] 4162 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   171D 26 31         [ 3] 4163 	bne	L253	;
   171F 7D C8 1C      [ 7] 4164 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   1722 26 2C         [ 3] 4165 	bne	L253	;
                           4166 ;----- asm -----
                           4167 ; 1463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4168 	; #ENR#[1073]clearmessage();
                           4169 ;--- end asm ---
   1724 7F C9 C2      [ 7] 4170 	clr	_msgLine	; msgLine
                           4171 ;----- asm -----
                           4172 ; 1467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4173 	; #ENR#[1076]if (lastx>0)
                           4174 ;--- end asm ---
   1727 5D            [ 2] 4175 	tstb	; lastX.75
   1728 10 2F 00 36   [ 6] 4176 	lble	L254	;
                           4177 ;----- asm -----
                           4178 ; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4179 	; #ENR#[1078]if ((can_go_east) && (!sf[astral_walk]))
                           4180 ;--- end asm ---
   172C F6 C8 8D      [ 5] 4181 	ldb	_screen+13	; tmp33,
   172F C4 0C         [ 2] 4182 	andb	#12	; tmp33,
   1731 C1 0C         [ 2] 4183 	cmpb	#12	;cmpqi:	; tmp33,
   1733 26 07         [ 3] 4184 	bne	L255	;
   1735 7D C9 5A      [ 7] 4185 	tst	_sf+7	; sf
   1738 10 27 00 51   [ 6] 4186 	lbeq	L264	;
   173C                    4187 L255:
                           4188 ;----- asm -----
                           4189 ; 1478 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4190 	; #ENR#[1084]cx +=1;fillmap=go_east;printmessage();
                           4191 ;--- end asm ---
   173C 7C C9 38      [ 7] 4192 	inc	_cx	; cx
   173F C6 03         [ 2] 4193 	ldb	#3	;,
   1741 F7 C8 FC      [ 5] 4194 	stb	_fillMap	;, fillMap
   1744 8E 0C 81      [ 3] 4195 	ldx	#LC109	;,
   1747 BD 5A 71      [ 8] 4196 	jsr	_printMessage
   174A                    4197 L256:
                           4198 ;----- asm -----
                           4199 ; 1524 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4200 	; #ENR#[1120]lastx = 0;
                           4201 ;--- end asm ---
   174A 7F C9 BC      [ 7] 4202 	clr	_lastX	; lastX
                           4203 ;----- asm -----
                           4204 ; 1526 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4205 	; #ENR#[1121]lasty = 0;
                           4206 ;--- end asm ---
   174D 7F C9 BD      [ 7] 4207 	clr	_lastY	; lastY
   1750                    4208 L253:
                           4209 ;----- asm -----
                           4210 ; 1532 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4211 	; #ENR#[1126]return fillmap;
                           4212 ;--- end asm ---
   1750 F6 C8 FC      [ 5] 4213 	ldb	_fillMap	; D.3676, fillMap
   1753 39            [ 5] 4214 	rts
   1754                    4215 L263:
                           4216 ;----- asm -----
                           4217 ; 1453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4218 	; #ENR#[1067]lastx = vec_joy_1_x;
                           4219 ;--- end asm ---
   1754 F6 C8 1B      [ 5] 4220 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   1757 F7 C9 BC      [ 5] 4221 	stb	_lastX	;, lastX
                           4222 ;----- asm -----
                           4223 ; 1455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4224 	; #ENR#[1068]lasty = vec_joy_1_y;
                           4225 ;--- end asm ---
   175A F6 C8 1C      [ 5] 4226 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   175D F7 C9 BD      [ 5] 4227 	stb	_lastY	;, lastY
                           4228 ;----- asm -----
                           4229 ; 1457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4230 	; #ENR#[1069]return 0;
                           4231 ;--- end asm ---
   1760 5F            [ 2] 4232 	clrb	; D.3676
   1761 39            [ 5] 4233 	rts
   1762                    4234 L254:
   1762 5D            [ 2] 4235 	tstb	; lastX.75
   1763 26 31         [ 3] 4236 	bne	L265	;
   1765 F6 C9 BD      [ 5] 4237 	ldb	_lastY	; lastY.459, lastY
   1768 10 2F 00 4B   [ 6] 4238 	lble	L259	;
                           4239 ;----- asm -----
                           4240 ; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4241 	; #ENR#[1100]if ((can_go_north) && (!sf[astral_walk]))
                           4242 ;--- end asm ---
   176C F6 C8 8B      [ 5] 4243 	ldb	_screen+11	; tmp41,
   176F C4 03         [ 2] 4244 	andb	#3	; tmp41,
   1771 C1 03         [ 2] 4245 	cmpb	#3	;cmpqi:	; tmp41,
   1773 26 07         [ 3] 4246 	bne	L260	;
   1775 7D C9 5A      [ 7] 4247 	tst	_sf+7	; sf
   1778 10 27 00 5F   [ 6] 4248 	lbeq	L266	;
   177C                    4249 L260:
                           4250 ;----- asm -----
                           4251 ; 1506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4252 	; #ENR#[1106]cy -=1;fillmap=go_north;printmessage();
                           4253 ;--- end asm ---
   177C 7A C9 39      [ 7] 4254 	dec	_cy	; cy
   177F C6 01         [ 2] 4255 	ldb	#1	;,
   1781 F7 C8 FC      [ 5] 4256 	stb	_fillMap	;, fillMap
   1784 8E 0C 70      [ 3] 4257 	ldx	#LC106	;,
   1787 BD 5A 71      [ 8] 4258 	jsr	_printMessage
   178A 16 FF BD      [ 5] 4259 	lbra	L256	;
   178D                    4260 L264:
                           4261 ;----- asm -----
                           4262 ; 1473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4263 	; #ENR#[1080]printmessage();
                           4264 ;--- end asm ---
   178D 8E 17 0B      [ 3] 4265 	ldx	#LC125	;,
   1790 BD 5A 71      [ 8] 4266 	jsr	_printMessage
   1793 16 FF B4      [ 5] 4267 	lbra	L256	;
   1796                    4268 L265:
                           4269 ;----- asm -----
                           4270 ; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4271 	; #ENR#[1089]if ((can_go_west) && (!sf[astral_walk]))
                           4272 ;--- end asm ---
   1796 F6 C8 8B      [ 5] 4273 	ldb	_screen+11	; tmp37,
   1799 C4 0C         [ 2] 4274 	andb	#12	; tmp37,
   179B C1 0C         [ 2] 4275 	cmpb	#12	;cmpqi:	; tmp37,
   179D 26 07         [ 3] 4276 	bne	L258	;
   179F 7D C9 5A      [ 7] 4277 	tst	_sf+7	; sf
   17A2 10 27 00 3E   [ 6] 4278 	lbeq	L267	;
   17A6                    4279 L258:
                           4280 ;----- asm -----
                           4281 ; 1492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4282 	; #ENR#[1095]cx -=1;fillmap=go_west;printmessage();
                           4283 ;--- end asm ---
   17A6 7A C9 38      [ 7] 4284 	dec	_cx	; cx
   17A9 C6 04         [ 2] 4285 	ldb	#4	;,
   17AB F7 C8 FC      [ 5] 4286 	stb	_fillMap	;, fillMap
   17AE 8E 0C 7C      [ 3] 4287 	ldx	#LC108	;,
   17B1 BD 5A 71      [ 8] 4288 	jsr	_printMessage
   17B4 16 FF 93      [ 5] 4289 	lbra	L256	;
   17B7                    4290 L259:
   17B7 5D            [ 2] 4291 	tstb	; lastY.459
   17B8 10 27 FF 8E   [ 6] 4292 	lbeq	L256	;
                           4293 ;----- asm -----
                           4294 ; 1512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4295 	; #ENR#[1111]if ((can_go_south) && (!sf[astral_walk]))
                           4296 ;--- end asm ---
   17BC F6 C8 93      [ 5] 4297 	ldb	_screen+19	; tmp45,
   17BF C4 03         [ 2] 4298 	andb	#3	; tmp45,
   17C1 C1 03         [ 2] 4299 	cmpb	#3	;cmpqi:	; tmp45,
   17C3 26 05         [ 3] 4300 	bne	L261	;
   17C5 7D C9 5A      [ 7] 4301 	tst	_sf+7	; sf
   17C8 27 23         [ 3] 4302 	beq	L268	;
   17CA                    4303 L261:
                           4304 ;----- asm -----
                           4305 ; 1520 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4306 	; #ENR#[1117]cy +=1;fillmap=go_south; printmessage();
                           4307 ;--- end asm ---
   17CA 7C C9 39      [ 7] 4308 	inc	_cy	; cy
   17CD C6 02         [ 2] 4309 	ldb	#2	;,
   17CF F7 C8 FC      [ 5] 4310 	stb	_fillMap	;, fillMap
   17D2 8E 0C 76      [ 3] 4311 	ldx	#LC107	;,
   17D5 BD 5A 71      [ 8] 4312 	jsr	_printMessage
   17D8 16 FF 6F      [ 5] 4313 	lbra	L256	;
   17DB                    4314 L266:
                           4315 ;----- asm -----
                           4316 ; 1501 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4317 	; #ENR#[1102]printmessage();
                           4318 ;--- end asm ---
   17DB 8E 17 0B      [ 3] 4319 	ldx	#LC125	;,
   17DE BD 5A 71      [ 8] 4320 	jsr	_printMessage
   17E1 16 FF 66      [ 5] 4321 	lbra	L256	;
   17E4                    4322 L267:
                           4323 ;----- asm -----
                           4324 ; 1487 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4325 	; #ENR#[1091]printmessage();
                           4326 ;--- end asm ---
   17E4 8E 17 0B      [ 3] 4327 	ldx	#LC125	;,
   17E7 BD 5A 71      [ 8] 4328 	jsr	_printMessage
   17EA 16 FF 5D      [ 5] 4329 	lbra	L256	;
   17ED                    4330 L268:
                           4331 ;----- asm -----
                           4332 ; 1515 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4333 	; #ENR#[1113]printmessage();
                           4334 ;--- end asm ---
   17ED 8E 17 0B      [ 3] 4335 	ldx	#LC125	;,
   17F0 BD 5A 71      [ 8] 4336 	jsr	_printMessage
   17F3 16 FF 54      [ 5] 4337 	lbra	L256	;
   17F6                    4338 LC126:
   17F6 59 4F 55 20 53 45  4339 	.ascii	"YOU SEE SOME % <4> TO PICK UP\0"
        45 20 53 4F 4D 45
        20 25 20 3C 34 3E
        20 54 4F 20 50 49
        43 4B 20 55 50 00
   1814                    4340 LC127:
   1814 59 4F 55 20 44 45  4341 	.ascii	"YOU DETECT TRAPS!\0"
        54 45 43 54 20 54
        52 41 50 53 21 00
   1826                    4342 LC128:
   1826 59 4F 55 20 4C 45  4343 	.ascii	"YOU LEAVE IT\0"
        41 56 45 20 49 54
        00
   1833                    4344 LC129:
   1833 53 4E 41 52 46 20  4345 	.ascii	"SNARF IT\0"
        49 54 00
   183C                    4346 LC130:
   183C 49 54 27 53 20 54  4347 	.ascii	"IT'S TRAPPED!\0"
        52 41 50 50 45 44
        21 00
   184A                    4348 LC131:
   184A 59 4F 55 20 53 55  4349 	.ascii	"YOU SUFFER % POINTS DAMAGE\0"
        46 46 45 52 20 25
        20 50 4F 49 4E 54
        53 20 44 41 4D 41
        47 45 00
   1865                    4350 LC132:
   1865 49 54 27 53 20 57  4351 	.ascii	"IT'S WORTH % GOLD\0"
        4F 52 54 48 20 25
        20 47 4F 4C 44 00
   1877                    4352 LC133:
   1877 59 4F 55 20 48 41  4353 	.ascii	"YOU HAVE FOUND A TREASURE CHEST!!\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 54
        52 45 41 53 55 52
        45 20 43 48 45 53
        54 21 21 00
   1899                    4354 LC134:
   1899 3C 34 3E 20 54 4F  4355 	.ascii	"<4> TO OPEN IT: \0"
        20 4F 50 45 4E 20
        49 54 3A 20 00
   18AA                    4356 LC135:
   18AA 49 47 4E 4F 52 45  4357 	.ascii	"IGNORE IT\0"
        20 49 54 00
   18B4                    4358 LC136:
   18B4 4F 50 45 4E 20 49  4359 	.ascii	"OPEN IT\0"
        54 00
   18BC                    4360 LC137:
   18BC 43 48 45 53 54 20  4361 	.ascii	"CHEST EXPLODES!!\0"
        45 58 50 4C 4F 44
        45 53 21 21 00
   18CD                    4362 LC138:
   18CD 49 4E 53 49 44 45  4363 	.ascii	"INSIDE, THERE IS ONLY COBWEBS...\0"
        2C 20 54 48 45 52
        45 20 49 53 20 4F
        4E 4C 59 20 43 4F
        42 57 45 42 53 2E
        2E 2E 00
   18EE                    4364 LC139:
   18EE 59 4F 55 20 53 45  4365 	.ascii	"YOU SEE A % +%\0"
        45 20 41 20 25 20
        2B 25 00
   18FD                    4366 LC140:
   18FD 3C 34 3E 20 54 4F  4367 	.ascii	"<4> TO PICK IT UP:\0"
        20 50 49 43 4B 20
        49 54 20 55 50 3A
        00
   1910                    4368 LC141:
   1910 4C 45 41 56 45 20  4369 	.ascii	"LEAVE IT\0"
        49 54 00
   1919                    4370 LC142:
   1919 49 54 20 49 53 20  4371 	.ascii	"IT IS CURSED!!\0"
        43 55 52 53 45 44
        21 21 00
   1928                    4372 LC143:
   1928 59 4F 55 20 53 55  4373 	.ascii	"YOU SUFFER % DAMAGE POINTS\0"
        46 46 45 52 20 25
        20 44 41 4D 41 47
        45 20 50 4F 49 4E
        54 53 00
   1943                    4374 LC144:
   1943 49 54 27 53 20 59  4375 	.ascii	"IT'S YOURS!\0"
        4F 55 52 53 21 00
                           4376 	.globl	_handleTreasure
   194F                    4377 _handleTreasure:
   194F 34 60         [ 7] 4378 	pshs	y,u	;
   1951 32 E8 D7      [ 5] 4379 	leas	-41,s	;,,
   1954 E7 6B         [ 5] 4380 	stb	11,s	; fix, fix
                           4381 ;----- asm -----
                           4382 ; 1539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4383 	; #ENR#[1132]unsigned int tno;
                           4384 ; 1541 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4385 	; #ENR#[1133]unsigned int ilv;
                           4386 ; 1543 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4387 	; #ENR#[1134]unsigned int t,c;
                           4388 ; 1545 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4389 	; #ENR#[1135]clearmessage();
                           4390 ;--- end asm ---
   1956 7F C9 C2      [ 7] 4391 	clr	_msgLine	; msgLine
                           4392 ;----- asm -----
                           4393 ; 1547 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4394 	; #ENR#[1136]if (!fix)
                           4395 ;--- end asm ---
   1959 5D            [ 2] 4396 	tstb	; fix
   195A 10 27 01 6D   [ 6] 4397 	lbeq	L316	;
   195E                    4398 L270:
                           4399 ;----- asm -----
                           4400 ; 1555 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4401 	; #ENR#[1142]if (!fix) return return_special;
                           4402 ;--- end asm ---
   195E C6 05         [ 2] 4403 	ldb	#5	; D.3712,
   1960 6D 6B         [ 7] 4404 	tst	11,s	; fix
   1962 26 05         [ 3] 4405 	bne	L317	;
   1964                    4406 L273:
   1964 32 E8 29      [ 5] 4407 	leas	41,s	;,,
   1967 35 E0         [ 8] 4408 	puls	y,u,pc	;
   1969                    4409 L317:
                           4410 ;----- asm -----
                           4411 ; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4412 	; #ENR#[1147]t = 0;
                           4413 ; 1563 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4414 	; #ENR#[1148]if (randmax(100)<15) t = 1;
                           4415 ;--- end asm ---
   1969 C6 64         [ 2] 4416 	ldb	#100	;,
   196B BD 5E 21      [ 8] 4417 	jsr	_RandMax
   196E 6F E8 12      [ 7] 4418 	clr	18,s	; t
   1971 C1 0E         [ 2] 4419 	cmpb	#14	;cmpqi:	; D.3713,
   1973 10 23 02 92   [ 6] 4420 	lbls	L318	;
   1977                    4421 L274:
                           4422 ;----- asm -----
                           4423 ; 1565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4424 	; #ENR#[1149]c = 0;
                           4425 ; 1570 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4426 	; #ENR#[1153]if (randmax(100)>30)
                           4427 ;--- end asm ---
   1977 C6 64         [ 2] 4428 	ldb	#100	;,
   1979 BD 5E 21      [ 8] 4429 	jsr	_RandMax
   197C C1 1E         [ 2] 4430 	cmpb	#30	;cmpqi:	; D.3714,
   197E 10 22 01 5B   [ 6] 4431 	lbhi	L319	;
                           4432 ;----- asm -----
                           4433 ; 1679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4434 	; #ENR#[1228]if (randmax(100)<50)
                           4435 ;--- end asm ---
   1982 C6 64         [ 2] 4436 	ldb	#100	;,
   1984 BD 5E 21      [ 8] 4437 	jsr	_RandMax
   1987 C1 31         [ 2] 4438 	cmpb	#49	;cmpqi:	; D.3742,
   1989 10 23 03 73   [ 6] 4439 	lbls	L291	;
   198D 6F E8 13      [ 7] 4440 	clr	19,s	; c
   1990                    4441 L292:
                           4442 ;----- asm -----
                           4443 ; 1796 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4444 	; #ENR#[1309]itemfound:
                           4445 ;--- end asm ---
   1990                    4446 L315:
                           4447 ;----- asm -----
                           4448 ; 1798 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4449 	; #ENR#[1310]clearmessage();
                           4450 ;--- end asm ---
   1990 7F C9 C2      [ 7] 4451 	clr	_msgLine	; msgLine
                           4452 ;----- asm -----
                           4453 ; 1803 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4454 	; #ENR#[1314]tno = randmax(10);
                           4455 ;--- end asm ---
   1993 C6 0A         [ 2] 4456 	ldb	#10	;,
   1995 BD 5E 21      [ 8] 4457 	jsr	_RandMax
   1998 E7 E8 20      [ 5] 4458 	stb	32,s	;, tno.499
                           4459 ;----- asm -----
                           4460 ; 1807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4461 	; #ENR#[1317]ilv = randmax((l+1)>>2) + randmax((l+1)>>2) + 1;
                           4462 ;--- end asm ---
   199B F6 C9 6B      [ 5] 4463 	ldb	_l	; tmp116, l
   199E 5C            [ 2] 4464 	incb	; tmp116
   199F 54            [ 2] 4465 	lsrb	; tmp116
   19A0 54            [ 2] 4466 	lsrb	; tmp116
   19A1 BD 5E 21      [ 8] 4467 	jsr	_RandMax
   19A4 E7 E8 11      [ 5] 4468 	stb	17,s	;, ilv
   19A7 F6 C9 6B      [ 5] 4469 	ldb	_l	; tmp118, l
   19AA 5C            [ 2] 4470 	incb	; tmp118
   19AB 54            [ 2] 4471 	lsrb	; tmp118
   19AC 54            [ 2] 4472 	lsrb	; tmp118
   19AD BD 5E 21      [ 8] 4473 	jsr	_RandMax
   19B0 EB E8 11      [ 5] 4474 	addb	17,s	; D.3763, ilv
   19B3 5C            [ 2] 4475 	incb	; D.3763
   19B4 E7 E8 11      [ 5] 4476 	stb	17,s	; D.3763, ilv
                           4477 ;----- asm -----
                           4478 ; 1810 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4479 	; #ENR#[1319]_fsi_s(, items[tno], ilv);
                           4480 ;--- end asm ---
   19B7 E6 E8 20      [ 5] 4481 	ldb	32,s	;, tno.499
   19BA 4F            [ 2] 4482 	clra		;zero_extendqihi: R:b -> R:d	;,
   19BB ED E4         [ 5] 4483 	std	,s	;,
   19BD 58            [ 2] 4484 	aslb	;
   19BE 49            [ 2] 4485 	rola	;
   19BF 1F 01         [ 6] 4486 	tfr	d,x	;, tmp123
   19C1 AE 89 01 F9   [ 9] 4487 	ldx	_items,x	;, items
   19C5 AF E3         [ 8] 4488 	stx	,--s	;,
   19C7 E6 E8 13      [ 5] 4489 	ldb	19,s	;, ilv
   19CA 8E 18 EE      [ 3] 4490 	ldx	#LC139	;,
   19CD BD 6A 6A      [ 8] 4491 	jsr	__fsi_s
                           4492 ;----- asm -----
                           4493 ; 1812 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4494 	; #ENR#[1320]printmessage(stringbuffer40);
                           4495 ;--- end asm ---
   19D0 8E C8 BF      [ 3] 4496 	ldx	#_stringBuffer40	;,
   19D3 BD 5A 71      [ 8] 4497 	jsr	_printMessage
                           4498 ;----- asm -----
                           4499 ; 1818 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4500 	; #ENR#[1325]printmessage();
                           4501 ;--- end asm ---
   19D6 8E 18 FD      [ 3] 4502 	ldx	#LC140	;,
   19D9 BD 5A 71      [ 8] 4503 	jsr	_printMessage
                           4504 ;----- asm -----
                           4505 ; 1820 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4506 	; #ENR#[1326]if (testforbutton(1) != 4)
                           4507 ; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4508 	; #ENR#[163]signed int p = 0;
                           4509 ; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4510 	; #ENR#[164]signed int t = 0;
                           4511 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4512 	; #ENR#[166]localtimer = action_time;
                           4513 ;--- end asm ---
   19DC C6 96         [ 2] 4514 	ldb	#-106	;,
   19DE F7 C8 A8      [ 5] 4515 	stb	_localTimer	;, localTimer
                           4516 ;----- asm -----
                           4517 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4518 	; #ENR#[167]do
                           4519 ;--- end asm ---
   19E1 6F E8 1C      [ 7] 4520 	clr	28,s	; p
   19E4 6F E8 1A      [ 7] 4521 	clr	26,s	; d
   19E7 32 62         [ 5] 4522 	leas	2,s	;,,
   19E9 16 00 7B      [ 5] 4523 	lbra	L306	;
   19EC                    4524 L320:
                           4525 ;----- asm -----
                           4526 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4527 	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
                           4528 ;--- end asm ---
   19EC F6 C8 11      [ 5] 4529 	ldb	_Vec_Buttons	;, Vec_Buttons
   19EF E7 E8 1B      [ 5] 4530 	stb	27,s	;, D.5054
   19F2 C5 08         [ 2] 4531 	bitb	#8	;,
   19F4 27 0A         [ 3] 4532 	beq	L299	;
   19F6 C6 01         [ 2] 4533 	ldb	#1	;,
   19F8 E7 E8 1A      [ 5] 4534 	stb	26,s	;, p
   19FB C6 04         [ 2] 4535 	ldb	#4	;,
   19FD E7 E8 18      [ 5] 4536 	stb	24,s	;, d
   1A00                    4537 L299:
                           4538 ;----- asm -----
                           4539 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4540 	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
                           4541 ;--- end asm ---
   1A00 C6 04         [ 2] 4542 	ldb	#4	; tmp127,
   1A02 E4 E8 1B      [ 5] 4543 	andb	27,s	; tmp127, D.5054
   1A05 27 0A         [ 3] 4544 	beq	L300	;
   1A07 C6 01         [ 2] 4545 	ldb	#1	;,
   1A09 E7 E8 1A      [ 5] 4546 	stb	26,s	;, p
   1A0C C6 03         [ 2] 4547 	ldb	#3	;,
   1A0E E7 E8 18      [ 5] 4548 	stb	24,s	;, d
   1A11                    4549 L300:
                           4550 ;----- asm -----
                           4551 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4552 	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
                           4553 ;--- end asm ---
   1A11 C6 02         [ 2] 4554 	ldb	#2	; tmp128,
   1A13 E4 E8 1B      [ 5] 4555 	andb	27,s	; tmp128, D.5054
   1A16 27 0A         [ 3] 4556 	beq	L301	;
   1A18 C6 01         [ 2] 4557 	ldb	#1	;,
   1A1A E7 E8 1A      [ 5] 4558 	stb	26,s	;, p
   1A1D C6 02         [ 2] 4559 	ldb	#2	;,
   1A1F E7 E8 18      [ 5] 4560 	stb	24,s	;, d
   1A22                    4561 L301:
                           4562 ;----- asm -----
                           4563 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4564 	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
                           4565 ;--- end asm ---
   1A22 C6 01         [ 2] 4566 	ldb	#1	; tmp129,
   1A24 E4 E8 1B      [ 5] 4567 	andb	27,s	; tmp129, D.5054
   1A27 27 08         [ 3] 4568 	beq	L302	;
   1A29 C6 01         [ 2] 4569 	ldb	#1	;,
   1A2B E7 E8 1A      [ 5] 4570 	stb	26,s	;, p
   1A2E E7 E8 18      [ 5] 4571 	stb	24,s	;, d
   1A31                    4572 L302:
                           4573 ;----- asm -----
                           4574 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4575 	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           4576 ;--- end asm ---
   1A31 F6 C8 1B      [ 5] 4577 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   1A34 E7 E8 19      [ 5] 4578 	stb	25,s	;, Vec_Joy_1_X.4
   1A37 27 0A         [ 3] 4579 	beq	L303	;
   1A39 C6 01         [ 2] 4580 	ldb	#1	;,
   1A3B E7 E8 1A      [ 5] 4581 	stb	26,s	;, p
   1A3E C6 05         [ 2] 4582 	ldb	#5	;,
   1A40 E7 E8 18      [ 5] 4583 	stb	24,s	;, d
   1A43                    4584 L303:
                           4585 ;----- asm -----
                           4586 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4587 	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           4588 ;--- end asm ---
   1A43 F6 C8 1C      [ 5] 4589 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   1A46 E7 62         [ 5] 4590 	stb	2,s	;, Vec_Joy_1_Y.5
   1A48 27 0A         [ 3] 4591 	beq	L304	;
   1A4A C6 01         [ 2] 4592 	ldb	#1	;,
   1A4C E7 E8 1A      [ 5] 4593 	stb	26,s	;, p
   1A4F C6 05         [ 2] 4594 	ldb	#5	;,
   1A51 E7 E8 18      [ 5] 4595 	stb	24,s	;, d
   1A54                    4596 L304:
                           4597 ;----- asm -----
                           4598 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4599 	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           4600 ;--- end asm ---
   1A54 6D E8 1A      [ 7] 4601 	tst	26,s	; p
   1A57 27 0E         [ 3] 4602 	beq	L305	;
   1A59 6D E8 19      [ 7] 4603 	tst	25,s	; Vec_Joy_1_X.4
   1A5C 26 09         [ 3] 4604 	bne	L305	;
   1A5E 6D 62         [ 7] 4605 	tst	2,s	; Vec_Joy_1_Y.5
   1A60 26 05         [ 3] 4606 	bne	L305	;
   1A62 6D E8 1B      [ 7] 4607 	tst	27,s	; D.5054
   1A65 27 0E         [ 3] 4608 	beq	L298	;
   1A67                    4609 L305:
                           4610 ;----- asm -----
                           4611 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4612 	; #ENR#[198]while (1);
                           4613 ;--- end asm ---
   1A67                    4614 L306:
                           4615 ;----- asm -----
                           4616 ; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4617 	; #ENR#[169]displayround();
                           4618 ;--- end asm ---
   1A67 BD 3C BC      [ 8] 4619 	jsr	_displayRound
                           4620 ;----- asm -----
                           4621 ; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4622 	; #ENR#[170]if (d!=0) localtimer--;
                           4623 ;--- end asm ---
   1A6A 7A C8 A8      [ 7] 4624 	dec	_localTimer	; localTimer
   1A6D F6 C8 A8      [ 5] 4625 	ldb	_localTimer	; localTimer.3, localTimer
                           4626 ;----- asm -----
                           4627 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4628 	; #ENR#[172]if (localtimer == 0) break;
                           4629 ;--- end asm ---
   1A70 5D            [ 2] 4630 	tstb	; localTimer.3
   1A71 10 26 FF 77   [ 6] 4631 	lbne	L320	;
   1A75                    4632 L298:
                           4633 ;----- asm -----
                           4634 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4635 	; #ENR#[200]if (t == 0) return d;
                           4636 ;--- end asm ---
   1A75 6D E8 18      [ 7] 4637 	tst	24,s	; d
   1A78 10 27 02 47   [ 6] 4638 	lbeq	L307	;
                           4639 ;----- asm -----
                           4640 ; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4641 	; #ENR#[201]return t;
                           4642 ;--- end asm ---
   1A7C E6 E8 18      [ 5] 4643 	ldb	24,s	;, d
   1A7F C1 04         [ 2] 4644 	cmpb	#4	;cmpqi:	;,
   1A81 10 26 02 3E   [ 6] 4645 	lbne	L307	;
                           4646 ;----- asm -----
                           4647 ; 1840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4648 	; #ENR#[1340]if ((t) && (tno!=0))
                           4649 ;--- end asm ---
   1A85 6D E8 12      [ 7] 4650 	tst	18,s	; t
   1A88 27 07         [ 3] 4651 	beq	L310	;
   1A8A 6D E8 20      [ 7] 4652 	tst	32,s	; tno.499
   1A8D 10 26 03 D8   [ 6] 4653 	lbne	L321	;
   1A91                    4654 L310:
                           4655 ;----- asm -----
                           4656 ; 1878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4657 	; #ENR#[1365]printmessage();
                           4658 ;--- end asm ---
   1A91 8E 19 43      [ 3] 4659 	ldx	#LC144	;,
   1A94 BD 5A 71      [ 8] 4660 	jsr	_printMessage
                           4661 ;----- asm -----
                           4662 ; 1880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4663 	; #ENR#[1366]inventory[tno]=inventory[tno]+1;
                           4664 ;--- end asm ---
   1A97 E6 E8 20      [ 5] 4665 	ldb	32,s	;, tno.499
   1A9A 4F            [ 2] 4666 	clra		;zero_extendqihi: R:b -> R:d	;,
   1A9B 1F 03         [ 6] 4667 	tfr	d,u	;,
   1A9D 30 C9 C9 49   [ 8] 4668 	leax	_inventory,u	; tmp137,,
   1AA1 6C 84         [ 6] 4669 	inc	,x	; inventory
                           4670 ;----- asm -----
                           4671 ; 1882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4672 	; #ENR#[1367]if (tno<scroll_of_rescue)
                           4673 ;--- end asm ---
   1AA3 E6 E8 20      [ 5] 4674 	ldb	32,s	;, tno.499
   1AA6 C1 06         [ 2] 4675 	cmpb	#6	;cmpqi:	;,
   1AA8 22 05         [ 3] 4676 	bhi	L312	;
   1AAA E6 E8 11      [ 5] 4677 	ldb	17,s	;, ilv
   1AAD E7 84         [ 4] 4678 	stb	,x	;, inventory
   1AAF                    4679 L312:
                           4680 ;----- asm -----
                           4681 ; 1885 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4682 	; #ENR#[1369]pause(small_pause);
                           4683 ;--- end asm ---
   1AAF C6 4B         [ 2] 4684 	ldb	#75	;,
   1AB1 BD 3D 31      [ 8] 4685 	jsr	_pause
                           4686 ;----- asm -----
                           4687 ; 1889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4688 	; #ENR#[1372]if ((c==1) && (randmax(100)>50))
                           4689 ;--- end asm ---
   1AB4 E6 E8 13      [ 5] 4690 	ldb	19,s	;, c
   1AB7 C1 01         [ 2] 4691 	cmpb	#1	;cmpqi:	;,
   1AB9 10 26 02 3E   [ 6] 4692 	lbne	L313	;
   1ABD C6 64         [ 2] 4693 	ldb	#100	;,
   1ABF BD 5E 21      [ 8] 4694 	jsr	_RandMax
   1AC2 C1 32         [ 2] 4695 	cmpb	#50	;cmpqi:	; D.3773,
   1AC4 10 23 02 33   [ 6] 4696 	lbls	L313	;
                           4697 ;----- asm -----
                           4698 ; 1892 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4699 	; #ENR#[1374]goto itemfound;
                           4700 ;--- end asm ---
   1AC8 16 FE C5      [ 5] 4701 	lbra	L315	;
   1ACB                    4702 L316:
                           4703 ;----- asm -----
                           4704 ; 1552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4705 	; #ENR#[1140]fix = randmax(50) > 40;
                           4706 ;--- end asm ---
   1ACB C6 32         [ 2] 4707 	ldb	#50	;,
   1ACD BD 5E 21      [ 8] 4708 	jsr	_RandMax
   1AD0 C1 28         [ 2] 4709 	cmpb	#40	;cmpqi:	; D.3711,
   1AD2 10 23 FE 88   [ 6] 4710 	lbls	L270	;
   1AD6 C6 01         [ 2] 4711 	ldb	#1	;,
   1AD8 E7 6B         [ 5] 4712 	stb	11,s	;, fix
   1ADA 16 FE 81      [ 5] 4713 	lbra	L270	;
   1ADD                    4714 L319:
                           4715 ;----- asm -----
                           4716 ; 1580 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4717 	; #ENR#[1162]tno = randmax(5);
                           4718 ;--- end asm ---
   1ADD C6 05         [ 2] 4719 	ldb	#5	;,
   1ADF BD 5E 21      [ 8] 4720 	jsr	_RandMax
   1AE2 E7 E8 10      [ 5] 4721 	stb	16,s	;, tno
                           4722 ;----- asm -----
                           4723 ; 1582 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4724 	; #ENR#[1163]printtreasure=(signed int)tno;
                           4725 ;--- end asm ---
   1AE5 F7 C8 F5      [ 5] 4726 	stb	_printTreasure	;, printTreasure
                           4727 ;----- asm -----
                           4728 ; 1584 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4729 	; #ENR#[1164]_fs(, treasure[tno]);
                           4730 ;--- end asm ---
   1AE8 4F            [ 2] 4731 	clra		;zero_extendqihi: R:b -> R:d	;,
   1AE9 ED E4         [ 5] 4732 	std	,s	;,
   1AEB 58            [ 2] 4733 	aslb	;
   1AEC 49            [ 2] 4734 	rola	;
   1AED 1F 01         [ 6] 4735 	tfr	d,x	;, tmp76
   1AEF AE 89 04 5B   [ 9] 4736 	ldx	_treasure,x	;, treasure
   1AF3 AF E3         [ 8] 4737 	stx	,--s	;,
   1AF5 8E 17 F6      [ 3] 4738 	ldx	#LC126	;,
   1AF8 BD 5B 50      [ 8] 4739 	jsr	__fs
                           4740 ;----- asm -----
                           4741 ; 1586 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4742 	; #ENR#[1165]printmessage(stringbuffer40);
                           4743 ;--- end asm ---
   1AFB 8E C8 BF      [ 3] 4744 	ldx	#_stringBuffer40	;,
   1AFE BD 5A 71      [ 8] 4745 	jsr	_printMessage
                           4746 ;----- asm -----
                           4747 ; 1592 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4748 	; #ENR#[1170]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
                           4749 ;--- end asm ---
   1B01 32 62         [ 5] 4750 	leas	2,s	;,,
   1B03 7D C9 54      [ 7] 4751 	tst	_sf+1	; sf
   1B06 27 07         [ 3] 4752 	beq	L276	;
   1B08 6D E8 12      [ 7] 4753 	tst	18,s	; t
   1B0B 10 26 03 47   [ 6] 4754 	lbne	L322	;
   1B0F                    4755 L276:
                           4756 ;----- asm -----
                           4757 ; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4758 	; #ENR#[1172]if (testforbutton(1) != 4)
                           4759 ; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4760 	; #ENR#[163]signed int p = 0;
                           4761 ; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4762 	; #ENR#[164]signed int t = 0;
                           4763 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4764 	; #ENR#[166]localtimer = action_time;
                           4765 ;--- end asm ---
   1B0F C6 96         [ 2] 4766 	ldb	#-106	;,
   1B11 F7 C8 A8      [ 5] 4767 	stb	_localTimer	;, localTimer
                           4768 ;----- asm -----
                           4769 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4770 	; #ENR#[167]do
                           4771 ;--- end asm ---
   1B14 6F E8 16      [ 7] 4772 	clr	22,s	; p
   1B17 6F E8 14      [ 7] 4773 	clr	20,s	; d
   1B1A 16 00 7B      [ 5] 4774 	lbra	L285	;
   1B1D                    4775 L323:
                           4776 ;----- asm -----
                           4777 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4778 	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
                           4779 ;--- end asm ---
   1B1D F6 C8 11      [ 5] 4780 	ldb	_Vec_Buttons	;, Vec_Buttons
   1B20 E7 E8 17      [ 5] 4781 	stb	23,s	;, D.5037
   1B23 C5 08         [ 2] 4782 	bitb	#8	;,
   1B25 27 0A         [ 3] 4783 	beq	L278	;
   1B27 C6 01         [ 2] 4784 	ldb	#1	;,
   1B29 E7 E8 16      [ 5] 4785 	stb	22,s	;, p
   1B2C C6 04         [ 2] 4786 	ldb	#4	;,
   1B2E E7 E8 14      [ 5] 4787 	stb	20,s	;, d
   1B31                    4788 L278:
                           4789 ;----- asm -----
                           4790 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4791 	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
                           4792 ;--- end asm ---
   1B31 C6 04         [ 2] 4793 	ldb	#4	; tmp81,
   1B33 E4 E8 17      [ 5] 4794 	andb	23,s	; tmp81, D.5037
   1B36 27 0A         [ 3] 4795 	beq	L279	;
   1B38 C6 01         [ 2] 4796 	ldb	#1	;,
   1B3A E7 E8 16      [ 5] 4797 	stb	22,s	;, p
   1B3D C6 03         [ 2] 4798 	ldb	#3	;,
   1B3F E7 E8 14      [ 5] 4799 	stb	20,s	;, d
   1B42                    4800 L279:
                           4801 ;----- asm -----
                           4802 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4803 	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
                           4804 ;--- end asm ---
   1B42 C6 02         [ 2] 4805 	ldb	#2	; tmp82,
   1B44 E4 E8 17      [ 5] 4806 	andb	23,s	; tmp82, D.5037
   1B47 27 0A         [ 3] 4807 	beq	L280	;
   1B49 C6 01         [ 2] 4808 	ldb	#1	;,
   1B4B E7 E8 16      [ 5] 4809 	stb	22,s	;, p
   1B4E C6 02         [ 2] 4810 	ldb	#2	;,
   1B50 E7 E8 14      [ 5] 4811 	stb	20,s	;, d
   1B53                    4812 L280:
                           4813 ;----- asm -----
                           4814 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4815 	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
                           4816 ;--- end asm ---
   1B53 C6 01         [ 2] 4817 	ldb	#1	; tmp83,
   1B55 E4 E8 17      [ 5] 4818 	andb	23,s	; tmp83, D.5037
   1B58 27 08         [ 3] 4819 	beq	L281	;
   1B5A C6 01         [ 2] 4820 	ldb	#1	;,
   1B5C E7 E8 16      [ 5] 4821 	stb	22,s	;, p
   1B5F E7 E8 14      [ 5] 4822 	stb	20,s	;, d
   1B62                    4823 L281:
                           4824 ;----- asm -----
                           4825 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4826 	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           4827 ;--- end asm ---
   1B62 F6 C8 1B      [ 5] 4828 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   1B65 E7 E8 15      [ 5] 4829 	stb	21,s	;, Vec_Joy_1_X.4
   1B68 27 0A         [ 3] 4830 	beq	L282	;
   1B6A C6 01         [ 2] 4831 	ldb	#1	;,
   1B6C E7 E8 16      [ 5] 4832 	stb	22,s	;, p
   1B6F C6 05         [ 2] 4833 	ldb	#5	;,
   1B71 E7 E8 14      [ 5] 4834 	stb	20,s	;, d
   1B74                    4835 L282:
                           4836 ;----- asm -----
                           4837 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4838 	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           4839 ;--- end asm ---
   1B74 F6 C8 1C      [ 5] 4840 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   1B77 E7 62         [ 5] 4841 	stb	2,s	;, Vec_Joy_1_Y.5
   1B79 27 0A         [ 3] 4842 	beq	L283	;
   1B7B C6 01         [ 2] 4843 	ldb	#1	;,
   1B7D E7 E8 16      [ 5] 4844 	stb	22,s	;, p
   1B80 C6 05         [ 2] 4845 	ldb	#5	;,
   1B82 E7 E8 14      [ 5] 4846 	stb	20,s	;, d
   1B85                    4847 L283:
                           4848 ;----- asm -----
                           4849 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4850 	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           4851 ;--- end asm ---
   1B85 6D E8 16      [ 7] 4852 	tst	22,s	; p
   1B88 27 0E         [ 3] 4853 	beq	L284	;
   1B8A 6D E8 15      [ 7] 4854 	tst	21,s	; Vec_Joy_1_X.4
   1B8D 26 09         [ 3] 4855 	bne	L284	;
   1B8F 6D 62         [ 7] 4856 	tst	2,s	; Vec_Joy_1_Y.5
   1B91 26 05         [ 3] 4857 	bne	L284	;
   1B93 6D E8 17      [ 7] 4858 	tst	23,s	; D.5037
   1B96 27 0E         [ 3] 4859 	beq	L277	;
   1B98                    4860 L284:
                           4861 ;----- asm -----
                           4862 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4863 	; #ENR#[198]while (1);
                           4864 ;--- end asm ---
   1B98                    4865 L285:
                           4866 ;----- asm -----
                           4867 ; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4868 	; #ENR#[169]displayround();
                           4869 ;--- end asm ---
   1B98 BD 3C BC      [ 8] 4870 	jsr	_displayRound
                           4871 ;----- asm -----
                           4872 ; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4873 	; #ENR#[170]if (d!=0) localtimer--;
                           4874 ;--- end asm ---
   1B9B 7A C8 A8      [ 7] 4875 	dec	_localTimer	; localTimer
   1B9E F6 C8 A8      [ 5] 4876 	ldb	_localTimer	; localTimer.3, localTimer
                           4877 ;----- asm -----
                           4878 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4879 	; #ENR#[172]if (localtimer == 0) break;
                           4880 ;--- end asm ---
   1BA1 5D            [ 2] 4881 	tstb	; localTimer.3
   1BA2 10 26 FF 77   [ 6] 4882 	lbne	L323	;
   1BA6                    4883 L277:
                           4884 ;----- asm -----
                           4885 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4886 	; #ENR#[200]if (t == 0) return d;
                           4887 ;--- end asm ---
   1BA6 6D E8 14      [ 7] 4888 	tst	20,s	; d
   1BA9 10 27 01 34   [ 6] 4889 	lbeq	L286	;
                           4890 ;----- asm -----
                           4891 ; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4892 	; #ENR#[201]return t;
                           4893 ;--- end asm ---
   1BAD E6 E8 14      [ 5] 4894 	ldb	20,s	;, d
   1BB0 C1 04         [ 2] 4895 	cmpb	#4	;cmpqi:	;,
   1BB2 10 26 01 2B   [ 6] 4896 	lbne	L286	;
                           4897 ;----- asm -----
                           4898 ; 1610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4899 	; #ENR#[1182]clearmessage();
                           4900 ;--- end asm ---
   1BB6 7F C9 C2      [ 7] 4901 	clr	_msgLine	; msgLine
                           4902 ;----- asm -----
                           4903 ; 1612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4904 	; #ENR#[1183]printmessage();
                           4905 ;--- end asm ---
   1BB9 8E 18 33      [ 3] 4906 	ldx	#LC129	;,
   1BBC BD 5A 71      [ 8] 4907 	jsr	_printMessage
                           4908 ;----- asm -----
                           4909 ; 1614 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4910 	; #ENR#[1184]if (t)
                           4911 ;--- end asm ---
   1BBF 6D E8 12      [ 7] 4912 	tst	18,s	; t
   1BC2 10 27 00 4B   [ 6] 4913 	lbeq	L288	;
                           4914 ;----- asm -----
                           4915 ; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4916 	; #ENR#[1190]utmp = (unsigned int) randmax(l*3)+1;
                           4917 ;--- end asm ---
   1BC6 F6 C9 6B      [ 5] 4918 	ldb	_l	; tmp86, l
   1BC9 58            [ 2] 4919 	aslb	; tmp86
   1BCA FB C9 6B      [ 5] 4920 	addb	_l	; tmp86, l
   1BCD BD 5E 21      [ 8] 4921 	jsr	_RandMax
   1BD0 5C            [ 2] 4922 	incb	; D.3724
   1BD1 F7 C8 FD      [ 5] 4923 	stb	_utmp	; D.3724, utmp
                           4924 ;----- asm -----
                           4925 ; 1623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4926 	; #ENR#[1191]printmessage();
                           4927 ;--- end asm ---
   1BD4 8E 18 3C      [ 3] 4928 	ldx	#LC130	;,
   1BD7 BD 5A 71      [ 8] 4929 	jsr	_printMessage
                           4930 ;----- asm -----
                           4931 ; 1625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4932 	; #ENR#[1192]_fi_s(, (unsigned int) utmp);
                           4933 ;--- end asm ---
   1BDA F6 C8 FD      [ 5] 4934 	ldb	_utmp	;, utmp
   1BDD 8E 18 4A      [ 3] 4935 	ldx	#LC131	;,
   1BE0 BD 5B BD      [ 8] 4936 	jsr	__fi_s
                           4937 ;----- asm -----
                           4938 ; 1627 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4939 	; #ENR#[1193]printmessage(stringbuffer40);
                           4940 ;--- end asm ---
   1BE3 8E C8 BF      [ 3] 4941 	ldx	#_stringBuffer40	;,
   1BE6 BD 5A 71      [ 8] 4942 	jsr	_printMessage
                           4943 ;----- asm -----
                           4944 ; 1629 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4945 	; #ENR#[1194]ch = ch - ((unsigned int) utmp);
                           4946 ;--- end asm ---
   1BE9 F6 C8 FD      [ 5] 4947 	ldb	_utmp	;, utmp
   1BEC 4F            [ 2] 4948 	clra		;zero_extendqihi: R:b -> R:d	;,
   1BED 1F 01         [ 6] 4949 	tfr	d,x	;, utmp
   1BEF FC C9 2D      [ 6] 4950 	ldd	_ch	; ch, ch
   1BF2 34 10         [ 6] 4951 	pshs	x	;subhi: R:d -= R:x	; utmp, ch.93
   1BF4 A3 E1         [ 9] 4952 	subd	,s++	; ch.93
   1BF6 FD C9 2D      [ 6] 4953 	std	_ch	; ch.93, ch
                           4954 ;----- asm -----
                           4955 ; 1631 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4956 	; #ENR#[1195]if (ch<1)
                           4957 ;--- end asm ---
   1BF9 10 83 00 00   [ 5] 4958 	cmpd	#0	; ch.93
   1BFD 2E 12         [ 3] 4959 	bgt	L288	;
                           4960 ;----- asm -----
                           4961 ; 1634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4962 	; #ENR#[1197]pause(small_pause);
                           4963 ;--- end asm ---
   1BFF C6 4B         [ 2] 4964 	ldb	#75	;,
   1C01 BD 3D 31      [ 8] 4965 	jsr	_pause
                           4966 ;----- asm -----
                           4967 ; 1636 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4968 	; #ENR#[1198]return return_player_dead;
                           4969 ;--- end asm ---
   1C04 C6 02         [ 2] 4970 	ldb	#2	; D.3712,
   1C06 16 FD 5B      [ 5] 4971 	lbra	L273	;
   1C09                    4972 L318:
   1C09 C6 01         [ 2] 4973 	ldb	#1	;,
   1C0B E7 E8 12      [ 5] 4974 	stb	18,s	;, t
   1C0E 16 FD 66      [ 5] 4975 	lbra	L274	;
   1C11                    4976 L288:
                           4977 ;----- asm -----
                           4978 ; 1645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4979 	; #ENR#[1206]lltmp = (signed long long int) ((unsigned long long int) randmax(200));
                           4980 ;--- end asm ---
   1C11 C6 C8         [ 2] 4981 	ldb	#-56	;,
   1C13 BD 5E 21      [ 8] 4982 	jsr	_RandMax
   1C16 4F            [ 2] 4983 	clra		;zero_extendqihi: R:b -> R:d	; D.3730,
   1C17 1F 02         [ 6] 4984 	tfr	d,y	;, D.3730
   1C19 CC 00 00      [ 3] 4985 	ldd	#0	;,
   1C1C FD C9 04      [ 6] 4986 	std	_lltmp	;, lltmp
   1C1F 10 BF C9 06   [ 7] 4987 	sty	_lltmp+2	; D.3730, lltmp
                           4988 ;----- asm -----
                           4989 ; 1647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4990 	; #ENR#[1207]lltmp = lltmp*l;
                           4991 ; 1649 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4992 	; #ENR#[1208]lltmp = lltmp*tno;
                           4993 ; 1651 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4994 	; #ENR#[1209]lltmp++;
                           4995 ;--- end asm ---
   1C23 E6 E8 10      [ 5] 4996 	ldb	16,s	;, tno
   1C26 4F            [ 2] 4997 	clra		;zero_extendqihi: R:b -> R:d	;,
   1C27 1F 01         [ 6] 4998 	tfr	d,x	;, tno
   1C29 F6 C9 6B      [ 5] 4999 	ldb	_l	;, l
   1C2C 4F            [ 2] 5000 	clra		;zero_extendqihi: R:b -> R:d	;,
   1C2D 1F 03         [ 6] 5001 	tfr	d,u	;, l
   1C2F 32 78         [ 5] 5002 	leas	-8,s	;,,
   1C31 CC 00 00      [ 3] 5003 	ldd	#0	;,
   1C34 ED 64         [ 6] 5004 	std	4,s	;,
   1C36 EF 66         [ 6] 5005 	stu	6,s	; l,
   1C38 ED E4         [ 5] 5006 	std	,s	;,
   1C3A AF 62         [ 6] 5007 	stx	2,s	; tno,
   1C3C 30 E8 2D      [ 5] 5008 	leax	45,s	;,,
   1C3F BD 76 A6      [ 8] 5009 	jsr	___mulsi3
   1C42 CC 00 00      [ 3] 5010 	ldd	#0	;,
   1C45 ED 64         [ 6] 5011 	std	4,s	;,
   1C47 10 AF 66      [ 7] 5012 	sty	6,s	; D.3730,
   1C4A AE E8 2D      [ 6] 5013 	ldx	45,s	;,
   1C4D AF E4         [ 5] 5014 	stx	,s	;,
   1C4F EE E8 2F      [ 6] 5015 	ldu	47,s	;,
   1C52 EF 62         [ 6] 5016 	stu	2,s	;,
   1C54 30 E8 29      [ 5] 5017 	leax	41,s	;,,
   1C57 BD 76 A6      [ 8] 5018 	jsr	___mulsi3
   1C5A 32 64         [ 5] 5019 	leas	4,s	;,,
   1C5C EC E8 25      [ 6] 5020 	ldd	37,s	;,
   1C5F ED 6B         [ 6] 5021 	std	11,s	;,
   1C61 AE E8 27      [ 6] 5022 	ldx	39,s	;,
   1C64 AF 6D         [ 6] 5023 	stx	13,s	;,
   1C66 EC 6D         [ 6] 5024 	ldd	13,s	;,
   1C68 C3 00 01      [ 4] 5025 	addd	#1	;,
   1C6B ED E8 12      [ 6] 5026 	std	18,s	;, lltmp.98
   1C6E EC 6B         [ 6] 5027 	ldd	11,s	;,
   1C70 C9 00         [ 2] 5028 	adcb	#0	;
   1C72 89 00         [ 2] 5029 	adca	#0	;
   1C74 ED E8 10      [ 6] 5030 	std	16,s	;, lltmp.98
   1C77 AE E8 10      [ 6] 5031 	ldx	16,s	;, lltmp.98
   1C7A BF C9 04      [ 6] 5032 	stx	_lltmp	;, lltmp
   1C7D EE E8 12      [ 6] 5033 	ldu	18,s	;, lltmp.98
   1C80 FF C9 06      [ 6] 5034 	stu	_lltmp+2	;, lltmp
                           5035 ;----- asm -----
                           5036 ; 1653 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5037 	; #ENR#[1210]gd = gd + ull(lltmp);
                           5038 ;--- end asm ---
   1C83 FC C9 3D      [ 6] 5039 	ldd	_gd+2	;, gd
   1C86 E3 E8 12      [ 7] 5040 	addd	18,s	;, lltmp.98
   1C89 FD C9 3D      [ 6] 5041 	std	_gd+2	;, gd
   1C8C FC C9 3B      [ 6] 5042 	ldd	_gd	;, gd
   1C8F E9 E8 11      [ 5] 5043 	adcb	17,s	; lltmp.98
   1C92 A9 E8 10      [ 5] 5044 	adca	16,s	; lltmp.98
   1C95 FD C9 3B      [ 6] 5045 	std	_gd	;, gd
                           5046 ;----- asm -----
                           5047 ; 1655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5048 	; #ENR#[1211]_fll_s(, ((unsigned long long int) lltmp));
                           5049 ;--- end asm ---
   1C98 AF E4         [ 5] 5050 	stx	,s	;,
   1C9A EE E8 12      [ 6] 5051 	ldu	18,s	;, lltmp.98
   1C9D EF 62         [ 6] 5052 	stu	2,s	;,
   1C9F 8E 18 65      [ 3] 5053 	ldx	#LC132	;,
   1CA2 BD 66 B4      [ 8] 5054 	jsr	__fll_s
                           5055 ;----- asm -----
                           5056 ; 1657 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5057 	; #ENR#[1212]printmessage(stringbuffer40);
                           5058 ;--- end asm ---
   1CA5 8E C8 BF      [ 3] 5059 	ldx	#_stringBuffer40	;,
   1CA8 BD 5A 71      [ 8] 5060 	jsr	_printMessage
                           5061 ;----- asm -----
                           5062 ; 1659 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5063 	; #ENR#[1213]if (randmax(50)<10)
                           5064 ;--- end asm ---
   1CAB C6 32         [ 2] 5065 	ldb	#50	;,
   1CAD BD 5E 21      [ 8] 5066 	jsr	_RandMax
   1CB0 32 64         [ 5] 5067 	leas	4,s	;,,
   1CB2 C1 09         [ 2] 5068 	cmpb	#9	;cmpqi:	; D.3741,
   1CB4 10 22 00 8D   [ 6] 5069 	lbhi	L289	;
                           5070 ;----- asm -----
                           5071 ; 1662 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5072 	; #ENR#[1215]pause(small_pause);
                           5073 ;--- end asm ---
   1CB8 C6 4B         [ 2] 5074 	ldb	#75	;,
   1CBA BD 3D 31      [ 8] 5075 	jsr	_pause
                           5076 ;----- asm -----
                           5077 ; 1664 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5078 	; #ENR#[1216]goto itemfound;
                           5079 ;--- end asm ---
   1CBD 6F E8 13      [ 7] 5080 	clr	19,s	; c
   1CC0 16 FC CD      [ 5] 5081 	lbra	L315	;
   1CC3                    5082 L307:
                           5083 ;----- asm -----
                           5084 ; 1824 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5085 	; #ENR#[1329]printmessage();
                           5086 ;--- end asm ---
   1CC3 8E 19 10      [ 3] 5087 	ldx	#LC141	;,
   1CC6 BD 5A 71      [ 8] 5088 	jsr	_printMessage
                           5089 ;----- asm -----
                           5090 ; 1826 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5091 	; #ENR#[1330]pause(small_pause);
                           5092 ;--- end asm ---
   1CC9 C6 4B         [ 2] 5093 	ldb	#75	;,
   1CCB BD 3D 31      [ 8] 5094 	jsr	_pause
                           5095 ;----- asm -----
                           5096 ; 1828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5097 	; #ENR#[1331]if ((c==1) && (randmax(100)>50))
                           5098 ;--- end asm ---
   1CCE E6 E8 13      [ 5] 5099 	ldb	19,s	;, c
   1CD1 C1 01         [ 2] 5100 	cmpb	#1	;cmpqi:	;,
   1CD3 26 21         [ 3] 5101 	bne	L309	;
   1CD5 C6 64         [ 2] 5102 	ldb	#100	;,
   1CD7 BD 5E 21      [ 8] 5103 	jsr	_RandMax
   1CDA C1 32         [ 2] 5104 	cmpb	#50	;cmpqi:	; D.3767,
   1CDC 23 18         [ 3] 5105 	bls	L309	;
                           5106 ;----- asm -----
                           5107 ; 1831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5108 	; #ENR#[1333]goto itemfound;
                           5109 ;--- end asm ---
   1CDE 16 FC AF      [ 5] 5110 	lbra	L315	;
   1CE1                    5111 L286:
                           5112 ;----- asm -----
                           5113 ; 1599 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5114 	; #ENR#[1175]clearmessage();
                           5115 ;--- end asm ---
   1CE1 7F C9 C2      [ 7] 5116 	clr	_msgLine	; msgLine
                           5117 ;----- asm -----
                           5118 ; 1601 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5119 	; #ENR#[1176]printmessage();
                           5120 ;--- end asm ---
   1CE4 8E 18 26      [ 3] 5121 	ldx	#LC128	;,
   1CE7 BD 5A 71      [ 8] 5122 	jsr	_printMessage
                           5123 ;----- asm -----
                           5124 ; 1603 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5125 	; #ENR#[1177]pause(small_pause);
                           5126 ;--- end asm ---
   1CEA C6 4B         [ 2] 5127 	ldb	#75	;,
   1CEC BD 3D 31      [ 8] 5128 	jsr	_pause
                           5129 ;----- asm -----
                           5130 ; 1605 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5131 	; #ENR#[1178]return return_special;
                           5132 ;--- end asm ---
   1CEF C6 05         [ 2] 5133 	ldb	#5	; D.3712,
   1CF1 32 E8 29      [ 5] 5134 	leas	41,s	;,,
   1CF4 35 E0         [ 8] 5135 	puls	y,u,pc	;
   1CF6                    5136 L309:
                           5137 ;----- asm -----
                           5138 ; 1834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5139 	; #ENR#[1335]return return_special;
                           5140 ;--- end asm ---
   1CF6 C6 05         [ 2] 5141 	ldb	#5	; D.3712,
   1CF8 16 FC 69      [ 5] 5142 	lbra	L273	;
   1CFB                    5143 L313:
                           5144 ;----- asm -----
                           5145 ; 1895 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5146 	; #ENR#[1376]return return_monster_stack;
                           5147 ;--- end asm ---
   1CFB C6 06         [ 2] 5148 	ldb	#6	; D.3712,
   1CFD 16 FC 64      [ 5] 5149 	lbra	L273	;
   1D00                    5150 L291:
                           5151 ;----- asm -----
                           5152 ; 1686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5153 	; #ENR#[1234]printtreasure=5;
                           5154 ;--- end asm ---
   1D00 C6 05         [ 2] 5155 	ldb	#5	;,
   1D02 F7 C8 F5      [ 5] 5156 	stb	_printTreasure	;, printTreasure
                           5157 ;----- asm -----
                           5158 ; 1688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5159 	; #ENR#[1235]printmessage();
                           5160 ;--- end asm ---
   1D05 8E 18 77      [ 3] 5161 	ldx	#LC133	;,
   1D08 BD 5A 71      [ 8] 5162 	jsr	_printMessage
                           5163 ;----- asm -----
                           5164 ; 1690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5165 	; #ENR#[1236]printmessage();
                           5166 ;--- end asm ---
   1D0B 8E 18 99      [ 3] 5167 	ldx	#LC134	;,
   1D0E BD 5A 71      [ 8] 5168 	jsr	_printMessage
                           5169 ;----- asm -----
                           5170 ; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5171 	; #ENR#[1242]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
                           5172 ;--- end asm ---
   1D11 7D C9 54      [ 7] 5173 	tst	_sf+1	; sf
   1D14 27 13         [ 3] 5174 	beq	L293	;
   1D16 6D E8 12      [ 7] 5175 	tst	18,s	; t
   1D19 27 0E         [ 3] 5176 	beq	L293	;
   1D1B C6 0A         [ 2] 5177 	ldb	#10	;,
   1D1D BD 5E 21      [ 8] 5178 	jsr	_RandMax
   1D20 5D            [ 2] 5179 	tstb	; D.3743
   1D21 26 06         [ 3] 5180 	bne	L293	;
   1D23 8E 18 14      [ 3] 5181 	ldx	#LC127	;,
   1D26 BD 5A 71      [ 8] 5182 	jsr	_printMessage
   1D29                    5183 L293:
                           5184 ;----- asm -----
                           5185 ; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5186 	; #ENR#[1247]if (testforbutton(1) != 4)
                           5187 ;--- end asm ---
   1D29 C6 01         [ 2] 5188 	ldb	#1	;,
   1D2B BD 04 AF      [ 8] 5189 	jsr	_testForButton
   1D2E C1 04         [ 2] 5190 	cmpb	#4	;cmpqi:	; D.3744,
   1D30 27 1D         [ 3] 5191 	beq	L294	;
                           5192 ;----- asm -----
                           5193 ; 1707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5194 	; #ENR#[1250]clearmessage();
                           5195 ;--- end asm ---
   1D32 7F C9 C2      [ 7] 5196 	clr	_msgLine	; msgLine
                           5197 ;----- asm -----
                           5198 ; 1709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5199 	; #ENR#[1251]printmessage();
                           5200 ;--- end asm ---
   1D35 8E 18 AA      [ 3] 5201 	ldx	#LC135	;,
   1D38 BD 5A 71      [ 8] 5202 	jsr	_printMessage
                           5203 ;----- asm -----
                           5204 ; 1711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5205 	; #ENR#[1252]pause(small_pause);
                           5206 ;--- end asm ---
   1D3B C6 4B         [ 2] 5207 	ldb	#75	;,
   1D3D BD 3D 31      [ 8] 5208 	jsr	_pause
                           5209 ;----- asm -----
                           5210 ; 1713 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5211 	; #ENR#[1253]return return_special;
                           5212 ;--- end asm ---
   1D40 C6 05         [ 2] 5213 	ldb	#5	; D.3712,
   1D42 16 FC 1F      [ 5] 5214 	lbra	L273	;
   1D45                    5215 L289:
                           5216 ;----- asm -----
                           5217 ; 1669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5218 	; #ENR#[1220]pause(small_pause);
                           5219 ;--- end asm ---
   1D45 C6 4B         [ 2] 5220 	ldb	#75	;,
   1D47 BD 3D 31      [ 8] 5221 	jsr	_pause
                           5222 ;----- asm -----
                           5223 ; 1671 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5224 	; #ENR#[1221]return return_monster_stack;
                           5225 ;--- end asm ---
   1D4A C6 06         [ 2] 5226 	ldb	#6	; D.3712,
   1D4C 16 FC 15      [ 5] 5227 	lbra	L273	;
   1D4F                    5228 L294:
                           5229 ;----- asm -----
                           5230 ; 1719 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5231 	; #ENR#[1258]clearmessage();
                           5232 ;--- end asm ---
   1D4F 7F C9 C2      [ 7] 5233 	clr	_msgLine	; msgLine
                           5234 ;----- asm -----
                           5235 ; 1721 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5236 	; #ENR#[1259]printmessage();
                           5237 ;--- end asm ---
   1D52 8E 18 B4      [ 3] 5238 	ldx	#LC136	;,
   1D55 BD 5A 71      [ 8] 5239 	jsr	_printMessage
                           5240 ;----- asm -----
                           5241 ; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5242 	; #ENR#[1260]if (t)
                           5243 ;--- end asm ---
   1D58 6D E8 12      [ 7] 5244 	tst	18,s	; t
   1D5B 10 27 00 39   [ 6] 5245 	lbeq	L295	;
                           5246 ;----- asm -----
                           5247 ; 1729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5248 	; #ENR#[1265]ltmp = ((signed long int)randmax(10))*((signed long int)cz)+1;
                           5249 ;--- end asm ---
   1D5F C6 0A         [ 2] 5250 	ldb	#10	;,
   1D61 BD 5E 21      [ 8] 5251 	jsr	_RandMax
   1D64 B6 C9 3A      [ 5] 5252 	lda	_cz	;umulqihi3	; cz
   1D67 3D            [11] 5253 	mul
   1D68 C3 00 01      [ 4] 5254 	addd	#1; addhi3,3	; tmp102,
   1D6B FD C9 02      [ 6] 5255 	std	_ltmp	; tmp102, ltmp
                           5256 ;----- asm -----
                           5257 ; 1731 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5258 	; #ENR#[1266]printmessage();
                           5259 ;--- end asm ---
   1D6E 8E 18 BC      [ 3] 5260 	ldx	#LC137	;,
   1D71 BD 5A 71      [ 8] 5261 	jsr	_printMessage
                           5262 ;----- asm -----
                           5263 ; 1733 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5264 	; #ENR#[1267]_fl_s(, (unsigned long) ltmp);
                           5265 ;--- end asm ---
   1D74 BE C9 02      [ 6] 5266 	ldx	_ltmp	;, ltmp
   1D77 AF E3         [ 8] 5267 	stx	,--s	;,
   1D79 8E 18 4A      [ 3] 5268 	ldx	#LC131	;,
   1D7C BD 5E 66      [ 8] 5269 	jsr	__fl_s
                           5270 ;----- asm -----
                           5271 ; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5272 	; #ENR#[1268]printmessage(stringbuffer40);
                           5273 ;--- end asm ---
   1D7F 8E C8 BF      [ 3] 5274 	ldx	#_stringBuffer40	;,
   1D82 BD 5A 71      [ 8] 5275 	jsr	_printMessage
                           5276 ;----- asm -----
                           5277 ; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5278 	; #ENR#[1269]ch = ch - ((signed long int) ltmp);
                           5279 ;--- end asm ---
   1D85 FC C9 2D      [ 6] 5280 	ldd	_ch	; ch, ch
   1D88 B3 C9 02      [ 7] 5281 	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.106, ltmp
   1D8B FD C9 2D      [ 6] 5282 	std	_ch	; ch.106, ch
                           5283 ;----- asm -----
                           5284 ; 1739 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5285 	; #ENR#[1270]if (ch<1)
                           5286 ;--- end asm ---
   1D8E 32 62         [ 5] 5287 	leas	2,s	;,,
   1D90 10 83 00 00   [ 5] 5288 	cmpd	#0	; ch.106
   1D94 10 2F 01 39   [ 6] 5289 	lble	L324	;
   1D98                    5290 L295:
                           5291 ;----- asm -----
                           5292 ; 1754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5293 	; #ENR#[1282]if (randmax(10)==0)
                           5294 ;--- end asm ---
   1D98 C6 0A         [ 2] 5295 	ldb	#10	;,
   1D9A BD 5E 21      [ 8] 5296 	jsr	_RandMax
   1D9D 5D            [ 2] 5297 	tstb	; D.3754
   1D9E 10 27 01 15   [ 6] 5298 	lbeq	L325	;
                           5299 ;----- asm -----
                           5300 ; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5301 	; #ENR#[1293]lltmp = (signed long long int) ((unsigned long long int) randmax(100));
                           5302 ;--- end asm ---
   1DA2 C6 64         [ 2] 5303 	ldb	#100	;,
   1DA4 BD 5E 21      [ 8] 5304 	jsr	_RandMax
   1DA7 4F            [ 2] 5305 	clra		;zero_extendqihi: R:b -> R:d	; D.3755,
   1DA8 1F 02         [ 6] 5306 	tfr	d,y	;, D.3755
   1DAA CC 00 00      [ 3] 5307 	ldd	#0	;,
   1DAD FD C9 04      [ 6] 5308 	std	_lltmp	;, lltmp
   1DB0 10 BF C9 06   [ 7] 5309 	sty	_lltmp+2	; D.3755, lltmp
                           5310 ;----- asm -----
                           5311 ; 1771 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5312 	; #ENR#[1294]lltmp = lltmp*l;
                           5313 ; 1773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5314 	; #ENR#[1295]lltmp = lltmp*10;
                           5315 ; 1775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5316 	; #ENR#[1296]lltmp++;
                           5317 ;--- end asm ---
   1DB4 F6 C9 6B      [ 5] 5318 	ldb	_l	;, l
   1DB7 4F            [ 2] 5319 	clra		;zero_extendqihi: R:b -> R:d	;,
   1DB8 1F 01         [ 6] 5320 	tfr	d,x	;, l
   1DBA 32 78         [ 5] 5321 	leas	-8,s	;,,
   1DBC CC 00 00      [ 3] 5322 	ldd	#0	;,
   1DBF ED 64         [ 6] 5323 	std	4,s	;,
   1DC1 CC 00 0A      [ 3] 5324 	ldd	#10	;,
   1DC4 ED 66         [ 6] 5325 	std	6,s	;,
   1DC6 CC 00 00      [ 3] 5326 	ldd	#0	;,
   1DC9 ED E4         [ 5] 5327 	std	,s	;,
   1DCB AF 62         [ 6] 5328 	stx	2,s	; l,
   1DCD 30 E8 2D      [ 5] 5329 	leax	45,s	;,,
   1DD0 BD 76 A6      [ 8] 5330 	jsr	___mulsi3
   1DD3 CC 00 00      [ 3] 5331 	ldd	#0	;,
   1DD6 ED 64         [ 6] 5332 	std	4,s	;,
   1DD8 10 AF 66      [ 7] 5333 	sty	6,s	; D.3755,
   1DDB AE E8 2D      [ 6] 5334 	ldx	45,s	;,
   1DDE AF E4         [ 5] 5335 	stx	,s	;,
   1DE0 EE E8 2F      [ 6] 5336 	ldu	47,s	;,
   1DE3 EF 62         [ 6] 5337 	stu	2,s	;,
   1DE5 30 E8 29      [ 5] 5338 	leax	41,s	;,,
   1DE8 BD 76 A6      [ 8] 5339 	jsr	___mulsi3
   1DEB 32 64         [ 5] 5340 	leas	4,s	;,,
   1DED EC E8 25      [ 6] 5341 	ldd	37,s	;,
   1DF0 ED 67         [ 6] 5342 	std	7,s	;,
   1DF2 AE E8 27      [ 6] 5343 	ldx	39,s	;,
   1DF5 AF 69         [ 6] 5344 	stx	9,s	;,
   1DF7 EC 69         [ 6] 5345 	ldd	9,s	;,
   1DF9 C3 00 01      [ 4] 5346 	addd	#1	;,
   1DFC ED E8 22      [ 6] 5347 	std	34,s	;, lltmp.493
   1DFF EC 67         [ 6] 5348 	ldd	7,s	;,
   1E01 C9 00         [ 2] 5349 	adcb	#0	;
   1E03 89 00         [ 2] 5350 	adca	#0	;
   1E05 ED E8 20      [ 6] 5351 	std	32,s	;, lltmp.493
   1E08 AE E8 20      [ 6] 5352 	ldx	32,s	;, lltmp.493
   1E0B BF C9 04      [ 6] 5353 	stx	_lltmp	;, lltmp
   1E0E EE E8 22      [ 6] 5354 	ldu	34,s	;, lltmp.493
   1E11 FF C9 06      [ 6] 5355 	stu	_lltmp+2	;, lltmp
                           5356 ;----- asm -----
                           5357 ; 1777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5358 	; #ENR#[1297]gd = gd + ull(lltmp);
                           5359 ;--- end asm ---
   1E14 FC C9 3D      [ 6] 5360 	ldd	_gd+2	;, gd
   1E17 E3 E8 22      [ 7] 5361 	addd	34,s	;, lltmp.493
   1E1A FD C9 3D      [ 6] 5362 	std	_gd+2	;, gd
   1E1D FC C9 3B      [ 6] 5363 	ldd	_gd	;, gd
   1E20 E9 E8 21      [ 5] 5364 	adcb	33,s	; lltmp.493
   1E23 A9 E8 20      [ 5] 5365 	adca	32,s	; lltmp.493
   1E26 FD C9 3B      [ 6] 5366 	std	_gd	;, gd
                           5367 ;----- asm -----
                           5368 ; 1779 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5369 	; #ENR#[1298]_fll_s(, ((unsigned long long int) lltmp));
                           5370 ;--- end asm ---
   1E29 AF E4         [ 5] 5371 	stx	,s	;,
   1E2B EE E8 22      [ 6] 5372 	ldu	34,s	;, lltmp.493
   1E2E EF 62         [ 6] 5373 	stu	2,s	;,
   1E30 8E 18 65      [ 3] 5374 	ldx	#LC132	;,
   1E33 BD 66 B4      [ 8] 5375 	jsr	__fll_s
                           5376 ;----- asm -----
                           5377 ; 1781 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5378 	; #ENR#[1299]printmessage(stringbuffer40);
                           5379 ;--- end asm ---
   1E36 8E C8 BF      [ 3] 5380 	ldx	#_stringBuffer40	;,
   1E39 BD 5A 71      [ 8] 5381 	jsr	_printMessage
                           5382 ;----- asm -----
                           5383 ; 1784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5384 	; #ENR#[1301]pause(small_pause);
                           5385 ;--- end asm ---
   1E3C C6 4B         [ 2] 5386 	ldb	#75	;,
   1E3E BD 3D 31      [ 8] 5387 	jsr	_pause
                           5388 ;----- asm -----
                           5389 ; 1786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5390 	; #ENR#[1302]if (randmax(100)<50)
                           5391 ;--- end asm ---
   1E41 C6 64         [ 2] 5392 	ldb	#100	;,
   1E43 BD 5E 21      [ 8] 5393 	jsr	_RandMax
   1E46 32 64         [ 5] 5394 	leas	4,s	;,,
   1E48 C1 31         [ 2] 5395 	cmpb	#49	;cmpqi:	; D.3758,
   1E4A 10 23 00 64   [ 6] 5396 	lbls	L326	;
                           5397 ;----- asm -----
                           5398 ; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5399 	; #ENR#[1306]c = 1;
                           5400 ;--- end asm ---
   1E4E C6 01         [ 2] 5401 	ldb	#1	;,
   1E50 E7 E8 13      [ 5] 5402 	stb	19,s	;, c
   1E53 16 FB 3A      [ 5] 5403 	lbra	L292	;
   1E56                    5404 L322:
   1E56 C6 0A         [ 2] 5405 	ldb	#10	;,
   1E58 BD 5E 21      [ 8] 5406 	jsr	_RandMax
   1E5B 5D            [ 2] 5407 	tstb	; D.3720
   1E5C 10 26 FC AF   [ 6] 5408 	lbne	L276	;
   1E60 8E 18 14      [ 3] 5409 	ldx	#LC127	;,
   1E63 BD 5A 71      [ 8] 5410 	jsr	_printMessage
   1E66 16 FC A6      [ 5] 5411 	lbra	L276	;
   1E69                    5412 L321:
                           5413 ;----- asm -----
                           5414 ; 1847 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5415 	; #ENR#[1346]printmessage();
                           5416 ;--- end asm ---
   1E69 8E 19 19      [ 3] 5417 	ldx	#LC142	;,
   1E6C BD 5A 71      [ 8] 5418 	jsr	_printMessage
                           5419 ;----- asm -----
                           5420 ; 1849 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5421 	; #ENR#[1347]pause(small_pause);
                           5422 ;--- end asm ---
   1E6F C6 4B         [ 2] 5423 	ldb	#75	;,
   1E71 BD 3D 31      [ 8] 5424 	jsr	_pause
                           5425 ;----- asm -----
                           5426 ; 1851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5427 	; #ENR#[1348]clearmessage();
                           5428 ;--- end asm ---
   1E74 7F C9 C2      [ 7] 5429 	clr	_msgLine	; msgLine
                           5430 ;----- asm -----
                           5431 ; 1853 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5432 	; #ENR#[1349]utmp =  randmax(tno*5)+1;
                           5433 ;--- end asm ---
   1E77 E6 E8 20      [ 5] 5434 	ldb	32,s	; tmp131, tno.499
   1E7A 58            [ 2] 5435 	aslb	; tmp131
   1E7B 58            [ 2] 5436 	aslb	; tmp131
   1E7C EB E8 20      [ 5] 5437 	addb	32,s	; tmp131, tno.499
   1E7F BD 5E 21      [ 8] 5438 	jsr	_RandMax
   1E82 5C            [ 2] 5439 	incb	; utmp.110
   1E83 F7 C8 FD      [ 5] 5440 	stb	_utmp	; utmp.110, utmp
                           5441 ;----- asm -----
                           5442 ; 1855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5443 	; #ENR#[1350]_fi_s(, utmp);
                           5444 ;--- end asm ---
   1E86 8E 19 28      [ 3] 5445 	ldx	#LC143	;,
   1E89 BD 5B BD      [ 8] 5446 	jsr	__fi_s
                           5447 ;----- asm -----
                           5448 ; 1857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5449 	; #ENR#[1351]printmessage(stringbuffer40);
                           5450 ;--- end asm ---
   1E8C 8E C8 BF      [ 3] 5451 	ldx	#_stringBuffer40	;,
   1E8F BD 5A 71      [ 8] 5452 	jsr	_printMessage
                           5453 ;----- asm -----
                           5454 ; 1859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5455 	; #ENR#[1352]ch = ch - ((signed long int) utmp);
                           5456 ;--- end asm ---
   1E92 F6 C8 FD      [ 5] 5457 	ldb	_utmp	;, utmp
   1E95 4F            [ 2] 5458 	clra		;zero_extendqihi: R:b -> R:d	;,
   1E96 1F 01         [ 6] 5459 	tfr	d,x	;, utmp
   1E98 FC C9 2D      [ 6] 5460 	ldd	_ch	; ch, ch
   1E9B 34 10         [ 6] 5461 	pshs	x	;subhi: R:d -= R:x	; utmp, ch.507
   1E9D A3 E1         [ 9] 5462 	subd	,s++	; ch.507
   1E9F FD C9 2D      [ 6] 5463 	std	_ch	; ch.507, ch
                           5464 ;----- asm -----
                           5465 ; 1861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5466 	; #ENR#[1353]if (ch<1)
                           5467 ;--- end asm ---
   1EA2 10 83 00 00   [ 5] 5468 	cmpd	#0	; ch.507
   1EA6 2F 1F         [ 3] 5469 	ble	L327	;
                           5470 ;----- asm -----
                           5471 ; 1869 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5472 	; #ENR#[1358]pause(small_pause);
                           5473 ;--- end asm ---
   1EA8 C6 4B         [ 2] 5474 	ldb	#75	;,
   1EAA BD 3D 31      [ 8] 5475 	jsr	_pause
                           5476 ;----- asm -----
                           5477 ; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5478 	; #ENR#[1359]return return_monster_stack;
                           5479 ;--- end asm ---
   1EAD C6 06         [ 2] 5480 	ldb	#6	; D.3712,
   1EAF 16 FA B2      [ 5] 5481 	lbra	L273	;
   1EB2                    5482 L326:
                           5483 ;----- asm -----
                           5484 ; 1789 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5485 	; #ENR#[1304]return return_monster_stack;
                           5486 ;--- end asm ---
   1EB2 C6 06         [ 2] 5487 	ldb	#6	; D.3712,
   1EB4 16 FA AD      [ 5] 5488 	lbra	L273	;
   1EB7                    5489 L325:
                           5490 ;----- asm -----
                           5491 ; 1757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5492 	; #ENR#[1284]printmessage();
                           5493 ;--- end asm ---
   1EB7 8E 18 CD      [ 3] 5494 	ldx	#LC138	;,
   1EBA BD 5A 71      [ 8] 5495 	jsr	_printMessage
                           5496 ;----- asm -----
                           5497 ; 1759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5498 	; #ENR#[1285]pause(small_pause);
                           5499 ;--- end asm ---
   1EBD C6 4B         [ 2] 5500 	ldb	#75	;,
   1EBF BD 3D 31      [ 8] 5501 	jsr	_pause
                           5502 ;----- asm -----
                           5503 ; 1761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5504 	; #ENR#[1286]return return_monster_stack;
                           5505 ;--- end asm ---
   1EC2 C6 06         [ 2] 5506 	ldb	#6	; D.3712,
   1EC4 16 FA 9D      [ 5] 5507 	lbra	L273	;
   1EC7                    5508 L327:
                           5509 ;----- asm -----
                           5510 ; 1864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5511 	; #ENR#[1355]pause(small_pause);
                           5512 ;--- end asm ---
   1EC7 C6 4B         [ 2] 5513 	ldb	#75	;,
   1EC9 BD 3D 31      [ 8] 5514 	jsr	_pause
                           5515 ;----- asm -----
                           5516 ; 1866 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5517 	; #ENR#[1356]return return_player_dead;
                           5518 ;--- end asm ---
   1ECC C6 02         [ 2] 5519 	ldb	#2	; D.3712,
   1ECE 16 FA 93      [ 5] 5520 	lbra	L273	;
   1ED1                    5521 L324:
                           5522 ;----- asm -----
                           5523 ; 1742 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5524 	; #ENR#[1272]pause(small_pause);
                           5525 ;--- end asm ---
   1ED1 C6 4B         [ 2] 5526 	ldb	#75	;,
   1ED3 BD 3D 31      [ 8] 5527 	jsr	_pause
                           5528 ;----- asm -----
                           5529 ; 1744 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5530 	; #ENR#[1273]return return_player_dead;
                           5531 ;--- end asm ---
   1ED6 C6 02         [ 2] 5532 	ldb	#2	; D.3712,
   1ED8 16 FA 89      [ 5] 5533 	lbra	L273	;
   1EDB                    5534 LC145:
   1EDB 52 45 45 4E 54 45  5535 	.ascii	"REENTER\0"
        52 00
   1EE3                    5536 LC146:
   1EE3 59 4F 55 20 46 45  5537 	.ascii	"YOU FEEL HEAVY FOR A MOMENT\0"
        45 4C 20 48 45 41
        56 59 20 46 4F 52
        20 41 20 4D 4F 4D
        45 4E 54 00
   1EFF                    5538 LC147:
   1EFF 59 4F 55 20 53 45  5539 	.ascii	"YOU SEE A PIT\0"
        45 20 41 20 50 49
        54 00
   1F0D                    5540 LC148:
   1F0D 59 4F 55 20 41 52  5541 	.ascii	"YOU ARE HOVERING ABOVE A PIT\0"
        45 20 48 4F 56 45
        52 49 4E 47 20 41
        42 4F 56 45 20 41
        20 50 49 54 00
   1F2A                    5542 LC149:
   1F2A 44 4F 20 59 4F 55  5543 	.ascii	"DO YOU WANT TO DESCEND? <4> YES\0"
        20 57 41 4E 54 20
        54 4F 20 44 45 53
        43 45 4E 44 3F 20
        3C 34 3E 20 59 45
        53 00
   1F4A                    5544 LC150:
   1F4A 59 45 53 00        5545 	.ascii	"YES\0"
   1F4E                    5546 LC151:
   1F4E 59 4F 55 20 46 41  5547 	.ascii	"YOU FALL IN!!\0"
        4C 4C 20 49 4E 21
        21 00
   1F5C                    5548 LC152:
   1F5C 59 4F 55 20 53 55  5549 	.ascii	"YOU SUFFER % HIT POINTS\0"
        46 46 45 52 20 25
        20 48 49 54 20 50
        4F 49 4E 54 53 00
   1F74                    5550 LC153:
   1F74 5A 5A 41 50 21 21  5551 	.ascii	"ZZAP!! YOU'VE BEEN TELEPORTED...\0"
        20 59 4F 55 27 56
        45 20 42 45 45 4E
        20 54 45 4C 45 50
        4F 52 54 45 44 2E
        2E 2E 00
   1F95                    5552 LC154:
   1F95 59 4F 55 20 48 41  5553 	.ascii	"YOU HAVE FOUND A CIRCULAR STAIRWAY\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 43
        49 52 43 55 4C 41
        52 20 53 54 41 49
        52 57 41 59 00
   1FB8                    5554 LC155:
   1FB8 59 4F 55 20 53 45  5555 	.ascii	"YOU SEE LIGHT ABOVE\0"
        45 20 4C 49 47 48
        54 20 41 42 4F 56
        45 00
   1FCC                    5556 LC156:
   1FCC 44 4F 20 59 4F 55  5557 	.ascii	"DO YOU WANT TO <1> GO UP, <4> GO DOWN\0"
        20 57 41 4E 54 20
        54 4F 20 3C 31 3E
        20 47 4F 20 55 50
        2C 20 3C 34 3E 20
        47 4F 20 44 4F 57
        4E 00
   1FF2                    5558 LC157:
   1FF2 44 4F 20 59 4F 55  5559 	.ascii	"DO YOU WANT TO <1> GO UP\0"
        20 57 41 4E 54 20
        54 4F 20 3C 31 3E
        20 47 4F 20 55 50
        00
   200B                    5560 LC158:
   200B 44 4F 20 59 4F 55  5561 	.ascii	"DO YOU WANT TO <4> GO DOWN\0"
        20 57 41 4E 54 20
        54 4F 20 3C 34 3E
        20 47 4F 20 44 4F
        57 4E 00
   2026                    5562 LC159:
   2026 4F 52 20 53 54 41  5563 	.ascii	"OR STAY ON THE SAME LEVEL?\0"
        59 20 4F 4E 20 54
        48 45 20 53 41 4D
        45 20 4C 45 56 45
        4C 3F 00
   2041                    5564 LC160:
   2041 44 4F 57 4E 00     5565 	.ascii	"DOWN\0"
   2046                    5566 LC161:
   2046 55 50 00           5567 	.ascii	"UP\0"
   2049                    5568 LC162:
   2049 53 54 41 59 00     5569 	.ascii	"STAY\0"
   204E                    5570 LC163:
   204E 59 4F 55 20 48 41  5571 	.ascii	"YOU HAVE FOUND A HOLY ALTAR\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 48
        4F 4C 59 20 41 4C
        54 41 52 00
   206A                    5572 LC164:
   206A 50 52 45 53 53 20  5573 	.ascii	"PRESS <4> TO WORSHIP\0"
        3C 34 3E 20 54 4F
        20 57 4F 52 53 48
        49 50 00
   207F                    5574 LC165:
   207F 50 52 45 53 53 20  5575 	.ascii	"PRESS <4> TO DONATE MONEY\0"
        3C 34 3E 20 54 4F
        20 44 4F 4E 41 54
        45 20 4D 4F 4E 45
        59 00
   2099                    5576 LC166:
   2099 48 4F 57 20 4D 55  5577 	.byte	72,79,87,32,77,85,67,72
        43 48
   20A1 20 47 4F 4C 44 3F  5578 	.byte	32,71,79,76,68,63,-128,0
        80 00
   20A9                    5579 LC167:
   20A9 59 4F 55 20 44 4F  5580 	.ascii	"YOU DON'T HAVE THAT MUCH!\0"
        4E 27 54 20 48 41
        56 45 20 54 48 41
        54 20 4D 55 43 48
        21 00
   20C3                    5581 LC168:
   20C3 59 4F 55 20 48 41  5582 	.ascii	"YOU HAVE BEEN HEARD\0"
        56 45 20 42 45 45
        4E 20 48 45 41 52
        44 00
   20D7                    5583 LC169:
   20D7 54 48 41 4E 4B 20  5584 	.ascii	"THANK YOU FOR YOUR DONATION\0"
        59 4F 55 20 46 4F
        52 20 59 4F 55 52
        20 44 4F 4E 41 54
        49 4F 4E 00
   20F3                    5585 LC170:
   20F3 44 49 52 54 59 20  5586 	.ascii	"DIRTY PAGAN TRASH!\0"
        50 41 47 41 4E 20
        54 52 41 53 48 21
        00
   2106                    5587 LC171:
   2106 59 4F 55 20 48 41  5588 	.ascii	"YOU HAVE FOUND A FOUNTAIN\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 46
        4F 55 4E 54 41 49
        4E 00
   2120                    5589 LC172:
   2120 57 49 54 48 20 52  5590 	.ascii	"WITH RUNNING % WATER\0"
        55 4E 4E 49 4E 47
        20 25 20 57 41 54
        45 52 00
   2135                    5591 LC173:
   2135 50 52 45 53 53 20  5592 	.ascii	"PRESS <4> TO DRINK\0"
        3C 34 3E 20 54 4F
        20 44 52 49 4E 4B
        00
   2148                    5593 LC174:
   2148 59 4F 55 20 46 45  5594 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   2158                    5595 LC175:
   2158 59 4F 55 20 48 45  5596 	.ascii	"YOU HEAL % HIT POINTS\0"
        41 4C 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   216E                    5597 LC176:
   216E 49 54 27 53 20 50  5598 	.ascii	"IT'S POISON!!!\0"
        4F 49 53 4F 4E 21
        21 21 00
   217D                    5599 LC177:
   217D 59 4F 55 20 4C 4F  5600 	.ascii	"YOU LOSE % HIT POINTS\0"
        53 45 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   2193                    5601 LC178:
   2193 59 4F 55 20 46 45  5602 	.ascii	"YOU FEEL REFRESHED!\0"
        45 4C 20 52 45 46
        52 45 53 48 45 44
        21 00
   21A7                    5603 LC179:
   21A7 41 43 54 55 41 4C  5604 	.ascii	"ACTUALLY YOU'RE DRUNK!!\0"
        4C 59 20 59 4F 55
        27 52 45 20 44 52
        55 4E 4B 21 21 00
   21BF                    5605 LC180:
   21BF 59 4F 55 20 48 41  5606 	.ascii	"YOU HAVE BEEN DISPOSESSED!\0"
        56 45 20 42 45 45
        4E 20 44 49 53 50
        4F 53 45 53 53 45
        44 21 00
   21DA                    5607 LC181:
   21DA 4D 41 47 49 43 20  5608 	.ascii	"MAGIC POWER SURGES THROUGH YOUR BODY\0"
        50 4F 57 45 52 20
        53 55 52 47 45 53
        20 54 48 52 4F 55
        47 48 20 59 4F 55
        52 20 42 4F 44 59
        00
   21FF                    5609 LC182:
   21FF 59 4F 55 20 4E 4F  5610 	.ascii	"YOU NOW HAVE % SPELLS\0"
        57 20 48 41 56 45
        20 25 20 53 50 45
        4C 4C 53 00
   2215                    5611 LC183:
   2215 59 4F 55 20 43 41  5612 	.ascii	"YOU CAN SEE A LARGE MISTY CUBE\0"
        4E 20 53 45 45 20
        41 20 4C 41 52 47
        45 20 4D 49 53 54
        59 20 43 55 42 45
        00
   2234                    5613 LC184:
   2234 3C 34 3E 20 54 4F  5614 	.ascii	"<4> TO WALK IN\0"
        20 57 41 4C 4B 20
        49 4E 00
   2243                    5615 LC185:
   2243 49 47 4E 4F 52 45  5616 	.ascii	"IGNORE\0"
        00
   224A                    5617 LC186:
   224A 41 20 4E 55 4D 42  5618 	.byte	65,32,78,85,77,66,69,82
        45 52
   2252 20 46 52 4F 4D 20  5619 	.byte	32,70,82,79,77,32,49,32
        31 20
   225A 54 4F 20 35 30 80  5620 	.byte	84,79,32,53,48,-128,0
        00
   2261                    5621 LC187:
   2261 59 4F 55 20 46 4C  5622 	.ascii	"YOU FLOAT IN SPACE ...\0"
        4F 41 54 20 49 4E
        20 53 50 41 43 45
        20 2E 2E 2E 00
   2278                    5623 LC188:
   2278 59 4F 55 20 53 45  5624 	.ascii	"YOU SEE A JEWEL ENCRUSTED THRONE\0"
        45 20 41 20 4A 45
        57 45 4C 20 45 4E
        43 52 55 53 54 45
        44 20 54 48 52 4F
        4E 45 00
   2299                    5625 LC189:
   2299 44 4F 20 59 4F 55  5626 	.ascii	"DO YOU WANT TO PRY<4> SOME JEWELS,\0"
        20 57 41 4E 54 20
        54 4F 20 50 52 59
        3C 34 3E 20 53 4F
        4D 45 20 4A 45 57
        45 4C 53 2C 00
   22BC                    5627 LC190:
   22BC 53 49 54 3C 33 3E  5628 	.ascii	"SIT<3> DOWN, READ<2> THE RUNES\0"
        20 44 4F 57 4E 2C
        20 52 45 41 44 3C
        32 3E 20 54 48 45
        20 52 55 4E 45 53
        00
   22DB                    5629 LC191:
   22DB 4F 52 20 49 47 4E  5630 	.ascii	"OR IGNORE<1> IT?\0"
        4F 52 45 3C 31 3E
        20 49 54 3F 00
   22EC                    5631 LC192:
   22EC 50 52 59 00        5632 	.ascii	"PRY\0"
   22F0                    5633 LC193:
   22F0 4E 4F 54 48 49 4E  5634 	.ascii	"NOTHING HAPPENS\0"
        47 20 48 41 50 50
        45 4E 53 00
   2300                    5635 LC194:
   2300 54 48 45 59 20 50  5636 	.ascii	"THEY POP INTO YOUR GREEDY HANDS!!\0"
        4F 50 20 49 4E 54
        4F 20 59 4F 55 52
        20 47 52 45 45 44
        59 20 48 41 4E 44
        53 21 21 00
   2322                    5637 LC195:
   2322 54 48 45 59 20 41  5638 	.ascii	"THEY ARE WORT % GOLD\0"
        52 45 20 57 4F 52
        54 20 25 20 47 4F
        4C 44 00
   2337                    5639 LC196:
   2337 53 49 54 00        5640 	.ascii	"SIT\0"
   233B                    5641 LC197:
   233B 54 48 45 20 25 20  5642 	.ascii	"THE % KING RETURNS\0"
        4B 49 4E 47 20 52
        45 54 55 52 4E 53
        00
   234E                    5643 LC198:
   234E 41 20 4C 4F 55 44  5644 	.ascii	"A LOUD GONG SOUNDS!\0"
        20 47 4F 4E 47 20
        53 4F 55 4E 44 53
        21 00
   2362                    5645 LC199:
   2362 52 45 41 44 00     5646 	.ascii	"READ\0"
   2367                    5647 LC200:
   2367 59 4F 55 20 44 4F  5648 	.ascii	"YOU DON'T UNDERSTAND THEM...\0"
        4E 27 54 20 55 4E
        44 45 52 53 54 41
        4E 44 20 54 48 45
        4D 2E 2E 2E 00
   2384                    5649 LC201:
   2384 41 20 4D 59 53 54  5650 	.ascii	"A MYSTERIOUS MAGIG GRIPS YOU..\0"
        45 52 49 4F 55 53
        20 4D 41 47 49 47
        20 47 52 49 50 53
        20 59 4F 55 2E 2E
        00
   23A3                    5651 LC202:
   23A3 59 4F 55 20 25 20  5652 	.ascii	"YOU % GOES DOWN BY 1\0"
        47 4F 45 53 20 44
        4F 57 4E 20 42 59
        20 31 00
   23B8                    5653 LC203:
   23B8 59 4F 55 20 25 20  5654 	.ascii	"YOU % GOES UP BY 1\0"
        47 4F 45 53 20 55
        50 20 42 59 20 31
        00
   23CB                    5655 LC204:
   23CB 59 4F 55 20 53 45  5656 	.ascii	"YOU SEE A SMALL BOX WITH FOUR COLORED\0"
        45 20 41 20 53 4D
        41 4C 4C 20 42 4F
        58 20 57 49 54 48
        20 46 4F 55 52 20
        43 4F 4C 4F 52 45
        44 00
   23F1                    5657 LC205:
   23F1 4C 49 47 48 54 53  5658 	.ascii	"LIGHTS. PUSH<4> BUTTONS OR IGNORE:\0"
        2E 20 50 55 53 48
        3C 34 3E 20 42 55
        54 54 4F 4E 53 20
        4F 52 20 49 47 4E
        4F 52 45 3A 00
   2414                    5659 LC206:
   2414 50 55 53 48 20 28  5660 	.ascii	"PUSH (UP/DOWN/LEFT/RIGHT)\0"
        55 50 2F 44 4F 57
        4E 2F 4C 45 46 54
        2F 52 49 47 48 54
        29 00
   242E                    5661 LC207:
   242E 3C 55 3E 52 45 44  5662 	.ascii	"<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE\0"
        2C 20 3C 44 3E 47
        52 45 45 4E 2C 20
        3C 4C 3E 59 45 4C
        4C 4F 57 2C 20 3C
        52 3E 42 4C 55 45
        00
   2453                    5663 LC208:
   2453 42 55 54 54 4F 4E  5664 	.ascii	"BUTTON TO STOP\0"
        20 54 4F 20 53 54
        4F 50 00
   2462                    5665 LC209:
   2462 53 54 4F 50 00     5666 	.ascii	"STOP\0"
   2467                    5667 LC210:
   2467 41 4E 20 45 4C 45  5668 	.ascii	"AN ELECTRIC BOLT SHOOTS THROUGH YOU!!\0"
        43 54 52 49 43 20
        42 4F 4C 54 20 53
        48 4F 4F 54 53 20
        54 48 52 4F 55 47
        48 20 59 4F 55 21
        21 00
   248D                    5669 LC211:
   248D 49 54 20 4F 50 45  5670 	.ascii	"IT OPENS!!\0"
        4E 53 21 21 00
   2498                    5671 LC212:
   2498 49 4E 53 49 44 45  5672 	.ascii	"INSIDE YOU FIND JEWELS WORTH\0"
        20 59 4F 55 20 46
        49 4E 44 20 4A 45
        57 45 4C 53 20 57
        4F 52 54 48 00
   24B5                    5673 LC213:
   24B5 25 20 49 4E 20 47  5674 	.ascii	"% IN GOLD!!\0"
        4F 4C 44 21 21 00
                           5675 	.globl	_handleSpecial
   24C1                    5676 _handleSpecial:
   24C1 34 60         [ 7] 5677 	pshs	y,u	;
   24C3 32 E8 BF      [ 5] 5678 	leas	-65,s	;,,
                           5679 ;----- asm -----
                           5680 ; 1905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5681 	; #ENR#[1385]clearmessage();
                           5682 ;--- end asm ---
   24C6 7F C9 C2      [ 7] 5683 	clr	_msgLine	; msgLine
                           5684 ;----- asm -----
                           5685 ; 1927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5686 	; #ENR#[1406]if (above == 4) goto dostaircase;
                           5687 ;--- end asm ---
   24C9 10 8E C8 8A   [ 4] 5688 	ldy	#_screen+10	; prephitmp.524,
   24CD F6 C8 A0      [ 5] 5689 	ldb	_above	;, above
   24D0 C1 04         [ 2] 5690 	cmpb	#4	;cmpqi:	;,
   24D2 27 2F         [ 3] 5691 	beq	L330	;
                           5692 ;----- asm -----
                           5693 ; 1930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5694 	; #ENR#[1408]switch (map11_hi)
                           5695 ;--- end asm ---
   24D4 10 8E C8 8A   [ 4] 5696 	ldy	#_screen+10	; prephitmp.524,
   24D8 E6 A4         [ 4] 5697 	ldb	,y	;,* prephitmp.524
   24DA C1 09         [ 2] 5698 	cmpb	#9	;cmpqi:	;,
   24DC 23 06         [ 3] 5699 	bls	L453	;
   24DE                    5700 L331:
                           5701 ;----- asm -----
                           5702 ; 3031 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5703 	; #ENR#[2187]break;
                           5704 ;--- end asm ---
   24DE                    5705 L431:
                           5706 ;----- asm -----
                           5707 ; 3035 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5708 	; #ENR#[2190]return return_nothing;
                           5709 ;--- end asm ---
   24DE 5F            [ 2] 5710 	clrb	; D.3825
   24DF                    5711 L345:
   24DF 32 E8 41      [ 5] 5712 	leas	65,s	;,,
   24E2 35 E0         [ 8] 5713 	puls	y,u,pc	;
   24E4                    5714 L453:
   24E4 4F            [ 2] 5715 	clra		;zero_extendqihi: R:b -> R:d	;,
   24E5 ED E4         [ 5] 5716 	std	,s	;,
   24E7 58            [ 2] 5717 	aslb	;
   24E8 49            [ 2] 5718 	rola	;
   24E9 1F 01         [ 6] 5719 	tfr	d,x	;, tmp198
   24EB 6E 99 24 EF   [10] 5720 	jmp	[L341,x]	;, tmp198
   24EF                    5721 L341:
   24EF 24 DE              5722 	.word	L331
   24F1 26 E9              5723 	.word	L332
   24F3 28 3E              5724 	.word	L333
   24F5 27 7B              5725 	.word	L334
   24F7 25 03              5726 	.word	L335
   24F9 26 7A              5727 	.word	L336
   24FB 26 3B              5728 	.word	L337
   24FD 26 16              5729 	.word	L338
   24FF 27 35              5730 	.word	L339
   2501 27 08              5731 	.word	L340
   2503                    5732 L335:
                           5733 ;----- asm -----
                           5734 ; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5735 	; #ENR#[1574]dostaircase:
                           5736 ;--- end asm ---
   2503                    5737 L330:
                           5738 ;----- asm -----
                           5739 ; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5740 	; #ENR#[1581]printmessage();
                           5741 ;--- end asm ---
   2503 8E 1F 95      [ 3] 5742 	ldx	#LC154	;,
   2506 BD 5A 71      [ 8] 5743 	jsr	_printMessage
                           5744 ;----- asm -----
                           5745 ; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5746 	; #ENR#[1585]if ((above == 4) && (cz==1))
                           5747 ;--- end asm ---
   2509 F6 C8 A0      [ 5] 5748 	ldb	_above	;, above
   250C C1 04         [ 2] 5749 	cmpb	#4	;cmpqi:	;,
   250E 10 27 00 F2   [ 6] 5750 	lbeq	L454	;
   2512                    5751 L363:
                           5752 ;----- asm -----
                           5753 ; 2185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5754 	; #ENR#[1587]pause(small_pause);
                           5755 ;--- end asm ---
   2512 C6 4B         [ 2] 5756 	ldb	#75	;,
   2514 BD 3D 31      [ 8] 5757 	jsr	_pause
                           5758 ;----- asm -----
                           5759 ; 2187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5760 	; #ENR#[1588]clearmessage();
                           5761 ;--- end asm ---
   2517 7F C9 C2      [ 7] 5762 	clr	_msgLine	; msgLine
                           5763 ;----- asm -----
                           5764 ; 2195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5765 	; #ENR#[1595]if ((above==4) && (map11_hi==4))
                           5766 ;--- end asm ---
   251A F6 C8 A0      [ 5] 5767 	ldb	_above	;, above
   251D C1 04         [ 2] 5768 	cmpb	#4	;cmpqi:	;,
   251F 10 27 00 D0   [ 6] 5769 	lbeq	L455	;
   2523 E6 A4         [ 4] 5770 	ldb	,y	;,* prephitmp.524
   2525 C1 04         [ 2] 5771 	cmpb	#4	;cmpqi:	;,
   2527 10 27 03 D1   [ 6] 5772 	lbeq	L456	;
   252B                    5773 L366:
                           5774 ;----- asm -----
                           5775 ; 2211 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5776 	; #ENR#[1607]printmessage();
                           5777 ;--- end asm ---
   252B 8E 20 26      [ 3] 5778 	ldx	#LC159	;,
   252E BD 5A 71      [ 8] 5779 	jsr	_printMessage
                           5780 ;----- asm -----
                           5781 ; 2214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5782 	; #ENR#[1609]tmp = testforbutton(2);
                           5783 ; 164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5784 	; #ENR#[163]signed int p = 0;
                           5785 ; 166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5786 	; #ENR#[164]signed int t = 0;
                           5787 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5788 	; #ENR#[166]localtimer = action_time;
                           5789 ;--- end asm ---
   2531 C6 96         [ 2] 5790 	ldb	#-106	;,
   2533 F7 C8 A8      [ 5] 5791 	stb	_localTimer	;, localTimer
                           5792 ;----- asm -----
                           5793 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5794 	; #ENR#[167]do
                           5795 ;--- end asm ---
   2536 6F E8 29      [ 7] 5796 	clr	41,s	; p
   2539 6F E8 27      [ 7] 5797 	clr	39,s	; d
   253C 16 00 7B      [ 5] 5798 	lbra	L375	;
   253F                    5799 L457:
                           5800 ;----- asm -----
                           5801 ; 188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5802 	; #ENR#[180]if (button_1_4_pressed()) {t = 4;p = 1;}
                           5803 ;--- end asm ---
   253F F6 C8 11      [ 5] 5804 	ldb	_Vec_Buttons	;, Vec_Buttons
   2542 E7 E8 2A      [ 5] 5805 	stb	42,s	;, D.5113
   2545 C5 08         [ 2] 5806 	bitb	#8	;,
   2547 27 0A         [ 3] 5807 	beq	L368	;
   2549 C6 01         [ 2] 5808 	ldb	#1	;,
   254B E7 E8 29      [ 5] 5809 	stb	41,s	;, p
   254E C6 04         [ 2] 5810 	ldb	#4	;,
   2550 E7 E8 27      [ 5] 5811 	stb	39,s	;, d
   2553                    5812 L368:
                           5813 ;----- asm -----
                           5814 ; 190 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5815 	; #ENR#[181]if (button_1_3_pressed()) {t = 3;p = 1;}
                           5816 ;--- end asm ---
   2553 C6 04         [ 2] 5817 	ldb	#4	; tmp220,
   2555 E4 E8 2A      [ 5] 5818 	andb	42,s	; tmp220, D.5113
   2558 27 0A         [ 3] 5819 	beq	L369	;
   255A C6 01         [ 2] 5820 	ldb	#1	;,
   255C E7 E8 29      [ 5] 5821 	stb	41,s	;, p
   255F C6 03         [ 2] 5822 	ldb	#3	;,
   2561 E7 E8 27      [ 5] 5823 	stb	39,s	;, d
   2564                    5824 L369:
                           5825 ;----- asm -----
                           5826 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5827 	; #ENR#[182]if (button_1_2_pressed()) {t = 2;p = 1;}
                           5828 ;--- end asm ---
   2564 C6 02         [ 2] 5829 	ldb	#2	; tmp221,
   2566 E4 E8 2A      [ 5] 5830 	andb	42,s	; tmp221, D.5113
   2569 27 0A         [ 3] 5831 	beq	L370	;
   256B C6 01         [ 2] 5832 	ldb	#1	;,
   256D E7 E8 29      [ 5] 5833 	stb	41,s	;, p
   2570 C6 02         [ 2] 5834 	ldb	#2	;,
   2572 E7 E8 27      [ 5] 5835 	stb	39,s	;, d
   2575                    5836 L370:
                           5837 ;----- asm -----
                           5838 ; 194 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5839 	; #ENR#[183]if (button_1_1_pressed()) {t = 1;p = 1;}
                           5840 ;--- end asm ---
   2575 C6 01         [ 2] 5841 	ldb	#1	; tmp222,
   2577 E4 E8 2A      [ 5] 5842 	andb	42,s	; tmp222, D.5113
   257A 27 08         [ 3] 5843 	beq	L371	;
   257C C6 01         [ 2] 5844 	ldb	#1	;,
   257E E7 E8 29      [ 5] 5845 	stb	41,s	;, p
   2581 E7 E8 27      [ 5] 5846 	stb	39,s	;, d
   2584                    5847 L371:
                           5848 ;----- asm -----
                           5849 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5850 	; #ENR#[189]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           5851 ;--- end asm ---
   2584 F6 C8 1B      [ 5] 5852 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   2587 E7 E8 28      [ 5] 5853 	stb	40,s	;, Vec_Joy_1_X.4
   258A 27 0A         [ 3] 5854 	beq	L372	;
   258C C6 01         [ 2] 5855 	ldb	#1	;,
   258E E7 E8 29      [ 5] 5856 	stb	41,s	;, p
   2591 C6 05         [ 2] 5857 	ldb	#5	;,
   2593 E7 E8 27      [ 5] 5858 	stb	39,s	;, d
   2596                    5859 L372:
                           5860 ;----- asm -----
                           5861 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5862 	; #ENR#[190]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           5863 ;--- end asm ---
   2596 F6 C8 1C      [ 5] 5864 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   2599 E7 62         [ 5] 5865 	stb	2,s	;, Vec_Joy_1_Y.5
   259B 27 0A         [ 3] 5866 	beq	L373	;
   259D C6 01         [ 2] 5867 	ldb	#1	;,
   259F E7 E8 29      [ 5] 5868 	stb	41,s	;, p
   25A2 C6 05         [ 2] 5869 	ldb	#5	;,
   25A4 E7 E8 27      [ 5] 5870 	stb	39,s	;, d
   25A7                    5871 L373:
                           5872 ;----- asm -----
                           5873 ; 207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5874 	; #ENR#[193]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           5875 ;--- end asm ---
   25A7 6D E8 29      [ 7] 5876 	tst	41,s	; p
   25AA 27 0E         [ 3] 5877 	beq	L374	;
   25AC 6D E8 28      [ 7] 5878 	tst	40,s	; Vec_Joy_1_X.4
   25AF 26 09         [ 3] 5879 	bne	L374	;
   25B1 6D 62         [ 7] 5880 	tst	2,s	; Vec_Joy_1_Y.5
   25B3 26 05         [ 3] 5881 	bne	L374	;
   25B5 6D E8 2A      [ 7] 5882 	tst	42,s	; D.5113
   25B8 27 0E         [ 3] 5883 	beq	L367	;
   25BA                    5884 L374:
                           5885 ;----- asm -----
                           5886 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5887 	; #ENR#[198]while (1);
                           5888 ;--- end asm ---
   25BA                    5889 L375:
                           5890 ;----- asm -----
                           5891 ; 174 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5892 	; #ENR#[169]displayround();
                           5893 ;--- end asm ---
   25BA BD 3C BC      [ 8] 5894 	jsr	_displayRound
                           5895 ;----- asm -----
                           5896 ; 176 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5897 	; #ENR#[170]if (d!=0) localtimer--;
                           5898 ;--- end asm ---
   25BD 7A C8 A8      [ 7] 5899 	dec	_localTimer	; localTimer
   25C0 F6 C8 A8      [ 5] 5900 	ldb	_localTimer	; localTimer.3, localTimer
                           5901 ;----- asm -----
                           5902 ; 179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5903 	; #ENR#[172]if (localtimer == 0) break;
                           5904 ;--- end asm ---
   25C3 5D            [ 2] 5905 	tstb	; localTimer.3
   25C4 10 26 FF 77   [ 6] 5906 	lbne	L457	;
   25C8                    5907 L367:
                           5908 ;----- asm -----
                           5909 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5910 	; #ENR#[200]if (t == 0) return d;
                           5911 ;--- end asm ---
   25C8 6D E8 27      [ 7] 5912 	tst	39,s	; d
   25CB 27 1F         [ 3] 5913 	beq	L458	;
                           5914 ;----- asm -----
                           5915 ; 218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5916 	; #ENR#[201]return t;
                           5917 ;--- end asm ---
   25CD E6 E8 27      [ 5] 5918 	ldb	39,s	;, d
   25D0                    5919 L377:
   25D0 F7 C8 FE      [ 5] 5920 	stb	_tmp	;, tmp
                           5921 ;----- asm -----
                           5922 ; 2219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5923 	; #ENR#[1613]if ((tmp == 4) && (map11_hi==4))
                           5924 ;--- end asm ---
   25D3 C1 04         [ 2] 5925 	cmpb	#4	;cmpqi:	;,
   25D5 10 27 02 FB   [ 6] 5926 	lbeq	L459	;
   25D9 C1 01         [ 2] 5927 	cmpb	#1	;cmpqi:	;,
   25DB 10 27 02 CC   [ 6] 5928 	lbeq	L460	;
   25DF                    5929 L379:
                           5930 ;----- asm -----
                           5931 ; 2266 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5932 	; #ENR#[1646]printmessage();
                           5933 ;--- end asm ---
   25DF 8E 20 49      [ 3] 5934 	ldx	#LC162	;,
   25E2 BD 5A 71      [ 8] 5935 	jsr	_printMessage
                           5936 ;----- asm -----
                           5937 ; 2268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5938 	; #ENR#[1647]return return_pause;
                           5939 ;--- end asm ---
   25E5 C6 07         [ 2] 5940 	ldb	#7	; D.3825,
   25E7 32 E8 41      [ 5] 5941 	leas	65,s	;,,
   25EA 35 E0         [ 8] 5942 	puls	y,u,pc	;
   25EC                    5943 L458:
   25EC C6 02         [ 2] 5944 	ldb	#2	;,
   25EE E7 E8 27      [ 5] 5945 	stb	39,s	;, d
   25F1 20 DD         [ 3] 5946 	bra	L377	;
   25F3                    5947 L455:
   25F3 E6 A4         [ 4] 5948 	ldb	,y	;,* prephitmp.524
   25F5 C1 04         [ 2] 5949 	cmpb	#4	;cmpqi:	;,
   25F7 10 27 05 9F   [ 6] 5950 	lbeq	L461	;
                           5951 ;----- asm -----
                           5952 ; 2203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5953 	; #ENR#[1601]printmessage();
                           5954 ;--- end asm ---
   25FB 8E 1F F2      [ 3] 5955 	ldx	#LC157	;,
   25FE BD 5A 71      [ 8] 5956 	jsr	_printMessage
   2601 16 FF 27      [ 5] 5957 	lbra	L366	;
   2604                    5958 L454:
   2604 F6 C9 3A      [ 5] 5959 	ldb	_cz	;, cz
   2607 C1 01         [ 2] 5960 	cmpb	#1	;cmpqi:	;,
   2609 10 26 FF 05   [ 6] 5961 	lbne	L363	;
   260D 8E 1F B8      [ 3] 5962 	ldx	#LC155	;,
   2610 BD 5A 71      [ 8] 5963 	jsr	_printMessage
   2613 16 FE FC      [ 5] 5964 	lbra	L363	;
   2616                    5965 L338:
                           5966 ;----- asm -----
                           5967 ; 2564 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5968 	; #ENR#[1856]printmessage();
                           5969 ;--- end asm ---
   2616 8E 22 15      [ 3] 5970 	ldx	#LC183	;,
   2619 BD 5A 71      [ 8] 5971 	jsr	_printMessage
                           5972 ;----- asm -----
                           5973 ; 2566 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5974 	; #ENR#[1857]printmessage();
                           5975 ;--- end asm ---
   261C 8E 22 34      [ 3] 5976 	ldx	#LC184	;,
   261F BD 5A 71      [ 8] 5977 	jsr	_printMessage
                           5978 ;----- asm -----
                           5979 ; 2568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5980 	; #ENR#[1858]tmp = testforbutton(1);
                           5981 ;--- end asm ---
   2622 C6 01         [ 2] 5982 	ldb	#1	;,
   2624 BD 04 AF      [ 8] 5983 	jsr	_testForButton
   2627 F7 C8 FE      [ 5] 5984 	stb	_tmp	; tmp.159, tmp
                           5985 ;----- asm -----
                           5986 ; 2570 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5987 	; #ENR#[1859]if (tmp != 4)
                           5988 ;--- end asm ---
   262A C1 04         [ 2] 5989 	cmpb	#4	;cmpqi:	; tmp.159,
   262C 10 27 05 25   [ 6] 5990 	lbeq	L407	;
                           5991 ;----- asm -----
                           5992 ; 2573 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5993 	; #ENR#[1861]printmessage();
                           5994 ;--- end asm ---
   2630 8E 22 43      [ 3] 5995 	ldx	#LC185	;,
   2633 BD 5A 71      [ 8] 5996 	jsr	_printMessage
                           5997 ;----- asm -----
                           5998 ; 2575 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5999 	; #ENR#[1862]return return_pause;
                           6000 ;--- end asm ---
   2636 C6 07         [ 2] 6001 	ldb	#7	; D.3825,
   2638 16 FE A4      [ 5] 6002 	lbra	L345	;
   263B                    6003 L337:
                           6004 ;----- asm -----
                           6005 ; 2399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6006 	; #ENR#[1739]printmessage();
                           6007 ;--- end asm ---
   263B 8E 21 06      [ 3] 6008 	ldx	#LC171	;,
   263E BD 5A 71      [ 8] 6009 	jsr	_printMessage
                           6010 ;----- asm -----
                           6011 ; 2404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6012 	; #ENR#[1743]tmp2 = (signed int)randmax(5);
                           6013 ;--- end asm ---
   2641 C6 05         [ 2] 6014 	ldb	#5	;,
   2643 BD 5E 21      [ 8] 6015 	jsr	_RandMax
   2646 F7 C8 FF      [ 5] 6016 	stb	_tmp2	; D.3895, tmp2
                           6017 ;----- asm -----
                           6018 ; 2406 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6019 	; #ENR#[1744]_fs(, fountain[tmp2]);
                           6020 ;--- end asm ---
   2649 1D            [ 2] 6021 	sex		;extendqihi2: R:b -> R:d	; D.3895, tmp2.149
   264A 58            [ 2] 6022 	aslb	;
   264B 49            [ 2] 6023 	rola	;
   264C 1F 01         [ 6] 6024 	tfr	d,x	; tmp2.149, tmp245
   264E AE 89 04 81   [ 9] 6025 	ldx	_fountain,x	;, fountain
   2652 AF E3         [ 8] 6026 	stx	,--s	;,
   2654 8E 21 20      [ 3] 6027 	ldx	#LC172	;,
   2657 BD 5B 50      [ 8] 6028 	jsr	__fs
                           6029 ;----- asm -----
                           6030 ; 2408 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6031 	; #ENR#[1745]printmessage(stringbuffer40);
                           6032 ;--- end asm ---
   265A 8E C8 BF      [ 3] 6033 	ldx	#_stringBuffer40	;,
   265D BD 5A 71      [ 8] 6034 	jsr	_printMessage
                           6035 ;----- asm -----
                           6036 ; 2413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6037 	; #ENR#[1749]printmessage();
                           6038 ;--- end asm ---
   2660 8E 21 35      [ 3] 6039 	ldx	#LC173	;,
   2663 BD 5A 71      [ 8] 6040 	jsr	_printMessage
                           6041 ;----- asm -----
                           6042 ; 2415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6043 	; #ENR#[1750]tmp = testforbutton(0);
                           6044 ;--- end asm ---
   2666 5F            [ 2] 6045 	clrb	;
   2667 BD 04 AF      [ 8] 6046 	jsr	_testForButton
   266A F7 C8 FE      [ 5] 6047 	stb	_tmp	; tmp.150, tmp
                           6048 ;----- asm -----
                           6049 ; 2417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6050 	; #ENR#[1751]if (tmp != 4)
                           6051 ;--- end asm ---
   266D 32 62         [ 5] 6052 	leas	2,s	;,,
   266F C1 04         [ 2] 6053 	cmpb	#4	;cmpqi:	; tmp.150,
   2671 10 27 06 37   [ 6] 6054 	lbeq	L393	;
                           6055 ;----- asm -----
                           6056 ; 2422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6057 	; #ENR#[1755]return return_pause;
                           6058 ;--- end asm ---
   2675 C6 07         [ 2] 6059 	ldb	#7	; D.3825,
   2677 16 FE 65      [ 5] 6060 	lbra	L345	;
   267A                    6061 L336:
                           6062 ;----- asm -----
                           6063 ; 2281 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6064 	; #ENR#[1658]printmessage();
                           6065 ;--- end asm ---
   267A 8E 20 4E      [ 3] 6066 	ldx	#LC163	;,
   267D BD 5A 71      [ 8] 6067 	jsr	_printMessage
                           6068 ;----- asm -----
                           6069 ; 2283 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6070 	; #ENR#[1659]printmessage();
                           6071 ;--- end asm ---
   2680 8E 20 6A      [ 3] 6072 	ldx	#LC164	;,
   2683 BD 5A 71      [ 8] 6073 	jsr	_printMessage
                           6074 ;----- asm -----
                           6075 ; 2285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6076 	; #ENR#[1660]tmp = testforbutton(0);
                           6077 ;--- end asm ---
   2686 5F            [ 2] 6078 	clrb	;
   2687 BD 04 AF      [ 8] 6079 	jsr	_testForButton
   268A F7 C8 FE      [ 5] 6080 	stb	_tmp	; tmp.138, tmp
                           6081 ;----- asm -----
                           6082 ; 2287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6083 	; #ENR#[1661]if (tmp == 4)
                           6084 ;--- end asm ---
   268D C1 04         [ 2] 6085 	cmpb	#4	;cmpqi:	; tmp.138,
   268F 10 27 05 2D   [ 6] 6086 	lbeq	L462	;
                           6087 ;----- asm -----
                           6088 ; 2354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6089 	; #ENR#[1709]nomoneynoworship:
                           6090 ;--- end asm ---
   2693                    6091 L382:
                           6092 ;----- asm -----
                           6093 ; 2358 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6094 	; #ENR#[1712]if (randmax(100)>70)
                           6095 ;--- end asm ---
   2693 C6 64         [ 2] 6096 	ldb	#100	;,
   2695 BD 5E 21      [ 8] 6097 	jsr	_RandMax
   2698 C1 46         [ 2] 6098 	cmpb	#70	;cmpqi:	; D.3888,
   269A 10 22 02 67   [ 6] 6099 	lbhi	L463	;
                           6100 ;----- asm -----
                           6101 ; 2368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6102 	; #ENR#[1720]dirtypagantrash:
                           6103 ;--- end asm ---
   269E                    6104 L385:
                           6105 ;----- asm -----
                           6106 ; 2370 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6107 	; #ENR#[1721]printmessage();
                           6108 ;--- end asm ---
   269E 8E 20 F3      [ 3] 6109 	ldx	#LC170	;,
   26A1 BD 5A 71      [ 8] 6110 	jsr	_printMessage
                           6111 ;----- asm -----
                           6112 ; 2372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6113 	; #ENR#[1722]pause(small_pause);
                           6114 ;--- end asm ---
   26A4 C6 4B         [ 2] 6115 	ldb	#75	;,
   26A6 BD 3D 31      [ 8] 6116 	jsr	_pause
                           6117 ;----- asm -----
                           6118 ; 2374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6119 	; #ENR#[1723]clearmessage();
                           6120 ;--- end asm ---
   26A9 7F C9 C2      [ 7] 6121 	clr	_msgLine	; msgLine
                           6122 ;----- asm -----
                           6123 ; 2376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6124 	; #ENR#[1724]#ifndef no_monster
                           6125 ; 2378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6126 	; #ENR#[1725]un = 0;
                           6127 ;--- end asm ---
   26AC 7F C9 69      [ 7] 6128 	clr	_un	; un
                           6129 ;----- asm -----
                           6130 ; 2380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6131 	; #ENR#[1726]while (un == 0)
                           6132 ;--- end asm ---
   26AF                    6133 L392:
                           6134 ;----- asm -----
                           6135 ; 2383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6136 	; #ENR#[1728]m = (signed int)randmax(20);
                           6137 ;--- end asm ---
   26AF C6 14         [ 2] 6138 	ldb	#20	;,
   26B1 BD 5E 21      [ 8] 6139 	jsr	_RandMax
   26B4 F7 C9 62      [ 5] 6140 	stb	_m	; D.3889, m
                           6141 ;----- asm -----
                           6142 ; 2385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6143 	; #ENR#[1729]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
                           6144 ;--- end asm ---
   26B7 C1 02         [ 2] 6145 	cmpb	#2	;cmpqi:	; D.3889,
   26B9 10 27 02 68   [ 6] 6146 	lbeq	L389	;
   26BD C1 04         [ 2] 6147 	cmpb	#4	;cmpqi:	; D.3889,
   26BF 10 27 02 62   [ 6] 6148 	lbeq	L389	;
   26C3 C1 07         [ 2] 6149 	cmpb	#7	;cmpqi:	; D.3889,
   26C5 10 27 02 5C   [ 6] 6150 	lbeq	L389	;
   26C9 C1 09         [ 2] 6151 	cmpb	#9	;cmpqi:	; D.3889,
   26CB 10 27 02 56   [ 6] 6152 	lbeq	L389	;
   26CF C1 0C         [ 2] 6153 	cmpb	#12	;cmpqi:	; D.3889,
   26D1 10 27 02 50   [ 6] 6154 	lbeq	L389	;
   26D5 C1 10         [ 2] 6155 	cmpb	#16	;cmpqi:	; D.3889,
   26D7 10 27 02 4A   [ 6] 6156 	lbeq	L389	;
   26DB C1 11         [ 2] 6157 	cmpb	#17	;cmpqi:	; D.3889,
   26DD 10 27 02 44   [ 6] 6158 	lbeq	L389	;
   26E1 7D C9 69      [ 7] 6159 	tst	_un	; un
   26E4 27 C9         [ 3] 6160 	beq	L392	;
   26E6 16 02 41      [ 5] 6161 	lbra	L391	;
   26E9                    6162 L332:
                           6163 ;----- asm -----
                           6164 ; 1937 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6165 	; #ENR#[1413]if (cz != 1) goto doelevator;
                           6166 ;--- end asm ---
   26E9 F6 C9 3A      [ 5] 6167 	ldb	_cz	;, cz
   26EC C1 01         [ 2] 6168 	cmpb	#1	;cmpqi:	;,
   26EE 10 27 02 3D   [ 6] 6169 	lbeq	L464	;
   26F2                    6170 L342:
                           6171 ;----- asm -----
                           6172 ; 1982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6173 	; #ENR#[1442]printmessage();
                           6174 ;--- end asm ---
   26F2 8E 1E E3      [ 3] 6175 	ldx	#LC146	;,
   26F5 BD 5A 71      [ 8] 6176 	jsr	_printMessage
                           6177 ;----- asm -----
                           6178 ; 1984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6179 	; #ENR#[1443]elevator();
                           6180 ;--- end asm ---
   26F8 BD 3C E9      [ 8] 6181 	jsr	_elevator
                           6182 ;----- asm -----
                           6183 ; 1986 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6184 	; #ENR#[1444]cz=cz-1;
                           6185 ;--- end asm ---
   26FB 7A C9 3A      [ 7] 6186 	dec	_cz	; cz
                           6187 ;----- asm -----
                           6188 ; 1988 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6189 	; #ENR#[1445]fillmap =go_redraw;
                           6190 ;--- end asm ---
   26FE C6 7F         [ 2] 6191 	ldb	#127	;,
   2700 F7 C8 FC      [ 5] 6192 	stb	_fillMap	;, fillMap
                           6193 ;----- asm -----
                           6194 ; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6195 	; #ENR#[1447]return return_new_turn;
                           6196 ;--- end asm ---
   2703 C6 01         [ 2] 6197 	ldb	#1	; D.3825,
   2705 16 FD D7      [ 5] 6198 	lbra	L345	;
   2708                    6199 L340:
                           6200 ;----- asm -----
                           6201 ; 2874 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6202 	; #ENR#[2075]printmessage();
                           6203 ;--- end asm ---
   2708 8E 23 CB      [ 3] 6204 	ldx	#LC204	;,
   270B BD 5A 71      [ 8] 6205 	jsr	_printMessage
                           6206 ;----- asm -----
                           6207 ; 2876 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6208 	; #ENR#[2076]printmessage();
                           6209 ;--- end asm ---
   270E 8E 23 F1      [ 3] 6210 	ldx	#LC205	;,
   2711 BD 5A 71      [ 8] 6211 	jsr	_printMessage
                           6212 ;----- asm -----
                           6213 ; 2879 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6214 	; #ENR#[2078]specialaction = special_box;
                           6215 ;--- end asm ---
   2714 C6 02         [ 2] 6216 	ldb	#2	;,
   2716 F7 C8 A5      [ 5] 6217 	stb	_specialAction	;, specialAction
                           6218 ;----- asm -----
                           6219 ; 2881 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6220 	; #ENR#[2079]tmp = testforbutton(1);
                           6221 ;--- end asm ---
   2719 C6 01         [ 2] 6222 	ldb	#1	;,
   271B BD 04 AF      [ 8] 6223 	jsr	_testForButton
   271E F7 C8 FE      [ 5] 6224 	stb	_tmp	; tmp413, tmp
                           6225 ;----- asm -----
                           6226 ; 2883 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6227 	; #ENR#[2080]specialaction = 0;
                           6228 ;--- end asm ---
   2721 7F C8 A5      [ 7] 6229 	clr	_specialAction	; specialAction
                           6230 ;----- asm -----
                           6231 ; 2887 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6232 	; #ENR#[2083]if (tmp != 4)
                           6233 ;--- end asm ---
   2724 C1 04         [ 2] 6234 	cmpb	#4	;cmpqi:	; tmp413,
   2726 10 27 02 0D   [ 6] 6235 	lbeq	L432	;
                           6236 ;----- asm -----
                           6237 ; 2890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6238 	; #ENR#[2085]printmessage();
                           6239 ;--- end asm ---
   272A 8E 22 43      [ 3] 6240 	ldx	#LC185	;,
   272D BD 5A 71      [ 8] 6241 	jsr	_printMessage
                           6242 ;----- asm -----
                           6243 ; 2892 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6244 	; #ENR#[2086]return return_pause;
                           6245 ;--- end asm ---
   2730 C6 07         [ 2] 6246 	ldb	#7	; D.3825,
   2732 16 FD AA      [ 5] 6247 	lbra	L345	;
   2735                    6248 L339:
                           6249 ;----- asm -----
                           6250 ; 2635 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6251 	; #ENR#[1907]printmessage();
                           6252 ;--- end asm ---
   2735 8E 22 78      [ 3] 6253 	ldx	#LC188	;,
   2738 BD 5A 71      [ 8] 6254 	jsr	_printMessage
                           6255 ;----- asm -----
                           6256 ; 2637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6257 	; #ENR#[1908]pause(small_pause);
                           6258 ;--- end asm ---
   273B C6 4B         [ 2] 6259 	ldb	#75	;,
   273D BD 3D 31      [ 8] 6260 	jsr	_pause
                           6261 ;----- asm -----
                           6262 ; 2639 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6263 	; #ENR#[1909]clearmessage();
                           6264 ;--- end asm ---
   2740 7F C9 C2      [ 7] 6265 	clr	_msgLine	; msgLine
                           6266 ;----- asm -----
                           6267 ; 2641 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6268 	; #ENR#[1910]printmessage();
                           6269 ;--- end asm ---
   2743 8E 22 99      [ 3] 6270 	ldx	#LC189	;,
   2746 BD 5A 71      [ 8] 6271 	jsr	_printMessage
                           6272 ;----- asm -----
                           6273 ; 2643 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6274 	; #ENR#[1911]printmessage();
                           6275 ;--- end asm ---
   2749 8E 22 BC      [ 3] 6276 	ldx	#LC190	;,
   274C BD 5A 71      [ 8] 6277 	jsr	_printMessage
                           6278 ;----- asm -----
                           6279 ; 2645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6280 	; #ENR#[1912]printmessage();
                           6281 ;--- end asm ---
   274F 8E 22 DB      [ 3] 6282 	ldx	#LC191	;,
   2752 BD 5A 71      [ 8] 6283 	jsr	_printMessage
                           6284 ;----- asm -----
                           6285 ; 2648 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6286 	; #ENR#[1914]tmp = testforbutton(1);
                           6287 ;--- end asm ---
   2755 C6 01         [ 2] 6288 	ldb	#1	;,
   2757 BD 04 AF      [ 8] 6289 	jsr	_testForButton
   275A F7 C8 FE      [ 5] 6290 	stb	_tmp	; tmp.163, tmp
                           6291 ;----- asm -----
                           6292 ; 2650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6293 	; #ENR#[1915]clearmessage();
                           6294 ;--- end asm ---
   275D 7F C9 C2      [ 7] 6295 	clr	_msgLine	; msgLine
                           6296 ;----- asm -----
                           6297 ; 2652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6298 	; #ENR#[1916]if (tmp == 1)
                           6299 ;--- end asm ---
   2760 C1 01         [ 2] 6300 	cmpb	#1	;cmpqi:	; tmp.163,
   2762 10 27 03 C7   [ 6] 6301 	lbeq	L465	;
                           6302 ;----- asm -----
                           6303 ; 2662 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6304 	; #ENR#[1923]if (tmp == 4)
                           6305 ;--- end asm ---
   2766 C1 04         [ 2] 6306 	cmpb	#4	;cmpqi:	; tmp.163,
   2768 10 27 01 9D   [ 6] 6307 	lbeq	L466	;
                           6308 ;----- asm -----
                           6309 ; 2705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6310 	; #ENR#[1953]if (tmp == 3)
                           6311 ;--- end asm ---
   276C C1 03         [ 2] 6312 	cmpb	#3	;cmpqi:	; tmp.163,
   276E 10 27 04 B8   [ 6] 6313 	lbeq	L467	;
                           6314 ;----- asm -----
                           6315 ; 2796 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6316 	; #ENR#[2017]if (tmp == 2)
                           6317 ;--- end asm ---
   2772 C1 02         [ 2] 6318 	cmpb	#2	;cmpqi:	; tmp.163,
   2774 10 27 05 A4   [ 6] 6319 	lbeq	L468	;
                           6320 ;----- asm -----
                           6321 ; 2862 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6322 	; #ENR#[2065]break;
                           6323 ;--- end asm ---
   2778 16 FD 63      [ 5] 6324 	lbra	L431	;
   277B                    6325 L334:
                           6326 ;----- asm -----
                           6327 ; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6328 	; #ENR#[1521]teleportnow:
                           6329 ;--- end asm ---
   277B                    6330 L351:
                           6331 ;----- asm -----
                           6332 ; 2099 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6333 	; #ENR#[1523]printmessage();
                           6334 ;--- end asm ---
   277B 8E 1F 74      [ 3] 6335 	ldx	#LC153	;,
   277E BD 5A 71      [ 8] 6336 	jsr	_printMessage
                           6337 ;----- asm -----
                           6338 ; 2101 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6339 	; #ENR#[1524]teleportagain:
   2781                    6340 L352:
                           6341 ; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6342 	; #ENR#[1532]lightchange = 0x5f;
                           6343 ; 2112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6344 	; #ENR#[1533]initsoundno = sound_teleport;
                           6345 ;--- end asm ---
   2781 C6 02         [ 2] 6346 	ldb	#2	;,
   2783 F7 C8 A6      [ 5] 6347 	stb	_initSoundNo	;, initSoundNo
                           6348 ;----- asm -----
                           6349 ; 2114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6350 	; #ENR#[1534]while (--lightchange >=1)
                           6351 ;--- end asm ---
   2786 C6 5E         [ 2] 6352 	ldb	#94	;,
   2788 F7 C8 A4      [ 5] 6353 	stb	_lightChange	;, lightChange
   278B                    6354 L354:
   278B BD 3C BC      [ 8] 6355 	jsr	_displayRound
   278E 7A C8 A4      [ 7] 6356 	dec	_lightChange	; lightChange
   2791 F6 C8 A4      [ 5] 6357 	ldb	_lightChange	; lightChange.128, lightChange
   2794 2E F5         [ 3] 6358 	bgt	L354	;
                           6359 ;----- asm -----
                           6360 ; 2120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6361 	; #ENR#[1539]if (((cx+cy)&1) == 0) cz = cz -1;
                           6362 ;--- end asm ---
   2796 F6 C9 39      [ 5] 6363 	ldb	_cy	; tmp207, cy
   2799 FB C9 38      [ 5] 6364 	addb	_cx	; tmp207, cx
   279C C4 01         [ 2] 6365 	andb	#1	; tmp207,
   279E 26 03         [ 3] 6366 	bne	L355	;
   27A0 7A C9 3A      [ 7] 6367 	dec	_cz	; cz
   27A3                    6368 L355:
                           6369 ;----- asm -----
                           6370 ; 2122 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6371 	; #ENR#[1540]if (((cx+cy)&2) == 2) cz = cz +2;
                           6372 ;--- end asm ---
   27A3 F6 C9 39      [ 5] 6373 	ldb	_cy	; tmp209, cy
   27A6 FB C9 38      [ 5] 6374 	addb	_cx	; tmp209, cx
   27A9 C4 02         [ 2] 6375 	andb	#2	; tmp209,
   27AB 27 08         [ 3] 6376 	beq	L356	;
   27AD F6 C9 3A      [ 5] 6377 	ldb	_cz	;, cz
   27B0 CB 02         [ 2] 6378 	addb	#2	;,
   27B2 F7 C9 3A      [ 5] 6379 	stb	_cz	;, cz
   27B5                    6380 L356:
                           6381 ;----- asm -----
                           6382 ; 2131 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6383 	; #ENR#[1548]cx = cx+cz*8+cy*13;
                           6384 ;--- end asm ---
   27B5 F6 C9 3A      [ 5] 6385 	ldb	_cz	;, cz
   27B8 58            [ 2] 6386 	aslb	;
   27B9 58            [ 2] 6387 	aslb	;
   27BA 58            [ 2] 6388 	aslb	;
   27BB E7 E8 14      [ 5] 6389 	stb	20,s	;, cx.132
   27BE F6 C9 39      [ 5] 6390 	ldb	_cy	;, cy
   27C1 86 0D         [ 2] 6391 	lda	#13	;umulqihi3	;
   27C3 3D            [11] 6392 	mul
                           6393 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   27C4 1F 01         [ 6] 6394 	tfr	d,x	;, tmp212
                           6395 ; ORG>	tfr	d,x	;, tmp212
                           6396 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp212, tmp214
   27C6 EB E8 14      [ 5] 6397 	addb	20,s	; tmp214, cx.132
   27C9 FB C9 38      [ 5] 6398 	addb	_cx	; tmp214, cx
   27CC E7 E8 14      [ 5] 6399 	stb	20,s	; tmp214, cx.132
   27CF F7 C9 38      [ 5] 6400 	stb	_cx	; tmp214, cx
                           6401 ;----- asm -----
                           6402 ; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6403 	; #ENR#[1549]if (cx >200) cx -= (unsigned char)200;
                           6404 ;--- end asm ---
   27D2 C1 C8         [ 2] 6405 	cmpb	#-56	;cmpqi:	; tmp214,
   27D4 23 05         [ 3] 6406 	bls	L357	;
   27D6 CB 38         [ 2] 6407 	addb	#56	; tmp214,
   27D8 F7 C9 38      [ 5] 6408 	stb	_cx	; tmp214, cx
   27DB                    6409 L357:
                           6410 ;----- asm -----
                           6411 ; 2136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6412 	; #ENR#[1551]cy = cy+cy*6+cx*17;
                           6413 ;--- end asm ---
   27DB 86 11         [ 2] 6414 	lda	#17	;umulqihi3	;
   27DD 3D            [11] 6415 	mul
   27DE 1F 02         [ 6] 6416 	tfr	d,y	;, tmp215
   27E0 F6 C9 39      [ 5] 6417 	ldb	_cy	;, cy
   27E3 86 07         [ 2] 6418 	lda	#7	;umulqihi3	;
   27E5 3D            [11] 6419 	mul
   27E6 1F 01         [ 6] 6420 	tfr	d,x	;, tmp216
   27E8 1F 20         [ 6] 6421 	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp215,
   27EA E7 62         [ 5] 6422 	stb	2,s	;, cy.134
   27EC 1F 10         [ 6] 6423 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp216,
   27EE E7 E8 12      [ 5] 6424 	stb	18,s	;,
   27F1 E6 62         [ 5] 6425 	ldb	2,s	;, cy.134
   27F3 EB E8 12      [ 5] 6426 	addb	18,s	;,
   27F6 F7 C9 39      [ 5] 6427 	stb	_cy	;, cy
                           6428 ;----- asm -----
                           6429 ; 2138 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6430 	; #ENR#[1552]if (cy >200) cx -= (unsigned char)200;
                           6431 ;--- end asm ---
   27F9 C1 C8         [ 2] 6432 	cmpb	#-56	;cmpqi:	;,
   27FB 23 08         [ 3] 6433 	bls	L358	;
   27FD F6 C9 38      [ 5] 6434 	ldb	_cx	;, cx
   2800 CB 38         [ 2] 6435 	addb	#56	;,
   2802 F7 C9 38      [ 5] 6436 	stb	_cx	;, cx
   2805                    6437 L358:
                           6438 ;----- asm -----
                           6439 ; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6440 	; #ENR#[1556]if (cz==0) cz = 1;
                           6441 ;--- end asm ---
   2805 7D C9 3A      [ 7] 6442 	tst	_cz	; cz
   2808 26 05         [ 3] 6443 	bne	L359	;
   280A C6 01         [ 2] 6444 	ldb	#1	;,
   280C F7 C9 3A      [ 5] 6445 	stb	_cz	;, cz
   280F                    6446 L359:
                           6447 ;----- asm -----
                           6448 ; 2145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6449 	; #ENR#[1557]if (cz>50) cz = 50;
                           6450 ;--- end asm ---
   280F F6 C9 3A      [ 5] 6451 	ldb	_cz	;, cz
   2812 C1 32         [ 2] 6452 	cmpb	#50	;cmpqi:	;,
   2814 10 22 00 DC   [ 6] 6453 	lbhi	L469	;
   2818                    6454 L360:
                           6455 ;----- asm -----
                           6456 ; 2150 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6457 	; #ENR#[1561]fillmap = go_redraw;
                           6458 ;--- end asm ---
   2818 C6 7F         [ 2] 6459 	ldb	#127	;,
   281A F7 C8 FC      [ 5] 6460 	stb	_fillMap	;, fillMap
                           6461 ;----- asm -----
                           6462 ; 2154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6463 	; #ENR#[1564]initsoundno = sound_teleport;
                           6464 ;--- end asm ---
   281D C6 02         [ 2] 6465 	ldb	#2	;,
   281F F7 C8 A6      [ 5] 6466 	stb	_initSoundNo	;, initSoundNo
                           6467 ;----- asm -----
                           6468 ; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6469 	; #ENR#[1565]while (lightchange++<0x5f)
                           6470 ;--- end asm ---
   2822 20 03         [ 3] 6471 	bra	L452	;
   2824                    6472 L470:
   2824 BD 3C BC      [ 8] 6473 	jsr	_displayRound
   2827                    6474 L452:
   2827 F6 C8 A4      [ 5] 6475 	ldb	_lightChange	;, lightChange
   282A E7 62         [ 5] 6476 	stb	2,s	;,
   282C 5C            [ 2] 6477 	incb	;
   282D F7 C8 A4      [ 5] 6478 	stb	_lightChange	;, lightChange
   2830 E6 62         [ 5] 6479 	ldb	2,s	;,
   2832 C1 5E         [ 2] 6480 	cmpb	#94	;cmpqi:	;,
   2834 2F EE         [ 3] 6481 	ble	L470	;
                           6482 ;----- asm -----
                           6483 ; 2159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6484 	; #ENR#[1567]lightchange = 0;
                           6485 ;--- end asm ---
   2836 7F C8 A4      [ 7] 6486 	clr	_lightChange	; lightChange
                           6487 ;----- asm -----
                           6488 ; 2163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6489 	; #ENR#[1570]return return_new_turn;
                           6490 ;--- end asm ---
   2839 C6 01         [ 2] 6491 	ldb	#1	; D.3825,
   283B 16 FC A1      [ 5] 6492 	lbra	L345	;
   283E                    6493 L333:
                           6494 ;----- asm -----
                           6495 ; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6496 	; #ENR#[1455]if (cz == 50) goto doelevator;
                           6497 ;--- end asm ---
   283E F6 C9 3A      [ 5] 6498 	ldb	_cz	;, cz
   2841 C1 32         [ 2] 6499 	cmpb	#50	;cmpqi:	;,
   2843 10 27 FE AB   [ 6] 6500 	lbeq	L342	;
                           6501 ;----- asm -----
                           6502 ; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6503 	; #ENR#[1458]printmessage();
                           6504 ;--- end asm ---
   2847 8E 1E FF      [ 3] 6505 	ldx	#LC147	;,
   284A BD 5A 71      [ 8] 6506 	jsr	_printMessage
                           6507 ;----- asm -----
                           6508 ; 2009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6509 	; #ENR#[1460]tmp = 0;
                           6510 ;--- end asm ---
   284D 7F C8 FE      [ 7] 6511 	clr	_tmp	; tmp
                           6512 ;----- asm -----
                           6513 ; 2014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6514 	; #ENR#[1464]if (sf[levitate]>0)
                           6515 ;--- end asm ---
   2850 7D C9 57      [ 7] 6516 	tst	_sf+4	; sf
   2853 10 27 02 E1   [ 6] 6517 	lbeq	L346	;
                           6518 ;----- asm -----
                           6519 ; 2017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6520 	; #ENR#[1466]printmessage();
                           6521 ;--- end asm ---
   2857 8E 1F 0D      [ 3] 6522 	ldx	#LC148	;,
   285A BD 5A 71      [ 8] 6523 	jsr	_printMessage
                           6524 ;----- asm -----
                           6525 ; 2019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6526 	; #ENR#[1467]tmp = 1;
                           6527 ;--- end asm ---
   285D C6 01         [ 2] 6528 	ldb	#1	;,
   285F F7 C8 FE      [ 5] 6529 	stb	_tmp	;, tmp
   2862                    6530 L347:
                           6531 ;----- asm -----
                           6532 ; 2030 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6533 	; #ENR#[1476]if (tmp == 1)
                           6534 ;--- end asm ---
   2862 F6 C8 FE      [ 5] 6535 	ldb	_tmp	;, tmp
   2865 C1 01         [ 2] 6536 	cmpb	#1	;cmpqi:	;,
   2867 10 27 03 38   [ 6] 6537 	lbeq	L471	;
                           6538 ;----- asm -----
                           6539 ; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6540 	; #ENR#[1495]printmessage();
                           6541 ;--- end asm ---
   286B 8E 1F 4E      [ 3] 6542 	ldx	#LC151	;,
   286E BD 5A 71      [ 8] 6543 	jsr	_printMessage
                           6544 ;----- asm -----
                           6545 ; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6546 	; #ENR#[1496]l = 3;
                           6547 ;--- end asm ---
   2871 C6 03         [ 2] 6548 	ldb	#3	;,
   2873 F7 C9 6B      [ 5] 6549 	stb	_l	;, l
                           6550 ;----- asm -----
                           6551 ; 2067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6552 	; #ENR#[1502]tmp = (signed int)randmax(l*3)+1;
                           6553 ;--- end asm ---
   2876 C6 09         [ 2] 6554 	ldb	#9	;,
   2878 BD 5E 21      [ 8] 6555 	jsr	_RandMax
   287B 5C            [ 2] 6556 	incb	; tmp.123
   287C F7 C8 FE      [ 5] 6557 	stb	_tmp	; tmp.123, tmp
                           6558 ;----- asm -----
                           6559 ; 2069 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6560 	; #ENR#[1503]_fi_s(, ((unsigned int) tmp));
                           6561 ;--- end asm ---
   287F 8E 1F 5C      [ 3] 6562 	ldx	#LC152	;,
   2882 BD 5B BD      [ 8] 6563 	jsr	__fi_s
                           6564 ;----- asm -----
                           6565 ; 2071 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6566 	; #ENR#[1504]printmessage(stringbuffer40);
                           6567 ;--- end asm ---
   2885 8E C8 BF      [ 3] 6568 	ldx	#_stringBuffer40	;,
   2888 BD 5A 71      [ 8] 6569 	jsr	_printMessage
                           6570 ;----- asm -----
                           6571 ; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6572 	; #ENR#[1505]ch=ch-tmp;
                           6573 ;--- end asm ---
   288B F6 C8 FE      [ 5] 6574 	ldb	_tmp	;, tmp
   288E 1D            [ 2] 6575 	sex		;extendqihi2: R:b -> R:d	;,
   288F 1F 01         [ 6] 6576 	tfr	d,x	;, tmp
   2891 FC C9 2D      [ 6] 6577 	ldd	_ch	; ch, ch
   2894 34 10         [ 6] 6578 	pshs	x	;subhi: R:d -= R:x	; tmp, ch.126
   2896 A3 E1         [ 9] 6579 	subd	,s++	; ch.126
   2898 FD C9 2D      [ 6] 6580 	std	_ch	; ch.126, ch
                           6581 ;----- asm -----
                           6582 ; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6583 	; #ENR#[1506]if (ch<=0)
                           6584 ;--- end asm ---
   289B 10 83 00 00   [ 5] 6585 	cmpd	#0	; ch.126
   289F 10 2F 03 7D   [ 6] 6586 	lble	L472	;
                           6587 ;----- asm -----
                           6588 ; 2084 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6589 	; #ENR#[1512]cz = cz + 1;
                           6590 ;--- end asm ---
   28A3 7C C9 3A      [ 7] 6591 	inc	_cz	; cz
                           6592 ;----- asm -----
                           6593 ; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6594 	; #ENR#[1513]return return_new_turn;
                           6595 ;--- end asm ---
   28A6 C6 01         [ 2] 6596 	ldb	#1	; D.3825,
   28A8 16 FC 34      [ 5] 6597 	lbra	L345	;
   28AB                    6598 L460:
   28AB F6 C8 A0      [ 5] 6599 	ldb	_above	;, above
   28AE C1 04         [ 2] 6600 	cmpb	#4	;cmpqi:	;,
   28B0 10 26 FD 2B   [ 6] 6601 	lbne	L379	;
                           6602 ;----- asm -----
                           6603 ; 2240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6604 	; #ENR#[1628]cz = cz - 1;
                           6605 ;--- end asm ---
   28B4 7A C9 3A      [ 7] 6606 	dec	_cz	; cz
                           6607 ;----- asm -----
                           6608 ; 2242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6609 	; #ENR#[1629]printmessage();
                           6610 ;--- end asm ---
   28B7 8E 20 46      [ 3] 6611 	ldx	#LC161	;,
   28BA BD 5A 71      [ 8] 6612 	jsr	_printMessage
                           6613 ;----- asm -----
                           6614 ; 2244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6615 	; #ENR#[1630]pause(small_pause);
                           6616 ;--- end asm ---
   28BD C6 4B         [ 2] 6617 	ldb	#75	;,
   28BF BD 3D 31      [ 8] 6618 	jsr	_pause
                           6619 ;----- asm -----
                           6620 ; 2246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6621 	; #ENR#[1631]fillmap = go_redraw;
                           6622 ;--- end asm ---
   28C2 C6 7F         [ 2] 6623 	ldb	#127	;,
   28C4 F7 C8 FC      [ 5] 6624 	stb	_fillMap	;, fillMap
                           6625 ;----- asm -----
                           6626 ; 2251 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6627 	; #ENR#[1635]if (((signed int) cz)<=0)
                           6628 ;--- end asm ---
   28C7 7D C9 3A      [ 7] 6629 	tst	_cz	; cz
   28CA 10 2F 04 76   [ 6] 6630 	lble	L473	;
                           6631 ;----- asm -----
                           6632 ; 2260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6633 	; #ENR#[1641]return return_new_turn;
                           6634 ;--- end asm ---
   28CE E6 E8 27      [ 5] 6635 	ldb	39,s	; D.3825, d
   28D1 16 FC 0B      [ 5] 6636 	lbra	L345	;
   28D4                    6637 L459:
   28D4 E6 A4         [ 4] 6638 	ldb	,y	;,* prephitmp.524
   28D6 C1 04         [ 2] 6639 	cmpb	#4	;cmpqi:	;,
   28D8 10 26 FD 03   [ 6] 6640 	lbne	L379	;
                           6641 ;----- asm -----
                           6642 ; 2224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6643 	; #ENR#[1617]cz = cz + 1;
                           6644 ;--- end asm ---
   28DC 7C C9 3A      [ 7] 6645 	inc	_cz	; cz
                           6646 ;----- asm -----
                           6647 ; 2226 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6648 	; #ENR#[1618]printmessage();
                           6649 ;--- end asm ---
   28DF 8E 20 41      [ 3] 6650 	ldx	#LC160	;,
   28E2 BD 5A 71      [ 8] 6651 	jsr	_printMessage
                           6652 ;----- asm -----
                           6653 ; 2228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6654 	; #ENR#[1619]pause(small_pause);
                           6655 ;--- end asm ---
   28E5 C6 4B         [ 2] 6656 	ldb	#75	;,
   28E7 BD 3D 31      [ 8] 6657 	jsr	_pause
                           6658 ;----- asm -----
                           6659 ; 2230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6660 	; #ENR#[1620]fillmap = go_redraw;
                           6661 ;--- end asm ---
   28EA C6 7F         [ 2] 6662 	ldb	#127	;,
   28EC F7 C8 FC      [ 5] 6663 	stb	_fillMap	;, fillMap
                           6664 ;----- asm -----
                           6665 ; 2232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6666 	; #ENR#[1621]return return_new_turn;
                           6667 ;--- end asm ---
   28EF C6 01         [ 2] 6668 	ldb	#1	; D.3825,
   28F1 16 FB EB      [ 5] 6669 	lbra	L345	;
   28F4                    6670 L469:
   28F4 C6 32         [ 2] 6671 	ldb	#50	;,
   28F6 F7 C9 3A      [ 5] 6672 	stb	_cz	;, cz
   28F9 16 FF 1C      [ 5] 6673 	lbra	L360	;
   28FC                    6674 L456:
                           6675 ;----- asm -----
                           6676 ; 2208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6677 	; #ENR#[1605]printmessage();
                           6678 ;--- end asm ---
   28FC 8E 20 0B      [ 3] 6679 	ldx	#LC158	;,
   28FF BD 5A 71      [ 8] 6680 	jsr	_printMessage
   2902 16 FC 26      [ 5] 6681 	lbra	L366	;
   2905                    6682 L463:
                           6683 ;----- asm -----
                           6684 ; 2361 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6685 	; #ENR#[1714]return return_nothing;
                           6686 ;--- end asm ---
   2905 5F            [ 2] 6687 	clrb	; D.3825
   2906 16 FB D6      [ 5] 6688 	lbra	L345	;
   2909                    6689 L466:
                           6690 ;----- asm -----
                           6691 ; 2667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6692 	; #ENR#[1927]printmessage();
                           6693 ;--- end asm ---
   2909 8E 22 EC      [ 3] 6694 	ldx	#LC192	;,
   290C BD 5A 71      [ 8] 6695 	jsr	_printMessage
                           6696 ;----- asm -----
                           6697 ; 2672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6698 	; #ENR#[1931]if (randmax(100) >40)
                           6699 ;--- end asm ---
   290F C6 64         [ 2] 6700 	ldb	#100	;,
   2911 BD 5E 21      [ 8] 6701 	jsr	_RandMax
   2914 C1 28         [ 2] 6702 	cmpb	#40	;cmpqi:	; D.3939,
   2916 10 23 04 64   [ 6] 6703 	lbls	L415	;
                           6704 ;----- asm -----
                           6705 ; 2675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6706 	; #ENR#[1933]thronenothinghappens:
                           6707 ;--- end asm ---
   291A                    6708 L416:
                           6709 ;----- asm -----
                           6710 ; 2679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6711 	; #ENR#[1936]printmessage();
                           6712 ;--- end asm ---
   291A 8E 22 F0      [ 3] 6713 	ldx	#LC193	;,
   291D BD 5A 71      [ 8] 6714 	jsr	_printMessage
                           6715 ;----- asm -----
                           6716 ; 2681 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6717 	; #ENR#[1937]return return_pause;
                           6718 ;--- end asm ---
   2920 C6 07         [ 2] 6719 	ldb	#7	; D.3825,
   2922 16 FB BA      [ 5] 6720 	lbra	L345	;
   2925                    6721 L389:
   2925 C6 01         [ 2] 6722 	ldb	#1	;,
   2927 F7 C9 69      [ 5] 6723 	stb	_un	;, un
   292A                    6724 L391:
                           6725 ;----- asm -----
                           6726 ; 2388 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6727 	; #ENR#[1731]#endif
                           6728 ; 2390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6729 	; #ENR#[1732]return return_spanw_monster;
                           6730 ;--- end asm ---
   292A C6 1E         [ 2] 6731 	ldb	#30	; D.3825,
   292C 16 FB B0      [ 5] 6732 	lbra	L345	;
   292F                    6733 L464:
                           6734 ;----- asm -----
                           6735 ; 1943 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6736 	; #ENR#[1418]above = 4;
                           6737 ;--- end asm ---
   292F C6 04         [ 2] 6738 	ldb	#4	;,
   2931 F7 C8 A0      [ 5] 6739 	stb	_above	;, above
                           6740 ;----- asm -----
                           6741 ; 1945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6742 	; #ENR#[1419]goto dostaircase;
                           6743 ;--- end asm ---
   2934 16 FB CC      [ 5] 6744 	lbra	L330	;
   2937                    6745 L432:
                           6746 ;----- asm -----
                           6747 ; 2899 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6748 	; #ENR#[2092]unsigned int cb = 0;
                           6749 ; 2901 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6750 	; #ENR#[2093]boxagain:
                           6751 ; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6752 	; #ENR#[2094]clearmessage();
                           6753 ;--- end asm ---
   2937 7F C9 C2      [ 7] 6754 	clr	_msgLine	; msgLine
                           6755 ;----- asm -----
                           6756 ; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6757 	; #ENR#[2095]printmessage();
                           6758 ;--- end asm ---
   293A 8E 24 14      [ 3] 6759 	ldx	#LC206	;,
   293D BD 5A 71      [ 8] 6760 	jsr	_printMessage
                           6761 ;----- asm -----
                           6762 ; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6763 	; #ENR#[2096]printmessage();
                           6764 ;--- end asm ---
   2940 8E 24 2E      [ 3] 6765 	ldx	#LC207	;,
   2943 BD 5A 71      [ 8] 6766 	jsr	_printMessage
                           6767 ;----- asm -----
                           6768 ; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6769 	; #ENR#[2097]printmessage();
                           6770 ;--- end asm ---
   2946 8E 24 53      [ 3] 6771 	ldx	#LC208	;,
   2949 BD 5A 71      [ 8] 6772 	jsr	_printMessage
                           6773 ;----- asm -----
                           6774 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6775 	; #ENR#[2114]pause(small_pause);
                           6776 ;--- end asm ---
   294C C6 4B         [ 2] 6777 	ldb	#75	;,
   294E BD 3D 31      [ 8] 6778 	jsr	_pause
                           6779 ;----- asm -----
                           6780 ; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6781 	; #ENR#[2118]tmp = (signed int) testforinput(0);
                           6782 ;--- end asm ---
   2951 5F            [ 2] 6783 	clrb	;
   2952 BD 05 C4      [ 8] 6784 	jsr	_testForInput
   2955 F7 C8 FE      [ 5] 6785 	stb	_tmp	; tmp.668, tmp
                           6786 ;----- asm -----
                           6787 ; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6788 	; #ENR#[2119]clearmessage();
                           6789 ;--- end asm ---
   2958 7F C9 C2      [ 7] 6790 	clr	_msgLine	; msgLine
                           6791 ;----- asm -----
                           6792 ; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6793 	; #ENR#[2120]resetbuttons();
                           6794 ;--- end asm ---
   295B 7F C8 11      [ 7] 6795 	clr	_Vec_Buttons	; Vec_Buttons
                           6796 ;----- asm -----
                           6797 ; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6798 	; #ENR#[2121]resetjoystick();
                           6799 ;--- end asm ---
   295E 7F C8 1C      [ 7] 6800 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2961 7F C8 1B      [ 7] 6801 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           6802 ;----- asm -----
                           6803 ; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6804 	; #ENR#[2122]if (tmp<5)
                           6805 ;--- end asm ---
   2964 C1 04         [ 2] 6806 	cmpb	#4	;cmpqi:	; tmp.668,
   2966 10 2F 04 C4   [ 6] 6807 	lble	L433	;
                           6808 ;----- asm -----
                           6809 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6810 	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
                           6811 ;--- end asm ---
   296A CB FB         [ 2] 6812 	addb	#-5	; tmp.668,
   296C 1D            [ 2] 6813 	sex		;extendqihi2: R:b -> R:d	; tmp.668, tmp345
   296D 58            [ 2] 6814 	aslb	;
   296E 49            [ 2] 6815 	rola	;
   296F 1F 01         [ 6] 6816 	tfr	d,x	; tmp345, tmp347
   2971 AE 89 04 A5   [ 9] 6817 	ldx	_boxColors,x	;, boxColors
   2975 BD 5A 71      [ 8] 6818 	jsr	_printMessage
                           6819 ;----- asm -----
                           6820 ; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6821 	; #ENR#[2143]if (box[cb] != tmp-5)
                           6822 ;--- end asm ---
   2978 F6 C8 FE      [ 5] 6823 	ldb	_tmp	; tmp350, tmp
   297B CB FB         [ 2] 6824 	addb	#-5	; tmp350,
   297D F1 C9 5E      [ 5] 6825 	cmpb	_box	;cmpqi:(R)	; tmp350, box
   2980 10 26 04 79   [ 6] 6826 	lbne	L434	;
                           6827 ;----- asm -----
                           6828 ; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6829 	; #ENR#[2165]pause(small_pause);
                           6830 ;--- end asm ---
   2984 C6 4B         [ 2] 6831 	ldb	#75	;,
   2986 BD 3D 31      [ 8] 6832 	jsr	_pause
                           6833 ;----- asm -----
                           6834 ; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6835 	; #ENR#[2166]cb++;
                           6836 ; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6837 	; #ENR#[2167]if (cb <4) goto boxagain;
                           6838 ; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6839 	; #ENR#[2094]clearmessage();
                           6840 ;--- end asm ---
   2989 7F C9 C2      [ 7] 6841 	clr	_msgLine	; msgLine
                           6842 ;----- asm -----
                           6843 ; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6844 	; #ENR#[2095]printmessage();
                           6845 ;--- end asm ---
   298C 8E 24 14      [ 3] 6846 	ldx	#LC206	;,
   298F BD 5A 71      [ 8] 6847 	jsr	_printMessage
                           6848 ;----- asm -----
                           6849 ; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6850 	; #ENR#[2096]printmessage();
                           6851 ;--- end asm ---
   2992 8E 24 2E      [ 3] 6852 	ldx	#LC207	;,
   2995 BD 5A 71      [ 8] 6853 	jsr	_printMessage
                           6854 ;----- asm -----
                           6855 ; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6856 	; #ENR#[2097]printmessage();
                           6857 ;--- end asm ---
   2998 8E 24 53      [ 3] 6858 	ldx	#LC208	;,
   299B BD 5A 71      [ 8] 6859 	jsr	_printMessage
                           6860 ;----- asm -----
                           6861 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6862 	; #ENR#[2114]pause(small_pause);
                           6863 ;--- end asm ---
   299E C6 4B         [ 2] 6864 	ldb	#75	;,
   29A0 BD 3D 31      [ 8] 6865 	jsr	_pause
                           6866 ;----- asm -----
                           6867 ; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6868 	; #ENR#[2118]tmp = (signed int) testforinput(0);
                           6869 ;--- end asm ---
   29A3 5F            [ 2] 6870 	clrb	;
   29A4 BD 05 C4      [ 8] 6871 	jsr	_testForInput
   29A7 F7 C8 FE      [ 5] 6872 	stb	_tmp	; tmp.677, tmp
                           6873 ;----- asm -----
                           6874 ; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6875 	; #ENR#[2119]clearmessage();
                           6876 ;--- end asm ---
   29AA 7F C9 C2      [ 7] 6877 	clr	_msgLine	; msgLine
                           6878 ;----- asm -----
                           6879 ; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6880 	; #ENR#[2120]resetbuttons();
                           6881 ;--- end asm ---
   29AD 7F C8 11      [ 7] 6882 	clr	_Vec_Buttons	; Vec_Buttons
                           6883 ;----- asm -----
                           6884 ; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6885 	; #ENR#[2121]resetjoystick();
                           6886 ;--- end asm ---
   29B0 7F C8 1C      [ 7] 6887 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   29B3 7F C8 1B      [ 7] 6888 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           6889 ;----- asm -----
                           6890 ; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6891 	; #ENR#[2122]if (tmp<5)
                           6892 ;--- end asm ---
   29B6 C1 04         [ 2] 6893 	cmpb	#4	;cmpqi:	; tmp.677,
   29B8 10 2F 04 72   [ 6] 6894 	lble	L433	;
                           6895 ;----- asm -----
                           6896 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6897 	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
                           6898 ;--- end asm ---
   29BC CB FB         [ 2] 6899 	addb	#-5	; tmp.677,
   29BE 1D            [ 2] 6900 	sex		;extendqihi2: R:b -> R:d	; tmp.677, tmp352
   29BF 58            [ 2] 6901 	aslb	;
   29C0 49            [ 2] 6902 	rola	;
   29C1 1F 01         [ 6] 6903 	tfr	d,x	; tmp352, tmp354
   29C3 AE 89 04 A5   [ 9] 6904 	ldx	_boxColors,x	;, boxColors
   29C7 BD 5A 71      [ 8] 6905 	jsr	_printMessage
                           6906 ;----- asm -----
                           6907 ; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6908 	; #ENR#[2143]if (box[cb] != tmp-5)
                           6909 ;--- end asm ---
   29CA F6 C8 FE      [ 5] 6910 	ldb	_tmp	; tmp357, tmp
   29CD CB FB         [ 2] 6911 	addb	#-5	; tmp357,
   29CF F1 C9 5F      [ 5] 6912 	cmpb	_box+1	;cmpqi:(R)	; tmp357, box
   29D2 10 26 04 27   [ 6] 6913 	lbne	L434	;
                           6914 ;----- asm -----
                           6915 ; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6916 	; #ENR#[2165]pause(small_pause);
                           6917 ;--- end asm ---
   29D6 C6 4B         [ 2] 6918 	ldb	#75	;,
   29D8 BD 3D 31      [ 8] 6919 	jsr	_pause
                           6920 ;----- asm -----
                           6921 ; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6922 	; #ENR#[2166]cb++;
                           6923 ; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6924 	; #ENR#[2167]if (cb <4) goto boxagain;
                           6925 ; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6926 	; #ENR#[2094]clearmessage();
                           6927 ;--- end asm ---
   29DB 7F C9 C2      [ 7] 6928 	clr	_msgLine	; msgLine
                           6929 ;----- asm -----
                           6930 ; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6931 	; #ENR#[2095]printmessage();
                           6932 ;--- end asm ---
   29DE 8E 24 14      [ 3] 6933 	ldx	#LC206	;,
   29E1 BD 5A 71      [ 8] 6934 	jsr	_printMessage
                           6935 ;----- asm -----
                           6936 ; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6937 	; #ENR#[2096]printmessage();
                           6938 ;--- end asm ---
   29E4 8E 24 2E      [ 3] 6939 	ldx	#LC207	;,
   29E7 BD 5A 71      [ 8] 6940 	jsr	_printMessage
                           6941 ;----- asm -----
                           6942 ; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6943 	; #ENR#[2097]printmessage();
                           6944 ;--- end asm ---
   29EA 8E 24 53      [ 3] 6945 	ldx	#LC208	;,
   29ED BD 5A 71      [ 8] 6946 	jsr	_printMessage
                           6947 ;----- asm -----
                           6948 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6949 	; #ENR#[2114]pause(small_pause);
                           6950 ;--- end asm ---
   29F0 C6 4B         [ 2] 6951 	ldb	#75	;,
   29F2 BD 3D 31      [ 8] 6952 	jsr	_pause
                           6953 ;----- asm -----
                           6954 ; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6955 	; #ENR#[2118]tmp = (signed int) testforinput(0);
                           6956 ;--- end asm ---
   29F5 5F            [ 2] 6957 	clrb	;
   29F6 BD 05 C4      [ 8] 6958 	jsr	_testForInput
   29F9 F7 C8 FE      [ 5] 6959 	stb	_tmp	; tmp.685, tmp
                           6960 ;----- asm -----
                           6961 ; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6962 	; #ENR#[2119]clearmessage();
                           6963 ;--- end asm ---
   29FC 7F C9 C2      [ 7] 6964 	clr	_msgLine	; msgLine
                           6965 ;----- asm -----
                           6966 ; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6967 	; #ENR#[2120]resetbuttons();
                           6968 ;--- end asm ---
   29FF 7F C8 11      [ 7] 6969 	clr	_Vec_Buttons	; Vec_Buttons
                           6970 ;----- asm -----
                           6971 ; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6972 	; #ENR#[2121]resetjoystick();
                           6973 ;--- end asm ---
   2A02 7F C8 1C      [ 7] 6974 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2A05 7F C8 1B      [ 7] 6975 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           6976 ;----- asm -----
                           6977 ; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6978 	; #ENR#[2122]if (tmp<5)
                           6979 ;--- end asm ---
   2A08 C1 04         [ 2] 6980 	cmpb	#4	;cmpqi:	; tmp.685,
   2A0A 10 2F 04 20   [ 6] 6981 	lble	L433	;
                           6982 ;----- asm -----
                           6983 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6984 	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
                           6985 ;--- end asm ---
   2A0E CB FB         [ 2] 6986 	addb	#-5	; tmp.685,
   2A10 1D            [ 2] 6987 	sex		;extendqihi2: R:b -> R:d	; tmp.685, tmp359
   2A11 58            [ 2] 6988 	aslb	;
   2A12 49            [ 2] 6989 	rola	;
   2A13 1F 01         [ 6] 6990 	tfr	d,x	; tmp359, tmp361
   2A15 AE 89 04 A5   [ 9] 6991 	ldx	_boxColors,x	;, boxColors
   2A19 BD 5A 71      [ 8] 6992 	jsr	_printMessage
                           6993 ;----- asm -----
                           6994 ; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6995 	; #ENR#[2143]if (box[cb] != tmp-5)
                           6996 ;--- end asm ---
   2A1C F6 C8 FE      [ 5] 6997 	ldb	_tmp	; tmp364, tmp
   2A1F CB FB         [ 2] 6998 	addb	#-5	; tmp364,
   2A21 F1 C9 60      [ 5] 6999 	cmpb	_box+2	;cmpqi:(R)	; tmp364, box
   2A24 10 26 03 D5   [ 6] 7000 	lbne	L434	;
                           7001 ;----- asm -----
                           7002 ; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7003 	; #ENR#[2165]pause(small_pause);
                           7004 ;--- end asm ---
   2A28 C6 4B         [ 2] 7005 	ldb	#75	;,
   2A2A BD 3D 31      [ 8] 7006 	jsr	_pause
                           7007 ;----- asm -----
                           7008 ; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7009 	; #ENR#[2166]cb++;
                           7010 ; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7011 	; #ENR#[2167]if (cb <4) goto boxagain;
   2A2D                    7012 L435:
                           7013 ; 2903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7014 	; #ENR#[2094]clearmessage();
                           7015 ;--- end asm ---
   2A2D 7F C9 C2      [ 7] 7016 	clr	_msgLine	; msgLine
                           7017 ;----- asm -----
                           7018 ; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7019 	; #ENR#[2095]printmessage();
                           7020 ;--- end asm ---
   2A30 8E 24 14      [ 3] 7021 	ldx	#LC206	;,
   2A33 BD 5A 71      [ 8] 7022 	jsr	_printMessage
                           7023 ;----- asm -----
                           7024 ; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7025 	; #ENR#[2096]printmessage();
                           7026 ;--- end asm ---
   2A36 8E 24 2E      [ 3] 7027 	ldx	#LC207	;,
   2A39 BD 5A 71      [ 8] 7028 	jsr	_printMessage
                           7029 ;----- asm -----
                           7030 ; 2909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7031 	; #ENR#[2097]printmessage();
                           7032 ;--- end asm ---
   2A3C 8E 24 53      [ 3] 7033 	ldx	#LC208	;,
   2A3F BD 5A 71      [ 8] 7034 	jsr	_printMessage
                           7035 ;----- asm -----
                           7036 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7037 	; #ENR#[2114]pause(small_pause);
                           7038 ;--- end asm ---
   2A42 C6 4B         [ 2] 7039 	ldb	#75	;,
   2A44 BD 3D 31      [ 8] 7040 	jsr	_pause
                           7041 ;----- asm -----
                           7042 ; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7043 	; #ENR#[2118]tmp = (signed int) testforinput(0);
                           7044 ;--- end asm ---
   2A47 5F            [ 2] 7045 	clrb	;
   2A48 BD 05 C4      [ 8] 7046 	jsr	_testForInput
   2A4B F7 C8 FE      [ 5] 7047 	stb	_tmp	; tmp.175, tmp
                           7048 ;----- asm -----
                           7049 ; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7050 	; #ENR#[2119]clearmessage();
                           7051 ;--- end asm ---
   2A4E 7F C9 C2      [ 7] 7052 	clr	_msgLine	; msgLine
                           7053 ;----- asm -----
                           7054 ; 2936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7055 	; #ENR#[2120]resetbuttons();
                           7056 ;--- end asm ---
   2A51 7F C8 11      [ 7] 7057 	clr	_Vec_Buttons	; Vec_Buttons
                           7058 ;----- asm -----
                           7059 ; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7060 	; #ENR#[2121]resetjoystick();
                           7061 ;--- end asm ---
   2A54 7F C8 1C      [ 7] 7062 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2A57 7F C8 1B      [ 7] 7063 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           7064 ;----- asm -----
                           7065 ; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7066 	; #ENR#[2122]if (tmp<5)
                           7067 ;--- end asm ---
   2A5A C1 04         [ 2] 7068 	cmpb	#4	;cmpqi:	; tmp.175,
   2A5C 10 2F 03 CE   [ 6] 7069 	lble	L433	;
                           7070 ;----- asm -----
                           7071 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7072 	; #ENR#[2137]printmessage((char *) boxcolors[tmp-5]);
                           7073 ;--- end asm ---
   2A60 CB FB         [ 2] 7074 	addb	#-5	; tmp.175,
   2A62 1D            [ 2] 7075 	sex		;extendqihi2: R:b -> R:d	; tmp.175, tmp366
   2A63 58            [ 2] 7076 	aslb	;
   2A64 49            [ 2] 7077 	rola	;
   2A65 1F 01         [ 6] 7078 	tfr	d,x	; tmp366, tmp368
   2A67 AE 89 04 A5   [ 9] 7079 	ldx	_boxColors,x	;, boxColors
   2A6B BD 5A 71      [ 8] 7080 	jsr	_printMessage
                           7081 ;----- asm -----
                           7082 ; 2965 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7083 	; #ENR#[2143]if (box[cb] != tmp-5)
                           7084 ;--- end asm ---
   2A6E F6 C8 FE      [ 5] 7085 	ldb	_tmp	; tmp371, tmp
   2A71 CB FB         [ 2] 7086 	addb	#-5	; tmp371,
   2A73 F1 C9 61      [ 5] 7087 	cmpb	_box+3	;cmpqi:(R)	; tmp371, box
   2A76 10 26 03 83   [ 6] 7088 	lbne	L434	;
                           7089 ;----- asm -----
                           7090 ; 2996 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7091 	; #ENR#[2165]pause(small_pause);
                           7092 ;--- end asm ---
   2A7A C6 4B         [ 2] 7093 	ldb	#75	;,
   2A7C BD 3D 31      [ 8] 7094 	jsr	_pause
                           7095 ;----- asm -----
                           7096 ; 2998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7097 	; #ENR#[2166]cb++;
                           7098 ; 3000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7099 	; #ENR#[2167]if (cb <4) goto boxagain;
                           7100 ; 3005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7101 	; #ENR#[2171]clearmessage();
                           7102 ;--- end asm ---
   2A7F 7F C9 C2      [ 7] 7103 	clr	_msgLine	; msgLine
                           7104 ;----- asm -----
                           7105 ; 3007 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7106 	; #ENR#[2172]printmessage();
                           7107 ;--- end asm ---
   2A82 8E 24 8D      [ 3] 7108 	ldx	#LC211	;,
   2A85 BD 5A 71      [ 8] 7109 	jsr	_printMessage
                           7110 ;----- asm -----
                           7111 ; 3009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7112 	; #ENR#[2173]printmessage();
                           7113 ;--- end asm ---
   2A88 8E 24 98      [ 3] 7114 	ldx	#LC212	;,
   2A8B BD 5A 71      [ 8] 7115 	jsr	_printMessage
                           7116 ;----- asm -----
                           7117 ; 3015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7118 	; #ENR#[2178]initbox();
                           7119 ;--- end asm ---
   2A8E BD 3D 52      [ 8] 7120 	jsr	_initBox
                           7121 ;----- asm -----
                           7122 ; 3017 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7123 	; #ENR#[2179]lltmp =(signed long long int) (ull(randmax(20)+1) * ull(1000) * ull(cz)* ull(cz) );
                           7124 ;--- end asm ---
   2A91 C6 14         [ 2] 7125 	ldb	#20	;,
   2A93 BD 5E 21      [ 8] 7126 	jsr	_RandMax
   2A96 E7 E8 24      [ 5] 7127 	stb	36,s	;, D.3990
   2A99 F6 C9 3A      [ 5] 7128 	ldb	_cz	;, cz
   2A9C 4F            [ 2] 7129 	clra		;zero_extendqihi: R:b -> R:d	;,
   2A9D 1F 01         [ 6] 7130 	tfr	d,x	;, cz
   2A9F 32 78         [ 5] 7131 	leas	-8,s	;,,
   2AA1 CC 00 00      [ 3] 7132 	ldd	#0	;,
   2AA4 ED 64         [ 6] 7133 	std	4,s	;,
   2AA6 AF 66         [ 6] 7134 	stx	6,s	; cz,
   2AA8 ED E4         [ 5] 7135 	std	,s	;,
   2AAA AF 62         [ 6] 7136 	stx	2,s	; cz,
   2AAC 30 E8 45      [ 5] 7137 	leax	69,s	;,,
   2AAF BD 76 A6      [ 8] 7138 	jsr	___mulsi3
   2AB2 CC 00 00      [ 3] 7139 	ldd	#0	;,
   2AB5 ED 64         [ 6] 7140 	std	4,s	;,
   2AB7 8E 03 E8      [ 3] 7141 	ldx	#1000	;,
   2ABA AF 66         [ 6] 7142 	stx	6,s	;,
   2ABC 10 AE E8 45   [ 7] 7143 	ldy	69,s	;,
   2AC0 10 AF E4      [ 6] 7144 	sty	,s	;,
   2AC3 EE E8 47      [ 6] 7145 	ldu	71,s	;,
   2AC6 EF 62         [ 6] 7146 	stu	2,s	;,
   2AC8 30 E8 41      [ 5] 7147 	leax	65,s	;,,
   2ACB BD 76 A6      [ 8] 7148 	jsr	___mulsi3
   2ACE 6C E8 2C      [ 7] 7149 	inc	44,s	; D.3990
   2AD1 E6 E8 2C      [ 5] 7150 	ldb	44,s	;, D.3990
   2AD4 4F            [ 2] 7151 	clra		;zero_extendqihi: R:b -> R:d	;,
   2AD5 1F 01         [ 6] 7152 	tfr	d,x	;, tmp383
   2AD7 CC 00 00      [ 3] 7153 	ldd	#0	;,
   2ADA ED 64         [ 6] 7154 	std	4,s	;,
   2ADC AF 66         [ 6] 7155 	stx	6,s	; tmp383,
   2ADE AE E8 41      [ 6] 7156 	ldx	65,s	;,
   2AE1 AF E4         [ 5] 7157 	stx	,s	;,
   2AE3 10 AE E8 43   [ 7] 7158 	ldy	67,s	;,
   2AE7 10 AF 62      [ 7] 7159 	sty	2,s	;,
   2AEA 30 E8 3D      [ 5] 7160 	leax	61,s	;,,
   2AED BD 76 A6      [ 8] 7161 	jsr	___mulsi3
   2AF0 32 64         [ 5] 7162 	leas	4,s	;,,
   2AF2 AE E8 39      [ 6] 7163 	ldx	57,s	; tmp403,
   2AF5 10 AE E8 3B   [ 7] 7164 	ldy	59,s	; tmp404,
   2AF9 BF C9 04      [ 6] 7165 	stx	_lltmp	; tmp403, lltmp
   2AFC 10 BF C9 06   [ 7] 7166 	sty	_lltmp+2	; tmp404, lltmp
                           7167 ;----- asm -----
                           7168 ; 3019 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7169 	; #ENR#[2180]_fll_s(, ull(lltmp));
                           7170 ;--- end asm ---
   2B00 AF E4         [ 5] 7171 	stx	,s	; tmp403,
   2B02 10 AF 62      [ 7] 7172 	sty	2,s	; tmp404,
   2B05 8E 24 B5      [ 3] 7173 	ldx	#LC213	;,
   2B08 BD 66 B4      [ 8] 7174 	jsr	__fll_s
                           7175 ;----- asm -----
                           7176 ; 3021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7177 	; #ENR#[2181]printmessage(stringbuffer40);
                           7178 ;--- end asm ---
   2B0B 8E C8 BF      [ 3] 7179 	ldx	#_stringBuffer40	;,
   2B0E BD 5A 71      [ 8] 7180 	jsr	_printMessage
                           7181 ;----- asm -----
                           7182 ; 3023 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7183 	; #ENR#[2182]gd = gd + ull(lltmp);
                           7184 ;--- end asm ---
   2B11 FC C9 3D      [ 6] 7185 	ldd	_gd+2	;, gd
   2B14 F3 C9 06      [ 7] 7186 	addd	_lltmp+2	;, lltmp
   2B17 FD C9 3D      [ 6] 7187 	std	_gd+2	;, gd
   2B1A FC C9 3B      [ 6] 7188 	ldd	_gd	;, gd
   2B1D F9 C9 05      [ 5] 7189 	adcb	_lltmp+1	; lltmp
   2B20 B9 C9 04      [ 5] 7190 	adca	_lltmp	; lltmp
   2B23 FD C9 3B      [ 6] 7191 	std	_gd	;, gd
                           7192 ;----- asm -----
                           7193 ; 3025 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7194 	; #ENR#[2183]return return_pause;
                           7195 ;--- end asm ---
   2B26 C6 07         [ 2] 7196 	ldb	#7	; D.3825,
   2B28 32 64         [ 5] 7197 	leas	4,s	;,,
   2B2A 16 F9 B2      [ 5] 7198 	lbra	L345	;
   2B2D                    7199 L465:
                           7200 ;----- asm -----
                           7201 ; 2655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7202 	; #ENR#[1918]printmessage();
                           7203 ;--- end asm ---
   2B2D 8E 22 43      [ 3] 7204 	ldx	#LC185	;,
   2B30 BD 5A 71      [ 8] 7205 	jsr	_printMessage
                           7206 ;----- asm -----
                           7207 ; 2657 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7208 	; #ENR#[1919]return return_pause;
                           7209 ;--- end asm ---
   2B33 C6 07         [ 2] 7210 	ldb	#7	; D.3825,
   2B35 16 F9 A7      [ 5] 7211 	lbra	L345	;
   2B38                    7212 L346:
                           7213 ;----- asm -----
                           7214 ; 2026 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7215 	; #ENR#[1473]if (randmax(20)<=s[dex]+inventory[elven_boots])
                           7216 ;--- end asm ---
   2B38 C6 14         [ 2] 7217 	ldb	#20	;,
   2B3A BD 5E 21      [ 8] 7218 	jsr	_RandMax
   2B3D E7 E8 13      [ 5] 7219 	stb	19,s	;, D.3828
   2B40 F6 C9 4D      [ 5] 7220 	ldb	_inventory+4	; tmp204, inventory
   2B43 FB C9 47      [ 5] 7221 	addb	_s+4	; tmp204, s
   2B46 E1 E8 13      [ 5] 7222 	cmpb	19,s	;cmpqi:(R)	; tmp204, D.3828
   2B49 10 25 FD 15   [ 6] 7223 	lblo	L347	;
   2B4D C6 01         [ 2] 7224 	ldb	#1	;,
   2B4F F7 C8 FE      [ 5] 7225 	stb	_tmp	;, tmp
   2B52 16 FD 0D      [ 5] 7226 	lbra	L347	;
   2B55                    7227 L407:
                           7228 ;----- asm -----
                           7229 ; 2581 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7230 	; #ENR#[1867]if (randmax(100)<20)
                           7231 ;--- end asm ---
   2B55 C6 64         [ 2] 7232 	ldb	#100	;,
   2B57 BD 5E 21      [ 8] 7233 	jsr	_RandMax
   2B5A C1 13         [ 2] 7234 	cmpb	#19	;cmpqi:	; D.3931,
   2B5C 10 22 01 32   [ 6] 7235 	lbhi	L408	;
                           7236 ;----- asm -----
                           7237 ; 2586 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7238 	; #ENR#[1871]cz = randmax(50)+1;
                           7239 ;--- end asm ---
   2B60 C6 32         [ 2] 7240 	ldb	#50	;,
   2B62 BD 5E 21      [ 8] 7241 	jsr	_RandMax
   2B65 5C            [ 2] 7242 	incb	; D.3932
   2B66 F7 C9 3A      [ 5] 7243 	stb	_cz	; D.3932, cz
   2B69                    7244 L409:
                           7245 ;----- asm -----
                           7246 ; 2600 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7247 	; #ENR#[1883]printmessage();
                           7248 ;--- end asm ---
   2B69 8E 22 61      [ 3] 7249 	ldx	#LC187	;,
   2B6C BD 5A 71      [ 8] 7250 	jsr	_printMessage
                           7251 ;----- asm -----
                           7252 ; 2602 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7253 	; #ENR#[1884]initsoundno = sound_cube;
                           7254 ;--- end asm ---
   2B6F C6 01         [ 2] 7255 	ldb	#1	;,
   2B71 F7 C8 A6      [ 5] 7256 	stb	_initSoundNo	;, initSoundNo
                           7257 ;----- asm -----
                           7258 ; 2604 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7259 	; #ENR#[1885]int soundplay = 4;
                           7260 ; 2606 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7261 	; #ENR#[1886]while (1)
                           7262 ;--- end asm ---
   2B74 C6 04         [ 2] 7263 	ldb	#4	;,
   2B76 E7 E8 26      [ 5] 7264 	stb	38,s	;, soundPlay
   2B79 20 0B         [ 3] 7265 	bra	L412	;
   2B7B                    7266 L474:
   2B7B 6A E8 26      [ 7] 7267 	dec	38,s	; soundPlay
                           7268 ;----- asm -----
                           7269 ; 2615 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7270 	; #ENR#[1892]initsoundno = sound_cube;
                           7271 ;--- end asm ---
   2B7E C6 01         [ 2] 7272 	ldb	#1	;,
   2B80 F7 C8 A6      [ 5] 7273 	stb	_initSoundNo	;, initSoundNo
   2B83                    7274 L410:
                           7275 ;----- asm -----
                           7276 ; 2618 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7277 	; #ENR#[1894]displayround();
                           7278 ;--- end asm ---
   2B83 BD 3C BC      [ 8] 7279 	jsr	_displayRound
   2B86                    7280 L412:
                           7281 ;----- asm -----
                           7282 ; 2609 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7283 	; #ENR#[1888]if (sfx_status_1 == 0)
                           7284 ;--- end asm ---
   2B86 F6 CA BA      [ 5] 7285 	ldb	_sfx_status_1	; sfx_status_1.162, sfx_status_1
   2B89 26 F8         [ 3] 7286 	bne	L410	;
                           7287 ;----- asm -----
                           7288 ; 2612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7289 	; #ENR#[1890]if (soundplay-- == 0) break;
                           7290 ;--- end asm ---
   2B8B 6D E8 26      [ 7] 7291 	tst	38,s	; soundPlay
   2B8E 26 EB         [ 3] 7292 	bne	L474	;
                           7293 ;----- asm -----
                           7294 ; 2622 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7295 	; #ENR#[1897]fillmap = go_redraw;
                           7296 ;--- end asm ---
   2B90 C6 7F         [ 2] 7297 	ldb	#127	;,
   2B92 F7 C8 FC      [ 5] 7298 	stb	_fillMap	;, fillMap
                           7299 ;----- asm -----
                           7300 ; 2624 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7301 	; #ENR#[1898]return return_new_turn;
                           7302 ;--- end asm ---
   2B95 C6 01         [ 2] 7303 	ldb	#1	; D.3825,
   2B97 16 F9 45      [ 5] 7304 	lbra	L345	;
   2B9A                    7305 L461:
                           7306 ;----- asm -----
                           7307 ; 2198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7308 	; #ENR#[1597]printmessage();
                           7309 ;--- end asm ---
   2B9A 8E 1F CC      [ 3] 7310 	ldx	#LC156	;,
   2B9D BD 5A 71      [ 8] 7311 	jsr	_printMessage
   2BA0 16 F9 88      [ 5] 7312 	lbra	L366	;
   2BA3                    7313 L471:
                           7314 ;----- asm -----
                           7315 ; 2037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7316 	; #ENR#[1482]printmessage();
                           7317 ;--- end asm ---
   2BA3 8E 1F 2A      [ 3] 7318 	ldx	#LC149	;,
   2BA6 BD 5A 71      [ 8] 7319 	jsr	_printMessage
                           7320 ;----- asm -----
                           7321 ; 2039 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7322 	; #ENR#[1483]tmp = testforbutton(0);
                           7323 ;--- end asm ---
   2BA9 5F            [ 2] 7324 	clrb	;
   2BAA BD 04 AF      [ 8] 7325 	jsr	_testForButton
   2BAD F7 C8 FE      [ 5] 7326 	stb	_tmp	; tmp.120, tmp
                           7327 ;----- asm -----
                           7328 ; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7329 	; #ENR#[1484]if (tmp == 4)
                           7330 ;--- end asm ---
   2BB0 C1 04         [ 2] 7331 	cmpb	#4	;cmpqi:	; tmp.120,
   2BB2 10 27 02 23   [ 6] 7332 	lbeq	L475	;
                           7333 ;----- asm -----
                           7334 ; 2051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7335 	; #ENR#[1490]printmessage();
                           7336 ;--- end asm ---
   2BB6 8E 17 0B      [ 3] 7337 	ldx	#LC125	;,
   2BB9 BD 5A 71      [ 8] 7338 	jsr	_printMessage
                           7339 ;----- asm -----
                           7340 ; 2053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7341 	; #ENR#[1491]return return_nothing;
                           7342 ;--- end asm ---
   2BBC 5F            [ 2] 7343 	clrb	; D.3825
   2BBD 16 F9 1F      [ 5] 7344 	lbra	L345	;
   2BC0                    7345 L462:
                           7346 ;----- asm -----
                           7347 ; 2293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7348 	; #ENR#[1666]printmessage();
                           7349 ;--- end asm ---
   2BC0 8E 20 7F      [ 3] 7350 	ldx	#LC165	;,
   2BC3 BD 5A 71      [ 8] 7351 	jsr	_printMessage
                           7352 ;----- asm -----
                           7353 ; 2295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7354 	; #ENR#[1667]tmp = testforbutton(0);
                           7355 ;--- end asm ---
   2BC6 5F            [ 2] 7356 	clrb	;
   2BC7 BD 04 AF      [ 8] 7357 	jsr	_testForButton
   2BCA F7 C8 FE      [ 5] 7358 	stb	_tmp	; tmp.139, tmp
                           7359 ;----- asm -----
                           7360 ; 2297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7361 	; #ENR#[1668]if (tmp != 4) goto nomoneynoworship;
                           7362 ;--- end asm ---
   2BCD C1 04         [ 2] 7363 	cmpb	#4	;cmpqi:	; tmp.139,
   2BCF 10 26 FA C0   [ 6] 7364 	lbne	L382	;
                           7365 ;----- asm -----
                           7366 ; 2299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7367 	; #ENR#[1669]clearmessage();
                           7368 ;--- end asm ---
   2BD3 7F C9 C2      [ 7] 7369 	clr	_msgLine	; msgLine
                           7370 ;----- asm -----
                           7371 ; 2302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7372 	; #ENR#[1671]ultmp = inputnumber(, 0, 50000);
                           7373 ;--- end asm ---
   2BD6 8E C3 50      [ 3] 7374 	ldx	#-15536	;,
   2BD9 AF E3         [ 8] 7375 	stx	,--s	;,
   2BDB CC 00 00      [ 3] 7376 	ldd	#0	;,
   2BDE ED E3         [ 8] 7377 	std	,--s	;,
   2BE0 8E 20 99      [ 3] 7378 	ldx	#LC166	;,
   2BE3 BD 07 0C      [ 8] 7379 	jsr	_inputNumber
   2BE6 BF C9 00      [ 6] 7380 	stx	_ultmp	; ultmp.140, ultmp
                           7381 ;----- asm -----
                           7382 ; 2307 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7383 	; #ENR#[1675]if (ull(ultmp)>gd)
                           7384 ;--- end asm ---
   2BE9 AF E8 1B      [ 6] 7385 	stx	27,s	; ultmp.140, D.3871
   2BEC CC 00 00      [ 3] 7386 	ldd	#0	;,
   2BEF ED E8 19      [ 6] 7387 	std	25,s	;, D.3871
   2BF2 10 BE C9 3B   [ 7] 7388 	ldy	_gd	;, gd
   2BF6 10 AF E8 1D   [ 7] 7389 	sty	29,s	;, gd.142
   2BFA FE C9 3D      [ 6] 7390 	ldu	_gd+2	;, gd
   2BFD EF E8 1F      [ 6] 7391 	stu	31,s	;, gd.142
   2C00 32 64         [ 5] 7392 	leas	4,s	;,,
   2C02 EC E8 15      [ 6] 7393 	ldd	21,s	;, D.3871
   2C05 10 AE E8 19   [ 7] 7394 	ldy	25,s	;, gd.142
   2C09 34 20         [ 6] 7395 	pshs	y	;cmphi: R:y with R:d	;,
   2C0B 10 A3 E1      [10] 7396 	cmpd	,s++	;cmphi:	;
   2C0E 10 23 02 78   [ 6] 7397 	lbls	L476	;
   2C12                    7398 L440:
                           7399 ;----- asm -----
                           7400 ; 2310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7401 	; #ENR#[1677]printmessage();
                           7402 ;--- end asm ---
   2C12 8E 20 A9      [ 3] 7403 	ldx	#LC167	;,
   2C15 BD 5A 71      [ 8] 7404 	jsr	_printMessage
                           7405 ;----- asm -----
                           7406 ; 2312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7407 	; #ENR#[1678]pause(small_pause);
                           7408 ;--- end asm ---
   2C18 C6 4B         [ 2] 7409 	ldb	#75	;,
   2C1A BD 3D 31      [ 8] 7410 	jsr	_pause
                           7411 ;----- asm -----
                           7412 ; 2314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7413 	; #ENR#[1679]goto dirtypagantrash;
                           7414 ;--- end asm ---
   2C1D 16 FA 7E      [ 5] 7415 	lbra	L385	;
   2C20                    7416 L472:
                           7417 ;----- asm -----
                           7418 ; 2078 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7419 	; #ENR#[1508]pause(small_pause);
                           7420 ;--- end asm ---
   2C20 C6 4B         [ 2] 7421 	ldb	#75	;,
   2C22 BD 3D 31      [ 8] 7422 	jsr	_pause
                           7423 ;----- asm -----
                           7424 ; 2080 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7425 	; #ENR#[1509]return return_player_dead;
                           7426 ;--- end asm ---
   2C25 C6 02         [ 2] 7427 	ldb	#2	; D.3825,
   2C27 16 F8 B5      [ 5] 7428 	lbra	L345	;
   2C2A                    7429 L467:
                           7430 ;----- asm -----
                           7431 ; 2710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7432 	; #ENR#[1957]printmessage();
                           7433 ;--- end asm ---
   2C2A 8E 23 37      [ 3] 7434 	ldx	#LC196	;,
   2C2D BD 5A 71      [ 8] 7435 	jsr	_printMessage
                           7436 ;----- asm -----
                           7437 ; 2712 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7438 	; #ENR#[1958]pause(small_pause);
                           7439 ;--- end asm ---
   2C30 C6 4B         [ 2] 7440 	ldb	#75	;,
   2C32 BD 3D 31      [ 8] 7441 	jsr	_pause
                           7442 ;----- asm -----
                           7443 ; 2714 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7444 	; #ENR#[1959]if (randmax(100) >70)
                           7445 ;--- end asm ---
   2C35 C6 64         [ 2] 7446 	ldb	#100	;,
   2C37 BD 5E 21      [ 8] 7447 	jsr	_RandMax
   2C3A C1 46         [ 2] 7448 	cmpb	#70	;cmpqi:	; D.3945,
   2C3C 10 23 01 F9   [ 6] 7449 	lbls	L418	;
                           7450 ;----- asm -----
                           7451 ; 2717 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7452 	; #ENR#[1961]createaking:
                           7453 ;--- end asm ---
   2C40                    7454 L419:
                           7455 ;----- asm -----
                           7456 ; 2720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7457 	; #ENR#[1963]m = (signed int)randmax(20);
                           7458 ;--- end asm ---
   2C40 C6 14         [ 2] 7459 	ldb	#20	;,
   2C42 BD 5E 21      [ 8] 7460 	jsr	_RandMax
   2C45 F7 C9 62      [ 5] 7461 	stb	_m	; D.3946, m
                           7462 ;----- asm -----
                           7463 ; 2723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7464 	; #ENR#[1965]_fs(, mo[m]);
                           7465 ;--- end asm ---
   2C48 1D            [ 2] 7466 	sex		;extendqihi2: R:b -> R:d	; D.3946, m.166
   2C49 58            [ 2] 7467 	aslb	;
   2C4A 49            [ 2] 7468 	rola	;
   2C4B 1F 01         [ 6] 7469 	tfr	d,x	; m.166, tmp294
   2C4D AE 89 01 24   [ 9] 7470 	ldx	_mo,x	;, mo
   2C51 AF E3         [ 8] 7471 	stx	,--s	;,
   2C53 8E 23 3B      [ 3] 7472 	ldx	#LC197	;,
   2C56 BD 5B 50      [ 8] 7473 	jsr	__fs
                           7474 ;----- asm -----
                           7475 ; 2725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7476 	; #ENR#[1966]printmessage(stringbuffer40);
                           7477 ;--- end asm ---
   2C59 8E C8 BF      [ 3] 7478 	ldx	#_stringBuffer40	;,
   2C5C BD 5A 71      [ 8] 7479 	jsr	_printMessage
                           7480 ;----- asm -----
                           7481 ; 2729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7482 	; #ENR#[1969]ml = randmax(5)*cz+5;
                           7483 ;--- end asm ---
   2C5F C6 05         [ 2] 7484 	ldb	#5	;,
   2C61 BD 5E 21      [ 8] 7485 	jsr	_RandMax
   2C64 B6 C9 3A      [ 5] 7486 	lda	_cz	;umulqihi3	; cz
   2C67 3D            [11] 7487 	mul
                           7488 		;movlsbqihi: D->B
   2C68 CB 05         [ 2] 7489 	addb	#5	; ml.167,
   2C6A F7 C9 6A      [ 5] 7490 	stb	_ml	; ml.167, ml
                           7491 ;----- asm -----
                           7492 ; 2732 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7493 	; #ENR#[1971]mh = (signed long int) (ul(randmax(ml)+1)*ul(m));
                           7494 ;--- end asm ---
   2C6D BD 5E 21      [ 8] 7495 	jsr	_RandMax
   2C70 5C            [ 2] 7496 	incb	;
   2C71 E7 64         [ 5] 7497 	stb	4,s	;, D.3953
   2C73 F6 C9 62      [ 5] 7498 	ldb	_m	;, m
   2C76 1D            [ 2] 7499 	sex		;extendqihi2: R:b -> R:d	;,
   2C77 34 06         [ 7] 7500 	pshs	d	; m
   2C79 E6 66         [ 5] 7501 	ldb	6,s	;, D.3953
   2C7B 4F            [ 2] 7502 	clra		;zero_extendqihi: R:b -> R:d	;,
   2C7C 1F 01         [ 6] 7503 	tfr	d,x	;,
   2C7E BD 76 87      [ 8] 7504 	jsr	_mulhi3
   2C81 32 62         [ 5] 7505 	leas	2,s	;,,
   2C83 BF C9 63      [ 6] 7506 	stx	_mh	;, mh
                           7507 ;----- asm -----
                           7508 ; 2734 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7509 	; #ENR#[1972]pause(small_pause);
                           7510 ;--- end asm ---
   2C86 C6 4B         [ 2] 7511 	ldb	#75	;,
   2C88 BD 3D 31      [ 8] 7512 	jsr	_pause
                           7513 ;----- asm -----
                           7514 ; 2736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7515 	; #ENR#[1973]return return_monster_is_set;
                           7516 ;--- end asm ---
   2C8B C6 1F         [ 2] 7517 	ldb	#31	; D.3825,
   2C8D 32 62         [ 5] 7518 	leas	2,s	;,,
   2C8F 16 F8 4D      [ 5] 7519 	lbra	L345	;
   2C92                    7520 L408:
                           7521 ;----- asm -----
                           7522 ; 2595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7523 	; #ENR#[1879]cz = (unsigned char) inputnumber(,(unsigned long int)1,(unsigned long int)50);
                           7524 ;--- end asm ---
   2C92 CC 00 32      [ 3] 7525 	ldd	#50	;,
   2C95 ED E3         [ 8] 7526 	std	,--s	;,
   2C97 CC 00 01      [ 3] 7527 	ldd	#1	;,
   2C9A ED E3         [ 8] 7528 	std	,--s	;,
   2C9C 8E 22 4A      [ 3] 7529 	ldx	#LC186	;,
   2C9F BD 07 0C      [ 8] 7530 	jsr	_inputNumber
   2CA2 1F 10         [ 6] 7531 	tfr	x,d	;, D.3934
   2CA4 F7 C9 3A      [ 5] 7532 	stb	_cz	;movlsbqihi: R:d -> _cz	; cz, D.3934
   2CA7 32 64         [ 5] 7533 	leas	4,s	;,,
   2CA9 16 FE BD      [ 5] 7534 	lbra	L409	;
   2CAC                    7535 L393:
                           7536 ;----- asm -----
                           7537 ; 2426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7538 	; #ENR#[1758]clearmessage();
                           7539 ;--- end asm ---
   2CAC 7F C9 C2      [ 7] 7540 	clr	_msgLine	; msgLine
                           7541 ;----- asm -----
                           7542 ; 2431 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7543 	; #ENR#[1762]if (randmax(100)<60)
                           7544 ;--- end asm ---
   2CAF C6 64         [ 2] 7545 	ldb	#100	;,
   2CB1 BD 5E 21      [ 8] 7546 	jsr	_RandMax
   2CB4 C1 3B         [ 2] 7547 	cmpb	#59	;cmpqi:	; D.3899,
   2CB6 10 22 01 2D   [ 6] 7548 	lbhi	L394	;
                           7549 ;----- asm -----
                           7550 ; 2436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7551 	; #ENR#[1766]if ((signed int)randmax(20)< 20-tmp2*3)
                           7552 ;--- end asm ---
   2CBA F6 C8 FF      [ 5] 7553 	ldb	_tmp2	;, tmp2
   2CBD 58            [ 2] 7554 	aslb	;
   2CBE FB C8 FF      [ 5] 7555 	addb	_tmp2	;, tmp2
   2CC1 E7 E8 22      [ 5] 7556 	stb	34,s	;, D.3901
   2CC4 60 E8 22      [ 7] 7557 	neg	34,s	; D.3901
   2CC7 E6 E8 22      [ 5] 7558 	ldb	34,s	;, D.3901
   2CCA CB 13         [ 2] 7559 	addb	#19	;,
   2CCC E7 E8 22      [ 5] 7560 	stb	34,s	;, D.3901
   2CCF C6 14         [ 2] 7561 	ldb	#20	;,
   2CD1 BD 5E 21      [ 8] 7562 	jsr	_RandMax
   2CD4 E1 E8 22      [ 5] 7563 	cmpb	34,s	;cmpqi:(R)	; D.3902, D.3901
   2CD7 10 2E 01 6C   [ 6] 7564 	lbgt	L395	;
                           7565 ;----- asm -----
                           7566 ; 2441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7567 	; #ENR#[1770]printmessage();
                           7568 ;--- end asm ---
   2CDB 8E 21 48      [ 3] 7569 	ldx	#LC174	;,
   2CDE BD 5A 71      [ 8] 7570 	jsr	_printMessage
                           7571 ;----- asm -----
                           7572 ; 2443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7573 	; #ENR#[1771]tmp = (signed int)  randmax(cz*3)+1;
                           7574 ;--- end asm ---
   2CE1 F6 C9 3A      [ 5] 7575 	ldb	_cz	; tmp255, cz
   2CE4 58            [ 2] 7576 	aslb	; tmp255
   2CE5 FB C9 3A      [ 5] 7577 	addb	_cz	; tmp255, cz
   2CE8 BD 5E 21      [ 8] 7578 	jsr	_RandMax
   2CEB 5C            [ 2] 7579 	incb	; tmp.151
   2CEC F7 C8 FE      [ 5] 7580 	stb	_tmp	; tmp.151, tmp
                           7581 ;----- asm -----
                           7582 ; 2446 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7583 	; #ENR#[1773]_fi_s(, (unsigned int) tmp);
                           7584 ;--- end asm ---
   2CEF 8E 21 58      [ 3] 7585 	ldx	#LC175	;,
   2CF2 BD 5B BD      [ 8] 7586 	jsr	__fi_s
                           7587 ;----- asm -----
                           7588 ; 2448 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7589 	; #ENR#[1774]printmessage(stringbuffer40);
                           7590 ;--- end asm ---
   2CF5 8E C8 BF      [ 3] 7591 	ldx	#_stringBuffer40	;,
   2CF8 BD 5A 71      [ 8] 7592 	jsr	_printMessage
                           7593 ;----- asm -----
                           7594 ; 2450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7595 	; #ENR#[1775]ch = ch + ((unsigned int)tmp);
                           7596 ;--- end asm ---
   2CFB F6 C8 FE      [ 5] 7597 	ldb	_tmp	;, tmp
   2CFE 4F            [ 2] 7598 	clra		;zero_extendqihi: R:b -> R:d	;,
   2CFF ED E4         [ 5] 7599 	std	,s	;,
                           7600 ; Applied peep: bug1 (gcc does one exg to many)
   2D01 F3 C9 2D      [ 7] 7601 	addd	_ch; addhi3,3	;, ch
   2D04 1F 01         [ 6] 7602  tfr d,x
                           7603 ; ORG>	tfr	d,x	;, ch.152
                           7604 ; ORG>	exg	d,x	;, ch.152
                           7605 ; ORG>	addd	_ch; addhi3,3	;, ch
                           7606 ; ORG>	exg	d,x	;, ch.152
   2D06 BF C9 2D      [ 6] 7607 	stx	_ch	; ch.152, ch
                           7608 ;----- asm -----
                           7609 ; 2452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7610 	; #ENR#[1776]if (ch > hp) ch = hp;
                           7611 ;--- end asm ---
   2D09 10 BE C9 2B   [ 7] 7612 	ldy	_hp	; hp.153, hp
   2D0D 34 20         [ 6] 7613 	pshs	y	;cmphi: R:y with R:x	; hp.153, ch.152
   2D0F AC E1         [ 9] 7614 	cmpx	,s++	;cmphi:	; ch.152
   2D11 2F 04         [ 3] 7615 	ble	L396	;
   2D13 10 BF C9 2D   [ 7] 7616 	sty	_ch	; hp.153, ch
   2D17                    7617 L396:
                           7618 ;----- asm -----
                           7619 ; 2455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7620 	; #ENR#[1778]return return_pause;
                           7621 ;--- end asm ---
   2D17 C6 07         [ 2] 7622 	ldb	#7	; D.3825,
   2D19 16 F7 C3      [ 5] 7623 	lbra	L345	;
   2D1C                    7624 L468:
                           7625 ;----- asm -----
                           7626 ; 2800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7627 	; #ENR#[2020]printmessage();
                           7628 ;--- end asm ---
   2D1C 8E 23 62      [ 3] 7629 	ldx	#LC199	;,
   2D1F BD 5A 71      [ 8] 7630 	jsr	_printMessage
                           7631 ;----- asm -----
                           7632 ; 2805 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7633 	; #ENR#[2024]if (randmax(100) >70) goto createaking;
                           7634 ;--- end asm ---
   2D22 C6 64         [ 2] 7635 	ldb	#100	;,
   2D24 BD 5E 21      [ 8] 7636 	jsr	_RandMax
   2D27 C1 46         [ 2] 7637 	cmpb	#70	;cmpqi:	; D.3969,
   2D29 10 22 FF 13   [ 6] 7638 	lbhi	L419	;
                           7639 ;----- asm -----
                           7640 ; 2810 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7641 	; #ENR#[2028]if (randmax(20)>=s[int])
                           7642 ;--- end asm ---
   2D2D C6 14         [ 2] 7643 	ldb	#20	;,
   2D2F BD 5E 21      [ 8] 7644 	jsr	_RandMax
   2D32 F1 C9 44      [ 5] 7645 	cmpb	_s+1	;cmpqi:	; D.3970, s
   2D35 10 25 02 2D   [ 6] 7646 	lblo	L427	;
                           7647 ;----- asm -----
                           7648 ; 2815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7649 	; #ENR#[2032]printmessage();
                           7650 ;--- end asm ---
   2D39 8E 23 67      [ 3] 7651 	ldx	#LC200	;,
   2D3C BD 5A 71      [ 8] 7652 	jsr	_printMessage
                           7653 ;----- asm -----
                           7654 ; 2817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7655 	; #ENR#[2033]return return_pause;
                           7656 ;--- end asm ---
   2D3F C6 07         [ 2] 7657 	ldb	#7	; D.3825,
   2D41 16 F7 9B      [ 5] 7658 	lbra	L345	;
   2D44                    7659 L473:
                           7660 ;----- asm -----
                           7661 ; 2254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7662 	; #ENR#[1637]cz=1;
                           7663 ;--- end asm ---
   2D44 E6 E8 27      [ 5] 7664 	ldb	39,s	;, d
   2D47 F7 C9 3A      [ 5] 7665 	stb	_cz	;, cz
                           7666 ;----- asm -----
                           7667 ; 2256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7668 	; #ENR#[1638]goto upperinn;
   2D4A                    7669 L343:
                           7670 ; 1952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7671 	; #ENR#[1423]clearmessage();
                           7672 ;--- end asm ---
   2D4A 7F C9 C2      [ 7] 7673 	clr	_msgLine	; msgLine
                           7674 ;----- asm -----
                           7675 ; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7676 	; #ENR#[1424]displayinn();
                           7677 ;--- end asm ---
   2D4D C6 07         [ 2] 7678 	ldb	#7	;,
   2D4F BD 00 6E      [ 8] 7679 	jsr	_subBank0
                           7680 ;----- asm -----
                           7681 ; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7682 	; #ENR#[1425]clearmonsterstack();
                           7683 ;--- end asm ---
   2D52 BD 3E 3B      [ 8] 7684 	jsr	_clearMonsterStack
                           7685 ;----- asm -----
                           7686 ; 1960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7687 	; #ENR#[1428]printmessage();
                           7688 ;--- end asm ---
   2D55 8E 1E DB      [ 3] 7689 	ldx	#LC145	;,
   2D58 BD 5A 71      [ 8] 7690 	jsr	_printMessage
                           7691 ;----- asm -----
                           7692 ; 1962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7693 	; #ENR#[1429]pause(small_pause);
                           7694 ;--- end asm ---
   2D5B C6 4B         [ 2] 7695 	ldb	#75	;,
   2D5D BD 3D 31      [ 8] 7696 	jsr	_pause
                           7697 ;----- asm -----
                           7698 ; 1964 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7699 	; #ENR#[1430]clearmessage();
                           7700 ;--- end asm ---
   2D60 7F C9 C2      [ 7] 7701 	clr	_msgLine	; msgLine
                           7702 ;----- asm -----
                           7703 ; 1966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7704 	; #ENR#[1431]tmp2 = (signed int)lv;
                           7705 ;--- end asm ---
   2D63 F6 C9 2F      [ 5] 7706 	ldb	_lv	;, lv
   2D66 F7 C8 FF      [ 5] 7707 	stb	_tmp2	;, tmp2
                           7708 ;----- asm -----
                           7709 ; 1968 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7710 	; #ENR#[1432]checkxp();
                           7711 ;--- end asm ---
   2D69 BD 52 EF      [ 8] 7712 	jsr	_checkXP
                           7713 ;----- asm -----
                           7714 ; 1970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7715 	; #ENR#[1433]if (lv != (unsigned int) tmp2)
                           7716 ;--- end asm ---
   2D6C F6 C8 FF      [ 5] 7717 	ldb	_tmp2	;, tmp2
   2D6F F1 C9 2F      [ 5] 7718 	cmpb	_lv	;cmpqi:	;, lv
   2D72 27 05         [ 3] 7719 	beq	L344	;
   2D74 C6 4B         [ 2] 7720 	ldb	#75	;,
   2D76 BD 3D 31      [ 8] 7721 	jsr	_pause
   2D79                    7722 L344:
                           7723 ;----- asm -----
                           7724 ; 1973 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7725 	; #ENR#[1435]return return_new_turn;
                           7726 ;--- end asm ---
   2D79 C6 01         [ 2] 7727 	ldb	#1	; D.3825,
   2D7B 16 F7 61      [ 5] 7728 	lbra	L345	;
   2D7E                    7729 L415:
                           7730 ;----- asm -----
                           7731 ; 2688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7732 	; #ENR#[1943]printmessage();
                           7733 ;--- end asm ---
   2D7E 8E 23 00      [ 3] 7734 	ldx	#LC194	;,
   2D81 BD 5A 71      [ 8] 7735 	jsr	_printMessage
                           7736 ;----- asm -----
                           7737 ; 2690 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7738 	; #ENR#[1944]ultmp = ul(randmax(100)+1)*ul(10)*ul(cz);
                           7739 ;--- end asm ---
   2D84 C6 64         [ 2] 7740 	ldb	#100	;,
   2D86 BD 5E 21      [ 8] 7741 	jsr	_RandMax
   2D89 E7 62         [ 5] 7742 	stb	2,s	;, D.3940
   2D8B F6 C9 3A      [ 5] 7743 	ldb	_cz	;, cz
   2D8E 86 0A         [ 2] 7744 	lda	#10	;umulqihi3	;
   2D90 3D            [11] 7745 	mul
   2D91 ED 6C         [ 6] 7746 	std	12,s	;,
   2D93 6C 62         [ 7] 7747 	inc	2,s	; D.3940
   2D95 E6 62         [ 5] 7748 	ldb	2,s	;, D.3940
   2D97 4F            [ 2] 7749 	clra		;zero_extendqihi: R:b -> R:d	;,
   2D98 34 06         [ 7] 7750 	pshs	d	; tmp289
   2D9A AE 6E         [ 6] 7751 	ldx	14,s	;,
   2D9C BD 76 87      [ 8] 7752 	jsr	_mulhi3
   2D9F 32 62         [ 5] 7753 	leas	2,s	;,,
   2DA1 BF C9 00      [ 6] 7754 	stx	_ultmp	; ultmp.164, ultmp
                           7755 ;----- asm -----
                           7756 ; 2692 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7757 	; #ENR#[1945]gd = gd + ull(ultmp);
                           7758 ;--- end asm ---
   2DA4 31 84         [ 4] 7759 	leay	,x	;, ultmp.164
   2DA6 AF 6A         [ 6] 7760 	stx	10,s	; tmp2,
   2DA8 CE 00 00      [ 3] 7761 	ldu	#0	;,
   2DAB EF 68         [ 6] 7762 	stu	8,s	;,
   2DAD FC C9 3D      [ 6] 7763 	ldd	_gd+2	;, gd
   2DB0 E3 6A         [ 7] 7764 	addd	10,s	;,
   2DB2 FD C9 3D      [ 6] 7765 	std	_gd+2	;, gd
   2DB5 FC C9 3B      [ 6] 7766 	ldd	_gd	;, gd
   2DB8 E9 69         [ 5] 7767 	adcb	9,s	;
   2DBA A9 68         [ 5] 7768 	adca	8,s	;
   2DBC FD C9 3B      [ 6] 7769 	std	_gd	;, gd
                           7770 ;----- asm -----
                           7771 ; 2694 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7772 	; #ENR#[1946]_fl_s(, ultmp);
                           7773 ;--- end asm ---
   2DBF 34 10         [ 6] 7774 	pshs	x	; ultmp.164
   2DC1 8E 23 22      [ 3] 7775 	ldx	#LC195	;,
   2DC4 BD 5E 66      [ 8] 7776 	jsr	__fl_s
                           7777 ;----- asm -----
                           7778 ; 2696 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7779 	; #ENR#[1947]printmessage(stringbuffer40);
                           7780 ;--- end asm ---
   2DC7 8E C8 BF      [ 3] 7781 	ldx	#_stringBuffer40	;,
   2DCA BD 5A 71      [ 8] 7782 	jsr	_printMessage
                           7783 ;----- asm -----
                           7784 ; 2698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7785 	; #ENR#[1948]pause(small_pause);
                           7786 ;--- end asm ---
   2DCD C6 4B         [ 2] 7787 	ldb	#75	;,
   2DCF BD 3D 31      [ 8] 7788 	jsr	_pause
                           7789 ;----- asm -----
                           7790 ; 2700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7791 	; #ENR#[1949]return return_pause;
                           7792 ;--- end asm ---
   2DD2 C6 07         [ 2] 7793 	ldb	#7	; D.3825,
   2DD4 32 62         [ 5] 7794 	leas	2,s	;,,
   2DD6 16 F7 06      [ 5] 7795 	lbra	L345	;
   2DD9                    7796 L475:
                           7797 ;----- asm -----
                           7798 ; 2044 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7799 	; #ENR#[1486]cz = cz + 1;
                           7800 ;--- end asm ---
   2DD9 7C C9 3A      [ 7] 7801 	inc	_cz	; cz
                           7802 ;----- asm -----
                           7803 ; 2046 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7804 	; #ENR#[1487]printmessage();
                           7805 ;--- end asm ---
   2DDC 8E 1F 4A      [ 3] 7806 	ldx	#LC150	;,
   2DDF BD 5A 71      [ 8] 7807 	jsr	_printMessage
                           7808 ;----- asm -----
                           7809 ; 2048 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7810 	; #ENR#[1488]return return_new_turn;
                           7811 ;--- end asm ---
   2DE2 C6 01         [ 2] 7812 	ldb	#1	; D.3825,
   2DE4 16 F6 F8      [ 5] 7813 	lbra	L345	;
   2DE7                    7814 L394:
                           7815 ;----- asm -----
                           7816 ; 2499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7817 	; #ENR#[1809]if (randmax(50)>20)
                           7818 ;--- end asm ---
   2DE7 C6 32         [ 2] 7819 	ldb	#50	;,
   2DE9 BD 5E 21      [ 8] 7820 	jsr	_RandMax
   2DEC C1 14         [ 2] 7821 	cmpb	#20	;cmpqi:	; D.3918,
   2DEE 10 23 00 73   [ 6] 7822 	lbls	L399	;
                           7823 ;----- asm -----
                           7824 ; 2502 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7825 	; #ENR#[1811]printmessage();
                           7826 ;--- end asm ---
   2DF2 8E 21 93      [ 3] 7827 	ldx	#LC178	;,
   2DF5 BD 5A 71      [ 8] 7828 	jsr	_printMessage
                           7829 ;----- asm -----
                           7830 ; 2504 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7831 	; #ENR#[1812]return return_pause;
                           7832 ;--- end asm ---
   2DF8 C6 07         [ 2] 7833 	ldb	#7	; D.3825,
   2DFA 16 F6 E2      [ 5] 7834 	lbra	L345	;
   2DFD                    7835 L434:
                           7836 ;----- asm -----
                           7837 ; 2970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7838 	; #ENR#[2147]tmp = (signed int) randmax(2*cz)+1;
                           7839 ;--- end asm ---
   2DFD F6 C9 3A      [ 5] 7840 	ldb	_cz	; tmp372, cz
   2E00 58            [ 2] 7841 	aslb	; tmp372
   2E01 BD 5E 21      [ 8] 7842 	jsr	_RandMax
   2E04 5C            [ 2] 7843 	incb	; D.3987
   2E05 F7 C8 FE      [ 5] 7844 	stb	_tmp	; D.3987, tmp
                           7845 ;----- asm -----
                           7846 ; 2972 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7847 	; #ENR#[2148]printmessage();
                           7848 ;--- end asm ---
   2E08 8E 24 67      [ 3] 7849 	ldx	#LC210	;,
   2E0B BD 5A 71      [ 8] 7850 	jsr	_printMessage
                           7851 ;----- asm -----
                           7852 ; 2976 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7853 	; #ENR#[2151]_fi_s(, (unsigned int) tmp);
                           7854 ;--- end asm ---
   2E0E F6 C8 FE      [ 5] 7855 	ldb	_tmp	;, tmp
   2E11 8E 18 4A      [ 3] 7856 	ldx	#LC131	;,
   2E14 BD 5B BD      [ 8] 7857 	jsr	__fi_s
                           7858 ;----- asm -----
                           7859 ; 2978 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7860 	; #ENR#[2152]printmessage(stringbuffer40);
                           7861 ;--- end asm ---
   2E17 8E C8 BF      [ 3] 7862 	ldx	#_stringBuffer40	;,
   2E1A BD 5A 71      [ 8] 7863 	jsr	_printMessage
                           7864 ;----- asm -----
                           7865 ; 2982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7866 	; #ENR#[2155]if (ch<=tmp)
                           7867 ;--- end asm ---
   2E1D F6 C8 FE      [ 5] 7868 	ldb	_tmp	;, tmp
   2E20 1D            [ 2] 7869 	sex		;extendqihi2: R:b -> R:d	;,
   2E21 10 B3 C9 2D   [ 8] 7870 	cmpd	_ch	;cmphi:	; tmp, ch
   2E25 10 2C 01 33   [ 6] 7871 	lbge	L477	;
                           7872 ;----- asm -----
                           7873 ; 2991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7874 	; #ENR#[2161]return return_pause;
                           7875 ;--- end asm ---
   2E29 C6 07         [ 2] 7876 	ldb	#7	; D.3825,
   2E2B 16 F6 B1      [ 5] 7877 	lbra	L345	;
   2E2E                    7878 L433:
                           7879 ;----- asm -----
                           7880 ; 2943 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7881 	; #ENR#[2124]printmessage();
                           7882 ;--- end asm ---
   2E2E 8E 24 62      [ 3] 7883 	ldx	#LC209	;,
   2E31 BD 5A 71      [ 8] 7884 	jsr	_printMessage
                           7885 ;----- asm -----
                           7886 ; 2945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7887 	; #ENR#[2125]return return_pause;
                           7888 ;--- end asm ---
   2E34 C6 07         [ 2] 7889 	ldb	#7	; D.3825,
   2E36 16 F6 A6      [ 5] 7890 	lbra	L345	;
   2E39                    7891 L418:
                           7892 ;----- asm -----
                           7893 ; 2742 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7894 	; #ENR#[1978]if (randmax(100) >60)
                           7895 ;--- end asm ---
   2E39 C6 64         [ 2] 7896 	ldb	#100	;,
   2E3B BD 5E 21      [ 8] 7897 	jsr	_RandMax
   2E3E C1 3C         [ 2] 7898 	cmpb	#60	;cmpqi:	; D.3959,
   2E40 10 23 02 3A   [ 6] 7899 	lbls	L420	;
                           7900 ;----- asm -----
                           7901 ; 2745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7902 	; #ENR#[1980]goto thronenothinghappens;
                           7903 ;--- end asm ---
   2E44 16 FA D3      [ 5] 7904 	lbra	L416	;
   2E47                    7905 L395:
                           7906 ;----- asm -----
                           7907 ; 2460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7908 	; #ENR#[1782]if ((signed int)randmax(20)< tmp2*3)
                           7909 ;--- end asm ---
   2E47 C6 14         [ 2] 7910 	ldb	#20	;,
   2E49 BD 5E 21      [ 8] 7911 	jsr	_RandMax
   2E4C E7 E8 23      [ 5] 7912 	stb	35,s	;, D.3911
   2E4F F6 C8 FF      [ 5] 7913 	ldb	_tmp2	; tmp260, tmp2
   2E52 58            [ 2] 7914 	aslb	; tmp260
   2E53 FB C8 FF      [ 5] 7915 	addb	_tmp2	; tmp260, tmp2
   2E56 E1 E8 23      [ 5] 7916 	cmpb	35,s	;cmpqi:(R)	; tmp260, D.3911
   2E59 10 2E 02 38   [ 6] 7917 	lbgt	L478	;
                           7918 ;----- asm -----
                           7919 ; 2491 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7920 	; #ENR#[1803]randomxp();
                           7921 ;--- end asm ---
   2E5D BD 55 1A      [ 8] 7922 	jsr	_randomXP
                           7923 ;----- asm -----
                           7924 ; 2493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7925 	; #ENR#[1804]return return_pause;
                           7926 ;--- end asm ---
   2E60 C6 07         [ 2] 7927 	ldb	#7	; D.3825,
   2E62 16 F6 7A      [ 5] 7928 	lbra	L345	;
   2E65                    7929 L399:
                           7930 ;----- asm -----
                           7931 ; 2510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7932 	; #ENR#[1817]if (randmax(100) > 50)
                           7933 ;--- end asm ---
   2E65 C6 64         [ 2] 7934 	ldb	#100	;,
   2E67 BD 5E 21      [ 8] 7935 	jsr	_RandMax
   2E6A C1 32         [ 2] 7936 	cmpb	#50	;cmpqi:	; D.3919,
   2E6C 10 23 01 75   [ 6] 7937 	lbls	L400	;
                           7938 ;----- asm -----
                           7939 ; 2517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7940 	; #ENR#[1823]printmessage();
                           7941 ;--- end asm ---
   2E70 8E 21 93      [ 3] 7942 	ldx	#LC178	;,
   2E73 BD 5A 71      [ 8] 7943 	jsr	_printMessage
                           7944 ;----- asm -----
                           7945 ; 2519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7946 	; #ENR#[1824]printmessage();
                           7947 ;--- end asm ---
   2E76 8E 21 A7      [ 3] 7948 	ldx	#LC179	;,
   2E79 BD 5A 71      [ 8] 7949 	jsr	_printMessage
                           7950 ;----- asm -----
                           7951 ; 2521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7952 	; #ENR#[1825]sf[drunk] = randmax(16)+1;
                           7953 ;--- end asm ---
   2E7C C6 10         [ 2] 7954 	ldb	#16	;,
   2E7E BD 5E 21      [ 8] 7955 	jsr	_RandMax
   2E81 5C            [ 2] 7956 	incb	; D.3920
   2E82 F7 C9 5D      [ 5] 7957 	stb	_sf+10	; D.3920, sf
                           7958 ;----- asm -----
                           7959 ; 2523 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7960 	; #ENR#[1826]return return_pause;
                           7961 ;--- end asm ---
   2E85 C6 07         [ 2] 7962 	ldb	#7	; D.3825,
   2E87 16 F6 55      [ 5] 7963 	lbra	L345	;
   2E8A                    7964 L476:
   2E8A 1F 03         [ 6] 7965 	tfr	d,u	;,
   2E8C 34 20         [ 6] 7966 	pshs	y	;cmphi: R:y with R:u	; tmp6,
   2E8E 11 A3 E1      [10] 7967 	cmpu	,s++	;cmphi:	;
   2E91 10 27 02 49   [ 6] 7968 	lbeq	L479	;
   2E95                    7969 L383:
                           7970 ;----- asm -----
                           7971 ; 2320 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7972 	; #ENR#[1684]if (ultmp<ul(ul(50)*ul(cz)))
                           7973 ;--- end asm ---
   2E95 F6 C9 3A      [ 5] 7974 	ldb	_cz	;, cz
   2E98 86 32         [ 2] 7975 	lda	#50	;umulqihi3	;
   2E9A 3D            [11] 7976 	mul
   2E9B 1F 02         [ 6] 7977 	tfr	d,y	;, tmp225
   2E9D 34 06         [ 7] 7978 	pshs	d	;cmphi: R:d with R:x	; tmp225, ultmp.140
   2E9F AC E1         [ 9] 7979 	cmpx	,s++	;cmphi:	; ultmp.140
   2EA1 10 25 F7 F9   [ 6] 7980 	lblo	L385	;
                           7981 ;----- asm -----
                           7982 ; 2327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7983 	; #ENR#[1690]gd = gd - ultmp;
                           7984 ;--- end asm ---
   2EA5 EC E8 1B      [ 6] 7985 	ldd	27,s	;, gd.142
   2EA8 A3 E8 17      [ 7] 7986 	subd	23,s	;, D.3871
   2EAB ED E8 1F      [ 6] 7987 	std	31,s	;, gd.143
   2EAE EC E8 19      [ 6] 7988 	ldd	25,s	;, gd.142
   2EB1 E2 E8 16      [ 5] 7989 	sbcb	22,s	; D.3871
   2EB4 A2 E8 15      [ 5] 7990 	sbca	21,s	; D.3871
   2EB7 ED E8 1D      [ 6] 7991 	std	29,s	;, gd.143
   2EBA AE E8 1D      [ 6] 7992 	ldx	29,s	;, gd.143
   2EBD BF C9 3B      [ 6] 7993 	stx	_gd	;, gd
   2EC0 10 AE E8 1F   [ 7] 7994 	ldy	31,s	;, gd.143
   2EC4 10 BF C9 3D   [ 7] 7995 	sty	_gd+2	;, gd
                           7996 ;----- asm -----
                           7997 ; 2329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7998 	; #ENR#[1691]tmp = (signed int)((ull(ultmp)*ull(100))/ (   ull(gd)+ ull(ultmp) ));
                           7999 ;--- end asm ---
   2EC8 FE C9 00      [ 6] 8000 	ldu	_ultmp	;, ultmp
   2ECB EF E8 32      [ 6] 8001 	stu	50,s	;, temp.604
   2ECE CC 00 00      [ 3] 8002 	ldd	#0	;,
   2ED1 ED E8 30      [ 6] 8003 	std	48,s	;, temp.604
   2ED4 10 8E 00 64   [ 4] 8004 	ldy	#100	; tmp228,
   2ED8 32 78         [ 5] 8005 	leas	-8,s	;,,
   2EDA ED 64         [ 6] 8006 	std	4,s	;,
   2EDC 10 AF 66      [ 7] 8007 	sty	6,s	; tmp228,
   2EDF AE E8 38      [ 6] 8008 	ldx	56,s	;, temp.604
   2EE2 AF E4         [ 5] 8009 	stx	,s	;,
   2EE4 EE E8 3A      [ 6] 8010 	ldu	58,s	;, temp.604
   2EE7 EF 62         [ 6] 8011 	stu	2,s	;,
   2EE9 30 E8 45      [ 5] 8012 	leax	69,s	;,,
   2EEC BD 76 A6      [ 8] 8013 	jsr	___mulsi3
   2EEF EC E8 27      [ 6] 8014 	ldd	39,s	;, gd.143
   2EF2 E3 E8 3A      [ 7] 8015 	addd	58,s	;, temp.604
   2EF5 ED E8 18      [ 6] 8016 	std	24,s	;,
   2EF8 EC E8 25      [ 6] 8017 	ldd	37,s	;, gd.143
   2EFB E9 E8 39      [ 5] 8018 	adcb	57,s	; temp.604
   2EFE A9 E8 38      [ 5] 8019 	adca	56,s	; temp.604
   2F01 ED E8 16      [ 6] 8020 	std	22,s	;,
   2F04 AE E8 16      [ 6] 8021 	ldx	22,s	;,
   2F07 AF 64         [ 6] 8022 	stx	4,s	;,
   2F09 EE E8 18      [ 6] 8023 	ldu	24,s	;,
   2F0C EF 66         [ 6] 8024 	stu	6,s	;,
   2F0E EC E8 45      [ 6] 8025 	ldd	69,s	;,
   2F11 ED E4         [ 5] 8026 	std	,s	;,
   2F13 AE E8 47      [ 6] 8027 	ldx	71,s	;,
   2F16 AF 62         [ 6] 8028 	stx	2,s	;,
   2F18 30 E8 41      [ 5] 8029 	leax	65,s	;,,
   2F1B BD 70 60      [ 8] 8030 	jsr	___udivsi3
   2F1E 32 68         [ 5] 8031 	leas	8,s	;,,
   2F20 E6 E8 3C      [ 5] 8032 	ldb	60,s	;,
   2F23 F7 C8 FE      [ 5] 8033 	stb	_tmp	;, tmp
                           8034 ;----- asm -----
                           8035 ; 2331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8036 	; #ENR#[1692]if ((signed int)randmax(100) < tmp)
                           8037 ;--- end asm ---
   2F26 1F 20         [ 6] 8038 	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp228,
   2F28 BD 5E 21      [ 8] 8039 	jsr	_RandMax
   2F2B F1 C8 FE      [ 5] 8040 	cmpb	_tmp	;cmpqi:	; D.3880, tmp
   2F2E 10 2C 01 5A   [ 6] 8041 	lbge	L386	;
                           8042 ;----- asm -----
                           8043 ; 2336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8044 	; #ENR#[1696]tmp2 = (signed int) randmax(7);
                           8045 ;--- end asm ---
   2F32 C6 07         [ 2] 8046 	ldb	#7	;,
   2F34 BD 5E 21      [ 8] 8047 	jsr	_RandMax
   2F37 F7 C8 FF      [ 5] 8048 	stb	_tmp2	; D.3882, tmp2
                           8049 ;----- asm -----
                           8050 ; 2338 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8051 	; #ENR#[1697]sf[tmp2] =(unsigned int) (sf[tmp2] + randmax((unsigned int)tmp)+(unsigned int)1);
                           8052 ;--- end asm ---
   2F3A 1D            [ 2] 8053 	sex		;extendqihi2: R:b -> R:d	; D.3882, tmp2.145
   2F3B 8E C9 53      [ 3] 8054 	ldx	#_sf	;,
   2F3E 31 8B         [ 8] 8055 	leay	d,x	; tmp238, tmp2.145,
   2F40 E6 A4         [ 4] 8056 	ldb	,y	;, sf
   2F42 E7 E8 21      [ 5] 8057 	stb	33,s	;, D.3884
   2F45 F6 C8 FE      [ 5] 8058 	ldb	_tmp	;, tmp
   2F48 BD 5E 21      [ 8] 8059 	jsr	_RandMax
   2F4B 5C            [ 2] 8060 	incb	; D.3885
   2F4C EB E8 21      [ 5] 8061 	addb	33,s	; D.3885, D.3884
   2F4F E7 A4         [ 4] 8062 	stb	,y	; D.3885, sf
                           8063 ;----- asm -----
                           8064 ; 2342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8065 	; #ENR#[1700]printmessage();
                           8066 ;--- end asm ---
   2F51 8E 20 C3      [ 3] 8067 	ldx	#LC168	;,
   2F54 BD 5A 71      [ 8] 8068 	jsr	_printMessage
   2F57                    8069 L387:
                           8070 ;----- asm -----
                           8071 ; 2350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8072 	; #ENR#[1706]return return_pause;
                           8073 ;--- end asm ---
   2F57 C6 07         [ 2] 8074 	ldb	#7	; D.3825,
   2F59 16 F5 83      [ 5] 8075 	lbra	L345	;
   2F5C                    8076 L477:
                           8077 ;----- asm -----
                           8078 ; 2985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8079 	; #ENR#[2157]pause(small_pause);
                           8080 ;--- end asm ---
   2F5C C6 4B         [ 2] 8081 	ldb	#75	;,
   2F5E BD 3D 31      [ 8] 8082 	jsr	_pause
                           8083 ;----- asm -----
                           8084 ; 2987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8085 	; #ENR#[2158]return return_player_dead;
                           8086 ;--- end asm ---
   2F61 C6 02         [ 2] 8087 	ldb	#2	; D.3825,
   2F63 16 F5 79      [ 5] 8088 	lbra	L345	;
   2F66                    8089 L427:
                           8090 ;----- asm -----
                           8091 ; 2823 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8092 	; #ENR#[2038]printmessage();
                           8093 ;--- end asm ---
   2F66 8E 23 84      [ 3] 8094 	ldx	#LC201	;,
   2F69 BD 5A 71      [ 8] 8095 	jsr	_printMessage
                           8096 ;----- asm -----
                           8097 ; 2827 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8098 	; #ENR#[2041]thronerolestatagain:
                           8099 ;--- end asm ---
   2F6C                    8100 L450:
                           8101 ;----- asm -----
                           8102 ; 2829 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8103 	; #ENR#[2042]tmp = (signed int)randmax(6);
                           8104 ;--- end asm ---
   2F6C C6 06         [ 2] 8105 	ldb	#6	;,
   2F6E BD 5E 21      [ 8] 8106 	jsr	_RandMax
   2F71 F7 C8 FE      [ 5] 8107 	stb	_tmp	; D.3972, tmp
                           8108 ;----- asm -----
                           8109 ; 2831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8110 	; #ENR#[2043]if (randmax(100) > 50)
                           8111 ;--- end asm ---
   2F74 C6 64         [ 2] 8112 	ldb	#100	;,
   2F76 BD 5E 21      [ 8] 8113 	jsr	_RandMax
   2F79 C1 32         [ 2] 8114 	cmpb	#50	;cmpqi:	; D.3974,
   2F7B 10 23 00 36   [ 6] 8115 	lbls	L428	;
                           8116 ;----- asm -----
                           8117 ; 2835 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8118 	; #ENR#[2046]if (s[tmp] <= 3) goto thronerolestatagain;
                           8119 ;--- end asm ---
   2F7F F6 C8 FE      [ 5] 8120 	ldb	_tmp	;, tmp
   2F82 1D            [ 2] 8121 	sex		;extendqihi2: R:b -> R:d	;,
   2F83 1F 02         [ 6] 8122 	tfr	d,y	;,
   2F85 30 A9 C9 43   [ 8] 8123 	leax	_s,y	; tmp324,,
   2F89 E6 84         [ 4] 8124 	ldb	,x	; temp.605, s
   2F8B C1 03         [ 2] 8125 	cmpb	#3	;cmpqi:	; temp.605,
   2F8D 23 DD         [ 3] 8126 	bls	L450	;
                           8127 ;----- asm -----
                           8128 ; 2840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8129 	; #ENR#[2050]s[tmp] = s[tmp] - 1;
                           8130 ;--- end asm ---
   2F8F 5A            [ 2] 8131 	decb	; temp.605
   2F90 E7 84         [ 4] 8132 	stb	,x	; temp.605, s
                           8133 ;----- asm -----
                           8134 ; 2842 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8135 	; #ENR#[2051]_fs(, stats[tmp]);
                           8136 ;--- end asm ---
   2F92 F6 C8 FE      [ 5] 8137 	ldb	_tmp	;, tmp
   2F95 1D            [ 2] 8138 	sex		;extendqihi2: R:b -> R:d	;,
   2F96 ED E4         [ 5] 8139 	std	,s	;,
   2F98 58            [ 2] 8140 	aslb	;
   2F99 49            [ 2] 8141 	rola	;
   2F9A 1F 01         [ 6] 8142 	tfr	d,x	;, tmp330
   2F9C AE 89 01 64   [ 9] 8143 	ldx	_stats,x	;, stats
   2FA0 AF E3         [ 8] 8144 	stx	,--s	;,
   2FA2 8E 23 A3      [ 3] 8145 	ldx	#LC202	;,
   2FA5 BD 5B 50      [ 8] 8146 	jsr	__fs
   2FA8 32 62         [ 5] 8147 	leas	2,s	;,,
   2FAA                    8148 L430:
                           8149 ;----- asm -----
                           8150 ; 2857 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8151 	; #ENR#[2062]printmessage(stringbuffer40);
                           8152 ;--- end asm ---
   2FAA 8E C8 BF      [ 3] 8153 	ldx	#_stringBuffer40	;,
   2FAD BD 5A 71      [ 8] 8154 	jsr	_printMessage
                           8155 ;----- asm -----
                           8156 ; 2859 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8157 	; #ENR#[2063]return return_pause;
                           8158 ;--- end asm ---
   2FB0 C6 07         [ 2] 8159 	ldb	#7	; D.3825,
   2FB2 16 F5 2A      [ 5] 8160 	lbra	L345	;
   2FB5                    8161 L428:
                           8162 ;----- asm -----
                           8163 ; 2848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8164 	; #ENR#[2056]if (s[tmp] >= 18) goto thronerolestatagain;
                           8165 ;--- end asm ---
   2FB5 F6 C8 FE      [ 5] 8166 	ldb	_tmp	;, tmp
   2FB8 1D            [ 2] 8167 	sex		;extendqihi2: R:b -> R:d	;,
   2FB9 1F 02         [ 6] 8168 	tfr	d,y	;,
   2FBB 30 A9 C9 43   [ 8] 8169 	leax	_s,y	; tmp335,,
   2FBF E6 84         [ 4] 8170 	ldb	,x	; D.3975, s
   2FC1 C1 11         [ 2] 8171 	cmpb	#17	;cmpqi:	; D.3975,
   2FC3 10 22 FF A5   [ 6] 8172 	lbhi	L450	;
                           8173 ;----- asm -----
                           8174 ; 2852 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8175 	; #ENR#[2059]s[tmp] = s[tmp] + 1;
                           8176 ;--- end asm ---
   2FC7 5C            [ 2] 8177 	incb	; D.3975
   2FC8 E7 84         [ 4] 8178 	stb	,x	; D.3975, s
                           8179 ;----- asm -----
                           8180 ; 2854 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8181 	; #ENR#[2060]_fs(, stats[tmp]);
                           8182 ;--- end asm ---
   2FCA F6 C8 FE      [ 5] 8183 	ldb	_tmp	;, tmp
   2FCD 1D            [ 2] 8184 	sex		;extendqihi2: R:b -> R:d	;,
   2FCE ED E4         [ 5] 8185 	std	,s	;,
   2FD0 58            [ 2] 8186 	aslb	;
   2FD1 49            [ 2] 8187 	rola	;
   2FD2 1F 01         [ 6] 8188 	tfr	d,x	;, tmp341
   2FD4 AE 89 01 64   [ 9] 8189 	ldx	_stats,x	;, stats
   2FD8 AF E3         [ 8] 8190 	stx	,--s	;,
   2FDA 8E 23 B8      [ 3] 8191 	ldx	#LC203	;,
   2FDD BD 5B 50      [ 8] 8192 	jsr	__fs
   2FE0 32 62         [ 5] 8193 	leas	2,s	;,,
   2FE2 16 FF C5      [ 5] 8194 	lbra	L430	;
   2FE5                    8195 L400:
                           8196 ;----- asm -----
                           8197 ; 2529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8198 	; #ENR#[1831]if (randmax(100) > 50)
                           8199 ;--- end asm ---
   2FE5 C6 64         [ 2] 8200 	ldb	#100	;,
   2FE7 BD 5E 21      [ 8] 8201 	jsr	_RandMax
   2FEA C1 32         [ 2] 8202 	cmpb	#50	;cmpqi:	; D.3922,
   2FEC 10 23 01 01   [ 6] 8203 	lbls	L401	;
                           8204 ;----- asm -----
                           8205 ; 2534 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8206 	; #ENR#[1835]printmessage();
                           8207 ;--- end asm ---
   2FF0 8E 21 BF      [ 3] 8208 	ldx	#LC180	;,
   2FF3 BD 5A 71      [ 8] 8209 	jsr	_printMessage
                           8210 ;----- asm -----
                           8211 ; 2536 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8212 	; #ENR#[1836]for (int i=0;i<10;i++) inventory[i]=0;
                           8213 ;--- end asm ---
   2FF6 8E 00 02      [ 3] 8214 	ldx	#2	; tmp273,
   2FF9 CC C9 49      [ 3] 8215 	ldd	#_inventory	; tmp271,
   2FFC 4F            [ 2] 8216 	clra	;andqi(ZERO)	;
   2FFD C4 01         [ 2] 8217 	andb	#1	;,
   2FFF 1F 02         [ 6] 8218 	tfr	d,y	; tmp271, tmp270
   3001 1F 10         [ 6] 8219 	tfr	x,d	; tmp273,
   3003 34 20         [ 6] 8220 	pshs	y	;subhi: R:d -= R:y	; tmp270,
   3005 A3 E1         [ 9] 8221 	subd	,s++	;
                           8222 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3007 1F 01         [ 6] 8223 	tfr	d,x	;, tmp272
                           8224 ; ORG>	tfr	d,x	;, tmp272
                           8225 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp272,
   3009 C4 01         [ 2] 8226 	andb	#1	;,
   300B E7 E8 2C      [ 5] 8227 	stb	44,s	;, prolog_loop_niters.542
   300E 10 27 01 0C   [ 6] 8228 	lbeq	L480	;
   3012 7F C9 49      [ 7] 8229 	clr	_inventory	; inventory
   3015 C6 01         [ 2] 8230 	ldb	#1	;,
   3017 E7 E8 25      [ 5] 8231 	stb	37,s	;, i
   301A C6 09         [ 2] 8232 	ldb	#9	;,
   301C E7 E8 2B      [ 5] 8233 	stb	43,s	;, ivtmp.535
   301F                    8234 L403:
   301F C6 0A         [ 2] 8235 	ldb	#10	; tmp276,
   3021 E0 E8 2C      [ 5] 8236 	subb	44,s	; tmp276, prolog_loop_niters.542
   3024 E7 E8 2D      [ 5] 8237 	stb	45,s	; tmp276, niters.545
   3027 54            [ 2] 8238 	lsrb	; tmp276
   3028 E7 E8 2E      [ 5] 8239 	stb	46,s	; tmp276, bnd.546
   302B 58            [ 2] 8240 	aslb	; tmp276
   302C E7 E8 2F      [ 5] 8241 	stb	47,s	; tmp276, ratio_mult_vf.547
   302F 27 39         [ 3] 8242 	beq	L443	;
   3031 E6 E8 2C      [ 5] 8243 	ldb	44,s	;, prolog_loop_niters.542
   3034 4F            [ 2] 8244 	clra		;zero_extendqihi: R:b -> R:d	;,
   3035 1F 02         [ 6] 8245 	tfr	d,y	;,
   3037 30 A9 C9 49   [ 8] 8246 	leax	_inventory,y	; ivtmp.579,,
   303B 6F 62         [ 7] 8247 	clr	2,s	; ivtmp.574
   303D                    8248 L405:
   303D CC 00 00      [ 3] 8249 	ldd	#0	;,
   3040 ED 81         [ 8] 8250 	std	,x++	;,
   3042 6C 62         [ 7] 8251 	inc	2,s	; ivtmp.574
   3044 E6 E8 2E      [ 5] 8252 	ldb	46,s	;, bnd.546
   3047 E1 62         [ 5] 8253 	cmpb	2,s	;cmpqi:	;, ivtmp.574
   3049 22 F2         [ 3] 8254 	bhi	L405	;
   304B E6 E8 2B      [ 5] 8255 	ldb	43,s	;, ivtmp.535
   304E E0 E8 2F      [ 5] 8256 	subb	47,s	;, ratio_mult_vf.547
   3051 E7 E8 2B      [ 5] 8257 	stb	43,s	;, ivtmp.535
   3054 E6 E8 25      [ 5] 8258 	ldb	37,s	;, i
   3057 EB E8 2F      [ 5] 8259 	addb	47,s	;, ratio_mult_vf.547
   305A E7 E8 25      [ 5] 8260 	stb	37,s	;, i
   305D E6 E8 2F      [ 5] 8261 	ldb	47,s	;, ratio_mult_vf.547
   3060 E1 E8 2D      [ 5] 8262 	cmpb	45,s	;cmpqi:	;, niters.545
   3063 26 05         [ 3] 8263 	bne	L443	;
   3065                    8264 L406:
                           8265 ;----- asm -----
                           8266 ; 2539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8267 	; #ENR#[1838]return return_pause;
                           8268 ;--- end asm ---
   3065 C6 07         [ 2] 8269 	ldb	#7	; D.3825,
   3067 16 F4 75      [ 5] 8270 	lbra	L345	;
   306A                    8271 L443:
   306A E6 E8 25      [ 5] 8272 	ldb	37,s	;, i
   306D 1D            [ 2] 8273 	sex		;extendqihi2: R:b -> R:d	;,
   306E 1F 01         [ 6] 8274 	tfr	d,x	;, i
   3070 6F 89 C9 49   [10] 8275 	clr	_inventory,x	; inventory
   3074 6C E8 25      [ 7] 8276 	inc	37,s	; i
   3077 6A E8 2B      [ 7] 8277 	dec	43,s	; ivtmp.535
   307A 26 EE         [ 3] 8278 	bne	L443	;
   307C 20 E7         [ 3] 8279 	bra	L406	;
   307E                    8280 L420:
                           8281 ;----- asm -----
                           8282 ; 2751 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8283 	; #ENR#[1985]if (randmax(100) >40)
                           8284 ;--- end asm ---
   307E C6 64         [ 2] 8285 	ldb	#100	;,
   3080 BD 5E 21      [ 8] 8286 	jsr	_RandMax
   3083 C1 28         [ 2] 8287 	cmpb	#40	;cmpqi:	; D.3960,
   3085 10 23 00 A0   [ 6] 8288 	lbls	L421	;
                           8289 ;----- asm -----
                           8290 ; 2754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8291 	; #ENR#[1987]goto teleportnow;
                           8292 ;--- end asm ---
   3089 16 F6 EF      [ 5] 8293 	lbra	L351	;
   308C                    8294 L386:
                           8295 ;----- asm -----
                           8296 ; 2347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8297 	; #ENR#[1704]printmessage();
                           8298 ;--- end asm ---
   308C 8E 20 D7      [ 3] 8299 	ldx	#LC169	;,
   308F BD 5A 71      [ 8] 8300 	jsr	_printMessage
   3092 16 FE C2      [ 5] 8301 	lbra	L387	;
   3095                    8302 L478:
                           8303 ;----- asm -----
                           8304 ; 2465 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8305 	; #ENR#[1786]printmessage();
                           8306 ;--- end asm ---
   3095 8E 21 6E      [ 3] 8307 	ldx	#LC176	;,
   3098 BD 5A 71      [ 8] 8308 	jsr	_printMessage
                           8309 ;----- asm -----
                           8310 ; 2467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8311 	; #ENR#[1787]tmp = (signed int)randmax(cz*3)+1;
                           8312 ;--- end asm ---
   309B F6 C9 3A      [ 5] 8313 	ldb	_cz	; tmp264, cz
   309E 58            [ 2] 8314 	aslb	; tmp264
   309F FB C9 3A      [ 5] 8315 	addb	_cz	; tmp264, cz
   30A2 BD 5E 21      [ 8] 8316 	jsr	_RandMax
   30A5 5C            [ 2] 8317 	incb	; tmp.154
   30A6 F7 C8 FE      [ 5] 8318 	stb	_tmp	; tmp.154, tmp
                           8319 ;----- asm -----
                           8320 ; 2469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8321 	; #ENR#[1788]_fi_s(, (unsigned int) tmp);
                           8322 ;--- end asm ---
   30A9 8E 21 7D      [ 3] 8323 	ldx	#LC177	;,
   30AC BD 5B BD      [ 8] 8324 	jsr	__fi_s
                           8325 ;----- asm -----
                           8326 ; 2471 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8327 	; #ENR#[1789]printmessage(stringbuffer40);
                           8328 ;--- end asm ---
   30AF 8E C8 BF      [ 3] 8329 	ldx	#_stringBuffer40	;,
   30B2 BD 5A 71      [ 8] 8330 	jsr	_printMessage
                           8331 ;----- asm -----
                           8332 ; 2476 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8333 	; #ENR#[1793]if (tmp>=ch)
                           8334 ;--- end asm ---
   30B5 F6 C8 FE      [ 5] 8335 	ldb	_tmp	;, tmp
   30B8 E7 E8 34      [ 5] 8336 	stb	52,s	;, tmp.618
   30BB BE C9 2D      [ 6] 8337 	ldx	_ch	; ch.620, ch
   30BE 1D            [ 2] 8338 	sex		;extendqihi2: R:b -> R:d	;,
   30BF 1F 02         [ 6] 8339 	tfr	d,y	;, tmp.618
   30C1 34 10         [ 6] 8340 	pshs	x	;cmphi: R:x with R:d	; ch.620, tmp.618
   30C3 10 A3 E1      [10] 8341 	cmpd	,s++	;cmphi:	; tmp.618
   30C6 10 2C 00 DF   [ 6] 8342 	lbge	L481	;
                           8343 ;----- asm -----
                           8344 ; 2484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8345 	; #ENR#[1798]ch = ch - ((unsigned int)tmp);
                           8346 ;--- end asm ---
   30CA E6 E8 34      [ 5] 8347 	ldb	52,s	;, tmp.618
   30CD 4F            [ 2] 8348 	clra		;zero_extendqihi: R:b -> R:d	;,
   30CE 1F 02         [ 6] 8349 	tfr	d,y	;, tmp.618
   30D0 1F 10         [ 6] 8350 	tfr	x,d	; ch.620,
   30D2 34 20         [ 6] 8351 	pshs	y	;subhi: R:d -= R:y	; tmp.618,
   30D4 A3 E1         [ 9] 8352 	subd	,s++	;
   30D6 FD C9 2D      [ 6] 8353 	std	_ch	; tmp268, ch
                           8354 ;----- asm -----
                           8355 ; 2486 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8356 	; #ENR#[1799]return return_pause;
                           8357 ;--- end asm ---
   30D9 C6 07         [ 2] 8358 	ldb	#7	; D.3825,
   30DB 16 F4 01      [ 5] 8359 	lbra	L345	;
   30DE                    8360 L479:
   30DE 10 AE E8 17   [ 7] 8361 	ldy	23,s	;, D.3871
   30E2 EE E8 1B      [ 6] 8362 	ldu	27,s	;, gd.142
   30E5 34 40         [ 6] 8363 	pshs	u	;cmphi: R:u with R:y	;,
   30E7 10 AC E1      [10] 8364 	cmpy	,s++	;cmphi:	;
   30EA 10 23 FD A7   [ 6] 8365 	lbls	L383	;
   30EE 16 FB 21      [ 5] 8366 	lbra	L440	;
   30F1                    8367 L401:
                           8368 ;----- asm -----
                           8369 ; 2546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8370 	; #ENR#[1844]printmessage();
                           8371 ;--- end asm ---
   30F1 8E 21 DA      [ 3] 8372 	ldx	#LC181	;,
   30F4 BD 5A 71      [ 8] 8373 	jsr	_printMessage
                           8374 ;----- asm -----
                           8375 ; 2548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8376 	; #ENR#[1845]cs = cs + randmax(cz*4)+1;
                           8377 ;--- end asm ---
   30F7 F6 C9 3A      [ 5] 8378 	ldb	_cz	; tmp282, cz
   30FA 58            [ 2] 8379 	aslb	; tmp282
   30FB 58            [ 2] 8380 	aslb	; tmp282
   30FC BD 5E 21      [ 8] 8381 	jsr	_RandMax
   30FF 10 BE C9 36   [ 7] 8382 	ldy	_cs	;, cs
   3103 30 21         [ 5] 8383 	leax	1,y	; tmp283,,
   3105 3A            [ 3] 8384 	abx
   3106 BF C9 36      [ 6] 8385 	stx	_cs	; cs.158, cs
                           8386 ;----- asm -----
                           8387 ; 2550 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8388 	; #ENR#[1846]_fl_s(, cs);
                           8389 ;--- end asm ---
   3109 34 10         [ 6] 8390 	pshs	x	; cs.158
   310B 8E 21 FF      [ 3] 8391 	ldx	#LC182	;,
   310E BD 5E 66      [ 8] 8392 	jsr	__fl_s
                           8393 ;----- asm -----
                           8394 ; 2552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8395 	; #ENR#[1847]printmessage(stringbuffer40);
                           8396 ;--- end asm ---
   3111 8E C8 BF      [ 3] 8397 	ldx	#_stringBuffer40	;,
   3114 BD 5A 71      [ 8] 8398 	jsr	_printMessage
                           8399 ;----- asm -----
                           8400 ; 2554 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8401 	; #ENR#[1848]return return_pause;
                           8402 ;--- end asm ---
   3117 C6 07         [ 2] 8403 	ldb	#7	; D.3825,
   3119 32 62         [ 5] 8404 	leas	2,s	;,,
   311B 16 F3 C1      [ 5] 8405 	lbra	L345	;
   311E                    8406 L480:
   311E 6F E8 25      [ 7] 8407 	clr	37,s	; i
   3121 C6 0A         [ 2] 8408 	ldb	#10	;,
   3123 E7 E8 2B      [ 5] 8409 	stb	43,s	;, ivtmp.535
   3126 16 FE F6      [ 5] 8410 	lbra	L403	;
   3129                    8411 L421:
                           8412 ;----- asm -----
                           8413 ; 2758 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8414 	; #ENR#[1990]printmessage();
                           8415 ;--- end asm ---
   3129 8E 23 4E      [ 3] 8416 	ldx	#LC198	;,
   312C BD 5A 71      [ 8] 8417 	jsr	_printMessage
                           8418 ;----- asm -----
                           8419 ; 2760 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8420 	; #ENR#[1991]if (randmax(100) > 50)
                           8421 ;--- end asm ---
   312F C6 64         [ 2] 8422 	ldb	#100	;,
   3131 BD 5E 21      [ 8] 8423 	jsr	_RandMax
   3134 C1 32         [ 2] 8424 	cmpb	#50	;cmpqi:	; D.3961,
   3136 10 22 00 B2   [ 6] 8425 	lbhi	L482	;
                           8426 ;----- asm -----
                           8427 ; 2783 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8428 	; #ENR#[2008]if (lv>cz) goto thronenothinghappens;
                           8429 ;--- end asm ---
   313A F6 C9 2F      [ 5] 8430 	ldb	_lv	;, lv
   313D E7 62         [ 5] 8431 	stb	2,s	;, lv.114
   313F F1 C9 3A      [ 5] 8432 	cmpb	_cz	;cmpqi:	;, cz
   3142 10 22 F7 D4   [ 6] 8433 	lbhi	L416	;
                           8434 ;----- asm -----
                           8435 ; 2787 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8436 	; #ENR#[2011]ex = ull(1000)*ull(ull(2)<<(lv-1)) + 1;
                           8437 ;--- end asm ---
   3146 5A            [ 2] 8438 	decb	;
   3147 E7 67         [ 5] 8439 	stb	7,s	;,
   3149 E6 62         [ 5] 8440 	ldb	2,s	; tmp308, lv.114
   314B CB EF         [ 2] 8441 	addb	#-17	; tmp308,
   314D 10 2B 00 62   [ 6] 8442 	lbmi	L424	;
   3151 4F            [ 2] 8443 	clra		;zero_extendqihi: R:b -> R:d	; tmp308,
   3152 1F 01         [ 6] 8444 	tfr	d,x	;, tmp309
   3154 CC 00 02      [ 3] 8445 	ldd	#2	;,
   3157 34 10         [ 6] 8446 	pshs	x	; tmp309
   3159 30 1F         [ 5] 8447 	leax	-1,x	; tmp309
   315B 8C FF FF      [ 4] 8448 	cmpx	#-1	; tmp309
   315E 27 04         [ 3] 8449 	beq	.+6
   3160 58            [ 2] 8450 	aslb
   3161 49            [ 2] 8451 	rola
   3162 20 F5         [ 3] 8452 	bra	.-9
   3164 35 10         [ 6] 8453 	puls	x	; tmp309
   3166 1F 02         [ 6] 8454 	tfr	d,y	;, tmp395
   3168 CE 00 00      [ 3] 8455 	ldu	#0	; tmp396,
   316B                    8456 L425:
   316B 32 78         [ 5] 8457 	leas	-8,s	;,,
   316D CC 00 00      [ 3] 8458 	ldd	#0	;,
   3170 ED 64         [ 6] 8459 	std	4,s	;,
   3172 8E 03 E8      [ 3] 8460 	ldx	#1000	;,
   3175 AF 66         [ 6] 8461 	stx	6,s	;,
   3177 10 AF E4      [ 6] 8462 	sty	,s	; tmp395,
   317A EF 62         [ 6] 8463 	stu	2,s	; tmp396,
   317C 30 E8 45      [ 5] 8464 	leax	69,s	;,,
   317F BD 76 A6      [ 8] 8465 	jsr	___mulsi3
   3182 32 68         [ 5] 8466 	leas	8,s	;,,
   3184 10 AE E8 3D   [ 7] 8467 	ldy	61,s	;,
   3188 10 AF 63      [ 7] 8468 	sty	3,s	;,
   318B EE E8 3F      [ 6] 8469 	ldu	63,s	;,
   318E EF 65         [ 6] 8470 	stu	5,s	;,
   3190 EC 65         [ 6] 8471 	ldd	5,s	;,
   3192 C3 00 01      [ 4] 8472 	addd	#1	;,
   3195 FD C9 32      [ 6] 8473 	std	_ex+2	;, ex
   3198 EC 63         [ 6] 8474 	ldd	3,s	;,
   319A C9 00         [ 2] 8475 	adcb	#0	;
   319C 89 00         [ 2] 8476 	adca	#0	;
   319E FD C9 30      [ 6] 8477 	std	_ex	;, ex
                           8478 ;----- asm -----
                           8479 ; 2789 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8480 	; #ENR#[2012]checkxp();
                           8481 ;--- end asm ---
   31A1 BD 52 EF      [ 8] 8482 	jsr	_checkXP
                           8483 ;----- asm -----
                           8484 ; 2791 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8485 	; #ENR#[2013]return return_pause;
                           8486 ;--- end asm ---
   31A4 C6 07         [ 2] 8487 	ldb	#7	; D.3825,
   31A6 16 F3 36      [ 5] 8488 	lbra	L345	;
   31A9                    8489 L481:
                           8490 ;----- asm -----
                           8491 ; 2479 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8492 	; #ENR#[1795]pause(small_pause);
                           8493 ;--- end asm ---
   31A9 C6 4B         [ 2] 8494 	ldb	#75	;,
   31AB BD 3D 31      [ 8] 8495 	jsr	_pause
                           8496 ;----- asm -----
                           8497 ; 2481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8498 	; #ENR#[1796]return return_player_dead;
                           8499 ;--- end asm ---
   31AE C6 02         [ 2] 8500 	ldb	#2	; D.3825,
   31B0 16 F3 2C      [ 5] 8501 	lbra	L345	;
   31B3                    8502 L424:
   31B3 C6 0F         [ 2] 8503 	ldb	#15	; tmp312,
   31B5 E0 67         [ 5] 8504 	subb	7,s	; tmp311,
   31B7 4F            [ 2] 8505 	clra		;zero_extendqihi: R:b -> R:d	; tmp311,
   31B8 1F 01         [ 6] 8506 	tfr	d,x	;, tmp314
   31BA E6 67         [ 5] 8507 	ldb	7,s	;,
   31BC 4F            [ 2] 8508 	clra		;zero_extendqihi: R:b -> R:d	;,
   31BD ED E4         [ 5] 8509 	std	,s	;,
   31BF CC 00 01      [ 3] 8510 	ldd	#1	;,
   31C2 34 10         [ 6] 8511 	pshs	x	; tmp314
   31C4 30 1F         [ 5] 8512 	leax	-1,x	; tmp314
   31C6 8C FF FF      [ 4] 8513 	cmpx	#-1	; tmp314
   31C9 27 04         [ 3] 8514 	beq	.+6
   31CB 44            [ 2] 8515 	lsra
   31CC 56            [ 2] 8516 	rorb
   31CD 20 F5         [ 3] 8517 	bra	.-9
   31CF 35 10         [ 6] 8518 	puls	x	; tmp314
   31D1 1F 02         [ 6] 8519 	tfr	d,y	;, tmp395
   31D3 CC 00 02      [ 3] 8520 	ldd	#2	;,
   31D6 AE E4         [ 5] 8521 	ldx	,s	;,
   31D8 34 10         [ 6] 8522 	pshs	x	;
   31DA 30 1F         [ 5] 8523 	leax	-1,x	;
   31DC 8C FF FF      [ 4] 8524 	cmpx	#-1	;
   31DF 27 04         [ 3] 8525 	beq	.+6
   31E1 58            [ 2] 8526 	aslb
   31E2 49            [ 2] 8527 	rola
   31E3 20 F5         [ 3] 8528 	bra	.-9
   31E5 35 10         [ 6] 8529 	puls	x	;
   31E7 1F 03         [ 6] 8530 	tfr	d,u	;, tmp396
   31E9 16 FF 7F      [ 5] 8531 	lbra	L425	;
   31EC                    8532 L482:
                           8533 ;----- asm -----
                           8534 ; 2766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8535 	; #ENR#[1996]ex = ex >> 1;
                           8536 ;--- end asm ---
   31EC FC C9 30      [ 6] 8537 	ldd	_ex	; tmp302, ex
   31EF 1F 98         [ 6] 8538 	tfr	b,a	;,
   31F1 5F            [ 2] 8539 	clrb	;
   31F2 46            [ 2] 8540 	rora	;
   31F3 46            [ 2] 8541 	rora	;
   31F4 84 80         [ 2] 8542 	anda	#-128	;,
   31F6 74 C9 32      [ 7] 8543 	lsr	_ex+2	; ex
   31F9 76 C9 33      [ 7] 8544 	ror	_ex+3	; ex
   31FC BE C9 32      [ 6] 8545 	ldx	_ex+2	; ex, ex
   31FF 34 10         [ 6] 8546 	pshs	x	; ex
   3201 AA E0         [ 6] 8547 	ora	,s+	;,
   3203 EA E0         [ 6] 8548 	orb	,s+	;,
   3205 FD C9 32      [ 6] 8549 	std	_ex+2	; tmp304, ex
   3208 74 C9 30      [ 7] 8550 	lsr	_ex	; ex
   320B 76 C9 31      [ 7] 8551 	ror	_ex+1	; ex
                           8552 ;----- asm -----
                           8553 ; 2768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8554 	; #ENR#[1997]checkxp();
                           8555 ;--- end asm ---
   320E BD 52 EF      [ 8] 8556 	jsr	_checkXP
                           8557 ;----- asm -----
                           8558 ; 2770 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8559 	; #ENR#[1998]if (ch==0)
                           8560 ;--- end asm ---
   3211 BE C9 2D      [ 6] 8561 	ldx	_ch	; ch, ch
   3214 26 05         [ 3] 8562 	bne	L423	;
                           8563 ;----- asm -----
                           8564 ; 2774 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8565 	; #ENR#[2001]return return_player_dead;
                           8566 ;--- end asm ---
   3216 C6 02         [ 2] 8567 	ldb	#2	; D.3825,
   3218 16 F2 C4      [ 5] 8568 	lbra	L345	;
   321B                    8569 L423:
                           8570 ;----- asm -----
                           8571 ; 2777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8572 	; #ENR#[2003]return return_pause;
                           8573 ;--- end asm ---
   321B C6 07         [ 2] 8574 	ldb	#7	; D.3825,
   321D 16 F2 BF      [ 5] 8575 	lbra	L345	;
   3220                    8576 LC214:
   3220 3E 00              8577 	.ascii	">\0"
   3222                    8578 LC215:
   3222 53 54 41 59 2E 2E  8579 	.ascii	"STAY...\0"
        2E 00
   322A                    8580 LC216:
   322A 59 4F 55 20 44 49  8581 	.ascii	"YOU DIED!!\0"
        45 44 21 21 00
   3235                    8582 LC217:
   3235 41 4E 4F 54 48 45  8583 	.byte	65,78,79,84,72,69,82,32
        52 20
   323D 4E 4F 54 20 53 4F  8584 	.byte	78,79,84,32,83,79,32,-128
        20 80
   3245 00                 8585 	.byte	0
   3246                    8586 LC218:
   3246 41 4E 4F 54 48 45  8587 	.byte	65,78,79,84,72,69,82,-128
        52 80
   324E 00                 8588 	.byte	0
   324F                    8589 LC219:
   324F 4D 49 47 48 54 59  8590 	.byte	77,73,71,72,84,89,32,65
        20 41
   3257 44 56 45 4E 54 55  8591 	.byte	68,86,69,78,84,85,82,69
        52 45
   325F 52 80 00           8592 	.byte	82,-128,0
   3262                    8593 LC220:
   3262 42 49 54 45 53 20  8594 	.byte	66,73,84,69,83,32,84,72
        54 48
   326A 45 20 44 55 53 54  8595 	.byte	69,32,68,85,83,84,-128,0
        80 00
   3272                    8596 LC221:
   3272 44 4F 20 59 4F 55  8597 	.byte	68,79,32,89,79,85,32,87
        20 57
   327A 41 4E 54 20 54 4F  8598 	.byte	65,78,84,32,84,79,32,-128
        20 80
   3282 00                 8599 	.byte	0
   3283                    8600 LC222:
   3283 54 52 59 20 41 47  8601 	.byte	84,82,89,32,65,71,65,73
        41 49
   328B 4E 3F 20 3C 31 2D  8602 	.byte	78,63,32,60,49,45,52,62
        34 3E
   3293 80 00              8603 	.byte	-128,0
   3295                    8604 LC223:
   3295 4C 4F 41 44 20 41  8605 	.byte	76,79,65,68,32,65,32,67
        20 43
   329D 48 41 52 41 43 54  8606 	.byte	72,65,82,65,67,84,69,82
        45 52
   32A5 3F 20 3C 34 3E 80  8607 	.byte	63,32,60,52,62,-128,0
        00
   32AC                    8608 LC224:
   32AC 43 48 41 52 41 43  8609 	.ascii	"CHARACTER LOADED\0"
        54 45 52 20 4C 4F
        41 44 45 44 00
                           8610 	.globl	_main
   32BD                    8611 _main:
   32BD 34 40         [ 6] 8612 	pshs	u	;
   32BF 32 72         [ 5] 8613 	leas	-14,s	;,,
                           8614 ;----- asm -----
                           8615 ; 3041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8616 	; #ENR#[2195]restart:
                           8617 ;--- end asm ---
   32C1                    8618 L484:
                           8619 ;----- asm -----
                           8620 ; 3043 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8621 	; #ENR#[2196]initvars();
                           8622 ;--- end asm ---
   32C1 BD 56 0F      [ 8] 8623 	jsr	_initVars
                           8624 ;----- asm -----
                           8625 ; 3045 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8626 	; #ENR#[2197]#ifndef no_title
                           8627 ; 3047 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8628 	; #ENR#[2198]titlescreen();
                           8629 ;--- end asm ---
   32C4 5F            [ 2] 8630 	clrb	;
   32C5 BD 00 6E      [ 8] 8631 	jsr	_subBank0
                           8632 ;----- asm -----
                           8633 ; 3049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8634 	; #ENR#[2199]#endif
                           8635 ; 3051 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8636 	; #ENR#[2200]vec_text_hw = 0xfa50;
                           8637 ;--- end asm ---
   32C8 8E FA 50      [ 3] 8638 	ldx	#-1456	;,
   32CB BF C8 2A      [ 6] 8639 	stx	_Vec_Text_HW	;, Vec_Text_HW
                           8640 ;----- asm -----
                           8641 ; 3053 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8642 	; #ENR#[2201]_x = vec_loop_count_lo;
                           8643 ;--- end asm ---
   32CE F6 C8 26      [ 5] 8644 	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
   32D1 F7 CA 63      [ 5] 8645 	stb	__x	;, _x
                           8646 ;----- asm -----
                           8647 ; 3055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8648 	; #ENR#[2202]setrandseednp();
                           8649 ;--- end asm ---
   32D4 BD 67 2D      [ 8] 8650 	jsr	_setRandSeedNP
                           8651 ;----- asm -----
                           8652 ; 3059 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8653 	; #ENR#[2205]createcharacter();
                           8654 ;--- end asm ---
   32D7 BD 3E A8      [ 8] 8655 	jsr	_createCharacter
                           8656 ;----- asm -----
                           8657 ; 3062 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8658 	; #ENR#[2207]#if start_strong == 1
                           8659 ; 3080 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8660 	; #ENR#[2217]unsigned int turnstarting = 1;
                           8661 ; 3082 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8662 	; #ENR#[2218]while(1)
                           8663 ;--- end asm ---
   32DA C6 01         [ 2] 8664 	ldb	#1	;,
   32DC E7 64         [ 5] 8665 	stb	4,s	;, turnStarting
   32DE                    8666 L521:
                           8667 ;----- asm -----
                           8668 ; 3089 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8669 	; #ENR#[2224]displayround();
                           8670 ;--- end asm ---
   32DE BD 3C BC      [ 8] 8671 	jsr	_displayRound
                           8672 ;----- asm -----
                           8673 ; 3092 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8674 	; #ENR#[2226]if (turnstarting)
                           8675 ;--- end asm ---
   32E1 6D 64         [ 7] 8676 	tst	4,s	; turnStarting
   32E3 10 27 00 CC   [ 6] 8677 	lbeq	L485	;
                           8678 ;----- asm -----
                           8679 ; 3095 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8680 	; #ENR#[2228]turnstarting = 0;
                           8681 ; 3097 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8682 	; #ENR#[2229]l = cz;
                           8683 ;--- end asm ---
   32E7 F6 C9 3A      [ 5] 8684 	ldb	_cz	;, cz
   32EA F7 C9 6B      [ 5] 8685 	stb	_l	;, l
                           8686 ;----- asm -----
                           8687 ; 3104 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8688 	; #ENR#[2235]tmp = 0;
                           8689 ;--- end asm ---
   32ED 7F C8 FE      [ 7] 8690 	clr	_tmp	; tmp
                           8691 ;----- asm -----
                           8692 ; 3106 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8693 	; #ENR#[2236]#ifndef no_monster
                           8694 ; 3108 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8695 	; #ENR#[2237]monsterreturns:
                           8696 ;--- end asm ---
   32F0 F6 C8 FE      [ 5] 8697 	ldb	_tmp	;, tmp
   32F3                    8698 L549:
                           8699 ;----- asm -----
                           8700 ; 3110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8701 	; #ENR#[2238]tmp = handleencounters(tmp);
                           8702 ;--- end asm ---
   32F3 BD 0D B5      [ 8] 8703 	jsr	_handleEncounters
   32F6 E7 62         [ 5] 8704 	stb	2,s	;, tmp.185
   32F8 F7 C8 FE      [ 5] 8705 	stb	_tmp	;, tmp
                           8706 ;----- asm -----
                           8707 ; 3112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8708 	; #ENR#[2239]m=-1;
                           8709 ;--- end asm ---
   32FB C6 FF         [ 2] 8710 	ldb	#-1	;,
   32FD F7 C9 62      [ 5] 8711 	stb	_m	;, m
                           8712 ;----- asm -----
                           8713 ; 3114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8714 	; #ENR#[2240]ml = 0;
                           8715 ;--- end asm ---
   3300 7F C9 6A      [ 7] 8716 	clr	_ml	; ml
                           8717 ;----- asm -----
                           8718 ; 3116 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8719 	; #ENR#[2241]mh = 0;
                           8720 ;--- end asm ---
   3303 CC 00 00      [ 3] 8721 	ldd	#0	;,
   3306 FD C9 63      [ 6] 8722 	std	_mh	;, mh
                           8723 ;----- asm -----
                           8724 ; 3118 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8725 	; #ENR#[2242]if (tmp== return_new_turn)
                           8726 ;--- end asm ---
   3309 E6 62         [ 5] 8727 	ldb	2,s	;, tmp.185
   330B C1 01         [ 2] 8728 	cmpb	#1	;cmpqi:	;,
   330D 10 27 01 B1   [ 6] 8729 	lbeq	L551	;
   3311 C1 02         [ 2] 8730 	cmpb	#2	;cmpqi:	;,
   3313 10 27 01 B6   [ 6] 8731 	lbeq	L552	;
   3317 C1 03         [ 2] 8732 	cmpb	#3	;cmpqi:	;,
   3319 10 27 00 5B   [ 6] 8733 	lbeq	L553	;
   331D C1 04         [ 2] 8734 	cmpb	#4	;cmpqi:	;,
   331F 10 27 00 6A   [ 6] 8735 	lbeq	L554	;
   3323 C1 05         [ 2] 8736 	cmpb	#5	;cmpqi:	;,
   3325 10 27 00 6C   [ 6] 8737 	lbeq	L555	;
   3329                    8738 L491:
                           8739 ;----- asm -----
                           8740 ; 3157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8741 	; #ENR#[2271]#endif
                           8742 ; 3162 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8743 	; #ENR#[2275]tmp = handletreasure(tmp);
                           8744 ;--- end asm ---
   3329 F6 C8 FE      [ 5] 8745 	ldb	_tmp	;, tmp
   332C BD 19 4F      [ 8] 8746 	jsr	_handleTreasure
   332F E7 62         [ 5] 8747 	stb	2,s	;, tmp.186
   3331 F7 C8 FE      [ 5] 8748 	stb	_tmp	;, tmp
                           8749 ;----- asm -----
                           8750 ; 3164 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8751 	; #ENR#[2276]printtreasure=-1;
                           8752 ;--- end asm ---
   3334 C6 FF         [ 2] 8753 	ldb	#-1	;,
   3336 F7 C8 F5      [ 5] 8754 	stb	_printTreasure	;, printTreasure
                           8755 ;----- asm -----
                           8756 ; 3167 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8757 	; #ENR#[2278]if (tmp == return_player_dead)
                           8758 ;--- end asm ---
   3339 E6 62         [ 5] 8759 	ldb	2,s	;, tmp.186
   333B C1 02         [ 2] 8760 	cmpb	#2	;cmpqi:	;,
   333D 10 27 04 89   [ 6] 8761 	lbeq	L556	;
   3341 C1 06         [ 2] 8762 	cmpb	#6	;cmpqi:	;,
   3343 10 27 00 54   [ 6] 8763 	lbeq	L557	;
   3347 C1 05         [ 2] 8764 	cmpb	#5	;cmpqi:	;,
   3349 10 27 00 3A   [ 6] 8765 	lbeq	L558	;
   334D                    8766 L496:
                           8767 ;----- asm -----
                           8768 ; 3198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8769 	; #ENR#[2301]handlespecial:
                           8770 ;--- end asm ---
   334D                    8771 L493:
                           8772 ;----- asm -----
                           8773 ; 3200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8774 	; #ENR#[2302]tmp = handlespecial(tmp);
                           8775 ;--- end asm ---
   334D F6 C8 FE      [ 5] 8776 	ldb	_tmp	;, tmp
   3350 BD 24 C1      [ 8] 8777 	jsr	_handleSpecial
   3353 F7 C8 FE      [ 5] 8778 	stb	_tmp	; tmp.187, tmp
                           8779 ;----- asm -----
                           8780 ; 3202 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8781 	; #ENR#[2303]if (tmp == return_pause)
                           8782 ;--- end asm ---
   3356 C1 07         [ 2] 8783 	cmpb	#7	;cmpqi:	; tmp.187,
   3358 10 27 00 4F   [ 6] 8784 	lbeq	L559	;
   335C C1 01         [ 2] 8785 	cmpb	#1	;cmpqi:	; tmp.187,
   335E 10 27 04 46   [ 6] 8786 	lbeq	L560	;
   3362 C1 02         [ 2] 8787 	cmpb	#2	;cmpqi:	; tmp.187,
   3364 10 27 04 4B   [ 6] 8788 	lbeq	L561	;
   3368 C1 1E         [ 2] 8789 	cmpb	#30	;cmpqi:	; tmp.187,
   336A 27 12         [ 3] 8790 	beq	L562	;
   336C C1 1F         [ 2] 8791 	cmpb	#31	;cmpqi:	; tmp.187,
   336E 10 26 00 41   [ 6] 8792 	lbne	L485	;
                           8793 ;----- asm -----
                           8794 ; 3238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8795 	; #ENR#[2328]#ifndef no_monster
                           8796 ; 3240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8797 	; #ENR#[2329]tmp = return_monster_is_set;
                           8798 ;--- end asm ---
   3372 F7 C8 FE      [ 5] 8799 	stb	_tmp	;, tmp
                           8800 ;----- asm -----
                           8801 ; 3242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8802 	; #ENR#[2330]goto monsterreturns;
                           8803 ;--- end asm ---
   3375 16 FF 7B      [ 5] 8804 	lbra	L549	;
   3378                    8805 L553:
                           8806 ;----- asm -----
                           8807 ; 3137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8808 	; #ENR#[2255]tmp = 0;
                           8809 ;--- end asm ---
   3378 7F C8 FE      [ 7] 8810 	clr	_tmp	; tmp
   337B 16 FF AB      [ 5] 8811 	lbra	L491	;
   337E                    8812 L562:
                           8813 ;----- asm -----
                           8814 ; 3228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8815 	; #ENR#[2321]#ifndef no_monster
                           8816 ; 3230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8817 	; #ENR#[2322]tmp = 0;
                           8818 ;--- end asm ---
   337E 7F C8 FE      [ 7] 8819 	clr	_tmp	; tmp
                           8820 ;----- asm -----
                           8821 ; 3232 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8822 	; #ENR#[2323]goto monsterreturns;
                           8823 ;--- end asm ---
   3381 F6 C8 FE      [ 5] 8824 	ldb	_tmp	;, tmp
   3384 16 FF 6C      [ 5] 8825 	lbra	L549	;
   3387                    8826 L558:
                           8827 ;----- asm -----
                           8828 ; 3191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8829 	; #ENR#[2295]tmp = 0;
                           8830 ;--- end asm ---
   3387 7F C8 FE      [ 7] 8831 	clr	_tmp	; tmp
   338A 16 FF C0      [ 5] 8832 	lbra	L496	;
   338D                    8833 L554:
                           8834 ;----- asm -----
                           8835 ; 3145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8836 	; #ENR#[2262]tmp = 1;
                           8837 ;--- end asm ---
   338D C6 01         [ 2] 8838 	ldb	#1	;,
   338F F7 C8 FE      [ 5] 8839 	stb	_tmp	;, tmp
   3392 16 FF 94      [ 5] 8840 	lbra	L491	;
   3395                    8841 L555:
                           8842 ;----- asm -----
                           8843 ; 3150 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8844 	; #ENR#[2266]tmp = 0;
                           8845 ;--- end asm ---
   3395 7F C8 FE      [ 7] 8846 	clr	_tmp	; tmp
                           8847 ;----- asm -----
                           8848 ; 3154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8849 	; #ENR#[2269]goto handlespecial;
                           8850 ;--- end asm ---
   3398 16 FF B2      [ 5] 8851 	lbra	L493	;
   339B                    8852 L557:
                           8853 ;----- asm -----
                           8854 ; 3177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8855 	; #ENR#[2285]#ifndef no_monster
                           8856 ; 3179 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8857 	; #ENR#[2286]if (monsteronstackadvance() != 0)
                           8858 ;--- end asm ---
   339B BD 3D C8      [ 8] 8859 	jsr	_monsterOnStackAdvance
   339E 5D            [ 2] 8860 	tstb	; D.4041
   339F 10 27 FF AA   [ 6] 8861 	lbeq	L496	;
                           8862 ;----- asm -----
                           8863 ; 3182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8864 	; #ENR#[2288]tmp = return_monster_is_set;
                           8865 ;--- end asm ---
   33A3 C6 1F         [ 2] 8866 	ldb	#31	;,
   33A5 F7 C8 FE      [ 5] 8867 	stb	_tmp	;, tmp
                           8868 ;----- asm -----
                           8869 ; 3184 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8870 	; #ENR#[2289]goto monsterreturns;
                           8871 ;--- end asm ---
   33A8 16 FF 48      [ 5] 8872 	lbra	L549	;
   33AB                    8873 L559:
                           8874 ;----- asm -----
                           8875 ; 3205 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8876 	; #ENR#[2305]tmp = 0;
                           8877 ;--- end asm ---
   33AB 7F C8 FE      [ 7] 8878 	clr	_tmp	; tmp
                           8879 ;----- asm -----
                           8880 ; 3207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8881 	; #ENR#[2306]pause(small_pause);
                           8882 ;--- end asm ---
   33AE C6 4B         [ 2] 8883 	ldb	#75	;,
   33B0 BD 3D 31      [ 8] 8884 	jsr	_pause
   33B3                    8885 L485:
                           8886 ;----- asm -----
                           8887 ; 3248 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8888 	; #ENR#[2335]clearmessage();
                           8889 ;--- end asm ---
   33B3 7F C9 C2      [ 7] 8890 	clr	_msgLine	; msgLine
                           8891 ;----- asm -----
                           8892 ; 3250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8893 	; #ENR#[2336]printmessage();
                           8894 ;--- end asm ---
   33B6 8E 32 20      [ 3] 8895 	ldx	#LC214	;,
   33B9 BD 5A 71      [ 8] 8896 	jsr	_printMessage
                           8897 ;----- asm -----
                           8898 ; 3258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8899 	; #ENR#[2343]tmp = handlemovement();
                           8900 ;--- end asm ---
   33BC BD 17 0E      [ 8] 8901 	jsr	_handleMovement
   33BF F7 C8 FE      [ 5] 8902 	stb	_tmp	; tmp.188, tmp
                           8903 ;----- asm -----
                           8904 ; 3260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8905 	; #ENR#[2344]if (tmp)
                           8906 ;--- end asm ---
   33C2 5D            [ 2] 8907 	tstb	; tmp.188
   33C3 10 26 00 F0   [ 6] 8908 	lbne	L563	;
                           8909 ;----- asm -----
                           8910 ; 3285 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8911 	; #ENR#[2365]if (button_1_4_pressed()) timer = 0;
                           8912 ;--- end asm ---
   33C7 F6 C8 11      [ 5] 8913 	ldb	_Vec_Buttons	;, Vec_Buttons
   33CA E7 67         [ 5] 8914 	stb	7,s	;, D.4729
   33CC C5 08         [ 2] 8915 	bitb	#8	;,
   33CE 10 27 00 CF   [ 6] 8916 	lbeq	L503	;
   33D2 7F C8 A7      [ 7] 8917 	clr	_timer	; timer
   33D5                    8918 L504:
                           8919 ;----- asm -----
                           8920 ; 3311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8921 	; #ENR#[2385]if ((timer == 0) || (tmp))
                           8922 ;--- end asm ---
   33D5 7D C8 A7      [ 7] 8923 	tst	_timer	; timer
   33D8 27 0D         [ 3] 8924 	beq	L506	;
   33DA 7D C8 FE      [ 7] 8925 	tst	_tmp	; tmp
   33DD 26 08         [ 3] 8926 	bne	L506	;
   33DF 6F 64         [ 7] 8927 	clr	4,s	; turnStarting
   33E1                    8928 L507:
                           8929 ;----- asm -----
                           8930 ; 3376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8931 	; #ENR#[2430]timer--;
                           8932 ;--- end asm ---
   33E1 7A C8 A7      [ 7] 8933 	dec	_timer	; timer
   33E4 16 FE F7      [ 5] 8934 	lbra	L521	;
   33E7                    8935 L506:
                           8936 ;----- asm -----
                           8937 ; 3314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8938 	; #ENR#[2387]if (!tmp)
                           8939 ;--- end asm ---
   33E7 7D C8 FE      [ 7] 8940 	tst	_tmp	; tmp
   33EA 10 27 03 E2   [ 6] 8941 	lbeq	L564	;
   33EE                    8942 L508:
                           8943 ;----- asm -----
                           8944 ; 3339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8945 	; #ENR#[2403]newturnstart:
                           8946 ;--- end asm ---
   33EE                    8947 L487:
                           8948 ;----- asm -----
                           8949 ; 3341 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8950 	; #ENR#[2404]turnstarting = 1;
                           8951 ; 3343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8952 	; #ENR#[2405]m = -1;
                           8953 ;--- end asm ---
   33EE C6 FF         [ 2] 8954 	ldb	#-1	;,
   33F0 F7 C9 62      [ 5] 8955 	stb	_m	;, m
                           8956 ;----- asm -----
                           8957 ; 3345 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8958 	; #ENR#[2406]mh = 0;
                           8959 ;--- end asm ---
   33F3 CC 00 00      [ 3] 8960 	ldd	#0	;,
   33F6 FD C9 63      [ 6] 8961 	std	_mh	;, mh
                           8962 ;----- asm -----
                           8963 ; 3347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8964 	; #ENR#[2407]timer = action_time;
                           8965 ;--- end asm ---
   33F9 C6 96         [ 2] 8966 	ldb	#-106	;,
   33FB F7 C8 A7      [ 5] 8967 	stb	_timer	;, timer
                           8968 ;----- asm -----
                           8969 ; 3356 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8970 	; #ENR#[2415]for (int i=0; i<11;i++)
                           8971 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8972 	; #ENR#[2417]if (sf[i] != 0)
                           8973 ;--- end asm ---
   33FE F6 C9 53      [ 5] 8974 	ldb	_sf	; temp.887, sf
   3401 27 04         [ 3] 8975 	beq	L509	;
   3403 5A            [ 2] 8976 	decb	; temp.887
   3404 F7 C9 53      [ 5] 8977 	stb	_sf	; temp.887, sf
   3407                    8978 L509:
                           8979 ;----- asm -----
                           8980 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8981 	; #ENR#[2417]if (sf[i] != 0)
                           8982 ;--- end asm ---
   3407 F6 C9 54      [ 5] 8983 	ldb	_sf+1	; temp.889, sf
   340A 27 04         [ 3] 8984 	beq	L510	;
   340C 5A            [ 2] 8985 	decb	; temp.889
   340D F7 C9 54      [ 5] 8986 	stb	_sf+1	; temp.889, sf
   3410                    8987 L510:
                           8988 ;----- asm -----
                           8989 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8990 	; #ENR#[2417]if (sf[i] != 0)
                           8991 ;--- end asm ---
   3410 F6 C9 55      [ 5] 8992 	ldb	_sf+2	; temp.891, sf
   3413 27 04         [ 3] 8993 	beq	L511	;
   3415 5A            [ 2] 8994 	decb	; temp.891
   3416 F7 C9 55      [ 5] 8995 	stb	_sf+2	; temp.891, sf
   3419                    8996 L511:
                           8997 ;----- asm -----
                           8998 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8999 	; #ENR#[2417]if (sf[i] != 0)
                           9000 ;--- end asm ---
   3419 F6 C9 56      [ 5] 9001 	ldb	_sf+3	; temp.893, sf
   341C 27 04         [ 3] 9002 	beq	L512	;
   341E 5A            [ 2] 9003 	decb	; temp.893
   341F F7 C9 56      [ 5] 9004 	stb	_sf+3	; temp.893, sf
   3422                    9005 L512:
                           9006 ;----- asm -----
                           9007 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9008 	; #ENR#[2417]if (sf[i] != 0)
                           9009 ;--- end asm ---
   3422 F6 C9 57      [ 5] 9010 	ldb	_sf+4	; temp.895, sf
   3425 27 04         [ 3] 9011 	beq	L513	;
   3427 5A            [ 2] 9012 	decb	; temp.895
   3428 F7 C9 57      [ 5] 9013 	stb	_sf+4	; temp.895, sf
   342B                    9014 L513:
                           9015 ;----- asm -----
                           9016 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9017 	; #ENR#[2417]if (sf[i] != 0)
                           9018 ;--- end asm ---
   342B F6 C9 58      [ 5] 9019 	ldb	_sf+5	; temp.897, sf
   342E 27 04         [ 3] 9020 	beq	L514	;
   3430 5A            [ 2] 9021 	decb	; temp.897
   3431 F7 C9 58      [ 5] 9022 	stb	_sf+5	; temp.897, sf
   3434                    9023 L514:
                           9024 ;----- asm -----
                           9025 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9026 	; #ENR#[2417]if (sf[i] != 0)
                           9027 ;--- end asm ---
   3434 F6 C9 59      [ 5] 9028 	ldb	_sf+6	; temp.899, sf
   3437 27 04         [ 3] 9029 	beq	L515	;
   3439 5A            [ 2] 9030 	decb	; temp.899
   343A F7 C9 59      [ 5] 9031 	stb	_sf+6	; temp.899, sf
   343D                    9032 L515:
                           9033 ;----- asm -----
                           9034 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9035 	; #ENR#[2417]if (sf[i] != 0)
                           9036 ;--- end asm ---
   343D F6 C9 5A      [ 5] 9037 	ldb	_sf+7	; temp.901, sf
   3440 27 04         [ 3] 9038 	beq	L516	;
   3442 5A            [ 2] 9039 	decb	; temp.901
   3443 F7 C9 5A      [ 5] 9040 	stb	_sf+7	; temp.901, sf
   3446                    9041 L516:
                           9042 ;----- asm -----
                           9043 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9044 	; #ENR#[2417]if (sf[i] != 0)
                           9045 ;--- end asm ---
   3446 F6 C9 5B      [ 5] 9046 	ldb	_sf+8	; temp.903, sf
   3449 27 04         [ 3] 9047 	beq	L517	;
   344B 5A            [ 2] 9048 	decb	; temp.903
   344C F7 C9 5B      [ 5] 9049 	stb	_sf+8	; temp.903, sf
   344F                    9050 L517:
                           9051 ;----- asm -----
                           9052 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9053 	; #ENR#[2417]if (sf[i] != 0)
                           9054 ;--- end asm ---
   344F F6 C9 5C      [ 5] 9055 	ldb	_sf+9	; temp.905, sf
   3452 27 04         [ 3] 9056 	beq	L518	;
   3454 5A            [ 2] 9057 	decb	; temp.905
   3455 F7 C9 5C      [ 5] 9058 	stb	_sf+9	; temp.905, sf
   3458                    9059 L518:
                           9060 ;----- asm -----
                           9061 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9062 	; #ENR#[2417]if (sf[i] != 0)
                           9063 ;--- end asm ---
   3458 F6 C9 5D      [ 5] 9064 	ldb	_sf+10	; D.4052, sf
   345B 27 04         [ 3] 9065 	beq	L519	;
   345D 5A            [ 2] 9066 	decb	; D.4052
   345E F7 C9 5D      [ 5] 9067 	stb	_sf+10	; D.4052, sf
   3461                    9068 L519:
                           9069 ;----- asm -----
                           9070 ; 3367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9071 	; #ENR#[2424]if ((inventory[ring_of_regeneration]) && ((unsigned int)ch != hp))
                           9072 ;--- end asm ---
   3461 F6 C9 4E      [ 5] 9073 	ldb	_inventory+5	;, inventory
   3464 E7 63         [ 5] 9074 	stb	3,s	;, D.4054
   3466 27 32         [ 3] 9075 	beq	L520	;
   3468 BE C9 2D      [ 6] 9076 	ldx	_ch	; ch.192, ch
   346B 1F 10         [ 6] 9077 	tfr	x,d	; ch.192,
   346D 4F            [ 2] 9078 	clra		;zero_extendqihi: R:b -> R:d	;,
   346E 10 B3 C9 2B   [ 8] 9079 	cmpd	_hp	;cmphi:	; ch.192, hp
   3472 27 26         [ 3] 9080 	beq	L520	;
                           9081 ;----- asm -----
                           9082 ; 3370 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9083 	; #ENR#[2426]ch=ch+inventory[ring_of_regeneration];
                           9084 ;--- end asm ---
   3474 E6 63         [ 5] 9085 	ldb	3,s	;, D.4054
   3476 4F            [ 2] 9086 	clra		;zero_extendqihi: R:b -> R:d	;,
   3477 1F 03         [ 6] 9087 	tfr	d,u	;, D.4054
   3479 1E 01         [ 8] 9088 	exg	d,x	;, ch.192
   347B 33 CB         [ 8] 9089 	leau	d,u	; ch.194,, ch.194
   347D FF C9 2D      [ 6] 9090 	stu	_ch	; ch.194, ch
                           9091 ;----- asm -----
                           9092 ; 3372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9093 	; #ENR#[2427]if ((unsigned int)ch>hp) ch=(signed int)hp;
                           9094 ;--- end asm ---
   3480 BE C9 2B      [ 6] 9095 	ldx	_hp	; hp.870, hp
   3483 1F 30         [ 6] 9096 	tfr	u,d	; ch.194,
   3485 4F            [ 2] 9097 	clra		;zero_extendqihi: R:b -> R:d	;,
   3486 34 10         [ 6] 9098 	pshs	x	;cmphi: R:x with R:d	; hp.870, ch.194
   3488 10 A3 E1      [10] 9099 	cmpd	,s++	;cmphi:	; ch.194
   348B 2F 0D         [ 3] 9100 	ble	L520	;
   348D 1F 10         [ 6] 9101 	tfr	x,d	; hp.870,
   348F 1D            [ 2] 9102 	sex		;extendqihi2: R:b -> R:d	;,
   3490 FD C9 2D      [ 6] 9103 	std	_ch	; hp.870, ch
   3493 C6 01         [ 2] 9104 	ldb	#1	;,
   3495 E7 64         [ 5] 9105 	stb	4,s	;, turnStarting
   3497 16 FF 47      [ 5] 9106 	lbra	L507	;
   349A                    9107 L520:
   349A C6 01         [ 2] 9108 	ldb	#1	;,
   349C E7 64         [ 5] 9109 	stb	4,s	;, turnStarting
   349E 16 FF 40      [ 5] 9110 	lbra	L507	;
   34A1                    9111 L503:
   34A1 C6 04         [ 2] 9112 	ldb	#4	; tmp113,
   34A3 E4 67         [ 5] 9113 	andb	7,s	; tmp113, D.4729
   34A5 10 26 03 48   [ 6] 9114 	lbne	L565	;
   34A9 C6 02         [ 2] 9115 	ldb	#2	;,
   34AB E4 67         [ 5] 9116 	andb	7,s	;, D.4729
   34AD 10 27 FF 24   [ 6] 9117 	lbeq	L504	;
                           9118 ;----- asm -----
                           9119 ; 3300 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9120 	; #ENR#[2375]displaystatuspage();
                           9121 ;--- end asm ---
   34B1 BD 39 63      [ 8] 9122 	jsr	_displayStatusPage
   34B4 16 FF 1E      [ 5] 9123 	lbra	L504	;
   34B7                    9124 L563:
                           9125 ;----- asm -----
                           9126 ; 3263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9127 	; #ENR#[2346]monsteronstackevadefurther();
                           9128 ;--- end asm ---
   34B7 BD 3E 2E      [ 8] 9129 	jsr	_monsterOnStackEvadeFurther
                           9130 ;----- asm -----
                           9131 ; 3265 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9132 	; #ENR#[2347]pause(very_small_pause);
                           9133 ;--- end asm ---
   34BA C6 19         [ 2] 9134 	ldb	#25	;,
   34BC BD 3D 31      [ 8] 9135 	jsr	_pause
                           9136 ;----- asm -----
                           9137 ; 3267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9138 	; #ENR#[2348]goto newturnstart;
                           9139 ;--- end asm ---
   34BF 16 FF 2C      [ 5] 9140 	lbra	L487	;
   34C2                    9141 L551:
                           9142 ;----- asm -----
                           9143 ; 3121 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9144 	; #ENR#[2244]tmp = 0;
                           9145 ;--- end asm ---
   34C2 7F C8 FE      [ 7] 9146 	clr	_tmp	; tmp
                           9147 ;----- asm -----
                           9148 ; 3123 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9149 	; #ENR#[2245]pause(small_pause);
                           9150 ;--- end asm ---
   34C5 C6 4B         [ 2] 9151 	ldb	#75	;,
   34C7 BD 3D 31      [ 8] 9152 	jsr	_pause
                           9153 ;----- asm -----
                           9154 ; 3125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9155 	; #ENR#[2246]goto newturnstart;
                           9156 ;--- end asm ---
   34CA 16 FF 21      [ 5] 9157 	lbra	L487	;
   34CD                    9158 L552:
                           9159 ;----- asm -----
                           9160 ; 3130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9161 	; #ENR#[2250]tmp = 0;
                           9162 ;--- end asm ---
   34CD 7F C8 FE      [ 7] 9163 	clr	_tmp	; tmp
                           9164 ;----- asm -----
                           9165 ; 3132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9166 	; #ENR#[2251]goto playerdead;
                           9167 ;--- end asm ---
   34D0                    9168 L489:
                           9169 ;----- asm -----
                           9170 ; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9171 	; #ENR#[2433]if (msgline == 3)
                           9172 ;--- end asm ---
   34D0 F6 C9 C2      [ 5] 9173 	ldb	_msgLine	;, msgLine
   34D3 C1 03         [ 2] 9174 	cmpb	#3	;cmpqi:	;,
   34D5 10 27 02 E6   [ 6] 9175 	lbeq	L566	;
   34D9                    9176 L522:
                           9177 ;----- asm -----
                           9178 ; 3389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9179 	; #ENR#[2438]initsoundno = sound_death;
                           9180 ;--- end asm ---
   34D9 C6 05         [ 2] 9181 	ldb	#5	;,
   34DB F7 C8 A6      [ 5] 9182 	stb	_initSoundNo	;, initSoundNo
                           9183 ;----- asm -----
                           9184 ; 3391 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9185 	; #ENR#[2439]printmessage();
                           9186 ;--- end asm ---
   34DE 8E 32 2A      [ 3] 9187 	ldx	#LC216	;,
   34E1 BD 5A 71      [ 8] 9188 	jsr	_printMessage
                           9189 ;----- asm -----
                           9190 ; 3393 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9191 	; #ENR#[2440]pause(small_pause);
                           9192 ;--- end asm ---
   34E4 C6 4B         [ 2] 9193 	ldb	#75	;,
   34E6 BD 3D 31      [ 8] 9194 	jsr	_pause
                           9195 ;----- asm -----
                           9196 ; 3397 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9197 	; #ENR#[2443]printcharacter = 0;
                           9198 ;--- end asm ---
   34E9 7F C8 F7      [ 7] 9199 	clr	_printCharacter	; printCharacter
                           9200 ;----- asm -----
                           9201 ; 3399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9202 	; #ENR#[2444]printtreasure = -1;
                           9203 ;--- end asm ---
   34EC C6 FF         [ 2] 9204 	ldb	#-1	;,
   34EE F7 C8 F5      [ 5] 9205 	stb	_printTreasure	;, printTreasure
                           9206 ;----- asm -----
                           9207 ; 3401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9208 	; #ENR#[2445]printdungeon = 0;
                           9209 ;--- end asm ---
   34F1 7F C8 F3      [ 7] 9210 	clr	_printDungeon	; printDungeon
                           9211 ;----- asm -----
                           9212 ; 3403 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9213 	; #ENR#[2446]m = -1;
                           9214 ;--- end asm ---
   34F4 F7 C9 62      [ 5] 9215 	stb	_m	;, m
                           9216 ;----- asm -----
                           9217 ; 3406 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9218 	; #ENR#[2448]int stage =0;
                           9219 ; 3408 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9220 	; #ENR#[2449]int b=0;
                           9221 ; 3410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9222 	; #ENR#[2450]vec_text_hw = 0xfa50;
                           9223 ;--- end asm ---
   34F7 8E FA 50      [ 3] 9224 	ldx	#-1456	;,
   34FA BF C8 2A      [ 6] 9225 	stx	_Vec_Text_HW	;, Vec_Text_HW
                           9226 ;----- asm -----
                           9227 ; 3412 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9228 	; #ENR#[2451]while (1)
                           9229 ;--- end asm ---
   34FD 6F 66         [ 7] 9230 	clr	6,s	; b
   34FF 6F 65         [ 7] 9231 	clr	5,s	; stage
   3501 16 00 62      [ 5] 9232 	lbra	L544	;
   3504                    9233 L569:
   3504 F6 C9 C1      [ 5] 9234 	ldb	__YC	; _YC.200, _YC
   3507 CB F6         [ 2] 9235 	addb	#-10	; _YC.200,
   3509 F7 C9 C1      [ 5] 9236 	stb	__YC	; _YC.200, _YC
   350C 34 04         [ 6] 9237 	pshs	b	; _YC.200
   350E 8E 32 35      [ 3] 9238 	ldx	#LC217	;,
   3511                    9239 L550:
   3511 F6 C9 C0      [ 5] 9240 	ldb	__XC	;, _XC
   3514 BD 58 75      [ 8] 9241 	jsr	_syncPrintStrd
   3517 C6 CC         [ 2] 9242 	ldb	#-52	;,
   3519 D7 0C         [ 4] 9243 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9244 ;----- asm -----
                           9245 ; 3432 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9246 	; #ENR#[2463]print();
                           9247 ;--- end asm ---
   351B F6 C9 C1      [ 5] 9248 	ldb	__YC	; _YC.842, _YC
   351E CB F6         [ 2] 9249 	addb	#-10	; _YC.842,
   3520 F7 C9 C1      [ 5] 9250 	stb	__YC	; _YC.842, _YC
   3523 E7 E4         [ 4] 9251 	stb	,s	; _YC.842,
   3525 8E 32 4F      [ 3] 9252 	ldx	#LC219	;,
   3528 F6 C9 C0      [ 5] 9253 	ldb	__XC	;, _XC
   352B BD 58 75      [ 8] 9254 	jsr	_syncPrintStrd
   352E C6 CC         [ 2] 9255 	ldb	#-52	;,
   3530 D7 0C         [ 4] 9256 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9257 ;----- asm -----
                           9258 ; 3434 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9259 	; #ENR#[2464]print();
                           9260 ;--- end asm ---
   3532 F6 C9 C1      [ 5] 9261 	ldb	__YC	; _YC.845, _YC
   3535 CB F6         [ 2] 9262 	addb	#-10	; _YC.845,
   3537 F7 C9 C1      [ 5] 9263 	stb	__YC	; _YC.845, _YC
   353A 34 04         [ 6] 9264 	pshs	b	; _YC.845
   353C 8E 32 62      [ 3] 9265 	ldx	#LC220	;,
   353F F6 C9 C0      [ 5] 9266 	ldb	__XC	;, _XC
   3542 BD 58 75      [ 8] 9267 	jsr	_syncPrintStrd
   3545 C6 CC         [ 2] 9268 	ldb	#-52	;,
   3547 D7 0C         [ 4] 9269 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9270 ;----- asm -----
                           9271 ; 3436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9272 	; #ENR#[2465]addline;
                           9273 ;--- end asm ---
   3549 F6 C9 C1      [ 5] 9274 	ldb	__YC	; _YC.848, _YC
   354C CB F6         [ 2] 9275 	addb	#-10	; _YC.848,
   354E F7 C9 C1      [ 5] 9276 	stb	__YC	; _YC.848, _YC
                           9277 ;----- asm -----
                           9278 ; 3438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9279 	; #ENR#[2466]if (stage == 0)
                           9280 ;--- end asm ---
   3551 32 62         [ 5] 9281 	leas	2,s	;,,
   3553 6D 65         [ 7] 9282 	tst	5,s	; stage
   3555 10 27 00 42   [ 6] 9283 	lbeq	L567	;
   3559                    9284 L525:
                           9285 ;----- asm -----
                           9286 ; 3450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9287 	; #ENR#[2474]if (stage == 1)
                           9288 ;--- end asm ---
   3559 E6 65         [ 5] 9289 	ldb	5,s	;, stage
   355B C1 01         [ 2] 9290 	cmpb	#1	;cmpqi:	;,
   355D 10 27 00 7A   [ 6] 9291 	lbeq	L568	;
   3561                    9292 L527:
                           9293 ;----- asm -----
                           9294 ; 3529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9295 	; #ENR#[2520]overstepprint:
                           9296 ;--- end asm ---
   3561                    9297 L543:
                           9298 ;----- asm -----
                           9299 ; 3531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9300 	; #ENR#[2521]drawmap();
                           9301 ;--- end asm ---
   3561 C6 03         [ 2] 9302 	ldb	#3	;,
   3563 BD 00 6E      [ 8] 9303 	jsr	_subBank0
   3566                    9304 L544:
                           9305 ;----- asm -----
                           9306 ; 3415 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9307 	; #ENR#[2453]cls;
                           9308 ;--- end asm ---
   3566 C6 90         [ 2] 9309 	ldb	#-112	;,
   3568 F7 C9 C0      [ 5] 9310 	stb	__XC	;, _XC
   356B C6 70         [ 2] 9311 	ldb	#112	;,
   356D F7 C9 C1      [ 5] 9312 	stb	__YC	;, _YC
                           9313 ;----- asm -----
                           9314 ; 3417 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9315 	; #ENR#[2454]do_sound();
                           9316 ;--- end asm ---
   3570 BD 70 3C      [ 8] 9317 	jsr	__Do_Sound
                           9318 ;----- asm -----
                           9319 ; 3419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9320 	; #ENR#[2455]wait_recal();
                           9321 ;--- end asm ---
   3573 BD F1 92      [ 8] 9322 	jsr	___Wait_Recal
                           9323 ;----- asm -----
                           9324 ; 3421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9325 	; #ENR#[2456]check_buttons();
                           9326 ;--- end asm ---
   3576 BD F1 BA      [ 8] 9327 	jsr	___Read_Btns
                           9328 ;----- asm -----
                           9329 ; 3424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9330 	; #ENR#[2458]dp_via_t1_cnt_lo = 0x70;
                           9331 ;--- end asm ---
   3579 C6 70         [ 2] 9332 	ldb	#112	;,
   357B D7 04         [ 4] 9333 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           9334 ;----- asm -----
                           9335 ; 3426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9336 	; #ENR#[2459]intensity_a(0x5f);
                           9337 ;--- end asm ---
   357D C6 5F         [ 2] 9338 	ldb	#95	;,
   357F BD 6F BB      [ 8] 9339 	jsr	__Intensity_a
                           9340 ;----- asm -----
                           9341 ; 3429 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9342 	; #ENR#[2461]if (lv<4) print();
                           9343 ;--- end asm ---
   3582 F6 C9 2F      [ 5] 9344 	ldb	_lv	;, lv
   3585 C1 03         [ 2] 9345 	cmpb	#3	;cmpqi:	;,
   3587 10 23 FF 79   [ 6] 9346 	lbls	L569	;
   358B F6 C9 C1      [ 5] 9347 	ldb	__YC	; _YC.839, _YC
   358E CB F6         [ 2] 9348 	addb	#-10	; _YC.839,
   3590 F7 C9 C1      [ 5] 9349 	stb	__YC	; _YC.839, _YC
   3593 34 04         [ 6] 9350 	pshs	b	; _YC.839
   3595 8E 32 46      [ 3] 9351 	ldx	#LC218	;,
   3598 16 FF 76      [ 5] 9352 	lbra	L550	;
   359B                    9353 L567:
                           9354 ;----- asm -----
                           9355 ; 3441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9356 	; #ENR#[2468]print();
                           9357 ;--- end asm ---
   359B CB F6         [ 2] 9358 	addb	#-10	; _YC.849,
   359D F7 C9 C1      [ 5] 9359 	stb	__YC	; _YC.849, _YC
   35A0 34 04         [ 6] 9360 	pshs	b	; _YC.849
   35A2 8E 32 72      [ 3] 9361 	ldx	#LC221	;,
   35A5 F6 C9 C0      [ 5] 9362 	ldb	__XC	;, _XC
   35A8 BD 58 75      [ 8] 9363 	jsr	_syncPrintStrd
   35AB C6 CC         [ 2] 9364 	ldb	#-52	;,
   35AD D7 0C         [ 4] 9365 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9366 ;----- asm -----
                           9367 ; 3443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9368 	; #ENR#[2469]print();
                           9369 ;--- end asm ---
   35AF F6 C9 C1      [ 5] 9370 	ldb	__YC	; _YC.852, _YC
   35B2 CB F6         [ 2] 9371 	addb	#-10	; _YC.852,
   35B4 F7 C9 C1      [ 5] 9372 	stb	__YC	; _YC.852, _YC
   35B7 34 04         [ 6] 9373 	pshs	b	; _YC.852
   35B9 8E 32 83      [ 3] 9374 	ldx	#LC222	;,
   35BC F6 C9 C0      [ 5] 9375 	ldb	__XC	;, _XC
   35BF BD 58 75      [ 8] 9376 	jsr	_syncPrintStrd
   35C2 C6 CC         [ 2] 9377 	ldb	#-52	;,
   35C4 D7 0C         [ 4] 9378 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9379 ;----- asm -----
                           9380 ; 3445 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9381 	; #ENR#[2470]if (buttons_pressed()) b=1;
                           9382 ;--- end asm ---
   35C6 32 62         [ 5] 9383 	leas	2,s	;,,
   35C8 7D C8 11      [ 7] 9384 	tst	_Vec_Buttons	; Vec_Buttons
   35CB 10 27 01 C7   [ 6] 9385 	lbeq	L526	;
   35CF C6 01         [ 2] 9386 	ldb	#1	;,
   35D1 E7 66         [ 5] 9387 	stb	6,s	;, b
                           9388 ;----- asm -----
                           9389 ; 3450 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9390 	; #ENR#[2474]if (stage == 1)
                           9391 ;--- end asm ---
   35D3 E6 65         [ 5] 9392 	ldb	5,s	;, stage
   35D5 C1 01         [ 2] 9393 	cmpb	#1	;cmpqi:	;,
   35D7 10 26 FF 86   [ 6] 9394 	lbne	L527	;
   35DB                    9395 L568:
                           9396 ;----- asm -----
                           9397 ; 3453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9398 	; #ENR#[2476]if (tmp_hp == -1) break;
                           9399 ;--- end asm ---
   35DB BE C9 08      [ 6] 9400 	ldx	_tmp_hp	;, tmp_hp
   35DE 8C FF FF      [ 4] 9401 	cmpx	#-1	;cmphi:	;,
   35E1 10 27 01 C0   [ 6] 9402 	lbeq	L528	;
                           9403 ;----- asm -----
                           9404 ; 3455 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9405 	; #ENR#[2477]print();
                           9406 ;--- end asm ---
   35E5 F6 C9 C1      [ 5] 9407 	ldb	__YC	; _YC.855, _YC
   35E8 CB F6         [ 2] 9408 	addb	#-10	; _YC.855,
   35EA F7 C9 C1      [ 5] 9409 	stb	__YC	; _YC.855, _YC
   35ED 34 04         [ 6] 9410 	pshs	b	; _YC.855
   35EF 8E 32 72      [ 3] 9411 	ldx	#LC221	;,
   35F2 F6 C9 C0      [ 5] 9412 	ldb	__XC	;, _XC
   35F5 BD 58 75      [ 8] 9413 	jsr	_syncPrintStrd
   35F8 C6 CC         [ 2] 9414 	ldb	#-52	;,
   35FA D7 0C         [ 4] 9415 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9416 ;----- asm -----
                           9417 ; 3457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9418 	; #ENR#[2478]print();
                           9419 ;--- end asm ---
   35FC F6 C9 C1      [ 5] 9420 	ldb	__YC	; _YC.859, _YC
   35FF CB F6         [ 2] 9421 	addb	#-10	; _YC.859,
   3601 F7 C9 C1      [ 5] 9422 	stb	__YC	; _YC.859, _YC
   3604 34 04         [ 6] 9423 	pshs	b	; _YC.859
   3606 8E 32 95      [ 3] 9424 	ldx	#LC223	;,
   3609 F6 C9 C0      [ 5] 9425 	ldb	__XC	;, _XC
   360C BD 58 75      [ 8] 9426 	jsr	_syncPrintStrd
   360F C6 CC         [ 2] 9427 	ldb	#-52	;,
   3611 D7 0C         [ 4] 9428 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9429 ;----- asm -----
                           9430 ; 3459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9431 	; #ENR#[2479]if (buttons_pressed()) b=1;
                           9432 ;--- end asm ---
   3613 F6 C8 11      [ 5] 9433 	ldb	_Vec_Buttons	;, Vec_Buttons
   3616 E7 6A         [ 5] 9434 	stb	10,s	;, D.4743
   3618 32 62         [ 5] 9435 	leas	2,s	;,,
   361A 5D            [ 2] 9436 	tstb	;
   361B 27 04         [ 3] 9437 	beq	L529	;
   361D E6 65         [ 5] 9438 	ldb	5,s	;, stage
   361F E7 66         [ 5] 9439 	stb	6,s	;, b
   3621                    9440 L529:
                           9441 ;----- asm -----
                           9442 ; 3461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9443 	; #ENR#[2480]if (button_1_4_pressed()) {b = 4;}
                           9444 ;--- end asm ---
   3621 C6 08         [ 2] 9445 	ldb	#8	; tmp144,
   3623 E4 68         [ 5] 9446 	andb	8,s	; tmp144, D.4743
   3625 27 04         [ 3] 9447 	beq	L530	;
   3627 C6 04         [ 2] 9448 	ldb	#4	;,
   3629 E7 66         [ 5] 9449 	stb	6,s	;, b
   362B                    9450 L530:
                           9451 ;----- asm -----
                           9452 ; 3463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9453 	; #ENR#[2481]if ((!buttons_pressed()) && (b!=0))
                           9454 ;--- end asm ---
   362B 6D 68         [ 7] 9455 	tst	8,s	; D.4743
   362D 10 26 FF 30   [ 6] 9456 	lbne	L527	;
   3631 6D 66         [ 7] 9457 	tst	6,s	; b
   3633 10 27 FF 2A   [ 6] 9458 	lbeq	L527	;
                           9459 ;----- asm -----
                           9460 ; 3466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9461 	; #ENR#[2483]if (b==4)
                           9462 ;--- end asm ---
   3637 E6 66         [ 5] 9463 	ldb	6,s	;, b
   3639 C1 04         [ 2] 9464 	cmpb	#4	;cmpqi:	;,
   363B 10 26 01 66   [ 6] 9465 	lbne	L531	;
                           9466 ;----- asm -----
                           9467 ; 3469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9468 	; #ENR#[2485]#if flash_support == 1
                           9469 ; 3474 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9470 	; #ENR#[2488]ltmp = tmp_hp;
                           9471 ;--- end asm ---
   363F BE C9 08      [ 6] 9472 	ldx	_tmp_hp	;, tmp_hp
   3642 BF C9 02      [ 6] 9473 	stx	_ltmp	;, ltmp
                           9474 ;----- asm -----
                           9475 ; 3476 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9476 	; #ENR#[2489]initvars();
                           9477 ;--- end asm ---
   3645 BD 56 0F      [ 8] 9478 	jsr	_initVars
                           9479 ;----- asm -----
                           9480 ; 3478 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9481 	; #ENR#[2490]hp = tmp_hp = ltmp;
                           9482 ;--- end asm ---
   3648 BE C9 02      [ 6] 9483 	ldx	_ltmp	; ltmp.203, ltmp
   364B BF C9 08      [ 6] 9484 	stx	_tmp_hp	; ltmp.203, tmp_hp
   364E BF C9 2B      [ 6] 9485 	stx	_hp	; ltmp.203, hp
                           9486 ;----- asm -----
                           9487 ; 3480 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9488 	; #ENR#[2491]lv = tmp_lv;
                           9489 ;--- end asm ---
   3651 F6 C9 0A      [ 5] 9490 	ldb	_tmp_lv	;, tmp_lv
   3654 F7 C9 2F      [ 5] 9491 	stb	_lv	;, lv
                           9492 ;----- asm -----
                           9493 ; 3483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9494 	; #ENR#[2493]ex = tmp_ex;
                           9495 ;--- end asm ---
   3657 BE C9 0B      [ 6] 9496 	ldx	_tmp_ex	;, tmp_ex
   365A BF C9 30      [ 6] 9497 	stx	_ex	;, ex
   365D FE C9 0D      [ 6] 9498 	ldu	_tmp_ex+2	;, tmp_ex
   3660 FF C9 32      [ 6] 9499 	stu	_ex+2	;, ex
                           9500 ;----- asm -----
                           9501 ; 3485 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9502 	; #ENR#[2494]su = tmp_su;
                           9503 ;--- end asm ---
   3663 FC C9 0F      [ 6] 9504 	ldd	_tmp_su	;, tmp_su
   3666 FD C9 34      [ 6] 9505 	std	_su	;, su
                           9506 ;----- asm -----
                           9507 ; 3488 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9508 	; #ENR#[2496]cx = tmp_cx;
                           9509 ;--- end asm ---
   3669 F6 C9 11      [ 5] 9510 	ldb	_tmp_cx	;, tmp_cx
   366C F7 C9 38      [ 5] 9511 	stb	_cx	;, cx
                           9512 ;----- asm -----
                           9513 ; 3490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9514 	; #ENR#[2497]cy = tmp_cy;
                           9515 ;--- end asm ---
   366F F6 C9 12      [ 5] 9516 	ldb	_tmp_cy	;, tmp_cy
   3672 F7 C9 39      [ 5] 9517 	stb	_cy	;, cy
                           9518 ;----- asm -----
                           9519 ; 3493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9520 	; #ENR#[2499]tg = tmp_tg;
                           9521 ;--- end asm ---
   3675 BE C9 13      [ 6] 9522 	ldx	_tmp_tg	;, tmp_tg
   3678 BF C9 3F      [ 6] 9523 	stx	_tg	;, tg
   367B FE C9 15      [ 6] 9524 	ldu	_tmp_tg+2	;, tmp_tg
   367E FF C9 41      [ 6] 9525 	stu	_tg+2	;, tg
                           9526 ;----- asm -----
                           9527 ; 3495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9528 	; #ENR#[2500]for (int i=0;i<6;i++) s[i] = tmp_s[i];
                           9529 ;--- end asm ---
   3681 8E C9 43      [ 3] 9530 	ldx	#_s	; vect_ps.796,
   3684 CC C9 17      [ 3] 9531 	ldd	#_tmp_s	; tmp151,
   3687 34 10         [ 6] 9532 	pshs	x	; vect_ps.796
   3689 AA E0         [ 6] 9533 	ora	,s+	;,
   368B EA E0         [ 6] 9534 	orb	,s+	;,
   368D 4F            [ 2] 9535 	clra	;andqi(ZERO)	;
   368E C4 01         [ 2] 9536 	andb	#1	;,
   3690 10 83 00 00   [ 5] 9537 	cmpd	#0	; tmp152
   3694 10 26 01 6D   [ 6] 9538 	lbne	L532	;
   3698 FC C9 17      [ 6] 9539 	ldd	_tmp_s	;,
   369B FD C9 43      [ 6] 9540 	std	_s	;,
   369E BE C9 19      [ 6] 9541 	ldx	_tmp_s+2	;,
   36A1 BF C9 45      [ 6] 9542 	stx	_s+2	;,
   36A4 FE C9 1B      [ 6] 9543 	ldu	_tmp_s+4	;,
   36A7 FF C9 47      [ 6] 9544 	stu	_s+4	;,
   36AA                    9545 L533:
                           9546 ;----- asm -----
                           9547 ; 3497 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9548 	; #ENR#[2501]for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
                           9549 ;--- end asm ---
   36AA 8E C9 49      [ 3] 9550 	ldx	#_inventory	; vect_pinventory.768,
   36AD CC C9 1D      [ 3] 9551 	ldd	#_tmp_inventory	; tmp168,
   36B0 34 10         [ 6] 9552 	pshs	x	; vect_pinventory.768
   36B2 AA E0         [ 6] 9553 	ora	,s+	;,
   36B4 EA E0         [ 6] 9554 	orb	,s+	;,
   36B6 4F            [ 2] 9555 	clra	;andqi(ZERO)	;
   36B7 C4 01         [ 2] 9556 	andb	#1	;,
   36B9 10 83 00 00   [ 5] 9557 	cmpd	#0	; tmp169
   36BD 10 26 01 86   [ 6] 9558 	lbne	L534	;
   36C1 BE C9 1D      [ 6] 9559 	ldx	_tmp_inventory	;,
   36C4 BF C9 49      [ 6] 9560 	stx	_inventory	;,
   36C7 FE C9 1F      [ 6] 9561 	ldu	_tmp_inventory+2	;,
   36CA FF C9 4B      [ 6] 9562 	stu	_inventory+2	;,
   36CD FC C9 21      [ 6] 9563 	ldd	_tmp_inventory+4	;,
   36D0 FD C9 4D      [ 6] 9564 	std	_inventory+4	;,
   36D3 BE C9 23      [ 6] 9565 	ldx	_tmp_inventory+6	;,
   36D6 BF C9 4F      [ 6] 9566 	stx	_inventory+6	;,
   36D9 FE C9 25      [ 6] 9567 	ldu	_tmp_inventory+8	;,
   36DC FF C9 51      [ 6] 9568 	stu	_inventory+8	;,
   36DF                    9569 L535:
                           9570 ;----- asm -----
                           9571 ; 3499 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9572 	; #ENR#[2502]for (int i=0;i<4;i++) box[i] = tmp_box[i];
                           9573 ;--- end asm ---
   36DF 8E C9 27      [ 3] 9574 	ldx	#_tmp_box	; vect_ptmp_box.735,
   36E2 CC C9 5E      [ 3] 9575 	ldd	#_box	; tmp195,
   36E5 34 10         [ 6] 9576 	pshs	x	; vect_ptmp_box.735
   36E7 AA E0         [ 6] 9577 	ora	,s+	;,
   36E9 EA E0         [ 6] 9578 	orb	,s+	;,
   36EB 4F            [ 2] 9579 	clra	;andqi(ZERO)	;
   36EC C4 01         [ 2] 9580 	andb	#1	;,
   36EE 10 83 00 00   [ 5] 9581 	cmpd	#0	; tmp196
   36F2 10 26 01 36   [ 6] 9582 	lbne	L536	;
   36F6 BE C9 27      [ 6] 9583 	ldx	_tmp_box	;,
   36F9 BF C9 5E      [ 6] 9584 	stx	_box	;,
   36FC FE C9 29      [ 6] 9585 	ldu	_tmp_box+2	;,
   36FF FF C9 60      [ 6] 9586 	stu	_box+2	;,
   3702                    9587 L537:
                           9588 ;----- asm -----
                           9589 ; 3501 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9590 	; #ENR#[2503]printmessage();
                           9591 ;--- end asm ---
   3702 8E 32 AC      [ 3] 9592 	ldx	#LC224	;,
   3705 BD 5A 71      [ 8] 9593 	jsr	_printMessage
                           9594 ;----- asm -----
                           9595 ; 3503 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9596 	; #ENR#[2504]#endif
                           9597 ; 3505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9598 	; #ENR#[2505]ch = (signed long int) hp;
                           9599 ;--- end asm ---
   3708 BE C9 2B      [ 6] 9600 	ldx	_hp	;, hp
   370B BF C9 2D      [ 6] 9601 	stx	_ch	;, ch
                           9602 ;----- asm -----
                           9603 ; 3507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9604 	; #ENR#[2506]gd = 0;
                           9605 ;--- end asm ---
   370E CC 00 00      [ 3] 9606 	ldd	#0	;,
   3711 FD C9 3B      [ 6] 9607 	std	_gd	;, gd
   3714 FD C9 3D      [ 6] 9608 	std	_gd+2	;, gd
                           9609 ;----- asm -----
                           9610 ; 3509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9611 	; #ENR#[2507]cz = 1;
                           9612 ;--- end asm ---
   3717 C6 01         [ 2] 9613 	ldb	#1	;,
   3719 F7 C9 3A      [ 5] 9614 	stb	_cz	;, cz
                           9615 ;----- asm -----
                           9616 ; 3511 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9617 	; #ENR#[2508]cs = su;
                           9618 ;--- end asm ---
   371C BE C9 34      [ 6] 9619 	ldx	_su	;, su
   371F BF C9 36      [ 6] 9620 	stx	_cs	;, cs
                           9621 ;----- asm -----
                           9622 ; 3514 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9623 	; #ENR#[2510]for (int i=0; i<11;i++) sf[i] = 0;
                           9624 ;--- end asm ---
   3722 8E 00 02      [ 3] 9625 	ldx	#2	; tmp214,
   3725 CC C9 53      [ 3] 9626 	ldd	#_sf	; tmp212,
   3728 4F            [ 2] 9627 	clra	;andqi(ZERO)	;
   3729 C4 01         [ 2] 9628 	andb	#1	;,
   372B 1F 03         [ 6] 9629 	tfr	d,u	; tmp212, tmp211
   372D 1F 10         [ 6] 9630 	tfr	x,d	; tmp214,
   372F 34 40         [ 6] 9631 	pshs	u	;subhi: R:d -= R:u	; tmp211,
   3731 A3 E1         [ 9] 9632 	subd	,s++	;
                           9633 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   3733 1F 01         [ 6] 9634 	tfr	d,x	;, tmp213
                           9635 ; ORG>	tfr	d,x	;, tmp213
                           9636 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp213,
   3735 C4 01         [ 2] 9637 	andb	#1	;,
   3737 E7 6A         [ 5] 9638 	stb	10,s	;, prolog_loop_niters.715
   3739 10 27 01 49   [ 6] 9639 	lbeq	L570	;
   373D 7F C9 53      [ 7] 9640 	clr	_sf	; sf
   3740 C6 01         [ 2] 9641 	ldb	#1	;,
   3742 E7 6D         [ 5] 9642 	stb	13,s	;, i.856
   3744 C6 0A         [ 2] 9643 	ldb	#10	;,
   3746 E7 69         [ 5] 9644 	stb	9,s	;, ivtmp.706
   3748                    9645 L539:
   3748 C6 0B         [ 2] 9646 	ldb	#11	; tmp217,
   374A E0 6A         [ 5] 9647 	subb	10,s	; tmp217, prolog_loop_niters.715
   374C E7 6B         [ 5] 9648 	stb	11,s	; tmp217, niters.718
   374E E6 6A         [ 5] 9649 	ldb	10,s	;, prolog_loop_niters.715
   3750 4F            [ 2] 9650 	clra		;zero_extendqihi: R:b -> R:d	;,
   3751 1F 03         [ 6] 9651 	tfr	d,u	;,
   3753 30 C9 C9 53   [ 8] 9652 	leax	_sf,u	; ivtmp.835,,
   3757 6F 62         [ 7] 9653 	clr	2,s	; ivtmp.830
   3759                    9654 L540:
   3759 CC 00 00      [ 3] 9655 	ldd	#0	;,
   375C ED 81         [ 8] 9656 	std	,x++	;,
   375E 6C 62         [ 7] 9657 	inc	2,s	; ivtmp.830
   3760 E6 62         [ 5] 9658 	ldb	2,s	;, ivtmp.830
   3762 C1 04         [ 2] 9659 	cmpb	#4	;cmpqi:	;,
   3764 23 F3         [ 3] 9660 	bls	L540	;
   3766 E6 69         [ 5] 9661 	ldb	9,s	;, ivtmp.706
   3768 CB F6         [ 2] 9662 	addb	#-10	;,
   376A E7 6C         [ 5] 9663 	stb	12,s	;, ivtmp.818
   376C E6 6D         [ 5] 9664 	ldb	13,s	;, i.856
   376E CB 0A         [ 2] 9665 	addb	#10	;,
   3770 E7 62         [ 5] 9666 	stb	2,s	;, i
   3772 E6 6B         [ 5] 9667 	ldb	11,s	;, niters.718
   3774 C1 0A         [ 2] 9668 	cmpb	#10	;cmpqi:	;,
   3776 27 0F         [ 3] 9669 	beq	L541	;
   3778                    9670 L546:
   3778 E6 62         [ 5] 9671 	ldb	2,s	;, i
   377A 1D            [ 2] 9672 	sex		;extendqihi2: R:b -> R:d	;,
   377B 1F 01         [ 6] 9673 	tfr	d,x	;, i
   377D 6F 89 C9 53   [10] 9674 	clr	_sf,x	; sf
   3781 6C 62         [ 7] 9675 	inc	2,s	; i
   3783 6A 6C         [ 7] 9676 	dec	12,s	; ivtmp.818
   3785 26 F1         [ 3] 9677 	bne	L546	;
   3787                    9678 L541:
   3787 BD 3E 3B      [ 8] 9679 	jsr	_clearMonsterStack
                           9680 ;----- asm -----
                           9681 ; 3517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9682 	; #ENR#[2512]_x = vec_loop_count_lo;
                           9683 ;--- end asm ---
   378A F6 C8 26      [ 5] 9684 	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
   378D F7 CA 63      [ 5] 9685 	stb	__x	;, _x
                           9686 ;----- asm -----
                           9687 ; 3519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9688 	; #ENR#[2513]setrandseednp();
                           9689 ;--- end asm ---
   3790 BD 67 2D      [ 8] 9690 	jsr	_setRandSeedNP
                           9691 ;----- asm -----
                           9692 ; 3522 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9693 	; #ENR#[2515]goto newturnstart;
                           9694 ;--- end asm ---
   3793 16 FC 58      [ 5] 9695 	lbra	L487	;
   3796                    9696 L526:
   3796 E6 66         [ 5] 9697 	ldb	6,s	;, b
   3798 C1 01         [ 2] 9698 	cmpb	#1	;cmpqi:	;,
   379A 10 26 FD BB   [ 6] 9699 	lbne	L525	;
   379E 6F 66         [ 7] 9700 	clr	6,s	; b
   37A0 E7 65         [ 5] 9701 	stb	5,s	;, stage
   37A2 16 FD BC      [ 5] 9702 	lbra	L543	;
   37A5                    9703 L531:
                           9704 ;----- asm -----
                           9705 ; 3525 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9706 	; #ENR#[2517]break;
                           9707 ;--- end asm ---
   37A5                    9708 L528:
                           9709 ;----- asm -----
                           9710 ; 3535 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9711 	; #ENR#[2524]goto restart;
                           9712 ;--- end asm ---
   37A5 16 FB 19      [ 5] 9713 	lbra	L484	;
   37A8                    9714 L560:
                           9715 ;----- asm -----
                           9716 ; 3212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9717 	; #ENR#[2310]tmp = 0;
                           9718 ;--- end asm ---
   37A8 7F C8 FE      [ 7] 9719 	clr	_tmp	; tmp
                           9720 ;----- asm -----
                           9721 ; 3214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9722 	; #ENR#[2311]pause(small_pause);
                           9723 ;--- end asm ---
   37AB C6 4B         [ 2] 9724 	ldb	#75	;,
   37AD BD 3D 31      [ 8] 9725 	jsr	_pause
                           9726 ;----- asm -----
                           9727 ; 3216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9728 	; #ENR#[2312]goto newturnstart;
                           9729 ;--- end asm ---
   37B0 16 FC 3B      [ 5] 9730 	lbra	L487	;
   37B3                    9731 L561:
                           9732 ;----- asm -----
                           9733 ; 3221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9734 	; #ENR#[2316]tmp = 0;
                           9735 ;--- end asm ---
   37B3 7F C8 FE      [ 7] 9736 	clr	_tmp	; tmp
                           9737 ;----- asm -----
                           9738 ; 3223 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9739 	; #ENR#[2317]goto playerdead;
                           9740 ; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9741 	; #ENR#[2433]if (msgline == 3)
                           9742 ;--- end asm ---
   37B6 F6 C9 C2      [ 5] 9743 	ldb	_msgLine	;, msgLine
   37B9 C1 03         [ 2] 9744 	cmpb	#3	;cmpqi:	;,
   37BB 10 26 FD 1A   [ 6] 9745 	lbne	L522	;
   37BF                    9746 L566:
                           9747 ;----- asm -----
                           9748 ; 3384 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9749 	; #ENR#[2435]pause(small_pause);
                           9750 ;--- end asm ---
   37BF C6 4B         [ 2] 9751 	ldb	#75	;,
   37C1 BD 3D 31      [ 8] 9752 	jsr	_pause
                           9753 ;----- asm -----
                           9754 ; 3386 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9755 	; #ENR#[2436]clearmessage();
                           9756 ;--- end asm ---
   37C4 7F C9 C2      [ 7] 9757 	clr	_msgLine	; msgLine
   37C7 16 FD 0F      [ 5] 9758 	lbra	L522	;
   37CA                    9759 L556:
                           9760 ;----- asm -----
                           9761 ; 3170 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9762 	; #ENR#[2280]tmp = 0;
                           9763 ;--- end asm ---
   37CA 7F C8 FE      [ 7] 9764 	clr	_tmp	; tmp
                           9765 ;----- asm -----
                           9766 ; 3172 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9767 	; #ENR#[2281]goto playerdead;
                           9768 ;--- end asm ---
   37CD 16 FD 00      [ 5] 9769 	lbra	L489	;
   37D0                    9770 L564:
                           9771 ;----- asm -----
                           9772 ; 3317 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9773 	; #ENR#[2389]clearmessage();
                           9774 ;--- end asm ---
   37D0 7F C9 C2      [ 7] 9775 	clr	_msgLine	; msgLine
                           9776 ;----- asm -----
                           9777 ; 3319 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9778 	; #ENR#[2390]printmessage();
                           9779 ;--- end asm ---
   37D3 8E 32 22      [ 3] 9780 	ldx	#LC215	;,
   37D6 BD 5A 71      [ 8] 9781 	jsr	_printMessage
                           9782 ;----- asm -----
                           9783 ; 3321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9784 	; #ENR#[2391]pause(very_small_pause);
                           9785 ;--- end asm ---
   37D9 C6 19         [ 2] 9786 	ldb	#25	;,
   37DB BD 3D 31      [ 8] 9787 	jsr	_pause
                           9788 ;----- asm -----
                           9789 ; 3323 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9790 	; #ENR#[2392]#ifndef no_monster
                           9791 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9792 	; #ENR#[2393]tmp = monsteronstackadvance();
                           9793 ;--- end asm ---
   37DE BD 3D C8      [ 8] 9794 	jsr	_monsterOnStackAdvance
   37E1 F7 C8 FE      [ 5] 9795 	stb	_tmp	; tmp.190, tmp
                           9796 ;----- asm -----
                           9797 ; 3327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9798 	; #ENR#[2394]if (tmp != 0)
                           9799 ;--- end asm ---
   37E4 5D            [ 2] 9800 	tstb	; tmp.190
   37E5 10 27 FC 05   [ 6] 9801 	lbeq	L508	;
                           9802 ;----- asm -----
                           9803 ; 3330 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9804 	; #ENR#[2396]tmp = return_monster_is_set;
                           9805 ;--- end asm ---
   37E9 C6 1F         [ 2] 9806 	ldb	#31	;,
   37EB F7 C8 FE      [ 5] 9807 	stb	_tmp	;, tmp
                           9808 ;----- asm -----
                           9809 ; 3332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9810 	; #ENR#[2397]goto monsterreturns;
                           9811 ;--- end asm ---
   37EE 16 FB 02      [ 5] 9812 	lbra	L549	;
   37F1                    9813 L565:
                           9814 ;----- asm -----
                           9815 ; 3289 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9816 	; #ENR#[2368]castspell(0);
                           9817 ;--- end asm ---
   37F1 5F            [ 2] 9818 	clrb	;
   37F2 BD 45 A0      [ 8] 9819 	jsr	_castSpell
                           9820 ;----- asm -----
                           9821 ; 3291 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9822 	; #ENR#[2369]pause(small_pause);
                           9823 ;--- end asm ---
   37F5 C6 4B         [ 2] 9824 	ldb	#75	;,
   37F7 BD 3D 31      [ 8] 9825 	jsr	_pause
                           9826 ;----- asm -----
                           9827 ; 3293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9828 	; #ENR#[2370]timer = 0;
                           9829 ;--- end asm ---
   37FA 7F C8 A7      [ 7] 9830 	clr	_timer	; timer
                           9831 ;----- asm -----
                           9832 ; 3295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9833 	; #ENR#[2371]tmp = 1;
                           9834 ;--- end asm ---
   37FD C6 01         [ 2] 9835 	ldb	#1	;,
   37FF F7 C8 FE      [ 5] 9836 	stb	_tmp	;, tmp
   3802 16 FB D0      [ 5] 9837 	lbra	L504	;
   3805                    9838 L532:
   3805 F6 C9 17      [ 5] 9839 	ldb	_tmp_s	;, tmp_s
   3808 F7 C9 43      [ 5] 9840 	stb	_s	;, s
   380B F6 C9 18      [ 5] 9841 	ldb	_tmp_s+1	;, tmp_s
   380E F7 C9 44      [ 5] 9842 	stb	_s+1	;, s
   3811 F6 C9 19      [ 5] 9843 	ldb	_tmp_s+2	;, tmp_s
   3814 F7 C9 45      [ 5] 9844 	stb	_s+2	;, s
   3817 F6 C9 1A      [ 5] 9845 	ldb	_tmp_s+3	;, tmp_s
   381A F7 C9 46      [ 5] 9846 	stb	_s+3	;, s
   381D F6 C9 1B      [ 5] 9847 	ldb	_tmp_s+4	;, tmp_s
   3820 F7 C9 47      [ 5] 9848 	stb	_s+4	;, s
   3823 F6 C9 1C      [ 5] 9849 	ldb	_tmp_s+5	;, tmp_s
   3826 F7 C9 48      [ 5] 9850 	stb	_s+5	;, s
   3829 16 FE 7E      [ 5] 9851 	lbra	L533	;
   382C                    9852 L536:
   382C F6 C9 27      [ 5] 9853 	ldb	_tmp_box	;, tmp_box
   382F F7 C9 5E      [ 5] 9854 	stb	_box	;, box
   3832 F6 C9 28      [ 5] 9855 	ldb	_tmp_box+1	;, tmp_box
   3835 F7 C9 5F      [ 5] 9856 	stb	_box+1	;, box
   3838 F6 C9 29      [ 5] 9857 	ldb	_tmp_box+2	;, tmp_box
   383B F7 C9 60      [ 5] 9858 	stb	_box+2	;, box
   383E F6 C9 2A      [ 5] 9859 	ldb	_tmp_box+3	;, tmp_box
   3841 F7 C9 61      [ 5] 9860 	stb	_box+3	;, box
   3844 16 FE BB      [ 5] 9861 	lbra	L537	;
   3847                    9862 L534:
   3847 F6 C9 1D      [ 5] 9863 	ldb	_tmp_inventory	;, tmp_inventory
   384A F7 C9 49      [ 5] 9864 	stb	_inventory	;, inventory
   384D F6 C9 1E      [ 5] 9865 	ldb	_tmp_inventory+1	;, tmp_inventory
   3850 F7 C9 4A      [ 5] 9866 	stb	_inventory+1	;, inventory
   3853 F6 C9 1F      [ 5] 9867 	ldb	_tmp_inventory+2	;, tmp_inventory
   3856 F7 C9 4B      [ 5] 9868 	stb	_inventory+2	;, inventory
   3859 F6 C9 20      [ 5] 9869 	ldb	_tmp_inventory+3	;, tmp_inventory
   385C F7 C9 4C      [ 5] 9870 	stb	_inventory+3	;, inventory
   385F F6 C9 21      [ 5] 9871 	ldb	_tmp_inventory+4	;, tmp_inventory
   3862 F7 C9 4D      [ 5] 9872 	stb	_inventory+4	;, inventory
   3865 F6 C9 22      [ 5] 9873 	ldb	_tmp_inventory+5	;, tmp_inventory
   3868 F7 C9 4E      [ 5] 9874 	stb	_inventory+5	;, inventory
   386B F6 C9 23      [ 5] 9875 	ldb	_tmp_inventory+6	;, tmp_inventory
   386E F7 C9 4F      [ 5] 9876 	stb	_inventory+6	;, inventory
   3871 F6 C9 24      [ 5] 9877 	ldb	_tmp_inventory+7	;, tmp_inventory
   3874 F7 C9 50      [ 5] 9878 	stb	_inventory+7	;, inventory
   3877 F6 C9 25      [ 5] 9879 	ldb	_tmp_inventory+8	;, tmp_inventory
   387A F7 C9 51      [ 5] 9880 	stb	_inventory+8	;, inventory
   387D F6 C9 26      [ 5] 9881 	ldb	_tmp_inventory+9	;, tmp_inventory
   3880 F7 C9 52      [ 5] 9882 	stb	_inventory+9	;, inventory
   3883 16 FE 59      [ 5] 9883 	lbra	L535	;
   3886                    9884 L570:
   3886 6F 6D         [ 7] 9885 	clr	13,s	; i.856
   3888 C6 0B         [ 2] 9886 	ldb	#11	;,
   388A E7 69         [ 5] 9887 	stb	9,s	;, ivtmp.706
   388C 16 FE B9      [ 5] 9888 	lbra	L539	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$main$1000        0559 GR  |   3 A$main$1001        055B GR
  3 A$main$1002        055D GR  |   3 A$main$1003        055F GR
  3 A$main$1004        0561 GR  |   3 A$main$1010        0565 GR
  3 A$main$1022        0568 GR  |   3 A$main$1023        056B GR
  3 A$main$1028        056F GR  |   3 A$main$1029        0572 GR
  3 A$main$1030        0574 GR  |   3 A$main$1031        0576 GR
  3 A$main$1032        0578 GR  |   3 A$main$1033        057A GR
  3 A$main$1039        057C GR  |   3 A$main$1040        057E GR
  3 A$main$1041        0580 GR  |   3 A$main$1042        0582 GR
  3 A$main$1043        0584 GR  |   3 A$main$1049        0586 GR
  3 A$main$1050        0588 GR  |   3 A$main$1051        058A GR
  3 A$main$1052        058C GR  |   3 A$main$1053        058E GR
  3 A$main$1059        0590 GR  |   3 A$main$1060        0592 GR
  3 A$main$1061        0594 GR  |   3 A$main$1062        0596 GR
  3 A$main$1063        0598 GR  |   3 A$main$1069        059A GR
  3 A$main$1070        059D GR  |   3 A$main$1071        059F GR
  3 A$main$1072        05A1 GR  |   3 A$main$1073        05A3 GR
  3 A$main$1079        05A5 GR  |   3 A$main$1080        05A7 GR
  3 A$main$1081        05AB GR  |   3 A$main$1082        05AD GR
  3 A$main$1083        05AF GR  |   3 A$main$1085        05B2 GR
  3 A$main$1086        05B4 GR  |   3 A$main$1087        05B6 GR
  3 A$main$1089        05B9 GR  |   3 A$main$1095        05BB GR
  3 A$main$1100        05BE GR  |   3 A$main$1101        05C0 GR
  3 A$main$1106        05C2 GR  |   3 A$main$1107        05C4 GR
  3 A$main$1109        05C6 GR  |   3 A$main$1110        05C8 GR
  3 A$main$1111        05CA GR  |   3 A$main$1113        05CB GR
  3 A$main$1114        05CD GR  |   3 A$main$1120        05CF GR
  3 A$main$1121        05D2 GR  |   3 A$main$1122        05D4 GR
  3 A$main$1123        05D6 GR  |   3 A$main$1124        05D8 GR
  3 A$main$1130        05DA GR  |   3 A$main$1131        05DC GR
  3 A$main$1137        05E0 GR  |   3 A$main$1138        05E2 GR
  3 A$main$1139        05E4 GR  |   3 A$main$1140        05E6 GR
  3 A$main$1141        05E8 GR  |   3 A$main$1142        05EA GR
  3 A$main$1143        05EC GR  |   3 A$main$1144        05EE GR
  3 A$main$1150        05F2 GR  |   3 A$main$1160        05F5 GR
  3 A$main$1161        05F8 GR  |   3 A$main$1166        05FB GR
  3 A$main$1167        05FC GR  |   3 A$main$1172        0600 GR
  3 A$main$1173        0603 GR  |   3 A$main$1174        0605 GR
  3 A$main$1175        0607 GR  |   3 A$main$1176        0609 GR
  3 A$main$1177        060B GR  |   3 A$main$1183        060D GR
  3 A$main$1184        060F GR  |   3 A$main$1185        0611 GR
  3 A$main$1186        0613 GR  |   3 A$main$1187        0615 GR
  3 A$main$1193        0617 GR  |   3 A$main$1194        0619 GR
  3 A$main$1195        061B GR  |   3 A$main$1196        061D GR
  3 A$main$1197        061F GR  |   3 A$main$1203        0621 GR
  3 A$main$1204        0623 GR  |   3 A$main$1205        0625 GR
  3 A$main$1206        0627 GR  |   3 A$main$1207        0629 GR
  3 A$main$1213        062B GR  |   3 A$main$1214        062E GR
  3 A$main$1215        0630 GR  |   3 A$main$1216        0632 GR
  3 A$main$1217        0634 GR  |   3 A$main$1223        0636 GR
  3 A$main$1224        0638 GR  |   3 A$main$1225        063C GR
  3 A$main$1226        063E GR  |   3 A$main$1227        0640 GR
  3 A$main$1229        0643 GR  |   3 A$main$1230        0645 GR
  3 A$main$1231        0647 GR  |   3 A$main$1243        0674 GR
  3 A$main$1244        0676 GR  |   3 A$main$1245        0679 GR
  3 A$main$1258        067C GR  |   3 A$main$1259        067F GR
  3 A$main$1260        0682 GR  |   3 A$main$1265        0685 GR
  3 A$main$1266        0689 GR  |   3 A$main$1267        068B GR
  3 A$main$1268        068C GR  |   3 A$main$1269        068F GR
  3 A$main$1274        0692 GR  |   3 A$main$1275        0694 GR
  3 A$main$1276        0696 GR  |   3 A$main$1277        0698 GR
  3 A$main$1283        069C GR  |   3 A$main$1284        069F GR
  3 A$main$1285        06A1 GR  |   3 A$main$1291        06A5 GR
  3 A$main$1292        06A8 GR  |   3 A$main$1293        06AA GR
  3 A$main$1299        06AE GR  |   3 A$main$1300        06B1 GR
  3 A$main$1301        06B3 GR  |   3 A$main$1307        06B7 GR
  3 A$main$1308        06BA GR  |   3 A$main$1309        06BC GR
  3 A$main$1315        06C0 GR  |   3 A$main$1316        06C2 GR
  3 A$main$1321        06C5 GR  |   3 A$main$1322        06C8 GR
  3 A$main$1323        06CB GR  |   3 A$main$1324        06CF GR
  3 A$main$1325        06D2 GR  |   3 A$main$1326        06D4 GR
  3 A$main$1327        06D7 GR  |   3 A$main$1328        06DA GR
  3 A$main$1334        06DD GR  |   3 A$main$1335        06E0 GR
  3 A$main$1336        06E4 GR  |   3 A$main$1337        06E6 GR
  3 A$main$1338        06E8 GR  |   3 A$main$1339        06EA GR
  3 A$main$1340        06ED GR  |   3 A$main$1341        06F0 GR
  3 A$main$1347        06F3 GR  |   3 A$main$1348        06F6 GR
  3 A$main$1349        06FA GR  |   3 A$main$1350        06FC GR
  3 A$main$1351        06FE GR  |   3 A$main$1352        0700 GR
  3 A$main$1353        0703 GR  |   3 A$main$1354        0706 GR
  3 A$main$1360        0709 GR  |   3 A$main$1361        070C GR
  3 A$main$1362        0710 GR  |   3 A$main$1363        0712 GR
  3 A$main$1364        0714 GR  |   3 A$main$1365        0717 GR
  3 A$main$1366        071A GR  |   3 A$main$1372        071D GR
  3 A$main$1379        0720 GR  |   3 A$main$1380        0723 GR
  3 A$main$1381        0725 GR  |   3 A$main$1382        0728 GR
  3 A$main$1383        072B GR  |   3 A$main$1384        072D GR
  3 A$main$1385        0730 GR  |   3 A$main$1386        0732 GR
  3 A$main$1387        0735 GR  |   3 A$main$1388        0737 GR
  3 A$main$1389        0738 GR  |   3 A$main$1390        073A GR
  3 A$main$1391        073B GR  |   3 A$main$1392        073E GR
  3 A$main$1393        0741 GR  |   3 A$main$1399        0744 GR
  3 A$main$1400        0748 GR  |   3 A$main$1401        074A GR
  3 A$main$1402        074B GR  |   3 A$main$1403        074E GR
  3 A$main$1408        0751 GR  |   3 A$main$1409        0753 GR
  3 A$main$1410        0756 GR  |   3 A$main$1411        0759 GR
  3 A$main$1417        075B GR  |   3 A$main$1418        075E GR
  3 A$main$1419        0762 GR  |   3 A$main$1425        0766 GR
  3 A$main$1426        076A GR  |   3 A$main$1427        076C GR
  3 A$main$1428        076D GR  |   3 A$main$1429        0770 GR
  3 A$main$1434        0773 GR  |   3 A$main$1435        0775 GR
  3 A$main$1436        0778 GR  |   3 A$main$1437        077B GR
  3 A$main$1443        077D GR  |   3 A$main$1444        077F GR
  3 A$main$1445        0782 GR  |   3 A$main$1446        0785 GR
  3 A$main$1447        0787 GR  |   3 A$main$1448        078A GR
  3 A$main$1449        078C GR  |   3 A$main$1451        078E GR
  3 A$main$1457        0791 GR  |   3 A$main$1458        0794 GR
  3 A$main$1468        0798 GR  |   3 A$main$1473        079B GR
  3 A$main$1478        079E GR  |   3 A$main$1483        07A1 GR
  3 A$main$1488        07A4 GR  |   3 A$main$1493        07A7 GR
  3 A$main$1494        07A9 GR  |   3 A$main$1499        07AB GR
  3 A$main$1500        07AE GR  |   3 A$main$1505        07B0 GR
  3 A$main$1506        07B2 GR  |   3 A$main$1507        07B4 GR
  3 A$main$1508        07B7 GR  |   3 A$main$1509        07BA GR
  3 A$main$1510        07BD GR  |   3 A$main$1511        07BF GR
  3 A$main$1512        07C1 GR  |   3 A$main$1518        07C3 GR
  3 A$main$1519        07C5 GR  |   3 A$main$1520        07C7 GR
  3 A$main$1521        07CA GR  |   3 A$main$1522        07CC GR
  3 A$main$1523        07CF GR  |   3 A$main$1524        07D1 GR
  3 A$main$1529        07D3 GR  |   3 A$main$1530        07D6 GR
  3 A$main$1535        07D9 GR  |   3 A$main$1536        07DB GR
  3 A$main$1541        07DE GR  |   3 A$main$1542        07E1 GR
  3 A$main$1543        07E3 GR  |   3 A$main$1544        07E6 GR
  3 A$main$1549        07E9 GR  |   3 A$main$1550        07EB GR
  3 A$main$1551        07ED GR  |   3 A$main$1552        07F0 GR
  3 A$main$1553        07F2 GR  |   3 A$main$1554        07F5 GR
  3 A$main$1555        07F7 GR  |   3 A$main$1560        07F9 GR
  3 A$main$1561        07FC GR  |   3 A$main$1562        07FE GR
  3 A$main$1563        0801 GR  |   3 A$main$1568        0804 GR
  3 A$main$1569        0806 GR  |   3 A$main$1570        0809 GR
  3 A$main$1571        080B GR  |   3 A$main$1572        080E GR
  3 A$main$1573        0810 GR  |   3 A$main$1578        0812 GR
  3 A$main$1579        0814 GR  |   3 A$main$1584        0817 GR
  3 A$main$1585        0819 GR  |   3 A$main$1586        081B GR
  3 A$main$1587        081D GR  |   3 A$main$1588        081F GR
  3 A$main$1589        0822 GR  |   3 A$main$1590        0824 GR
  3 A$main$1595        0826 GR  |   3 A$main$1596        0828 GR
  3 A$main$1597        082B GR  |   3 A$main$1598        082E GR
  3 A$main$1599        082F GR  |   3 A$main$1600        0831 GR
  3 A$main$1602        0832 GR  |   3 A$main$1603        0834 GR
  3 A$main$1604        0836 GR  |   3 A$main$1605        0838 GR
  3 A$main$1606        083A GR  |   3 A$main$1607        083D GR
  3 A$main$1608        083F GR  |   3 A$main$1609        0842 GR
  3 A$main$1610        0844 GR  |   3 A$main$1615        0846 GR
  3 A$main$1616        0849 GR  |   3 A$main$1621        084C GR
  3 A$main$1622        084F GR  |   3 A$main$1623        0851 GR
  3 A$main$1624        0853 GR  |   3 A$main$1625        0854 GR
  3 A$main$1626        0856 GR  |   3 A$main$1627        0859 GR
  3 A$main$1628        085B GR  |   3 A$main$1629        085E GR
  3 A$main$1630        0861 GR  |   3 A$main$1631        0863 GR
  3 A$main$1632        0864 GR  |   3 A$main$1638        0867 GR
  3 A$main$1639        0869 GR  |   3 A$main$1645        086D GR
  3 A$main$1646        0870 GR  |   3 A$main$1647        0872 GR
  3 A$main$1648        0875 GR  |   3 A$main$1649        0877 GR
  3 A$main$1650        087A GR  |   3 A$main$1651        087B GR
  3 A$main$1652        087D GR  |   3 A$main$1653        0880 GR
  3 A$main$1654        0882 GR  |   3 A$main$1655        0884 GR
  3 A$main$1656        0886 GR  |   3 A$main$1662        0888 GR
  3 A$main$1663        088B GR  |   3 A$main$1669        088F GR
  3 A$main$1670        0892 GR  |   3 A$main$1671        0893 GR
  3 A$main$1672        0895 GR  |   3 A$main$1673        0898 GR
  3 A$main$1674        089A GR  |   3 A$main$1675        089C GR
  3 A$main$1676        089E GR  |   3 A$main$1677        08A0 GR
  3 A$main$1678        08A2 GR  |   3 A$main$1679        08A4 GR
  3 A$main$1680        08A6 GR  |   3 A$main$1686        08A8 GR
  3 A$main$1687        08AB GR  |   3 A$main$1688        08AC GR
  3 A$main$1689        08AE GR  |   3 A$main$1690        08B1 GR
  3 A$main$1691        08B3 GR  |   3 A$main$1692        08B5 GR
  3 A$main$1693        08B7 GR  |   3 A$main$1694        08B9 GR
  3 A$main$1695        08BB GR  |   3 A$main$1696        08BD GR
  3 A$main$1697        08BF GR  |   3 A$main$1703        08C1 GR
  3 A$main$1704        08C4 GR  |   3 A$main$1705        08C6 GR
  3 A$main$1706        08C8 GR  |   3 A$main$1707        08C9 GR
  3 A$main$1708        08CC GR  |   3 A$main$1709        08CF GR
  3 A$main$1714        08D2 GR  |   3 A$main$1715        08D5 GR
  3 A$main$1716        08D8 GR  |   3 A$main$1717        08DA GR
  3 A$main$1718        08DD GR  |   3 A$main$1719        08DF GR
  3 A$main$1720        08E1 GR  |   3 A$main$1721        08E3 GR
  3 A$main$1722        08E4 GR  |   3 A$main$1723        08E6 GR
  3 A$main$1724        08E8 GR  |   3 A$main$1725        08EB GR
  3 A$main$1726        08ED GR  |   3 A$main$1727        08F0 GR
  3 A$main$1728        08F2 GR  |   3 A$main$1729        08F5 GR
  3 A$main$1730        08F7 GR  |   3 A$main$1731        08F9 GR
  3 A$main$1732        08FC GR  |   3 A$main$1733        08FF GR
  3 A$main$1734        0901 GR  |   3 A$main$1735        0904 GR
  3 A$main$1736        0907 GR  |   3 A$main$1737        090A GR
  3 A$main$1738        090D GR  |   3 A$main$1739        0910 GR
  3 A$main$1740        0913 GR  |   3 A$main$1741        0916 GR
  3 A$main$1742        0919 GR  |   3 A$main$1743        091C GR
  3 A$main$1744        091F GR  |   3 A$main$1745        0922 GR
  3 A$main$1751        0925 GR  |   3 A$main$1752        0928 GR
  3 A$main$1753        092A GR  |   3 A$main$1754        092D GR
  3 A$main$1755        092F GR  |   3 A$main$1756        0931 GR
  3 A$main$1757        0933 GR  |   3 A$main$1758        0934 GR
  3 A$main$1759        0936 GR  |   3 A$main$1760        0938 GR
  3 A$main$1761        093B GR  |   3 A$main$1762        093D GR
  3 A$main$1763        0940 GR  |   3 A$main$1764        0942 GR
  3 A$main$1765        0945 GR  |   3 A$main$1766        0947 GR
  3 A$main$1767        0949 GR  |   3 A$main$1768        094C GR
  3 A$main$1769        094F GR  |   3 A$main$1770        0951 GR
  3 A$main$1771        0954 GR  |   3 A$main$1772        0956 GR
  3 A$main$1773        0959 GR  |   3 A$main$1774        095C GR
  3 A$main$1775        095F GR  |   3 A$main$1776        0962 GR
  3 A$main$1777        0965 GR  |   3 A$main$1778        0968 GR
  3 A$main$1779        096B GR  |   3 A$main$1780        096D GR
  3 A$main$1781        0970 GR  |   3 A$main$1787        0973 GR
  3 A$main$1788        0976 GR  |   3 A$main$1789        0978 GR
  3 A$main$1790        097B GR  |   3 A$main$1791        097D GR
  3 A$main$1792        097F GR  |   3 A$main$1793        0981 GR
  3 A$main$1794        0982 GR  |   3 A$main$1795        0984 GR
  3 A$main$1796        0986 GR  |   3 A$main$1797        0989 GR
  3 A$main$1798        098B GR  |   3 A$main$1799        098E GR
  3 A$main$1800        0990 GR  |   3 A$main$1801        0992 GR
  3 A$main$1802        0995 GR  |   3 A$main$1803        0998 GR
  3 A$main$1804        099B GR  |   3 A$main$1805        099D GR
  3 A$main$1806        09A0 GR  |   3 A$main$1807        09A2 GR
  3 A$main$1808        09A5 GR  |   3 A$main$1809        09A7 GR
  3 A$main$1810        09AA GR  |   3 A$main$1811        09AC GR
  3 A$main$1812        09AF GR  |   3 A$main$1813        09B2 GR
  3 A$main$1814        09B4 GR  |   3 A$main$1815        09B6 GR
  3 A$main$1816        09B9 GR  |   3 A$main$1822        09BC GR
  3 A$main$1823        09BF GR  |   3 A$main$1824        09C1 GR
  3 A$main$1825        09C4 GR  |   3 A$main$1826        09C6 GR
  3 A$main$1827        09C8 GR  |   3 A$main$1828        09CA GR
  3 A$main$1829        09CB GR  |   3 A$main$1830        09CD GR
  3 A$main$1831        09CF GR  |   3 A$main$1832        09D2 GR
  3 A$main$1833        09D4 GR  |   3 A$main$1834        09D7 GR
  3 A$main$1835        09D9 GR  |   3 A$main$1836        09DB GR
  3 A$main$1837        09DE GR  |   3 A$main$1838        09E1 GR
  3 A$main$1839        09E4 GR  |   3 A$main$1840        09E6 GR
  3 A$main$1841        09E9 GR  |   3 A$main$1842        09EB GR
  3 A$main$1843        09EE GR  |   3 A$main$1844        09F0 GR
  3 A$main$1845        09F3 GR  |   3 A$main$1846        09F5 GR
  3 A$main$1847        09F8 GR  |   3 A$main$1848        09FB GR
  3 A$main$1849        09FD GR  |   3 A$main$1850        09FF GR
  3 A$main$1856        0A02 GR  |   3 A$main$1857        0A05 GR
  3 A$main$1858        0A08 GR  |   3 A$main$1859        0A0C GR
  3 A$main$1860        0A10 GR  |   3 A$main$1861        0A13 GR
  3 A$main$1862        0A15 GR  |   3 A$main$1863        0A19 GR
  3 A$main$1865        0A1C GR  |   3 A$main$1866        0A20 GR
  3 A$main$1867        0A24 GR  |   3 A$main$1868        0A27 GR
  3 A$main$1869        0A2A GR  |   3 A$main$1870        0A2E GR
  3 A$main$1872        0A31 GR  |   3 A$main$1873        0A34 GR
  3 A$main$1874        0A38 GR  |   3 A$main$1875        0A3B GR
  3 A$main$1876        0A3E GR  |   3 A$main$1877        0A42 GR
  3 A$main$1878        0A43 GR  |   3 A$main$1879        0A46 GR
  3 A$main$1881        0A49 GR  |   3 A$main$1882        0A4C GR
  3 A$main$1883        0A50 GR  |   3 A$main$1884        0A53 GR
  3 A$main$1885        0A54 GR  |   3 A$main$1886        0A56 GR
  3 A$main$1887        0A59 GR  |   3 A$main$1888        0A5B GR
  3 A$main$1889        0A5D GR  |   3 A$main$1890        0A5F GR
  3 A$main$1891        0A61 GR  |   3 A$main$1897        0A64 GR
  3 A$main$1898        0A67 GR  |   3 A$main$1899        0A6A GR
  3 A$main$1901        0A6C GR  |   3 A$main$1902        0A6F GR
  3 A$main$1903        0A71 GR  |   3 A$main$1904        0A74 GR
  3 A$main$1905        0A77 GR  |   3 A$main$1906        0A7A GR
  3 A$main$1908        0A7D GR  |   3 A$main$1909        0A7F GR
  3 A$main$1910        0A82 GR  |   3 A$main$1912        0A85 GR
  3 A$main$1913        0A87 GR  |   3 A$main$1914        0A8A GR
  3 A$main$1916        0A8D GR  |   3 A$main$1917        0A8F GR
  3 A$main$1918        0A92 GR  |   3 A$main$1920        0A95 GR
  3 A$main$1921        0A97 GR  |   3 A$main$1922        0A9A GR
  3 A$main$1924        0A9D GR  |   3 A$main$1925        0A9F GR
  3 A$main$1926        0AA2 GR  |   3 A$main$1999        0D1D GR
  3 A$main$2000        0D1F GR  |   3 A$main$2005        0D22 GR
  3 A$main$2006        0D24 GR  |   3 A$main$2011        0D28 GR
  3 A$main$2012        0D2A GR  |   3 A$main$2022        0D2E GR
  3 A$main$2027        0D31 GR  |   3 A$main$2028        0D34 GR
  3 A$main$2029        0D36 GR  |   3 A$main$2030        0D38 GR
  3 A$main$2031        0D3A GR  |   3 A$main$2032        0D3C GR
  3 A$main$2033        0D3E GR  |   3 A$main$2034        0D40 GR
  3 A$main$2035        0D42 GR  |   3 A$main$2036        0D44 GR
  3 A$main$2037        0D46 GR  |   3 A$main$2038        0D48 GR
  3 A$main$2039        0D4A GR  |   3 A$main$2040        0D4C GR
  3 A$main$2041        0D4E GR  |   3 A$main$2043        0D50 GR
  3 A$main$2044        0D52 GR  |   3 A$main$2052        0D55 GR
  3 A$main$2053        0D58 GR  |   3 A$main$2054        0D5A GR
  3 A$main$2055        0D5D GR  |   3 A$main$2056        0D5F GR
  3 A$main$2064        0D63 GR  |   3 A$main$2069        0D66 GR
  3 A$main$2070        0D69 GR  |   3 A$main$2071        0D6A GR
  3 A$main$2072        0D6C GR  |   3 A$main$2073        0D6D GR
  3 A$main$2074        0D6E GR  |   3 A$main$2075        0D70 GR
  3 A$main$2076        0D74 GR  |   3 A$main$2077        0D76 GR
  3 A$main$2078        0D79 GR  |   3 A$main$2079        0D7C GR
  3 A$main$2084        0D7F GR  |   3 A$main$2085        0D82 GR
  3 A$main$2092        0D85 GR  |   3 A$main$2093        0D88 GR
  3 A$main$2098        0D8B GR  |   3 A$main$2103        0D8E GR
  3 A$main$2104        0D90 GR  |   3 A$main$2105        0D93 GR
  3 A$main$2106        0D95 GR  |   3 A$main$2107        0D97 GR
  3 A$main$2112        0D9B GR  |   3 A$main$2113        0D9E GR
  3 A$main$2114        0DA0 GR  |   3 A$main$2115        0DA4 GR
  3 A$main$2116        0DA6 GR  |   3 A$main$2118        0DAA GR
  3 A$main$2119        0DAD GR  |   3 A$main$2120        0DAF GR
  3 A$main$2126        0DB3 GR  |   3 A$main$2127        0DB6 GR
  3 A$main$2128        0DB8 GR  |   3 A$main$2129        0DBA GR
  3 A$main$2130        0DBE GR  |   3 A$main$2131        0DC0 GR
  3 A$main$2132        0DC4 GR  |   3 A$main$2133        0DC6 GR
  3 A$main$2139        0DCA GR  |   3 A$main$2140        0DCC GR
  3 A$main$2141        0DCF GR  |   3 A$main$2142        0DD2 GR
  3 A$main$2143        0DD5 GR  |   3 A$main$2144        0DD7 GR
  3 A$main$2145        0DD8 GR  |   3 A$main$2146        0DDB GR
  3 A$main$2147        0DDF GR  |   3 A$main$2153        0DE2 GR
  3 A$main$2154        0DE4 GR  |   3 A$main$2159        0DE8 GR
  3 A$main$2160        0DEA GR  |   3 A$main$2165        0DEE GR
  3 A$main$2166        0DF0 GR  |   3 A$main$2171        0DF4 GR
  3 A$main$2172        0DF6 GR  |   3 A$main$2177        0DFA GR
  3 A$main$2178        0DFC GR  |   3 A$main$2189        0E00 GR
  3 A$main$2190        0E02 GR  |   3 A$main$2191        0E05 GR
  3 A$main$2192        0E08 GR  |   3 A$main$2193        0E0B GR
  3 A$main$2194        0E0E GR  |   3 A$main$2195        0E11 GR
  3 A$main$2196        0E14 GR  |   3 A$main$2197        0E17 GR
  3 A$main$2198        0E1A GR  |   3 A$main$2203        0E1D GR
  3 A$main$2204        0E20 GR  |   3 A$main$2205        0E22 GR
  3 A$main$2206        0E24 GR  |   3 A$main$2212        0E28 GR
  3 A$main$2213        0E2B GR  |   3 A$main$2214        0E2D GR
  3 A$main$2219        0E31 GR  |   3 A$main$2220        0E33 GR
  3 A$main$2221        0E36 GR  |   3 A$main$2222        0E39 GR
  3 A$main$2223        0E3C GR  |   3 A$main$2224        0E3D GR
  3 A$main$2225        0E40 GR  |   3 A$main$2226        0E43 GR
  3 A$main$2227        0E44 GR  |   3 A$main$2228        0E47 GR
  3 A$main$2229        0E48 GR  |   3 A$main$2230        0E4A GR
  3 A$main$2235        0E4D GR  |   3 A$main$2236        0E4F GR
  3 A$main$2237        0E52 GR  |   3 A$main$2242        0E55 GR
  3 A$main$2243        0E58 GR  |   3 A$main$2253        0E5B GR
  3 A$main$2254        0E5E GR  |   3 A$main$2255        0E61 GR
  3 A$main$2260        0E64 GR  |   3 A$main$2261        0E68 GR
  3 A$main$2266        0E6C GR  |   3 A$main$2267        0E6E GR
  3 A$main$2272        0E71 GR  |   3 A$main$2273        0E73 GR
  3 A$main$2274        0E76 GR  |   3 A$main$2275        0E79 GR
  3 A$main$2276        0E7B GR  |   3 A$main$2277        0E7E GR
  3 A$main$2283        0E82 GR  |   3 A$main$2284        0E84 GR
  3 A$main$2285        0E87 GR  |   3 A$main$2286        0E8A GR
  3 A$main$2291        0E8E GR  |   3 A$main$2292        0E91 GR
  3 A$main$2302        0E94 GR  |   3 A$main$2303        0E96 GR
  3 A$main$2308        0E99 GR  |   3 A$main$2313        0E9C GR
  3 A$main$2318        0E9F GR  |   3 A$main$2326        0EA2 GR
  3 A$main$2327        0EA5 GR  |   3 A$main$2328        0EA7 GR
  3 A$main$2329        0EAB GR  |   3 A$main$2330        0EAD GR
  3 A$main$2331        0EB0 GR  |   3 A$main$2337        0EB3 GR
  3 A$main$2338        0EB5 GR  |   3 A$main$2339        0EB8 GR
  3 A$main$2340        0EBA GR  |   3 A$main$2347        0EBE GR
  3 A$main$2348        0EC1 GR  |   3 A$main$2355        0EC3 GR
  3 A$main$2356        0EC6 GR  |   3 A$main$2367        0EC8 GR
  3 A$main$2368        0ECA GR  |   3 A$main$2369        0ECD GR
  3 A$main$2374        0ED0 GR  |   3 A$main$2375        0ED3 GR
  3 A$main$2376        0ED5 GR  |   3 A$main$2377        0ED7 GR
  3 A$main$2383        0ED9 GR  |   3 A$main$2384        0EDB GR
  3 A$main$2385        0EDE GR  |   3 A$main$2386        0EDF GR
  3 A$main$2387        0EE2 GR  |   3 A$main$2393        0EE6 GR
  3 A$main$2395        0EE9 GR  |   3 A$main$2396        0EEB GR
  3 A$main$2397        0EEE GR  |   3 A$main$2398        0EF0 GR
  3 A$main$2400        0EF2 GR  |   3 A$main$2401        0EF4 GR
  3 A$main$2403        0EF6 GR  |   3 A$main$2405        0EF8 GR
  3 A$main$2406        0EFB GR  |   3 A$main$2412        0EFD GR
  3 A$main$2417        0F00 GR  |   3 A$main$2418        0F03 GR
  3 A$main$2419        0F04 GR  |   3 A$main$2429        0F08 GR
  3 A$main$2434        0F0B GR  |   3 A$main$2435        0F0E GR
  3 A$main$2440        0F11 GR  |   3 A$main$2441        0F13 GR
  3 A$main$2446        0F16 GR  |   3 A$main$2451        0F19 GR
  3 A$main$2457        0F1C GR  |   3 A$main$2458        0F1F GR
  3 A$main$2459        0F21 GR  |   3 A$main$2460        0F23 GR
  3 A$main$2466        0F26 GR  |   3 A$main$2467        0F29 GR
  3 A$main$2473        0F2D GR  |   3 A$main$2474        0F30 GR
  3 A$main$2475        0F32 GR  |   3 A$main$2476        0F34 GR
  3 A$main$2477        0F36 GR  |   3 A$main$2478        0F39 GR
  3 A$main$2484        0F3C GR  |   3 A$main$2485        0F3E GR
  3 A$main$2486        0F40 GR  |   3 A$main$2487        0F42 GR
  3 A$main$2488        0F45 GR  |   3 A$main$2494        0F48 GR
  3 A$main$2495        0F4A GR  |   3 A$main$2496        0F4C GR
  3 A$main$2497        0F4E GR  |   3 A$main$2498        0F51 GR
  3 A$main$2504        0F54 GR  |   3 A$main$2505        0F56 GR
  3 A$main$2506        0F58 GR  |   3 A$main$2507        0F5A GR
  3 A$main$2513        0F5D GR  |   3 A$main$2514        0F60 GR
  3 A$main$2515        0F62 GR  |   3 A$main$2516        0F65 GR
  3 A$main$2522        0F69 GR  |   3 A$main$2528        0F6C GR
  3 A$main$2533        0F6F GR  |   3 A$main$2534        0F72 GR
  3 A$main$2539        0F74 GR  |   3 A$main$2540        0F77 GR
  3 A$main$2541        0F79 GR  |   3 A$main$2542        0F7B GR
  3 A$main$2548        0F7E GR  |   3 A$main$2549        0F81 GR
  3 A$main$2550        0F85 GR  |   3 A$main$2551        0F87 GR
  3 A$main$2552        0F8A GR  |   3 A$main$2554        0F8D GR
  3 A$main$2555        0F8F GR  |   3 A$main$2556        0F92 GR
  3 A$main$2562        0F95 GR  |   3 A$main$2563        0F98 GR
  3 A$main$2564        0F9C GR  |   3 A$main$2565        0F9F GR
  3 A$main$2566        0FA1 GR  |   3 A$main$2567        0FA4 GR
  3 A$main$2578        0FA7 GR  |   3 A$main$2579        0FA9 GR
  3 A$main$2584        0FAC GR  |   3 A$main$2589        0FAF GR
  3 A$main$2594        0FB2 GR  |   3 A$main$2599        0FB5 GR
  3 A$main$2600        0FB8 GR  |   3 A$main$2601        0FBA GR
  3 A$main$2606        0FBE GR  |   3 A$main$2611        0FC1 GR
  3 A$main$2612        0FC4 GR  |   3 A$main$2613        0FC5 GR
  3 A$main$2614        0FC7 GR  |   3 A$main$2615        0FC8 GR
  3 A$main$2616        0FC9 GR  |   3 A$main$2617        0FCB GR
  3 A$main$2618        0FCF GR  |   3 A$main$2619        0FD1 GR
  3 A$main$2620        0FD4 GR  |   3 A$main$2625        0FD7 GR
  3 A$main$2626        0FDA GR  |   3 A$main$2631        0FDD GR
  3 A$main$2632        0FDF GR  |   3 A$main$2634        0FE2 GR
  3 A$main$2635        0FE4 GR  |   3 A$main$2636        0FE7 GR
  3 A$main$2642        0FEA GR  |   3 A$main$2643        0FED GR
  3 A$main$2648        0FF0 GR  |   3 A$main$2649        0FF3 GR
  3 A$main$2650        0FF5 GR  |   3 A$main$2651        0FF6 GR
  3 A$main$2652        0FF7 GR  |   3 A$main$2653        0FF8 GR
  3 A$main$2654        0FFA GR  |   3 A$main$2655        0FFD GR
  3 A$main$2656        1000 GR  |   3 A$main$2657        1003 GR
  3 A$main$2658        1005 GR  |   3 A$main$2659        1007 GR
  3 A$main$2660        1009 GR  |   3 A$main$2661        100C GR
  3 A$main$2662        100F GR  |   3 A$main$2667        1012 GR
  3 A$main$2672        1015 GR  |   3 A$main$2673        1018 GR
  3 A$main$2678        101C GR  |   3 A$main$2679        101E GR
  3 A$main$2680        1021 GR  |   3 A$main$2682        1024 GR
  3 A$main$2683        1026 GR  |   3 A$main$2684        1029 GR
  3 A$main$2686        102C GR  |   3 A$main$2687        102D GR
  3 A$main$2688        102F GR  |   3 A$main$2689        1030 GR
  3 A$main$2690        1031 GR  |   3 A$main$2691        1033 GR
  3 A$main$2699        1041 GR  |   3 A$main$2700        1043 GR
  3 A$main$2701        1046 GR  |   3 A$main$2712        1049 GR
  3 A$main$2713        104C GR  |   3 A$main$2714        104D GR
  3 A$main$2715        1050 GR  |   3 A$main$2716        1052 GR
  3 A$main$2717        1054 GR  |   3 A$main$2718        1057 GR
  3 A$main$2719        1059 GR  |   3 A$main$2721        105A GR
  3 A$main$2724        105C GR  |   3 A$main$2725        105D GR
  3 A$main$2726        105F GR  |   3 A$main$2731        1062 GR
  3 A$main$2732        1065 GR  |   3 A$main$2733        1067 GR
  3 A$main$2734        1068 GR  |   3 A$main$2739        106B GR
  3 A$main$2740        106E GR  |   3 A$main$2742        106F GR
  3 A$main$2743        1072 GR  |   3 A$main$2744        1073 GR
  3 A$main$2745        1076 GR  |   3 A$main$2750        1079 GR
  3 A$main$2756        107C GR  |   3 A$main$2761        107F GR
  3 A$main$2762        1082 GR  |   3 A$main$2767        1085 GR
  3 A$main$2768        1087 GR  |   3 A$main$2769        108A GR
  3 A$main$2770        108C GR  |   3 A$main$2771        108F GR
  3 A$main$2772        1092 GR  |   3 A$main$2773        1094 GR
  3 A$main$2774        1097 GR  |   3 A$main$2775        1098 GR
  3 A$main$2776        109A GR  |   3 A$main$2777        109C GR
  3 A$main$2778        109E GR  |   3 A$main$2779        10A0 GR
  3 A$main$2780        10A2 GR  |   3 A$main$2781        10A4 GR
  3 A$main$2782        10A5 GR  |   3 A$main$2783        10A7 GR
  3 A$main$2788        10AA GR  |   3 A$main$2789        10AD GR
  3 A$main$2790        10AF GR  |   3 A$main$2791        10B1 GR
  3 A$main$2797        10B4 GR  |   3 A$main$2798        10B7 GR
  3 A$main$2803        10BB GR  |   3 A$main$2804        10BE GR
  3 A$main$2810        10C1 GR  |   3 A$main$2816        10C4 GR
  3 A$main$2817        10C6 GR  |   3 A$main$2818        10C9 GR
  3 A$main$2819        10CB GR  |   3 A$main$2824        10CE GR
  3 A$main$2825        10D0 GR  |   3 A$main$2826        10D4 GR
  3 A$main$2827        10D6 GR  |   3 A$main$2828        10DA GR
  3 A$main$2829        10DC GR  |   3 A$main$2830        10E0 GR
  3 A$main$2831        10E2 GR  |   3 A$main$2832        10E6 GR
  3 A$main$2833        10E8 GR  |   3 A$main$2834        10EC GR
  3 A$main$2835        10EE GR  |   3 A$main$2836        10F2 GR
  3 A$main$2837        10F4 GR  |   3 A$main$2838        10F6 GR
  3 A$main$2839        10F8 GR  |   3 A$main$2840        10FA GR
  3 A$main$2845        10FE GR  |   3 A$main$2851        1101 GR
  3 A$main$2856        1104 GR  |   3 A$main$2857        1107 GR
  3 A$main$2862        110A GR  |   3 A$main$2868        110D GR
  3 A$main$2873        1110 GR  |   3 A$main$2874        1113 GR
  3 A$main$2879        1116 GR  |   3 A$main$2880        1118 GR
  3 A$main$2881        111B GR  |   3 A$main$2882        111C GR
  3 A$main$2887        111F GR  |   3 A$main$2888        1122 GR
  3 A$main$2898        1126 GR  |   3 A$main$2899        1129 GR
  3 A$main$2904        112C GR  |   3 A$main$2905        112E GR
  3 A$main$2910        1131 GR  |   3 A$main$2916        1134 GR
  3 A$main$2917        1136 GR  |   3 A$main$2922        1139 GR
  3 A$main$2923        113B GR  |   3 A$main$2928        113F GR
  3 A$main$2929        1141 GR  |   3 A$main$2930        1144 GR
  3 A$main$2936        1147 GR  |   3 A$main$2937        1149 GR
  3 A$main$2938        114C GR  |   3 A$main$2939        114E GR
  3 A$main$2944        1152 GR  |   3 A$main$2945        1155 GR
  3 A$main$2950        1158 GR  |   3 A$main$2951        115A GR
  3 A$main$2956        115D GR  |   3 A$main$2957        115F GR
  3 A$main$2963        1162 GR  |   3 A$main$2964        1164 GR
  3 A$main$2969        1167 GR  |   3 A$main$2974        116A GR
  3 A$main$2980        116D GR  |   3 A$main$2981        116F GR
  3 A$main$2982        1172 GR  |   3 A$main$2987        1175 GR
  3 A$main$2988        1176 GR  |   3 A$main$2989        1178 GR
  3 A$main$2990        117C GR  |   3 A$main$2991        117E GR
  3 A$main$2992        1181 GR  |   3 A$main$2993        1184 GR
  3 A$main$2994        1186 GR  |   3 A$main$2995        1189 GR
  3 A$main$3002        118D GR  |   3 A$main$3003        1190 GR
  3 A$main$3004        1192 GR  |   3 A$main$3005        1194 GR
  3 A$main$3006        1197 GR  |   3 A$main$3011        1199 GR
  3 A$main$3012        119C GR  |   3 A$main$3013        119D GR
  3 A$main$3014        119F GR  |   3 A$main$3015        11A1 GR
  3 A$main$3016        11A5 GR  |   3 A$main$3017        11A6 GR
  3 A$main$3022        11AA GR  |   3 A$main$3023        11AD GR
  3 A$main$3024        11AE GR  |   3 A$main$3025        11B0 GR
  3 A$main$3026        11B1 GR  |   3 A$main$3027        11B2 GR
  3 A$main$3028        11B4 GR  |   3 A$main$3029        11B8 GR
  3 A$main$3030        11BA GR  |   3 A$main$3031        11BD GR
  3 A$main$3036        11C0 GR  |   3 A$main$3037        11C3 GR
  3 A$main$3042        11C6 GR  |   3 A$main$3043        11C9 GR
  3 A$main$3044        11CA GR  |   3 A$main$3045        11CC GR
  3 A$main$3046        11CD GR  |   3 A$main$3047        11CE GR
  3 A$main$3048        11D0 GR  |   3 A$main$3049        11D4 GR
  3 A$main$3050        11D6 GR  |   3 A$main$3051        11D8 GR
  3 A$main$3052        11DC GR  |   3 A$main$3053        11DF GR
  3 A$main$3058        11E2 GR  |   3 A$main$3059        11E5 GR
  3 A$main$3064        11E8 GR  |   3 A$main$3069        11EB GR
  3 A$main$3070        11ED GR  |   3 A$main$3075        11F0 GR
  3 A$main$3076        11F3 GR  |   3 A$main$3077        11F5 GR
  3 A$main$3078        11F7 GR  |   3 A$main$3084        11FA GR
  3 A$main$3085        11FC GR  |   3 A$main$3086        11FF GR
  3 A$main$3087        1201 GR  |   3 A$main$3092        1205 GR
  3 A$main$3093        1207 GR  |   3 A$main$3098        120A GR
  3 A$main$3099        120C GR  |   3 A$main$3100        120F GR
  3 A$main$3106        1212 GR  |   3 A$main$3107        1214 GR
  3 A$main$3112        1217 GR  |   3 A$main$3114        121A GR
  3 A$main$3115        121C GR  |   3 A$main$3120        1220 GR
  3 A$main$3121        1222 GR  |   3 A$main$3122        1225 GR
  3 A$main$3130        1228 GR  |   3 A$main$3131        122B GR
  3 A$main$3132        122C GR  |   3 A$main$3133        122E GR
  3 A$main$3134        122F GR  |   3 A$main$3135        1230 GR
  3 A$main$3136        1232 GR  |   3 A$main$3137        1236 GR
  3 A$main$3138        1238 GR  |   3 A$main$3139        123B GR
  3 A$main$3144        123E GR  |   3 A$main$3145        1241 GR
  3 A$main$3150        1244 GR  |   3 A$main$3151        1247 GR
  3 A$main$3156        124A GR  |   3 A$main$3157        124C GR
  3 A$main$3162        124F GR  |   3 A$main$3163        1252 GR
  3 A$main$3168        1255 GR  |   3 A$main$3169        1257 GR
  3 A$main$3170        1259 GR  |   3 A$main$3171        125B GR
  3 A$main$3177        125E GR  |   3 A$main$3178        1261 GR
  3 A$main$3179        1262 GR  |   3 A$main$3180        1264 GR
  3 A$main$3181        1265 GR  |   3 A$main$3182        1266 GR
  3 A$main$3183        1268 GR  |   3 A$main$3184        126C GR
  3 A$main$3185        126E GR  |   3 A$main$3186        1271 GR
  3 A$main$3191        1274 GR  |   3 A$main$3192        1277 GR
  3 A$main$3197        127A GR  |   3 A$main$3198        127C GR
  3 A$main$3203        127F GR  |   3 A$main$3204        1281 GR
  3 A$main$3211        1284 GR  |   3 A$main$3212        1286 GR
  3 A$main$3213        1289 GR  |   3 A$main$3218        128D GR
  3 A$main$3219        128F GR  |   3 A$main$3220        1292 GR
  3 A$main$3225        1296 GR  |   3 A$main$3226        1299 GR
  3 A$main$3231        129D GR  |   3 A$main$3232        129F GR
  3 A$main$3233        12A2 GR  |   3 A$main$3238        12A6 GR
  3 A$main$3239        12A8 GR  |   3 A$main$3240        12AB GR
  3 A$main$3245        12AF GR  |   3 A$main$3246        12B1 GR
  3 A$main$3247        12B4 GR  |   3 A$main$3252        12B8 GR
  3 A$main$3253        12BA GR  |   3 A$main$3254        12BD GR
  3 A$main$3259        12C1 GR  |   3 A$main$3260        12C3 GR
  3 A$main$3261        12C6 GR  |   3 A$main$3266        12CA GR
  3 A$main$3267        12CC GR  |   3 A$main$3268        12CF GR
  3 A$main$3273        12D3 GR  |   3 A$main$3274        12D6 GR
  3 A$main$3280        12DA GR  |   3 A$main$3281        12DD GR
  3 A$main$3282        12DF GR  |   3 A$main$3287        12E3 GR
  3 A$main$3288        12E5 GR  |   3 A$main$3298        12E8 GR
  3 A$main$3299        12EA GR  |   3 A$main$3300        12ED GR
  3 A$main$3305        12F0 GR  |   3 A$main$3306        12F1 GR
  3 A$main$3307        12F3 GR  |   3 A$main$3308        12F7 GR
  3 A$main$3309        12F9 GR  |   3 A$main$3310        12FB GR
  3 A$main$3316        12FE GR  |   3 A$main$3317        1301 GR
  3 A$main$3318        1303 GR  |   3 A$main$3323        1305 GR
  3 A$main$3324        1307 GR  |   3 A$main$3329        130B GR
  3 A$main$3330        130C GR  |   3 A$main$3331        130D GR
  3 A$main$3332        130E GR  |   3 A$main$3333        1310 GR
  3 A$main$3334        1314 GR  |   3 A$main$3335        1316 GR
  3 A$main$3336        1319 GR  |   3 A$main$3341        131C GR
  3 A$main$3342        131F GR  |   3 A$main$3347        1322 GR
  3 A$main$3348        1325 GR  |   3 A$main$3349        1326 GR
  3 A$main$3350        1328 GR  |   3 A$main$3351        132C GR
  3 A$main$3357        132E GR  |   3 A$main$3362        1331 GR
  3 A$main$3363        1333 GR  |   3 A$main$3368        1336 GR
  3 A$main$3369        1338 GR  |   3 A$main$3370        133A GR
  3 A$main$3376        133D GR  |   3 A$main$3377        1340 GR
  3 A$main$3382        1343 GR  |   3 A$main$3388        1346 GR
  3 A$main$3389        1348 GR  |   3 A$main$3390        134A GR
  3 A$main$3392        134D GR  |   3 A$main$3393        134F GR
  3 A$main$3394        1352 GR  |   3 A$main$3395        1354 GR
  3 A$main$3396        1358 GR  |   3 A$main$3402        135B GR
  3 A$main$3403        135E GR  |   3 A$main$3408        1361 GR
  3 A$main$3409        1363 GR  |   3 A$main$3414        1366 GR
  3 A$main$3415        1369 GR  |   3 A$main$3421        136C GR
  3 A$main$3422        136E GR  |   3 A$main$3423        1371 GR
  3 A$main$3424        1372 GR  |   3 A$main$3429        1375 GR
  3 A$main$3430        1378 GR  |   3 A$main$3431        1379 GR
  3 A$main$3432        137C GR  |   3 A$main$3433        137F GR
  3 A$main$3434        1382 GR  |   3 A$main$3435        1384 GR
  3 A$main$3436        1387 GR  |   3 A$main$3437        1388 GR
  3 A$main$3438        138B GR  |   3 A$main$3439        138C GR
  3 A$main$3440        138E GR  |   3 A$main$3441        1390 GR
  3 A$main$3446        1393 GR  |   3 A$main$3447        1396 GR
  3 A$main$3448        1398 GR  |   3 A$main$3449        139A GR
  3 A$main$3455        139D GR  |   3 A$main$3456        13A0 GR
  3 A$main$3457        13A3 GR  |   3 A$main$3462        13A6 GR
  3 A$main$3463        13A9 GR  |   3 A$main$3468        13AC GR
  3 A$main$3469        13AF GR  |   3 A$main$3470        13B0 GR
  3 A$main$3471        13B2 GR  |   3 A$main$3472        13B5 GR
  3 A$main$3473        13B7 GR  |   3 A$main$3474        13B9 GR
  3 A$main$3475        13BB GR  |   3 A$main$3480        13BE GR
  3 A$main$3481        13C2 GR  |   3 A$main$3491        13C6 GR
  3 A$main$3492        13C9 GR  |   3 A$main$3502        13CC GR
  3 A$main$3503        13CE GR  |   3 A$main$3508        13D1 GR
  3 A$main$3513        13D4 GR  |   3 A$main$3514        13D7 GR
  3 A$main$3515        13D9 GR  |   3 A$main$3516        13DA GR
  3 A$main$3517        13DC GR  |   3 A$main$3518        13DF GR
  3 A$main$3519        13E0 GR  |   3 A$main$3520        13E2 GR
  3 A$main$3521        13E4 GR  |   3 A$main$3522        13E6 GR
  3 A$main$3523        13E7 GR  |   3 A$main$3524        13E9 GR
  3 A$main$3525        13EA GR  |   3 A$main$3526        13EC GR
  3 A$main$3531        13EF GR  |   3 A$main$3532        13F1 GR
  3 A$main$3533        13F4 GR  |   3 A$main$3534        13F6 GR
  3 A$main$3535        13F9 GR  |   3 A$main$3536        13FB GR
  3 A$main$3537        13FE GR  |   3 A$main$3538        1401 GR
  3 A$main$3539        1403 GR  |   3 A$main$3540        1405 GR
  3 A$main$3545        1408 GR  |   3 A$main$3546        140A GR
  3 A$main$3547        140D GR  |   3 A$main$3552        1410 GR
  3 A$main$3553        1413 GR  |   3 A$main$3558        1416 GR
  3 A$main$3563        1419 GR  |   3 A$main$3564        141B GR
  3 A$main$3569        141E GR  |   3 A$main$3570        1420 GR
  3 A$main$3571        1423 GR  |   3 A$main$3572        1425 GR
  3 A$main$3577        1428 GR  |   3 A$main$3578        142A GR
  3 A$main$3579        142C GR  |   3 A$main$3580        142E GR
  3 A$main$3581        1430 GR  |   3 A$main$3582        1432 GR
  3 A$main$3587        1436 GR  |   3 A$main$3588        1438 GR
  3 A$main$3589        143A GR  |   3 A$main$3595        143D GR
  3 A$main$3596        143F GR  |   3 A$main$3597        1442 GR
  3 A$main$3598        1444 GR  |   3 A$main$3599        1447 GR
  3 A$main$3600        1448 GR  |   3 A$main$3601        1449 GR
  3 A$main$3602        144B GR  |   3 A$main$3607        144F GR
  3 A$main$3608        1451 GR  |   3 A$main$3609        1454 GR
  3 A$main$3620        1457 GR  |   3 A$main$3621        1459 GR
  3 A$main$3622        145C GR  |   3 A$main$3627        145F GR
  3 A$main$3628        1461 GR  |   3 A$main$3629        1465 GR
  3 A$main$3630        1469 GR  |   3 A$main$3631        146B GR
  3 A$main$3632        146F GR  |   3 A$main$3633        1472 GR
  3 A$main$3634        1474 GR  |   3 A$main$3636        1478 GR
  3 A$main$3642        147B GR  |   3 A$main$3643        147D GR
  3 A$main$3644        1480 GR  |   3 A$main$3645        1482 GR
  3 A$main$3646        1485 GR  |   3 A$main$3647        1487 GR
  3 A$main$3652        148B GR  |   3 A$main$3653        148D GR
  3 A$main$3658        1490 GR  |   3 A$main$3659        1493 GR
  3 A$main$3664        1496 GR  |   3 A$main$3674        1499 GR
  3 A$main$3675        149C GR  |   3 A$main$3676        149E GR
  3 A$main$3677        14A1 GR  |   3 A$main$3678        14A4 GR
  3 A$main$3683        14A7 GR  |   3 A$main$3684        14A9 GR
  3 A$main$3685        14AB GR  |   3 A$main$3686        14AD GR
  3 A$main$3688        14B0 GR  |   3 A$main$3689        14B2 GR
  3 A$main$3690        14B5 GR  |   3 A$main$3691        14B8 GR
  3 A$main$3696        14BC GR  |   3 A$main$3697        14BE GR
  3 A$main$3698        14C1 GR  |   3 A$main$3700        14C4 GR
  3 A$main$3701        14C6 GR  |   3 A$main$3702        14C9 GR
  3 A$main$3703        14CC GR  |   3 A$main$3708        14D0 GR
  3 A$main$3709        14D2 GR  |   3 A$main$3710        14D5 GR
  3 A$main$3716        14D8 GR  |   3 A$main$3717        14DA GR
  3 A$main$3718        14DD GR  |   3 A$main$3724        14E0 GR
  3 A$main$3725        14E1 GR  |   3 A$main$3726        14E2 GR
  3 A$main$3727        14E3 GR  |   3 A$main$3728        14E5 GR
  3 A$main$3729        14E9 GR  |   3 A$main$3730        14EB GR
  3 A$main$3731        14EE GR  |   3 A$main$3736        14F1 GR
  3 A$main$3737        14F4 GR  |   3 A$main$3742        14F7 GR
  3 A$main$3743        14FA GR  |   3 A$main$3744        14FB GR
  3 A$main$3745        14FD GR  |   3 A$main$3746        1501 GR
  3 A$main$3747        1503 GR  |   3 A$main$3749        1506 GR
  3 A$main$3750        1507 GR  |   3 A$main$3755        150B GR
  3 A$main$3756        150E GR  |   3 A$main$3757        1511 GR
  3 A$main$3758        1513 GR  |   3 A$main$3759        1515 GR
  3 A$main$3764        1519 GR  |   3 A$main$3765        151B GR
  3 A$main$3770        151E GR  |   3 A$main$3771        1521 GR
  3 A$main$3776        1524 GR  |   3 A$main$3781        1527 GR
  3 A$main$3787        152A GR  |   3 A$main$3788        152D GR
  3 A$main$3793        1530 GR  |   3 A$main$3794        1532 GR
  3 A$main$3799        1535 GR  |   3 A$main$3800        1537 GR
  3 A$main$3805        153A GR  |   3 A$main$3810        153D GR
  3 A$main$3815        1540 GR  |   3 A$main$3816        1542 GR
  3 A$main$3817        1545 GR  |   3 A$main$3818        1548 GR
  3 A$main$3820        1549 GR  |   3 A$main$3821        154A GR
  3 A$main$3822        154B GR  |   3 A$main$3827        154E GR
  3 A$main$3828        1550 GR  |   3 A$main$3829        1553 GR
  3 A$main$3830        1556 GR  |   3 A$main$3836        155A GR
  3 A$main$3837        155D GR  |   3 A$main$3838        155F GR
  3 A$main$3839        1562 GR  |   3 A$main$3844        1565 GR
  3 A$main$3845        1568 GR  |   3 A$main$3850        156B GR
  3 A$main$3851        156D GR  |   3 A$main$3857        1570 GR
  3 A$main$3862        1573 GR  |   3 A$main$3863        1576 GR
  3 A$main$3868        1579 GR  |   3 A$main$3869        157C GR
  3 A$main$3874        157F GR  |   3 A$main$3875        1581 GR
  3 A$main$3876        1584 GR  |   3 A$main$3877        1586 GR
  3 A$main$3882        158A GR  |   3 A$main$3883        158C GR
  3 A$main$3884        158E GR  |   3 A$main$3895        1591 GR
  3 A$main$3896        1593 GR  |   3 A$main$3897        1595 GR
  3 A$main$3898        1597 GR  |   3 A$main$3903        159B GR
  3 A$main$3904        159D GR  |   3 A$main$3909        15A0 GR
  3 A$main$3910        15A3 GR  |   3 A$main$3915        15A6 GR
  3 A$main$3920        15A9 GR  |   3 A$main$3922        15AC GR
  3 A$main$3928        15AE GR  |   3 A$main$3933        15B1 GR
  3 A$main$3939        15B4 GR  |   3 A$main$3940        15B6 GR
  3 A$main$3941        15B8 GR  |   3 A$main$3943        15BB GR
  3 A$main$3949        15BE GR  |   3 A$main$3950        15C0 GR
  3 A$main$3951        15C2 GR  |   3 A$main$3952        15C4 GR
  3 A$main$3957        15C8 GR  |   3 A$main$3958        15CA GR
  3 A$main$3963        15CD GR  |   3 A$main$3964        15D0 GR
  3 A$main$3969        15D3 GR  |   3 A$main$3974        15D6 GR
  3 A$main$3976        15D9 GR  |   3 A$main$3982        15DC GR
  3 A$main$3983        15DF GR  |   3 A$main$3984        15E1 GR
  3 A$main$3985        15E3 GR  |   3 A$main$3990        15E7 GR
  3 A$main$3991        15E9 GR  |   3 A$main$3996        15EC GR
  3 A$main$3997        15EF GR  |   3 A$main$4002        15F2 GR
  3 A$main$4007        15F5 GR  |   3 A$main$4013        15F8 GR
  3 A$main$4014        15FB GR  |   3 A$main$4015        15FD GR
  3 A$main$4016        15FF GR  |   3 A$main$4021        1603 GR
  3 A$main$4022        1605 GR  |   3 A$main$4027        1608 GR
  3 A$main$4028        160B GR  |   3 A$main$4033        160E GR
  3 A$main$4038        1611 GR  |   3 A$main$4044        1614 GR
  3 A$main$4045        1617 GR  |   3 A$main$4050        161A GR
  3 A$main$4051        161D GR  |   3 A$main$4056        1620 GR
  3 A$main$4057        1622 GR  |   3 A$main$4062        1625 GR
  3 A$main$4063        1627 GR  |   3 A$main$4064        1629 GR
  3 A$main$4070        162C GR  |   3 A$main$4071        162F GR
  3 A$main$4072        1630 GR  |   3 A$main$4073        1631 GR
  3 A$main$4074        1634 GR  |   3 A$main$4079        1637 GR
  3 A$main$4080        163A GR  |   3 A$main$4081        163D GR
  3 A$main$4087        1640 GR  |   3 A$main$4093        1643 GR
  3 A$main$4099        1646 GR  |   3 A$main$4100        1648 GR
  3 A$main$4101        164B GR  |   3 A$main$4102        164D GR
  3 A$main$4107        164F GR  |   3 A$main$4108        1651 GR
  3 A$main$4113        1654 GR  |   3 A$main$4114        1657 GR
  3 A$main$4119        165A GR  |   3 A$main$4124        165D GR
  3 A$main$4126        1660 GR  |   3 A$main$4127        1661 GR
  3 A$main$4129        1664 GR  |   3 A$main$4130        1666 GR
  3 A$main$4136        1669 GR  |   3 A$main$4142        166C GR
  3 A$main$4143        166E GR  |   3 A$main$4144        1670 GR
  3 A$main$4153        1676 GR  |   3 A$main$4154        1679 GR
  3 A$main$4155        167B GR  |   3 A$main$4156        167E GR
  3 A$main$4162        1682 GR  |   3 A$main$4163        1685 GR
  3 A$main$4164        1687 GR  |   3 A$main$4165        168A GR
  3 A$main$4170        168C GR  |   3 A$main$4175        168F GR
  3 A$main$4176        1690 GR  |   3 A$main$4181        1694 GR
  3 A$main$4182        1697 GR  |   3 A$main$4183        1699 GR
  3 A$main$4184        169B GR  |   3 A$main$4185        169D GR
  3 A$main$4186        16A0 GR  |   3 A$main$4192        16A4 GR
  3 A$main$4193        16A7 GR  |   3 A$main$4194        16A9 GR
  3 A$main$4195        16AC GR  |   3 A$main$4196        16AF GR
  3 A$main$4202        16B2 GR  |   3 A$main$4207        16B5 GR
  3 A$main$4213        16B8 GR  |   3 A$main$4214        16BB GR
  3 A$main$4220        16BC GR  |   3 A$main$4221        16BF GR
  3 A$main$4226        16C2 GR  |   3 A$main$4227        16C5 GR
  3 A$main$4232        16C8 GR  |   3 A$main$4233        16C9 GR
  3 A$main$4235        16CA GR  |   3 A$main$4236        16CB GR
  3 A$main$4237        16CD GR  |   3 A$main$4238        16D0 GR
  3 A$main$4243        16D4 GR  |   3 A$main$4244        16D7 GR
  3 A$main$4245        16D9 GR  |   3 A$main$4246        16DB GR
  3 A$main$4247        16DD GR  |   3 A$main$4248        16E0 GR
  3 A$main$4254        16E4 GR  |   3 A$main$4255        16E7 GR
  3 A$main$4256        16E9 GR  |   3 A$main$4257        16EC GR
  3 A$main$4258        16EF GR  |   3 A$main$4259        16F2 GR
  3 A$main$4265        16F5 GR  |   3 A$main$4266        16F8 GR
  3 A$main$4267        16FB GR  |   3 A$main$4273        16FE GR
  3 A$main$4274        1701 GR  |   3 A$main$4275        1703 GR
  3 A$main$4276        1705 GR  |   3 A$main$4277        1707 GR
  3 A$main$4278        170A GR  |   3 A$main$4284        170E GR
  3 A$main$4285        1711 GR  |   3 A$main$4286        1713 GR
  3 A$main$4287        1716 GR  |   3 A$main$4288        1719 GR
  3 A$main$4289        171C GR  |   3 A$main$4291        171F GR
  3 A$main$4292        1720 GR  |   3 A$main$4297        1724 GR
  3 A$main$4298        1727 GR  |   3 A$main$4299        1729 GR
  3 A$main$4300        172B GR  |   3 A$main$4301        172D GR
  3 A$main$4302        1730 GR  |   3 A$main$4308        1732 GR
  3 A$main$4309        1735 GR  |   3 A$main$4310        1737 GR
  3 A$main$4311        173A GR  |   3 A$main$4312        173D GR
  3 A$main$4313        1740 GR  |   3 A$main$4319        1743 GR
  3 A$main$4320        1746 GR  |   3 A$main$4321        1749 GR
  3 A$main$4327        174C GR  |   3 A$main$4328        174F GR
  3 A$main$4329        1752 GR  |   3 A$main$4335        1755 GR
  3 A$main$4336        1758 GR  |   3 A$main$4337        175B GR
  3 A$main$4378        18B7 GR  |   3 A$main$4379        18B9 GR
  3 A$main$4380        18BC GR  |   3 A$main$4391        18BE GR
  3 A$main$4396        18C1 GR  |   3 A$main$4397        18C2 GR
  3 A$main$4403        18C6 GR  |   3 A$main$4404        18C8 GR
  3 A$main$4405        18CA GR  |   3 A$main$4407        18CC GR
  3 A$main$4408        18CF GR  |   3 A$main$4416        18D1 GR
  3 A$main$4417        18D3 GR  |   3 A$main$4418        18D6 GR
  3 A$main$4419        18D9 GR  |   3 A$main$4420        18DB GR
  3 A$main$4428        18DF GR  |   3 A$main$4429        18E1 GR
  3 A$main$4430        18E4 GR  |   3 A$main$4431        18E6 GR
  3 A$main$4436        18EA GR  |   3 A$main$4437        18EC GR
  3 A$main$4438        18EF GR  |   3 A$main$4439        18F1 GR
  3 A$main$4440        18F5 GR  |   3 A$main$4451        18F8 GR
  3 A$main$4456        18FB GR  |   3 A$main$4457        18FD GR
  3 A$main$4458        1900 GR  |   3 A$main$4463        1903 GR
  3 A$main$4464        1906 GR  |   3 A$main$4465        1907 GR
  3 A$main$4466        1908 GR  |   3 A$main$4467        1909 GR
  3 A$main$4468        190C GR  |   3 A$main$4469        190F GR
  3 A$main$4470        1912 GR  |   3 A$main$4471        1913 GR
  3 A$main$4472        1914 GR  |   3 A$main$4473        1915 GR
  3 A$main$4474        1918 GR  |   3 A$main$4475        191B GR
  3 A$main$4476        191C GR  |   3 A$main$4481        191F GR
  3 A$main$4482        1922 GR  |   3 A$main$4483        1923 GR
  3 A$main$4484        1925 GR  |   3 A$main$4485        1926 GR
  3 A$main$4486        1927 GR  |   3 A$main$4487        1929 GR
  3 A$main$4488        192D GR  |   3 A$main$4489        192F GR
  3 A$main$4490        1932 GR  |   3 A$main$4491        1935 GR
  3 A$main$4496        1938 GR  |   3 A$main$4497        193B GR
  3 A$main$4502        193E GR  |   3 A$main$4503        1941 GR
  3 A$main$4514        1944 GR  |   3 A$main$4515        1946 GR
  3 A$main$4520        1949 GR  |   3 A$main$4521        194C GR
  3 A$main$4522        194F GR  |   3 A$main$4523        1951 GR
  3 A$main$4529        1954 GR  |   3 A$main$4530        1957 GR
  3 A$main$4531        195A GR  |   3 A$main$4532        195C GR
  3 A$main$4533        195E GR  |   3 A$main$4534        1960 GR
  3 A$main$4535        1963 GR  |   3 A$main$4536        1965 GR
  3 A$main$4542        1968 GR  |   3 A$main$4543        196A GR
  3 A$main$4544        196D GR  |   3 A$main$4545        196F GR
  3 A$main$4546        1971 GR  |   3 A$main$4547        1974 GR
  3 A$main$4548        1976 GR  |   3 A$main$4554        1979 GR
  3 A$main$4555        197B GR  |   3 A$main$4556        197E GR
  3 A$main$4557        1980 GR  |   3 A$main$4558        1982 GR
  3 A$main$4559        1985 GR  |   3 A$main$4560        1987 GR
  3 A$main$4566        198A GR  |   3 A$main$4567        198C GR
  3 A$main$4568        198F GR  |   3 A$main$4569        1991 GR
  3 A$main$4570        1993 GR  |   3 A$main$4571        1996 GR
  3 A$main$4577        1999 GR  |   3 A$main$4578        199C GR
  3 A$main$4579        199F GR  |   3 A$main$4580        19A1 GR
  3 A$main$4581        19A3 GR  |   3 A$main$4582        19A6 GR
  3 A$main$4583        19A8 GR  |   3 A$main$4589        19AB GR
  3 A$main$4590        19AE GR  |   3 A$main$4591        19B0 GR
  3 A$main$4592        19B2 GR  |   3 A$main$4593        19B4 GR
  3 A$main$4594        19B7 GR  |   3 A$main$4595        19B9 GR
  3 A$main$4601        19BC GR  |   3 A$main$4602        19BF GR
  3 A$main$4603        19C1 GR  |   3 A$main$4604        19C4 GR
  3 A$main$4605        19C6 GR  |   3 A$main$4606        19C8 GR
  3 A$main$4607        19CA GR  |   3 A$main$4608        19CD GR
  3 A$main$4619        19CF GR  |   3 A$main$4624        19D2 GR
  3 A$main$4625        19D5 GR  |   3 A$main$4630        19D8 GR
  3 A$main$4631        19D9 GR  |   3 A$main$4637        19DD GR
  3 A$main$4638        19E0 GR  |   3 A$main$4643        19E4 GR
  3 A$main$4644        19E7 GR  |   3 A$main$4645        19E9 GR
  3 A$main$4650        19ED GR  |   3 A$main$4651        19F0 GR
  3 A$main$4652        19F2 GR  |   3 A$main$4653        19F5 GR
  3 A$main$4659        19F9 GR  |   3 A$main$4660        19FC GR
  3 A$main$4665        19FF GR  |   3 A$main$4666        1A02 GR
  3 A$main$4667        1A03 GR  |   3 A$main$4668        1A05 GR
  3 A$main$4669        1A09 GR  |   3 A$main$4674        1A0B GR
  3 A$main$4675        1A0E GR  |   3 A$main$4676        1A10 GR
  3 A$main$4677        1A12 GR  |   3 A$main$4678        1A15 GR
  3 A$main$4684        1A17 GR  |   3 A$main$4685        1A19 GR
  3 A$main$4690        1A1C GR  |   3 A$main$4691        1A1F GR
  3 A$main$4692        1A21 GR  |   3 A$main$4693        1A25 GR
  3 A$main$4694        1A27 GR  |   3 A$main$4695        1A2A GR
  3 A$main$4696        1A2C GR  |   3 A$main$4701        1A30 GR
  3 A$main$4707        1A33 GR  |   3 A$main$4708        1A35 GR
  3 A$main$4709        1A38 GR  |   3 A$main$4710        1A3A GR
  3 A$main$4711        1A3E GR  |   3 A$main$4712        1A40 GR
  3 A$main$4713        1A42 GR  |   3 A$main$4719        1A45 GR
  3 A$main$4720        1A47 GR  |   3 A$main$4721        1A4A GR
  3 A$main$4726        1A4D GR  |   3 A$main$4731        1A50 GR
  3 A$main$4732        1A51 GR  |   3 A$main$4733        1A53 GR
  3 A$main$4734        1A54 GR  |   3 A$main$4735        1A55 GR
  3 A$main$4736        1A57 GR  |   3 A$main$4737        1A5B GR
  3 A$main$4738        1A5D GR  |   3 A$main$4739        1A60 GR
  3 A$main$4744        1A63 GR  |   3 A$main$4745        1A66 GR
  3 A$main$4750        1A69 GR  |   3 A$main$4751        1A6B GR
  3 A$main$4752        1A6E GR  |   3 A$main$4753        1A70 GR
  3 A$main$4754        1A73 GR  |   3 A$main$4766        1A77 GR
  3 A$main$4767        1A79 GR  |   3 A$main$4772        1A7C GR
  3 A$main$4773        1A7F GR  |   3 A$main$4774        1A82 GR
  3 A$main$4780        1A85 GR  |   3 A$main$4781        1A88 GR
  3 A$main$4782        1A8B GR  |   3 A$main$4783        1A8D GR
  3 A$main$4784        1A8F GR  |   3 A$main$4785        1A91 GR
  3 A$main$4786        1A94 GR  |   3 A$main$4787        1A96 GR
  3 A$main$4793        1A99 GR  |   3 A$main$4794        1A9B GR
  3 A$main$4795        1A9E GR  |   3 A$main$4796        1AA0 GR
  3 A$main$4797        1AA2 GR  |   3 A$main$4798        1AA5 GR
  3 A$main$4799        1AA7 GR  |   3 A$main$4805        1AAA GR
  3 A$main$4806        1AAC GR  |   3 A$main$4807        1AAF GR
  3 A$main$4808        1AB1 GR  |   3 A$main$4809        1AB3 GR
  3 A$main$4810        1AB6 GR  |   3 A$main$4811        1AB8 GR
  3 A$main$4817        1ABB GR  |   3 A$main$4818        1ABD GR
  3 A$main$4819        1AC0 GR  |   3 A$main$4820        1AC2 GR
  3 A$main$4821        1AC4 GR  |   3 A$main$4822        1AC7 GR
  3 A$main$4828        1ACA GR  |   3 A$main$4829        1ACD GR
  3 A$main$4830        1AD0 GR  |   3 A$main$4831        1AD2 GR
  3 A$main$4832        1AD4 GR  |   3 A$main$4833        1AD7 GR
  3 A$main$4834        1AD9 GR  |   3 A$main$4840        1ADC GR
  3 A$main$4841        1ADF GR  |   3 A$main$4842        1AE1 GR
  3 A$main$4843        1AE3 GR  |   3 A$main$4844        1AE5 GR
  3 A$main$4845        1AE8 GR  |   3 A$main$4846        1AEA GR
  3 A$main$4852        1AED GR  |   3 A$main$4853        1AF0 GR
  3 A$main$4854        1AF2 GR  |   3 A$main$4855        1AF5 GR
  3 A$main$4856        1AF7 GR  |   3 A$main$4857        1AF9 GR
  3 A$main$4858        1AFB GR  |   3 A$main$4859        1AFE GR
  3 A$main$4870        1B00 GR  |   3 A$main$4875        1B03 GR
  3 A$main$4876        1B06 GR  |   3 A$main$4881        1B09 GR
  3 A$main$4882        1B0A GR  |   3 A$main$4888        1B0E GR
  3 A$main$4889        1B11 GR  |   3 A$main$4894        1B15 GR
  3 A$main$4895        1B18 GR  |   3 A$main$4896        1B1A GR
  3 A$main$4901        1B1E GR  |   3 A$main$4906        1B21 GR
  3 A$main$4907        1B24 GR  |   3 A$main$4912        1B27 GR
  3 A$main$4913        1B2A GR  |   3 A$main$4918        1B2E GR
  3 A$main$4919        1B31 GR  |   3 A$main$4920        1B32 GR
  3 A$main$4921        1B35 GR  |   3 A$main$4922        1B38 GR
  3 A$main$4923        1B39 GR  |   3 A$main$4928        1B3C GR
  3 A$main$4929        1B3F GR  |   3 A$main$4934        1B42 GR
  3 A$main$4935        1B45 GR  |   3 A$main$4936        1B48 GR
  3 A$main$4941        1B4B GR  |   3 A$main$4942        1B4E GR
  3 A$main$4947        1B51 GR  |   3 A$main$4948        1B54 GR
  3 A$main$4949        1B55 GR  |   3 A$main$4950        1B57 GR
  3 A$main$4951        1B5A GR  |   3 A$main$4952        1B5C GR
  3 A$main$4953        1B5E GR  |   3 A$main$4958        1B61 GR
  3 A$main$4959        1B65 GR  |   3 A$main$4964        1B67 GR
  3 A$main$4965        1B69 GR  |   3 A$main$4970        1B6C GR
  3 A$main$4971        1B6E GR  |   3 A$main$4973        1B71 GR
  3 A$main$4974        1B73 GR  |   3 A$main$4975        1B76 GR
  3 A$main$4981        1B79 GR  |   3 A$main$4982        1B7B GR
  3 A$main$4983        1B7E GR  |   3 A$main$4984        1B7F GR
  3 A$main$4985        1B81 GR  |   3 A$main$4986        1B84 GR
  3 A$main$4987        1B87 GR  |   3 A$main$4996        1B8B GR
  3 A$main$4997        1B8E GR  |   3 A$main$4998        1B8F GR
  3 A$main$4999        1B91 GR  |   3 A$main$5000        1B94 GR
  3 A$main$5001        1B95 GR  |   3 A$main$5002        1B97 GR
  3 A$main$5003        1B99 GR  |   3 A$main$5004        1B9C GR
  3 A$main$5005        1B9E GR  |   3 A$main$5006        1BA0 GR
  3 A$main$5007        1BA2 GR  |   3 A$main$5008        1BA4 GR
  3 A$main$5009        1BA7 GR  |   3 A$main$5010        1BAA GR
  3 A$main$5011        1BAD GR  |   3 A$main$5012        1BAF GR
  3 A$main$5013        1BB2 GR  |   3 A$main$5014        1BB5 GR
  3 A$main$5015        1BB7 GR  |   3 A$main$5016        1BBA GR
  3 A$main$5017        1BBC GR  |   3 A$main$5018        1BBF GR
  3 A$main$5019        1BC2 GR  |   3 A$main$5020        1BC4 GR
  3 A$main$5021        1BC7 GR  |   3 A$main$5022        1BC9 GR
  3 A$main$5023        1BCC GR  |   3 A$main$5024        1BCE GR
  3 A$main$5025        1BD0 GR  |   3 A$main$5026        1BD3 GR
  3 A$main$5027        1BD6 GR  |   3 A$main$5028        1BD8 GR
  3 A$main$5029        1BDA GR  |   3 A$main$5030        1BDC GR
  3 A$main$5031        1BDF GR  |   3 A$main$5032        1BE2 GR
  3 A$main$5033        1BE5 GR  |   3 A$main$5034        1BE8 GR
  3 A$main$5039        1BEB GR  |   3 A$main$5040        1BEE GR
  3 A$main$5041        1BF1 GR  |   3 A$main$5042        1BF4 GR
  3 A$main$5043        1BF7 GR  |   3 A$main$5044        1BFA GR
  3 A$main$5045        1BFD GR  |   3 A$main$5050        1C00 GR
  3 A$main$5051        1C02 GR  |   3 A$main$5052        1C05 GR
  3 A$main$5053        1C07 GR  |   3 A$main$5054        1C0A GR
  3 A$main$5059        1C0D GR  |   3 A$main$5060        1C10 GR
  3 A$main$5065        1C13 GR  |   3 A$main$5066        1C15 GR
  3 A$main$5067        1C18 GR  |   3 A$main$5068        1C1A GR
  3 A$main$5069        1C1C GR  |   3 A$main$5074        1C20 GR
  3 A$main$5075        1C22 GR  |   3 A$main$5080        1C25 GR
  3 A$main$5081        1C28 GR  |   3 A$main$5087        1C2B GR
  3 A$main$5088        1C2E GR  |   3 A$main$5093        1C31 GR
  3 A$main$5094        1C33 GR  |   3 A$main$5099        1C36 GR
  3 A$main$5100        1C39 GR  |   3 A$main$5101        1C3B GR
  3 A$main$5102        1C3D GR  |   3 A$main$5103        1C3F GR
  3 A$main$5104        1C42 GR  |   3 A$main$5105        1C44 GR
  3 A$main$5110        1C46 GR  |   3 A$main$5116        1C49 GR
  3 A$main$5121        1C4C GR  |   3 A$main$5122        1C4F GR
  3 A$main$5127        1C52 GR  |   3 A$main$5128        1C54 GR
  3 A$main$5133        1C57 GR  |   3 A$main$5134        1C59 GR
  3 A$main$5135        1C5C GR  |   3 A$main$5141        1C5E GR
  3 A$main$5142        1C60 GR  |   3 A$main$5148        1C63 GR
  3 A$main$5149        1C65 GR  |   3 A$main$5155        1C68 GR
  3 A$main$5156        1C6A GR  |   3 A$main$5161        1C6D GR
  3 A$main$5162        1C70 GR  |   3 A$main$5167        1C73 GR
  3 A$main$5168        1C76 GR  |   3 A$main$5173        1C79 GR
  3 A$main$5174        1C7C GR  |   3 A$main$5175        1C7E GR
  3 A$main$5176        1C81 GR  |   3 A$main$5177        1C83 GR
  3 A$main$5178        1C85 GR  |   3 A$main$5179        1C88 GR
  3 A$main$5180        1C89 GR  |   3 A$main$5181        1C8B GR
  3 A$main$5182        1C8E GR  |   3 A$main$5188        1C91 GR
  3 A$main$5189        1C93 GR  |   3 A$main$5190        1C96 GR
  3 A$main$5191        1C98 GR  |   3 A$main$5196        1C9A GR
  3 A$main$5201        1C9D GR  |   3 A$main$5202        1CA0 GR
  3 A$main$5207        1CA3 GR  |   3 A$main$5208        1CA5 GR
  3 A$main$5213        1CA8 GR  |   3 A$main$5214        1CAA GR
  3 A$main$5220        1CAD GR  |   3 A$main$5221        1CAF GR
  3 A$main$5226        1CB2 GR  |   3 A$main$5227        1CB4 GR
  3 A$main$5233        1CB7 GR  |   3 A$main$5238        1CBA GR
  3 A$main$5239        1CBD GR  |   3 A$main$5244        1CC0 GR
  3 A$main$5245        1CC3 GR  |   3 A$main$5250        1CC7 GR
  3 A$main$5251        1CC9 GR  |   3 A$main$5252        1CCC GR
  3 A$main$5253        1CCF GR  |   3 A$main$5254        1CD0 GR
  3 A$main$5255        1CD3 GR  |   3 A$main$5260        1CD6 GR
  3 A$main$5261        1CD9 GR  |   3 A$main$5266        1CDC GR
  3 A$main$5267        1CDF GR  |   3 A$main$5268        1CE1 GR
  3 A$main$5269        1CE4 GR  |   3 A$main$5274        1CE7 GR
  3 A$main$5275        1CEA GR  |   3 A$main$5280        1CED GR
  3 A$main$5281        1CF0 GR  |   3 A$main$5282        1CF3 GR
  3 A$main$5287        1CF6 GR  |   3 A$main$5288        1CF8 GR
  3 A$main$5289        1CFC GR  |   3 A$main$5295        1D00 GR
  3 A$main$5296        1D02 GR  |   3 A$main$5297        1D05 GR
  3 A$main$5298        1D06 GR  |   3 A$main$5303        1D0A GR
  3 A$main$5304        1D0C GR  |   3 A$main$5305        1D0F GR
  3 A$main$5306        1D10 GR  |   3 A$main$5307        1D12 GR
  3 A$main$5308        1D15 GR  |   3 A$main$5309        1D18 GR
  3 A$main$5318        1D1C GR  |   3 A$main$5319        1D1F GR
  3 A$main$5320        1D20 GR  |   3 A$main$5321        1D22 GR
  3 A$main$5322        1D24 GR  |   3 A$main$5323        1D27 GR
  3 A$main$5324        1D29 GR  |   3 A$main$5325        1D2C GR
  3 A$main$5326        1D2E GR  |   3 A$main$5327        1D31 GR
  3 A$main$5328        1D33 GR  |   3 A$main$5329        1D35 GR
  3 A$main$5330        1D38 GR  |   3 A$main$5331        1D3B GR
  3 A$main$5332        1D3E GR  |   3 A$main$5333        1D40 GR
  3 A$main$5334        1D43 GR  |   3 A$main$5335        1D46 GR
  3 A$main$5336        1D48 GR  |   3 A$main$5337        1D4B GR
  3 A$main$5338        1D4D GR  |   3 A$main$5339        1D50 GR
  3 A$main$5340        1D53 GR  |   3 A$main$5341        1D55 GR
  3 A$main$5342        1D58 GR  |   3 A$main$5343        1D5A GR
  3 A$main$5344        1D5D GR  |   3 A$main$5345        1D5F GR
  3 A$main$5346        1D61 GR  |   3 A$main$5347        1D64 GR
  3 A$main$5348        1D67 GR  |   3 A$main$5349        1D69 GR
  3 A$main$5350        1D6B GR  |   3 A$main$5351        1D6D GR
  3 A$main$5352        1D70 GR  |   3 A$main$5353        1D73 GR
  3 A$main$5354        1D76 GR  |   3 A$main$5355        1D79 GR
  3 A$main$5360        1D7C GR  |   3 A$main$5361        1D7F GR
  3 A$main$5362        1D82 GR  |   3 A$main$5363        1D85 GR
  3 A$main$5364        1D88 GR  |   3 A$main$5365        1D8B GR
  3 A$main$5366        1D8E GR  |   3 A$main$5371        1D91 GR
  3 A$main$5372        1D93 GR  |   3 A$main$5373        1D96 GR
  3 A$main$5374        1D98 GR  |   3 A$main$5375        1D9B GR
  3 A$main$5380        1D9E GR  |   3 A$main$5381        1DA1 GR
  3 A$main$5386        1DA4 GR  |   3 A$main$5387        1DA6 GR
  3 A$main$5392        1DA9 GR  |   3 A$main$5393        1DAB GR
  3 A$main$5394        1DAE GR  |   3 A$main$5395        1DB0 GR
  3 A$main$5396        1DB2 GR  |   3 A$main$5401        1DB6 GR
  3 A$main$5402        1DB8 GR  |   3 A$main$5403        1DBB GR
  3 A$main$5405        1DBE GR  |   3 A$main$5406        1DC0 GR
  3 A$main$5407        1DC3 GR  |   3 A$main$5408        1DC4 GR
  3 A$main$5409        1DC8 GR  |   3 A$main$5410        1DCB GR
  3 A$main$5411        1DCE GR  |   3 A$main$5417        1DD1 GR
  3 A$main$5418        1DD4 GR  |   3 A$main$5423        1DD7 GR
  3 A$main$5424        1DD9 GR  |   3 A$main$5429        1DDC GR
  3 A$main$5434        1DDF GR  |   3 A$main$5435        1DE2 GR
  3 A$main$5436        1DE3 GR  |   3 A$main$5437        1DE4 GR
  3 A$main$5438        1DE7 GR  |   3 A$main$5439        1DEA GR
  3 A$main$5440        1DEB GR  |   3 A$main$5445        1DEE GR
  3 A$main$5446        1DF1 GR  |   3 A$main$5451        1DF4 GR
  3 A$main$5452        1DF7 GR  |   3 A$main$5457        1DFA GR
  3 A$main$5458        1DFD GR  |   3 A$main$5459        1DFE GR
  3 A$main$5460        1E00 GR  |   3 A$main$5461        1E03 GR
  3 A$main$5462        1E05 GR  |   3 A$main$5463        1E07 GR
  3 A$main$5468        1E0A GR  |   3 A$main$5469        1E0E GR
  3 A$main$5474        1E10 GR  |   3 A$main$5475        1E12 GR
  3 A$main$5480        1E15 GR  |   3 A$main$5481        1E17 GR
  3 A$main$5487        1E1A GR  |   3 A$main$5488        1E1C GR
  3 A$main$5494        1E1F GR  |   3 A$main$5495        1E22 GR
  3 A$main$5500        1E25 GR  |   3 A$main$5501        1E27 GR
  3 A$main$5506        1E2A GR  |   3 A$main$5507        1E2C GR
  3 A$main$5513        1E2F GR  |   3 A$main$5514        1E31 GR
  3 A$main$5519        1E34 GR  |   3 A$main$5520        1E36 GR
  3 A$main$5526        1E39 GR  |   3 A$main$5527        1E3B GR
  3 A$main$5532        1E3E GR  |   3 A$main$5533        1E40 GR
  3 A$main$5677        2429 GR  |   3 A$main$5678        242B GR
  3 A$main$5683        242E GR  |   3 A$main$5688        2431 GR
  3 A$main$5689        2435 GR  |   3 A$main$5690        2438 GR
  3 A$main$5691        243A GR  |   3 A$main$5696        243C GR
  3 A$main$5697        2440 GR  |   3 A$main$5698        2442 GR
  3 A$main$5699        2444 GR  |   3 A$main$5710        2446 GR
  3 A$main$5712        2447 GR  |   3 A$main$5713        244A GR
  3 A$main$5715        244C GR  |   3 A$main$5716        244D GR
  3 A$main$5717        244F GR  |   3 A$main$5718        2450 GR
  3 A$main$5719        2451 GR  |   3 A$main$5720        2453 GR
  3 A$main$5742        246B GR  |   3 A$main$5743        246E GR
  3 A$main$5748        2471 GR  |   3 A$main$5749        2474 GR
  3 A$main$5750        2476 GR  |   3 A$main$5756        247A GR
  3 A$main$5757        247C GR  |   3 A$main$5762        247F GR
  3 A$main$5767        2482 GR  |   3 A$main$5768        2485 GR
  3 A$main$5769        2487 GR  |   3 A$main$5770        248B GR
  3 A$main$5771        248D GR  |   3 A$main$5772        248F GR
  3 A$main$5778        2493 GR  |   3 A$main$5779        2496 GR
  3 A$main$5790        2499 GR  |   3 A$main$5791        249B GR
  3 A$main$5796        249E GR  |   3 A$main$5797        24A1 GR
  3 A$main$5798        24A4 GR  |   3 A$main$5804        24A7 GR
  3 A$main$5805        24AA GR  |   3 A$main$5806        24AD GR
  3 A$main$5807        24AF GR  |   3 A$main$5808        24B1 GR
  3 A$main$5809        24B3 GR  |   3 A$main$5810        24B6 GR
  3 A$main$5811        24B8 GR  |   3 A$main$5817        24BB GR
  3 A$main$5818        24BD GR  |   3 A$main$5819        24C0 GR
  3 A$main$5820        24C2 GR  |   3 A$main$5821        24C4 GR
  3 A$main$5822        24C7 GR  |   3 A$main$5823        24C9 GR
  3 A$main$5829        24CC GR  |   3 A$main$5830        24CE GR
  3 A$main$5831        24D1 GR  |   3 A$main$5832        24D3 GR
  3 A$main$5833        24D5 GR  |   3 A$main$5834        24D8 GR
  3 A$main$5835        24DA GR  |   3 A$main$5841        24DD GR
  3 A$main$5842        24DF GR  |   3 A$main$5843        24E2 GR
  3 A$main$5844        24E4 GR  |   3 A$main$5845        24E6 GR
  3 A$main$5846        24E9 GR  |   3 A$main$5852        24EC GR
  3 A$main$5853        24EF GR  |   3 A$main$5854        24F2 GR
  3 A$main$5855        24F4 GR  |   3 A$main$5856        24F6 GR
  3 A$main$5857        24F9 GR  |   3 A$main$5858        24FB GR
  3 A$main$5864        24FE GR  |   3 A$main$5865        2501 GR
  3 A$main$5866        2503 GR  |   3 A$main$5867        2505 GR
  3 A$main$5868        2507 GR  |   3 A$main$5869        250A GR
  3 A$main$5870        250C GR  |   3 A$main$5876        250F GR
  3 A$main$5877        2512 GR  |   3 A$main$5878        2514 GR
  3 A$main$5879        2517 GR  |   3 A$main$5880        2519 GR
  3 A$main$5881        251B GR  |   3 A$main$5882        251D GR
  3 A$main$5883        2520 GR  |   3 A$main$5894        2522 GR
  3 A$main$5899        2525 GR  |   3 A$main$5900        2528 GR
  3 A$main$5905        252B GR  |   3 A$main$5906        252C GR
  3 A$main$5912        2530 GR  |   3 A$main$5913        2533 GR
  3 A$main$5918        2535 GR  |   3 A$main$5920        2538 GR
  3 A$main$5925        253B GR  |   3 A$main$5926        253D GR
  3 A$main$5927        2541 GR  |   3 A$main$5928        2543 GR
  3 A$main$5934        2547 GR  |   3 A$main$5935        254A GR
  3 A$main$5940        254D GR  |   3 A$main$5941        254F GR
  3 A$main$5942        2552 GR  |   3 A$main$5944        2554 GR
  3 A$main$5945        2556 GR  |   3 A$main$5946        2559 GR
  3 A$main$5948        255B GR  |   3 A$main$5949        255D GR
  3 A$main$5950        255F GR  |   3 A$main$5955        2563 GR
  3 A$main$5956        2566 GR  |   3 A$main$5957        2569 GR
  3 A$main$5959        256C GR  |   3 A$main$5960        256F GR
  3 A$main$5961        2571 GR  |   3 A$main$5962        2575 GR
  3 A$main$5963        2578 GR  |   3 A$main$5964        257B GR
  3 A$main$5970        257E GR  |   3 A$main$5971        2581 GR
  3 A$main$5976        2584 GR  |   3 A$main$5977        2587 GR
  3 A$main$5982        258A GR  |   3 A$main$5983        258C GR
  3 A$main$5984        258F GR  |   3 A$main$5989        2592 GR
  3 A$main$5990        2594 GR  |   3 A$main$5995        2598 GR
  3 A$main$5996        259B GR  |   3 A$main$6001        259E GR
  3 A$main$6002        25A0 GR  |   3 A$main$6008        25A3 GR
  3 A$main$6009        25A6 GR  |   3 A$main$6014        25A9 GR
  3 A$main$6015        25AB GR  |   3 A$main$6016        25AE GR
  3 A$main$6021        25B1 GR  |   3 A$main$6022        25B2 GR
  3 A$main$6023        25B3 GR  |   3 A$main$6024        25B4 GR
  3 A$main$6025        25B6 GR  |   3 A$main$6026        25BA GR
  3 A$main$6027        25BC GR  |   3 A$main$6028        25BF GR
  3 A$main$6033        25C2 GR  |   3 A$main$6034        25C5 GR
  3 A$main$6039        25C8 GR  |   3 A$main$6040        25CB GR
  3 A$main$6045        25CE GR  |   3 A$main$6046        25CF GR
  3 A$main$6047        25D2 GR  |   3 A$main$6052        25D5 GR
  3 A$main$6053        25D7 GR  |   3 A$main$6054        25D9 GR
  3 A$main$6059        25DD GR  |   3 A$main$6060        25DF GR
  3 A$main$6066        25E2 GR  |   3 A$main$6067        25E5 GR
  3 A$main$6072        25E8 GR  |   3 A$main$6073        25EB GR
  3 A$main$6078        25EE GR  |   3 A$main$6079        25EF GR
  3 A$main$6080        25F2 GR  |   3 A$main$6085        25F5 GR
  3 A$main$6086        25F7 GR  |   3 A$main$6096        25FB GR
  3 A$main$6097        25FD GR  |   3 A$main$6098        2600 GR
  3 A$main$6099        2602 GR  |   3 A$main$6109        2606 GR
  3 A$main$6110        2609 GR  |   3 A$main$6115        260C GR
  3 A$main$6116        260E GR  |   3 A$main$6121        2611 GR
  3 A$main$6128        2614 GR  |   3 A$main$6138        2617 GR
  3 A$main$6139        2619 GR  |   3 A$main$6140        261C GR
  3 A$main$6145        261F GR  |   3 A$main$6146        2621 GR
  3 A$main$6147        2625 GR  |   3 A$main$6148        2627 GR
  3 A$main$6149        262B GR  |   3 A$main$6150        262D GR
  3 A$main$6151        2631 GR  |   3 A$main$6152        2633 GR
  3 A$main$6153        2637 GR  |   3 A$main$6154        2639 GR
  3 A$main$6155        263D GR  |   3 A$main$6156        263F GR
  3 A$main$6157        2643 GR  |   3 A$main$6158        2645 GR
  3 A$main$6159        2649 GR  |   3 A$main$6160        264C GR
  3 A$main$6161        264E GR  |   3 A$main$6167        2651 GR
  3 A$main$6168        2654 GR  |   3 A$main$6169        2656 GR
  3 A$main$6175        265A GR  |   3 A$main$6176        265D GR
  3 A$main$6181        2660 GR  |   3 A$main$6186        2663 GR
  3 A$main$6191        2666 GR  |   3 A$main$6192        2668 GR
  3 A$main$6197        266B GR  |   3 A$main$6198        266D GR
  3 A$main$6204        2670 GR  |   3 A$main$6205        2673 GR
  3 A$main$6210        2676 GR  |   3 A$main$6211        2679 GR
  3 A$main$6216        267C GR  |   3 A$main$6217        267E GR
  3 A$main$6222        2681 GR  |   3 A$main$6223        2683 GR
  3 A$main$6224        2686 GR  |   3 A$main$6229        2689 GR
  3 A$main$6234        268C GR  |   3 A$main$6235        268E GR
  3 A$main$6240        2692 GR  |   3 A$main$6241        2695 GR
  3 A$main$6246        2698 GR  |   3 A$main$6247        269A GR
  3 A$main$6253        269D GR  |   3 A$main$6254        26A0 GR
  3 A$main$6259        26A3 GR  |   3 A$main$6260        26A5 GR
  3 A$main$6265        26A8 GR  |   3 A$main$6270        26AB GR
  3 A$main$6271        26AE GR  |   3 A$main$6276        26B1 GR
  3 A$main$6277        26B4 GR  |   3 A$main$6282        26B7 GR
  3 A$main$6283        26BA GR  |   3 A$main$6288        26BD GR
  3 A$main$6289        26BF GR  |   3 A$main$6290        26C2 GR
  3 A$main$6295        26C5 GR  |   3 A$main$6300        26C8 GR
  3 A$main$6301        26CA GR  |   3 A$main$6306        26CE GR
  3 A$main$6307        26D0 GR  |   3 A$main$6312        26D4 GR
  3 A$main$6313        26D6 GR  |   3 A$main$6318        26DA GR
  3 A$main$6319        26DC GR  |   3 A$main$6324        26E0 GR
  3 A$main$6335        26E3 GR  |   3 A$main$6336        26E6 GR
  3 A$main$6346        26E9 GR  |   3 A$main$6347        26EB GR
  3 A$main$6352        26EE GR  |   3 A$main$6353        26F0 GR
  3 A$main$6355        26F3 GR  |   3 A$main$6356        26F6 GR
  3 A$main$6357        26F9 GR  |   3 A$main$6358        26FC GR
  3 A$main$6363        26FE GR  |   3 A$main$6364        2701 GR
  3 A$main$6365        2704 GR  |   3 A$main$6366        2706 GR
  3 A$main$6367        2708 GR  |   3 A$main$6373        270B GR
  3 A$main$6374        270E GR  |   3 A$main$6375        2711 GR
  3 A$main$6376        2713 GR  |   3 A$main$6377        2715 GR
  3 A$main$6378        2718 GR  |   3 A$main$6379        271A GR
  3 A$main$6385        271D GR  |   3 A$main$6386        2720 GR
  3 A$main$6387        2721 GR  |   3 A$main$6388        2722 GR
  3 A$main$6389        2723 GR  |   3 A$main$6390        2726 GR
  3 A$main$6391        2729 GR  |   3 A$main$6392        272B GR
  3 A$main$6394        272C GR  |   3 A$main$6397        272E GR
  3 A$main$6398        2731 GR  |   3 A$main$6399        2734 GR
  3 A$main$6400        2737 GR  |   3 A$main$6405        273A GR
  3 A$main$6406        273C GR  |   3 A$main$6407        273E GR
  3 A$main$6408        2740 GR  |   3 A$main$6414        2743 GR
  3 A$main$6415        2745 GR  |   3 A$main$6416        2746 GR
  3 A$main$6417        2748 GR  |   3 A$main$6418        274B GR
  3 A$main$6419        274D GR  |   3 A$main$6420        274E GR
  3 A$main$6421        2750 GR  |   3 A$main$6422        2752 GR
  3 A$main$6423        2754 GR  |   3 A$main$6424        2756 GR
  3 A$main$6425        2759 GR  |   3 A$main$6426        275B GR
  3 A$main$6427        275E GR  |   3 A$main$6432        2761 GR
  3 A$main$6433        2763 GR  |   3 A$main$6434        2765 GR
  3 A$main$6435        2768 GR  |   3 A$main$6436        276A GR
  3 A$main$6442        276D GR  |   3 A$main$6443        2770 GR
  3 A$main$6444        2772 GR  |   3 A$main$6445        2774 GR
  3 A$main$6451        2777 GR  |   3 A$main$6452        277A GR
  3 A$main$6453        277C GR  |   3 A$main$6459        2780 GR
  3 A$main$6460        2782 GR  |   3 A$main$6465        2785 GR
  3 A$main$6466        2787 GR  |   3 A$main$6471        278A GR
  3 A$main$6473        278C GR  |   3 A$main$6475        278F GR
  3 A$main$6476        2792 GR  |   3 A$main$6477        2794 GR
  3 A$main$6478        2795 GR  |   3 A$main$6479        2798 GR
  3 A$main$6480        279A GR  |   3 A$main$6481        279C GR
  3 A$main$6486        279E GR  |   3 A$main$6491        27A1 GR
  3 A$main$6492        27A3 GR  |   3 A$main$6498        27A6 GR
  3 A$main$6499        27A9 GR  |   3 A$main$6500        27AB GR
  3 A$main$6505        27AF GR  |   3 A$main$6506        27B2 GR
  3 A$main$6511        27B5 GR  |   3 A$main$6516        27B8 GR
  3 A$main$6517        27BB GR  |   3 A$main$6522        27BF GR
  3 A$main$6523        27C2 GR  |   3 A$main$6528        27C5 GR
  3 A$main$6529        27C7 GR  |   3 A$main$6535        27CA GR
  3 A$main$6536        27CD GR  |   3 A$main$6537        27CF GR
  3 A$main$6542        27D3 GR  |   3 A$main$6543        27D6 GR
  3 A$main$6548        27D9 GR  |   3 A$main$6549        27DB GR
  3 A$main$6554        27DE GR  |   3 A$main$6555        27E0 GR
  3 A$main$6556        27E3 GR  |   3 A$main$6557        27E4 GR
  3 A$main$6562        27E7 GR  |   3 A$main$6563        27EA GR
  3 A$main$6568        27ED GR  |   3 A$main$6569        27F0 GR
  3 A$main$6574        27F3 GR  |   3 A$main$6575        27F6 GR
  3 A$main$6576        27F7 GR  |   3 A$main$6577        27F9 GR
  3 A$main$6578        27FC GR  |   3 A$main$6579        27FE GR
  3 A$main$6580        2800 GR  |   3 A$main$6585        2803 GR
  3 A$main$6586        2807 GR  |   3 A$main$6591        280B GR
  3 A$main$6596        280E GR  |   3 A$main$6597        2810 GR
  3 A$main$6599        2813 GR  |   3 A$main$6600        2816 GR
  3 A$main$6601        2818 GR  |   3 A$main$6606        281C GR
  3 A$main$6611        281F GR  |   3 A$main$6612        2822 GR
  3 A$main$6617        2825 GR  |   3 A$main$6618        2827 GR
  3 A$main$6623        282A GR  |   3 A$main$6624        282C GR
  3 A$main$6629        282F GR  |   3 A$main$6630        2832 GR
  3 A$main$6635        2836 GR  |   3 A$main$6636        2839 GR
  3 A$main$6638        283C GR  |   3 A$main$6639        283E GR
  3 A$main$6640        2840 GR  |   3 A$main$6645        2844 GR
  3 A$main$6650        2847 GR  |   3 A$main$6651        284A GR
  3 A$main$6656        284D GR  |   3 A$main$6657        284F GR
  3 A$main$6662        2852 GR  |   3 A$main$6663        2854 GR
  3 A$main$6668        2857 GR  |   3 A$main$6669        2859 GR
  3 A$main$6671        285C GR  |   3 A$main$6672        285E GR
  3 A$main$6673        2861 GR  |   3 A$main$6679        2864 GR
  3 A$main$6680        2867 GR  |   3 A$main$6681        286A GR
  3 A$main$6687        286D GR  |   3 A$main$6688        286E GR
  3 A$main$6694        2871 GR  |   3 A$main$6695        2874 GR
  3 A$main$6700        2877 GR  |   3 A$main$6701        2879 GR
  3 A$main$6702        287C GR  |   3 A$main$6703        287E GR
  3 A$main$6713        2882 GR  |   3 A$main$6714        2885 GR
  3 A$main$6719        2888 GR  |   3 A$main$6720        288A GR
  3 A$main$6722        288D GR  |   3 A$main$6723        288F GR
  3 A$main$6731        2892 GR  |   3 A$main$6732        2894 GR
  3 A$main$6738        2897 GR  |   3 A$main$6739        2899 GR
  3 A$main$6744        289C GR  |   3 A$main$6754        289F GR
  3 A$main$6759        28A2 GR  |   3 A$main$6760        28A5 GR
  3 A$main$6765        28A8 GR  |   3 A$main$6766        28AB GR
  3 A$main$6771        28AE GR  |   3 A$main$6772        28B1 GR
  3 A$main$6777        28B4 GR  |   3 A$main$6778        28B6 GR
  3 A$main$6783        28B9 GR  |   3 A$main$6784        28BA GR
  3 A$main$6785        28BD GR  |   3 A$main$6790        28C0 GR
  3 A$main$6795        28C3 GR  |   3 A$main$6800        28C6 GR
  3 A$main$6801        28C9 GR  |   3 A$main$6806        28CC GR
  3 A$main$6807        28CE GR  |   3 A$main$6812        28D2 GR
  3 A$main$6813        28D4 GR  |   3 A$main$6814        28D5 GR
  3 A$main$6815        28D6 GR  |   3 A$main$6816        28D7 GR
  3 A$main$6817        28D9 GR  |   3 A$main$6818        28DD GR
  3 A$main$6823        28E0 GR  |   3 A$main$6824        28E3 GR
  3 A$main$6825        28E5 GR  |   3 A$main$6826        28E8 GR
  3 A$main$6831        28EC GR  |   3 A$main$6832        28EE GR
  3 A$main$6841        28F1 GR  |   3 A$main$6846        28F4 GR
  3 A$main$6847        28F7 GR  |   3 A$main$6852        28FA GR
  3 A$main$6853        28FD GR  |   3 A$main$6858        2900 GR
  3 A$main$6859        2903 GR  |   3 A$main$6864        2906 GR
  3 A$main$6865        2908 GR  |   3 A$main$687         0415 GR
  3 A$main$6870        290B GR  |   3 A$main$6871        290C GR
  3 A$main$6872        290F GR  |   3 A$main$6877        2912 GR
  3 A$main$6882        2915 GR  |   3 A$main$6887        2918 GR
  3 A$main$6888        291B GR  |   3 A$main$6893        291E GR
  3 A$main$6894        2920 GR  |   3 A$main$6899        2924 GR
  3 A$main$690         0416 GR  |   3 A$main$6900        2926 GR
  3 A$main$6901        2927 GR  |   3 A$main$6902        2928 GR
  3 A$main$6903        2929 GR  |   3 A$main$6904        292B GR
  3 A$main$6905        292F GR  |   3 A$main$6910        2932 GR
  3 A$main$6911        2935 GR  |   3 A$main$6912        2937 GR
  3 A$main$6913        293A GR  |   3 A$main$6918        293E GR
  3 A$main$6919        2940 GR  |   3 A$main$6928        2943 GR
  3 A$main$693         0417 GR  |   3 A$main$6933        2946 GR
  3 A$main$6934        2949 GR  |   3 A$main$6939        294C GR
  3 A$main$694         0419 GR  |   3 A$main$6940        294F GR
  3 A$main$6945        2952 GR  |   3 A$main$6946        2955 GR
  3 A$main$6951        2958 GR  |   3 A$main$6952        295A GR
  3 A$main$6957        295D GR  |   3 A$main$6958        295E GR
  3 A$main$6959        2961 GR  |   3 A$main$6964        2964 GR
  3 A$main$6969        2967 GR  |   3 A$main$6974        296A GR
  3 A$main$6975        296D GR  |   3 A$main$6980        2970 GR
  3 A$main$6981        2972 GR  |   3 A$main$6986        2976 GR
  3 A$main$6987        2978 GR  |   3 A$main$6988        2979 GR
  3 A$main$6989        297A GR  |   3 A$main$6990        297B GR
  3 A$main$6991        297D GR  |   3 A$main$6992        2981 GR
  3 A$main$6997        2984 GR  |   3 A$main$6998        2987 GR
  3 A$main$6999        2989 GR  |   3 A$main$7000        298C GR
  3 A$main$7005        2990 GR  |   3 A$main$7006        2992 GR
  3 A$main$7016        2995 GR  |   3 A$main$7021        2998 GR
  3 A$main$7022        299B GR  |   3 A$main$7027        299E GR
  3 A$main$7028        29A1 GR  |   3 A$main$703         041B GR
  3 A$main$7033        29A4 GR  |   3 A$main$7034        29A7 GR
  3 A$main$7039        29AA GR  |   3 A$main$704         041D GR
  3 A$main$7040        29AC GR  |   3 A$main$7045        29AF GR
  3 A$main$7046        29B0 GR  |   3 A$main$7047        29B3 GR
  3 A$main$7052        29B6 GR  |   3 A$main$7057        29B9 GR
  3 A$main$7062        29BC GR  |   3 A$main$7063        29BF GR
  3 A$main$7068        29C2 GR  |   3 A$main$7069        29C4 GR
  3 A$main$7074        29C8 GR  |   3 A$main$7075        29CA GR
  3 A$main$7076        29CB GR  |   3 A$main$7077        29CC GR
  3 A$main$7078        29CD GR  |   3 A$main$7079        29CF GR
  3 A$main$7080        29D3 GR  |   3 A$main$7085        29D6 GR
  3 A$main$7086        29D9 GR  |   3 A$main$7087        29DB GR
  3 A$main$7088        29DE GR  |   3 A$main$709         0420 GR
  3 A$main$7093        29E2 GR  |   3 A$main$7094        29E4 GR
  3 A$main$710         0422 GR  |   3 A$main$7103        29E7 GR
  3 A$main$7108        29EA GR  |   3 A$main$7109        29ED GR
  3 A$main$711         0426 GR  |   3 A$main$7114        29F0 GR
  3 A$main$7115        29F3 GR  |   3 A$main$712         0428 GR
  3 A$main$7120        29F6 GR  |   3 A$main$7125        29F9 GR
  3 A$main$7126        29FB GR  |   3 A$main$7127        29FE GR
  3 A$main$7128        2A01 GR  |   3 A$main$7129        2A04 GR
  3 A$main$713         042A GR  |   3 A$main$7130        2A05 GR
  3 A$main$7131        2A07 GR  |   3 A$main$7132        2A09 GR
  3 A$main$7133        2A0C GR  |   3 A$main$7134        2A0E GR
  3 A$main$7135        2A10 GR  |   3 A$main$7136        2A12 GR
  3 A$main$7137        2A14 GR  |   3 A$main$7138        2A17 GR
  3 A$main$7139        2A1A GR  |   3 A$main$7140        2A1D GR
  3 A$main$7141        2A1F GR  |   3 A$main$7142        2A22 GR
  3 A$main$7143        2A24 GR  |   3 A$main$7144        2A28 GR
  3 A$main$7145        2A2B GR  |   3 A$main$7146        2A2E GR
  3 A$main$7147        2A30 GR  |   3 A$main$7148        2A33 GR
  3 A$main$7149        2A36 GR  |   3 A$main$7150        2A39 GR
  3 A$main$7151        2A3C GR  |   3 A$main$7152        2A3D GR
  3 A$main$7153        2A3F GR  |   3 A$main$7154        2A42 GR
  3 A$main$7155        2A44 GR  |   3 A$main$7156        2A46 GR
  3 A$main$7157        2A49 GR  |   3 A$main$7158        2A4B GR
  3 A$main$7159        2A4F GR  |   3 A$main$7160        2A52 GR
  3 A$main$7161        2A55 GR  |   3 A$main$7162        2A58 GR
  3 A$main$7163        2A5A GR  |   3 A$main$7164        2A5D GR
  3 A$main$7165        2A61 GR  |   3 A$main$7166        2A64 GR
  3 A$main$7171        2A68 GR  |   3 A$main$7172        2A6A GR
  3 A$main$7173        2A6D GR  |   3 A$main$7174        2A70 GR
  3 A$main$7179        2A73 GR  |   3 A$main$7180        2A76 GR
  3 A$main$7185        2A79 GR  |   3 A$main$7186        2A7C GR
  3 A$main$7187        2A7F GR  |   3 A$main$7188        2A82 GR
  3 A$main$7189        2A85 GR  |   3 A$main$719         042D GR
  3 A$main$7190        2A88 GR  |   3 A$main$7191        2A8B GR
  3 A$main$7196        2A8E GR  |   3 A$main$7197        2A90 GR
  3 A$main$7198        2A92 GR  |   3 A$main$720         0430 GR
  3 A$main$7204        2A95 GR  |   3 A$main$7205        2A98 GR
  3 A$main$721         0432 GR  |   3 A$main$7210        2A9B GR
  3 A$main$7211        2A9D GR  |   3 A$main$7217        2AA0 GR
  3 A$main$7218        2AA2 GR  |   3 A$main$7219        2AA5 GR
  3 A$main$722         0434 GR  |   3 A$main$7220        2AA8 GR
  3 A$main$7221        2AAB GR  |   3 A$main$7222        2AAE GR
  3 A$main$7223        2AB1 GR  |   3 A$main$7224        2AB5 GR
  3 A$main$7225        2AB7 GR  |   3 A$main$7226        2ABA GR
  3 A$main$723         0436 GR  |   3 A$main$7232        2ABD GR
  3 A$main$7233        2ABF GR  |   3 A$main$7234        2AC2 GR
  3 A$main$7235        2AC4 GR  |   3 A$main$724         0438 GR
  3 A$main$7240        2AC8 GR  |   3 A$main$7241        2ACA GR
  3 A$main$7242        2ACD GR  |   3 A$main$7243        2ACE GR
  3 A$main$7249        2AD1 GR  |   3 A$main$725         043A GR
  3 A$main$7250        2AD4 GR  |   3 A$main$7255        2AD7 GR
  3 A$main$7256        2AD9 GR  |   3 A$main$726         043C GR
  3 A$main$7263        2ADC GR  |   3 A$main$7264        2ADE GR
  3 A$main$7265        2AE1 GR  |   3 A$main$7267        2AE3 GR
  3 A$main$7272        2AE6 GR  |   3 A$main$7273        2AE8 GR
  3 A$main$7279        2AEB GR  |   3 A$main$7285        2AEE GR
  3 A$main$7286        2AF1 GR  |   3 A$main$7291        2AF3 GR
  3 A$main$7292        2AF6 GR  |   3 A$main$7297        2AF8 GR
  3 A$main$7298        2AFA GR  |   3 A$main$7303        2AFD GR
  3 A$main$7304        2AFF GR  |   3 A$main$7310        2B02 GR
  3 A$main$7311        2B05 GR  |   3 A$main$7312        2B08 GR
  3 A$main$7318        2B0B GR  |   3 A$main$7319        2B0E GR
  3 A$main$732         043E GR  |   3 A$main$7324        2B11 GR
  3 A$main$7325        2B12 GR  |   3 A$main$7326        2B15 GR
  3 A$main$733         0440 GR  |   3 A$main$7331        2B18 GR
  3 A$main$7332        2B1A GR  |   3 A$main$7337        2B1E GR
  3 A$main$7338        2B21 GR  |   3 A$main$734         0442 GR
  3 A$main$7343        2B24 GR  |   3 A$main$7344        2B25 GR
  3 A$main$735         0444 GR  |   3 A$main$7350        2B28 GR
  3 A$main$7351        2B2B GR  |   3 A$main$7356        2B2E GR
  3 A$main$7357        2B2F GR  |   3 A$main$7358        2B32 GR
  3 A$main$736         0446 GR  |   3 A$main$7363        2B35 GR
  3 A$main$7364        2B37 GR  |   3 A$main$7369        2B3B GR
  3 A$main$737         0448 GR  |   3 A$main$7374        2B3E GR
  3 A$main$7375        2B41 GR  |   3 A$main$7376        2B43 GR
  3 A$main$7377        2B46 GR  |   3 A$main$7378        2B48 GR
  3 A$main$7379        2B4B GR  |   3 A$main$738         044A GR
  3 A$main$7380        2B4E GR  |   3 A$main$7385        2B51 GR
  3 A$main$7386        2B54 GR  |   3 A$main$7387        2B57 GR
  3 A$main$7388        2B5A GR  |   3 A$main$7389        2B5E GR
  3 A$main$7390        2B62 GR  |   3 A$main$7391        2B65 GR
  3 A$main$7392        2B68 GR  |   3 A$main$7393        2B6A GR
  3 A$main$7394        2B6D GR  |   3 A$main$7395        2B71 GR
  3 A$main$7396        2B73 GR  |   3 A$main$7397        2B76 GR
  3 A$main$7403        2B7A GR  |   3 A$main$7404        2B7D GR
  3 A$main$7409        2B80 GR  |   3 A$main$7410        2B82 GR
  3 A$main$7415        2B85 GR  |   3 A$main$7421        2B88 GR
  3 A$main$7422        2B8A GR  |   3 A$main$7427        2B8D GR
  3 A$main$7428        2B8F GR  |   3 A$main$7434        2B92 GR
  3 A$main$7435        2B95 GR  |   3 A$main$744         044C GR
  3 A$main$7440        2B98 GR  |   3 A$main$7441        2B9A GR
  3 A$main$7446        2B9D GR  |   3 A$main$7447        2B9F GR
  3 A$main$7448        2BA2 GR  |   3 A$main$7449        2BA4 GR
  3 A$main$745         044E GR  |   3 A$main$7459        2BA8 GR
  3 A$main$746         0450 GR  |   3 A$main$7460        2BAA GR
  3 A$main$7461        2BAD GR  |   3 A$main$7466        2BB0 GR
  3 A$main$7467        2BB1 GR  |   3 A$main$7468        2BB2 GR
  3 A$main$7469        2BB3 GR  |   3 A$main$747         0452 GR
  3 A$main$7470        2BB5 GR  |   3 A$main$7471        2BB9 GR
  3 A$main$7472        2BBB GR  |   3 A$main$7473        2BBE GR
  3 A$main$7478        2BC1 GR  |   3 A$main$7479        2BC4 GR
  3 A$main$748         0454 GR  |   3 A$main$7484        2BC7 GR
  3 A$main$7485        2BC9 GR  |   3 A$main$7486        2BCC GR
  3 A$main$7487        2BCF GR  |   3 A$main$7489        2BD0 GR
  3 A$main$749         0456 GR  |   3 A$main$7490        2BD2 GR
  3 A$main$7495        2BD5 GR  |   3 A$main$7496        2BD8 GR
  3 A$main$7497        2BD9 GR  |   3 A$main$7498        2BDB GR
  3 A$main$7499        2BDE GR  |   3 A$main$750         0458 GR
  3 A$main$7500        2BDF GR  |   3 A$main$7501        2BE1 GR
  3 A$main$7502        2BE3 GR  |   3 A$main$7503        2BE4 GR
  3 A$main$7504        2BE6 GR  |   3 A$main$7505        2BE9 GR
  3 A$main$7506        2BEB GR  |   3 A$main$7511        2BEE GR
  3 A$main$7512        2BF0 GR  |   3 A$main$7517        2BF3 GR
  3 A$main$7518        2BF5 GR  |   3 A$main$7519        2BF7 GR
  3 A$main$7525        2BFA GR  |   3 A$main$7526        2BFD GR
  3 A$main$7527        2BFF GR  |   3 A$main$7528        2C02 GR
  3 A$main$7529        2C04 GR  |   3 A$main$7530        2C07 GR
  3 A$main$7531        2C0A GR  |   3 A$main$7532        2C0C GR
  3 A$main$7533        2C0F GR  |   3 A$main$7534        2C11 GR
  3 A$main$7540        2C14 GR  |   3 A$main$7545        2C17 GR
  3 A$main$7546        2C19 GR  |   3 A$main$7547        2C1C GR
  3 A$main$7548        2C1E GR  |   3 A$main$7553        2C22 GR
  3 A$main$7554        2C25 GR  |   3 A$main$7555        2C26 GR
  3 A$main$7556        2C29 GR  |   3 A$main$7557        2C2C GR
  3 A$main$7558        2C2F GR  |   3 A$main$7559        2C32 GR
  3 A$main$756         045A GR  |   3 A$main$7560        2C34 GR
  3 A$main$7561        2C37 GR  |   3 A$main$7562        2C39 GR
  3 A$main$7563        2C3C GR  |   3 A$main$7564        2C3F GR
  3 A$main$7569        2C43 GR  |   3 A$main$757         045C GR
  3 A$main$7570        2C46 GR  |   3 A$main$7575        2C49 GR
  3 A$main$7576        2C4C GR  |   3 A$main$7577        2C4D GR
  3 A$main$7578        2C50 GR  |   3 A$main$7579        2C53 GR
  3 A$main$758         045E GR  |   3 A$main$7580        2C54 GR
  3 A$main$7585        2C57 GR  |   3 A$main$7586        2C5A GR
  3 A$main$759         0460 GR  |   3 A$main$7591        2C5D GR
  3 A$main$7592        2C60 GR  |   3 A$main$7597        2C63 GR
  3 A$main$7598        2C66 GR  |   3 A$main$7599        2C67 GR
  3 A$main$760         0462 GR  |   3 A$main$7601        2C69 GR
  3 A$main$7602        2C6C GR  |   3 A$main$7607        2C6E GR
  3 A$main$761         0464 GR  |   3 A$main$7612        2C71 GR
  3 A$main$7613        2C75 GR  |   3 A$main$7614        2C77 GR
  3 A$main$7615        2C79 GR  |   3 A$main$7616        2C7B GR
  3 A$main$7622        2C7F GR  |   3 A$main$7623        2C81 GR
  3 A$main$7629        2C84 GR  |   3 A$main$7630        2C87 GR
  3 A$main$7635        2C8A GR  |   3 A$main$7636        2C8C GR
  3 A$main$7637        2C8F GR  |   3 A$main$7638        2C91 GR
  3 A$main$7643        2C95 GR  |   3 A$main$7644        2C97 GR
  3 A$main$7645        2C9A GR  |   3 A$main$7646        2C9D GR
  3 A$main$7651        2CA1 GR  |   3 A$main$7652        2CA4 GR
  3 A$main$7657        2CA7 GR  |   3 A$main$7658        2CA9 GR
  3 A$main$7664        2CAC GR  |   3 A$main$7665        2CAF GR
  3 A$main$767         0466 GR  |   3 A$main$7673        2CB2 GR
  3 A$main$7678        2CB5 GR  |   3 A$main$7679        2CB7 GR
  3 A$main$768         0469 GR  |   3 A$main$7684        2CBA GR
  3 A$main$7689        2CBD GR  |   3 A$main$769         046B GR
  3 A$main$7690        2CC0 GR  |   3 A$main$7695        2CC3 GR
  3 A$main$7696        2CC5 GR  |   3 A$main$770         046D GR
  3 A$main$7701        2CC8 GR  |   3 A$main$7706        2CCB GR
  3 A$main$7707        2CCE GR  |   3 A$main$771         046F GR
  3 A$main$7712        2CD1 GR  |   3 A$main$7717        2CD4 GR
  3 A$main$7718        2CD7 GR  |   3 A$main$7719        2CDA GR
  3 A$main$772         0471 GR  |   3 A$main$7720        2CDC GR
  3 A$main$7721        2CDE GR  |   3 A$main$7727        2CE1 GR
  3 A$main$7728        2CE3 GR  |   3 A$main$773         0473 GR
  3 A$main$7734        2CE6 GR  |   3 A$main$7735        2CE9 GR
  3 A$main$7740        2CEC GR  |   3 A$main$7741        2CEE GR
  3 A$main$7742        2CF1 GR  |   3 A$main$7743        2CF3 GR
  3 A$main$7744        2CF6 GR  |   3 A$main$7745        2CF8 GR
  3 A$main$7746        2CF9 GR  |   3 A$main$7747        2CFB GR
  3 A$main$7748        2CFD GR  |   3 A$main$7749        2CFF GR
  3 A$main$7750        2D00 GR  |   3 A$main$7751        2D02 GR
  3 A$main$7752        2D04 GR  |   3 A$main$7753        2D07 GR
  3 A$main$7754        2D09 GR  |   3 A$main$7759        2D0C GR
  3 A$main$7760        2D0E GR  |   3 A$main$7761        2D10 GR
  3 A$main$7762        2D13 GR  |   3 A$main$7763        2D15 GR
  3 A$main$7764        2D18 GR  |   3 A$main$7765        2D1A GR
  3 A$main$7766        2D1D GR  |   3 A$main$7767        2D20 GR
  3 A$main$7768        2D22 GR  |   3 A$main$7769        2D24 GR
  3 A$main$7774        2D27 GR  |   3 A$main$7775        2D29 GR
  3 A$main$7776        2D2C GR  |   3 A$main$7781        2D2F GR
  3 A$main$7782        2D32 GR  |   3 A$main$7787        2D35 GR
  3 A$main$7788        2D37 GR  |   3 A$main$779         0475 GR
  3 A$main$7793        2D3A GR  |   3 A$main$7794        2D3C GR
  3 A$main$7795        2D3E GR  |   3 A$main$780         0478 GR
  3 A$main$7801        2D41 GR  |   3 A$main$7806        2D44 GR
  3 A$main$7807        2D47 GR  |   3 A$main$781         047A GR
  3 A$main$7812        2D4A GR  |   3 A$main$7813        2D4C GR
  3 A$main$7819        2D4F GR  |   3 A$main$782         047C GR
  3 A$main$7820        2D51 GR  |   3 A$main$7821        2D54 GR
  3 A$main$7822        2D56 GR  |   3 A$main$7827        2D5A GR
  3 A$main$7828        2D5D GR  |   3 A$main$783         047E GR
  3 A$main$7833        2D60 GR  |   3 A$main$7834        2D62 GR
  3 A$main$784         0480 GR  |   3 A$main$7840        2D65 GR
  3 A$main$7841        2D68 GR  |   3 A$main$7842        2D69 GR
  3 A$main$7843        2D6C GR  |   3 A$main$7844        2D6D GR
  3 A$main$7849        2D70 GR  |   3 A$main$785         0482 GR
  3 A$main$7850        2D73 GR  |   3 A$main$7855        2D76 GR
  3 A$main$7856        2D79 GR  |   3 A$main$7857        2D7C GR
  3 A$main$7862        2D7F GR  |   3 A$main$7863        2D82 GR
  3 A$main$7868        2D85 GR  |   3 A$main$7869        2D88 GR
  3 A$main$7870        2D89 GR  |   3 A$main$7871        2D8D GR
  3 A$main$7876        2D91 GR  |   3 A$main$7877        2D93 GR
  3 A$main$7883        2D96 GR  |   3 A$main$7884        2D99 GR
  3 A$main$7889        2D9C GR  |   3 A$main$7890        2D9E GR
  3 A$main$7896        2DA1 GR  |   3 A$main$7897        2DA3 GR
  3 A$main$7898        2DA6 GR  |   3 A$main$7899        2DA8 GR
  3 A$main$7904        2DAC GR  |   3 A$main$791         0484 GR
  3 A$main$7910        2DAF GR  |   3 A$main$7911        2DB1 GR
  3 A$main$7912        2DB4 GR  |   3 A$main$7913        2DB7 GR
  3 A$main$7914        2DBA GR  |   3 A$main$7915        2DBB GR
  3 A$main$7916        2DBE GR  |   3 A$main$7917        2DC1 GR
  3 A$main$792         0486 GR  |   3 A$main$7922        2DC5 GR
  3 A$main$7927        2DC8 GR  |   3 A$main$7928        2DCA GR
  3 A$main$793         0488 GR  |   3 A$main$7934        2DCD GR
  3 A$main$7935        2DCF GR  |   3 A$main$7936        2DD2 GR
  3 A$main$7937        2DD4 GR  |   3 A$main$794         048A GR
  3 A$main$7942        2DD8 GR  |   3 A$main$7943        2DDB GR
  3 A$main$7948        2DDE GR  |   3 A$main$7949        2DE1 GR
  3 A$main$795         048C GR  |   3 A$main$7954        2DE4 GR
  3 A$main$7955        2DE6 GR  |   3 A$main$7956        2DE9 GR
  3 A$main$7957        2DEA GR  |   3 A$main$796         048E GR
  3 A$main$7962        2DED GR  |   3 A$main$7963        2DEF GR
  3 A$main$7965        2DF2 GR  |   3 A$main$7966        2DF4 GR
  3 A$main$7967        2DF6 GR  |   3 A$main$7968        2DF9 GR
  3 A$main$797         0490 GR  |   3 A$main$7974        2DFD GR
  3 A$main$7975        2E00 GR  |   3 A$main$7976        2E02 GR
  3 A$main$7977        2E03 GR  |   3 A$main$7978        2E05 GR
  3 A$main$7979        2E07 GR  |   3 A$main$798         0492 GR
  3 A$main$7980        2E09 GR  |   3 A$main$7985        2E0D GR
  3 A$main$7986        2E10 GR  |   3 A$main$7987        2E13 GR
  3 A$main$7988        2E16 GR  |   3 A$main$7989        2E19 GR
  3 A$main$7990        2E1C GR  |   3 A$main$7991        2E1F GR
  3 A$main$7992        2E22 GR  |   3 A$main$7993        2E25 GR
  3 A$main$7994        2E28 GR  |   3 A$main$7995        2E2C GR
  3 A$main$8000        2E30 GR  |   3 A$main$8001        2E33 GR
  3 A$main$8002        2E36 GR  |   3 A$main$8003        2E39 GR
  3 A$main$8004        2E3C GR  |   3 A$main$8005        2E40 GR
  3 A$main$8006        2E42 GR  |   3 A$main$8007        2E44 GR
  3 A$main$8008        2E47 GR  |   3 A$main$8009        2E4A GR
  3 A$main$8010        2E4C GR  |   3 A$main$8011        2E4F GR
  3 A$main$8012        2E51 GR  |   3 A$main$8013        2E54 GR
  3 A$main$8014        2E57 GR  |   3 A$main$8015        2E5A GR
  3 A$main$8016        2E5D GR  |   3 A$main$8017        2E60 GR
  3 A$main$8018        2E63 GR  |   3 A$main$8019        2E66 GR
  3 A$main$8020        2E69 GR  |   3 A$main$8021        2E6C GR
  3 A$main$8022        2E6F GR  |   3 A$main$8023        2E71 GR
  3 A$main$8024        2E74 GR  |   3 A$main$8025        2E76 GR
  3 A$main$8026        2E79 GR  |   3 A$main$8027        2E7B GR
  3 A$main$8028        2E7E GR  |   3 A$main$8029        2E80 GR
  3 A$main$8030        2E83 GR  |   3 A$main$8031        2E86 GR
  3 A$main$8032        2E88 GR  |   3 A$main$8033        2E8B GR
  3 A$main$8038        2E8E GR  |   3 A$main$8039        2E90 GR
  3 A$main$8040        2E93 GR  |   3 A$main$8041        2E96 GR
  3 A$main$8046        2E9A GR  |   3 A$main$8047        2E9C GR
  3 A$main$8048        2E9F GR  |   3 A$main$8053        2EA2 GR
  3 A$main$8054        2EA3 GR  |   3 A$main$8055        2EA6 GR
  3 A$main$8056        2EA8 GR  |   3 A$main$8057        2EAA GR
  3 A$main$8058        2EAD GR  |   3 A$main$8059        2EB0 GR
  3 A$main$8060        2EB3 GR  |   3 A$main$8061        2EB4 GR
  3 A$main$8062        2EB7 GR  |   3 A$main$8067        2EB9 GR
  3 A$main$8068        2EBC GR  |   3 A$main$8074        2EBF GR
  3 A$main$8075        2EC1 GR  |   3 A$main$8081        2EC4 GR
  3 A$main$8082        2EC6 GR  |   3 A$main$8087        2EC9 GR
  3 A$main$8088        2ECB GR  |   3 A$main$809         0494 GR
  3 A$main$8094        2ECE GR  |   3 A$main$8095        2ED1 GR
  3 A$main$8105        2ED4 GR  |   3 A$main$8106        2ED6 GR
  3 A$main$8107        2ED9 GR  |   3 A$main$8112        2EDC GR
  3 A$main$8113        2EDE GR  |   3 A$main$8114        2EE1 GR
  3 A$main$8115        2EE3 GR  |   3 A$main$8120        2EE7 GR
  3 A$main$8121        2EEA GR  |   3 A$main$8122        2EEB GR
  3 A$main$8123        2EED GR  |   3 A$main$8124        2EF1 GR
  3 A$main$8125        2EF3 GR  |   3 A$main$8126        2EF5 GR
  3 A$main$8131        2EF7 GR  |   3 A$main$8132        2EF8 GR
  3 A$main$8137        2EFA GR  |   3 A$main$8138        2EFD GR
  3 A$main$8139        2EFE GR  |   3 A$main$8140        2F00 GR
  3 A$main$8141        2F01 GR  |   3 A$main$8142        2F02 GR
  3 A$main$8143        2F04 GR  |   3 A$main$8144        2F08 GR
  3 A$main$8145        2F0A GR  |   3 A$main$8146        2F0D GR
  3 A$main$8147        2F10 GR  |   3 A$main$8153        2F12 GR
  3 A$main$8154        2F15 GR  |   3 A$main$8159        2F18 GR
  3 A$main$816         0497 GR  |   3 A$main$8160        2F1A GR
  3 A$main$8166        2F1D GR  |   3 A$main$8167        2F20 GR
  3 A$main$8168        2F21 GR  |   3 A$main$8169        2F23 GR
  3 A$main$817         049A GR  |   3 A$main$8170        2F27 GR
  3 A$main$8171        2F29 GR  |   3 A$main$8172        2F2B GR
  3 A$main$8177        2F2F GR  |   3 A$main$8178        2F30 GR
  3 A$main$8183        2F32 GR  |   3 A$main$8184        2F35 GR
  3 A$main$8185        2F36 GR  |   3 A$main$8186        2F38 GR
  3 A$main$8187        2F39 GR  |   3 A$main$8188        2F3A GR
  3 A$main$8189        2F3C GR  |   3 A$main$8190        2F40 GR
  3 A$main$8191        2F42 GR  |   3 A$main$8192        2F45 GR
  3 A$main$8193        2F48 GR  |   3 A$main$8194        2F4A GR
  3 A$main$8200        2F4D GR  |   3 A$main$8201        2F4F GR
  3 A$main$8202        2F52 GR  |   3 A$main$8203        2F54 GR
  3 A$main$8208        2F58 GR  |   3 A$main$8209        2F5B GR
  3 A$main$8214        2F5E GR  |   3 A$main$8215        2F61 GR
  3 A$main$8216        2F64 GR  |   3 A$main$8217        2F65 GR
  3 A$main$8218        2F67 GR  |   3 A$main$8219        2F69 GR
  3 A$main$8220        2F6B GR  |   3 A$main$8221        2F6D GR
  3 A$main$8223        2F6F GR  |   3 A$main$8226        2F71 GR
  3 A$main$8227        2F73 GR  |   3 A$main$8228        2F76 GR
  3 A$main$8229        2F7A GR  |   3 A$main$823         049E GR
  3 A$main$8230        2F7D GR  |   3 A$main$8231        2F7F GR
  3 A$main$8232        2F82 GR  |   3 A$main$8233        2F84 GR
  3 A$main$8235        2F87 GR  |   3 A$main$8236        2F89 GR
  3 A$main$8237        2F8C GR  |   3 A$main$8238        2F8F GR
  3 A$main$8239        2F90 GR  |   3 A$main$824         04A0 GR
  3 A$main$8240        2F93 GR  |   3 A$main$8241        2F94 GR
  3 A$main$8242        2F97 GR  |   3 A$main$8243        2F99 GR
  3 A$main$8244        2F9C GR  |   3 A$main$8245        2F9D GR
  3 A$main$8246        2F9F GR  |   3 A$main$8247        2FA3 GR
  3 A$main$8249        2FA5 GR  |   3 A$main$8250        2FA8 GR
  3 A$main$8251        2FAA GR  |   3 A$main$8252        2FAC GR
  3 A$main$8253        2FAF GR  |   3 A$main$8254        2FB1 GR
  3 A$main$8255        2FB3 GR  |   3 A$main$8256        2FB6 GR
  3 A$main$8257        2FB9 GR  |   3 A$main$8258        2FBC GR
  3 A$main$8259        2FBF GR  |   3 A$main$8260        2FC2 GR
  3 A$main$8261        2FC5 GR  |   3 A$main$8262        2FC8 GR
  3 A$main$8263        2FCB GR  |   3 A$main$8269        2FCD GR
  3 A$main$8270        2FCF GR  |   3 A$main$8272        2FD2 GR
  3 A$main$8273        2FD5 GR  |   3 A$main$8274        2FD6 GR
  3 A$main$8275        2FD8 GR  |   3 A$main$8276        2FDC GR
  3 A$main$8277        2FDF GR  |   3 A$main$8278        2FE2 GR
  3 A$main$8279        2FE4 GR  |   3 A$main$8285        2FE6 GR
  3 A$main$8286        2FE8 GR  |   3 A$main$8287        2FEB GR
  3 A$main$8288        2FED GR  |   3 A$main$829         04A2 GR
  3 A$main$8293        2FF1 GR  |   3 A$main$8299        2FF4 GR
  3 A$main$830         04A4 GR  |   3 A$main$8300        2FF7 GR
  3 A$main$8301        2FFA GR  |   3 A$main$8307        2FFD GR
  3 A$main$8308        3000 GR  |   3 A$main$8313        3003 GR
  3 A$main$8314        3006 GR  |   3 A$main$8315        3007 GR
  3 A$main$8316        300A GR  |   3 A$main$8317        300D GR
  3 A$main$8318        300E GR  |   3 A$main$832         04A6 GR
  3 A$main$8323        3011 GR  |   3 A$main$8324        3014 GR
  3 A$main$8329        3017 GR  |   3 A$main$833         04A8 GR
  3 A$main$8330        301A GR  |   3 A$main$8335        301D GR
  3 A$main$8336        3020 GR  |   3 A$main$8337        3023 GR
  3 A$main$8338        3026 GR  |   3 A$main$8339        3027 GR
  3 A$main$834         04AA GR  |   3 A$main$8340        3029 GR
  3 A$main$8341        302B GR  |   3 A$main$8342        302E GR
  3 A$main$8347        3032 GR  |   3 A$main$8348        3035 GR
  3 A$main$8349        3036 GR  |   3 A$main$8350        3038 GR
  3 A$main$8351        303A GR  |   3 A$main$8352        303C GR
  3 A$main$8353        303E GR  |   3 A$main$8358        3041 GR
  3 A$main$8359        3043 GR  |   3 A$main$836         04AB GR
  3 A$main$8361        3046 GR  |   3 A$main$8362        304A GR
  3 A$main$8363        304D GR  |   3 A$main$8364        304F GR
  3 A$main$8365        3052 GR  |   3 A$main$8366        3056 GR
  3 A$main$837         04AD GR  |   3 A$main$8372        3059 GR
  3 A$main$8373        305C GR  |   3 A$main$8378        305F GR
  3 A$main$8379        3062 GR  |   3 A$main$838         04AF GR
  3 A$main$8380        3063 GR  |   3 A$main$8381        3064 GR
  3 A$main$8382        3067 GR  |   3 A$main$8383        306B GR
  3 A$main$8384        306D GR  |   3 A$main$8385        306E GR
  3 A$main$8390        3071 GR  |   3 A$main$8391        3073 GR
  3 A$main$8392        3076 GR  |   3 A$main$8397        3079 GR
  3 A$main$8398        307C GR  |   3 A$main$8403        307F GR
  3 A$main$8404        3081 GR  |   3 A$main$8405        3083 GR
  3 A$main$8407        3086 GR  |   3 A$main$8408        3089 GR
  3 A$main$8409        308B GR  |   3 A$main$8410        308E GR
  3 A$main$8416        3091 GR  |   3 A$main$8417        3094 GR
  3 A$main$8422        3097 GR  |   3 A$main$8423        3099 GR
  3 A$main$8424        309C GR  |   3 A$main$8425        309E GR
  3 A$main$8430        30A2 GR  |   3 A$main$8431        30A5 GR
  3 A$main$8432        30A7 GR  |   3 A$main$8433        30AA GR
  3 A$main$8438        30AE GR  |   3 A$main$8439        30AF GR
  3 A$main$844         04B2 GR  |   3 A$main$8440        30B1 GR
  3 A$main$8441        30B3 GR  |   3 A$main$8442        30B5 GR
  3 A$main$8443        30B9 GR  |   3 A$main$8444        30BA GR
  3 A$main$8445        30BC GR  |   3 A$main$8446        30BF GR
  3 A$main$8447        30C1 GR  |   3 A$main$8448        30C3 GR
  3 A$main$8449        30C6 GR  |   3 A$main$845         04B5 GR
  3 A$main$8450        30C8 GR  |   3 A$main$8451        30C9 GR
  3 A$main$8452        30CA GR  |   3 A$main$8453        30CC GR
  3 A$main$8454        30CE GR  |   3 A$main$8455        30D0 GR
  3 A$main$8457        30D3 GR  |   3 A$main$8458        30D5 GR
  3 A$main$8459        30D8 GR  |   3 A$main$846         04B7 GR
  3 A$main$8460        30DA GR  |   3 A$main$8461        30DD GR
  3 A$main$8462        30DF GR  |   3 A$main$8463        30E2 GR
  3 A$main$8464        30E4 GR  |   3 A$main$8465        30E7 GR
  3 A$main$8466        30EA GR  |   3 A$main$8467        30EC GR
  3 A$main$8468        30F0 GR  |   3 A$main$8469        30F3 GR
  3 A$main$847         04B9 GR  |   3 A$main$8470        30F6 GR
  3 A$main$8471        30F8 GR  |   3 A$main$8472        30FA GR
  3 A$main$8473        30FD GR  |   3 A$main$8474        3100 GR
  3 A$main$8475        3102 GR  |   3 A$main$8476        3104 GR
  3 A$main$8477        3106 GR  |   3 A$main$848         04BB GR
  3 A$main$8482        3109 GR  |   3 A$main$8487        310C GR
  3 A$main$8488        310E GR  |   3 A$main$849         04BD GR
  3 A$main$8494        3111 GR  |   3 A$main$8495        3113 GR
  3 A$main$850         04BF GR  |   3 A$main$8500        3116 GR
  3 A$main$8501        3118 GR  |   3 A$main$8503        311B GR
  3 A$main$8504        311D GR  |   3 A$main$8505        311F GR
  3 A$main$8506        3120 GR  |   3 A$main$8507        3122 GR
  3 A$main$8508        3124 GR  |   3 A$main$8509        3125 GR
  3 A$main$851         04C1 GR  |   3 A$main$8510        3127 GR
  3 A$main$8511        312A GR  |   3 A$main$8512        312C GR
  3 A$main$8513        312E GR  |   3 A$main$8514        3131 GR
  3 A$main$8515        3133 GR  |   3 A$main$8516        3134 GR
  3 A$main$8517        3135 GR  |   3 A$main$8518        3137 GR
  3 A$main$8519        3139 GR  |   3 A$main$8520        313B GR
  3 A$main$8521        313E GR  |   3 A$main$8522        3140 GR
  3 A$main$8523        3142 GR  |   3 A$main$8524        3144 GR
  3 A$main$8525        3147 GR  |   3 A$main$8526        3149 GR
  3 A$main$8527        314A GR  |   3 A$main$8528        314B GR
  3 A$main$8529        314D GR  |   3 A$main$8530        314F GR
  3 A$main$8531        3151 GR  |   3 A$main$8537        3154 GR
  3 A$main$8538        3157 GR  |   3 A$main$8539        3159 GR
  3 A$main$8540        315A GR  |   3 A$main$8541        315B GR
  3 A$main$8542        315C GR  |   3 A$main$8543        315E GR
  3 A$main$8544        3161 GR  |   3 A$main$8545        3164 GR
  3 A$main$8546        3167 GR  |   3 A$main$8547        3169 GR
  3 A$main$8548        316B GR  |   3 A$main$8549        316D GR
  3 A$main$8550        3170 GR  |   3 A$main$8551        3173 GR
  3 A$main$8556        3176 GR  |   3 A$main$8561        3179 GR
  3 A$main$8562        317C GR  |   3 A$main$8567        317E GR
  3 A$main$8568        3180 GR  |   3 A$main$857         04C3 GR
  3 A$main$8574        3183 GR  |   3 A$main$8575        3185 GR
  3 A$main$858         04C5 GR  |   3 A$main$859         04C7 GR
  3 A$main$860         04C9 GR  |   3 A$main$861         04CB GR
  3 A$main$8612        3225 GR  |   3 A$main$8613        3227 GR
  3 A$main$862         04CD GR  |   3 A$main$8623        3229 GR
  3 A$main$863         04CF GR  |   3 A$main$8630        322C GR
  3 A$main$8631        322D GR  |   3 A$main$8638        3230 GR
  3 A$main$8639        3233 GR  |   3 A$main$8644        3236 GR
  3 A$main$8645        3239 GR  |   3 A$main$8650        323C GR
  3 A$main$8655        323F GR  |   3 A$main$8664        3242 GR
  3 A$main$8665        3244 GR  |   3 A$main$8671        3246 GR
  3 A$main$8676        3249 GR  |   3 A$main$8677        324B GR
  3 A$main$8684        324F GR  |   3 A$main$8685        3252 GR
  3 A$main$869         04D1 GR  |   3 A$main$8690        3255 GR
  3 A$main$8697        3258 GR  |   3 A$main$870         04D3 GR
  3 A$main$8703        325B GR  |   3 A$main$8704        325E GR
  3 A$main$8705        3260 GR  |   3 A$main$871         04D5 GR
  3 A$main$8710        3263 GR  |   3 A$main$8711        3265 GR
  3 A$main$8716        3268 GR  |   3 A$main$872         04D7 GR
  3 A$main$8721        326B GR  |   3 A$main$8722        326E GR
  3 A$main$8727        3271 GR  |   3 A$main$8728        3273 GR
  3 A$main$8729        3275 GR  |   3 A$main$873         04D9 GR
  3 A$main$8730        3279 GR  |   3 A$main$8731        327B GR
  3 A$main$8732        327F GR  |   3 A$main$8733        3281 GR
  3 A$main$8734        3285 GR  |   3 A$main$8735        3287 GR
  3 A$main$8736        328B GR  |   3 A$main$8737        328D GR
  3 A$main$874         04DB GR  |   3 A$main$8745        3291 GR
  3 A$main$8746        3294 GR  |   3 A$main$8747        3297 GR
  3 A$main$8748        3299 GR  |   3 A$main$875         04DD GR
  3 A$main$8753        329C GR  |   3 A$main$8754        329E GR
  3 A$main$8759        32A1 GR  |   3 A$main$8760        32A3 GR
  3 A$main$8761        32A5 GR  |   3 A$main$8762        32A9 GR
  3 A$main$8763        32AB GR  |   3 A$main$8764        32AF GR
  3 A$main$8765        32B1 GR  |   3 A$main$8776        32B5 GR
  3 A$main$8777        32B8 GR  |   3 A$main$8778        32BB GR
  3 A$main$8783        32BE GR  |   3 A$main$8784        32C0 GR
  3 A$main$8785        32C4 GR  |   3 A$main$8786        32C6 GR
  3 A$main$8787        32CA GR  |   3 A$main$8788        32CC GR
  3 A$main$8789        32D0 GR  |   3 A$main$8790        32D2 GR
  3 A$main$8791        32D4 GR  |   3 A$main$8792        32D6 GR
  3 A$main$8799        32DA GR  |   3 A$main$8804        32DD GR
  3 A$main$881         04DF GR  |   3 A$main$8810        32E0 GR
  3 A$main$8811        32E3 GR  |   3 A$main$8819        32E6 GR
  3 A$main$882         04E1 GR  |   3 A$main$8824        32E9 GR
  3 A$main$8825        32EC GR  |   3 A$main$883         04E3 GR
  3 A$main$8831        32EF GR  |   3 A$main$8832        32F2 GR
  3 A$main$8838        32F5 GR  |   3 A$main$8839        32F7 GR
  3 A$main$884         04E5 GR  |   3 A$main$8840        32FA GR
  3 A$main$8846        32FD GR  |   3 A$main$885         04E7 GR
  3 A$main$8851        3300 GR  |   3 A$main$8859        3303 GR
  3 A$main$886         04E9 GR  |   3 A$main$8860        3306 GR
  3 A$main$8861        3307 GR  |   3 A$main$8866        330B GR
  3 A$main$8867        330D GR  |   3 A$main$8872        3310 GR
  3 A$main$8878        3313 GR  |   3 A$main$8883        3316 GR
  3 A$main$8884        3318 GR  |   3 A$main$8890        331B GR
  3 A$main$8895        331E GR  |   3 A$main$8896        3321 GR
  3 A$main$8901        3324 GR  |   3 A$main$8902        3327 GR
  3 A$main$8907        332A GR  |   3 A$main$8908        332B GR
  3 A$main$8913        332F GR  |   3 A$main$8914        3332 GR
  3 A$main$8915        3334 GR  |   3 A$main$8916        3336 GR
  3 A$main$8917        333A GR  |   3 A$main$892         04EB GR
  3 A$main$8923        333D GR  |   3 A$main$8924        3340 GR
  3 A$main$8925        3342 GR  |   3 A$main$8926        3345 GR
  3 A$main$8927        3347 GR  |   3 A$main$893         04EE GR
  3 A$main$8933        3349 GR  |   3 A$main$8934        334C GR
  3 A$main$894         04F0 GR  |   3 A$main$8940        334F GR
  3 A$main$8941        3352 GR  |   3 A$main$895         04F2 GR
  3 A$main$8954        3356 GR  |   3 A$main$8955        3358 GR
  3 A$main$896         04F4 GR  |   3 A$main$8960        335B GR
  3 A$main$8961        335E GR  |   3 A$main$8966        3361 GR
  3 A$main$8967        3363 GR  |   3 A$main$897         04F6 GR
  3 A$main$8974        3366 GR  |   3 A$main$8975        3369 GR
  3 A$main$8976        336B GR  |   3 A$main$8977        336C GR
  3 A$main$898         04F8 GR  |   3 A$main$8983        336F GR
  3 A$main$8984        3372 GR  |   3 A$main$8985        3374 GR
  3 A$main$8986        3375 GR  |   3 A$main$8992        3378 GR
  3 A$main$8993        337B GR  |   3 A$main$8994        337D GR
  3 A$main$8995        337E GR  |   3 A$main$9001        3381 GR
  3 A$main$9002        3384 GR  |   3 A$main$9003        3386 GR
  3 A$main$9004        3387 GR  |   3 A$main$9010        338A GR
  3 A$main$9011        338D GR  |   3 A$main$9012        338F GR
  3 A$main$9013        3390 GR  |   3 A$main$9019        3393 GR
  3 A$main$9020        3396 GR  |   3 A$main$9021        3398 GR
  3 A$main$9022        3399 GR  |   3 A$main$9028        339C GR
  3 A$main$9029        339F GR  |   3 A$main$9030        33A1 GR
  3 A$main$9031        33A2 GR  |   3 A$main$9037        33A5 GR
  3 A$main$9038        33A8 GR  |   3 A$main$9039        33AA GR
  3 A$main$904         04FA GR  |   3 A$main$9040        33AB GR
  3 A$main$9046        33AE GR  |   3 A$main$9047        33B1 GR
  3 A$main$9048        33B3 GR  |   3 A$main$9049        33B4 GR
  3 A$main$905         04FD GR  |   3 A$main$9055        33B7 GR
  3 A$main$9056        33BA GR  |   3 A$main$9057        33BC GR
  3 A$main$9058        33BD GR  |   3 A$main$906         04FF GR
  3 A$main$9064        33C0 GR  |   3 A$main$9065        33C3 GR
  3 A$main$9066        33C5 GR  |   3 A$main$9067        33C6 GR
  3 A$main$907         0501 GR  |   3 A$main$9073        33C9 GR
  3 A$main$9074        33CC GR  |   3 A$main$9075        33CE GR
  3 A$main$9076        33D0 GR  |   3 A$main$9077        33D3 GR
  3 A$main$9078        33D5 GR  |   3 A$main$9079        33D6 GR
  3 A$main$908         0503 GR  |   3 A$main$9080        33DA GR
  3 A$main$9085        33DC GR  |   3 A$main$9086        33DE GR
  3 A$main$9087        33DF GR  |   3 A$main$9088        33E1 GR
  3 A$main$9089        33E3 GR  |   3 A$main$909         0505 GR
  3 A$main$9090        33E5 GR  |   3 A$main$9095        33E8 GR
  3 A$main$9096        33EB GR  |   3 A$main$9097        33ED GR
  3 A$main$9098        33EE GR  |   3 A$main$9099        33F0 GR
  3 A$main$910         0507 GR  |   3 A$main$9100        33F3 GR
  3 A$main$9101        33F5 GR  |   3 A$main$9102        33F7 GR
  3 A$main$9103        33F8 GR  |   3 A$main$9104        33FB GR
  3 A$main$9105        33FD GR  |   3 A$main$9106        33FF GR
  3 A$main$9108        3402 GR  |   3 A$main$9109        3404 GR
  3 A$main$9110        3406 GR  |   3 A$main$9112        3409 GR
  3 A$main$9113        340B GR  |   3 A$main$9114        340D GR
  3 A$main$9115        3411 GR  |   3 A$main$9116        3413 GR
  3 A$main$9117        3415 GR  |   3 A$main$9122        3419 GR
  3 A$main$9123        341C GR  |   3 A$main$9129        341F GR
  3 A$main$9134        3422 GR  |   3 A$main$9135        3424 GR
  3 A$main$9140        3427 GR  |   3 A$main$9146        342A GR
  3 A$main$9151        342D GR  |   3 A$main$9152        342F GR
  3 A$main$9157        3432 GR  |   3 A$main$916         0509 GR
  3 A$main$9163        3435 GR  |   3 A$main$917         050B GR
  3 A$main$9173        3438 GR  |   3 A$main$9174        343B GR
  3 A$main$9175        343D GR  |   3 A$main$918         050D GR
  3 A$main$9181        3441 GR  |   3 A$main$9182        3443 GR
  3 A$main$9187        3446 GR  |   3 A$main$9188        3449 GR
  3 A$main$919         050F GR  |   3 A$main$9193        344C GR
  3 A$main$9194        344E GR  |   3 A$main$9199        3451 GR
  3 A$main$920         0511 GR  |   3 A$main$9204        3454 GR
  3 A$main$9205        3456 GR  |   3 A$main$921         0513 GR
  3 A$main$9210        3459 GR  |   3 A$main$9215        345C GR
  3 A$main$922         0515 GR  |   3 A$main$9224        345F GR
  3 A$main$9225        3462 GR  |   3 A$main$923         0517 GR
  3 A$main$9230        3465 GR  |   3 A$main$9231        3467 GR
  3 A$main$9232        3469 GR  |   3 A$main$9234        346C GR
  3 A$main$9235        346F GR  |   3 A$main$9236        3471 GR
  3 A$main$9237        3474 GR  |   3 A$main$9238        3476 GR
  3 A$main$9240        3479 GR  |   3 A$main$9241        347C GR
  3 A$main$9242        347F GR  |   3 A$main$9243        3481 GR
  3 A$main$9248        3483 GR  |   3 A$main$9249        3486 GR
  3 A$main$9250        3488 GR  |   3 A$main$9251        348B GR
  3 A$main$9252        348D GR  |   3 A$main$9253        3490 GR
  3 A$main$9254        3493 GR  |   3 A$main$9255        3496 GR
  3 A$main$9256        3498 GR  |   3 A$main$9261        349A GR
  3 A$main$9262        349D GR  |   3 A$main$9263        349F GR
  3 A$main$9264        34A2 GR  |   3 A$main$9265        34A4 GR
  3 A$main$9266        34A7 GR  |   3 A$main$9267        34AA GR
  3 A$main$9268        34AD GR  |   3 A$main$9269        34AF GR
  3 A$main$9274        34B1 GR  |   3 A$main$9275        34B4 GR
  3 A$main$9276        34B6 GR  |   3 A$main$9281        34B9 GR
  3 A$main$9282        34BB GR  |   3 A$main$9283        34BD GR
  3 A$main$9289        34C1 GR  |   3 A$main$9290        34C3 GR
  3 A$main$9291        34C5 GR  |   3 A$main$9302        34C9 GR
  3 A$main$9303        34CB GR  |   3 A$main$9309        34CE GR
  3 A$main$9310        34D0 GR  |   3 A$main$9311        34D3 GR
  3 A$main$9312        34D5 GR  |   3 A$main$9317        34D8 GR
  3 A$main$9322        34DB GR  |   3 A$main$9327        34DE GR
  3 A$main$9332        34E1 GR  |   3 A$main$9333        34E3 GR
  3 A$main$9338        34E5 GR  |   3 A$main$9339        34E7 GR
  3 A$main$934         051B GR  |   3 A$main$9344        34EA GR
  3 A$main$9345        34ED GR  |   3 A$main$9346        34EF GR
  3 A$main$9347        34F3 GR  |   3 A$main$9348        34F6 GR
  3 A$main$9349        34F8 GR  |   3 A$main$9350        34FB GR
  3 A$main$9351        34FD GR  |   3 A$main$9352        3500 GR
  3 A$main$9358        3503 GR  |   3 A$main$9359        3505 GR
  3 A$main$9360        3508 GR  |   3 A$main$9361        350A GR
  3 A$main$9362        350D GR  |   3 A$main$9363        3510 GR
  3 A$main$9364        3513 GR  |   3 A$main$9365        3515 GR
  3 A$main$9370        3517 GR  |   3 A$main$9371        351A GR
  3 A$main$9372        351C GR  |   3 A$main$9373        351F GR
  3 A$main$9374        3521 GR  |   3 A$main$9375        3524 GR
  3 A$main$9376        3527 GR  |   3 A$main$9377        352A GR
  3 A$main$9378        352C GR  |   3 A$main$9383        352E GR
  3 A$main$9384        3530 GR  |   3 A$main$9385        3533 GR
  3 A$main$9386        3537 GR  |   3 A$main$9387        3539 GR
  3 A$main$939         051E GR  |   3 A$main$9392        353B GR
  3 A$main$9393        353D GR  |   3 A$main$9394        353F GR
  3 A$main$940         0521 GR  |   3 A$main$9400        3543 GR
  3 A$main$9401        3546 GR  |   3 A$main$9402        3549 GR
  3 A$main$9407        354D GR  |   3 A$main$9408        3550 GR
  3 A$main$9409        3552 GR  |   3 A$main$9410        3555 GR
  3 A$main$9411        3557 GR  |   3 A$main$9412        355A GR
  3 A$main$9413        355D GR  |   3 A$main$9414        3560 GR
  3 A$main$9415        3562 GR  |   3 A$main$9420        3564 GR
  3 A$main$9421        3567 GR  |   3 A$main$9422        3569 GR
  3 A$main$9423        356C GR  |   3 A$main$9424        356E GR
  3 A$main$9425        3571 GR  |   3 A$main$9426        3574 GR
  3 A$main$9427        3577 GR  |   3 A$main$9428        3579 GR
  3 A$main$9433        357B GR  |   3 A$main$9434        357E GR
  3 A$main$9435        3580 GR  |   3 A$main$9436        3582 GR
  3 A$main$9437        3583 GR  |   3 A$main$9438        3585 GR
  3 A$main$9439        3587 GR  |   3 A$main$9445        3589 GR
  3 A$main$9446        358B GR  |   3 A$main$9447        358D GR
  3 A$main$9448        358F GR  |   3 A$main$9449        3591 GR
  3 A$main$945         0524 GR  |   3 A$main$9455        3593 GR
  3 A$main$9456        3595 GR  |   3 A$main$9457        3599 GR
  3 A$main$9458        359B GR  |   3 A$main$946         0525 GR
  3 A$main$9463        359F GR  |   3 A$main$9464        35A1 GR
  3 A$main$9465        35A3 GR  |   3 A$main$947         0529 GR
  3 A$main$9472        35A7 GR  |   3 A$main$9473        35AA GR
  3 A$main$9478        35AD GR  |   3 A$main$9483        35B0 GR
  3 A$main$9484        35B3 GR  |   3 A$main$9485        35B6 GR
  3 A$main$9490        35B9 GR  |   3 A$main$9491        35BC GR
  3 A$main$9496        35BF GR  |   3 A$main$9497        35C2 GR
  3 A$main$9498        35C5 GR  |   3 A$main$9499        35C8 GR
  3 A$main$950         052C GR  |   3 A$main$9504        35CB GR
  3 A$main$9505        35CE GR  |   3 A$main$951         052E GR
  3 A$main$9510        35D1 GR  |   3 A$main$9511        35D4 GR
  3 A$main$9516        35D7 GR  |   3 A$main$9517        35DA GR
  3 A$main$9522        35DD GR  |   3 A$main$9523        35E0 GR
  3 A$main$9524        35E3 GR  |   3 A$main$9525        35E6 GR
  3 A$main$9530        35E9 GR  |   3 A$main$9531        35EC GR
  3 A$main$9532        35EF GR  |   3 A$main$9533        35F1 GR
  3 A$main$9534        35F3 GR  |   3 A$main$9535        35F5 GR
  3 A$main$9536        35F6 GR  |   3 A$main$9537        35F8 GR
  3 A$main$9538        35FC GR  |   3 A$main$9539        3600 GR
  3 A$main$9540        3603 GR  |   3 A$main$9541        3606 GR
  3 A$main$9542        3609 GR  |   3 A$main$9543        360C GR
  3 A$main$9544        360F GR  |   3 A$main$9550        3612 GR
  3 A$main$9551        3615 GR  |   3 A$main$9552        3618 GR
  3 A$main$9553        361A GR  |   3 A$main$9554        361C GR
  3 A$main$9555        361E GR  |   3 A$main$9556        361F GR
  3 A$main$9557        3621 GR  |   3 A$main$9558        3625 GR
  3 A$main$9559        3629 GR  |   3 A$main$9560        362C GR
  3 A$main$9561        362F GR  |   3 A$main$9562        3632 GR
  3 A$main$9563        3635 GR  |   3 A$main$9564        3638 GR
  3 A$main$9565        363B GR  |   3 A$main$9566        363E GR
  3 A$main$9567        3641 GR  |   3 A$main$9568        3644 GR
  3 A$main$9574        3647 GR  |   3 A$main$9575        364A GR
  3 A$main$9576        364D GR  |   3 A$main$9577        364F GR
  3 A$main$9578        3651 GR  |   3 A$main$9579        3653 GR
  3 A$main$9580        3654 GR  |   3 A$main$9581        3656 GR
  3 A$main$9582        365A GR  |   3 A$main$9583        365E GR
  3 A$main$9584        3661 GR  |   3 A$main$9585        3664 GR
  3 A$main$9586        3667 GR  |   3 A$main$9592        366A GR
  3 A$main$9593        366D GR  |   3 A$main$960         0530 GR
  3 A$main$9600        3670 GR  |   3 A$main$9601        3673 GR
  3 A$main$9606        3676 GR  |   3 A$main$9607        3679 GR
  3 A$main$9608        367C GR  |   3 A$main$9613        367F GR
  3 A$main$9614        3681 GR  |   3 A$main$9619        3684 GR
  3 A$main$9620        3687 GR  |   3 A$main$9625        368A GR
  3 A$main$9626        368D GR  |   3 A$main$9627        3690 GR
  3 A$main$9628        3691 GR  |   3 A$main$9629        3693 GR
  3 A$main$9630        3695 GR  |   3 A$main$9631        3697 GR
  3 A$main$9632        3699 GR  |   3 A$main$9634        369B GR
  3 A$main$9637        369D GR  |   3 A$main$9638        369F GR
  3 A$main$9639        36A1 GR  |   3 A$main$9640        36A5 GR
  3 A$main$9641        36A8 GR  |   3 A$main$9642        36AA GR
  3 A$main$9643        36AC GR  |   3 A$main$9644        36AE GR
  3 A$main$9646        36B0 GR  |   3 A$main$9647        36B2 GR
  3 A$main$9648        36B4 GR  |   3 A$main$9649        36B6 GR
  3 A$main$965         0533 GR  |   3 A$main$9650        36B8 GR
  3 A$main$9651        36B9 GR  |   3 A$main$9652        36BB GR
  3 A$main$9653        36BF GR  |   3 A$main$9655        36C1 GR
  3 A$main$9656        36C4 GR  |   3 A$main$9657        36C6 GR
  3 A$main$9658        36C8 GR  |   3 A$main$9659        36CA GR
  3 A$main$966         0535 GR  |   3 A$main$9660        36CC GR
  3 A$main$9661        36CE GR  |   3 A$main$9662        36D0 GR
  3 A$main$9663        36D2 GR  |   3 A$main$9664        36D4 GR
  3 A$main$9665        36D6 GR  |   3 A$main$9666        36D8 GR
  3 A$main$9667        36DA GR  |   3 A$main$9668        36DC GR
  3 A$main$9669        36DE GR  |   3 A$main$9671        36E0 GR
  3 A$main$9672        36E2 GR  |   3 A$main$9673        36E3 GR
  3 A$main$9674        36E5 GR  |   3 A$main$9675        36E9 GR
  3 A$main$9676        36EB GR  |   3 A$main$9677        36ED GR
  3 A$main$9679        36EF GR  |   3 A$main$9684        36F2 GR
  3 A$main$9685        36F5 GR  |   3 A$main$9690        36F8 GR
  3 A$main$9695        36FB GR  |   3 A$main$9697        36FE GR
  3 A$main$9698        3700 GR  |   3 A$main$9699        3702 GR
  3 A$main$9700        3706 GR  |   3 A$main$9701        3708 GR
  3 A$main$9702        370A GR  |   3 A$main$971         0538 GR
  3 A$main$9713        370D GR  |   3 A$main$9719        3710 GR
  3 A$main$972         053A GR  |   3 A$main$9724        3713 GR
  3 A$main$9725        3715 GR  |   3 A$main$973         053E GR
  3 A$main$9730        3718 GR  |   3 A$main$9736        371B GR
  3 A$main$974         0540 GR  |   3 A$main$9743        371E GR
  3 A$main$9744        3721 GR  |   3 A$main$9745        3723 GR
  3 A$main$9751        3727 GR  |   3 A$main$9752        3729 GR
  3 A$main$9757        372C GR  |   3 A$main$9758        372F GR
  3 A$main$9764        3732 GR  |   3 A$main$9769        3735 GR
  3 A$main$9775        3738 GR  |   3 A$main$9780        373B GR
  3 A$main$9781        373E GR  |   3 A$main$9786        3741 GR
  3 A$main$9787        3743 GR  |   3 A$main$9794        3746 GR
  3 A$main$9795        3749 GR  |   3 A$main$980         0542 GR
  3 A$main$9800        374C GR  |   3 A$main$9801        374D GR
  3 A$main$9806        3751 GR  |   3 A$main$9807        3753 GR
  3 A$main$981         0545 GR  |   3 A$main$9812        3756 GR
  3 A$main$9818        3759 GR  |   3 A$main$9819        375A GR
  3 A$main$982         0547 GR  |   3 A$main$9824        375D GR
  3 A$main$9825        375F GR  |   3 A$main$983         0549 GR
  3 A$main$9830        3762 GR  |   3 A$main$9835        3765 GR
  3 A$main$9836        3767 GR  |   3 A$main$9837        376A GR
  3 A$main$9839        376D GR  |   3 A$main$984         054B GR
  3 A$main$9840        3770 GR  |   3 A$main$9841        3773 GR
  3 A$main$9842        3776 GR  |   3 A$main$9843        3779 GR
  3 A$main$9844        377C GR  |   3 A$main$9845        377F GR
  3 A$main$9846        3782 GR  |   3 A$main$9847        3785 GR
  3 A$main$9848        3788 GR  |   3 A$main$9849        378B GR
  3 A$main$9850        378E GR  |   3 A$main$9851        3791 GR
  3 A$main$9853        3794 GR  |   3 A$main$9854        3797 GR
  3 A$main$9855        379A GR  |   3 A$main$9856        379D GR
  3 A$main$9857        37A0 GR  |   3 A$main$9858        37A3 GR
  3 A$main$9859        37A6 GR  |   3 A$main$9860        37A9 GR
  3 A$main$9861        37AC GR  |   3 A$main$9863        37AF GR
  3 A$main$9864        37B2 GR  |   3 A$main$9865        37B5 GR
  3 A$main$9866        37B8 GR  |   3 A$main$9867        37BB GR
  3 A$main$9868        37BE GR  |   3 A$main$9869        37C1 GR
  3 A$main$9870        37C4 GR  |   3 A$main$9871        37C7 GR
  3 A$main$9872        37CA GR  |   3 A$main$9873        37CD GR
  3 A$main$9874        37D0 GR  |   3 A$main$9875        37D3 GR
  3 A$main$9876        37D6 GR  |   3 A$main$9877        37D9 GR
  3 A$main$9878        37DC GR  |   3 A$main$9879        37DF GR
  3 A$main$9880        37E2 GR  |   3 A$main$9881        37E5 GR
  3 A$main$9882        37E8 GR  |   3 A$main$9883        37EB GR
  3 A$main$9885        37EE GR  |   3 A$main$9886        37F0 GR
  3 A$main$9887        37F2 GR  |   3 A$main$9888        37F4 GR
  3 A$main$990         054D GR  |   3 A$main$991         054F GR
  3 A$main$997         0553 GR  |   3 A$main$998         0555 GR
  3 A$main$999         0557 GR  |   3 L10                045A R
  3 L101               1049 R   |   3 L102               0EB3 R
  3 L103               0D2E R   |   3 L104               0EF2 R
  3 L105               0EC8 R   |   3 L106               0ED9 R
  3 L108               0EE6 R   |   3 L109               0EF6 R
  3 L11                0466 R   |   3 L110               0D50 R
  3 L111               0D55 R   |   3 L112               0D63 R
  3 L114               121A R   |   3 L115               0DB3 R
  3 L116               14D8 R   |   3 L118               0DAA R
  3 L12                0475 R   |   3 L122               15AE R
  3 L13                0484 R   |   3 L131               12DA R
  3 L133               12FE R   |   3 L134               12E8 R
  3 L136               132E R   |   3 L137               0DCA R
  3 L14                0494 R   |   3 L140               0FA7 R
  3 L141               0F7E R   |   3 L142               0F1C R
  3 L143               0F26 R   |   3 L144               0F2D R
  3 L145               0F3C R   |   3 L146               0F48 R
  3 L147               0F54 R   |   3 L148               0F5D R
  3 L149               0F69 R   |   3 L15                0494 R
  3 L150               0F6C R   |   3 L152               1101 R
  3 L153               110D R   |   3 L154               0EFD R
  3 L155               10C4 R   |   3 L156               107C R
  3 L157               1037 R   |   3 L159               1457 R
  3 L16                04C3 R   |   3 L160               1126 R
  3 L161               1457 R   |   3 L162               1478 R
  3 L164               15D9 R   |   3 L165               15BB R
  3 L168               1591 R   |   3 L169               15BE R
  3 L17                04D1 R   |   3 L170               15DC R
  3 L171               1643 R   |   3 L172               1499 R
  3 L173               1640 R   |   3 L174               1591 R
  3 L175               147B R   |   3 L176               15F8 R
  3 L177               1646 R   |   3 L178               1669 R
  3 L18                04DF R   |   3 L180               13C6 R
  3 L181               13CC R   |   3 L183               10B4 R
  3 L184               136C R   |   3 L185               10C1 R
  3 L186               139D R   |   3 L188               0EA2 R
  3 L189               0E00 R   |   3 L19                04EB R
  3 L190               0E28 R   |   3 L192               0E5B R
  3 L194               0E82 R   |   3 L196               0DE2 R
  3 L20                04FA R   |   3 L201               135B R
  3 L202               1162 R   |   3 L203               0E00 R
  3 L204               152A R   |   3 L205               155A R
  3 L209               0EC8 R   |   3 L21                0509 R
  3 L212               0E94 R   |   3 L214               0F08 R
  3 L216               1049 R   |   3 L217               134D R
  3 L218               1134 R   |   3 L219               143D R
  3 L22                051B R   |   3 L220               14B0 R
  3 L221               14C4 R   |   3 L222               1228 R
  3 L223               125E R   |   3 L224               116D R
  3 L226               0FE2 R   |   3 L227               1024 R
  3 L228               1041 R   |   3 L229               1147 R
  3 L23                051B R   |   3 L230               11FA R
  3 L231               0F95 R   |   3 L232               133D R
  3 L233               1346 R   |   3 L234               0FEA R
  3 L235               0EE9 R   |   3 L236               1570 R
  3 L237               166C R   |   3 L238               0F8D R
  3 L239               0FA7 R   |   3 L24                04A6 R
  3 L240               102C R   |   3 L241               15B4 R
  3 L242               1660 R   |   3 L243               1664 R
  3 L244               15AC R   |   3 L245               1614 R
  3 L246               14E0 R   |   3 L247               1506 R
  3 L248               162C R   |   3 L249               1212 R
  3 L251               1682 R   |   3 L253               16B8 R
  3 L254               16CA R   |   3 L255               16A4 R
  3 L256               16B2 R   |   3 L258               170E R
  3 L259               171F R   |   3 L260               16E4 R
  3 L261               1732 R   |   3 L263               16BC R
  3 L264               16F5 R   |   3 L265               16FE R
  3 L266               1743 R   |   3 L267               174C R
  3 L268               1755 R   |   3 L27                042D R
  3 L270               18C6 R   |   3 L273               18CC R
  3 L274               18DF R   |   3 L276               1A77 R
  3 L277               1B0E R   |   3 L278               1A99 R
  3 L279               1AAA R   |   3 L28                04B2 R
  3 L280               1ABB R   |   3 L281               1ACA R
  3 L282               1ADC R   |   3 L283               1AED R
  3 L284               1B00 R   |   3 L285               1B00 R
  3 L286               1C49 R   |   3 L288               1B79 R
  3 L289               1CAD R   |   3 L291               1C68 R
  3 L292               18F8 R   |   3 L293               1C91 R
  3 L294               1CB7 R   |   3 L295               1D00 R
  3 L298               19DD R   |   3 L299               1968 R
  3 L30                05CB R   |   3 L300               1979 R
  3 L301               198A R   |   3 L302               1999 R
  3 L303               19AB R   |   3 L304               19BC R
  3 L305               19CF R   |   3 L306               19CF R
  3 L307               1C2B R   |   3 L309               1C5E R
  3 L31                05B9 R   |   3 L310               19F9 R
  3 L312               1A17 R   |   3 L313               1C63 R
  3 L315               18F8 R   |   3 L316               1A33 R
  3 L317               18D1 R   |   3 L318               1B71 R
  3 L319               1A45 R   |   3 L32                057C R
  3 L320               1954 R   |   3 L321               1DD1 R
  3 L322               1DBE R   |   3 L323               1A85 R
  3 L324               1E39 R   |   3 L325               1E1F R
  3 L326               1E1A R   |   3 L327               1E2F R
  3 L33                0586 R   |   3 L330               246B R
  3 L331               2446 R   |   3 L332               2651 R
  3 L333               27A6 R   |   3 L334               26E3 R
  3 L335               246B R   |   3 L336               25E2 R
  3 L337               25A3 R   |   3 L338               257E R
  3 L339               269D R   |   3 L34                0590 R
  3 L340               2670 R   |   3 L341               2457 R
  3 L342               265A R   |   3 L343               2CB2 R
  3 L344               2CE1 R   |   3 L345               2447 R
  3 L346               2AA0 R   |   3 L347               27CA R
  3 L35                059A R   |   3 L351               26E3 R
  3 L352               26E9 R   |   3 L354               26F3 R
  3 L355               270B R   |   3 L356               271D R
  3 L357               2743 R   |   3 L358               276D R
  3 L359               2777 R   |   3 L36                05A5 R
  3 L360               2780 R   |   3 L363               247A R
  3 L366               2493 R   |   3 L367               2530 R
  3 L368               24BB R   |   3 L369               24CC R
  3 L37                0542 R   |   3 L370               24DD R
  3 L371               24EC R   |   3 L372               24FE R
  3 L373               250F R   |   3 L374               2522 R
  3 L375               2522 R   |   3 L377               2538 R
  3 L379               2547 R   |   3 L38                054D R
  3 L382               25FB R   |   3 L383               2DFD R
  3 L385               2606 R   |   3 L386               2FF4 R
  3 L387               2EBF R   |   3 L389               288D R
  3 L39                0553 R   |   3 L391               2892 R
  3 L392               2617 R   |   3 L393               2C14 R
  3 L394               2D4F R   |   3 L395               2DAF R
  3 L396               2C7F R   |   3 L399               2DCD R
  3 L40                0565 R   |   3 L400               2F4D R
  3 L401               3059 R   |   3 L403               2F87 R
  3 L405               2FA5 R   |   3 L406               2FCD R
  3 L407               2ABD R   |   3 L408               2BFA R
  3 L409               2AD1 R   |   3 L41                05BB R
  3 L410               2AEB R   |   3 L412               2AEE R
  3 L415               2CE6 R   |   3 L416               2882 R
  3 L418               2DA1 R   |   3 L419               2BA8 R
  3 L42                0568 R   |   3 L420               2FE6 R
  3 L421               3091 R   |   3 L423               3183 R
  3 L424               311B R   |   3 L425               30D3 R
  3 L427               2ECE R   |   3 L428               2F1D R
  3 L43                060D R   |   3 L430               2F12 R
  3 L431               2446 R   |   3 L432               289F R
  3 L433               2D96 R   |   3 L434               2D65 R
  3 L435               2995 R   |   3 L44                0617 R
  3 L440               2B7A R   |   3 L443               2FD2 R
  3 L45                0621 R   |   3 L450               2ED4 R
  3 L452               278F R   |   3 L453               244C R
  3 L454               256C R   |   3 L455               255B R
  3 L456               2864 R   |   3 L457               24A7 R
  3 L458               2554 R   |   3 L459               283C R
  3 L46                062B R   |   3 L460               2813 R
  3 L461               2B02 R   |   3 L462               2B28 R
  3 L463               286D R   |   3 L464               2897 R
  3 L465               2A95 R   |   3 L466               2871 R
  3 L467               2B92 R   |   3 L468               2C84 R
  3 L469               285C R   |   3 L47                0636 R
  3 L470               278C R   |   3 L471               2B0B R
  3 L472               2B88 R   |   3 L473               2CAC R
  3 L474               2AE3 R   |   3 L475               2D41 R
  3 L476               2DF2 R   |   3 L477               2EC4 R
  3 L478               2FFD R   |   3 L479               3046 R
  3 L48                05CF R   |   3 L480               3086 R
  3 L481               3111 R   |   3 L482               3154 R
  3 L484               3229 R   |   3 L485               331B R
  3 L487               3356 R   |   3 L489               3438 R
  3 L49                05DA R   |   3 L491               3291 R
  3 L493               32B5 R   |   3 L496               32B5 R
  3 L50                05E0 R   |   3 L503               3409 R
  3 L504               333D R   |   3 L506               334F R
  3 L507               3349 R   |   3 L508               3356 R
  3 L509               336F R   |   3 L51                05F2 R
  3 L510               3378 R   |   3 L511               3381 R
  3 L512               338A R   |   3 L513               3393 R
  3 L514               339C R   |   3 L515               33A5 R
  3 L516               33AE R   |   3 L517               33B7 R
  3 L518               33C0 R   |   3 L519               33C9 R
  3 L52                05F5 R   |   3 L520               3402 R
  3 L521               3246 R   |   3 L522               3441 R
  3 L525               34C1 R   |   3 L526               36FE R
  3 L527               34C9 R   |   3 L528               370D R
  3 L529               3589 R   |   3 L53                05C6 R
  3 L530               3593 R   |   3 L531               370D R
  3 L532               376D R   |   3 L533               3612 R
  3 L534               37AF R   |   3 L535               3647 R
  3 L536               3794 R   |   3 L537               366A R
  3 L539               36B0 R   |   3 L540               36C1 R
  3 L541               36EF R   |   3 L543               34C9 R
  3 L544               34CE R   |   3 L546               36E0 R
  3 L549               325B R   |   3 L55                05B2 R
  3 L550               3479 R   |   3 L551               342A R
  3 L552               3435 R   |   3 L553               32E0 R
  3 L554               32F5 R   |   3 L555               32FD R
  3 L556               3732 R   |   3 L557               3303 R
  3 L558               32EF R   |   3 L559               3313 R
  3 L56                0643 R   |   3 L560               3710 R
  3 L561               371B R   |   3 L562               32E6 R
  3 L563               341F R   |   3 L564               3738 R
  3 L565               3759 R   |   3 L566               3727 R
  3 L567               3503 R   |   3 L568               3543 R
  3 L569               346C R   |   3 L570               37EE R
  3 L58                069C R   |   3 L59                06A5 R
  3 L6                 04AB R   |   3 L60                06AE R
  3 L61                06B7 R   |   3 L62                06C0 R
  3 L63                0A6C R   |   3 L64                06DD R
  3 L65                06F3 R   |   3 L66                0709 R
  3 L67                071D R   |   3 L68                07C3 R
  3 L69                0867 R   |   3 L7                 049E R
  3 L70                086D R   |   3 L71                0888 R
  3 L72                088F R   |   3 L73                08A8 R
  3 L74                08C1 R   |   3 L75                0925 R
  3 L76                0973 R   |   3 L77                09BC R
  3 L78                0A02 R   |   3 L79                075B R
  3 L8                 043E R   |   3 L81                077D R
  3 L84                0791 R   |   3 L85                078E R
  3 L86                0A64 R   |   3 L87                0798 R
  3 L89                0744 R   |   3 L9                 044C R
  3 L90                0766 R   |   3 L91                0A7D R
  3 L92                0A9D R   |   3 L93                0A95 R
  3 L94                0A8D R   |   3 L95                0A85 R
  3 L96                0A1C R   |   3 L97                0A31 R
  3 L98                0A49 R   |   3 L99                0EF8 R
  3 LC0                0008 R   |   3 LC1                000E R
  3 LC10               0048 R   |   3 LC100              0B73 R
  3 LC101              0B84 R   |   3 LC102              0B97 R
  3 LC103              0BB3 R   |   3 LC104              0BB8 R
  3 LC105              0BBE R   |   3 LC106              0BD8 R
  3 LC107              0BDE R   |   3 LC108              0BE4 R
  3 LC109              0BE9 R   |   3 LC11               004E R
  3 LC110              0BEE R   |   3 LC111              0BF4 R
  3 LC112              0C02 R   |   3 LC113              0C19 R
  3 LC114              0C24 R   |   3 LC115              0C41 R
  3 LC116              0C4E R   |   3 LC117              0C66 R
  3 LC118              0C7B R   |   3 LC119              0C90 R
  3 LC12               0054 R   |   3 LC120              0CA6 R
  3 LC121              0CBA R   |   3 LC122              0CD5 R
  3 LC123              0CEC R   |   3 LC124              0D09 R
  3 LC125              1673 R   |   3 LC126              175E R
  3 LC127              177C R   |   3 LC128              178E R
  3 LC129              179B R   |   3 LC13               005B R
  3 LC130              17A4 R   |   3 LC131              17B2 R
  3 LC132              17CD R   |   3 LC133              17DF R
  3 LC134              1801 R   |   3 LC135              1812 R
  3 LC136              181C R   |   3 LC137              1824 R
  3 LC138              1835 R   |   3 LC139              1856 R
  3 LC14               0060 R   |   3 LC140              1865 R
  3 LC141              1878 R   |   3 LC142              1881 R
  3 LC143              1890 R   |   3 LC144              18AB R
  3 LC145              1E43 R   |   3 LC146              1E4B R
  3 LC147              1E67 R   |   3 LC148              1E75 R
  3 LC149              1E92 R   |   3 LC15               0069 R
  3 LC150              1EB2 R   |   3 LC151              1EB6 R
  3 LC152              1EC4 R   |   3 LC153              1EDC R
  3 LC154              1EFD R   |   3 LC155              1F20 R
  3 LC156              1F34 R   |   3 LC157              1F5A R
  3 LC158              1F73 R   |   3 LC159              1F8E R
  3 LC16               006F R   |   3 LC160              1FA9 R
  3 LC161              1FAE R   |   3 LC162              1FB1 R
  3 LC163              1FB6 R   |   3 LC164              1FD2 R
  3 LC165              1FE7 R   |   3 LC166              2001 R
  3 LC167              2011 R   |   3 LC168              202B R
  3 LC169              203F R   |   3 LC17               0077 R
  3 LC170              205B R   |   3 LC171              206E R
  3 LC172              2088 R   |   3 LC173              209D R
  3 LC174              20B0 R   |   3 LC175              20C0 R
  3 LC176              20D6 R   |   3 LC177              20E5 R
  3 LC178              20FB R   |   3 LC179              210F R
  3 LC18               007F R   |   3 LC180              2127 R
  3 LC181              2142 R   |   3 LC182              2167 R
  3 LC183              217D R   |   3 LC184              219C R
  3 LC185              21AB R   |   3 LC186              21B2 R
  3 LC187              21C9 R   |   3 LC188              21E0 R
  3 LC189              2201 R   |   3 LC19               0085 R
  3 LC190              2224 R   |   3 LC191              2243 R
  3 LC192              2254 R   |   3 LC193              2258 R
  3 LC194              2268 R   |   3 LC195              228A R
  3 LC196              229F R   |   3 LC197              22A3 R
  3 LC198              22B6 R   |   3 LC199              22CA R
  3 LC2                0015 R   |   3 LC20               00B4 R
  3 LC200              22CF R   |   3 LC201              22EC R
  3 LC202              230B R   |   3 LC203              2320 R
  3 LC204              2333 R   |   3 LC205              2359 R
  3 LC206              237C R   |   3 LC207              2396 R
  3 LC208              23BB R   |   3 LC209              23CA R
  3 LC21               00B8 R   |   3 LC210              23CF R
  3 LC211              23F5 R   |   3 LC212              2400 R
  3 LC213              241D R   |   3 LC214              3188 R
  3 LC215              318A R   |   3 LC216              3192 R
  3 LC217              319D R   |   3 LC218              31AE R
  3 LC219              31B7 R   |   3 LC22               00BC R
  3 LC220              31CA R   |   3 LC221              31DA R
  3 LC222              31EB R   |   3 LC223              31FD R
  3 LC224              3214 R   |   3 LC23               00C0 R
  3 LC24               00C4 R   |   3 LC25               00C8 R
  3 LC26               00D8 R   |   3 LC27               00DE R
  3 LC28               00E4 R   |   3 LC29               00EB R
  3 LC3                001E R   |   3 LC30               00F7 R
  3 LC31               0103 R   |   3 LC32               0118 R
  3 LC33               012B R   |   3 LC34               013C R
  3 LC35               014E R   |   3 LC36               0175 R
  3 LC37               0184 R   |   3 LC38               018B R
  3 LC39               019E R   |   3 LC4                0025 R
  3 LC40               01A5 R   |   3 LC41               01B2 R
  3 LC42               01C9 R   |   3 LC43               01CE R
  3 LC44               01D8 R   |   3 LC45               01EC R
  3 LC46               01FA R   |   3 LC47               0201 R
  3 LC48               0217 R   |   3 LC49               0227 R
  3 LC5                002C R   |   3 LC50               023C R
  3 LC51               024D R   |   3 LC52               025B R
  3 LC53               0269 R   |   3 LC54               0288 R
  3 LC55               0293 R   |   3 LC56               029D R
  3 LC57               02B3 R   |   3 LC58               02C3 R
  3 LC59               02C9 R   |   3 LC6                0030 R
  3 LC60               02E6 R   |   3 LC61               02F0 R
  3 LC62               02FD R   |   3 LC63               030E R
  3 LC64               0319 R   |   3 LC65               0327 R
  3 LC66               033B R   |   3 LC67               0346 R
  3 LC68               0352 R   |   3 LC69               035F R
  3 LC7                0038 R   |   3 LC70               036F R
  3 LC71               037C R   |   3 LC72               03A4 R
  3 LC73               03AB R   |   3 LC74               03B2 R
  3 LC75               03B7 R   |   3 LC76               03BC R
  3 LC77               03CD R   |   3 LC78               03D3 R
  3 LC79               03D9 R   |   3 LC8                003E R
  3 LC80               03DF R   |   3 LC81               03E3 R
  3 LC82               03F3 R   |   3 LC83               03F8 R
  3 LC84               03FF R   |   3 LC85               0407 R
  3 LC86               064A R   |   3 LC87               0659 R
  3 LC88               0664 R   |   3 LC89               066F R
  3 LC9                0042 R   |   3 LC90               0AA5 R
  3 LC91               0AC2 R   |   3 LC92               0AD3 R
  3 LC93               0AEB R   |   3 LC94               0AFD R
  3 LC95               0B1B R   |   3 LC96               0B30 R
  3 LC97               0B4A R   |   3 LC98               0B54 R
  3 LC99               0B65 R   |   2 _ACCA              0242 GR
  2 _ACCB              0243 GR  |   2 _CHARAC            0239 GR
  2 _COEFCT            020F GR  |   2 _COEFPT            021E GR
  2 _FP0EXP            0209 GR  |   2 _FP0SGN            020E GR
  2 _FP1EXP            0216 GR  |   2 _FP1SGN            021B GR
  2 _FPA0              020A GR  |   2 _FPA1              0217 GR
  2 _FPA2              0221 GR  |   2 _FPCARY            0215 GR
  2 _FPSBYT            021D GR  |   2 _PLY_AKY_CHANN     0257 GR
  2 _PLY_AKY_CHANN     024E GR  |   2 _PLY_AKY_CHANN     0254 GR
  2 _PLY_AKY_CHANN     0259 GR  |   2 _PLY_AKY_CHANN     0250 GR
  2 _PLY_AKY_CHANN     0255 GR  |   2 _PLY_AKY_CHANN     025B GR
  2 _PLY_AKY_CHANN     0252 GR  |   2 _PLY_AKY_CHANN     0256 GR
  2 _PLY_AKY_PATTE     024C GR  |   2 _PLY_AKY_PATTE     024A GR
  2 _PLY_AKY_PSGRE     025F GR  |   2 _PLY_AKY_PSGRE     0260 GR
  2 _PLY_AKY_PSGRE     0261 GR  |   2 _PLY_AKY_PSGRE     025D GR
  2 _PLY_AKY_PSGRE     025E GR  |   2 _PLY_error         0241 GR
  2 _RESSGN            021C GR  |     _RandMax           **** GX
  2 _STRDES            0210 GR  |   2 _TMPLOC            0238 GR
  2 _V40               0225 GR  |   2 _V41               0226 GR
  2 _V42               0227 GR  |   2 _V43               0228 GR
  2 _V44               0229 GR  |   2 _V45               022A GR
  2 _V46               022B GR  |   2 _V47               022C GR
  2 _V48               022D GR  |   2 _V4A               022F GR
  2 _V4B               0230 GR  |   2 _V4D               0232 GR
  2 _VAB               0234 GR  |   2 _VAC               0235 GR
  2 _VAD               0236 GR  |   2 _VAE               0237 GR
    _Vec_Buttons       **** GX  |     _Vec_Joy_1_X       **** GX
    _Vec_Joy_1_Y       **** GX  |     _Vec_Loop_Coun     **** GX
    _Vec_Text_HW       **** GX  |     _Vec_Text_Widt     **** GX
    __Do_Sound         **** GX  |     __Intensity_a      **** GX
  2 __TMPTR1           0220 GR  |   2 __XC               0140 GR
  2 __YC               0141 GR  |     ___Intensity_5     **** GX
    ___Joy_Digital     **** GX  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 ___a               01E8 GR
  2 ___b               01E9 GR  |   2 ___c               01EA GR
    ___mulsi3          **** GX  |     ___udivsi3         **** GX
  2 ___x               01E7 GR  |   2 __a                01E4 GR
  2 __b                01E5 GR  |   2 __c                01E6 GR
    __fi_s             **** GX  |     __fl               **** GX
    __fl_s             **** GX  |     __fll_s            **** GX
    __fs               **** GX  |     __fsi2_s           **** GX
    __fsi_s            **** GX  |     __ltoa             **** GX
  2 __x                01E3 GR  |   2 __x_               013F GR
  2 __y_               013E GR  |   2 _above             0020 GR
  2 _box               00DE GR  |   3 _boxColors         040D GR
    _castSpell         **** GX  |   2 _ch                00AD GR
    _checkXP           **** GX  |     _clearMonsterS     **** GX
    _createCharact     **** GX  |   2 _cs                00B6 GR
  2 _currentSFX_1      023D GR  |   2 _cx                00B8 GR
  2 _cy                00B9 GR  |   2 _cz                00BA GR
  2 _db                00E5 GR  |     _displayRound      **** GX
    _displayStatus     **** GX  |   2 _doEffectStatu     0076 GR
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _dr                00E7 GR  |   2 _effectOffsetX     007B GR
  2 _effectOffsetY     007A GR  |   2 _effectTimer       0079 GR
    _elevator          **** GX  |   2 _elevatorY         0023 GR
  2 _ex                00B0 GR  |   2 _fillMap           007C GR
  3 _fountain          03E9 GR  |   2 _fpackQ            0204 GR
  2 _fpackX0x          01EB GR  |   2 _fpackY0y          01F0 GR
  2 _fpackZ0z          01F5 GR  |   2 _fpacktmp1         01FA GR
  2 _fpacktmp2         01FF GR  |   2 _frequencyRegi     0245 GR
  2 _gd                00BB GR  |   3 _handleEncount     0D1D GR
  3 _handleMovemen     1676 GR  |   3 _handleSpecial     2429 GR
  3 _handleTreasur     18B7 GR  |   2 _hp                00AB GR
  2 _inElevator        0022 GR  |     _initBox           **** GX
  2 _initFlag1         0247 GR  |   2 _initFlag2         0248 GR
  2 _initFlag3         0249 GR  |   2 _initSoundNo       0026 GR
    _initVars          **** GX  |   3 _inputNumber       0674 GR
  2 _inventory         00C9 GR  |   3 _items             0161 GR
  2 _l                 00EB GR  |   2 _lastX             013C GR
  2 _lastY             013D GR  |   2 _lightChange       0024 GR
  2 _lltmp             0084 GR  |   3 _loadCharacter     0415 GR
  2 _localTimer        0028 GR  |   2 _ltmp              0082 GR
  2 _lv                00AF GR  |   2 _m                 00E2 GR
  3 _main              3225 GR  |   2 _mb                00E8 GR
  2 _mh                00E3 GR  |   2 _ml                00EA GR
  3 _mo                008C GR  |     _monsterOnStac     **** GX
    _monsterOnStac     **** GX  |     _monsterOnStac     **** GX
  3 _msg               0000 GR  |   2 _msgLine           0142 GR
  2 _msg_1             0143 GR  |   2 _msg_2             016B GR
  2 _msg_3             0193 GR  |   2 _msg_4             01BB GR
    _mulhi3            **** GX  |   2 _pa                00E6 GR
    _pause             **** GX  |   2 _printCharacte     0077 GR
  2 _printDungeon      0073 GR  |   2 _printEnvironm     0074 GR
    _printMessage      **** GX  |   2 _printTreasure     0075 GR
  2 _printfEffect      0078 GR  |   2 _r7                0246 GR
    _randomXP          **** GX  |   2 _realAbove         0021 GR
  2 _s                 00C3 GR  |   3 _saveCharacter     0416 GR
  2 _screen            0000 GR  |     _setRandSeedNP     **** GX
  2 _sf                00D3 GR  |   2 _sfx_doframe_i     023F GR
  2 _sfx_pointer_1     023B GR  |   2 _sfx_status_1      023A GR
  2 _specialAction     0025 GR  |   3 _spellNames        0398 GR
  3 _spellNames1       01BD GR  |   3 _spellNames2       020B GR
  3 _spellNames3       027C GR  |   3 _spellNames4       02DA GR
  3 _spellNames5       032F GR  |   3 _spellNames6       038C GR
  2 _stackM            00EC GR  |   2 _stackMH           0114 GR
  2 _stackML           0100 GR  |   3 _stats             00CC GR
  2 _stringBuffer1     0033 GR  |   2 _stringBuffer4     0029 GR
  2 _stringBuffer4     003F GR  |   2 _stringBuffer6     002D GR
  2 _stringBufferE     0067 GR  |   2 _su                00B4 GR
    _subBank0          **** GX  |     _syncPrintStrd     **** GX
  3 _testForButton     0417 GR  |   3 _testForInput      052C GR
  2 _tg                00BF GR  |   2 _timer             0027 GR
  2 _tmp               007E GR  |   2 _tmp2              007F GR
  2 _tmp_box           00A7 GR  |   2 _tmp_cx            0091 GR
  2 _tmp_cy            0092 GR  |   2 _tmp_ex            008B GR
  2 _tmp_hp            0088 GR  |   2 _tmp_inventory     009D GR
  2 _tmp_lv            008A GR  |   2 _tmp_s             0097 GR
  2 _tmp_su            008F GR  |   2 _tmp_tg            0093 GR
  3 _treasure          03C3 GR  |   2 _ultmp             0080 GR
  2 _un                00E9 GR  |   2 _utmp              007D GR
  2 _volumeRegiste     0244 GR  |     _vstrcpy           **** GX
    _vstrlen           **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size  262   flags    0
   3 .text            size 37F7   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

