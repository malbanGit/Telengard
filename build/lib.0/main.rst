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
                             14 ; C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c
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
   1C85                     200 _msg:
   1C85 C9 C3               201 	.word	_msg_1
   1C87 C9 EB               202 	.word	_msg_2
   1C89 CA 13               203 	.word	_msg_3
   1C8B CA 3B               204 	.word	_msg_4
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
                            356 	.globl	_FP_X0_PACKED
                            357 	.area	.text
   1C8D                     358 _FP_X0_PACKED:
   1C8D 81                  359 	.byte	-127
   1C8E 58                  360 	.byte	88
   1C8F 83                  361 	.byte	-125
   1C90 12                  362 	.byte	18
   1C91 6E                  363 	.byte	110
                            364 	.globl	_FP_Y0_PACKED
   1C92                     365 _FP_Y0_PACKED:
   1C92 81                  366 	.byte	-127
   1C93 36                  367 	.byte	54
   1C94 C2                  368 	.byte	-62
   1C95 26                  369 	.byte	38
   1C96 82                  370 	.byte	-126
                            371 	.globl	_FP_Z0_PACKED
   1C97                     372 _FP_Z0_PACKED:
   1C97 81                  373 	.byte	-127
   1C98 1F                  374 	.byte	31
   1C99 83                  375 	.byte	-125
   1C9A 7B                  376 	.byte	123
   1C9B 4A                  377 	.byte	74
                            378 	.globl	_W0
   1C9C                     379 _W0:
   1C9C 12 56               380 	.word	4694
                            381 	.globl	_in1
   1C9E                     382 LC0:
   1C9E 53 41 4C 54 59 80   383 	.byte	83,65,76,84,89,-128,0
        00
   1CA5                     384 LC1:
   1CA5 42 4F 4C 44 80 00   385 	.byte	66,79,76,68,-128,0
   1CAB                     386 LC2:
   1CAB 4C 4F 55 44 80 00   387 	.byte	76,79,85,68,-128,0
   1CB1                     388 LC3:
   1CB1 4F 4C 44 80 00      389 	.byte	79,76,68,-128,0
   1CB6                     390 LC4:
   1CB6 47 4F 4F 44 4C 59   391 	.byte	71,79,79,68,76,89,-128,0
        80 00
   1CBE                     392 LC5:
   1CBE 57 4F 52 54 48 59   393 	.byte	87,79,82,84,72,89,-128,0
        80 00
   1CC6                     394 LC6:
   1CC6 4C 4F 46 54 59 80   395 	.byte	76,79,70,84,89,-128,0
        00
   1CCD                     396 LC7:
   1CCD 46 49 4E 45 80 00   397 	.byte	70,73,78,69,-128,0
   1CD3                     398 LC8:
   1CD3 52 4F 43 4B 59 80   399 	.byte	82,79,67,75,89,-128,0
        00
   1CDA                     400 LC9:
   1CDA 41 47 45 44 80 00   401 	.byte	65,71,69,68,-128,0
   1CE0                     402 _in1:
   1CE0 1C 9E               403 	.word	LC0
   1CE2 1C A5               404 	.word	LC1
   1CE4 1C AB               405 	.word	LC2
   1CE6 1C B1               406 	.word	LC3
   1CE8 1C B6               407 	.word	LC4
   1CEA 1C BE               408 	.word	LC5
   1CEC 1C C6               409 	.word	LC6
   1CEE 1C CD               410 	.word	LC7
   1CF0 1C D3               411 	.word	LC8
   1CF2 1C DA               412 	.word	LC9
                            413 	.globl	_in2
   1CF4                     414 LC10:
   1CF4 52 4F 41 44 80 00   415 	.byte	82,79,65,68,-128,0
   1CFA                     416 LC11:
   1CFA 45 59 45 80 00      417 	.byte	69,89,69,-128,0
   1CFF                     418 LC12:
   1CFF 54 4F 4F 54 48 80   419 	.byte	84,79,79,84,72,-128,0
        00
   1D06                     420 LC13:
   1D06 44 52 41 47 4F 4E   421 	.byte	68,82,65,71,79,78,-128,0
        80 00
   1D0E                     422 LC14:
   1D0E 4D 55 47 80 00      423 	.byte	77,85,71,-128,0
   1D13                     424 LC15:
   1D13 44 45 4D 4F 4E 80   425 	.byte	68,69,77,79,78,-128,0
        00
   1D1A                     426 LC16:
   1D1A 57 48 41 52 46 80   427 	.byte	87,72,65,82,70,-128,0
        00
   1D21                     428 LC17:
   1D21 42 52 49 44 47 45   429 	.byte	66,82,73,68,71,69,-128,0
        80 00
   1D29                     430 LC18:
   1D29 4D 45 41 44 45 80   431 	.byte	77,69,65,68,69,-128,0
        00
   1D30                     432 LC19:
   1D30 41 4C 45 80 00      433 	.byte	65,76,69,-128,0
   1D35                     434 _in2:
   1D35 1C F4               435 	.word	LC10
   1D37 1C FA               436 	.word	LC11
   1D39 1C FF               437 	.word	LC12
   1D3B 1D 06               438 	.word	LC13
   1D3D 1D 0E               439 	.word	LC14
   1D3F 1D 13               440 	.word	LC15
   1D41 1D 1A               441 	.word	LC16
   1D43 1D 21               442 	.word	LC17
   1D45 1D 29               443 	.word	LC18
   1D47 1D 30               444 	.word	LC19
                            445 	.globl	_in3
   1D49                     446 LC20:
   1D49 54 41 56 45 52 4E   447 	.byte	84,65,86,69,82,78,-128,0
        80 00
   1D51                     448 LC21:
   1D51 41 4C 45 48 4F 55   449 	.byte	65,76,69,72,79,85,83,69
        53 45
   1D59 80 00               450 	.byte	-128,0
   1D5B                     451 LC22:
   1D5B 43 45 4C 4C 41 52   452 	.byte	67,69,76,76,65,82,-128,0
        80 00
   1D63                     453 LC23:
   1D63 43 4C 55 42 80 00   454 	.byte	67,76,85,66,-128,0
   1D69                     455 LC24:
   1D69 49 4E 4E 80 00      456 	.byte	73,78,78,-128,0
   1D6E                     457 LC25:
   1D6E 48 4F 55 53 45 80   458 	.byte	72,79,85,83,69,-128,0
        00
   1D75                     459 LC26:
   1D75 4C 4F 44 47 45 80   460 	.byte	76,79,68,71,69,-128,0
        00
   1D7C                     461 LC27:
   1D7C 4D 45 41 44 48 41   462 	.byte	77,69,65,68,72,65,76,76
        4C 4C
   1D84 80 00               463 	.byte	-128,0
   1D86                     464 LC28:
   1D86 52 45 53 54 48 4F   465 	.byte	82,69,83,84,72,79,85,83
        55 53
   1D8E 45 80 00            466 	.byte	69,-128,0
   1D91                     467 _in3:
   1D91 1D 49               468 	.word	LC20
   1D93 1D 51               469 	.word	LC21
   1D95 1D 5B               470 	.word	LC22
   1D97 1D 63               471 	.word	LC23
   1D99 1D 69               472 	.word	LC24
   1D9B 1D 6E               473 	.word	LC25
   1D9D 1D 69               474 	.word	LC24
   1D9F 1D 75               475 	.word	LC26
   1DA1 1D 7C               476 	.word	LC27
   1DA3 1D 86               477 	.word	LC28
                            478 	.globl	_cube_c64_data
   1DA5                     479 _cube_c64_data:
   1DA5 EB                  480 	.byte	-21
   1DA6 27                  481 	.byte	39
   1DA7 01                  482 	.byte	1
   1DA8 00                  483 	.byte	0
   1DA9 8B                  484 	.byte	-117
   1DAA 8B                  485 	.byte	-117
   1DAB 8B                  486 	.byte	-117
   1DAC 8B                  487 	.byte	-117
   1DAD 8B                  488 	.byte	-117
   1DAE 8B                  489 	.byte	-117
   1DAF 8B                  490 	.byte	-117
   1DB0 8B                  491 	.byte	-117
   1DB1 8B                  492 	.byte	-117
   1DB2 AB                  493 	.byte	-85
   1DB3 16                  494 	.byte	22
   1DB4 01                  495 	.byte	1
   1DB5 8B                  496 	.byte	-117
   1DB6 8B                  497 	.byte	-117
   1DB7 8B                  498 	.byte	-117
   1DB8 8B                  499 	.byte	-117
   1DB9 8B                  500 	.byte	-117
   1DBA 8B                  501 	.byte	-117
   1DBB 8B                  502 	.byte	-117
   1DBC 8B                  503 	.byte	-117
   1DBD 8B                  504 	.byte	-117
   1DBE AB                  505 	.byte	-85
   1DBF 27                  506 	.byte	39
   1DC0 01                  507 	.byte	1
   1DC1 8B                  508 	.byte	-117
   1DC2 8B                  509 	.byte	-117
   1DC3 8B                  510 	.byte	-117
   1DC4 8B                  511 	.byte	-117
   1DC5 8B                  512 	.byte	-117
   1DC6 8B                  513 	.byte	-117
   1DC7 8B                  514 	.byte	-117
   1DC8 8B                  515 	.byte	-117
   1DC9 8B                  516 	.byte	-117
   1DCA AB                  517 	.byte	-85
   1DCB 4B                  518 	.byte	75
   1DCC 01                  519 	.byte	1
   1DCD 8B                  520 	.byte	-117
   1DCE 8B                  521 	.byte	-117
   1DCF 8B                  522 	.byte	-117
   1DD0 8B                  523 	.byte	-117
   1DD1 8B                  524 	.byte	-117
   1DD2 8B                  525 	.byte	-117
   1DD3 8B                  526 	.byte	-117
   1DD4 8B                  527 	.byte	-117
   1DD5 8B                  528 	.byte	-117
   1DD6 20                  529 	.byte	32
   1DD7 00                  530 	.byte	0
   1DD8 00                  531 	.byte	0
   1DD9 D0                  532 	.byte	-48
   1DDA 20                  533 	.byte	32
                            534 	.globl	_teleport_data
   1DDB                     535 _teleport_data:
   1DDB 6C                  536 	.byte	108
   1DDC 22                  537 	.byte	34
   1DDD 00                  538 	.byte	0
   1DDE 00                  539 	.byte	0
   1DDF 2B                  540 	.byte	43
   1DE0 21                  541 	.byte	33
   1DE1 00                  542 	.byte	0
   1DE2 6A                  543 	.byte	106
   1DE3 22                  544 	.byte	34
   1DE4 00                  545 	.byte	0
   1DE5 06                  546 	.byte	6
   1DE6 09                  547 	.byte	9
   1DE7 6C                  548 	.byte	108
   1DE8 21                  549 	.byte	33
   1DE9 00                  550 	.byte	0
   1DEA 00                  551 	.byte	0
   1DEB 2B                  552 	.byte	43
   1DEC 20                  553 	.byte	32
   1DED 00                  554 	.byte	0
   1DEE 6A                  555 	.byte	106
   1DEF 21                  556 	.byte	33
   1DF0 00                  557 	.byte	0
   1DF1 06                  558 	.byte	6
   1DF2 09                  559 	.byte	9
   1DF3 6C                  560 	.byte	108
   1DF4 20                  561 	.byte	32
   1DF5 00                  562 	.byte	0
   1DF6 00                  563 	.byte	0
   1DF7 2B                  564 	.byte	43
   1DF8 1F                  565 	.byte	31
   1DF9 00                  566 	.byte	0
   1DFA 6A                  567 	.byte	106
   1DFB 20                  568 	.byte	32
   1DFC 00                  569 	.byte	0
   1DFD 06                  570 	.byte	6
   1DFE 09                  571 	.byte	9
   1DFF 48                  572 	.byte	72
   1E00 1E                  573 	.byte	30
   1E01 6C                  574 	.byte	108
   1E02 1E                  575 	.byte	30
   1E03 00                  576 	.byte	0
   1E04 00                  577 	.byte	0
   1E05 2B                  578 	.byte	43
   1E06 1D                  579 	.byte	29
   1E07 00                  580 	.byte	0
   1E08 6A                  581 	.byte	106
   1E09 1E                  582 	.byte	30
   1E0A 00                  583 	.byte	0
   1E0B 06                  584 	.byte	6
   1E0C 09                  585 	.byte	9
   1E0D 48                  586 	.byte	72
   1E0E 1E                  587 	.byte	30
   1E0F 6C                  588 	.byte	108
   1E10 1D                  589 	.byte	29
   1E11 00                  590 	.byte	0
   1E12 00                  591 	.byte	0
   1E13 2B                  592 	.byte	43
   1E14 1C                  593 	.byte	28
   1E15 00                  594 	.byte	0
   1E16 6A                  595 	.byte	106
   1E17 1D                  596 	.byte	29
   1E18 00                  597 	.byte	0
   1E19 06                  598 	.byte	6
   1E1A 6C                  599 	.byte	108
   1E1B 1B                  600 	.byte	27
   1E1C 00                  601 	.byte	0
   1E1D 00                  602 	.byte	0
   1E1E 2B                  603 	.byte	43
   1E1F 1A                  604 	.byte	26
   1E20 00                  605 	.byte	0
   1E21 6A                  606 	.byte	106
   1E22 1B                  607 	.byte	27
   1E23 00                  608 	.byte	0
   1E24 06                  609 	.byte	6
   1E25 29                  610 	.byte	41
   1E26 19                  611 	.byte	25
   1E27 00                  612 	.byte	0
   1E28 6C                  613 	.byte	108
   1E29 16                  614 	.byte	22
   1E2A 00                  615 	.byte	0
   1E2B 00                  616 	.byte	0
   1E2C 0A                  617 	.byte	10
   1E2D 08                  618 	.byte	8
   1E2E B0                  619 	.byte	-80
   1E2F 14                  620 	.byte	20
   1E30 09                  621 	.byte	9
   1E31 90                  622 	.byte	-112
   1E32 90                  623 	.byte	-112
   1E33 90                  624 	.byte	-112
   1E34 2A                  625 	.byte	42
   1E35 16                  626 	.byte	22
   1E36 00                  627 	.byte	0
   1E37 08                  628 	.byte	8
   1E38 07                  629 	.byte	7
   1E39 B0                  630 	.byte	-80
   1E3A 14                  631 	.byte	20
   1E3B 09                  632 	.byte	9
   1E3C 90                  633 	.byte	-112
   1E3D 90                  634 	.byte	-112
   1E3E 90                  635 	.byte	-112
   1E3F 29                  636 	.byte	41
   1E40 16                  637 	.byte	22
   1E41 00                  638 	.byte	0
   1E42 07                  639 	.byte	7
   1E43 05                  640 	.byte	5
   1E44 B0                  641 	.byte	-80
   1E45 14                  642 	.byte	20
   1E46 09                  643 	.byte	9
   1E47 90                  644 	.byte	-112
   1E48 90                  645 	.byte	-112
   1E49 28                  646 	.byte	40
   1E4A 16                  647 	.byte	22
   1E4B 00                  648 	.byte	0
   1E4C 06                  649 	.byte	6
   1E4D 04                  650 	.byte	4
   1E4E B0                  651 	.byte	-80
   1E4F 14                  652 	.byte	20
   1E50 09                  653 	.byte	9
   1E51 90                  654 	.byte	-112
   1E52 90                  655 	.byte	-112
   1E53 27                  656 	.byte	39
   1E54 16                  657 	.byte	22
   1E55 00                  658 	.byte	0
   1E56 05                  659 	.byte	5
   1E57 03                  660 	.byte	3
   1E58 A8                  661 	.byte	-88
   1E59 01                  662 	.byte	1
   1E5A 00                  663 	.byte	0
   1E5B D0                  664 	.byte	-48
   1E5C 20                  665 	.byte	32
                            666 	.globl	_box_data
   1E5D                     667 _box_data:
   1E5D ED                  668 	.byte	-19
   1E5E 10                  669 	.byte	16
   1E5F 00                  670 	.byte	0
   1E60 00                  671 	.byte	0
   1E61 AD                  672 	.byte	-83
   1E62 11                  673 	.byte	17
   1E63 00                  674 	.byte	0
   1E64 8D                  675 	.byte	-115
   1E65 AD                  676 	.byte	-83
   1E66 12                  677 	.byte	18
   1E67 00                  678 	.byte	0
   1E68 8D                  679 	.byte	-115
   1E69 AA                  680 	.byte	-86
   1E6A 10                  681 	.byte	16
   1E6B 00                  682 	.byte	0
   1E6C 8A                  683 	.byte	-118
   1E6D AA                  684 	.byte	-86
   1E6E 11                  685 	.byte	17
   1E6F 00                  686 	.byte	0
   1E70 8A                  687 	.byte	-118
   1E71 AA                  688 	.byte	-86
   1E72 12                  689 	.byte	18
   1E73 00                  690 	.byte	0
   1E74 8A                  691 	.byte	-118
   1E75 A8                  692 	.byte	-88
   1E76 10                  693 	.byte	16
   1E77 00                  694 	.byte	0
   1E78 88                  695 	.byte	-120
   1E79 A8                  696 	.byte	-88
   1E7A 11                  697 	.byte	17
   1E7B 00                  698 	.byte	0
   1E7C B0                  699 	.byte	-80
   1E7D 00                  700 	.byte	0
   1E7E 00                  701 	.byte	0
   1E7F D0                  702 	.byte	-48
   1E80 20                  703 	.byte	32
                            704 	.globl	_dragon_data
   1E81                     705 _dragon_data:
   1E81 6A                  706 	.byte	106
   1E82 50                  707 	.byte	80
   1E83 05                  708 	.byte	5
   1E84 1E                  709 	.byte	30
   1E85 0A                  710 	.byte	10
   1E86 2B                  711 	.byte	43
   1E87 50                  712 	.byte	80
   1E88 06                  713 	.byte	6
   1E89 0B                  714 	.byte	11
   1E8A 2C                  715 	.byte	44
   1E8B 50                  716 	.byte	80
   1E8C 07                  717 	.byte	7
   1E8D 0C                  718 	.byte	12
   1E8E 6E                  719 	.byte	110
   1E8F 50                  720 	.byte	80
   1E90 08                  721 	.byte	8
   1E91 0A                  722 	.byte	10
   1E92 0E                  723 	.byte	14
   1E93 0E                  724 	.byte	14
   1E94 0E                  725 	.byte	14
   1E95 20                  726 	.byte	32
   1E96 00                  727 	.byte	0
   1E97 00                  728 	.byte	0
   1E98 00                  729 	.byte	0
   1E99 00                  730 	.byte	0
   1E9A 00                  731 	.byte	0
   1E9B 6C                  732 	.byte	108
   1E9C 50                  733 	.byte	80
   1E9D 07                  734 	.byte	7
   1E9E 1E                  735 	.byte	30
   1E9F 0C                  736 	.byte	12
   1EA0 2D                  737 	.byte	45
   1EA1 50                  738 	.byte	80
   1EA2 08                  739 	.byte	8
   1EA3 0D                  740 	.byte	13
   1EA4 2E                  741 	.byte	46
   1EA5 50                  742 	.byte	80
   1EA6 09                  743 	.byte	9
   1EA7 0E                  744 	.byte	14
   1EA8 6F                  745 	.byte	111
   1EA9 52                  746 	.byte	82
   1EAA 0A                  747 	.byte	10
   1EAB 0A                  748 	.byte	10
   1EAC 0F                  749 	.byte	15
   1EAD 0F                  750 	.byte	15
   1EAE 0F                  751 	.byte	15
   1EAF 20                  752 	.byte	32
   1EB0 00                  753 	.byte	0
   1EB1 00                  754 	.byte	0
   1EB2 00                  755 	.byte	0
   1EB3 00                  756 	.byte	0
   1EB4 00                  757 	.byte	0
   1EB5 6C                  758 	.byte	108
   1EB6 50                  759 	.byte	80
   1EB7 09                  760 	.byte	9
   1EB8 1E                  761 	.byte	30
   1EB9 0C                  762 	.byte	12
   1EBA 2D                  763 	.byte	45
   1EBB 00                  764 	.byte	0
   1EBC 0A                  765 	.byte	10
   1EBD 0D                  766 	.byte	13
   1EBE 2E                  767 	.byte	46
   1EBF 50                  768 	.byte	80
   1EC0 0A                  769 	.byte	10
   1EC1 0E                  770 	.byte	14
   1EC2 6F                  771 	.byte	111
   1EC3 52                  772 	.byte	82
   1EC4 0B                  773 	.byte	11
   1EC5 0A                  774 	.byte	10
   1EC6 0F                  775 	.byte	15
   1EC7 0F                  776 	.byte	15
   1EC8 90                  777 	.byte	-112
   1EC9 D0                  778 	.byte	-48
   1ECA 20                  779 	.byte	32
                            780 	.globl	_death_data
   1ECB                     781 _death_data:
   1ECB 6F                  782 	.byte	111
   1ECC FF                  783 	.byte	-1
   1ECD 01                  784 	.byte	1
   1ECE 1F                  785 	.byte	31
   1ECF 0F                  786 	.byte	15
   1ED0 0F                  787 	.byte	15
   1ED1 0F                  788 	.byte	15
   1ED2 0F                  789 	.byte	15
   1ED3 0F                  790 	.byte	15
   1ED4 0E                  791 	.byte	14
   1ED5 0E                  792 	.byte	14
   1ED6 0E                  793 	.byte	14
   1ED7 0E                  794 	.byte	14
   1ED8 0E                  795 	.byte	14
   1ED9 0D                  796 	.byte	13
   1EDA 0D                  797 	.byte	13
   1EDB 0D                  798 	.byte	13
   1EDC 0D                  799 	.byte	13
   1EDD 0D                  800 	.byte	13
   1EDE 0C                  801 	.byte	12
   1EDF 0C                  802 	.byte	12
   1EE0 0C                  803 	.byte	12
   1EE1 0C                  804 	.byte	12
   1EE2 0C                  805 	.byte	12
   1EE3 0C                  806 	.byte	12
   1EE4 0B                  807 	.byte	11
   1EE5 0B                  808 	.byte	11
   1EE6 0B                  809 	.byte	11
   1EE7 0B                  810 	.byte	11
   1EE8 0B                  811 	.byte	11
   1EE9 0A                  812 	.byte	10
   1EEA 0A                  813 	.byte	10
   1EEB 0A                  814 	.byte	10
   1EEC 0A                  815 	.byte	10
   1EED 0A                  816 	.byte	10
   1EEE 09                  817 	.byte	9
   1EEF 09                  818 	.byte	9
   1EF0 09                  819 	.byte	9
   1EF1 09                  820 	.byte	9
   1EF2 09                  821 	.byte	9
   1EF3 09                  822 	.byte	9
   1EF4 08                  823 	.byte	8
   1EF5 08                  824 	.byte	8
   1EF6 08                  825 	.byte	8
   1EF7 08                  826 	.byte	8
   1EF8 08                  827 	.byte	8
   1EF9 07                  828 	.byte	7
   1EFA 07                  829 	.byte	7
   1EFB 07                  830 	.byte	7
   1EFC 07                  831 	.byte	7
   1EFD 07                  832 	.byte	7
   1EFE B0                  833 	.byte	-80
   1EFF 00                  834 	.byte	0
   1F00 00                  835 	.byte	0
   1F01 D0                  836 	.byte	-48
   1F02 20                  837 	.byte	32
                            838 	.globl	_monsterDrawer
   1F03                     839 _monsterDrawer:
   1F03 52 EF               840 	.word	_drawGnoll
   1F05 52 F7               841 	.word	_drawKobold
   1F07 52 FF               842 	.word	_drawSkeleton
   1F09 53 07               843 	.word	_drawHobbit
   1F0B 53 0F               844 	.word	_drawZomnbie
   1F0D 53 17               845 	.word	_drawOrc
   1F0F 53 1F               846 	.word	_drawFighter
   1F11 53 27               847 	.word	_drawMummy
   1F13 53 2F               848 	.word	_drawElf
   1F15 53 37               849 	.word	_drawGhoul
   1F17 53 3F               850 	.word	_drawDwarf
   1F19 53 47               851 	.word	_drawTroll
   1F1B 53 4F               852 	.word	_drawWraith
   1F1D 53 57               853 	.word	_drawOgre
   1F1F 53 5F               854 	.word	_drawMinotaur
   1F21 53 67               855 	.word	_drawGiant
   1F23 53 6F               856 	.word	_drawSpecter
   1F25 53 77               857 	.word	_drawVampire
   1F27 53 7F               858 	.word	_drawDemon
   1F29 53 87               859 	.word	_drawDragon
                            860 	.globl	_environmentDrawer
   1F2B                     861 _environmentDrawer:
   1F2B 53 8F               862 	.word	_drawStaircase
   1F2D 53 BF               863 	.word	_drawNone
   1F2F 53 BF               864 	.word	_drawNone
   1F31 53 8F               865 	.word	_drawStaircase
   1F33 53 AF               866 	.word	_drawAltar
   1F35 53 A7               867 	.word	_drawFountain
   1F37 53 DE               868 	.word	_drawCube
   1F39 53 C0               869 	.word	_drawThrone
   1F3B 53 EF               870 	.word	_drawBox
   1F3D 53 BF               871 	.word	_drawNone
   1F3F                     872 LC29:
   1F3F 4F 52 49 47 49 4E   873 	.ascii	"ORIGINAL BY DANIEL MICHAEL LAWRENCE\0"
        41 4C 20 42 59 20
        44 41 4E 49 45 4C
        20 4D 49 43 48 41
        45 4C 20 4C 41 57
        52 45 4E 43 45 00
   1F63                     874 LC30:
   1F63 20 20 20 20 20 56   875 	.ascii	"     VECTREX VERSION BY MALBAN\0"
        45 43 54 52 45 58
        20 56 45 52 53 49
        4F 4E 20 42 59 20
        4D 41 4C 42 41 4E
        00
   1F82                     876 LC31:
   1F82 20 20 20 20 20 20   877 	.ascii	"        PRESS BUTTON TO PLAY\0"
        20 20 50 52 45 53
        53 20 42 55 54 54
        4F 4E 20 54 4F 20
        50 4C 41 59 00
   1F9F                     878 LC32:
   1F9F 20 20 20 20 20 20   879 	.ascii	"           GREETINGS TO:\0"
        20 20 20 20 20 47
        52 45 45 54 49 4E
        47 53 20 54 4F 3A
        00
   1FB8                     880 LC33:
   1FB8 20 20 20 20 20 50   881 	.ascii	"     PEER, BRETT AND PHILLIP\0"
        45 45 52 2C 20 42
        52 45 54 54 20 41
        4E 44 20 50 48 49
        4C 4C 49 50 00
   1FD5                     882 LC34:
   1FD5 20 20 20 20 54 49   883 	.ascii	"    TITLE MUSIC BY ROALD STRAUSS\0"
        54 4C 45 20 4D 55
        53 49 43 20 42 59
        20 52 4F 41 4C 44
        20 53 54 52 41 55
        53 53 00
   1FF6                     884 LC35:
   1FF6 20 20 20 20 49 4E   885 	.ascii	"    INTERNET: INDIEGAMEMUSIC.COM\0"
        54 45 52 4E 45 54
        3A 20 49 4E 44 49
        45 47 41 4D 45 4D
        55 53 49 43 2E 43
        4F 4D 00
   2017                     886 LC36:
   2017 20 20 20 20 20 20   887 	.ascii	"             THANKS!!!\0"
        20 20 20 20 20 20
        20 54 48 41 4E 4B
        53 21 21 21 00
                            888 	.globl	_titleScreen
   202E                     889 _titleScreen:
   202E 34 40         [ 6]  890 	pshs	u	;
   2030 32 7D         [ 5]  891 	leas	-3,s	;,,
                            892 ;----- asm -----
                            893 ; 249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            894 	; #ENR#[248]m = 0;
                            895 ;--- end asm ---
   2032 7F C9 62      [ 7]  896 	clr	_m	; m
                            897 ;----- asm -----
                            898 ; 251 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            899 	; #ENR#[249]initsong();
                            900 ;--- end asm ---
   2035 BD 10 AA      [ 8]  901 	jsr	_initSong
                            902 ;----- asm -----
                            903 ; 253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            904 	; #ENR#[250]titlestart:
                            905 ;--- end asm ---
   2038                     906 L2:
                            907 ;----- asm -----
                            908 ; 255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            909 	; #ENR#[251]_xc=-0x60;
                            910 ;--- end asm ---
   2038 C6 A0         [ 2]  911 	ldb	#-96	;,
   203A F7 C9 C0      [ 5]  912 	stb	__XC	;, _XC
                            913 ;----- asm -----
                            914 ; 258 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            915 	; #ENR#[253]ltmp=title_timer;
                            916 ;--- end asm ---
   203D 8E 00 96      [ 3]  917 	ldx	#150	;,
   2040 BF C9 02      [ 6]  918 	stx	_ltmp	;, ltmp
                            919 ;----- asm -----
                            920 ; 260 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            921 	; #ENR#[254]int stage = 0;
                            922 ; 262 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            923 	; #ENR#[255]printmessage();
                            924 ;--- end asm ---
   2043 8E 1F 3F      [ 3]  925 	ldx	#LC29	;,
   2046 BD 3D 27      [ 8]  926 	jsr	_printMessage
                            927 ;----- asm -----
                            928 ; 264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            929 	; #ENR#[256]printmessage();
                            930 ;--- end asm ---
   2049 8E 1F 63      [ 3]  931 	ldx	#LC30	;,
   204C BD 3D 27      [ 8]  932 	jsr	_printMessage
                            933 ;----- asm -----
                            934 ; 266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            935 	; #ENR#[257]while(1)
                            936 ;--- end asm ---
   204F 6F 62         [ 7]  937 	clr	2,s	; stage
   2051 20 21         [ 3]  938 	bra	L8	;
   2053                     939 L4:
                            940 ;----- asm -----
                            941 ; 326 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            942 	; #ENR#[293]if (stage == 1)
                            943 ;--- end asm ---
   2053 E6 62         [ 5]  944 	ldb	2,s	;, stage
   2055 C1 01         [ 2]  945 	cmpb	#1	;cmpqi:	;,
   2057 10 27 00 99   [ 6]  946 	lbeq	L12	;
   205B                     947 L5:
                            948 ;----- asm -----
                            949 ; 332 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            950 	; #ENR#[297]if (stage == 2)
                            951 ;--- end asm ---
   205B C1 02         [ 2]  952 	cmpb	#2	;cmpqi:	;,
   205D 10 27 00 A1   [ 6]  953 	lbeq	L13	;
   2061                     954 L6:
                            955 ;----- asm -----
                            956 ; 341 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            957 	; #ENR#[303]if (stage == 3)
                            958 ;--- end asm ---
   2061 C1 03         [ 2]  959 	cmpb	#3	;cmpqi:	;,
   2063 10 27 00 AF   [ 6]  960 	lbeq	L14	;
   2067                     961 L7:
                            962 ;----- asm -----
                            963 ; 351 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            964 	; #ENR#[309]if (stage == 4)
                            965 ;--- end asm ---
   2067 C1 04         [ 2]  966 	cmpb	#4	;cmpqi:	;,
   2069 10 27 00 C3   [ 6]  967 	lbeq	L15	;
   206D                     968 L3:
                            969 ;----- asm -----
                            970 ; 359 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            971 	; #ENR#[315]if (buttons_pressed())break;
                            972 ;--- end asm ---
   206D 7D C8 11      [ 7]  973 	tst	_Vec_Buttons	; Vec_Buttons
   2070 10 26 00 BF   [ 6]  974 	lbne	L16	;
   2074                     975 L8:
                            976 ;----- asm -----
                            977 ; 269 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            978 	; #ENR#[259]check_buttons();
                            979 ;--- end asm ---
   2074 BD F1 BA      [ 8]  980 	jsr	___Read_Btns
                            981 ;----- asm -----
                            982 ; 272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            983 	; #ENR#[261]playsong();
                            984 ;--- end asm ---
   2077 BD 00 98      [ 8]  985 	jsr	_playSong
                            986 ;----- asm -----
                            987 ; 274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            988 	; #ENR#[262]wait_recal();
                            989 ;--- end asm ---
   207A BD F1 92      [ 8]  990 	jsr	___Wait_Recal
                            991 ;----- asm -----
                            992 ; 276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            993 	; #ENR#[263]dp_via_t1_cnt_lo  = 0x80;
                            994 ;--- end asm ---
   207D C6 80         [ 2]  995 	ldb	#-128	;,
   207F D7 04         [ 4]  996 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                            997 ;----- asm -----
                            998 ; 278 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                            999 	; #ENR#[264]intensity_a(0x4f);
                           1000 ;--- end asm ---
   2081 C6 4F         [ 2] 1001 	ldb	#79	;,
   2083 BD 7F 68      [ 8] 1002 	jsr	__Intensity_a
                           1003 ;----- asm -----
                           1004 ; 280 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1005 	; #ENR#[265]displaymessages();
                           1006 ;--- end asm ---
   2086 5F            [ 2] 1007 	clrb	;
   2087 BD 00 83      [ 8] 1008 	jsr	_subBank1
                           1009 ;----- asm -----
                           1010 ; 282 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1011 	; #ENR#[266]intensity_a(0x3f);
                           1012 ;--- end asm ---
   208A C6 3F         [ 2] 1013 	ldb	#63	;,
   208C BD 7F 68      [ 8] 1014 	jsr	__Intensity_a
                           1015 ;----- asm -----
                           1016 ; 285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1017 	; #ENR#[268]dp_via_t1_cnt_lo  = 0x09;
                           1018 ;--- end asm ---
   208F C6 09         [ 2] 1019 	ldb	#9	;,
   2091 D7 04         [ 4] 1020 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1021 ;----- asm -----
                           1022 ; 287 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1023 	; #ENR#[269]dp_via_cntl = 0xce;
                           1024 ;--- end asm ---
   2093 C6 CE         [ 2] 1025 	ldb	#-50	;,
   2095 D7 0C         [ 4] 1026 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1027 ;----- asm -----
                           1028 ; 289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1029 	; #ENR#[270]monsterdrawer[m]();
                           1030 ;--- end asm ---
   2097 F6 C9 62      [ 5] 1031 	ldb	_m	;, m
   209A 1D            [ 2] 1032 	sex		;extendqihi2: R:b -> R:d	;,
   209B ED E4         [ 5] 1033 	std	,s	;,
   209D 58            [ 2] 1034 	aslb	;
   209E 49            [ 2] 1035 	rola	;
   209F 1F 01         [ 6] 1036 	tfr	d,x	;, tmp33
   20A1 AD 99 1F 03   [14] 1037 	jsr	[_monsterDrawer,x]
                           1038 ;----- asm -----
                           1039 ; 291 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1040 	; #ENR#[271]__ass(::: ,,,);
                           1041 ; 292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   20A5 4F            [ 2] 1042 	clra
   20A6 97 0A         [ 4] 1043 	sta *0x0a
                           1044 ; 294 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1045 	; #ENR#[273]dp_via_t1_cnt_lo  = 0x80;
                           1046 ;--- end asm ---
   20A8 C6 80         [ 2] 1047 	ldb	#-128	;,
   20AA D7 04         [ 4] 1048 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1049 ;----- asm -----
                           1050 ; 300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1051 	; #ENR#[278]moveto_d(0,30);
                           1052 ;--- end asm ---
   20AC 6F E2         [ 8] 1053 	clr	,-s	;
   20AE C6 1E         [ 2] 1054 	ldb	#30	;,
   20B0 BD 7F B7      [ 8] 1055 	jsr	__Moveto_d
                           1056 ;----- asm -----
                           1057 ; 303 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1058 	; #ENR#[280]dp_via_t1_cnt_lo  = 0x09;
                           1059 ;--- end asm ---
   20B3 C6 09         [ 2] 1060 	ldb	#9	;,
   20B5 D7 04         [ 4] 1061 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1062 ;----- asm -----
                           1063 ; 305 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1064 	; #ENR#[281]dp_via_cntl = 0xce;
                           1065 ;--- end asm ---
   20B7 C6 CE         [ 2] 1066 	ldb	#-50	;,
   20B9 D7 0C         [ 4] 1067 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1068 ;----- asm -----
                           1069 ; 307 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1070 	; #ENR#[282]drawplayer();
                           1071 ;--- end asm ---
   20BB BD 52 E7      [ 8] 1072 	jsr	_drawPlayer
                           1073 ;----- asm -----
                           1074 ; 311 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1075 	; #ENR#[285]drawtitle();
                           1076 ;--- end asm ---
   20BE BD 4A CD      [ 8] 1077 	jsr	_drawTitle
                           1078 ;----- asm -----
                           1079 ; 313 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1080 	; #ENR#[286]if (ltmp-- == 0)
                           1081 ;--- end asm ---
   20C1 BE C9 02      [ 6] 1082 	ldx	_ltmp	; ltmp.3, ltmp
   20C4 33 1F         [ 5] 1083 	leau	-1,x	;,, ltmp.3
   20C6 FF C9 02      [ 6] 1084 	stu	_ltmp	;, ltmp
   20C9 32 61         [ 5] 1085 	leas	1,s	;,,
   20CB 8C 00 00      [ 4] 1086 	cmpx	#0	; ltmp.3
   20CE 10 26 FF 9B   [ 6] 1087 	lbne	L3	;
                           1088 ;----- asm -----
                           1089 ; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1090 	; #ENR#[288]ltmp = title_timer;
                           1091 ;--- end asm ---
   20D2 8E 00 96      [ 3] 1092 	ldx	#150	;,
   20D5 BF C9 02      [ 6] 1093 	stx	_ltmp	;, ltmp
                           1094 ;----- asm -----
                           1095 ; 318 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1096 	; #ENR#[289]clearmessage();
                           1097 ;--- end asm ---
   20D8 7F C9 C2      [ 7] 1098 	clr	_msgLine	; msgLine
                           1099 ;----- asm -----
                           1100 ; 320 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1101 	; #ENR#[290]stage++;
                           1102 ;--- end asm ---
   20DB 6C 62         [ 7] 1103 	inc	2,s	; stage
                           1104 ;----- asm -----
                           1105 ; 322 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1106 	; #ENR#[291]m++;
                           1107 ;--- end asm ---
   20DD 7C C9 62      [ 7] 1108 	inc	_m	; m
   20E0 F6 C9 62      [ 5] 1109 	ldb	_m	; m.5, m
                           1110 ;----- asm -----
                           1111 ; 324 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1112 	; #ENR#[292]if (m==20) m=0;
                           1113 ;--- end asm ---
   20E3 C1 14         [ 2] 1114 	cmpb	#20	;cmpqi:	; m.5,
   20E5 10 26 FF 6A   [ 6] 1115 	lbne	L4	;
   20E9 7F C9 62      [ 7] 1116 	clr	_m	; m
                           1117 ;----- asm -----
                           1118 ; 326 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1119 	; #ENR#[293]if (stage == 1)
                           1120 ;--- end asm ---
   20EC E6 62         [ 5] 1121 	ldb	2,s	;, stage
   20EE C1 01         [ 2] 1122 	cmpb	#1	;cmpqi:	;,
   20F0 10 26 FF 67   [ 6] 1123 	lbne	L5	;
   20F4                    1124 L12:
                           1125 ;----- asm -----
                           1126 ; 329 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1127 	; #ENR#[295]printmessage();
                           1128 ;--- end asm ---
   20F4 8E 1F 82      [ 3] 1129 	ldx	#LC31	;,
   20F7 BD 3D 27      [ 8] 1130 	jsr	_printMessage
   20FA E6 62         [ 5] 1131 	ldb	2,s	;, stage
                           1132 ;----- asm -----
                           1133 ; 332 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1134 	; #ENR#[297]if (stage == 2)
                           1135 ;--- end asm ---
   20FC C1 02         [ 2] 1136 	cmpb	#2	;cmpqi:	;,
   20FE 10 26 FF 5F   [ 6] 1137 	lbne	L6	;
   2102                    1138 L13:
                           1139 ;----- asm -----
                           1140 ; 335 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1141 	; #ENR#[299]printmessage();
                           1142 ;--- end asm ---
   2102 8E 1F 9F      [ 3] 1143 	ldx	#LC32	;,
   2105 BD 3D 27      [ 8] 1144 	jsr	_printMessage
                           1145 ;----- asm -----
                           1146 ; 337 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1147 	; #ENR#[300]printmessage();
                           1148 ;--- end asm ---
   2108 8E 1F B8      [ 3] 1149 	ldx	#LC33	;,
   210B BD 3D 27      [ 8] 1150 	jsr	_printMessage
   210E E6 62         [ 5] 1151 	ldb	2,s	;, stage
                           1152 ;----- asm -----
                           1153 ; 341 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1154 	; #ENR#[303]if (stage == 3)
                           1155 ;--- end asm ---
   2110 C1 03         [ 2] 1156 	cmpb	#3	;cmpqi:	;,
   2112 10 26 FF 51   [ 6] 1157 	lbne	L7	;
   2116                    1158 L14:
                           1159 ;----- asm -----
                           1160 ; 344 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1161 	; #ENR#[305]printmessage();
                           1162 ;--- end asm ---
   2116 8E 1F D5      [ 3] 1163 	ldx	#LC34	;,
   2119 BD 3D 27      [ 8] 1164 	jsr	_printMessage
                           1165 ;----- asm -----
                           1166 ; 346 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1167 	; #ENR#[306]printmessage();
                           1168 ;--- end asm ---
   211C 8E 1F F6      [ 3] 1169 	ldx	#LC35	;,
   211F BD 3D 27      [ 8] 1170 	jsr	_printMessage
                           1171 ;----- asm -----
                           1172 ; 348 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1173 	; #ENR#[307]printmessage();
                           1174 ;--- end asm ---
   2122 8E 20 17      [ 3] 1175 	ldx	#LC36	;,
   2125 BD 3D 27      [ 8] 1176 	jsr	_printMessage
   2128 E6 62         [ 5] 1177 	ldb	2,s	;, stage
                           1178 ;----- asm -----
                           1179 ; 351 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1180 	; #ENR#[309]if (stage == 4)
                           1181 ;--- end asm ---
   212A C1 04         [ 2] 1182 	cmpb	#4	;cmpqi:	;,
   212C 10 26 FF 3D   [ 6] 1183 	lbne	L3	;
   2130                    1184 L15:
                           1185 ;----- asm -----
                           1186 ; 354 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1187 	; #ENR#[311]goto titlestart;
                           1188 ;--- end asm ---
   2130 16 FF 05      [ 5] 1189 	lbra	L2	;
   2133                    1190 L16:
                           1191 ;----- asm -----
                           1192 ; 362 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1193 	; #ENR#[317]vec_music_wk_7 = 0x3f;
                           1194 ;--- end asm ---
   2133 C6 3F         [ 2] 1195 	ldb	#63	;,
   2135 F7 C8 45      [ 5] 1196 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                           1197 ;----- asm -----
                           1198 ; 364 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1199 	; #ENR#[318]vec_xxx_04 = 0x0;
                           1200 ;--- end asm ---
   2138 7F C8 44      [ 7] 1201 	clr	_Vec_XXX_04	; Vec_XXX_04
                           1202 ;----- asm -----
                           1203 ; 366 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1204 	; #ENR#[319]vec_xxx_03 = 0x0;
                           1205 ;--- end asm ---
   213B 7F C8 43      [ 7] 1206 	clr	_Vec_XXX_03	; Vec_XXX_03
                           1207 ;----- asm -----
                           1208 ; 368 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1209 	; #ENR#[320]vec_music_wk_a = 0x0;
                           1210 ;--- end asm ---
   213E 7F C8 42      [ 7] 1211 	clr	_Vec_Music_Wk_A	; Vec_Music_Wk_A
                           1212 ;----- asm -----
                           1213 ; 374 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1214 	; #ENR#[325]m=-1;
                           1215 ;--- end asm ---
   2141 C6 FF         [ 2] 1216 	ldb	#-1	;,
   2143 F7 C9 62      [ 5] 1217 	stb	_m	;, m
                           1218 ;----- asm -----
                           1219 ; 376 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1220 	; #ENR#[326]_xc = 0x70;
                           1221 ;--- end asm ---
   2146 C6 70         [ 2] 1222 	ldb	#112	;,
   2148 F7 C9 C0      [ 5] 1223 	stb	__XC	;, _XC
   214B 32 63         [ 5] 1224 	leas	3,s	;,,
   214D 35 C0         [ 7] 1225 	puls	u,pc	;
                           1226 	.globl	_getMapPos
   214F                    1227 _getMapPos:
   214F 34 60         [ 7] 1228 	pshs	y,u	;
   2151 32 7D         [ 5] 1229 	leas	-3,s	;,,
   2153 E7 E4         [ 4] 1230 	stb	,s	; x, x
                           1231 ;----- asm -----
                           1232 ; 402 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1233 	; #ENR#[351]mulif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
                           1234 ;--- end asm ---
   2155 8E CA 6B      [ 3] 1235 	ldx	#_fpackX0x	;,
   2158 34 10         [ 6] 1236 	pshs	x	;
   215A 8E 1C 8D      [ 3] 1237 	ldx	#_FP_X0_PACKED	;,
   215D 34 10         [ 6] 1238 	pshs	x	;
   215F 4F            [ 2] 1239 	clra		;zero_extendqihi: R:b -> R:d	; x,
   2160 1F 01         [ 6] 1240 	tfr	d,x	;,
   2162 BD 15 16      [ 8] 1241 	jsr	_mulIF
                           1242 ;----- asm -----
                           1243 ; 404 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1244 	; #ENR#[352]mulif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
                           1245 ;--- end asm ---
   2165 8E CA 70      [ 3] 1246 	ldx	#_fpackY0y	;,
   2168 34 10         [ 6] 1247 	pshs	x	;
   216A 8E 1C 92      [ 3] 1248 	ldx	#_FP_Y0_PACKED	;,
   216D 34 10         [ 6] 1249 	pshs	x	;
   216F E6 E8 11      [ 5] 1250 	ldb	17,s	;, y
   2172 4F            [ 2] 1251 	clra		;zero_extendqihi: R:b -> R:d	;,
   2173 1F 01         [ 6] 1252 	tfr	d,x	;,
   2175 BD 15 16      [ 8] 1253 	jsr	_mulIF
                           1254 ;----- asm -----
                           1255 ; 406 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1256 	; #ENR#[353]mulif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
                           1257 ;--- end asm ---
   2178 CE 1C 97      [ 3] 1258 	ldu	#_FP_Z0_PACKED	; FP_Z0_PACKED.8,
   217B 32 68         [ 5] 1259 	leas	8,s	;,,
   217D 10 8E CA 75   [ 4] 1260 	ldy	#_fpackZ0z	; tmp46,
   2181 34 20         [ 6] 1261 	pshs	y	; tmp46
   2183 34 40         [ 6] 1262 	pshs	u	; FP_Z0_PACKED.8
   2185 E6 6E         [ 5] 1263 	ldb	14,s	;, z
   2187 4F            [ 2] 1264 	clra		;zero_extendqihi: R:b -> R:d	;,
   2188 1F 01         [ 6] 1265 	tfr	d,x	;,
   218A BD 15 16      [ 8] 1266 	jsr	_mulIF
                           1267 ;----- asm -----
                           1268 ; 409 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1269 	; #ENR#[355]addf(fpackx0x, fpacky0y, fpacktmp1);
                           1270 ;--- end asm ---
   218D 8E CA 7A      [ 3] 1271 	ldx	#_fpacktmp1	;,
   2190 34 10         [ 6] 1272 	pshs	x	;
   2192 8E CA 70      [ 3] 1273 	ldx	#_fpackY0y	;,
   2195 34 10         [ 6] 1274 	pshs	x	;
   2197 8E CA 6B      [ 3] 1275 	ldx	#_fpackX0x	;,
   219A BD 15 31      [ 8] 1276 	jsr	_addF
                           1277 ;----- asm -----
                           1278 ; 411 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1279 	; #ENR#[356]addf(fpackz0z, fpacktmp1, fpacktmp1);
                           1280 ;--- end asm ---
   219D 32 68         [ 5] 1281 	leas	8,s	;,,
   219F 8E CA 7A      [ 3] 1282 	ldx	#_fpacktmp1	;,
   21A2 34 10         [ 6] 1283 	pshs	x	;
   21A4 34 10         [ 6] 1284 	pshs	x	;
   21A6 30 A4         [ 4] 1285 	leax	,y	;, tmp46
   21A8 BD 15 31      [ 8] 1286 	jsr	_addF
                           1287 ;----- asm -----
                           1288 ; 414 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1289 	; #ENR#[358]addif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
                           1290 ;--- end asm ---
   21AB 8E CA 6B      [ 3] 1291 	ldx	#_fpackX0x	;,
   21AE 34 10         [ 6] 1292 	pshs	x	;
   21B0 8E 1C 8D      [ 3] 1293 	ldx	#_FP_X0_PACKED	;,
   21B3 34 10         [ 6] 1294 	pshs	x	;
   21B5 E6 68         [ 5] 1295 	ldb	8,s	;, x
   21B7 4F            [ 2] 1296 	clra		;zero_extendqihi: R:b -> R:d	;,
   21B8 1F 01         [ 6] 1297 	tfr	d,x	;,
   21BA BD 15 3E      [ 8] 1298 	jsr	_addIF
                           1299 ;----- asm -----
                           1300 ; 416 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1301 	; #ENR#[359]addif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
                           1302 ;--- end asm ---
   21BD 32 68         [ 5] 1303 	leas	8,s	;,,
   21BF 8E CA 70      [ 3] 1304 	ldx	#_fpackY0y	;,
   21C2 34 10         [ 6] 1305 	pshs	x	;
   21C4 8E 1C 92      [ 3] 1306 	ldx	#_FP_Y0_PACKED	;,
   21C7 34 10         [ 6] 1307 	pshs	x	;
   21C9 E6 6D         [ 5] 1308 	ldb	13,s	;, y
   21CB 4F            [ 2] 1309 	clra		;zero_extendqihi: R:b -> R:d	;,
   21CC 1F 01         [ 6] 1310 	tfr	d,x	;,
   21CE BD 15 3E      [ 8] 1311 	jsr	_addIF
                           1312 ;----- asm -----
                           1313 ; 418 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1314 	; #ENR#[360]addif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
                           1315 ;--- end asm ---
   21D1 34 20         [ 6] 1316 	pshs	y	; tmp46
   21D3 34 40         [ 6] 1317 	pshs	u	; FP_Z0_PACKED.8
   21D5 E6 E8 12      [ 5] 1318 	ldb	18,s	;, z
   21D8 4F            [ 2] 1319 	clra		;zero_extendqihi: R:b -> R:d	;,
   21D9 1F 01         [ 6] 1320 	tfr	d,x	;,
   21DB BD 15 3E      [ 8] 1321 	jsr	_addIF
                           1322 ;----- asm -----
                           1323 ; 421 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1324 	; #ENR#[362]mulf(fpackx0x, fpacky0y, fpacktmp2);
                           1325 ;--- end asm ---
   21DE 32 68         [ 5] 1326 	leas	8,s	;,,
   21E0 CE CA 7F      [ 3] 1327 	ldu	#_fpacktmp2	; tmp54,
   21E3 34 40         [ 6] 1328 	pshs	u	; tmp54
   21E5 8E CA 70      [ 3] 1329 	ldx	#_fpackY0y	;,
   21E8 34 10         [ 6] 1330 	pshs	x	;
   21EA 8E CA 6B      [ 3] 1331 	ldx	#_fpackX0x	;,
   21ED BD 15 24      [ 8] 1332 	jsr	_mulF
                           1333 ;----- asm -----
                           1334 ; 423 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1335 	; #ENR#[363]mulf(fpackz0z, fpacktmp2, fpacktmp2);
                           1336 ;--- end asm ---
   21F0 34 40         [ 6] 1337 	pshs	u	; tmp54
   21F2 34 40         [ 6] 1338 	pshs	u	; tmp54
   21F4 30 A4         [ 4] 1339 	leax	,y	;, tmp46
   21F6 BD 15 24      [ 8] 1340 	jsr	_mulF
                           1341 ;----- asm -----
                           1342 ; 426 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1343 	; #ENR#[365]addf(fpacktmp1, fpacktmp2, fpackq);
                           1344 ;--- end asm ---
   21F9 32 68         [ 5] 1345 	leas	8,s	;,,
   21FB 10 8E CA 84   [ 4] 1346 	ldy	#_fpackQ	; tmp58,
   21FF 34 20         [ 6] 1347 	pshs	y	; tmp58
   2201 34 40         [ 6] 1348 	pshs	u	; tmp54
   2203 8E CA 7A      [ 3] 1349 	ldx	#_fpacktmp1	;,
   2206 BD 15 31      [ 8] 1350 	jsr	_addF
                           1351 ;----- asm -----
                           1352 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1353 	; #ENR#[373]intf(fpackq, fpacktmp2);
                           1354 ;--- end asm ---
   2209 34 40         [ 6] 1355 	pshs	u	; tmp54
   220B 30 A4         [ 4] 1356 	leax	,y	;, tmp58
   220D BD 15 5B      [ 8] 1357 	jsr	_intF
                           1358 ;----- asm -----
                           1359 ; 437 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1360 	; #ENR#[374]subf(fpackq, fpacktmp2, fpacktmp1);
                           1361 ;--- end asm ---
   2210 8E CA 7A      [ 3] 1362 	ldx	#_fpacktmp1	;,
   2213 34 10         [ 6] 1363 	pshs	x	;
   2215 34 40         [ 6] 1364 	pshs	u	; tmp54
   2217 30 A4         [ 4] 1365 	leax	,y	;, tmp58
   2219 BD 15 4C      [ 8] 1366 	jsr	_subF
                           1367 ;----- asm -----
                           1368 ; 439 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1369 	; #ENR#[375]mulif((unsigned long int)w0, fpacktmp1, fpacktmp1);
                           1370 ;--- end asm ---
   221C 32 6A         [ 5] 1371 	leas	10,s	;,,
   221E 8E CA 7A      [ 3] 1372 	ldx	#_fpacktmp1	;,
   2221 34 10         [ 6] 1373 	pshs	x	;
   2223 34 10         [ 6] 1374 	pshs	x	;
   2225 8E 12 56      [ 3] 1375 	ldx	#4694	;,
   2228 BD 15 16      [ 8] 1376 	jsr	_mulIF
                           1377 ;----- asm -----
                           1378 ; 442 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1379 	; #ENR#[377]unsigned long int h = (unsigned long int) toint(fpacktmp1);
                           1380 ;--- end asm ---
   222B 8E CA 7A      [ 3] 1381 	ldx	#_fpacktmp1	;,
   222E BD 15 65      [ 8] 1382 	jsr	_toInt
   2231 AF 65         [ 6] 1383 	stx	5,s	;, h
                           1384 ;----- asm -----
                           1385 ; 447 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1386 	; #ENR#[381]if (((h>>8)&0xff) >5) h = h & 0xff;
                           1387 ;--- end asm ---
   2233 1F 10         [ 6] 1388 	tfr	x,d	;, tmp65
   2235 1F 89         [ 6] 1389 	tfr	a,b	;,
   2237 4F            [ 2] 1390 	clra		;zero_extendqihi: R:b -> R:d	;,
   2238 32 64         [ 5] 1391 	leas	4,s	;,,
   223A 10 83 00 05   [ 5] 1392 	cmpd	#5	;cmphi:	; tmp65,
   223E 23 05         [ 3] 1393 	bls	L18	;
   2240 EC 61         [ 6] 1394 	ldd	1,s	;, h
   2242 4F            [ 2] 1395 	clra	;andqi(ZERO)	;
                           1396 		;andqi(-1)
   2243 ED 61         [ 6] 1397 	std	1,s	;, h
   2245                    1398 L18:
                           1399 ;----- asm -----
                           1400 ; 451 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1401 	; #ENR#[384]if ((h&0xff00) > 0)
                           1402 ;--- end asm ---
   2245 EC 61         [ 6] 1403 	ldd	1,s	; tmp66, h
                           1404 		;andqi(-1)
   2247 5F            [ 2] 1405 	clrb	;andqi(ZERO)	;
   2248 10 83 00 00   [ 5] 1406 	cmpd	#0	; tmp66
   224C 26 2A         [ 3] 1407 	bne	L29	;
   224E                    1408 L19:
                           1409 ;----- asm -----
                           1410 ; 503 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1411 	; #ENR#[425]if ((x == 1) || (x == 201)) h = h | 12;
                           1412 ;--- end asm ---
   224E E6 E4         [ 4] 1413 	ldb	,s	;, x
   2250 C1 01         [ 2] 1414 	cmpb	#1	;cmpqi:	;,
   2252 27 1C         [ 3] 1415 	beq	L24	;
   2254 C1 C9         [ 2] 1416 	cmpb	#-55	;cmpqi:	;,
   2256 27 18         [ 3] 1417 	beq	L24	;
   2258                    1418 L25:
                           1419 ;----- asm -----
                           1420 ; 505 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1421 	; #ENR#[426]if ((y == 1) || (y == 201)) h = h | 3;
                           1422 ;--- end asm ---
   2258 E6 69         [ 5] 1423 	ldb	9,s	;, y
   225A C1 01         [ 2] 1424 	cmpb	#1	;cmpqi:	;,
   225C 27 0A         [ 3] 1425 	beq	L26	;
   225E C1 C9         [ 2] 1426 	cmpb	#-55	;cmpqi:	;,
   2260 27 06         [ 3] 1427 	beq	L26	;
   2262                    1428 L27:
                           1429 ;----- asm -----
                           1430 ; 508 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1431 	; #ENR#[428]return h;
                           1432 ;--- end asm ---
   2262 AE 61         [ 6] 1433 	ldx	1,s	;, h
   2264 32 63         [ 5] 1434 	leas	3,s	;,,
   2266 35 E0         [ 8] 1435 	puls	y,u,pc	;
   2268                    1436 L26:
   2268 EC 61         [ 6] 1437 	ldd	1,s	;, h
                           1438 		;iorqi(ZERO)
   226A CA 03         [ 2] 1439 	orb	#3	;,
   226C ED 61         [ 6] 1440 	std	1,s	;, h
   226E 20 F2         [ 3] 1441 	bra	L27	;
   2270                    1442 L24:
   2270 EC 61         [ 6] 1443 	ldd	1,s	;, h
                           1444 		;iorqi(ZERO)
   2272 CA 0C         [ 2] 1445 	orb	#12	;,
   2274 ED 61         [ 6] 1446 	std	1,s	;, h
   2276 20 E0         [ 3] 1447 	bra	L25	;
   2278                    1448 L29:
                           1449 ;----- asm -----
                           1450 ; 457 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1451 	; #ENR#[389]mulif((unsigned long int)10, fpackq, fpackq);
                           1452 ;--- end asm ---
   2278 CE CA 84      [ 3] 1453 	ldu	#_fpackQ	; tmp67,
   227B 34 40         [ 6] 1454 	pshs	u	; tmp67
   227D 34 40         [ 6] 1455 	pshs	u	; tmp67
   227F 8E 00 0A      [ 3] 1456 	ldx	#10	;,
   2282 BD 15 16      [ 8] 1457 	jsr	_mulIF
                           1458 ;----- asm -----
                           1459 ; 461 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1460 	; #ENR#[392]intf(fpackq, fpacktmp2);
                           1461 ;--- end asm ---
   2285 8E CA 7F      [ 3] 1462 	ldx	#_fpacktmp2	;,
   2288 34 10         [ 6] 1463 	pshs	x	;
   228A 30 C4         [ 4] 1464 	leax	,u	;, tmp67
   228C BD 15 5B      [ 8] 1465 	jsr	_intF
                           1466 ;----- asm -----
                           1467 ; 463 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1468 	; #ENR#[393]subf(fpackq, fpacktmp2, fpacktmp1);
                           1469 ;--- end asm ---
   228F 10 8E CA 7A   [ 4] 1470 	ldy	#_fpacktmp1	; tmp70,
   2293 34 20         [ 6] 1471 	pshs	y	; tmp70
   2295 8E CA 7F      [ 3] 1472 	ldx	#_fpacktmp2	;,
   2298 34 10         [ 6] 1473 	pshs	x	;
   229A 30 C4         [ 4] 1474 	leax	,u	;, tmp67
   229C BD 15 4C      [ 8] 1475 	jsr	_subF
                           1476 ;----- asm -----
                           1477 ; 465 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1478 	; #ENR#[394]mulif((unsigned long int)15, fpacktmp1, fpacktmp1);
                           1479 ;--- end asm ---
   229F 32 6A         [ 5] 1480 	leas	10,s	;,,
   22A1 34 20         [ 6] 1481 	pshs	y	; tmp70
   22A3 34 20         [ 6] 1482 	pshs	y	; tmp70
   22A5 8E 00 0F      [ 3] 1483 	ldx	#15	;,
   22A8 BD 15 16      [ 8] 1484 	jsr	_mulIF
                           1485 ;----- asm -----
                           1486 ; 467 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1487 	; #ENR#[395]unsigned long int h2 = (unsigned long int) toint(fpacktmp1);
                           1488 ;--- end asm ---
   22AB 30 A4         [ 4] 1489 	leax	,y	;, tmp70
   22AD BD 15 65      [ 8] 1490 	jsr	_toInt
                           1491 ;----- asm -----
                           1492 ; 469 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1493 	; #ENR#[396]h2 += 1;
                           1494 ;--- end asm ---
   22B0 33 01         [ 5] 1495 	leau	1,x	; h2,, D.3438
                           1496 ;----- asm -----
                           1497 ; 489 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1498 	; #ENR#[415]if (h2 >9) h2 = 0;
                           1499 ;--- end asm ---
   22B2 32 64         [ 5] 1500 	leas	4,s	;,,
   22B4 11 83 00 09   [ 5] 1501 	cmpu	#9	;cmphi:	; h2,
   22B8 22 1C         [ 3] 1502 	bhi	L30	;
   22BA                    1503 L20:
                           1504 ;----- asm -----
                           1505 ; 494 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1506 	; #ENR#[419]if ((cz == 50) && (h2 == 4)) h2 = 0;
                           1507 ;--- end asm ---
   22BA 1F 30         [ 6] 1508 	tfr	u,d	; h2,
   22BC 1F 98         [ 6] 1509 	tfr	b,a	;,
   22BE 5F            [ 2] 1510 	clrb	;
   22BF 1F 01         [ 6] 1511 	tfr	d,x	;, prephitmp.139
   22C1 F6 C9 3A      [ 5] 1512 	ldb	_cz	;, cz
   22C4 C1 32         [ 2] 1513 	cmpb	#50	;cmpqi:	;,
   22C6 27 13         [ 3] 1514 	beq	L31	;
   22C8                    1515 L22:
                           1516 ;----- asm -----
                           1517 ; 498 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1518 	; #ENR#[422]h2 = h2*256;
                           1519 ; 500 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1520 	; #ENR#[423]h = h2 | (h&0xff);
                           1521 ;--- end asm ---
   22C8 EC 61         [ 6] 1522 	ldd	1,s	; D.3440, h
   22CA 4F            [ 2] 1523 	clra	;andqi(ZERO)	;
                           1524 		;andqi(-1)
   22CB 34 10         [ 6] 1525 	pshs	x	; prephitmp.139
   22CD AA E0         [ 6] 1526 	ora	,s+	;,
   22CF EA E0         [ 6] 1527 	orb	,s+	;,
   22D1 ED 61         [ 6] 1528 	std	1,s	; D.3440, h
   22D3 16 FF 78      [ 5] 1529 	lbra	L19	;
   22D6                    1530 L30:
   22D6 CE 00 00      [ 3] 1531 	ldu	#0	; h2,
   22D9 20 DF         [ 3] 1532 	bra	L20	;
   22DB                    1533 L31:
   22DB 1F 30         [ 6] 1534 	tfr	u,d	; h2,
   22DD 1F 98         [ 6] 1535 	tfr	b,a	;,
   22DF 5F            [ 2] 1536 	clrb	;
   22E0 1F 01         [ 6] 1537 	tfr	d,x	;, prephitmp.139
   22E2 11 83 00 04   [ 5] 1538 	cmpu	#4	;cmphi:	; h2,
   22E6 26 E0         [ 3] 1539 	bne	L22	;
   22E8 8E 00 00      [ 3] 1540 	ldx	#0	; prephitmp.139,
   22EB 20 DB         [ 3] 1541 	bra	L22	;
                           1542 	.globl	_generateDisplayMap
   22ED                    1543 _generateDisplayMap:
   22ED 34 60         [ 7] 1544 	pshs	y,u	;
   22EF 32 71         [ 5] 1545 	leas	-15,s	;,,
                           1546 ;----- asm -----
                           1547 ; 524 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1548 	; #ENR#[443]if (cx>200) cx = cx- (unsigned char) 200;
                           1549 ;--- end asm ---
   22F1 F6 C9 38      [ 5] 1550 	ldb	_cx	; cx.10, cx
   22F4 C1 C8         [ 2] 1551 	cmpb	#-56	;cmpqi:	; cx.10,
   22F6 23 05         [ 3] 1552 	bls	L33	;
   22F8 CB 38         [ 2] 1553 	addb	#56	; cx.10,
   22FA F7 C9 38      [ 5] 1554 	stb	_cx	; cx.10, cx
   22FD                    1555 L33:
                           1556 ;----- asm -----
                           1557 ; 526 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1558 	; #ENR#[444]if (cy>200) cy = cy- (unsigned char) 200;
                           1559 ;--- end asm ---
   22FD F6 C9 39      [ 5] 1560 	ldb	_cy	; cy.12, cy
   2300 C1 C8         [ 2] 1561 	cmpb	#-56	;cmpqi:	; cy.12,
   2302 23 05         [ 3] 1562 	bls	L34	;
   2304 CB 38         [ 2] 1563 	addb	#56	; cy.12,
   2306 F7 C9 39      [ 5] 1564 	stb	_cy	; cy.12, cy
   2309                    1565 L34:
                           1566 ;----- asm -----
                           1567 ; 528 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1568 	; #ENR#[445]if (fillmap != go_no_redraw)
                           1569 ;--- end asm ---
   2309 7D C8 FC      [ 7] 1570 	tst	_fillMap	; fillMap
   230C 10 26 00 7C   [ 6] 1571 	lbne	L60	;
                           1572 ;----- asm -----
                           1573 ; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1574 	; #ENR#[450]switch (fillmap)
                           1575 ;--- end asm ---
   2310 F6 C8 FC      [ 5] 1576 	ldb	_fillMap	; fillMap, fillMap
   2313 C1 03         [ 2] 1577 	cmpb	#3	;cmpqi:	; fillMap,
   2315 10 27 00 9A   [ 6] 1578 	lbeq	L39	;
   2319                    1579 L63:
   2319 C1 03         [ 2] 1580 	cmpb	#3	;cmpqi:	; fillMap,
   231B 2F 14         [ 3] 1581 	ble	L61	;
   231D C1 04         [ 2] 1582 	cmpb	#4	;cmpqi:	; fillMap,
   231F 10 27 01 54   [ 6] 1583 	lbeq	L40	;
   2323 C1 7F         [ 2] 1584 	cmpb	#127	;cmpqi:	; fillMap,
   2325 10 27 00 D2   [ 6] 1585 	lbeq	L62	;
   2329                    1586 L36:
                           1587 ;----- asm -----
                           1588 ; 677 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1589 	; #ENR#[547]fillmap = go_no_redraw;
                           1590 ;--- end asm ---
   2329 7F C8 FC      [ 7] 1591 	clr	_fillMap	; fillMap
                           1592 ;----- asm -----
                           1593 ; 679 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1594 	; #ENR#[548]return 0;
                           1595 ;--- end asm ---
   232C 5F            [ 2] 1596 	clrb	; D.3551
   232D 32 6F         [ 5] 1597 	leas	15,s	;,,
   232F 35 E0         [ 8] 1598 	puls	y,u,pc	;
   2331                    1599 L61:
   2331 C1 01         [ 2] 1600 	cmpb	#1	;cmpqi:	; fillMap,
   2333 10 27 01 82   [ 6] 1601 	lbeq	L37	;
   2337 C1 02         [ 2] 1602 	cmpb	#2	;cmpqi:	; fillMap,
   2339 26 EE         [ 3] 1603 	bne	L36	;
                           1604 ;----- asm -----
                           1605 ; 590 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1606 	; #ENR#[487]for (unsigned char yy=0;yy<4;yy++)
                           1607 ;--- end asm ---
   233B CE C8 8A      [ 3] 1608 	ldu	#_screen+10	; ivtmp.199,
   233E 6F 6A         [ 7] 1609 	clr	10,s	; yy
   2340                    1610 L49:
                           1611 ;----- asm -----
                           1612 ; 593 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1613 	; #ENR#[489]unsigned int y = ((unsigned int)yy)+cy-1;
                           1614 ;--- end asm ---
   2340 F6 C9 39      [ 5] 1615 	ldb	_cy	;, cy
   2343 5A            [ 2] 1616 	decb	;
   2344 EB 6A         [ 5] 1617 	addb	10,s	;, yy
   2346 E7 6B         [ 5] 1618 	stb	11,s	;, y
                           1619 ;----- asm -----
                           1620 ; 595 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1621 	; #ENR#[490]for (unsigned char xx=0;xx<4;xx++)
                           1622 ;--- end asm ---
   2348 E6 6A         [ 5] 1623 	ldb	10,s	;, yy
   234A C1 03         [ 2] 1624 	cmpb	#3	;cmpqi:	;,
   234C 10 27 02 1E   [ 6] 1625 	lbeq	L48	;
                           1626 ;----- asm -----
                           1627 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1628 	; #ENR#[492]unsigned int x = xx+cx-1;
                           1629 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1630 	; #ENR#[493]if (yy == 3)
                           1631 ; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1632 	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
                           1633 ;--- end asm ---
   2350 4F            [ 2] 1634 	clra		;zero_extendqihi: R:b -> R:d	;,
   2351 58            [ 2] 1635 	aslb	;
   2352 49            [ 2] 1636 	rola	;
   2353 58            [ 2] 1637 	aslb	;
   2354 49            [ 2] 1638 	rola	;
   2355 58            [ 2] 1639 	aslb	;
   2356 49            [ 2] 1640 	rola	;
   2357 1F 02         [ 6] 1641 	tfr	d,y	;, tmp157
   2359 E6 6A         [ 5] 1642 	ldb	10,s	;, yy
   235B 5C            [ 2] 1643 	incb	;
   235C E7 63         [ 5] 1644 	stb	3,s	;,
   235E 4F            [ 2] 1645 	clra		;zero_extendqihi: R:b -> R:d	;,
   235F ED E4         [ 5] 1646 	std	,s	;,
   2361 58            [ 2] 1647 	aslb	;
   2362 49            [ 2] 1648 	rola	;
   2363 58            [ 2] 1649 	aslb	;
   2364 49            [ 2] 1650 	rola	;
   2365 58            [ 2] 1651 	aslb	;
   2366 49            [ 2] 1652 	rola	;
   2367 1F 01         [ 6] 1653 	tfr	d,x	;, tmp162
   2369 AE 89 C8 80   [ 9] 1654 	ldx	_screen,x	;, screen
   236D AF A9 C8 80   [ 9] 1655 	stx	_screen,y	;, screen
                           1656 ;----- asm -----
                           1657 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1658 	; #ENR#[492]unsigned int x = xx+cx-1;
                           1659 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1660 	; #ENR#[493]if (yy == 3)
                           1661 ; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1662 	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
                           1663 ;--- end asm ---
   2371 AE C4         [ 5] 1664 	ldx	,u	;, screen
   2373 AF 58         [ 6] 1665 	stx	-8,u	;, screen
                           1666 ;----- asm -----
                           1667 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1668 	; #ENR#[492]unsigned int x = xx+cx-1;
                           1669 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1670 	; #ENR#[493]if (yy == 3)
                           1671 ; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1672 	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
                           1673 ;--- end asm ---
   2375 EC 42         [ 6] 1674 	ldd	2,u	;, screen
   2377 ED 5A         [ 6] 1675 	std	-6,u	;, screen
                           1676 ;----- asm -----
                           1677 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1678 	; #ENR#[492]unsigned int x = xx+cx-1;
                           1679 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1680 	; #ENR#[493]if (yy == 3)
                           1681 ; 608 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1682 	; #ENR#[499]screen[yy][xx] = screen[yy+1][xx];
                           1683 ;--- end asm ---
   2379 AE 44         [ 6] 1684 	ldx	4,u	;, screen
   237B AF 5C         [ 6] 1685 	stx	-4,u	;, screen
   237D E6 63         [ 5] 1686 	ldb	3,s	;,
   237F E7 6A         [ 5] 1687 	stb	10,s	;, yy
   2381 33 48         [ 5] 1688 	leau	8,u	; ivtmp.199,, ivtmp.199
   2383 C1 04         [ 2] 1689 	cmpb	#4	;cmpqi:	;,
   2385 10 26 FF B7   [ 6] 1690 	lbne	L49	;
                           1691 ;----- asm -----
                           1692 ; 613 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1693 	; #ENR#[503]break;
                           1694 ;--- end asm ---
   2389 16 00 E2      [ 5] 1695 	lbra	L44	;
   238C                    1696 L60:
                           1697 ;----- asm -----
                           1698 ; 531 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1699 	; #ENR#[447]realabove = above = (unsigned int) (getmappos(cx,cy,cz-1) >> 8);
                           1700 ;--- end asm ---
   238C F6 C9 3A      [ 5] 1701 	ldb	_cz	;, cz
   238F 5A            [ 2] 1702 	decb	;
   2390 34 04         [ 6] 1703 	pshs	b	;
   2392 F6 C9 39      [ 5] 1704 	ldb	_cy	;, cy
   2395 E7 E2         [ 6] 1705 	stb	,-s	;,
   2397 F6 C9 38      [ 5] 1706 	ldb	_cx	;, cx
   239A BD 21 4F      [ 8] 1707 	jsr	_getMapPos
   239D 1F 10         [ 6] 1708 	tfr	x,d	;, D.3512
   239F 1F 89         [ 6] 1709 	tfr	a,b	;,
   23A1 4F            [ 2] 1710 	clra		;zero_extendqihi: R:b -> R:d	;,
   23A2 F7 C8 A0      [ 5] 1711 	stb	_above	;movlsbqihi: R:d -> _above	; above, tmp119
   23A5 F7 C8 A1      [ 5] 1712 	stb	_realAbove	;movlsbqihi: R:d -> _realAbove	; realAbove, tmp119
   23A8 32 62         [ 5] 1713 	leas	2,s	;,,
                           1714 ;----- asm -----
                           1715 ; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1716 	; #ENR#[450]switch (fillmap)
                           1717 ;--- end asm ---
   23AA F6 C8 FC      [ 5] 1718 	ldb	_fillMap	; fillMap, fillMap
   23AD C1 03         [ 2] 1719 	cmpb	#3	;cmpqi:	; fillMap,
   23AF 10 26 FF 66   [ 6] 1720 	lbne	L63	;
   23B3                    1721 L39:
                           1722 ;----- asm -----
                           1723 ; 648 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1724 	; #ENR#[527]for (unsigned char yy=0;yy<4;yy++)
                           1725 ;--- end asm ---
   23B3 10 8E C8 86   [ 4] 1726 	ldy	#_screen+6	; ivtmp.218,
   23B7 6F 6D         [ 7] 1727 	clr	13,s	; yy
   23B9                    1728 L52:
                           1729 ;----- asm -----
                           1730 ; 651 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1731 	; #ENR#[529]unsigned int y = ((unsigned int)yy)+cy-1;
                           1732 ;--- end asm ---
   23B9 F6 C9 39      [ 5] 1733 	ldb	_cy	;, cy
   23BC E7 6E         [ 5] 1734 	stb	14,s	;, cy.263
                           1735 ;----- asm -----
                           1736 ; 653 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1737 	; #ENR#[530]for (unsigned char xx=0;xx<4;xx++)
                           1738 ;--- end asm ---
   23BE F6 C9 38      [ 5] 1739 	ldb	_cx	;, cx
   23C1 5A            [ 2] 1740 	decb	;
   23C2 E7 62         [ 5] 1741 	stb	2,s	;, D.3545
                           1742 ;----- asm -----
                           1743 ; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1744 	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
                           1745 ; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1746 	; #ENR#[533]if (xx == 3)
                           1747 ; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1748 	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
                           1749 ;--- end asm ---
   23C4 AE 3C         [ 6] 1750 	ldx	-4,y	;, screen
   23C6 AF 3A         [ 6] 1751 	stx	-6,y	;, screen
                           1752 ;----- asm -----
                           1753 ; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1754 	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
                           1755 ; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1756 	; #ENR#[533]if (xx == 3)
                           1757 ; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1758 	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
                           1759 ;--- end asm ---
   23C8 EC 3E         [ 6] 1760 	ldd	-2,y	;, screen
   23CA ED 3C         [ 6] 1761 	std	-4,y	;, screen
                           1762 ;----- asm -----
                           1763 ; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1764 	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
                           1765 ; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1766 	; #ENR#[533]if (xx == 3)
                           1767 ; 666 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1768 	; #ENR#[539]screen[yy][xx] = screen[yy][xx+1];
                           1769 ;--- end asm ---
   23CC AE A4         [ 5] 1770 	ldx	,y	;, screen
   23CE AF 3E         [ 6] 1771 	stx	-2,y	;, screen
                           1772 ;----- asm -----
                           1773 ; 656 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1774 	; #ENR#[532]unsigned int x = ((unsigned int)xx)+cx-1;
                           1775 ; 658 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1776 	; #ENR#[533]if (xx == 3)
                           1777 ; 661 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1778 	; #ENR#[535]screen[yy][xx] = getmappos(x,y, cz);
                           1779 ;--- end asm ---
   23D0 E6 62         [ 5] 1780 	ldb	2,s	;, D.3545
   23D2 CB 03         [ 2] 1781 	addb	#3	;,
   23D4 E7 62         [ 5] 1782 	stb	2,s	;, D.3545
   23D6 F6 C9 3A      [ 5] 1783 	ldb	_cz	;, cz
   23D9 E7 E2         [ 6] 1784 	stb	,-s	;,
   23DB 6A 6F         [ 7] 1785 	dec	15,s	; cy.263
   23DD E6 6F         [ 5] 1786 	ldb	15,s	;, cy.263
   23DF EB 6E         [ 5] 1787 	addb	14,s	;, yy
   23E1 34 04         [ 6] 1788 	pshs	b	;
   23E3 E6 64         [ 5] 1789 	ldb	4,s	;, D.3545
   23E5 BD 21 4F      [ 8] 1790 	jsr	_getMapPos
   23E8 AF A4         [ 5] 1791 	stx	,y	; D.3548, screen
   23EA 6C 6F         [ 7] 1792 	inc	15,s	; yy
   23EC 31 28         [ 5] 1793 	leay	8,y	; ivtmp.218,, ivtmp.218
   23EE 32 62         [ 5] 1794 	leas	2,s	;,,
   23F0 E6 6D         [ 5] 1795 	ldb	13,s	;, yy
   23F2 C1 04         [ 2] 1796 	cmpb	#4	;cmpqi:	;,
   23F4 10 26 FF C1   [ 6] 1797 	lbne	L52	;
                           1798 ;----- asm -----
                           1799 ; 671 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1800 	; #ENR#[543]break;
                           1801 ;--- end asm ---
   23F8 16 00 73      [ 5] 1802 	lbra	L44	;
   23FB                    1803 L62:
                           1804 ;----- asm -----
                           1805 ; 541 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1806 	; #ENR#[454]for (unsigned char yy=0;yy<4;yy++)
                           1807 ;--- end asm ---
   23FB CE C8 80      [ 3] 1808 	ldu	#_screen	; ivtmp.239,
   23FE 6F 66         [ 7] 1809 	clr	6,s	; yy
   2400                    1810 L43:
                           1811 ;----- asm -----
                           1812 ; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1813 	; #ENR#[456]unsigned int y = yy+cy-1;
                           1814 ;--- end asm ---
   2400 F6 C9 39      [ 5] 1815 	ldb	_cy	;, cy
   2403 5A            [ 2] 1816 	decb	;
   2404 EB 66         [ 5] 1817 	addb	6,s	;, yy
   2406 E7 67         [ 5] 1818 	stb	7,s	;, y
                           1819 ;----- asm -----
                           1820 ; 546 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1821 	; #ENR#[457]for (unsigned char xx=0;xx<4;xx++)
                           1822 ; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1823 	; #ENR#[459]unsigned int x = xx+cx-1;
                           1824 ; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1825 	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
                           1826 ;--- end asm ---
   2408 F6 C9 38      [ 5] 1827 	ldb	_cx	;, cx
   240B 5A            [ 2] 1828 	decb	;
   240C E7 62         [ 5] 1829 	stb	2,s	;,
   240E F6 C9 3A      [ 5] 1830 	ldb	_cz	;, cz
   2411 E7 E2         [ 6] 1831 	stb	,-s	;,
   2413 E6 68         [ 5] 1832 	ldb	8,s	;, y
   2415 34 04         [ 6] 1833 	pshs	b	;
   2417 E6 64         [ 5] 1834 	ldb	4,s	;,
   2419 BD 21 4F      [ 8] 1835 	jsr	_getMapPos
   241C AF C4         [ 5] 1836 	stx	,u	; temp.304, screen
                           1837 ;----- asm -----
                           1838 ; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1839 	; #ENR#[459]unsigned int x = xx+cx-1;
                           1840 ; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1841 	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
                           1842 ;--- end asm ---
   241E F6 C9 38      [ 5] 1843 	ldb	_cx	;, cx
   2421 E7 64         [ 5] 1844 	stb	4,s	;,
   2423 F6 C9 3A      [ 5] 1845 	ldb	_cz	;, cz
   2426 E7 E2         [ 6] 1846 	stb	,-s	;,
   2428 E6 6A         [ 5] 1847 	ldb	10,s	;, y
   242A 34 04         [ 6] 1848 	pshs	b	;
   242C E6 66         [ 5] 1849 	ldb	6,s	;,
   242E BD 21 4F      [ 8] 1850 	jsr	_getMapPos
   2431 AF 42         [ 6] 1851 	stx	2,u	; temp.309, screen
                           1852 ;----- asm -----
                           1853 ; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1854 	; #ENR#[459]unsigned int x = xx+cx-1;
                           1855 ; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1856 	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
                           1857 ;--- end asm ---
   2433 F6 C9 38      [ 5] 1858 	ldb	_cx	;, cx
   2436 5C            [ 2] 1859 	incb	;
   2437 E7 66         [ 5] 1860 	stb	6,s	;,
   2439 F6 C9 3A      [ 5] 1861 	ldb	_cz	;, cz
   243C E7 E2         [ 6] 1862 	stb	,-s	;,
   243E E6 6C         [ 5] 1863 	ldb	12,s	;, y
   2440 34 04         [ 6] 1864 	pshs	b	;
   2442 E6 68         [ 5] 1865 	ldb	8,s	;,
   2444 BD 21 4F      [ 8] 1866 	jsr	_getMapPos
   2447 AF 44         [ 6] 1867 	stx	4,u	; temp.314, screen
                           1868 ;----- asm -----
                           1869 ; 549 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1870 	; #ENR#[459]unsigned int x = xx+cx-1;
                           1871 ; 551 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1872 	; #ENR#[460]screen[yy][xx] = getmappos(x,y, cz);
                           1873 ;--- end asm ---
   2449 F6 C9 38      [ 5] 1874 	ldb	_cx	;, cx
   244C CB 02         [ 2] 1875 	addb	#2	;,
   244E E7 68         [ 5] 1876 	stb	8,s	;,
   2450 F6 C9 3A      [ 5] 1877 	ldb	_cz	;, cz
   2453 E7 E2         [ 6] 1878 	stb	,-s	;,
   2455 E6 6E         [ 5] 1879 	ldb	14,s	;, y
   2457 34 04         [ 6] 1880 	pshs	b	;
   2459 E6 6A         [ 5] 1881 	ldb	10,s	;,
   245B BD 21 4F      [ 8] 1882 	jsr	_getMapPos
   245E AF 46         [ 6] 1883 	stx	6,u	; D.3520, screen
   2460 6C 6E         [ 7] 1884 	inc	14,s	; yy
   2462 33 48         [ 5] 1885 	leau	8,u	; ivtmp.239,, ivtmp.239
   2464 32 68         [ 5] 1886 	leas	8,s	;,,
   2466 E6 66         [ 5] 1887 	ldb	6,s	;, yy
   2468 C1 04         [ 2] 1888 	cmpb	#4	;cmpqi:	;,
   246A 10 26 FF 92   [ 6] 1889 	lbne	L43	;
                           1890 ;----- asm -----
                           1891 ; 555 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1892 	; #ENR#[463]break;
                           1893 ;--- end asm ---
   246E                    1894 L44:
                           1895 ;----- asm -----
                           1896 ; 683 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1897 	; #ENR#[551]fillmap = go_no_redraw;
                           1898 ;--- end asm ---
   246E 7F C8 FC      [ 7] 1899 	clr	_fillMap	; fillMap
                           1900 ;----- asm -----
                           1901 ; 685 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1902 	; #ENR#[552]return 1;
                           1903 ;--- end asm ---
   2471 C6 01         [ 2] 1904 	ldb	#1	; D.3551,
   2473 32 6F         [ 5] 1905 	leas	15,s	;,,
   2475 35 E0         [ 8] 1906 	puls	y,u,pc	;
   2477                    1907 L40:
                           1908 ;----- asm -----
                           1909 ; 619 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1910 	; #ENR#[507]for (unsigned char yy=0;yy<4;yy++)
                           1911 ;--- end asm ---
   2477 10 8E C8 80   [ 4] 1912 	ldy	#_screen	; ivtmp.228,
   247B 6F 6C         [ 7] 1913 	clr	12,s	; yy
   247D                    1914 L51:
                           1915 ;----- asm -----
                           1916 ; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1917 	; #ENR#[509]unsigned int y = ((unsigned int)yy)+cy-1;
                           1918 ;--- end asm ---
   247D F6 C9 39      [ 5] 1919 	ldb	_cy	;, cy
   2480 E7 62         [ 5] 1920 	stb	2,s	;, cy.260
                           1921 ;----- asm -----
                           1922 ; 624 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1923 	; #ENR#[510]for (signed char xx=3;xx>=0;xx--)
                           1924 ;--- end asm ---
   2482 F6 C9 38      [ 5] 1925 	ldb	_cx	;, cx
   2485 5A            [ 2] 1926 	decb	;
   2486 E7 65         [ 5] 1927 	stb	5,s	;, D.3538
                           1928 ;----- asm -----
                           1929 ; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1930 	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
                           1931 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1932 	; #ENR#[513]if (xx == 0)
                           1933 ; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1934 	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
                           1935 ;--- end asm ---
   2488 AE 24         [ 6] 1936 	ldx	4,y	;, screen
   248A AF 26         [ 6] 1937 	stx	6,y	;, screen
                           1938 ;----- asm -----
                           1939 ; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1940 	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
                           1941 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1942 	; #ENR#[513]if (xx == 0)
                           1943 ; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1944 	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
                           1945 ;--- end asm ---
   248C EC 22         [ 6] 1946 	ldd	2,y	;, screen
   248E ED 24         [ 6] 1947 	std	4,y	;, screen
                           1948 ;----- asm -----
                           1949 ; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1950 	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
                           1951 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1952 	; #ENR#[513]if (xx == 0)
                           1953 ; 637 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1954 	; #ENR#[519]screen[yy][xx] = screen[yy][xx-1];
                           1955 ;--- end asm ---
   2490 AE A4         [ 5] 1956 	ldx	,y	;, screen
   2492 AF 22         [ 6] 1957 	stx	2,y	;, screen
                           1958 ;----- asm -----
                           1959 ; 627 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1960 	; #ENR#[512]unsigned int x = ((unsigned int)xx)+cx-1;
                           1961 ; 629 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1962 	; #ENR#[513]if (xx == 0)
                           1963 ; 632 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1964 	; #ENR#[515]screen[yy][xx] = getmappos(x,y, cz);
                           1965 ;--- end asm ---
   2494 F6 C9 3A      [ 5] 1966 	ldb	_cz	;, cz
   2497 E7 E2         [ 6] 1967 	stb	,-s	;,
   2499 6A 63         [ 7] 1968 	dec	3,s	; cy.260
   249B E6 63         [ 5] 1969 	ldb	3,s	;, cy.260
   249D EB 6D         [ 5] 1970 	addb	13,s	;, yy
   249F 34 04         [ 6] 1971 	pshs	b	;
   24A1 E6 67         [ 5] 1972 	ldb	7,s	;, D.3538
   24A3 BD 21 4F      [ 8] 1973 	jsr	_getMapPos
   24A6 AF A4         [ 5] 1974 	stx	,y	; D.3541, screen
   24A8 6C 6E         [ 7] 1975 	inc	14,s	; yy
   24AA 31 28         [ 5] 1976 	leay	8,y	; ivtmp.228,, ivtmp.228
   24AC 32 62         [ 5] 1977 	leas	2,s	;,,
   24AE E6 6C         [ 5] 1978 	ldb	12,s	;, yy
   24B0 C1 04         [ 2] 1979 	cmpb	#4	;cmpqi:	;,
   24B2 10 26 FF C7   [ 6] 1980 	lbne	L51	;
                           1981 ;----- asm -----
                           1982 ; 642 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1983 	; #ENR#[523]break;
                           1984 ;--- end asm ---
   24B6 16 FF B5      [ 5] 1985 	lbra	L44	;
   24B9                    1986 L37:
                           1987 ;----- asm -----
                           1988 ; 561 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1989 	; #ENR#[467]for (signed char yy=3;yy>=0;yy--)
                           1990 ;--- end asm ---
   24B9 CE C8 92      [ 3] 1991 	ldu	#_screen+18	; ivtmp.184,
   24BC C6 03         [ 2] 1992 	ldb	#3	;,
   24BE E7 68         [ 5] 1993 	stb	8,s	;, yy
   24C0                    1994 L46:
                           1995 ;----- asm -----
                           1996 ; 564 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1997 	; #ENR#[469]unsigned int y = ((unsigned int)yy)+cy-1;
                           1998 ;--- end asm ---
   24C0 F6 C9 39      [ 5] 1999 	ldb	_cy	;, cy
   24C3 5A            [ 2] 2000 	decb	;
   24C4 EB 68         [ 5] 2001 	addb	8,s	;, yy
   24C6 E7 69         [ 5] 2002 	stb	9,s	;, y
                           2003 ;----- asm -----
                           2004 ; 566 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2005 	; #ENR#[470]for (unsigned char xx=0;xx<4;xx++)
                           2006 ;--- end asm ---
   24C8 6D 68         [ 7] 2007 	tst	8,s	; yy
   24CA 10 27 00 3E   [ 6] 2008 	lbeq	L45	;
                           2009 ;----- asm -----
                           2010 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2011 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2012 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2013 	; #ENR#[473]if (yy == 0)
                           2014 ; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2015 	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
                           2016 ;--- end asm ---
   24CE E6 68         [ 5] 2017 	ldb	8,s	;, yy
   24D0 1D            [ 2] 2018 	sex		;extendqihi2: R:b -> R:d	;,
   24D1 58            [ 2] 2019 	aslb	;
   24D2 49            [ 2] 2020 	rola	;
   24D3 58            [ 2] 2021 	aslb	;
   24D4 49            [ 2] 2022 	rola	;
   24D5 58            [ 2] 2023 	aslb	;
   24D6 49            [ 2] 2024 	rola	;
   24D7 1F 02         [ 6] 2025 	tfr	d,y	;, tmp132
   24D9 E6 68         [ 5] 2026 	ldb	8,s	;, yy
   24DB 5A            [ 2] 2027 	decb	;
   24DC E7 64         [ 5] 2028 	stb	4,s	;,
   24DE 1D            [ 2] 2029 	sex		;extendqihi2: R:b -> R:d	;,
   24DF ED E4         [ 5] 2030 	std	,s	;,
   24E1 58            [ 2] 2031 	aslb	;
   24E2 49            [ 2] 2032 	rola	;
   24E3 58            [ 2] 2033 	aslb	;
   24E4 49            [ 2] 2034 	rola	;
   24E5 58            [ 2] 2035 	aslb	;
   24E6 49            [ 2] 2036 	rola	;
   24E7 1F 01         [ 6] 2037 	tfr	d,x	;, tmp137
   24E9 AE 89 C8 80   [ 9] 2038 	ldx	_screen,x	;, screen
   24ED AF A9 C8 80   [ 9] 2039 	stx	_screen,y	;, screen
                           2040 ;----- asm -----
                           2041 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2042 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2043 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2044 	; #ENR#[473]if (yy == 0)
                           2045 ; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2046 	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
                           2047 ;--- end asm ---
   24F1 AE C4         [ 5] 2048 	ldx	,u	;, screen
   24F3 AF 48         [ 6] 2049 	stx	8,u	;, screen
                           2050 ;----- asm -----
                           2051 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2052 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2053 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2054 	; #ENR#[473]if (yy == 0)
                           2055 ; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2056 	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
                           2057 ;--- end asm ---
   24F5 EC 42         [ 6] 2058 	ldd	2,u	;, screen
   24F7 ED 4A         [ 6] 2059 	std	10,u	;, screen
                           2060 ;----- asm -----
                           2061 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2062 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2063 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2064 	; #ENR#[473]if (yy == 0)
                           2065 ; 579 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2066 	; #ENR#[479]screen[yy][xx] = screen[yy-1][xx];
                           2067 ;--- end asm ---
   24F9 AE 44         [ 6] 2068 	ldx	4,u	;, screen
   24FB AF 4C         [ 6] 2069 	stx	12,u	;, screen
   24FD E6 64         [ 5] 2070 	ldb	4,s	;,
   24FF E7 68         [ 5] 2071 	stb	8,s	;, yy
   2501 33 58         [ 5] 2072 	leau	-8,u	; ivtmp.184,, ivtmp.184
   2503 C1 FF         [ 2] 2073 	cmpb	#-1	;cmpqi:	;,
   2505 10 26 FF B7   [ 6] 2074 	lbne	L46	;
   2509 16 00 5F      [ 5] 2075 	lbra	L47	;
   250C                    2076 L45:
                           2077 ;----- asm -----
                           2078 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2079 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2080 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2081 	; #ENR#[473]if (yy == 0)
                           2082 ; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2083 	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
                           2084 ;--- end asm ---
   250C F6 C9 38      [ 5] 2085 	ldb	_cx	;, cx
   250F 5A            [ 2] 2086 	decb	;
   2510 E7 E4         [ 4] 2087 	stb	,s	;,
   2512 F6 C9 3A      [ 5] 2088 	ldb	_cz	;, cz
   2515 E7 E2         [ 6] 2089 	stb	,-s	;,
   2517 E6 6A         [ 5] 2090 	ldb	10,s	;, y
   2519 34 04         [ 6] 2091 	pshs	b	;
   251B E6 62         [ 5] 2092 	ldb	2,s	;,
   251D BD 21 4F      [ 8] 2093 	jsr	_getMapPos
   2520 BF C8 80      [ 6] 2094 	stx	_screen	; temp.275, screen
                           2095 ;----- asm -----
                           2096 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2097 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2098 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2099 	; #ENR#[473]if (yy == 0)
                           2100 ; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2101 	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
                           2102 ;--- end asm ---
   2523 F6 C9 38      [ 5] 2103 	ldb	_cx	;, cx
   2526 E7 62         [ 5] 2104 	stb	2,s	;,
   2528 F6 C9 3A      [ 5] 2105 	ldb	_cz	;, cz
   252B E7 E2         [ 6] 2106 	stb	,-s	;,
   252D E6 6C         [ 5] 2107 	ldb	12,s	;, y
   252F 34 04         [ 6] 2108 	pshs	b	;
   2531 E6 64         [ 5] 2109 	ldb	4,s	;,
   2533 BD 21 4F      [ 8] 2110 	jsr	_getMapPos
   2536 BF C8 82      [ 6] 2111 	stx	_screen+2	; temp.266, screen
                           2112 ;----- asm -----
                           2113 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2114 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2115 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2116 	; #ENR#[473]if (yy == 0)
                           2117 ; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2118 	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
                           2119 ;--- end asm ---
   2539 F6 C9 38      [ 5] 2120 	ldb	_cx	;, cx
   253C 5C            [ 2] 2121 	incb	;
   253D E7 64         [ 5] 2122 	stb	4,s	;,
   253F F6 C9 3A      [ 5] 2123 	ldb	_cz	;, cz
   2542 E7 E2         [ 6] 2124 	stb	,-s	;,
   2544 E6 6E         [ 5] 2125 	ldb	14,s	;, y
   2546 34 04         [ 6] 2126 	pshs	b	;
   2548 E6 66         [ 5] 2127 	ldb	6,s	;,
   254A BD 21 4F      [ 8] 2128 	jsr	_getMapPos
   254D BF C8 84      [ 6] 2129 	stx	_screen+4	; D.3526, screen
                           2130 ;----- asm -----
                           2131 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2132 	; #ENR#[472]unsigned int x = xx+cx-1;
                           2133 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2134 	; #ENR#[473]if (yy == 0)
                           2135 ; 574 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2136 	; #ENR#[475]screen[yy][xx] = getmappos(x,y, cz);
                           2137 ;--- end asm ---
   2550 F6 C9 38      [ 5] 2138 	ldb	_cx	;, cx
   2553 CB 02         [ 2] 2139 	addb	#2	;,
   2555 E7 66         [ 5] 2140 	stb	6,s	;,
   2557 F6 C9 3A      [ 5] 2141 	ldb	_cz	;, cz
   255A E7 E2         [ 6] 2142 	stb	,-s	;,
   255C E6 E8 10      [ 5] 2143 	ldb	16,s	;, y
   255F 34 04         [ 6] 2144 	pshs	b	;
   2561 E6 68         [ 5] 2145 	ldb	8,s	;,
   2563 BD 21 4F      [ 8] 2146 	jsr	_getMapPos
   2566 BF C8 86      [ 6] 2147 	stx	_screen+6	; temp.256, screen
   2569 32 68         [ 5] 2148 	leas	8,s	;,,
   256B                    2149 L47:
                           2150 ;----- asm -----
                           2151 ; 584 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2152 	; #ENR#[483]break;
                           2153 ;--- end asm ---
   256B 16 FF 00      [ 5] 2154 	lbra	L44	;
   256E                    2155 L48:
                           2156 ;----- asm -----
                           2157 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2158 	; #ENR#[492]unsigned int x = xx+cx-1;
                           2159 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2160 	; #ENR#[493]if (yy == 3)
                           2161 ; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2162 	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
                           2163 ;--- end asm ---
   256E F6 C9 38      [ 5] 2164 	ldb	_cx	;, cx
   2571 5A            [ 2] 2165 	decb	;
   2572 E7 E4         [ 4] 2166 	stb	,s	;,
   2574 F6 C9 3A      [ 5] 2167 	ldb	_cz	;, cz
   2577 E7 E2         [ 6] 2168 	stb	,-s	;,
   2579 E6 6C         [ 5] 2169 	ldb	12,s	;, y
   257B 34 04         [ 6] 2170 	pshs	b	;
   257D E6 62         [ 5] 2171 	ldb	2,s	;,
   257F BD 21 4F      [ 8] 2172 	jsr	_getMapPos
   2582 BF C8 98      [ 6] 2173 	stx	_screen+24	; temp.286, screen
                           2174 ;----- asm -----
                           2175 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2176 	; #ENR#[492]unsigned int x = xx+cx-1;
                           2177 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2178 	; #ENR#[493]if (yy == 3)
                           2179 ; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2180 	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
                           2181 ;--- end asm ---
   2585 F6 C9 38      [ 5] 2182 	ldb	_cx	;, cx
   2588 E7 62         [ 5] 2183 	stb	2,s	;,
   258A F6 C9 3A      [ 5] 2184 	ldb	_cz	;, cz
   258D E7 E2         [ 6] 2185 	stb	,-s	;,
   258F E6 6E         [ 5] 2186 	ldb	14,s	;, y
   2591 34 04         [ 6] 2187 	pshs	b	;
   2593 E6 64         [ 5] 2188 	ldb	4,s	;,
   2595 BD 21 4F      [ 8] 2189 	jsr	_getMapPos
   2598 BF C8 9A      [ 6] 2190 	stx	_screen+26	; temp.291, screen
                           2191 ;----- asm -----
                           2192 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2193 	; #ENR#[492]unsigned int x = xx+cx-1;
                           2194 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2195 	; #ENR#[493]if (yy == 3)
                           2196 ; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2197 	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
                           2198 ;--- end asm ---
   259B F6 C9 38      [ 5] 2199 	ldb	_cx	;, cx
   259E 5C            [ 2] 2200 	incb	;
   259F E7 64         [ 5] 2201 	stb	4,s	;,
   25A1 F6 C9 3A      [ 5] 2202 	ldb	_cz	;, cz
   25A4 E7 E2         [ 6] 2203 	stb	,-s	;,
   25A6 E6 E8 10      [ 5] 2204 	ldb	16,s	;, y
   25A9 34 04         [ 6] 2205 	pshs	b	;
   25AB E6 66         [ 5] 2206 	ldb	6,s	;,
   25AD BD 21 4F      [ 8] 2207 	jsr	_getMapPos
   25B0 BF C8 9C      [ 6] 2208 	stx	_screen+28	; temp.296, screen
                           2209 ;----- asm -----
                           2210 ; 598 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2211 	; #ENR#[492]unsigned int x = xx+cx-1;
                           2212 ; 600 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2213 	; #ENR#[493]if (yy == 3)
                           2214 ; 603 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2215 	; #ENR#[495]screen[yy][xx] = getmappos(x,y, cz);
                           2216 ;--- end asm ---
   25B3 F6 C9 38      [ 5] 2217 	ldb	_cx	;, cx
   25B6 CB 02         [ 2] 2218 	addb	#2	;,
   25B8 E7 66         [ 5] 2219 	stb	6,s	;,
   25BA F6 C9 3A      [ 5] 2220 	ldb	_cz	;, cz
   25BD E7 E2         [ 6] 2221 	stb	,-s	;,
   25BF E6 E8 12      [ 5] 2222 	ldb	18,s	;, y
   25C2 34 04         [ 6] 2223 	pshs	b	;
   25C4 E6 68         [ 5] 2224 	ldb	8,s	;,
   25C6 BD 21 4F      [ 8] 2225 	jsr	_getMapPos
   25C9 BF C8 9E      [ 6] 2226 	stx	_screen+30	; D.3533, screen
   25CC 32 68         [ 5] 2227 	leas	8,s	;,,
                           2228 ;----- asm -----
                           2229 ; 613 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2230 	; #ENR#[503]break;
                           2231 ;--- end asm ---
   25CE 16 FE 9D      [ 5] 2232 	lbra	L44	;
                           2233 	.globl	_drawMap
   25D1                    2234 _drawMap:
   25D1 34 60         [ 7] 2235 	pshs	y,u	;
   25D3 32 E8 C3      [ 5] 2236 	leas	-61,s	;,,
                           2237 ;----- asm -----
                           2238 ; 771 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2239 	; #ENR#[619]if (fillmap != go_no_redraw) generatedisplaymap();
                           2240 ;--- end asm ---
   25D6 7D C8 FC      [ 7] 2241 	tst	_fillMap	; fillMap
   25D9 10 26 08 9C   [ 6] 2242 	lbne	L293	;
   25DD                    2243 L65:
                           2244 ;----- asm -----
                           2245 ; 775 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2246 	; #ENR#[622]printenvironment = (int)map11_hi;
                           2247 ;--- end asm ---
   25DD F6 C8 8A      [ 5] 2248 	ldb	_screen+10	;,
   25E0 F7 C8 F4      [ 5] 2249 	stb	_printEnvironment	;, printEnvironment
                           2250 ;----- asm -----
                           2251 ; 777 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2252 	; #ENR#[623]if (above == 4) printenvironment = 4;
                           2253 ;--- end asm ---
   25E3 F6 C8 A0      [ 5] 2254 	ldb	_above	;, above
   25E6 C1 04         [ 2] 2255 	cmpb	#4	;cmpqi:	;,
   25E8 10 27 08 87   [ 6] 2256 	lbeq	L294	;
   25EC                    2257 L66:
                           2258 ;----- asm -----
                           2259 ; 780 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2260 	; #ENR#[625]if (inelevator)
                           2261 ;--- end asm ---
   25EC 7D C8 A2      [ 7] 2262 	tst	_inElevator	; inElevator
   25EF 10 27 00 61   [ 6] 2263 	lbeq	L67	;
                           2264 ;----- asm -----
                           2265 ; 783 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2266 	; #ENR#[627]_x_ =0;
                           2267 ;--- end asm ---
   25F3 7F C9 BF      [ 7] 2268 	clr	__x_	; _x_
                           2269 ;----- asm -----
                           2270 ; 785 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2271 	; #ENR#[628]_y_ =elevatory;
                           2272 ;--- end asm ---
   25F6 F6 C8 A3      [ 5] 2273 	ldb	_elevatorY	;, elevatorY
   25F9 F7 C9 BE      [ 5] 2274 	stb	__y_	;, _y_
                           2275 ;----- asm -----
                           2276 ; 787 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2277 	; #ENR#[629]dp_via_t1_cnt_lo  = 0x7f;
                           2278 ;--- end asm ---
   25FC C6 7F         [ 2] 2279 	ldb	#127	;,
   25FE D7 04         [ 4] 2280 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2281 ;----- asm -----
                           2282 ; 789 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2283 	; #ENR#[630]moveto_start_yx
                           2284 ; 790 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2600 B6 C9 BE      [ 5] 2285 	LDA      __y_	; _y_
   2603 97 01         [ 4] 2286 	STA      *0x01
   2605 86 CE         [ 2] 2287 	LDA      #0xCE
   2607 97 0C         [ 4] 2288 	STA      *0x0C
   2609 4F            [ 2] 2289 	CLRA     
   260A 97 00         [ 4] 2290 	STA      *0x00
   260C F6 C9 BF      [ 5] 2291 	LDB      __x_	; _x_
   260F 0C 00         [ 6] 2292 	INC      *0x00
   2611 D7 01         [ 4] 2293 	STB      *0x01
   2613 97 05         [ 4] 2294 	STA      *0x05
                           2295 ; 791 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2296 	; #ENR#[631]printenvironment = 0;
                           2297 ;--- end asm ---
   2615 7F C8 F4      [ 7] 2298 	clr	_printEnvironment	; printEnvironment
                           2299 ;----- asm -----
                           2300 ; 793 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2301 	; #ENR#[632]elevatory++;
                           2302 ;--- end asm ---
   2618 7C C8 A3      [ 7] 2303 	inc	_elevatorY	; elevatorY
   261B F6 C8 A3      [ 5] 2304 	ldb	_elevatorY	; elevatorY.36, elevatorY
                           2305 ;----- asm -----
                           2306 ; 795 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2307 	; #ENR#[633]if (elevatory==120)
                           2308 ;--- end asm ---
   261E C1 78         [ 2] 2309 	cmpb	#120	;cmpqi:	; elevatorY.36,
   2620 10 27 09 28   [ 6] 2310 	lbeq	L295	;
   2624                    2311 L68:
                           2312 ;----- asm -----
                           2313 ; 803 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2314 	; #ENR#[638]dp_via_t1_cnt_lo  = 0x09;
                           2315 ;--- end asm ---
   2624 C6 09         [ 2] 2316 	ldb	#9	;,
   2626 D7 04         [ 4] 2317 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2318 ;----- asm -----
                           2319 ; 805 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2320 	; #ENR#[639]my_move_to_a_end
                           2321 ; 806 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2628 86 40         [ 2] 2322 	LDA      #0x40
   262A 95 0D         [ 4] 2323 	BITA     *0x0D
   262C 27 FC         [ 3] 2324 	BEQ      . -2
                           2325 ; 807 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2326 	; #ENR#[640]drawelevator();
                           2327 ;--- end asm ---
   262E BD 53 B7      [ 8] 2328 	jsr	_drawElevator
                           2329 ;----- asm -----
                           2330 ; 811 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2331 	; #ENR#[643]dp_via_t1_cnt_lo  = 0x7f;
                           2332 ;--- end asm ---
   2631 C6 7F         [ 2] 2333 	ldb	#127	;,
   2633 D7 04         [ 4] 2334 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2335 ;----- asm -----
                           2336 ; 813 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2337 	; #ENR#[644]moveto_start_yx
                           2338 ; 814 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2635 B6 C9 BE      [ 5] 2339 	LDA      __y_	; _y_
   2638 97 01         [ 4] 2340 	STA      *0x01
   263A 86 CE         [ 2] 2341 	LDA      #0xCE
   263C 97 0C         [ 4] 2342 	STA      *0x0C
   263E 4F            [ 2] 2343 	CLRA     
   263F 97 00         [ 4] 2344 	STA      *0x00
   2641 F6 C9 BF      [ 5] 2345 	LDB      __x_	; _x_
   2644 0C 00         [ 6] 2346 	INC      *0x00
   2646 D7 01         [ 4] 2347 	STB      *0x01
   2648 97 05         [ 4] 2348 	STA      *0x05
                           2349 ; 815 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2350 	; #ENR#[645]dp_via_t1_cnt_lo  = 0x09;
                           2351 ;--- end asm ---
   264A C6 09         [ 2] 2352 	ldb	#9	;,
   264C D7 04         [ 4] 2353 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2354 ;----- asm -----
                           2355 ; 817 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   264E 86 40         [ 2] 2356 	LDA      #0x40
   2650 95 0D         [ 4] 2357 	BITA     *0x0D
   2652 27 FC         [ 3] 2358 	BEQ      . -2
                           2359 ;--- end asm ---
   2654                    2360 L67:
                           2361 ;----- asm -----
                           2362 ; 820 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2363 	; #ENR#[649]if (specialaction)
                           2364 ;--- end asm ---
   2654 F6 C8 A5      [ 5] 2365 	ldb	_specialAction	; specialAction.37, specialAction
   2657 27 0C         [ 3] 2366 	beq	L69	;
                           2367 ;----- asm -----
                           2368 ; 823 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2369 	; #ENR#[651]if (specialaction == special_dragonbreath)
                           2370 ;--- end asm ---
   2659 C1 01         [ 2] 2371 	cmpb	#1	;cmpqi:	; specialAction.37,
   265B 10 27 09 50   [ 6] 2372 	lbeq	L296	;
   265F C1 02         [ 2] 2373 	cmpb	#2	;cmpqi:	; specialAction.37,
   2661 10 27 09 3B   [ 6] 2374 	lbeq	L297	;
   2665                    2375 L69:
                           2376 ;----- asm -----
                           2377 ; 843 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2378 	; #ENR#[664]if (initsoundno)
                           2379 ;--- end asm ---
   2665 F6 C8 A6      [ 5] 2380 	ldb	_initSoundNo	; initSoundNo.40, initSoundNo
   2668 27 26         [ 3] 2381 	beq	L71	;
                           2382 ;----- asm -----
                           2383 ; 846 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2384 	; #ENR#[666]if (initsoundno == sound_cube)
                           2385 ;--- end asm ---
   266A C1 01         [ 2] 2386 	cmpb	#1	;cmpqi:	; initSoundNo.40,
   266C 10 27 08 D3   [ 6] 2387 	lbeq	L298	;
   2670 C1 02         [ 2] 2388 	cmpb	#2	;cmpqi:	; initSoundNo.40,
   2672 10 27 0D 83   [ 6] 2389 	lbeq	L299	;
   2676 C1 03         [ 2] 2390 	cmpb	#3	;cmpqi:	; initSoundNo.40,
   2678 10 27 0A 0C   [ 6] 2391 	lbeq	L300	;
   267C C1 04         [ 2] 2392 	cmpb	#4	;cmpqi:	; initSoundNo.40,
   267E 10 27 0D 90   [ 6] 2393 	lbeq	L301	;
   2682 C1 05         [ 2] 2394 	cmpb	#5	;cmpqi:	; initSoundNo.40,
   2684 10 27 0F F1   [ 6] 2395 	lbeq	L302	;
   2688                    2396 L73:
                           2397 ;----- asm -----
                           2398 ; 872 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2399 	; #ENR#[686]sfx_status_1 = 1;
                           2400 ;--- end asm ---
   2688 C6 01         [ 2] 2401 	ldb	#1	;,
   268A F7 CA BA      [ 5] 2402 	stb	_sfx_status_1	;, sfx_status_1
                           2403 ;----- asm -----
                           2404 ; 875 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2405 	; #ENR#[688]initsoundno = 0;
                           2406 ;--- end asm ---
   268D 7F C8 A6      [ 7] 2407 	clr	_initSoundNo	; initSoundNo
   2690                    2408 L71:
                           2409 ;----- asm -----
                           2410 ; 878 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2411 	; #ENR#[690]if (sfx_status_1 == 1)
                           2412 ;--- end asm ---
   2690 F6 CA BA      [ 5] 2413 	ldb	_sfx_status_1	; sfx_status_1.46, sfx_status_1
   2693 C1 01         [ 2] 2414 	cmpb	#1	;cmpqi:	; sfx_status_1.46,
   2695 10 27 07 F4   [ 6] 2415 	lbeq	L303	;
   2699                    2416 L77:
                           2417 ;----- asm -----
                           2418 ; 884 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2419 	; #ENR#[694]if (printcharacter)
                           2420 ;--- end asm ---
   2699 7D C8 F7      [ 7] 2421 	tst	_printCharacter	; printCharacter
   269C 10 26 07 DF   [ 6] 2422 	lbne	L304	;
   26A0                    2423 L78:
                           2424 ;----- asm -----
                           2425 ; 895 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2426 	; #ENR#[701]if (!printdungeon) return;
                           2427 ;--- end asm ---
   26A0 7D C8 F3      [ 7] 2428 	tst	_printDungeon	; printDungeon
   26A3 10 27 07 AD   [ 6] 2429 	lbeq	L275	;
                           2430 ;----- asm -----
                           2431 ; 899 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2432 	; #ENR#[704]if (m != -1)
                           2433 ;--- end asm ---
   26A7 F6 C9 62      [ 5] 2434 	ldb	_m	;, m
   26AA C1 FF         [ 2] 2435 	cmpb	#-1	;cmpqi:	;,
   26AC 10 27 07 A9   [ 6] 2436 	lbeq	L80	;
                           2437 ;----- asm -----
                           2438 ; 902 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2439 	; #ENR#[706]dp_via_t1_cnt_lo  = 0x09;
                           2440 ;--- end asm ---
   26B0 C6 09         [ 2] 2441 	ldb	#9	;,
   26B2 D7 04         [ 4] 2442 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2443 ;----- asm -----
                           2444 ; 904 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2445 	; #ENR#[707]dp_via_cntl = 0xce;
                           2446 ;--- end asm ---
   26B4 C6 CE         [ 2] 2447 	ldb	#-50	;,
   26B6 D7 0C         [ 4] 2448 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           2449 ;----- asm -----
                           2450 ; 906 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2451 	; #ENR#[708]monsterdrawer[m]();
                           2452 ;--- end asm ---
   26B8 F6 C9 62      [ 5] 2453 	ldb	_m	;, m
   26BB 1D            [ 2] 2454 	sex		;extendqihi2: R:b -> R:d	;,
   26BC ED E4         [ 5] 2455 	std	,s	;,
   26BE 58            [ 2] 2456 	aslb	;
   26BF 49            [ 2] 2457 	rola	;
   26C0 1F 01         [ 6] 2458 	tfr	d,x	;, tmp142
   26C2 AD 99 1F 03   [14] 2459 	jsr	[_monsterDrawer,x]
   26C6                    2460 L81:
                           2461 ;----- asm -----
                           2462 ; 929 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2463 	; #ENR#[724]reset0ref();
                           2464 ;--- end asm ---
   26C6 C6 CC         [ 2] 2465 	ldb	#-52	;,
   26C8 D7 0C         [ 4] 2466 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           2467 ;----- asm -----
                           2468 ; 934 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2469 	; #ENR#[728]drawroom(any_item(item(item_00, map00_hi)), getup(drawup_00, map00_lo), getleft(drawleft_00, map00_lo), room_y(0), room_x(0));
                           2470 ;--- end asm ---
   26CA F6 C8 89      [ 5] 2471 	ldb	_screen+9	;,
   26CD E7 64         [ 5] 2472 	stb	4,s	;, D.3603
   26CF C6 03         [ 2] 2473 	ldb	#3	;,
   26D1 E4 64         [ 5] 2474 	andb	4,s	;, D.3603
   26D3 E7 64         [ 5] 2475 	stb	4,s	;, D.3603
   26D5 C1 01         [ 2] 2476 	cmpb	#1	;cmpqi:	;,
   26D7 10 23 0C CA   [ 6] 2477 	lbls	L83	;
   26DB 10 8E C8 8B   [ 4] 2478 	ldy	#_screen+11	; prephitmp.327,
   26DF F6 C8 8B      [ 5] 2479 	ldb	_screen+11	;,
   26E2 E7 E8 28      [ 5] 2480 	stb	40,s	;, prephitmp.329
   26E5 6F 63         [ 7] 2481 	clr	3,s	; iftmp.52
   26E7                    2482 L84:
   26E7 C6 03         [ 2] 2483 	ldb	#3	;,
   26E9 E4 E8 28      [ 5] 2484 	andb	40,s	;, prephitmp.329
   26EC E7 66         [ 5] 2485 	stb	6,s	;, D.3613
   26EE C1 01         [ 2] 2486 	cmpb	#1	;cmpqi:	;,
   26F0 10 23 0C 98   [ 6] 2487 	lbls	L305	;
   26F4                    2488 L86:
   26F4 6F 65         [ 7] 2489 	clr	5,s	; iftmp.53
   26F6                    2490 L87:
   26F6 7D C9 55      [ 7] 2491 	tst	_sf+2	; sf
   26F9 27 10         [ 3] 2492 	beq	L88	;
   26FB E6 64         [ 5] 2493 	ldb	4,s	;, D.3603
   26FD C1 01         [ 2] 2494 	cmpb	#1	;cmpqi:	;,
   26FF 10 23 08 CA   [ 6] 2495 	lbls	L306	;
   2703                    2496 L89:
   2703 E6 66         [ 5] 2497 	ldb	6,s	;, D.3613
   2705 C1 01         [ 2] 2498 	cmpb	#1	;cmpqi:	;,
   2707 10 23 09 93   [ 6] 2499 	lbls	L307	;
   270B                    2500 L88:
   270B 6F 67         [ 7] 2501 	clr	7,s	; iftmp.54
   270D                    2502 L91:
   270D C6 7F         [ 2] 2503 	ldb	#127	;,
   270F E7 E8 3C      [ 5] 2504 	stb	60,s	;, ry
   2712 5C            [ 2] 2505 	incb	;
   2713 E7 E8 3B      [ 5] 2506 	stb	59,s	;, rx
                           2507 ;----- asm -----
                           2508 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2509 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2510 ;--- end asm ---
   2716 E6 65         [ 5] 2511 	ldb	5,s	; tmp162, iftmp.53
   2718 EB 63         [ 5] 2512 	addb	3,s	; tmp162, iftmp.52
   271A EB 67         [ 5] 2513 	addb	7,s	; tmp162, iftmp.54
   271C 10 27 00 45   [ 6] 2514 	lbeq	L92	;
                           2515 ;----- asm -----
                           2516 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2517 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2518 ;--- end asm ---
   2720 C6 46         [ 2] 2519 	ldb	#70	;,
   2722 D7 04         [ 4] 2520 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2521 ;----- asm -----
                           2522 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2523 	; #ENR#[569]moveto_start;
                           2524 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2724 A6 E8 3C      [ 5] 2525 	LDA      60,s	; ry
   2727 97 01         [ 4] 2526 	STA      *0x01
   2729 86 CE         [ 2] 2527 	LDA      #0xCE
   272B 97 0C         [ 4] 2528 	STA      *0x0C
   272D 4F            [ 2] 2529 	CLRA     
   272E 97 00         [ 4] 2530 	STA      *0x00
   2730 E6 E8 3B      [ 5] 2531 	LDB      59,s	; rx
   2733 0C 00         [ 6] 2532 	INC      *0x00
   2735 D7 01         [ 4] 2533 	STB      *0x01
   2737 97 05         [ 4] 2534 	STA      *0x05
                           2535 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2536 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2537 ;--- end asm ---
   2739 C6 09         [ 2] 2538 	ldb	#9	;,
   273B D7 04         [ 4] 2539 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2540 ;----- asm -----
                           2541 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2542 	; #ENR#[572]if (drawup == 2)
                           2543 ;--- end asm ---
   273D E6 65         [ 5] 2544 	ldb	5,s	;, iftmp.53
   273F C1 02         [ 2] 2545 	cmpb	#2	;cmpqi:	;,
   2741 10 27 0E 2D   [ 6] 2546 	lbeq	L308	;
   2745 C1 03         [ 2] 2547 	cmpb	#3	;cmpqi:	;,
   2747 10 27 0D 20   [ 6] 2548 	lbeq	L309	;
                           2549 ;----- asm -----
                           2550 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2551 	; #ENR#[592]if (drawleft == 2)
                           2552 ;--- end asm ---
   274B E6 63         [ 5] 2553 	ldb	3,s	;, iftmp.52
   274D C1 02         [ 2] 2554 	cmpb	#2	;cmpqi:	;,
   274F 10 27 0F 5C   [ 6] 2555 	lbeq	L310	;
   2753 C1 03         [ 2] 2556 	cmpb	#3	;cmpqi:	;,
   2755 10 27 0F F4   [ 6] 2557 	lbeq	L311	;
                           2558 ;----- asm -----
                           2559 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2560 	; #ENR#[604]if (content == 10) drawunkown();
                           2561 ;--- end asm ---
   2759 E6 67         [ 5] 2562 	ldb	7,s	;, iftmp.54
   275B C1 0A         [ 2] 2563 	cmpb	#10	;cmpqi:	;,
   275D 10 27 10 29   [ 6] 2564 	lbeq	L312	;
   2761                    2565 L96:
                           2566 ;----- asm -----
                           2567 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2568 	; #ENR#[607]reset0ref();
                           2569 ;--- end asm ---
   2761 C6 CC         [ 2] 2570 	ldb	#-52	;,
   2763 D7 0C         [ 4] 2571 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2765                    2572 L92:
                           2573 ;----- asm -----
                           2574 ; 936 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2575 	; #ENR#[729]drawroom(any_item(item(item_01, map01_hi)), getup(drawup_01, map01_lo), getleft(drawleft_01, map01_lo), room_y(0), room_x(1));
                           2576 ;--- end asm ---
   2765 E6 A4         [ 4] 2577 	ldb	,y	;,* prephitmp.327
   2767 E7 E8 2D      [ 5] 2578 	stb	45,s	;, temp.362
   276A C6 03         [ 2] 2579 	ldb	#3	;,
   276C E4 E8 2D      [ 5] 2580 	andb	45,s	;, temp.362
   276F E7 E8 2D      [ 5] 2581 	stb	45,s	;, temp.362
   2772 C1 01         [ 2] 2582 	cmpb	#1	;cmpqi:	;,
   2774 10 23 0B 5B   [ 6] 2583 	lbls	L102	;
   2778 6F 69         [ 7] 2584 	clr	9,s	; iftmp.57
   277A 6F 68         [ 7] 2585 	clr	8,s	; iftmp.56
   277C 6F E8 2E      [ 7] 2586 	clr	46,s	; prephitmp.366
   277F                    2587 L103:
   277F 7D C9 55      [ 7] 2588 	tst	_sf+2	; sf
   2782 27 09         [ 3] 2589 	beq	L104	;
   2784 E6 E8 2D      [ 5] 2590 	ldb	45,s	;, temp.362
   2787 C1 01         [ 2] 2591 	cmpb	#1	;cmpqi:	;,
   2789 10 23 08 E6   [ 6] 2592 	lbls	L313	;
   278D                    2593 L104:
   278D 6F 6A         [ 7] 2594 	clr	10,s	; iftmp.58
   278F                    2595 L105:
   278F C6 7F         [ 2] 2596 	ldb	#127	;,
   2791 E7 E8 3B      [ 5] 2597 	stb	59,s	;, ry
   2794 C6 D5         [ 2] 2598 	ldb	#-43	;,
   2796 E7 E8 3C      [ 5] 2599 	stb	60,s	;, rx
                           2600 ;----- asm -----
                           2601 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2602 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2603 ;--- end asm ---
   2799 E6 6A         [ 5] 2604 	ldb	10,s	;, iftmp.58
   279B EB E8 2E      [ 5] 2605 	addb	46,s	;, prephitmp.366
   279E 10 27 00 45   [ 6] 2606 	lbeq	L106	;
                           2607 ;----- asm -----
                           2608 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2609 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2610 ;--- end asm ---
   27A2 C6 46         [ 2] 2611 	ldb	#70	;,
   27A4 D7 04         [ 4] 2612 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2613 ;----- asm -----
                           2614 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2615 	; #ENR#[569]moveto_start;
                           2616 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   27A6 A6 E8 3B      [ 5] 2617 	LDA      59,s	; ry
   27A9 97 01         [ 4] 2618 	STA      *0x01
   27AB 86 CE         [ 2] 2619 	LDA      #0xCE
   27AD 97 0C         [ 4] 2620 	STA      *0x0C
   27AF 4F            [ 2] 2621 	CLRA     
   27B0 97 00         [ 4] 2622 	STA      *0x00
   27B2 E6 E8 3C      [ 5] 2623 	LDB      60,s	; rx
   27B5 0C 00         [ 6] 2624 	INC      *0x00
   27B7 D7 01         [ 4] 2625 	STB      *0x01
   27B9 97 05         [ 4] 2626 	STA      *0x05
                           2627 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2628 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2629 ;--- end asm ---
   27BB C6 09         [ 2] 2630 	ldb	#9	;,
   27BD D7 04         [ 4] 2631 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2632 ;----- asm -----
                           2633 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2634 	; #ENR#[572]if (drawup == 2)
                           2635 ;--- end asm ---
   27BF E6 69         [ 5] 2636 	ldb	9,s	;, iftmp.57
   27C1 C1 02         [ 2] 2637 	cmpb	#2	;cmpqi:	;,
   27C3 10 27 0D EB   [ 6] 2638 	lbeq	L314	;
   27C7 C1 03         [ 2] 2639 	cmpb	#3	;cmpqi:	;,
   27C9 10 27 0C 73   [ 6] 2640 	lbeq	L315	;
                           2641 ;----- asm -----
                           2642 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2643 	; #ENR#[592]if (drawleft == 2)
                           2644 ;--- end asm ---
   27CD E6 68         [ 5] 2645 	ldb	8,s	;, iftmp.56
   27CF C1 02         [ 2] 2646 	cmpb	#2	;cmpqi:	;,
   27D1 10 27 0E E8   [ 6] 2647 	lbeq	L316	;
   27D5 C1 03         [ 2] 2648 	cmpb	#3	;cmpqi:	;,
   27D7 10 27 0F 80   [ 6] 2649 	lbeq	L317	;
                           2650 ;----- asm -----
                           2651 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2652 	; #ENR#[604]if (content == 10) drawunkown();
                           2653 ;--- end asm ---
   27DB E6 6A         [ 5] 2654 	ldb	10,s	;, iftmp.58
   27DD C1 0A         [ 2] 2655 	cmpb	#10	;cmpqi:	;,
   27DF 10 27 0F B9   [ 6] 2656 	lbeq	L318	;
   27E3                    2657 L110:
                           2658 ;----- asm -----
                           2659 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2660 	; #ENR#[607]reset0ref();
                           2661 ;--- end asm ---
   27E3 C6 CC         [ 2] 2662 	ldb	#-52	;,
   27E5 D7 0C         [ 4] 2663 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   27E7                    2664 L106:
                           2665 ;----- asm -----
                           2666 ; 938 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2667 	; #ENR#[730]drawroom(any_item(item(item_02, map02_hi)), getup(drawup_02, map02_lo), getleft(drawleft_02, map02_lo), room_y(0), room_x(2));
                           2668 ;--- end asm ---
   27E7 F6 C8 85      [ 5] 2669 	ldb	_screen+5	;,
   27EA E7 6B         [ 5] 2670 	stb	11,s	;, D.3637
   27EC 54            [ 2] 2671 	lsrb	;
   27ED 54            [ 2] 2672 	lsrb	;
   27EE E7 6C         [ 5] 2673 	stb	12,s	;, D.3639
   27F0 C6 03         [ 2] 2674 	ldb	#3	;,
   27F2 E4 6C         [ 5] 2675 	andb	12,s	;, D.3639
   27F4 E7 6C         [ 5] 2676 	stb	12,s	;, D.3639
   27F6 E6 A4         [ 4] 2677 	ldb	,y	;,* prephitmp.327
   27F8 E7 E8 2F      [ 5] 2678 	stb	47,s	;, temp.369
   27FB C6 03         [ 2] 2679 	ldb	#3	;,
   27FD E4 E8 2F      [ 5] 2680 	andb	47,s	;, temp.369
   2800 E7 E8 2F      [ 5] 2681 	stb	47,s	;, temp.369
   2803 C1 01         [ 2] 2682 	cmpb	#1	;cmpqi:	;,
   2805 10 23 0A B7   [ 6] 2683 	lbls	L319	;
   2809                    2684 L116:
   2809 6F 6D         [ 7] 2685 	clr	13,s	; iftmp.60
   280B                    2686 L117:
   280B 7D C9 55      [ 7] 2687 	tst	_sf+2	; sf
   280E 10 26 06 F9   [ 6] 2688 	lbne	L118	;
   2812 8E C8 8D      [ 3] 2689 	ldx	#_screen+13	;,
   2815 AF E8 35      [ 6] 2690 	stx	53,s	;, prephitmp.395
   2818 6F 6E         [ 7] 2691 	clr	14,s	; iftmp.61
   281A                    2692 L119:
   281A C6 7F         [ 2] 2693 	ldb	#127	;,
   281C E7 E8 3C      [ 5] 2694 	stb	60,s	;, ry
   281F C6 2A         [ 2] 2695 	ldb	#42	;,
   2821 E7 E8 3B      [ 5] 2696 	stb	59,s	;, rx
                           2697 ;----- asm -----
                           2698 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2699 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2700 ;--- end asm ---
   2824 E6 6D         [ 5] 2701 	ldb	13,s	; tmp177, iftmp.60
   2826 EB 6C         [ 5] 2702 	addb	12,s	; tmp177, D.3639
   2828 EB 6E         [ 5] 2703 	addb	14,s	; tmp177, iftmp.61
   282A 10 27 00 45   [ 6] 2704 	lbeq	L124	;
                           2705 ;----- asm -----
                           2706 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2707 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2708 ;--- end asm ---
   282E C6 46         [ 2] 2709 	ldb	#70	;,
   2830 D7 04         [ 4] 2710 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2711 ;----- asm -----
                           2712 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2713 	; #ENR#[569]moveto_start;
                           2714 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2832 A6 E8 3C      [ 5] 2715 	LDA      60,s	; ry
   2835 97 01         [ 4] 2716 	STA      *0x01
   2837 86 CE         [ 2] 2717 	LDA      #0xCE
   2839 97 0C         [ 4] 2718 	STA      *0x0C
   283B 4F            [ 2] 2719 	CLRA     
   283C 97 00         [ 4] 2720 	STA      *0x00
   283E E6 E8 3B      [ 5] 2721 	LDB      59,s	; rx
   2841 0C 00         [ 6] 2722 	INC      *0x00
   2843 D7 01         [ 4] 2723 	STB      *0x01
   2845 97 05         [ 4] 2724 	STA      *0x05
                           2725 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2726 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2727 ;--- end asm ---
   2847 C6 09         [ 2] 2728 	ldb	#9	;,
   2849 D7 04         [ 4] 2729 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2730 ;----- asm -----
                           2731 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2732 	; #ENR#[572]if (drawup == 2)
                           2733 ;--- end asm ---
   284B E6 6D         [ 5] 2734 	ldb	13,s	;, iftmp.60
   284D C1 02         [ 2] 2735 	cmpb	#2	;cmpqi:	;,
   284F 10 27 0D 03   [ 6] 2736 	lbeq	L320	;
   2853 C1 03         [ 2] 2737 	cmpb	#3	;cmpqi:	;,
   2855 10 27 0B C2   [ 6] 2738 	lbeq	L321	;
                           2739 ;----- asm -----
                           2740 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2741 	; #ENR#[592]if (drawleft == 2)
                           2742 ;--- end asm ---
   2859 E6 6C         [ 5] 2743 	ldb	12,s	;, D.3639
   285B C1 02         [ 2] 2744 	cmpb	#2	;cmpqi:	;,
   285D 10 27 0E 6A   [ 6] 2745 	lbeq	L322	;
   2861 C1 03         [ 2] 2746 	cmpb	#3	;cmpqi:	;,
   2863 10 27 0E C9   [ 6] 2747 	lbeq	L323	;
                           2748 ;----- asm -----
                           2749 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2750 	; #ENR#[604]if (content == 10) drawunkown();
                           2751 ;--- end asm ---
   2867 E6 6E         [ 5] 2752 	ldb	14,s	;, iftmp.61
   2869 C1 0A         [ 2] 2753 	cmpb	#10	;cmpqi:	;,
   286B 10 27 0F 0F   [ 6] 2754 	lbeq	L324	;
   286F                    2755 L128:
                           2756 ;----- asm -----
                           2757 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2758 	; #ENR#[607]reset0ref();
                           2759 ;--- end asm ---
   286F C6 CC         [ 2] 2760 	ldb	#-52	;,
   2871 D7 0C         [ 4] 2761 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2873                    2762 L124:
                           2763 ;----- asm -----
                           2764 ; 940 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2765 	; #ENR#[731]drawroom(0, getup(drawup_03, map03_lo), getleft(drawleft_03, map03_lo), room_y(0), room_x(3));
                           2766 ;--- end asm ---
   2873 AE E8 35      [ 6] 2767 	ldx	53,s	;, prephitmp.395
   2876 E6 84         [ 4] 2768 	ldb	,x	;,
   2878 E7 E8 30      [ 5] 2769 	stb	48,s	;, temp.372
   287B C6 03         [ 2] 2770 	ldb	#3	; tmp179,
   287D E4 E8 30      [ 5] 2771 	andb	48,s	; tmp179, temp.372
   2880 C1 01         [ 2] 2772 	cmpb	#1	;cmpqi:	; tmp179,
   2882 10 23 0A E8   [ 6] 2773 	lbls	L325	;
   2886                    2774 L134:
   2886 6F E8 10      [ 7] 2775 	clr	16,s	; iftmp.63
   2889                    2776 L135:
   2889 C6 7F         [ 2] 2777 	ldb	#127	;,
   288B E7 E8 3B      [ 5] 2778 	stb	59,s	;, ry
   288E E7 E8 3C      [ 5] 2779 	stb	60,s	;, rx
                           2780 ;----- asm -----
                           2781 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2782 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2783 ;--- end asm ---
   2891 6D E8 10      [ 7] 2784 	tst	16,s	; iftmp.63
   2894 10 27 00 30   [ 6] 2785 	lbeq	L136	;
                           2786 ;----- asm -----
                           2787 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2788 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2789 ;--- end asm ---
   2898 C6 46         [ 2] 2790 	ldb	#70	;,
   289A D7 04         [ 4] 2791 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2792 ;----- asm -----
                           2793 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2794 	; #ENR#[569]moveto_start;
                           2795 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   289C A6 E8 3B      [ 5] 2796 	LDA      59,s	; ry
   289F 97 01         [ 4] 2797 	STA      *0x01
   28A1 86 CE         [ 2] 2798 	LDA      #0xCE
   28A3 97 0C         [ 4] 2799 	STA      *0x0C
   28A5 4F            [ 2] 2800 	CLRA     
   28A6 97 00         [ 4] 2801 	STA      *0x00
   28A8 E6 E8 3C      [ 5] 2802 	LDB      60,s	; rx
   28AB 0C 00         [ 6] 2803 	INC      *0x00
   28AD D7 01         [ 4] 2804 	STB      *0x01
   28AF 97 05         [ 4] 2805 	STA      *0x05
                           2806 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2807 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2808 ;--- end asm ---
   28B1 C6 09         [ 2] 2809 	ldb	#9	;,
   28B3 D7 04         [ 4] 2810 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2811 ;----- asm -----
                           2812 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2813 	; #ENR#[572]if (drawup == 2)
                           2814 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2815 	; #ENR#[592]if (drawleft == 2)
                           2816 ;--- end asm ---
   28B5 E6 E8 10      [ 5] 2817 	ldb	16,s	;, iftmp.63
   28B8 C1 02         [ 2] 2818 	cmpb	#2	;cmpqi:	;,
   28BA 10 27 0C EE   [ 6] 2819 	lbeq	L326	;
   28BE C1 03         [ 2] 2820 	cmpb	#3	;cmpqi:	;,
   28C0 10 27 0B 76   [ 6] 2821 	lbeq	L327	;
                           2822 ;----- asm -----
                           2823 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2824 	; #ENR#[604]if (content == 10) drawunkown();
                           2825 ;--- end asm ---
   28C4                    2826 L138:
                           2827 ;----- asm -----
                           2828 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2829 	; #ENR#[607]reset0ref();
                           2830 ;--- end asm ---
   28C4 C6 CC         [ 2] 2831 	ldb	#-52	;,
   28C6 D7 0C         [ 4] 2832 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   28C8                    2833 L136:
                           2834 ;----- asm -----
                           2835 ; 943 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2836 	; #ENR#[733]drawroom(any_item(item(item_10, map10_hi)), getup(drawup_10, map10_lo), getleft(drawleft_10, map10_lo), room_y(1), room_x(0));
                           2837 ;--- end asm ---
   28C8 E6 A4         [ 4] 2838 	ldb	,y	;,* prephitmp.327
   28CA E7 E8 31      [ 5] 2839 	stb	49,s	;, temp.376
   28CD C6 0C         [ 2] 2840 	ldb	#12	;,
   28CF E4 E8 31      [ 5] 2841 	andb	49,s	;, temp.376
   28D2 E7 E8 31      [ 5] 2842 	stb	49,s	;, temp.376
   28D5 C1 04         [ 2] 2843 	cmpb	#4	;cmpqi:	;,
   28D7 10 23 06 0C   [ 6] 2844 	lbls	L140	;
   28DB 6F E8 12      [ 7] 2845 	clr	18,s	; iftmp.65
   28DE 6F E8 11      [ 7] 2846 	clr	17,s	; iftmp.64
   28E1 6F E8 29      [ 7] 2847 	clr	41,s	; prephitmp.331
   28E4                    2848 L141:
   28E4 7D C9 55      [ 7] 2849 	tst	_sf+2	; sf
   28E7 27 09         [ 3] 2850 	beq	L142	;
   28E9 E6 E8 31      [ 5] 2851 	ldb	49,s	;, temp.376
   28EC C1 04         [ 2] 2852 	cmpb	#4	;cmpqi:	;,
   28EE 10 23 06 82   [ 6] 2853 	lbls	L328	;
   28F2                    2854 L142:
   28F2 6F E8 13      [ 7] 2855 	clr	19,s	; iftmp.66
   28F5                    2856 L143:
   28F5 C6 2A         [ 2] 2857 	ldb	#42	;,
   28F7 E7 E8 3C      [ 5] 2858 	stb	60,s	;, ry
   28FA C6 80         [ 2] 2859 	ldb	#-128	;,
   28FC E7 E8 3B      [ 5] 2860 	stb	59,s	;, rx
                           2861 ;----- asm -----
                           2862 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2863 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2864 ;--- end asm ---
   28FF E6 E8 13      [ 5] 2865 	ldb	19,s	;, iftmp.66
   2902 EB E8 29      [ 5] 2866 	addb	41,s	;, prephitmp.331
   2905 10 27 00 48   [ 6] 2867 	lbeq	L144	;
                           2868 ;----- asm -----
                           2869 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2870 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2871 ;--- end asm ---
   2909 C6 46         [ 2] 2872 	ldb	#70	;,
   290B D7 04         [ 4] 2873 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2874 ;----- asm -----
                           2875 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2876 	; #ENR#[569]moveto_start;
                           2877 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   290D A6 E8 3C      [ 5] 2878 	LDA      60,s	; ry
   2910 97 01         [ 4] 2879 	STA      *0x01
   2912 86 CE         [ 2] 2880 	LDA      #0xCE
   2914 97 0C         [ 4] 2881 	STA      *0x0C
   2916 4F            [ 2] 2882 	CLRA     
   2917 97 00         [ 4] 2883 	STA      *0x00
   2919 E6 E8 3B      [ 5] 2884 	LDB      59,s	; rx
   291C 0C 00         [ 6] 2885 	INC      *0x00
   291E D7 01         [ 4] 2886 	STB      *0x01
   2920 97 05         [ 4] 2887 	STA      *0x05
                           2888 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2889 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2890 ;--- end asm ---
   2922 C6 09         [ 2] 2891 	ldb	#9	;,
   2924 D7 04         [ 4] 2892 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2893 ;----- asm -----
                           2894 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2895 	; #ENR#[572]if (drawup == 2)
                           2896 ;--- end asm ---
   2926 E6 E8 12      [ 5] 2897 	ldb	18,s	;, iftmp.65
   2929 C1 02         [ 2] 2898 	cmpb	#2	;cmpqi:	;,
   292B 10 27 0C 9F   [ 6] 2899 	lbeq	L329	;
   292F C1 03         [ 2] 2900 	cmpb	#3	;cmpqi:	;,
   2931 10 27 0B 76   [ 6] 2901 	lbeq	L330	;
                           2902 ;----- asm -----
                           2903 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2904 	; #ENR#[592]if (drawleft == 2)
                           2905 ;--- end asm ---
   2935 E6 E8 11      [ 5] 2906 	ldb	17,s	;, iftmp.64
   2938 C1 02         [ 2] 2907 	cmpb	#2	;cmpqi:	;,
   293A 10 27 0D 9B   [ 6] 2908 	lbeq	L331	;
   293E C1 03         [ 2] 2909 	cmpb	#3	;cmpqi:	;,
   2940 10 27 0D C8   [ 6] 2910 	lbeq	L332	;
                           2911 ;----- asm -----
                           2912 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2913 	; #ENR#[604]if (content == 10) drawunkown();
                           2914 ;--- end asm ---
   2944 E6 E8 13      [ 5] 2915 	ldb	19,s	;, iftmp.66
   2947 C1 0A         [ 2] 2916 	cmpb	#10	;cmpqi:	;,
   2949 10 27 0E 43   [ 6] 2917 	lbeq	L333	;
   294D                    2918 L148:
                           2919 ;----- asm -----
                           2920 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2921 	; #ENR#[607]reset0ref();
                           2922 ;--- end asm ---
   294D C6 CC         [ 2] 2923 	ldb	#-52	;,
   294F D7 0C         [ 4] 2924 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2951                    2925 L144:
                           2926 ;----- asm -----
                           2927 ; 946 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2928 	; #ENR#[735]drawroom(0, getup(drawup_11, map11_lo), getleft(drawleft_11, map11_lo), room_y(1), room_x(1));
                           2929 ;--- end asm ---
   2951 E6 A4         [ 4] 2930 	ldb	,y	;,* prephitmp.327
   2953 54            [ 2] 2931 	lsrb	;
   2954 54            [ 2] 2932 	lsrb	;
   2955 E7 E8 14      [ 5] 2933 	stb	20,s	;, D.3674
   2958 C6 03         [ 2] 2934 	ldb	#3	;,
   295A E4 E8 14      [ 5] 2935 	andb	20,s	;, D.3674
   295D E7 E8 14      [ 5] 2936 	stb	20,s	;, D.3674
   2960 C6 03         [ 2] 2937 	ldb	#3	;,
   2962 E4 A4         [ 4] 2938 	andb	,y	;,* prephitmp.327
   2964 E7 E8 24      [ 5] 2939 	stb	36,s	;, D.4168
   2967 C6 2A         [ 2] 2940 	ldb	#42	;,
   2969 E7 E8 3B      [ 5] 2941 	stb	59,s	;, ry
   296C C6 D5         [ 2] 2942 	ldb	#-43	;,
   296E E7 E8 3C      [ 5] 2943 	stb	60,s	;, rx
                           2944 ;----- asm -----
                           2945 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2946 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           2947 ;--- end asm ---
   2971 E6 E8 14      [ 5] 2948 	ldb	20,s	; tmp188, D.3674
   2974 EB E8 24      [ 5] 2949 	addb	36,s	; tmp188, D.4168
   2977 10 27 00 3F   [ 6] 2950 	lbeq	L154	;
                           2951 ;----- asm -----
                           2952 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2953 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           2954 ;--- end asm ---
   297B C6 46         [ 2] 2955 	ldb	#70	;,
   297D D7 04         [ 4] 2956 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2957 ;----- asm -----
                           2958 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2959 	; #ENR#[569]moveto_start;
                           2960 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   297F A6 E8 3B      [ 5] 2961 	LDA      59,s	; ry
   2982 97 01         [ 4] 2962 	STA      *0x01
   2984 86 CE         [ 2] 2963 	LDA      #0xCE
   2986 97 0C         [ 4] 2964 	STA      *0x0C
   2988 4F            [ 2] 2965 	CLRA     
   2989 97 00         [ 4] 2966 	STA      *0x00
   298B E6 E8 3C      [ 5] 2967 	LDB      60,s	; rx
   298E 0C 00         [ 6] 2968 	INC      *0x00
   2990 D7 01         [ 4] 2969 	STB      *0x01
   2992 97 05         [ 4] 2970 	STA      *0x05
                           2971 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2972 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           2973 ;--- end asm ---
   2994 C6 09         [ 2] 2974 	ldb	#9	;,
   2996 D7 04         [ 4] 2975 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2976 ;----- asm -----
                           2977 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2978 	; #ENR#[572]if (drawup == 2)
                           2979 ;--- end asm ---
   2998 E6 E8 24      [ 5] 2980 	ldb	36,s	;, D.4168
   299B C1 02         [ 2] 2981 	cmpb	#2	;cmpqi:	;,
   299D 10 27 0C 4B   [ 6] 2982 	lbeq	L334	;
   29A1 C1 03         [ 2] 2983 	cmpb	#3	;cmpqi:	;,
   29A3 10 27 0B 25   [ 6] 2984 	lbeq	L335	;
                           2985 ;----- asm -----
                           2986 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2987 	; #ENR#[592]if (drawleft == 2)
                           2988 ;--- end asm ---
   29A7 E6 E8 14      [ 5] 2989 	ldb	20,s	;, D.3674
   29AA C1 02         [ 2] 2990 	cmpb	#2	;cmpqi:	;,
   29AC 10 27 0D 38   [ 6] 2991 	lbeq	L336	;
   29B0 C1 03         [ 2] 2992 	cmpb	#3	;cmpqi:	;,
   29B2 10 27 0D 65   [ 6] 2993 	lbeq	L337	;
                           2994 ;----- asm -----
                           2995 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2996 	; #ENR#[604]if (content == 10) drawunkown();
                           2997 ;--- end asm ---
   29B6                    2998 L158:
                           2999 ;----- asm -----
                           3000 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3001 	; #ENR#[607]reset0ref();
                           3002 ;--- end asm ---
   29B6 C6 CC         [ 2] 3003 	ldb	#-52	;,
   29B8 D7 0C         [ 4] 3004 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   29BA                    3005 L154:
                           3006 ;----- asm -----
                           3007 ; 948 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3008 	; #ENR#[736]drawroom(any_item(item(item_12, map12_hi)), getup(drawup_12, map12_lo), getleft(drawleft_12, map12_lo), room_y(1), room_x(2));
                           3009 ;--- end asm ---
   29BA AE E8 35      [ 6] 3010 	ldx	53,s	;, prephitmp.395
   29BD E6 84         [ 4] 3011 	ldb	,x	;,
   29BF E7 62         [ 5] 3012 	stb	2,s	;, temp.382
   29C1 54            [ 2] 3013 	lsrb	;
   29C2 54            [ 2] 3014 	lsrb	;
   29C3 E7 E8 15      [ 5] 3015 	stb	21,s	;, D.3676
   29C6 C6 03         [ 2] 3016 	ldb	#3	;,
   29C8 E4 E8 15      [ 5] 3017 	andb	21,s	;, D.3676
   29CB E7 E8 15      [ 5] 3018 	stb	21,s	;, D.3676
   29CE C6 0C         [ 2] 3019 	ldb	#12	;,
   29D0 E4 62         [ 5] 3020 	andb	2,s	;, temp.382
   29D2 E7 E8 32      [ 5] 3021 	stb	50,s	;, temp.383
   29D5 C1 04         [ 2] 3022 	cmpb	#4	;cmpqi:	;,
   29D7 10 23 05 02   [ 6] 3023 	lbls	L164	;
   29DB 6F E8 16      [ 7] 3024 	clr	22,s	; iftmp.68
   29DE                    3025 L165:
   29DE 7D C9 55      [ 7] 3026 	tst	_sf+2	; sf
   29E1 27 09         [ 3] 3027 	beq	L166	;
   29E3 E6 E8 32      [ 5] 3028 	ldb	50,s	;, temp.383
   29E6 C1 04         [ 2] 3029 	cmpb	#4	;cmpqi:	;,
   29E8 10 23 05 9E   [ 6] 3030 	lbls	L338	;
   29EC                    3031 L166:
   29EC 6F E8 17      [ 7] 3032 	clr	23,s	; iftmp.69
   29EF                    3033 L167:
   29EF C6 2A         [ 2] 3034 	ldb	#42	;,
   29F1 E7 E8 3C      [ 5] 3035 	stb	60,s	;, ry
   29F4 E7 E8 3B      [ 5] 3036 	stb	59,s	;, rx
                           3037 ;----- asm -----
                           3038 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3039 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3040 ;--- end asm ---
   29F7 E6 E8 16      [ 5] 3041 	ldb	22,s	; tmp192, iftmp.68
   29FA EB E8 15      [ 5] 3042 	addb	21,s	; tmp192, D.3676
   29FD EB E8 17      [ 5] 3043 	addb	23,s	; tmp192, iftmp.69
   2A00 10 27 00 48   [ 6] 3044 	lbeq	L168	;
                           3045 ;----- asm -----
                           3046 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3047 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3048 ;--- end asm ---
   2A04 C6 46         [ 2] 3049 	ldb	#70	;,
   2A06 D7 04         [ 4] 3050 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3051 ;----- asm -----
                           3052 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3053 	; #ENR#[569]moveto_start;
                           3054 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2A08 A6 E8 3C      [ 5] 3055 	LDA      60,s	; ry
   2A0B 97 01         [ 4] 3056 	STA      *0x01
   2A0D 86 CE         [ 2] 3057 	LDA      #0xCE
   2A0F 97 0C         [ 4] 3058 	STA      *0x0C
   2A11 4F            [ 2] 3059 	CLRA     
   2A12 97 00         [ 4] 3060 	STA      *0x00
   2A14 E6 E8 3B      [ 5] 3061 	LDB      59,s	; rx
   2A17 0C 00         [ 6] 3062 	INC      *0x00
   2A19 D7 01         [ 4] 3063 	STB      *0x01
   2A1B 97 05         [ 4] 3064 	STA      *0x05
                           3065 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3066 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3067 ;--- end asm ---
   2A1D C6 09         [ 2] 3068 	ldb	#9	;,
   2A1F D7 04         [ 4] 3069 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3070 ;----- asm -----
                           3071 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3072 	; #ENR#[572]if (drawup == 2)
                           3073 ;--- end asm ---
   2A21 E6 E8 16      [ 5] 3074 	ldb	22,s	;, iftmp.68
   2A24 C1 02         [ 2] 3075 	cmpb	#2	;cmpqi:	;,
   2A26 10 27 0C 31   [ 6] 3076 	lbeq	L339	;
   2A2A C1 03         [ 2] 3077 	cmpb	#3	;cmpqi:	;,
   2A2C 10 27 0A B7   [ 6] 3078 	lbeq	L340	;
                           3079 ;----- asm -----
                           3080 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3081 	; #ENR#[592]if (drawleft == 2)
                           3082 ;--- end asm ---
   2A30 E6 E8 15      [ 5] 3083 	ldb	21,s	;, D.3676
   2A33 C1 02         [ 2] 3084 	cmpb	#2	;cmpqi:	;,
   2A35 10 27 0C B5   [ 6] 3085 	lbeq	L341	;
   2A39 C1 03         [ 2] 3086 	cmpb	#3	;cmpqi:	;,
   2A3B 10 27 0C BE   [ 6] 3087 	lbeq	L342	;
                           3088 ;----- asm -----
                           3089 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3090 	; #ENR#[604]if (content == 10) drawunkown();
                           3091 ;--- end asm ---
   2A3F E6 E8 17      [ 5] 3092 	ldb	23,s	;, iftmp.69
   2A42 C1 0A         [ 2] 3093 	cmpb	#10	;cmpqi:	;,
   2A44 10 27 0D 4E   [ 6] 3094 	lbeq	L343	;
   2A48                    3095 L172:
                           3096 ;----- asm -----
                           3097 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3098 	; #ENR#[607]reset0ref();
                           3099 ;--- end asm ---
   2A48 C6 CC         [ 2] 3100 	ldb	#-52	;,
   2A4A D7 0C         [ 4] 3101 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2A4C                    3102 L168:
                           3103 ;----- asm -----
                           3104 ; 950 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3105 	; #ENR#[737]drawroom(0, getup(drawup_13, map13_lo), getleft(drawleft_13, map13_lo), room_y(1), room_x(3));
                           3106 ;--- end asm ---
   2A4C AE E8 35      [ 6] 3107 	ldx	53,s	;, prephitmp.395
   2A4F E6 84         [ 4] 3108 	ldb	,x	; tmp195,
   2A51 C4 0C         [ 2] 3109 	andb	#12	; tmp195,
   2A53 C1 04         [ 2] 3110 	cmpb	#4	;cmpqi:	; tmp195,
   2A55 10 23 04 71   [ 6] 3111 	lbls	L178	;
   2A59 6F E8 18      [ 7] 3112 	clr	24,s	; iftmp.71
   2A5C                    3113 L179:
   2A5C C6 2A         [ 2] 3114 	ldb	#42	;,
   2A5E E7 E8 3B      [ 5] 3115 	stb	59,s	;, ry
   2A61 C6 7F         [ 2] 3116 	ldb	#127	;,
   2A63 E7 E8 3C      [ 5] 3117 	stb	60,s	;, rx
                           3118 ;----- asm -----
                           3119 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3120 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3121 ;--- end asm ---
   2A66 6D E8 18      [ 7] 3122 	tst	24,s	; iftmp.71
   2A69 10 27 00 30   [ 6] 3123 	lbeq	L180	;
                           3124 ;----- asm -----
                           3125 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3126 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3127 ;--- end asm ---
   2A6D C6 46         [ 2] 3128 	ldb	#70	;,
   2A6F D7 04         [ 4] 3129 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3130 ;----- asm -----
                           3131 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3132 	; #ENR#[569]moveto_start;
                           3133 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2A71 A6 E8 3B      [ 5] 3134 	LDA      59,s	; ry
   2A74 97 01         [ 4] 3135 	STA      *0x01
   2A76 86 CE         [ 2] 3136 	LDA      #0xCE
   2A78 97 0C         [ 4] 3137 	STA      *0x0C
   2A7A 4F            [ 2] 3138 	CLRA     
   2A7B 97 00         [ 4] 3139 	STA      *0x00
   2A7D E6 E8 3C      [ 5] 3140 	LDB      60,s	; rx
   2A80 0C 00         [ 6] 3141 	INC      *0x00
   2A82 D7 01         [ 4] 3142 	STB      *0x01
   2A84 97 05         [ 4] 3143 	STA      *0x05
                           3144 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3145 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3146 ;--- end asm ---
   2A86 C6 09         [ 2] 3147 	ldb	#9	;,
   2A88 D7 04         [ 4] 3148 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3149 ;----- asm -----
                           3150 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3151 	; #ENR#[572]if (drawup == 2)
                           3152 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3153 	; #ENR#[592]if (drawleft == 2)
                           3154 ;--- end asm ---
   2A8A E6 E8 18      [ 5] 3155 	ldb	24,s	;, iftmp.71
   2A8D C1 02         [ 2] 3156 	cmpb	#2	;cmpqi:	;,
   2A8F 10 27 0B C2   [ 6] 3157 	lbeq	L344	;
   2A93 C1 03         [ 2] 3158 	cmpb	#3	;cmpqi:	;,
   2A95 10 27 0A 48   [ 6] 3159 	lbeq	L345	;
                           3160 ;----- asm -----
                           3161 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3162 	; #ENR#[604]if (content == 10) drawunkown();
                           3163 ;--- end asm ---
   2A99                    3164 L182:
                           3165 ;----- asm -----
                           3166 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3167 	; #ENR#[607]reset0ref();
                           3168 ;--- end asm ---
   2A99 C6 CC         [ 2] 3169 	ldb	#-52	;,
   2A9B D7 0C         [ 4] 3170 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2A9D                    3171 L180:
                           3172 ;----- asm -----
                           3173 ; 953 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3174 	; #ENR#[739]drawroom(any_item(item(item_20, map20_hi)), getup(drawup_20, map20_lo), getleft(drawleft_20, map20_lo), room_y(2), room_x(0));
                           3175 ;--- end asm ---
   2A9D F6 C8 91      [ 5] 3176 	ldb	_screen+17	;,
   2AA0 E7 E8 1A      [ 5] 3177 	stb	26,s	;, D.3693
   2AA3 C6 03         [ 2] 3178 	ldb	#3	;,
   2AA5 E4 E8 1A      [ 5] 3179 	andb	26,s	;, D.3693
   2AA8 E7 E8 33      [ 5] 3180 	stb	51,s	;, iftmp.387
   2AAB C1 01         [ 2] 3181 	cmpb	#1	;cmpqi:	;,
   2AAD 10 23 09 0C   [ 6] 3182 	lbls	L346	;
   2AB1 E6 A4         [ 4] 3183 	ldb	,y	;,* prephitmp.327
   2AB3 E7 62         [ 5] 3184 	stb	2,s	;, temp.389
   2AB5 C6 0C         [ 2] 3185 	ldb	#12	;,
   2AB7 E4 62         [ 5] 3186 	andb	2,s	;, temp.389
   2AB9 E7 62         [ 5] 3187 	stb	2,s	;, temp.389
   2ABB C1 04         [ 2] 3188 	cmpb	#4	;cmpqi:	;,
   2ABD 10 23 04 6D   [ 6] 3189 	lbls	L347	;
   2AC1                    3190 L185:
   2AC1 6F E8 1B      [ 7] 3191 	clr	27,s	; iftmp.73
   2AC4 6F E8 19      [ 7] 3192 	clr	25,s	; iftmp.72
   2AC7 6F E8 2C      [ 7] 3193 	clr	44,s	; prephitmp.351
   2ACA                    3194 L187:
   2ACA 7D C9 55      [ 7] 3195 	tst	_sf+2	; sf
   2ACD 10 26 03 D5   [ 6] 3196 	lbne	L188	;
   2AD1 10 8E C8 93   [ 4] 3197 	ldy	#_screen+19	; prephitmp.397,
   2AD5 6F E8 1C      [ 7] 3198 	clr	28,s	; iftmp.74
   2AD8                    3199 L189:
   2AD8 C6 D5         [ 2] 3200 	ldb	#-43	;,
   2ADA E7 E8 3C      [ 5] 3201 	stb	60,s	;, ry
   2ADD C6 80         [ 2] 3202 	ldb	#-128	;,
   2ADF E7 E8 3B      [ 5] 3203 	stb	59,s	;, rx
                           3204 ;----- asm -----
                           3205 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3206 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3207 ;--- end asm ---
   2AE2 E6 E8 1C      [ 5] 3208 	ldb	28,s	;, iftmp.74
   2AE5 EB E8 2C      [ 5] 3209 	addb	44,s	;, prephitmp.351
   2AE8 10 27 00 48   [ 6] 3210 	lbeq	L194	;
                           3211 ;----- asm -----
                           3212 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3213 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3214 ;--- end asm ---
   2AEC C6 46         [ 2] 3215 	ldb	#70	;,
   2AEE D7 04         [ 4] 3216 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3217 ;----- asm -----
                           3218 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3219 	; #ENR#[569]moveto_start;
                           3220 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2AF0 A6 E8 3C      [ 5] 3221 	LDA      60,s	; ry
   2AF3 97 01         [ 4] 3222 	STA      *0x01
   2AF5 86 CE         [ 2] 3223 	LDA      #0xCE
   2AF7 97 0C         [ 4] 3224 	STA      *0x0C
   2AF9 4F            [ 2] 3225 	CLRA     
   2AFA 97 00         [ 4] 3226 	STA      *0x00
   2AFC E6 E8 3B      [ 5] 3227 	LDB      59,s	; rx
   2AFF 0C 00         [ 6] 3228 	INC      *0x00
   2B01 D7 01         [ 4] 3229 	STB      *0x01
   2B03 97 05         [ 4] 3230 	STA      *0x05
                           3231 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3232 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3233 ;--- end asm ---
   2B05 C6 09         [ 2] 3234 	ldb	#9	;,
   2B07 D7 04         [ 4] 3235 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3236 ;----- asm -----
                           3237 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3238 	; #ENR#[572]if (drawup == 2)
                           3239 ;--- end asm ---
   2B09 E6 E8 1B      [ 5] 3240 	ldb	27,s	;, iftmp.73
   2B0C C1 02         [ 2] 3241 	cmpb	#2	;cmpqi:	;,
   2B0E 10 27 0A 7C   [ 6] 3242 	lbeq	L348	;
   2B12 C1 03         [ 2] 3243 	cmpb	#3	;cmpqi:	;,
   2B14 10 27 09 72   [ 6] 3244 	lbeq	L349	;
                           3245 ;----- asm -----
                           3246 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3247 	; #ENR#[592]if (drawleft == 2)
                           3248 ;--- end asm ---
   2B18 E6 E8 19      [ 5] 3249 	ldb	25,s	;, iftmp.72
   2B1B C1 02         [ 2] 3250 	cmpb	#2	;cmpqi:	;,
   2B1D 10 27 0B 61   [ 6] 3251 	lbeq	L350	;
   2B21 C1 03         [ 2] 3252 	cmpb	#3	;cmpqi:	;,
   2B23 10 27 0C 42   [ 6] 3253 	lbeq	L351	;
                           3254 ;----- asm -----
                           3255 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3256 	; #ENR#[604]if (content == 10) drawunkown();
                           3257 ;--- end asm ---
   2B27 E6 E8 1C      [ 5] 3258 	ldb	28,s	;, iftmp.74
   2B2A C1 0A         [ 2] 3259 	cmpb	#10	;cmpqi:	;,
   2B2C 10 27 0C 72   [ 6] 3260 	lbeq	L352	;
   2B30                    3261 L198:
                           3262 ;----- asm -----
                           3263 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3264 	; #ENR#[607]reset0ref();
                           3265 ;--- end asm ---
   2B30 C6 CC         [ 2] 3266 	ldb	#-52	;,
   2B32 D7 0C         [ 4] 3267 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2B34                    3268 L194:
                           3269 ;----- asm -----
                           3270 ; 955 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3271 	; #ENR#[740]drawroom(any_item(item(item_21, map21_hi)), getup(drawup_21, map21_lo), getleft(drawleft_21, map21_lo), room_y(2), room_x(1));
                           3272 ;--- end asm ---
   2B34 E6 A4         [ 4] 3273 	ldb	,y	;,* prephitmp.397
   2B36 E7 62         [ 5] 3274 	stb	2,s	;, temp.393
   2B38 C6 03         [ 2] 3275 	ldb	#3	;,
   2B3A E4 62         [ 5] 3276 	andb	2,s	;, temp.393
   2B3C E7 E8 34      [ 5] 3277 	stb	52,s	;, temp.394
   2B3F C1 01         [ 2] 3278 	cmpb	#1	;cmpqi:	;,
   2B41 10 23 08 17   [ 6] 3279 	lbls	L204	;
   2B45 6F E8 1E      [ 7] 3280 	clr	30,s	; iftmp.76
   2B48                    3281 L205:
   2B48 7D C9 55      [ 7] 3282 	tst	_sf+2	; sf
   2B4B 27 09         [ 3] 3283 	beq	L206	;
   2B4D E6 E8 34      [ 5] 3284 	ldb	52,s	;, temp.394
   2B50 C1 01         [ 2] 3285 	cmpb	#1	;cmpqi:	;,
   2B52 10 23 04 97   [ 6] 3286 	lbls	L353	;
   2B56                    3287 L206:
   2B56 6F E8 1F      [ 7] 3288 	clr	31,s	; iftmp.77
   2B59                    3289 L207:
   2B59 C6 D5         [ 2] 3290 	ldb	#-43	;,
   2B5B E7 E8 3B      [ 5] 3291 	stb	59,s	;, ry
   2B5E E7 E8 3C      [ 5] 3292 	stb	60,s	;, rx
                           3293 ;----- asm -----
                           3294 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3295 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3296 ;--- end asm ---
   2B61 E6 E8 1E      [ 5] 3297 	ldb	30,s	; tmp208, iftmp.76
   2B64 EB E8 34      [ 5] 3298 	addb	52,s	; tmp208, temp.394
   2B67 EB E8 1F      [ 5] 3299 	addb	31,s	; tmp208, iftmp.77
   2B6A 10 27 00 48   [ 6] 3300 	lbeq	L208	;
                           3301 ;----- asm -----
                           3302 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3303 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3304 ;--- end asm ---
   2B6E C6 46         [ 2] 3305 	ldb	#70	;,
   2B70 D7 04         [ 4] 3306 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3307 ;----- asm -----
                           3308 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3309 	; #ENR#[569]moveto_start;
                           3310 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2B72 A6 E8 3B      [ 5] 3311 	LDA      59,s	; ry
   2B75 97 01         [ 4] 3312 	STA      *0x01
   2B77 86 CE         [ 2] 3313 	LDA      #0xCE
   2B79 97 0C         [ 4] 3314 	STA      *0x0C
   2B7B 4F            [ 2] 3315 	CLRA     
   2B7C 97 00         [ 4] 3316 	STA      *0x00
   2B7E E6 E8 3C      [ 5] 3317 	LDB      60,s	; rx
   2B81 0C 00         [ 6] 3318 	INC      *0x00
   2B83 D7 01         [ 4] 3319 	STB      *0x01
   2B85 97 05         [ 4] 3320 	STA      *0x05
                           3321 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3322 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3323 ;--- end asm ---
   2B87 C6 09         [ 2] 3324 	ldb	#9	;,
   2B89 D7 04         [ 4] 3325 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3326 ;----- asm -----
                           3327 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3328 	; #ENR#[572]if (drawup == 2)
                           3329 ;--- end asm ---
   2B8B E6 E8 34      [ 5] 3330 	ldb	52,s	;, temp.394
   2B8E C1 02         [ 2] 3331 	cmpb	#2	;cmpqi:	;,
   2B90 10 27 0A 79   [ 6] 3332 	lbeq	L354	;
   2B94 C1 03         [ 2] 3333 	cmpb	#3	;cmpqi:	;,
   2B96 10 27 09 7A   [ 6] 3334 	lbeq	L355	;
                           3335 ;----- asm -----
                           3336 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3337 	; #ENR#[592]if (drawleft == 2)
                           3338 ;--- end asm ---
   2B9A E6 E8 1E      [ 5] 3339 	ldb	30,s	;, iftmp.76
   2B9D C1 02         [ 2] 3340 	cmpb	#2	;cmpqi:	;,
   2B9F 10 27 0A EE   [ 6] 3341 	lbeq	L356	;
   2BA3 C1 03         [ 2] 3342 	cmpb	#3	;cmpqi:	;,
   2BA5 10 27 0B 78   [ 6] 3343 	lbeq	L357	;
                           3344 ;----- asm -----
                           3345 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3346 	; #ENR#[604]if (content == 10) drawunkown();
                           3347 ;--- end asm ---
   2BA9 E6 E8 1F      [ 5] 3348 	ldb	31,s	;, iftmp.77
   2BAC C1 0A         [ 2] 3349 	cmpb	#10	;cmpqi:	;,
   2BAE 10 27 0B C6   [ 6] 3350 	lbeq	L358	;
   2BB2                    3351 L212:
                           3352 ;----- asm -----
                           3353 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3354 	; #ENR#[607]reset0ref();
                           3355 ;--- end asm ---
   2BB2 C6 CC         [ 2] 3356 	ldb	#-52	;,
   2BB4 D7 0C         [ 4] 3357 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2BB6                    3358 L208:
                           3359 ;----- asm -----
                           3360 ; 957 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3361 	; #ENR#[741]drawroom(any_item(item(item_22, map22_hi)), getup(drawup_22, map22_lo), getleft(drawleft_22, map22_lo), room_y(2), room_x(2));
                           3362 ;--- end asm ---
   2BB6 E6 A4         [ 4] 3363 	ldb	,y	;,* prephitmp.397
   2BB8 E7 E8 37      [ 5] 3364 	stb	55,s	;, temp.400
   2BBB C6 03         [ 2] 3365 	ldb	#3	;,
   2BBD E4 E8 37      [ 5] 3366 	andb	55,s	;, temp.400
   2BC0 E7 E8 37      [ 5] 3367 	stb	55,s	;, temp.400
   2BC3 C1 01         [ 2] 3368 	cmpb	#1	;cmpqi:	;,
   2BC5 10 23 08 17   [ 6] 3369 	lbls	L218	;
   2BC9 8E C8 95      [ 3] 3370 	ldx	#_screen+21	;,
   2BCC AF E8 2A      [ 6] 3371 	stx	42,s	;, prephitmp.333
   2BCF 6F E8 20      [ 7] 3372 	clr	32,s	; iftmp.79
   2BD2                    3373 L219:
   2BD2 AE E8 35      [ 6] 3374 	ldx	53,s	;, prephitmp.395
   2BD5 E6 84         [ 4] 3375 	ldb	,x	;,
   2BD7 E7 E8 38      [ 5] 3376 	stb	56,s	;, temp.402
   2BDA C6 0C         [ 2] 3377 	ldb	#12	;,
   2BDC E4 E8 38      [ 5] 3378 	andb	56,s	;, temp.402
   2BDF E7 E8 38      [ 5] 3379 	stb	56,s	;, temp.402
   2BE2 C1 04         [ 2] 3380 	cmpb	#4	;cmpqi:	;,
   2BE4 10 23 02 AB   [ 6] 3381 	lbls	L220	;
   2BE8 6F E8 21      [ 7] 3382 	clr	33,s	; iftmp.80
   2BEB                    3383 L221:
   2BEB 7D C9 55      [ 7] 3384 	tst	_sf+2	; sf
   2BEE 27 1C         [ 3] 3385 	beq	L222	;
   2BF0 AE E8 2A      [ 6] 3386 	ldx	42,s	;, prephitmp.333
   2BF3 E6 84         [ 4] 3387 	ldb	,x	;,
   2BF5 E7 E8 39      [ 5] 3388 	stb	57,s	;, temp.405
   2BF8 C6 03         [ 2] 3389 	ldb	#3	; tmp215,
   2BFA E4 E8 39      [ 5] 3390 	andb	57,s	; tmp215, temp.405
   2BFD C1 01         [ 2] 3391 	cmpb	#1	;cmpqi:	; tmp215,
   2BFF 10 23 04 51   [ 6] 3392 	lbls	L359	;
   2C03                    3393 L223:
   2C03 E6 E8 37      [ 5] 3394 	ldb	55,s	;, temp.400
   2C06 C1 01         [ 2] 3395 	cmpb	#1	;cmpqi:	;,
   2C08 10 23 04 A0   [ 6] 3396 	lbls	L360	;
   2C0C                    3397 L222:
   2C0C 6F E8 22      [ 7] 3398 	clr	34,s	; iftmp.81
   2C0F                    3399 L225:
   2C0F C6 D5         [ 2] 3400 	ldb	#-43	;,
   2C11 E7 E8 3C      [ 5] 3401 	stb	60,s	;, ry
   2C14 C6 2A         [ 2] 3402 	ldb	#42	;,
   2C16 E7 E8 3B      [ 5] 3403 	stb	59,s	;, rx
                           3404 ;----- asm -----
                           3405 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3406 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3407 ;--- end asm ---
   2C19 E6 E8 21      [ 5] 3408 	ldb	33,s	; tmp218, iftmp.80
   2C1C EB E8 20      [ 5] 3409 	addb	32,s	; tmp218, iftmp.79
   2C1F EB E8 22      [ 5] 3410 	addb	34,s	; tmp218, iftmp.81
   2C22 10 27 00 48   [ 6] 3411 	lbeq	L226	;
                           3412 ;----- asm -----
                           3413 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3414 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3415 ;--- end asm ---
   2C26 C6 46         [ 2] 3416 	ldb	#70	;,
   2C28 D7 04         [ 4] 3417 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3418 ;----- asm -----
                           3419 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3420 	; #ENR#[569]moveto_start;
                           3421 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2C2A A6 E8 3C      [ 5] 3422 	LDA      60,s	; ry
   2C2D 97 01         [ 4] 3423 	STA      *0x01
   2C2F 86 CE         [ 2] 3424 	LDA      #0xCE
   2C31 97 0C         [ 4] 3425 	STA      *0x0C
   2C33 4F            [ 2] 3426 	CLRA     
   2C34 97 00         [ 4] 3427 	STA      *0x00
   2C36 E6 E8 3B      [ 5] 3428 	LDB      59,s	; rx
   2C39 0C 00         [ 6] 3429 	INC      *0x00
   2C3B D7 01         [ 4] 3430 	STB      *0x01
   2C3D 97 05         [ 4] 3431 	STA      *0x05
                           3432 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3433 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3434 ;--- end asm ---
   2C3F C6 09         [ 2] 3435 	ldb	#9	;,
   2C41 D7 04         [ 4] 3436 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3437 ;----- asm -----
                           3438 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3439 	; #ENR#[572]if (drawup == 2)
                           3440 ;--- end asm ---
   2C43 E6 E8 21      [ 5] 3441 	ldb	33,s	;, iftmp.80
   2C46 C1 02         [ 2] 3442 	cmpb	#2	;cmpqi:	;,
   2C48 10 27 09 EB   [ 6] 3443 	lbeq	L361	;
   2C4C C1 03         [ 2] 3444 	cmpb	#3	;cmpqi:	;,
   2C4E 10 27 08 E3   [ 6] 3445 	lbeq	L362	;
                           3446 ;----- asm -----
                           3447 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3448 	; #ENR#[592]if (drawleft == 2)
                           3449 ;--- end asm ---
   2C52 E6 E8 20      [ 5] 3450 	ldb	32,s	;, iftmp.79
   2C55 C1 02         [ 2] 3451 	cmpb	#2	;cmpqi:	;,
   2C57 10 27 0A 45   [ 6] 3452 	lbeq	L363	;
   2C5B C1 03         [ 2] 3453 	cmpb	#3	;cmpqi:	;,
   2C5D 10 27 0A DD   [ 6] 3454 	lbeq	L364	;
                           3455 ;----- asm -----
                           3456 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3457 	; #ENR#[604]if (content == 10) drawunkown();
                           3458 ;--- end asm ---
   2C61 E6 E8 22      [ 5] 3459 	ldb	34,s	;, iftmp.81
   2C64 C1 0A         [ 2] 3460 	cmpb	#10	;cmpqi:	;,
   2C66 10 27 0B 1A   [ 6] 3461 	lbeq	L365	;
   2C6A                    3462 L230:
                           3463 ;----- asm -----
                           3464 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3465 	; #ENR#[607]reset0ref();
                           3466 ;--- end asm ---
   2C6A C6 CC         [ 2] 3467 	ldb	#-52	;,
   2C6C D7 0C         [ 4] 3468 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2C6E                    3469 L226:
                           3470 ;----- asm -----
                           3471 ; 959 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3472 	; #ENR#[742]drawroom(0, getup(drawup_23, map23_lo), getleft(drawleft_23, map23_lo), room_y(2), room_x(3));
                           3473 ;--- end asm ---
   2C6E AE E8 2A      [ 6] 3474 	ldx	42,s	;, prephitmp.333
   2C71 E6 84         [ 4] 3475 	ldb	,x	; tmp221,
   2C73 C4 03         [ 2] 3476 	andb	#3	; tmp221,
   2C75 C1 01         [ 2] 3477 	cmpb	#1	;cmpqi:	; tmp221,
   2C77 10 23 06 C1   [ 6] 3478 	lbls	L366	;
   2C7B                    3479 L236:
   2C7B 6F E8 23      [ 7] 3480 	clr	35,s	; iftmp.83
   2C7E                    3481 L237:
   2C7E C6 D5         [ 2] 3482 	ldb	#-43	;,
   2C80 E7 E8 3B      [ 5] 3483 	stb	59,s	;, ry
   2C83 C6 7F         [ 2] 3484 	ldb	#127	;,
   2C85 E7 E8 3C      [ 5] 3485 	stb	60,s	;, rx
                           3486 ;----- asm -----
                           3487 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3488 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3489 ;--- end asm ---
   2C88 6D E8 23      [ 7] 3490 	tst	35,s	; iftmp.83
   2C8B 10 27 00 30   [ 6] 3491 	lbeq	L238	;
                           3492 ;----- asm -----
                           3493 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3494 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3495 ;--- end asm ---
   2C8F C6 46         [ 2] 3496 	ldb	#70	;,
   2C91 D7 04         [ 4] 3497 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3498 ;----- asm -----
                           3499 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3500 	; #ENR#[569]moveto_start;
                           3501 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2C93 A6 E8 3B      [ 5] 3502 	LDA      59,s	; ry
   2C96 97 01         [ 4] 3503 	STA      *0x01
   2C98 86 CE         [ 2] 3504 	LDA      #0xCE
   2C9A 97 0C         [ 4] 3505 	STA      *0x0C
   2C9C 4F            [ 2] 3506 	CLRA     
   2C9D 97 00         [ 4] 3507 	STA      *0x00
   2C9F E6 E8 3C      [ 5] 3508 	LDB      60,s	; rx
   2CA2 0C 00         [ 6] 3509 	INC      *0x00
   2CA4 D7 01         [ 4] 3510 	STB      *0x01
   2CA6 97 05         [ 4] 3511 	STA      *0x05
                           3512 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3513 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3514 ;--- end asm ---
   2CA8 C6 09         [ 2] 3515 	ldb	#9	;,
   2CAA D7 04         [ 4] 3516 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3517 ;----- asm -----
                           3518 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3519 	; #ENR#[572]if (drawup == 2)
                           3520 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3521 	; #ENR#[592]if (drawleft == 2)
                           3522 ;--- end asm ---
   2CAC E6 E8 23      [ 5] 3523 	ldb	35,s	;, iftmp.83
   2CAF C1 02         [ 2] 3524 	cmpb	#2	;cmpqi:	;,
   2CB1 10 27 09 76   [ 6] 3525 	lbeq	L367	;
   2CB5 C1 03         [ 2] 3526 	cmpb	#3	;cmpqi:	;,
   2CB7 10 27 07 A4   [ 6] 3527 	lbeq	L368	;
                           3528 ;----- asm -----
                           3529 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3530 	; #ENR#[604]if (content == 10) drawunkown();
                           3531 ;--- end asm ---
   2CBB                    3532 L240:
                           3533 ;----- asm -----
                           3534 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3535 	; #ENR#[607]reset0ref();
                           3536 ;--- end asm ---
   2CBB C6 CC         [ 2] 3537 	ldb	#-52	;,
   2CBD D7 0C         [ 4] 3538 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2CBF                    3539 L238:
                           3540 ;----- asm -----
                           3541 ; 962 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3542 	; #ENR#[744]drawroom(0, getup(drawup_30, map30_lo), getleft(drawleft_30, map30_lo), room_y(3), room_x(0));
                           3543 ;--- end asm ---
   2CBF E6 A4         [ 4] 3544 	ldb	,y	;,* prephitmp.397
   2CC1 E7 E8 3A      [ 5] 3545 	stb	58,s	;, temp.411
   2CC4 C6 03         [ 2] 3546 	ldb	#3	; tmp225,
   2CC6 E4 E8 3A      [ 5] 3547 	andb	58,s	; tmp225, temp.411
   2CC9 C1 01         [ 2] 3548 	cmpb	#1	;cmpqi:	; tmp225,
   2CCB 10 23 06 40   [ 6] 3549 	lbls	L369	;
   2CCF                    3550 L242:
   2CCF 6F E8 25      [ 7] 3551 	clr	37,s	; D.4217
   2CD2                    3552 L243:
   2CD2 C6 80         [ 2] 3553 	ldb	#-128	;,
   2CD4 E7 E8 3C      [ 5] 3554 	stb	60,s	;, ry
   2CD7 E7 E8 3B      [ 5] 3555 	stb	59,s	;, rx
                           3556 ;----- asm -----
                           3557 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3558 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3559 ;--- end asm ---
   2CDA 6D E8 25      [ 7] 3560 	tst	37,s	; D.4217
   2CDD 10 27 00 30   [ 6] 3561 	lbeq	L244	;
                           3562 ;----- asm -----
                           3563 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3564 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3565 ;--- end asm ---
   2CE1 C6 46         [ 2] 3566 	ldb	#70	;,
   2CE3 D7 04         [ 4] 3567 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3568 ;----- asm -----
                           3569 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3570 	; #ENR#[569]moveto_start;
                           3571 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2CE5 A6 E8 3C      [ 5] 3572 	LDA      60,s	; ry
   2CE8 97 01         [ 4] 3573 	STA      *0x01
   2CEA 86 CE         [ 2] 3574 	LDA      #0xCE
   2CEC 97 0C         [ 4] 3575 	STA      *0x0C
   2CEE 4F            [ 2] 3576 	CLRA     
   2CEF 97 00         [ 4] 3577 	STA      *0x00
   2CF1 E6 E8 3B      [ 5] 3578 	LDB      59,s	; rx
   2CF4 0C 00         [ 6] 3579 	INC      *0x00
   2CF6 D7 01         [ 4] 3580 	STB      *0x01
   2CF8 97 05         [ 4] 3581 	STA      *0x05
                           3582 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3583 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3584 ;--- end asm ---
   2CFA C6 09         [ 2] 3585 	ldb	#9	;,
   2CFC D7 04         [ 4] 3586 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3587 ;----- asm -----
                           3588 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3589 	; #ENR#[572]if (drawup == 2)
                           3590 ;--- end asm ---
   2CFE E6 E8 25      [ 5] 3591 	ldb	37,s	;, D.4217
   2D01 C1 02         [ 2] 3592 	cmpb	#2	;cmpqi:	;,
   2D03 10 27 09 00   [ 6] 3593 	lbeq	L370	;
   2D07 C1 03         [ 2] 3594 	cmpb	#3	;cmpqi:	;,
   2D09 10 27 07 58   [ 6] 3595 	lbeq	L371	;
                           3596 ;----- asm -----
                           3597 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3598 	; #ENR#[592]if (drawleft == 2)
                           3599 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3600 	; #ENR#[604]if (content == 10) drawunkown();
                           3601 ;--- end asm ---
   2D0D                    3602 L246:
                           3603 ;----- asm -----
                           3604 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3605 	; #ENR#[607]reset0ref();
                           3606 ;--- end asm ---
   2D0D C6 CC         [ 2] 3607 	ldb	#-52	;,
   2D0F D7 0C         [ 4] 3608 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2D11                    3609 L244:
                           3610 ;----- asm -----
                           3611 ; 964 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3612 	; #ENR#[745]drawroom(0, getup(drawup_31, map31_lo), getleft(drawleft_31, map31_lo), room_y(3), room_x(1));
                           3613 ;--- end asm ---
   2D11 E6 A4         [ 4] 3614 	ldb	,y	; tmp229,* prephitmp.397
   2D13 C4 03         [ 2] 3615 	andb	#3	; tmp229,
   2D15 C1 01         [ 2] 3616 	cmpb	#1	;cmpqi:	; tmp229,
   2D17 10 23 06 10   [ 6] 3617 	lbls	L248	;
   2D1B 6F E8 26      [ 7] 3618 	clr	38,s	; D.4224
   2D1E                    3619 L249:
   2D1E C6 80         [ 2] 3620 	ldb	#-128	;,
   2D20 E7 E8 3B      [ 5] 3621 	stb	59,s	;, ry
   2D23 C6 D5         [ 2] 3622 	ldb	#-43	;,
   2D25 E7 E8 3C      [ 5] 3623 	stb	60,s	;, rx
                           3624 ;----- asm -----
                           3625 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3626 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3627 ;--- end asm ---
   2D28 6D E8 26      [ 7] 3628 	tst	38,s	; D.4224
   2D2B 10 27 00 30   [ 6] 3629 	lbeq	L250	;
                           3630 ;----- asm -----
                           3631 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3632 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3633 ;--- end asm ---
   2D2F C6 46         [ 2] 3634 	ldb	#70	;,
   2D31 D7 04         [ 4] 3635 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3636 ;----- asm -----
                           3637 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3638 	; #ENR#[569]moveto_start;
                           3639 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2D33 A6 E8 3B      [ 5] 3640 	LDA      59,s	; ry
   2D36 97 01         [ 4] 3641 	STA      *0x01
   2D38 86 CE         [ 2] 3642 	LDA      #0xCE
   2D3A 97 0C         [ 4] 3643 	STA      *0x0C
   2D3C 4F            [ 2] 3644 	CLRA     
   2D3D 97 00         [ 4] 3645 	STA      *0x00
   2D3F E6 E8 3C      [ 5] 3646 	LDB      60,s	; rx
   2D42 0C 00         [ 6] 3647 	INC      *0x00
   2D44 D7 01         [ 4] 3648 	STB      *0x01
   2D46 97 05         [ 4] 3649 	STA      *0x05
                           3650 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3651 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3652 ;--- end asm ---
   2D48 C6 09         [ 2] 3653 	ldb	#9	;,
   2D4A D7 04         [ 4] 3654 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3655 ;----- asm -----
                           3656 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3657 	; #ENR#[572]if (drawup == 2)
                           3658 ;--- end asm ---
   2D4C E6 E8 26      [ 5] 3659 	ldb	38,s	;, D.4224
   2D4F C1 02         [ 2] 3660 	cmpb	#2	;cmpqi:	;,
   2D51 10 27 08 AC   [ 6] 3661 	lbeq	L372	;
   2D55 C1 03         [ 2] 3662 	cmpb	#3	;cmpqi:	;,
   2D57 10 27 07 AD   [ 6] 3663 	lbeq	L373	;
                           3664 ;----- asm -----
                           3665 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3666 	; #ENR#[592]if (drawleft == 2)
                           3667 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3668 	; #ENR#[604]if (content == 10) drawunkown();
                           3669 ;--- end asm ---
   2D5B                    3670 L252:
                           3671 ;----- asm -----
                           3672 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3673 	; #ENR#[607]reset0ref();
                           3674 ;--- end asm ---
   2D5B C6 CC         [ 2] 3675 	ldb	#-52	;,
   2D5D D7 0C         [ 4] 3676 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2D5F                    3677 L250:
                           3678 ;----- asm -----
                           3679 ; 966 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3680 	; #ENR#[746]drawroom(0, getup(drawup_32, map32_lo), getleft(drawleft_32, map32_lo), room_y(3), room_x(2));
                           3681 ;--- end asm ---
   2D5F E6 A4         [ 4] 3682 	ldb	,y	; tmp232,* prephitmp.397
   2D61 C4 03         [ 2] 3683 	andb	#3	; tmp232,
   2D63 C1 01         [ 2] 3684 	cmpb	#1	;cmpqi:	; tmp232,
   2D65 10 23 05 88   [ 6] 3685 	lbls	L374	;
   2D69                    3686 L254:
   2D69 6F E8 27      [ 7] 3687 	clr	39,s	; D.4231
   2D6C                    3688 L255:
   2D6C C6 80         [ 2] 3689 	ldb	#-128	;,
   2D6E E7 E8 3C      [ 5] 3690 	stb	60,s	;, ry
   2D71 C6 2A         [ 2] 3691 	ldb	#42	;,
   2D73 E7 E8 3B      [ 5] 3692 	stb	59,s	;, rx
                           3693 ;----- asm -----
                           3694 ; 699 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3695 	; #ENR#[565]if ((content + drawup + drawleft) == 0) return;
                           3696 ;--- end asm ---
   2D76 6D E8 27      [ 7] 3697 	tst	39,s	; D.4231
   2D79 10 27 00 30   [ 6] 3698 	lbeq	L256	;
                           3699 ;----- asm -----
                           3700 ; 701 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3701 	; #ENR#[566]dp_via_t1_cnt_lo  = 0x46;
                           3702 ;--- end asm ---
   2D7D CB 1C         [ 2] 3703 	addb	#28	;,
   2D7F D7 04         [ 4] 3704 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3705 ;----- asm -----
                           3706 ; 705 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3707 	; #ENR#[569]moveto_start;
                           3708 ; 706 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2D81 A6 E8 3C      [ 5] 3709 	LDA      60,s	; ry
   2D84 97 01         [ 4] 3710 	STA      *0x01
   2D86 86 CE         [ 2] 3711 	LDA      #0xCE
   2D88 97 0C         [ 4] 3712 	STA      *0x0C
   2D8A 4F            [ 2] 3713 	CLRA     
   2D8B 97 00         [ 4] 3714 	STA      *0x00
   2D8D E6 E8 3B      [ 5] 3715 	LDB      59,s	; rx
   2D90 0C 00         [ 6] 3716 	INC      *0x00
   2D92 D7 01         [ 4] 3717 	STB      *0x01
   2D94 97 05         [ 4] 3718 	STA      *0x05
                           3719 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3720 	; #ENR#[570]dp_via_t1_cnt_lo  = 9;
                           3721 ;--- end asm ---
   2D96 C6 09         [ 2] 3722 	ldb	#9	;,
   2D98 D7 04         [ 4] 3723 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3724 ;----- asm -----
                           3725 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3726 	; #ENR#[572]if (drawup == 2)
                           3727 ;--- end asm ---
   2D9A E6 E8 27      [ 5] 3728 	ldb	39,s	;, D.4231
   2D9D C1 02         [ 2] 3729 	cmpb	#2	;cmpqi:	;,
   2D9F 10 27 08 8E   [ 6] 3730 	lbeq	L375	;
   2DA3 C1 03         [ 2] 3731 	cmpb	#3	;cmpqi:	;,
   2DA5 10 27 07 65   [ 6] 3732 	lbeq	L376	;
                           3733 ;----- asm -----
                           3734 ; 737 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3735 	; #ENR#[592]if (drawleft == 2)
                           3736 ; 754 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3737 	; #ENR#[604]if (content == 10) drawunkown();
                           3738 ;--- end asm ---
   2DA9                    3739 L258:
                           3740 ;----- asm -----
                           3741 ; 758 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3742 	; #ENR#[607]reset0ref();
                           3743 ;--- end asm ---
   2DA9 C6 CC         [ 2] 3744 	ldb	#-52	;,
   2DAB D7 0C         [ 4] 3745 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   2DAD                    3746 L256:
                           3747 ;----- asm -----
                           3748 ; 969 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3749 	; #ENR#[748]_y_  = 90;
                           3750 ;--- end asm ---
   2DAD C6 5A         [ 2] 3751 	ldb	#90	;,
   2DAF F7 C9 BE      [ 5] 3752 	stb	__y_	;, _y_
                           3753 ;----- asm -----
                           3754 ; 971 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3755 	; #ENR#[749]if (lightchange>0) intensity_a((unsigned int) (lightchange-0x20));
                           3756 ;--- end asm ---
   2DB2 F6 C8 A4      [ 5] 3757 	ldb	_lightChange	; lightChange.87, lightChange
   2DB5 10 2F 04 FF   [ 6] 3758 	lble	L260	;
   2DB9 CB E0         [ 2] 3759 	addb	#-32	; lightChange.87,
   2DBB BD 7F 68      [ 8] 3760 	jsr	__Intensity_a
   2DBE                    3761 L261:
                           3762 ;----- asm -----
                           3763 ; 975 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3764 	; #ENR#[752]for (int i=0;i<11;i++)
                           3765 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3766 	; #ENR#[754]if (sf[i]>0)
                           3767 ;--- end asm ---
   2DBE 7D C9 53      [ 7] 3768 	tst	_sf	; sf
   2DC1 10 26 03 02   [ 6] 3769 	lbne	L377	;
                           3770 ;----- asm -----
                           3771 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3772 	; #ENR#[754]if (sf[i]>0)
                           3773 ;--- end asm ---
   2DC5 7D C9 54      [ 7] 3774 	tst	_sf+1	; sf
   2DC8 10 26 03 28   [ 6] 3775 	lbne	L378	;
   2DCC                    3776 L263:
                           3777 ;----- asm -----
                           3778 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3779 	; #ENR#[754]if (sf[i]>0)
                           3780 ;--- end asm ---
   2DCC 7D C9 55      [ 7] 3781 	tst	_sf+2	; sf
   2DCF 10 26 03 4F   [ 6] 3782 	lbne	L379	;
   2DD3                    3783 L264:
                           3784 ;----- asm -----
                           3785 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3786 	; #ENR#[754]if (sf[i]>0)
                           3787 ;--- end asm ---
   2DD3 7D C9 56      [ 7] 3788 	tst	_sf+3	; sf
   2DD6 10 26 03 76   [ 6] 3789 	lbne	L380	;
   2DDA                    3790 L265:
                           3791 ;----- asm -----
                           3792 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3793 	; #ENR#[754]if (sf[i]>0)
                           3794 ;--- end asm ---
   2DDA 7D C9 57      [ 7] 3795 	tst	_sf+4	; sf
   2DDD 10 26 03 9D   [ 6] 3796 	lbne	L381	;
   2DE1                    3797 L266:
                           3798 ;----- asm -----
                           3799 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3800 	; #ENR#[754]if (sf[i]>0)
                           3801 ;--- end asm ---
   2DE1 7D C9 58      [ 7] 3802 	tst	_sf+5	; sf
   2DE4 10 26 03 C4   [ 6] 3803 	lbne	L382	;
   2DE8                    3804 L267:
                           3805 ;----- asm -----
                           3806 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3807 	; #ENR#[754]if (sf[i]>0)
                           3808 ;--- end asm ---
   2DE8 7D C9 59      [ 7] 3809 	tst	_sf+6	; sf
   2DEB 10 26 03 E9   [ 6] 3810 	lbne	L383	;
   2DEF                    3811 L268:
                           3812 ;----- asm -----
                           3813 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3814 	; #ENR#[754]if (sf[i]>0)
                           3815 ;--- end asm ---
   2DEF 7D C9 5A      [ 7] 3816 	tst	_sf+7	; sf
   2DF2 10 26 04 10   [ 6] 3817 	lbne	L384	;
   2DF6                    3818 L269:
                           3819 ;----- asm -----
                           3820 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3821 	; #ENR#[754]if (sf[i]>0)
                           3822 ;--- end asm ---
   2DF6 7D C9 5B      [ 7] 3823 	tst	_sf+8	; sf
   2DF9 10 26 04 37   [ 6] 3824 	lbne	L385	;
   2DFD                    3825 L270:
                           3826 ;----- asm -----
                           3827 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3828 	; #ENR#[754]if (sf[i]>0)
                           3829 ;--- end asm ---
   2DFD 7D C9 5C      [ 7] 3830 	tst	_sf+9	; sf
   2E00 10 26 04 5E   [ 6] 3831 	lbne	L386	;
   2E04                    3832 L271:
                           3833 ;----- asm -----
                           3834 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3835 	; #ENR#[754]if (sf[i]>0)
                           3836 ;--- end asm ---
   2E04 7D C9 5D      [ 7] 3837 	tst	_sf+10	; sf
   2E07 10 26 04 83   [ 6] 3838 	lbne	L387	;
   2E0B                    3839 L272:
                           3840 ;----- asm -----
                           3841 ; 994 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3842 	; #ENR#[764]_x_  = 100;
                           3843 ;--- end asm ---
   2E0B C6 64         [ 2] 3844 	ldb	#100	;,
   2E0D F7 C9 BF      [ 5] 3845 	stb	__x_	;, _x_
                           3846 ;----- asm -----
                           3847 ; 996 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3848 	; #ENR#[765]for (int i=0; i<19;i++)
                           3849 ;--- end asm ---
   2E10 10 8E 00 00   [ 4] 3850 	ldy	#0	; ivtmp.343,
   2E14                    3851 L274:
                           3852 ;----- asm -----
                           3853 ; 999 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3854 	; #ENR#[767]if (stackm[i] != -1)
                           3855 ;--- end asm ---
   2E14 E6 A9 C9 6C   [ 8] 3856 	ldb	_stackM,y	;, stackM
   2E18 C1 FF         [ 2] 3857 	cmpb	#-1	;cmpqi:	;,
   2E1A 10 27 00 2C   [ 6] 3858 	lbeq	L273	;
                           3859 ;----- asm -----
                           3860 ; 1002 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3861 	; #ENR#[769]dp_via_t1_cnt_lo  = 0x7f;
                           3862 ;--- end asm ---
   2E1E C6 7F         [ 2] 3863 	ldb	#127	;,
   2E20 D7 04         [ 4] 3864 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3865 ;----- asm -----
                           3866 ; 1004 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3867 	; #ENR#[770]_y_ =70-i*10;
                           3868 ;--- end asm ---
   2E22 1F 20         [ 6] 3869 	tfr	y,d	; ivtmp.343,
   2E24 86 F6         [ 2] 3870 	lda	#-10	;umulqihi3	;
   2E26 3D            [11] 3871 	mul
                           3872 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   2E27 1F 01         [ 6] 3873 	tfr	d,x	;, tmp249
                           3874 ; ORG>	tfr	d,x	;, tmp249
                           3875 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp249, tmp250
   2E29 CB 46         [ 2] 3876 	addb	#70	; tmp250,
   2E2B F7 C9 BE      [ 5] 3877 	stb	__y_	; tmp250, _y_
                           3878 ;----- asm -----
                           3879 ; 1006 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3880 	; #ENR#[771]moveto_start_yx
                           3881 ; 1007 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2E2E B6 C9 BE      [ 5] 3882 	LDA      __y_	; _y_
   2E31 97 01         [ 4] 3883 	STA      *0x01
   2E33 86 CE         [ 2] 3884 	LDA      #0xCE
   2E35 97 0C         [ 4] 3885 	STA      *0x0C
   2E37 4F            [ 2] 3886 	CLRA     
   2E38 97 00         [ 4] 3887 	STA      *0x00
   2E3A F6 C9 BF      [ 5] 3888 	LDB      __x_	; _x_
   2E3D 0C 00         [ 6] 3889 	INC      *0x00
   2E3F D7 01         [ 4] 3890 	STB      *0x01
   2E41 97 05         [ 4] 3891 	STA      *0x05
                           3892 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3893 	; #ENR#[772]dp_via_t1_cnt_lo  = 0x09;
                           3894 ;--- end asm ---
   2E43 C6 09         [ 2] 3895 	ldb	#9	;,
   2E45 D7 04         [ 4] 3896 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3897 ;----- asm -----
                           3898 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3899 	; #ENR#[773]drawdot();
                           3900 ;--- end asm ---
   2E47 BD 52 D9      [ 8] 3901 	jsr	_drawDot
   2E4A                    3902 L273:
   2E4A 31 21         [ 5] 3903 	leay	1,y	; ivtmp.343,, ivtmp.343
   2E4C 10 8C 00 13   [ 5] 3904 	cmpy	#19	;cmphi:	; ivtmp.343,
   2E50 10 26 FF C0   [ 6] 3905 	lbne	L274	;
   2E54                    3906 L275:
   2E54 32 E8 3D      [ 5] 3907 	leas	61,s	;,,
   2E57 35 E0         [ 8] 3908 	puls	y,u,pc	;
   2E59                    3909 L80:
   2E59 F6 C8 F5      [ 5] 3910 	ldb	_printTreasure	;, printTreasure
   2E5C C1 FF         [ 2] 3911 	cmpb	#-1	;cmpqi:	;,
   2E5E 10 27 00 F3   [ 6] 3912 	lbeq	L82	;
                           3913 ;----- asm -----
                           3914 ; 911 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3915 	; #ENR#[712]dp_via_t1_cnt_lo  = 0x09;
                           3916 ;--- end asm ---
   2E62 C6 09         [ 2] 3917 	ldb	#9	;,
   2E64 D7 04         [ 4] 3918 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3919 ;----- asm -----
                           3920 ; 913 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3921 	; #ENR#[713]dp_via_cntl = 0xce;
                           3922 ;--- end asm ---
   2E66 C6 CE         [ 2] 3923 	ldb	#-50	;,
   2E68 D7 0C         [ 4] 3924 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3925 ;----- asm -----
                           3926 ; 915 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3927 	; #ENR#[714]drawtreasure(printtreasure);
                           3928 ;--- end asm ---
   2E6A F6 C8 F5      [ 5] 3929 	ldb	_printTreasure	;, printTreasure
   2E6D BD 54 00      [ 8] 3930 	jsr	_drawTreasure
   2E70 16 F8 53      [ 5] 3931 	lbra	L81	;
   2E73                    3932 L294:
   2E73 F7 C8 F4      [ 5] 3933 	stb	_printEnvironment	;, printEnvironment
   2E76 16 F7 73      [ 5] 3934 	lbra	L66	;
   2E79                    3935 L293:
   2E79 BD 22 ED      [ 8] 3936 	jsr	_generateDisplayMap
   2E7C 16 F7 5E      [ 5] 3937 	lbra	L65	;
   2E7F                    3938 L304:
                           3939 ;----- asm -----
                           3940 ; 887 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3941 	; #ENR#[696]dp_via_t1_cnt_lo  = 0x09;
                           3942 ;--- end asm ---
   2E7F C6 09         [ 2] 3943 	ldb	#9	;,
   2E81 D7 04         [ 4] 3944 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3945 ;----- asm -----
                           3946 ; 889 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3947 	; #ENR#[697]dp_via_cntl = 0xce;
                           3948 ;--- end asm ---
   2E83 C6 CE         [ 2] 3949 	ldb	#-50	;,
   2E85 D7 0C         [ 4] 3950 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3951 ;----- asm -----
                           3952 ; 891 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3953 	; #ENR#[698]drawplayer();
                           3954 ;--- end asm ---
   2E87 BD 52 E7      [ 8] 3955 	jsr	_drawPlayer
   2E8A 16 F8 13      [ 5] 3956 	lbra	L78	;
   2E8D                    3957 L303:
                           3958 ;----- asm -----
                           3959 ; 881 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3960 	; #ENR#[692]ayfx_sound1();
                           3961 ; 93 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2E8D BD 14 74      [ 8] 3962 	jsr sfx_doframe_intern_1; DO_SFX1
                           3963 ;--- end asm ---
   2E90 16 F8 06      [ 5] 3964 	lbra	L77	;
   2E93                    3965 L220:
   2E93 AE E8 2A      [ 6] 3966 	ldx	42,s	;, prephitmp.333
   2E96 E6 84         [ 4] 3967 	ldb	,x	;,
   2E98 E7 E8 21      [ 5] 3968 	stb	33,s	;, iftmp.80
   2E9B C6 03         [ 2] 3969 	ldb	#3	;,
   2E9D E4 E8 21      [ 5] 3970 	andb	33,s	;, iftmp.80
   2EA0 E7 E8 21      [ 5] 3971 	stb	33,s	;, iftmp.80
   2EA3 16 FD 45      [ 5] 3972 	lbra	L221	;
   2EA6                    3973 L188:
   2EA6 E6 E8 33      [ 5] 3974 	ldb	51,s	;, iftmp.387
   2EA9 C1 01         [ 2] 3975 	cmpb	#1	;cmpqi:	;,
   2EAB 10 23 01 7F   [ 6] 3976 	lbls	L388	;
   2EAF                    3977 L190:
   2EAF 10 8E C8 93   [ 4] 3978 	ldy	#_screen+19	; prephitmp.397,
   2EB3 F6 C8 93      [ 5] 3979 	ldb	_screen+19	;,
   2EB6 E7 E8 1D      [ 5] 3980 	stb	29,s	;, D.3704
   2EB9 C6 03         [ 2] 3981 	ldb	#3	; tmp201,
   2EBB E4 E8 1D      [ 5] 3982 	andb	29,s	; tmp201, D.3704
   2EBE C1 01         [ 2] 3983 	cmpb	#1	;cmpqi:	; tmp201,
   2EC0 10 23 01 F5   [ 6] 3984 	lbls	L389	;
   2EC4                    3985 L192:
   2EC4 6F E8 1C      [ 7] 3986 	clr	28,s	; iftmp.74
   2EC7 16 FC 0E      [ 5] 3987 	lbra	L189	;
   2ECA                    3988 L178:
   2ECA F6 C8 8F      [ 5] 3989 	ldb	_screen+15	;,
   2ECD 54            [ 2] 3990 	lsrb	;
   2ECE 54            [ 2] 3991 	lsrb	;
   2ECF E7 E8 18      [ 5] 3992 	stb	24,s	;, iftmp.71
   2ED2 C6 03         [ 2] 3993 	ldb	#3	;,
   2ED4 E4 E8 18      [ 5] 3994 	andb	24,s	;, iftmp.71
   2ED7 E7 E8 18      [ 5] 3995 	stb	24,s	;, iftmp.71
   2EDA 16 FB 7F      [ 5] 3996 	lbra	L179	;
   2EDD                    3997 L164:
   2EDD C6 03         [ 2] 3998 	ldb	#3	;,
   2EDF E4 62         [ 5] 3999 	andb	2,s	;, temp.382
   2EE1 E7 E8 16      [ 5] 4000 	stb	22,s	;, iftmp.68
   2EE4 16 FA F7      [ 5] 4001 	lbra	L165	;
   2EE7                    4002 L140:
   2EE7 F6 C8 89      [ 5] 4003 	ldb	_screen+9	;,
   2EEA 54            [ 2] 4004 	lsrb	;
   2EEB 54            [ 2] 4005 	lsrb	;
   2EEC E7 E8 11      [ 5] 4006 	stb	17,s	;, iftmp.64
   2EEF C6 03         [ 2] 4007 	ldb	#3	;,
   2EF1 E4 E8 11      [ 5] 4008 	andb	17,s	;, iftmp.64
   2EF4 E7 E8 11      [ 5] 4009 	stb	17,s	;, iftmp.64
   2EF7 C6 03         [ 2] 4010 	ldb	#3	;,
   2EF9 F4 C8 89      [ 5] 4011 	andb	_screen+9	;,
   2EFC E7 E8 12      [ 5] 4012 	stb	18,s	;, iftmp.65
   2EFF E6 E8 11      [ 5] 4013 	ldb	17,s	;, iftmp.64
   2F02 EB E8 12      [ 5] 4014 	addb	18,s	;, iftmp.65
   2F05 E7 E8 29      [ 5] 4015 	stb	41,s	;, prephitmp.331
   2F08 16 F9 D9      [ 5] 4016 	lbra	L141	;
   2F0B                    4017 L118:
   2F0B E6 E8 2F      [ 5] 4018 	ldb	47,s	;, temp.369
   2F0E C1 01         [ 2] 4019 	cmpb	#1	;cmpqi:	;,
   2F10 10 23 00 EF   [ 6] 4020 	lbls	L390	;
   2F14                    4021 L120:
   2F14 8E C8 8D      [ 3] 4022 	ldx	#_screen+13	;,
   2F17 AF E8 35      [ 6] 4023 	stx	53,s	;, prephitmp.395
   2F1A F6 C8 8D      [ 5] 4024 	ldb	_screen+13	;,
   2F1D E7 6F         [ 5] 4025 	stb	15,s	;, D.3651
   2F1F C6 03         [ 2] 4026 	ldb	#3	; tmp174,
   2F21 E4 6F         [ 5] 4027 	andb	15,s	; tmp174, D.3651
   2F23 C1 01         [ 2] 4028 	cmpb	#1	;cmpqi:	; tmp174,
   2F25 10 23 01 68   [ 6] 4029 	lbls	L391	;
   2F29                    4030 L122:
   2F29 6F 6E         [ 7] 4031 	clr	14,s	; iftmp.61
   2F2B 16 F8 EC      [ 5] 4032 	lbra	L119	;
   2F2E                    4033 L347:
   2F2E 6F E8 19      [ 7] 4034 	clr	25,s	; iftmp.72
   2F31 E6 E8 19      [ 5] 4035 	ldb	25,s	;, iftmp.72
   2F34                    4036 L186:
   2F34 EB E8 33      [ 5] 4037 	addb	51,s	;, iftmp.387
   2F37 E7 E8 2C      [ 5] 4038 	stb	44,s	;, prephitmp.351
   2F3A E6 E8 33      [ 5] 4039 	ldb	51,s	;, iftmp.387
   2F3D E7 E8 1B      [ 5] 4040 	stb	27,s	;, iftmp.73
   2F40 16 FB 87      [ 5] 4041 	lbra	L187	;
   2F43                    4042 L298:
                           4043 ;----- asm -----
                           4044 ; 849 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4045 	; #ENR#[668]sfx_pointer_1 = (long unsigned int) (&cube_c64_data);
                           4046 ;--- end asm ---
   2F43 8E 1D A5      [ 3] 4047 	ldx	#_cube_c64_data	;,
   2F46 BF CA BB      [ 6] 4048 	stx	_sfx_pointer_1	;, sfx_pointer_1
   2F49 16 F7 3C      [ 5] 4049 	lbra	L73	;
   2F4C                    4050 L295:
                           4051 ;----- asm -----
                           4052 ; 798 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4053 	; #ENR#[635]elevatory = 0;
                           4054 ;--- end asm ---
   2F4C 7F C8 A3      [ 7] 4055 	clr	_elevatorY	; elevatorY
                           4056 ;----- asm -----
                           4057 ; 800 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4058 	; #ENR#[636]inelevator = 0;
                           4059 ;--- end asm ---
   2F4F 7F C8 A2      [ 7] 4060 	clr	_inElevator	; inElevator
   2F52 16 F6 CF      [ 5] 4061 	lbra	L68	;
   2F55                    4062 L82:
   2F55 7D C8 F4      [ 7] 4063 	tst	_printEnvironment	; printEnvironment
   2F58 10 27 F7 6A   [ 6] 4064 	lbeq	L81	;
                           4065 ;----- asm -----
                           4066 ; 920 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4067 	; #ENR#[718]dp_via_t1_cnt_lo  = 0x09;
                           4068 ;--- end asm ---
   2F5C C6 09         [ 2] 4069 	ldb	#9	;,
   2F5E D7 04         [ 4] 4070 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4071 ;----- asm -----
                           4072 ; 922 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4073 	; #ENR#[719]dp_via_cntl = 0xce;
                           4074 ;--- end asm ---
   2F60 C6 CE         [ 2] 4075 	ldb	#-50	;,
   2F62 D7 0C         [ 4] 4076 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           4077 ;----- asm -----
                           4078 ; 924 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4079 	; #ENR#[720]environmentdrawer[printenvironment-1]();
                           4080 ;--- end asm ---
   2F64 F6 C8 F4      [ 5] 4081 	ldb	_printEnvironment	; tmp145, printEnvironment
   2F67 5A            [ 2] 4082 	decb	; tmp145
   2F68 1D            [ 2] 4083 	sex		;extendqihi2: R:b -> R:d	; tmp145, tmp146
   2F69 58            [ 2] 4084 	aslb	;
   2F6A 49            [ 2] 4085 	rola	;
   2F6B 1F 01         [ 6] 4086 	tfr	d,x	; tmp146, tmp148
   2F6D AD 99 1F 2B   [14] 4087 	jsr	[_environmentDrawer,x]
   2F71 16 F7 52      [ 5] 4088 	lbra	L81	;
   2F74                    4089 L328:
   2F74 F6 C8 88      [ 5] 4090 	ldb	_screen+8	;,
   2F77 5A            [ 2] 4091 	decb	;
   2F78 E7 E4         [ 4] 4092 	stb	,s	;,
   2F7A C6 0A         [ 2] 4093 	ldb	#10	;,
   2F7C E7 E8 13      [ 5] 4094 	stb	19,s	;, iftmp.66
   2F7F E6 E4         [ 4] 4095 	ldb	,s	;,
   2F81 C1 08         [ 2] 4096 	cmpb	#8	;cmpqi:	;,
   2F83 10 23 F9 6E   [ 6] 4097 	lbls	L143	;
   2F87 16 F9 68      [ 5] 4098 	lbra	L142	;
   2F8A                    4099 L338:
   2F8A F6 C8 8C      [ 5] 4100 	ldb	_screen+12	;,
   2F8D 5A            [ 2] 4101 	decb	;
   2F8E E7 E4         [ 4] 4102 	stb	,s	;,
   2F90 C6 0A         [ 2] 4103 	ldb	#10	;,
   2F92 E7 E8 17      [ 5] 4104 	stb	23,s	;, iftmp.69
   2F95 E6 E4         [ 4] 4105 	ldb	,s	;,
   2F97 C1 08         [ 2] 4106 	cmpb	#8	;cmpqi:	;,
   2F99 10 23 FA 52   [ 6] 4107 	lbls	L167	;
   2F9D 16 FA 4C      [ 5] 4108 	lbra	L166	;
   2FA0                    4109 L297:
                           4110 ;----- asm -----
                           4111 ; 839 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4112 	; #ENR#[661]if (sfx_status_1==0) initsoundno = sound_box;
                           4113 ;--- end asm ---
   2FA0 F6 CA BA      [ 5] 4114 	ldb	_sfx_status_1	; sfx_status_1.39, sfx_status_1
   2FA3 10 26 F6 BE   [ 6] 4115 	lbne	L69	;
   2FA7 C6 03         [ 2] 4116 	ldb	#3	;,
   2FA9 F7 C8 A6      [ 5] 4117 	stb	_initSoundNo	;, initSoundNo
   2FAC 16 F6 B6      [ 5] 4118 	lbra	L69	;
   2FAF                    4119 L296:
                           4120 ;----- asm -----
                           4121 ; 826 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4122 	; #ENR#[653]reset0ref();
                           4123 ;--- end asm ---
   2FAF C6 CC         [ 2] 4124 	ldb	#-52	;,
   2FB1 D7 0C         [ 4] 4125 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           4126 ;----- asm -----
                           4127 ; 828 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4128 	; #ENR#[654]dp_via_cntl = 0xce;
                           4129 ;--- end asm ---
   2FB3 CB 02         [ 2] 4130 	addb	#2	;,
   2FB5 D7 0C         [ 4] 4131 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           4132 ;----- asm -----
                           4133 ; 830 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4134 	; #ENR#[655]dp_via_t1_cnt_lo  = 0x09;
                           4135 ;--- end asm ---
   2FB7 C6 09         [ 2] 4136 	ldb	#9	;,
   2FB9 D7 04         [ 4] 4137 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4138 ;----- asm -----
                           4139 ; 832 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4140 	; #ENR#[656]drawflame();
                           4141 ;--- end asm ---
   2FBB BD 53 CF      [ 8] 4142 	jsr	_drawFlame
                           4143 ;----- asm -----
                           4144 ; 834 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4145 	; #ENR#[657]if (sfx_status_1==0) initsoundno = sound_dragon;
                           4146 ;--- end asm ---
   2FBE F6 CA BA      [ 5] 4147 	ldb	_sfx_status_1	; sfx_status_1.38, sfx_status_1
   2FC1 10 26 F6 A0   [ 6] 4148 	lbne	L69	;
   2FC5 C6 04         [ 2] 4149 	ldb	#4	;,
   2FC7 F7 C8 A6      [ 5] 4150 	stb	_initSoundNo	;, initSoundNo
   2FCA 16 F6 98      [ 5] 4151 	lbra	L69	;
   2FCD                    4152 L306:
   2FCD C6 0C         [ 2] 4153 	ldb	#12	;,
   2FCF E4 E8 28      [ 5] 4154 	andb	40,s	;, prephitmp.329
   2FD2 C1 04         [ 2] 4155 	cmpb	#4	;cmpqi:	;,
   2FD4 10 22 F7 2B   [ 6] 4156 	lbhi	L89	;
   2FD8                    4157 L90:
   2FD8 F6 C8 80      [ 5] 4158 	ldb	_screen	;,
   2FDB 5A            [ 2] 4159 	decb	;
   2FDC E7 E4         [ 4] 4160 	stb	,s	;,
   2FDE C6 0A         [ 2] 4161 	ldb	#10	;,
   2FE0 E7 67         [ 5] 4162 	stb	7,s	;, iftmp.54
   2FE2 E6 E4         [ 4] 4163 	ldb	,s	;,
   2FE4 C1 08         [ 2] 4164 	cmpb	#8	;cmpqi:	;,
   2FE6 10 23 F7 23   [ 6] 4165 	lbls	L91	;
   2FEA 16 F7 1E      [ 5] 4166 	lbra	L88	;
   2FED                    4167 L353:
   2FED F6 C8 92      [ 5] 4168 	ldb	_screen+18	;,
   2FF0 5A            [ 2] 4169 	decb	;
   2FF1 E7 E4         [ 4] 4170 	stb	,s	;,
   2FF3 C6 0A         [ 2] 4171 	ldb	#10	;,
   2FF5 E7 E8 1F      [ 5] 4172 	stb	31,s	;, iftmp.77
   2FF8 E6 E4         [ 4] 4173 	ldb	,s	;,
   2FFA C1 08         [ 2] 4174 	cmpb	#8	;cmpqi:	;,
   2FFC 10 23 FB 59   [ 6] 4175 	lbls	L207	;
   3000 16 FB 53      [ 5] 4176 	lbra	L206	;
   3003                    4177 L390:
   3003 C6 0C         [ 2] 4178 	ldb	#12	;,
   3005 E4 6B         [ 5] 4179 	andb	11,s	;, D.3637
   3007 8E C8 8D      [ 3] 4180 	ldx	#_screen+13	;,
   300A AF E8 35      [ 6] 4181 	stx	53,s	;, prephitmp.395
   300D C1 04         [ 2] 4182 	cmpb	#4	;cmpqi:	;,
   300F 10 22 FF 01   [ 6] 4183 	lbhi	L120	;
   3013                    4184 L121:
   3013 F6 C8 84      [ 5] 4185 	ldb	_screen+4	;,
   3016 5A            [ 2] 4186 	decb	;
   3017 E7 E4         [ 4] 4187 	stb	,s	;,
   3019 C6 0A         [ 2] 4188 	ldb	#10	;,
   301B E7 6E         [ 5] 4189 	stb	14,s	;, iftmp.61
   301D E6 E4         [ 4] 4190 	ldb	,s	;,
   301F C1 08         [ 2] 4191 	cmpb	#8	;cmpqi:	;,
   3021 10 23 F7 F5   [ 6] 4192 	lbls	L119	;
   3025 8E C8 8D      [ 3] 4193 	ldx	#_screen+13	;,
   3028 AF E8 35      [ 6] 4194 	stx	53,s	;, prephitmp.395
   302B 16 FE FB      [ 5] 4195 	lbra	L122	;
   302E                    4196 L388:
   302E 10 8E C8 93   [ 4] 4197 	ldy	#_screen+19	; prephitmp.397,
   3032 E6 62         [ 5] 4198 	ldb	2,s	;, temp.389
   3034 C1 04         [ 2] 4199 	cmpb	#4	;cmpqi:	;,
   3036 10 22 FE 75   [ 6] 4200 	lbhi	L190	;
   303A                    4201 L191:
   303A F6 C8 90      [ 5] 4202 	ldb	_screen+16	;,
   303D 5A            [ 2] 4203 	decb	;
   303E E7 E4         [ 4] 4204 	stb	,s	;,
   3040 C6 0A         [ 2] 4205 	ldb	#10	;,
   3042 E7 E8 1C      [ 5] 4206 	stb	28,s	;, iftmp.74
   3045 E6 E4         [ 4] 4207 	ldb	,s	;,
   3047 C1 08         [ 2] 4208 	cmpb	#8	;cmpqi:	;,
   3049 10 23 FA 8B   [ 6] 4209 	lbls	L189	;
   304D 10 8E C8 93   [ 4] 4210 	ldy	#_screen+19	; prephitmp.397,
   3051 16 FE 70      [ 5] 4211 	lbra	L192	;
   3054                    4212 L359:
   3054 E6 E8 38      [ 5] 4213 	ldb	56,s	;, temp.402
   3057 C1 04         [ 2] 4214 	cmpb	#4	;cmpqi:	;,
   3059 10 22 FB A6   [ 6] 4215 	lbhi	L223	;
   305D                    4216 L224:
   305D F6 C8 94      [ 5] 4217 	ldb	_screen+20	;,
   3060 5A            [ 2] 4218 	decb	;
   3061 E7 E4         [ 4] 4219 	stb	,s	;,
   3063 C6 0A         [ 2] 4220 	ldb	#10	;,
   3065 E7 E8 22      [ 5] 4221 	stb	34,s	;, iftmp.81
   3068 E6 E4         [ 4] 4222 	ldb	,s	;,
   306A C1 08         [ 2] 4223 	cmpb	#8	;cmpqi:	;,
   306C 10 23 FB 9F   [ 6] 4224 	lbls	L225	;
   3070 16 FB 99      [ 5] 4225 	lbra	L222	;
   3073                    4226 L313:
   3073 F6 C8 82      [ 5] 4227 	ldb	_screen+2	;,
   3076 5A            [ 2] 4228 	decb	;
   3077 E7 E4         [ 4] 4229 	stb	,s	;,
   3079 C6 0A         [ 2] 4230 	ldb	#10	;,
   307B E7 6A         [ 5] 4231 	stb	10,s	;, iftmp.58
   307D E6 E4         [ 4] 4232 	ldb	,s	;,
   307F C1 08         [ 2] 4233 	cmpb	#8	;cmpqi:	;,
   3081 10 23 F7 0A   [ 6] 4234 	lbls	L105	;
   3085 16 F7 05      [ 5] 4235 	lbra	L104	;
   3088                    4236 L300:
                           4237 ;----- asm -----
                           4238 ; 859 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4239 	; #ENR#[676]sfx_pointer_1 = (long unsigned int) (&box_data);
                           4240 ;--- end asm ---
   3088 8E 1E 5D      [ 3] 4241 	ldx	#_box_data	;,
   308B BF CA BB      [ 6] 4242 	stx	_sfx_pointer_1	;, sfx_pointer_1
   308E 16 F5 F7      [ 5] 4243 	lbra	L73	;
   3091                    4244 L391:
   3091 C6 0C         [ 2] 4245 	ldb	#12	;,
   3093 E4 6F         [ 5] 4246 	andb	15,s	;, D.3651
   3095 C1 04         [ 2] 4247 	cmpb	#4	;cmpqi:	;,
   3097 10 22 FE 8E   [ 6] 4248 	lbhi	L122	;
   309B 16 FF 75      [ 5] 4249 	lbra	L121	;
   309E                    4250 L307:
   309E F6 C8 83      [ 5] 4251 	ldb	_screen+3	; tmp160,
   30A1 C4 0C         [ 2] 4252 	andb	#12	; tmp160,
   30A3 C1 04         [ 2] 4253 	cmpb	#4	;cmpqi:	; tmp160,
   30A5 10 22 F6 62   [ 6] 4254 	lbhi	L88	;
   30A9 16 FF 2C      [ 5] 4255 	lbra	L90	;
   30AC                    4256 L360:
   30AC C6 0C         [ 2] 4257 	ldb	#12	;,
   30AE E4 E8 39      [ 5] 4258 	andb	57,s	;, temp.405
   30B1 C1 04         [ 2] 4259 	cmpb	#4	;cmpqi:	;,
   30B3 10 22 FB 55   [ 6] 4260 	lbhi	L222	;
   30B7 20 A4         [ 3] 4261 	bra	L224	;
   30B9                    4262 L389:
   30B9 C6 0C         [ 2] 4263 	ldb	#12	;,
   30BB E4 E8 1D      [ 5] 4264 	andb	29,s	;, D.3704
   30BE C1 04         [ 2] 4265 	cmpb	#4	;cmpqi:	;,
   30C0 10 22 FE 00   [ 6] 4266 	lbhi	L192	;
   30C4 16 FF 73      [ 5] 4267 	lbra	L191	;
   30C7                    4268 L377:
                           4269 ;----- asm -----
                           4270 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4271 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4272 ;--- end asm ---
   30C7 C6 7F         [ 2] 4273 	ldb	#127	;,
   30C9 D7 04         [ 4] 4274 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4275 ;----- asm -----
                           4276 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4277 	; #ENR#[757]_x_ =-100+(i*20);
                           4278 ;--- end asm ---
   30CB CB 1D         [ 2] 4279 	addb	#29	;,
   30CD F7 C9 BF      [ 5] 4280 	stb	__x_	;, _x_
                           4281 ;----- asm -----
                           4282 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4283 	; #ENR#[758]moveto_start_yx
                           4284 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   30D0 B6 C9 BE      [ 5] 4285 	LDA      __y_	; _y_
   30D3 97 01         [ 4] 4286 	STA      *0x01
   30D5 86 CE         [ 2] 4287 	LDA      #0xCE
   30D7 97 0C         [ 4] 4288 	STA      *0x0C
   30D9 4F            [ 2] 4289 	CLRA     
   30DA 97 00         [ 4] 4290 	STA      *0x00
   30DC F6 C9 BF      [ 5] 4291 	LDB      __x_	; _x_
   30DF 0C 00         [ 6] 4292 	INC      *0x00
   30E1 D7 01         [ 4] 4293 	STB      *0x01
   30E3 97 05         [ 4] 4294 	STA      *0x05
                           4295 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4296 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4297 ;--- end asm ---
   30E5 C6 09         [ 2] 4298 	ldb	#9	;,
   30E7 D7 04         [ 4] 4299 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4300 ;----- asm -----
                           4301 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4302 	; #ENR#[760]drawspell(i);
                           4303 ;--- end asm ---
   30E9 5F            [ 2] 4304 	clrb	;
   30EA BD 54 0B      [ 8] 4305 	jsr	_drawSpell
                           4306 ;----- asm -----
                           4307 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4308 	; #ENR#[754]if (sf[i]>0)
                           4309 ;--- end asm ---
   30ED 7D C9 54      [ 7] 4310 	tst	_sf+1	; sf
   30F0 10 27 FC D8   [ 6] 4311 	lbeq	L263	;
   30F4                    4312 L378:
                           4313 ;----- asm -----
                           4314 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4315 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4316 ;--- end asm ---
   30F4 C6 7F         [ 2] 4317 	ldb	#127	;,
   30F6 D7 04         [ 4] 4318 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4319 ;----- asm -----
                           4320 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4321 	; #ENR#[757]_x_ =-100+(i*20);
                           4322 ;--- end asm ---
   30F8 CB 31         [ 2] 4323 	addb	#49	;,
   30FA F7 C9 BF      [ 5] 4324 	stb	__x_	;, _x_
                           4325 ;----- asm -----
                           4326 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4327 	; #ENR#[758]moveto_start_yx
                           4328 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   30FD B6 C9 BE      [ 5] 4329 	LDA      __y_	; _y_
   3100 97 01         [ 4] 4330 	STA      *0x01
   3102 86 CE         [ 2] 4331 	LDA      #0xCE
   3104 97 0C         [ 4] 4332 	STA      *0x0C
   3106 4F            [ 2] 4333 	CLRA     
   3107 97 00         [ 4] 4334 	STA      *0x00
   3109 F6 C9 BF      [ 5] 4335 	LDB      __x_	; _x_
   310C 0C 00         [ 6] 4336 	INC      *0x00
   310E D7 01         [ 4] 4337 	STB      *0x01
   3110 97 05         [ 4] 4338 	STA      *0x05
                           4339 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4340 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4341 ;--- end asm ---
   3112 C6 09         [ 2] 4342 	ldb	#9	;,
   3114 D7 04         [ 4] 4343 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4344 ;----- asm -----
                           4345 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4346 	; #ENR#[760]drawspell(i);
                           4347 ;--- end asm ---
   3116 C6 01         [ 2] 4348 	ldb	#1	;,
   3118 BD 54 0B      [ 8] 4349 	jsr	_drawSpell
                           4350 ;----- asm -----
                           4351 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4352 	; #ENR#[754]if (sf[i]>0)
                           4353 ;--- end asm ---
   311B 7D C9 55      [ 7] 4354 	tst	_sf+2	; sf
   311E 10 27 FC B1   [ 6] 4355 	lbeq	L264	;
   3122                    4356 L379:
                           4357 ;----- asm -----
                           4358 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4359 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4360 ;--- end asm ---
   3122 C6 7F         [ 2] 4361 	ldb	#127	;,
   3124 D7 04         [ 4] 4362 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4363 ;----- asm -----
                           4364 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4365 	; #ENR#[757]_x_ =-100+(i*20);
                           4366 ;--- end asm ---
   3126 C6 C4         [ 2] 4367 	ldb	#-60	;,
   3128 F7 C9 BF      [ 5] 4368 	stb	__x_	;, _x_
                           4369 ;----- asm -----
                           4370 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4371 	; #ENR#[758]moveto_start_yx
                           4372 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   312B B6 C9 BE      [ 5] 4373 	LDA      __y_	; _y_
   312E 97 01         [ 4] 4374 	STA      *0x01
   3130 86 CE         [ 2] 4375 	LDA      #0xCE
   3132 97 0C         [ 4] 4376 	STA      *0x0C
   3134 4F            [ 2] 4377 	CLRA     
   3135 97 00         [ 4] 4378 	STA      *0x00
   3137 F6 C9 BF      [ 5] 4379 	LDB      __x_	; _x_
   313A 0C 00         [ 6] 4380 	INC      *0x00
   313C D7 01         [ 4] 4381 	STB      *0x01
   313E 97 05         [ 4] 4382 	STA      *0x05
                           4383 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4384 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4385 ;--- end asm ---
   3140 C6 09         [ 2] 4386 	ldb	#9	;,
   3142 D7 04         [ 4] 4387 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4388 ;----- asm -----
                           4389 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4390 	; #ENR#[760]drawspell(i);
                           4391 ;--- end asm ---
   3144 C6 02         [ 2] 4392 	ldb	#2	;,
   3146 BD 54 0B      [ 8] 4393 	jsr	_drawSpell
                           4394 ;----- asm -----
                           4395 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4396 	; #ENR#[754]if (sf[i]>0)
                           4397 ;--- end asm ---
   3149 7D C9 56      [ 7] 4398 	tst	_sf+3	; sf
   314C 10 27 FC 8A   [ 6] 4399 	lbeq	L265	;
   3150                    4400 L380:
                           4401 ;----- asm -----
                           4402 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4403 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4404 ;--- end asm ---
   3150 C6 7F         [ 2] 4405 	ldb	#127	;,
   3152 D7 04         [ 4] 4406 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4407 ;----- asm -----
                           4408 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4409 	; #ENR#[757]_x_ =-100+(i*20);
                           4410 ;--- end asm ---
   3154 C6 D8         [ 2] 4411 	ldb	#-40	;,
   3156 F7 C9 BF      [ 5] 4412 	stb	__x_	;, _x_
                           4413 ;----- asm -----
                           4414 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4415 	; #ENR#[758]moveto_start_yx
                           4416 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3159 B6 C9 BE      [ 5] 4417 	LDA      __y_	; _y_
   315C 97 01         [ 4] 4418 	STA      *0x01
   315E 86 CE         [ 2] 4419 	LDA      #0xCE
   3160 97 0C         [ 4] 4420 	STA      *0x0C
   3162 4F            [ 2] 4421 	CLRA     
   3163 97 00         [ 4] 4422 	STA      *0x00
   3165 F6 C9 BF      [ 5] 4423 	LDB      __x_	; _x_
   3168 0C 00         [ 6] 4424 	INC      *0x00
   316A D7 01         [ 4] 4425 	STB      *0x01
   316C 97 05         [ 4] 4426 	STA      *0x05
                           4427 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4428 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4429 ;--- end asm ---
   316E C6 09         [ 2] 4430 	ldb	#9	;,
   3170 D7 04         [ 4] 4431 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4432 ;----- asm -----
                           4433 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4434 	; #ENR#[760]drawspell(i);
                           4435 ;--- end asm ---
   3172 C6 03         [ 2] 4436 	ldb	#3	;,
   3174 BD 54 0B      [ 8] 4437 	jsr	_drawSpell
                           4438 ;----- asm -----
                           4439 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4440 	; #ENR#[754]if (sf[i]>0)
                           4441 ;--- end asm ---
   3177 7D C9 57      [ 7] 4442 	tst	_sf+4	; sf
   317A 10 27 FC 63   [ 6] 4443 	lbeq	L266	;
   317E                    4444 L381:
                           4445 ;----- asm -----
                           4446 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4447 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4448 ;--- end asm ---
   317E C6 7F         [ 2] 4449 	ldb	#127	;,
   3180 D7 04         [ 4] 4450 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4451 ;----- asm -----
                           4452 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4453 	; #ENR#[757]_x_ =-100+(i*20);
                           4454 ;--- end asm ---
   3182 C6 EC         [ 2] 4455 	ldb	#-20	;,
   3184 F7 C9 BF      [ 5] 4456 	stb	__x_	;, _x_
                           4457 ;----- asm -----
                           4458 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4459 	; #ENR#[758]moveto_start_yx
                           4460 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3187 B6 C9 BE      [ 5] 4461 	LDA      __y_	; _y_
   318A 97 01         [ 4] 4462 	STA      *0x01
   318C 86 CE         [ 2] 4463 	LDA      #0xCE
   318E 97 0C         [ 4] 4464 	STA      *0x0C
   3190 4F            [ 2] 4465 	CLRA     
   3191 97 00         [ 4] 4466 	STA      *0x00
   3193 F6 C9 BF      [ 5] 4467 	LDB      __x_	; _x_
   3196 0C 00         [ 6] 4468 	INC      *0x00
   3198 D7 01         [ 4] 4469 	STB      *0x01
   319A 97 05         [ 4] 4470 	STA      *0x05
                           4471 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4472 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4473 ;--- end asm ---
   319C C6 09         [ 2] 4474 	ldb	#9	;,
   319E D7 04         [ 4] 4475 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4476 ;----- asm -----
                           4477 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4478 	; #ENR#[760]drawspell(i);
                           4479 ;--- end asm ---
   31A0 C6 04         [ 2] 4480 	ldb	#4	;,
   31A2 BD 54 0B      [ 8] 4481 	jsr	_drawSpell
                           4482 ;----- asm -----
                           4483 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4484 	; #ENR#[754]if (sf[i]>0)
                           4485 ;--- end asm ---
   31A5 7D C9 58      [ 7] 4486 	tst	_sf+5	; sf
   31A8 10 27 FC 3C   [ 6] 4487 	lbeq	L267	;
   31AC                    4488 L382:
                           4489 ;----- asm -----
                           4490 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4491 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4492 ;--- end asm ---
   31AC C6 7F         [ 2] 4493 	ldb	#127	;,
   31AE D7 04         [ 4] 4494 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4495 ;----- asm -----
                           4496 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4497 	; #ENR#[757]_x_ =-100+(i*20);
                           4498 ;--- end asm ---
   31B0 7F C9 BF      [ 7] 4499 	clr	__x_	; _x_
                           4500 ;----- asm -----
                           4501 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4502 	; #ENR#[758]moveto_start_yx
                           4503 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   31B3 B6 C9 BE      [ 5] 4504 	LDA      __y_	; _y_
   31B6 97 01         [ 4] 4505 	STA      *0x01
   31B8 86 CE         [ 2] 4506 	LDA      #0xCE
   31BA 97 0C         [ 4] 4507 	STA      *0x0C
   31BC 4F            [ 2] 4508 	CLRA     
   31BD 97 00         [ 4] 4509 	STA      *0x00
   31BF F6 C9 BF      [ 5] 4510 	LDB      __x_	; _x_
   31C2 0C 00         [ 6] 4511 	INC      *0x00
   31C4 D7 01         [ 4] 4512 	STB      *0x01
   31C6 97 05         [ 4] 4513 	STA      *0x05
                           4514 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4515 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4516 ;--- end asm ---
   31C8 C6 09         [ 2] 4517 	ldb	#9	;,
   31CA D7 04         [ 4] 4518 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4519 ;----- asm -----
                           4520 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4521 	; #ENR#[760]drawspell(i);
                           4522 ;--- end asm ---
   31CC C6 05         [ 2] 4523 	ldb	#5	;,
   31CE BD 54 0B      [ 8] 4524 	jsr	_drawSpell
                           4525 ;----- asm -----
                           4526 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4527 	; #ENR#[754]if (sf[i]>0)
                           4528 ;--- end asm ---
   31D1 7D C9 59      [ 7] 4529 	tst	_sf+6	; sf
   31D4 10 27 FC 17   [ 6] 4530 	lbeq	L268	;
   31D8                    4531 L383:
                           4532 ;----- asm -----
                           4533 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4534 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4535 ;--- end asm ---
   31D8 C6 7F         [ 2] 4536 	ldb	#127	;,
   31DA D7 04         [ 4] 4537 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4538 ;----- asm -----
                           4539 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4540 	; #ENR#[757]_x_ =-100+(i*20);
                           4541 ;--- end asm ---
   31DC C6 14         [ 2] 4542 	ldb	#20	;,
   31DE F7 C9 BF      [ 5] 4543 	stb	__x_	;, _x_
                           4544 ;----- asm -----
                           4545 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4546 	; #ENR#[758]moveto_start_yx
                           4547 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   31E1 B6 C9 BE      [ 5] 4548 	LDA      __y_	; _y_
   31E4 97 01         [ 4] 4549 	STA      *0x01
   31E6 86 CE         [ 2] 4550 	LDA      #0xCE
   31E8 97 0C         [ 4] 4551 	STA      *0x0C
   31EA 4F            [ 2] 4552 	CLRA     
   31EB 97 00         [ 4] 4553 	STA      *0x00
   31ED F6 C9 BF      [ 5] 4554 	LDB      __x_	; _x_
   31F0 0C 00         [ 6] 4555 	INC      *0x00
   31F2 D7 01         [ 4] 4556 	STB      *0x01
   31F4 97 05         [ 4] 4557 	STA      *0x05
                           4558 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4559 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4560 ;--- end asm ---
   31F6 C6 09         [ 2] 4561 	ldb	#9	;,
   31F8 D7 04         [ 4] 4562 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4563 ;----- asm -----
                           4564 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4565 	; #ENR#[760]drawspell(i);
                           4566 ;--- end asm ---
   31FA C6 06         [ 2] 4567 	ldb	#6	;,
   31FC BD 54 0B      [ 8] 4568 	jsr	_drawSpell
                           4569 ;----- asm -----
                           4570 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4571 	; #ENR#[754]if (sf[i]>0)
                           4572 ;--- end asm ---
   31FF 7D C9 5A      [ 7] 4573 	tst	_sf+7	; sf
   3202 10 27 FB F0   [ 6] 4574 	lbeq	L269	;
   3206                    4575 L384:
                           4576 ;----- asm -----
                           4577 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4578 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4579 ;--- end asm ---
   3206 C6 7F         [ 2] 4580 	ldb	#127	;,
   3208 D7 04         [ 4] 4581 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4582 ;----- asm -----
                           4583 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4584 	; #ENR#[757]_x_ =-100+(i*20);
                           4585 ;--- end asm ---
   320A C6 28         [ 2] 4586 	ldb	#40	;,
   320C F7 C9 BF      [ 5] 4587 	stb	__x_	;, _x_
                           4588 ;----- asm -----
                           4589 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4590 	; #ENR#[758]moveto_start_yx
                           4591 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   320F B6 C9 BE      [ 5] 4592 	LDA      __y_	; _y_
   3212 97 01         [ 4] 4593 	STA      *0x01
   3214 86 CE         [ 2] 4594 	LDA      #0xCE
   3216 97 0C         [ 4] 4595 	STA      *0x0C
   3218 4F            [ 2] 4596 	CLRA     
   3219 97 00         [ 4] 4597 	STA      *0x00
   321B F6 C9 BF      [ 5] 4598 	LDB      __x_	; _x_
   321E 0C 00         [ 6] 4599 	INC      *0x00
   3220 D7 01         [ 4] 4600 	STB      *0x01
   3222 97 05         [ 4] 4601 	STA      *0x05
                           4602 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4603 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4604 ;--- end asm ---
   3224 C6 09         [ 2] 4605 	ldb	#9	;,
   3226 D7 04         [ 4] 4606 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4607 ;----- asm -----
                           4608 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4609 	; #ENR#[760]drawspell(i);
                           4610 ;--- end asm ---
   3228 C6 07         [ 2] 4611 	ldb	#7	;,
   322A BD 54 0B      [ 8] 4612 	jsr	_drawSpell
                           4613 ;----- asm -----
                           4614 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4615 	; #ENR#[754]if (sf[i]>0)
                           4616 ;--- end asm ---
   322D 7D C9 5B      [ 7] 4617 	tst	_sf+8	; sf
   3230 10 27 FB C9   [ 6] 4618 	lbeq	L270	;
   3234                    4619 L385:
                           4620 ;----- asm -----
                           4621 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4622 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4623 ;--- end asm ---
   3234 C6 7F         [ 2] 4624 	ldb	#127	;,
   3236 D7 04         [ 4] 4625 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4626 ;----- asm -----
                           4627 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4628 	; #ENR#[757]_x_ =-100+(i*20);
                           4629 ;--- end asm ---
   3238 C6 3C         [ 2] 4630 	ldb	#60	;,
   323A F7 C9 BF      [ 5] 4631 	stb	__x_	;, _x_
                           4632 ;----- asm -----
                           4633 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4634 	; #ENR#[758]moveto_start_yx
                           4635 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   323D B6 C9 BE      [ 5] 4636 	LDA      __y_	; _y_
   3240 97 01         [ 4] 4637 	STA      *0x01
   3242 86 CE         [ 2] 4638 	LDA      #0xCE
   3244 97 0C         [ 4] 4639 	STA      *0x0C
   3246 4F            [ 2] 4640 	CLRA     
   3247 97 00         [ 4] 4641 	STA      *0x00
   3249 F6 C9 BF      [ 5] 4642 	LDB      __x_	; _x_
   324C 0C 00         [ 6] 4643 	INC      *0x00
   324E D7 01         [ 4] 4644 	STB      *0x01
   3250 97 05         [ 4] 4645 	STA      *0x05
                           4646 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4647 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4648 ;--- end asm ---
   3252 C6 09         [ 2] 4649 	ldb	#9	;,
   3254 D7 04         [ 4] 4650 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4651 ;----- asm -----
                           4652 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4653 	; #ENR#[760]drawspell(i);
                           4654 ;--- end asm ---
   3256 C6 08         [ 2] 4655 	ldb	#8	;,
   3258 BD 54 0B      [ 8] 4656 	jsr	_drawSpell
                           4657 ;----- asm -----
                           4658 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4659 	; #ENR#[754]if (sf[i]>0)
                           4660 ;--- end asm ---
   325B 7D C9 5C      [ 7] 4661 	tst	_sf+9	; sf
   325E 10 27 FB A2   [ 6] 4662 	lbeq	L271	;
   3262                    4663 L386:
                           4664 ;----- asm -----
                           4665 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4666 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4667 ;--- end asm ---
   3262 C6 7F         [ 2] 4668 	ldb	#127	;,
   3264 D7 04         [ 4] 4669 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4670 ;----- asm -----
                           4671 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4672 	; #ENR#[757]_x_ =-100+(i*20);
                           4673 ;--- end asm ---
   3266 C6 50         [ 2] 4674 	ldb	#80	;,
   3268 F7 C9 BF      [ 5] 4675 	stb	__x_	;, _x_
                           4676 ;----- asm -----
                           4677 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4678 	; #ENR#[758]moveto_start_yx
                           4679 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   326B B6 C9 BE      [ 5] 4680 	LDA      __y_	; _y_
   326E 97 01         [ 4] 4681 	STA      *0x01
   3270 86 CE         [ 2] 4682 	LDA      #0xCE
   3272 97 0C         [ 4] 4683 	STA      *0x0C
   3274 4F            [ 2] 4684 	CLRA     
   3275 97 00         [ 4] 4685 	STA      *0x00
   3277 F6 C9 BF      [ 5] 4686 	LDB      __x_	; _x_
   327A 0C 00         [ 6] 4687 	INC      *0x00
   327C D7 01         [ 4] 4688 	STB      *0x01
   327E 97 05         [ 4] 4689 	STA      *0x05
                           4690 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4691 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4692 ;--- end asm ---
   3280 C6 09         [ 2] 4693 	ldb	#9	;,
   3282 D7 04         [ 4] 4694 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4695 ;----- asm -----
                           4696 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4697 	; #ENR#[760]drawspell(i);
                           4698 ;--- end asm ---
   3284 BD 54 0B      [ 8] 4699 	jsr	_drawSpell
                           4700 ;----- asm -----
                           4701 ; 978 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4702 	; #ENR#[754]if (sf[i]>0)
                           4703 ;--- end asm ---
   3287 7D C9 5D      [ 7] 4704 	tst	_sf+10	; sf
   328A 10 27 FB 7D   [ 6] 4705 	lbeq	L272	;
   328E                    4706 L387:
                           4707 ;----- asm -----
                           4708 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4709 	; #ENR#[756]dp_via_t1_cnt_lo  = 0x7f;
                           4710 ;--- end asm ---
   328E C6 7F         [ 2] 4711 	ldb	#127	;,
   3290 D7 04         [ 4] 4712 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4713 ;----- asm -----
                           4714 ; 983 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4715 	; #ENR#[757]_x_ =-100+(i*20);
                           4716 ;--- end asm ---
   3292 C6 64         [ 2] 4717 	ldb	#100	;,
   3294 F7 C9 BF      [ 5] 4718 	stb	__x_	;, _x_
                           4719 ;----- asm -----
                           4720 ; 985 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4721 	; #ENR#[758]moveto_start_yx
                           4722 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3297 B6 C9 BE      [ 5] 4723 	LDA      __y_	; _y_
   329A 97 01         [ 4] 4724 	STA      *0x01
   329C 86 CE         [ 2] 4725 	LDA      #0xCE
   329E 97 0C         [ 4] 4726 	STA      *0x0C
   32A0 4F            [ 2] 4727 	CLRA     
   32A1 97 00         [ 4] 4728 	STA      *0x00
   32A3 F6 C9 BF      [ 5] 4729 	LDB      __x_	; _x_
   32A6 0C 00         [ 6] 4730 	INC      *0x00
   32A8 D7 01         [ 4] 4731 	STB      *0x01
   32AA 97 05         [ 4] 4732 	STA      *0x05
                           4733 ; 987 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4734 	; #ENR#[759]dp_via_t1_cnt_lo  = 0x09;
                           4735 ;--- end asm ---
   32AC C6 09         [ 2] 4736 	ldb	#9	;,
   32AE D7 04         [ 4] 4737 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4738 ;----- asm -----
                           4739 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4740 	; #ENR#[760]drawspell(i);
                           4741 ;--- end asm ---
   32B0 C6 0A         [ 2] 4742 	ldb	#10	;,
   32B2 BD 54 0B      [ 8] 4743 	jsr	_drawSpell
   32B5 16 FB 53      [ 5] 4744 	lbra	L272	;
   32B8                    4745 L260:
   32B8 C6 3F         [ 2] 4746 	ldb	#63	;,
   32BA BD 7F 68      [ 8] 4747 	jsr	__Intensity_a
   32BD 16 FA FE      [ 5] 4748 	lbra	L261	;
   32C0                    4749 L319:
   32C0 C6 0C         [ 2] 4750 	ldb	#12	; tmp171,
   32C2 E4 6B         [ 5] 4751 	andb	11,s	; tmp171, D.3637
   32C4 C1 04         [ 2] 4752 	cmpb	#4	;cmpqi:	; tmp171,
   32C6 10 22 F5 3F   [ 6] 4753 	lbhi	L116	;
   32CA C6 03         [ 2] 4754 	ldb	#3	;,
   32CC E4 6B         [ 5] 4755 	andb	11,s	;, D.3637
   32CE E7 6D         [ 5] 4756 	stb	13,s	;, iftmp.60
   32D0 16 F5 38      [ 5] 4757 	lbra	L117	;
   32D3                    4758 L102:
   32D3 F6 C8 83      [ 5] 4759 	ldb	_screen+3	;,
   32D6 54            [ 2] 4760 	lsrb	;
   32D7 54            [ 2] 4761 	lsrb	;
   32D8 E7 68         [ 5] 4762 	stb	8,s	;, iftmp.56
   32DA C6 03         [ 2] 4763 	ldb	#3	;,
   32DC E4 68         [ 5] 4764 	andb	8,s	;, iftmp.56
   32DE E7 68         [ 5] 4765 	stb	8,s	;, iftmp.56
   32E0 C6 03         [ 2] 4766 	ldb	#3	;,
   32E2 F4 C8 83      [ 5] 4767 	andb	_screen+3	;,
   32E5 E7 69         [ 5] 4768 	stb	9,s	;, iftmp.57
   32E7 E6 68         [ 5] 4769 	ldb	8,s	;, iftmp.56
   32E9 EB 69         [ 5] 4770 	addb	9,s	;, iftmp.57
   32EB E7 E8 2E      [ 5] 4771 	stb	46,s	;, prephitmp.366
   32EE 16 F4 8E      [ 5] 4772 	lbra	L103	;
   32F1                    4773 L374:
   32F1 AE E8 2A      [ 6] 4774 	ldx	42,s	;, prephitmp.333
   32F4 E6 84         [ 4] 4775 	ldb	,x	; tmp234,
   32F6 C4 0C         [ 2] 4776 	andb	#12	; tmp234,
   32F8 C1 04         [ 2] 4777 	cmpb	#4	;cmpqi:	; tmp234,
   32FA 10 22 FA 6B   [ 6] 4778 	lbhi	L254	;
   32FE F6 C8 9D      [ 5] 4779 	ldb	_screen+29	;,
   3301 E7 E8 27      [ 5] 4780 	stb	39,s	;, D.4231
   3304 C6 03         [ 2] 4781 	ldb	#3	;,
   3306 E4 E8 27      [ 5] 4782 	andb	39,s	;, D.4231
   3309 E7 E8 27      [ 5] 4783 	stb	39,s	;, D.4231
   330C 16 FA 5D      [ 5] 4784 	lbra	L255	;
   330F                    4785 L369:
   330F C6 0C         [ 2] 4786 	ldb	#12	;,
   3311 E4 E8 3A      [ 5] 4787 	andb	58,s	;, temp.411
   3314 C1 04         [ 2] 4788 	cmpb	#4	;cmpqi:	;,
   3316 10 22 F9 B5   [ 6] 4789 	lbhi	L242	;
   331A F6 C8 99      [ 5] 4790 	ldb	_screen+25	;,
   331D E7 E8 25      [ 5] 4791 	stb	37,s	;, D.4217
   3320 C6 03         [ 2] 4792 	ldb	#3	;,
   3322 E4 E8 25      [ 5] 4793 	andb	37,s	;, D.4217
   3325 E7 E8 25      [ 5] 4794 	stb	37,s	;, D.4217
   3328 16 F9 A7      [ 5] 4795 	lbra	L243	;
   332B                    4796 L248:
   332B F6 C8 9B      [ 5] 4797 	ldb	_screen+27	;,
   332E E7 E8 26      [ 5] 4798 	stb	38,s	;, D.4224
   3331 C6 03         [ 2] 4799 	ldb	#3	;,
   3333 E4 E8 26      [ 5] 4800 	andb	38,s	;, D.4224
   3336 E7 E8 26      [ 5] 4801 	stb	38,s	;, D.4224
   3339 16 F9 E2      [ 5] 4802 	lbra	L249	;
   333C                    4803 L366:
   333C AE E8 35      [ 6] 4804 	ldx	53,s	;, prephitmp.395
   333F E6 84         [ 4] 4805 	ldb	,x	; tmp223,
   3341 C4 0C         [ 2] 4806 	andb	#12	; tmp223,
   3343 C1 04         [ 2] 4807 	cmpb	#4	;cmpqi:	; tmp223,
   3345 10 22 F9 32   [ 6] 4808 	lbhi	L236	;
   3349 F6 C8 97      [ 5] 4809 	ldb	_screen+23	;,
   334C 54            [ 2] 4810 	lsrb	;
   334D 54            [ 2] 4811 	lsrb	;
   334E E7 E8 23      [ 5] 4812 	stb	35,s	;, iftmp.83
   3351 C6 03         [ 2] 4813 	ldb	#3	;,
   3353 E4 E8 23      [ 5] 4814 	andb	35,s	;, iftmp.83
   3356 E7 E8 23      [ 5] 4815 	stb	35,s	;, iftmp.83
   3359 16 F9 22      [ 5] 4816 	lbra	L237	;
   335C                    4817 L204:
   335C E6 62         [ 5] 4818 	ldb	2,s	;, temp.393
   335E 54            [ 2] 4819 	lsrb	;
   335F 54            [ 2] 4820 	lsrb	;
   3360 E7 E8 1E      [ 5] 4821 	stb	30,s	;, iftmp.76
   3363 C6 03         [ 2] 4822 	ldb	#3	;,
   3365 E4 E8 1E      [ 5] 4823 	andb	30,s	;, iftmp.76
   3368 E7 E8 1E      [ 5] 4824 	stb	30,s	;, iftmp.76
   336B 16 F7 DA      [ 5] 4825 	lbra	L205	;
   336E                    4826 L325:
   336E C6 0C         [ 2] 4827 	ldb	#12	;,
   3370 E4 E8 30      [ 5] 4828 	andb	48,s	;, temp.372
   3373 C1 04         [ 2] 4829 	cmpb	#4	;cmpqi:	;,
   3375 10 22 F5 0D   [ 6] 4830 	lbhi	L134	;
   3379 F6 C8 87      [ 5] 4831 	ldb	_screen+7	;,
   337C 54            [ 2] 4832 	lsrb	;
   337D 54            [ 2] 4833 	lsrb	;
   337E E7 E8 10      [ 5] 4834 	stb	16,s	;, iftmp.63
   3381 C6 03         [ 2] 4835 	ldb	#3	;,
   3383 E4 E8 10      [ 5] 4836 	andb	16,s	;, iftmp.63
   3386 E7 E8 10      [ 5] 4837 	stb	16,s	;, iftmp.63
   3389 16 F4 FD      [ 5] 4838 	lbra	L135	;
   338C                    4839 L305:
   338C F6 C8 83      [ 5] 4840 	ldb	_screen+3	; tmp155,
   338F C4 0C         [ 2] 4841 	andb	#12	; tmp155,
   3391 C1 04         [ 2] 4842 	cmpb	#4	;cmpqi:	; tmp155,
   3393 10 22 F3 5D   [ 6] 4843 	lbhi	L86	;
   3397 F6 C8 81      [ 5] 4844 	ldb	_screen+1	;,
   339A E7 65         [ 5] 4845 	stb	5,s	;, iftmp.53
   339C C6 03         [ 2] 4846 	ldb	#3	;,
   339E E4 65         [ 5] 4847 	andb	5,s	;, iftmp.53
   33A0 E7 65         [ 5] 4848 	stb	5,s	;, iftmp.53
   33A2 16 F3 51      [ 5] 4849 	lbra	L87	;
   33A5                    4850 L83:
   33A5 10 8E C8 8B   [ 4] 4851 	ldy	#_screen+11	; prephitmp.327,
   33A9 F6 C8 8B      [ 5] 4852 	ldb	_screen+11	;,
   33AC E7 E8 28      [ 5] 4853 	stb	40,s	;, prephitmp.329
   33AF C6 0C         [ 2] 4854 	ldb	#12	; tmp152,
   33B1 E4 E8 28      [ 5] 4855 	andb	40,s	; tmp152, prephitmp.329
   33B4 C1 04         [ 2] 4856 	cmpb	#4	;cmpqi:	; tmp152,
   33B6 23 4A         [ 3] 4857 	bls	L85	;
   33B8 6F 63         [ 7] 4858 	clr	3,s	; iftmp.52
   33BA 16 F3 2A      [ 5] 4859 	lbra	L84	;
   33BD                    4860 L346:
   33BD E6 A4         [ 4] 4861 	ldb	,y	;,* prephitmp.327
   33BF E7 62         [ 5] 4862 	stb	2,s	;, temp.389
   33C1 C6 0C         [ 2] 4863 	ldb	#12	;,
   33C3 E4 62         [ 5] 4864 	andb	2,s	;, temp.389
   33C5 E7 62         [ 5] 4865 	stb	2,s	;, temp.389
   33C7 C1 04         [ 2] 4866 	cmpb	#4	;cmpqi:	;,
   33C9 10 22 F6 F4   [ 6] 4867 	lbhi	L185	;
   33CD E6 E8 1A      [ 5] 4868 	ldb	26,s	;, D.3693
   33D0 54            [ 2] 4869 	lsrb	;
   33D1 54            [ 2] 4870 	lsrb	;
   33D2 E7 E8 19      [ 5] 4871 	stb	25,s	;, iftmp.72
   33D5 C6 03         [ 2] 4872 	ldb	#3	;,
   33D7 E4 E8 19      [ 5] 4873 	andb	25,s	;, iftmp.72
   33DA E7 E8 19      [ 5] 4874 	stb	25,s	;, iftmp.72
   33DD 16 FB 54      [ 5] 4875 	lbra	L186	;
   33E0                    4876 L218:
   33E0 8E C8 95      [ 3] 4877 	ldx	#_screen+21	;,
   33E3 AF E8 2A      [ 6] 4878 	stx	42,s	;, prephitmp.333
   33E6 F6 C8 95      [ 5] 4879 	ldb	_screen+21	;,
   33E9 54            [ 2] 4880 	lsrb	;
   33EA 54            [ 2] 4881 	lsrb	;
   33EB E7 E8 20      [ 5] 4882 	stb	32,s	;, iftmp.79
   33EE C6 03         [ 2] 4883 	ldb	#3	;,
   33F0 E4 E8 20      [ 5] 4884 	andb	32,s	;, iftmp.79
   33F3 E7 E8 20      [ 5] 4885 	stb	32,s	;, iftmp.79
   33F6 16 F7 D9      [ 5] 4886 	lbra	L219	;
   33F9                    4887 L299:
                           4888 ;----- asm -----
                           4889 ; 854 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4890 	; #ENR#[672]sfx_pointer_1 = (long unsigned int) (&teleport_data);
                           4891 ;--- end asm ---
   33F9 8E 1D DB      [ 3] 4892 	ldx	#_teleport_data	;,
   33FC BF CA BB      [ 6] 4893 	stx	_sfx_pointer_1	;, sfx_pointer_1
   33FF 16 F2 86      [ 5] 4894 	lbra	L73	;
   3402                    4895 L85:
   3402 F6 C8 81      [ 5] 4896 	ldb	_screen+1	;,
   3405 54            [ 2] 4897 	lsrb	;
   3406 54            [ 2] 4898 	lsrb	;
   3407 E7 63         [ 5] 4899 	stb	3,s	;, iftmp.52
   3409 C6 03         [ 2] 4900 	ldb	#3	;,
   340B E4 63         [ 5] 4901 	andb	3,s	;, iftmp.52
   340D E7 63         [ 5] 4902 	stb	3,s	;, iftmp.52
   340F 16 F2 D5      [ 5] 4903 	lbra	L84	;
   3412                    4904 L301:
                           4905 ;----- asm -----
                           4906 ; 864 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4907 	; #ENR#[680]sfx_pointer_1 = (long unsigned int) (&dragon_data);
                           4908 ;--- end asm ---
   3412 8E 1E 81      [ 3] 4909 	ldx	#_dragon_data	;,
   3415 BF CA BB      [ 6] 4910 	stx	_sfx_pointer_1	;, sfx_pointer_1
   3418 16 F2 6D      [ 5] 4911 	lbra	L73	;
   341B                    4912 L321:
                           4913 ;----- asm -----
                           4914 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4915 	; #ENR#[583]drawupwall();
                           4916 ;--- end asm ---
   341B BD 52 7B      [ 8] 4917 	jsr	_drawUpWall
                           4918 ;----- asm -----
                           4919 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4920 	; #ENR#[584]if (drawleft == 2)
                           4921 ;--- end asm ---
   341E E6 6C         [ 5] 4922 	ldb	12,s	;, D.3639
   3420 C1 02         [ 2] 4923 	cmpb	#2	;cmpqi:	;,
   3422 10 27 04 00   [ 6] 4924 	lbeq	L392	;
   3426 C1 03         [ 2] 4925 	cmpb	#3	;cmpqi:	;,
   3428 10 27 04 4E   [ 6] 4926 	lbeq	L393	;
   342C                    4927 L131:
                           4928 ;----- asm -----
                           4929 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4930 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           4931 ;--- end asm ---
   342C E6 6E         [ 5] 4932 	ldb	14,s	;, iftmp.61
   342E C1 0A         [ 2] 4933 	cmpb	#10	;cmpqi:	;,
   3430 10 26 F4 3B   [ 6] 4934 	lbne	L128	;
   3434                    4935 L282:
   3434 BD 52 D1      [ 8] 4936 	jsr	_drawUnkown_noZero
   3437 16 F4 35      [ 5] 4937 	lbra	L128	;
   343A                    4938 L327:
                           4939 ;----- asm -----
                           4940 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4941 	; #ENR#[599]drawleftwall();
                           4942 ;--- end asm ---
   343A BD 52 97      [ 8] 4943 	jsr	_drawLeftWall
                           4944 ;----- asm -----
                           4945 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4946 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           4947 ;--- end asm ---
   343D 16 F4 84      [ 5] 4948 	lbra	L138	;
   3440                    4949 L315:
                           4950 ;----- asm -----
                           4951 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4952 	; #ENR#[583]drawupwall();
                           4953 ;--- end asm ---
   3440 BD 52 7B      [ 8] 4954 	jsr	_drawUpWall
                           4955 ;----- asm -----
                           4956 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4957 	; #ENR#[584]if (drawleft == 2)
                           4958 ;--- end asm ---
   3443 E6 68         [ 5] 4959 	ldb	8,s	;, iftmp.56
   3445 C1 02         [ 2] 4960 	cmpb	#2	;cmpqi:	;,
   3447 10 27 03 AB   [ 6] 4961 	lbeq	L394	;
   344B C1 03         [ 2] 4962 	cmpb	#3	;cmpqi:	;,
   344D 10 27 04 1D   [ 6] 4963 	lbeq	L395	;
   3451                    4964 L113:
                           4965 ;----- asm -----
                           4966 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4967 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           4968 ;--- end asm ---
   3451 E6 6A         [ 5] 4969 	ldb	10,s	;, iftmp.58
   3453 C1 0A         [ 2] 4970 	cmpb	#10	;cmpqi:	;,
   3455 10 26 F3 8A   [ 6] 4971 	lbne	L110	;
   3459                    4972 L280:
   3459 BD 52 D1      [ 8] 4973 	jsr	_drawUnkown_noZero
   345C 16 F3 84      [ 5] 4974 	lbra	L110	;
   345F                    4975 L368:
                           4976 ;----- asm -----
                           4977 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4978 	; #ENR#[599]drawleftwall();
                           4979 ;--- end asm ---
   345F BD 52 97      [ 8] 4980 	jsr	_drawLeftWall
                           4981 ;----- asm -----
                           4982 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4983 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           4984 ;--- end asm ---
   3462 16 F8 56      [ 5] 4985 	lbra	L240	;
   3465                    4986 L371:
                           4987 ;----- asm -----
                           4988 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4989 	; #ENR#[583]drawupwall();
                           4990 ;--- end asm ---
   3465 BD 52 7B      [ 8] 4991 	jsr	_drawUpWall
                           4992 ;----- asm -----
                           4993 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4994 	; #ENR#[584]if (drawleft == 2)
                           4995 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4996 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           4997 ;--- end asm ---
   3468 16 F8 A2      [ 5] 4998 	lbra	L246	;
   346B                    4999 L309:
                           5000 ;----- asm -----
                           5001 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5002 	; #ENR#[583]drawupwall();
                           5003 ;--- end asm ---
   346B BD 52 7B      [ 8] 5004 	jsr	_drawUpWall
                           5005 ;----- asm -----
                           5006 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5007 	; #ENR#[584]if (drawleft == 2)
                           5008 ;--- end asm ---
   346E E6 63         [ 5] 5009 	ldb	3,s	;, iftmp.52
   3470 C1 02         [ 2] 5010 	cmpb	#2	;cmpqi:	;,
   3472 10 27 03 C2   [ 6] 5011 	lbeq	L396	;
   3476 C1 03         [ 2] 5012 	cmpb	#3	;cmpqi:	;,
   3478 10 27 03 E0   [ 6] 5013 	lbeq	L397	;
   347C                    5014 L99:
                           5015 ;----- asm -----
                           5016 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5017 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5018 ;--- end asm ---
   347C E6 67         [ 5] 5019 	ldb	7,s	;, iftmp.54
   347E C1 0A         [ 2] 5020 	cmpb	#10	;cmpqi:	;,
   3480 10 26 F2 DD   [ 6] 5021 	lbne	L96	;
   3484                    5022 L278:
   3484 BD 52 D1      [ 8] 5023 	jsr	_drawUnkown_noZero
   3487 16 F2 D7      [ 5] 5024 	lbra	L96	;
   348A                    5025 L349:
                           5026 ;----- asm -----
                           5027 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5028 	; #ENR#[583]drawupwall();
                           5029 ;--- end asm ---
   348A BD 52 7B      [ 8] 5030 	jsr	_drawUpWall
                           5031 ;----- asm -----
                           5032 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5033 	; #ENR#[584]if (drawleft == 2)
                           5034 ;--- end asm ---
   348D E6 E8 19      [ 5] 5035 	ldb	25,s	;, iftmp.72
   3490 C1 02         [ 2] 5036 	cmpb	#2	;cmpqi:	;,
   3492 10 27 03 8A   [ 6] 5037 	lbeq	L398	;
   3496 C1 03         [ 2] 5038 	cmpb	#3	;cmpqi:	;,
   3498 10 27 03 D8   [ 6] 5039 	lbeq	L399	;
   349C                    5040 L201:
                           5041 ;----- asm -----
                           5042 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5043 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5044 ;--- end asm ---
   349C E6 E8 1C      [ 5] 5045 	ldb	28,s	;, iftmp.74
   349F C1 0A         [ 2] 5046 	cmpb	#10	;cmpqi:	;,
   34A1 10 26 F6 8B   [ 6] 5047 	lbne	L198	;
   34A5                    5048 L288:
   34A5 BD 52 D1      [ 8] 5049 	jsr	_drawUnkown_noZero
   34A8 16 F6 85      [ 5] 5050 	lbra	L198	;
   34AB                    5051 L330:
                           5052 ;----- asm -----
                           5053 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5054 	; #ENR#[583]drawupwall();
                           5055 ;--- end asm ---
   34AB BD 52 7B      [ 8] 5056 	jsr	_drawUpWall
                           5057 ;----- asm -----
                           5058 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5059 	; #ENR#[584]if (drawleft == 2)
                           5060 ;--- end asm ---
   34AE E6 E8 11      [ 5] 5061 	ldb	17,s	;, iftmp.64
   34B1 C1 02         [ 2] 5062 	cmpb	#2	;cmpqi:	;,
   34B3 10 27 03 7B   [ 6] 5063 	lbeq	L400	;
   34B7 C1 03         [ 2] 5064 	cmpb	#3	;cmpqi:	;,
   34B9 10 27 03 99   [ 6] 5065 	lbeq	L401	;
   34BD                    5066 L151:
                           5067 ;----- asm -----
                           5068 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5069 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5070 ;--- end asm ---
   34BD E6 E8 13      [ 5] 5071 	ldb	19,s	;, iftmp.66
   34C0 C1 0A         [ 2] 5072 	cmpb	#10	;cmpqi:	;,
   34C2 10 26 F4 87   [ 6] 5073 	lbne	L148	;
   34C6                    5074 L284:
   34C6 BD 52 D1      [ 8] 5075 	jsr	_drawUnkown_noZero
   34C9 16 F4 81      [ 5] 5076 	lbra	L148	;
   34CC                    5077 L335:
                           5078 ;----- asm -----
                           5079 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5080 	; #ENR#[583]drawupwall();
                           5081 ;--- end asm ---
   34CC BD 52 7B      [ 8] 5082 	jsr	_drawUpWall
                           5083 ;----- asm -----
                           5084 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5085 	; #ENR#[584]if (drawleft == 2)
                           5086 ;--- end asm ---
   34CF E6 E8 14      [ 5] 5087 	ldb	20,s	;, D.3674
   34D2 C1 02         [ 2] 5088 	cmpb	#2	;cmpqi:	;,
   34D4 10 27 03 66   [ 6] 5089 	lbeq	L402	;
   34D8 C1 03         [ 2] 5090 	cmpb	#3	;cmpqi:	;,
   34DA 10 27 03 84   [ 6] 5091 	lbeq	L403	;
   34DE                    5092 L161:
                           5093 ;----- asm -----
                           5094 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5095 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5096 ;--- end asm ---
   34DE 16 F4 D5      [ 5] 5097 	lbra	L158	;
   34E1                    5098 L345:
                           5099 ;----- asm -----
                           5100 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5101 	; #ENR#[599]drawleftwall();
                           5102 ;--- end asm ---
   34E1 BD 52 97      [ 8] 5103 	jsr	_drawLeftWall
                           5104 ;----- asm -----
                           5105 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5106 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5107 ;--- end asm ---
   34E4 16 F5 B2      [ 5] 5108 	lbra	L182	;
   34E7                    5109 L340:
                           5110 ;----- asm -----
                           5111 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5112 	; #ENR#[583]drawupwall();
                           5113 ;--- end asm ---
   34E7 BD 52 7B      [ 8] 5114 	jsr	_drawUpWall
                           5115 ;----- asm -----
                           5116 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5117 	; #ENR#[584]if (drawleft == 2)
                           5118 ;--- end asm ---
   34EA E6 E8 15      [ 5] 5119 	ldb	21,s	;, D.3676
   34ED C1 02         [ 2] 5120 	cmpb	#2	;cmpqi:	;,
   34EF 10 27 03 39   [ 6] 5121 	lbeq	L404	;
   34F3 C1 03         [ 2] 5122 	cmpb	#3	;cmpqi:	;,
   34F5 10 27 03 57   [ 6] 5123 	lbeq	L405	;
   34F9                    5124 L175:
                           5125 ;----- asm -----
                           5126 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5127 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5128 ;--- end asm ---
   34F9 E6 E8 17      [ 5] 5129 	ldb	23,s	;, iftmp.69
   34FC C1 0A         [ 2] 5130 	cmpb	#10	;cmpqi:	;,
   34FE 10 26 F5 46   [ 6] 5131 	lbne	L172	;
   3502                    5132 L286:
   3502 BD 52 D1      [ 8] 5133 	jsr	_drawUnkown_noZero
   3505 16 F5 40      [ 5] 5134 	lbra	L172	;
   3508                    5135 L373:
                           5136 ;----- asm -----
                           5137 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5138 	; #ENR#[583]drawupwall();
                           5139 ;--- end asm ---
   3508 BD 52 7B      [ 8] 5140 	jsr	_drawUpWall
                           5141 ;----- asm -----
                           5142 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5143 	; #ENR#[584]if (drawleft == 2)
                           5144 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5145 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5146 ;--- end asm ---
   350B 16 F8 4D      [ 5] 5147 	lbra	L252	;
   350E                    5148 L376:
                           5149 ;----- asm -----
                           5150 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5151 	; #ENR#[583]drawupwall();
                           5152 ;--- end asm ---
   350E BD 52 7B      [ 8] 5153 	jsr	_drawUpWall
                           5154 ;----- asm -----
                           5155 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5156 	; #ENR#[584]if (drawleft == 2)
                           5157 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5158 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5159 ;--- end asm ---
   3511 16 F8 95      [ 5] 5160 	lbra	L258	;
   3514                    5161 L355:
                           5162 ;----- asm -----
                           5163 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5164 	; #ENR#[583]drawupwall();
                           5165 ;--- end asm ---
   3514 BD 52 7B      [ 8] 5166 	jsr	_drawUpWall
                           5167 ;----- asm -----
                           5168 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5169 	; #ENR#[584]if (drawleft == 2)
                           5170 ;--- end asm ---
   3517 E6 E8 1E      [ 5] 5171 	ldb	30,s	;, iftmp.76
   351A C1 02         [ 2] 5172 	cmpb	#2	;cmpqi:	;,
   351C 10 27 02 D0   [ 6] 5173 	lbeq	L406	;
   3520 C1 03         [ 2] 5174 	cmpb	#3	;cmpqi:	;,
   3522 10 27 03 42   [ 6] 5175 	lbeq	L407	;
   3526                    5176 L215:
                           5177 ;----- asm -----
                           5178 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5179 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5180 ;--- end asm ---
   3526 E6 E8 1F      [ 5] 5181 	ldb	31,s	;, iftmp.77
   3529 C1 0A         [ 2] 5182 	cmpb	#10	;cmpqi:	;,
   352B 10 26 F6 83   [ 6] 5183 	lbne	L212	;
   352F                    5184 L290:
   352F BD 52 D1      [ 8] 5185 	jsr	_drawUnkown_noZero
   3532 16 F6 7D      [ 5] 5186 	lbra	L212	;
   3535                    5187 L362:
                           5188 ;----- asm -----
                           5189 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5190 	; #ENR#[583]drawupwall();
                           5191 ;--- end asm ---
   3535 BD 52 7B      [ 8] 5192 	jsr	_drawUpWall
                           5193 ;----- asm -----
                           5194 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5195 	; #ENR#[584]if (drawleft == 2)
                           5196 ;--- end asm ---
   3538 E6 E8 20      [ 5] 5197 	ldb	32,s	;, iftmp.79
   353B C1 02         [ 2] 5198 	cmpb	#2	;cmpqi:	;,
   353D 10 27 03 03   [ 6] 5199 	lbeq	L408	;
   3541 C1 03         [ 2] 5200 	cmpb	#3	;cmpqi:	;,
   3543 10 27 03 03   [ 6] 5201 	lbeq	L409	;
   3547                    5202 L233:
                           5203 ;----- asm -----
                           5204 ; 732 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5205 	; #ENR#[588]if (content == 10) drawunkown_nozero();
                           5206 ;--- end asm ---
   3547 E6 E8 22      [ 5] 5207 	ldb	34,s	;, iftmp.81
   354A C1 0A         [ 2] 5208 	cmpb	#10	;cmpqi:	;,
   354C 10 26 F7 1A   [ 6] 5209 	lbne	L230	;
   3550                    5210 L292:
   3550 BD 52 D1      [ 8] 5211 	jsr	_drawUnkown_noZero
   3553 16 F7 14      [ 5] 5212 	lbra	L230	;
   3556                    5213 L320:
                           5214 ;----- asm -----
                           5215 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5216 	; #ENR#[574]drawupdoor();
                           5217 ;--- end asm ---
   3556 BD 52 89      [ 8] 5218 	jsr	_drawUpDoor
                           5219 ;----- asm -----
                           5220 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5221 	; #ENR#[575]if (drawleft == 2)
                           5222 ;--- end asm ---
   3559 E6 6C         [ 5] 5223 	ldb	12,s	;, D.3639
   355B C1 02         [ 2] 5224 	cmpb	#2	;cmpqi:	;,
   355D 10 27 02 47   [ 6] 5225 	lbeq	L410	;
   3561 C1 03         [ 2] 5226 	cmpb	#3	;cmpqi:	;,
   3563 10 27 02 AD   [ 6] 5227 	lbeq	L411	;
   3567                    5228 L127:
                           5229 ;----- asm -----
                           5230 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5231 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5232 ;--- end asm ---
   3567 E6 6E         [ 5] 5233 	ldb	14,s	;, iftmp.61
   3569 C1 0A         [ 2] 5234 	cmpb	#10	;cmpqi:	;,
   356B 10 26 F3 00   [ 6] 5235 	lbne	L128	;
   356F 16 FE C2      [ 5] 5236 	lbra	L282	;
   3572                    5237 L308:
                           5238 ;----- asm -----
                           5239 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5240 	; #ENR#[574]drawupdoor();
                           5241 ;--- end asm ---
   3572 BD 52 89      [ 8] 5242 	jsr	_drawUpDoor
                           5243 ;----- asm -----
                           5244 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5245 	; #ENR#[575]if (drawleft == 2)
                           5246 ;--- end asm ---
   3575 E6 63         [ 5] 5247 	ldb	3,s	;, iftmp.52
   3577 C1 02         [ 2] 5248 	cmpb	#2	;cmpqi:	;,
   3579 10 27 02 31   [ 6] 5249 	lbeq	L412	;
   357D C1 03         [ 2] 5250 	cmpb	#3	;cmpqi:	;,
   357F 10 27 02 97   [ 6] 5251 	lbeq	L413	;
   3583                    5252 L95:
                           5253 ;----- asm -----
                           5254 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5255 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5256 ;--- end asm ---
   3583 E6 67         [ 5] 5257 	ldb	7,s	;, iftmp.54
   3585 C1 0A         [ 2] 5258 	cmpb	#10	;cmpqi:	;,
   3587 10 26 F1 D6   [ 6] 5259 	lbne	L96	;
   358B 16 FE F6      [ 5] 5260 	lbra	L278	;
   358E                    5261 L348:
                           5262 ;----- asm -----
                           5263 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5264 	; #ENR#[574]drawupdoor();
                           5265 ;--- end asm ---
   358E BD 52 89      [ 8] 5266 	jsr	_drawUpDoor
                           5267 ;----- asm -----
                           5268 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5269 	; #ENR#[575]if (drawleft == 2)
                           5270 ;--- end asm ---
   3591 E6 E8 19      [ 5] 5271 	ldb	25,s	;, iftmp.72
   3594 C1 02         [ 2] 5272 	cmpb	#2	;cmpqi:	;,
   3596 10 27 02 20   [ 6] 5273 	lbeq	L414	;
   359A C1 03         [ 2] 5274 	cmpb	#3	;cmpqi:	;,
   359C 10 27 02 62   [ 6] 5275 	lbeq	L415	;
   35A0                    5276 L197:
                           5277 ;----- asm -----
                           5278 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5279 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5280 ;--- end asm ---
   35A0 E6 E8 1C      [ 5] 5281 	ldb	28,s	;, iftmp.74
   35A3 C1 0A         [ 2] 5282 	cmpb	#10	;cmpqi:	;,
   35A5 10 26 F5 87   [ 6] 5283 	lbne	L198	;
   35A9 16 FE F9      [ 5] 5284 	lbra	L288	;
   35AC                    5285 L326:
                           5286 ;----- asm -----
                           5287 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5288 	; #ENR#[594]drawleftdoor();
                           5289 ;--- end asm ---
   35AC BD 52 AD      [ 8] 5290 	jsr	_drawLeftDoor
                           5291 ;----- asm -----
                           5292 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5293 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5294 ;--- end asm ---
   35AF 16 F3 12      [ 5] 5295 	lbra	L138	;
   35B2                    5296 L314:
                           5297 ;----- asm -----
                           5298 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5299 	; #ENR#[574]drawupdoor();
                           5300 ;--- end asm ---
   35B2 BD 52 89      [ 8] 5301 	jsr	_drawUpDoor
                           5302 ;----- asm -----
                           5303 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5304 	; #ENR#[575]if (drawleft == 2)
                           5305 ;--- end asm ---
   35B5 E6 68         [ 5] 5306 	ldb	8,s	;, iftmp.56
   35B7 C1 02         [ 2] 5307 	cmpb	#2	;cmpqi:	;,
   35B9 10 27 02 0F   [ 6] 5308 	lbeq	L416	;
   35BD C1 03         [ 2] 5309 	cmpb	#3	;cmpqi:	;,
   35BF 10 27 02 21   [ 6] 5310 	lbeq	L417	;
   35C3                    5311 L109:
                           5312 ;----- asm -----
                           5313 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5314 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5315 ;--- end asm ---
   35C3 E6 6A         [ 5] 5316 	ldb	10,s	;, iftmp.58
   35C5 C1 0A         [ 2] 5317 	cmpb	#10	;cmpqi:	;,
   35C7 10 26 F2 18   [ 6] 5318 	lbne	L110	;
   35CB 16 FE 8B      [ 5] 5319 	lbra	L280	;
   35CE                    5320 L329:
                           5321 ;----- asm -----
                           5322 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5323 	; #ENR#[574]drawupdoor();
                           5324 ;--- end asm ---
   35CE BD 52 89      [ 8] 5325 	jsr	_drawUpDoor
                           5326 ;----- asm -----
                           5327 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5328 	; #ENR#[575]if (drawleft == 2)
                           5329 ;--- end asm ---
   35D1 E6 E8 11      [ 5] 5330 	ldb	17,s	;, iftmp.64
   35D4 C1 02         [ 2] 5331 	cmpb	#2	;cmpqi:	;,
   35D6 10 27 01 EC   [ 6] 5332 	lbeq	L418	;
   35DA C1 03         [ 2] 5333 	cmpb	#3	;cmpqi:	;,
   35DC 10 27 02 2E   [ 6] 5334 	lbeq	L419	;
   35E0                    5335 L147:
                           5336 ;----- asm -----
                           5337 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5338 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5339 ;--- end asm ---
   35E0 E6 E8 13      [ 5] 5340 	ldb	19,s	;, iftmp.66
   35E3 C1 0A         [ 2] 5341 	cmpb	#10	;cmpqi:	;,
   35E5 10 26 F3 64   [ 6] 5342 	lbne	L148	;
   35E9 16 FE DA      [ 5] 5343 	lbra	L284	;
   35EC                    5344 L334:
                           5345 ;----- asm -----
                           5346 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5347 	; #ENR#[574]drawupdoor();
                           5348 ;--- end asm ---
   35EC BD 52 89      [ 8] 5349 	jsr	_drawUpDoor
                           5350 ;----- asm -----
                           5351 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5352 	; #ENR#[575]if (drawleft == 2)
                           5353 ;--- end asm ---
   35EF E6 E8 14      [ 5] 5354 	ldb	20,s	;, D.3674
   35F2 C1 02         [ 2] 5355 	cmpb	#2	;cmpqi:	;,
   35F4 10 27 01 C8   [ 6] 5356 	lbeq	L420	;
   35F8 C1 03         [ 2] 5357 	cmpb	#3	;cmpqi:	;,
   35FA 10 27 02 0A   [ 6] 5358 	lbeq	L421	;
   35FE                    5359 L157:
                           5360 ;----- asm -----
                           5361 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5362 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5363 ;--- end asm ---
   35FE 16 F3 B5      [ 5] 5364 	lbra	L158	;
   3601                    5365 L372:
                           5366 ;----- asm -----
                           5367 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5368 	; #ENR#[574]drawupdoor();
                           5369 ;--- end asm ---
   3601 BD 52 89      [ 8] 5370 	jsr	_drawUpDoor
                           5371 ;----- asm -----
                           5372 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5373 	; #ENR#[575]if (drawleft == 2)
                           5374 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5375 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5376 ;--- end asm ---
   3604 16 F7 54      [ 5] 5377 	lbra	L252	;
   3607                    5378 L370:
                           5379 ;----- asm -----
                           5380 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5381 	; #ENR#[574]drawupdoor();
                           5382 ;--- end asm ---
   3607 BD 52 89      [ 8] 5383 	jsr	_drawUpDoor
                           5384 ;----- asm -----
                           5385 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5386 	; #ENR#[575]if (drawleft == 2)
                           5387 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5388 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5389 ;--- end asm ---
   360A 16 F7 00      [ 5] 5390 	lbra	L246	;
   360D                    5391 L354:
                           5392 ;----- asm -----
                           5393 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5394 	; #ENR#[574]drawupdoor();
                           5395 ;--- end asm ---
   360D BD 52 89      [ 8] 5396 	jsr	_drawUpDoor
                           5397 ;----- asm -----
                           5398 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5399 	; #ENR#[575]if (drawleft == 2)
                           5400 ;--- end asm ---
   3610 E6 E8 1E      [ 5] 5401 	ldb	30,s	;, iftmp.76
   3613 C1 02         [ 2] 5402 	cmpb	#2	;cmpqi:	;,
   3615 10 27 01 B9   [ 6] 5403 	lbeq	L422	;
   3619 C1 03         [ 2] 5404 	cmpb	#3	;cmpqi:	;,
   361B 10 27 01 CB   [ 6] 5405 	lbeq	L423	;
   361F                    5406 L211:
                           5407 ;----- asm -----
                           5408 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5409 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5410 ;--- end asm ---
   361F E6 E8 1F      [ 5] 5411 	ldb	31,s	;, iftmp.77
   3622 C1 0A         [ 2] 5412 	cmpb	#10	;cmpqi:	;,
   3624 10 26 F5 8A   [ 6] 5413 	lbne	L212	;
   3628 16 FF 04      [ 5] 5414 	lbra	L290	;
   362B                    5415 L367:
                           5416 ;----- asm -----
                           5417 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5418 	; #ENR#[594]drawleftdoor();
                           5419 ;--- end asm ---
   362B BD 52 AD      [ 8] 5420 	jsr	_drawLeftDoor
                           5421 ;----- asm -----
                           5422 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5423 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5424 ;--- end asm ---
   362E 16 F6 8A      [ 5] 5425 	lbra	L240	;
   3631                    5426 L375:
                           5427 ;----- asm -----
                           5428 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5429 	; #ENR#[574]drawupdoor();
                           5430 ;--- end asm ---
   3631 BD 52 89      [ 8] 5431 	jsr	_drawUpDoor
                           5432 ;----- asm -----
                           5433 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5434 	; #ENR#[575]if (drawleft == 2)
                           5435 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5436 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5437 ;--- end asm ---
   3634 16 F7 72      [ 5] 5438 	lbra	L258	;
   3637                    5439 L361:
                           5440 ;----- asm -----
                           5441 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5442 	; #ENR#[574]drawupdoor();
                           5443 ;--- end asm ---
   3637 BD 52 89      [ 8] 5444 	jsr	_drawUpDoor
                           5445 ;----- asm -----
                           5446 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5447 	; #ENR#[575]if (drawleft == 2)
                           5448 ;--- end asm ---
   363A E6 E8 20      [ 5] 5449 	ldb	32,s	;, iftmp.79
   363D C1 02         [ 2] 5450 	cmpb	#2	;cmpqi:	;,
   363F 10 27 01 95   [ 6] 5451 	lbeq	L424	;
   3643 C1 03         [ 2] 5452 	cmpb	#3	;cmpqi:	;,
   3645 10 27 01 95   [ 6] 5453 	lbeq	L425	;
   3649                    5454 L229:
                           5455 ;----- asm -----
                           5456 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5457 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5458 ;--- end asm ---
   3649 E6 E8 22      [ 5] 5459 	ldb	34,s	;, iftmp.81
   364C C1 0A         [ 2] 5460 	cmpb	#10	;cmpqi:	;,
   364E 10 26 F6 18   [ 6] 5461 	lbne	L230	;
   3652 16 FE FB      [ 5] 5462 	lbra	L292	;
   3655                    5463 L344:
                           5464 ;----- asm -----
                           5465 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5466 	; #ENR#[594]drawleftdoor();
                           5467 ;--- end asm ---
   3655 BD 52 AD      [ 8] 5468 	jsr	_drawLeftDoor
                           5469 ;----- asm -----
                           5470 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5471 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5472 ;--- end asm ---
   3658 16 F4 3E      [ 5] 5473 	lbra	L182	;
   365B                    5474 L339:
                           5475 ;----- asm -----
                           5476 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5477 	; #ENR#[574]drawupdoor();
                           5478 ;--- end asm ---
   365B BD 52 89      [ 8] 5479 	jsr	_drawUpDoor
                           5480 ;----- asm -----
                           5481 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5482 	; #ENR#[575]if (drawleft == 2)
                           5483 ;--- end asm ---
   365E E6 E8 15      [ 5] 5484 	ldb	21,s	;, D.3676
   3661 C1 02         [ 2] 5485 	cmpb	#2	;cmpqi:	;,
   3663 10 27 01 4D   [ 6] 5486 	lbeq	L426	;
   3667 C1 03         [ 2] 5487 	cmpb	#3	;cmpqi:	;,
   3669 10 27 01 8F   [ 6] 5488 	lbeq	L427	;
   366D                    5489 L171:
                           5490 ;----- asm -----
                           5491 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5492 	; #ENR#[579]if (content == 10) drawunkown_nozero();
                           5493 ;--- end asm ---
   366D E6 E8 17      [ 5] 5494 	ldb	23,s	;, iftmp.69
   3670 C1 0A         [ 2] 5495 	cmpb	#10	;cmpqi:	;,
   3672 10 26 F3 D2   [ 6] 5496 	lbne	L172	;
   3676 16 FE 89      [ 5] 5497 	lbra	L286	;
   3679                    5498 L302:
                           5499 ;----- asm -----
                           5500 ; 869 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5501 	; #ENR#[684]sfx_pointer_1 = (long unsigned int) (&death_data);
                           5502 ;--- end asm ---
   3679 8E 1E CB      [ 3] 5503 	ldx	#_death_data	;,
   367C BF CA BB      [ 6] 5504 	stx	_sfx_pointer_1	;, sfx_pointer_1
   367F 16 F0 06      [ 5] 5505 	lbra	L73	;
   3682                    5506 L350:
                           5507 ;----- asm -----
                           5508 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5509 	; #ENR#[594]drawleftdoor();
                           5510 ;--- end asm ---
   3682 BD 52 AD      [ 8] 5511 	jsr	_drawLeftDoor
                           5512 ;----- asm -----
                           5513 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5514 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5515 ;--- end asm ---
   3685 E6 E8 1C      [ 5] 5516 	ldb	28,s	;, iftmp.74
   3688 C1 0A         [ 2] 5517 	cmpb	#10	;cmpqi:	;,
   368A 10 26 F4 A2   [ 6] 5518 	lbne	L198	;
   368E 16 FE 14      [ 5] 5519 	lbra	L288	;
   3691                    5520 L356:
                           5521 ;----- asm -----
                           5522 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5523 	; #ENR#[594]drawleftdoor();
                           5524 ;--- end asm ---
   3691 BD 52 AD      [ 8] 5525 	jsr	_drawLeftDoor
                           5526 ;----- asm -----
                           5527 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5528 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5529 ;--- end asm ---
   3694 E6 E8 1F      [ 5] 5530 	ldb	31,s	;, iftmp.77
   3697 C1 0A         [ 2] 5531 	cmpb	#10	;cmpqi:	;,
   3699 10 26 F5 15   [ 6] 5532 	lbne	L212	;
   369D 16 FE 8F      [ 5] 5533 	lbra	L290	;
   36A0                    5534 L363:
                           5535 ;----- asm -----
                           5536 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5537 	; #ENR#[594]drawleftdoor();
                           5538 ;--- end asm ---
   36A0 BD 52 AD      [ 8] 5539 	jsr	_drawLeftDoor
                           5540 ;----- asm -----
                           5541 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5542 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5543 ;--- end asm ---
   36A3 E6 E8 22      [ 5] 5544 	ldb	34,s	;, iftmp.81
   36A6 C1 0A         [ 2] 5545 	cmpb	#10	;cmpqi:	;,
   36A8 10 26 F5 BE   [ 6] 5546 	lbne	L230	;
   36AC 16 FE A1      [ 5] 5547 	lbra	L292	;
   36AF                    5548 L310:
                           5549 ;----- asm -----
                           5550 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5551 	; #ENR#[594]drawleftdoor();
                           5552 ;--- end asm ---
   36AF BD 52 AD      [ 8] 5553 	jsr	_drawLeftDoor
                           5554 ;----- asm -----
                           5555 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5556 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5557 ;--- end asm ---
   36B2 E6 67         [ 5] 5558 	ldb	7,s	;, iftmp.54
   36B4 C1 0A         [ 2] 5559 	cmpb	#10	;cmpqi:	;,
   36B6 10 26 F0 A7   [ 6] 5560 	lbne	L96	;
   36BA 16 FD C7      [ 5] 5561 	lbra	L278	;
   36BD                    5562 L316:
                           5563 ;----- asm -----
                           5564 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5565 	; #ENR#[594]drawleftdoor();
                           5566 ;--- end asm ---
   36BD BD 52 AD      [ 8] 5567 	jsr	_drawLeftDoor
                           5568 ;----- asm -----
                           5569 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5570 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5571 ;--- end asm ---
   36C0 E6 6A         [ 5] 5572 	ldb	10,s	;, iftmp.58
   36C2 C1 0A         [ 2] 5573 	cmpb	#10	;cmpqi:	;,
   36C4 10 26 F1 1B   [ 6] 5574 	lbne	L110	;
   36C8 16 FD 8E      [ 5] 5575 	lbra	L280	;
   36CB                    5576 L322:
                           5577 ;----- asm -----
                           5578 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5579 	; #ENR#[594]drawleftdoor();
                           5580 ;--- end asm ---
   36CB BD 52 AD      [ 8] 5581 	jsr	_drawLeftDoor
                           5582 ;----- asm -----
                           5583 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5584 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5585 ;--- end asm ---
   36CE E6 6E         [ 5] 5586 	ldb	14,s	;, iftmp.61
   36D0 C1 0A         [ 2] 5587 	cmpb	#10	;cmpqi:	;,
   36D2 10 26 F1 99   [ 6] 5588 	lbne	L128	;
   36D6 16 FD 5B      [ 5] 5589 	lbra	L282	;
   36D9                    5590 L331:
                           5591 ;----- asm -----
                           5592 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5593 	; #ENR#[594]drawleftdoor();
                           5594 ;--- end asm ---
   36D9 BD 52 AD      [ 8] 5595 	jsr	_drawLeftDoor
                           5596 ;----- asm -----
                           5597 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5598 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5599 ;--- end asm ---
   36DC E6 E8 13      [ 5] 5600 	ldb	19,s	;, iftmp.66
   36DF C1 0A         [ 2] 5601 	cmpb	#10	;cmpqi:	;,
   36E1 10 26 F2 68   [ 6] 5602 	lbne	L148	;
   36E5 16 FD DE      [ 5] 5603 	lbra	L284	;
   36E8                    5604 L336:
                           5605 ;----- asm -----
                           5606 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5607 	; #ENR#[594]drawleftdoor();
                           5608 ;--- end asm ---
   36E8 BD 52 AD      [ 8] 5609 	jsr	_drawLeftDoor
                           5610 ;----- asm -----
                           5611 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5612 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5613 ;--- end asm ---
   36EB 16 F2 C8      [ 5] 5614 	lbra	L158	;
   36EE                    5615 L341:
                           5616 ;----- asm -----
                           5617 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5618 	; #ENR#[594]drawleftdoor();
                           5619 ;--- end asm ---
   36EE BD 52 AD      [ 8] 5620 	jsr	_drawLeftDoor
                           5621 ;----- asm -----
                           5622 ; 742 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5623 	; #ENR#[595]if (content == 10) drawunkown_nozero();
                           5624 ;--- end asm ---
   36F1 E6 E8 17      [ 5] 5625 	ldb	23,s	;, iftmp.69
   36F4 C1 0A         [ 2] 5626 	cmpb	#10	;cmpqi:	;,
   36F6 10 26 F3 4E   [ 6] 5627 	lbne	L172	;
   36FA 16 FE 05      [ 5] 5628 	lbra	L286	;
   36FD                    5629 L342:
                           5630 ;----- asm -----
                           5631 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5632 	; #ENR#[599]drawleftwall();
                           5633 ;--- end asm ---
   36FD BD 52 97      [ 8] 5634 	jsr	_drawLeftWall
                           5635 ;----- asm -----
                           5636 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5637 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5638 ;--- end asm ---
   3700 E6 E8 17      [ 5] 5639 	ldb	23,s	;, iftmp.69
   3703 C1 0A         [ 2] 5640 	cmpb	#10	;cmpqi:	;,
   3705 10 26 F3 3F   [ 6] 5641 	lbne	L172	;
   3709 16 FD F6      [ 5] 5642 	lbra	L286	;
   370C                    5643 L332:
                           5644 ;----- asm -----
                           5645 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5646 	; #ENR#[599]drawleftwall();
                           5647 ;--- end asm ---
   370C BD 52 97      [ 8] 5648 	jsr	_drawLeftWall
                           5649 ;----- asm -----
                           5650 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5651 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5652 ;--- end asm ---
   370F E6 E8 13      [ 5] 5653 	ldb	19,s	;, iftmp.66
   3712 C1 0A         [ 2] 5654 	cmpb	#10	;cmpqi:	;,
   3714 10 26 F2 35   [ 6] 5655 	lbne	L148	;
   3718 16 FD AB      [ 5] 5656 	lbra	L284	;
   371B                    5657 L337:
                           5658 ;----- asm -----
                           5659 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5660 	; #ENR#[599]drawleftwall();
                           5661 ;--- end asm ---
   371B BD 52 97      [ 8] 5662 	jsr	_drawLeftWall
                           5663 ;----- asm -----
                           5664 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5665 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5666 ;--- end asm ---
   371E 16 F2 95      [ 5] 5667 	lbra	L158	;
   3721                    5668 L357:
                           5669 ;----- asm -----
                           5670 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5671 	; #ENR#[599]drawleftwall();
                           5672 ;--- end asm ---
   3721 BD 52 97      [ 8] 5673 	jsr	_drawLeftWall
                           5674 ;----- asm -----
                           5675 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5676 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5677 ;--- end asm ---
   3724 E6 E8 1F      [ 5] 5678 	ldb	31,s	;, iftmp.77
   3727 C1 0A         [ 2] 5679 	cmpb	#10	;cmpqi:	;,
   3729 10 26 F4 85   [ 6] 5680 	lbne	L212	;
   372D 16 FD FF      [ 5] 5681 	lbra	L290	;
   3730                    5682 L323:
                           5683 ;----- asm -----
                           5684 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5685 	; #ENR#[599]drawleftwall();
                           5686 ;--- end asm ---
   3730 BD 52 97      [ 8] 5687 	jsr	_drawLeftWall
                           5688 ;----- asm -----
                           5689 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5690 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5691 ;--- end asm ---
   3733 E6 6E         [ 5] 5692 	ldb	14,s	;, iftmp.61
   3735 C1 0A         [ 2] 5693 	cmpb	#10	;cmpqi:	;,
   3737 10 26 F1 34   [ 6] 5694 	lbne	L128	;
   373B 16 FC F6      [ 5] 5695 	lbra	L282	;
   373E                    5696 L364:
                           5697 ;----- asm -----
                           5698 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5699 	; #ENR#[599]drawleftwall();
                           5700 ;--- end asm ---
   373E BD 52 97      [ 8] 5701 	jsr	_drawLeftWall
                           5702 ;----- asm -----
                           5703 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5704 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5705 ;--- end asm ---
   3741 E6 E8 22      [ 5] 5706 	ldb	34,s	;, iftmp.81
   3744 C1 0A         [ 2] 5707 	cmpb	#10	;cmpqi:	;,
   3746 10 26 F5 20   [ 6] 5708 	lbne	L230	;
   374A 16 FE 03      [ 5] 5709 	lbra	L292	;
   374D                    5710 L311:
                           5711 ;----- asm -----
                           5712 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5713 	; #ENR#[599]drawleftwall();
                           5714 ;--- end asm ---
   374D BD 52 97      [ 8] 5715 	jsr	_drawLeftWall
                           5716 ;----- asm -----
                           5717 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5718 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5719 ;--- end asm ---
   3750 E6 67         [ 5] 5720 	ldb	7,s	;, iftmp.54
   3752 C1 0A         [ 2] 5721 	cmpb	#10	;cmpqi:	;,
   3754 10 26 F0 09   [ 6] 5722 	lbne	L96	;
   3758 16 FD 29      [ 5] 5723 	lbra	L278	;
   375B                    5724 L317:
                           5725 ;----- asm -----
                           5726 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5727 	; #ENR#[599]drawleftwall();
                           5728 ;--- end asm ---
   375B BD 52 97      [ 8] 5729 	jsr	_drawLeftWall
                           5730 ;----- asm -----
                           5731 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5732 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5733 ;--- end asm ---
   375E E6 6A         [ 5] 5734 	ldb	10,s	;, iftmp.58
   3760 C1 0A         [ 2] 5735 	cmpb	#10	;cmpqi:	;,
   3762 10 26 F0 7D   [ 6] 5736 	lbne	L110	;
   3766 16 FC F0      [ 5] 5737 	lbra	L280	;
   3769                    5738 L351:
                           5739 ;----- asm -----
                           5740 ; 747 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5741 	; #ENR#[599]drawleftwall();
                           5742 ;--- end asm ---
   3769 BD 52 97      [ 8] 5743 	jsr	_drawLeftWall
                           5744 ;----- asm -----
                           5745 ; 749 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5746 	; #ENR#[600]if (content == 10) drawunkown_nozero();
                           5747 ;--- end asm ---
   376C E6 E8 1C      [ 5] 5748 	ldb	28,s	;, iftmp.74
   376F C1 0A         [ 2] 5749 	cmpb	#10	;cmpqi:	;,
   3771 10 26 F3 BB   [ 6] 5750 	lbne	L198	;
   3775 16 FD 2D      [ 5] 5751 	lbra	L288	;
   3778                    5752 L358:
   3778 BD 52 C3      [ 8] 5753 	jsr	_drawUnkown
   377B 16 F4 34      [ 5] 5754 	lbra	L212	;
   377E                    5755 L324:
   377E BD 52 C3      [ 8] 5756 	jsr	_drawUnkown
   3781 16 F0 EB      [ 5] 5757 	lbra	L128	;
   3784                    5758 L365:
   3784 BD 52 C3      [ 8] 5759 	jsr	_drawUnkown
   3787 16 F4 E0      [ 5] 5760 	lbra	L230	;
   378A                    5761 L312:
   378A BD 52 C3      [ 8] 5762 	jsr	_drawUnkown
   378D 16 EF D1      [ 5] 5763 	lbra	L96	;
   3790                    5764 L333:
   3790 BD 52 C3      [ 8] 5765 	jsr	_drawUnkown
   3793 16 F1 B7      [ 5] 5766 	lbra	L148	;
   3796                    5767 L343:
   3796 BD 52 C3      [ 8] 5768 	jsr	_drawUnkown
   3799 16 F2 AC      [ 5] 5769 	lbra	L172	;
   379C                    5770 L318:
   379C BD 52 C3      [ 8] 5771 	jsr	_drawUnkown
   379F 16 F0 41      [ 5] 5772 	lbra	L110	;
   37A2                    5773 L352:
   37A2 BD 52 C3      [ 8] 5774 	jsr	_drawUnkown
   37A5 16 F3 88      [ 5] 5775 	lbra	L198	;
   37A8                    5776 L410:
   37A8 BD 52 BB      [ 8] 5777 	jsr	_drawLeftDoor_noZero
   37AB 16 FD B9      [ 5] 5778 	lbra	L127	;
   37AE                    5779 L412:
   37AE BD 52 BB      [ 8] 5780 	jsr	_drawLeftDoor_noZero
   37B1 16 FD CF      [ 5] 5781 	lbra	L95	;
   37B4                    5782 L426:
   37B4 BD 52 BB      [ 8] 5783 	jsr	_drawLeftDoor_noZero
   37B7 16 FE B3      [ 5] 5784 	lbra	L171	;
   37BA                    5785 L414:
   37BA BD 52 BB      [ 8] 5786 	jsr	_drawLeftDoor_noZero
   37BD 16 FD E0      [ 5] 5787 	lbra	L197	;
   37C0                    5788 L420:
   37C0 BD 52 BB      [ 8] 5789 	jsr	_drawLeftDoor_noZero
   37C3 16 FE 38      [ 5] 5790 	lbra	L157	;
   37C6                    5791 L418:
   37C6 BD 52 BB      [ 8] 5792 	jsr	_drawLeftDoor_noZero
   37C9 16 FE 14      [ 5] 5793 	lbra	L147	;
   37CC                    5794 L416:
   37CC BD 52 BB      [ 8] 5795 	jsr	_drawLeftDoor_noZero
   37CF 16 FD F1      [ 5] 5796 	lbra	L109	;
   37D2                    5797 L422:
   37D2 BD 52 BB      [ 8] 5798 	jsr	_drawLeftDoor_noZero
   37D5 16 FE 47      [ 5] 5799 	lbra	L211	;
   37D8                    5800 L424:
   37D8 BD 52 BB      [ 8] 5801 	jsr	_drawLeftDoor_noZero
   37DB 16 FE 6B      [ 5] 5802 	lbra	L229	;
   37DE                    5803 L425:
   37DE BD 52 A5      [ 8] 5804 	jsr	_drawLeftWall_noZero
   37E1 16 FE 65      [ 5] 5805 	lbra	L229	;
   37E4                    5806 L417:
   37E4 BD 52 A5      [ 8] 5807 	jsr	_drawLeftWall_noZero
   37E7 16 FD D9      [ 5] 5808 	lbra	L109	;
   37EA                    5809 L423:
   37EA BD 52 A5      [ 8] 5810 	jsr	_drawLeftWall_noZero
   37ED 16 FE 2F      [ 5] 5811 	lbra	L211	;
   37F0                    5812 L406:
   37F0 BD 52 BB      [ 8] 5813 	jsr	_drawLeftDoor_noZero
   37F3 16 FD 30      [ 5] 5814 	lbra	L215	;
   37F6                    5815 L394:
   37F6 BD 52 BB      [ 8] 5816 	jsr	_drawLeftDoor_noZero
   37F9 16 FC 55      [ 5] 5817 	lbra	L113	;
   37FC                    5818 L427:
   37FC BD 52 A5      [ 8] 5819 	jsr	_drawLeftWall_noZero
   37FF 16 FE 6B      [ 5] 5820 	lbra	L171	;
   3802                    5821 L415:
   3802 BD 52 A5      [ 8] 5822 	jsr	_drawLeftWall_noZero
   3805 16 FD 98      [ 5] 5823 	lbra	L197	;
   3808                    5824 L421:
   3808 BD 52 A5      [ 8] 5825 	jsr	_drawLeftWall_noZero
   380B 16 FD F0      [ 5] 5826 	lbra	L157	;
   380E                    5827 L419:
   380E BD 52 A5      [ 8] 5828 	jsr	_drawLeftWall_noZero
   3811 16 FD CC      [ 5] 5829 	lbra	L147	;
   3814                    5830 L411:
   3814 BD 52 A5      [ 8] 5831 	jsr	_drawLeftWall_noZero
   3817 16 FD 4D      [ 5] 5832 	lbra	L127	;
   381A                    5833 L413:
   381A BD 52 A5      [ 8] 5834 	jsr	_drawLeftWall_noZero
   381D 16 FD 63      [ 5] 5835 	lbra	L95	;
   3820                    5836 L398:
   3820 BD 52 BB      [ 8] 5837 	jsr	_drawLeftDoor_noZero
   3823 16 FC 76      [ 5] 5838 	lbra	L201	;
   3826                    5839 L392:
   3826 BD 52 BB      [ 8] 5840 	jsr	_drawLeftDoor_noZero
   3829 16 FC 00      [ 5] 5841 	lbra	L131	;
   382C                    5842 L404:
   382C BD 52 BB      [ 8] 5843 	jsr	_drawLeftDoor_noZero
   382F 16 FC C7      [ 5] 5844 	lbra	L175	;
   3832                    5845 L400:
   3832 BD 52 BB      [ 8] 5846 	jsr	_drawLeftDoor_noZero
   3835 16 FC 85      [ 5] 5847 	lbra	L151	;
   3838                    5848 L396:
   3838 BD 52 BB      [ 8] 5849 	jsr	_drawLeftDoor_noZero
   383B 16 FC 3E      [ 5] 5850 	lbra	L99	;
   383E                    5851 L402:
   383E BD 52 BB      [ 8] 5852 	jsr	_drawLeftDoor_noZero
   3841 16 FC 9A      [ 5] 5853 	lbra	L161	;
   3844                    5854 L408:
   3844 BD 52 BB      [ 8] 5855 	jsr	_drawLeftDoor_noZero
   3847 16 FC FD      [ 5] 5856 	lbra	L233	;
   384A                    5857 L409:
   384A BD 52 A5      [ 8] 5858 	jsr	_drawLeftWall_noZero
   384D 16 FC F7      [ 5] 5859 	lbra	L233	;
   3850                    5860 L405:
   3850 BD 52 A5      [ 8] 5861 	jsr	_drawLeftWall_noZero
   3853 16 FC A3      [ 5] 5862 	lbra	L175	;
   3856                    5863 L401:
   3856 BD 52 A5      [ 8] 5864 	jsr	_drawLeftWall_noZero
   3859 16 FC 61      [ 5] 5865 	lbra	L151	;
   385C                    5866 L397:
   385C BD 52 A5      [ 8] 5867 	jsr	_drawLeftWall_noZero
   385F 16 FC 1A      [ 5] 5868 	lbra	L99	;
   3862                    5869 L403:
   3862 BD 52 A5      [ 8] 5870 	jsr	_drawLeftWall_noZero
   3865 16 FC 76      [ 5] 5871 	lbra	L161	;
   3868                    5872 L407:
   3868 BD 52 A5      [ 8] 5873 	jsr	_drawLeftWall_noZero
   386B 16 FC B8      [ 5] 5874 	lbra	L215	;
   386E                    5875 L395:
   386E BD 52 A5      [ 8] 5876 	jsr	_drawLeftWall_noZero
   3871 16 FB DD      [ 5] 5877 	lbra	L113	;
   3874                    5878 L399:
   3874 BD 52 A5      [ 8] 5879 	jsr	_drawLeftWall_noZero
   3877 16 FC 22      [ 5] 5880 	lbra	L201	;
   387A                    5881 L393:
   387A BD 52 A5      [ 8] 5882 	jsr	_drawLeftWall_noZero
   387D 16 FB AC      [ 5] 5883 	lbra	L131	;
   3880                    5884 LC37:
   3880 59 4F 55 20 48 41  5885 	.ascii	"YOU HAVE % IN THE SAFE\0"
        56 45 20 25 20 49
        4E 20 54 48 45 20
        53 41 46 45 00
   3897                    5886 LC38:
   3897 54 48 45 59 20 43  5887 	.ascii	"THEY CASH IN YOUR GOLD\0"
        41 53 48 20 49 4E
        20 59 4F 55 52 20
        47 4F 4C 44 00
   38AE                    5888 LC39:
   38AE 43 48 41 52 41 43  5889 	.ascii	"CHARACTER SAVED (TEMPORARILY)\0"
        54 45 52 20 53 41
        56 45 44 20 28 54
        45 4D 50 4F 52 41
        52 49 4C 59 29 00
   38CC                    5890 LC40:
   38CC 59 4F 55 20 53 50  5891 	.ascii	"YOU SPEND THE NIGHT\0"
        45 4E 44 20 54 48
        45 20 4E 49 47 48
        54 00
   38E0                    5892 LC41:
   38E0 59 4F 55 20 46 45  5893 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   38F0                    5894 LC42:
   38F0 3C 34 3E 20 54 4F  5895 	.ascii	"<4> TO RETURN TO THE DUNGEON\0"
        20 52 45 54 55 52
        4E 20 54 4F 20 54
        48 45 20 44 55 4E
        47 45 4F 4E 00
   390D                    5896 LC43:
   390D 3C 31 3E 20 54 4F  5897 	.ascii	"<1> TO SAVE CHARACTER\0"
        20 53 41 56 45 20
        43 48 41 52 41 43
        54 45 52 00
                           5898 	.globl	_displayInn
   3923                    5899 _displayInn:
   3923 34 60         [ 7] 5900 	pshs	y,u	;
   3925 32 76         [ 5] 5901 	leas	-10,s	;,,
                           5902 ;----- asm -----
                           5903 ; 1034 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5904 	; #ENR#[796]saveseed();
                           5905 ;--- end asm ---
   3927 BD 49 E3      [ 8] 5906 	jsr	_saveSeed
                           5907 ;----- asm -----
                           5908 ; 1036 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5909 	; #ENR#[797]unsigned long int m1 = cy;
                           5910 ;--- end asm ---
   392A F6 C9 39      [ 5] 5911 	ldb	_cy	;, cy
   392D 4F            [ 2] 5912 	clra		;zero_extendqihi: R:b -> R:d	;,
   392E 1F 01         [ 6] 5913 	tfr	d,x	;, m1
                           5914 ;----- asm -----
                           5915 ; 1038 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5916 	; #ENR#[798]setrandseed((unsigned int) (m1*m1));
                           5917 ;--- end asm ---
   3930 34 06         [ 7] 5918 	pshs	d	; m1
   3932 BD 7F 98      [ 8] 5919 	jsr	_mulhi3
   3935 32 62         [ 5] 5920 	leas	2,s	;,,
   3937 1F 10         [ 6] 5921 	tfr	x,d	;, tmp55
   3939 F7 CA 63      [ 5] 5922 	stb	__x	;movlsbqihi: R:d -> __x	; _x, tmp55
   393C C6 02         [ 2] 5923 	ldb	#2	;,
   393E BD 00 83      [ 8] 5924 	jsr	_subBank1
                           5925 ;----- asm -----
                           5926 ; 1041 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5927 	; #ENR#[800]const char * s1;
                           5928 ; 1043 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5929 	; #ENR#[801]const char * s2;
                           5930 ; 1045 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5931 	; #ENR#[802]const char * s3;
                           5932 ; 1047 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5933 	; #ENR#[803]s1 = in1[randmax(10)];
                           5934 ;--- end asm ---
   3941 C6 0A         [ 2] 5935 	ldb	#10	;,
   3943 BD 40 D7      [ 8] 5936 	jsr	_RandMax
   3946 4F            [ 2] 5937 	clra		;zero_extendqihi: R:b -> R:d	; D.3796, D.3796
   3947 58            [ 2] 5938 	aslb	;
   3948 49            [ 2] 5939 	rola	;
   3949 1F 01         [ 6] 5940 	tfr	d,x	; D.3796, tmp58
   394B AE 89 1C E0   [ 9] 5941 	ldx	_in1,x	;, in1
   394F AF 62         [ 6] 5942 	stx	2,s	;, s1
                           5943 ;----- asm -----
                           5944 ; 1050 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5945 	; #ENR#[805]setrandseed((unsigned int) (cx+cy));
                           5946 ;--- end asm ---
   3951 F6 C9 39      [ 5] 5947 	ldb	_cy	;, cy
   3954 FB C9 38      [ 5] 5948 	addb	_cx	;, cx
   3957 F7 CA 63      [ 5] 5949 	stb	__x	;, _x
   395A C6 02         [ 2] 5950 	ldb	#2	;,
   395C BD 00 83      [ 8] 5951 	jsr	_subBank1
                           5952 ;----- asm -----
                           5953 ; 1052 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5954 	; #ENR#[806]s2 = in2[randmax(10)];
                           5955 ;--- end asm ---
   395F C6 0A         [ 2] 5956 	ldb	#10	;,
   3961 BD 40 D7      [ 8] 5957 	jsr	_RandMax
   3964 4F            [ 2] 5958 	clra		;zero_extendqihi: R:b -> R:d	; D.3799, D.3799
   3965 58            [ 2] 5959 	aslb	;
   3966 49            [ 2] 5960 	rola	;
   3967 1F 01         [ 6] 5961 	tfr	d,x	; D.3799, tmp62
   3969 10 AE 89 1D 35[10] 5962 	ldy	_in2,x	; s2, in2
                           5963 ;----- asm -----
                           5964 ; 1055 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5965 	; #ENR#[808]setrandseed((unsigned int) (cx*3+cy*7));
                           5966 ;--- end asm ---
   396E F6 C9 39      [ 5] 5967 	ldb	_cy	;, cy
   3971 86 07         [ 2] 5968 	lda	#7	;umulqihi3	;
   3973 3D            [11] 5969 	mul
   3974 1F 01         [ 6] 5970 	tfr	d,x	;, tmp64
   3976 F6 C9 38      [ 5] 5971 	ldb	_cx	;, cx
   3979 58            [ 2] 5972 	aslb	;
   397A FB C9 38      [ 5] 5973 	addb	_cx	;, cx
   397D E7 E4         [ 4] 5974 	stb	,s	;,
   397F 1F 10         [ 6] 5975 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp64,
   3981 E7 61         [ 5] 5976 	stb	1,s	;,
   3983 E6 E4         [ 4] 5977 	ldb	,s	;,
   3985 EB 61         [ 5] 5978 	addb	1,s	;,
   3987 F7 CA 63      [ 5] 5979 	stb	__x	;, _x
   398A C6 02         [ 2] 5980 	ldb	#2	;,
   398C BD 00 83      [ 8] 5981 	jsr	_subBank1
                           5982 ;----- asm -----
                           5983 ; 1057 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5984 	; #ENR#[809]s3 = in3[randmax(10)];
                           5985 ;--- end asm ---
   398F C6 0A         [ 2] 5986 	ldb	#10	;,
   3991 BD 40 D7      [ 8] 5987 	jsr	_RandMax
   3994 4F            [ 2] 5988 	clra		;zero_extendqihi: R:b -> R:d	; D.3803, D.3803
   3995 58            [ 2] 5989 	aslb	;
   3996 49            [ 2] 5990 	rola	;
   3997 1F 01         [ 6] 5991 	tfr	d,x	; D.3803, tmp72
   3999 EE 89 1D 91   [ 9] 5992 	ldu	_in3,x	; s3, in3
                           5993 ;----- asm -----
                           5994 ; 1059 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5995 	; #ENR#[810]restoreseed();
                           5996 ;--- end asm ---
   399D BD 49 FC      [ 8] 5997 	jsr	_restoreSeed
                           5998 ;----- asm -----
                           5999 ; 1063 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6000 	; #ENR#[813]if ((cx == 25) && (cy==13))
                           6001 ;--- end asm ---
   39A0 F6 C9 38      [ 5] 6002 	ldb	_cx	; cx.535, cx
   39A3 C1 19         [ 2] 6003 	cmpb	#25	;cmpqi:	; cx.535,
   39A5 10 27 02 BA   [ 6] 6004 	lbeq	L455	;
   39A9 C1 1A         [ 2] 6005 	cmpb	#26	;cmpqi:	; cx.535,
   39AB 27 19         [ 3] 6006 	beq	L456	;
   39AD C1 1B         [ 2] 6007 	cmpb	#27	;cmpqi:	; cx.535,
   39AF 26 1E         [ 3] 6008 	bne	L430	;
   39B1 F6 C9 39      [ 5] 6009 	ldb	_cy	;, cy
   39B4 C1 0D         [ 2] 6010 	cmpb	#13	;cmpqi:	;,
   39B6 26 17         [ 3] 6011 	bne	L430	;
                           6012 ;----- asm -----
                           6013 ; 1087 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6014 	; #ENR#[830]s1 = in1[1];
                           6015 ;--- end asm ---
   39B8 8E 1C A5      [ 3] 6016 	ldx	#LC1	;,
   39BB AF 62         [ 6] 6017 	stx	2,s	;, s1
                           6018 ;----- asm -----
                           6019 ; 1089 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6020 	; #ENR#[831]s2 = in2[0];
                           6021 ;--- end asm ---
   39BD 10 8E 1C F4   [ 4] 6022 	ldy	#LC10	; s2,
                           6023 ;----- asm -----
                           6024 ; 1091 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6025 	; #ENR#[832]s3 = in3[2];
                           6026 ;--- end asm ---
   39C1 CE 1D 5B      [ 3] 6027 	ldu	#LC22	; s3,
   39C4 20 09         [ 3] 6028 	bra	L430	;
   39C6                    6029 L456:
   39C6 F6 C9 39      [ 5] 6030 	ldb	_cy	;, cy
   39C9 C1 0D         [ 2] 6031 	cmpb	#13	;cmpqi:	;,
   39CB 10 27 03 2D   [ 6] 6032 	lbeq	L457	;
   39CF                    6033 L430:
                           6034 ;----- asm -----
                           6035 ; 1095 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6036 	; #ENR#[835]ex = ex + gd;
                           6037 ;--- end asm ---
   39CF FC C9 32      [ 6] 6038 	ldd	_ex+2	;, ex
   39D2 F3 C9 3D      [ 7] 6039 	addd	_gd+2	;, gd
   39D5 FD C9 32      [ 6] 6040 	std	_ex+2	;, ex
   39D8 FC C9 30      [ 6] 6041 	ldd	_ex	;, ex
   39DB F9 C9 3C      [ 5] 6042 	adcb	_gd+1	; gd
   39DE B9 C9 3B      [ 5] 6043 	adca	_gd	; gd
   39E1 FD C9 30      [ 6] 6044 	std	_ex	;, ex
                           6045 ;----- asm -----
                           6046 ; 1097 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6047 	; #ENR#[836]tg = tg + gd;
                           6048 ;--- end asm ---
   39E4 FC C9 41      [ 6] 6049 	ldd	_tg+2	;, tg
   39E7 F3 C9 3D      [ 7] 6050 	addd	_gd+2	;, gd
   39EA FD C9 41      [ 6] 6051 	std	_tg+2	;, tg
   39ED FC C9 3F      [ 6] 6052 	ldd	_tg	;, tg
   39F0 F9 C9 3C      [ 5] 6053 	adcb	_gd+1	; gd
   39F3 B9 C9 3B      [ 5] 6054 	adca	_gd	; gd
   39F6 FD C9 3F      [ 6] 6055 	std	_tg	;, tg
                           6056 ;----- asm -----
                           6057 ; 1099 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6058 	; #ENR#[837]gd = 0;
                           6059 ;--- end asm ---
   39F9 CC 00 00      [ 3] 6060 	ldd	#0	;,
   39FC FD C9 3B      [ 6] 6061 	std	_gd	;, gd
   39FF FD C9 3D      [ 6] 6062 	std	_gd+2	;, gd
                           6063 ;----- asm -----
                           6064 ; 1101 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6065 	; #ENR#[838]ch = hp;
                           6066 ;--- end asm ---
   3A02 BE C9 2B      [ 6] 6067 	ldx	_hp	;, hp
   3A05 BF C9 2D      [ 6] 6068 	stx	_ch	;, ch
                           6069 ;----- asm -----
                           6070 ; 1103 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6071 	; #ENR#[839]cs = su;
                           6072 ;--- end asm ---
   3A08 FC C9 34      [ 6] 6073 	ldd	_su	;, su
   3A0B FD C9 36      [ 6] 6074 	std	_cs	;, cs
                           6075 ;----- asm -----
                           6076 ; 1109 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6077 	; #ENR#[844]for (int i=0; i<11;i++)
                           6078 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6079 	; #ENR#[846]sf[i] = 0;
                           6080 ;--- end asm ---
   3A0E 7F C9 53      [ 7] 6081 	clr	_sf	; sf
                           6082 ;----- asm -----
                           6083 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6084 	; #ENR#[846]sf[i] = 0;
                           6085 ;--- end asm ---
   3A11 7F C9 54      [ 7] 6086 	clr	_sf+1	; sf
                           6087 ;----- asm -----
                           6088 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6089 	; #ENR#[846]sf[i] = 0;
                           6090 ;--- end asm ---
   3A14 7F C9 55      [ 7] 6091 	clr	_sf+2	; sf
                           6092 ;----- asm -----
                           6093 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6094 	; #ENR#[846]sf[i] = 0;
                           6095 ;--- end asm ---
   3A17 7F C9 56      [ 7] 6096 	clr	_sf+3	; sf
                           6097 ;----- asm -----
                           6098 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6099 	; #ENR#[846]sf[i] = 0;
                           6100 ;--- end asm ---
   3A1A 7F C9 57      [ 7] 6101 	clr	_sf+4	; sf
                           6102 ;----- asm -----
                           6103 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6104 	; #ENR#[846]sf[i] = 0;
                           6105 ;--- end asm ---
   3A1D 7F C9 58      [ 7] 6106 	clr	_sf+5	; sf
                           6107 ;----- asm -----
                           6108 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6109 	; #ENR#[846]sf[i] = 0;
                           6110 ;--- end asm ---
   3A20 7F C9 59      [ 7] 6111 	clr	_sf+6	; sf
                           6112 ;----- asm -----
                           6113 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6114 	; #ENR#[846]sf[i] = 0;
                           6115 ;--- end asm ---
   3A23 7F C9 5A      [ 7] 6116 	clr	_sf+7	; sf
                           6117 ;----- asm -----
                           6118 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6119 	; #ENR#[846]sf[i] = 0;
                           6120 ;--- end asm ---
   3A26 7F C9 5B      [ 7] 6121 	clr	_sf+8	; sf
                           6122 ;----- asm -----
                           6123 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6124 	; #ENR#[846]sf[i] = 0;
                           6125 ;--- end asm ---
   3A29 7F C9 5C      [ 7] 6126 	clr	_sf+9	; sf
                           6127 ;----- asm -----
                           6128 ; 1112 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6129 	; #ENR#[846]sf[i] = 0;
                           6130 ;--- end asm ---
   3A2C 7F C9 5D      [ 7] 6131 	clr	_sf+10	; sf
                           6132 ;----- asm -----
                           6133 ; 1117 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6134 	; #ENR#[850]_fll_s(, ((unsigned long long int) tg));
                           6135 ;--- end asm ---
   3A2F 32 7C         [ 5] 6136 	leas	-4,s	;,,
   3A31 BE C9 3F      [ 6] 6137 	ldx	_tg	;, tg
   3A34 AF E4         [ 5] 6138 	stx	,s	;,
   3A36 FC C9 41      [ 6] 6139 	ldd	_tg+2	;, tg
   3A39 ED 62         [ 6] 6140 	std	2,s	;,
   3A3B 8E 38 80      [ 3] 6141 	ldx	#LC37	;,
   3A3E BD 49 6A      [ 8] 6142 	jsr	__fll_s
                           6143 ;----- asm -----
                           6144 ; 1120 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6145 	; #ENR#[852]int stage = 0;
                           6146 ; 1122 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6147 	; #ENR#[853]int counter = 100;
                           6148 ; 1124 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6149 	; #ENR#[854]int innx=0;
                           6150 ; 1126 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6151 	; #ENR#[855]int direction = 0;
                           6152 ; 1128 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6153 	; #ENR#[856]int b=0;
                           6154 ; 1130 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6155 	; #ENR#[857]clearmessage();
                           6156 ;--- end asm ---
   3A41 7F C9 C2      [ 7] 6157 	clr	_msgLine	; msgLine
                           6158 ;----- asm -----
                           6159 ; 1132 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6160 	; #ENR#[858]printmessage();
                           6161 ;--- end asm ---
   3A44 8E 38 97      [ 3] 6162 	ldx	#LC38	;,
   3A47 BD 3D 27      [ 8] 6163 	jsr	_printMessage
                           6164 ;----- asm -----
                           6165 ; 1134 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6166 	; #ENR#[859]printmessage( stringbuffer40);
                           6167 ;--- end asm ---
   3A4A 8E C8 BF      [ 3] 6168 	ldx	#_stringBuffer40	;,
   3A4D BD 3D 27      [ 8] 6169 	jsr	_printMessage
                           6170 ;----- asm -----
                           6171 ; 1136 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6172 	; #ENR#[860]while (1)
                           6173 ;--- end asm ---
   3A50 6F 68         [ 7] 6174 	clr	8,s	; stage
   3A52 C6 64         [ 2] 6175 	ldb	#100	;,
   3A54 E7 69         [ 5] 6176 	stb	9,s	;, counter
   3A56 6F 6A         [ 7] 6177 	clr	10,s	; innx
   3A58 6F 6B         [ 7] 6178 	clr	11,s	; direction
   3A5A 6F 6C         [ 7] 6179 	clr	12,s	; b
   3A5C 32 64         [ 5] 6180 	leas	4,s	;,,
   3A5E                    6181 L454:
                           6182 ;----- asm -----
                           6183 ; 1139 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6184 	; #ENR#[862]wait_recal();
                           6185 ;--- end asm ---
   3A5E BD F1 92      [ 8] 6186 	jsr	___Wait_Recal
                           6187 ;----- asm -----
                           6188 ; 1141 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6189 	; #ENR#[863]do_sound();
                           6190 ;--- end asm ---
   3A61 BD 7F 7E      [ 8] 6191 	jsr	__Do_Sound
                           6192 ;----- asm -----
                           6193 ; 1143 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6194 	; #ENR#[864]dp_via_t1_cnt_lo  = 0x80;
                           6195 ;--- end asm ---
   3A64 C6 80         [ 2] 6196 	ldb	#-128	;,
   3A66 D7 04         [ 4] 6197 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           6198 ;----- asm -----
                           6199 ; 1145 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6200 	; #ENR#[865]intensity_a(0x4f);
                           6201 ;--- end asm ---
   3A68 C6 4F         [ 2] 6202 	ldb	#79	;,
   3A6A BD 7F 68      [ 8] 6203 	jsr	__Intensity_a
                           6204 ;----- asm -----
                           6205 ; 1147 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6206 	; #ENR#[866]check_buttons();
                           6207 ;--- end asm ---
   3A6D BD F1 BA      [ 8] 6208 	jsr	___Read_Btns
                           6209 ;----- asm -----
                           6210 ; 1150 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6211 	; #ENR#[868]displaymessages();
                           6212 ;--- end asm ---
   3A70 5F            [ 2] 6213 	clrb	;
   3A71 BD 00 83      [ 8] 6214 	jsr	_subBank1
                           6215 ;----- asm -----
                           6216 ; 1154 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6217 	; #ENR#[871]vec_text_height = -3;
                           6218 ;--- end asm ---
   3A74 C6 FD         [ 2] 6219 	ldb	#-3	;,
   3A76 F7 C8 2A      [ 5] 6220 	stb	_Vec_Text_Height	;, Vec_Text_Height
                           6221 ;----- asm -----
                           6222 ; 1156 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6223 	; #ENR#[872]vec_text_width = 0x30;
                           6224 ;--- end asm ---
   3A79 C6 30         [ 2] 6225 	ldb	#48	;,
   3A7B F7 C8 2B      [ 5] 6226 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           6227 ;----- asm -----
                           6228 ; 1159 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6229 	; #ENR#[874]print_str_d_org(0x0,-0x30, s1);
                           6230 ;--- end asm ---
   3A7E 6F E2         [ 8] 6231 	clr	,-s	;
   3A80 AE 63         [ 6] 6232 	ldx	3,s	;, s1
   3A82 C6 D0         [ 2] 6233 	ldb	#-48	;,
   3A84 BD 7F 85      [ 8] 6234 	jsr	__Print_Str_d
                           6235 ;----- asm -----
                           6236 ; 1161 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6237 	; #ENR#[875]print_str_d_org(-0x10,-0x10, s2);
                           6238 ;--- end asm ---
   3A87 C6 F0         [ 2] 6239 	ldb	#-16	;,
   3A89 E7 E2         [ 6] 6240 	stb	,-s	;,
   3A8B 30 A4         [ 4] 6241 	leax	,y	;, s2
   3A8D BD 7F 85      [ 8] 6242 	jsr	__Print_Str_d
                           6243 ;----- asm -----
                           6244 ; 1163 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6245 	; #ENR#[876]print_str_d_org(-0x20,0x10, s3);
                           6246 ;--- end asm ---
   3A90 C6 E0         [ 2] 6247 	ldb	#-32	;,
   3A92 E7 E2         [ 6] 6248 	stb	,-s	;,
   3A94 30 C4         [ 4] 6249 	leax	,u	;, s3
   3A96 C6 10         [ 2] 6250 	ldb	#16	;,
   3A98 BD 7F 85      [ 8] 6251 	jsr	__Print_Str_d
                           6252 ;----- asm -----
                           6253 ; 1166 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6254 	; #ENR#[878]reset0ref();
                           6255 ;--- end asm ---
   3A9B C6 CC         [ 2] 6256 	ldb	#-52	;,
   3A9D D7 0C         [ 4] 6257 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           6258 ;----- asm -----
                           6259 ; 1168 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6260 	; #ENR#[879]moveto_d(0x30,-0x00);
                           6261 ;--- end asm ---
   3A9F C6 30         [ 2] 6262 	ldb	#48	;,
   3AA1 E7 E2         [ 6] 6263 	stb	,-s	;,
   3AA3 5F            [ 2] 6264 	clrb	;
   3AA4 BD 7F B7      [ 8] 6265 	jsr	__Moveto_d
                           6266 ;----- asm -----
                           6267 ; 1170 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6268 	; #ENR#[880]dp_via_t1_cnt_lo  = 0x09;
                           6269 ;--- end asm ---
   3AA7 C6 09         [ 2] 6270 	ldb	#9	;,
   3AA9 D7 04         [ 4] 6271 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           6272 ;----- asm -----
                           6273 ; 1172 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6274 	; #ENR#[881]drawhome();
                           6275 ;--- end asm ---
   3AAB BD 53 97      [ 8] 6276 	jsr	_drawHome
                           6277 ;----- asm -----
                           6278 ; 1174 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6279 	; #ENR#[882]__ass(::: ,,,);
                           6280 ; 1175 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3AAE 4F            [ 2] 6281 	clra
   3AAF 97 0A         [ 4] 6282 	sta *0x0a
                           6283 ; 1176 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6284 	; #ENR#[883]if (direction)
                           6285 ;--- end asm ---
   3AB1 32 64         [ 5] 6286 	leas	4,s	;,,
   3AB3 6D 67         [ 7] 6287 	tst	7,s	; direction
   3AB5 10 27 00 8C   [ 6] 6288 	lbeq	L433	;
                           6289 ;----- asm -----
                           6290 ; 1179 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6291 	; #ENR#[885]innx++;
                           6292 ;--- end asm ---
   3AB9 6C 66         [ 7] 6293 	inc	6,s	; innx
                           6294 ;----- asm -----
                           6295 ; 1181 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6296 	; #ENR#[886]if (innx==0x40) direction=0;
                           6297 ;--- end asm ---
   3ABB E6 66         [ 5] 6298 	ldb	6,s	;, innx
   3ABD C1 40         [ 2] 6299 	cmpb	#64	;cmpqi:	;,
   3ABF 10 27 00 A8   [ 6] 6300 	lbeq	L458	;
   3AC3                    6301 L434:
                           6302 ;----- asm -----
                           6303 ; 1191 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6304 	; #ENR#[893]dp_via_t1_cnt_lo  = 0x80;
                           6305 ;--- end asm ---
   3AC3 C6 80         [ 2] 6306 	ldb	#-128	;,
   3AC5 D7 04         [ 4] 6307 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           6308 ;----- asm -----
                           6309 ; 1193 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6310 	; #ENR#[894]moveto_d(0x70,innx);
                           6311 ;--- end asm ---
   3AC7 C6 70         [ 2] 6312 	ldb	#112	;,
   3AC9 E7 E2         [ 6] 6313 	stb	,-s	;,
   3ACB E6 67         [ 5] 6314 	ldb	7,s	;, innx
   3ACD BD 7F B7      [ 8] 6315 	jsr	__Moveto_d
                           6316 ;----- asm -----
                           6317 ; 1195 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6318 	; #ENR#[895]dp_via_t1_cnt_lo  = 0x09;
                           6319 ;--- end asm ---
   3AD0 C6 09         [ 2] 6320 	ldb	#9	;,
   3AD2 D7 04         [ 4] 6321 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           6322 ;----- asm -----
                           6323 ; 1198 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6324 	; #ENR#[897]intensity_a(0x3f);
                           6325 ;--- end asm ---
   3AD4 CB 36         [ 2] 6326 	addb	#54	;,
   3AD6 BD 7F 68      [ 8] 6327 	jsr	__Intensity_a
                           6328 ;----- asm -----
                           6329 ; 1200 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6330 	; #ENR#[898]drawinn();
                           6331 ;--- end asm ---
   3AD9 BD 53 9F      [ 8] 6332 	jsr	_drawInn
                           6333 ;----- asm -----
                           6334 ; 1202 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6335 	; #ENR#[899]intensity_a(0x4f);
                           6336 ;--- end asm ---
   3ADC C6 4F         [ 2] 6337 	ldb	#79	;,
   3ADE BD 7F 68      [ 8] 6338 	jsr	__Intensity_a
                           6339 ;----- asm -----
                           6340 ; 1205 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6341 	; #ENR#[901]__ass(::: ,,,);
                           6342 ; 1206 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3AE1 4F            [ 2] 6343 	clra
   3AE2 97 0A         [ 4] 6344 	sta *0x0a
                           6345 ; 1207 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6346 	; #ENR#[902]dp_via_t1_cnt_lo  = 0x80;
                           6347 ;--- end asm ---
   3AE4 C6 80         [ 2] 6348 	ldb	#-128	;,
   3AE6 D7 04         [ 4] 6349 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           6350 ;----- asm -----
                           6351 ; 1210 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6352 	; #ENR#[904]if (buttons_pressed()) b=1;
                           6353 ;--- end asm ---
   3AE8 F6 C8 11      [ 5] 6354 	ldb	_Vec_Buttons	;, Vec_Buttons
   3AEB E7 6A         [ 5] 6355 	stb	10,s	;, D.4118
   3AED 32 61         [ 5] 6356 	leas	1,s	;,,
   3AEF 5D            [ 2] 6357 	tstb	;
   3AF0 27 04         [ 3] 6358 	beq	L435	;
   3AF2 C6 01         [ 2] 6359 	ldb	#1	;,
   3AF4 E7 68         [ 5] 6360 	stb	8,s	;, b
   3AF6                    6361 L435:
                           6362 ;----- asm -----
                           6363 ; 1212 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6364 	; #ENR#[905]if (stage == 0)
                           6365 ;--- end asm ---
   3AF6 6D 64         [ 7] 6366 	tst	4,s	; stage
   3AF8 27 0C         [ 3] 6367 	beq	L436	;
   3AFA E6 64         [ 5] 6368 	ldb	4,s	;, stage
   3AFC C1 01         [ 2] 6369 	cmpb	#1	;cmpqi:	;,
   3AFE 27 06         [ 3] 6370 	beq	L436	;
   3B00 C1 02         [ 2] 6371 	cmpb	#2	;cmpqi:	;,
   3B02 10 27 00 6A   [ 6] 6372 	lbeq	L459	;
   3B06                    6373 L436:
                           6374 ;----- asm -----
                           6375 ; 1277 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6376 	; #ENR#[949]if ((b==1) && (!buttons_pressed()))
                           6377 ;--- end asm ---
   3B06 E6 68         [ 5] 6378 	ldb	8,s	;, b
   3B08 C1 01         [ 2] 6379 	cmpb	#1	;cmpqi:	;,
   3B0A 10 27 00 48   [ 6] 6380 	lbeq	L460	;
   3B0E                    6381 L446:
                           6382 ;----- asm -----
                           6383 ; 1286 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6384 	; #ENR#[955]if (counter!=-1) counter--;
                           6385 ;--- end asm ---
   3B0E E6 65         [ 5] 6386 	ldb	5,s	;, counter
   3B10 C1 FF         [ 2] 6387 	cmpb	#-1	;cmpqi:	;,
   3B12 27 03         [ 3] 6388 	beq	L448	;
   3B14 5A            [ 2] 6389 	decb	;
   3B15 E7 65         [ 5] 6390 	stb	5,s	;, counter
   3B17                    6391 L448:
                           6392 ;----- asm -----
                           6393 ; 1289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6394 	; #ENR#[957]if (counter == 0)
                           6395 ;--- end asm ---
   3B17 6D 65         [ 7] 6396 	tst	5,s	; counter
   3B19 10 26 FF 41   [ 6] 6397 	lbne	L454	;
                           6398 ;----- asm -----
                           6399 ; 1292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6400 	; #ENR#[959]stage++;
                           6401 ;--- end asm ---
   3B1D 6C 64         [ 7] 6402 	inc	4,s	; stage
                           6403 ;----- asm -----
                           6404 ; 1294 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6405 	; #ENR#[960]counter = 100;
                           6406 ; 1296 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6407 	; #ENR#[961]clearmessage();
                           6408 ;--- end asm ---
   3B1F 7F C9 C2      [ 7] 6409 	clr	_msgLine	; msgLine
                           6410 ;----- asm -----
                           6411 ; 1298 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6412 	; #ENR#[962]if (stage == 1)
                           6413 ;--- end asm ---
   3B22 E6 64         [ 5] 6414 	ldb	4,s	;, stage
   3B24 C1 01         [ 2] 6415 	cmpb	#1	;cmpqi:	;,
   3B26 10 27 00 59   [ 6] 6416 	lbeq	L461	;
   3B2A C6 64         [ 2] 6417 	ldb	#100	;,
   3B2C E7 65         [ 5] 6418 	stb	5,s	;, counter
   3B2E E6 64         [ 5] 6419 	ldb	4,s	;, stage
   3B30 C1 02         [ 2] 6420 	cmpb	#2	;cmpqi:	;,
   3B32 10 26 FF 28   [ 6] 6421 	lbne	L454	;
                           6422 ;----- asm -----
                           6423 ; 1308 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6424 	; #ENR#[969]printmessage();
                           6425 ;--- end asm ---
   3B36 8E 38 F0      [ 3] 6426 	ldx	#LC42	;,
   3B39 BD 3D 27      [ 8] 6427 	jsr	_printMessage
                           6428 ;----- asm -----
                           6429 ; 1310 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6430 	; #ENR#[970]printmessage();
                           6431 ;--- end asm ---
   3B3C 8E 39 0D      [ 3] 6432 	ldx	#LC43	;,
   3B3F BD 3D 27      [ 8] 6433 	jsr	_printMessage
   3B42 16 FF 19      [ 5] 6434 	lbra	L454	;
   3B45                    6435 L433:
                           6436 ;----- asm -----
                           6437 ; 1186 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6438 	; #ENR#[890]innx--;
                           6439 ;--- end asm ---
   3B45 6A 66         [ 7] 6440 	dec	6,s	; innx
                           6441 ;----- asm -----
                           6442 ; 1188 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6443 	; #ENR#[891]if (innx==-0x40) direction=1;
                           6444 ;--- end asm ---
   3B47 E6 66         [ 5] 6445 	ldb	6,s	;, innx
   3B49 C1 C0         [ 2] 6446 	cmpb	#-64	;cmpqi:	;,
   3B4B 10 26 FF 74   [ 6] 6447 	lbne	L434	;
   3B4F C6 01         [ 2] 6448 	ldb	#1	;,
   3B51 E7 67         [ 5] 6449 	stb	7,s	;, direction
   3B53 16 FF 6D      [ 5] 6450 	lbra	L434	;
   3B56                    6451 L460:
   3B56 6D 69         [ 7] 6452 	tst	9,s	; D.4118
   3B58 10 26 FF B2   [ 6] 6453 	lbne	L446	;
                           6454 ;----- asm -----
                           6455 ; 1280 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6456 	; #ENR#[951]b = 0;
                           6457 ; 1282 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6458 	; #ENR#[952]if (stage != 2) counter = 1;
                           6459 ;--- end asm ---
   3B5C E6 64         [ 5] 6460 	ldb	4,s	;, stage
   3B5E C1 02         [ 2] 6461 	cmpb	#2	;cmpqi:	;,
   3B60 27 34         [ 3] 6462 	beq	L447	;
   3B62 E6 68         [ 5] 6463 	ldb	8,s	;, b
   3B64 E7 65         [ 5] 6464 	stb	5,s	;, counter
   3B66 6F 68         [ 7] 6465 	clr	8,s	; b
   3B68 16 FF A3      [ 5] 6466 	lbra	L446	;
   3B6B                    6467 L458:
   3B6B 6F 67         [ 7] 6468 	clr	7,s	; direction
   3B6D 16 FF 53      [ 5] 6469 	lbra	L434	;
   3B70                    6470 L459:
                           6471 ;----- asm -----
                           6472 ; 1227 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6473 	; #ENR#[919]counter = -1;
                           6474 ; 1229 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6475 	; #ENR#[920]if (button_1_4_pressed())
                           6476 ;--- end asm ---
   3B70 C6 08         [ 2] 6477 	ldb	#8	; tmp91,
   3B72 E4 69         [ 5] 6478 	andb	9,s	; tmp91, D.4118
   3B74 26 25         [ 3] 6479 	bne	L462	;
                           6480 ;----- asm -----
                           6481 ; 1235 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6482 	; #ENR#[924]if (button_1_1_pressed())
                           6483 ;--- end asm ---
   3B76 C6 01         [ 2] 6484 	ldb	#1	; tmp92,
   3B78 E4 69         [ 5] 6485 	andb	9,s	; tmp92, D.4118
   3B7A 26 23         [ 3] 6486 	bne	L463	;
   3B7C C6 FF         [ 2] 6487 	ldb	#-1	;,
   3B7E E7 65         [ 5] 6488 	stb	5,s	;, counter
   3B80 16 FF 83      [ 5] 6489 	lbra	L436	;
   3B83                    6490 L461:
                           6491 ;----- asm -----
                           6492 ; 1301 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6493 	; #ENR#[964]printmessage();
                           6494 ;--- end asm ---
   3B83 8E 38 CC      [ 3] 6495 	ldx	#LC40	;,
   3B86 BD 3D 27      [ 8] 6496 	jsr	_printMessage
                           6497 ;----- asm -----
                           6498 ; 1303 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6499 	; #ENR#[965]printmessage();
                           6500 ;--- end asm ---
   3B89 8E 38 E0      [ 3] 6501 	ldx	#LC41	;,
   3B8C BD 3D 27      [ 8] 6502 	jsr	_printMessage
   3B8F C6 64         [ 2] 6503 	ldb	#100	;,
   3B91 E7 65         [ 5] 6504 	stb	5,s	;, counter
   3B93 16 FE C8      [ 5] 6505 	lbra	L454	;
   3B96                    6506 L447:
   3B96 6F 68         [ 7] 6507 	clr	8,s	; b
   3B98 16 FF 73      [ 5] 6508 	lbra	L446	;
   3B9B                    6509 L462:
                           6510 ;----- asm -----
                           6511 ; 1232 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6512 	; #ENR#[922]return;
                           6513 ;--- end asm ---
   3B9B 32 6A         [ 5] 6514 	leas	10,s	;,,
   3B9D 35 E0         [ 8] 6515 	puls	y,u,pc	;
   3B9F                    6516 L463:
                           6517 ;----- asm -----
                           6518 ; 1238 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6519 	; #ENR#[926]#if flash_support == 1
                           6520 ; 1243 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6521 	; #ENR#[929]tmp_hp = hp;
                           6522 ;--- end asm ---
   3B9F BE C9 2B      [ 6] 6523 	ldx	_hp	;, hp
   3BA2 BF C9 08      [ 6] 6524 	stx	_tmp_hp	;, tmp_hp
                           6525 ;----- asm -----
                           6526 ; 1245 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6527 	; #ENR#[930]tmp_lv = lv;
                           6528 ;--- end asm ---
   3BA5 F6 C9 2F      [ 5] 6529 	ldb	_lv	;, lv
   3BA8 F7 C9 0A      [ 5] 6530 	stb	_tmp_lv	;, tmp_lv
                           6531 ;----- asm -----
                           6532 ; 1248 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6533 	; #ENR#[932]tmp_ex = ex;
                           6534 ;--- end asm ---
   3BAB BE C9 30      [ 6] 6535 	ldx	_ex	;, ex
   3BAE BF C9 0B      [ 6] 6536 	stx	_tmp_ex	;, tmp_ex
   3BB1 FC C9 32      [ 6] 6537 	ldd	_ex+2	;, ex
   3BB4 FD C9 0D      [ 6] 6538 	std	_tmp_ex+2	;, tmp_ex
                           6539 ;----- asm -----
                           6540 ; 1250 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6541 	; #ENR#[933]tmp_su = su;
                           6542 ;--- end asm ---
   3BB7 BE C9 34      [ 6] 6543 	ldx	_su	;, su
   3BBA BF C9 0F      [ 6] 6544 	stx	_tmp_su	;, tmp_su
                           6545 ;----- asm -----
                           6546 ; 1253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6547 	; #ENR#[935]tmp_cx = cx;
                           6548 ;--- end asm ---
   3BBD F6 C9 38      [ 5] 6549 	ldb	_cx	;, cx
   3BC0 F7 C9 11      [ 5] 6550 	stb	_tmp_cx	;, tmp_cx
                           6551 ;----- asm -----
                           6552 ; 1255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6553 	; #ENR#[936]tmp_cy = cy;
                           6554 ;--- end asm ---
   3BC3 F6 C9 39      [ 5] 6555 	ldb	_cy	;, cy
   3BC6 F7 C9 12      [ 5] 6556 	stb	_tmp_cy	;, tmp_cy
                           6557 ;----- asm -----
                           6558 ; 1258 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6559 	; #ENR#[938]tmp_tg = tg;
                           6560 ;--- end asm ---
   3BC9 BE C9 3F      [ 6] 6561 	ldx	_tg	;, tg
   3BCC BF C9 13      [ 6] 6562 	stx	_tmp_tg	;, tmp_tg
   3BCF FC C9 41      [ 6] 6563 	ldd	_tg+2	;, tg
   3BD2 FD C9 15      [ 6] 6564 	std	_tmp_tg+2	;, tmp_tg
                           6565 ;----- asm -----
                           6566 ; 1260 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6567 	; #ENR#[939]for (int i=0;i<6;i++) tmp_s[i] = s[i];
                           6568 ;--- end asm ---
   3BD5 8E C9 43      [ 3] 6569 	ldx	#_s	; vect_ps.507,
   3BD8 CC C9 17      [ 3] 6570 	ldd	#_tmp_s	; tmp99,
   3BDB 34 10         [ 6] 6571 	pshs	x	; vect_ps.507
   3BDD AA E0         [ 6] 6572 	ora	,s+	;,
   3BDF EA E0         [ 6] 6573 	orb	,s+	;,
   3BE1 4F            [ 2] 6574 	clra	;andqi(ZERO)	;
   3BE2 C4 01         [ 2] 6575 	andb	#1	;,
   3BE4 10 83 00 00   [ 5] 6576 	cmpd	#0	; tmp100
   3BE8 10 26 00 E9   [ 6] 6577 	lbne	L440	;
   3BEC BE C9 43      [ 6] 6578 	ldx	_s	;,
   3BEF BF C9 17      [ 6] 6579 	stx	_tmp_s	;,
   3BF2 FC C9 45      [ 6] 6580 	ldd	_s+2	;,
   3BF5 FD C9 19      [ 6] 6581 	std	_tmp_s+2	;,
   3BF8 BE C9 47      [ 6] 6582 	ldx	_s+4	;,
   3BFB BF C9 1B      [ 6] 6583 	stx	_tmp_s+4	;,
   3BFE                    6584 L441:
                           6585 ;----- asm -----
                           6586 ; 1262 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6587 	; #ENR#[940]for (int i=0;i<10;i++) tmp_inventory[i] = inventory[i];
                           6588 ;--- end asm ---
   3BFE 8E C9 49      [ 3] 6589 	ldx	#_inventory	; vect_pinventory.479,
   3C01 CC C9 1D      [ 3] 6590 	ldd	#_tmp_inventory	; tmp116,
   3C04 34 10         [ 6] 6591 	pshs	x	; vect_pinventory.479
   3C06 AA E0         [ 6] 6592 	ora	,s+	;,
   3C08 EA E0         [ 6] 6593 	orb	,s+	;,
   3C0A 4F            [ 2] 6594 	clra	;andqi(ZERO)	;
   3C0B C4 01         [ 2] 6595 	andb	#1	;,
   3C0D 10 83 00 00   [ 5] 6596 	cmpd	#0	; tmp117
   3C11 10 26 00 81   [ 6] 6597 	lbne	L442	;
   3C15 BE C9 49      [ 6] 6598 	ldx	_inventory	;,
   3C18 BF C9 1D      [ 6] 6599 	stx	_tmp_inventory	;,
   3C1B FC C9 4B      [ 6] 6600 	ldd	_inventory+2	;,
   3C1E FD C9 1F      [ 6] 6601 	std	_tmp_inventory+2	;,
   3C21 BE C9 4D      [ 6] 6602 	ldx	_inventory+4	;,
   3C24 BF C9 21      [ 6] 6603 	stx	_tmp_inventory+4	;,
   3C27 FC C9 4F      [ 6] 6604 	ldd	_inventory+6	;,
   3C2A FD C9 23      [ 6] 6605 	std	_tmp_inventory+6	;,
   3C2D BE C9 51      [ 6] 6606 	ldx	_inventory+8	;,
   3C30 BF C9 25      [ 6] 6607 	stx	_tmp_inventory+8	;,
   3C33                    6608 L443:
                           6609 ;----- asm -----
                           6610 ; 1264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6611 	; #ENR#[941]for (int i=0;i<4;i++)  tmp_box[i]  = box[i];
                           6612 ;--- end asm ---
   3C33 8E C9 5E      [ 3] 6613 	ldx	#_box	; vect_pbox.451,
   3C36 CC C9 27      [ 3] 6614 	ldd	#_tmp_box	; tmp143,
   3C39 34 10         [ 6] 6615 	pshs	x	; vect_pbox.451
   3C3B AA E0         [ 6] 6616 	ora	,s+	;,
   3C3D EA E0         [ 6] 6617 	orb	,s+	;,
   3C3F 4F            [ 2] 6618 	clra	;andqi(ZERO)	;
   3C40 C4 01         [ 2] 6619 	andb	#1	;,
   3C42 10 83 00 00   [ 5] 6620 	cmpd	#0	; tmp144
   3C46 10 26 00 31   [ 6] 6621 	lbne	L444	;
   3C4A BE C9 5E      [ 6] 6622 	ldx	_box	;,
   3C4D BF C9 27      [ 6] 6623 	stx	_tmp_box	;,
   3C50 FC C9 60      [ 6] 6624 	ldd	_box+2	;,
   3C53 FD C9 29      [ 6] 6625 	std	_tmp_box+2	;,
   3C56                    6626 L445:
                           6627 ;----- asm -----
                           6628 ; 1266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6629 	; #ENR#[942]clearmessage();
                           6630 ;--- end asm ---
   3C56 7F C9 C2      [ 7] 6631 	clr	_msgLine	; msgLine
                           6632 ;----- asm -----
                           6633 ; 1268 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6634 	; #ENR#[943]printmessage();
                           6635 ;--- end asm ---
   3C59 8E 38 AE      [ 3] 6636 	ldx	#LC39	;,
   3C5C BD 3D 27      [ 8] 6637 	jsr	_printMessage
                           6638 ;----- asm -----
                           6639 ; 1270 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6640 	; #ENR#[944]#endif
                           6641 ; 1272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6642 	; #ENR#[945]return;
                           6643 ;--- end asm ---
   3C5F 32 6A         [ 5] 6644 	leas	10,s	;,,
   3C61 35 E0         [ 8] 6645 	puls	y,u,pc	;
   3C63                    6646 L455:
   3C63 F6 C9 39      [ 5] 6647 	ldb	_cy	;, cy
   3C66 C1 0D         [ 2] 6648 	cmpb	#13	;cmpqi:	;,
   3C68 10 26 FD 63   [ 6] 6649 	lbne	L430	;
                           6650 ;----- asm -----
                           6651 ; 1067 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6652 	; #ENR#[816]s1 = in1[5];
                           6653 ;--- end asm ---
   3C6C 8E 1C BE      [ 3] 6654 	ldx	#LC5	;,
   3C6F AF 62         [ 6] 6655 	stx	2,s	;, s1
                           6656 ;----- asm -----
                           6657 ; 1069 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6658 	; #ENR#[817]s2 = in2[8];
                           6659 ;--- end asm ---
   3C71 10 8E 1D 29   [ 4] 6660 	ldy	#LC18	; s2,
                           6661 ;----- asm -----
                           6662 ; 1071 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6663 	; #ENR#[818]s3 = in3[4];
                           6664 ;--- end asm ---
   3C75 CE 1D 69      [ 3] 6665 	ldu	#LC24	; s3,
   3C78 16 FD 54      [ 5] 6666 	lbra	L430	;
   3C7B                    6667 L444:
   3C7B F6 C9 5E      [ 5] 6668 	ldb	_box	;, box
   3C7E F7 C9 27      [ 5] 6669 	stb	_tmp_box	;, tmp_box
   3C81 F6 C9 5F      [ 5] 6670 	ldb	_box+1	;, box
   3C84 F7 C9 28      [ 5] 6671 	stb	_tmp_box+1	;, tmp_box
   3C87 F6 C9 60      [ 5] 6672 	ldb	_box+2	;, box
   3C8A F7 C9 29      [ 5] 6673 	stb	_tmp_box+2	;, tmp_box
   3C8D F6 C9 61      [ 5] 6674 	ldb	_box+3	;, box
   3C90 F7 C9 2A      [ 5] 6675 	stb	_tmp_box+3	;, tmp_box
   3C93 16 FF C0      [ 5] 6676 	lbra	L445	;
   3C96                    6677 L442:
   3C96 F6 C9 49      [ 5] 6678 	ldb	_inventory	;, inventory
   3C99 F7 C9 1D      [ 5] 6679 	stb	_tmp_inventory	;, tmp_inventory
   3C9C F6 C9 4A      [ 5] 6680 	ldb	_inventory+1	;, inventory
   3C9F F7 C9 1E      [ 5] 6681 	stb	_tmp_inventory+1	;, tmp_inventory
   3CA2 F6 C9 4B      [ 5] 6682 	ldb	_inventory+2	;, inventory
   3CA5 F7 C9 1F      [ 5] 6683 	stb	_tmp_inventory+2	;, tmp_inventory
   3CA8 F6 C9 4C      [ 5] 6684 	ldb	_inventory+3	;, inventory
   3CAB F7 C9 20      [ 5] 6685 	stb	_tmp_inventory+3	;, tmp_inventory
   3CAE F6 C9 4D      [ 5] 6686 	ldb	_inventory+4	;, inventory
   3CB1 F7 C9 21      [ 5] 6687 	stb	_tmp_inventory+4	;, tmp_inventory
   3CB4 F6 C9 4E      [ 5] 6688 	ldb	_inventory+5	;, inventory
   3CB7 F7 C9 22      [ 5] 6689 	stb	_tmp_inventory+5	;, tmp_inventory
   3CBA F6 C9 4F      [ 5] 6690 	ldb	_inventory+6	;, inventory
   3CBD F7 C9 23      [ 5] 6691 	stb	_tmp_inventory+6	;, tmp_inventory
   3CC0 F6 C9 50      [ 5] 6692 	ldb	_inventory+7	;, inventory
   3CC3 F7 C9 24      [ 5] 6693 	stb	_tmp_inventory+7	;, tmp_inventory
   3CC6 F6 C9 51      [ 5] 6694 	ldb	_inventory+8	;, inventory
   3CC9 F7 C9 25      [ 5] 6695 	stb	_tmp_inventory+8	;, tmp_inventory
   3CCC F6 C9 52      [ 5] 6696 	ldb	_inventory+9	;, inventory
   3CCF F7 C9 26      [ 5] 6697 	stb	_tmp_inventory+9	;, tmp_inventory
   3CD2 16 FF 5E      [ 5] 6698 	lbra	L443	;
   3CD5                    6699 L440:
   3CD5 F6 C9 43      [ 5] 6700 	ldb	_s	;, s
   3CD8 F7 C9 17      [ 5] 6701 	stb	_tmp_s	;, tmp_s
   3CDB F6 C9 44      [ 5] 6702 	ldb	_s+1	;, s
   3CDE F7 C9 18      [ 5] 6703 	stb	_tmp_s+1	;, tmp_s
   3CE1 F6 C9 45      [ 5] 6704 	ldb	_s+2	;, s
   3CE4 F7 C9 19      [ 5] 6705 	stb	_tmp_s+2	;, tmp_s
   3CE7 F6 C9 46      [ 5] 6706 	ldb	_s+3	;, s
   3CEA F7 C9 1A      [ 5] 6707 	stb	_tmp_s+3	;, tmp_s
   3CED F6 C9 47      [ 5] 6708 	ldb	_s+4	;, s
   3CF0 F7 C9 1B      [ 5] 6709 	stb	_tmp_s+4	;, tmp_s
   3CF3 F6 C9 48      [ 5] 6710 	ldb	_s+5	;, s
   3CF6 F7 C9 1C      [ 5] 6711 	stb	_tmp_s+5	;, tmp_s
   3CF9 16 FF 02      [ 5] 6712 	lbra	L441	;
   3CFC                    6713 L457:
                           6714 ;----- asm -----
                           6715 ; 1077 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6716 	; #ENR#[823]s1 = in1[8];
                           6717 ;--- end asm ---
   3CFC 8E 1C D3      [ 3] 6718 	ldx	#LC8	;,
   3CFF AF 62         [ 6] 6719 	stx	2,s	;, s1
                           6720 ;----- asm -----
                           6721 ; 1079 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6722 	; #ENR#[824]s2 = in2[9];
                           6723 ;--- end asm ---
   3D01 10 8E 1D 30   [ 4] 6724 	ldy	#LC19	; s2,
                           6725 ;----- asm -----
                           6726 ; 1081 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           6727 	; #ENR#[825]s3 = in3[9];
                           6728 ;--- end asm ---
   3D05 CE 1D 86      [ 3] 6729 	ldu	#LC28	; s3,
   3D08 16 FC C4      [ 5] 6730 	lbra	L430	;
                           6731 	.globl	_main
   3D0B                    6732 _main:
   3D0B 5F            [ 2] 6733 	clrb	;
   3D0C 39            [ 5] 6734 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$main$1001        03FC GR  |   3 A$main$1002        03FE GR
  3 A$main$1007        0401 GR  |   3 A$main$1008        0402 GR
  3 A$main$1013        0405 GR  |   3 A$main$1014        0407 GR
  3 A$main$1019        040A GR  |   3 A$main$1020        040C GR
  3 A$main$1025        040E GR  |   3 A$main$1026        0410 GR
  3 A$main$1031        0412 GR  |   3 A$main$1032        0415 GR
  3 A$main$1033        0416 GR  |   3 A$main$1034        0418 GR
  3 A$main$1035        0419 GR  |   3 A$main$1036        041A GR
  3 A$main$1037        041C GR  |   3 A$main$1042        0420 GR
  3 A$main$1043        0421 GR  |   3 A$main$1047        0423 GR
  3 A$main$1048        0425 GR  |   3 A$main$1053        0427 GR
  3 A$main$1054        0429 GR  |   3 A$main$1055        042B GR
  3 A$main$1060        042E GR  |   3 A$main$1061        0430 GR
  3 A$main$1066        0432 GR  |   3 A$main$1067        0434 GR
  3 A$main$1072        0436 GR  |   3 A$main$1077        0439 GR
  3 A$main$1082        043C GR  |   3 A$main$1083        043F GR
  3 A$main$1084        0441 GR  |   3 A$main$1085        0444 GR
  3 A$main$1086        0446 GR  |   3 A$main$1087        0449 GR
  3 A$main$1092        044D GR  |   3 A$main$1093        0450 GR
  3 A$main$1098        0453 GR  |   3 A$main$1103        0456 GR
  3 A$main$1108        0458 GR  |   3 A$main$1109        045B GR
  3 A$main$1114        045E GR  |   3 A$main$1115        0460 GR
  3 A$main$1116        0464 GR  |   3 A$main$1121        0467 GR
  3 A$main$1122        0469 GR  |   3 A$main$1123        046B GR
  3 A$main$1129        046F GR  |   3 A$main$1130        0472 GR
  3 A$main$1131        0475 GR  |   3 A$main$1136        0477 GR
  3 A$main$1137        0479 GR  |   3 A$main$1143        047D GR
  3 A$main$1144        0480 GR  |   3 A$main$1149        0483 GR
  3 A$main$1150        0486 GR  |   3 A$main$1151        0489 GR
  3 A$main$1156        048B GR  |   3 A$main$1157        048D GR
  3 A$main$1163        0491 GR  |   3 A$main$1164        0494 GR
  3 A$main$1169        0497 GR  |   3 A$main$1170        049A GR
  3 A$main$1175        049D GR  |   3 A$main$1176        04A0 GR
  3 A$main$1177        04A3 GR  |   3 A$main$1182        04A5 GR
  3 A$main$1183        04A7 GR  |   3 A$main$1189        04AB GR
  3 A$main$1195        04AE GR  |   3 A$main$1196        04B0 GR
  3 A$main$1201        04B3 GR  |   3 A$main$1206        04B6 GR
  3 A$main$1211        04B9 GR  |   3 A$main$1216        04BC GR
  3 A$main$1217        04BE GR  |   3 A$main$1222        04C1 GR
  3 A$main$1223        04C3 GR  |   3 A$main$1224        04C6 GR
  3 A$main$1225        04C8 GR  |   3 A$main$1228        04CA GR
  3 A$main$1229        04CC GR  |   3 A$main$1230        04CE GR
  3 A$main$1235        04D0 GR  |   3 A$main$1236        04D3 GR
  3 A$main$1237        04D5 GR  |   3 A$main$1238        04D8 GR
  3 A$main$1239        04DA GR  |   3 A$main$1240        04DB GR
  3 A$main$1241        04DD GR  |   3 A$main$1246        04E0 GR
  3 A$main$1247        04E3 GR  |   3 A$main$1248        04E5 GR
  3 A$main$1249        04E8 GR  |   3 A$main$1250        04EA GR
  3 A$main$1251        04ED GR  |   3 A$main$1252        04EE GR
  3 A$main$1253        04F0 GR  |   3 A$main$1258        04F3 GR
  3 A$main$1259        04F6 GR  |   3 A$main$1260        04F8 GR
  3 A$main$1261        04FC GR  |   3 A$main$1262        04FE GR
  3 A$main$1263        0500 GR  |   3 A$main$1264        0502 GR
  3 A$main$1265        0503 GR  |   3 A$main$1266        0505 GR
  3 A$main$1271        0508 GR  |   3 A$main$1272        050B GR
  3 A$main$1273        050D GR  |   3 A$main$1274        0510 GR
  3 A$main$1275        0512 GR  |   3 A$main$1276        0515 GR
  3 A$main$1281        0518 GR  |   3 A$main$1282        051A GR
  3 A$main$1283        051D GR  |   3 A$main$1284        051F GR
  3 A$main$1285        0521 GR  |   3 A$main$1286        0523 GR
  3 A$main$1291        0526 GR  |   3 A$main$1292        0529 GR
  3 A$main$1293        052B GR  |   3 A$main$1294        052E GR
  3 A$main$1295        0530 GR  |   3 A$main$1296        0532 GR
  3 A$main$1297        0533 GR  |   3 A$main$1298        0535 GR
  3 A$main$1303        0538 GR  |   3 A$main$1304        053A GR
  3 A$main$1305        053D GR  |   3 A$main$1306        053F GR
  3 A$main$1307        0542 GR  |   3 A$main$1308        0544 GR
  3 A$main$1309        0546 GR  |   3 A$main$1310        0547 GR
  3 A$main$1311        0549 GR  |   3 A$main$1316        054C GR
  3 A$main$1317        054E GR  |   3 A$main$1318        0550 GR
  3 A$main$1319        0553 GR  |   3 A$main$1320        0554 GR
  3 A$main$1321        0556 GR  |   3 A$main$1326        0559 GR
  3 A$main$1327        055B GR  |   3 A$main$1328        055E GR
  3 A$main$1329        0560 GR  |   3 A$main$1330        0563 GR
  3 A$main$1331        0565 GR  |   3 A$main$1332        0568 GR
  3 A$main$1337        056B GR  |   3 A$main$1338        056D GR
  3 A$main$1339        056F GR  |   3 A$main$1340        0571 GR
  3 A$main$1345        0574 GR  |   3 A$main$1346        0576 GR
  3 A$main$1347        057A GR  |   3 A$main$1348        057C GR
  3 A$main$1349        057E GR  |   3 A$main$1350        0581 GR
  3 A$main$1355        0584 GR  |   3 A$main$1356        0586 GR
  3 A$main$1357        0588 GR  |   3 A$main$1362        058B GR
  3 A$main$1363        058E GR  |   3 A$main$1364        0590 GR
  3 A$main$1365        0592 GR  |   3 A$main$1366        0594 GR
  3 A$main$1371        0597 GR  |   3 A$main$1372        0599 GR
  3 A$main$1373        059C GR  |   3 A$main$1374        059E GR
  3 A$main$1375        05A0 GR  |   3 A$main$1376        05A3 GR
  3 A$main$1381        05A6 GR  |   3 A$main$1382        05A9 GR
  3 A$main$1383        05AC GR  |   3 A$main$1388        05AE GR
  3 A$main$1389        05B0 GR  |   3 A$main$1390        05B2 GR
  3 A$main$1391        05B3 GR  |   3 A$main$1392        05B5 GR
  3 A$main$1393        05B9 GR  |   3 A$main$1394        05BB GR
  3 A$main$1395        05BD GR  |   3 A$main$1397        05BE GR
  3 A$main$1403        05C0 GR  |   3 A$main$1405        05C2 GR
  3 A$main$1406        05C3 GR  |   3 A$main$1407        05C7 GR
  3 A$main$1413        05C9 GR  |   3 A$main$1414        05CB GR
  3 A$main$1415        05CD GR  |   3 A$main$1416        05CF GR
  3 A$main$1417        05D1 GR  |   3 A$main$1423        05D3 GR
  3 A$main$1424        05D5 GR  |   3 A$main$1425        05D7 GR
  3 A$main$1426        05D9 GR  |   3 A$main$1427        05DB GR
  3 A$main$1433        05DD GR  |   3 A$main$1434        05DF GR
  3 A$main$1435        05E1 GR  |   3 A$main$1437        05E3 GR
  3 A$main$1439        05E5 GR  |   3 A$main$1440        05E7 GR
  3 A$main$1441        05E9 GR  |   3 A$main$1443        05EB GR
  3 A$main$1445        05ED GR  |   3 A$main$1446        05EF GR
  3 A$main$1447        05F1 GR  |   3 A$main$1453        05F3 GR
  3 A$main$1454        05F6 GR  |   3 A$main$1455        05F8 GR
  3 A$main$1456        05FA GR  |   3 A$main$1457        05FD GR
  3 A$main$1462        0600 GR  |   3 A$main$1463        0603 GR
  3 A$main$1464        0605 GR  |   3 A$main$1465        0607 GR
  3 A$main$1470        060A GR  |   3 A$main$1471        060E GR
  3 A$main$1472        0610 GR  |   3 A$main$1473        0613 GR
  3 A$main$1474        0615 GR  |   3 A$main$1475        0617 GR
  3 A$main$1480        061A GR  |   3 A$main$1481        061C GR
  3 A$main$1482        061E GR  |   3 A$main$1483        0620 GR
  3 A$main$1484        0623 GR  |   3 A$main$1489        0626 GR
  3 A$main$1490        0628 GR  |   3 A$main$1495        062B GR
  3 A$main$1500        062D GR  |   3 A$main$1501        062F GR
  3 A$main$1502        0633 GR  |   3 A$main$1508        0635 GR
  3 A$main$1509        0637 GR  |   3 A$main$1510        0639 GR
  3 A$main$1511        063A GR  |   3 A$main$1512        063C GR
  3 A$main$1513        063F GR  |   3 A$main$1514        0641 GR
  3 A$main$1522        0643 GR  |   3 A$main$1523        0645 GR
  3 A$main$1525        0646 GR  |   3 A$main$1526        0648 GR
  3 A$main$1527        064A GR  |   3 A$main$1528        064C GR
  3 A$main$1529        064E GR  |   3 A$main$1531        0651 GR
  3 A$main$1532        0654 GR  |   3 A$main$1534        0656 GR
  3 A$main$1535        0658 GR  |   3 A$main$1536        065A GR
  3 A$main$1537        065B GR  |   3 A$main$1538        065D GR
  3 A$main$1539        0661 GR  |   3 A$main$1540        0663 GR
  3 A$main$1541        0666 GR  |   3 A$main$1544        0668 GR
  3 A$main$1545        066A GR  |   3 A$main$1550        066C GR
  3 A$main$1551        066F GR  |   3 A$main$1552        0671 GR
  3 A$main$1553        0673 GR  |   3 A$main$1554        0675 GR
  3 A$main$1560        0678 GR  |   3 A$main$1561        067B GR
  3 A$main$1562        067D GR  |   3 A$main$1563        067F GR
  3 A$main$1564        0681 GR  |   3 A$main$1570        0684 GR
  3 A$main$1571        0687 GR  |   3 A$main$1576        068B GR
  3 A$main$1577        068E GR  |   3 A$main$1578        0690 GR
  3 A$main$1580        0694 GR  |   3 A$main$1581        0696 GR
  3 A$main$1582        0698 GR  |   3 A$main$1583        069A GR
  3 A$main$1584        069E GR  |   3 A$main$1585        06A0 GR
  3 A$main$1591        06A4 GR  |   3 A$main$1596        06A7 GR
  3 A$main$1597        06A8 GR  |   3 A$main$1598        06AA GR
  3 A$main$1600        06AC GR  |   3 A$main$1601        06AE GR
  3 A$main$1602        06B2 GR  |   3 A$main$1603        06B4 GR
  3 A$main$1608        06B6 GR  |   3 A$main$1609        06B9 GR
  3 A$main$1615        06BB GR  |   3 A$main$1616        06BE GR
  3 A$main$1617        06BF GR  |   3 A$main$1618        06C1 GR
  3 A$main$1623        06C3 GR  |   3 A$main$1624        06C5 GR
  3 A$main$1625        06C7 GR  |   3 A$main$1634        06CB GR
  3 A$main$1635        06CC GR  |   3 A$main$1636        06CD GR
  3 A$main$1637        06CE GR  |   3 A$main$1638        06CF GR
  3 A$main$1639        06D0 GR  |   3 A$main$1640        06D1 GR
  3 A$main$1641        06D2 GR  |   3 A$main$1642        06D4 GR
  3 A$main$1643        06D6 GR  |   3 A$main$1644        06D7 GR
  3 A$main$1645        06D9 GR  |   3 A$main$1646        06DA GR
  3 A$main$1647        06DC GR  |   3 A$main$1648        06DD GR
  3 A$main$1649        06DE GR  |   3 A$main$1650        06DF GR
  3 A$main$1651        06E0 GR  |   3 A$main$1652        06E1 GR
  3 A$main$1653        06E2 GR  |   3 A$main$1654        06E4 GR
  3 A$main$1655        06E8 GR  |   3 A$main$1664        06EC GR
  3 A$main$1665        06EE GR  |   3 A$main$1674        06F0 GR
  3 A$main$1675        06F2 GR  |   3 A$main$1684        06F4 GR
  3 A$main$1685        06F6 GR  |   3 A$main$1686        06F8 GR
  3 A$main$1687        06FA GR  |   3 A$main$1688        06FC GR
  3 A$main$1689        06FE GR  |   3 A$main$1690        0700 GR
  3 A$main$1695        0704 GR  |   3 A$main$1701        0707 GR
  3 A$main$1702        070A GR  |   3 A$main$1703        070B GR
  3 A$main$1704        070D GR  |   3 A$main$1705        0710 GR
  3 A$main$1706        0712 GR  |   3 A$main$1707        0715 GR
  3 A$main$1708        0718 GR  |   3 A$main$1709        071A GR
  3 A$main$1710        071C GR  |   3 A$main$1711        071D GR
  3 A$main$1712        0720 GR  |   3 A$main$1713        0723 GR
  3 A$main$1718        0725 GR  |   3 A$main$1719        0728 GR
  3 A$main$1720        072A GR  |   3 A$main$1726        072E GR
  3 A$main$1727        0732 GR  |   3 A$main$1733        0734 GR
  3 A$main$1734        0737 GR  |   3 A$main$1739        0739 GR
  3 A$main$1740        073C GR  |   3 A$main$1741        073D GR
  3 A$main$1750        073F GR  |   3 A$main$1751        0741 GR
  3 A$main$1760        0743 GR  |   3 A$main$1761        0745 GR
  3 A$main$1770        0747 GR  |   3 A$main$1771        0749 GR
  3 A$main$1780        074B GR  |   3 A$main$1781        074D GR
  3 A$main$1782        074F GR  |   3 A$main$1783        0751 GR
  3 A$main$1784        0754 GR  |   3 A$main$1785        0756 GR
  3 A$main$1786        0758 GR  |   3 A$main$1787        075A GR
  3 A$main$1788        075C GR  |   3 A$main$1789        075E GR
  3 A$main$1790        0760 GR  |   3 A$main$1791        0763 GR
  3 A$main$1792        0765 GR  |   3 A$main$1793        0767 GR
  3 A$main$1794        0769 GR  |   3 A$main$1795        076B GR
  3 A$main$1796        076D GR  |   3 A$main$1797        076F GR
  3 A$main$1802        0773 GR  |   3 A$main$1808        0776 GR
  3 A$main$1809        0779 GR  |   3 A$main$1815        077B GR
  3 A$main$1816        077E GR  |   3 A$main$1817        077F GR
  3 A$main$1818        0781 GR  |   3 A$main$1827        0783 GR
  3 A$main$1828        0786 GR  |   3 A$main$1829        0787 GR
  3 A$main$1830        0789 GR  |   3 A$main$1831        078C GR
  3 A$main$1832        078E GR  |   3 A$main$1833        0790 GR
  3 A$main$1834        0792 GR  |   3 A$main$1835        0794 GR
  3 A$main$1836        0797 GR  |   3 A$main$1843        0799 GR
  3 A$main$1844        079C GR  |   3 A$main$1845        079E GR
  3 A$main$1846        07A1 GR  |   3 A$main$1847        07A3 GR
  3 A$main$1848        07A5 GR  |   3 A$main$1849        07A7 GR
  3 A$main$1850        07A9 GR  |   3 A$main$1851        07AC GR
  3 A$main$1858        07AE GR  |   3 A$main$1859        07B1 GR
  3 A$main$1860        07B2 GR  |   3 A$main$1861        07B4 GR
  3 A$main$1862        07B7 GR  |   3 A$main$1863        07B9 GR
  3 A$main$1864        07BB GR  |   3 A$main$1865        07BD GR
  3 A$main$1866        07BF GR  |   3 A$main$1867        07C2 GR
  3 A$main$1874        07C4 GR  |   3 A$main$1875        07C7 GR
  3 A$main$1876        07C9 GR  |   3 A$main$1877        07CB GR
  3 A$main$1878        07CE GR  |   3 A$main$1879        07D0 GR
  3 A$main$1880        07D2 GR  |   3 A$main$1881        07D4 GR
  3 A$main$1882        07D6 GR  |   3 A$main$1883        07D9 GR
  3 A$main$1884        07DB GR  |   3 A$main$1885        07DD GR
  3 A$main$1886        07DF GR  |   3 A$main$1887        07E1 GR
  3 A$main$1888        07E3 GR  |   3 A$main$1889        07E5 GR
  3 A$main$1899        07E9 GR  |   3 A$main$1904        07EC GR
  3 A$main$1905        07EE GR  |   3 A$main$1906        07F0 GR
  3 A$main$1912        07F2 GR  |   3 A$main$1913        07F6 GR
  3 A$main$1919        07F8 GR  |   3 A$main$1920        07FB GR
  3 A$main$1925        07FD GR  |   3 A$main$1926        0800 GR
  3 A$main$1927        0801 GR  |   3 A$main$1936        0803 GR
  3 A$main$1937        0805 GR  |   3 A$main$1946        0807 GR
  3 A$main$1947        0809 GR  |   3 A$main$1956        080B GR
  3 A$main$1957        080D GR  |   3 A$main$1966        080F GR
  3 A$main$1967        0812 GR  |   3 A$main$1968        0814 GR
  3 A$main$1969        0816 GR  |   3 A$main$1970        0818 GR
  3 A$main$1971        081A GR  |   3 A$main$1972        081C GR
  3 A$main$1973        081E GR  |   3 A$main$1974        0821 GR
  3 A$main$1975        0823 GR  |   3 A$main$1976        0825 GR
  3 A$main$1977        0827 GR  |   3 A$main$1978        0829 GR
  3 A$main$1979        082B GR  |   3 A$main$1980        082D GR
  3 A$main$1985        0831 GR  |   3 A$main$1991        0834 GR
  3 A$main$1992        0837 GR  |   3 A$main$1993        0839 GR
  3 A$main$1999        083B GR  |   3 A$main$2000        083E GR
  3 A$main$2001        083F GR  |   3 A$main$2002        0841 GR
  3 A$main$2007        0843 GR  |   3 A$main$2008        0845 GR
  3 A$main$2017        0849 GR  |   3 A$main$2018        084B GR
  3 A$main$2019        084C GR  |   3 A$main$2020        084D GR
  3 A$main$2021        084E GR  |   3 A$main$2022        084F GR
  3 A$main$2023        0850 GR  |   3 A$main$2024        0851 GR
  3 A$main$2025        0852 GR  |   3 A$main$2026        0854 GR
  3 A$main$2027        0856 GR  |   3 A$main$2028        0857 GR
  3 A$main$2029        0859 GR  |   3 A$main$2030        085A GR
  3 A$main$2031        085C GR  |   3 A$main$2032        085D GR
  3 A$main$2033        085E GR  |   3 A$main$2034        085F GR
  3 A$main$2035        0860 GR  |   3 A$main$2036        0861 GR
  3 A$main$2037        0862 GR  |   3 A$main$2038        0864 GR
  3 A$main$2039        0868 GR  |   3 A$main$2048        086C GR
  3 A$main$2049        086E GR  |   3 A$main$2058        0870 GR
  3 A$main$2059        0872 GR  |   3 A$main$2068        0874 GR
  3 A$main$2069        0876 GR  |   3 A$main$2070        0878 GR
  3 A$main$2071        087A GR  |   3 A$main$2072        087C GR
  3 A$main$2073        087E GR  |   3 A$main$2074        0880 GR
  3 A$main$2075        0884 GR  |   3 A$main$2085        0887 GR
  3 A$main$2086        088A GR  |   3 A$main$2087        088B GR
  3 A$main$2088        088D GR  |   3 A$main$2089        0890 GR
  3 A$main$2090        0892 GR  |   3 A$main$2091        0894 GR
  3 A$main$2092        0896 GR  |   3 A$main$2093        0898 GR
  3 A$main$2094        089B GR  |   3 A$main$2103        089E GR
  3 A$main$2104        08A1 GR  |   3 A$main$2105        08A3 GR
  3 A$main$2106        08A6 GR  |   3 A$main$2107        08A8 GR
  3 A$main$2108        08AA GR  |   3 A$main$2109        08AC GR
  3 A$main$2110        08AE GR  |   3 A$main$2111        08B1 GR
  3 A$main$2120        08B4 GR  |   3 A$main$2121        08B7 GR
  3 A$main$2122        08B8 GR  |   3 A$main$2123        08BA GR
  3 A$main$2124        08BD GR  |   3 A$main$2125        08BF GR
  3 A$main$2126        08C1 GR  |   3 A$main$2127        08C3 GR
  3 A$main$2128        08C5 GR  |   3 A$main$2129        08C8 GR
  3 A$main$2138        08CB GR  |   3 A$main$2139        08CE GR
  3 A$main$2140        08D0 GR  |   3 A$main$2141        08D2 GR
  3 A$main$2142        08D5 GR  |   3 A$main$2143        08D7 GR
  3 A$main$2144        08DA GR  |   3 A$main$2145        08DC GR
  3 A$main$2146        08DE GR  |   3 A$main$2147        08E1 GR
  3 A$main$2148        08E4 GR  |   3 A$main$2154        08E6 GR
  3 A$main$2164        08E9 GR  |   3 A$main$2165        08EC GR
  3 A$main$2166        08ED GR  |   3 A$main$2167        08EF GR
  3 A$main$2168        08F2 GR  |   3 A$main$2169        08F4 GR
  3 A$main$2170        08F6 GR  |   3 A$main$2171        08F8 GR
  3 A$main$2172        08FA GR  |   3 A$main$2173        08FD GR
  3 A$main$2182        0900 GR  |   3 A$main$2183        0903 GR
  3 A$main$2184        0905 GR  |   3 A$main$2185        0908 GR
  3 A$main$2186        090A GR  |   3 A$main$2187        090C GR
  3 A$main$2188        090E GR  |   3 A$main$2189        0910 GR
  3 A$main$2190        0913 GR  |   3 A$main$2199        0916 GR
  3 A$main$2200        0919 GR  |   3 A$main$2201        091A GR
  3 A$main$2202        091C GR  |   3 A$main$2203        091F GR
  3 A$main$2204        0921 GR  |   3 A$main$2205        0924 GR
  3 A$main$2206        0926 GR  |   3 A$main$2207        0928 GR
  3 A$main$2208        092B GR  |   3 A$main$2217        092E GR
  3 A$main$2218        0931 GR  |   3 A$main$2219        0933 GR
  3 A$main$2220        0935 GR  |   3 A$main$2221        0938 GR
  3 A$main$2222        093A GR  |   3 A$main$2223        093D GR
  3 A$main$2224        093F GR  |   3 A$main$2225        0941 GR
  3 A$main$2226        0944 GR  |   3 A$main$2227        0947 GR
  3 A$main$2232        0949 GR  |   3 A$main$2235        094C GR
  3 A$main$2236        094E GR  |   3 A$main$2241        0951 GR
  3 A$main$2242        0954 GR  |   3 A$main$2248        0958 GR
  3 A$main$2249        095B GR  |   3 A$main$2254        095E GR
  3 A$main$2255        0961 GR  |   3 A$main$2256        0963 GR
  3 A$main$2262        0967 GR  |   3 A$main$2263        096A GR
  3 A$main$2268        096E GR  |   3 A$main$2273        0971 GR
  3 A$main$2274        0974 GR  |   3 A$main$2279        0977 GR
  3 A$main$2280        0979 GR  |   3 A$main$2285        097B GR
  3 A$main$2286        097E GR  |   3 A$main$2287        0980 GR
  3 A$main$2288        0982 GR  |   3 A$main$2289        0984 GR
  3 A$main$2290        0985 GR  |   3 A$main$2291        0987 GR
  3 A$main$2292        098A GR  |   3 A$main$2293        098C GR
  3 A$main$2294        098E GR  |   3 A$main$2298        0990 GR
  3 A$main$2303        0993 GR  |   3 A$main$2304        0996 GR
  3 A$main$2309        0999 GR  |   3 A$main$2310        099B GR
  3 A$main$2316        099F GR  |   3 A$main$2317        09A1 GR
  3 A$main$2322        09A3 GR  |   3 A$main$2323        09A5 GR
  3 A$main$2324        09A7 GR  |   3 A$main$2328        09A9 GR
  3 A$main$2333        09AC GR  |   3 A$main$2334        09AE GR
  3 A$main$2339        09B0 GR  |   3 A$main$2340        09B3 GR
  3 A$main$2341        09B5 GR  |   3 A$main$2342        09B7 GR
  3 A$main$2343        09B9 GR  |   3 A$main$2344        09BA GR
  3 A$main$2345        09BC GR  |   3 A$main$2346        09BF GR
  3 A$main$2347        09C1 GR  |   3 A$main$2348        09C3 GR
  3 A$main$2352        09C5 GR  |   3 A$main$2353        09C7 GR
  3 A$main$2356        09C9 GR  |   3 A$main$2357        09CB GR
  3 A$main$2358        09CD GR  |   3 A$main$2365        09CF GR
  3 A$main$2366        09D2 GR  |   3 A$main$2371        09D4 GR
  3 A$main$2372        09D6 GR  |   3 A$main$2373        09DA GR
  3 A$main$2374        09DC GR  |   3 A$main$2380        09E0 GR
  3 A$main$2381        09E3 GR  |   3 A$main$2386        09E5 GR
  3 A$main$2387        09E7 GR  |   3 A$main$2388        09EB GR
  3 A$main$2389        09ED GR  |   3 A$main$2390        09F1 GR
  3 A$main$2391        09F3 GR  |   3 A$main$2392        09F7 GR
  3 A$main$2393        09F9 GR  |   3 A$main$2394        09FD GR
  3 A$main$2395        09FF GR  |   3 A$main$2401        0A03 GR
  3 A$main$2402        0A05 GR  |   3 A$main$2407        0A08 GR
  3 A$main$2413        0A0B GR  |   3 A$main$2414        0A0E GR
  3 A$main$2415        0A10 GR  |   3 A$main$2421        0A14 GR
  3 A$main$2422        0A17 GR  |   3 A$main$2428        0A1B GR
  3 A$main$2429        0A1E GR  |   3 A$main$2434        0A22 GR
  3 A$main$2435        0A25 GR  |   3 A$main$2436        0A27 GR
  3 A$main$2441        0A2B GR  |   3 A$main$2442        0A2D GR
  3 A$main$2447        0A2F GR  |   3 A$main$2448        0A31 GR
  3 A$main$2453        0A33 GR  |   3 A$main$2454        0A36 GR
  3 A$main$2455        0A37 GR  |   3 A$main$2456        0A39 GR
  3 A$main$2457        0A3A GR  |   3 A$main$2458        0A3B GR
  3 A$main$2459        0A3D GR  |   3 A$main$2465        0A41 GR
  3 A$main$2466        0A43 GR  |   3 A$main$2471        0A45 GR
  3 A$main$2472        0A48 GR  |   3 A$main$2473        0A4A GR
  3 A$main$2474        0A4C GR  |   3 A$main$2475        0A4E GR
  3 A$main$2476        0A50 GR  |   3 A$main$2477        0A52 GR
  3 A$main$2478        0A56 GR  |   3 A$main$2479        0A5A GR
  3 A$main$2480        0A5D GR  |   3 A$main$2481        0A60 GR
  3 A$main$2483        0A62 GR  |   3 A$main$2484        0A64 GR
  3 A$main$2485        0A67 GR  |   3 A$main$2486        0A69 GR
  3 A$main$2487        0A6B GR  |   3 A$main$2489        0A6F GR
  3 A$main$2491        0A71 GR  |   3 A$main$2492        0A74 GR
  3 A$main$2493        0A76 GR  |   3 A$main$2494        0A78 GR
  3 A$main$2495        0A7A GR  |   3 A$main$2497        0A7E GR
  3 A$main$2498        0A80 GR  |   3 A$main$2499        0A82 GR
  3 A$main$2501        0A86 GR  |   3 A$main$2503        0A88 GR
  3 A$main$2504        0A8A GR  |   3 A$main$2505        0A8D GR
  3 A$main$2506        0A8E GR  |   3 A$main$2511        0A91 GR
  3 A$main$2512        0A93 GR  |   3 A$main$2513        0A95 GR
  3 A$main$2514        0A97 GR  |   3 A$main$2519        0A9B GR
  3 A$main$2520        0A9D GR  |   3 A$main$2525        0A9F GR
  3 A$main$2526        0AA2 GR  |   3 A$main$2527        0AA4 GR
  3 A$main$2528        0AA6 GR  |   3 A$main$2529        0AA8 GR
  3 A$main$2530        0AA9 GR  |   3 A$main$2531        0AAB GR
  3 A$main$2532        0AAE GR  |   3 A$main$2533        0AB0 GR
  3 A$main$2534        0AB2 GR  |   3 A$main$2538        0AB4 GR
  3 A$main$2539        0AB6 GR  |   3 A$main$2544        0AB8 GR
  3 A$main$2545        0ABA GR  |   3 A$main$2546        0ABC GR
  3 A$main$2547        0AC0 GR  |   3 A$main$2548        0AC2 GR
  3 A$main$2553        0AC6 GR  |   3 A$main$2554        0AC8 GR
  3 A$main$2555        0ACA GR  |   3 A$main$2556        0ACE GR
  3 A$main$2557        0AD0 GR  |   3 A$main$2562        0AD4 GR
  3 A$main$2563        0AD6 GR  |   3 A$main$2564        0AD8 GR
  3 A$main$2570        0ADC GR  |   3 A$main$2571        0ADE GR
  3 A$main$2577        0AE0 GR  |   3 A$main$2578        0AE2 GR
  3 A$main$2579        0AE5 GR  |   3 A$main$2580        0AE7 GR
  3 A$main$2581        0AEA GR  |   3 A$main$2582        0AED GR
  3 A$main$2583        0AEF GR  |   3 A$main$2584        0AF3 GR
  3 A$main$2585        0AF5 GR  |   3 A$main$2586        0AF7 GR
  3 A$main$2588        0AFA GR  |   3 A$main$2589        0AFD GR
  3 A$main$2590        0AFF GR  |   3 A$main$2591        0B02 GR
  3 A$main$2592        0B04 GR  |   3 A$main$2594        0B08 GR
  3 A$main$2596        0B0A GR  |   3 A$main$2597        0B0C GR
  3 A$main$2598        0B0F GR  |   3 A$main$2599        0B11 GR
  3 A$main$2604        0B14 GR  |   3 A$main$2605        0B16 GR
  3 A$main$2606        0B19 GR  |   3 A$main$2611        0B1D GR
  3 A$main$2612        0B1F GR  |   3 A$main$2617        0B21 GR
  3 A$main$2618        0B24 GR  |   3 A$main$2619        0B26 GR
  3 A$main$2620        0B28 GR  |   3 A$main$2621        0B2A GR
  3 A$main$2622        0B2B GR  |   3 A$main$2623        0B2D GR
  3 A$main$2624        0B30 GR  |   3 A$main$2625        0B32 GR
  3 A$main$2626        0B34 GR  |   3 A$main$2630        0B36 GR
  3 A$main$2631        0B38 GR  |   3 A$main$2636        0B3A GR
  3 A$main$2637        0B3C GR  |   3 A$main$2638        0B3E GR
  3 A$main$2639        0B42 GR  |   3 A$main$2640        0B44 GR
  3 A$main$2645        0B48 GR  |   3 A$main$2646        0B4A GR
  3 A$main$2647        0B4C GR  |   3 A$main$2648        0B50 GR
  3 A$main$2649        0B52 GR  |   3 A$main$2654        0B56 GR
  3 A$main$2655        0B58 GR  |   3 A$main$2656        0B5A GR
  3 A$main$2662        0B5E GR  |   3 A$main$2663        0B60 GR
  3 A$main$2669        0B62 GR  |   3 A$main$2670        0B65 GR
  3 A$main$2671        0B67 GR  |   3 A$main$2672        0B68 GR
  3 A$main$2673        0B69 GR  |   3 A$main$2674        0B6B GR
  3 A$main$2675        0B6D GR  |   3 A$main$2676        0B6F GR
  3 A$main$2677        0B71 GR  |   3 A$main$2678        0B73 GR
  3 A$main$2679        0B76 GR  |   3 A$main$2680        0B78 GR
  3 A$main$2681        0B7B GR  |   3 A$main$2682        0B7E GR
  3 A$main$2683        0B80 GR  |   3 A$main$2685        0B84 GR
  3 A$main$2687        0B86 GR  |   3 A$main$2688        0B89 GR
  3 A$main$2689        0B8D GR  |   3 A$main$2690        0B90 GR
  3 A$main$2691        0B93 GR  |   3 A$main$2693        0B95 GR
  3 A$main$2694        0B97 GR  |   3 A$main$2695        0B9A GR
  3 A$main$2696        0B9C GR  |   3 A$main$2701        0B9F GR
  3 A$main$2702        0BA1 GR  |   3 A$main$2703        0BA3 GR
  3 A$main$2704        0BA5 GR  |   3 A$main$2709        0BA9 GR
  3 A$main$2710        0BAB GR  |   3 A$main$2715        0BAD GR
  3 A$main$2716        0BB0 GR  |   3 A$main$2717        0BB2 GR
  3 A$main$2718        0BB4 GR  |   3 A$main$2719        0BB6 GR
  3 A$main$2720        0BB7 GR  |   3 A$main$2721        0BB9 GR
  3 A$main$2722        0BBC GR  |   3 A$main$2723        0BBE GR
  3 A$main$2724        0BC0 GR  |   3 A$main$2728        0BC2 GR
  3 A$main$2729        0BC4 GR  |   3 A$main$2734        0BC6 GR
  3 A$main$2735        0BC8 GR  |   3 A$main$2736        0BCA GR
  3 A$main$2737        0BCE GR  |   3 A$main$2738        0BD0 GR
  3 A$main$2743        0BD4 GR  |   3 A$main$2744        0BD6 GR
  3 A$main$2745        0BD8 GR  |   3 A$main$2746        0BDC GR
  3 A$main$2747        0BDE GR  |   3 A$main$2752        0BE2 GR
  3 A$main$2753        0BE4 GR  |   3 A$main$2754        0BE6 GR
  3 A$main$2760        0BEA GR  |   3 A$main$2761        0BEC GR
  3 A$main$2767        0BEE GR  |   3 A$main$2768        0BF1 GR
  3 A$main$2769        0BF3 GR  |   3 A$main$2770        0BF6 GR
  3 A$main$2771        0BF8 GR  |   3 A$main$2772        0BFB GR
  3 A$main$2773        0BFD GR  |   3 A$main$2775        0C01 GR
  3 A$main$2777        0C04 GR  |   3 A$main$2778        0C06 GR
  3 A$main$2779        0C09 GR  |   3 A$main$2784        0C0C GR
  3 A$main$2785        0C0F GR  |   3 A$main$2790        0C13 GR
  3 A$main$2791        0C15 GR  |   3 A$main$2796        0C17 GR
  3 A$main$2797        0C1A GR  |   3 A$main$2798        0C1C GR
  3 A$main$2799        0C1E GR  |   3 A$main$2800        0C20 GR
  3 A$main$2801        0C21 GR  |   3 A$main$2802        0C23 GR
  3 A$main$2803        0C26 GR  |   3 A$main$2804        0C28 GR
  3 A$main$2805        0C2A GR  |   3 A$main$2809        0C2C GR
  3 A$main$2810        0C2E GR  |   3 A$main$2817        0C30 GR
  3 A$main$2818        0C33 GR  |   3 A$main$2819        0C35 GR
  3 A$main$2820        0C39 GR  |   3 A$main$2821        0C3B GR
  3 A$main$2831        0C3F GR  |   3 A$main$2832        0C41 GR
  3 A$main$2838        0C43 GR  |   3 A$main$2839        0C45 GR
  3 A$main$2840        0C48 GR  |   3 A$main$2841        0C4A GR
  3 A$main$2842        0C4D GR  |   3 A$main$2843        0C50 GR
  3 A$main$2844        0C52 GR  |   3 A$main$2845        0C56 GR
  3 A$main$2846        0C59 GR  |   3 A$main$2847        0C5C GR
  3 A$main$2849        0C5F GR  |   3 A$main$2850        0C62 GR
  3 A$main$2851        0C64 GR  |   3 A$main$2852        0C67 GR
  3 A$main$2853        0C69 GR  |   3 A$main$2855        0C6D GR
  3 A$main$2857        0C70 GR  |   3 A$main$2858        0C72 GR
  3 A$main$2859        0C75 GR  |   3 A$main$2860        0C77 GR
  3 A$main$2865        0C7A GR  |   3 A$main$2866        0C7D GR
  3 A$main$2867        0C80 GR  |   3 A$main$2872        0C84 GR
  3 A$main$2873        0C86 GR  |   3 A$main$2878        0C88 GR
  3 A$main$2879        0C8B GR  |   3 A$main$2880        0C8D GR
  3 A$main$2881        0C8F GR  |   3 A$main$2882        0C91 GR
  3 A$main$2883        0C92 GR  |   3 A$main$2884        0C94 GR
  3 A$main$2885        0C97 GR  |   3 A$main$2886        0C99 GR
  3 A$main$2887        0C9B GR  |   3 A$main$2891        0C9D GR
  3 A$main$2892        0C9F GR  |   3 A$main$2897        0CA1 GR
  3 A$main$2898        0CA4 GR  |   3 A$main$2899        0CA6 GR
  3 A$main$2900        0CAA GR  |   3 A$main$2901        0CAC GR
  3 A$main$2906        0CB0 GR  |   3 A$main$2907        0CB3 GR
  3 A$main$2908        0CB5 GR  |   3 A$main$2909        0CB9 GR
  3 A$main$2910        0CBB GR  |   3 A$main$2915        0CBF GR
  3 A$main$2916        0CC2 GR  |   3 A$main$2917        0CC4 GR
  3 A$main$2923        0CC8 GR  |   3 A$main$2924        0CCA GR
  3 A$main$2930        0CCC GR  |   3 A$main$2931        0CCE GR
  3 A$main$2932        0CCF GR  |   3 A$main$2933        0CD0 GR
  3 A$main$2934        0CD3 GR  |   3 A$main$2935        0CD5 GR
  3 A$main$2936        0CD8 GR  |   3 A$main$2937        0CDB GR
  3 A$main$2938        0CDD GR  |   3 A$main$2939        0CDF GR
  3 A$main$2940        0CE2 GR  |   3 A$main$2941        0CE4 GR
  3 A$main$2942        0CE7 GR  |   3 A$main$2943        0CE9 GR
  3 A$main$2948        0CEC GR  |   3 A$main$2949        0CEF GR
  3 A$main$2950        0CF2 GR  |   3 A$main$2955        0CF6 GR
  3 A$main$2956        0CF8 GR  |   3 A$main$2961        0CFA GR
  3 A$main$2962        0CFD GR  |   3 A$main$2963        0CFF GR
  3 A$main$2964        0D01 GR  |   3 A$main$2965        0D03 GR
  3 A$main$2966        0D04 GR  |   3 A$main$2967        0D06 GR
  3 A$main$2968        0D09 GR  |   3 A$main$2969        0D0B GR
  3 A$main$2970        0D0D GR  |   3 A$main$2974        0D0F GR
  3 A$main$2975        0D11 GR  |   3 A$main$2980        0D13 GR
  3 A$main$2981        0D16 GR  |   3 A$main$2982        0D18 GR
  3 A$main$2983        0D1C GR  |   3 A$main$2984        0D1E GR
  3 A$main$2989        0D22 GR  |   3 A$main$2990        0D25 GR
  3 A$main$2991        0D27 GR  |   3 A$main$2992        0D2B GR
  3 A$main$2993        0D2D GR  |   3 A$main$3003        0D31 GR
  3 A$main$3004        0D33 GR  |   3 A$main$3010        0D35 GR
  3 A$main$3011        0D38 GR  |   3 A$main$3012        0D3A GR
  3 A$main$3013        0D3C GR  |   3 A$main$3014        0D3D GR
  3 A$main$3015        0D3E GR  |   3 A$main$3016        0D41 GR
  3 A$main$3017        0D43 GR  |   3 A$main$3018        0D46 GR
  3 A$main$3019        0D49 GR  |   3 A$main$3020        0D4B GR
  3 A$main$3021        0D4D GR  |   3 A$main$3022        0D50 GR
  3 A$main$3023        0D52 GR  |   3 A$main$3024        0D56 GR
  3 A$main$3026        0D59 GR  |   3 A$main$3027        0D5C GR
  3 A$main$3028        0D5E GR  |   3 A$main$3029        0D61 GR
  3 A$main$3030        0D63 GR  |   3 A$main$3032        0D67 GR
  3 A$main$3034        0D6A GR  |   3 A$main$3035        0D6C GR
  3 A$main$3036        0D6F GR  |   3 A$main$3041        0D72 GR
  3 A$main$3042        0D75 GR  |   3 A$main$3043        0D78 GR
  3 A$main$3044        0D7B GR  |   3 A$main$3049        0D7F GR
  3 A$main$3050        0D81 GR  |   3 A$main$3055        0D83 GR
  3 A$main$3056        0D86 GR  |   3 A$main$3057        0D88 GR
  3 A$main$3058        0D8A GR  |   3 A$main$3059        0D8C GR
  3 A$main$3060        0D8D GR  |   3 A$main$3061        0D8F GR
  3 A$main$3062        0D92 GR  |   3 A$main$3063        0D94 GR
  3 A$main$3064        0D96 GR  |   3 A$main$3068        0D98 GR
  3 A$main$3069        0D9A GR  |   3 A$main$3074        0D9C GR
  3 A$main$3075        0D9F GR  |   3 A$main$3076        0DA1 GR
  3 A$main$3077        0DA5 GR  |   3 A$main$3078        0DA7 GR
  3 A$main$3083        0DAB GR  |   3 A$main$3084        0DAE GR
  3 A$main$3085        0DB0 GR  |   3 A$main$3086        0DB4 GR
  3 A$main$3087        0DB6 GR  |   3 A$main$3092        0DBA GR
  3 A$main$3093        0DBD GR  |   3 A$main$3094        0DBF GR
  3 A$main$3100        0DC3 GR  |   3 A$main$3101        0DC5 GR
  3 A$main$3107        0DC7 GR  |   3 A$main$3108        0DCA GR
  3 A$main$3109        0DCC GR  |   3 A$main$3110        0DCE GR
  3 A$main$3111        0DD0 GR  |   3 A$main$3112        0DD4 GR
  3 A$main$3114        0DD7 GR  |   3 A$main$3115        0DD9 GR
  3 A$main$3116        0DDC GR  |   3 A$main$3117        0DDE GR
  3 A$main$3122        0DE1 GR  |   3 A$main$3123        0DE4 GR
  3 A$main$3128        0DE8 GR  |   3 A$main$3129        0DEA GR
  3 A$main$3134        0DEC GR  |   3 A$main$3135        0DEF GR
  3 A$main$3136        0DF1 GR  |   3 A$main$3137        0DF3 GR
  3 A$main$3138        0DF5 GR  |   3 A$main$3139        0DF6 GR
  3 A$main$3140        0DF8 GR  |   3 A$main$3141        0DFB GR
  3 A$main$3142        0DFD GR  |   3 A$main$3143        0DFF GR
  3 A$main$3147        0E01 GR  |   3 A$main$3148        0E03 GR
  3 A$main$3155        0E05 GR  |   3 A$main$3156        0E08 GR
  3 A$main$3157        0E0A GR  |   3 A$main$3158        0E0E GR
  3 A$main$3159        0E10 GR  |   3 A$main$3169        0E14 GR
  3 A$main$3170        0E16 GR  |   3 A$main$3176        0E18 GR
  3 A$main$3177        0E1B GR  |   3 A$main$3178        0E1E GR
  3 A$main$3179        0E20 GR  |   3 A$main$3180        0E23 GR
  3 A$main$3181        0E26 GR  |   3 A$main$3182        0E28 GR
  3 A$main$3183        0E2C GR  |   3 A$main$3184        0E2E GR
  3 A$main$3185        0E30 GR  |   3 A$main$3186        0E32 GR
  3 A$main$3187        0E34 GR  |   3 A$main$3188        0E36 GR
  3 A$main$3189        0E38 GR  |   3 A$main$3191        0E3C GR
  3 A$main$3192        0E3F GR  |   3 A$main$3193        0E42 GR
  3 A$main$3195        0E45 GR  |   3 A$main$3196        0E48 GR
  3 A$main$3197        0E4C GR  |   3 A$main$3198        0E50 GR
  3 A$main$3200        0E53 GR  |   3 A$main$3201        0E55 GR
  3 A$main$3202        0E58 GR  |   3 A$main$3203        0E5A GR
  3 A$main$3208        0E5D GR  |   3 A$main$3209        0E60 GR
  3 A$main$3210        0E63 GR  |   3 A$main$3215        0E67 GR
  3 A$main$3216        0E69 GR  |   3 A$main$3221        0E6B GR
  3 A$main$3222        0E6E GR  |   3 A$main$3223        0E70 GR
  3 A$main$3224        0E72 GR  |   3 A$main$3225        0E74 GR
  3 A$main$3226        0E75 GR  |   3 A$main$3227        0E77 GR
  3 A$main$3228        0E7A GR  |   3 A$main$3229        0E7C GR
  3 A$main$3230        0E7E GR  |   3 A$main$3234        0E80 GR
  3 A$main$3235        0E82 GR  |   3 A$main$3240        0E84 GR
  3 A$main$3241        0E87 GR  |   3 A$main$3242        0E89 GR
  3 A$main$3243        0E8D GR  |   3 A$main$3244        0E8F GR
  3 A$main$3249        0E93 GR  |   3 A$main$3250        0E96 GR
  3 A$main$3251        0E98 GR  |   3 A$main$3252        0E9C GR
  3 A$main$3253        0E9E GR  |   3 A$main$3258        0EA2 GR
  3 A$main$3259        0EA5 GR  |   3 A$main$3260        0EA7 GR
  3 A$main$3266        0EAB GR  |   3 A$main$3267        0EAD GR
  3 A$main$3273        0EAF GR  |   3 A$main$3274        0EB1 GR
  3 A$main$3275        0EB3 GR  |   3 A$main$3276        0EB5 GR
  3 A$main$3277        0EB7 GR  |   3 A$main$3278        0EBA GR
  3 A$main$3279        0EBC GR  |   3 A$main$3280        0EC0 GR
  3 A$main$3282        0EC3 GR  |   3 A$main$3283        0EC6 GR
  3 A$main$3284        0EC8 GR  |   3 A$main$3285        0ECB GR
  3 A$main$3286        0ECD GR  |   3 A$main$3288        0ED1 GR
  3 A$main$3290        0ED4 GR  |   3 A$main$3291        0ED6 GR
  3 A$main$3292        0ED9 GR  |   3 A$main$3297        0EDC GR
  3 A$main$3298        0EDF GR  |   3 A$main$3299        0EE2 GR
  3 A$main$3300        0EE5 GR  |   3 A$main$3305        0EE9 GR
  3 A$main$3306        0EEB GR  |   3 A$main$3311        0EED GR
  3 A$main$3312        0EF0 GR  |   3 A$main$3313        0EF2 GR
  3 A$main$3314        0EF4 GR  |   3 A$main$3315        0EF6 GR
  3 A$main$3316        0EF7 GR  |   3 A$main$3317        0EF9 GR
  3 A$main$3318        0EFC GR  |   3 A$main$3319        0EFE GR
  3 A$main$3320        0F00 GR  |   3 A$main$3324        0F02 GR
  3 A$main$3325        0F04 GR  |   3 A$main$3330        0F06 GR
  3 A$main$3331        0F09 GR  |   3 A$main$3332        0F0B GR
  3 A$main$3333        0F0F GR  |   3 A$main$3334        0F11 GR
  3 A$main$3339        0F15 GR  |   3 A$main$3340        0F18 GR
  3 A$main$3341        0F1A GR  |   3 A$main$3342        0F1E GR
  3 A$main$3343        0F20 GR  |   3 A$main$3348        0F24 GR
  3 A$main$3349        0F27 GR  |   3 A$main$3350        0F29 GR
  3 A$main$3356        0F2D GR  |   3 A$main$3357        0F2F GR
  3 A$main$3363        0F31 GR  |   3 A$main$3364        0F33 GR
  3 A$main$3365        0F36 GR  |   3 A$main$3366        0F38 GR
  3 A$main$3367        0F3B GR  |   3 A$main$3368        0F3E GR
  3 A$main$3369        0F40 GR  |   3 A$main$3370        0F44 GR
  3 A$main$3371        0F47 GR  |   3 A$main$3372        0F4A GR
  3 A$main$3374        0F4D GR  |   3 A$main$3375        0F50 GR
  3 A$main$3376        0F52 GR  |   3 A$main$3377        0F55 GR
  3 A$main$3378        0F57 GR  |   3 A$main$3379        0F5A GR
  3 A$main$3380        0F5D GR  |   3 A$main$3381        0F5F GR
  3 A$main$3382        0F63 GR  |   3 A$main$3384        0F66 GR
  3 A$main$3385        0F69 GR  |   3 A$main$3386        0F6B GR
  3 A$main$3387        0F6E GR  |   3 A$main$3388        0F70 GR
  3 A$main$3389        0F73 GR  |   3 A$main$3390        0F75 GR
  3 A$main$3391        0F78 GR  |   3 A$main$3392        0F7A GR
  3 A$main$3394        0F7E GR  |   3 A$main$3395        0F81 GR
  3 A$main$3396        0F83 GR  |   3 A$main$3398        0F87 GR
  3 A$main$3400        0F8A GR  |   3 A$main$3401        0F8C GR
  3 A$main$3402        0F8F GR  |   3 A$main$3403        0F91 GR
  3 A$main$3408        0F94 GR  |   3 A$main$3409        0F97 GR
  3 A$main$3410        0F9A GR  |   3 A$main$3411        0F9D GR
  3 A$main$3416        0FA1 GR  |   3 A$main$3417        0FA3 GR
  3 A$main$3422        0FA5 GR  |   3 A$main$3423        0FA8 GR
  3 A$main$3424        0FAA GR  |   3 A$main$3425        0FAC GR
  3 A$main$3426        0FAE GR  |   3 A$main$3427        0FAF GR
  3 A$main$3428        0FB1 GR  |   3 A$main$3429        0FB4 GR
  3 A$main$3430        0FB6 GR  |   3 A$main$3431        0FB8 GR
  3 A$main$3435        0FBA GR  |   3 A$main$3436        0FBC GR
  3 A$main$3441        0FBE GR  |   3 A$main$3442        0FC1 GR
  3 A$main$3443        0FC3 GR  |   3 A$main$3444        0FC7 GR
  3 A$main$3445        0FC9 GR  |   3 A$main$3450        0FCD GR
  3 A$main$3451        0FD0 GR  |   3 A$main$3452        0FD2 GR
  3 A$main$3453        0FD6 GR  |   3 A$main$3454        0FD8 GR
  3 A$main$3459        0FDC GR  |   3 A$main$3460        0FDF GR
  3 A$main$3461        0FE1 GR  |   3 A$main$3467        0FE5 GR
  3 A$main$3468        0FE7 GR  |   3 A$main$3474        0FE9 GR
  3 A$main$3475        0FEC GR  |   3 A$main$3476        0FEE GR
  3 A$main$3477        0FF0 GR  |   3 A$main$3478        0FF2 GR
  3 A$main$3480        0FF6 GR  |   3 A$main$3482        0FF9 GR
  3 A$main$3483        0FFB GR  |   3 A$main$3484        0FFE GR
  3 A$main$3485        1000 GR  |   3 A$main$3490        1003 GR
  3 A$main$3491        1006 GR  |   3 A$main$3496        100A GR
  3 A$main$3497        100C GR  |   3 A$main$3502        100E GR
  3 A$main$3503        1011 GR  |   3 A$main$3504        1013 GR
  3 A$main$3505        1015 GR  |   3 A$main$3506        1017 GR
  3 A$main$3507        1018 GR  |   3 A$main$3508        101A GR
  3 A$main$3509        101D GR  |   3 A$main$3510        101F GR
  3 A$main$3511        1021 GR  |   3 A$main$3515        1023 GR
  3 A$main$3516        1025 GR  |   3 A$main$3523        1027 GR
  3 A$main$3524        102A GR  |   3 A$main$3525        102C GR
  3 A$main$3526        1030 GR  |   3 A$main$3527        1032 GR
  3 A$main$3537        1036 GR  |   3 A$main$3538        1038 GR
  3 A$main$3544        103A GR  |   3 A$main$3545        103C GR
  3 A$main$3546        103F GR  |   3 A$main$3547        1041 GR
  3 A$main$3548        1044 GR  |   3 A$main$3549        1046 GR
  3 A$main$3551        104A GR  |   3 A$main$3553        104D GR
  3 A$main$3554        104F GR  |   3 A$main$3555        1052 GR
  3 A$main$3560        1055 GR  |   3 A$main$3561        1058 GR
  3 A$main$3566        105C GR  |   3 A$main$3567        105E GR
  3 A$main$3572        1060 GR  |   3 A$main$3573        1063 GR
  3 A$main$3574        1065 GR  |   3 A$main$3575        1067 GR
  3 A$main$3576        1069 GR  |   3 A$main$3577        106A GR
  3 A$main$3578        106C GR  |   3 A$main$3579        106F GR
  3 A$main$3580        1071 GR  |   3 A$main$3581        1073 GR
  3 A$main$3585        1075 GR  |   3 A$main$3586        1077 GR
  3 A$main$3591        1079 GR  |   3 A$main$3592        107C GR
  3 A$main$3593        107E GR  |   3 A$main$3594        1082 GR
  3 A$main$3595        1084 GR  |   3 A$main$3607        1088 GR
  3 A$main$3608        108A GR  |   3 A$main$3614        108C GR
  3 A$main$3615        108E GR  |   3 A$main$3616        1090 GR
  3 A$main$3617        1092 GR  |   3 A$main$3618        1096 GR
  3 A$main$3620        1099 GR  |   3 A$main$3621        109B GR
  3 A$main$3622        109E GR  |   3 A$main$3623        10A0 GR
  3 A$main$3628        10A3 GR  |   3 A$main$3629        10A6 GR
  3 A$main$3634        10AA GR  |   3 A$main$3635        10AC GR
  3 A$main$3640        10AE GR  |   3 A$main$3641        10B1 GR
  3 A$main$3642        10B3 GR  |   3 A$main$3643        10B5 GR
  3 A$main$3644        10B7 GR  |   3 A$main$3645        10B8 GR
  3 A$main$3646        10BA GR  |   3 A$main$3647        10BD GR
  3 A$main$3648        10BF GR  |   3 A$main$3649        10C1 GR
  3 A$main$3653        10C3 GR  |   3 A$main$3654        10C5 GR
  3 A$main$3659        10C7 GR  |   3 A$main$3660        10CA GR
  3 A$main$3661        10CC GR  |   3 A$main$3662        10D0 GR
  3 A$main$3663        10D2 GR  |   3 A$main$3675        10D6 GR
  3 A$main$3676        10D8 GR  |   3 A$main$3682        10DA GR
  3 A$main$3683        10DC GR  |   3 A$main$3684        10DE GR
  3 A$main$3685        10E0 GR  |   3 A$main$3687        10E4 GR
  3 A$main$3689        10E7 GR  |   3 A$main$3690        10E9 GR
  3 A$main$3691        10EC GR  |   3 A$main$3692        10EE GR
  3 A$main$3697        10F1 GR  |   3 A$main$3698        10F4 GR
  3 A$main$3703        10F8 GR  |   3 A$main$3704        10FA GR
  3 A$main$3709        10FC GR  |   3 A$main$3710        10FF GR
  3 A$main$3711        1101 GR  |   3 A$main$3712        1103 GR
  3 A$main$3713        1105 GR  |   3 A$main$3714        1106 GR
  3 A$main$3715        1108 GR  |   3 A$main$3716        110B GR
  3 A$main$3717        110D GR  |   3 A$main$3718        110F GR
  3 A$main$3722        1111 GR  |   3 A$main$3723        1113 GR
  3 A$main$3728        1115 GR  |   3 A$main$3729        1118 GR
  3 A$main$3730        111A GR  |   3 A$main$3731        111E GR
  3 A$main$3732        1120 GR  |   3 A$main$3744        1124 GR
  3 A$main$3745        1126 GR  |   3 A$main$3751        1128 GR
  3 A$main$3752        112A GR  |   3 A$main$3757        112D GR
  3 A$main$3758        1130 GR  |   3 A$main$3759        1134 GR
  3 A$main$3760        1136 GR  |   3 A$main$3768        1139 GR
  3 A$main$3769        113C GR  |   3 A$main$3774        1140 GR
  3 A$main$3775        1143 GR  |   3 A$main$3781        1147 GR
  3 A$main$3782        114A GR  |   3 A$main$3788        114E GR
  3 A$main$3789        1151 GR  |   3 A$main$3795        1155 GR
  3 A$main$3796        1158 GR  |   3 A$main$3802        115C GR
  3 A$main$3803        115F GR  |   3 A$main$3809        1163 GR
  3 A$main$3810        1166 GR  |   3 A$main$3816        116A GR
  3 A$main$3817        116D GR  |   3 A$main$3823        1171 GR
  3 A$main$3824        1174 GR  |   3 A$main$3830        1178 GR
  3 A$main$3831        117B GR  |   3 A$main$3837        117F GR
  3 A$main$3838        1182 GR  |   3 A$main$3844        1186 GR
  3 A$main$3845        1188 GR  |   3 A$main$3850        118B GR
  3 A$main$3856        118F GR  |   3 A$main$3857        1193 GR
  3 A$main$3858        1195 GR  |   3 A$main$3863        1199 GR
  3 A$main$3864        119B GR  |   3 A$main$3869        119D GR
  3 A$main$3870        119F GR  |   3 A$main$3871        11A1 GR
  3 A$main$3873        11A2 GR  |   3 A$main$3876        11A4 GR
  3 A$main$3877        11A6 GR  |   3 A$main$3882        11A9 GR
  3 A$main$3883        11AC GR  |   3 A$main$3884        11AE GR
  3 A$main$3885        11B0 GR  |   3 A$main$3886        11B2 GR
  3 A$main$3887        11B3 GR  |   3 A$main$3888        11B5 GR
  3 A$main$3889        11B8 GR  |   3 A$main$3890        11BA GR
  3 A$main$3891        11BC GR  |   3 A$main$3895        11BE GR
  3 A$main$3896        11C0 GR  |   3 A$main$3901        11C2 GR
  3 A$main$3903        11C5 GR  |   3 A$main$3904        11C7 GR
  3 A$main$3905        11CB GR  |   3 A$main$3907        11CF GR
  3 A$main$3908        11D2 GR  |   3 A$main$3910        11D4 GR
  3 A$main$3911        11D7 GR  |   3 A$main$3912        11D9 GR
  3 A$main$3917        11DD GR  |   3 A$main$3918        11DF GR
  3 A$main$3923        11E1 GR  |   3 A$main$3924        11E3 GR
  3 A$main$3929        11E5 GR  |   3 A$main$3930        11E8 GR
  3 A$main$3931        11EB GR  |   3 A$main$3933        11EE GR
  3 A$main$3934        11F1 GR  |   3 A$main$3936        11F4 GR
  3 A$main$3937        11F7 GR  |   3 A$main$3943        11FA GR
  3 A$main$3944        11FC GR  |   3 A$main$3949        11FE GR
  3 A$main$3950        1200 GR  |   3 A$main$3955        1202 GR
  3 A$main$3956        1205 GR  |   3 A$main$3962        1208 GR
  3 A$main$3964        120B GR  |   3 A$main$3966        120E GR
  3 A$main$3967        1211 GR  |   3 A$main$3968        1213 GR
  3 A$main$3969        1216 GR  |   3 A$main$3970        1218 GR
  3 A$main$3971        121B GR  |   3 A$main$3972        121E GR
  3 A$main$3974        1221 GR  |   3 A$main$3975        1224 GR
  3 A$main$3976        1226 GR  |   3 A$main$3978        122A GR
  3 A$main$3979        122E GR  |   3 A$main$3980        1231 GR
  3 A$main$3981        1234 GR  |   3 A$main$3982        1236 GR
  3 A$main$3983        1239 GR  |   3 A$main$3984        123B GR
  3 A$main$3986        123F GR  |   3 A$main$3987        1242 GR
  3 A$main$3989        1245 GR  |   3 A$main$3990        1248 GR
  3 A$main$3991        1249 GR  |   3 A$main$3992        124A GR
  3 A$main$3993        124D GR  |   3 A$main$3994        124F GR
  3 A$main$3995        1252 GR  |   3 A$main$3996        1255 GR
  3 A$main$3998        1258 GR  |   3 A$main$3999        125A GR
  3 A$main$4000        125C GR  |   3 A$main$4001        125F GR
  3 A$main$4003        1262 GR  |   3 A$main$4004        1265 GR
  3 A$main$4005        1266 GR  |   3 A$main$4006        1267 GR
  3 A$main$4007        126A GR  |   3 A$main$4008        126C GR
  3 A$main$4009        126F GR  |   3 A$main$4010        1272 GR
  3 A$main$4011        1274 GR  |   3 A$main$4012        1277 GR
  3 A$main$4013        127A GR  |   3 A$main$4014        127D GR
  3 A$main$4015        1280 GR  |   3 A$main$4016        1283 GR
  3 A$main$4018        1286 GR  |   3 A$main$4019        1289 GR
  3 A$main$4020        128B GR  |   3 A$main$4022        128F GR
  3 A$main$4023        1292 GR  |   3 A$main$4024        1295 GR
  3 A$main$4025        1298 GR  |   3 A$main$4026        129A GR
  3 A$main$4027        129C GR  |   3 A$main$4028        129E GR
  3 A$main$4029        12A0 GR  |   3 A$main$4031        12A4 GR
  3 A$main$4032        12A6 GR  |   3 A$main$4034        12A9 GR
  3 A$main$4035        12AC GR  |   3 A$main$4037        12AF GR
  3 A$main$4038        12B2 GR  |   3 A$main$4039        12B5 GR
  3 A$main$4040        12B8 GR  |   3 A$main$4041        12BB GR
  3 A$main$4047        12BE GR  |   3 A$main$4048        12C1 GR
  3 A$main$4049        12C4 GR  |   3 A$main$4055        12C7 GR
  3 A$main$4060        12CA GR  |   3 A$main$4061        12CD GR
  3 A$main$4063        12D0 GR  |   3 A$main$4064        12D3 GR
  3 A$main$4069        12D7 GR  |   3 A$main$4070        12D9 GR
  3 A$main$4075        12DB GR  |   3 A$main$4076        12DD GR
  3 A$main$4081        12DF GR  |   3 A$main$4082        12E2 GR
  3 A$main$4083        12E3 GR  |   3 A$main$4084        12E4 GR
  3 A$main$4085        12E5 GR  |   3 A$main$4086        12E6 GR
  3 A$main$4087        12E8 GR  |   3 A$main$4088        12EC GR
  3 A$main$4090        12EF GR  |   3 A$main$4091        12F2 GR
  3 A$main$4092        12F3 GR  |   3 A$main$4093        12F5 GR
  3 A$main$4094        12F7 GR  |   3 A$main$4095        12FA GR
  3 A$main$4096        12FC GR  |   3 A$main$4097        12FE GR
  3 A$main$4098        1302 GR  |   3 A$main$4100        1305 GR
  3 A$main$4101        1308 GR  |   3 A$main$4102        1309 GR
  3 A$main$4103        130B GR  |   3 A$main$4104        130D GR
  3 A$main$4105        1310 GR  |   3 A$main$4106        1312 GR
  3 A$main$4107        1314 GR  |   3 A$main$4108        1318 GR
  3 A$main$4114        131B GR  |   3 A$main$4115        131E GR
  3 A$main$4116        1322 GR  |   3 A$main$4117        1324 GR
  3 A$main$4118        1327 GR  |   3 A$main$4124        132A GR
  3 A$main$4125        132C GR  |   3 A$main$4130        132E GR
  3 A$main$4131        1330 GR  |   3 A$main$4136        1332 GR
  3 A$main$4137        1334 GR  |   3 A$main$4142        1336 GR
  3 A$main$4147        1339 GR  |   3 A$main$4148        133C GR
  3 A$main$4149        1340 GR  |   3 A$main$4150        1342 GR
  3 A$main$4151        1345 GR  |   3 A$main$4153        1348 GR
  3 A$main$4154        134A GR  |   3 A$main$4155        134D GR
  3 A$main$4156        134F GR  |   3 A$main$4158        1353 GR
  3 A$main$4159        1356 GR  |   3 A$main$4160        1357 GR
  3 A$main$4161        1359 GR  |   3 A$main$4162        135B GR
  3 A$main$4163        135D GR  |   3 A$main$4164        135F GR
  3 A$main$4165        1361 GR  |   3 A$main$4166        1365 GR
  3 A$main$4168        1368 GR  |   3 A$main$4169        136B GR
  3 A$main$4170        136C GR  |   3 A$main$4171        136E GR
  3 A$main$4172        1370 GR  |   3 A$main$4173        1373 GR
  3 A$main$4174        1375 GR  |   3 A$main$4175        1377 GR
  3 A$main$4176        137B GR  |   3 A$main$4178        137E GR
  3 A$main$4179        1380 GR  |   3 A$main$4180        1382 GR
  3 A$main$4181        1385 GR  |   3 A$main$4182        1388 GR
  3 A$main$4183        138A GR  |   3 A$main$4185        138E GR
  3 A$main$4186        1391 GR  |   3 A$main$4187        1392 GR
  3 A$main$4188        1394 GR  |   3 A$main$4189        1396 GR
  3 A$main$4190        1398 GR  |   3 A$main$4191        139A GR
  3 A$main$4192        139C GR  |   3 A$main$4193        13A0 GR
  3 A$main$4194        13A3 GR  |   3 A$main$4195        13A6 GR
  3 A$main$4197        13A9 GR  |   3 A$main$4198        13AD GR
  3 A$main$4199        13AF GR  |   3 A$main$4200        13B1 GR
  3 A$main$4202        13B5 GR  |   3 A$main$4203        13B8 GR
  3 A$main$4204        13B9 GR  |   3 A$main$4205        13BB GR
  3 A$main$4206        13BD GR  |   3 A$main$4207        13C0 GR
  3 A$main$4208        13C2 GR  |   3 A$main$4209        13C4 GR
  3 A$main$4210        13C8 GR  |   3 A$main$4211        13CC GR
  3 A$main$4213        13CF GR  |   3 A$main$4214        13D2 GR
  3 A$main$4215        13D4 GR  |   3 A$main$4217        13D8 GR
  3 A$main$4218        13DB GR  |   3 A$main$4219        13DC GR
  3 A$main$4220        13DE GR  |   3 A$main$4221        13E0 GR
  3 A$main$4222        13E3 GR  |   3 A$main$4223        13E5 GR
  3 A$main$4224        13E7 GR  |   3 A$main$4225        13EB GR
  3 A$main$4227        13EE GR  |   3 A$main$4228        13F1 GR
  3 A$main$4229        13F2 GR  |   3 A$main$4230        13F4 GR
  3 A$main$4231        13F6 GR  |   3 A$main$4232        13F8 GR
  3 A$main$4233        13FA GR  |   3 A$main$4234        13FC GR
  3 A$main$4235        1400 GR  |   3 A$main$4241        1403 GR
  3 A$main$4242        1406 GR  |   3 A$main$4243        1409 GR
  3 A$main$4245        140C GR  |   3 A$main$4246        140E GR
  3 A$main$4247        1410 GR  |   3 A$main$4248        1412 GR
  3 A$main$4249        1416 GR  |   3 A$main$4251        1419 GR
  3 A$main$4252        141C GR  |   3 A$main$4253        141E GR
  3 A$main$4254        1420 GR  |   3 A$main$4255        1424 GR
  3 A$main$4257        1427 GR  |   3 A$main$4258        1429 GR
  3 A$main$4259        142C GR  |   3 A$main$4260        142E GR
  3 A$main$4261        1432 GR  |   3 A$main$4263        1434 GR
  3 A$main$4264        1436 GR  |   3 A$main$4265        1439 GR
  3 A$main$4266        143B GR  |   3 A$main$4267        143F GR
  3 A$main$4273        1442 GR  |   3 A$main$4274        1444 GR
  3 A$main$4279        1446 GR  |   3 A$main$4280        1448 GR
  3 A$main$4285        144B GR  |   3 A$main$4286        144E GR
  3 A$main$4287        1450 GR  |   3 A$main$4288        1452 GR
  3 A$main$4289        1454 GR  |   3 A$main$4290        1455 GR
  3 A$main$4291        1457 GR  |   3 A$main$4292        145A GR
  3 A$main$4293        145C GR  |   3 A$main$4294        145E GR
  3 A$main$4298        1460 GR  |   3 A$main$4299        1462 GR
  3 A$main$4304        1464 GR  |   3 A$main$4305        1465 GR
  3 A$main$4310        1468 GR  |   3 A$main$4311        146B GR
  3 A$main$4317        146F GR  |   3 A$main$4318        1471 GR
  3 A$main$4323        1473 GR  |   3 A$main$4324        1475 GR
  3 A$main$4329        1478 GR  |   3 A$main$4330        147B GR
  3 A$main$4331        147D GR  |   3 A$main$4332        147F GR
  3 A$main$4333        1481 GR  |   3 A$main$4334        1482 GR
  3 A$main$4335        1484 GR  |   3 A$main$4336        1487 GR
  3 A$main$4337        1489 GR  |   3 A$main$4338        148B GR
  3 A$main$4342        148D GR  |   3 A$main$4343        148F GR
  3 A$main$4348        1491 GR  |   3 A$main$4349        1493 GR
  3 A$main$4354        1496 GR  |   3 A$main$4355        1499 GR
  3 A$main$4361        149D GR  |   3 A$main$4362        149F GR
  3 A$main$4367        14A1 GR  |   3 A$main$4368        14A3 GR
  3 A$main$4373        14A6 GR  |   3 A$main$4374        14A9 GR
  3 A$main$4375        14AB GR  |   3 A$main$4376        14AD GR
  3 A$main$4377        14AF GR  |   3 A$main$4378        14B0 GR
  3 A$main$4379        14B2 GR  |   3 A$main$4380        14B5 GR
  3 A$main$4381        14B7 GR  |   3 A$main$4382        14B9 GR
  3 A$main$4386        14BB GR  |   3 A$main$4387        14BD GR
  3 A$main$4392        14BF GR  |   3 A$main$4393        14C1 GR
  3 A$main$4398        14C4 GR  |   3 A$main$4399        14C7 GR
  3 A$main$4405        14CB GR  |   3 A$main$4406        14CD GR
  3 A$main$4411        14CF GR  |   3 A$main$4412        14D1 GR
  3 A$main$4417        14D4 GR  |   3 A$main$4418        14D7 GR
  3 A$main$4419        14D9 GR  |   3 A$main$4420        14DB GR
  3 A$main$4421        14DD GR  |   3 A$main$4422        14DE GR
  3 A$main$4423        14E0 GR  |   3 A$main$4424        14E3 GR
  3 A$main$4425        14E5 GR  |   3 A$main$4426        14E7 GR
  3 A$main$4430        14E9 GR  |   3 A$main$4431        14EB GR
  3 A$main$4436        14ED GR  |   3 A$main$4437        14EF GR
  3 A$main$4442        14F2 GR  |   3 A$main$4443        14F5 GR
  3 A$main$4449        14F9 GR  |   3 A$main$4450        14FB GR
  3 A$main$4455        14FD GR  |   3 A$main$4456        14FF GR
  3 A$main$4461        1502 GR  |   3 A$main$4462        1505 GR
  3 A$main$4463        1507 GR  |   3 A$main$4464        1509 GR
  3 A$main$4465        150B GR  |   3 A$main$4466        150C GR
  3 A$main$4467        150E GR  |   3 A$main$4468        1511 GR
  3 A$main$4469        1513 GR  |   3 A$main$4470        1515 GR
  3 A$main$4474        1517 GR  |   3 A$main$4475        1519 GR
  3 A$main$4480        151B GR  |   3 A$main$4481        151D GR
  3 A$main$4486        1520 GR  |   3 A$main$4487        1523 GR
  3 A$main$4493        1527 GR  |   3 A$main$4494        1529 GR
  3 A$main$4499        152B GR  |   3 A$main$4504        152E GR
  3 A$main$4505        1531 GR  |   3 A$main$4506        1533 GR
  3 A$main$4507        1535 GR  |   3 A$main$4508        1537 GR
  3 A$main$4509        1538 GR  |   3 A$main$4510        153A GR
  3 A$main$4511        153D GR  |   3 A$main$4512        153F GR
  3 A$main$4513        1541 GR  |   3 A$main$4517        1543 GR
  3 A$main$4518        1545 GR  |   3 A$main$4523        1547 GR
  3 A$main$4524        1549 GR  |   3 A$main$4529        154C GR
  3 A$main$4530        154F GR  |   3 A$main$4536        1553 GR
  3 A$main$4537        1555 GR  |   3 A$main$4542        1557 GR
  3 A$main$4543        1559 GR  |   3 A$main$4548        155C GR
  3 A$main$4549        155F GR  |   3 A$main$4550        1561 GR
  3 A$main$4551        1563 GR  |   3 A$main$4552        1565 GR
  3 A$main$4553        1566 GR  |   3 A$main$4554        1568 GR
  3 A$main$4555        156B GR  |   3 A$main$4556        156D GR
  3 A$main$4557        156F GR  |   3 A$main$4561        1571 GR
  3 A$main$4562        1573 GR  |   3 A$main$4567        1575 GR
  3 A$main$4568        1577 GR  |   3 A$main$4573        157A GR
  3 A$main$4574        157D GR  |   3 A$main$4580        1581 GR
  3 A$main$4581        1583 GR  |   3 A$main$4586        1585 GR
  3 A$main$4587        1587 GR  |   3 A$main$4592        158A GR
  3 A$main$4593        158D GR  |   3 A$main$4594        158F GR
  3 A$main$4595        1591 GR  |   3 A$main$4596        1593 GR
  3 A$main$4597        1594 GR  |   3 A$main$4598        1596 GR
  3 A$main$4599        1599 GR  |   3 A$main$4600        159B GR
  3 A$main$4601        159D GR  |   3 A$main$4605        159F GR
  3 A$main$4606        15A1 GR  |   3 A$main$4611        15A3 GR
  3 A$main$4612        15A5 GR  |   3 A$main$4617        15A8 GR
  3 A$main$4618        15AB GR  |   3 A$main$4624        15AF GR
  3 A$main$4625        15B1 GR  |   3 A$main$4630        15B3 GR
  3 A$main$4631        15B5 GR  |   3 A$main$4636        15B8 GR
  3 A$main$4637        15BB GR  |   3 A$main$4638        15BD GR
  3 A$main$4639        15BF GR  |   3 A$main$4640        15C1 GR
  3 A$main$4641        15C2 GR  |   3 A$main$4642        15C4 GR
  3 A$main$4643        15C7 GR  |   3 A$main$4644        15C9 GR
  3 A$main$4645        15CB GR  |   3 A$main$4649        15CD GR
  3 A$main$4650        15CF GR  |   3 A$main$4655        15D1 GR
  3 A$main$4656        15D3 GR  |   3 A$main$4661        15D6 GR
  3 A$main$4662        15D9 GR  |   3 A$main$4668        15DD GR
  3 A$main$4669        15DF GR  |   3 A$main$4674        15E1 GR
  3 A$main$4675        15E3 GR  |   3 A$main$4680        15E6 GR
  3 A$main$4681        15E9 GR  |   3 A$main$4682        15EB GR
  3 A$main$4683        15ED GR  |   3 A$main$4684        15EF GR
  3 A$main$4685        15F0 GR  |   3 A$main$4686        15F2 GR
  3 A$main$4687        15F5 GR  |   3 A$main$4688        15F7 GR
  3 A$main$4689        15F9 GR  |   3 A$main$4693        15FB GR
  3 A$main$4694        15FD GR  |   3 A$main$4699        15FF GR
  3 A$main$4704        1602 GR  |   3 A$main$4705        1605 GR
  3 A$main$4711        1609 GR  |   3 A$main$4712        160B GR
  3 A$main$4717        160D GR  |   3 A$main$4718        160F GR
  3 A$main$4723        1612 GR  |   3 A$main$4724        1615 GR
  3 A$main$4725        1617 GR  |   3 A$main$4726        1619 GR
  3 A$main$4727        161B GR  |   3 A$main$4728        161C GR
  3 A$main$4729        161E GR  |   3 A$main$4730        1621 GR
  3 A$main$4731        1623 GR  |   3 A$main$4732        1625 GR
  3 A$main$4736        1627 GR  |   3 A$main$4737        1629 GR
  3 A$main$4742        162B GR  |   3 A$main$4743        162D GR
  3 A$main$4744        1630 GR  |   3 A$main$4746        1633 GR
  3 A$main$4747        1635 GR  |   3 A$main$4748        1638 GR
  3 A$main$4750        163B GR  |   3 A$main$4751        163D GR
  3 A$main$4752        163F GR  |   3 A$main$4753        1641 GR
  3 A$main$4754        1645 GR  |   3 A$main$4755        1647 GR
  3 A$main$4756        1649 GR  |   3 A$main$4757        164B GR
  3 A$main$4759        164E GR  |   3 A$main$4760        1651 GR
  3 A$main$4761        1652 GR  |   3 A$main$4762        1653 GR
  3 A$main$4763        1655 GR  |   3 A$main$4764        1657 GR
  3 A$main$4765        1659 GR  |   3 A$main$4766        165B GR
  3 A$main$4767        165D GR  |   3 A$main$4768        1660 GR
  3 A$main$4769        1662 GR  |   3 A$main$4770        1664 GR
  3 A$main$4771        1666 GR  |   3 A$main$4772        1669 GR
  3 A$main$4774        166C GR  |   3 A$main$4775        166F GR
  3 A$main$4776        1671 GR  |   3 A$main$4777        1673 GR
  3 A$main$4778        1675 GR  |   3 A$main$4779        1679 GR
  3 A$main$4780        167C GR  |   3 A$main$4781        167F GR
  3 A$main$4782        1681 GR  |   3 A$main$4783        1684 GR
  3 A$main$4784        1687 GR  |   3 A$main$4786        168A GR
  3 A$main$4787        168C GR  |   3 A$main$4788        168F GR
  3 A$main$4789        1691 GR  |   3 A$main$4790        1695 GR
  3 A$main$4791        1698 GR  |   3 A$main$4792        169B GR
  3 A$main$4793        169D GR  |   3 A$main$4794        16A0 GR
  3 A$main$4795        16A3 GR  |   3 A$main$4797        16A6 GR
  3 A$main$4798        16A9 GR  |   3 A$main$4799        16AC GR
  3 A$main$4800        16AE GR  |   3 A$main$4801        16B1 GR
  3 A$main$4802        16B4 GR  |   3 A$main$4804        16B7 GR
  3 A$main$4805        16BA GR  |   3 A$main$4806        16BC GR
  3 A$main$4807        16BE GR  |   3 A$main$4808        16C0 GR
  3 A$main$4809        16C4 GR  |   3 A$main$4810        16C7 GR
  3 A$main$4811        16C8 GR  |   3 A$main$4812        16C9 GR
  3 A$main$4813        16CC GR  |   3 A$main$4814        16CE GR
  3 A$main$4815        16D1 GR  |   3 A$main$4816        16D4 GR
  3 A$main$4818        16D7 GR  |   3 A$main$4819        16D9 GR
  3 A$main$4820        16DA GR  |   3 A$main$4821        16DB GR
  3 A$main$4822        16DE GR  |   3 A$main$4823        16E0 GR
  3 A$main$4824        16E3 GR  |   3 A$main$4825        16E6 GR
  3 A$main$4827        16E9 GR  |   3 A$main$4828        16EB GR
  3 A$main$4829        16EE GR  |   3 A$main$4830        16F0 GR
  3 A$main$4831        16F4 GR  |   3 A$main$4832        16F7 GR
  3 A$main$4833        16F8 GR  |   3 A$main$4834        16F9 GR
  3 A$main$4835        16FC GR  |   3 A$main$4836        16FE GR
  3 A$main$4837        1701 GR  |   3 A$main$4838        1704 GR
  3 A$main$4840        1707 GR  |   3 A$main$4841        170A GR
  3 A$main$4842        170C GR  |   3 A$main$4843        170E GR
  3 A$main$4844        1712 GR  |   3 A$main$4845        1715 GR
  3 A$main$4846        1717 GR  |   3 A$main$4847        1719 GR
  3 A$main$4848        171B GR  |   3 A$main$4849        171D GR
  3 A$main$4851        1720 GR  |   3 A$main$4852        1724 GR
  3 A$main$4853        1727 GR  |   3 A$main$4854        172A GR
  3 A$main$4855        172C GR  |   3 A$main$4856        172F GR
  3 A$main$4857        1731 GR  |   3 A$main$4858        1733 GR
  3 A$main$4859        1735 GR  |   3 A$main$4861        1738 GR
  3 A$main$4862        173A GR  |   3 A$main$4863        173C GR
  3 A$main$4864        173E GR  |   3 A$main$4865        1740 GR
  3 A$main$4866        1742 GR  |   3 A$main$4867        1744 GR
  3 A$main$4868        1748 GR  |   3 A$main$4869        174B GR
  3 A$main$4870        174C GR  |   3 A$main$4871        174D GR
  3 A$main$4872        1750 GR  |   3 A$main$4873        1752 GR
  3 A$main$4874        1755 GR  |   3 A$main$4875        1758 GR
  3 A$main$4877        175B GR  |   3 A$main$4878        175E GR
  3 A$main$4879        1761 GR  |   3 A$main$4880        1764 GR
  3 A$main$4881        1765 GR  |   3 A$main$4882        1766 GR
  3 A$main$4883        1769 GR  |   3 A$main$4884        176B GR
  3 A$main$4885        176E GR  |   3 A$main$4886        1771 GR
  3 A$main$4892        1774 GR  |   3 A$main$4893        1777 GR
  3 A$main$4894        177A GR  |   3 A$main$4896        177D GR
  3 A$main$4897        1780 GR  |   3 A$main$4898        1781 GR
  3 A$main$4899        1782 GR  |   3 A$main$4900        1784 GR
  3 A$main$4901        1786 GR  |   3 A$main$4902        1788 GR
  3 A$main$4903        178A GR  |   3 A$main$4909        178D GR
  3 A$main$4910        1790 GR  |   3 A$main$4911        1793 GR
  3 A$main$4917        1796 GR  |   3 A$main$4922        1799 GR
  3 A$main$4923        179B GR  |   3 A$main$4924        179D GR
  3 A$main$4925        17A1 GR  |   3 A$main$4926        17A3 GR
  3 A$main$4932        17A7 GR  |   3 A$main$4933        17A9 GR
  3 A$main$4934        17AB GR  |   3 A$main$4936        17AF GR
  3 A$main$4937        17B2 GR  |   3 A$main$4943        17B5 GR
  3 A$main$4948        17B8 GR  |   3 A$main$4954        17BB GR
  3 A$main$4959        17BE GR  |   3 A$main$4960        17C0 GR
  3 A$main$4961        17C2 GR  |   3 A$main$4962        17C6 GR
  3 A$main$4963        17C8 GR  |   3 A$main$4969        17CC GR
  3 A$main$4970        17CE GR  |   3 A$main$4971        17D0 GR
  3 A$main$4973        17D4 GR  |   3 A$main$4974        17D7 GR
  3 A$main$4980        17DA GR  |   3 A$main$4985        17DD GR
  3 A$main$4991        17E0 GR  |   3 A$main$4998        17E3 GR
  3 A$main$5004        17E6 GR  |   3 A$main$5009        17E9 GR
  3 A$main$5010        17EB GR  |   3 A$main$5011        17ED GR
  3 A$main$5012        17F1 GR  |   3 A$main$5013        17F3 GR
  3 A$main$5019        17F7 GR  |   3 A$main$5020        17F9 GR
  3 A$main$5021        17FB GR  |   3 A$main$5023        17FF GR
  3 A$main$5024        1802 GR  |   3 A$main$5030        1805 GR
  3 A$main$5035        1808 GR  |   3 A$main$5036        180B GR
  3 A$main$5037        180D GR  |   3 A$main$5038        1811 GR
  3 A$main$5039        1813 GR  |   3 A$main$5045        1817 GR
  3 A$main$5046        181A GR  |   3 A$main$5047        181C GR
  3 A$main$5049        1820 GR  |   3 A$main$5050        1823 GR
  3 A$main$5056        1826 GR  |   3 A$main$5061        1829 GR
  3 A$main$5062        182C GR  |   3 A$main$5063        182E GR
  3 A$main$5064        1832 GR  |   3 A$main$5065        1834 GR
  3 A$main$5071        1838 GR  |   3 A$main$5072        183B GR
  3 A$main$5073        183D GR  |   3 A$main$5075        1841 GR
  3 A$main$5076        1844 GR  |   3 A$main$5082        1847 GR
  3 A$main$5087        184A GR  |   3 A$main$5088        184D GR
  3 A$main$5089        184F GR  |   3 A$main$5090        1853 GR
  3 A$main$5091        1855 GR  |   3 A$main$5097        1859 GR
  3 A$main$5103        185C GR  |   3 A$main$5108        185F GR
  3 A$main$5114        1862 GR  |   3 A$main$5119        1865 GR
  3 A$main$5120        1868 GR  |   3 A$main$5121        186A GR
  3 A$main$5122        186E GR  |   3 A$main$5123        1870 GR
  3 A$main$5129        1874 GR  |   3 A$main$5130        1877 GR
  3 A$main$5131        1879 GR  |   3 A$main$5133        187D GR
  3 A$main$5134        1880 GR  |   3 A$main$5140        1883 GR
  3 A$main$5147        1886 GR  |   3 A$main$5153        1889 GR
  3 A$main$5160        188C GR  |   3 A$main$5166        188F GR
  3 A$main$5171        1892 GR  |   3 A$main$5172        1895 GR
  3 A$main$5173        1897 GR  |   3 A$main$5174        189B GR
  3 A$main$5175        189D GR  |   3 A$main$5181        18A1 GR
  3 A$main$5182        18A4 GR  |   3 A$main$5183        18A6 GR
  3 A$main$5185        18AA GR  |   3 A$main$5186        18AD GR
  3 A$main$5192        18B0 GR  |   3 A$main$5197        18B3 GR
  3 A$main$5198        18B6 GR  |   3 A$main$5199        18B8 GR
  3 A$main$5200        18BC GR  |   3 A$main$5201        18BE GR
  3 A$main$5207        18C2 GR  |   3 A$main$5208        18C5 GR
  3 A$main$5209        18C7 GR  |   3 A$main$5211        18CB GR
  3 A$main$5212        18CE GR  |   3 A$main$5218        18D1 GR
  3 A$main$5223        18D4 GR  |   3 A$main$5224        18D6 GR
  3 A$main$5225        18D8 GR  |   3 A$main$5226        18DC GR
  3 A$main$5227        18DE GR  |   3 A$main$5233        18E2 GR
  3 A$main$5234        18E4 GR  |   3 A$main$5235        18E6 GR
  3 A$main$5236        18EA GR  |   3 A$main$5242        18ED GR
  3 A$main$5247        18F0 GR  |   3 A$main$5248        18F2 GR
  3 A$main$5249        18F4 GR  |   3 A$main$5250        18F8 GR
  3 A$main$5251        18FA GR  |   3 A$main$5257        18FE GR
  3 A$main$5258        1900 GR  |   3 A$main$5259        1902 GR
  3 A$main$5260        1906 GR  |   3 A$main$5266        1909 GR
  3 A$main$5271        190C GR  |   3 A$main$5272        190F GR
  3 A$main$5273        1911 GR  |   3 A$main$5274        1915 GR
  3 A$main$5275        1917 GR  |   3 A$main$5281        191B GR
  3 A$main$5282        191E GR  |   3 A$main$5283        1920 GR
  3 A$main$5284        1924 GR  |   3 A$main$5290        1927 GR
  3 A$main$5295        192A GR  |   3 A$main$5301        192D GR
  3 A$main$5306        1930 GR  |   3 A$main$5307        1932 GR
  3 A$main$5308        1934 GR  |   3 A$main$5309        1938 GR
  3 A$main$5310        193A GR  |   3 A$main$5316        193E GR
  3 A$main$5317        1940 GR  |   3 A$main$5318        1942 GR
  3 A$main$5319        1946 GR  |   3 A$main$5325        1949 GR
  3 A$main$5330        194C GR  |   3 A$main$5331        194F GR
  3 A$main$5332        1951 GR  |   3 A$main$5333        1955 GR
  3 A$main$5334        1957 GR  |   3 A$main$5340        195B GR
  3 A$main$5341        195E GR  |   3 A$main$5342        1960 GR
  3 A$main$5343        1964 GR  |   3 A$main$5349        1967 GR
  3 A$main$5354        196A GR  |   3 A$main$5355        196D GR
  3 A$main$5356        196F GR  |   3 A$main$5357        1973 GR
  3 A$main$5358        1975 GR  |   3 A$main$5364        1979 GR
  3 A$main$5370        197C GR  |   3 A$main$5377        197F GR
  3 A$main$5383        1982 GR  |   3 A$main$5390        1985 GR
  3 A$main$5396        1988 GR  |   3 A$main$5401        198B GR
  3 A$main$5402        198E GR  |   3 A$main$5403        1990 GR
  3 A$main$5404        1994 GR  |   3 A$main$5405        1996 GR
  3 A$main$5411        199A GR  |   3 A$main$5412        199D GR
  3 A$main$5413        199F GR  |   3 A$main$5414        19A3 GR
  3 A$main$5420        19A6 GR  |   3 A$main$5425        19A9 GR
  3 A$main$5431        19AC GR  |   3 A$main$5438        19AF GR
  3 A$main$5444        19B2 GR  |   3 A$main$5449        19B5 GR
  3 A$main$5450        19B8 GR  |   3 A$main$5451        19BA GR
  3 A$main$5452        19BE GR  |   3 A$main$5453        19C0 GR
  3 A$main$5459        19C4 GR  |   3 A$main$5460        19C7 GR
  3 A$main$5461        19C9 GR  |   3 A$main$5462        19CD GR
  3 A$main$5468        19D0 GR  |   3 A$main$5473        19D3 GR
  3 A$main$5479        19D6 GR  |   3 A$main$5484        19D9 GR
  3 A$main$5485        19DC GR  |   3 A$main$5486        19DE GR
  3 A$main$5487        19E2 GR  |   3 A$main$5488        19E4 GR
  3 A$main$5494        19E8 GR  |   3 A$main$5495        19EB GR
  3 A$main$5496        19ED GR  |   3 A$main$5497        19F1 GR
  3 A$main$5503        19F4 GR  |   3 A$main$5504        19F7 GR
  3 A$main$5505        19FA GR  |   3 A$main$5511        19FD GR
  3 A$main$5516        1A00 GR  |   3 A$main$5517        1A03 GR
  3 A$main$5518        1A05 GR  |   3 A$main$5519        1A09 GR
  3 A$main$5525        1A0C GR  |   3 A$main$5530        1A0F GR
  3 A$main$5531        1A12 GR  |   3 A$main$5532        1A14 GR
  3 A$main$5533        1A18 GR  |   3 A$main$5539        1A1B GR
  3 A$main$5544        1A1E GR  |   3 A$main$5545        1A21 GR
  3 A$main$5546        1A23 GR  |   3 A$main$5547        1A27 GR
  3 A$main$5553        1A2A GR  |   3 A$main$5558        1A2D GR
  3 A$main$5559        1A2F GR  |   3 A$main$5560        1A31 GR
  3 A$main$5561        1A35 GR  |   3 A$main$5567        1A38 GR
  3 A$main$5572        1A3B GR  |   3 A$main$5573        1A3D GR
  3 A$main$5574        1A3F GR  |   3 A$main$5575        1A43 GR
  3 A$main$5581        1A46 GR  |   3 A$main$5586        1A49 GR
  3 A$main$5587        1A4B GR  |   3 A$main$5588        1A4D GR
  3 A$main$5589        1A51 GR  |   3 A$main$5595        1A54 GR
  3 A$main$5600        1A57 GR  |   3 A$main$5601        1A5A GR
  3 A$main$5602        1A5C GR  |   3 A$main$5603        1A60 GR
  3 A$main$5609        1A63 GR  |   3 A$main$5614        1A66 GR
  3 A$main$5620        1A69 GR  |   3 A$main$5625        1A6C GR
  3 A$main$5626        1A6F GR  |   3 A$main$5627        1A71 GR
  3 A$main$5628        1A75 GR  |   3 A$main$5634        1A78 GR
  3 A$main$5639        1A7B GR  |   3 A$main$5640        1A7E GR
  3 A$main$5641        1A80 GR  |   3 A$main$5642        1A84 GR
  3 A$main$5648        1A87 GR  |   3 A$main$5653        1A8A GR
  3 A$main$5654        1A8D GR  |   3 A$main$5655        1A8F GR
  3 A$main$5656        1A93 GR  |   3 A$main$5662        1A96 GR
  3 A$main$5667        1A99 GR  |   3 A$main$5673        1A9C GR
  3 A$main$5678        1A9F GR  |   3 A$main$5679        1AA2 GR
  3 A$main$5680        1AA4 GR  |   3 A$main$5681        1AA8 GR
  3 A$main$5687        1AAB GR  |   3 A$main$5692        1AAE GR
  3 A$main$5693        1AB0 GR  |   3 A$main$5694        1AB2 GR
  3 A$main$5695        1AB6 GR  |   3 A$main$5701        1AB9 GR
  3 A$main$5706        1ABC GR  |   3 A$main$5707        1ABF GR
  3 A$main$5708        1AC1 GR  |   3 A$main$5709        1AC5 GR
  3 A$main$5715        1AC8 GR  |   3 A$main$5720        1ACB GR
  3 A$main$5721        1ACD GR  |   3 A$main$5722        1ACF GR
  3 A$main$5723        1AD3 GR  |   3 A$main$5729        1AD6 GR
  3 A$main$5734        1AD9 GR  |   3 A$main$5735        1ADB GR
  3 A$main$5736        1ADD GR  |   3 A$main$5737        1AE1 GR
  3 A$main$5743        1AE4 GR  |   3 A$main$5748        1AE7 GR
  3 A$main$5749        1AEA GR  |   3 A$main$5750        1AEC GR
  3 A$main$5751        1AF0 GR  |   3 A$main$5753        1AF3 GR
  3 A$main$5754        1AF6 GR  |   3 A$main$5756        1AF9 GR
  3 A$main$5757        1AFC GR  |   3 A$main$5759        1AFF GR
  3 A$main$5760        1B02 GR  |   3 A$main$5762        1B05 GR
  3 A$main$5763        1B08 GR  |   3 A$main$5765        1B0B GR
  3 A$main$5766        1B0E GR  |   3 A$main$5768        1B11 GR
  3 A$main$5769        1B14 GR  |   3 A$main$5771        1B17 GR
  3 A$main$5772        1B1A GR  |   3 A$main$5774        1B1D GR
  3 A$main$5775        1B20 GR  |   3 A$main$5777        1B23 GR
  3 A$main$5778        1B26 GR  |   3 A$main$5780        1B29 GR
  3 A$main$5781        1B2C GR  |   3 A$main$5783        1B2F GR
  3 A$main$5784        1B32 GR  |   3 A$main$5786        1B35 GR
  3 A$main$5787        1B38 GR  |   3 A$main$5789        1B3B GR
  3 A$main$5790        1B3E GR  |   3 A$main$5792        1B41 GR
  3 A$main$5793        1B44 GR  |   3 A$main$5795        1B47 GR
  3 A$main$5796        1B4A GR  |   3 A$main$5798        1B4D GR
  3 A$main$5799        1B50 GR  |   3 A$main$5801        1B53 GR
  3 A$main$5802        1B56 GR  |   3 A$main$5804        1B59 GR
  3 A$main$5805        1B5C GR  |   3 A$main$5807        1B5F GR
  3 A$main$5808        1B62 GR  |   3 A$main$5810        1B65 GR
  3 A$main$5811        1B68 GR  |   3 A$main$5813        1B6B GR
  3 A$main$5814        1B6E GR  |   3 A$main$5816        1B71 GR
  3 A$main$5817        1B74 GR  |   3 A$main$5819        1B77 GR
  3 A$main$5820        1B7A GR  |   3 A$main$5822        1B7D GR
  3 A$main$5823        1B80 GR  |   3 A$main$5825        1B83 GR
  3 A$main$5826        1B86 GR  |   3 A$main$5828        1B89 GR
  3 A$main$5829        1B8C GR  |   3 A$main$5831        1B8F GR
  3 A$main$5832        1B92 GR  |   3 A$main$5834        1B95 GR
  3 A$main$5835        1B98 GR  |   3 A$main$5837        1B9B GR
  3 A$main$5838        1B9E GR  |   3 A$main$5840        1BA1 GR
  3 A$main$5841        1BA4 GR  |   3 A$main$5843        1BA7 GR
  3 A$main$5844        1BAA GR  |   3 A$main$5846        1BAD GR
  3 A$main$5847        1BB0 GR  |   3 A$main$5849        1BB3 GR
  3 A$main$5850        1BB6 GR  |   3 A$main$5852        1BB9 GR
  3 A$main$5853        1BBC GR  |   3 A$main$5855        1BBF GR
  3 A$main$5856        1BC2 GR  |   3 A$main$5858        1BC5 GR
  3 A$main$5859        1BC8 GR  |   3 A$main$5861        1BCB GR
  3 A$main$5862        1BCE GR  |   3 A$main$5864        1BD1 GR
  3 A$main$5865        1BD4 GR  |   3 A$main$5867        1BD7 GR
  3 A$main$5868        1BDA GR  |   3 A$main$5870        1BDD GR
  3 A$main$5871        1BE0 GR  |   3 A$main$5873        1BE3 GR
  3 A$main$5874        1BE6 GR  |   3 A$main$5876        1BE9 GR
  3 A$main$5877        1BEC GR  |   3 A$main$5879        1BEF GR
  3 A$main$5880        1BF2 GR  |   3 A$main$5882        1BF5 GR
  3 A$main$5883        1BF8 GR  |   3 A$main$5900        1C9E GR
  3 A$main$5901        1CA0 GR  |   3 A$main$5906        1CA2 GR
  3 A$main$5911        1CA5 GR  |   3 A$main$5912        1CA8 GR
  3 A$main$5913        1CA9 GR  |   3 A$main$5918        1CAB GR
  3 A$main$5919        1CAD GR  |   3 A$main$5920        1CB0 GR
  3 A$main$5921        1CB2 GR  |   3 A$main$5922        1CB4 GR
  3 A$main$5923        1CB7 GR  |   3 A$main$5924        1CB9 GR
  3 A$main$5935        1CBC GR  |   3 A$main$5936        1CBE GR
  3 A$main$5937        1CC1 GR  |   3 A$main$5938        1CC2 GR
  3 A$main$5939        1CC3 GR  |   3 A$main$5940        1CC4 GR
  3 A$main$5941        1CC6 GR  |   3 A$main$5942        1CCA GR
  3 A$main$5947        1CCC GR  |   3 A$main$5948        1CCF GR
  3 A$main$5949        1CD2 GR  |   3 A$main$5950        1CD5 GR
  3 A$main$5951        1CD7 GR  |   3 A$main$5956        1CDA GR
  3 A$main$5957        1CDC GR  |   3 A$main$5958        1CDF GR
  3 A$main$5959        1CE0 GR  |   3 A$main$5960        1CE1 GR
  3 A$main$5961        1CE2 GR  |   3 A$main$5962        1CE4 GR
  3 A$main$5967        1CE9 GR  |   3 A$main$5968        1CEC GR
  3 A$main$5969        1CEE GR  |   3 A$main$5970        1CEF GR
  3 A$main$5971        1CF1 GR  |   3 A$main$5972        1CF4 GR
  3 A$main$5973        1CF5 GR  |   3 A$main$5974        1CF8 GR
  3 A$main$5975        1CFA GR  |   3 A$main$5976        1CFC GR
  3 A$main$5977        1CFE GR  |   3 A$main$5978        1D00 GR
  3 A$main$5979        1D02 GR  |   3 A$main$5980        1D05 GR
  3 A$main$5981        1D07 GR  |   3 A$main$5986        1D0A GR
  3 A$main$5987        1D0C GR  |   3 A$main$5988        1D0F GR
  3 A$main$5989        1D10 GR  |   3 A$main$5990        1D11 GR
  3 A$main$5991        1D12 GR  |   3 A$main$5992        1D14 GR
  3 A$main$5997        1D18 GR  |   3 A$main$6002        1D1B GR
  3 A$main$6003        1D1E GR  |   3 A$main$6004        1D20 GR
  3 A$main$6005        1D24 GR  |   3 A$main$6006        1D26 GR
  3 A$main$6007        1D28 GR  |   3 A$main$6008        1D2A GR
  3 A$main$6009        1D2C GR  |   3 A$main$6010        1D2F GR
  3 A$main$6011        1D31 GR  |   3 A$main$6016        1D33 GR
  3 A$main$6017        1D36 GR  |   3 A$main$6022        1D38 GR
  3 A$main$6027        1D3C GR  |   3 A$main$6028        1D3F GR
  3 A$main$6030        1D41 GR  |   3 A$main$6031        1D44 GR
  3 A$main$6032        1D46 GR  |   3 A$main$6038        1D4A GR
  3 A$main$6039        1D4D GR  |   3 A$main$6040        1D50 GR
  3 A$main$6041        1D53 GR  |   3 A$main$6042        1D56 GR
  3 A$main$6043        1D59 GR  |   3 A$main$6044        1D5C GR
  3 A$main$6049        1D5F GR  |   3 A$main$6050        1D62 GR
  3 A$main$6051        1D65 GR  |   3 A$main$6052        1D68 GR
  3 A$main$6053        1D6B GR  |   3 A$main$6054        1D6E GR
  3 A$main$6055        1D71 GR  |   3 A$main$6060        1D74 GR
  3 A$main$6061        1D77 GR  |   3 A$main$6062        1D7A GR
  3 A$main$6067        1D7D GR  |   3 A$main$6068        1D80 GR
  3 A$main$6073        1D83 GR  |   3 A$main$6074        1D86 GR
  3 A$main$6081        1D89 GR  |   3 A$main$6086        1D8C GR
  3 A$main$6091        1D8F GR  |   3 A$main$6096        1D92 GR
  3 A$main$6101        1D95 GR  |   3 A$main$6106        1D98 GR
  3 A$main$6111        1D9B GR  |   3 A$main$6116        1D9E GR
  3 A$main$6121        1DA1 GR  |   3 A$main$6126        1DA4 GR
  3 A$main$6131        1DA7 GR  |   3 A$main$6136        1DAA GR
  3 A$main$6137        1DAC GR  |   3 A$main$6138        1DAF GR
  3 A$main$6139        1DB1 GR  |   3 A$main$6140        1DB4 GR
  3 A$main$6141        1DB6 GR  |   3 A$main$6142        1DB9 GR
  3 A$main$6157        1DBC GR  |   3 A$main$6162        1DBF GR
  3 A$main$6163        1DC2 GR  |   3 A$main$6168        1DC5 GR
  3 A$main$6169        1DC8 GR  |   3 A$main$6174        1DCB GR
  3 A$main$6175        1DCD GR  |   3 A$main$6176        1DCF GR
  3 A$main$6177        1DD1 GR  |   3 A$main$6178        1DD3 GR
  3 A$main$6179        1DD5 GR  |   3 A$main$6180        1DD7 GR
  3 A$main$6186        1DD9 GR  |   3 A$main$6191        1DDC GR
  3 A$main$6196        1DDF GR  |   3 A$main$6197        1DE1 GR
  3 A$main$6202        1DE3 GR  |   3 A$main$6203        1DE5 GR
  3 A$main$6208        1DE8 GR  |   3 A$main$6213        1DEB GR
  3 A$main$6214        1DEC GR  |   3 A$main$6219        1DEF GR
  3 A$main$6220        1DF1 GR  |   3 A$main$6225        1DF4 GR
  3 A$main$6226        1DF6 GR  |   3 A$main$6231        1DF9 GR
  3 A$main$6232        1DFB GR  |   3 A$main$6233        1DFD GR
  3 A$main$6234        1DFF GR  |   3 A$main$6239        1E02 GR
  3 A$main$6240        1E04 GR  |   3 A$main$6241        1E06 GR
  3 A$main$6242        1E08 GR  |   3 A$main$6247        1E0B GR
  3 A$main$6248        1E0D GR  |   3 A$main$6249        1E0F GR
  3 A$main$6250        1E11 GR  |   3 A$main$6251        1E13 GR
  3 A$main$6256        1E16 GR  |   3 A$main$6257        1E18 GR
  3 A$main$6262        1E1A GR  |   3 A$main$6263        1E1C GR
  3 A$main$6264        1E1E GR  |   3 A$main$6265        1E1F GR
  3 A$main$6270        1E22 GR  |   3 A$main$6271        1E24 GR
  3 A$main$6276        1E26 GR  |   3 A$main$6281        1E29 GR
  3 A$main$6282        1E2A GR  |   3 A$main$6286        1E2C GR
  3 A$main$6287        1E2E GR  |   3 A$main$6288        1E30 GR
  3 A$main$6293        1E34 GR  |   3 A$main$6298        1E36 GR
  3 A$main$6299        1E38 GR  |   3 A$main$6300        1E3A GR
  3 A$main$6306        1E3E GR  |   3 A$main$6307        1E40 GR
  3 A$main$6312        1E42 GR  |   3 A$main$6313        1E44 GR
  3 A$main$6314        1E46 GR  |   3 A$main$6315        1E48 GR
  3 A$main$6320        1E4B GR  |   3 A$main$6321        1E4D GR
  3 A$main$6326        1E4F GR  |   3 A$main$6327        1E51 GR
  3 A$main$6332        1E54 GR  |   3 A$main$6337        1E57 GR
  3 A$main$6338        1E59 GR  |   3 A$main$6343        1E5C GR
  3 A$main$6344        1E5D GR  |   3 A$main$6348        1E5F GR
  3 A$main$6349        1E61 GR  |   3 A$main$6354        1E63 GR
  3 A$main$6355        1E66 GR  |   3 A$main$6356        1E68 GR
  3 A$main$6357        1E6A GR  |   3 A$main$6358        1E6B GR
  3 A$main$6359        1E6D GR  |   3 A$main$6360        1E6F GR
  3 A$main$6366        1E71 GR  |   3 A$main$6367        1E73 GR
  3 A$main$6368        1E75 GR  |   3 A$main$6369        1E77 GR
  3 A$main$6370        1E79 GR  |   3 A$main$6371        1E7B GR
  3 A$main$6372        1E7D GR  |   3 A$main$6378        1E81 GR
  3 A$main$6379        1E83 GR  |   3 A$main$6380        1E85 GR
  3 A$main$6386        1E89 GR  |   3 A$main$6387        1E8B GR
  3 A$main$6388        1E8D GR  |   3 A$main$6389        1E8F GR
  3 A$main$6390        1E90 GR  |   3 A$main$6396        1E92 GR
  3 A$main$6397        1E94 GR  |   3 A$main$6402        1E98 GR
  3 A$main$6409        1E9A GR  |   3 A$main$6414        1E9D GR
  3 A$main$6415        1E9F GR  |   3 A$main$6416        1EA1 GR
  3 A$main$6417        1EA5 GR  |   3 A$main$6418        1EA7 GR
  3 A$main$6419        1EA9 GR  |   3 A$main$6420        1EAB GR
  3 A$main$6421        1EAD GR  |   3 A$main$6426        1EB1 GR
  3 A$main$6427        1EB4 GR  |   3 A$main$6432        1EB7 GR
  3 A$main$6433        1EBA GR  |   3 A$main$6434        1EBD GR
  3 A$main$6440        1EC0 GR  |   3 A$main$6445        1EC2 GR
  3 A$main$6446        1EC4 GR  |   3 A$main$6447        1EC6 GR
  3 A$main$6448        1ECA GR  |   3 A$main$6449        1ECC GR
  3 A$main$6450        1ECE GR  |   3 A$main$6452        1ED1 GR
  3 A$main$6453        1ED3 GR  |   3 A$main$6460        1ED7 GR
  3 A$main$6461        1ED9 GR  |   3 A$main$6462        1EDB GR
  3 A$main$6463        1EDD GR  |   3 A$main$6464        1EDF GR
  3 A$main$6465        1EE1 GR  |   3 A$main$6466        1EE3 GR
  3 A$main$6468        1EE6 GR  |   3 A$main$6469        1EE8 GR
  3 A$main$6477        1EEB GR  |   3 A$main$6478        1EED GR
  3 A$main$6479        1EEF GR  |   3 A$main$6484        1EF1 GR
  3 A$main$6485        1EF3 GR  |   3 A$main$6486        1EF5 GR
  3 A$main$6487        1EF7 GR  |   3 A$main$6488        1EF9 GR
  3 A$main$6489        1EFB GR  |   3 A$main$6495        1EFE GR
  3 A$main$6496        1F01 GR  |   3 A$main$6501        1F04 GR
  3 A$main$6502        1F07 GR  |   3 A$main$6503        1F0A GR
  3 A$main$6504        1F0C GR  |   3 A$main$6505        1F0E GR
  3 A$main$6507        1F11 GR  |   3 A$main$6508        1F13 GR
  3 A$main$6514        1F16 GR  |   3 A$main$6515        1F18 GR
  3 A$main$6523        1F1A GR  |   3 A$main$6524        1F1D GR
  3 A$main$6529        1F20 GR  |   3 A$main$6530        1F23 GR
  3 A$main$6535        1F26 GR  |   3 A$main$6536        1F29 GR
  3 A$main$6537        1F2C GR  |   3 A$main$6538        1F2F GR
  3 A$main$6543        1F32 GR  |   3 A$main$6544        1F35 GR
  3 A$main$6549        1F38 GR  |   3 A$main$6550        1F3B GR
  3 A$main$6555        1F3E GR  |   3 A$main$6556        1F41 GR
  3 A$main$6561        1F44 GR  |   3 A$main$6562        1F47 GR
  3 A$main$6563        1F4A GR  |   3 A$main$6564        1F4D GR
  3 A$main$6569        1F50 GR  |   3 A$main$6570        1F53 GR
  3 A$main$6571        1F56 GR  |   3 A$main$6572        1F58 GR
  3 A$main$6573        1F5A GR  |   3 A$main$6574        1F5C GR
  3 A$main$6575        1F5D GR  |   3 A$main$6576        1F5F GR
  3 A$main$6577        1F63 GR  |   3 A$main$6578        1F67 GR
  3 A$main$6579        1F6A GR  |   3 A$main$6580        1F6D GR
  3 A$main$6581        1F70 GR  |   3 A$main$6582        1F73 GR
  3 A$main$6583        1F76 GR  |   3 A$main$6589        1F79 GR
  3 A$main$6590        1F7C GR  |   3 A$main$6591        1F7F GR
  3 A$main$6592        1F81 GR  |   3 A$main$6593        1F83 GR
  3 A$main$6594        1F85 GR  |   3 A$main$6595        1F86 GR
  3 A$main$6596        1F88 GR  |   3 A$main$6597        1F8C GR
  3 A$main$6598        1F90 GR  |   3 A$main$6599        1F93 GR
  3 A$main$6600        1F96 GR  |   3 A$main$6601        1F99 GR
  3 A$main$6602        1F9C GR  |   3 A$main$6603        1F9F GR
  3 A$main$6604        1FA2 GR  |   3 A$main$6605        1FA5 GR
  3 A$main$6606        1FA8 GR  |   3 A$main$6607        1FAB GR
  3 A$main$6613        1FAE GR  |   3 A$main$6614        1FB1 GR
  3 A$main$6615        1FB4 GR  |   3 A$main$6616        1FB6 GR
  3 A$main$6617        1FB8 GR  |   3 A$main$6618        1FBA GR
  3 A$main$6619        1FBB GR  |   3 A$main$6620        1FBD GR
  3 A$main$6621        1FC1 GR  |   3 A$main$6622        1FC5 GR
  3 A$main$6623        1FC8 GR  |   3 A$main$6624        1FCB GR
  3 A$main$6625        1FCE GR  |   3 A$main$6631        1FD1 GR
  3 A$main$6636        1FD4 GR  |   3 A$main$6637        1FD7 GR
  3 A$main$6644        1FDA GR  |   3 A$main$6645        1FDC GR
  3 A$main$6647        1FDE GR  |   3 A$main$6648        1FE1 GR
  3 A$main$6649        1FE3 GR  |   3 A$main$6654        1FE7 GR
  3 A$main$6655        1FEA GR  |   3 A$main$6660        1FEC GR
  3 A$main$6665        1FF0 GR  |   3 A$main$6666        1FF3 GR
  3 A$main$6668        1FF6 GR  |   3 A$main$6669        1FF9 GR
  3 A$main$6670        1FFC GR  |   3 A$main$6671        1FFF GR
  3 A$main$6672        2002 GR  |   3 A$main$6673        2005 GR
  3 A$main$6674        2008 GR  |   3 A$main$6675        200B GR
  3 A$main$6676        200E GR  |   3 A$main$6678        2011 GR
  3 A$main$6679        2014 GR  |   3 A$main$6680        2017 GR
  3 A$main$6681        201A GR  |   3 A$main$6682        201D GR
  3 A$main$6683        2020 GR  |   3 A$main$6684        2023 GR
  3 A$main$6685        2026 GR  |   3 A$main$6686        2029 GR
  3 A$main$6687        202C GR  |   3 A$main$6688        202F GR
  3 A$main$6689        2032 GR  |   3 A$main$6690        2035 GR
  3 A$main$6691        2038 GR  |   3 A$main$6692        203B GR
  3 A$main$6693        203E GR  |   3 A$main$6694        2041 GR
  3 A$main$6695        2044 GR  |   3 A$main$6696        2047 GR
  3 A$main$6697        204A GR  |   3 A$main$6698        204D GR
  3 A$main$6700        2050 GR  |   3 A$main$6701        2053 GR
  3 A$main$6702        2056 GR  |   3 A$main$6703        2059 GR
  3 A$main$6704        205C GR  |   3 A$main$6705        205F GR
  3 A$main$6706        2062 GR  |   3 A$main$6707        2065 GR
  3 A$main$6708        2068 GR  |   3 A$main$6709        206B GR
  3 A$main$6710        206E GR  |   3 A$main$6711        2071 GR
  3 A$main$6712        2074 GR  |   3 A$main$6718        2077 GR
  3 A$main$6719        207A GR  |   3 A$main$6724        207C GR
  3 A$main$6729        2080 GR  |   3 A$main$6730        2083 GR
  3 A$main$6733        2086 GR  |   3 A$main$6734        2087 GR
  3 A$main$890         03A9 GR  |   3 A$main$891         03AB GR
  3 A$main$896         03AD GR  |   3 A$main$901         03B0 GR
  3 A$main$911         03B3 GR  |   3 A$main$912         03B5 GR
  3 A$main$917         03B8 GR  |   3 A$main$918         03BB GR
  3 A$main$925         03BE GR  |   3 A$main$926         03C1 GR
  3 A$main$931         03C4 GR  |   3 A$main$932         03C7 GR
  3 A$main$937         03CA GR  |   3 A$main$938         03CC GR
  3 A$main$944         03CE GR  |   3 A$main$945         03D0 GR
  3 A$main$946         03D2 GR  |   3 A$main$952         03D6 GR
  3 A$main$953         03D8 GR  |   3 A$main$959         03DC GR
  3 A$main$960         03DE GR  |   3 A$main$966         03E2 GR
  3 A$main$967         03E4 GR  |   3 A$main$973         03E8 GR
  3 A$main$974         03EB GR  |   3 A$main$980         03EF GR
  3 A$main$985         03F2 GR  |   3 A$main$990         03F5 GR
  3 A$main$995         03F8 GR  |   3 A$main$996         03FA GR
  3 L102               164E R   |   3 L103               0AFA R
  3 L104               0B08 R   |   3 L105               0B0A R
  3 L106               0B62 R   |   3 L109               193E R
  3 L110               0B5E R   |   3 L113               17CC R
  3 L116               0B84 R   |   3 L117               0B86 R
  3 L118               1286 R   |   3 L119               0B95 R
  3 L12                046F R   |   3 L120               128F R
  3 L121               138E R   |   3 L122               12A4 R
  3 L124               0BEE R   |   3 L127               18E2 R
  3 L128               0BEA R   |   3 L13                047D R
  3 L131               17A7 R   |   3 L134               0C01 R
  3 L135               0C04 R   |   3 L136               0C43 R
  3 L138               0C3F R   |   3 L14                0491 R
  3 L140               1262 R   |   3 L141               0C5F R
  3 L142               0C6D R   |   3 L143               0C70 R
  3 L144               0CCC R   |   3 L147               195B R
  3 L148               0CC8 R   |   3 L15                04AB R
  3 L151               1838 R   |   3 L154               0D35 R
  3 L157               1979 R   |   3 L158               0D31 R
  3 L16                04AE R   |   3 L161               1859 R
  3 L164               1258 R   |   3 L165               0D59 R
  3 L166               0D67 R   |   3 L167               0D6A R
  3 L168               0DC7 R   |   3 L171               19E8 R
  3 L172               0DC3 R   |   3 L175               1874 R
  3 L178               1245 R   |   3 L179               0DD7 R
  3 L18                05C0 R   |   3 L180               0E18 R
  3 L182               0E14 R   |   3 L185               0E3C R
  3 L186               12AF R   |   3 L187               0E45 R
  3 L188               1221 R   |   3 L189               0E53 R
  3 L19                05C9 R   |   3 L190               122A R
  3 L191               13B5 R   |   3 L192               123F R
  3 L194               0EAF R   |   3 L197               191B R
  3 L198               0EAB R   |   3 L2                 03B3 R
  3 L20                0635 R   |   3 L201               1817 R
  3 L204               16D7 R   |   3 L205               0EC3 R
  3 L206               0ED1 R   |   3 L207               0ED4 R
  3 L208               0F31 R   |   3 L211               199A R
  3 L212               0F2D R   |   3 L215               18A1 R
  3 L218               175B R   |   3 L219               0F4D R
  3 L22                0643 R   |   3 L220               120E R
  3 L221               0F66 R   |   3 L222               0F87 R
  3 L223               0F7E R   |   3 L224               13D8 R
  3 L225               0F8A R   |   3 L226               0FE9 R
  3 L229               19C4 R   |   3 L230               0FE5 R
  3 L233               18C2 R   |   3 L236               0FF6 R
  3 L237               0FF9 R   |   3 L238               103A R
  3 L24                05EB R   |   3 L240               1036 R
  3 L242               104A R   |   3 L243               104D R
  3 L244               108C R   |   3 L246               1088 R
  3 L248               16A6 R   |   3 L249               1099 R
  3 L25                05D3 R   |   3 L250               10DA R
  3 L252               10D6 R   |   3 L254               10E4 R
  3 L255               10E7 R   |   3 L256               1128 R
  3 L258               1124 R   |   3 L26                05E3 R
  3 L260               1633 R   |   3 L261               1139 R
  3 L263               1147 R   |   3 L264               114E R
  3 L265               1155 R   |   3 L266               115C R
  3 L267               1163 R   |   3 L268               116A R
  3 L269               1171 R   |   3 L27                05DD R
  3 L270               1178 R   |   3 L271               117F R
  3 L272               1186 R   |   3 L273               11C5 R
  3 L274               118F R   |   3 L275               11CF R
  3 L278               17FF R   |   3 L280               17D4 R
  3 L282               17AF R   |   3 L284               1841 R
  3 L286               187D R   |   3 L288               1820 R
  3 L29                05F3 R   |   3 L290               18AA R
  3 L292               18CB R   |   3 L293               11F4 R
  3 L294               11EE R   |   3 L295               12C7 R
  3 L296               132A R   |   3 L297               131B R
  3 L298               12BE R   |   3 L299               1774 R
  3 L3                 03E8 R   |   3 L30                0651 R
  3 L300               1403 R   |   3 L301               178D R
  3 L302               19F4 R   |   3 L303               1208 R
  3 L304               11FA R   |   3 L305               1707 R
  3 L306               1348 R   |   3 L307               1419 R
  3 L308               18ED R   |   3 L309               17E6 R
  3 L31                0656 R   |   3 L310               1A2A R
  3 L311               1AC8 R   |   3 L312               1B05 R
  3 L313               13EE R   |   3 L314               192D R
  3 L315               17BB R   |   3 L316               1A38 R
  3 L317               1AD6 R   |   3 L318               1B17 R
  3 L319               163B R   |   3 L320               18D1 R
  3 L321               1796 R   |   3 L322               1A46 R
  3 L323               1AAB R   |   3 L324               1AF9 R
  3 L325               16E9 R   |   3 L326               1927 R
  3 L327               17B5 R   |   3 L328               12EF R
  3 L329               1949 R   |   3 L33                0678 R
  3 L330               1826 R   |   3 L331               1A54 R
  3 L332               1A87 R   |   3 L333               1B0B R
  3 L334               1967 R   |   3 L335               1847 R
  3 L336               1A63 R   |   3 L337               1A96 R
  3 L338               1305 R   |   3 L339               19D6 R
  3 L34                0684 R   |   3 L340               1862 R
  3 L341               1A69 R   |   3 L342               1A78 R
  3 L343               1B11 R   |   3 L344               19D0 R
  3 L345               185C R   |   3 L346               1738 R
  3 L347               12A9 R   |   3 L348               1909 R
  3 L349               1805 R   |   3 L350               19FD R
  3 L351               1AE4 R   |   3 L352               1B1D R
  3 L353               1368 R   |   3 L354               1988 R
  3 L355               188F R   |   3 L356               1A0C R
  3 L357               1A9C R   |   3 L358               1AF3 R
  3 L359               13CF R   |   3 L36                06A4 R
  3 L360               1427 R   |   3 L361               19B2 R
  3 L362               18B0 R   |   3 L363               1A1B R
  3 L364               1AB9 R   |   3 L365               1AFF R
  3 L366               16B7 R   |   3 L367               19A6 R
  3 L368               17DA R   |   3 L369               168A R
  3 L37                0834 R   |   3 L370               1982 R
  3 L371               17E0 R   |   3 L372               197C R
  3 L373               1883 R   |   3 L374               166C R
  3 L375               19AC R   |   3 L376               1889 R
  3 L377               1442 R   |   3 L378               146F R
  3 L379               149D R   |   3 L380               14CB R
  3 L381               14F9 R   |   3 L382               1527 R
  3 L383               1553 R   |   3 L384               1581 R
  3 L385               15AF R   |   3 L386               15DD R
  3 L387               1609 R   |   3 L388               13A9 R
  3 L389               1434 R   |   3 L39                072E R
  3 L390               137E R   |   3 L391               140C R
  3 L392               1BA1 R   |   3 L393               1BF5 R
  3 L394               1B71 R   |   3 L395               1BE9 R
  3 L396               1BB3 R   |   3 L397               1BD7 R
  3 L398               1B9B R   |   3 L399               1BEF R
  3 L4                 03CE R   |   3 L40                07F2 R
  3 L400               1BAD R   |   3 L401               1BD1 R
  3 L402               1BB9 R   |   3 L403               1BDD R
  3 L404               1BA7 R   |   3 L405               1BCB R
  3 L406               1B6B R   |   3 L407               1BE3 R
  3 L408               1BBF R   |   3 L409               1BC5 R
  3 L410               1B23 R   |   3 L411               1B8F R
  3 L412               1B29 R   |   3 L413               1B95 R
  3 L414               1B35 R   |   3 L415               1B7D R
  3 L416               1B47 R   |   3 L417               1B5F R
  3 L418               1B41 R   |   3 L419               1B89 R
  3 L420               1B3B R   |   3 L421               1B83 R
  3 L422               1B4D R   |   3 L423               1B65 R
  3 L424               1B53 R   |   3 L425               1B59 R
  3 L426               1B2F R   |   3 L427               1B77 R
  3 L43                077B R   |   3 L430               1D4A R
  3 L433               1EC0 R   |   3 L434               1E3E R
  3 L435               1E71 R   |   3 L436               1E81 R
  3 L44                07E9 R   |   3 L440               2050 R
  3 L441               1F79 R   |   3 L442               2011 R
  3 L443               1FAE R   |   3 L444               1FF6 R
  3 L445               1FD1 R   |   3 L446               1E89 R
  3 L447               1F11 R   |   3 L448               1E92 R
  3 L45                0887 R   |   3 L454               1DD9 R
  3 L455               1FDE R   |   3 L456               1D41 R
  3 L457               2077 R   |   3 L458               1EE6 R
  3 L459               1EEB R   |   3 L46                083B R
  3 L460               1ED1 R   |   3 L461               1EFE R
  3 L462               1F16 R   |   3 L463               1F1A R
  3 L47                08E6 R   |   3 L48                08E9 R
  3 L49                06BB R   |   3 L5                 03D6 R
  3 L51                07F8 R   |   3 L52                0734 R
  3 L6                 03DC R   |   3 L60                0707 R
  3 L61                06AC R   |   3 L62                0776 R
  3 L63                0694 R   |   3 L65                0958 R
  3 L66                0967 R   |   3 L67                09CF R
  3 L68                099F R   |   3 L69                09E0 R
  3 L7                 03E2 R   |   3 L71                0A0B R
  3 L73                0A03 R   |   3 L77                0A14 R
  3 L78                0A1B R   |   3 L8                 03EF R
  3 L80                11D4 R   |   3 L81                0A41 R
  3 L82                12D0 R   |   3 L83                1720 R
  3 L84                0A62 R   |   3 L85                177D R
  3 L86                0A6F R   |   3 L87                0A71 R
  3 L88                0A86 R   |   3 L89                0A7E R
  3 L90                1353 R   |   3 L91                0A88 R
  3 L92                0AE0 R   |   3 L95                18FE R
  3 L96                0ADC R   |   3 L99                17F7 R
  3 LC0                0019 R   |   3 LC1                0020 R
  3 LC10               006F R   |   3 LC11               0075 R
  3 LC12               007A R   |   3 LC13               0081 R
  3 LC14               0089 R   |   3 LC15               008E R
  3 LC16               0095 R   |   3 LC17               009C R
  3 LC18               00A4 R   |   3 LC19               00AB R
  3 LC2                0026 R   |   3 LC20               00C4 R
  3 LC21               00CC R   |   3 LC22               00D6 R
  3 LC23               00DE R   |   3 LC24               00E4 R
  3 LC25               00E9 R   |   3 LC26               00F0 R
  3 LC27               00F7 R   |   3 LC28               0101 R
  3 LC29               02BA R   |   3 LC3                002C R
  3 LC30               02DE R   |   3 LC31               02FD R
  3 LC32               031A R   |   3 LC33               0333 R
  3 LC34               0350 R   |   3 LC35               0371 R
  3 LC36               0392 R   |   3 LC37               1BFB R
  3 LC38               1C12 R   |   3 LC39               1C29 R
  3 LC4                0031 R   |   3 LC40               1C47 R
  3 LC41               1C5B R   |   3 LC42               1C6B R
  3 LC43               1C88 R   |   3 LC5                0039 R
  3 LC6                0041 R   |   3 LC7                0048 R
  3 LC8                004E R   |   3 LC9                0055 R
  2 _ACCA              0242 GR  |   2 _ACCB              0243 GR
  2 _CHARAC            0239 GR  |   2 _COEFCT            020F GR
  2 _COEFPT            021E GR  |   2 _FP0EXP            0209 GR
  2 _FP0SGN            020E GR  |   2 _FP1EXP            0216 GR
  2 _FP1SGN            021B GR  |   2 _FPA0              020A GR
  2 _FPA1              0217 GR  |   2 _FPA2              0221 GR
  2 _FPCARY            0215 GR  |   2 _FPSBYT            021D GR
  3 _FP_X0_PACKED      0008 GR  |   3 _FP_Y0_PACKED      000D GR
  3 _FP_Z0_PACKED      0012 GR  |   2 _PLY_AKY_CHANN     0257 GR
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
    _Vec_Buttons       **** GX  |     _Vec_Music_Wk_     **** GX
    _Vec_Music_Wk_     **** GX  |     _Vec_Text_Heig     **** GX
    _Vec_Text_Widt     **** GX  |     _Vec_XXX_03        **** GX
    _Vec_XXX_04        **** GX  |   3 _W0                0017 GR
    __Do_Sound         **** GX  |     __Intensity_a      **** GX
    __Moveto_d         **** GX  |     __Print_Str_d      **** GX
  2 __TMPTR1           0220 GR  |   2 __XC               0140 GR
  2 __YC               0141 GR  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 ___a               01E8 GR
  2 ___b               01E9 GR  |   2 ___c               01EA GR
  2 ___x               01E7 GR  |   2 __a                01E4 GR
  2 __b                01E5 GR  |   2 __c                01E6 GR
    __fll_s            **** GX  |   2 __x                01E3 GR
  2 __x_               013F GR  |   2 __y_               013E GR
  2 _above             0020 GR  |     _addF              **** GX
    _addIF             **** GX  |   2 _box               00DE GR
  3 _box_data          01D8 GR  |   2 _ch                00AD GR
  2 _cs                00B6 GR  |   3 _cube_c64_data     0120 GR
  2 _currentSFX_1      023D GR  |   2 _cx                00B8 GR
  2 _cy                00B9 GR  |   2 _cz                00BA GR
  2 _db                00E5 GR  |   3 _death_data        0246 GR
  3 _displayInn        1C9E GR  |   2 _doEffectStatu     0076 GR
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _dr                00E7 GR  |   3 _dragon_data       01FC GR
    _drawAltar         **** GX  |     _drawBox           **** GX
    _drawCube          **** GX  |     _drawDemon         **** GX
    _drawDot           **** GX  |     _drawDragon        **** GX
    _drawDwarf         **** GX  |     _drawElevator      **** GX
    _drawElf           **** GX  |     _drawFighter       **** GX
    _drawFlame         **** GX  |     _drawFountain      **** GX
    _drawGhoul         **** GX  |     _drawGiant         **** GX
    _drawGnoll         **** GX  |     _drawHobbit        **** GX
    _drawHome          **** GX  |     _drawInn           **** GX
    _drawKobold        **** GX  |     _drawLeftDoor      **** GX
    _drawLeftDoor_     **** GX  |     _drawLeftWall      **** GX
    _drawLeftWall_     **** GX  |   3 _drawMap           094C GR
    _drawMinotaur      **** GX  |     _drawMummy         **** GX
    _drawNone          **** GX  |     _drawOgre          **** GX
    _drawOrc           **** GX  |     _drawPlayer        **** GX
    _drawSkeleton      **** GX  |     _drawSpecter       **** GX
    _drawSpell         **** GX  |     _drawStaircase     **** GX
    _drawThrone        **** GX  |     _drawTitle         **** GX
    _drawTreasure      **** GX  |     _drawTroll         **** GX
    _drawUnkown        **** GX  |     _drawUnkown_no     **** GX
    _drawUpDoor        **** GX  |     _drawUpWall        **** GX
    _drawVampire       **** GX  |     _drawWraith        **** GX
    _drawZomnbie       **** GX  |   2 _effectOffsetX     007B GR
  2 _effectOffsetY     007A GR  |   2 _effectTimer       0079 GR
  2 _elevatorY         0023 GR  |   3 _environmentDr     02A6 GR
  2 _ex                00B0 GR  |   2 _fillMap           007C GR
  2 _fpackQ            0204 GR  |   2 _fpackX0x          01EB GR
  2 _fpackY0y          01F0 GR  |   2 _fpackZ0z          01F5 GR
  2 _fpacktmp1         01FA GR  |   2 _fpacktmp2         01FF GR
  2 _frequencyRegi     0245 GR  |   2 _gd                00BB GR
  3 _generateDispl     0668 GR  |   3 _getMapPos         04CA GR
  2 _hp                00AB GR  |   3 _in1               005B GR
  3 _in2               00B0 GR  |   3 _in3               010C GR
  2 _inElevator        0022 GR  |   2 _initFlag1         0247 GR
  2 _initFlag2         0248 GR  |   2 _initFlag3         0249 GR
    _initSong          **** GX  |   2 _initSoundNo       0026 GR
    _intF              **** GX  |   2 _inventory         00C9 GR
  2 _l                 00EB GR  |   2 _lastX             013C GR
  2 _lastY             013D GR  |   2 _lightChange       0024 GR
  2 _lltmp             0084 GR  |   2 _localTimer        0028 GR
  2 _ltmp              0082 GR  |   2 _lv                00AF GR
  2 _m                 00E2 GR  |   3 _main              2086 GR
  2 _mb                00E8 GR  |   2 _mh                00E3 GR
  2 _ml                00EA GR  |   3 _monsterDrawer     027E GR
  3 _msg               0000 GR  |   2 _msgLine           0142 GR
  2 _msg_1             0143 GR  |   2 _msg_2             016B GR
  2 _msg_3             0193 GR  |   2 _msg_4             01BB GR
    _mulF              **** GX  |     _mulIF             **** GX
    _mulhi3            **** GX  |   2 _pa                00E6 GR
    _playSong          **** GX  |   2 _printCharacte     0077 GR
  2 _printDungeon      0073 GR  |   2 _printEnvironm     0074 GR
    _printMessage      **** GX  |   2 _printTreasure     0075 GR
  2 _printfEffect      0078 GR  |   2 _r7                0246 GR
  2 _realAbove         0021 GR  |     _restoreSeed       **** GX
  2 _s                 00C3 GR  |     _saveSeed          **** GX
  2 _screen            0000 GR  |   2 _sf                00D3 GR
  2 _sfx_doframe_i     023F GR  |   2 _sfx_pointer_1     023B GR
  2 _sfx_status_1      023A GR  |   2 _specialAction     0025 GR
  2 _stackM            00EC GR  |   2 _stackMH           0114 GR
  2 _stackML           0100 GR  |   2 _stringBuffer1     0033 GR
  2 _stringBuffer4     0029 GR  |   2 _stringBuffer4     003F GR
  2 _stringBuffer6     002D GR  |   2 _stringBufferE     0067 GR
  2 _su                00B4 GR  |     _subBank1          **** GX
    _subF              **** GX  |   3 _teleport_data     0156 GR
  2 _tg                00BF GR  |   2 _timer             0027 GR
  3 _titleScreen       03A9 GR  |   2 _tmp               007E GR
  2 _tmp2              007F GR  |   2 _tmp_box           00A7 GR
  2 _tmp_cx            0091 GR  |   2 _tmp_cy            0092 GR
  2 _tmp_ex            008B GR  |   2 _tmp_hp            0088 GR
  2 _tmp_inventory     009D GR  |   2 _tmp_lv            008A GR
  2 _tmp_s             0097 GR  |   2 _tmp_su            008F GR
  2 _tmp_tg            0093 GR  |     _toInt             **** GX
  2 _ultmp             0080 GR  |   2 _un                00E9 GR
  2 _utmp              007D GR  |   2 _volumeRegiste     0244 GR
    sfx_doframe_in     **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size  262   flags    0
   3 .text            size 2088   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

