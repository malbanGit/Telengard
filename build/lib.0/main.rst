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
                            102 	.globl	_flashAvailable
   C908                     103 _flashAvailable:	.blkb	1
                            104 	.globl	_tmp_hp
   C909                     105 _tmp_hp:	.blkb	2
                            106 	.globl	_tmp_lv
   C90B                     107 _tmp_lv:	.blkb	1
                            108 	.globl	_tmp_ex
   C90C                     109 _tmp_ex:	.blkb	4
                            110 	.globl	_tmp_su
   C910                     111 _tmp_su:	.blkb	2
                            112 	.globl	_tmp_cx
   C912                     113 _tmp_cx:	.blkb	1
                            114 	.globl	_tmp_cy
   C913                     115 _tmp_cy:	.blkb	1
                            116 	.globl	_tmp_tg
   C914                     117 _tmp_tg:	.blkb	4
                            118 	.globl	_tmp_s
   C918                     119 _tmp_s:	.blkb	6
                            120 	.globl	_tmp_inventory
   C91E                     121 _tmp_inventory:	.blkb	20
                            122 	.globl	_tmp_box
   C932                     123 _tmp_box:	.blkb	4
                            124 	.globl	_hp
   C936                     125 _hp:	.blkb	2
                            126 	.globl	_lv
   C938                     127 _lv:	.blkb	1
                            128 	.globl	_ex
   C939                     129 _ex:	.blkb	4
                            130 	.globl	_su
   C93D                     131 _su:	.blkb	2
                            132 	.globl	_cx
   C93F                     133 _cx:	.blkb	1
                            134 	.globl	_cy
   C940                     135 _cy:	.blkb	1
                            136 	.globl	_tg
   C941                     137 _tg:	.blkb	4
                            138 	.globl	_s
   C945                     139 _s:	.blkb	6
                            140 	.globl	_inventory
   C94B                     141 _inventory:	.blkb	20
                            142 	.globl	_box
   C95F                     143 _box:	.blkb	4
                            144 	.globl	_ch
   C963                     145 _ch:	.blkb	2
                            146 	.globl	_cs
   C965                     147 _cs:	.blkb	2
                            148 	.globl	_cz
   C967                     149 _cz:	.blkb	1
                            150 	.globl	_gd
   C968                     151 _gd:	.blkb	4
                            152 	.globl	_sf
   C96C                     153 _sf:	.blkb	11
                            154 	.globl	_m
   C977                     155 _m:	.blkb	1
                            156 	.globl	_mh
   C978                     157 _mh:	.blkb	2
                            158 	.globl	_db
   C97A                     159 _db:	.blkb	1
                            160 	.globl	_pa
   C97B                     161 _pa:	.blkb	1
                            162 	.globl	_dr
   C97C                     163 _dr:	.blkb	1
                            164 	.globl	_mb
   C97D                     165 _mb:	.blkb	1
                            166 	.globl	_un
   C97E                     167 _un:	.blkb	1
                            168 	.globl	_ml
   C97F                     169 _ml:	.blkb	1
                            170 	.globl	_l
   C980                     171 _l:	.blkb	1
                            172 	.globl	_lastX
   C981                     173 _lastX:	.blkb	1
                            174 	.globl	_lastY
   C982                     175 _lastY:	.blkb	1
                            176 	.globl	__y_
   C983                     177 __y_:	.blkb	1
                            178 	.globl	__x_
   C984                     179 __x_:	.blkb	1
                            180 	.globl	__XC
   C985                     181 __XC:	.blkb	1
                            182 	.globl	__YC
   C986                     183 __YC:	.blkb	1
                            184 	.globl	_msgLine
   C987                     185 _msgLine:	.blkb	1
                            186 	.globl	_stackM
   C988                     187 _stackM:	.blkb	20
                            188 	.globl	_stackML
   C99C                     189 _stackML:	.blkb	20
                            190 	.globl	_stackMH
   C9B0                     191 _stackMH:	.blkb	40
                            192 	.globl	_msg_1
   C9D8                     193 _msg_1:	.blkb	40
                            194 	.globl	_msg_2
   CA00                     195 _msg_2:	.blkb	40
                            196 	.globl	_msg_3
   CA28                     197 _msg_3:	.blkb	40
                            198 	.globl	_msg_4
   CA50                     199 _msg_4:	.blkb	40
                            200 	.globl	_msg
                            201 	.area	.text
   1D82                     202 _msg:
   1D82 C9 D8               203 	.word	_msg_1
   1D84 CA 00               204 	.word	_msg_2
   1D86 CA 28               205 	.word	_msg_3
   1D88 CA 50               206 	.word	_msg_4
                            207 	.area	.bss
                            208 	.globl	__x
   CA78                     209 __x:	.blkb	1
                            210 	.globl	__a
   CA79                     211 __a:	.blkb	1
                            212 	.globl	__b
   CA7A                     213 __b:	.blkb	1
                            214 	.globl	__c
   CA7B                     215 __c:	.blkb	1
                            216 	.globl	___x
   CA7C                     217 ___x:	.blkb	1
                            218 	.globl	___a
   CA7D                     219 ___a:	.blkb	1
                            220 	.globl	___b
   CA7E                     221 ___b:	.blkb	1
                            222 	.globl	___c
   CA7F                     223 ___c:	.blkb	1
                            224 	.globl	_fpackX0x
   CA80                     225 _fpackX0x:	.blkb	5
                            226 	.globl	_fpackY0y
   CA85                     227 _fpackY0y:	.blkb	5
                            228 	.globl	_fpackZ0z
   CA8A                     229 _fpackZ0z:	.blkb	5
                            230 	.globl	_fpacktmp1
   CA8F                     231 _fpacktmp1:	.blkb	5
                            232 	.globl	_fpacktmp2
   CA94                     233 _fpacktmp2:	.blkb	5
                            234 	.globl	_fpackQ
   CA99                     235 _fpackQ:	.blkb	5
                            236 	.globl	_FP0EXP
   CA9E                     237 _FP0EXP:	.blkb	1
                            238 	.globl	_FPA0
   CA9F                     239 _FPA0:	.blkb	4
                            240 	.globl	_FP0SGN
   CAA3                     241 _FP0SGN:	.blkb	1
                            242 	.globl	_COEFCT
   CAA4                     243 _COEFCT:	.blkb	1
                            244 	.globl	_STRDES
   CAA5                     245 _STRDES:	.blkb	5
                            246 	.globl	_FPCARY
   CAAA                     247 _FPCARY:	.blkb	1
                            248 	.globl	_FP1EXP
   CAAB                     249 _FP1EXP:	.blkb	1
                            250 	.globl	_FPA1
   CAAC                     251 _FPA1:	.blkb	4
                            252 	.globl	_FP1SGN
   CAB0                     253 _FP1SGN:	.blkb	1
                            254 	.globl	_RESSGN
   CAB1                     255 _RESSGN:	.blkb	1
                            256 	.globl	_FPSBYT
   CAB2                     257 _FPSBYT:	.blkb	1
                            258 	.globl	_COEFPT
   CAB3                     259 _COEFPT:	.blkb	2
                            260 	.globl	__TMPTR1
   CAB5                     261 __TMPTR1:	.blkb	1
                            262 	.globl	_FPA2
   CAB6                     263 _FPA2:	.blkb	4
                            264 	.globl	_V40
   CABA                     265 _V40:	.blkb	1
                            266 	.globl	_V41
   CABB                     267 _V41:	.blkb	1
                            268 	.globl	_V42
   CABC                     269 _V42:	.blkb	1
                            270 	.globl	_V43
   CABD                     271 _V43:	.blkb	1
                            272 	.globl	_V44
   CABE                     273 _V44:	.blkb	1
                            274 	.globl	_V45
   CABF                     275 _V45:	.blkb	1
                            276 	.globl	_V46
   CAC0                     277 _V46:	.blkb	1
                            278 	.globl	_V47
   CAC1                     279 _V47:	.blkb	1
                            280 	.globl	_V48
   CAC2                     281 _V48:	.blkb	2
                            282 	.globl	_V4A
   CAC4                     283 _V4A:	.blkb	1
                            284 	.globl	_V4B
   CAC5                     285 _V4B:	.blkb	2
                            286 	.globl	_V4D
   CAC7                     287 _V4D:	.blkb	2
                            288 	.globl	_VAB
   CAC9                     289 _VAB:	.blkb	1
                            290 	.globl	_VAC
   CACA                     291 _VAC:	.blkb	1
                            292 	.globl	_VAD
   CACB                     293 _VAD:	.blkb	1
                            294 	.globl	_VAE
   CACC                     295 _VAE:	.blkb	1
                            296 	.globl	_TMPLOC
   CACD                     297 _TMPLOC:	.blkb	1
                            298 	.globl	_CHARAC
   CACE                     299 _CHARAC:	.blkb	1
                            300 	.globl	_sfx_status_1
   CACF                     301 _sfx_status_1:	.blkb	1
                            302 	.globl	_sfx_pointer_1
   CAD0                     303 _sfx_pointer_1:	.blkb	2
                            304 	.globl	_currentSFX_1
   CAD2                     305 _currentSFX_1:	.blkb	2
                            306 	.globl	_sfx_doframe_intern_1
   CAD4                     307 _sfx_doframe_intern_1:	.blkb	2
                            308 	.globl	_PLY_error
   CAD6                     309 _PLY_error:	.blkb	1
                            310 	.globl	_ACCA
   CAD7                     311 _ACCA:	.blkb	1
                            312 	.globl	_ACCB
   CAD8                     313 _ACCB:	.blkb	1
                            314 	.globl	_volumeRegister
   CAD9                     315 _volumeRegister:	.blkb	1
                            316 	.globl	_frequencyRegister
   CADA                     317 _frequencyRegister:	.blkb	1
                            318 	.globl	_r7
   CADB                     319 _r7:	.blkb	1
                            320 	.globl	_initFlag1
   CADC                     321 _initFlag1:	.blkb	1
                            322 	.globl	_initFlag2
   CADD                     323 _initFlag2:	.blkb	1
                            324 	.globl	_initFlag3
   CADE                     325 _initFlag3:	.blkb	1
                            326 	.globl	_PLY_AKY_PATTERNFRAMECOUNTER_OVER
   CADF                     327 _PLY_AKY_PATTERNFRAMECOUNTER_OVER:	.blkb	2
                            328 	.globl	_PLY_AKY_PATTERNFRAMECOUNTER
   CAE1                     329 _PLY_AKY_PATTERNFRAMECOUNTER:	.blkb	2
                            330 	.globl	_PLY_AKY_CHANNEL1_PTTRACK
   CAE3                     331 _PLY_AKY_CHANNEL1_PTTRACK:	.blkb	2
                            332 	.globl	_PLY_AKY_CHANNEL2_PTTRACK
   CAE5                     333 _PLY_AKY_CHANNEL2_PTTRACK:	.blkb	2
                            334 	.globl	_PLY_AKY_CHANNEL3_PTTRACK
   CAE7                     335 _PLY_AKY_CHANNEL3_PTTRACK:	.blkb	2
                            336 	.globl	_PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK
   CAE9                     337 _PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            338 	.globl	_PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK
   CAEA                     339 _PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            340 	.globl	_PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK
   CAEB                     341 _PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK:	.blkb	1
                            342 	.globl	_PLY_AKY_CHANNEL1_PTREGISTERBLOCK
   CAEC                     343 _PLY_AKY_CHANNEL1_PTREGISTERBLOCK:	.blkb	2
                            344 	.globl	_PLY_AKY_CHANNEL2_PTREGISTERBLOCK
   CAEE                     345 _PLY_AKY_CHANNEL2_PTREGISTERBLOCK:	.blkb	2
                            346 	.globl	_PLY_AKY_CHANNEL3_PTREGISTERBLOCK
   CAF0                     347 _PLY_AKY_CHANNEL3_PTREGISTERBLOCK:	.blkb	2
                            348 	.globl	_PLY_AKY_PSGREGISTER13_RETRIG
   CAF2                     349 _PLY_AKY_PSGREGISTER13_RETRIG:	.blkb	1
                            350 	.globl	_PLY_AKY_PSGREGISTER6
   CAF3                     351 _PLY_AKY_PSGREGISTER6:	.blkb	1
                            352 	.globl	_PLY_AKY_PSGREGISTER11
   CAF4                     353 _PLY_AKY_PSGREGISTER11:	.blkb	1
                            354 	.globl	_PLY_AKY_PSGREGISTER12
   CAF5                     355 _PLY_AKY_PSGREGISTER12:	.blkb	1
                            356 	.globl	_PLY_AKY_PSGREGISTER13
   CAF6                     357 _PLY_AKY_PSGREGISTER13:	.blkb	1
                            358 	.globl	_PLY_SONG_PLAYING
   CAF7                     359 _PLY_SONG_PLAYING:	.blkb	1
                            360 	.globl	_FP_X0_PACKED
                            361 	.area	.text
   1D8A                     362 _FP_X0_PACKED:
   1D8A 81                  363 	.byte	-127
   1D8B 58                  364 	.byte	88
   1D8C 83                  365 	.byte	-125
   1D8D 12                  366 	.byte	18
   1D8E 6E                  367 	.byte	110
                            368 	.globl	_FP_Y0_PACKED
   1D8F                     369 _FP_Y0_PACKED:
   1D8F 81                  370 	.byte	-127
   1D90 36                  371 	.byte	54
   1D91 C2                  372 	.byte	-62
   1D92 26                  373 	.byte	38
   1D93 82                  374 	.byte	-126
                            375 	.globl	_FP_Z0_PACKED
   1D94                     376 _FP_Z0_PACKED:
   1D94 81                  377 	.byte	-127
   1D95 1F                  378 	.byte	31
   1D96 83                  379 	.byte	-125
   1D97 7B                  380 	.byte	123
   1D98 4A                  381 	.byte	74
                            382 	.globl	_W0
   1D99                     383 _W0:
   1D99 12 56               384 	.word	4694
                            385 	.globl	_in1
   1D9B                     386 LC0:
   1D9B 53 41 4C 54 59 80   387 	.byte	83,65,76,84,89,-128,0
        00
   1DA2                     388 LC1:
   1DA2 42 4F 4C 44 80 00   389 	.byte	66,79,76,68,-128,0
   1DA8                     390 LC2:
   1DA8 4C 4F 55 44 80 00   391 	.byte	76,79,85,68,-128,0
   1DAE                     392 LC3:
   1DAE 4F 4C 44 80 00      393 	.byte	79,76,68,-128,0
   1DB3                     394 LC4:
   1DB3 47 4F 4F 44 4C 59   395 	.byte	71,79,79,68,76,89,-128,0
        80 00
   1DBB                     396 LC5:
   1DBB 57 4F 52 54 48 59   397 	.byte	87,79,82,84,72,89,-128,0
        80 00
   1DC3                     398 LC6:
   1DC3 4C 4F 46 54 59 80   399 	.byte	76,79,70,84,89,-128,0
        00
   1DCA                     400 LC7:
   1DCA 46 49 4E 45 80 00   401 	.byte	70,73,78,69,-128,0
   1DD0                     402 LC8:
   1DD0 52 4F 43 4B 59 80   403 	.byte	82,79,67,75,89,-128,0
        00
   1DD7                     404 LC9:
   1DD7 41 47 45 44 80 00   405 	.byte	65,71,69,68,-128,0
   1DDD                     406 _in1:
   1DDD 1D 9B               407 	.word	LC0
   1DDF 1D A2               408 	.word	LC1
   1DE1 1D A8               409 	.word	LC2
   1DE3 1D AE               410 	.word	LC3
   1DE5 1D B3               411 	.word	LC4
   1DE7 1D BB               412 	.word	LC5
   1DE9 1D C3               413 	.word	LC6
   1DEB 1D CA               414 	.word	LC7
   1DED 1D D0               415 	.word	LC8
   1DEF 1D D7               416 	.word	LC9
                            417 	.globl	_in2
   1DF1                     418 LC10:
   1DF1 52 4F 41 44 80 00   419 	.byte	82,79,65,68,-128,0
   1DF7                     420 LC11:
   1DF7 45 59 45 80 00      421 	.byte	69,89,69,-128,0
   1DFC                     422 LC12:
   1DFC 54 4F 4F 54 48 80   423 	.byte	84,79,79,84,72,-128,0
        00
   1E03                     424 LC13:
   1E03 44 52 41 47 4F 4E   425 	.byte	68,82,65,71,79,78,-128,0
        80 00
   1E0B                     426 LC14:
   1E0B 4D 55 47 80 00      427 	.byte	77,85,71,-128,0
   1E10                     428 LC15:
   1E10 44 45 4D 4F 4E 80   429 	.byte	68,69,77,79,78,-128,0
        00
   1E17                     430 LC16:
   1E17 57 48 41 52 46 80   431 	.byte	87,72,65,82,70,-128,0
        00
   1E1E                     432 LC17:
   1E1E 42 52 49 44 47 45   433 	.byte	66,82,73,68,71,69,-128,0
        80 00
   1E26                     434 LC18:
   1E26 4D 45 41 44 45 80   435 	.byte	77,69,65,68,69,-128,0
        00
   1E2D                     436 LC19:
   1E2D 41 4C 45 80 00      437 	.byte	65,76,69,-128,0
   1E32                     438 _in2:
   1E32 1D F1               439 	.word	LC10
   1E34 1D F7               440 	.word	LC11
   1E36 1D FC               441 	.word	LC12
   1E38 1E 03               442 	.word	LC13
   1E3A 1E 0B               443 	.word	LC14
   1E3C 1E 10               444 	.word	LC15
   1E3E 1E 17               445 	.word	LC16
   1E40 1E 1E               446 	.word	LC17
   1E42 1E 26               447 	.word	LC18
   1E44 1E 2D               448 	.word	LC19
                            449 	.globl	_in3
   1E46                     450 LC20:
   1E46 54 41 56 45 52 4E   451 	.byte	84,65,86,69,82,78,-128,0
        80 00
   1E4E                     452 LC21:
   1E4E 41 4C 45 48 4F 55   453 	.byte	65,76,69,72,79,85,83,69
        53 45
   1E56 80 00               454 	.byte	-128,0
   1E58                     455 LC22:
   1E58 43 45 4C 4C 41 52   456 	.byte	67,69,76,76,65,82,-128,0
        80 00
   1E60                     457 LC23:
   1E60 43 4C 55 42 80 00   458 	.byte	67,76,85,66,-128,0
   1E66                     459 LC24:
   1E66 49 4E 4E 80 00      460 	.byte	73,78,78,-128,0
   1E6B                     461 LC25:
   1E6B 48 4F 55 53 45 80   462 	.byte	72,79,85,83,69,-128,0
        00
   1E72                     463 LC26:
   1E72 4C 4F 44 47 45 80   464 	.byte	76,79,68,71,69,-128,0
        00
   1E79                     465 LC27:
   1E79 4D 45 41 44 48 41   466 	.byte	77,69,65,68,72,65,76,76
        4C 4C
   1E81 80 00               467 	.byte	-128,0
   1E83                     468 LC28:
   1E83 52 45 53 54 48 4F   469 	.byte	82,69,83,84,72,79,85,83
        55 53
   1E8B 45 80 00            470 	.byte	69,-128,0
   1E8E                     471 _in3:
   1E8E 1E 46               472 	.word	LC20
   1E90 1E 4E               473 	.word	LC21
   1E92 1E 58               474 	.word	LC22
   1E94 1E 60               475 	.word	LC23
   1E96 1E 66               476 	.word	LC24
   1E98 1E 6B               477 	.word	LC25
   1E9A 1E 66               478 	.word	LC24
   1E9C 1E 72               479 	.word	LC26
   1E9E 1E 79               480 	.word	LC27
   1EA0 1E 83               481 	.word	LC28
                            482 	.globl	_cube_c64_data
   1EA2                     483 _cube_c64_data:
   1EA2 EB                  484 	.byte	-21
   1EA3 27                  485 	.byte	39
   1EA4 01                  486 	.byte	1
   1EA5 00                  487 	.byte	0
   1EA6 8B                  488 	.byte	-117
   1EA7 8B                  489 	.byte	-117
   1EA8 8B                  490 	.byte	-117
   1EA9 8B                  491 	.byte	-117
   1EAA 8B                  492 	.byte	-117
   1EAB 8B                  493 	.byte	-117
   1EAC 8B                  494 	.byte	-117
   1EAD 8B                  495 	.byte	-117
   1EAE 8B                  496 	.byte	-117
   1EAF AB                  497 	.byte	-85
   1EB0 16                  498 	.byte	22
   1EB1 01                  499 	.byte	1
   1EB2 8B                  500 	.byte	-117
   1EB3 8B                  501 	.byte	-117
   1EB4 8B                  502 	.byte	-117
   1EB5 8B                  503 	.byte	-117
   1EB6 8B                  504 	.byte	-117
   1EB7 8B                  505 	.byte	-117
   1EB8 8B                  506 	.byte	-117
   1EB9 8B                  507 	.byte	-117
   1EBA 8B                  508 	.byte	-117
   1EBB AB                  509 	.byte	-85
   1EBC 27                  510 	.byte	39
   1EBD 01                  511 	.byte	1
   1EBE 8B                  512 	.byte	-117
   1EBF 8B                  513 	.byte	-117
   1EC0 8B                  514 	.byte	-117
   1EC1 8B                  515 	.byte	-117
   1EC2 8B                  516 	.byte	-117
   1EC3 8B                  517 	.byte	-117
   1EC4 8B                  518 	.byte	-117
   1EC5 8B                  519 	.byte	-117
   1EC6 8B                  520 	.byte	-117
   1EC7 AB                  521 	.byte	-85
   1EC8 4B                  522 	.byte	75
   1EC9 01                  523 	.byte	1
   1ECA 8B                  524 	.byte	-117
   1ECB 8B                  525 	.byte	-117
   1ECC 8B                  526 	.byte	-117
   1ECD 8B                  527 	.byte	-117
   1ECE 8B                  528 	.byte	-117
   1ECF 8B                  529 	.byte	-117
   1ED0 8B                  530 	.byte	-117
   1ED1 8B                  531 	.byte	-117
   1ED2 8B                  532 	.byte	-117
   1ED3 20                  533 	.byte	32
   1ED4 00                  534 	.byte	0
   1ED5 00                  535 	.byte	0
   1ED6 D0                  536 	.byte	-48
   1ED7 20                  537 	.byte	32
                            538 	.globl	_teleport_data
   1ED8                     539 _teleport_data:
   1ED8 6C                  540 	.byte	108
   1ED9 22                  541 	.byte	34
   1EDA 00                  542 	.byte	0
   1EDB 00                  543 	.byte	0
   1EDC 2B                  544 	.byte	43
   1EDD 21                  545 	.byte	33
   1EDE 00                  546 	.byte	0
   1EDF 6A                  547 	.byte	106
   1EE0 22                  548 	.byte	34
   1EE1 00                  549 	.byte	0
   1EE2 06                  550 	.byte	6
   1EE3 09                  551 	.byte	9
   1EE4 6C                  552 	.byte	108
   1EE5 21                  553 	.byte	33
   1EE6 00                  554 	.byte	0
   1EE7 00                  555 	.byte	0
   1EE8 2B                  556 	.byte	43
   1EE9 20                  557 	.byte	32
   1EEA 00                  558 	.byte	0
   1EEB 6A                  559 	.byte	106
   1EEC 21                  560 	.byte	33
   1EED 00                  561 	.byte	0
   1EEE 06                  562 	.byte	6
   1EEF 09                  563 	.byte	9
   1EF0 6C                  564 	.byte	108
   1EF1 20                  565 	.byte	32
   1EF2 00                  566 	.byte	0
   1EF3 00                  567 	.byte	0
   1EF4 2B                  568 	.byte	43
   1EF5 1F                  569 	.byte	31
   1EF6 00                  570 	.byte	0
   1EF7 6A                  571 	.byte	106
   1EF8 20                  572 	.byte	32
   1EF9 00                  573 	.byte	0
   1EFA 06                  574 	.byte	6
   1EFB 09                  575 	.byte	9
   1EFC 48                  576 	.byte	72
   1EFD 1E                  577 	.byte	30
   1EFE 6C                  578 	.byte	108
   1EFF 1E                  579 	.byte	30
   1F00 00                  580 	.byte	0
   1F01 00                  581 	.byte	0
   1F02 2B                  582 	.byte	43
   1F03 1D                  583 	.byte	29
   1F04 00                  584 	.byte	0
   1F05 6A                  585 	.byte	106
   1F06 1E                  586 	.byte	30
   1F07 00                  587 	.byte	0
   1F08 06                  588 	.byte	6
   1F09 09                  589 	.byte	9
   1F0A 48                  590 	.byte	72
   1F0B 1E                  591 	.byte	30
   1F0C 6C                  592 	.byte	108
   1F0D 1D                  593 	.byte	29
   1F0E 00                  594 	.byte	0
   1F0F 00                  595 	.byte	0
   1F10 2B                  596 	.byte	43
   1F11 1C                  597 	.byte	28
   1F12 00                  598 	.byte	0
   1F13 6A                  599 	.byte	106
   1F14 1D                  600 	.byte	29
   1F15 00                  601 	.byte	0
   1F16 06                  602 	.byte	6
   1F17 6C                  603 	.byte	108
   1F18 1B                  604 	.byte	27
   1F19 00                  605 	.byte	0
   1F1A 00                  606 	.byte	0
   1F1B 2B                  607 	.byte	43
   1F1C 1A                  608 	.byte	26
   1F1D 00                  609 	.byte	0
   1F1E 6A                  610 	.byte	106
   1F1F 1B                  611 	.byte	27
   1F20 00                  612 	.byte	0
   1F21 06                  613 	.byte	6
   1F22 29                  614 	.byte	41
   1F23 19                  615 	.byte	25
   1F24 00                  616 	.byte	0
   1F25 6C                  617 	.byte	108
   1F26 16                  618 	.byte	22
   1F27 00                  619 	.byte	0
   1F28 00                  620 	.byte	0
   1F29 0A                  621 	.byte	10
   1F2A 08                  622 	.byte	8
   1F2B B0                  623 	.byte	-80
   1F2C 14                  624 	.byte	20
   1F2D 09                  625 	.byte	9
   1F2E 90                  626 	.byte	-112
   1F2F 90                  627 	.byte	-112
   1F30 90                  628 	.byte	-112
   1F31 2A                  629 	.byte	42
   1F32 16                  630 	.byte	22
   1F33 00                  631 	.byte	0
   1F34 08                  632 	.byte	8
   1F35 07                  633 	.byte	7
   1F36 B0                  634 	.byte	-80
   1F37 14                  635 	.byte	20
   1F38 09                  636 	.byte	9
   1F39 90                  637 	.byte	-112
   1F3A 90                  638 	.byte	-112
   1F3B 90                  639 	.byte	-112
   1F3C 29                  640 	.byte	41
   1F3D 16                  641 	.byte	22
   1F3E 00                  642 	.byte	0
   1F3F 07                  643 	.byte	7
   1F40 05                  644 	.byte	5
   1F41 B0                  645 	.byte	-80
   1F42 14                  646 	.byte	20
   1F43 09                  647 	.byte	9
   1F44 90                  648 	.byte	-112
   1F45 90                  649 	.byte	-112
   1F46 28                  650 	.byte	40
   1F47 16                  651 	.byte	22
   1F48 00                  652 	.byte	0
   1F49 06                  653 	.byte	6
   1F4A 04                  654 	.byte	4
   1F4B B0                  655 	.byte	-80
   1F4C 14                  656 	.byte	20
   1F4D 09                  657 	.byte	9
   1F4E 90                  658 	.byte	-112
   1F4F 90                  659 	.byte	-112
   1F50 27                  660 	.byte	39
   1F51 16                  661 	.byte	22
   1F52 00                  662 	.byte	0
   1F53 05                  663 	.byte	5
   1F54 03                  664 	.byte	3
   1F55 A8                  665 	.byte	-88
   1F56 01                  666 	.byte	1
   1F57 00                  667 	.byte	0
   1F58 D0                  668 	.byte	-48
   1F59 20                  669 	.byte	32
                            670 	.globl	_box_data
   1F5A                     671 _box_data:
   1F5A ED                  672 	.byte	-19
   1F5B 10                  673 	.byte	16
   1F5C 00                  674 	.byte	0
   1F5D 00                  675 	.byte	0
   1F5E AD                  676 	.byte	-83
   1F5F 11                  677 	.byte	17
   1F60 00                  678 	.byte	0
   1F61 8D                  679 	.byte	-115
   1F62 AD                  680 	.byte	-83
   1F63 12                  681 	.byte	18
   1F64 00                  682 	.byte	0
   1F65 8D                  683 	.byte	-115
   1F66 AA                  684 	.byte	-86
   1F67 10                  685 	.byte	16
   1F68 00                  686 	.byte	0
   1F69 8A                  687 	.byte	-118
   1F6A AA                  688 	.byte	-86
   1F6B 11                  689 	.byte	17
   1F6C 00                  690 	.byte	0
   1F6D 8A                  691 	.byte	-118
   1F6E AA                  692 	.byte	-86
   1F6F 12                  693 	.byte	18
   1F70 00                  694 	.byte	0
   1F71 8A                  695 	.byte	-118
   1F72 A8                  696 	.byte	-88
   1F73 10                  697 	.byte	16
   1F74 00                  698 	.byte	0
   1F75 88                  699 	.byte	-120
   1F76 A8                  700 	.byte	-88
   1F77 11                  701 	.byte	17
   1F78 00                  702 	.byte	0
   1F79 B0                  703 	.byte	-80
   1F7A 00                  704 	.byte	0
   1F7B 00                  705 	.byte	0
   1F7C D0                  706 	.byte	-48
   1F7D 20                  707 	.byte	32
                            708 	.globl	_dragon_data
   1F7E                     709 _dragon_data:
   1F7E 6A                  710 	.byte	106
   1F7F 50                  711 	.byte	80
   1F80 05                  712 	.byte	5
   1F81 1E                  713 	.byte	30
   1F82 0A                  714 	.byte	10
   1F83 2B                  715 	.byte	43
   1F84 50                  716 	.byte	80
   1F85 06                  717 	.byte	6
   1F86 0B                  718 	.byte	11
   1F87 2C                  719 	.byte	44
   1F88 50                  720 	.byte	80
   1F89 07                  721 	.byte	7
   1F8A 0C                  722 	.byte	12
   1F8B 6E                  723 	.byte	110
   1F8C 50                  724 	.byte	80
   1F8D 08                  725 	.byte	8
   1F8E 0A                  726 	.byte	10
   1F8F 0E                  727 	.byte	14
   1F90 0E                  728 	.byte	14
   1F91 0E                  729 	.byte	14
   1F92 20                  730 	.byte	32
   1F93 00                  731 	.byte	0
   1F94 00                  732 	.byte	0
   1F95 00                  733 	.byte	0
   1F96 00                  734 	.byte	0
   1F97 00                  735 	.byte	0
   1F98 6C                  736 	.byte	108
   1F99 50                  737 	.byte	80
   1F9A 07                  738 	.byte	7
   1F9B 1E                  739 	.byte	30
   1F9C 0C                  740 	.byte	12
   1F9D 2D                  741 	.byte	45
   1F9E 50                  742 	.byte	80
   1F9F 08                  743 	.byte	8
   1FA0 0D                  744 	.byte	13
   1FA1 2E                  745 	.byte	46
   1FA2 50                  746 	.byte	80
   1FA3 09                  747 	.byte	9
   1FA4 0E                  748 	.byte	14
   1FA5 6F                  749 	.byte	111
   1FA6 52                  750 	.byte	82
   1FA7 0A                  751 	.byte	10
   1FA8 0A                  752 	.byte	10
   1FA9 0F                  753 	.byte	15
   1FAA 0F                  754 	.byte	15
   1FAB 0F                  755 	.byte	15
   1FAC 20                  756 	.byte	32
   1FAD 00                  757 	.byte	0
   1FAE 00                  758 	.byte	0
   1FAF 00                  759 	.byte	0
   1FB0 00                  760 	.byte	0
   1FB1 00                  761 	.byte	0
   1FB2 6C                  762 	.byte	108
   1FB3 50                  763 	.byte	80
   1FB4 09                  764 	.byte	9
   1FB5 1E                  765 	.byte	30
   1FB6 0C                  766 	.byte	12
   1FB7 2D                  767 	.byte	45
   1FB8 00                  768 	.byte	0
   1FB9 0A                  769 	.byte	10
   1FBA 0D                  770 	.byte	13
   1FBB 2E                  771 	.byte	46
   1FBC 50                  772 	.byte	80
   1FBD 0A                  773 	.byte	10
   1FBE 0E                  774 	.byte	14
   1FBF 6F                  775 	.byte	111
   1FC0 52                  776 	.byte	82
   1FC1 0B                  777 	.byte	11
   1FC2 0A                  778 	.byte	10
   1FC3 0F                  779 	.byte	15
   1FC4 0F                  780 	.byte	15
   1FC5 90                  781 	.byte	-112
   1FC6 D0                  782 	.byte	-48
   1FC7 20                  783 	.byte	32
                            784 	.globl	_death_data
   1FC8                     785 _death_data:
   1FC8 6F                  786 	.byte	111
   1FC9 FF                  787 	.byte	-1
   1FCA 01                  788 	.byte	1
   1FCB 1F                  789 	.byte	31
   1FCC 0F                  790 	.byte	15
   1FCD 0F                  791 	.byte	15
   1FCE 0F                  792 	.byte	15
   1FCF 0F                  793 	.byte	15
   1FD0 0F                  794 	.byte	15
   1FD1 0E                  795 	.byte	14
   1FD2 0E                  796 	.byte	14
   1FD3 0E                  797 	.byte	14
   1FD4 0E                  798 	.byte	14
   1FD5 0E                  799 	.byte	14
   1FD6 0D                  800 	.byte	13
   1FD7 0D                  801 	.byte	13
   1FD8 0D                  802 	.byte	13
   1FD9 0D                  803 	.byte	13
   1FDA 0D                  804 	.byte	13
   1FDB 0C                  805 	.byte	12
   1FDC 0C                  806 	.byte	12
   1FDD 0C                  807 	.byte	12
   1FDE 0C                  808 	.byte	12
   1FDF 0C                  809 	.byte	12
   1FE0 0C                  810 	.byte	12
   1FE1 0B                  811 	.byte	11
   1FE2 0B                  812 	.byte	11
   1FE3 0B                  813 	.byte	11
   1FE4 0B                  814 	.byte	11
   1FE5 0B                  815 	.byte	11
   1FE6 0A                  816 	.byte	10
   1FE7 0A                  817 	.byte	10
   1FE8 0A                  818 	.byte	10
   1FE9 0A                  819 	.byte	10
   1FEA 0A                  820 	.byte	10
   1FEB 09                  821 	.byte	9
   1FEC 09                  822 	.byte	9
   1FED 09                  823 	.byte	9
   1FEE 09                  824 	.byte	9
   1FEF 09                  825 	.byte	9
   1FF0 09                  826 	.byte	9
   1FF1 08                  827 	.byte	8
   1FF2 08                  828 	.byte	8
   1FF3 08                  829 	.byte	8
   1FF4 08                  830 	.byte	8
   1FF5 08                  831 	.byte	8
   1FF6 07                  832 	.byte	7
   1FF7 07                  833 	.byte	7
   1FF8 07                  834 	.byte	7
   1FF9 07                  835 	.byte	7
   1FFA 07                  836 	.byte	7
   1FFB B0                  837 	.byte	-80
   1FFC 00                  838 	.byte	0
   1FFD 00                  839 	.byte	0
   1FFE D0                  840 	.byte	-48
   1FFF 20                  841 	.byte	32
                            842 	.globl	_gong_data
   2000                     843 _gong_data:
   2000 ED                  844 	.byte	-19
   2001 B5                  845 	.byte	-75
   2002 05                  846 	.byte	5
   2003 00                  847 	.byte	0
   2004 8C                  848 	.byte	-116
   2005 AD                  849 	.byte	-83
   2006 3C                  850 	.byte	60
   2007 05                  851 	.byte	5
   2008 8C                  852 	.byte	-116
   2009 AC                  853 	.byte	-84
   200A B5                  854 	.byte	-75
   200B 05                  855 	.byte	5
   200C 8B                  856 	.byte	-117
   200D AC                  857 	.byte	-84
   200E 3C                  858 	.byte	60
   200F 05                  859 	.byte	5
   2010 8A                  860 	.byte	-118
   2011 AB                  861 	.byte	-85
   2012 B5                  862 	.byte	-75
   2013 05                  863 	.byte	5
   2014 8A                  864 	.byte	-118
   2015 AA                  865 	.byte	-86
   2016 3C                  866 	.byte	60
   2017 05                  867 	.byte	5
   2018 89                  868 	.byte	-119
   2019 AA                  869 	.byte	-86
   201A B5                  870 	.byte	-75
   201B 05                  871 	.byte	5
   201C 88                  872 	.byte	-120
   201D A9                  873 	.byte	-87
   201E 3C                  874 	.byte	60
   201F 05                  875 	.byte	5
   2020 88                  876 	.byte	-120
   2021 A8                  877 	.byte	-88
   2022 B5                  878 	.byte	-75
   2023 05                  879 	.byte	5
   2024 87                  880 	.byte	-121
   2025 A8                  881 	.byte	-88
   2026 3C                  882 	.byte	60
   2027 05                  883 	.byte	5
   2028 87                  884 	.byte	-121
   2029 A7                  885 	.byte	-89
   202A B5                  886 	.byte	-75
   202B 05                  887 	.byte	5
   202C 86                  888 	.byte	-122
   202D A7                  889 	.byte	-89
   202E 3C                  890 	.byte	60
   202F 05                  891 	.byte	5
   2030 86                  892 	.byte	-122
   2031 A6                  893 	.byte	-90
   2032 B5                  894 	.byte	-75
   2033 05                  895 	.byte	5
   2034 87                  896 	.byte	-121
   2035 A6                  897 	.byte	-90
   2036 3C                  898 	.byte	60
   2037 05                  899 	.byte	5
   2038 85                  900 	.byte	-123
   2039 A6                  901 	.byte	-90
   203A B5                  902 	.byte	-75
   203B 05                  903 	.byte	5
   203C 86                  904 	.byte	-122
   203D A5                  905 	.byte	-91
   203E 3C                  906 	.byte	60
   203F 05                  907 	.byte	5
   2040 86                  908 	.byte	-122
   2041 A5                  909 	.byte	-91
   2042 B5                  910 	.byte	-75
   2043 05                  911 	.byte	5
   2044 84                  912 	.byte	-124
   2045 A5                  913 	.byte	-91
   2046 3C                  914 	.byte	60
   2047 05                  915 	.byte	5
   2048 85                  916 	.byte	-123
   2049 A4                  917 	.byte	-92
   204A B5                  918 	.byte	-75
   204B 05                  919 	.byte	5
   204C 85                  920 	.byte	-123
   204D A4                  921 	.byte	-92
   204E 3C                  922 	.byte	60
   204F 05                  923 	.byte	5
   2050 84                  924 	.byte	-124
   2051 20                  925 	.byte	32
   2052 00                  926 	.byte	0
   2053 05                  927 	.byte	5
   2054 D0                  928 	.byte	-48
   2055 20                  929 	.byte	32
                            930 	.globl	_down_data
   2056                     931 _down_data:
   2056 EF                  932 	.byte	-17
   2057 03                  933 	.byte	3
   2058 02                  934 	.byte	2
   2059 00                  935 	.byte	0
   205A AF                  936 	.byte	-81
   205B D0                  937 	.byte	-48
   205C 01                  938 	.byte	1
   205D 8F                  939 	.byte	-113
   205E 8F                  940 	.byte	-113
   205F AF                  941 	.byte	-81
   2060 DD                  942 	.byte	-35
   2061 01                  943 	.byte	1
   2062 AF                  944 	.byte	-81
   2063 EA                  945 	.byte	-22
   2064 01                  946 	.byte	1
   2065 AF                  947 	.byte	-81
   2066 0F                  948 	.byte	15
   2067 02                  949 	.byte	2
   2068 AF                  950 	.byte	-81
   2069 41                  951 	.byte	65
   206A 02                  952 	.byte	2
   206B AF                  953 	.byte	-81
   206C 5B                  954 	.byte	91
   206D 02                  955 	.byte	2
   206E AF                  956 	.byte	-81
   206F 74                  957 	.byte	116
   2070 02                  958 	.byte	2
   2071 8F                  959 	.byte	-113
   2072 AF                  960 	.byte	-81
   2073 8D                  961 	.byte	-115
   2074 02                  962 	.byte	2
   2075 8F                  963 	.byte	-113
   2076 AF                  964 	.byte	-81
   2077 99                  965 	.byte	-103
   2078 02                  966 	.byte	2
   2079 8F                  967 	.byte	-113
   207A AF                  968 	.byte	-81
   207B B3                  969 	.byte	-77
   207C 02                  970 	.byte	2
   207D AF                  971 	.byte	-81
   207E BF                  972 	.byte	-65
   207F 02                  973 	.byte	2
   2080 AF                  974 	.byte	-81
   2081 CC                  975 	.byte	-52
   2082 02                  976 	.byte	2
   2083 AF                  977 	.byte	-81
   2084 F1                  978 	.byte	-15
   2085 02                  979 	.byte	2
   2086 AF                  980 	.byte	-81
   2087 0A                  981 	.byte	10
   2088 03                  982 	.byte	3
   2089 AF                  983 	.byte	-81
   208A 24                  984 	.byte	36
   208B 03                  985 	.byte	3
   208C AF                  986 	.byte	-81
   208D 30                  987 	.byte	48
   208E 03                  988 	.byte	3
   208F AF                  989 	.byte	-81
   2090 56                  990 	.byte	86
   2091 03                  991 	.byte	3
   2092 AF                  992 	.byte	-81
   2093 7C                  993 	.byte	124
   2094 03                  994 	.byte	3
   2095 AF                  995 	.byte	-81
   2096 95                  996 	.byte	-107
   2097 03                  997 	.byte	3
   2098 AF                  998 	.byte	-81
   2099 C7                  999 	.byte	-57
   209A 03                 1000 	.byte	3
   209B AF                 1001 	.byte	-81
   209C F9                 1002 	.byte	-7
   209D 03                 1003 	.byte	3
   209E AF                 1004 	.byte	-81
   209F 2B                 1005 	.byte	43
   20A0 04                 1006 	.byte	4
   20A1 AF                 1007 	.byte	-81
   20A2 83                 1008 	.byte	-125
   20A3 04                 1009 	.byte	4
   20A4 AF                 1010 	.byte	-81
   20A5 CF                 1011 	.byte	-49
   20A6 04                 1012 	.byte	4
   20A7 AF                 1013 	.byte	-81
   20A8 F5                 1014 	.byte	-11
   20A9 04                 1015 	.byte	4
   20AA AF                 1016 	.byte	-81
   20AB 66                 1017 	.byte	102
   20AC 05                 1018 	.byte	5
   20AD AF                 1019 	.byte	-81
   20AE 98                 1020 	.byte	-104
   20AF 05                 1021 	.byte	5
   20B0 AF                 1022 	.byte	-81
   20B1 09                 1023 	.byte	9
   20B2 06                 1024 	.byte	6
   20B3 AF                 1025 	.byte	-81
   20B4 48                 1026 	.byte	72
   20B5 06                 1027 	.byte	6
   20B6 AF                 1028 	.byte	-81
   20B7 87                 1029 	.byte	-121
   20B8 06                 1030 	.byte	6
   20B9 AF                 1031 	.byte	-81
   20BA DF                 1032 	.byte	-33
   20BB 06                 1033 	.byte	6
   20BC AF                 1034 	.byte	-81
   20BD 36                 1035 	.byte	54
   20BE 07                 1036 	.byte	7
   20BF AF                 1037 	.byte	-81
   20C0 75                 1038 	.byte	117
   20C1 07                 1039 	.byte	7
   20C2 AF                 1040 	.byte	-81
   20C3 E6                 1041 	.byte	-26
   20C4 07                 1042 	.byte	7
   20C5 AF                 1043 	.byte	-81
   20C6 0C                 1044 	.byte	12
   20C7 08                 1045 	.byte	8
   20C8 AF                 1046 	.byte	-81
   20C9 7D                 1047 	.byte	125
   20CA 08                 1048 	.byte	8
   20CB AF                 1049 	.byte	-81
   20CC E2                 1050 	.byte	-30
   20CD 08                 1051 	.byte	8
   20CE AF                 1052 	.byte	-81
   20CF 53                 1053 	.byte	83
   20D0 09                 1054 	.byte	9
   20D1 AF                 1055 	.byte	-81
   20D2 92                 1056 	.byte	-110
   20D3 09                 1057 	.byte	9
   20D4 AF                 1058 	.byte	-81
   20D5 28                 1059 	.byte	40
   20D6 0A                 1060 	.byte	10
   20D7 AF                 1061 	.byte	-81
   20D8 80                 1062 	.byte	-128
   20D9 0A                 1063 	.byte	10
   20DA AF                 1064 	.byte	-81
   20DB F1                 1065 	.byte	-15
   20DC 0A                 1066 	.byte	10
   20DD AF                 1067 	.byte	-81
   20DE 88                 1068 	.byte	-120
   20DF 0B                 1069 	.byte	11
   20E0 AF                 1070 	.byte	-81
   20E1 06                 1071 	.byte	6
   20E2 0C                 1072 	.byte	12
   20E3 AF                 1073 	.byte	-81
   20E4 77                 1074 	.byte	119
   20E5 0C                 1075 	.byte	12
   20E6 AF                 1076 	.byte	-81
   20E7 27                 1077 	.byte	39
   20E8 0D                 1078 	.byte	13
   20E9 AF                 1079 	.byte	-81
   20EA BE                 1080 	.byte	-66
   20EB 0D                 1081 	.byte	13
   20EC AF                 1082 	.byte	-81
   20ED 6D                 1083 	.byte	109
   20EE 0E                 1084 	.byte	14
   20EF AF                 1085 	.byte	-81
   20F0 11                 1086 	.byte	17
   20F1 0F                 1087 	.byte	15
   20F2 AF                 1088 	.byte	-81
   20F3 82                 1089 	.byte	-126
   20F4 0F                 1090 	.byte	15
   20F5 AF                 1091 	.byte	-81
   20F6 FF                 1092 	.byte	-1
   20F7 0F                 1093 	.byte	15
   20F8 8F                 1094 	.byte	-113
   20F9 8F                 1095 	.byte	-113
   20FA D0                 1096 	.byte	-48
   20FB 20                 1097 	.byte	32
                           1098 	.globl	_lightning_data
   20FC                    1099 _lightning_data:
   20FC 6F                 1100 	.byte	111
   20FD 12                 1101 	.byte	18
   20FE 07                 1102 	.byte	7
   20FF 0A                 1103 	.byte	10
   2100 2F                 1104 	.byte	47
   2101 CE                 1105 	.byte	-50
   2102 02                 1106 	.byte	2
   2103 2F                 1107 	.byte	47
   2104 C4                 1108 	.byte	-60
   2105 01                 1109 	.byte	1
   2106 2F                 1110 	.byte	47
   2107 66                 1111 	.byte	102
   2108 01                 1112 	.byte	1
   2109 2F                 1113 	.byte	47
   210A E2                 1114 	.byte	-30
   210B 00                 1115 	.byte	0
   210C 2F                 1116 	.byte	47
   210D 12                 1117 	.byte	18
   210E 07                 1118 	.byte	7
   210F 2F                 1119 	.byte	47
   2110 CE                 1120 	.byte	-50
   2111 02                 1121 	.byte	2
   2112 2F                 1122 	.byte	47
   2113 C4                 1123 	.byte	-60
   2114 01                 1124 	.byte	1
   2115 2F                 1125 	.byte	47
   2116 66                 1126 	.byte	102
   2117 01                 1127 	.byte	1
   2118 2F                 1128 	.byte	47
   2119 E2                 1129 	.byte	-30
   211A 00                 1130 	.byte	0
   211B 2F                 1131 	.byte	47
   211C 12                 1132 	.byte	18
   211D 07                 1133 	.byte	7
   211E 2F                 1134 	.byte	47
   211F CE                 1135 	.byte	-50
   2120 02                 1136 	.byte	2
   2121 2F                 1137 	.byte	47
   2122 C4                 1138 	.byte	-60
   2123 01                 1139 	.byte	1
   2124 2F                 1140 	.byte	47
   2125 66                 1141 	.byte	102
   2126 01                 1142 	.byte	1
   2127 2F                 1143 	.byte	47
   2128 E2                 1144 	.byte	-30
   2129 00                 1145 	.byte	0
   212A 2F                 1146 	.byte	47
   212B 12                 1147 	.byte	18
   212C 07                 1148 	.byte	7
   212D 2F                 1149 	.byte	47
   212E CE                 1150 	.byte	-50
   212F 02                 1151 	.byte	2
   2130 2F                 1152 	.byte	47
   2131 C4                 1153 	.byte	-60
   2132 01                 1154 	.byte	1
   2133 2F                 1155 	.byte	47
   2134 12                 1156 	.byte	18
   2135 07                 1157 	.byte	7
   2136 2F                 1158 	.byte	47
   2137 66                 1159 	.byte	102
   2138 01                 1160 	.byte	1
   2139 2F                 1161 	.byte	47
   213A CE                 1162 	.byte	-50
   213B 02                 1163 	.byte	2
   213C 2F                 1164 	.byte	47
   213D C4                 1165 	.byte	-60
   213E 01                 1166 	.byte	1
   213F 2F                 1167 	.byte	47
   2140 12                 1168 	.byte	18
   2141 07                 1169 	.byte	7
   2142 2F                 1170 	.byte	47
   2143 CE                 1171 	.byte	-50
   2144 02                 1172 	.byte	2
   2145 0E                 1173 	.byte	14
   2146 2E                 1174 	.byte	46
   2147 C4                 1175 	.byte	-60
   2148 01                 1176 	.byte	1
   2149 2E                 1177 	.byte	46
   214A 12                 1178 	.byte	18
   214B 07                 1179 	.byte	7
   214C 2E                 1180 	.byte	46
   214D CE                 1181 	.byte	-50
   214E 02                 1182 	.byte	2
   214F 2E                 1183 	.byte	46
   2150 C4                 1184 	.byte	-60
   2151 01                 1185 	.byte	1
   2152 0D                 1186 	.byte	13
   2153 2D                 1187 	.byte	45
   2154 12                 1188 	.byte	18
   2155 07                 1189 	.byte	7
   2156 2D                 1190 	.byte	45
   2157 CE                 1191 	.byte	-50
   2158 02                 1192 	.byte	2
   2159 2D                 1193 	.byte	45
   215A C4                 1194 	.byte	-60
   215B 01                 1195 	.byte	1
   215C 2C                 1196 	.byte	44
   215D 12                 1197 	.byte	18
   215E 07                 1198 	.byte	7
   215F 0C                 1199 	.byte	12
   2160 0C                 1200 	.byte	12
   2161 2C                 1201 	.byte	44
   2162 CE                 1202 	.byte	-50
   2163 02                 1203 	.byte	2
   2164 2B                 1204 	.byte	43
   2165 C4                 1205 	.byte	-60
   2166 01                 1206 	.byte	1
   2167 2B                 1207 	.byte	43
   2168 12                 1208 	.byte	18
   2169 07                 1209 	.byte	7
   216A 0B                 1210 	.byte	11
   216B 0B                 1211 	.byte	11
   216C 2A                 1212 	.byte	42
   216D CE                 1213 	.byte	-50
   216E 02                 1214 	.byte	2
   216F 2A                 1215 	.byte	42
   2170 C4                 1216 	.byte	-60
   2171 01                 1217 	.byte	1
   2172 2A                 1218 	.byte	42
   2173 12                 1219 	.byte	18
   2174 07                 1220 	.byte	7
   2175 0A                 1221 	.byte	10
   2176 2A                 1222 	.byte	42
   2177 CE                 1223 	.byte	-50
   2178 02                 1224 	.byte	2
   2179 29                 1225 	.byte	41
   217A C4                 1226 	.byte	-60
   217B 01                 1227 	.byte	1
   217C 29                 1228 	.byte	41
   217D 12                 1229 	.byte	18
   217E 07                 1230 	.byte	7
   217F 29                 1231 	.byte	41
   2180 CE                 1232 	.byte	-50
   2181 02                 1233 	.byte	2
   2182 09                 1234 	.byte	9
   2183 08                 1235 	.byte	8
   2184 28                 1236 	.byte	40
   2185 C4                 1237 	.byte	-60
   2186 01                 1238 	.byte	1
   2187 28                 1239 	.byte	40
   2188 12                 1240 	.byte	18
   2189 07                 1241 	.byte	7
   218A 28                 1242 	.byte	40
   218B CE                 1243 	.byte	-50
   218C 02                 1244 	.byte	2
   218D 07                 1245 	.byte	7
   218E 07                 1246 	.byte	7
   218F 27                 1247 	.byte	39
   2190 C4                 1248 	.byte	-60
   2191 01                 1249 	.byte	1
   2192 27                 1250 	.byte	39
   2193 12                 1251 	.byte	18
   2194 07                 1252 	.byte	7
   2195 26                 1253 	.byte	38
   2196 CE                 1254 	.byte	-50
   2197 02                 1255 	.byte	2
   2198 06                 1256 	.byte	6
   2199 26                 1257 	.byte	38
   219A C4                 1258 	.byte	-60
   219B 01                 1259 	.byte	1
   219C 26                 1260 	.byte	38
   219D 12                 1261 	.byte	18
   219E 07                 1262 	.byte	7
   219F 26                 1263 	.byte	38
   21A0 CE                 1264 	.byte	-50
   21A1 02                 1265 	.byte	2
   21A2 D0                 1266 	.byte	-48
   21A3 20                 1267 	.byte	32
                           1268 	.globl	_monsterDrawer
   21A4                    1269 _monsterDrawer:
   21A4 50 3F              1270 	.word	_drawGnoll
   21A6 50 47              1271 	.word	_drawKobold
   21A8 50 4F              1272 	.word	_drawSkeleton
   21AA 50 57              1273 	.word	_drawHobbit
   21AC 50 5F              1274 	.word	_drawZomnbie
   21AE 50 67              1275 	.word	_drawOrc
   21B0 50 6F              1276 	.word	_drawFighter
   21B2 50 77              1277 	.word	_drawMummy
   21B4 50 7F              1278 	.word	_drawElf
   21B6 50 87              1279 	.word	_drawGhoul
   21B8 50 8F              1280 	.word	_drawDwarf
   21BA 50 97              1281 	.word	_drawTroll
   21BC 50 9F              1282 	.word	_drawWraith
   21BE 50 A7              1283 	.word	_drawOgre
   21C0 50 AF              1284 	.word	_drawMinotaur
   21C2 50 B7              1285 	.word	_drawGiant
   21C4 50 BF              1286 	.word	_drawSpecter
   21C6 50 C7              1287 	.word	_drawVampire
   21C8 50 CF              1288 	.word	_drawDemon
   21CA 50 D7              1289 	.word	_drawDragon
                           1290 	.globl	_environmentDrawer
   21CC                    1291 _environmentDrawer:
   21CC 50 DF              1292 	.word	_drawStaircase
   21CE 51 0F              1293 	.word	_drawNone
   21D0 51 0F              1294 	.word	_drawNone
   21D2 50 DF              1295 	.word	_drawStaircase
   21D4 50 FF              1296 	.word	_drawAltar
   21D6 50 F7              1297 	.word	_drawFountain
   21D8 51 26              1298 	.word	_drawCube
   21DA 51 10              1299 	.word	_drawThrone
   21DC 51 37              1300 	.word	_drawBox
   21DE 51 0F              1301 	.word	_drawNone
   21E0                    1302 LC29:
   21E0 4F 52 49 47 49 4E  1303 	.ascii	"ORIGINAL BY DANIEL MICHAEL LAWRENCE\0"
        41 4C 20 42 59 20
        44 41 4E 49 45 4C
        20 4D 49 43 48 41
        45 4C 20 4C 41 57
        52 45 4E 43 45 00
   2204                    1304 LC30:
   2204 20 20 20 20 20 56  1305 	.ascii	"     VECTREX VERSION BY MALBAN\0"
        45 43 54 52 45 58
        20 56 45 52 53 49
        4F 4E 20 42 59 20
        4D 41 4C 42 41 4E
        00
   2223                    1306 LC31:
   2223 20 20 20 20 20 20  1307 	.ascii	"        PRESS <1-3> BUTTON TO PLAY\0"
        20 20 50 52 45 53
        53 20 3C 31 2D 33
        3E 20 42 55 54 54
        4F 4E 20 54 4F 20
        50 4C 41 59 00
   2246                    1308 LC32:
   2246 20 20 20 20 20 20  1309 	.ascii	"        PRESS <4> BUTTON TO LOAD\0"
        20 20 50 52 45 53
        53 20 3C 34 3E 20
        42 55 54 54 4F 4E
        20 54 4F 20 4C 4F
        41 44 00
   2267                    1310 LC33:
   2267 20 20 20 20 20 20  1311 	.ascii	"           GREETINGS TO:\0"
        20 20 20 20 20 47
        52 45 45 54 49 4E
        47 53 20 54 4F 3A
        00
   2280                    1312 LC34:
   2280 20 20 20 20 20 50  1313 	.ascii	"     PEER, BRETT AND PHILLIP\0"
        45 45 52 2C 20 42
        52 45 54 54 20 41
        4E 44 20 50 48 49
        4C 4C 49 50 00
   229D                    1314 LC35:
   229D 20 20 20 20 54 49  1315 	.ascii	"    TITLE MUSIC BY ROALD STRAUSS\0"
        54 4C 45 20 4D 55
        53 49 43 20 42 59
        20 52 4F 41 4C 44
        20 53 54 52 41 55
        53 53 00
   22BE                    1316 LC36:
   22BE 20 20 20 20 49 4E  1317 	.ascii	"    INTERNET: INDIEGAMEMUSIC.COM\0"
        54 45 52 4E 45 54
        3A 20 49 4E 44 49
        45 47 41 4D 45 4D
        55 53 49 43 2E 43
        4F 4D 00
   22DF                    1318 LC37:
   22DF 20 20 20 20 20 20  1319 	.ascii	"             THANKS!!!\0"
        20 20 20 20 20 20
        20 54 48 41 4E 4B
        53 21 21 21 00
                           1320 	.globl	_titleScreen
   22F6                    1321 _titleScreen:
   22F6 34 40         [ 6] 1322 	pshs	u	;
   22F8 32 7D         [ 5] 1323 	leas	-3,s	;,,
                           1324 ;----- asm -----
                           1325 ; 240 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1326 	; #ENR#[239]m = 0;
                           1327 ;--- end asm ---
   22FA 7F C9 77      [ 7] 1328 	clr	_m	; m
                           1329 ;----- asm -----
                           1330 ; 242 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1331 	; #ENR#[240]initsong();
                           1332 ;--- end asm ---
   22FD BD 10 B0      [ 8] 1333 	jsr	_initSong
                           1334 ;----- asm -----
                           1335 ; 245 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1336 	; #ENR#[242]if (flashavailable) checksavedflash();
                           1337 ;--- end asm ---
   2300 7D C9 08      [ 7] 1338 	tst	_flashAvailable	; flashAvailable
   2303 10 26 01 3F   [ 6] 1339 	lbne	L14	;
   2307                    1340 L2:
                           1341 ;----- asm -----
                           1342 ; 247 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1343 	; #ENR#[243]titlestart:
                           1344 ;--- end asm ---
   2307                    1345 L3:
                           1346 ;----- asm -----
                           1347 ; 249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1348 	; #ENR#[244]clearmessage();
                           1349 ;--- end asm ---
   2307 7F C9 87      [ 7] 1350 	clr	_msgLine	; msgLine
                           1351 ;----- asm -----
                           1352 ; 251 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1353 	; #ENR#[245]_xc=-0x60;
                           1354 ;--- end asm ---
   230A C6 A0         [ 2] 1355 	ldb	#-96	;,
   230C F7 C9 85      [ 5] 1356 	stb	__XC	;, _XC
                           1357 ;----- asm -----
                           1358 ; 253 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1359 	; #ENR#[246]ltmp=title_timer;
                           1360 ;--- end asm ---
   230F 8E 00 96      [ 3] 1361 	ldx	#150	;,
   2312 BF C9 02      [ 6] 1362 	stx	_ltmp	;, ltmp
                           1363 ;----- asm -----
                           1364 ; 255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1365 	; #ENR#[247]int stage = 0;
                           1366 ; 257 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1367 	; #ENR#[248]printmessage();
                           1368 ;--- end asm ---
   2315 8E 21 E0      [ 3] 1369 	ldx	#LC29	;,
   2318 BD 38 A9      [ 8] 1370 	jsr	_printMessage
                           1371 ;----- asm -----
                           1372 ; 259 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1373 	; #ENR#[249]printmessage();
                           1374 ;--- end asm ---
   231B 8E 22 04      [ 3] 1375 	ldx	#LC30	;,
   231E BD 38 A9      [ 8] 1376 	jsr	_printMessage
                           1377 ;----- asm -----
                           1378 ; 261 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1379 	; #ENR#[250]while(1)
                           1380 ;--- end asm ---
   2321 6F 62         [ 7] 1381 	clr	2,s	; stage
   2323 20 23         [ 3] 1382 	bra	L9	;
   2325                    1383 L5:
                           1384 ;----- asm -----
                           1385 ; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1386 	; #ENR#[281]if (stage == 1)
                           1387 ;--- end asm ---
   2325 E6 62         [ 5] 1388 	ldb	2,s	;, stage
   2327 C1 01         [ 2] 1389 	cmpb	#1	;cmpqi:	;,
   2329 10 27 00 9B   [ 6] 1390 	lbeq	L15	;
   232D                    1391 L6:
                           1392 ;----- asm -----
                           1393 ; 328 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1394 	; #ENR#[289]if (stage == 2)
                           1395 ;--- end asm ---
   232D E6 62         [ 5] 1396 	ldb	2,s	;, stage
   232F C1 02         [ 2] 1397 	cmpb	#2	;cmpqi:	;,
   2331 10 27 01 00   [ 6] 1398 	lbeq	L16	;
   2335                    1399 L7:
                           1400 ;----- asm -----
                           1401 ; 337 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1402 	; #ENR#[295]if (stage == 3)
                           1403 ;--- end asm ---
   2335 C1 03         [ 2] 1404 	cmpb	#3	;cmpqi:	;,
   2337 10 27 00 DD   [ 6] 1405 	lbeq	L17	;
                           1406 ;----- asm -----
                           1407 ; 347 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1408 	; #ENR#[301]if (stage == 4)
                           1409 ;--- end asm ---
   233B C1 04         [ 2] 1410 	cmpb	#4	;cmpqi:	;,
   233D 10 27 00 F1   [ 6] 1411 	lbeq	L18	;
   2341                    1412 L4:
                           1413 ;----- asm -----
                           1414 ; 355 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1415 	; #ENR#[307]if (buttons_pressed())break;
                           1416 ;--- end asm ---
   2341 F6 C8 11      [ 5] 1417 	ldb	_Vec_Buttons	; D.4185, Vec_Buttons
   2344 10 26 00 9D   [ 6] 1418 	lbne	L19	;
   2348                    1419 L9:
                           1420 ;----- asm -----
                           1421 ; 264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1422 	; #ENR#[252]check_buttons();
                           1423 ;--- end asm ---
   2348 BD F1 BA      [ 8] 1424 	jsr	___Read_Btns
                           1425 ;----- asm -----
                           1426 ; 266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1427 	; #ENR#[253]playsong();
                           1428 ;--- end asm ---
   234B BD 00 98      [ 8] 1429 	jsr	_playSong
                           1430 ;----- asm -----
                           1431 ; 268 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1432 	; #ENR#[254]wait_recal();
                           1433 ;--- end asm ---
   234E BD F1 92      [ 8] 1434 	jsr	___Wait_Recal
                           1435 ;----- asm -----
                           1436 ; 270 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1437 	; #ENR#[255]dp_via_t1_cnt_lo  = 0x80;
                           1438 ;--- end asm ---
   2351 C6 80         [ 2] 1439 	ldb	#-128	;,
   2353 D7 04         [ 4] 1440 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1441 ;----- asm -----
                           1442 ; 272 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1443 	; #ENR#[256]intensity_a(0x4f);
                           1444 ;--- end asm ---
   2355 C6 4F         [ 2] 1445 	ldb	#79	;,
   2357 BD 7C 95      [ 8] 1446 	jsr	__Intensity_a
                           1447 ;----- asm -----
                           1448 ; 274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1449 	; #ENR#[257]displaymessages();
                           1450 ;--- end asm ---
   235A 5F            [ 2] 1451 	clrb	;
   235B BD 00 83      [ 8] 1452 	jsr	_subBank1
                           1453 ;----- asm -----
                           1454 ; 276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1455 	; #ENR#[258]intensity_a(0x3f);
                           1456 ;--- end asm ---
   235E C6 3F         [ 2] 1457 	ldb	#63	;,
   2360 BD 7C 95      [ 8] 1458 	jsr	__Intensity_a
                           1459 ;----- asm -----
                           1460 ; 279 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1461 	; #ENR#[260]dp_via_t1_cnt_lo  = 0x09;
                           1462 ;--- end asm ---
   2363 C6 09         [ 2] 1463 	ldb	#9	;,
   2365 D7 04         [ 4] 1464 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1465 ;----- asm -----
                           1466 ; 281 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1467 	; #ENR#[261]dp_via_cntl = 0xce;
                           1468 ;--- end asm ---
   2367 C6 CE         [ 2] 1469 	ldb	#-50	;,
   2369 D7 0C         [ 4] 1470 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1471 ;----- asm -----
                           1472 ; 283 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1473 	; #ENR#[262]monsterdrawer[m]();
                           1474 ;--- end asm ---
   236B F6 C9 77      [ 5] 1475 	ldb	_m	;, m
   236E 1D            [ 2] 1476 	sex		;extendqihi2: R:b -> R:d	;,
   236F ED E4         [ 5] 1477 	std	,s	;,
   2371 58            [ 2] 1478 	aslb	;
   2372 49            [ 2] 1479 	rola	;
   2373 1F 01         [ 6] 1480 	tfr	d,x	;, tmp34
   2375 AD 99 21 A4   [14] 1481 	jsr	[_monsterDrawer,x]
                           1482 ;----- asm -----
                           1483 ; 285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1484 	; #ENR#[263]__ass(::: ,,,);
                           1485 ; 286 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2379 4F            [ 2] 1486 	clra
   237A 97 0A         [ 4] 1487 	sta *0x0a
                           1488 ; 288 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1489 	; #ENR#[265]dp_via_t1_cnt_lo  = 0x80;
                           1490 ;--- end asm ---
   237C C6 80         [ 2] 1491 	ldb	#-128	;,
   237E D7 04         [ 4] 1492 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1493 ;----- asm -----
                           1494 ; 290 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1495 	; #ENR#[266]moveto_d(0,30);
                           1496 ;--- end asm ---
   2380 6F E2         [ 8] 1497 	clr	,-s	;
   2382 C6 1E         [ 2] 1498 	ldb	#30	;,
   2384 BD 7C E4      [ 8] 1499 	jsr	__Moveto_d
                           1500 ;----- asm -----
                           1501 ; 293 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1502 	; #ENR#[268]dp_via_t1_cnt_lo  = 0x09;
                           1503 ;--- end asm ---
   2387 C6 09         [ 2] 1504 	ldb	#9	;,
   2389 D7 04         [ 4] 1505 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1506 ;----- asm -----
                           1507 ; 295 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1508 	; #ENR#[269]dp_via_cntl = 0xce;
                           1509 ;--- end asm ---
   238B C6 CE         [ 2] 1510 	ldb	#-50	;,
   238D D7 0C         [ 4] 1511 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1512 ;----- asm -----
                           1513 ; 297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1514 	; #ENR#[270]drawplayer();
                           1515 ;--- end asm ---
   238F BD 50 37      [ 8] 1516 	jsr	_drawPlayer
                           1517 ;----- asm -----
                           1518 ; 300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1519 	; #ENR#[272]drawtitle();
                           1520 ;--- end asm ---
   2392 BD 48 5E      [ 8] 1521 	jsr	_drawTitle
                           1522 ;----- asm -----
                           1523 ; 302 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1524 	; #ENR#[273]if (ltmp-- == 0)
                           1525 ;--- end asm ---
   2395 BE C9 02      [ 6] 1526 	ldx	_ltmp	; ltmp.4, ltmp
   2398 33 1F         [ 5] 1527 	leau	-1,x	;,, ltmp.4
   239A FF C9 02      [ 6] 1528 	stu	_ltmp	;, ltmp
   239D 32 61         [ 5] 1529 	leas	1,s	;,,
   239F 8C 00 00      [ 4] 1530 	cmpx	#0	; ltmp.4
   23A2 10 26 FF 9B   [ 6] 1531 	lbne	L4	;
                           1532 ;----- asm -----
                           1533 ; 305 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1534 	; #ENR#[275]ltmp = title_timer;
                           1535 ;--- end asm ---
   23A6 8E 00 96      [ 3] 1536 	ldx	#150	;,
   23A9 BF C9 02      [ 6] 1537 	stx	_ltmp	;, ltmp
                           1538 ;----- asm -----
                           1539 ; 307 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1540 	; #ENR#[276]clearmessage();
                           1541 ;--- end asm ---
   23AC 7F C9 87      [ 7] 1542 	clr	_msgLine	; msgLine
                           1543 ;----- asm -----
                           1544 ; 309 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1545 	; #ENR#[277]stage++;
                           1546 ;--- end asm ---
   23AF 6C 62         [ 7] 1547 	inc	2,s	; stage
                           1548 ;----- asm -----
                           1549 ; 311 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1550 	; #ENR#[278]m++;
                           1551 ;--- end asm ---
   23B1 7C C9 77      [ 7] 1552 	inc	_m	; m
   23B4 F6 C9 77      [ 5] 1553 	ldb	_m	; m.6, m
                           1554 ;----- asm -----
                           1555 ; 313 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1556 	; #ENR#[279]if (m==20) m=0;
                           1557 ;--- end asm ---
   23B7 C1 14         [ 2] 1558 	cmpb	#20	;cmpqi:	; m.6,
   23B9 10 26 FF 68   [ 6] 1559 	lbne	L5	;
   23BD 7F C9 77      [ 7] 1560 	clr	_m	; m
                           1561 ;----- asm -----
                           1562 ; 316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1563 	; #ENR#[281]if (stage == 1)
                           1564 ;--- end asm ---
   23C0 E6 62         [ 5] 1565 	ldb	2,s	;, stage
   23C2 C1 01         [ 2] 1566 	cmpb	#1	;cmpqi:	;,
   23C4 10 26 FF 65   [ 6] 1567 	lbne	L6	;
   23C8                    1568 L15:
                           1569 ;----- asm -----
                           1570 ; 319 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1571 	; #ENR#[283]printmessage();
                           1572 ;--- end asm ---
   23C8 8E 22 23      [ 3] 1573 	ldx	#LC31	;,
   23CB BD 38 A9      [ 8] 1574 	jsr	_printMessage
                           1575 ;----- asm -----
                           1576 ; 321 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1577 	; #ENR#[284]if ((!vec_num_players) && (flashavailable))
                           1578 ;--- end asm ---
   23CE 7D C8 79      [ 7] 1579 	tst	_Vec_Num_Players	; Vec_Num_Players
   23D1 10 26 FF 58   [ 6] 1580 	lbne	L6	;
   23D5 7D C9 08      [ 7] 1581 	tst	_flashAvailable	; flashAvailable
   23D8 10 27 FF 51   [ 6] 1582 	lbeq	L6	;
                           1583 ;----- asm -----
                           1584 ; 324 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1585 	; #ENR#[286]printmessage();
                           1586 ;--- end asm ---
   23DC 8E 22 46      [ 3] 1587 	ldx	#LC32	;,
   23DF BD 38 A9      [ 8] 1588 	jsr	_printMessage
   23E2 16 FF 48      [ 5] 1589 	lbra	L6	;
   23E5                    1590 L19:
                           1591 ;----- asm -----
                           1592 ; 358 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1593 	; #ENR#[309]if ((!vec_num_players) && (flashavailable))
                           1594 ;--- end asm ---
   23E5 7D C8 79      [ 7] 1595 	tst	_Vec_Num_Players	; Vec_Num_Players
   23E8 26 0F         [ 3] 1596 	bne	L10	;
   23EA 7D C9 08      [ 7] 1597 	tst	_flashAvailable	; flashAvailable
   23ED 27 0A         [ 3] 1598 	beq	L10	;
                           1599 ;----- asm -----
                           1600 ; 361 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1601 	; #ENR#[311]if (button_1_4_pressed())
                           1602 ;--- end asm ---
   23EF C4 08         [ 2] 1603 	andb	#8	; D.4185,
   23F1 27 06         [ 3] 1604 	beq	L10	;
   23F3 CC 00 01      [ 3] 1605 	ldd	#1	;,
   23F6 FD C9 63      [ 6] 1606 	std	_ch	;, ch
   23F9                    1607 L10:
                           1608 ;----- asm -----
                           1609 ; 373 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1610 	; #ENR#[322]vec_music_wk_7 = 0x3f;
                           1611 ;--- end asm ---
   23F9 C6 3F         [ 2] 1612 	ldb	#63	;,
   23FB F7 C8 45      [ 5] 1613 	stb	_Vec_Music_Wk_7	;, Vec_Music_Wk_7
                           1614 ;----- asm -----
                           1615 ; 375 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1616 	; #ENR#[323]vec_xxx_04 = 0x0;
                           1617 ;--- end asm ---
   23FE 7F C8 44      [ 7] 1618 	clr	_Vec_XXX_04	; Vec_XXX_04
                           1619 ;----- asm -----
                           1620 ; 377 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1621 	; #ENR#[324]vec_xxx_03 = 0x0;
                           1622 ;--- end asm ---
   2401 7F C8 43      [ 7] 1623 	clr	_Vec_XXX_03	; Vec_XXX_03
                           1624 ;----- asm -----
                           1625 ; 379 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1626 	; #ENR#[325]vec_music_wk_a = 0x0;
                           1627 ;--- end asm ---
   2404 7F C8 42      [ 7] 1628 	clr	_Vec_Music_Wk_A	; Vec_Music_Wk_A
                           1629 ;----- asm -----
                           1630 ; 382 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1631 	; #ENR#[327]m=-1;
                           1632 ;--- end asm ---
   2407 C6 FF         [ 2] 1633 	ldb	#-1	;,
   2409 F7 C9 77      [ 5] 1634 	stb	_m	;, m
                           1635 ;----- asm -----
                           1636 ; 384 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1637 	; #ENR#[328]_xc = -0x70;
                           1638 ;--- end asm ---
   240C C6 90         [ 2] 1639 	ldb	#-112	;,
   240E F7 C9 85      [ 5] 1640 	stb	__XC	;, _XC
                           1641 ;----- asm -----
                           1642 ; 386 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1643 	; #ENR#[329]ply_song_playing = 0;
                           1644 ;--- end asm ---
   2411 7F CA F7      [ 7] 1645 	clr	_PLY_SONG_PLAYING	; PLY_SONG_PLAYING
   2414 32 63         [ 5] 1646 	leas	3,s	;,,
   2416 35 C0         [ 7] 1647 	puls	u,pc	;
   2418                    1648 L17:
                           1649 ;----- asm -----
                           1650 ; 340 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1651 	; #ENR#[297]printmessage();
                           1652 ;--- end asm ---
   2418 8E 22 9D      [ 3] 1653 	ldx	#LC35	;,
   241B BD 38 A9      [ 8] 1654 	jsr	_printMessage
                           1655 ;----- asm -----
                           1656 ; 342 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1657 	; #ENR#[298]printmessage();
                           1658 ;--- end asm ---
   241E 8E 22 BE      [ 3] 1659 	ldx	#LC36	;,
   2421 BD 38 A9      [ 8] 1660 	jsr	_printMessage
                           1661 ;----- asm -----
                           1662 ; 344 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1663 	; #ENR#[299]printmessage();
                           1664 ;--- end asm ---
   2424 8E 22 DF      [ 3] 1665 	ldx	#LC37	;,
   2427 BD 38 A9      [ 8] 1666 	jsr	_printMessage
   242A E6 62         [ 5] 1667 	ldb	2,s	;, stage
                           1668 ;----- asm -----
                           1669 ; 347 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1670 	; #ENR#[301]if (stage == 4)
                           1671 ;--- end asm ---
   242C C1 04         [ 2] 1672 	cmpb	#4	;cmpqi:	;,
   242E 10 26 FF 0F   [ 6] 1673 	lbne	L4	;
   2432                    1674 L18:
                           1675 ;----- asm -----
                           1676 ; 350 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1677 	; #ENR#[303]goto titlestart;
                           1678 ;--- end asm ---
   2432 16 FE D2      [ 5] 1679 	lbra	L3	;
   2435                    1680 L16:
                           1681 ;----- asm -----
                           1682 ; 331 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1683 	; #ENR#[291]printmessage();
                           1684 ;--- end asm ---
   2435 8E 22 67      [ 3] 1685 	ldx	#LC33	;,
   2438 BD 38 A9      [ 8] 1686 	jsr	_printMessage
                           1687 ;----- asm -----
                           1688 ; 333 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1689 	; #ENR#[292]printmessage();
                           1690 ;--- end asm ---
   243B 8E 22 80      [ 3] 1691 	ldx	#LC34	;,
   243E BD 38 A9      [ 8] 1692 	jsr	_printMessage
   2441 E6 62         [ 5] 1693 	ldb	2,s	;, stage
   2443 16 FE EF      [ 5] 1694 	lbra	L7	;
   2446                    1695 L14:
   2446 BD 14 E9      [ 8] 1696 	jsr	_checkSavedFlash
   2449 16 FE BB      [ 5] 1697 	lbra	L2	;
                           1698 	.globl	_getMapPos
   244C                    1699 _getMapPos:
   244C 34 60         [ 7] 1700 	pshs	y,u	;
   244E 32 7D         [ 5] 1701 	leas	-3,s	;,,
   2450 E7 E4         [ 4] 1702 	stb	,s	; x, x
                           1703 ;----- asm -----
                           1704 ; 411 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1705 	; #ENR#[353]mulif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
                           1706 ;--- end asm ---
   2452 8E CA 80      [ 3] 1707 	ldx	#_fpackX0x	;,
   2455 34 10         [ 6] 1708 	pshs	x	;
   2457 8E 1D 8A      [ 3] 1709 	ldx	#_FP_X0_PACKED	;,
   245A 34 10         [ 6] 1710 	pshs	x	;
   245C 4F            [ 2] 1711 	clra		;zero_extendqihi: R:b -> R:d	; x,
   245D 1F 01         [ 6] 1712 	tfr	d,x	;,
   245F BD 16 A9      [ 8] 1713 	jsr	_mulIF
                           1714 ;----- asm -----
                           1715 ; 413 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1716 	; #ENR#[354]mulif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
                           1717 ;--- end asm ---
   2462 8E CA 85      [ 3] 1718 	ldx	#_fpackY0y	;,
   2465 34 10         [ 6] 1719 	pshs	x	;
   2467 8E 1D 8F      [ 3] 1720 	ldx	#_FP_Y0_PACKED	;,
   246A 34 10         [ 6] 1721 	pshs	x	;
   246C E6 E8 11      [ 5] 1722 	ldb	17,s	;, y
   246F 4F            [ 2] 1723 	clra		;zero_extendqihi: R:b -> R:d	;,
   2470 1F 01         [ 6] 1724 	tfr	d,x	;,
   2472 BD 16 A9      [ 8] 1725 	jsr	_mulIF
                           1726 ;----- asm -----
                           1727 ; 415 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1728 	; #ENR#[355]mulif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
                           1729 ;--- end asm ---
   2475 CE 1D 94      [ 3] 1730 	ldu	#_FP_Z0_PACKED	; FP_Z0_PACKED.10,
   2478 32 68         [ 5] 1731 	leas	8,s	;,,
   247A 10 8E CA 8A   [ 4] 1732 	ldy	#_fpackZ0z	; tmp46,
   247E 34 20         [ 6] 1733 	pshs	y	; tmp46
   2480 34 40         [ 6] 1734 	pshs	u	; FP_Z0_PACKED.10
   2482 E6 6E         [ 5] 1735 	ldb	14,s	;, z
   2484 4F            [ 2] 1736 	clra		;zero_extendqihi: R:b -> R:d	;,
   2485 1F 01         [ 6] 1737 	tfr	d,x	;,
   2487 BD 16 A9      [ 8] 1738 	jsr	_mulIF
                           1739 ;----- asm -----
                           1740 ; 418 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1741 	; #ENR#[357]addf(fpackx0x, fpacky0y, fpacktmp1);
                           1742 ;--- end asm ---
   248A 8E CA 8F      [ 3] 1743 	ldx	#_fpacktmp1	;,
   248D 34 10         [ 6] 1744 	pshs	x	;
   248F 8E CA 85      [ 3] 1745 	ldx	#_fpackY0y	;,
   2492 34 10         [ 6] 1746 	pshs	x	;
   2494 8E CA 80      [ 3] 1747 	ldx	#_fpackX0x	;,
   2497 BD 16 C4      [ 8] 1748 	jsr	_addF
                           1749 ;----- asm -----
                           1750 ; 420 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1751 	; #ENR#[358]addf(fpackz0z, fpacktmp1, fpacktmp1);
                           1752 ;--- end asm ---
   249A 32 68         [ 5] 1753 	leas	8,s	;,,
   249C 8E CA 8F      [ 3] 1754 	ldx	#_fpacktmp1	;,
   249F 34 10         [ 6] 1755 	pshs	x	;
   24A1 34 10         [ 6] 1756 	pshs	x	;
   24A3 30 A4         [ 4] 1757 	leax	,y	;, tmp46
   24A5 BD 16 C4      [ 8] 1758 	jsr	_addF
                           1759 ;----- asm -----
                           1760 ; 423 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1761 	; #ENR#[360]addif((unsigned long int)x, (unsigned char *) fp_x0_packed, fpackx0x);
                           1762 ;--- end asm ---
   24A8 8E CA 80      [ 3] 1763 	ldx	#_fpackX0x	;,
   24AB 34 10         [ 6] 1764 	pshs	x	;
   24AD 8E 1D 8A      [ 3] 1765 	ldx	#_FP_X0_PACKED	;,
   24B0 34 10         [ 6] 1766 	pshs	x	;
   24B2 E6 68         [ 5] 1767 	ldb	8,s	;, x
   24B4 4F            [ 2] 1768 	clra		;zero_extendqihi: R:b -> R:d	;,
   24B5 1F 01         [ 6] 1769 	tfr	d,x	;,
   24B7 BD 16 D1      [ 8] 1770 	jsr	_addIF
                           1771 ;----- asm -----
                           1772 ; 425 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1773 	; #ENR#[361]addif((unsigned long int)y, (unsigned char *) fp_y0_packed, fpacky0y);
                           1774 ;--- end asm ---
   24BA 32 68         [ 5] 1775 	leas	8,s	;,,
   24BC 8E CA 85      [ 3] 1776 	ldx	#_fpackY0y	;,
   24BF 34 10         [ 6] 1777 	pshs	x	;
   24C1 8E 1D 8F      [ 3] 1778 	ldx	#_FP_Y0_PACKED	;,
   24C4 34 10         [ 6] 1779 	pshs	x	;
   24C6 E6 6D         [ 5] 1780 	ldb	13,s	;, y
   24C8 4F            [ 2] 1781 	clra		;zero_extendqihi: R:b -> R:d	;,
   24C9 1F 01         [ 6] 1782 	tfr	d,x	;,
   24CB BD 16 D1      [ 8] 1783 	jsr	_addIF
                           1784 ;----- asm -----
                           1785 ; 427 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1786 	; #ENR#[362]addif((unsigned long int)z, (unsigned char *) fp_z0_packed, fpackz0z);
                           1787 ;--- end asm ---
   24CE 34 20         [ 6] 1788 	pshs	y	; tmp46
   24D0 34 40         [ 6] 1789 	pshs	u	; FP_Z0_PACKED.10
   24D2 E6 E8 12      [ 5] 1790 	ldb	18,s	;, z
   24D5 4F            [ 2] 1791 	clra		;zero_extendqihi: R:b -> R:d	;,
   24D6 1F 01         [ 6] 1792 	tfr	d,x	;,
   24D8 BD 16 D1      [ 8] 1793 	jsr	_addIF
                           1794 ;----- asm -----
                           1795 ; 430 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1796 	; #ENR#[364]mulf(fpackx0x, fpacky0y, fpacktmp2);
                           1797 ;--- end asm ---
   24DB 32 68         [ 5] 1798 	leas	8,s	;,,
   24DD CE CA 94      [ 3] 1799 	ldu	#_fpacktmp2	; tmp54,
   24E0 34 40         [ 6] 1800 	pshs	u	; tmp54
   24E2 8E CA 85      [ 3] 1801 	ldx	#_fpackY0y	;,
   24E5 34 10         [ 6] 1802 	pshs	x	;
   24E7 8E CA 80      [ 3] 1803 	ldx	#_fpackX0x	;,
   24EA BD 16 B7      [ 8] 1804 	jsr	_mulF
                           1805 ;----- asm -----
                           1806 ; 432 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1807 	; #ENR#[365]mulf(fpackz0z, fpacktmp2, fpacktmp2);
                           1808 ;--- end asm ---
   24ED 34 40         [ 6] 1809 	pshs	u	; tmp54
   24EF 34 40         [ 6] 1810 	pshs	u	; tmp54
   24F1 30 A4         [ 4] 1811 	leax	,y	;, tmp46
   24F3 BD 16 B7      [ 8] 1812 	jsr	_mulF
                           1813 ;----- asm -----
                           1814 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1815 	; #ENR#[367]addf(fpacktmp1, fpacktmp2, fpackq);
                           1816 ;--- end asm ---
   24F6 32 68         [ 5] 1817 	leas	8,s	;,,
   24F8 10 8E CA 99   [ 4] 1818 	ldy	#_fpackQ	; tmp58,
   24FC 34 20         [ 6] 1819 	pshs	y	; tmp58
   24FE 34 40         [ 6] 1820 	pshs	u	; tmp54
   2500 8E CA 8F      [ 3] 1821 	ldx	#_fpacktmp1	;,
   2503 BD 16 C4      [ 8] 1822 	jsr	_addF
                           1823 ;----- asm -----
                           1824 ; 444 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1825 	; #ENR#[375]intf(fpackq, fpacktmp2);
                           1826 ;--- end asm ---
   2506 34 40         [ 6] 1827 	pshs	u	; tmp54
   2508 30 A4         [ 4] 1828 	leax	,y	;, tmp58
   250A BD 16 EE      [ 8] 1829 	jsr	_intF
                           1830 ;----- asm -----
                           1831 ; 446 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1832 	; #ENR#[376]subf(fpackq, fpacktmp2, fpacktmp1);
                           1833 ;--- end asm ---
   250D 8E CA 8F      [ 3] 1834 	ldx	#_fpacktmp1	;,
   2510 34 10         [ 6] 1835 	pshs	x	;
   2512 34 40         [ 6] 1836 	pshs	u	; tmp54
   2514 30 A4         [ 4] 1837 	leax	,y	;, tmp58
   2516 BD 16 DF      [ 8] 1838 	jsr	_subF
                           1839 ;----- asm -----
                           1840 ; 448 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1841 	; #ENR#[377]mulif((unsigned long int)w0, fpacktmp1, fpacktmp1);
                           1842 ;--- end asm ---
   2519 32 6A         [ 5] 1843 	leas	10,s	;,,
   251B 8E CA 8F      [ 3] 1844 	ldx	#_fpacktmp1	;,
   251E 34 10         [ 6] 1845 	pshs	x	;
   2520 34 10         [ 6] 1846 	pshs	x	;
   2522 8E 12 56      [ 3] 1847 	ldx	#4694	;,
   2525 BD 16 A9      [ 8] 1848 	jsr	_mulIF
                           1849 ;----- asm -----
                           1850 ; 451 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1851 	; #ENR#[379]unsigned long int h = (unsigned long int) toint(fpacktmp1);
                           1852 ;--- end asm ---
   2528 8E CA 8F      [ 3] 1853 	ldx	#_fpacktmp1	;,
   252B BD 16 F8      [ 8] 1854 	jsr	_toInt
   252E AF 65         [ 6] 1855 	stx	5,s	;, h
                           1856 ;----- asm -----
                           1857 ; 456 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1858 	; #ENR#[383]if (((h>>8)&0xff) >5) h = h & 0xff;
                           1859 ;--- end asm ---
   2530 1F 10         [ 6] 1860 	tfr	x,d	;, tmp65
   2532 1F 89         [ 6] 1861 	tfr	a,b	;,
   2534 4F            [ 2] 1862 	clra		;zero_extendqihi: R:b -> R:d	;,
   2535 32 64         [ 5] 1863 	leas	4,s	;,,
   2537 10 83 00 05   [ 5] 1864 	cmpd	#5	;cmphi:	; tmp65,
   253B 23 05         [ 3] 1865 	bls	L21	;
   253D EC 61         [ 6] 1866 	ldd	1,s	;, h
   253F 4F            [ 2] 1867 	clra	;andqi(ZERO)	;
                           1868 		;andqi(-1)
   2540 ED 61         [ 6] 1869 	std	1,s	;, h
   2542                    1870 L21:
                           1871 ;----- asm -----
                           1872 ; 460 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1873 	; #ENR#[386]if ((h&0xff00) > 0)
                           1874 ;--- end asm ---
   2542 EC 61         [ 6] 1875 	ldd	1,s	; tmp66, h
                           1876 		;andqi(-1)
   2544 5F            [ 2] 1877 	clrb	;andqi(ZERO)	;
   2545 10 83 00 00   [ 5] 1878 	cmpd	#0	; tmp66
   2549 26 2A         [ 3] 1879 	bne	L32	;
   254B                    1880 L22:
                           1881 ;----- asm -----
                           1882 ; 512 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1883 	; #ENR#[427]if ((x == 1) || (x == 201)) h = h | 12;
                           1884 ;--- end asm ---
   254B E6 E4         [ 4] 1885 	ldb	,s	;, x
   254D C1 01         [ 2] 1886 	cmpb	#1	;cmpqi:	;,
   254F 27 1C         [ 3] 1887 	beq	L27	;
   2551 C1 C9         [ 2] 1888 	cmpb	#-55	;cmpqi:	;,
   2553 27 18         [ 3] 1889 	beq	L27	;
   2555                    1890 L28:
                           1891 ;----- asm -----
                           1892 ; 514 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1893 	; #ENR#[428]if ((y == 1) || (y == 201)) h = h | 3;
                           1894 ;--- end asm ---
   2555 E6 69         [ 5] 1895 	ldb	9,s	;, y
   2557 C1 01         [ 2] 1896 	cmpb	#1	;cmpqi:	;,
   2559 27 0A         [ 3] 1897 	beq	L29	;
   255B C1 C9         [ 2] 1898 	cmpb	#-55	;cmpqi:	;,
   255D 27 06         [ 3] 1899 	beq	L29	;
   255F                    1900 L30:
                           1901 ;----- asm -----
                           1902 ; 517 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1903 	; #ENR#[430]return h;
                           1904 ;--- end asm ---
   255F AE 61         [ 6] 1905 	ldx	1,s	;, h
   2561 32 63         [ 5] 1906 	leas	3,s	;,,
   2563 35 E0         [ 8] 1907 	puls	y,u,pc	;
   2565                    1908 L29:
   2565 EC 61         [ 6] 1909 	ldd	1,s	;, h
                           1910 		;iorqi(ZERO)
   2567 CA 03         [ 2] 1911 	orb	#3	;,
   2569 ED 61         [ 6] 1912 	std	1,s	;, h
   256B 20 F2         [ 3] 1913 	bra	L30	;
   256D                    1914 L27:
   256D EC 61         [ 6] 1915 	ldd	1,s	;, h
                           1916 		;iorqi(ZERO)
   256F CA 0C         [ 2] 1917 	orb	#12	;,
   2571 ED 61         [ 6] 1918 	std	1,s	;, h
   2573 20 E0         [ 3] 1919 	bra	L28	;
   2575                    1920 L32:
                           1921 ;----- asm -----
                           1922 ; 466 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1923 	; #ENR#[391]mulif((unsigned long int)10, fpackq, fpackq);
                           1924 ;--- end asm ---
   2575 CE CA 99      [ 3] 1925 	ldu	#_fpackQ	; tmp67,
   2578 34 40         [ 6] 1926 	pshs	u	; tmp67
   257A 34 40         [ 6] 1927 	pshs	u	; tmp67
   257C 8E 00 0A      [ 3] 1928 	ldx	#10	;,
   257F BD 16 A9      [ 8] 1929 	jsr	_mulIF
                           1930 ;----- asm -----
                           1931 ; 470 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1932 	; #ENR#[394]intf(fpackq, fpacktmp2);
                           1933 ;--- end asm ---
   2582 8E CA 94      [ 3] 1934 	ldx	#_fpacktmp2	;,
   2585 34 10         [ 6] 1935 	pshs	x	;
   2587 30 C4         [ 4] 1936 	leax	,u	;, tmp67
   2589 BD 16 EE      [ 8] 1937 	jsr	_intF
                           1938 ;----- asm -----
                           1939 ; 472 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1940 	; #ENR#[395]subf(fpackq, fpacktmp2, fpacktmp1);
                           1941 ;--- end asm ---
   258C 10 8E CA 8F   [ 4] 1942 	ldy	#_fpacktmp1	; tmp70,
   2590 34 20         [ 6] 1943 	pshs	y	; tmp70
   2592 8E CA 94      [ 3] 1944 	ldx	#_fpacktmp2	;,
   2595 34 10         [ 6] 1945 	pshs	x	;
   2597 30 C4         [ 4] 1946 	leax	,u	;, tmp67
   2599 BD 16 DF      [ 8] 1947 	jsr	_subF
                           1948 ;----- asm -----
                           1949 ; 474 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1950 	; #ENR#[396]mulif((unsigned long int)15, fpacktmp1, fpacktmp1);
                           1951 ;--- end asm ---
   259C 32 6A         [ 5] 1952 	leas	10,s	;,,
   259E 34 20         [ 6] 1953 	pshs	y	; tmp70
   25A0 34 20         [ 6] 1954 	pshs	y	; tmp70
   25A2 8E 00 0F      [ 3] 1955 	ldx	#15	;,
   25A5 BD 16 A9      [ 8] 1956 	jsr	_mulIF
                           1957 ;----- asm -----
                           1958 ; 476 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1959 	; #ENR#[397]unsigned long int h2 = (unsigned long int) toint(fpacktmp1);
                           1960 ;--- end asm ---
   25A8 30 A4         [ 4] 1961 	leax	,y	;, tmp70
   25AA BD 16 F8      [ 8] 1962 	jsr	_toInt
                           1963 ;----- asm -----
                           1964 ; 478 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1965 	; #ENR#[398]h2 += 1;
                           1966 ;--- end asm ---
   25AD 33 01         [ 5] 1967 	leau	1,x	; h2,, D.3457
                           1968 ;----- asm -----
                           1969 ; 498 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1970 	; #ENR#[417]if (h2 >9) h2 = 0;
                           1971 ;--- end asm ---
   25AF 32 64         [ 5] 1972 	leas	4,s	;,,
   25B1 11 83 00 09   [ 5] 1973 	cmpu	#9	;cmphi:	; h2,
   25B5 22 1C         [ 3] 1974 	bhi	L33	;
   25B7                    1975 L23:
                           1976 ;----- asm -----
                           1977 ; 503 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1978 	; #ENR#[421]if ((cz == 50) && (h2 == 4)) h2 = 0;
                           1979 ;--- end asm ---
   25B7 1F 30         [ 6] 1980 	tfr	u,d	; h2,
   25B9 1F 98         [ 6] 1981 	tfr	b,a	;,
   25BB 5F            [ 2] 1982 	clrb	;
   25BC 1F 01         [ 6] 1983 	tfr	d,x	;, prephitmp.150
   25BE F6 C9 67      [ 5] 1984 	ldb	_cz	;, cz
   25C1 C1 32         [ 2] 1985 	cmpb	#50	;cmpqi:	;,
   25C3 27 13         [ 3] 1986 	beq	L34	;
   25C5                    1987 L25:
                           1988 ;----- asm -----
                           1989 ; 507 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1990 	; #ENR#[424]h2 = h2*256;
                           1991 ; 509 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           1992 	; #ENR#[425]h = h2 | (h&0xff);
                           1993 ;--- end asm ---
   25C5 EC 61         [ 6] 1994 	ldd	1,s	; D.3459, h
   25C7 4F            [ 2] 1995 	clra	;andqi(ZERO)	;
                           1996 		;andqi(-1)
   25C8 34 10         [ 6] 1997 	pshs	x	; prephitmp.150
   25CA AA E0         [ 6] 1998 	ora	,s+	;,
   25CC EA E0         [ 6] 1999 	orb	,s+	;,
   25CE ED 61         [ 6] 2000 	std	1,s	; D.3459, h
   25D0 16 FF 78      [ 5] 2001 	lbra	L22	;
   25D3                    2002 L33:
   25D3 CE 00 00      [ 3] 2003 	ldu	#0	; h2,
   25D6 20 DF         [ 3] 2004 	bra	L23	;
   25D8                    2005 L34:
   25D8 1F 30         [ 6] 2006 	tfr	u,d	; h2,
   25DA 1F 98         [ 6] 2007 	tfr	b,a	;,
   25DC 5F            [ 2] 2008 	clrb	;
   25DD 1F 01         [ 6] 2009 	tfr	d,x	;, prephitmp.150
   25DF 11 83 00 04   [ 5] 2010 	cmpu	#4	;cmphi:	; h2,
   25E3 26 E0         [ 3] 2011 	bne	L25	;
   25E5 8E 00 00      [ 3] 2012 	ldx	#0	; prephitmp.150,
   25E8 20 DB         [ 3] 2013 	bra	L25	;
                           2014 	.globl	_generateDisplayMap
   25EA                    2015 _generateDisplayMap:
   25EA 34 60         [ 7] 2016 	pshs	y,u	;
   25EC 32 71         [ 5] 2017 	leas	-15,s	;,,
                           2018 ;----- asm -----
                           2019 ; 533 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2020 	; #ENR#[445]if (cx>200) cx = cx- (unsigned char) 200;
                           2021 ;--- end asm ---
   25EE F6 C9 3F      [ 5] 2022 	ldb	_cx	; cx.12, cx
   25F1 C1 C8         [ 2] 2023 	cmpb	#-56	;cmpqi:	; cx.12,
   25F3 23 05         [ 3] 2024 	bls	L36	;
   25F5 CB 38         [ 2] 2025 	addb	#56	; cx.12,
   25F7 F7 C9 3F      [ 5] 2026 	stb	_cx	; cx.12, cx
   25FA                    2027 L36:
                           2028 ;----- asm -----
                           2029 ; 535 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2030 	; #ENR#[446]if (cy>200) cy = cy- (unsigned char) 200;
                           2031 ;--- end asm ---
   25FA F6 C9 40      [ 5] 2032 	ldb	_cy	; cy.14, cy
   25FD C1 C8         [ 2] 2033 	cmpb	#-56	;cmpqi:	; cy.14,
   25FF 23 05         [ 3] 2034 	bls	L37	;
   2601 CB 38         [ 2] 2035 	addb	#56	; cy.14,
   2603 F7 C9 40      [ 5] 2036 	stb	_cy	; cy.14, cy
   2606                    2037 L37:
                           2038 ;----- asm -----
                           2039 ; 537 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2040 	; #ENR#[447]if (fillmap != go_no_redraw)
                           2041 ;--- end asm ---
   2606 7D C8 FC      [ 7] 2042 	tst	_fillMap	; fillMap
   2609 10 26 00 7C   [ 6] 2043 	lbne	L63	;
                           2044 ;----- asm -----
                           2045 ; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2046 	; #ENR#[452]switch (fillmap)
                           2047 ;--- end asm ---
   260D F6 C8 FC      [ 5] 2048 	ldb	_fillMap	; fillMap, fillMap
   2610 C1 03         [ 2] 2049 	cmpb	#3	;cmpqi:	; fillMap,
   2612 10 27 00 9A   [ 6] 2050 	lbeq	L42	;
   2616                    2051 L66:
   2616 C1 03         [ 2] 2052 	cmpb	#3	;cmpqi:	; fillMap,
   2618 2F 14         [ 3] 2053 	ble	L64	;
   261A C1 04         [ 2] 2054 	cmpb	#4	;cmpqi:	; fillMap,
   261C 10 27 01 54   [ 6] 2055 	lbeq	L43	;
   2620 C1 7F         [ 2] 2056 	cmpb	#127	;cmpqi:	; fillMap,
   2622 10 27 00 D2   [ 6] 2057 	lbeq	L65	;
   2626                    2058 L39:
                           2059 ;----- asm -----
                           2060 ; 686 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2061 	; #ENR#[549]fillmap = go_no_redraw;
                           2062 ;--- end asm ---
   2626 7F C8 FC      [ 7] 2063 	clr	_fillMap	; fillMap
                           2064 ;----- asm -----
                           2065 ; 688 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2066 	; #ENR#[550]return 0;
                           2067 ;--- end asm ---
   2629 5F            [ 2] 2068 	clrb	; D.3570
   262A 32 6F         [ 5] 2069 	leas	15,s	;,,
   262C 35 E0         [ 8] 2070 	puls	y,u,pc	;
   262E                    2071 L64:
   262E C1 01         [ 2] 2072 	cmpb	#1	;cmpqi:	; fillMap,
   2630 10 27 01 82   [ 6] 2073 	lbeq	L40	;
   2634 C1 02         [ 2] 2074 	cmpb	#2	;cmpqi:	; fillMap,
   2636 26 EE         [ 3] 2075 	bne	L39	;
                           2076 ;----- asm -----
                           2077 ; 599 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2078 	; #ENR#[489]for (unsigned char yy=0;yy<4;yy++)
                           2079 ;--- end asm ---
   2638 CE C8 8A      [ 3] 2080 	ldu	#_screen+10	; ivtmp.210,
   263B 6F 6A         [ 7] 2081 	clr	10,s	; yy
   263D                    2082 L52:
                           2083 ;----- asm -----
                           2084 ; 602 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2085 	; #ENR#[491]unsigned int y = ((unsigned int)yy)+cy-1;
                           2086 ;--- end asm ---
   263D F6 C9 40      [ 5] 2087 	ldb	_cy	;, cy
   2640 5A            [ 2] 2088 	decb	;
   2641 EB 6A         [ 5] 2089 	addb	10,s	;, yy
   2643 E7 6B         [ 5] 2090 	stb	11,s	;, y
                           2091 ;----- asm -----
                           2092 ; 604 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2093 	; #ENR#[492]for (unsigned char xx=0;xx<4;xx++)
                           2094 ;--- end asm ---
   2645 E6 6A         [ 5] 2095 	ldb	10,s	;, yy
   2647 C1 03         [ 2] 2096 	cmpb	#3	;cmpqi:	;,
   2649 10 27 02 1E   [ 6] 2097 	lbeq	L51	;
                           2098 ;----- asm -----
                           2099 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2100 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2101 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2102 	; #ENR#[495]if (yy == 3)
                           2103 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2104 	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
                           2105 ;--- end asm ---
   264D 4F            [ 2] 2106 	clra		;zero_extendqihi: R:b -> R:d	;,
   264E 58            [ 2] 2107 	aslb	;
   264F 49            [ 2] 2108 	rola	;
   2650 58            [ 2] 2109 	aslb	;
   2651 49            [ 2] 2110 	rola	;
   2652 58            [ 2] 2111 	aslb	;
   2653 49            [ 2] 2112 	rola	;
   2654 1F 02         [ 6] 2113 	tfr	d,y	;, tmp157
   2656 E6 6A         [ 5] 2114 	ldb	10,s	;, yy
   2658 5C            [ 2] 2115 	incb	;
   2659 E7 63         [ 5] 2116 	stb	3,s	;,
   265B 4F            [ 2] 2117 	clra		;zero_extendqihi: R:b -> R:d	;,
   265C ED E4         [ 5] 2118 	std	,s	;,
   265E 58            [ 2] 2119 	aslb	;
   265F 49            [ 2] 2120 	rola	;
   2660 58            [ 2] 2121 	aslb	;
   2661 49            [ 2] 2122 	rola	;
   2662 58            [ 2] 2123 	aslb	;
   2663 49            [ 2] 2124 	rola	;
   2664 1F 01         [ 6] 2125 	tfr	d,x	;, tmp162
   2666 AE 89 C8 80   [ 9] 2126 	ldx	_screen,x	;, screen
   266A AF A9 C8 80   [ 9] 2127 	stx	_screen,y	;, screen
                           2128 ;----- asm -----
                           2129 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2130 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2131 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2132 	; #ENR#[495]if (yy == 3)
                           2133 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2134 	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
                           2135 ;--- end asm ---
   266E AE C4         [ 5] 2136 	ldx	,u	;, screen
   2670 AF 58         [ 6] 2137 	stx	-8,u	;, screen
                           2138 ;----- asm -----
                           2139 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2140 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2141 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2142 	; #ENR#[495]if (yy == 3)
                           2143 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2144 	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
                           2145 ;--- end asm ---
   2672 EC 42         [ 6] 2146 	ldd	2,u	;, screen
   2674 ED 5A         [ 6] 2147 	std	-6,u	;, screen
                           2148 ;----- asm -----
                           2149 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2150 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2151 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2152 	; #ENR#[495]if (yy == 3)
                           2153 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2154 	; #ENR#[501]screen[yy][xx] = screen[yy+1][xx];
                           2155 ;--- end asm ---
   2676 AE 44         [ 6] 2156 	ldx	4,u	;, screen
   2678 AF 5C         [ 6] 2157 	stx	-4,u	;, screen
   267A E6 63         [ 5] 2158 	ldb	3,s	;,
   267C E7 6A         [ 5] 2159 	stb	10,s	;, yy
   267E 33 48         [ 5] 2160 	leau	8,u	; ivtmp.210,, ivtmp.210
   2680 C1 04         [ 2] 2161 	cmpb	#4	;cmpqi:	;,
   2682 10 26 FF B7   [ 6] 2162 	lbne	L52	;
                           2163 ;----- asm -----
                           2164 ; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2165 	; #ENR#[505]break;
                           2166 ;--- end asm ---
   2686 16 00 E2      [ 5] 2167 	lbra	L47	;
   2689                    2168 L63:
                           2169 ;----- asm -----
                           2170 ; 540 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2171 	; #ENR#[449]realabove = above = (unsigned int) (getmappos(cx,cy,cz-1) >> 8);
                           2172 ;--- end asm ---
   2689 F6 C9 67      [ 5] 2173 	ldb	_cz	;, cz
   268C 5A            [ 2] 2174 	decb	;
   268D 34 04         [ 6] 2175 	pshs	b	;
   268F F6 C9 40      [ 5] 2176 	ldb	_cy	;, cy
   2692 E7 E2         [ 6] 2177 	stb	,-s	;,
   2694 F6 C9 3F      [ 5] 2178 	ldb	_cx	;, cx
   2697 BD 24 4C      [ 8] 2179 	jsr	_getMapPos
   269A 1F 10         [ 6] 2180 	tfr	x,d	;, D.3531
   269C 1F 89         [ 6] 2181 	tfr	a,b	;,
   269E 4F            [ 2] 2182 	clra		;zero_extendqihi: R:b -> R:d	;,
   269F F7 C8 A0      [ 5] 2183 	stb	_above	;movlsbqihi: R:d -> _above	; above, tmp119
   26A2 F7 C8 A1      [ 5] 2184 	stb	_realAbove	;movlsbqihi: R:d -> _realAbove	; realAbove, tmp119
   26A5 32 62         [ 5] 2185 	leas	2,s	;,,
                           2186 ;----- asm -----
                           2187 ; 544 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2188 	; #ENR#[452]switch (fillmap)
                           2189 ;--- end asm ---
   26A7 F6 C8 FC      [ 5] 2190 	ldb	_fillMap	; fillMap, fillMap
   26AA C1 03         [ 2] 2191 	cmpb	#3	;cmpqi:	; fillMap,
   26AC 10 26 FF 66   [ 6] 2192 	lbne	L66	;
   26B0                    2193 L42:
                           2194 ;----- asm -----
                           2195 ; 657 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2196 	; #ENR#[529]for (unsigned char yy=0;yy<4;yy++)
                           2197 ;--- end asm ---
   26B0 10 8E C8 86   [ 4] 2198 	ldy	#_screen+6	; ivtmp.229,
   26B4 6F 6D         [ 7] 2199 	clr	13,s	; yy
   26B6                    2200 L55:
                           2201 ;----- asm -----
                           2202 ; 660 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2203 	; #ENR#[531]unsigned int y = ((unsigned int)yy)+cy-1;
                           2204 ;--- end asm ---
   26B6 F6 C9 40      [ 5] 2205 	ldb	_cy	;, cy
   26B9 E7 6E         [ 5] 2206 	stb	14,s	;, cy.274
                           2207 ;----- asm -----
                           2208 ; 662 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2209 	; #ENR#[532]for (unsigned char xx=0;xx<4;xx++)
                           2210 ;--- end asm ---
   26BB F6 C9 3F      [ 5] 2211 	ldb	_cx	;, cx
   26BE 5A            [ 2] 2212 	decb	;
   26BF E7 62         [ 5] 2213 	stb	2,s	;, D.3564
                           2214 ;----- asm -----
                           2215 ; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2216 	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
                           2217 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2218 	; #ENR#[535]if (xx == 3)
                           2219 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2220 	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
                           2221 ;--- end asm ---
   26C1 AE 3C         [ 6] 2222 	ldx	-4,y	;, screen
   26C3 AF 3A         [ 6] 2223 	stx	-6,y	;, screen
                           2224 ;----- asm -----
                           2225 ; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2226 	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
                           2227 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2228 	; #ENR#[535]if (xx == 3)
                           2229 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2230 	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
                           2231 ;--- end asm ---
   26C5 EC 3E         [ 6] 2232 	ldd	-2,y	;, screen
   26C7 ED 3C         [ 6] 2233 	std	-4,y	;, screen
                           2234 ;----- asm -----
                           2235 ; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2236 	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
                           2237 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2238 	; #ENR#[535]if (xx == 3)
                           2239 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2240 	; #ENR#[541]screen[yy][xx] = screen[yy][xx+1];
                           2241 ;--- end asm ---
   26C9 AE A4         [ 5] 2242 	ldx	,y	;, screen
   26CB AF 3E         [ 6] 2243 	stx	-2,y	;, screen
                           2244 ;----- asm -----
                           2245 ; 665 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2246 	; #ENR#[534]unsigned int x = ((unsigned int)xx)+cx-1;
                           2247 ; 667 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2248 	; #ENR#[535]if (xx == 3)
                           2249 ; 670 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2250 	; #ENR#[537]screen[yy][xx] = getmappos(x,y, cz);
                           2251 ;--- end asm ---
   26CD E6 62         [ 5] 2252 	ldb	2,s	;, D.3564
   26CF CB 03         [ 2] 2253 	addb	#3	;,
   26D1 E7 62         [ 5] 2254 	stb	2,s	;, D.3564
   26D3 F6 C9 67      [ 5] 2255 	ldb	_cz	;, cz
   26D6 E7 E2         [ 6] 2256 	stb	,-s	;,
   26D8 6A 6F         [ 7] 2257 	dec	15,s	; cy.274
   26DA E6 6F         [ 5] 2258 	ldb	15,s	;, cy.274
   26DC EB 6E         [ 5] 2259 	addb	14,s	;, yy
   26DE 34 04         [ 6] 2260 	pshs	b	;
   26E0 E6 64         [ 5] 2261 	ldb	4,s	;, D.3564
   26E2 BD 24 4C      [ 8] 2262 	jsr	_getMapPos
   26E5 AF A4         [ 5] 2263 	stx	,y	; D.3567, screen
   26E7 6C 6F         [ 7] 2264 	inc	15,s	; yy
   26E9 31 28         [ 5] 2265 	leay	8,y	; ivtmp.229,, ivtmp.229
   26EB 32 62         [ 5] 2266 	leas	2,s	;,,
   26ED E6 6D         [ 5] 2267 	ldb	13,s	;, yy
   26EF C1 04         [ 2] 2268 	cmpb	#4	;cmpqi:	;,
   26F1 10 26 FF C1   [ 6] 2269 	lbne	L55	;
                           2270 ;----- asm -----
                           2271 ; 680 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2272 	; #ENR#[545]break;
                           2273 ;--- end asm ---
   26F5 16 00 73      [ 5] 2274 	lbra	L47	;
   26F8                    2275 L65:
                           2276 ;----- asm -----
                           2277 ; 550 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2278 	; #ENR#[456]for (unsigned char yy=0;yy<4;yy++)
                           2279 ;--- end asm ---
   26F8 CE C8 80      [ 3] 2280 	ldu	#_screen	; ivtmp.250,
   26FB 6F 66         [ 7] 2281 	clr	6,s	; yy
   26FD                    2282 L46:
                           2283 ;----- asm -----
                           2284 ; 553 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2285 	; #ENR#[458]unsigned int y = yy+cy-1;
                           2286 ;--- end asm ---
   26FD F6 C9 40      [ 5] 2287 	ldb	_cy	;, cy
   2700 5A            [ 2] 2288 	decb	;
   2701 EB 66         [ 5] 2289 	addb	6,s	;, yy
   2703 E7 67         [ 5] 2290 	stb	7,s	;, y
                           2291 ;----- asm -----
                           2292 ; 555 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2293 	; #ENR#[459]for (unsigned char xx=0;xx<4;xx++)
                           2294 ; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2295 	; #ENR#[461]unsigned int x = xx+cx-1;
                           2296 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2297 	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
                           2298 ;--- end asm ---
   2705 F6 C9 3F      [ 5] 2299 	ldb	_cx	;, cx
   2708 5A            [ 2] 2300 	decb	;
   2709 E7 62         [ 5] 2301 	stb	2,s	;,
   270B F6 C9 67      [ 5] 2302 	ldb	_cz	;, cz
   270E E7 E2         [ 6] 2303 	stb	,-s	;,
   2710 E6 68         [ 5] 2304 	ldb	8,s	;, y
   2712 34 04         [ 6] 2305 	pshs	b	;
   2714 E6 64         [ 5] 2306 	ldb	4,s	;,
   2716 BD 24 4C      [ 8] 2307 	jsr	_getMapPos
   2719 AF C4         [ 5] 2308 	stx	,u	; temp.315, screen
                           2309 ;----- asm -----
                           2310 ; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2311 	; #ENR#[461]unsigned int x = xx+cx-1;
                           2312 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2313 	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
                           2314 ;--- end asm ---
   271B F6 C9 3F      [ 5] 2315 	ldb	_cx	;, cx
   271E E7 64         [ 5] 2316 	stb	4,s	;,
   2720 F6 C9 67      [ 5] 2317 	ldb	_cz	;, cz
   2723 E7 E2         [ 6] 2318 	stb	,-s	;,
   2725 E6 6A         [ 5] 2319 	ldb	10,s	;, y
   2727 34 04         [ 6] 2320 	pshs	b	;
   2729 E6 66         [ 5] 2321 	ldb	6,s	;,
   272B BD 24 4C      [ 8] 2322 	jsr	_getMapPos
   272E AF 42         [ 6] 2323 	stx	2,u	; temp.320, screen
                           2324 ;----- asm -----
                           2325 ; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2326 	; #ENR#[461]unsigned int x = xx+cx-1;
                           2327 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2328 	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
                           2329 ;--- end asm ---
   2730 F6 C9 3F      [ 5] 2330 	ldb	_cx	;, cx
   2733 5C            [ 2] 2331 	incb	;
   2734 E7 66         [ 5] 2332 	stb	6,s	;,
   2736 F6 C9 67      [ 5] 2333 	ldb	_cz	;, cz
   2739 E7 E2         [ 6] 2334 	stb	,-s	;,
   273B E6 6C         [ 5] 2335 	ldb	12,s	;, y
   273D 34 04         [ 6] 2336 	pshs	b	;
   273F E6 68         [ 5] 2337 	ldb	8,s	;,
   2741 BD 24 4C      [ 8] 2338 	jsr	_getMapPos
   2744 AF 44         [ 6] 2339 	stx	4,u	; temp.325, screen
                           2340 ;----- asm -----
                           2341 ; 558 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2342 	; #ENR#[461]unsigned int x = xx+cx-1;
                           2343 ; 560 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2344 	; #ENR#[462]screen[yy][xx] = getmappos(x,y, cz);
                           2345 ;--- end asm ---
   2746 F6 C9 3F      [ 5] 2346 	ldb	_cx	;, cx
   2749 CB 02         [ 2] 2347 	addb	#2	;,
   274B E7 68         [ 5] 2348 	stb	8,s	;,
   274D F6 C9 67      [ 5] 2349 	ldb	_cz	;, cz
   2750 E7 E2         [ 6] 2350 	stb	,-s	;,
   2752 E6 6E         [ 5] 2351 	ldb	14,s	;, y
   2754 34 04         [ 6] 2352 	pshs	b	;
   2756 E6 6A         [ 5] 2353 	ldb	10,s	;,
   2758 BD 24 4C      [ 8] 2354 	jsr	_getMapPos
   275B AF 46         [ 6] 2355 	stx	6,u	; D.3539, screen
   275D 6C 6E         [ 7] 2356 	inc	14,s	; yy
   275F 33 48         [ 5] 2357 	leau	8,u	; ivtmp.250,, ivtmp.250
   2761 32 68         [ 5] 2358 	leas	8,s	;,,
   2763 E6 66         [ 5] 2359 	ldb	6,s	;, yy
   2765 C1 04         [ 2] 2360 	cmpb	#4	;cmpqi:	;,
   2767 10 26 FF 92   [ 6] 2361 	lbne	L46	;
                           2362 ;----- asm -----
                           2363 ; 564 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2364 	; #ENR#[465]break;
                           2365 ;--- end asm ---
   276B                    2366 L47:
                           2367 ;----- asm -----
                           2368 ; 692 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2369 	; #ENR#[553]fillmap = go_no_redraw;
                           2370 ;--- end asm ---
   276B 7F C8 FC      [ 7] 2371 	clr	_fillMap	; fillMap
                           2372 ;----- asm -----
                           2373 ; 694 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2374 	; #ENR#[554]return 1;
                           2375 ;--- end asm ---
   276E C6 01         [ 2] 2376 	ldb	#1	; D.3570,
   2770 32 6F         [ 5] 2377 	leas	15,s	;,,
   2772 35 E0         [ 8] 2378 	puls	y,u,pc	;
   2774                    2379 L43:
                           2380 ;----- asm -----
                           2381 ; 628 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2382 	; #ENR#[509]for (unsigned char yy=0;yy<4;yy++)
                           2383 ;--- end asm ---
   2774 10 8E C8 80   [ 4] 2384 	ldy	#_screen	; ivtmp.239,
   2778 6F 6C         [ 7] 2385 	clr	12,s	; yy
   277A                    2386 L54:
                           2387 ;----- asm -----
                           2388 ; 631 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2389 	; #ENR#[511]unsigned int y = ((unsigned int)yy)+cy-1;
                           2390 ;--- end asm ---
   277A F6 C9 40      [ 5] 2391 	ldb	_cy	;, cy
   277D E7 62         [ 5] 2392 	stb	2,s	;, cy.271
                           2393 ;----- asm -----
                           2394 ; 633 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2395 	; #ENR#[512]for (signed char xx=3;xx>=0;xx--)
                           2396 ;--- end asm ---
   277F F6 C9 3F      [ 5] 2397 	ldb	_cx	;, cx
   2782 5A            [ 2] 2398 	decb	;
   2783 E7 65         [ 5] 2399 	stb	5,s	;, D.3557
                           2400 ;----- asm -----
                           2401 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2402 	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
                           2403 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2404 	; #ENR#[515]if (xx == 0)
                           2405 ; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2406 	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
                           2407 ;--- end asm ---
   2785 AE 24         [ 6] 2408 	ldx	4,y	;, screen
   2787 AF 26         [ 6] 2409 	stx	6,y	;, screen
                           2410 ;----- asm -----
                           2411 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2412 	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
                           2413 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2414 	; #ENR#[515]if (xx == 0)
                           2415 ; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2416 	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
                           2417 ;--- end asm ---
   2789 EC 22         [ 6] 2418 	ldd	2,y	;, screen
   278B ED 24         [ 6] 2419 	std	4,y	;, screen
                           2420 ;----- asm -----
                           2421 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2422 	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
                           2423 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2424 	; #ENR#[515]if (xx == 0)
                           2425 ; 646 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2426 	; #ENR#[521]screen[yy][xx] = screen[yy][xx-1];
                           2427 ;--- end asm ---
   278D AE A4         [ 5] 2428 	ldx	,y	;, screen
   278F AF 22         [ 6] 2429 	stx	2,y	;, screen
                           2430 ;----- asm -----
                           2431 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2432 	; #ENR#[514]unsigned int x = ((unsigned int)xx)+cx-1;
                           2433 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2434 	; #ENR#[515]if (xx == 0)
                           2435 ; 641 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2436 	; #ENR#[517]screen[yy][xx] = getmappos(x,y, cz);
                           2437 ;--- end asm ---
   2791 F6 C9 67      [ 5] 2438 	ldb	_cz	;, cz
   2794 E7 E2         [ 6] 2439 	stb	,-s	;,
   2796 6A 63         [ 7] 2440 	dec	3,s	; cy.271
   2798 E6 63         [ 5] 2441 	ldb	3,s	;, cy.271
   279A EB 6D         [ 5] 2442 	addb	13,s	;, yy
   279C 34 04         [ 6] 2443 	pshs	b	;
   279E E6 67         [ 5] 2444 	ldb	7,s	;, D.3557
   27A0 BD 24 4C      [ 8] 2445 	jsr	_getMapPos
   27A3 AF A4         [ 5] 2446 	stx	,y	; D.3560, screen
   27A5 6C 6E         [ 7] 2447 	inc	14,s	; yy
   27A7 31 28         [ 5] 2448 	leay	8,y	; ivtmp.239,, ivtmp.239
   27A9 32 62         [ 5] 2449 	leas	2,s	;,,
   27AB E6 6C         [ 5] 2450 	ldb	12,s	;, yy
   27AD C1 04         [ 2] 2451 	cmpb	#4	;cmpqi:	;,
   27AF 10 26 FF C7   [ 6] 2452 	lbne	L54	;
                           2453 ;----- asm -----
                           2454 ; 651 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2455 	; #ENR#[525]break;
                           2456 ;--- end asm ---
   27B3 16 FF B5      [ 5] 2457 	lbra	L47	;
   27B6                    2458 L40:
                           2459 ;----- asm -----
                           2460 ; 570 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2461 	; #ENR#[469]for (signed char yy=3;yy>=0;yy--)
                           2462 ;--- end asm ---
   27B6 CE C8 92      [ 3] 2463 	ldu	#_screen+18	; ivtmp.195,
   27B9 C6 03         [ 2] 2464 	ldb	#3	;,
   27BB E7 68         [ 5] 2465 	stb	8,s	;, yy
   27BD                    2466 L49:
                           2467 ;----- asm -----
                           2468 ; 573 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2469 	; #ENR#[471]unsigned int y = ((unsigned int)yy)+cy-1;
                           2470 ;--- end asm ---
   27BD F6 C9 40      [ 5] 2471 	ldb	_cy	;, cy
   27C0 5A            [ 2] 2472 	decb	;
   27C1 EB 68         [ 5] 2473 	addb	8,s	;, yy
   27C3 E7 69         [ 5] 2474 	stb	9,s	;, y
                           2475 ;----- asm -----
                           2476 ; 575 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2477 	; #ENR#[472]for (unsigned char xx=0;xx<4;xx++)
                           2478 ;--- end asm ---
   27C5 6D 68         [ 7] 2479 	tst	8,s	; yy
   27C7 10 27 00 3E   [ 6] 2480 	lbeq	L48	;
                           2481 ;----- asm -----
                           2482 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2483 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2484 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2485 	; #ENR#[475]if (yy == 0)
                           2486 ; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2487 	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
                           2488 ;--- end asm ---
   27CB E6 68         [ 5] 2489 	ldb	8,s	;, yy
   27CD 1D            [ 2] 2490 	sex		;extendqihi2: R:b -> R:d	;,
   27CE 58            [ 2] 2491 	aslb	;
   27CF 49            [ 2] 2492 	rola	;
   27D0 58            [ 2] 2493 	aslb	;
   27D1 49            [ 2] 2494 	rola	;
   27D2 58            [ 2] 2495 	aslb	;
   27D3 49            [ 2] 2496 	rola	;
   27D4 1F 02         [ 6] 2497 	tfr	d,y	;, tmp132
   27D6 E6 68         [ 5] 2498 	ldb	8,s	;, yy
   27D8 5A            [ 2] 2499 	decb	;
   27D9 E7 64         [ 5] 2500 	stb	4,s	;,
   27DB 1D            [ 2] 2501 	sex		;extendqihi2: R:b -> R:d	;,
   27DC ED E4         [ 5] 2502 	std	,s	;,
   27DE 58            [ 2] 2503 	aslb	;
   27DF 49            [ 2] 2504 	rola	;
   27E0 58            [ 2] 2505 	aslb	;
   27E1 49            [ 2] 2506 	rola	;
   27E2 58            [ 2] 2507 	aslb	;
   27E3 49            [ 2] 2508 	rola	;
   27E4 1F 01         [ 6] 2509 	tfr	d,x	;, tmp137
   27E6 AE 89 C8 80   [ 9] 2510 	ldx	_screen,x	;, screen
   27EA AF A9 C8 80   [ 9] 2511 	stx	_screen,y	;, screen
                           2512 ;----- asm -----
                           2513 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2514 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2515 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2516 	; #ENR#[475]if (yy == 0)
                           2517 ; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2518 	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
                           2519 ;--- end asm ---
   27EE AE C4         [ 5] 2520 	ldx	,u	;, screen
   27F0 AF 48         [ 6] 2521 	stx	8,u	;, screen
                           2522 ;----- asm -----
                           2523 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2524 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2525 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2526 	; #ENR#[475]if (yy == 0)
                           2527 ; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2528 	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
                           2529 ;--- end asm ---
   27F2 EC 42         [ 6] 2530 	ldd	2,u	;, screen
   27F4 ED 4A         [ 6] 2531 	std	10,u	;, screen
                           2532 ;----- asm -----
                           2533 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2534 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2535 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2536 	; #ENR#[475]if (yy == 0)
                           2537 ; 588 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2538 	; #ENR#[481]screen[yy][xx] = screen[yy-1][xx];
                           2539 ;--- end asm ---
   27F6 AE 44         [ 6] 2540 	ldx	4,u	;, screen
   27F8 AF 4C         [ 6] 2541 	stx	12,u	;, screen
   27FA E6 64         [ 5] 2542 	ldb	4,s	;,
   27FC E7 68         [ 5] 2543 	stb	8,s	;, yy
   27FE 33 58         [ 5] 2544 	leau	-8,u	; ivtmp.195,, ivtmp.195
   2800 C1 FF         [ 2] 2545 	cmpb	#-1	;cmpqi:	;,
   2802 10 26 FF B7   [ 6] 2546 	lbne	L49	;
   2806 16 00 5F      [ 5] 2547 	lbra	L50	;
   2809                    2548 L48:
                           2549 ;----- asm -----
                           2550 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2551 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2552 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2553 	; #ENR#[475]if (yy == 0)
                           2554 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2555 	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
                           2556 ;--- end asm ---
   2809 F6 C9 3F      [ 5] 2557 	ldb	_cx	;, cx
   280C 5A            [ 2] 2558 	decb	;
   280D E7 E4         [ 4] 2559 	stb	,s	;,
   280F F6 C9 67      [ 5] 2560 	ldb	_cz	;, cz
   2812 E7 E2         [ 6] 2561 	stb	,-s	;,
   2814 E6 6A         [ 5] 2562 	ldb	10,s	;, y
   2816 34 04         [ 6] 2563 	pshs	b	;
   2818 E6 62         [ 5] 2564 	ldb	2,s	;,
   281A BD 24 4C      [ 8] 2565 	jsr	_getMapPos
   281D BF C8 80      [ 6] 2566 	stx	_screen	; temp.286, screen
                           2567 ;----- asm -----
                           2568 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2569 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2570 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2571 	; #ENR#[475]if (yy == 0)
                           2572 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2573 	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
                           2574 ;--- end asm ---
   2820 F6 C9 3F      [ 5] 2575 	ldb	_cx	;, cx
   2823 E7 62         [ 5] 2576 	stb	2,s	;,
   2825 F6 C9 67      [ 5] 2577 	ldb	_cz	;, cz
   2828 E7 E2         [ 6] 2578 	stb	,-s	;,
   282A E6 6C         [ 5] 2579 	ldb	12,s	;, y
   282C 34 04         [ 6] 2580 	pshs	b	;
   282E E6 64         [ 5] 2581 	ldb	4,s	;,
   2830 BD 24 4C      [ 8] 2582 	jsr	_getMapPos
   2833 BF C8 82      [ 6] 2583 	stx	_screen+2	; temp.277, screen
                           2584 ;----- asm -----
                           2585 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2586 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2587 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2588 	; #ENR#[475]if (yy == 0)
                           2589 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2590 	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
                           2591 ;--- end asm ---
   2836 F6 C9 3F      [ 5] 2592 	ldb	_cx	;, cx
   2839 5C            [ 2] 2593 	incb	;
   283A E7 64         [ 5] 2594 	stb	4,s	;,
   283C F6 C9 67      [ 5] 2595 	ldb	_cz	;, cz
   283F E7 E2         [ 6] 2596 	stb	,-s	;,
   2841 E6 6E         [ 5] 2597 	ldb	14,s	;, y
   2843 34 04         [ 6] 2598 	pshs	b	;
   2845 E6 66         [ 5] 2599 	ldb	6,s	;,
   2847 BD 24 4C      [ 8] 2600 	jsr	_getMapPos
   284A BF C8 84      [ 6] 2601 	stx	_screen+4	; D.3545, screen
                           2602 ;----- asm -----
                           2603 ; 578 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2604 	; #ENR#[474]unsigned int x = xx+cx-1;
                           2605 ; 580 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2606 	; #ENR#[475]if (yy == 0)
                           2607 ; 583 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2608 	; #ENR#[477]screen[yy][xx] = getmappos(x,y, cz);
                           2609 ;--- end asm ---
   284D F6 C9 3F      [ 5] 2610 	ldb	_cx	;, cx
   2850 CB 02         [ 2] 2611 	addb	#2	;,
   2852 E7 66         [ 5] 2612 	stb	6,s	;,
   2854 F6 C9 67      [ 5] 2613 	ldb	_cz	;, cz
   2857 E7 E2         [ 6] 2614 	stb	,-s	;,
   2859 E6 E8 10      [ 5] 2615 	ldb	16,s	;, y
   285C 34 04         [ 6] 2616 	pshs	b	;
   285E E6 68         [ 5] 2617 	ldb	8,s	;,
   2860 BD 24 4C      [ 8] 2618 	jsr	_getMapPos
   2863 BF C8 86      [ 6] 2619 	stx	_screen+6	; temp.267, screen
   2866 32 68         [ 5] 2620 	leas	8,s	;,,
   2868                    2621 L50:
                           2622 ;----- asm -----
                           2623 ; 593 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2624 	; #ENR#[485]break;
                           2625 ;--- end asm ---
   2868 16 FF 00      [ 5] 2626 	lbra	L47	;
   286B                    2627 L51:
                           2628 ;----- asm -----
                           2629 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2630 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2631 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2632 	; #ENR#[495]if (yy == 3)
                           2633 ; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2634 	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
                           2635 ;--- end asm ---
   286B F6 C9 3F      [ 5] 2636 	ldb	_cx	;, cx
   286E 5A            [ 2] 2637 	decb	;
   286F E7 E4         [ 4] 2638 	stb	,s	;,
   2871 F6 C9 67      [ 5] 2639 	ldb	_cz	;, cz
   2874 E7 E2         [ 6] 2640 	stb	,-s	;,
   2876 E6 6C         [ 5] 2641 	ldb	12,s	;, y
   2878 34 04         [ 6] 2642 	pshs	b	;
   287A E6 62         [ 5] 2643 	ldb	2,s	;,
   287C BD 24 4C      [ 8] 2644 	jsr	_getMapPos
   287F BF C8 98      [ 6] 2645 	stx	_screen+24	; temp.297, screen
                           2646 ;----- asm -----
                           2647 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2648 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2649 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2650 	; #ENR#[495]if (yy == 3)
                           2651 ; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2652 	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
                           2653 ;--- end asm ---
   2882 F6 C9 3F      [ 5] 2654 	ldb	_cx	;, cx
   2885 E7 62         [ 5] 2655 	stb	2,s	;,
   2887 F6 C9 67      [ 5] 2656 	ldb	_cz	;, cz
   288A E7 E2         [ 6] 2657 	stb	,-s	;,
   288C E6 6E         [ 5] 2658 	ldb	14,s	;, y
   288E 34 04         [ 6] 2659 	pshs	b	;
   2890 E6 64         [ 5] 2660 	ldb	4,s	;,
   2892 BD 24 4C      [ 8] 2661 	jsr	_getMapPos
   2895 BF C8 9A      [ 6] 2662 	stx	_screen+26	; temp.302, screen
                           2663 ;----- asm -----
                           2664 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2665 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2666 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2667 	; #ENR#[495]if (yy == 3)
                           2668 ; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2669 	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
                           2670 ;--- end asm ---
   2898 F6 C9 3F      [ 5] 2671 	ldb	_cx	;, cx
   289B 5C            [ 2] 2672 	incb	;
   289C E7 64         [ 5] 2673 	stb	4,s	;,
   289E F6 C9 67      [ 5] 2674 	ldb	_cz	;, cz
   28A1 E7 E2         [ 6] 2675 	stb	,-s	;,
   28A3 E6 E8 10      [ 5] 2676 	ldb	16,s	;, y
   28A6 34 04         [ 6] 2677 	pshs	b	;
   28A8 E6 66         [ 5] 2678 	ldb	6,s	;,
   28AA BD 24 4C      [ 8] 2679 	jsr	_getMapPos
   28AD BF C8 9C      [ 6] 2680 	stx	_screen+28	; temp.307, screen
                           2681 ;----- asm -----
                           2682 ; 607 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2683 	; #ENR#[494]unsigned int x = xx+cx-1;
                           2684 ; 609 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2685 	; #ENR#[495]if (yy == 3)
                           2686 ; 612 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2687 	; #ENR#[497]screen[yy][xx] = getmappos(x,y, cz);
                           2688 ;--- end asm ---
   28B0 F6 C9 3F      [ 5] 2689 	ldb	_cx	;, cx
   28B3 CB 02         [ 2] 2690 	addb	#2	;,
   28B5 E7 66         [ 5] 2691 	stb	6,s	;,
   28B7 F6 C9 67      [ 5] 2692 	ldb	_cz	;, cz
   28BA E7 E2         [ 6] 2693 	stb	,-s	;,
   28BC E6 E8 12      [ 5] 2694 	ldb	18,s	;, y
   28BF 34 04         [ 6] 2695 	pshs	b	;
   28C1 E6 68         [ 5] 2696 	ldb	8,s	;,
   28C3 BD 24 4C      [ 8] 2697 	jsr	_getMapPos
   28C6 BF C8 9E      [ 6] 2698 	stx	_screen+30	; D.3552, screen
   28C9 32 68         [ 5] 2699 	leas	8,s	;,,
                           2700 ;----- asm -----
                           2701 ; 622 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2702 	; #ENR#[505]break;
                           2703 ;--- end asm ---
   28CB 16 FE 9D      [ 5] 2704 	lbra	L47	;
                           2705 	.globl	_drawRoom
   28CE                    2706 _drawRoom:
   28CE 34 04         [ 6] 2707 	pshs	b	;
                           2708 ;----- asm -----
                           2709 ; 708 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2710 	; #ENR#[567]if ((content + drawup + drawleft) == 0) return;
                           2711 ;--- end asm ---
   28D0 E6 63         [ 5] 2712 	ldb	3,s	; tmp30, drawUp
   28D2 EB E4         [ 4] 2713 	addb	,s	; tmp30, content
   28D4 EB 64         [ 5] 2714 	addb	4,s	; tmp30, drawLeft
   28D6 10 27 00 41   [ 6] 2715 	lbeq	L78	;
                           2716 ;----- asm -----
                           2717 ; 710 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2718 	; #ENR#[568]dp_via_t1_cnt_lo  = 0x46;
                           2719 ;--- end asm ---
   28DA C6 46         [ 2] 2720 	ldb	#70	;,
   28DC D7 04         [ 4] 2721 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2722 ;----- asm -----
                           2723 ; 713 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2724 	; #ENR#[570]moveto_start;
                           2725 ; 714 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   28DE A6 65         [ 5] 2726 	LDA      5,s	; ry
   28E0 97 01         [ 4] 2727 	STA      *0x01
   28E2 86 CE         [ 2] 2728 	LDA      #0xCE
   28E4 97 0C         [ 4] 2729 	STA      *0x0C
   28E6 4F            [ 2] 2730 	CLRA     
   28E7 97 00         [ 4] 2731 	STA      *0x00
   28E9 E6 66         [ 5] 2732 	LDB      6,s	; rx
   28EB 0C 00         [ 6] 2733 	INC      *0x00
   28ED D7 01         [ 4] 2734 	STB      *0x01
   28EF 97 05         [ 4] 2735 	STA      *0x05
                           2736 ; 715 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2737 	; #ENR#[571]dp_via_t1_cnt_lo  = 9;
                           2738 ;--- end asm ---
   28F1 C6 09         [ 2] 2739 	ldb	#9	;,
   28F3 D7 04         [ 4] 2740 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2741 ;----- asm -----
                           2742 ; 718 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2743 	; #ENR#[573]if (drawup == 2)
                           2744 ;--- end asm ---
   28F5 E6 63         [ 5] 2745 	ldb	3,s	;, drawUp
   28F7 C1 02         [ 2] 2746 	cmpb	#2	;cmpqi:	;,
   28F9 27 23         [ 3] 2747 	beq	L81	;
   28FB C1 03         [ 2] 2748 	cmpb	#3	;cmpqi:	;,
   28FD 10 27 00 39   [ 6] 2749 	lbeq	L82	;
                           2750 ;----- asm -----
                           2751 ; 745 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2752 	; #ENR#[593]if (drawleft == 2)
                           2753 ;--- end asm ---
   2901 E6 64         [ 5] 2754 	ldb	4,s	;, drawLeft
   2903 C1 02         [ 2] 2755 	cmpb	#2	;cmpqi:	;,
   2905 10 27 00 48   [ 6] 2756 	lbeq	L83	;
   2909 C1 03         [ 2] 2757 	cmpb	#3	;cmpqi:	;,
   290B 10 27 00 4F   [ 6] 2758 	lbeq	L84	;
                           2759 ;----- asm -----
                           2760 ; 762 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2761 	; #ENR#[605]if (content == 10) drawunkown();
                           2762 ;--- end asm ---
   290F E6 E4         [ 4] 2763 	ldb	,s	;, content
   2911 C1 0A         [ 2] 2764 	cmpb	#10	;cmpqi:	;,
   2913 10 27 00 55   [ 6] 2765 	lbeq	L85	;
   2917                    2766 L72:
                           2767 ;----- asm -----
                           2768 ; 766 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2769 	; #ENR#[608]reset0ref();
                           2770 ;--- end asm ---
   2917 C6 CC         [ 2] 2771 	ldb	#-52	;,
   2919 D7 0C         [ 4] 2772 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   291B                    2773 L78:
   291B 32 61         [ 5] 2774 	leas	1,s	;,,
   291D 39            [ 5] 2775 	rts
   291E                    2776 L81:
                           2777 ;----- asm -----
                           2778 ; 721 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2779 	; #ENR#[575]drawupdoor();
                           2780 ;--- end asm ---
   291E BD 50 11      [ 8] 2781 	jsr	_drawUpDoor
                           2782 ;----- asm -----
                           2783 ; 723 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2784 	; #ENR#[576]if (drawleft == 2)
                           2785 ;--- end asm ---
   2921 E6 64         [ 5] 2786 	ldb	4,s	;, drawLeft
   2923 C1 02         [ 2] 2787 	cmpb	#2	;cmpqi:	;,
   2925 10 27 00 49   [ 6] 2788 	lbeq	L86	;
   2929 C1 03         [ 2] 2789 	cmpb	#3	;cmpqi:	;,
   292B 10 27 00 49   [ 6] 2790 	lbeq	L87	;
   292F                    2791 L71:
                           2792 ;----- asm -----
                           2793 ; 728 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2794 	; #ENR#[580]if (content == 10) drawunkown_nozero();
                           2795 ;--- end asm ---
   292F E6 E4         [ 4] 2796 	ldb	,s	;, content
   2931 C1 0A         [ 2] 2797 	cmpb	#10	;cmpqi:	;,
   2933 26 E2         [ 3] 2798 	bne	L72	;
   2935                    2799 L80:
   2935 BD 50 2F      [ 8] 2800 	jsr	_drawUnkown_noZero
   2938 20 DD         [ 3] 2801 	bra	L72	;
   293A                    2802 L82:
                           2803 ;----- asm -----
                           2804 ; 733 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2805 	; #ENR#[584]drawupwall();
                           2806 ;--- end asm ---
   293A BD 4F F5      [ 8] 2807 	jsr	_drawUpWall
                           2808 ;----- asm -----
                           2809 ; 735 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2810 	; #ENR#[585]if (drawleft == 2)
                           2811 ;--- end asm ---
   293D E6 64         [ 5] 2812 	ldb	4,s	;, drawLeft
   293F C1 02         [ 2] 2813 	cmpb	#2	;cmpqi:	;,
   2941 27 3B         [ 3] 2814 	beq	L88	;
   2943 C1 03         [ 2] 2815 	cmpb	#3	;cmpqi:	;,
   2945 27 3C         [ 3] 2816 	beq	L89	;
   2947                    2817 L75:
                           2818 ;----- asm -----
                           2819 ; 740 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2820 	; #ENR#[589]if (content == 10) drawunkown_nozero();
                           2821 ;--- end asm ---
   2947 E6 E4         [ 4] 2822 	ldb	,s	;, content
   2949 C1 0A         [ 2] 2823 	cmpb	#10	;cmpqi:	;,
   294B 10 26 FF C8   [ 6] 2824 	lbne	L72	;
   294F 20 E4         [ 3] 2825 	bra	L80	;
   2951                    2826 L83:
                           2827 ;----- asm -----
                           2828 ; 748 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2829 	; #ENR#[595]drawleftdoor();
                           2830 ;--- end asm ---
   2951 BD 50 0A      [ 8] 2831 	jsr	_drawLeftDoor
                           2832 ;----- asm -----
                           2833 ; 750 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2834 	; #ENR#[596]if (content == 10) drawunkown_nozero();
                           2835 ;--- end asm ---
   2954 E6 E4         [ 4] 2836 	ldb	,s	;, content
   2956 C1 0A         [ 2] 2837 	cmpb	#10	;cmpqi:	;,
   2958 10 26 FF BB   [ 6] 2838 	lbne	L72	;
   295C 20 D7         [ 3] 2839 	bra	L80	;
   295E                    2840 L84:
                           2841 ;----- asm -----
                           2842 ; 755 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2843 	; #ENR#[600]drawleftwall();
                           2844 ;--- end asm ---
   295E BD 50 18      [ 8] 2845 	jsr	_drawLeftWall
                           2846 ;----- asm -----
                           2847 ; 757 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2848 	; #ENR#[601]if (content == 10) drawunkown_nozero();
                           2849 ;--- end asm ---
   2961 E6 E4         [ 4] 2850 	ldb	,s	;, content
   2963 C1 0A         [ 2] 2851 	cmpb	#10	;cmpqi:	;,
   2965 10 26 FF AE   [ 6] 2852 	lbne	L72	;
   2969 16 FF C9      [ 5] 2853 	lbra	L80	;
   296C                    2854 L85:
   296C BD 50 03      [ 8] 2855 	jsr	_drawUnkown
   296F 16 FF A5      [ 5] 2856 	lbra	L72	;
   2972                    2857 L86:
   2972 BD 50 27      [ 8] 2858 	jsr	_drawLeftDoor_noZero
   2975 16 FF B7      [ 5] 2859 	lbra	L71	;
   2978                    2860 L87:
   2978 BD 50 1F      [ 8] 2861 	jsr	_drawLeftWall_noZero
   297B 16 FF B1      [ 5] 2862 	lbra	L71	;
   297E                    2863 L88:
   297E BD 50 27      [ 8] 2864 	jsr	_drawLeftDoor_noZero
   2981 20 C4         [ 3] 2865 	bra	L75	;
   2983                    2866 L89:
   2983 BD 50 1F      [ 8] 2867 	jsr	_drawLeftWall_noZero
   2986 16 FF BE      [ 5] 2868 	lbra	L75	;
                           2869 	.globl	_drawMap
   2989                    2870 _drawMap:
   2989 34 60         [ 7] 2871 	pshs	y,u	;
   298B 32 E8 D1      [ 5] 2872 	leas	-47,s	;,,
                           2873 ;----- asm -----
                           2874 ; 778 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2875 	; #ENR#[619]if (fillmap != go_no_redraw) generatedisplaymap();
                           2876 ;--- end asm ---
   298E 7D C8 FC      [ 7] 2877 	tst	_fillMap	; fillMap
   2991 10 26 05 0D   [ 6] 2878 	lbne	L193	;
   2995                    2879 L91:
                           2880 ;----- asm -----
                           2881 ; 782 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2882 	; #ENR#[622]printenvironment = (int)map11_hi;
                           2883 ;--- end asm ---
   2995 F6 C8 8A      [ 5] 2884 	ldb	_screen+10	;,
   2998 F7 C8 F4      [ 5] 2885 	stb	_printEnvironment	;, printEnvironment
                           2886 ;----- asm -----
                           2887 ; 784 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2888 	; #ENR#[623]if (above == 4) printenvironment = 4;
                           2889 ;--- end asm ---
   299B F6 C8 A0      [ 5] 2890 	ldb	_above	;, above
   299E C1 04         [ 2] 2891 	cmpb	#4	;cmpqi:	;,
   29A0 10 27 04 F8   [ 6] 2892 	lbeq	L194	;
   29A4                    2893 L92:
                           2894 ;----- asm -----
                           2895 ; 787 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2896 	; #ENR#[625]if (inelevator)
                           2897 ;--- end asm ---
   29A4 7D C8 A2      [ 7] 2898 	tst	_inElevator	; inElevator
   29A7 10 27 00 61   [ 6] 2899 	lbeq	L93	;
                           2900 ;----- asm -----
                           2901 ; 790 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2902 	; #ENR#[627]_x_ =0;
                           2903 ;--- end asm ---
   29AB 7F C9 84      [ 7] 2904 	clr	__x_	; _x_
                           2905 ;----- asm -----
                           2906 ; 792 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2907 	; #ENR#[628]_y_ =elevatory;
                           2908 ;--- end asm ---
   29AE F6 C8 A3      [ 5] 2909 	ldb	_elevatorY	;, elevatorY
   29B1 F7 C9 83      [ 5] 2910 	stb	__y_	;, _y_
                           2911 ;----- asm -----
                           2912 ; 794 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2913 	; #ENR#[629]dp_via_t1_cnt_lo  = 0x7f;
                           2914 ;--- end asm ---
   29B4 C6 7F         [ 2] 2915 	ldb	#127	;,
   29B6 D7 04         [ 4] 2916 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2917 ;----- asm -----
                           2918 ; 796 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2919 	; #ENR#[630]moveto_start_yx
                           2920 ; 797 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   29B8 B6 C9 83      [ 5] 2921 	LDA      __y_	; _y_
   29BB 97 01         [ 4] 2922 	STA      *0x01
   29BD 86 CE         [ 2] 2923 	LDA      #0xCE
   29BF 97 0C         [ 4] 2924 	STA      *0x0C
   29C1 4F            [ 2] 2925 	CLRA     
   29C2 97 00         [ 4] 2926 	STA      *0x00
   29C4 F6 C9 84      [ 5] 2927 	LDB      __x_	; _x_
   29C7 0C 00         [ 6] 2928 	INC      *0x00
   29C9 D7 01         [ 4] 2929 	STB      *0x01
   29CB 97 05         [ 4] 2930 	STA      *0x05
                           2931 ; 798 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2932 	; #ENR#[631]printenvironment = 0;
                           2933 ;--- end asm ---
   29CD 7F C8 F4      [ 7] 2934 	clr	_printEnvironment	; printEnvironment
                           2935 ;----- asm -----
                           2936 ; 800 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2937 	; #ENR#[632]elevatory++;
                           2938 ;--- end asm ---
   29D0 7C C8 A3      [ 7] 2939 	inc	_elevatorY	; elevatorY
   29D3 F6 C8 A3      [ 5] 2940 	ldb	_elevatorY	; elevatorY.38, elevatorY
                           2941 ;----- asm -----
                           2942 ; 802 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2943 	; #ENR#[633]if (elevatory==120)
                           2944 ;--- end asm ---
   29D6 C1 78         [ 2] 2945 	cmpb	#120	;cmpqi:	; elevatorY.38,
   29D8 10 27 05 7F   [ 6] 2946 	lbeq	L195	;
   29DC                    2947 L94:
                           2948 ;----- asm -----
                           2949 ; 810 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2950 	; #ENR#[638]dp_via_t1_cnt_lo  = 0x09;
                           2951 ;--- end asm ---
   29DC C6 09         [ 2] 2952 	ldb	#9	;,
   29DE D7 04         [ 4] 2953 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2954 ;----- asm -----
                           2955 ; 812 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2956 	; #ENR#[639]my_move_to_a_end
                           2957 ; 813 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   29E0 86 40         [ 2] 2958 	LDA      #0x40
   29E2 95 0D         [ 4] 2959 	BITA     *0x0D
   29E4 27 FC         [ 3] 2960 	BEQ      . -2
                           2961 ; 814 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2962 	; #ENR#[640]drawelevator();
                           2963 ;--- end asm ---
   29E6 BD 51 07      [ 8] 2964 	jsr	_drawElevator
                           2965 ;----- asm -----
                           2966 ; 818 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2967 	; #ENR#[643]dp_via_t1_cnt_lo  = 0x7f;
                           2968 ;--- end asm ---
   29E9 C6 7F         [ 2] 2969 	ldb	#127	;,
   29EB D7 04         [ 4] 2970 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2971 ;----- asm -----
                           2972 ; 820 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2973 	; #ENR#[644]moveto_start_yx
                           2974 ; 821 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   29ED B6 C9 83      [ 5] 2975 	LDA      __y_	; _y_
   29F0 97 01         [ 4] 2976 	STA      *0x01
   29F2 86 CE         [ 2] 2977 	LDA      #0xCE
   29F4 97 0C         [ 4] 2978 	STA      *0x0C
   29F6 4F            [ 2] 2979 	CLRA     
   29F7 97 00         [ 4] 2980 	STA      *0x00
   29F9 F6 C9 84      [ 5] 2981 	LDB      __x_	; _x_
   29FC 0C 00         [ 6] 2982 	INC      *0x00
   29FE D7 01         [ 4] 2983 	STB      *0x01
   2A00 97 05         [ 4] 2984 	STA      *0x05
                           2985 ; 822 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2986 	; #ENR#[645]dp_via_t1_cnt_lo  = 0x09;
                           2987 ;--- end asm ---
   2A02 C6 09         [ 2] 2988 	ldb	#9	;,
   2A04 D7 04         [ 4] 2989 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           2990 ;----- asm -----
                           2991 ; 824 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2A06 86 40         [ 2] 2992 	LDA      #0x40
   2A08 95 0D         [ 4] 2993 	BITA     *0x0D
   2A0A 27 FC         [ 3] 2994 	BEQ      . -2
                           2995 ;--- end asm ---
   2A0C                    2996 L93:
                           2997 ;----- asm -----
                           2998 ; 827 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           2999 	; #ENR#[649]if (specialaction)
                           3000 ;--- end asm ---
   2A0C F6 C8 A5      [ 5] 3001 	ldb	_specialAction	; specialAction.39, specialAction
   2A0F 27 12         [ 3] 3002 	beq	L95	;
                           3003 ;----- asm -----
                           3004 ; 830 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3005 	; #ENR#[651]if (specialaction == special_dragonbreath)
                           3006 ;--- end asm ---
   2A11 C1 01         [ 2] 3007 	cmpb	#1	;cmpqi:	; specialAction.39,
   2A13 10 27 05 98   [ 6] 3008 	lbeq	L196	;
   2A17 C1 02         [ 2] 3009 	cmpb	#2	;cmpqi:	; specialAction.39,
   2A19 10 27 09 A5   [ 6] 3010 	lbeq	L197	;
   2A1D C1 03         [ 2] 3011 	cmpb	#3	;cmpqi:	; specialAction.39,
   2A1F 10 27 09 D0   [ 6] 3012 	lbeq	L198	;
   2A23                    3013 L95:
                           3014 ;----- asm -----
                           3015 ; 857 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3016 	; #ENR#[669]if (initsoundno)
                           3017 ;--- end asm ---
   2A23 F6 C8 A6      [ 5] 3018 	ldb	_initSoundNo	; initSoundNo.42, initSoundNo
   2A26 27 3C         [ 3] 3019 	beq	L98	;
                           3020 ;----- asm -----
                           3021 ; 860 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3022 	; #ENR#[671]if (initsoundno == sound_cube)
                           3023 ;--- end asm ---
   2A28 C1 01         [ 2] 3024 	cmpb	#1	;cmpqi:	; initSoundNo.42,
   2A2A 27 2A         [ 3] 3025 	beq	L199	;
   2A2C C1 02         [ 2] 3026 	cmpb	#2	;cmpqi:	; initSoundNo.42,
   2A2E 10 27 09 9F   [ 6] 3027 	lbeq	L200	;
   2A32 C1 03         [ 2] 3028 	cmpb	#3	;cmpqi:	; initSoundNo.42,
   2A34 10 27 06 50   [ 6] 3029 	lbeq	L201	;
   2A38 C1 04         [ 2] 3030 	cmpb	#4	;cmpqi:	; initSoundNo.42,
   2A3A 10 27 09 AC   [ 6] 3031 	lbeq	L202	;
   2A3E C1 05         [ 2] 3032 	cmpb	#5	;cmpqi:	; initSoundNo.42,
   2A40 10 27 09 B8   [ 6] 3033 	lbeq	L203	;
   2A44 C1 06         [ 2] 3034 	cmpb	#6	;cmpqi:	; initSoundNo.42,
   2A46 10 27 09 BB   [ 6] 3035 	lbeq	L204	;
   2A4A C1 07         [ 2] 3036 	cmpb	#7	;cmpqi:	; initSoundNo.42,
   2A4C 26 0E         [ 3] 3037 	bne	L100	;
                           3038 ;----- asm -----
                           3039 ; 893 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3040 	; #ENR#[697]sfx_pointer_1 = (long unsigned int) (&down_data);
                           3041 ;--- end asm ---
   2A4E 8E 20 56      [ 3] 3042 	ldx	#_down_data	;,
   2A51 BF CA D0      [ 6] 3043 	stx	_sfx_pointer_1	;, sfx_pointer_1
   2A54 20 06         [ 3] 3044 	bra	L100	;
   2A56                    3045 L199:
                           3046 ;----- asm -----
                           3047 ; 863 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3048 	; #ENR#[673]sfx_pointer_1 = (long unsigned int) (&cube_c64_data);
                           3049 ;--- end asm ---
   2A56 8E 1E A2      [ 3] 3050 	ldx	#_cube_c64_data	;,
   2A59 BF CA D0      [ 6] 3051 	stx	_sfx_pointer_1	;, sfx_pointer_1
   2A5C                    3052 L100:
                           3053 ;----- asm -----
                           3054 ; 901 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3055 	; #ENR#[703]sfx_status_1 = 1;
                           3056 ;--- end asm ---
   2A5C C6 01         [ 2] 3057 	ldb	#1	;,
   2A5E F7 CA CF      [ 5] 3058 	stb	_sfx_status_1	;, sfx_status_1
                           3059 ;----- asm -----
                           3060 ; 903 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3061 	; #ENR#[704]initsoundno = 0;
                           3062 ;--- end asm ---
   2A61 7F C8 A6      [ 7] 3063 	clr	_initSoundNo	; initSoundNo
   2A64                    3064 L98:
                           3065 ;----- asm -----
                           3066 ; 907 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3067 	; #ENR#[707]if (ply_song_playing)
                           3068 ;--- end asm ---
   2A64 7D CA F7      [ 7] 3069 	tst	_PLY_SONG_PLAYING	; PLY_SONG_PLAYING
   2A67 10 26 04 51   [ 6] 3070 	lbne	L205	;
   2A6B                    3071 L106:
                           3072 ;----- asm -----
                           3073 ; 910 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3074 	; #ENR#[709]if (sfx_status_1 == 1)
                           3075 ;--- end asm ---
   2A6B F6 CA CF      [ 5] 3076 	ldb	_sfx_status_1	; sfx_status_1.52, sfx_status_1
   2A6E C1 01         [ 2] 3077 	cmpb	#1	;cmpqi:	; sfx_status_1.52,
   2A70 10 27 04 42   [ 6] 3078 	lbeq	L206	;
   2A74                    3079 L107:
                           3080 ;----- asm -----
                           3081 ; 914 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3082 	; #ENR#[712]if (printcharacter)
                           3083 ;--- end asm ---
   2A74 7D C8 F7      [ 7] 3084 	tst	_printCharacter	; printCharacter
   2A77 10 26 04 2D   [ 6] 3085 	lbne	L207	;
   2A7B                    3086 L108:
                           3087 ;----- asm -----
                           3088 ; 925 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3089 	; #ENR#[719]if (!printdungeon) return;
                           3090 ;--- end asm ---
   2A7B 7D C8 F3      [ 7] 3091 	tst	_printDungeon	; printDungeon
   2A7E 10 27 03 FB   [ 6] 3092 	lbeq	L191	;
                           3093 ;----- asm -----
                           3094 ; 928 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3095 	; #ENR#[721]if (m != -1)
                           3096 ;--- end asm ---
   2A82 F6 C9 77      [ 5] 3097 	ldb	_m	;, m
   2A85 C1 FF         [ 2] 3098 	cmpb	#-1	;cmpqi:	;,
   2A87 10 27 03 F7   [ 6] 3099 	lbeq	L110	;
                           3100 ;----- asm -----
                           3101 ; 931 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3102 	; #ENR#[723]dp_via_t1_cnt_lo  = 0x09;
                           3103 ;--- end asm ---
   2A8B C6 09         [ 2] 3104 	ldb	#9	;,
   2A8D D7 04         [ 4] 3105 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3106 ;----- asm -----
                           3107 ; 933 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3108 	; #ENR#[724]dp_via_cntl = 0xce;
                           3109 ;--- end asm ---
   2A8F C6 CE         [ 2] 3110 	ldb	#-50	;,
   2A91 D7 0C         [ 4] 3111 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3112 ;----- asm -----
                           3113 ; 935 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3114 	; #ENR#[725]monsterdrawer[m]();
                           3115 ;--- end asm ---
   2A93 F6 C9 77      [ 5] 3116 	ldb	_m	;, m
   2A96 1D            [ 2] 3117 	sex		;extendqihi2: R:b -> R:d	;,
   2A97 ED E4         [ 5] 3118 	std	,s	;,
   2A99 58            [ 2] 3119 	aslb	;
   2A9A 49            [ 2] 3120 	rola	;
   2A9B 1F 01         [ 6] 3121 	tfr	d,x	;, tmp137
   2A9D AD 99 21 A4   [14] 3122 	jsr	[_monsterDrawer,x]
   2AA1                    3123 L111:
                           3124 ;----- asm -----
                           3125 ; 958 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3126 	; #ENR#[741]reset0ref();
                           3127 ;--- end asm ---
   2AA1 C6 CC         [ 2] 3128 	ldb	#-52	;,
   2AA3 D7 0C         [ 4] 3129 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3130 ;----- asm -----
                           3131 ; 962 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3132 	; #ENR#[744]drawroom(any_item(item(item_00, map00_hi)), getup(drawup_00, map00_lo), getleft(drawleft_00, map00_lo), room_y(0), room_x(0));
                           3133 ;--- end asm ---
   2AA5 F6 C8 89      [ 5] 3134 	ldb	_screen+9	;,
   2AA8 E7 64         [ 5] 3135 	stb	4,s	;, D.3626
   2AAA C6 03         [ 2] 3136 	ldb	#3	;,
   2AAC E4 64         [ 5] 3137 	andb	4,s	;, D.3626
   2AAE E7 64         [ 5] 3138 	stb	4,s	;, D.3626
   2AB0 C1 01         [ 2] 3139 	cmpb	#1	;cmpqi:	;,
   2AB2 10 23 08 47   [ 6] 3140 	lbls	L113	;
   2AB6 10 8E C8 8B   [ 4] 3141 	ldy	#_screen+11	; prephitmp.348,
   2ABA F6 C8 8B      [ 5] 3142 	ldb	_screen+11	;,
   2ABD E7 E8 1E      [ 5] 3143 	stb	30,s	;, prephitmp.350
   2AC0 6F 63         [ 7] 3144 	clr	3,s	; iftmp.58
   2AC2                    3145 L114:
   2AC2 C6 03         [ 2] 3146 	ldb	#3	;,
   2AC4 E4 E8 1E      [ 5] 3147 	andb	30,s	;, prephitmp.350
   2AC7 E7 66         [ 5] 3148 	stb	6,s	;, D.3636
   2AC9 C1 01         [ 2] 3149 	cmpb	#1	;cmpqi:	;,
   2ACB 10 23 07 C6   [ 6] 3150 	lbls	L208	;
   2ACF                    3151 L116:
   2ACF 6F 65         [ 7] 3152 	clr	5,s	; iftmp.59
   2AD1                    3153 L117:
   2AD1 7D C9 6E      [ 7] 3154 	tst	_sf+2	; sf
   2AD4 27 10         [ 3] 3155 	beq	L118	;
   2AD6 E6 64         [ 5] 3156 	ldb	4,s	;, D.3626
   2AD8 C1 01         [ 2] 3157 	cmpb	#1	;cmpqi:	;,
   2ADA 10 23 05 1A   [ 6] 3158 	lbls	L209	;
   2ADE                    3159 L119:
   2ADE E6 66         [ 5] 3160 	ldb	6,s	;, D.3636
   2AE0 C1 01         [ 2] 3161 	cmpb	#1	;cmpqi:	;,
   2AE2 10 23 05 C6   [ 6] 3162 	lbls	L210	;
   2AE6                    3163 L118:
   2AE6 6F 67         [ 7] 3164 	clr	7,s	; iftmp.60
   2AE8                    3165 L121:
   2AE8 C6 80         [ 2] 3166 	ldb	#-128	;,
   2AEA E7 E2         [ 6] 3167 	stb	,-s	;,
   2AEC C6 7F         [ 2] 3168 	ldb	#127	;,
   2AEE E7 E2         [ 6] 3169 	stb	,-s	;,
   2AF0 E6 65         [ 5] 3170 	ldb	5,s	;, iftmp.58
   2AF2 34 04         [ 6] 3171 	pshs	b	;
   2AF4 E6 68         [ 5] 3172 	ldb	8,s	;, iftmp.59
   2AF6 34 04         [ 6] 3173 	pshs	b	;
   2AF8 E6 6B         [ 5] 3174 	ldb	11,s	;, iftmp.60
   2AFA BD 28 CE      [ 8] 3175 	jsr	_drawRoom
                           3176 ;----- asm -----
                           3177 ; 964 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3178 	; #ENR#[745]drawroom(any_item(item(item_01, map01_hi)), getup(drawup_01, map01_lo), getleft(drawleft_01, map01_lo), room_y(0), room_x(1));
                           3179 ;--- end asm ---
   2AFD E6 A4         [ 4] 3180 	ldb	,y	;,* prephitmp.348
   2AFF C4 03         [ 2] 3181 	andb	#3	;,
   2B01 E7 E8 23      [ 5] 3182 	stb	35,s	;, temp.381
   2B04 32 64         [ 5] 3183 	leas	4,s	;,,
   2B06 C1 01         [ 2] 3184 	cmpb	#1	;cmpqi:	;,
   2B08 10 23 08 5B   [ 6] 3185 	lbls	L122	;
   2B0C 6F 69         [ 7] 3186 	clr	9,s	; iftmp.63
   2B0E 6F 68         [ 7] 3187 	clr	8,s	; iftmp.62
   2B10                    3188 L123:
   2B10 7D C9 6E      [ 7] 3189 	tst	_sf+2	; sf
   2B13 27 09         [ 3] 3190 	beq	L124	;
   2B15 E6 E8 1F      [ 5] 3191 	ldb	31,s	;, temp.381
   2B18 C1 01         [ 2] 3192 	cmpb	#1	;cmpqi:	;,
   2B1A 10 23 05 55   [ 6] 3193 	lbls	L211	;
   2B1E                    3194 L124:
   2B1E 6F 6A         [ 7] 3195 	clr	10,s	; iftmp.64
   2B20                    3196 L125:
   2B20 C6 D5         [ 2] 3197 	ldb	#-43	;,
   2B22 E7 E2         [ 6] 3198 	stb	,-s	;,
   2B24 C6 7F         [ 2] 3199 	ldb	#127	;,
   2B26 E7 E2         [ 6] 3200 	stb	,-s	;,
   2B28 E6 6A         [ 5] 3201 	ldb	10,s	;, iftmp.62
   2B2A 34 04         [ 6] 3202 	pshs	b	;
   2B2C E6 6C         [ 5] 3203 	ldb	12,s	;, iftmp.63
   2B2E 34 04         [ 6] 3204 	pshs	b	;
   2B30 E6 6E         [ 5] 3205 	ldb	14,s	;, iftmp.64
   2B32 BD 28 CE      [ 8] 3206 	jsr	_drawRoom
                           3207 ;----- asm -----
                           3208 ; 966 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3209 	; #ENR#[746]drawroom(any_item(item(item_02, map02_hi)), getup(drawup_02, map02_lo), getleft(drawleft_02, map02_lo), room_y(0), room_x(2));
                           3210 ;--- end asm ---
   2B35 F6 C8 85      [ 5] 3211 	ldb	_screen+5	;,
   2B38 E7 6F         [ 5] 3212 	stb	15,s	;, D.3660
   2B3A E6 A4         [ 4] 3213 	ldb	,y	;,* prephitmp.348
   2B3C C4 03         [ 2] 3214 	andb	#3	;,
   2B3E E7 E8 26      [ 5] 3215 	stb	38,s	;, temp.388
   2B41 32 64         [ 5] 3216 	leas	4,s	;,,
   2B43 C1 01         [ 2] 3217 	cmpb	#1	;cmpqi:	;,
   2B45 10 23 07 A1   [ 6] 3218 	lbls	L212	;
   2B49                    3219 L126:
   2B49 6F 6C         [ 7] 3220 	clr	12,s	; iftmp.66
   2B4B                    3221 L127:
   2B4B 7D C9 6E      [ 7] 3222 	tst	_sf+2	; sf
   2B4E 10 26 03 88   [ 6] 3223 	lbne	L128	;
   2B52 8E C8 8D      [ 3] 3224 	ldx	#_screen+13	;,
   2B55 AF E8 2D      [ 6] 3225 	stx	45,s	;, prephitmp.438
   2B58 6F 6D         [ 7] 3226 	clr	13,s	; iftmp.67
   2B5A                    3227 L129:
   2B5A C6 2A         [ 2] 3228 	ldb	#42	;,
   2B5C E7 E2         [ 6] 3229 	stb	,-s	;,
   2B5E C6 7F         [ 2] 3230 	ldb	#127	;,
   2B60 E7 E2         [ 6] 3231 	stb	,-s	;,
   2B62 64 6D         [ 7] 3232 	lsr	13,s	; D.3660
   2B64 64 6D         [ 7] 3233 	lsr	13,s	; D.3660
   2B66 E6 6D         [ 5] 3234 	ldb	13,s	;, D.3660
   2B68 C4 03         [ 2] 3235 	andb	#3	;,
   2B6A 34 04         [ 6] 3236 	pshs	b	;
   2B6C E6 6F         [ 5] 3237 	ldb	15,s	;, iftmp.66
   2B6E 34 04         [ 6] 3238 	pshs	b	;
   2B70 E6 E8 11      [ 5] 3239 	ldb	17,s	;, iftmp.67
   2B73 BD 28 CE      [ 8] 3240 	jsr	_drawRoom
                           3241 ;----- asm -----
                           3242 ; 968 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3243 	; #ENR#[747]drawroom(0, getup(drawup_03, map03_lo), getleft(drawleft_03, map03_lo), room_y(0), room_x(3));
                           3244 ;--- end asm ---
   2B76 E6 F8 31      [ 8] 3245 	ldb	[49,s]	;,* prephitmp.438
   2B79 E7 E8 27      [ 5] 3246 	stb	39,s	;, temp.392
   2B7C C4 03         [ 2] 3247 	andb	#3	; tmp170,
   2B7E 32 64         [ 5] 3248 	leas	4,s	;,,
   2B80 C1 01         [ 2] 3249 	cmpb	#1	;cmpqi:	; tmp170,
   2B82 10 23 07 C6   [ 6] 3250 	lbls	L213	;
   2B86                    3251 L134:
   2B86 6F 62         [ 7] 3252 	clr	2,s	; iftmp.69
   2B88                    3253 L135:
   2B88 C6 7F         [ 2] 3254 	ldb	#127	;,
   2B8A E7 E2         [ 6] 3255 	stb	,-s	;,
   2B8C E7 E2         [ 6] 3256 	stb	,-s	;,
   2B8E E6 64         [ 5] 3257 	ldb	4,s	;, iftmp.69
   2B90 34 04         [ 6] 3258 	pshs	b	;
   2B92 6F E2         [ 8] 3259 	clr	,-s	;
   2B94 5F            [ 2] 3260 	clrb	;
   2B95 BD 28 CE      [ 8] 3261 	jsr	_drawRoom
                           3262 ;----- asm -----
                           3263 ; 971 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3264 	; #ENR#[749]drawroom(any_item(item(item_10, map10_hi)), getup(drawup_10, map10_lo), getleft(drawleft_10, map10_lo), room_y(1), room_x(0));
                           3265 ;--- end asm ---
   2B98 E6 A4         [ 4] 3266 	ldb	,y	;,* prephitmp.348
   2B9A C4 0C         [ 2] 3267 	andb	#12	;,
   2B9C E7 E8 28      [ 5] 3268 	stb	40,s	;, temp.396
   2B9F 32 64         [ 5] 3269 	leas	4,s	;,,
   2BA1 C1 04         [ 2] 3270 	cmpb	#4	;cmpqi:	;,
   2BA3 10 23 03 1B   [ 6] 3271 	lbls	L136	;
   2BA7 6F E8 10      [ 7] 3272 	clr	16,s	; iftmp.71
   2BAA 6F 6F         [ 7] 3273 	clr	15,s	; iftmp.70
   2BAC                    3274 L137:
   2BAC 7D C9 6E      [ 7] 3275 	tst	_sf+2	; sf
   2BAF 27 09         [ 3] 3276 	beq	L138	;
   2BB1 E6 E8 24      [ 5] 3277 	ldb	36,s	;, temp.396
   2BB4 C1 04         [ 2] 3278 	cmpb	#4	;cmpqi:	;,
   2BB6 10 23 03 AA   [ 6] 3279 	lbls	L214	;
   2BBA                    3280 L138:
   2BBA 6F E8 11      [ 7] 3281 	clr	17,s	; iftmp.72
   2BBD                    3282 L139:
   2BBD C6 80         [ 2] 3283 	ldb	#-128	;,
   2BBF E7 E2         [ 6] 3284 	stb	,-s	;,
   2BC1 C6 2A         [ 2] 3285 	ldb	#42	;,
   2BC3 E7 E2         [ 6] 3286 	stb	,-s	;,
   2BC5 E6 E8 11      [ 5] 3287 	ldb	17,s	;, iftmp.70
   2BC8 34 04         [ 6] 3288 	pshs	b	;
   2BCA E6 E8 13      [ 5] 3289 	ldb	19,s	;, iftmp.71
   2BCD 34 04         [ 6] 3290 	pshs	b	;
   2BCF E6 E8 15      [ 5] 3291 	ldb	21,s	;, iftmp.72
   2BD2 BD 28 CE      [ 8] 3292 	jsr	_drawRoom
                           3293 ;----- asm -----
                           3294 ; 973 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3295 	; #ENR#[750]drawroom(0, getup(drawup_11, map11_lo), getleft(drawleft_11, map11_lo), room_y(1), room_x(1));
                           3296 ;--- end asm ---
   2BD5 E6 A4         [ 4] 3297 	ldb	,y	;,* prephitmp.348
   2BD7 E7 E8 29      [ 5] 3298 	stb	41,s	;, temp.399
   2BDA C6 D5         [ 2] 3299 	ldb	#-43	;,
   2BDC E7 E2         [ 6] 3300 	stb	,-s	;,
   2BDE C6 2A         [ 2] 3301 	ldb	#42	;,
   2BE0 E7 E2         [ 6] 3302 	stb	,-s	;,
   2BE2 E6 E8 2B      [ 5] 3303 	ldb	43,s	; tmp177, temp.399
   2BE5 54            [ 2] 3304 	lsrb	; tmp177
   2BE6 54            [ 2] 3305 	lsrb	; tmp177
   2BE7 C4 03         [ 2] 3306 	andb	#3	; tmp177,
   2BE9 34 04         [ 6] 3307 	pshs	b	; tmp177
   2BEB E6 E8 2C      [ 5] 3308 	ldb	44,s	;, temp.399
   2BEE C4 03         [ 2] 3309 	andb	#3	;,
   2BF0 34 04         [ 6] 3310 	pshs	b	;
   2BF2 5F            [ 2] 3311 	clrb	;
   2BF3 BD 28 CE      [ 8] 3312 	jsr	_drawRoom
                           3313 ;----- asm -----
                           3314 ; 975 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3315 	; #ENR#[751]drawroom(any_item(item(item_12, map12_hi)), getup(drawup_12, map12_lo), getleft(drawleft_12, map12_lo), room_y(1), room_x(2));
                           3316 ;--- end asm ---
   2BF6 E6 F8 35      [ 8] 3317 	ldb	[53,s]	;,* prephitmp.438
   2BF9 E7 E8 2E      [ 5] 3318 	stb	46,s	;, temp.401
   2BFC C4 0C         [ 2] 3319 	andb	#12	;,
   2BFE E7 6A         [ 5] 3320 	stb	10,s	;, temp.402
   2C00 32 68         [ 5] 3321 	leas	8,s	;,,
   2C02 C1 04         [ 2] 3322 	cmpb	#4	;cmpqi:	;,
   2C04 10 23 03 3C   [ 6] 3323 	lbls	L140	;
   2C08 6F E8 12      [ 7] 3324 	clr	18,s	; iftmp.74
   2C0B                    3325 L141:
   2C0B 7D C9 6E      [ 7] 3326 	tst	_sf+2	; sf
   2C0E 27 08         [ 3] 3327 	beq	L142	;
   2C10 E6 62         [ 5] 3328 	ldb	2,s	;, temp.402
   2C12 C1 04         [ 2] 3329 	cmpb	#4	;cmpqi:	;,
   2C14 10 23 03 81   [ 6] 3330 	lbls	L215	;
   2C18                    3331 L142:
   2C18 6F E8 13      [ 7] 3332 	clr	19,s	; iftmp.75
   2C1B                    3333 L143:
   2C1B C6 2A         [ 2] 3334 	ldb	#42	;,
   2C1D E7 E2         [ 6] 3335 	stb	,-s	;,
   2C1F E7 E2         [ 6] 3336 	stb	,-s	;,
   2C21 64 E8 28      [ 7] 3337 	lsr	40,s	; temp.401
   2C24 64 E8 28      [ 7] 3338 	lsr	40,s	; temp.401
   2C27 E6 E8 28      [ 5] 3339 	ldb	40,s	;, temp.401
   2C2A C4 03         [ 2] 3340 	andb	#3	;,
   2C2C 34 04         [ 6] 3341 	pshs	b	;
   2C2E E6 E8 15      [ 5] 3342 	ldb	21,s	;, iftmp.74
   2C31 34 04         [ 6] 3343 	pshs	b	;
   2C33 E6 E8 17      [ 5] 3344 	ldb	23,s	;, iftmp.75
   2C36 BD 28 CE      [ 8] 3345 	jsr	_drawRoom
                           3346 ;----- asm -----
                           3347 ; 977 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3348 	; #ENR#[752]drawroom(0, getup(drawup_13, map13_lo), getleft(drawleft_13, map13_lo), room_y(1), room_x(3));
                           3349 ;--- end asm ---
   2C39 E6 F8 31      [ 8] 3350 	ldb	[49,s]	; tmp185,* prephitmp.438
   2C3C C4 0C         [ 2] 3351 	andb	#12	; tmp185,
   2C3E 32 64         [ 5] 3352 	leas	4,s	;,,
   2C40 C1 04         [ 2] 3353 	cmpb	#4	;cmpqi:	; tmp185,
   2C42 10 23 02 EE   [ 6] 3354 	lbls	L144	;
   2C46 6F 62         [ 7] 3355 	clr	2,s	; iftmp.77
   2C48                    3356 L145:
   2C48 C6 7F         [ 2] 3357 	ldb	#127	;,
   2C4A E7 E2         [ 6] 3358 	stb	,-s	;,
   2C4C C6 2A         [ 2] 3359 	ldb	#42	;,
   2C4E E7 E2         [ 6] 3360 	stb	,-s	;,
   2C50 E6 64         [ 5] 3361 	ldb	4,s	;, iftmp.77
   2C52 34 04         [ 6] 3362 	pshs	b	;
   2C54 6F E2         [ 8] 3363 	clr	,-s	;
   2C56 5F            [ 2] 3364 	clrb	;
   2C57 BD 28 CE      [ 8] 3365 	jsr	_drawRoom
                           3366 ;----- asm -----
                           3367 ; 980 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3368 	; #ENR#[754]drawroom(any_item(item(item_20, map20_hi)), getup(drawup_20, map20_lo), getleft(drawleft_20, map20_lo), room_y(2), room_x(0));
                           3369 ;--- end asm ---
   2C5A F6 C8 91      [ 5] 3370 	ldb	_screen+17	;,
   2C5D E7 E8 19      [ 5] 3371 	stb	25,s	;, D.3716
   2C60 C4 03         [ 2] 3372 	andb	#3	;,
   2C62 E7 E8 2B      [ 5] 3373 	stb	43,s	;, iftmp.407
   2C65 32 64         [ 5] 3374 	leas	4,s	;,,
   2C67 C1 01         [ 2] 3375 	cmpb	#1	;cmpqi:	;,
   2C69 10 23 06 AA   [ 6] 3376 	lbls	L216	;
   2C6D E6 A4         [ 4] 3377 	ldb	,y	;,* prephitmp.348
   2C6F E7 62         [ 5] 3378 	stb	2,s	;, temp.409
   2C71 C6 0C         [ 2] 3379 	ldb	#12	;,
   2C73 E4 62         [ 5] 3380 	andb	2,s	;, temp.409
   2C75 E7 62         [ 5] 3381 	stb	2,s	;, temp.409
   2C77 C1 04         [ 2] 3382 	cmpb	#4	;cmpqi:	;,
   2C79 10 23 02 D2   [ 6] 3383 	lbls	L217	;
   2C7D                    3384 L147:
   2C7D 6F E8 16      [ 7] 3385 	clr	22,s	; iftmp.79
   2C80 6F E8 14      [ 7] 3386 	clr	20,s	; iftmp.78
   2C83                    3387 L149:
   2C83 7D C9 6E      [ 7] 3388 	tst	_sf+2	; sf
   2C86 10 26 02 86   [ 6] 3389 	lbne	L150	;
   2C8A 10 8E C8 93   [ 4] 3390 	ldy	#_screen+19	; prephitmp.352,
   2C8E 6F E8 17      [ 7] 3391 	clr	23,s	; iftmp.80
   2C91                    3392 L151:
   2C91 C6 80         [ 2] 3393 	ldb	#-128	;,
   2C93 E7 E2         [ 6] 3394 	stb	,-s	;,
   2C95 C6 D5         [ 2] 3395 	ldb	#-43	;,
   2C97 E7 E2         [ 6] 3396 	stb	,-s	;,
   2C99 E6 E8 16      [ 5] 3397 	ldb	22,s	;, iftmp.78
   2C9C 34 04         [ 6] 3398 	pshs	b	;
   2C9E E6 E8 19      [ 5] 3399 	ldb	25,s	;, iftmp.79
   2CA1 34 04         [ 6] 3400 	pshs	b	;
   2CA3 E6 E8 1B      [ 5] 3401 	ldb	27,s	;, iftmp.80
   2CA6 BD 28 CE      [ 8] 3402 	jsr	_drawRoom
                           3403 ;----- asm -----
                           3404 ; 982 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3405 	; #ENR#[755]drawroom(any_item(item(item_21, map21_hi)), getup(drawup_21, map21_lo), getleft(drawleft_21, map21_lo), room_y(2), room_x(1));
                           3406 ;--- end asm ---
   2CA9 E6 A4         [ 4] 3407 	ldb	,y	;,* prephitmp.352
   2CAB E7 66         [ 5] 3408 	stb	6,s	;, temp.413
   2CAD C4 03         [ 2] 3409 	andb	#3	;,
   2CAF E7 E8 2C      [ 5] 3410 	stb	44,s	;, temp.414
   2CB2 32 64         [ 5] 3411 	leas	4,s	;,,
   2CB4 C1 01         [ 2] 3412 	cmpb	#1	;cmpqi:	;,
   2CB6 10 23 06 80   [ 6] 3413 	lbls	L156	;
   2CBA 6F E8 19      [ 7] 3414 	clr	25,s	; iftmp.82
   2CBD                    3415 L157:
   2CBD 7D C9 6E      [ 7] 3416 	tst	_sf+2	; sf
   2CC0 27 09         [ 3] 3417 	beq	L158	;
   2CC2 E6 E8 28      [ 5] 3418 	ldb	40,s	;, temp.414
   2CC5 C1 01         [ 2] 3419 	cmpb	#1	;cmpqi:	;,
   2CC7 10 23 03 92   [ 6] 3420 	lbls	L218	;
   2CCB                    3421 L158:
   2CCB 6F E8 1A      [ 7] 3422 	clr	26,s	; iftmp.83
   2CCE                    3423 L159:
   2CCE C6 D5         [ 2] 3424 	ldb	#-43	;,
   2CD0 E7 E2         [ 6] 3425 	stb	,-s	;,
   2CD2 E7 E2         [ 6] 3426 	stb	,-s	;,
   2CD4 E6 E8 1B      [ 5] 3427 	ldb	27,s	;, iftmp.82
   2CD7 34 04         [ 6] 3428 	pshs	b	;
   2CD9 E6 E8 2B      [ 5] 3429 	ldb	43,s	;, temp.414
   2CDC 34 04         [ 6] 3430 	pshs	b	;
   2CDE E6 E8 1E      [ 5] 3431 	ldb	30,s	;, iftmp.83
   2CE1 BD 28 CE      [ 8] 3432 	jsr	_drawRoom
                           3433 ;----- asm -----
                           3434 ; 984 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3435 	; #ENR#[756]drawroom(any_item(item(item_22, map22_hi)), getup(drawup_22, map22_lo), getleft(drawleft_22, map22_lo), room_y(2), room_x(2));
                           3436 ;--- end asm ---
   2CE4 E6 A4         [ 4] 3437 	ldb	,y	;,* prephitmp.352
   2CE6 C4 03         [ 2] 3438 	andb	#3	;,
   2CE8 E7 E8 2D      [ 5] 3439 	stb	45,s	;, temp.417
   2CEB 32 64         [ 5] 3440 	leas	4,s	;,,
   2CED C1 01         [ 2] 3441 	cmpb	#1	;cmpqi:	;,
   2CEF 10 23 05 BB   [ 6] 3442 	lbls	L160	;
   2CF3 8E C8 95      [ 3] 3443 	ldx	#_screen+21	;,
   2CF6 AF E8 20      [ 6] 3444 	stx	32,s	;, prephitmp.384
   2CF9 6F E8 1B      [ 7] 3445 	clr	27,s	; iftmp.85
   2CFC                    3446 L161:
   2CFC AE E8 2D      [ 6] 3447 	ldx	45,s	;, prephitmp.438
   2CFF E6 84         [ 4] 3448 	ldb	,x	;,
   2D01 E7 E8 2A      [ 5] 3449 	stb	42,s	;, temp.419
   2D04 C6 0C         [ 2] 3450 	ldb	#12	;,
   2D06 E4 E8 2A      [ 5] 3451 	andb	42,s	;, temp.419
   2D09 E7 E8 2A      [ 5] 3452 	stb	42,s	;, temp.419
   2D0C C1 04         [ 2] 3453 	cmpb	#4	;cmpqi:	;,
   2D0E 10 23 01 EB   [ 6] 3454 	lbls	L162	;
   2D12 6F E8 1C      [ 7] 3455 	clr	28,s	; iftmp.86
   2D15                    3456 L163:
   2D15 7D C9 6E      [ 7] 3457 	tst	_sf+2	; sf
   2D18 27 1C         [ 3] 3458 	beq	L164	;
   2D1A AE E8 20      [ 6] 3459 	ldx	32,s	;, prephitmp.384
   2D1D E6 84         [ 4] 3460 	ldb	,x	;,
   2D1F E7 E8 2B      [ 5] 3461 	stb	43,s	;, temp.422
   2D22 C6 03         [ 2] 3462 	ldb	#3	; tmp202,
   2D24 E4 E8 2B      [ 5] 3463 	andb	43,s	; tmp202, temp.422
   2D27 C1 01         [ 2] 3464 	cmpb	#1	;cmpqi:	; tmp202,
   2D29 10 23 02 EB   [ 6] 3465 	lbls	L219	;
   2D2D                    3466 L165:
   2D2D E6 E8 29      [ 5] 3467 	ldb	41,s	;, temp.417
   2D30 C1 01         [ 2] 3468 	cmpb	#1	;cmpqi:	;,
   2D32 10 23 03 84   [ 6] 3469 	lbls	L220	;
   2D36                    3470 L164:
   2D36 6F E8 1D      [ 7] 3471 	clr	29,s	; iftmp.87
   2D39                    3472 L167:
   2D39 C6 2A         [ 2] 3473 	ldb	#42	;,
   2D3B E7 E2         [ 6] 3474 	stb	,-s	;,
   2D3D C6 D5         [ 2] 3475 	ldb	#-43	;,
   2D3F E7 E2         [ 6] 3476 	stb	,-s	;,
   2D41 E6 E8 1D      [ 5] 3477 	ldb	29,s	;, iftmp.85
   2D44 34 04         [ 6] 3478 	pshs	b	;
   2D46 E6 E8 1F      [ 5] 3479 	ldb	31,s	;, iftmp.86
   2D49 34 04         [ 6] 3480 	pshs	b	;
   2D4B E6 E8 21      [ 5] 3481 	ldb	33,s	;, iftmp.87
   2D4E BD 28 CE      [ 8] 3482 	jsr	_drawRoom
                           3483 ;----- asm -----
                           3484 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3485 	; #ENR#[757]drawroom(0, getup(drawup_23, map23_lo), getleft(drawleft_23, map23_lo), room_y(2), room_x(3));
                           3486 ;--- end asm ---
   2D51 E6 F8 24      [ 8] 3487 	ldb	[36,s]	; tmp206,* prephitmp.384
   2D54 C4 03         [ 2] 3488 	andb	#3	; tmp206,
   2D56 32 64         [ 5] 3489 	leas	4,s	;,,
   2D58 C1 01         [ 2] 3490 	cmpb	#1	;cmpqi:	; tmp206,
   2D5A 10 23 06 20   [ 6] 3491 	lbls	L221	;
   2D5E                    3492 L168:
   2D5E 6F 62         [ 7] 3493 	clr	2,s	; iftmp.89
   2D60                    3494 L169:
   2D60 C6 7F         [ 2] 3495 	ldb	#127	;,
   2D62 E7 E2         [ 6] 3496 	stb	,-s	;,
   2D64 C6 D5         [ 2] 3497 	ldb	#-43	;,
   2D66 E7 E2         [ 6] 3498 	stb	,-s	;,
   2D68 E6 64         [ 5] 3499 	ldb	4,s	;, iftmp.89
   2D6A 34 04         [ 6] 3500 	pshs	b	;
   2D6C 6F E2         [ 8] 3501 	clr	,-s	;
   2D6E 5F            [ 2] 3502 	clrb	;
   2D6F BD 28 CE      [ 8] 3503 	jsr	_drawRoom
                           3504 ;----- asm -----
                           3505 ; 989 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3506 	; #ENR#[759]drawroom(0, getup(drawup_30, map30_lo), getleft(drawleft_30, map30_lo), room_y(3), room_x(0));
                           3507 ;--- end asm ---
   2D72 E6 A4         [ 4] 3508 	ldb	,y	;,* prephitmp.352
   2D74 E7 E8 30      [ 5] 3509 	stb	48,s	;, temp.428
   2D77 C4 03         [ 2] 3510 	andb	#3	; tmp210,
   2D79 32 64         [ 5] 3511 	leas	4,s	;,,
   2D7B C1 01         [ 2] 3512 	cmpb	#1	;cmpqi:	; tmp210,
   2D7D 10 23 06 28   [ 6] 3513 	lbls	L222	;
   2D81                    3514 L170:
   2D81 6F 62         [ 7] 3515 	clr	2,s	; iftmp.90
   2D83                    3516 L171:
   2D83 C6 80         [ 2] 3517 	ldb	#-128	;,
   2D85 E7 E2         [ 6] 3518 	stb	,-s	;,
   2D87 E7 E2         [ 6] 3519 	stb	,-s	;,
   2D89 6F E2         [ 8] 3520 	clr	,-s	;
   2D8B E6 65         [ 5] 3521 	ldb	5,s	;, iftmp.90
   2D8D 34 04         [ 6] 3522 	pshs	b	;
   2D8F 5F            [ 2] 3523 	clrb	;
   2D90 BD 28 CE      [ 8] 3524 	jsr	_drawRoom
                           3525 ;----- asm -----
                           3526 ; 991 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3527 	; #ENR#[760]drawroom(0, getup(drawup_31, map31_lo), getleft(drawleft_31, map31_lo), room_y(3), room_x(1));
                           3528 ;--- end asm ---
   2D93 E6 A4         [ 4] 3529 	ldb	,y	; tmp214,* prephitmp.352
   2D95 C4 03         [ 2] 3530 	andb	#3	; tmp214,
   2D97 32 64         [ 5] 3531 	leas	4,s	;,,
   2D99 C1 01         [ 2] 3532 	cmpb	#1	;cmpqi:	; tmp214,
   2D9B 10 23 05 FC   [ 6] 3533 	lbls	L172	;
   2D9F 6F 62         [ 7] 3534 	clr	2,s	; iftmp.91
   2DA1                    3535 L173:
   2DA1 C6 D5         [ 2] 3536 	ldb	#-43	;,
   2DA3 E7 E2         [ 6] 3537 	stb	,-s	;,
   2DA5 C6 80         [ 2] 3538 	ldb	#-128	;,
   2DA7 E7 E2         [ 6] 3539 	stb	,-s	;,
   2DA9 6F E2         [ 8] 3540 	clr	,-s	;
   2DAB E6 65         [ 5] 3541 	ldb	5,s	;, iftmp.91
   2DAD 34 04         [ 6] 3542 	pshs	b	;
   2DAF 5F            [ 2] 3543 	clrb	;
   2DB0 BD 28 CE      [ 8] 3544 	jsr	_drawRoom
                           3545 ;----- asm -----
                           3546 ; 993 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3547 	; #ENR#[761]drawroom(0, getup(drawup_32, map32_lo), getleft(drawleft_32, map32_lo), room_y(3), room_x(2));
                           3548 ;--- end asm ---
   2DB3 E6 A4         [ 4] 3549 	ldb	,y	; tmp217,* prephitmp.352
   2DB5 C4 03         [ 2] 3550 	andb	#3	; tmp217,
   2DB7 32 64         [ 5] 3551 	leas	4,s	;,,
   2DB9 C1 01         [ 2] 3552 	cmpb	#1	;cmpqi:	; tmp217,
   2DBB 10 23 05 10   [ 6] 3553 	lbls	L223	;
   2DBF                    3554 L174:
   2DBF 6F 62         [ 7] 3555 	clr	2,s	; iftmp.92
   2DC1                    3556 L175:
   2DC1 C6 2A         [ 2] 3557 	ldb	#42	;,
   2DC3 E7 E2         [ 6] 3558 	stb	,-s	;,
   2DC5 C6 80         [ 2] 3559 	ldb	#-128	;,
   2DC7 E7 E2         [ 6] 3560 	stb	,-s	;,
   2DC9 6F E2         [ 8] 3561 	clr	,-s	;
   2DCB E6 65         [ 5] 3562 	ldb	5,s	;, iftmp.92
   2DCD 34 04         [ 6] 3563 	pshs	b	;
   2DCF 5F            [ 2] 3564 	clrb	;
   2DD0 BD 28 CE      [ 8] 3565 	jsr	_drawRoom
                           3566 ;----- asm -----
                           3567 ; 996 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3568 	; #ENR#[763]_y_  = 90;
                           3569 ;--- end asm ---
   2DD3 C6 5A         [ 2] 3570 	ldb	#90	;,
   2DD5 F7 C9 83      [ 5] 3571 	stb	__y_	;, _y_
                           3572 ;----- asm -----
                           3573 ; 998 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3574 	; #ENR#[764]if (lightchange>0) intensity_a((unsigned int) (lightchange-0x20));
                           3575 ;--- end asm ---
   2DD8 F6 C8 A4      [ 5] 3576 	ldb	_lightChange	; lightChange.93, lightChange
   2DDB 32 64         [ 5] 3577 	leas	4,s	;,,
   2DDD 5D            [ 2] 3578 	tstb	; lightChange.93
   2DDE 10 2F 04 E5   [ 6] 3579 	lble	L176	;
   2DE2 CB E0         [ 2] 3580 	addb	#-32	; lightChange.93,
   2DE4 BD 7C 95      [ 8] 3581 	jsr	__Intensity_a
   2DE7                    3582 L177:
                           3583 ;----- asm -----
                           3584 ; 1002 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3585 	; #ENR#[767]for (int i=0;i<11;i++)
                           3586 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3587 	; #ENR#[769]if (sf[i]>0)
                           3588 ;--- end asm ---
   2DE7 7D C9 6C      [ 7] 3589 	tst	_sf	; sf
   2DEA 10 26 04 7E   [ 6] 3590 	lbne	L224	;
   2DEE                    3591 L178:
                           3592 ;----- asm -----
                           3593 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3594 	; #ENR#[769]if (sf[i]>0)
                           3595 ;--- end asm ---
   2DEE 7D C9 6D      [ 7] 3596 	tst	_sf+1	; sf
   2DF1 10 26 04 4D   [ 6] 3597 	lbne	L225	;
   2DF5                    3598 L179:
                           3599 ;----- asm -----
                           3600 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3601 	; #ENR#[769]if (sf[i]>0)
                           3602 ;--- end asm ---
   2DF5 7D C9 6E      [ 7] 3603 	tst	_sf+2	; sf
   2DF8 10 26 04 1C   [ 6] 3604 	lbne	L226	;
   2DFC                    3605 L180:
                           3606 ;----- asm -----
                           3607 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3608 	; #ENR#[769]if (sf[i]>0)
                           3609 ;--- end asm ---
   2DFC 7D C9 6F      [ 7] 3610 	tst	_sf+3	; sf
   2DFF 10 26 03 EB   [ 6] 3611 	lbne	L227	;
   2E03                    3612 L181:
                           3613 ;----- asm -----
                           3614 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3615 	; #ENR#[769]if (sf[i]>0)
                           3616 ;--- end asm ---
   2E03 7D C9 70      [ 7] 3617 	tst	_sf+4	; sf
   2E06 10 26 03 BA   [ 6] 3618 	lbne	L228	;
   2E0A                    3619 L182:
                           3620 ;----- asm -----
                           3621 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3622 	; #ENR#[769]if (sf[i]>0)
                           3623 ;--- end asm ---
   2E0A 7D C9 71      [ 7] 3624 	tst	_sf+5	; sf
   2E0D 10 26 03 8B   [ 6] 3625 	lbne	L229	;
   2E11                    3626 L183:
                           3627 ;----- asm -----
                           3628 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3629 	; #ENR#[769]if (sf[i]>0)
                           3630 ;--- end asm ---
   2E11 7D C9 72      [ 7] 3631 	tst	_sf+6	; sf
   2E14 10 26 03 5A   [ 6] 3632 	lbne	L230	;
   2E18                    3633 L184:
                           3634 ;----- asm -----
                           3635 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3636 	; #ENR#[769]if (sf[i]>0)
                           3637 ;--- end asm ---
   2E18 7D C9 73      [ 7] 3638 	tst	_sf+7	; sf
   2E1B 10 26 03 29   [ 6] 3639 	lbne	L231	;
   2E1F                    3640 L185:
                           3641 ;----- asm -----
                           3642 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3643 	; #ENR#[769]if (sf[i]>0)
                           3644 ;--- end asm ---
   2E1F 7D C9 74      [ 7] 3645 	tst	_sf+8	; sf
   2E22 10 26 02 F8   [ 6] 3646 	lbne	L232	;
   2E26                    3647 L186:
                           3648 ;----- asm -----
                           3649 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3650 	; #ENR#[769]if (sf[i]>0)
                           3651 ;--- end asm ---
   2E26 7D C9 75      [ 7] 3652 	tst	_sf+9	; sf
   2E29 10 26 02 9B   [ 6] 3653 	lbne	L233	;
                           3654 ;----- asm -----
                           3655 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3656 	; #ENR#[769]if (sf[i]>0)
                           3657 ;--- end asm ---
   2E2D 7D C9 76      [ 7] 3658 	tst	_sf+10	; sf
   2E30 10 26 02 C0   [ 6] 3659 	lbne	L234	;
   2E34                    3660 L188:
                           3661 ;----- asm -----
                           3662 ; 1021 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3663 	; #ENR#[779]_x_  = 100;
                           3664 ;--- end asm ---
   2E34 C6 64         [ 2] 3665 	ldb	#100	;,
   2E36 F7 C9 84      [ 5] 3666 	stb	__x_	;, _x_
                           3667 ;----- asm -----
                           3668 ; 1023 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3669 	; #ENR#[780]for (int i=0; i<19;i++)
                           3670 ;--- end asm ---
   2E39 10 8E 00 00   [ 4] 3671 	ldy	#0	; ivtmp.362,
   2E3D                    3672 L190:
                           3673 ;----- asm -----
                           3674 ; 1026 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3675 	; #ENR#[782]if (stackm[i] != -1)
                           3676 ;--- end asm ---
   2E3D E6 A9 C9 88   [ 8] 3677 	ldb	_stackM,y	;, stackM
   2E41 C1 FF         [ 2] 3678 	cmpb	#-1	;cmpqi:	;,
   2E43 10 27 00 2C   [ 6] 3679 	lbeq	L189	;
                           3680 ;----- asm -----
                           3681 ; 1029 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3682 	; #ENR#[784]dp_via_t1_cnt_lo  = 0x7f;
                           3683 ;--- end asm ---
   2E47 C6 7F         [ 2] 3684 	ldb	#127	;,
   2E49 D7 04         [ 4] 3685 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3686 ;----- asm -----
                           3687 ; 1031 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3688 	; #ENR#[785]_y_ =70-i*10;
                           3689 ;--- end asm ---
   2E4B 1F 20         [ 6] 3690 	tfr	y,d	; ivtmp.362,
   2E4D 86 F6         [ 2] 3691 	lda	#-10	;umulqihi3	;
   2E4F 3D            [11] 3692 	mul
                           3693 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   2E50 1F 01         [ 6] 3694 	tfr	d,x	;, tmp234
                           3695 ; ORG>	tfr	d,x	;, tmp234
                           3696 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp234, tmp235
   2E52 CB 46         [ 2] 3697 	addb	#70	; tmp235,
   2E54 F7 C9 83      [ 5] 3698 	stb	__y_	; tmp235, _y_
                           3699 ;----- asm -----
                           3700 ; 1033 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3701 	; #ENR#[786]moveto_start_yx
                           3702 ; 1034 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2E57 B6 C9 83      [ 5] 3703 	LDA      __y_	; _y_
   2E5A 97 01         [ 4] 3704 	STA      *0x01
   2E5C 86 CE         [ 2] 3705 	LDA      #0xCE
   2E5E 97 0C         [ 4] 3706 	STA      *0x0C
   2E60 4F            [ 2] 3707 	CLRA     
   2E61 97 00         [ 4] 3708 	STA      *0x00
   2E63 F6 C9 84      [ 5] 3709 	LDB      __x_	; _x_
   2E66 0C 00         [ 6] 3710 	INC      *0x00
   2E68 D7 01         [ 4] 3711 	STB      *0x01
   2E6A 97 05         [ 4] 3712 	STA      *0x05
                           3713 ; 1035 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3714 	; #ENR#[787]dp_via_t1_cnt_lo  = 0x09;
                           3715 ;--- end asm ---
   2E6C C6 09         [ 2] 3716 	ldb	#9	;,
   2E6E D7 04         [ 4] 3717 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3718 ;----- asm -----
                           3719 ; 1037 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3720 	; #ENR#[788]drawdot();
                           3721 ;--- end asm ---
   2E70 BD 4F EE      [ 8] 3722 	jsr	_drawDot
   2E73                    3723 L189:
   2E73 31 21         [ 5] 3724 	leay	1,y	; ivtmp.362,, ivtmp.362
   2E75 10 8C 00 13   [ 5] 3725 	cmpy	#19	;cmphi:	; ivtmp.362,
   2E79 10 26 FF C0   [ 6] 3726 	lbne	L190	;
   2E7D                    3727 L191:
   2E7D 32 E8 2F      [ 5] 3728 	leas	47,s	;,,
   2E80 35 E0         [ 8] 3729 	puls	y,u,pc	;
   2E82                    3730 L110:
   2E82 F6 C8 F5      [ 5] 3731 	ldb	_printTreasure	;, printTreasure
   2E85 C1 FF         [ 2] 3732 	cmpb	#-1	;cmpqi:	;,
   2E87 10 27 00 EF   [ 6] 3733 	lbeq	L112	;
                           3734 ;----- asm -----
                           3735 ; 940 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3736 	; #ENR#[729]dp_via_t1_cnt_lo  = 0x09;
                           3737 ;--- end asm ---
   2E8B C6 09         [ 2] 3738 	ldb	#9	;,
   2E8D D7 04         [ 4] 3739 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3740 ;----- asm -----
                           3741 ; 942 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3742 	; #ENR#[730]dp_via_cntl = 0xce;
                           3743 ;--- end asm ---
   2E8F C6 CE         [ 2] 3744 	ldb	#-50	;,
   2E91 D7 0C         [ 4] 3745 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3746 ;----- asm -----
                           3747 ; 944 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3748 	; #ENR#[731]drawtreasure(printtreasure);
                           3749 ;--- end asm ---
   2E93 F6 C8 F5      [ 5] 3750 	ldb	_printTreasure	;, printTreasure
   2E96 BD 51 3E      [ 8] 3751 	jsr	_drawTreasure
   2E99 16 FC 05      [ 5] 3752 	lbra	L111	;
   2E9C                    3753 L194:
   2E9C F7 C8 F4      [ 5] 3754 	stb	_printEnvironment	;, printEnvironment
   2E9F 16 FB 02      [ 5] 3755 	lbra	L92	;
   2EA2                    3756 L193:
   2EA2 BD 25 EA      [ 8] 3757 	jsr	_generateDisplayMap
   2EA5 16 FA ED      [ 5] 3758 	lbra	L91	;
   2EA8                    3759 L207:
                           3760 ;----- asm -----
                           3761 ; 917 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3762 	; #ENR#[714]dp_via_t1_cnt_lo  = 0x09;
                           3763 ;--- end asm ---
   2EA8 C6 09         [ 2] 3764 	ldb	#9	;,
   2EAA D7 04         [ 4] 3765 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3766 ;----- asm -----
                           3767 ; 919 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3768 	; #ENR#[715]dp_via_cntl = 0xce;
                           3769 ;--- end asm ---
   2EAC C6 CE         [ 2] 3770 	ldb	#-50	;,
   2EAE D7 0C         [ 4] 3771 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3772 ;----- asm -----
                           3773 ; 921 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3774 	; #ENR#[716]drawplayer();
                           3775 ;--- end asm ---
   2EB0 BD 50 37      [ 8] 3776 	jsr	_drawPlayer
   2EB3 16 FB C5      [ 5] 3777 	lbra	L108	;
   2EB6                    3778 L206:
                           3779 ;----- asm -----
                           3780 ; 82 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   2EB6 BD 14 8A      [ 8] 3781 	jsr sfx_doframe_intern_1; DO_SFX1
                           3782 ;--- end asm ---
   2EB9 16 FB B8      [ 5] 3783 	lbra	L107	;
   2EBC                    3784 L205:
   2EBC BD 00 98      [ 8] 3785 	jsr	_playSong
   2EBF 16 FB A9      [ 5] 3786 	lbra	L106	;
   2EC2                    3787 L136:
   2EC2 F6 C8 89      [ 5] 3788 	ldb	_screen+9	;,
   2EC5 54            [ 2] 3789 	lsrb	;
   2EC6 54            [ 2] 3790 	lsrb	;
   2EC7 E7 6F         [ 5] 3791 	stb	15,s	;, iftmp.70
   2EC9 C6 03         [ 2] 3792 	ldb	#3	;,
   2ECB E4 6F         [ 5] 3793 	andb	15,s	;, iftmp.70
   2ECD E7 6F         [ 5] 3794 	stb	15,s	;, iftmp.70
   2ECF C6 03         [ 2] 3795 	ldb	#3	;,
   2ED1 F4 C8 89      [ 5] 3796 	andb	_screen+9	;,
   2ED4 E7 E8 10      [ 5] 3797 	stb	16,s	;, iftmp.71
   2ED7 16 FC D2      [ 5] 3798 	lbra	L137	;
   2EDA                    3799 L128:
   2EDA E6 E8 22      [ 5] 3800 	ldb	34,s	;, temp.388
   2EDD C1 01         [ 2] 3801 	cmpb	#1	;cmpqi:	;,
   2EDF 10 23 00 EA   [ 6] 3802 	lbls	L235	;
   2EE3                    3803 L130:
   2EE3 8E C8 8D      [ 3] 3804 	ldx	#_screen+13	;,
   2EE6 AF E8 2D      [ 6] 3805 	stx	45,s	;, prephitmp.438
   2EE9 F6 C8 8D      [ 5] 3806 	ldb	_screen+13	;,
   2EEC E7 6E         [ 5] 3807 	stb	14,s	;, D.3674
   2EEE C6 03         [ 2] 3808 	ldb	#3	; tmp165,
   2EF0 E4 6E         [ 5] 3809 	andb	14,s	; tmp165, D.3674
   2EF2 C1 01         [ 2] 3810 	cmpb	#1	;cmpqi:	; tmp165,
   2EF4 10 23 01 A7   [ 6] 3811 	lbls	L236	;
   2EF8                    3812 L132:
   2EF8 6F 6D         [ 7] 3813 	clr	13,s	; iftmp.67
   2EFA 16 FC 5D      [ 5] 3814 	lbra	L129	;
   2EFD                    3815 L162:
   2EFD AE E8 20      [ 6] 3816 	ldx	32,s	;, prephitmp.384
   2F00 E6 84         [ 4] 3817 	ldb	,x	;,
   2F02 E7 E8 1C      [ 5] 3818 	stb	28,s	;, iftmp.86
   2F05 C6 03         [ 2] 3819 	ldb	#3	;,
   2F07 E4 E8 1C      [ 5] 3820 	andb	28,s	;, iftmp.86
   2F0A E7 E8 1C      [ 5] 3821 	stb	28,s	;, iftmp.86
   2F0D 16 FE 05      [ 5] 3822 	lbra	L163	;
   2F10                    3823 L150:
   2F10 E6 E8 27      [ 5] 3824 	ldb	39,s	;, iftmp.407
   2F13 C1 01         [ 2] 3825 	cmpb	#1	;cmpqi:	;,
   2F15 10 23 01 1E   [ 6] 3826 	lbls	L237	;
   2F19                    3827 L152:
   2F19 10 8E C8 93   [ 4] 3828 	ldy	#_screen+19	; prephitmp.352,
   2F1D F6 C8 93      [ 5] 3829 	ldb	_screen+19	;,
   2F20 E7 E8 18      [ 5] 3830 	stb	24,s	;, D.3727
   2F23 C6 03         [ 2] 3831 	ldb	#3	; tmp191,
   2F25 E4 E8 18      [ 5] 3832 	andb	24,s	; tmp191, D.3727
   2F28 C1 01         [ 2] 3833 	cmpb	#1	;cmpqi:	; tmp191,
   2F2A 10 23 01 63   [ 6] 3834 	lbls	L238	;
   2F2E                    3835 L154:
   2F2E 6F E8 17      [ 7] 3836 	clr	23,s	; iftmp.80
   2F31 16 FD 5D      [ 5] 3837 	lbra	L151	;
   2F34                    3838 L144:
   2F34 F6 C8 8F      [ 5] 3839 	ldb	_screen+15	;,
   2F37 54            [ 2] 3840 	lsrb	;
   2F38 54            [ 2] 3841 	lsrb	;
   2F39 E7 62         [ 5] 3842 	stb	2,s	;, iftmp.77
   2F3B C6 03         [ 2] 3843 	ldb	#3	;,
   2F3D E4 62         [ 5] 3844 	andb	2,s	;, iftmp.77
   2F3F E7 62         [ 5] 3845 	stb	2,s	;, iftmp.77
   2F41 16 FD 04      [ 5] 3846 	lbra	L145	;
   2F44                    3847 L140:
   2F44 C6 03         [ 2] 3848 	ldb	#3	;,
   2F46 E4 E8 26      [ 5] 3849 	andb	38,s	;, temp.401
   2F49 E7 E8 12      [ 5] 3850 	stb	18,s	;, iftmp.74
   2F4C 16 FC BC      [ 5] 3851 	lbra	L141	;
   2F4F                    3852 L217:
   2F4F 6F E8 14      [ 7] 3853 	clr	20,s	; iftmp.78
   2F52                    3854 L148:
   2F52 E6 E8 27      [ 5] 3855 	ldb	39,s	;, iftmp.407
   2F55 E7 E8 16      [ 5] 3856 	stb	22,s	;, iftmp.79
   2F58 16 FD 28      [ 5] 3857 	lbra	L149	;
   2F5B                    3858 L195:
                           3859 ;----- asm -----
                           3860 ; 805 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3861 	; #ENR#[635]elevatory = 0;
                           3862 ;--- end asm ---
   2F5B 7F C8 A3      [ 7] 3863 	clr	_elevatorY	; elevatorY
                           3864 ;----- asm -----
                           3865 ; 807 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3866 	; #ENR#[636]inelevator = 0;
                           3867 ;--- end asm ---
   2F5E 7F C8 A2      [ 7] 3868 	clr	_inElevator	; inElevator
   2F61 16 FA 78      [ 5] 3869 	lbra	L94	;
   2F64                    3870 L214:
   2F64 F6 C8 88      [ 5] 3871 	ldb	_screen+8	;,
   2F67 5A            [ 2] 3872 	decb	;
   2F68 E7 E4         [ 4] 3873 	stb	,s	;,
   2F6A C6 0A         [ 2] 3874 	ldb	#10	;,
   2F6C E7 E8 11      [ 5] 3875 	stb	17,s	;, iftmp.72
   2F6F E6 E4         [ 4] 3876 	ldb	,s	;,
   2F71 C1 08         [ 2] 3877 	cmpb	#8	;cmpqi:	;,
   2F73 10 23 FC 46   [ 6] 3878 	lbls	L139	;
   2F77 16 FC 40      [ 5] 3879 	lbra	L138	;
   2F7A                    3880 L112:
   2F7A 7D C8 F4      [ 7] 3881 	tst	_printEnvironment	; printEnvironment
   2F7D 10 27 FB 20   [ 6] 3882 	lbeq	L111	;
                           3883 ;----- asm -----
                           3884 ; 949 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3885 	; #ENR#[735]dp_via_t1_cnt_lo  = 0x09;
                           3886 ;--- end asm ---
   2F81 C6 09         [ 2] 3887 	ldb	#9	;,
   2F83 D7 04         [ 4] 3888 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3889 ;----- asm -----
                           3890 ; 951 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3891 	; #ENR#[736]dp_via_cntl = 0xce;
                           3892 ;--- end asm ---
   2F85 C6 CE         [ 2] 3893 	ldb	#-50	;,
   2F87 D7 0C         [ 4] 3894 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3895 ;----- asm -----
                           3896 ; 953 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3897 	; #ENR#[737]environmentdrawer[printenvironment-1]();
                           3898 ;--- end asm ---
   2F89 F6 C8 F4      [ 5] 3899 	ldb	_printEnvironment	; tmp140, printEnvironment
   2F8C 5A            [ 2] 3900 	decb	; tmp140
   2F8D 1D            [ 2] 3901 	sex		;extendqihi2: R:b -> R:d	; tmp140, tmp141
   2F8E 58            [ 2] 3902 	aslb	;
   2F8F 49            [ 2] 3903 	rola	;
   2F90 1F 01         [ 6] 3904 	tfr	d,x	; tmp141, tmp143
   2F92 AD 99 21 CC   [14] 3905 	jsr	[_environmentDrawer,x]
   2F96 16 FB 08      [ 5] 3906 	lbra	L111	;
   2F99                    3907 L215:
   2F99 F6 C8 8C      [ 5] 3908 	ldb	_screen+12	;,
   2F9C 5A            [ 2] 3909 	decb	;
   2F9D E7 E4         [ 4] 3910 	stb	,s	;,
   2F9F C6 0A         [ 2] 3911 	ldb	#10	;,
   2FA1 E7 E8 13      [ 5] 3912 	stb	19,s	;, iftmp.75
   2FA4 E6 E4         [ 4] 3913 	ldb	,s	;,
   2FA6 C1 08         [ 2] 3914 	cmpb	#8	;cmpqi:	;,
   2FA8 10 23 FC 6F   [ 6] 3915 	lbls	L143	;
   2FAC 16 FC 69      [ 5] 3916 	lbra	L142	;
   2FAF                    3917 L196:
                           3918 ;----- asm -----
                           3919 ; 833 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3920 	; #ENR#[653]reset0ref();
                           3921 ;--- end asm ---
   2FAF C6 CC         [ 2] 3922 	ldb	#-52	;,
   2FB1 D7 0C         [ 4] 3923 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3924 ;----- asm -----
                           3925 ; 835 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3926 	; #ENR#[654]dp_via_cntl = 0xce;
                           3927 ;--- end asm ---
   2FB3 CB 02         [ 2] 3928 	addb	#2	;,
   2FB5 D7 0C         [ 4] 3929 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           3930 ;----- asm -----
                           3931 ; 837 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3932 	; #ENR#[655]dp_via_t1_cnt_lo  = 0x09;
                           3933 ;--- end asm ---
   2FB7 C6 09         [ 2] 3934 	ldb	#9	;,
   2FB9 D7 04         [ 4] 3935 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           3936 ;----- asm -----
                           3937 ; 839 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3938 	; #ENR#[656]drawflame();
                           3939 ;--- end asm ---
   2FBB BD 51 1F      [ 8] 3940 	jsr	_drawFlame
                           3941 ;----- asm -----
                           3942 ; 841 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           3943 	; #ENR#[657]if (sfx_status_1==0) initsoundno = sound_dragon;
                           3944 ;--- end asm ---
   2FBE F6 CA CF      [ 5] 3945 	ldb	_sfx_status_1	; sfx_status_1.40, sfx_status_1
   2FC1 10 26 FA 5E   [ 6] 3946 	lbne	L95	;
   2FC5 C6 04         [ 2] 3947 	ldb	#4	;,
   2FC7 F7 C8 A6      [ 5] 3948 	stb	_initSoundNo	;, initSoundNo
   2FCA 16 FA 56      [ 5] 3949 	lbra	L95	;
   2FCD                    3950 L235:
   2FCD C6 0C         [ 2] 3951 	ldb	#12	; tmp164,
   2FCF E4 6B         [ 5] 3952 	andb	11,s	; tmp164, D.3660
   2FD1 8E C8 8D      [ 3] 3953 	ldx	#_screen+13	;,
   2FD4 AF E8 2D      [ 6] 3954 	stx	45,s	;, prephitmp.438
   2FD7 C1 04         [ 2] 3955 	cmpb	#4	;cmpqi:	; tmp164,
   2FD9 10 22 FF 06   [ 6] 3956 	lbhi	L130	;
   2FDD                    3957 L131:
   2FDD F6 C8 84      [ 5] 3958 	ldb	_screen+4	;,
   2FE0 5A            [ 2] 3959 	decb	;
   2FE1 E7 E4         [ 4] 3960 	stb	,s	;,
   2FE3 C6 0A         [ 2] 3961 	ldb	#10	;,
   2FE5 E7 6D         [ 5] 3962 	stb	13,s	;, iftmp.67
   2FE7 E6 E4         [ 4] 3963 	ldb	,s	;,
   2FE9 C1 08         [ 2] 3964 	cmpb	#8	;cmpqi:	;,
   2FEB 10 23 FB 6B   [ 6] 3965 	lbls	L129	;
   2FEF 8E C8 8D      [ 3] 3966 	ldx	#_screen+13	;,
   2FF2 AF E8 2D      [ 6] 3967 	stx	45,s	;, prephitmp.438
   2FF5 16 FF 00      [ 5] 3968 	lbra	L132	;
   2FF8                    3969 L209:
   2FF8 C6 0C         [ 2] 3970 	ldb	#12	;,
   2FFA E4 E8 1E      [ 5] 3971 	andb	30,s	;, prephitmp.350
   2FFD C1 04         [ 2] 3972 	cmpb	#4	;cmpqi:	;,
   2FFF 10 22 FA DB   [ 6] 3973 	lbhi	L119	;
   3003                    3974 L120:
   3003 F6 C8 80      [ 5] 3975 	ldb	_screen	;,
   3006 5A            [ 2] 3976 	decb	;
   3007 E7 E4         [ 4] 3977 	stb	,s	;,
   3009 C6 0A         [ 2] 3978 	ldb	#10	;,
   300B E7 67         [ 5] 3979 	stb	7,s	;, iftmp.60
   300D E6 E4         [ 4] 3980 	ldb	,s	;,
   300F C1 08         [ 2] 3981 	cmpb	#8	;cmpqi:	;,
   3011 10 23 FA D3   [ 6] 3982 	lbls	L121	;
   3015 16 FA CE      [ 5] 3983 	lbra	L118	;
   3018                    3984 L219:
   3018 E6 E8 2A      [ 5] 3985 	ldb	42,s	;, temp.419
   301B C1 04         [ 2] 3986 	cmpb	#4	;cmpqi:	;,
   301D 10 22 FD 0C   [ 6] 3987 	lbhi	L165	;
   3021                    3988 L166:
   3021 F6 C8 94      [ 5] 3989 	ldb	_screen+20	;,
   3024 5A            [ 2] 3990 	decb	;
   3025 E7 E4         [ 4] 3991 	stb	,s	;,
   3027 C6 0A         [ 2] 3992 	ldb	#10	;,
   3029 E7 E8 1D      [ 5] 3993 	stb	29,s	;, iftmp.87
   302C E6 E4         [ 4] 3994 	ldb	,s	;,
   302E C1 08         [ 2] 3995 	cmpb	#8	;cmpqi:	;,
   3030 10 23 FD 05   [ 6] 3996 	lbls	L167	;
   3034 16 FC FF      [ 5] 3997 	lbra	L164	;
   3037                    3998 L237:
   3037 10 8E C8 93   [ 4] 3999 	ldy	#_screen+19	; prephitmp.352,
   303B E6 62         [ 5] 4000 	ldb	2,s	;, temp.409
   303D C1 04         [ 2] 4001 	cmpb	#4	;cmpqi:	;,
   303F 10 22 FE D6   [ 6] 4002 	lbhi	L152	;
   3043                    4003 L153:
   3043 F6 C8 90      [ 5] 4004 	ldb	_screen+16	;,
   3046 5A            [ 2] 4005 	decb	;
   3047 E7 E4         [ 4] 4006 	stb	,s	;,
   3049 C6 0A         [ 2] 4007 	ldb	#10	;,
   304B E7 E8 17      [ 5] 4008 	stb	23,s	;, iftmp.80
   304E E6 E4         [ 4] 4009 	ldb	,s	;,
   3050 C1 08         [ 2] 4010 	cmpb	#8	;cmpqi:	;,
   3052 10 23 FC 3B   [ 6] 4011 	lbls	L151	;
   3056 10 8E C8 93   [ 4] 4012 	ldy	#_screen+19	; prephitmp.352,
   305A 16 FE D1      [ 5] 4013 	lbra	L154	;
   305D                    4014 L218:
   305D F6 C8 92      [ 5] 4015 	ldb	_screen+18	;,
   3060 5A            [ 2] 4016 	decb	;
   3061 E7 E4         [ 4] 4017 	stb	,s	;,
   3063 C6 0A         [ 2] 4018 	ldb	#10	;,
   3065 E7 E8 1A      [ 5] 4019 	stb	26,s	;, iftmp.83
   3068 E6 E4         [ 4] 4020 	ldb	,s	;,
   306A C1 08         [ 2] 4021 	cmpb	#8	;cmpqi:	;,
   306C 10 23 FC 5E   [ 6] 4022 	lbls	L159	;
   3070 16 FC 58      [ 5] 4023 	lbra	L158	;
   3073                    4024 L211:
   3073 F6 C8 82      [ 5] 4025 	ldb	_screen+2	;,
   3076 5A            [ 2] 4026 	decb	;
   3077 E7 E4         [ 4] 4027 	stb	,s	;,
   3079 C6 0A         [ 2] 4028 	ldb	#10	;,
   307B E7 6A         [ 5] 4029 	stb	10,s	;, iftmp.64
   307D E6 E4         [ 4] 4030 	ldb	,s	;,
   307F C1 08         [ 2] 4031 	cmpb	#8	;cmpqi:	;,
   3081 10 23 FA 9B   [ 6] 4032 	lbls	L125	;
   3085 16 FA 96      [ 5] 4033 	lbra	L124	;
   3088                    4034 L201:
                           4035 ;----- asm -----
                           4036 ; 873 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4037 	; #ENR#[681]sfx_pointer_1 = (long unsigned int) (&box_data);
                           4038 ;--- end asm ---
   3088 8E 1F 5A      [ 3] 4039 	ldx	#_box_data	;,
   308B BF CA D0      [ 6] 4040 	stx	_sfx_pointer_1	;, sfx_pointer_1
   308E 16 F9 CB      [ 5] 4041 	lbra	L100	;
   3091                    4042 L238:
   3091 C6 0C         [ 2] 4043 	ldb	#12	;,
   3093 E4 E8 18      [ 5] 4044 	andb	24,s	;, D.3727
   3096 C1 04         [ 2] 4045 	cmpb	#4	;cmpqi:	;,
   3098 10 22 FE 92   [ 6] 4046 	lbhi	L154	;
   309C 16 FF A4      [ 5] 4047 	lbra	L153	;
   309F                    4048 L236:
   309F C6 0C         [ 2] 4049 	ldb	#12	;,
   30A1 E4 6E         [ 5] 4050 	andb	14,s	;, D.3674
   30A3 C1 04         [ 2] 4051 	cmpb	#4	;cmpqi:	;,
   30A5 10 22 FE 4F   [ 6] 4052 	lbhi	L132	;
   30A9 16 FF 31      [ 5] 4053 	lbra	L131	;
   30AC                    4054 L210:
   30AC F6 C8 83      [ 5] 4055 	ldb	_screen+3	; tmp155,
   30AF C4 0C         [ 2] 4056 	andb	#12	; tmp155,
   30B1 C1 04         [ 2] 4057 	cmpb	#4	;cmpqi:	; tmp155,
   30B3 10 22 FA 2F   [ 6] 4058 	lbhi	L118	;
   30B7 16 FF 49      [ 5] 4059 	lbra	L120	;
   30BA                    4060 L220:
   30BA C6 0C         [ 2] 4061 	ldb	#12	;,
   30BC E4 E8 2B      [ 5] 4062 	andb	43,s	;, temp.422
   30BF C1 04         [ 2] 4063 	cmpb	#4	;cmpqi:	;,
   30C1 10 22 FC 71   [ 6] 4064 	lbhi	L164	;
   30C5 16 FF 59      [ 5] 4065 	lbra	L166	;
   30C8                    4066 L233:
                           4067 ;----- asm -----
                           4068 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4069 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4070 ;--- end asm ---
   30C8 C6 7F         [ 2] 4071 	ldb	#127	;,
   30CA D7 04         [ 4] 4072 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4073 ;----- asm -----
                           4074 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4075 	; #ENR#[772]_x_ =-100+(i*20);
                           4076 ;--- end asm ---
   30CC C6 50         [ 2] 4077 	ldb	#80	;,
   30CE F7 C9 84      [ 5] 4078 	stb	__x_	;, _x_
                           4079 ;----- asm -----
                           4080 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4081 	; #ENR#[773]moveto_start_yx
                           4082 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   30D1 B6 C9 83      [ 5] 4083 	LDA      __y_	; _y_
   30D4 97 01         [ 4] 4084 	STA      *0x01
   30D6 86 CE         [ 2] 4085 	LDA      #0xCE
   30D8 97 0C         [ 4] 4086 	STA      *0x0C
   30DA 4F            [ 2] 4087 	CLRA     
   30DB 97 00         [ 4] 4088 	STA      *0x00
   30DD F6 C9 84      [ 5] 4089 	LDB      __x_	; _x_
   30E0 0C 00         [ 6] 4090 	INC      *0x00
   30E2 D7 01         [ 4] 4091 	STB      *0x01
   30E4 97 05         [ 4] 4092 	STA      *0x05
                           4093 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4094 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4095 ;--- end asm ---
   30E6 C6 09         [ 2] 4096 	ldb	#9	;,
   30E8 D7 04         [ 4] 4097 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4098 ;----- asm -----
                           4099 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4100 	; #ENR#[775]drawspell(i);
                           4101 ;--- end asm ---
   30EA BD 4F E4      [ 8] 4102 	jsr	_drawSpell
                           4103 ;----- asm -----
                           4104 ; 1005 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4105 	; #ENR#[769]if (sf[i]>0)
                           4106 ;--- end asm ---
   30ED 7D C9 76      [ 7] 4107 	tst	_sf+10	; sf
   30F0 10 27 FD 40   [ 6] 4108 	lbeq	L188	;
   30F4                    4109 L234:
                           4110 ;----- asm -----
                           4111 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4112 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4113 ;--- end asm ---
   30F4 C6 7F         [ 2] 4114 	ldb	#127	;,
   30F6 D7 04         [ 4] 4115 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4116 ;----- asm -----
                           4117 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4118 	; #ENR#[772]_x_ =-100+(i*20);
                           4119 ;--- end asm ---
   30F8 C6 64         [ 2] 4120 	ldb	#100	;,
   30FA F7 C9 84      [ 5] 4121 	stb	__x_	;, _x_
                           4122 ;----- asm -----
                           4123 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4124 	; #ENR#[773]moveto_start_yx
                           4125 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   30FD B6 C9 83      [ 5] 4126 	LDA      __y_	; _y_
   3100 97 01         [ 4] 4127 	STA      *0x01
   3102 86 CE         [ 2] 4128 	LDA      #0xCE
   3104 97 0C         [ 4] 4129 	STA      *0x0C
   3106 4F            [ 2] 4130 	CLRA     
   3107 97 00         [ 4] 4131 	STA      *0x00
   3109 F6 C9 84      [ 5] 4132 	LDB      __x_	; _x_
   310C 0C 00         [ 6] 4133 	INC      *0x00
   310E D7 01         [ 4] 4134 	STB      *0x01
   3110 97 05         [ 4] 4135 	STA      *0x05
                           4136 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4137 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4138 ;--- end asm ---
   3112 C6 09         [ 2] 4139 	ldb	#9	;,
   3114 D7 04         [ 4] 4140 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4141 ;----- asm -----
                           4142 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4143 	; #ENR#[775]drawspell(i);
                           4144 ;--- end asm ---
   3116 C6 0A         [ 2] 4145 	ldb	#10	;,
   3118 BD 4F E4      [ 8] 4146 	jsr	_drawSpell
   311B 16 FD 16      [ 5] 4147 	lbra	L188	;
   311E                    4148 L232:
                           4149 ;----- asm -----
                           4150 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4151 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4152 ;--- end asm ---
   311E C6 7F         [ 2] 4153 	ldb	#127	;,
   3120 D7 04         [ 4] 4154 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4155 ;----- asm -----
                           4156 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4157 	; #ENR#[772]_x_ =-100+(i*20);
                           4158 ;--- end asm ---
   3122 C6 3C         [ 2] 4159 	ldb	#60	;,
   3124 F7 C9 84      [ 5] 4160 	stb	__x_	;, _x_
                           4161 ;----- asm -----
                           4162 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4163 	; #ENR#[773]moveto_start_yx
                           4164 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3127 B6 C9 83      [ 5] 4165 	LDA      __y_	; _y_
   312A 97 01         [ 4] 4166 	STA      *0x01
   312C 86 CE         [ 2] 4167 	LDA      #0xCE
   312E 97 0C         [ 4] 4168 	STA      *0x0C
   3130 4F            [ 2] 4169 	CLRA     
   3131 97 00         [ 4] 4170 	STA      *0x00
   3133 F6 C9 84      [ 5] 4171 	LDB      __x_	; _x_
   3136 0C 00         [ 6] 4172 	INC      *0x00
   3138 D7 01         [ 4] 4173 	STB      *0x01
   313A 97 05         [ 4] 4174 	STA      *0x05
                           4175 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4176 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4177 ;--- end asm ---
   313C C6 09         [ 2] 4178 	ldb	#9	;,
   313E D7 04         [ 4] 4179 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4180 ;----- asm -----
                           4181 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4182 	; #ENR#[775]drawspell(i);
                           4183 ;--- end asm ---
   3140 C6 08         [ 2] 4184 	ldb	#8	;,
   3142 BD 4F E4      [ 8] 4185 	jsr	_drawSpell
   3145 16 FC DE      [ 5] 4186 	lbra	L186	;
   3148                    4187 L231:
                           4188 ;----- asm -----
                           4189 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4190 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4191 ;--- end asm ---
   3148 C6 7F         [ 2] 4192 	ldb	#127	;,
   314A D7 04         [ 4] 4193 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4194 ;----- asm -----
                           4195 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4196 	; #ENR#[772]_x_ =-100+(i*20);
                           4197 ;--- end asm ---
   314C C6 28         [ 2] 4198 	ldb	#40	;,
   314E F7 C9 84      [ 5] 4199 	stb	__x_	;, _x_
                           4200 ;----- asm -----
                           4201 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4202 	; #ENR#[773]moveto_start_yx
                           4203 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3151 B6 C9 83      [ 5] 4204 	LDA      __y_	; _y_
   3154 97 01         [ 4] 4205 	STA      *0x01
   3156 86 CE         [ 2] 4206 	LDA      #0xCE
   3158 97 0C         [ 4] 4207 	STA      *0x0C
   315A 4F            [ 2] 4208 	CLRA     
   315B 97 00         [ 4] 4209 	STA      *0x00
   315D F6 C9 84      [ 5] 4210 	LDB      __x_	; _x_
   3160 0C 00         [ 6] 4211 	INC      *0x00
   3162 D7 01         [ 4] 4212 	STB      *0x01
   3164 97 05         [ 4] 4213 	STA      *0x05
                           4214 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4215 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4216 ;--- end asm ---
   3166 C6 09         [ 2] 4217 	ldb	#9	;,
   3168 D7 04         [ 4] 4218 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4219 ;----- asm -----
                           4220 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4221 	; #ENR#[775]drawspell(i);
                           4222 ;--- end asm ---
   316A C6 07         [ 2] 4223 	ldb	#7	;,
   316C BD 4F E4      [ 8] 4224 	jsr	_drawSpell
   316F 16 FC AD      [ 5] 4225 	lbra	L185	;
   3172                    4226 L230:
                           4227 ;----- asm -----
                           4228 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4229 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4230 ;--- end asm ---
   3172 C6 7F         [ 2] 4231 	ldb	#127	;,
   3174 D7 04         [ 4] 4232 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4233 ;----- asm -----
                           4234 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4235 	; #ENR#[772]_x_ =-100+(i*20);
                           4236 ;--- end asm ---
   3176 C6 14         [ 2] 4237 	ldb	#20	;,
   3178 F7 C9 84      [ 5] 4238 	stb	__x_	;, _x_
                           4239 ;----- asm -----
                           4240 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4241 	; #ENR#[773]moveto_start_yx
                           4242 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   317B B6 C9 83      [ 5] 4243 	LDA      __y_	; _y_
   317E 97 01         [ 4] 4244 	STA      *0x01
   3180 86 CE         [ 2] 4245 	LDA      #0xCE
   3182 97 0C         [ 4] 4246 	STA      *0x0C
   3184 4F            [ 2] 4247 	CLRA     
   3185 97 00         [ 4] 4248 	STA      *0x00
   3187 F6 C9 84      [ 5] 4249 	LDB      __x_	; _x_
   318A 0C 00         [ 6] 4250 	INC      *0x00
   318C D7 01         [ 4] 4251 	STB      *0x01
   318E 97 05         [ 4] 4252 	STA      *0x05
                           4253 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4254 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4255 ;--- end asm ---
   3190 C6 09         [ 2] 4256 	ldb	#9	;,
   3192 D7 04         [ 4] 4257 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4258 ;----- asm -----
                           4259 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4260 	; #ENR#[775]drawspell(i);
                           4261 ;--- end asm ---
   3194 C6 06         [ 2] 4262 	ldb	#6	;,
   3196 BD 4F E4      [ 8] 4263 	jsr	_drawSpell
   3199 16 FC 7C      [ 5] 4264 	lbra	L184	;
   319C                    4265 L229:
                           4266 ;----- asm -----
                           4267 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4268 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4269 ;--- end asm ---
   319C C6 7F         [ 2] 4270 	ldb	#127	;,
   319E D7 04         [ 4] 4271 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4272 ;----- asm -----
                           4273 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4274 	; #ENR#[772]_x_ =-100+(i*20);
                           4275 ;--- end asm ---
   31A0 7F C9 84      [ 7] 4276 	clr	__x_	; _x_
                           4277 ;----- asm -----
                           4278 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4279 	; #ENR#[773]moveto_start_yx
                           4280 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   31A3 B6 C9 83      [ 5] 4281 	LDA      __y_	; _y_
   31A6 97 01         [ 4] 4282 	STA      *0x01
   31A8 86 CE         [ 2] 4283 	LDA      #0xCE
   31AA 97 0C         [ 4] 4284 	STA      *0x0C
   31AC 4F            [ 2] 4285 	CLRA     
   31AD 97 00         [ 4] 4286 	STA      *0x00
   31AF F6 C9 84      [ 5] 4287 	LDB      __x_	; _x_
   31B2 0C 00         [ 6] 4288 	INC      *0x00
   31B4 D7 01         [ 4] 4289 	STB      *0x01
   31B6 97 05         [ 4] 4290 	STA      *0x05
                           4291 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4292 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4293 ;--- end asm ---
   31B8 C6 09         [ 2] 4294 	ldb	#9	;,
   31BA D7 04         [ 4] 4295 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4296 ;----- asm -----
                           4297 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4298 	; #ENR#[775]drawspell(i);
                           4299 ;--- end asm ---
   31BC C6 05         [ 2] 4300 	ldb	#5	;,
   31BE BD 4F E4      [ 8] 4301 	jsr	_drawSpell
   31C1 16 FC 4D      [ 5] 4302 	lbra	L183	;
   31C4                    4303 L228:
                           4304 ;----- asm -----
                           4305 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4306 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4307 ;--- end asm ---
   31C4 C6 7F         [ 2] 4308 	ldb	#127	;,
   31C6 D7 04         [ 4] 4309 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4310 ;----- asm -----
                           4311 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4312 	; #ENR#[772]_x_ =-100+(i*20);
                           4313 ;--- end asm ---
   31C8 C6 EC         [ 2] 4314 	ldb	#-20	;,
   31CA F7 C9 84      [ 5] 4315 	stb	__x_	;, _x_
                           4316 ;----- asm -----
                           4317 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4318 	; #ENR#[773]moveto_start_yx
                           4319 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   31CD B6 C9 83      [ 5] 4320 	LDA      __y_	; _y_
   31D0 97 01         [ 4] 4321 	STA      *0x01
   31D2 86 CE         [ 2] 4322 	LDA      #0xCE
   31D4 97 0C         [ 4] 4323 	STA      *0x0C
   31D6 4F            [ 2] 4324 	CLRA     
   31D7 97 00         [ 4] 4325 	STA      *0x00
   31D9 F6 C9 84      [ 5] 4326 	LDB      __x_	; _x_
   31DC 0C 00         [ 6] 4327 	INC      *0x00
   31DE D7 01         [ 4] 4328 	STB      *0x01
   31E0 97 05         [ 4] 4329 	STA      *0x05
                           4330 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4331 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4332 ;--- end asm ---
   31E2 C6 09         [ 2] 4333 	ldb	#9	;,
   31E4 D7 04         [ 4] 4334 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4335 ;----- asm -----
                           4336 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4337 	; #ENR#[775]drawspell(i);
                           4338 ;--- end asm ---
   31E6 C6 04         [ 2] 4339 	ldb	#4	;,
   31E8 BD 4F E4      [ 8] 4340 	jsr	_drawSpell
   31EB 16 FC 1C      [ 5] 4341 	lbra	L182	;
   31EE                    4342 L227:
                           4343 ;----- asm -----
                           4344 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4345 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4346 ;--- end asm ---
   31EE C6 7F         [ 2] 4347 	ldb	#127	;,
   31F0 D7 04         [ 4] 4348 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4349 ;----- asm -----
                           4350 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4351 	; #ENR#[772]_x_ =-100+(i*20);
                           4352 ;--- end asm ---
   31F2 C6 D8         [ 2] 4353 	ldb	#-40	;,
   31F4 F7 C9 84      [ 5] 4354 	stb	__x_	;, _x_
                           4355 ;----- asm -----
                           4356 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4357 	; #ENR#[773]moveto_start_yx
                           4358 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   31F7 B6 C9 83      [ 5] 4359 	LDA      __y_	; _y_
   31FA 97 01         [ 4] 4360 	STA      *0x01
   31FC 86 CE         [ 2] 4361 	LDA      #0xCE
   31FE 97 0C         [ 4] 4362 	STA      *0x0C
   3200 4F            [ 2] 4363 	CLRA     
   3201 97 00         [ 4] 4364 	STA      *0x00
   3203 F6 C9 84      [ 5] 4365 	LDB      __x_	; _x_
   3206 0C 00         [ 6] 4366 	INC      *0x00
   3208 D7 01         [ 4] 4367 	STB      *0x01
   320A 97 05         [ 4] 4368 	STA      *0x05
                           4369 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4370 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4371 ;--- end asm ---
   320C C6 09         [ 2] 4372 	ldb	#9	;,
   320E D7 04         [ 4] 4373 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4374 ;----- asm -----
                           4375 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4376 	; #ENR#[775]drawspell(i);
                           4377 ;--- end asm ---
   3210 C6 03         [ 2] 4378 	ldb	#3	;,
   3212 BD 4F E4      [ 8] 4379 	jsr	_drawSpell
   3215 16 FB EB      [ 5] 4380 	lbra	L181	;
   3218                    4381 L226:
                           4382 ;----- asm -----
                           4383 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4384 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4385 ;--- end asm ---
   3218 C6 7F         [ 2] 4386 	ldb	#127	;,
   321A D7 04         [ 4] 4387 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4388 ;----- asm -----
                           4389 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4390 	; #ENR#[772]_x_ =-100+(i*20);
                           4391 ;--- end asm ---
   321C C6 C4         [ 2] 4392 	ldb	#-60	;,
   321E F7 C9 84      [ 5] 4393 	stb	__x_	;, _x_
                           4394 ;----- asm -----
                           4395 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4396 	; #ENR#[773]moveto_start_yx
                           4397 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3221 B6 C9 83      [ 5] 4398 	LDA      __y_	; _y_
   3224 97 01         [ 4] 4399 	STA      *0x01
   3226 86 CE         [ 2] 4400 	LDA      #0xCE
   3228 97 0C         [ 4] 4401 	STA      *0x0C
   322A 4F            [ 2] 4402 	CLRA     
   322B 97 00         [ 4] 4403 	STA      *0x00
   322D F6 C9 84      [ 5] 4404 	LDB      __x_	; _x_
   3230 0C 00         [ 6] 4405 	INC      *0x00
   3232 D7 01         [ 4] 4406 	STB      *0x01
   3234 97 05         [ 4] 4407 	STA      *0x05
                           4408 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4409 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4410 ;--- end asm ---
   3236 C6 09         [ 2] 4411 	ldb	#9	;,
   3238 D7 04         [ 4] 4412 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4413 ;----- asm -----
                           4414 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4415 	; #ENR#[775]drawspell(i);
                           4416 ;--- end asm ---
   323A C6 02         [ 2] 4417 	ldb	#2	;,
   323C BD 4F E4      [ 8] 4418 	jsr	_drawSpell
   323F 16 FB BA      [ 5] 4419 	lbra	L180	;
   3242                    4420 L225:
                           4421 ;----- asm -----
                           4422 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4423 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4424 ;--- end asm ---
   3242 C6 7F         [ 2] 4425 	ldb	#127	;,
   3244 D7 04         [ 4] 4426 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4427 ;----- asm -----
                           4428 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4429 	; #ENR#[772]_x_ =-100+(i*20);
                           4430 ;--- end asm ---
   3246 CB 31         [ 2] 4431 	addb	#49	;,
   3248 F7 C9 84      [ 5] 4432 	stb	__x_	;, _x_
                           4433 ;----- asm -----
                           4434 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4435 	; #ENR#[773]moveto_start_yx
                           4436 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   324B B6 C9 83      [ 5] 4437 	LDA      __y_	; _y_
   324E 97 01         [ 4] 4438 	STA      *0x01
   3250 86 CE         [ 2] 4439 	LDA      #0xCE
   3252 97 0C         [ 4] 4440 	STA      *0x0C
   3254 4F            [ 2] 4441 	CLRA     
   3255 97 00         [ 4] 4442 	STA      *0x00
   3257 F6 C9 84      [ 5] 4443 	LDB      __x_	; _x_
   325A 0C 00         [ 6] 4444 	INC      *0x00
   325C D7 01         [ 4] 4445 	STB      *0x01
   325E 97 05         [ 4] 4446 	STA      *0x05
                           4447 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4448 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4449 ;--- end asm ---
   3260 C6 09         [ 2] 4450 	ldb	#9	;,
   3262 D7 04         [ 4] 4451 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4452 ;----- asm -----
                           4453 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4454 	; #ENR#[775]drawspell(i);
                           4455 ;--- end asm ---
   3264 C6 01         [ 2] 4456 	ldb	#1	;,
   3266 BD 4F E4      [ 8] 4457 	jsr	_drawSpell
   3269 16 FB 89      [ 5] 4458 	lbra	L179	;
   326C                    4459 L224:
                           4460 ;----- asm -----
                           4461 ; 1008 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4462 	; #ENR#[771]dp_via_t1_cnt_lo  = 0x7f;
                           4463 ;--- end asm ---
   326C C6 7F         [ 2] 4464 	ldb	#127	;,
   326E D7 04         [ 4] 4465 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4466 ;----- asm -----
                           4467 ; 1010 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4468 	; #ENR#[772]_x_ =-100+(i*20);
                           4469 ;--- end asm ---
   3270 CB 1D         [ 2] 4470 	addb	#29	;,
   3272 F7 C9 84      [ 5] 4471 	stb	__x_	;, _x_
                           4472 ;----- asm -----
                           4473 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4474 	; #ENR#[773]moveto_start_yx
                           4475 ; 1013 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3275 B6 C9 83      [ 5] 4476 	LDA      __y_	; _y_
   3278 97 01         [ 4] 4477 	STA      *0x01
   327A 86 CE         [ 2] 4478 	LDA      #0xCE
   327C 97 0C         [ 4] 4479 	STA      *0x0C
   327E 4F            [ 2] 4480 	CLRA     
   327F 97 00         [ 4] 4481 	STA      *0x00
   3281 F6 C9 84      [ 5] 4482 	LDB      __x_	; _x_
   3284 0C 00         [ 6] 4483 	INC      *0x00
   3286 D7 01         [ 4] 4484 	STB      *0x01
   3288 97 05         [ 4] 4485 	STA      *0x05
                           4486 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4487 	; #ENR#[774]dp_via_t1_cnt_lo  = 0x09;
                           4488 ;--- end asm ---
   328A C6 09         [ 2] 4489 	ldb	#9	;,
   328C D7 04         [ 4] 4490 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4491 ;----- asm -----
                           4492 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4493 	; #ENR#[775]drawspell(i);
                           4494 ;--- end asm ---
   328E 5F            [ 2] 4495 	clrb	;
   328F BD 4F E4      [ 8] 4496 	jsr	_drawSpell
   3292 16 FB 59      [ 5] 4497 	lbra	L178	;
   3295                    4498 L208:
   3295 F6 C8 83      [ 5] 4499 	ldb	_screen+3	; tmp150,
   3298 C4 0C         [ 2] 4500 	andb	#12	; tmp150,
   329A C1 04         [ 2] 4501 	cmpb	#4	;cmpqi:	; tmp150,
   329C 10 22 F8 2F   [ 6] 4502 	lbhi	L116	;
   32A0 F6 C8 81      [ 5] 4503 	ldb	_screen+1	;,
   32A3 E7 65         [ 5] 4504 	stb	5,s	;, iftmp.59
   32A5 C6 03         [ 2] 4505 	ldb	#3	;,
   32A7 E4 65         [ 5] 4506 	andb	5,s	;, iftmp.59
   32A9 E7 65         [ 5] 4507 	stb	5,s	;, iftmp.59
   32AB 16 F8 23      [ 5] 4508 	lbra	L117	;
   32AE                    4509 L160:
   32AE 8E C8 95      [ 3] 4510 	ldx	#_screen+21	;,
   32B1 AF E8 20      [ 6] 4511 	stx	32,s	;, prephitmp.384
   32B4 F6 C8 95      [ 5] 4512 	ldb	_screen+21	;,
   32B7 54            [ 2] 4513 	lsrb	;
   32B8 54            [ 2] 4514 	lsrb	;
   32B9 E7 E8 1B      [ 5] 4515 	stb	27,s	;, iftmp.85
   32BC C6 03         [ 2] 4516 	ldb	#3	;,
   32BE E4 E8 1B      [ 5] 4517 	andb	27,s	;, iftmp.85
   32C1 E7 E8 1B      [ 5] 4518 	stb	27,s	;, iftmp.85
   32C4 16 FA 35      [ 5] 4519 	lbra	L161	;
   32C7                    4520 L176:
   32C7 C6 3F         [ 2] 4521 	ldb	#63	;,
   32C9 BD 7C 95      [ 8] 4522 	jsr	__Intensity_a
   32CC 16 FB 18      [ 5] 4523 	lbra	L177	;
   32CF                    4524 L223:
   32CF AE E8 20      [ 6] 4525 	ldx	32,s	;, prephitmp.384
   32D2 E6 84         [ 4] 4526 	ldb	,x	; tmp219,
   32D4 C4 0C         [ 2] 4527 	andb	#12	; tmp219,
   32D6 C1 04         [ 2] 4528 	cmpb	#4	;cmpqi:	; tmp219,
   32D8 10 22 FA E3   [ 6] 4529 	lbhi	L174	;
   32DC F6 C8 9D      [ 5] 4530 	ldb	_screen+29	;,
   32DF E7 62         [ 5] 4531 	stb	2,s	;, iftmp.92
   32E1 C6 03         [ 2] 4532 	ldb	#3	;,
   32E3 E4 62         [ 5] 4533 	andb	2,s	;, iftmp.92
   32E5 E7 62         [ 5] 4534 	stb	2,s	;, iftmp.92
   32E7 16 FA D7      [ 5] 4535 	lbra	L175	;
   32EA                    4536 L212:
   32EA C6 0C         [ 2] 4537 	ldb	#12	; tmp162,
   32EC E4 6B         [ 5] 4538 	andb	11,s	; tmp162, D.3660
   32EE C1 04         [ 2] 4539 	cmpb	#4	;cmpqi:	; tmp162,
   32F0 10 22 F8 55   [ 6] 4540 	lbhi	L126	;
   32F4 C6 03         [ 2] 4541 	ldb	#3	;,
   32F6 E4 6B         [ 5] 4542 	andb	11,s	;, D.3660
   32F8 E7 6C         [ 5] 4543 	stb	12,s	;, iftmp.66
   32FA 16 F8 4E      [ 5] 4544 	lbra	L127	;
   32FD                    4545 L113:
   32FD 10 8E C8 8B   [ 4] 4546 	ldy	#_screen+11	; prephitmp.348,
   3301 F6 C8 8B      [ 5] 4547 	ldb	_screen+11	;,
   3304 E7 E8 1E      [ 5] 4548 	stb	30,s	;, prephitmp.350
   3307 C6 0C         [ 2] 4549 	ldb	#12	; tmp147,
   3309 E4 E8 1E      [ 5] 4550 	andb	30,s	; tmp147, prephitmp.350
   330C C1 04         [ 2] 4551 	cmpb	#4	;cmpqi:	; tmp147,
   330E 10 23 00 C8   [ 6] 4552 	lbls	L115	;
   3312 6F 63         [ 7] 4553 	clr	3,s	; iftmp.58
   3314 16 F7 AB      [ 5] 4554 	lbra	L114	;
   3317                    4555 L216:
   3317 E6 A4         [ 4] 4556 	ldb	,y	;,* prephitmp.348
   3319 E7 62         [ 5] 4557 	stb	2,s	;, temp.409
   331B C6 0C         [ 2] 4558 	ldb	#12	;,
   331D E4 62         [ 5] 4559 	andb	2,s	;, temp.409
   331F E7 62         [ 5] 4560 	stb	2,s	;, temp.409
   3321 C1 04         [ 2] 4561 	cmpb	#4	;cmpqi:	;,
   3323 10 22 F9 56   [ 6] 4562 	lbhi	L147	;
   3327 E6 E8 15      [ 5] 4563 	ldb	21,s	;, D.3716
   332A 54            [ 2] 4564 	lsrb	;
   332B 54            [ 2] 4565 	lsrb	;
   332C E7 E8 14      [ 5] 4566 	stb	20,s	;, iftmp.78
   332F C6 03         [ 2] 4567 	ldb	#3	;,
   3331 E4 E8 14      [ 5] 4568 	andb	20,s	;, iftmp.78
   3334 E7 E8 14      [ 5] 4569 	stb	20,s	;, iftmp.78
   3337 16 FC 18      [ 5] 4570 	lbra	L148	;
   333A                    4571 L156:
   333A E6 62         [ 5] 4572 	ldb	2,s	;, temp.413
   333C 54            [ 2] 4573 	lsrb	;
   333D 54            [ 2] 4574 	lsrb	;
   333E E7 E8 19      [ 5] 4575 	stb	25,s	;, iftmp.82
   3341 C6 03         [ 2] 4576 	ldb	#3	;,
   3343 E4 E8 19      [ 5] 4577 	andb	25,s	;, iftmp.82
   3346 E7 E8 19      [ 5] 4578 	stb	25,s	;, iftmp.82
   3349 16 F9 71      [ 5] 4579 	lbra	L157	;
   334C                    4580 L213:
   334C C6 0C         [ 2] 4581 	ldb	#12	;,
   334E E4 E8 23      [ 5] 4582 	andb	35,s	;, temp.392
   3351 C1 04         [ 2] 4583 	cmpb	#4	;cmpqi:	;,
   3353 10 22 F8 2F   [ 6] 4584 	lbhi	L134	;
   3357 F6 C8 87      [ 5] 4585 	ldb	_screen+7	;,
   335A 54            [ 2] 4586 	lsrb	;
   335B 54            [ 2] 4587 	lsrb	;
   335C E7 62         [ 5] 4588 	stb	2,s	;, iftmp.69
   335E C6 03         [ 2] 4589 	ldb	#3	;,
   3360 E4 62         [ 5] 4590 	andb	2,s	;, iftmp.69
   3362 E7 62         [ 5] 4591 	stb	2,s	;, iftmp.69
   3364 16 F8 21      [ 5] 4592 	lbra	L135	;
   3367                    4593 L122:
   3367 F6 C8 83      [ 5] 4594 	ldb	_screen+3	;,
   336A 54            [ 2] 4595 	lsrb	;
   336B 54            [ 2] 4596 	lsrb	;
   336C E7 68         [ 5] 4597 	stb	8,s	;, iftmp.62
   336E C6 03         [ 2] 4598 	ldb	#3	;,
   3370 E4 68         [ 5] 4599 	andb	8,s	;, iftmp.62
   3372 E7 68         [ 5] 4600 	stb	8,s	;, iftmp.62
   3374 C6 03         [ 2] 4601 	ldb	#3	;,
   3376 F4 C8 83      [ 5] 4602 	andb	_screen+3	;,
   3379 E7 69         [ 5] 4603 	stb	9,s	;, iftmp.63
   337B 16 F7 92      [ 5] 4604 	lbra	L123	;
   337E                    4605 L221:
   337E AE E8 2D      [ 6] 4606 	ldx	45,s	;, prephitmp.438
   3381 E6 84         [ 4] 4607 	ldb	,x	; tmp208,
   3383 C4 0C         [ 2] 4608 	andb	#12	; tmp208,
   3385 C1 04         [ 2] 4609 	cmpb	#4	;cmpqi:	; tmp208,
   3387 10 22 F9 D3   [ 6] 4610 	lbhi	L168	;
   338B F6 C8 97      [ 5] 4611 	ldb	_screen+23	;,
   338E 54            [ 2] 4612 	lsrb	;
   338F 54            [ 2] 4613 	lsrb	;
   3390 E7 62         [ 5] 4614 	stb	2,s	;, iftmp.89
   3392 C6 03         [ 2] 4615 	ldb	#3	;,
   3394 E4 62         [ 5] 4616 	andb	2,s	;, iftmp.89
   3396 E7 62         [ 5] 4617 	stb	2,s	;, iftmp.89
   3398 16 F9 C5      [ 5] 4618 	lbra	L169	;
   339B                    4619 L172:
   339B F6 C8 9B      [ 5] 4620 	ldb	_screen+27	;,
   339E E7 62         [ 5] 4621 	stb	2,s	;, iftmp.91
   33A0 C6 03         [ 2] 4622 	ldb	#3	;,
   33A2 E4 62         [ 5] 4623 	andb	2,s	;, iftmp.91
   33A4 E7 62         [ 5] 4624 	stb	2,s	;, iftmp.91
   33A6 16 F9 F8      [ 5] 4625 	lbra	L173	;
   33A9                    4626 L222:
   33A9 C6 0C         [ 2] 4627 	ldb	#12	;,
   33AB E4 E8 2C      [ 5] 4628 	andb	44,s	;, temp.428
   33AE C1 04         [ 2] 4629 	cmpb	#4	;cmpqi:	;,
   33B0 10 22 F9 CD   [ 6] 4630 	lbhi	L170	;
   33B4 F6 C8 99      [ 5] 4631 	ldb	_screen+25	;,
   33B7 E7 62         [ 5] 4632 	stb	2,s	;, iftmp.90
   33B9 C6 03         [ 2] 4633 	ldb	#3	;,
   33BB E4 62         [ 5] 4634 	andb	2,s	;, iftmp.90
   33BD E7 62         [ 5] 4635 	stb	2,s	;, iftmp.90
   33BF 16 F9 C1      [ 5] 4636 	lbra	L171	;
   33C2                    4637 L197:
                           4638 ;----- asm -----
                           4639 ; 846 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4640 	; #ENR#[661]if (sfx_status_1==0) initsoundno = sound_box;
                           4641 ;--- end asm ---
   33C2 F6 CA CF      [ 5] 4642 	ldb	_sfx_status_1	; sfx_status_1.41, sfx_status_1
   33C5 10 26 F6 5A   [ 6] 4643 	lbne	L95	;
   33C9 C6 03         [ 2] 4644 	ldb	#3	;,
   33CB F7 C8 A6      [ 5] 4645 	stb	_initSoundNo	;, initSoundNo
   33CE 16 F6 52      [ 5] 4646 	lbra	L95	;
   33D1                    4647 L200:
                           4648 ;----- asm -----
                           4649 ; 868 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4650 	; #ENR#[677]sfx_pointer_1 = (long unsigned int) (&teleport_data);
                           4651 ;--- end asm ---
   33D1 8E 1E D8      [ 3] 4652 	ldx	#_teleport_data	;,
   33D4 BF CA D0      [ 6] 4653 	stx	_sfx_pointer_1	;, sfx_pointer_1
   33D7 16 F6 82      [ 5] 4654 	lbra	L100	;
   33DA                    4655 L115:
   33DA F6 C8 81      [ 5] 4656 	ldb	_screen+1	;,
   33DD 54            [ 2] 4657 	lsrb	;
   33DE 54            [ 2] 4658 	lsrb	;
   33DF E7 63         [ 5] 4659 	stb	3,s	;, iftmp.58
   33E1 C6 03         [ 2] 4660 	ldb	#3	;,
   33E3 E4 63         [ 5] 4661 	andb	3,s	;, iftmp.58
   33E5 E7 63         [ 5] 4662 	stb	3,s	;, iftmp.58
   33E7 16 F6 D8      [ 5] 4663 	lbra	L114	;
   33EA                    4664 L202:
                           4665 ;----- asm -----
                           4666 ; 878 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4667 	; #ENR#[685]sfx_pointer_1 = (long unsigned int) (&dragon_data);
                           4668 ;--- end asm ---
   33EA 8E 1F 7E      [ 3] 4669 	ldx	#_dragon_data	;,
   33ED BF CA D0      [ 6] 4670 	stx	_sfx_pointer_1	;, sfx_pointer_1
   33F0 16 F6 69      [ 5] 4671 	lbra	L100	;
   33F3                    4672 L198:
                           4673 ;----- asm -----
                           4674 ; 851 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4675 	; #ENR#[665]initthronesong();
                           4676 ;--- end asm ---
   33F3 BD 10 AA      [ 8] 4677 	jsr	_initThroneSong
                           4678 ;----- asm -----
                           4679 ; 853 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4680 	; #ENR#[666]specialaction = 0;
                           4681 ;--- end asm ---
   33F6 7F C8 A5      [ 7] 4682 	clr	_specialAction	; specialAction
   33F9 16 F6 27      [ 5] 4683 	lbra	L95	;
   33FC                    4684 L203:
                           4685 ;----- asm -----
                           4686 ; 883 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4687 	; #ENR#[689]sfx_pointer_1 = (long unsigned int) (&death_data);
                           4688 ;--- end asm ---
   33FC 8E 1F C8      [ 3] 4689 	ldx	#_death_data	;,
   33FF BF CA D0      [ 6] 4690 	stx	_sfx_pointer_1	;, sfx_pointer_1
   3402 16 F6 57      [ 5] 4691 	lbra	L100	;
   3405                    4692 L204:
                           4693 ;----- asm -----
                           4694 ; 888 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4695 	; #ENR#[693]sfx_pointer_1 = (long unsigned int) (&gong_data);
                           4696 ;--- end asm ---
   3405 8E 20 00      [ 3] 4697 	ldx	#_gong_data	;,
   3408 BF CA D0      [ 6] 4698 	stx	_sfx_pointer_1	;, sfx_pointer_1
   340B 16 F6 4E      [ 5] 4699 	lbra	L100	;
   340E                    4700 LC38:
   340E 59 4F 55 20 48 41  4701 	.ascii	"YOU HAVE % IN THE SAFE\0"
        56 45 20 25 20 49
        4E 20 54 48 45 20
        53 41 46 45 00
   3425                    4702 LC39:
   3425 54 48 45 59 20 43  4703 	.ascii	"THEY CASH IN YOUR GOLD\0"
        41 53 48 20 49 4E
        20 59 4F 55 52 20
        47 4F 4C 44 00
   343C                    4704 LC40:
   343C 43 48 41 52 41 43  4705 	.ascii	"CHARACTER SAVED\0"
        54 45 52 20 53 41
        56 45 44 00
   344C                    4706 LC41:
   344C 43 48 41 52 41 43  4707 	.ascii	"CHARACTER SAVED (TEMPORARILY)\0"
        54 45 52 20 53 41
        56 45 44 20 28 54
        45 4D 50 4F 52 41
        52 49 4C 59 29 00
   346A                    4708 LC42:
   346A 59 4F 55 20 53 50  4709 	.ascii	"YOU SPEND THE NIGHT\0"
        45 4E 44 20 54 48
        45 20 4E 49 47 48
        54 00
   347E                    4710 LC43:
   347E 59 4F 55 20 46 45  4711 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   348E                    4712 LC44:
   348E 3C 34 3E 20 54 4F  4713 	.ascii	"<4> TO RETURN TO THE DUNGEON\0"
        20 52 45 54 55 52
        4E 20 54 4F 20 54
        48 45 20 44 55 4E
        47 45 4F 4E 00
   34AB                    4714 LC45:
   34AB 3C 31 3E 20 54 4F  4715 	.ascii	"<1> TO SAVE CHARACTER\0"
        20 53 41 56 45 20
        43 48 41 52 41 43
        54 45 52 00
                           4716 	.globl	_displayInn
   34C1                    4717 _displayInn:
   34C1 34 60         [ 7] 4718 	pshs	y,u	;
   34C3 32 76         [ 5] 4719 	leas	-10,s	;,,
                           4720 ;----- asm -----
                           4721 ; 1060 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4722 	; #ENR#[810]saveseed();
                           4723 ;--- end asm ---
   34C5 BD 45 65      [ 8] 4724 	jsr	_saveSeed
                           4725 ;----- asm -----
                           4726 ; 1062 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4727 	; #ENR#[811]unsigned long int m1 = cy;
                           4728 ;--- end asm ---
   34C8 F6 C9 40      [ 5] 4729 	ldb	_cy	;, cy
   34CB 4F            [ 2] 4730 	clra		;zero_extendqihi: R:b -> R:d	;,
   34CC 1F 01         [ 6] 4731 	tfr	d,x	;, m1
                           4732 ;----- asm -----
                           4733 ; 1064 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4734 	; #ENR#[812]setrandseed((unsigned int) (m1*m1));
                           4735 ;--- end asm ---
   34CE 34 06         [ 7] 4736 	pshs	d	; m1
   34D0 BD 7C C5      [ 8] 4737 	jsr	_mulhi3
   34D3 32 62         [ 5] 4738 	leas	2,s	;,,
   34D5 1F 10         [ 6] 4739 	tfr	x,d	;, tmp47
   34D7 F7 CA 78      [ 5] 4740 	stb	__x	;movlsbqihi: R:d -> __x	; _x, tmp47
   34DA C6 02         [ 2] 4741 	ldb	#2	;,
   34DC BD 00 83      [ 8] 4742 	jsr	_subBank1
                           4743 ;----- asm -----
                           4744 ; 1067 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4745 	; #ENR#[814]const char * s1;
                           4746 ; 1069 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4747 	; #ENR#[815]const char * s2;
                           4748 ; 1071 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4749 	; #ENR#[816]const char * s3;
                           4750 ; 1073 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4751 	; #ENR#[817]s1 = in1[randmax(10)];
                           4752 ;--- end asm ---
   34DF C6 0A         [ 2] 4753 	ldb	#10	;,
   34E1 BD 3C 59      [ 8] 4754 	jsr	_RandMax
   34E4 4F            [ 2] 4755 	clra		;zero_extendqihi: R:b -> R:d	; D.3819, D.3819
   34E5 58            [ 2] 4756 	aslb	;
   34E6 49            [ 2] 4757 	rola	;
   34E7 1F 01         [ 6] 4758 	tfr	d,x	; D.3819, tmp50
   34E9 AE 89 1D DD   [ 9] 4759 	ldx	_in1,x	;, in1
   34ED AF 62         [ 6] 4760 	stx	2,s	;, s1
                           4761 ;----- asm -----
                           4762 ; 1076 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4763 	; #ENR#[819]setrandseed((unsigned int) (cx+cy));
                           4764 ;--- end asm ---
   34EF F6 C9 40      [ 5] 4765 	ldb	_cy	;, cy
   34F2 FB C9 3F      [ 5] 4766 	addb	_cx	;, cx
   34F5 F7 CA 78      [ 5] 4767 	stb	__x	;, _x
   34F8 C6 02         [ 2] 4768 	ldb	#2	;,
   34FA BD 00 83      [ 8] 4769 	jsr	_subBank1
                           4770 ;----- asm -----
                           4771 ; 1078 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4772 	; #ENR#[820]s2 = in2[randmax(10)];
                           4773 ;--- end asm ---
   34FD C6 0A         [ 2] 4774 	ldb	#10	;,
   34FF BD 3C 59      [ 8] 4775 	jsr	_RandMax
   3502 4F            [ 2] 4776 	clra		;zero_extendqihi: R:b -> R:d	; D.3822, D.3822
   3503 58            [ 2] 4777 	aslb	;
   3504 49            [ 2] 4778 	rola	;
   3505 1F 01         [ 6] 4779 	tfr	d,x	; D.3822, tmp54
   3507 10 AE 89 1E 32[10] 4780 	ldy	_in2,x	; s2, in2
                           4781 ;----- asm -----
                           4782 ; 1081 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4783 	; #ENR#[822]setrandseed((unsigned int) (cx*3+cy*7));
                           4784 ;--- end asm ---
   350C F6 C9 40      [ 5] 4785 	ldb	_cy	;, cy
   350F 86 07         [ 2] 4786 	lda	#7	;umulqihi3	;
   3511 3D            [11] 4787 	mul
   3512 1F 01         [ 6] 4788 	tfr	d,x	;, tmp56
   3514 F6 C9 3F      [ 5] 4789 	ldb	_cx	;, cx
   3517 58            [ 2] 4790 	aslb	;
   3518 FB C9 3F      [ 5] 4791 	addb	_cx	;, cx
   351B E7 E4         [ 4] 4792 	stb	,s	;,
   351D 1F 10         [ 6] 4793 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp56,
   351F E7 61         [ 5] 4794 	stb	1,s	;,
   3521 E6 E4         [ 4] 4795 	ldb	,s	;,
   3523 EB 61         [ 5] 4796 	addb	1,s	;,
   3525 F7 CA 78      [ 5] 4797 	stb	__x	;, _x
   3528 C6 02         [ 2] 4798 	ldb	#2	;,
   352A BD 00 83      [ 8] 4799 	jsr	_subBank1
                           4800 ;----- asm -----
                           4801 ; 1083 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4802 	; #ENR#[823]s3 = in3[randmax(10)];
                           4803 ;--- end asm ---
   352D C6 0A         [ 2] 4804 	ldb	#10	;,
   352F BD 3C 59      [ 8] 4805 	jsr	_RandMax
   3532 4F            [ 2] 4806 	clra		;zero_extendqihi: R:b -> R:d	; D.3826, D.3826
   3533 58            [ 2] 4807 	aslb	;
   3534 49            [ 2] 4808 	rola	;
   3535 1F 01         [ 6] 4809 	tfr	d,x	; D.3826, tmp64
   3537 EE 89 1E 8E   [ 9] 4810 	ldu	_in3,x	; s3, in3
                           4811 ;----- asm -----
                           4812 ; 1085 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4813 	; #ENR#[824]restoreseed();
                           4814 ;--- end asm ---
   353B BD 45 7E      [ 8] 4815 	jsr	_restoreSeed
                           4816 ;----- asm -----
                           4817 ; 1089 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4818 	; #ENR#[827]if ((cx == 25) && (cy==13))
                           4819 ;--- end asm ---
   353E F6 C9 3F      [ 5] 4820 	ldb	_cx	; cx.525, cx
   3541 C1 19         [ 2] 4821 	cmpb	#25	;cmpqi:	; cx.525,
   3543 10 27 02 CE   [ 6] 4822 	lbeq	L266	;
   3547 C1 1A         [ 2] 4823 	cmpb	#26	;cmpqi:	; cx.525,
   3549 10 27 01 7B   [ 6] 4824 	lbeq	L267	;
   354D C1 1B         [ 2] 4825 	cmpb	#27	;cmpqi:	; cx.525,
   354F 26 09         [ 3] 4826 	bne	L241	;
   3551 F6 C9 40      [ 5] 4827 	ldb	_cy	;, cy
   3554 C1 0D         [ 2] 4828 	cmpb	#13	;cmpqi:	;,
   3556 10 27 02 D3   [ 6] 4829 	lbeq	L268	;
   355A                    4830 L241:
                           4831 ;----- asm -----
                           4832 ; 1121 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4833 	; #ENR#[849]ex = ex + gd;
                           4834 ;--- end asm ---
   355A FC C9 3B      [ 6] 4835 	ldd	_ex+2	;, ex
   355D F3 C9 6A      [ 7] 4836 	addd	_gd+2	;, gd
   3560 FD C9 3B      [ 6] 4837 	std	_ex+2	;, ex
   3563 FC C9 39      [ 6] 4838 	ldd	_ex	;, ex
   3566 F9 C9 69      [ 5] 4839 	adcb	_gd+1	; gd
   3569 B9 C9 68      [ 5] 4840 	adca	_gd	; gd
   356C FD C9 39      [ 6] 4841 	std	_ex	;, ex
                           4842 ;----- asm -----
                           4843 ; 1123 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4844 	; #ENR#[850]tg = tg + gd;
                           4845 ;--- end asm ---
   356F FC C9 43      [ 6] 4846 	ldd	_tg+2	;, tg
   3572 F3 C9 6A      [ 7] 4847 	addd	_gd+2	;, gd
   3575 FD C9 43      [ 6] 4848 	std	_tg+2	;, tg
   3578 FC C9 41      [ 6] 4849 	ldd	_tg	;, tg
   357B F9 C9 69      [ 5] 4850 	adcb	_gd+1	; gd
   357E B9 C9 68      [ 5] 4851 	adca	_gd	; gd
   3581 FD C9 41      [ 6] 4852 	std	_tg	;, tg
                           4853 ;----- asm -----
                           4854 ; 1125 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4855 	; #ENR#[851]gd = 0;
                           4856 ;--- end asm ---
   3584 CC 00 00      [ 3] 4857 	ldd	#0	;,
   3587 FD C9 68      [ 6] 4858 	std	_gd	;, gd
   358A FD C9 6A      [ 6] 4859 	std	_gd+2	;, gd
                           4860 ;----- asm -----
                           4861 ; 1127 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4862 	; #ENR#[852]ch = hp;
                           4863 ;--- end asm ---
   358D BE C9 36      [ 6] 4864 	ldx	_hp	;, hp
   3590 BF C9 63      [ 6] 4865 	stx	_ch	;, ch
                           4866 ;----- asm -----
                           4867 ; 1129 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4868 	; #ENR#[853]cs = su;
                           4869 ;--- end asm ---
   3593 FC C9 3D      [ 6] 4870 	ldd	_su	;, su
   3596 FD C9 65      [ 6] 4871 	std	_cs	;, cs
                           4872 ;----- asm -----
                           4873 ; 1135 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4874 	; #ENR#[858]for (int i=0; i<11;i++)
                           4875 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4876 	; #ENR#[860]sf[i] = 0;
                           4877 ;--- end asm ---
   3599 7F C9 6C      [ 7] 4878 	clr	_sf	; sf
                           4879 ;----- asm -----
                           4880 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4881 	; #ENR#[860]sf[i] = 0;
                           4882 ;--- end asm ---
   359C 7F C9 6D      [ 7] 4883 	clr	_sf+1	; sf
                           4884 ;----- asm -----
                           4885 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4886 	; #ENR#[860]sf[i] = 0;
                           4887 ;--- end asm ---
   359F 7F C9 6E      [ 7] 4888 	clr	_sf+2	; sf
                           4889 ;----- asm -----
                           4890 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4891 	; #ENR#[860]sf[i] = 0;
                           4892 ;--- end asm ---
   35A2 7F C9 6F      [ 7] 4893 	clr	_sf+3	; sf
                           4894 ;----- asm -----
                           4895 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4896 	; #ENR#[860]sf[i] = 0;
                           4897 ;--- end asm ---
   35A5 7F C9 70      [ 7] 4898 	clr	_sf+4	; sf
                           4899 ;----- asm -----
                           4900 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4901 	; #ENR#[860]sf[i] = 0;
                           4902 ;--- end asm ---
   35A8 7F C9 71      [ 7] 4903 	clr	_sf+5	; sf
                           4904 ;----- asm -----
                           4905 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4906 	; #ENR#[860]sf[i] = 0;
                           4907 ;--- end asm ---
   35AB 7F C9 72      [ 7] 4908 	clr	_sf+6	; sf
                           4909 ;----- asm -----
                           4910 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4911 	; #ENR#[860]sf[i] = 0;
                           4912 ;--- end asm ---
   35AE 7F C9 73      [ 7] 4913 	clr	_sf+7	; sf
                           4914 ;----- asm -----
                           4915 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4916 	; #ENR#[860]sf[i] = 0;
                           4917 ;--- end asm ---
   35B1 7F C9 74      [ 7] 4918 	clr	_sf+8	; sf
                           4919 ;----- asm -----
                           4920 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4921 	; #ENR#[860]sf[i] = 0;
                           4922 ;--- end asm ---
   35B4 7F C9 75      [ 7] 4923 	clr	_sf+9	; sf
                           4924 ;----- asm -----
                           4925 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4926 	; #ENR#[860]sf[i] = 0;
                           4927 ;--- end asm ---
   35B7 7F C9 76      [ 7] 4928 	clr	_sf+10	; sf
                           4929 ;----- asm -----
                           4930 ; 1143 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4931 	; #ENR#[864]_fll_s(, ((unsigned long long int) tg));
                           4932 ;--- end asm ---
   35BA 32 7C         [ 5] 4933 	leas	-4,s	;,,
   35BC BE C9 41      [ 6] 4934 	ldx	_tg	;, tg
   35BF AF E4         [ 5] 4935 	stx	,s	;,
   35C1 FC C9 43      [ 6] 4936 	ldd	_tg+2	;, tg
   35C4 ED 62         [ 6] 4937 	std	2,s	;,
   35C6 8E 34 0E      [ 3] 4938 	ldx	#LC38	;,
   35C9 BD 44 EC      [ 8] 4939 	jsr	__fll_s
                           4940 ;----- asm -----
                           4941 ; 1146 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4942 	; #ENR#[866]int stage = 0;
                           4943 ; 1148 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4944 	; #ENR#[867]int counter = 100;
                           4945 ; 1150 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4946 	; #ENR#[868]int innx=0;
                           4947 ; 1152 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4948 	; #ENR#[869]int direction = 0;
                           4949 ; 1154 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4950 	; #ENR#[870]int b=0;
                           4951 ; 1156 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4952 	; #ENR#[871]clearmessage();
                           4953 ;--- end asm ---
   35CC 7F C9 87      [ 7] 4954 	clr	_msgLine	; msgLine
                           4955 ;----- asm -----
                           4956 ; 1158 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4957 	; #ENR#[872]printmessage();
                           4958 ;--- end asm ---
   35CF 8E 34 25      [ 3] 4959 	ldx	#LC39	;,
   35D2 BD 38 A9      [ 8] 4960 	jsr	_printMessage
                           4961 ;----- asm -----
                           4962 ; 1160 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4963 	; #ENR#[873]printmessage( stringbuffer40);
                           4964 ;--- end asm ---
   35D5 8E C8 BF      [ 3] 4965 	ldx	#_stringBuffer40	;,
   35D8 BD 38 A9      [ 8] 4966 	jsr	_printMessage
                           4967 ;----- asm -----
                           4968 ; 1162 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4969 	; #ENR#[874]while (1)
                           4970 ;--- end asm ---
   35DB 6F 68         [ 7] 4971 	clr	8,s	; stage
   35DD C6 64         [ 2] 4972 	ldb	#100	;,
   35DF E7 69         [ 5] 4973 	stb	9,s	;, counter
   35E1 6F 6A         [ 7] 4974 	clr	10,s	; innx
   35E3 6F 6B         [ 7] 4975 	clr	11,s	; direction
   35E5 6F 6C         [ 7] 4976 	clr	12,s	; b
   35E7 32 64         [ 5] 4977 	leas	4,s	;,,
   35E9                    4978 L265:
                           4979 ;----- asm -----
                           4980 ; 1165 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4981 	; #ENR#[876]wait_recal();
                           4982 ;--- end asm ---
   35E9 BD F1 92      [ 8] 4983 	jsr	___Wait_Recal
                           4984 ;----- asm -----
                           4985 ; 1167 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4986 	; #ENR#[877]do_sound();
                           4987 ;--- end asm ---
   35EC BD 7C AB      [ 8] 4988 	jsr	__Do_Sound
                           4989 ;----- asm -----
                           4990 ; 1169 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4991 	; #ENR#[878]dp_via_t1_cnt_lo  = 0x80;
                           4992 ;--- end asm ---
   35EF C6 80         [ 2] 4993 	ldb	#-128	;,
   35F1 D7 04         [ 4] 4994 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           4995 ;----- asm -----
                           4996 ; 1171 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           4997 	; #ENR#[879]intensity_a(0x4f);
                           4998 ;--- end asm ---
   35F3 C6 4F         [ 2] 4999 	ldb	#79	;,
   35F5 BD 7C 95      [ 8] 5000 	jsr	__Intensity_a
                           5001 ;----- asm -----
                           5002 ; 1173 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5003 	; #ENR#[880]check_buttons();
                           5004 ;--- end asm ---
   35F8 BD F1 BA      [ 8] 5005 	jsr	___Read_Btns
                           5006 ;----- asm -----
                           5007 ; 1176 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5008 	; #ENR#[882]displaymessages();
                           5009 ;--- end asm ---
   35FB 5F            [ 2] 5010 	clrb	;
   35FC BD 00 83      [ 8] 5011 	jsr	_subBank1
                           5012 ;----- asm -----
                           5013 ; 1180 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5014 	; #ENR#[885]vec_text_height = -3;
                           5015 ;--- end asm ---
   35FF C6 FD         [ 2] 5016 	ldb	#-3	;,
   3601 F7 C8 2A      [ 5] 5017 	stb	_Vec_Text_Height	;, Vec_Text_Height
                           5018 ;----- asm -----
                           5019 ; 1182 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5020 	; #ENR#[886]vec_text_width = 0x30;
                           5021 ;--- end asm ---
   3604 C6 30         [ 2] 5022 	ldb	#48	;,
   3606 F7 C8 2B      [ 5] 5023 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           5024 ;----- asm -----
                           5025 ; 1185 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5026 	; #ENR#[888]print_str_d_org(0x0,-0x30, s1);
                           5027 ;--- end asm ---
   3609 6F E2         [ 8] 5028 	clr	,-s	;
   360B AE 63         [ 6] 5029 	ldx	3,s	;, s1
   360D C6 D0         [ 2] 5030 	ldb	#-48	;,
   360F BD 7C B2      [ 8] 5031 	jsr	__Print_Str_d
                           5032 ;----- asm -----
                           5033 ; 1187 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5034 	; #ENR#[889]print_str_d_org(-0x10,-0x10, s2);
                           5035 ;--- end asm ---
   3612 C6 F0         [ 2] 5036 	ldb	#-16	;,
   3614 E7 E2         [ 6] 5037 	stb	,-s	;,
   3616 30 A4         [ 4] 5038 	leax	,y	;, s2
   3618 BD 7C B2      [ 8] 5039 	jsr	__Print_Str_d
                           5040 ;----- asm -----
                           5041 ; 1189 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5042 	; #ENR#[890]print_str_d_org(-0x20,0x10, s3);
                           5043 ;--- end asm ---
   361B C6 E0         [ 2] 5044 	ldb	#-32	;,
   361D E7 E2         [ 6] 5045 	stb	,-s	;,
   361F 30 C4         [ 4] 5046 	leax	,u	;, s3
   3621 C6 10         [ 2] 5047 	ldb	#16	;,
   3623 BD 7C B2      [ 8] 5048 	jsr	__Print_Str_d
                           5049 ;----- asm -----
                           5050 ; 1192 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5051 	; #ENR#[892]reset0ref();
                           5052 ;--- end asm ---
   3626 C6 CC         [ 2] 5053 	ldb	#-52	;,
   3628 D7 0C         [ 4] 5054 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           5055 ;----- asm -----
                           5056 ; 1194 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5057 	; #ENR#[893]moveto_d(0x30,-0x00);
                           5058 ;--- end asm ---
   362A C6 30         [ 2] 5059 	ldb	#48	;,
   362C E7 E2         [ 6] 5060 	stb	,-s	;,
   362E 5F            [ 2] 5061 	clrb	;
   362F BD 7C E4      [ 8] 5062 	jsr	__Moveto_d
                           5063 ;----- asm -----
                           5064 ; 1196 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5065 	; #ENR#[894]dp_via_t1_cnt_lo  = 0x09;
                           5066 ;--- end asm ---
   3632 C6 09         [ 2] 5067 	ldb	#9	;,
   3634 D7 04         [ 4] 5068 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           5069 ;----- asm -----
                           5070 ; 1198 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5071 	; #ENR#[895]drawhome();
                           5072 ;--- end asm ---
   3636 BD 50 E7      [ 8] 5073 	jsr	_drawHome
                           5074 ;----- asm -----
                           5075 ; 1200 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5076 	; #ENR#[896]__ass(::: ,,,);
                           5077 ; 1201 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   3639 4F            [ 2] 5078 	clra
   363A 97 0A         [ 4] 5079 	sta *0x0a
                           5080 ; 1202 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5081 	; #ENR#[897]if (direction)
                           5082 ;--- end asm ---
   363C 32 64         [ 5] 5083 	leas	4,s	;,,
   363E 6D 67         [ 7] 5084 	tst	7,s	; direction
   3640 10 27 00 9C   [ 6] 5085 	lbeq	L244	;
                           5086 ;----- asm -----
                           5087 ; 1205 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5088 	; #ENR#[899]innx++;
                           5089 ;--- end asm ---
   3644 6C 66         [ 7] 5090 	inc	6,s	; innx
                           5091 ;----- asm -----
                           5092 ; 1207 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5093 	; #ENR#[900]if (innx==0x40) direction=0;
                           5094 ;--- end asm ---
   3646 E6 66         [ 5] 5095 	ldb	6,s	;, innx
   3648 C1 40         [ 2] 5096 	cmpb	#64	;cmpqi:	;,
   364A 10 27 00 D4   [ 6] 5097 	lbeq	L269	;
   364E                    5098 L245:
                           5099 ;----- asm -----
                           5100 ; 1217 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5101 	; #ENR#[907]dp_via_t1_cnt_lo  = 0x80;
                           5102 ;--- end asm ---
   364E C6 80         [ 2] 5103 	ldb	#-128	;,
   3650 D7 04         [ 4] 5104 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           5105 ;----- asm -----
                           5106 ; 1219 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5107 	; #ENR#[908]moveto_d(0x70,innx);
                           5108 ;--- end asm ---
   3652 C6 70         [ 2] 5109 	ldb	#112	;,
   3654 E7 E2         [ 6] 5110 	stb	,-s	;,
   3656 E6 67         [ 5] 5111 	ldb	7,s	;, innx
   3658 BD 7C E4      [ 8] 5112 	jsr	__Moveto_d
                           5113 ;----- asm -----
                           5114 ; 1221 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5115 	; #ENR#[909]dp_via_t1_cnt_lo  = 0x09;
                           5116 ;--- end asm ---
   365B C6 09         [ 2] 5117 	ldb	#9	;,
   365D D7 04         [ 4] 5118 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           5119 ;----- asm -----
                           5120 ; 1224 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5121 	; #ENR#[911]intensity_a(0x3f);
                           5122 ;--- end asm ---
   365F CB 36         [ 2] 5123 	addb	#54	;,
   3661 BD 7C 95      [ 8] 5124 	jsr	__Intensity_a
                           5125 ;----- asm -----
                           5126 ; 1226 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5127 	; #ENR#[912]drawinn();
                           5128 ;--- end asm ---
   3664 BD 50 EF      [ 8] 5129 	jsr	_drawInn
                           5130 ;----- asm -----
                           5131 ; 1228 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5132 	; #ENR#[913]intensity_a(0x4f);
                           5133 ;--- end asm ---
   3667 C6 4F         [ 2] 5134 	ldb	#79	;,
   3669 BD 7C 95      [ 8] 5135 	jsr	__Intensity_a
                           5136 ;----- asm -----
                           5137 ; 1231 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5138 	; #ENR#[915]__ass(::: ,,,);
                           5139 ; 1232 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
   366C 4F            [ 2] 5140 	clra
   366D 97 0A         [ 4] 5141 	sta *0x0a
                           5142 ; 1233 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5143 	; #ENR#[916]dp_via_t1_cnt_lo  = 0x80;
                           5144 ;--- end asm ---
   366F C6 80         [ 2] 5145 	ldb	#-128	;,
   3671 D7 04         [ 4] 5146 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           5147 ;----- asm -----
                           5148 ; 1236 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5149 	; #ENR#[918]if (buttons_pressed()) b=1;
                           5150 ;--- end asm ---
   3673 F6 C8 11      [ 5] 5151 	ldb	_Vec_Buttons	;, Vec_Buttons
   3676 E7 6A         [ 5] 5152 	stb	10,s	;, D.4167
   3678 32 61         [ 5] 5153 	leas	1,s	;,,
   367A 5D            [ 2] 5154 	tstb	;
   367B 27 04         [ 3] 5155 	beq	L246	;
   367D C6 01         [ 2] 5156 	ldb	#1	;,
   367F E7 68         [ 5] 5157 	stb	8,s	;, b
   3681                    5158 L246:
                           5159 ;----- asm -----
                           5160 ; 1238 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5161 	; #ENR#[919]if (stage == 2)
                           5162 ;--- end asm ---
   3681 E6 64         [ 5] 5163 	ldb	4,s	;, stage
   3683 C1 02         [ 2] 5164 	cmpb	#2	;cmpqi:	;,
   3685 10 27 00 68   [ 6] 5165 	lbeq	L270	;
                           5166 ;----- asm -----
                           5167 ; 1297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5168 	; #ENR#[956]if ((b==1) && (!buttons_pressed()))
                           5169 ;--- end asm ---
   3689 E6 68         [ 5] 5170 	ldb	8,s	;, b
   368B C1 01         [ 2] 5171 	cmpb	#1	;cmpqi:	;,
   368D 10 27 00 7C   [ 6] 5172 	lbeq	L271	;
   3691                    5173 L257:
                           5174 ;----- asm -----
                           5175 ; 1306 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5176 	; #ENR#[962]if (counter!=-1) counter--;
                           5177 ;--- end asm ---
   3691 E6 65         [ 5] 5178 	ldb	5,s	;, counter
   3693 C1 FF         [ 2] 5179 	cmpb	#-1	;cmpqi:	;,
   3695 27 03         [ 3] 5180 	beq	L259	;
   3697 5A            [ 2] 5181 	decb	;
   3698 E7 65         [ 5] 5182 	stb	5,s	;, counter
   369A                    5183 L259:
                           5184 ;----- asm -----
                           5185 ; 1309 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5186 	; #ENR#[964]if (counter == 0)
                           5187 ;--- end asm ---
   369A 6D 65         [ 7] 5188 	tst	5,s	; counter
   369C 10 26 FF 49   [ 6] 5189 	lbne	L265	;
                           5190 ;----- asm -----
                           5191 ; 1312 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5192 	; #ENR#[966]stage++;
                           5193 ;--- end asm ---
   36A0 6C 64         [ 7] 5194 	inc	4,s	; stage
                           5195 ;----- asm -----
                           5196 ; 1314 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5197 	; #ENR#[967]counter = 100;
                           5198 ; 1316 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5199 	; #ENR#[968]clearmessage();
                           5200 ;--- end asm ---
   36A2 7F C9 87      [ 7] 5201 	clr	_msgLine	; msgLine
                           5202 ;----- asm -----
                           5203 ; 1318 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5204 	; #ENR#[969]if (stage == 1)
                           5205 ;--- end asm ---
   36A5 E6 64         [ 5] 5206 	ldb	4,s	;, stage
   36A7 C1 01         [ 2] 5207 	cmpb	#1	;cmpqi:	;,
   36A9 10 27 00 7A   [ 6] 5208 	lbeq	L272	;
   36AD C6 64         [ 2] 5209 	ldb	#100	;,
   36AF E7 65         [ 5] 5210 	stb	5,s	;, counter
   36B1 E6 64         [ 5] 5211 	ldb	4,s	;, stage
   36B3 C1 02         [ 2] 5212 	cmpb	#2	;cmpqi:	;,
   36B5 10 26 FF 30   [ 6] 5213 	lbne	L265	;
                           5214 ;----- asm -----
                           5215 ; 1328 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5216 	; #ENR#[976]printmessage();
                           5217 ;--- end asm ---
   36B9 8E 34 8E      [ 3] 5218 	ldx	#LC44	;,
   36BC BD 38 A9      [ 8] 5219 	jsr	_printMessage
                           5220 ;----- asm -----
                           5221 ; 1330 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5222 	; #ENR#[977]printmessage();
                           5223 ;--- end asm ---
   36BF 8E 34 AB      [ 3] 5224 	ldx	#LC45	;,
   36C2 BD 38 A9      [ 8] 5225 	jsr	_printMessage
   36C5 16 FF 21      [ 5] 5226 	lbra	L265	;
   36C8                    5227 L267:
   36C8 F6 C9 40      [ 5] 5228 	ldb	_cy	;, cy
   36CB C1 0D         [ 2] 5229 	cmpb	#13	;cmpqi:	;,
   36CD 10 26 FE 89   [ 6] 5230 	lbne	L241	;
                           5231 ;----- asm -----
                           5232 ; 1103 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5233 	; #ENR#[837]s1 = in1[8];
                           5234 ;--- end asm ---
   36D1 8E 1D D0      [ 3] 5235 	ldx	#LC8	;,
   36D4 AF 62         [ 6] 5236 	stx	2,s	;, s1
                           5237 ;----- asm -----
                           5238 ; 1105 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5239 	; #ENR#[838]s2 = in2[9];
                           5240 ;--- end asm ---
   36D6 10 8E 1E 2D   [ 4] 5241 	ldy	#LC19	; s2,
                           5242 ;----- asm -----
                           5243 ; 1107 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5244 	; #ENR#[839]s3 = in3[9];
                           5245 ;--- end asm ---
   36DA CE 1E 83      [ 3] 5246 	ldu	#LC28	; s3,
   36DD 16 FE 7A      [ 5] 5247 	lbra	L241	;
   36E0                    5248 L244:
                           5249 ;----- asm -----
                           5250 ; 1212 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5251 	; #ENR#[904]innx--;
                           5252 ;--- end asm ---
   36E0 6A 66         [ 7] 5253 	dec	6,s	; innx
                           5254 ;----- asm -----
                           5255 ; 1214 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5256 	; #ENR#[905]if (innx==-0x40) direction=1;
                           5257 ;--- end asm ---
   36E2 E6 66         [ 5] 5258 	ldb	6,s	;, innx
   36E4 C1 C0         [ 2] 5259 	cmpb	#-64	;cmpqi:	;,
   36E6 10 26 FF 64   [ 6] 5260 	lbne	L245	;
   36EA C6 01         [ 2] 5261 	ldb	#1	;,
   36EC E7 67         [ 5] 5262 	stb	7,s	;, direction
   36EE 16 FF 5D      [ 5] 5263 	lbra	L245	;
   36F1                    5264 L270:
                           5265 ;----- asm -----
                           5266 ; 1241 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5267 	; #ENR#[921]counter = -1;
                           5268 ; 1243 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5269 	; #ENR#[922]if (button_1_4_pressed())
                           5270 ;--- end asm ---
   36F1 C6 08         [ 2] 5271 	ldb	#8	; tmp83,
   36F3 E4 69         [ 5] 5272 	andb	9,s	; tmp83, D.4167
   36F5 10 26 00 46   [ 6] 5273 	lbne	L273	;
                           5274 ;----- asm -----
                           5275 ; 1249 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5276 	; #ENR#[926]if (button_1_1_pressed())
                           5277 ;--- end asm ---
   36F9 C6 01         [ 2] 5278 	ldb	#1	; tmp84,
   36FB E4 69         [ 5] 5279 	andb	9,s	; tmp84, D.4167
   36FD 10 26 00 42   [ 6] 5280 	lbne	L274	;
   3701 C6 FF         [ 2] 5281 	ldb	#-1	;,
   3703 E7 65         [ 5] 5282 	stb	5,s	;, counter
                           5283 ;----- asm -----
                           5284 ; 1297 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5285 	; #ENR#[956]if ((b==1) && (!buttons_pressed()))
                           5286 ;--- end asm ---
   3705 E6 68         [ 5] 5287 	ldb	8,s	;, b
   3707 C1 01         [ 2] 5288 	cmpb	#1	;cmpqi:	;,
   3709 10 26 FF 84   [ 6] 5289 	lbne	L257	;
   370D                    5290 L271:
   370D 6D 69         [ 7] 5291 	tst	9,s	; D.4167
   370F 10 26 FF 7E   [ 6] 5292 	lbne	L257	;
                           5293 ;----- asm -----
                           5294 ; 1300 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5295 	; #ENR#[958]b = 0;
                           5296 ; 1302 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5297 	; #ENR#[959]if (stage != 2) counter = 1;
                           5298 ;--- end asm ---
   3713 E6 64         [ 5] 5299 	ldb	4,s	;, stage
   3715 C1 02         [ 2] 5300 	cmpb	#2	;cmpqi:	;,
   3717 27 21         [ 3] 5301 	beq	L258	;
   3719 E6 68         [ 5] 5302 	ldb	8,s	;, b
   371B E7 65         [ 5] 5303 	stb	5,s	;, counter
   371D 6F 68         [ 7] 5304 	clr	8,s	; b
   371F 16 FF 6F      [ 5] 5305 	lbra	L257	;
   3722                    5306 L269:
   3722 6F 67         [ 7] 5307 	clr	7,s	; direction
   3724 16 FF 27      [ 5] 5308 	lbra	L245	;
   3727                    5309 L272:
                           5310 ;----- asm -----
                           5311 ; 1321 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5312 	; #ENR#[971]printmessage();
                           5313 ;--- end asm ---
   3727 8E 34 6A      [ 3] 5314 	ldx	#LC42	;,
   372A BD 38 A9      [ 8] 5315 	jsr	_printMessage
                           5316 ;----- asm -----
                           5317 ; 1323 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5318 	; #ENR#[972]printmessage();
                           5319 ;--- end asm ---
   372D 8E 34 7E      [ 3] 5320 	ldx	#LC43	;,
   3730 BD 38 A9      [ 8] 5321 	jsr	_printMessage
   3733 C6 64         [ 2] 5322 	ldb	#100	;,
   3735 E7 65         [ 5] 5323 	stb	5,s	;, counter
   3737 16 FE AF      [ 5] 5324 	lbra	L265	;
   373A                    5325 L258:
   373A 6F 68         [ 7] 5326 	clr	8,s	; b
   373C 16 FF 52      [ 5] 5327 	lbra	L257	;
   373F                    5328 L273:
                           5329 ;----- asm -----
                           5330 ; 1246 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5331 	; #ENR#[924]return;
                           5332 ;--- end asm ---
   373F 32 6A         [ 5] 5333 	leas	10,s	;,,
   3741 35 E0         [ 8] 5334 	puls	y,u,pc	;
   3743                    5335 L274:
                           5336 ;----- asm -----
                           5337 ; 1252 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5338 	; #ENR#[928]if (flashavailable)
                           5339 ;--- end asm ---
   3743 7D C9 08      [ 7] 5340 	tst	_flashAvailable	; flashAvailable
   3746 10 26 00 F2   [ 6] 5341 	lbne	L275	;
                           5342 ;----- asm -----
                           5343 ; 1264 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5344 	; #ENR#[936]tmp_hp = hp;
                           5345 ;--- end asm ---
   374A BE C9 36      [ 6] 5346 	ldx	_hp	;, hp
   374D BF C9 09      [ 6] 5347 	stx	_tmp_hp	;, tmp_hp
                           5348 ;----- asm -----
                           5349 ; 1266 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5350 	; #ENR#[937]tmp_lv = lv;
                           5351 ;--- end asm ---
   3750 F6 C9 38      [ 5] 5352 	ldb	_lv	;, lv
   3753 F7 C9 0B      [ 5] 5353 	stb	_tmp_lv	;, tmp_lv
                           5354 ;----- asm -----
                           5355 ; 1269 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5356 	; #ENR#[939]tmp_ex = ex;
                           5357 ;--- end asm ---
   3756 BE C9 39      [ 6] 5358 	ldx	_ex	;, ex
   3759 BF C9 0C      [ 6] 5359 	stx	_tmp_ex	;, tmp_ex
   375C FC C9 3B      [ 6] 5360 	ldd	_ex+2	;, ex
   375F FD C9 0E      [ 6] 5361 	std	_tmp_ex+2	;, tmp_ex
                           5362 ;----- asm -----
                           5363 ; 1271 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5364 	; #ENR#[940]tmp_su = su;
                           5365 ;--- end asm ---
   3762 BE C9 3D      [ 6] 5366 	ldx	_su	;, su
   3765 BF C9 10      [ 6] 5367 	stx	_tmp_su	;, tmp_su
                           5368 ;----- asm -----
                           5369 ; 1274 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5370 	; #ENR#[942]tmp_cx = cx;
                           5371 ;--- end asm ---
   3768 F6 C9 3F      [ 5] 5372 	ldb	_cx	;, cx
   376B F7 C9 12      [ 5] 5373 	stb	_tmp_cx	;, tmp_cx
                           5374 ;----- asm -----
                           5375 ; 1276 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5376 	; #ENR#[943]tmp_cy = cy;
                           5377 ;--- end asm ---
   376E F6 C9 40      [ 5] 5378 	ldb	_cy	;, cy
   3771 F7 C9 13      [ 5] 5379 	stb	_tmp_cy	;, tmp_cy
                           5380 ;----- asm -----
                           5381 ; 1279 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5382 	; #ENR#[945]tmp_tg = tg;
                           5383 ;--- end asm ---
   3774 BE C9 41      [ 6] 5384 	ldx	_tg	;, tg
   3777 BF C9 14      [ 6] 5385 	stx	_tmp_tg	;, tmp_tg
   377A FC C9 43      [ 6] 5386 	ldd	_tg+2	;, tg
   377D FD C9 16      [ 6] 5387 	std	_tmp_tg+2	;, tmp_tg
                           5388 ;----- asm -----
                           5389 ; 1281 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5390 	; #ENR#[946]for (int i=0;i<6;i++) tmp_s[i] = s[i];
                           5391 ;--- end asm ---
   3780 8E C9 45      [ 3] 5392 	ldx	#_s	; vect_ps.497,
   3783 CC C9 18      [ 3] 5393 	ldd	#_tmp_s	; tmp91,
   3786 34 10         [ 6] 5394 	pshs	x	; vect_ps.497
   3788 AA E0         [ 6] 5395 	ora	,s+	;,
   378A EA E0         [ 6] 5396 	orb	,s+	;,
   378C 4F            [ 2] 5397 	clra	;andqi(ZERO)	;
   378D C4 01         [ 2] 5398 	andb	#1	;,
   378F 10 83 00 00   [ 5] 5399 	cmpd	#0	; tmp92
   3793 10 26 00 CF   [ 6] 5400 	lbne	L253	;
   3797 BE C9 45      [ 6] 5401 	ldx	_s	;,
   379A BF C9 18      [ 6] 5402 	stx	_tmp_s	;,
   379D FC C9 47      [ 6] 5403 	ldd	_s+2	;,
   37A0 FD C9 1A      [ 6] 5404 	std	_tmp_s+2	;,
   37A3 BE C9 49      [ 6] 5405 	ldx	_s+4	;,
   37A6 BF C9 1C      [ 6] 5406 	stx	_tmp_s+4	;,
   37A9                    5407 L254:
                           5408 ;----- asm -----
                           5409 ; 1283 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5410 	; #ENR#[947]for (int i=0;i<10;i++) tmp_inventory[i] = inventory[i];
                           5411 ;--- end asm ---
   37A9 BE C9 4B      [ 6] 5412 	ldx	_inventory	;, inventory
   37AC BF C9 1E      [ 6] 5413 	stx	_tmp_inventory	;, tmp_inventory
   37AF FC C9 4D      [ 6] 5414 	ldd	_inventory+2	;, inventory
   37B2 FD C9 20      [ 6] 5415 	std	_tmp_inventory+2	;, tmp_inventory
   37B5 BE C9 4F      [ 6] 5416 	ldx	_inventory+4	;, inventory
   37B8 BF C9 22      [ 6] 5417 	stx	_tmp_inventory+4	;, tmp_inventory
   37BB FC C9 51      [ 6] 5418 	ldd	_inventory+6	;, inventory
   37BE FD C9 24      [ 6] 5419 	std	_tmp_inventory+6	;, tmp_inventory
   37C1 BE C9 53      [ 6] 5420 	ldx	_inventory+8	;, inventory
   37C4 BF C9 26      [ 6] 5421 	stx	_tmp_inventory+8	;, tmp_inventory
   37C7 FC C9 55      [ 6] 5422 	ldd	_inventory+10	;, inventory
   37CA FD C9 28      [ 6] 5423 	std	_tmp_inventory+10	;, tmp_inventory
   37CD BE C9 57      [ 6] 5424 	ldx	_inventory+12	;, inventory
   37D0 BF C9 2A      [ 6] 5425 	stx	_tmp_inventory+12	;, tmp_inventory
   37D3 FC C9 59      [ 6] 5426 	ldd	_inventory+14	;, inventory
   37D6 FD C9 2C      [ 6] 5427 	std	_tmp_inventory+14	;, tmp_inventory
   37D9 BE C9 5B      [ 6] 5428 	ldx	_inventory+16	;, inventory
   37DC BF C9 2E      [ 6] 5429 	stx	_tmp_inventory+16	;, tmp_inventory
   37DF FC C9 5D      [ 6] 5430 	ldd	_inventory+18	;, inventory
   37E2 FD C9 30      [ 6] 5431 	std	_tmp_inventory+18	;, tmp_inventory
                           5432 ;----- asm -----
                           5433 ; 1285 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5434 	; #ENR#[948]for (int i=0;i<4;i++)  tmp_box[i]  = box[i];
                           5435 ;--- end asm ---
   37E5 8E C9 5F      [ 3] 5436 	ldx	#_box	; vect_pbox.469,
   37E8 CC C9 32      [ 3] 5437 	ldd	#_tmp_box	; tmp138,
   37EB 34 10         [ 6] 5438 	pshs	x	; vect_pbox.469
   37ED AA E0         [ 6] 5439 	ora	,s+	;,
   37EF EA E0         [ 6] 5440 	orb	,s+	;,
   37F1 4F            [ 2] 5441 	clra	;andqi(ZERO)	;
   37F2 C4 01         [ 2] 5442 	andb	#1	;,
   37F4 10 83 00 00   [ 5] 5443 	cmpd	#0	; tmp139
   37F8 10 26 00 4F   [ 6] 5444 	lbne	L255	;
   37FC BE C9 5F      [ 6] 5445 	ldx	_box	;,
   37FF BF C9 32      [ 6] 5446 	stx	_tmp_box	;,
   3802 FC C9 61      [ 6] 5447 	ldd	_box+2	;,
   3805 FD C9 34      [ 6] 5448 	std	_tmp_box+2	;,
   3808                    5449 L256:
                           5450 ;----- asm -----
                           5451 ; 1287 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5452 	; #ENR#[949]clearmessage();
                           5453 ;--- end asm ---
   3808 7F C9 87      [ 7] 5454 	clr	_msgLine	; msgLine
                           5455 ;----- asm -----
                           5456 ; 1289 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5457 	; #ENR#[950]printmessage();
                           5458 ;--- end asm ---
   380B 8E 34 4C      [ 3] 5459 	ldx	#LC41	;,
   380E BD 38 A9      [ 8] 5460 	jsr	_printMessage
   3811                    5461 L252:
                           5462 ;----- asm -----
                           5463 ; 1292 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5464 	; #ENR#[952]return;
                           5465 ;--- end asm ---
   3811 32 6A         [ 5] 5466 	leas	10,s	;,,
   3813 35 E0         [ 8] 5467 	puls	y,u,pc	;
   3815                    5468 L266:
   3815 F6 C9 40      [ 5] 5469 	ldb	_cy	;, cy
   3818 C1 0D         [ 2] 5470 	cmpb	#13	;cmpqi:	;,
   381A 10 26 FD 3C   [ 6] 5471 	lbne	L241	;
                           5472 ;----- asm -----
                           5473 ; 1093 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5474 	; #ENR#[830]s1 = in1[5];
                           5475 ;--- end asm ---
   381E 8E 1D BB      [ 3] 5476 	ldx	#LC5	;,
   3821 AF 62         [ 6] 5477 	stx	2,s	;, s1
                           5478 ;----- asm -----
                           5479 ; 1095 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5480 	; #ENR#[831]s2 = in2[8];
                           5481 ;--- end asm ---
   3823 10 8E 1E 26   [ 4] 5482 	ldy	#LC18	; s2,
                           5483 ;----- asm -----
                           5484 ; 1097 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5485 	; #ENR#[832]s3 = in3[4];
                           5486 ;--- end asm ---
   3827 CE 1E 66      [ 3] 5487 	ldu	#LC24	; s3,
   382A 16 FD 2D      [ 5] 5488 	lbra	L241	;
   382D                    5489 L268:
                           5490 ;----- asm -----
                           5491 ; 1113 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5492 	; #ENR#[844]s1 = in1[1];
                           5493 ;--- end asm ---
   382D 8E 1D A2      [ 3] 5494 	ldx	#LC1	;,
   3830 AF 62         [ 6] 5495 	stx	2,s	;, s1
                           5496 ;----- asm -----
                           5497 ; 1115 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5498 	; #ENR#[845]s2 = in2[0];
                           5499 ;--- end asm ---
   3832 10 8E 1D F1   [ 4] 5500 	ldy	#LC10	; s2,
                           5501 ;----- asm -----
                           5502 ; 1117 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5503 	; #ENR#[846]s3 = in3[2];
                           5504 ;--- end asm ---
   3836 CE 1E 58      [ 3] 5505 	ldu	#LC22	; s3,
   3839 16 FD 1E      [ 5] 5506 	lbra	L241	;
   383C                    5507 L275:
                           5508 ;----- asm -----
                           5509 ; 1255 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5510 	; #ENR#[930]saveflash();
                           5511 ;--- end asm ---
   383C BD 15 19      [ 8] 5512 	jsr	_saveFlash
                           5513 ;----- asm -----
                           5514 ; 1257 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5515 	; #ENR#[931]clearmessage();
                           5516 ;--- end asm ---
   383F 7F C9 87      [ 7] 5517 	clr	_msgLine	; msgLine
                           5518 ;----- asm -----
                           5519 ; 1259 "C:\Dev\Vide\projects\Telengard\source\bank0\main.enr.c" 1
                           5520 	; #ENR#[932]printmessage();
                           5521 ;--- end asm ---
   3842 8E 34 3C      [ 3] 5522 	ldx	#LC40	;,
   3845 BD 38 A9      [ 8] 5523 	jsr	_printMessage
   3848 16 FF C6      [ 5] 5524 	lbra	L252	;
   384B                    5525 L255:
   384B F6 C9 5F      [ 5] 5526 	ldb	_box	;, box
   384E F7 C9 32      [ 5] 5527 	stb	_tmp_box	;, tmp_box
   3851 F6 C9 60      [ 5] 5528 	ldb	_box+1	;, box
   3854 F7 C9 33      [ 5] 5529 	stb	_tmp_box+1	;, tmp_box
   3857 F6 C9 61      [ 5] 5530 	ldb	_box+2	;, box
   385A F7 C9 34      [ 5] 5531 	stb	_tmp_box+2	;, tmp_box
   385D F6 C9 62      [ 5] 5532 	ldb	_box+3	;, box
   3860 F7 C9 35      [ 5] 5533 	stb	_tmp_box+3	;, tmp_box
   3863 16 FF A2      [ 5] 5534 	lbra	L256	;
   3866                    5535 L253:
   3866 F6 C9 45      [ 5] 5536 	ldb	_s	;, s
   3869 F7 C9 18      [ 5] 5537 	stb	_tmp_s	;, tmp_s
   386C F6 C9 46      [ 5] 5538 	ldb	_s+1	;, s
   386F F7 C9 19      [ 5] 5539 	stb	_tmp_s+1	;, tmp_s
   3872 F6 C9 47      [ 5] 5540 	ldb	_s+2	;, s
   3875 F7 C9 1A      [ 5] 5541 	stb	_tmp_s+2	;, tmp_s
   3878 F6 C9 48      [ 5] 5542 	ldb	_s+3	;, s
   387B F7 C9 1B      [ 5] 5543 	stb	_tmp_s+3	;, tmp_s
   387E F6 C9 49      [ 5] 5544 	ldb	_s+4	;, s
   3881 F7 C9 1C      [ 5] 5545 	stb	_tmp_s+4	;, tmp_s
   3884 F6 C9 4A      [ 5] 5546 	ldb	_s+5	;, s
   3887 F7 C9 1D      [ 5] 5547 	stb	_tmp_s+5	;, tmp_s
   388A 16 FF 1C      [ 5] 5548 	lbra	L254	;
                           5549 	.globl	_main
   388D                    5550 _main:
   388D 5F            [ 2] 5551 	clrb	;
   388E 39            [ 5] 5552 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$main$1322        0574 GR  |   3 A$main$1323        0576 GR
  3 A$main$1328        0578 GR  |   3 A$main$1333        057B GR
  3 A$main$1338        057E GR  |   3 A$main$1339        0581 GR
  3 A$main$1350        0585 GR  |   3 A$main$1355        0588 GR
  3 A$main$1356        058A GR  |   3 A$main$1361        058D GR
  3 A$main$1362        0590 GR  |   3 A$main$1369        0593 GR
  3 A$main$1370        0596 GR  |   3 A$main$1375        0599 GR
  3 A$main$1376        059C GR  |   3 A$main$1381        059F GR
  3 A$main$1382        05A1 GR  |   3 A$main$1388        05A3 GR
  3 A$main$1389        05A5 GR  |   3 A$main$1390        05A7 GR
  3 A$main$1396        05AB GR  |   3 A$main$1397        05AD GR
  3 A$main$1398        05AF GR  |   3 A$main$1404        05B3 GR
  3 A$main$1405        05B5 GR  |   3 A$main$1410        05B9 GR
  3 A$main$1411        05BB GR  |   3 A$main$1417        05BF GR
  3 A$main$1418        05C2 GR  |   3 A$main$1424        05C6 GR
  3 A$main$1429        05C9 GR  |   3 A$main$1434        05CC GR
  3 A$main$1439        05CF GR  |   3 A$main$1440        05D1 GR
  3 A$main$1445        05D3 GR  |   3 A$main$1446        05D5 GR
  3 A$main$1451        05D8 GR  |   3 A$main$1452        05D9 GR
  3 A$main$1457        05DC GR  |   3 A$main$1458        05DE GR
  3 A$main$1463        05E1 GR  |   3 A$main$1464        05E3 GR
  3 A$main$1469        05E5 GR  |   3 A$main$1470        05E7 GR
  3 A$main$1475        05E9 GR  |   3 A$main$1476        05EC GR
  3 A$main$1477        05ED GR  |   3 A$main$1478        05EF GR
  3 A$main$1479        05F0 GR  |   3 A$main$1480        05F1 GR
  3 A$main$1481        05F3 GR  |   3 A$main$1486        05F7 GR
  3 A$main$1487        05F8 GR  |   3 A$main$1491        05FA GR
  3 A$main$1492        05FC GR  |   3 A$main$1497        05FE GR
  3 A$main$1498        0600 GR  |   3 A$main$1499        0602 GR
  3 A$main$1504        0605 GR  |   3 A$main$1505        0607 GR
  3 A$main$1510        0609 GR  |   3 A$main$1511        060B GR
  3 A$main$1516        060D GR  |   3 A$main$1521        0610 GR
  3 A$main$1526        0613 GR  |   3 A$main$1527        0616 GR
  3 A$main$1528        0618 GR  |   3 A$main$1529        061B GR
  3 A$main$1530        061D GR  |   3 A$main$1531        0620 GR
  3 A$main$1536        0624 GR  |   3 A$main$1537        0627 GR
  3 A$main$1542        062A GR  |   3 A$main$1547        062D GR
  3 A$main$1552        062F GR  |   3 A$main$1553        0632 GR
  3 A$main$1558        0635 GR  |   3 A$main$1559        0637 GR
  3 A$main$1560        063B GR  |   3 A$main$1565        063E GR
  3 A$main$1566        0640 GR  |   3 A$main$1567        0642 GR
  3 A$main$1573        0646 GR  |   3 A$main$1574        0649 GR
  3 A$main$1579        064C GR  |   3 A$main$1580        064F GR
  3 A$main$1581        0653 GR  |   3 A$main$1582        0656 GR
  3 A$main$1587        065A GR  |   3 A$main$1588        065D GR
  3 A$main$1589        0660 GR  |   3 A$main$1595        0663 GR
  3 A$main$1596        0666 GR  |   3 A$main$1597        0668 GR
  3 A$main$1598        066B GR  |   3 A$main$1603        066D GR
  3 A$main$1604        066F GR  |   3 A$main$1605        0671 GR
  3 A$main$1606        0674 GR  |   3 A$main$1612        0677 GR
  3 A$main$1613        0679 GR  |   3 A$main$1618        067C GR
  3 A$main$1623        067F GR  |   3 A$main$1628        0682 GR
  3 A$main$1633        0685 GR  |   3 A$main$1634        0687 GR
  3 A$main$1639        068A GR  |   3 A$main$1640        068C GR
  3 A$main$1645        068F GR  |   3 A$main$1646        0692 GR
  3 A$main$1647        0694 GR  |   3 A$main$1653        0696 GR
  3 A$main$1654        0699 GR  |   3 A$main$1659        069C GR
  3 A$main$1660        069F GR  |   3 A$main$1665        06A2 GR
  3 A$main$1666        06A5 GR  |   3 A$main$1667        06A8 GR
  3 A$main$1672        06AA GR  |   3 A$main$1673        06AC GR
  3 A$main$1679        06B0 GR  |   3 A$main$1685        06B3 GR
  3 A$main$1686        06B6 GR  |   3 A$main$1691        06B9 GR
  3 A$main$1692        06BC GR  |   3 A$main$1693        06BF GR
  3 A$main$1694        06C1 GR  |   3 A$main$1696        06C4 GR
  3 A$main$1697        06C7 GR  |   3 A$main$1700        06CA GR
  3 A$main$1701        06CC GR  |   3 A$main$1702        06CE GR
  3 A$main$1707        06D0 GR  |   3 A$main$1708        06D3 GR
  3 A$main$1709        06D5 GR  |   3 A$main$1710        06D8 GR
  3 A$main$1711        06DA GR  |   3 A$main$1712        06DB GR
  3 A$main$1713        06DD GR  |   3 A$main$1718        06E0 GR
  3 A$main$1719        06E3 GR  |   3 A$main$1720        06E5 GR
  3 A$main$1721        06E8 GR  |   3 A$main$1722        06EA GR
  3 A$main$1723        06ED GR  |   3 A$main$1724        06EE GR
  3 A$main$1725        06F0 GR  |   3 A$main$1730        06F3 GR
  3 A$main$1731        06F6 GR  |   3 A$main$1732        06F8 GR
  3 A$main$1733        06FC GR  |   3 A$main$1734        06FE GR
  3 A$main$1735        0700 GR  |   3 A$main$1736        0702 GR
  3 A$main$1737        0703 GR  |   3 A$main$1738        0705 GR
  3 A$main$1743        0708 GR  |   3 A$main$1744        070B GR
  3 A$main$1745        070D GR  |   3 A$main$1746        0710 GR
  3 A$main$1747        0712 GR  |   3 A$main$1748        0715 GR
  3 A$main$1753        0718 GR  |   3 A$main$1754        071A GR
  3 A$main$1755        071D GR  |   3 A$main$1756        071F GR
  3 A$main$1757        0721 GR  |   3 A$main$1758        0723 GR
  3 A$main$1763        0726 GR  |   3 A$main$1764        0729 GR
  3 A$main$1765        072B GR  |   3 A$main$1766        072E GR
  3 A$main$1767        0730 GR  |   3 A$main$1768        0732 GR
  3 A$main$1769        0733 GR  |   3 A$main$1770        0735 GR
  3 A$main$1775        0738 GR  |   3 A$main$1776        073A GR
  3 A$main$1777        073D GR  |   3 A$main$1778        073F GR
  3 A$main$1779        0742 GR  |   3 A$main$1780        0744 GR
  3 A$main$1781        0746 GR  |   3 A$main$1782        0747 GR
  3 A$main$1783        0749 GR  |   3 A$main$1788        074C GR
  3 A$main$1789        074E GR  |   3 A$main$1790        0750 GR
  3 A$main$1791        0753 GR  |   3 A$main$1792        0754 GR
  3 A$main$1793        0756 GR  |   3 A$main$1798        0759 GR
  3 A$main$1799        075B GR  |   3 A$main$1800        075E GR
  3 A$main$1801        0760 GR  |   3 A$main$1802        0763 GR
  3 A$main$1803        0765 GR  |   3 A$main$1804        0768 GR
  3 A$main$1809        076B GR  |   3 A$main$1810        076D GR
  3 A$main$1811        076F GR  |   3 A$main$1812        0771 GR
  3 A$main$1817        0774 GR  |   3 A$main$1818        0776 GR
  3 A$main$1819        077A GR  |   3 A$main$1820        077C GR
  3 A$main$1821        077E GR  |   3 A$main$1822        0781 GR
  3 A$main$1827        0784 GR  |   3 A$main$1828        0786 GR
  3 A$main$1829        0788 GR  |   3 A$main$1834        078B GR
  3 A$main$1835        078E GR  |   3 A$main$1836        0790 GR
  3 A$main$1837        0792 GR  |   3 A$main$1838        0794 GR
  3 A$main$1843        0797 GR  |   3 A$main$1844        0799 GR
  3 A$main$1845        079C GR  |   3 A$main$1846        079E GR
  3 A$main$1847        07A0 GR  |   3 A$main$1848        07A3 GR
  3 A$main$1853        07A6 GR  |   3 A$main$1854        07A9 GR
  3 A$main$1855        07AC GR  |   3 A$main$1860        07AE GR
  3 A$main$1861        07B0 GR  |   3 A$main$1862        07B2 GR
  3 A$main$1863        07B3 GR  |   3 A$main$1864        07B5 GR
  3 A$main$1865        07B9 GR  |   3 A$main$1866        07BB GR
  3 A$main$1867        07BD GR  |   3 A$main$1869        07BE GR
  3 A$main$1875        07C0 GR  |   3 A$main$1877        07C2 GR
  3 A$main$1878        07C3 GR  |   3 A$main$1879        07C7 GR
  3 A$main$1885        07C9 GR  |   3 A$main$1886        07CB GR
  3 A$main$1887        07CD GR  |   3 A$main$1888        07CF GR
  3 A$main$1889        07D1 GR  |   3 A$main$1895        07D3 GR
  3 A$main$1896        07D5 GR  |   3 A$main$1897        07D7 GR
  3 A$main$1898        07D9 GR  |   3 A$main$1899        07DB GR
  3 A$main$1905        07DD GR  |   3 A$main$1906        07DF GR
  3 A$main$1907        07E1 GR  |   3 A$main$1909        07E3 GR
  3 A$main$1911        07E5 GR  |   3 A$main$1912        07E7 GR
  3 A$main$1913        07E9 GR  |   3 A$main$1915        07EB GR
  3 A$main$1917        07ED GR  |   3 A$main$1918        07EF GR
  3 A$main$1919        07F1 GR  |   3 A$main$1925        07F3 GR
  3 A$main$1926        07F6 GR  |   3 A$main$1927        07F8 GR
  3 A$main$1928        07FA GR  |   3 A$main$1929        07FD GR
  3 A$main$1934        0800 GR  |   3 A$main$1935        0803 GR
  3 A$main$1936        0805 GR  |   3 A$main$1937        0807 GR
  3 A$main$1942        080A GR  |   3 A$main$1943        080E GR
  3 A$main$1944        0810 GR  |   3 A$main$1945        0813 GR
  3 A$main$1946        0815 GR  |   3 A$main$1947        0817 GR
  3 A$main$1952        081A GR  |   3 A$main$1953        081C GR
  3 A$main$1954        081E GR  |   3 A$main$1955        0820 GR
  3 A$main$1956        0823 GR  |   3 A$main$1961        0826 GR
  3 A$main$1962        0828 GR  |   3 A$main$1967        082B GR
  3 A$main$1972        082D GR  |   3 A$main$1973        082F GR
  3 A$main$1974        0833 GR  |   3 A$main$1980        0835 GR
  3 A$main$1981        0837 GR  |   3 A$main$1982        0839 GR
  3 A$main$1983        083A GR  |   3 A$main$1984        083C GR
  3 A$main$1985        083F GR  |   3 A$main$1986        0841 GR
  3 A$main$1994        0843 GR  |   3 A$main$1995        0845 GR
  3 A$main$1997        0846 GR  |   3 A$main$1998        0848 GR
  3 A$main$1999        084A GR  |   3 A$main$2000        084C GR
  3 A$main$2001        084E GR  |   3 A$main$2003        0851 GR
  3 A$main$2004        0854 GR  |   3 A$main$2006        0856 GR
  3 A$main$2007        0858 GR  |   3 A$main$2008        085A GR
  3 A$main$2009        085B GR  |   3 A$main$2010        085D GR
  3 A$main$2011        0861 GR  |   3 A$main$2012        0863 GR
  3 A$main$2013        0866 GR  |   3 A$main$2016        0868 GR
  3 A$main$2017        086A GR  |   3 A$main$2022        086C GR
  3 A$main$2023        086F GR  |   3 A$main$2024        0871 GR
  3 A$main$2025        0873 GR  |   3 A$main$2026        0875 GR
  3 A$main$2032        0878 GR  |   3 A$main$2033        087B GR
  3 A$main$2034        087D GR  |   3 A$main$2035        087F GR
  3 A$main$2036        0881 GR  |   3 A$main$2042        0884 GR
  3 A$main$2043        0887 GR  |   3 A$main$2048        088B GR
  3 A$main$2049        088E GR  |   3 A$main$2050        0890 GR
  3 A$main$2052        0894 GR  |   3 A$main$2053        0896 GR
  3 A$main$2054        0898 GR  |   3 A$main$2055        089A GR
  3 A$main$2056        089E GR  |   3 A$main$2057        08A0 GR
  3 A$main$2063        08A4 GR  |   3 A$main$2068        08A7 GR
  3 A$main$2069        08A8 GR  |   3 A$main$2070        08AA GR
  3 A$main$2072        08AC GR  |   3 A$main$2073        08AE GR
  3 A$main$2074        08B2 GR  |   3 A$main$2075        08B4 GR
  3 A$main$2080        08B6 GR  |   3 A$main$2081        08B9 GR
  3 A$main$2087        08BB GR  |   3 A$main$2088        08BE GR
  3 A$main$2089        08BF GR  |   3 A$main$2090        08C1 GR
  3 A$main$2095        08C3 GR  |   3 A$main$2096        08C5 GR
  3 A$main$2097        08C7 GR  |   3 A$main$2106        08CB GR
  3 A$main$2107        08CC GR  |   3 A$main$2108        08CD GR
  3 A$main$2109        08CE GR  |   3 A$main$2110        08CF GR
  3 A$main$2111        08D0 GR  |   3 A$main$2112        08D1 GR
  3 A$main$2113        08D2 GR  |   3 A$main$2114        08D4 GR
  3 A$main$2115        08D6 GR  |   3 A$main$2116        08D7 GR
  3 A$main$2117        08D9 GR  |   3 A$main$2118        08DA GR
  3 A$main$2119        08DC GR  |   3 A$main$2120        08DD GR
  3 A$main$2121        08DE GR  |   3 A$main$2122        08DF GR
  3 A$main$2123        08E0 GR  |   3 A$main$2124        08E1 GR
  3 A$main$2125        08E2 GR  |   3 A$main$2126        08E4 GR
  3 A$main$2127        08E8 GR  |   3 A$main$2136        08EC GR
  3 A$main$2137        08EE GR  |   3 A$main$2146        08F0 GR
  3 A$main$2147        08F2 GR  |   3 A$main$2156        08F4 GR
  3 A$main$2157        08F6 GR  |   3 A$main$2158        08F8 GR
  3 A$main$2159        08FA GR  |   3 A$main$2160        08FC GR
  3 A$main$2161        08FE GR  |   3 A$main$2162        0900 GR
  3 A$main$2167        0904 GR  |   3 A$main$2173        0907 GR
  3 A$main$2174        090A GR  |   3 A$main$2175        090B GR
  3 A$main$2176        090D GR  |   3 A$main$2177        0910 GR
  3 A$main$2178        0912 GR  |   3 A$main$2179        0915 GR
  3 A$main$2180        0918 GR  |   3 A$main$2181        091A GR
  3 A$main$2182        091C GR  |   3 A$main$2183        091D GR
  3 A$main$2184        0920 GR  |   3 A$main$2185        0923 GR
  3 A$main$2190        0925 GR  |   3 A$main$2191        0928 GR
  3 A$main$2192        092A GR  |   3 A$main$2198        092E GR
  3 A$main$2199        0932 GR  |   3 A$main$2205        0934 GR
  3 A$main$2206        0937 GR  |   3 A$main$2211        0939 GR
  3 A$main$2212        093C GR  |   3 A$main$2213        093D GR
  3 A$main$2222        093F GR  |   3 A$main$2223        0941 GR
  3 A$main$2232        0943 GR  |   3 A$main$2233        0945 GR
  3 A$main$2242        0947 GR  |   3 A$main$2243        0949 GR
  3 A$main$2252        094B GR  |   3 A$main$2253        094D GR
  3 A$main$2254        094F GR  |   3 A$main$2255        0951 GR
  3 A$main$2256        0954 GR  |   3 A$main$2257        0956 GR
  3 A$main$2258        0958 GR  |   3 A$main$2259        095A GR
  3 A$main$2260        095C GR  |   3 A$main$2261        095E GR
  3 A$main$2262        0960 GR  |   3 A$main$2263        0963 GR
  3 A$main$2264        0965 GR  |   3 A$main$2265        0967 GR
  3 A$main$2266        0969 GR  |   3 A$main$2267        096B GR
  3 A$main$2268        096D GR  |   3 A$main$2269        096F GR
  3 A$main$2274        0973 GR  |   3 A$main$2280        0976 GR
  3 A$main$2281        0979 GR  |   3 A$main$2287        097B GR
  3 A$main$2288        097E GR  |   3 A$main$2289        097F GR
  3 A$main$2290        0981 GR  |   3 A$main$2299        0983 GR
  3 A$main$2300        0986 GR  |   3 A$main$2301        0987 GR
  3 A$main$2302        0989 GR  |   3 A$main$2303        098C GR
  3 A$main$2304        098E GR  |   3 A$main$2305        0990 GR
  3 A$main$2306        0992 GR  |   3 A$main$2307        0994 GR
  3 A$main$2308        0997 GR  |   3 A$main$2315        0999 GR
  3 A$main$2316        099C GR  |   3 A$main$2317        099E GR
  3 A$main$2318        09A1 GR  |   3 A$main$2319        09A3 GR
  3 A$main$2320        09A5 GR  |   3 A$main$2321        09A7 GR
  3 A$main$2322        09A9 GR  |   3 A$main$2323        09AC GR
  3 A$main$2330        09AE GR  |   3 A$main$2331        09B1 GR
  3 A$main$2332        09B2 GR  |   3 A$main$2333        09B4 GR
  3 A$main$2334        09B7 GR  |   3 A$main$2335        09B9 GR
  3 A$main$2336        09BB GR  |   3 A$main$2337        09BD GR
  3 A$main$2338        09BF GR  |   3 A$main$2339        09C2 GR
  3 A$main$2346        09C4 GR  |   3 A$main$2347        09C7 GR
  3 A$main$2348        09C9 GR  |   3 A$main$2349        09CB GR
  3 A$main$2350        09CE GR  |   3 A$main$2351        09D0 GR
  3 A$main$2352        09D2 GR  |   3 A$main$2353        09D4 GR
  3 A$main$2354        09D6 GR  |   3 A$main$2355        09D9 GR
  3 A$main$2356        09DB GR  |   3 A$main$2357        09DD GR
  3 A$main$2358        09DF GR  |   3 A$main$2359        09E1 GR
  3 A$main$2360        09E3 GR  |   3 A$main$2361        09E5 GR
  3 A$main$2371        09E9 GR  |   3 A$main$2376        09EC GR
  3 A$main$2377        09EE GR  |   3 A$main$2378        09F0 GR
  3 A$main$2384        09F2 GR  |   3 A$main$2385        09F6 GR
  3 A$main$2391        09F8 GR  |   3 A$main$2392        09FB GR
  3 A$main$2397        09FD GR  |   3 A$main$2398        0A00 GR
  3 A$main$2399        0A01 GR  |   3 A$main$2408        0A03 GR
  3 A$main$2409        0A05 GR  |   3 A$main$2418        0A07 GR
  3 A$main$2419        0A09 GR  |   3 A$main$2428        0A0B GR
  3 A$main$2429        0A0D GR  |   3 A$main$2438        0A0F GR
  3 A$main$2439        0A12 GR  |   3 A$main$2440        0A14 GR
  3 A$main$2441        0A16 GR  |   3 A$main$2442        0A18 GR
  3 A$main$2443        0A1A GR  |   3 A$main$2444        0A1C GR
  3 A$main$2445        0A1E GR  |   3 A$main$2446        0A21 GR
  3 A$main$2447        0A23 GR  |   3 A$main$2448        0A25 GR
  3 A$main$2449        0A27 GR  |   3 A$main$2450        0A29 GR
  3 A$main$2451        0A2B GR  |   3 A$main$2452        0A2D GR
  3 A$main$2457        0A31 GR  |   3 A$main$2463        0A34 GR
  3 A$main$2464        0A37 GR  |   3 A$main$2465        0A39 GR
  3 A$main$2471        0A3B GR  |   3 A$main$2472        0A3E GR
  3 A$main$2473        0A3F GR  |   3 A$main$2474        0A41 GR
  3 A$main$2479        0A43 GR  |   3 A$main$2480        0A45 GR
  3 A$main$2489        0A49 GR  |   3 A$main$2490        0A4B GR
  3 A$main$2491        0A4C GR  |   3 A$main$2492        0A4D GR
  3 A$main$2493        0A4E GR  |   3 A$main$2494        0A4F GR
  3 A$main$2495        0A50 GR  |   3 A$main$2496        0A51 GR
  3 A$main$2497        0A52 GR  |   3 A$main$2498        0A54 GR
  3 A$main$2499        0A56 GR  |   3 A$main$2500        0A57 GR
  3 A$main$2501        0A59 GR  |   3 A$main$2502        0A5A GR
  3 A$main$2503        0A5C GR  |   3 A$main$2504        0A5D GR
  3 A$main$2505        0A5E GR  |   3 A$main$2506        0A5F GR
  3 A$main$2507        0A60 GR  |   3 A$main$2508        0A61 GR
  3 A$main$2509        0A62 GR  |   3 A$main$2510        0A64 GR
  3 A$main$2511        0A68 GR  |   3 A$main$2520        0A6C GR
  3 A$main$2521        0A6E GR  |   3 A$main$2530        0A70 GR
  3 A$main$2531        0A72 GR  |   3 A$main$2540        0A74 GR
  3 A$main$2541        0A76 GR  |   3 A$main$2542        0A78 GR
  3 A$main$2543        0A7A GR  |   3 A$main$2544        0A7C GR
  3 A$main$2545        0A7E GR  |   3 A$main$2546        0A80 GR
  3 A$main$2547        0A84 GR  |   3 A$main$2557        0A87 GR
  3 A$main$2558        0A8A GR  |   3 A$main$2559        0A8B GR
  3 A$main$2560        0A8D GR  |   3 A$main$2561        0A90 GR
  3 A$main$2562        0A92 GR  |   3 A$main$2563        0A94 GR
  3 A$main$2564        0A96 GR  |   3 A$main$2565        0A98 GR
  3 A$main$2566        0A9B GR  |   3 A$main$2575        0A9E GR
  3 A$main$2576        0AA1 GR  |   3 A$main$2577        0AA3 GR
  3 A$main$2578        0AA6 GR  |   3 A$main$2579        0AA8 GR
  3 A$main$2580        0AAA GR  |   3 A$main$2581        0AAC GR
  3 A$main$2582        0AAE GR  |   3 A$main$2583        0AB1 GR
  3 A$main$2592        0AB4 GR  |   3 A$main$2593        0AB7 GR
  3 A$main$2594        0AB8 GR  |   3 A$main$2595        0ABA GR
  3 A$main$2596        0ABD GR  |   3 A$main$2597        0ABF GR
  3 A$main$2598        0AC1 GR  |   3 A$main$2599        0AC3 GR
  3 A$main$2600        0AC5 GR  |   3 A$main$2601        0AC8 GR
  3 A$main$2610        0ACB GR  |   3 A$main$2611        0ACE GR
  3 A$main$2612        0AD0 GR  |   3 A$main$2613        0AD2 GR
  3 A$main$2614        0AD5 GR  |   3 A$main$2615        0AD7 GR
  3 A$main$2616        0ADA GR  |   3 A$main$2617        0ADC GR
  3 A$main$2618        0ADE GR  |   3 A$main$2619        0AE1 GR
  3 A$main$2620        0AE4 GR  |   3 A$main$2626        0AE6 GR
  3 A$main$2636        0AE9 GR  |   3 A$main$2637        0AEC GR
  3 A$main$2638        0AED GR  |   3 A$main$2639        0AEF GR
  3 A$main$2640        0AF2 GR  |   3 A$main$2641        0AF4 GR
  3 A$main$2642        0AF6 GR  |   3 A$main$2643        0AF8 GR
  3 A$main$2644        0AFA GR  |   3 A$main$2645        0AFD GR
  3 A$main$2654        0B00 GR  |   3 A$main$2655        0B03 GR
  3 A$main$2656        0B05 GR  |   3 A$main$2657        0B08 GR
  3 A$main$2658        0B0A GR  |   3 A$main$2659        0B0C GR
  3 A$main$2660        0B0E GR  |   3 A$main$2661        0B10 GR
  3 A$main$2662        0B13 GR  |   3 A$main$2671        0B16 GR
  3 A$main$2672        0B19 GR  |   3 A$main$2673        0B1A GR
  3 A$main$2674        0B1C GR  |   3 A$main$2675        0B1F GR
  3 A$main$2676        0B21 GR  |   3 A$main$2677        0B24 GR
  3 A$main$2678        0B26 GR  |   3 A$main$2679        0B28 GR
  3 A$main$2680        0B2B GR  |   3 A$main$2689        0B2E GR
  3 A$main$2690        0B31 GR  |   3 A$main$2691        0B33 GR
  3 A$main$2692        0B35 GR  |   3 A$main$2693        0B38 GR
  3 A$main$2694        0B3A GR  |   3 A$main$2695        0B3D GR
  3 A$main$2696        0B3F GR  |   3 A$main$2697        0B41 GR
  3 A$main$2698        0B44 GR  |   3 A$main$2699        0B47 GR
  3 A$main$2704        0B49 GR  |   3 A$main$2707        0B4C GR
  3 A$main$2712        0B4E GR  |   3 A$main$2713        0B50 GR
  3 A$main$2714        0B52 GR  |   3 A$main$2715        0B54 GR
  3 A$main$2720        0B58 GR  |   3 A$main$2721        0B5A GR
  3 A$main$2726        0B5C GR  |   3 A$main$2727        0B5E GR
  3 A$main$2728        0B60 GR  |   3 A$main$2729        0B62 GR
  3 A$main$2730        0B64 GR  |   3 A$main$2731        0B65 GR
  3 A$main$2732        0B67 GR  |   3 A$main$2733        0B69 GR
  3 A$main$2734        0B6B GR  |   3 A$main$2735        0B6D GR
  3 A$main$2739        0B6F GR  |   3 A$main$2740        0B71 GR
  3 A$main$2745        0B73 GR  |   3 A$main$2746        0B75 GR
  3 A$main$2747        0B77 GR  |   3 A$main$2748        0B79 GR
  3 A$main$2749        0B7B GR  |   3 A$main$2754        0B7F GR
  3 A$main$2755        0B81 GR  |   3 A$main$2756        0B83 GR
  3 A$main$2757        0B87 GR  |   3 A$main$2758        0B89 GR
  3 A$main$2763        0B8D GR  |   3 A$main$2764        0B8F GR
  3 A$main$2765        0B91 GR  |   3 A$main$2771        0B95 GR
  3 A$main$2772        0B97 GR  |   3 A$main$2774        0B99 GR
  3 A$main$2775        0B9B GR  |   3 A$main$2781        0B9C GR
  3 A$main$2786        0B9F GR  |   3 A$main$2787        0BA1 GR
  3 A$main$2788        0BA3 GR  |   3 A$main$2789        0BA7 GR
  3 A$main$2790        0BA9 GR  |   3 A$main$2796        0BAD GR
  3 A$main$2797        0BAF GR  |   3 A$main$2798        0BB1 GR
  3 A$main$2800        0BB3 GR  |   3 A$main$2801        0BB6 GR
  3 A$main$2807        0BB8 GR  |   3 A$main$2812        0BBB GR
  3 A$main$2813        0BBD GR  |   3 A$main$2814        0BBF GR
  3 A$main$2815        0BC1 GR  |   3 A$main$2816        0BC3 GR
  3 A$main$2822        0BC5 GR  |   3 A$main$2823        0BC7 GR
  3 A$main$2824        0BC9 GR  |   3 A$main$2825        0BCD GR
  3 A$main$2831        0BCF GR  |   3 A$main$2836        0BD2 GR
  3 A$main$2837        0BD4 GR  |   3 A$main$2838        0BD6 GR
  3 A$main$2839        0BDA GR  |   3 A$main$2845        0BDC GR
  3 A$main$2850        0BDF GR  |   3 A$main$2851        0BE1 GR
  3 A$main$2852        0BE3 GR  |   3 A$main$2853        0BE7 GR
  3 A$main$2855        0BEA GR  |   3 A$main$2856        0BED GR
  3 A$main$2858        0BF0 GR  |   3 A$main$2859        0BF3 GR
  3 A$main$2861        0BF6 GR  |   3 A$main$2862        0BF9 GR
  3 A$main$2864        0BFC GR  |   3 A$main$2865        0BFF GR
  3 A$main$2867        0C01 GR  |   3 A$main$2868        0C04 GR
  3 A$main$2871        0C07 GR  |   3 A$main$2872        0C09 GR
  3 A$main$2877        0C0C GR  |   3 A$main$2878        0C0F GR
  3 A$main$2884        0C13 GR  |   3 A$main$2885        0C16 GR
  3 A$main$2890        0C19 GR  |   3 A$main$2891        0C1C GR
  3 A$main$2892        0C1E GR  |   3 A$main$2898        0C22 GR
  3 A$main$2899        0C25 GR  |   3 A$main$2904        0C29 GR
  3 A$main$2909        0C2C GR  |   3 A$main$2910        0C2F GR
  3 A$main$2915        0C32 GR  |   3 A$main$2916        0C34 GR
  3 A$main$2921        0C36 GR  |   3 A$main$2922        0C39 GR
  3 A$main$2923        0C3B GR  |   3 A$main$2924        0C3D GR
  3 A$main$2925        0C3F GR  |   3 A$main$2926        0C40 GR
  3 A$main$2927        0C42 GR  |   3 A$main$2928        0C45 GR
  3 A$main$2929        0C47 GR  |   3 A$main$2930        0C49 GR
  3 A$main$2934        0C4B GR  |   3 A$main$2939        0C4E GR
  3 A$main$2940        0C51 GR  |   3 A$main$2945        0C54 GR
  3 A$main$2946        0C56 GR  |   3 A$main$2952        0C5A GR
  3 A$main$2953        0C5C GR  |   3 A$main$2958        0C5E GR
  3 A$main$2959        0C60 GR  |   3 A$main$2960        0C62 GR
  3 A$main$2964        0C64 GR  |   3 A$main$2969        0C67 GR
  3 A$main$2970        0C69 GR  |   3 A$main$2975        0C6B GR
  3 A$main$2976        0C6E GR  |   3 A$main$2977        0C70 GR
  3 A$main$2978        0C72 GR  |   3 A$main$2979        0C74 GR
  3 A$main$2980        0C75 GR  |   3 A$main$2981        0C77 GR
  3 A$main$2982        0C7A GR  |   3 A$main$2983        0C7C GR
  3 A$main$2984        0C7E GR  |   3 A$main$2988        0C80 GR
  3 A$main$2989        0C82 GR  |   3 A$main$2992        0C84 GR
  3 A$main$2993        0C86 GR  |   3 A$main$2994        0C88 GR
  3 A$main$3001        0C8A GR  |   3 A$main$3002        0C8D GR
  3 A$main$3007        0C8F GR  |   3 A$main$3008        0C91 GR
  3 A$main$3009        0C95 GR  |   3 A$main$3010        0C97 GR
  3 A$main$3011        0C9B GR  |   3 A$main$3012        0C9D GR
  3 A$main$3018        0CA1 GR  |   3 A$main$3019        0CA4 GR
  3 A$main$3024        0CA6 GR  |   3 A$main$3025        0CA8 GR
  3 A$main$3026        0CAA GR  |   3 A$main$3027        0CAC GR
  3 A$main$3028        0CB0 GR  |   3 A$main$3029        0CB2 GR
  3 A$main$3030        0CB6 GR  |   3 A$main$3031        0CB8 GR
  3 A$main$3032        0CBC GR  |   3 A$main$3033        0CBE GR
  3 A$main$3034        0CC2 GR  |   3 A$main$3035        0CC4 GR
  3 A$main$3036        0CC8 GR  |   3 A$main$3037        0CCA GR
  3 A$main$3042        0CCC GR  |   3 A$main$3043        0CCF GR
  3 A$main$3044        0CD2 GR  |   3 A$main$3050        0CD4 GR
  3 A$main$3051        0CD7 GR  |   3 A$main$3057        0CDA GR
  3 A$main$3058        0CDC GR  |   3 A$main$3063        0CDF GR
  3 A$main$3069        0CE2 GR  |   3 A$main$3070        0CE5 GR
  3 A$main$3076        0CE9 GR  |   3 A$main$3077        0CEC GR
  3 A$main$3078        0CEE GR  |   3 A$main$3084        0CF2 GR
  3 A$main$3085        0CF5 GR  |   3 A$main$3091        0CF9 GR
  3 A$main$3092        0CFC GR  |   3 A$main$3097        0D00 GR
  3 A$main$3098        0D03 GR  |   3 A$main$3099        0D05 GR
  3 A$main$3104        0D09 GR  |   3 A$main$3105        0D0B GR
  3 A$main$3110        0D0D GR  |   3 A$main$3111        0D0F GR
  3 A$main$3116        0D11 GR  |   3 A$main$3117        0D14 GR
  3 A$main$3118        0D15 GR  |   3 A$main$3119        0D17 GR
  3 A$main$3120        0D18 GR  |   3 A$main$3121        0D19 GR
  3 A$main$3122        0D1B GR  |   3 A$main$3128        0D1F GR
  3 A$main$3129        0D21 GR  |   3 A$main$3134        0D23 GR
  3 A$main$3135        0D26 GR  |   3 A$main$3136        0D28 GR
  3 A$main$3137        0D2A GR  |   3 A$main$3138        0D2C GR
  3 A$main$3139        0D2E GR  |   3 A$main$3140        0D30 GR
  3 A$main$3141        0D34 GR  |   3 A$main$3142        0D38 GR
  3 A$main$3143        0D3B GR  |   3 A$main$3144        0D3E GR
  3 A$main$3146        0D40 GR  |   3 A$main$3147        0D42 GR
  3 A$main$3148        0D45 GR  |   3 A$main$3149        0D47 GR
  3 A$main$3150        0D49 GR  |   3 A$main$3152        0D4D GR
  3 A$main$3154        0D4F GR  |   3 A$main$3155        0D52 GR
  3 A$main$3156        0D54 GR  |   3 A$main$3157        0D56 GR
  3 A$main$3158        0D58 GR  |   3 A$main$3160        0D5C GR
  3 A$main$3161        0D5E GR  |   3 A$main$3162        0D60 GR
  3 A$main$3164        0D64 GR  |   3 A$main$3166        0D66 GR
  3 A$main$3167        0D68 GR  |   3 A$main$3168        0D6A GR
  3 A$main$3169        0D6C GR  |   3 A$main$3170        0D6E GR
  3 A$main$3171        0D70 GR  |   3 A$main$3172        0D72 GR
  3 A$main$3173        0D74 GR  |   3 A$main$3174        0D76 GR
  3 A$main$3175        0D78 GR  |   3 A$main$3180        0D7B GR
  3 A$main$3181        0D7D GR  |   3 A$main$3182        0D7F GR
  3 A$main$3183        0D82 GR  |   3 A$main$3184        0D84 GR
  3 A$main$3185        0D86 GR  |   3 A$main$3186        0D8A GR
  3 A$main$3187        0D8C GR  |   3 A$main$3189        0D8E GR
  3 A$main$3190        0D91 GR  |   3 A$main$3191        0D93 GR
  3 A$main$3192        0D96 GR  |   3 A$main$3193        0D98 GR
  3 A$main$3195        0D9C GR  |   3 A$main$3197        0D9E GR
  3 A$main$3198        0DA0 GR  |   3 A$main$3199        0DA2 GR
  3 A$main$3200        0DA4 GR  |   3 A$main$3201        0DA6 GR
  3 A$main$3202        0DA8 GR  |   3 A$main$3203        0DAA GR
  3 A$main$3204        0DAC GR  |   3 A$main$3205        0DAE GR
  3 A$main$3206        0DB0 GR  |   3 A$main$3211        0DB3 GR
  3 A$main$3212        0DB6 GR  |   3 A$main$3213        0DB8 GR
  3 A$main$3214        0DBA GR  |   3 A$main$3215        0DBC GR
  3 A$main$3216        0DBF GR  |   3 A$main$3217        0DC1 GR
  3 A$main$3218        0DC3 GR  |   3 A$main$3220        0DC7 GR
  3 A$main$3222        0DC9 GR  |   3 A$main$3223        0DCC GR
  3 A$main$3224        0DD0 GR  |   3 A$main$3225        0DD3 GR
  3 A$main$3226        0DD6 GR  |   3 A$main$3228        0DD8 GR
  3 A$main$3229        0DDA GR  |   3 A$main$3230        0DDC GR
  3 A$main$3231        0DDE GR  |   3 A$main$3232        0DE0 GR
  3 A$main$3233        0DE2 GR  |   3 A$main$3234        0DE4 GR
  3 A$main$3235        0DE6 GR  |   3 A$main$3236        0DE8 GR
  3 A$main$3237        0DEA GR  |   3 A$main$3238        0DEC GR
  3 A$main$3239        0DEE GR  |   3 A$main$3240        0DF1 GR
  3 A$main$3245        0DF4 GR  |   3 A$main$3246        0DF7 GR
  3 A$main$3247        0DFA GR  |   3 A$main$3248        0DFC GR
  3 A$main$3249        0DFE GR  |   3 A$main$3250        0E00 GR
  3 A$main$3252        0E04 GR  |   3 A$main$3254        0E06 GR
  3 A$main$3255        0E08 GR  |   3 A$main$3256        0E0A GR
  3 A$main$3257        0E0C GR  |   3 A$main$3258        0E0E GR
  3 A$main$3259        0E10 GR  |   3 A$main$3260        0E12 GR
  3 A$main$3261        0E13 GR  |   3 A$main$3266        0E16 GR
  3 A$main$3267        0E18 GR  |   3 A$main$3268        0E1A GR
  3 A$main$3269        0E1D GR  |   3 A$main$3270        0E1F GR
  3 A$main$3271        0E21 GR  |   3 A$main$3272        0E25 GR
  3 A$main$3273        0E28 GR  |   3 A$main$3275        0E2A GR
  3 A$main$3276        0E2D GR  |   3 A$main$3277        0E2F GR
  3 A$main$3278        0E32 GR  |   3 A$main$3279        0E34 GR
  3 A$main$3281        0E38 GR  |   3 A$main$3283        0E3B GR
  3 A$main$3284        0E3D GR  |   3 A$main$3285        0E3F GR
  3 A$main$3286        0E41 GR  |   3 A$main$3287        0E43 GR
  3 A$main$3288        0E46 GR  |   3 A$main$3289        0E48 GR
  3 A$main$3290        0E4B GR  |   3 A$main$3291        0E4D GR
  3 A$main$3292        0E50 GR  |   3 A$main$3297        0E53 GR
  3 A$main$3298        0E55 GR  |   3 A$main$3299        0E58 GR
  3 A$main$3300        0E5A GR  |   3 A$main$3301        0E5C GR
  3 A$main$3302        0E5E GR  |   3 A$main$3303        0E60 GR
  3 A$main$3304        0E63 GR  |   3 A$main$3305        0E64 GR
  3 A$main$3306        0E65 GR  |   3 A$main$3307        0E67 GR
  3 A$main$3308        0E69 GR  |   3 A$main$3309        0E6C GR
  3 A$main$3310        0E6E GR  |   3 A$main$3311        0E70 GR
  3 A$main$3312        0E71 GR  |   3 A$main$3317        0E74 GR
  3 A$main$3318        0E77 GR  |   3 A$main$3319        0E7A GR
  3 A$main$3320        0E7C GR  |   3 A$main$3321        0E7E GR
  3 A$main$3322        0E80 GR  |   3 A$main$3323        0E82 GR
  3 A$main$3324        0E86 GR  |   3 A$main$3326        0E89 GR
  3 A$main$3327        0E8C GR  |   3 A$main$3328        0E8E GR
  3 A$main$3329        0E90 GR  |   3 A$main$3330        0E92 GR
  3 A$main$3332        0E96 GR  |   3 A$main$3334        0E99 GR
  3 A$main$3335        0E9B GR  |   3 A$main$3336        0E9D GR
  3 A$main$3337        0E9F GR  |   3 A$main$3338        0EA2 GR
  3 A$main$3339        0EA5 GR  |   3 A$main$3340        0EA8 GR
  3 A$main$3341        0EAA GR  |   3 A$main$3342        0EAC GR
  3 A$main$3343        0EAF GR  |   3 A$main$3344        0EB1 GR
  3 A$main$3345        0EB4 GR  |   3 A$main$3350        0EB7 GR
  3 A$main$3351        0EBA GR  |   3 A$main$3352        0EBC GR
  3 A$main$3353        0EBE GR  |   3 A$main$3354        0EC0 GR
  3 A$main$3355        0EC4 GR  |   3 A$main$3357        0EC6 GR
  3 A$main$3358        0EC8 GR  |   3 A$main$3359        0ECA GR
  3 A$main$3360        0ECC GR  |   3 A$main$3361        0ECE GR
  3 A$main$3362        0ED0 GR  |   3 A$main$3363        0ED2 GR
  3 A$main$3364        0ED4 GR  |   3 A$main$3365        0ED5 GR
  3 A$main$3370        0ED8 GR  |   3 A$main$3371        0EDB GR
  3 A$main$3372        0EDE GR  |   3 A$main$3373        0EE0 GR
  3 A$main$3374        0EE3 GR  |   3 A$main$3375        0EE5 GR
  3 A$main$3376        0EE7 GR  |   3 A$main$3377        0EEB GR
  3 A$main$3378        0EED GR  |   3 A$main$3379        0EEF GR
  3 A$main$3380        0EF1 GR  |   3 A$main$3381        0EF3 GR
  3 A$main$3382        0EF5 GR  |   3 A$main$3383        0EF7 GR
  3 A$main$3385        0EFB GR  |   3 A$main$3386        0EFE GR
  3 A$main$3388        0F01 GR  |   3 A$main$3389        0F04 GR
  3 A$main$3390        0F08 GR  |   3 A$main$3391        0F0C GR
  3 A$main$3393        0F0F GR  |   3 A$main$3394        0F11 GR
  3 A$main$3395        0F13 GR  |   3 A$main$3396        0F15 GR
  3 A$main$3397        0F17 GR  |   3 A$main$3398        0F1A GR
  3 A$main$3399        0F1C GR  |   3 A$main$3400        0F1F GR
  3 A$main$3401        0F21 GR  |   3 A$main$3402        0F24 GR
  3 A$main$3407        0F27 GR  |   3 A$main$3408        0F29 GR
  3 A$main$3409        0F2B GR  |   3 A$main$3410        0F2D GR
  3 A$main$3411        0F30 GR  |   3 A$main$3412        0F32 GR
  3 A$main$3413        0F34 GR  |   3 A$main$3414        0F38 GR
  3 A$main$3416        0F3B GR  |   3 A$main$3417        0F3E GR
  3 A$main$3418        0F40 GR  |   3 A$main$3419        0F43 GR
  3 A$main$3420        0F45 GR  |   3 A$main$3422        0F49 GR
  3 A$main$3424        0F4C GR  |   3 A$main$3425        0F4E GR
  3 A$main$3426        0F50 GR  |   3 A$main$3427        0F52 GR
  3 A$main$3428        0F55 GR  |   3 A$main$3429        0F57 GR
  3 A$main$3430        0F5A GR  |   3 A$main$3431        0F5C GR
  3 A$main$3432        0F5F GR  |   3 A$main$3437        0F62 GR
  3 A$main$3438        0F64 GR  |   3 A$main$3439        0F66 GR
  3 A$main$3440        0F69 GR  |   3 A$main$3441        0F6B GR
  3 A$main$3442        0F6D GR  |   3 A$main$3443        0F71 GR
  3 A$main$3444        0F74 GR  |   3 A$main$3445        0F77 GR
  3 A$main$3447        0F7A GR  |   3 A$main$3448        0F7D GR
  3 A$main$3449        0F7F GR  |   3 A$main$3450        0F82 GR
  3 A$main$3451        0F84 GR  |   3 A$main$3452        0F87 GR
  3 A$main$3453        0F8A GR  |   3 A$main$3454        0F8C GR
  3 A$main$3455        0F90 GR  |   3 A$main$3457        0F93 GR
  3 A$main$3458        0F96 GR  |   3 A$main$3459        0F98 GR
  3 A$main$3460        0F9B GR  |   3 A$main$3461        0F9D GR
  3 A$main$3462        0FA0 GR  |   3 A$main$3463        0FA2 GR
  3 A$main$3464        0FA5 GR  |   3 A$main$3465        0FA7 GR
  3 A$main$3467        0FAB GR  |   3 A$main$3468        0FAE GR
  3 A$main$3469        0FB0 GR  |   3 A$main$3471        0FB4 GR
  3 A$main$3473        0FB7 GR  |   3 A$main$3474        0FB9 GR
  3 A$main$3475        0FBB GR  |   3 A$main$3476        0FBD GR
  3 A$main$3477        0FBF GR  |   3 A$main$3478        0FC2 GR
  3 A$main$3479        0FC4 GR  |   3 A$main$3480        0FC7 GR
  3 A$main$3481        0FC9 GR  |   3 A$main$3482        0FCC GR
  3 A$main$3487        0FCF GR  |   3 A$main$3488        0FD2 GR
  3 A$main$3489        0FD4 GR  |   3 A$main$3490        0FD6 GR
  3 A$main$3491        0FD8 GR  |   3 A$main$3493        0FDC GR
  3 A$main$3495        0FDE GR  |   3 A$main$3496        0FE0 GR
  3 A$main$3497        0FE2 GR  |   3 A$main$3498        0FE4 GR
  3 A$main$3499        0FE6 GR  |   3 A$main$3500        0FE8 GR
  3 A$main$3501        0FEA GR  |   3 A$main$3502        0FEC GR
  3 A$main$3503        0FED GR  |   3 A$main$3508        0FF0 GR
  3 A$main$3509        0FF2 GR  |   3 A$main$3510        0FF5 GR
  3 A$main$3511        0FF7 GR  |   3 A$main$3512        0FF9 GR
  3 A$main$3513        0FFB GR  |   3 A$main$3515        0FFF GR
  3 A$main$3517        1001 GR  |   3 A$main$3518        1003 GR
  3 A$main$3519        1005 GR  |   3 A$main$3520        1007 GR
  3 A$main$3521        1009 GR  |   3 A$main$3522        100B GR
  3 A$main$3523        100D GR  |   3 A$main$3524        100E GR
  3 A$main$3529        1011 GR  |   3 A$main$3530        1013 GR
  3 A$main$3531        1015 GR  |   3 A$main$3532        1017 GR
  3 A$main$3533        1019 GR  |   3 A$main$3534        101D GR
  3 A$main$3536        101F GR  |   3 A$main$3537        1021 GR
  3 A$main$3538        1023 GR  |   3 A$main$3539        1025 GR
  3 A$main$3540        1027 GR  |   3 A$main$3541        1029 GR
  3 A$main$3542        102B GR  |   3 A$main$3543        102D GR
  3 A$main$3544        102E GR  |   3 A$main$3549        1031 GR
  3 A$main$3550        1033 GR  |   3 A$main$3551        1035 GR
  3 A$main$3552        1037 GR  |   3 A$main$3553        1039 GR
  3 A$main$3555        103D GR  |   3 A$main$3557        103F GR
  3 A$main$3558        1041 GR  |   3 A$main$3559        1043 GR
  3 A$main$3560        1045 GR  |   3 A$main$3561        1047 GR
  3 A$main$3562        1049 GR  |   3 A$main$3563        104B GR
  3 A$main$3564        104D GR  |   3 A$main$3565        104E GR
  3 A$main$3570        1051 GR  |   3 A$main$3571        1053 GR
  3 A$main$3576        1056 GR  |   3 A$main$3577        1059 GR
  3 A$main$3578        105B GR  |   3 A$main$3579        105C GR
  3 A$main$3580        1060 GR  |   3 A$main$3581        1062 GR
  3 A$main$3589        1065 GR  |   3 A$main$3590        1068 GR
  3 A$main$3596        106C GR  |   3 A$main$3597        106F GR
  3 A$main$3603        1073 GR  |   3 A$main$3604        1076 GR
  3 A$main$3610        107A GR  |   3 A$main$3611        107D GR
  3 A$main$3617        1081 GR  |   3 A$main$3618        1084 GR
  3 A$main$3624        1088 GR  |   3 A$main$3625        108B GR
  3 A$main$3631        108F GR  |   3 A$main$3632        1092 GR
  3 A$main$3638        1096 GR  |   3 A$main$3639        1099 GR
  3 A$main$3645        109D GR  |   3 A$main$3646        10A0 GR
  3 A$main$3652        10A4 GR  |   3 A$main$3653        10A7 GR
  3 A$main$3658        10AB GR  |   3 A$main$3659        10AE GR
  3 A$main$3665        10B2 GR  |   3 A$main$3666        10B4 GR
  3 A$main$3671        10B7 GR  |   3 A$main$3677        10BB GR
  3 A$main$3678        10BF GR  |   3 A$main$3679        10C1 GR
  3 A$main$3684        10C5 GR  |   3 A$main$3685        10C7 GR
  3 A$main$3690        10C9 GR  |   3 A$main$3691        10CB GR
  3 A$main$3692        10CD GR  |   3 A$main$3694        10CE GR
  3 A$main$3697        10D0 GR  |   3 A$main$3698        10D2 GR
  3 A$main$3703        10D5 GR  |   3 A$main$3704        10D8 GR
  3 A$main$3705        10DA GR  |   3 A$main$3706        10DC GR
  3 A$main$3707        10DE GR  |   3 A$main$3708        10DF GR
  3 A$main$3709        10E1 GR  |   3 A$main$3710        10E4 GR
  3 A$main$3711        10E6 GR  |   3 A$main$3712        10E8 GR
  3 A$main$3716        10EA GR  |   3 A$main$3717        10EC GR
  3 A$main$3722        10EE GR  |   3 A$main$3724        10F1 GR
  3 A$main$3725        10F3 GR  |   3 A$main$3726        10F7 GR
  3 A$main$3728        10FB GR  |   3 A$main$3729        10FE GR
  3 A$main$3731        1100 GR  |   3 A$main$3732        1103 GR
  3 A$main$3733        1105 GR  |   3 A$main$3738        1109 GR
  3 A$main$3739        110B GR  |   3 A$main$3744        110D GR
  3 A$main$3745        110F GR  |   3 A$main$3750        1111 GR
  3 A$main$3751        1114 GR  |   3 A$main$3752        1117 GR
  3 A$main$3754        111A GR  |   3 A$main$3755        111D GR
  3 A$main$3757        1120 GR  |   3 A$main$3758        1123 GR
  3 A$main$3764        1126 GR  |   3 A$main$3765        1128 GR
  3 A$main$3770        112A GR  |   3 A$main$3771        112C GR
  3 A$main$3776        112E GR  |   3 A$main$3777        1131 GR
  3 A$main$3781        1134 GR  |   3 A$main$3783        1137 GR
  3 A$main$3785        113A GR  |   3 A$main$3786        113D GR
  3 A$main$3788        1140 GR  |   3 A$main$3789        1143 GR
  3 A$main$3790        1144 GR  |   3 A$main$3791        1145 GR
  3 A$main$3792        1147 GR  |   3 A$main$3793        1149 GR
  3 A$main$3794        114B GR  |   3 A$main$3795        114D GR
  3 A$main$3796        114F GR  |   3 A$main$3797        1152 GR
  3 A$main$3798        1155 GR  |   3 A$main$3800        1158 GR
  3 A$main$3801        115B GR  |   3 A$main$3802        115D GR
  3 A$main$3804        1161 GR  |   3 A$main$3805        1164 GR
  3 A$main$3806        1167 GR  |   3 A$main$3807        116A GR
  3 A$main$3808        116C GR  |   3 A$main$3809        116E GR
  3 A$main$3810        1170 GR  |   3 A$main$3811        1172 GR
  3 A$main$3813        1176 GR  |   3 A$main$3814        1178 GR
  3 A$main$3816        117B GR  |   3 A$main$3817        117E GR
  3 A$main$3818        1180 GR  |   3 A$main$3819        1183 GR
  3 A$main$3820        1185 GR  |   3 A$main$3821        1188 GR
  3 A$main$3822        118B GR  |   3 A$main$3824        118E GR
  3 A$main$3825        1191 GR  |   3 A$main$3826        1193 GR
  3 A$main$3828        1197 GR  |   3 A$main$3829        119B GR
  3 A$main$3830        119E GR  |   3 A$main$3831        11A1 GR
  3 A$main$3832        11A3 GR  |   3 A$main$3833        11A6 GR
  3 A$main$3834        11A8 GR  |   3 A$main$3836        11AC GR
  3 A$main$3837        11AF GR  |   3 A$main$3839        11B2 GR
  3 A$main$3840        11B5 GR  |   3 A$main$3841        11B6 GR
  3 A$main$3842        11B7 GR  |   3 A$main$3843        11B9 GR
  3 A$main$3844        11BB GR  |   3 A$main$3845        11BD GR
  3 A$main$3846        11BF GR  |   3 A$main$3848        11C2 GR
  3 A$main$3849        11C4 GR  |   3 A$main$3850        11C7 GR
  3 A$main$3851        11CA GR  |   3 A$main$3853        11CD GR
  3 A$main$3855        11D0 GR  |   3 A$main$3856        11D3 GR
  3 A$main$3857        11D6 GR  |   3 A$main$3863        11D9 GR
  3 A$main$3868        11DC GR  |   3 A$main$3869        11DF GR
  3 A$main$3871        11E2 GR  |   3 A$main$3872        11E5 GR
  3 A$main$3873        11E6 GR  |   3 A$main$3874        11E8 GR
  3 A$main$3875        11EA GR  |   3 A$main$3876        11ED GR
  3 A$main$3877        11EF GR  |   3 A$main$3878        11F1 GR
  3 A$main$3879        11F5 GR  |   3 A$main$3881        11F8 GR
  3 A$main$3882        11FB GR  |   3 A$main$3887        11FF GR
  3 A$main$3888        1201 GR  |   3 A$main$3893        1203 GR
  3 A$main$3894        1205 GR  |   3 A$main$3899        1207 GR
  3 A$main$3900        120A GR  |   3 A$main$3901        120B GR
  3 A$main$3902        120C GR  |   3 A$main$3903        120D GR
  3 A$main$3904        120E GR  |   3 A$main$3905        1210 GR
  3 A$main$3906        1214 GR  |   3 A$main$3908        1217 GR
  3 A$main$3909        121A GR  |   3 A$main$3910        121B GR
  3 A$main$3911        121D GR  |   3 A$main$3912        121F GR
  3 A$main$3913        1222 GR  |   3 A$main$3914        1224 GR
  3 A$main$3915        1226 GR  |   3 A$main$3916        122A GR
  3 A$main$3922        122D GR  |   3 A$main$3923        122F GR
  3 A$main$3928        1231 GR  |   3 A$main$3929        1233 GR
  3 A$main$3934        1235 GR  |   3 A$main$3935        1237 GR
  3 A$main$3940        1239 GR  |   3 A$main$3945        123C GR
  3 A$main$3946        123F GR  |   3 A$main$3947        1243 GR
  3 A$main$3948        1245 GR  |   3 A$main$3949        1248 GR
  3 A$main$3951        124B GR  |   3 A$main$3952        124D GR
  3 A$main$3953        124F GR  |   3 A$main$3954        1252 GR
  3 A$main$3955        1255 GR  |   3 A$main$3956        1257 GR
  3 A$main$3958        125B GR  |   3 A$main$3959        125E GR
  3 A$main$3960        125F GR  |   3 A$main$3961        1261 GR
  3 A$main$3962        1263 GR  |   3 A$main$3963        1265 GR
  3 A$main$3964        1267 GR  |   3 A$main$3965        1269 GR
  3 A$main$3966        126D GR  |   3 A$main$3967        1270 GR
  3 A$main$3968        1273 GR  |   3 A$main$3970        1276 GR
  3 A$main$3971        1278 GR  |   3 A$main$3972        127B GR
  3 A$main$3973        127D GR  |   3 A$main$3975        1281 GR
  3 A$main$3976        1284 GR  |   3 A$main$3977        1285 GR
  3 A$main$3978        1287 GR  |   3 A$main$3979        1289 GR
  3 A$main$3980        128B GR  |   3 A$main$3981        128D GR
  3 A$main$3982        128F GR  |   3 A$main$3983        1293 GR
  3 A$main$3985        1296 GR  |   3 A$main$3986        1299 GR
  3 A$main$3987        129B GR  |   3 A$main$3989        129F GR
  3 A$main$3990        12A2 GR  |   3 A$main$3991        12A3 GR
  3 A$main$3992        12A5 GR  |   3 A$main$3993        12A7 GR
  3 A$main$3994        12AA GR  |   3 A$main$3995        12AC GR
  3 A$main$3996        12AE GR  |   3 A$main$3997        12B2 GR
  3 A$main$3999        12B5 GR  |   3 A$main$4000        12B9 GR
  3 A$main$4001        12BB GR  |   3 A$main$4002        12BD GR
  3 A$main$4004        12C1 GR  |   3 A$main$4005        12C4 GR
  3 A$main$4006        12C5 GR  |   3 A$main$4007        12C7 GR
  3 A$main$4008        12C9 GR  |   3 A$main$4009        12CC GR
  3 A$main$4010        12CE GR  |   3 A$main$4011        12D0 GR
  3 A$main$4012        12D4 GR  |   3 A$main$4013        12D8 GR
  3 A$main$4015        12DB GR  |   3 A$main$4016        12DE GR
  3 A$main$4017        12DF GR  |   3 A$main$4018        12E1 GR
  3 A$main$4019        12E3 GR  |   3 A$main$4020        12E6 GR
  3 A$main$4021        12E8 GR  |   3 A$main$4022        12EA GR
  3 A$main$4023        12EE GR  |   3 A$main$4025        12F1 GR
  3 A$main$4026        12F4 GR  |   3 A$main$4027        12F5 GR
  3 A$main$4028        12F7 GR  |   3 A$main$4029        12F9 GR
  3 A$main$4030        12FB GR  |   3 A$main$4031        12FD GR
  3 A$main$4032        12FF GR  |   3 A$main$4033        1303 GR
  3 A$main$4039        1306 GR  |   3 A$main$4040        1309 GR
  3 A$main$4041        130C GR  |   3 A$main$4043        130F GR
  3 A$main$4044        1311 GR  |   3 A$main$4045        1314 GR
  3 A$main$4046        1316 GR  |   3 A$main$4047        131A GR
  3 A$main$4049        131D GR  |   3 A$main$4050        131F GR
  3 A$main$4051        1321 GR  |   3 A$main$4052        1323 GR
  3 A$main$4053        1327 GR  |   3 A$main$4055        132A GR
  3 A$main$4056        132D GR  |   3 A$main$4057        132F GR
  3 A$main$4058        1331 GR  |   3 A$main$4059        1335 GR
  3 A$main$4061        1338 GR  |   3 A$main$4062        133A GR
  3 A$main$4063        133D GR  |   3 A$main$4064        133F GR
  3 A$main$4065        1343 GR  |   3 A$main$4071        1346 GR
  3 A$main$4072        1348 GR  |   3 A$main$4077        134A GR
  3 A$main$4078        134C GR  |   3 A$main$4083        134F GR
  3 A$main$4084        1352 GR  |   3 A$main$4085        1354 GR
  3 A$main$4086        1356 GR  |   3 A$main$4087        1358 GR
  3 A$main$4088        1359 GR  |   3 A$main$4089        135B GR
  3 A$main$4090        135E GR  |   3 A$main$4091        1360 GR
  3 A$main$4092        1362 GR  |   3 A$main$4096        1364 GR
  3 A$main$4097        1366 GR  |   3 A$main$4102        1368 GR
  3 A$main$4107        136B GR  |   3 A$main$4108        136E GR
  3 A$main$4114        1372 GR  |   3 A$main$4115        1374 GR
  3 A$main$4120        1376 GR  |   3 A$main$4121        1378 GR
  3 A$main$4126        137B GR  |   3 A$main$4127        137E GR
  3 A$main$4128        1380 GR  |   3 A$main$4129        1382 GR
  3 A$main$4130        1384 GR  |   3 A$main$4131        1385 GR
  3 A$main$4132        1387 GR  |   3 A$main$4133        138A GR
  3 A$main$4134        138C GR  |   3 A$main$4135        138E GR
  3 A$main$4139        1390 GR  |   3 A$main$4140        1392 GR
  3 A$main$4145        1394 GR  |   3 A$main$4146        1396 GR
  3 A$main$4147        1399 GR  |   3 A$main$4153        139C GR
  3 A$main$4154        139E GR  |   3 A$main$4159        13A0 GR
  3 A$main$4160        13A2 GR  |   3 A$main$4165        13A5 GR
  3 A$main$4166        13A8 GR  |   3 A$main$4167        13AA GR
  3 A$main$4168        13AC GR  |   3 A$main$4169        13AE GR
  3 A$main$4170        13AF GR  |   3 A$main$4171        13B1 GR
  3 A$main$4172        13B4 GR  |   3 A$main$4173        13B6 GR
  3 A$main$4174        13B8 GR  |   3 A$main$4178        13BA GR
  3 A$main$4179        13BC GR  |   3 A$main$4184        13BE GR
  3 A$main$4185        13C0 GR  |   3 A$main$4186        13C3 GR
  3 A$main$4192        13C6 GR  |   3 A$main$4193        13C8 GR
  3 A$main$4198        13CA GR  |   3 A$main$4199        13CC GR
  3 A$main$4204        13CF GR  |   3 A$main$4205        13D2 GR
  3 A$main$4206        13D4 GR  |   3 A$main$4207        13D6 GR
  3 A$main$4208        13D8 GR  |   3 A$main$4209        13D9 GR
  3 A$main$4210        13DB GR  |   3 A$main$4211        13DE GR
  3 A$main$4212        13E0 GR  |   3 A$main$4213        13E2 GR
  3 A$main$4217        13E4 GR  |   3 A$main$4218        13E6 GR
  3 A$main$4223        13E8 GR  |   3 A$main$4224        13EA GR
  3 A$main$4225        13ED GR  |   3 A$main$4231        13F0 GR
  3 A$main$4232        13F2 GR  |   3 A$main$4237        13F4 GR
  3 A$main$4238        13F6 GR  |   3 A$main$4243        13F9 GR
  3 A$main$4244        13FC GR  |   3 A$main$4245        13FE GR
  3 A$main$4246        1400 GR  |   3 A$main$4247        1402 GR
  3 A$main$4248        1403 GR  |   3 A$main$4249        1405 GR
  3 A$main$4250        1408 GR  |   3 A$main$4251        140A GR
  3 A$main$4252        140C GR  |   3 A$main$4256        140E GR
  3 A$main$4257        1410 GR  |   3 A$main$4262        1412 GR
  3 A$main$4263        1414 GR  |   3 A$main$4264        1417 GR
  3 A$main$4270        141A GR  |   3 A$main$4271        141C GR
  3 A$main$4276        141E GR  |   3 A$main$4281        1421 GR
  3 A$main$4282        1424 GR  |   3 A$main$4283        1426 GR
  3 A$main$4284        1428 GR  |   3 A$main$4285        142A GR
  3 A$main$4286        142B GR  |   3 A$main$4287        142D GR
  3 A$main$4288        1430 GR  |   3 A$main$4289        1432 GR
  3 A$main$4290        1434 GR  |   3 A$main$4294        1436 GR
  3 A$main$4295        1438 GR  |   3 A$main$4300        143A GR
  3 A$main$4301        143C GR  |   3 A$main$4302        143F GR
  3 A$main$4308        1442 GR  |   3 A$main$4309        1444 GR
  3 A$main$4314        1446 GR  |   3 A$main$4315        1448 GR
  3 A$main$4320        144B GR  |   3 A$main$4321        144E GR
  3 A$main$4322        1450 GR  |   3 A$main$4323        1452 GR
  3 A$main$4324        1454 GR  |   3 A$main$4325        1455 GR
  3 A$main$4326        1457 GR  |   3 A$main$4327        145A GR
  3 A$main$4328        145C GR  |   3 A$main$4329        145E GR
  3 A$main$4333        1460 GR  |   3 A$main$4334        1462 GR
  3 A$main$4339        1464 GR  |   3 A$main$4340        1466 GR
  3 A$main$4341        1469 GR  |   3 A$main$4347        146C GR
  3 A$main$4348        146E GR  |   3 A$main$4353        1470 GR
  3 A$main$4354        1472 GR  |   3 A$main$4359        1475 GR
  3 A$main$4360        1478 GR  |   3 A$main$4361        147A GR
  3 A$main$4362        147C GR  |   3 A$main$4363        147E GR
  3 A$main$4364        147F GR  |   3 A$main$4365        1481 GR
  3 A$main$4366        1484 GR  |   3 A$main$4367        1486 GR
  3 A$main$4368        1488 GR  |   3 A$main$4372        148A GR
  3 A$main$4373        148C GR  |   3 A$main$4378        148E GR
  3 A$main$4379        1490 GR  |   3 A$main$4380        1493 GR
  3 A$main$4386        1496 GR  |   3 A$main$4387        1498 GR
  3 A$main$4392        149A GR  |   3 A$main$4393        149C GR
  3 A$main$4398        149F GR  |   3 A$main$4399        14A2 GR
  3 A$main$4400        14A4 GR  |   3 A$main$4401        14A6 GR
  3 A$main$4402        14A8 GR  |   3 A$main$4403        14A9 GR
  3 A$main$4404        14AB GR  |   3 A$main$4405        14AE GR
  3 A$main$4406        14B0 GR  |   3 A$main$4407        14B2 GR
  3 A$main$4411        14B4 GR  |   3 A$main$4412        14B6 GR
  3 A$main$4417        14B8 GR  |   3 A$main$4418        14BA GR
  3 A$main$4419        14BD GR  |   3 A$main$4425        14C0 GR
  3 A$main$4426        14C2 GR  |   3 A$main$4431        14C4 GR
  3 A$main$4432        14C6 GR  |   3 A$main$4437        14C9 GR
  3 A$main$4438        14CC GR  |   3 A$main$4439        14CE GR
  3 A$main$4440        14D0 GR  |   3 A$main$4441        14D2 GR
  3 A$main$4442        14D3 GR  |   3 A$main$4443        14D5 GR
  3 A$main$4444        14D8 GR  |   3 A$main$4445        14DA GR
  3 A$main$4446        14DC GR  |   3 A$main$4450        14DE GR
  3 A$main$4451        14E0 GR  |   3 A$main$4456        14E2 GR
  3 A$main$4457        14E4 GR  |   3 A$main$4458        14E7 GR
  3 A$main$4464        14EA GR  |   3 A$main$4465        14EC GR
  3 A$main$4470        14EE GR  |   3 A$main$4471        14F0 GR
  3 A$main$4476        14F3 GR  |   3 A$main$4477        14F6 GR
  3 A$main$4478        14F8 GR  |   3 A$main$4479        14FA GR
  3 A$main$4480        14FC GR  |   3 A$main$4481        14FD GR
  3 A$main$4482        14FF GR  |   3 A$main$4483        1502 GR
  3 A$main$4484        1504 GR  |   3 A$main$4485        1506 GR
  3 A$main$4489        1508 GR  |   3 A$main$4490        150A GR
  3 A$main$4495        150C GR  |   3 A$main$4496        150D GR
  3 A$main$4497        1510 GR  |   3 A$main$4499        1513 GR
  3 A$main$4500        1516 GR  |   3 A$main$4501        1518 GR
  3 A$main$4502        151A GR  |   3 A$main$4503        151E GR
  3 A$main$4504        1521 GR  |   3 A$main$4505        1523 GR
  3 A$main$4506        1525 GR  |   3 A$main$4507        1527 GR
  3 A$main$4508        1529 GR  |   3 A$main$4510        152C GR
  3 A$main$4511        152F GR  |   3 A$main$4512        1532 GR
  3 A$main$4513        1535 GR  |   3 A$main$4514        1536 GR
  3 A$main$4515        1537 GR  |   3 A$main$4516        153A GR
  3 A$main$4517        153C GR  |   3 A$main$4518        153F GR
  3 A$main$4519        1542 GR  |   3 A$main$4521        1545 GR
  3 A$main$4522        1547 GR  |   3 A$main$4523        154A GR
  3 A$main$4525        154D GR  |   3 A$main$4526        1550 GR
  3 A$main$4527        1552 GR  |   3 A$main$4528        1554 GR
  3 A$main$4529        1556 GR  |   3 A$main$4530        155A GR
  3 A$main$4531        155D GR  |   3 A$main$4532        155F GR
  3 A$main$4533        1561 GR  |   3 A$main$4534        1563 GR
  3 A$main$4535        1565 GR  |   3 A$main$4537        1568 GR
  3 A$main$4538        156A GR  |   3 A$main$4539        156C GR
  3 A$main$4540        156E GR  |   3 A$main$4541        1572 GR
  3 A$main$4542        1574 GR  |   3 A$main$4543        1576 GR
  3 A$main$4544        1578 GR  |   3 A$main$4546        157B GR
  3 A$main$4547        157F GR  |   3 A$main$4548        1582 GR
  3 A$main$4549        1585 GR  |   3 A$main$4550        1587 GR
  3 A$main$4551        158A GR  |   3 A$main$4552        158C GR
  3 A$main$4553        1590 GR  |   3 A$main$4554        1592 GR
  3 A$main$4556        1595 GR  |   3 A$main$4557        1597 GR
  3 A$main$4558        1599 GR  |   3 A$main$4559        159B GR
  3 A$main$4560        159D GR  |   3 A$main$4561        159F GR
  3 A$main$4562        15A1 GR  |   3 A$main$4563        15A5 GR
  3 A$main$4564        15A8 GR  |   3 A$main$4565        15A9 GR
  3 A$main$4566        15AA GR  |   3 A$main$4567        15AD GR
  3 A$main$4568        15AF GR  |   3 A$main$4569        15B2 GR
  3 A$main$4570        15B5 GR  |   3 A$main$4572        15B8 GR
  3 A$main$4573        15BA GR  |   3 A$main$4574        15BB GR
  3 A$main$4575        15BC GR  |   3 A$main$4576        15BF GR
  3 A$main$4577        15C1 GR  |   3 A$main$4578        15C4 GR
  3 A$main$4579        15C7 GR  |   3 A$main$4581        15CA GR
  3 A$main$4582        15CC GR  |   3 A$main$4583        15CF GR
  3 A$main$4584        15D1 GR  |   3 A$main$4585        15D5 GR
  3 A$main$4586        15D8 GR  |   3 A$main$4587        15D9 GR
  3 A$main$4588        15DA GR  |   3 A$main$4589        15DC GR
  3 A$main$4590        15DE GR  |   3 A$main$4591        15E0 GR
  3 A$main$4592        15E2 GR  |   3 A$main$4594        15E5 GR
  3 A$main$4595        15E8 GR  |   3 A$main$4596        15E9 GR
  3 A$main$4597        15EA GR  |   3 A$main$4598        15EC GR
  3 A$main$4599        15EE GR  |   3 A$main$4600        15F0 GR
  3 A$main$4601        15F2 GR  |   3 A$main$4602        15F4 GR
  3 A$main$4603        15F7 GR  |   3 A$main$4604        15F9 GR
  3 A$main$4606        15FC GR  |   3 A$main$4607        15FF GR
  3 A$main$4608        1601 GR  |   3 A$main$4609        1603 GR
  3 A$main$4610        1605 GR  |   3 A$main$4611        1609 GR
  3 A$main$4612        160C GR  |   3 A$main$4613        160D GR
  3 A$main$4614        160E GR  |   3 A$main$4615        1610 GR
  3 A$main$4616        1612 GR  |   3 A$main$4617        1614 GR
  3 A$main$4618        1616 GR  |   3 A$main$4620        1619 GR
  3 A$main$4621        161C GR  |   3 A$main$4622        161E GR
  3 A$main$4623        1620 GR  |   3 A$main$4624        1622 GR
  3 A$main$4625        1624 GR  |   3 A$main$4627        1627 GR
  3 A$main$4628        1629 GR  |   3 A$main$4629        162C GR
  3 A$main$4630        162E GR  |   3 A$main$4631        1632 GR
  3 A$main$4632        1635 GR  |   3 A$main$4633        1637 GR
  3 A$main$4634        1639 GR  |   3 A$main$4635        163B GR
  3 A$main$4636        163D GR  |   3 A$main$4642        1640 GR
  3 A$main$4643        1643 GR  |   3 A$main$4644        1647 GR
  3 A$main$4645        1649 GR  |   3 A$main$4646        164C GR
  3 A$main$4652        164F GR  |   3 A$main$4653        1652 GR
  3 A$main$4654        1655 GR  |   3 A$main$4656        1658 GR
  3 A$main$4657        165B GR  |   3 A$main$4658        165C GR
  3 A$main$4659        165D GR  |   3 A$main$4660        165F GR
  3 A$main$4661        1661 GR  |   3 A$main$4662        1663 GR
  3 A$main$4663        1665 GR  |   3 A$main$4669        1668 GR
  3 A$main$4670        166B GR  |   3 A$main$4671        166E GR
  3 A$main$4677        1671 GR  |   3 A$main$4682        1674 GR
  3 A$main$4683        1677 GR  |   3 A$main$4689        167A GR
  3 A$main$4690        167D GR  |   3 A$main$4691        1680 GR
  3 A$main$4697        1683 GR  |   3 A$main$4698        1686 GR
  3 A$main$4699        1689 GR  |   3 A$main$4718        173F GR
  3 A$main$4719        1741 GR  |   3 A$main$4724        1743 GR
  3 A$main$4729        1746 GR  |   3 A$main$4730        1749 GR
  3 A$main$4731        174A GR  |   3 A$main$4736        174C GR
  3 A$main$4737        174E GR  |   3 A$main$4738        1751 GR
  3 A$main$4739        1753 GR  |   3 A$main$4740        1755 GR
  3 A$main$4741        1758 GR  |   3 A$main$4742        175A GR
  3 A$main$4753        175D GR  |   3 A$main$4754        175F GR
  3 A$main$4755        1762 GR  |   3 A$main$4756        1763 GR
  3 A$main$4757        1764 GR  |   3 A$main$4758        1765 GR
  3 A$main$4759        1767 GR  |   3 A$main$4760        176B GR
  3 A$main$4765        176D GR  |   3 A$main$4766        1770 GR
  3 A$main$4767        1773 GR  |   3 A$main$4768        1776 GR
  3 A$main$4769        1778 GR  |   3 A$main$4774        177B GR
  3 A$main$4775        177D GR  |   3 A$main$4776        1780 GR
  3 A$main$4777        1781 GR  |   3 A$main$4778        1782 GR
  3 A$main$4779        1783 GR  |   3 A$main$4780        1785 GR
  3 A$main$4785        178A GR  |   3 A$main$4786        178D GR
  3 A$main$4787        178F GR  |   3 A$main$4788        1790 GR
  3 A$main$4789        1792 GR  |   3 A$main$4790        1795 GR
  3 A$main$4791        1796 GR  |   3 A$main$4792        1799 GR
  3 A$main$4793        179B GR  |   3 A$main$4794        179D GR
  3 A$main$4795        179F GR  |   3 A$main$4796        17A1 GR
  3 A$main$4797        17A3 GR  |   3 A$main$4798        17A6 GR
  3 A$main$4799        17A8 GR  |   3 A$main$4804        17AB GR
  3 A$main$4805        17AD GR  |   3 A$main$4806        17B0 GR
  3 A$main$4807        17B1 GR  |   3 A$main$4808        17B2 GR
  3 A$main$4809        17B3 GR  |   3 A$main$4810        17B5 GR
  3 A$main$4815        17B9 GR  |   3 A$main$4820        17BC GR
  3 A$main$4821        17BF GR  |   3 A$main$4822        17C1 GR
  3 A$main$4823        17C5 GR  |   3 A$main$4824        17C7 GR
  3 A$main$4825        17CB GR  |   3 A$main$4826        17CD GR
  3 A$main$4827        17CF GR  |   3 A$main$4828        17D2 GR
  3 A$main$4829        17D4 GR  |   3 A$main$4835        17D8 GR
  3 A$main$4836        17DB GR  |   3 A$main$4837        17DE GR
  3 A$main$4838        17E1 GR  |   3 A$main$4839        17E4 GR
  3 A$main$4840        17E7 GR  |   3 A$main$4841        17EA GR
  3 A$main$4846        17ED GR  |   3 A$main$4847        17F0 GR
  3 A$main$4848        17F3 GR  |   3 A$main$4849        17F6 GR
  3 A$main$4850        17F9 GR  |   3 A$main$4851        17FC GR
  3 A$main$4852        17FF GR  |   3 A$main$4857        1802 GR
  3 A$main$4858        1805 GR  |   3 A$main$4859        1808 GR
  3 A$main$4864        180B GR  |   3 A$main$4865        180E GR
  3 A$main$4870        1811 GR  |   3 A$main$4871        1814 GR
  3 A$main$4878        1817 GR  |   3 A$main$4883        181A GR
  3 A$main$4888        181D GR  |   3 A$main$4893        1820 GR
  3 A$main$4898        1823 GR  |   3 A$main$4903        1826 GR
  3 A$main$4908        1829 GR  |   3 A$main$4913        182C GR
  3 A$main$4918        182F GR  |   3 A$main$4923        1832 GR
  3 A$main$4928        1835 GR  |   3 A$main$4933        1838 GR
  3 A$main$4934        183A GR  |   3 A$main$4935        183D GR
  3 A$main$4936        183F GR  |   3 A$main$4937        1842 GR
  3 A$main$4938        1844 GR  |   3 A$main$4939        1847 GR
  3 A$main$4954        184A GR  |   3 A$main$4959        184D GR
  3 A$main$4960        1850 GR  |   3 A$main$4965        1853 GR
  3 A$main$4966        1856 GR  |   3 A$main$4971        1859 GR
  3 A$main$4972        185B GR  |   3 A$main$4973        185D GR
  3 A$main$4974        185F GR  |   3 A$main$4975        1861 GR
  3 A$main$4976        1863 GR  |   3 A$main$4977        1865 GR
  3 A$main$4983        1867 GR  |   3 A$main$4988        186A GR
  3 A$main$4993        186D GR  |   3 A$main$4994        186F GR
  3 A$main$4999        1871 GR  |   3 A$main$5000        1873 GR
  3 A$main$5005        1876 GR  |   3 A$main$5010        1879 GR
  3 A$main$5011        187A GR  |   3 A$main$5016        187D GR
  3 A$main$5017        187F GR  |   3 A$main$5022        1882 GR
  3 A$main$5023        1884 GR  |   3 A$main$5028        1887 GR
  3 A$main$5029        1889 GR  |   3 A$main$5030        188B GR
  3 A$main$5031        188D GR  |   3 A$main$5036        1890 GR
  3 A$main$5037        1892 GR  |   3 A$main$5038        1894 GR
  3 A$main$5039        1896 GR  |   3 A$main$5044        1899 GR
  3 A$main$5045        189B GR  |   3 A$main$5046        189D GR
  3 A$main$5047        189F GR  |   3 A$main$5048        18A1 GR
  3 A$main$5053        18A4 GR  |   3 A$main$5054        18A6 GR
  3 A$main$5059        18A8 GR  |   3 A$main$5060        18AA GR
  3 A$main$5061        18AC GR  |   3 A$main$5062        18AD GR
  3 A$main$5067        18B0 GR  |   3 A$main$5068        18B2 GR
  3 A$main$5073        18B4 GR  |   3 A$main$5078        18B7 GR
  3 A$main$5079        18B8 GR  |   3 A$main$5083        18BA GR
  3 A$main$5084        18BC GR  |   3 A$main$5085        18BE GR
  3 A$main$5090        18C2 GR  |   3 A$main$5095        18C4 GR
  3 A$main$5096        18C6 GR  |   3 A$main$5097        18C8 GR
  3 A$main$5103        18CC GR  |   3 A$main$5104        18CE GR
  3 A$main$5109        18D0 GR  |   3 A$main$5110        18D2 GR
  3 A$main$5111        18D4 GR  |   3 A$main$5112        18D6 GR
  3 A$main$5117        18D9 GR  |   3 A$main$5118        18DB GR
  3 A$main$5123        18DD GR  |   3 A$main$5124        18DF GR
  3 A$main$5129        18E2 GR  |   3 A$main$5134        18E5 GR
  3 A$main$5135        18E7 GR  |   3 A$main$5140        18EA GR
  3 A$main$5141        18EB GR  |   3 A$main$5145        18ED GR
  3 A$main$5146        18EF GR  |   3 A$main$5151        18F1 GR
  3 A$main$5152        18F4 GR  |   3 A$main$5153        18F6 GR
  3 A$main$5154        18F8 GR  |   3 A$main$5155        18F9 GR
  3 A$main$5156        18FB GR  |   3 A$main$5157        18FD GR
  3 A$main$5163        18FF GR  |   3 A$main$5164        1901 GR
  3 A$main$5165        1903 GR  |   3 A$main$5170        1907 GR
  3 A$main$5171        1909 GR  |   3 A$main$5172        190B GR
  3 A$main$5178        190F GR  |   3 A$main$5179        1911 GR
  3 A$main$5180        1913 GR  |   3 A$main$5181        1915 GR
  3 A$main$5182        1916 GR  |   3 A$main$5188        1918 GR
  3 A$main$5189        191A GR  |   3 A$main$5194        191E GR
  3 A$main$5201        1920 GR  |   3 A$main$5206        1923 GR
  3 A$main$5207        1925 GR  |   3 A$main$5208        1927 GR
  3 A$main$5209        192B GR  |   3 A$main$5210        192D GR
  3 A$main$5211        192F GR  |   3 A$main$5212        1931 GR
  3 A$main$5213        1933 GR  |   3 A$main$5218        1937 GR
  3 A$main$5219        193A GR  |   3 A$main$5224        193D GR
  3 A$main$5225        1940 GR  |   3 A$main$5226        1943 GR
  3 A$main$5228        1946 GR  |   3 A$main$5229        1949 GR
  3 A$main$5230        194B GR  |   3 A$main$5235        194F GR
  3 A$main$5236        1952 GR  |   3 A$main$5241        1954 GR
  3 A$main$5246        1958 GR  |   3 A$main$5247        195B GR
  3 A$main$5253        195E GR  |   3 A$main$5258        1960 GR
  3 A$main$5259        1962 GR  |   3 A$main$5260        1964 GR
  3 A$main$5261        1968 GR  |   3 A$main$5262        196A GR
  3 A$main$5263        196C GR  |   3 A$main$5271        196F GR
  3 A$main$5272        1971 GR  |   3 A$main$5273        1973 GR
  3 A$main$5278        1977 GR  |   3 A$main$5279        1979 GR
  3 A$main$5280        197B GR  |   3 A$main$5281        197F GR
  3 A$main$5282        1981 GR  |   3 A$main$5287        1983 GR
  3 A$main$5288        1985 GR  |   3 A$main$5289        1987 GR
  3 A$main$5291        198B GR  |   3 A$main$5292        198D GR
  3 A$main$5299        1991 GR  |   3 A$main$5300        1993 GR
  3 A$main$5301        1995 GR  |   3 A$main$5302        1997 GR
  3 A$main$5303        1999 GR  |   3 A$main$5304        199B GR
  3 A$main$5305        199D GR  |   3 A$main$5307        19A0 GR
  3 A$main$5308        19A2 GR  |   3 A$main$5314        19A5 GR
  3 A$main$5315        19A8 GR  |   3 A$main$5320        19AB GR
  3 A$main$5321        19AE GR  |   3 A$main$5322        19B1 GR
  3 A$main$5323        19B3 GR  |   3 A$main$5324        19B5 GR
  3 A$main$5326        19B8 GR  |   3 A$main$5327        19BA GR
  3 A$main$5333        19BD GR  |   3 A$main$5334        19BF GR
  3 A$main$5340        19C1 GR  |   3 A$main$5341        19C4 GR
  3 A$main$5346        19C8 GR  |   3 A$main$5347        19CB GR
  3 A$main$5352        19CE GR  |   3 A$main$5353        19D1 GR
  3 A$main$5358        19D4 GR  |   3 A$main$5359        19D7 GR
  3 A$main$5360        19DA GR  |   3 A$main$5361        19DD GR
  3 A$main$5366        19E0 GR  |   3 A$main$5367        19E3 GR
  3 A$main$5372        19E6 GR  |   3 A$main$5373        19E9 GR
  3 A$main$5378        19EC GR  |   3 A$main$5379        19EF GR
  3 A$main$5384        19F2 GR  |   3 A$main$5385        19F5 GR
  3 A$main$5386        19F8 GR  |   3 A$main$5387        19FB GR
  3 A$main$5392        19FE GR  |   3 A$main$5393        1A01 GR
  3 A$main$5394        1A04 GR  |   3 A$main$5395        1A06 GR
  3 A$main$5396        1A08 GR  |   3 A$main$5397        1A0A GR
  3 A$main$5398        1A0B GR  |   3 A$main$5399        1A0D GR
  3 A$main$5400        1A11 GR  |   3 A$main$5401        1A15 GR
  3 A$main$5402        1A18 GR  |   3 A$main$5403        1A1B GR
  3 A$main$5404        1A1E GR  |   3 A$main$5405        1A21 GR
  3 A$main$5406        1A24 GR  |   3 A$main$5412        1A27 GR
  3 A$main$5413        1A2A GR  |   3 A$main$5414        1A2D GR
  3 A$main$5415        1A30 GR  |   3 A$main$5416        1A33 GR
  3 A$main$5417        1A36 GR  |   3 A$main$5418        1A39 GR
  3 A$main$5419        1A3C GR  |   3 A$main$5420        1A3F GR
  3 A$main$5421        1A42 GR  |   3 A$main$5422        1A45 GR
  3 A$main$5423        1A48 GR  |   3 A$main$5424        1A4B GR
  3 A$main$5425        1A4E GR  |   3 A$main$5426        1A51 GR
  3 A$main$5427        1A54 GR  |   3 A$main$5428        1A57 GR
  3 A$main$5429        1A5A GR  |   3 A$main$5430        1A5D GR
  3 A$main$5431        1A60 GR  |   3 A$main$5436        1A63 GR
  3 A$main$5437        1A66 GR  |   3 A$main$5438        1A69 GR
  3 A$main$5439        1A6B GR  |   3 A$main$5440        1A6D GR
  3 A$main$5441        1A6F GR  |   3 A$main$5442        1A70 GR
  3 A$main$5443        1A72 GR  |   3 A$main$5444        1A76 GR
  3 A$main$5445        1A7A GR  |   3 A$main$5446        1A7D GR
  3 A$main$5447        1A80 GR  |   3 A$main$5448        1A83 GR
  3 A$main$5454        1A86 GR  |   3 A$main$5459        1A89 GR
  3 A$main$5460        1A8C GR  |   3 A$main$5466        1A8F GR
  3 A$main$5467        1A91 GR  |   3 A$main$5469        1A93 GR
  3 A$main$5470        1A96 GR  |   3 A$main$5471        1A98 GR
  3 A$main$5476        1A9C GR  |   3 A$main$5477        1A9F GR
  3 A$main$5482        1AA1 GR  |   3 A$main$5487        1AA5 GR
  3 A$main$5488        1AA8 GR  |   3 A$main$5494        1AAB GR
  3 A$main$5495        1AAE GR  |   3 A$main$5500        1AB0 GR
  3 A$main$5505        1AB4 GR  |   3 A$main$5506        1AB7 GR
  3 A$main$5512        1ABA GR  |   3 A$main$5517        1ABD GR
  3 A$main$5522        1AC0 GR  |   3 A$main$5523        1AC3 GR
  3 A$main$5524        1AC6 GR  |   3 A$main$5526        1AC9 GR
  3 A$main$5527        1ACC GR  |   3 A$main$5528        1ACF GR
  3 A$main$5529        1AD2 GR  |   3 A$main$5530        1AD5 GR
  3 A$main$5531        1AD8 GR  |   3 A$main$5532        1ADB GR
  3 A$main$5533        1ADE GR  |   3 A$main$5534        1AE1 GR
  3 A$main$5536        1AE4 GR  |   3 A$main$5537        1AE7 GR
  3 A$main$5538        1AEA GR  |   3 A$main$5539        1AED GR
  3 A$main$5540        1AF0 GR  |   3 A$main$5541        1AF3 GR
  3 A$main$5542        1AF6 GR  |   3 A$main$5543        1AF9 GR
  3 A$main$5544        1AFC GR  |   3 A$main$5545        1AFF GR
  3 A$main$5546        1B02 GR  |   3 A$main$5547        1B05 GR
  3 A$main$5548        1B08 GR  |   3 A$main$5551        1B0B GR
  3 A$main$5552        1B0C GR  |   3 L10                0677 R
  3 L100               0CDA R   |   3 L106               0CE9 R
  3 L107               0CF2 R   |   3 L108               0CF9 R
  3 L110               1100 R   |   3 L111               0D1F R
  3 L112               11F8 R   |   3 L113               157B R
  3 L114               0D40 R   |   3 L115               1658 R
  3 L116               0D4D R   |   3 L117               0D4F R
  3 L118               0D64 R   |   3 L119               0D5C R
  3 L120               1281 R   |   3 L121               0D66 R
  3 L122               15E5 R   |   3 L123               0D8E R
  3 L124               0D9C R   |   3 L125               0D9E R
  3 L126               0DC7 R   |   3 L127               0DC9 R
  3 L128               1158 R   |   3 L129               0DD8 R
  3 L130               1161 R   |   3 L131               125B R
  3 L132               1176 R   |   3 L134               0E04 R
  3 L135               0E06 R   |   3 L136               1140 R
  3 L137               0E2A R   |   3 L138               0E38 R
  3 L139               0E3B R   |   3 L14                06C4 R
  3 L140               11C2 R   |   3 L141               0E89 R
  3 L142               0E96 R   |   3 L143               0E99 R
  3 L144               11B2 R   |   3 L145               0EC6 R
  3 L147               0EFB R   |   3 L148               11D0 R
  3 L149               0F01 R   |   3 L15                0646 R
  3 L150               118E R   |   3 L151               0F0F R
  3 L152               1197 R   |   3 L153               12C1 R
  3 L154               11AC R   |   3 L156               15B8 R
  3 L157               0F3B R   |   3 L158               0F49 R
  3 L159               0F4C R   |   3 L16                06B3 R
  3 L160               152C R   |   3 L161               0F7A R
  3 L162               117B R   |   3 L163               0F93 R
  3 L164               0FB4 R   |   3 L165               0FAB R
  3 L166               129F R   |   3 L167               0FB7 R
  3 L168               0FDC R   |   3 L169               0FDE R
  3 L17                0696 R   |   3 L170               0FFF R
  3 L171               1001 R   |   3 L172               1619 R
  3 L173               101F R   |   3 L174               103D R
  3 L175               103F R   |   3 L176               1545 R
  3 L177               1065 R   |   3 L178               106C R
  3 L179               1073 R   |   3 L18                06B0 R
  3 L180               107A R   |   3 L181               1081 R
  3 L182               1088 R   |   3 L183               108F R
  3 L184               1096 R   |   3 L185               109D R
  3 L186               10A4 R   |   3 L188               10B2 R
  3 L189               10F1 R   |   3 L19                0663 R
  3 L190               10BB R   |   3 L191               10FB R
  3 L193               1120 R   |   3 L194               111A R
  3 L195               11D9 R   |   3 L196               122D R
  3 L197               1640 R   |   3 L198               1671 R
  3 L199               0CD4 R   |   3 L2                 0585 R
  3 L200               164F R   |   3 L201               1306 R
  3 L202               1668 R   |   3 L203               167A R
  3 L204               1683 R   |   3 L205               113A R
  3 L206               1134 R   |   3 L207               1126 R
  3 L208               1513 R   |   3 L209               1276 R
  3 L21                07C0 R   |   3 L210               132A R
  3 L211               12F1 R   |   3 L212               1568 R
  3 L213               15CA R   |   3 L214               11E2 R
  3 L215               1217 R   |   3 L216               1595 R
  3 L217               11CD R   |   3 L218               12DB R
  3 L219               1296 R   |   3 L22                07C9 R
  3 L220               1338 R   |   3 L221               15FC R
  3 L222               1627 R   |   3 L223               154D R
  3 L224               14EA R   |   3 L225               14C0 R
  3 L226               1496 R   |   3 L227               146C R
  3 L228               1442 R   |   3 L229               141A R
  3 L23                0835 R   |   3 L230               13F0 R
  3 L231               13C6 R   |   3 L232               139C R
  3 L233               1346 R   |   3 L234               1372 R
  3 L235               124B R   |   3 L236               131D R
  3 L237               12B5 R   |   3 L238               130F R
  3 L241               17D8 R   |   3 L244               195E R
  3 L245               18CC R   |   3 L246               18FF R
  3 L25                0843 R   |   3 L252               1A8F R
  3 L253               1AE4 R   |   3 L254               1A27 R
  3 L255               1AC9 R   |   3 L256               1A86 R
  3 L257               190F R   |   3 L258               19B8 R
  3 L259               1918 R   |   3 L265               1867 R
  3 L266               1A93 R   |   3 L267               1946 R
  3 L268               1AAB R   |   3 L269               19A0 R
  3 L27                07EB R   |   3 L270               196F R
  3 L271               198B R   |   3 L272               19A5 R
  3 L273               19BD R   |   3 L274               19C1 R
  3 L275               1ABA R   |   3 L28                07D3 R
  3 L29                07E3 R   |   3 L3                 0585 R
  3 L30                07DD R   |   3 L32                07F3 R
  3 L33                0851 R   |   3 L34                0856 R
  3 L36                0878 R   |   3 L37                0884 R
  3 L39                08A4 R   |   3 L4                 05BF R
  3 L40                0A34 R   |   3 L42                092E R
  3 L43                09F2 R   |   3 L46                097B R
  3 L47                09E9 R   |   3 L48                0A87 R
  3 L49                0A3B R   |   3 L5                 05A3 R
  3 L50                0AE6 R   |   3 L51                0AE9 R
  3 L52                08BB R   |   3 L54                09F8 R
  3 L55                0934 R   |   3 L6                 05AB R
  3 L63                0907 R   |   3 L64                08AC R
  3 L65                0976 R   |   3 L66                0894 R
  3 L7                 05B3 R   |   3 L71                0BAD R
  3 L72                0B95 R   |   3 L75                0BC5 R
  3 L78                0B99 R   |   3 L80                0BB3 R
  3 L81                0B9C R   |   3 L82                0BB8 R
  3 L83                0BCF R   |   3 L84                0BDC R
  3 L85                0BEA R   |   3 L86                0BF0 R
  3 L87                0BF6 R   |   3 L88                0BFC R
  3 L89                0C01 R   |   3 L9                 05C6 R
  3 L91                0C13 R   |   3 L92                0C22 R
  3 L93                0C8A R   |   3 L94                0C5A R
  3 L95                0CA1 R   |   3 L98                0CE2 R
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
  3 LC29               045E R   |   3 LC3                002C R
  3 LC30               0482 R   |   3 LC31               04A1 R
  3 LC32               04C4 R   |   3 LC33               04E5 R
  3 LC34               04FE R   |   3 LC35               051B R
  3 LC36               053C R   |   3 LC37               055D R
  3 LC38               168C R   |   3 LC39               16A3 R
  3 LC4                0031 R   |   3 LC40               16BA R
  3 LC41               16CA R   |   3 LC42               16E8 R
  3 LC43               16FC R   |   3 LC44               170C R
  3 LC45               1729 R   |   3 LC5                0039 R
  3 LC6                0041 R   |   3 LC7                0048 R
  3 LC8                004E R   |   3 LC9                0055 R
  2 _ACCA              0257 GR  |   2 _ACCB              0258 GR
  2 _CHARAC            024E GR  |   2 _COEFCT            0224 GR
  2 _COEFPT            0233 GR  |   2 _FP0EXP            021E GR
  2 _FP0SGN            0223 GR  |   2 _FP1EXP            022B GR
  2 _FP1SGN            0230 GR  |   2 _FPA0              021F GR
  2 _FPA1              022C GR  |   2 _FPA2              0236 GR
  2 _FPCARY            022A GR  |   2 _FPSBYT            0232 GR
  3 _FP_X0_PACKED      0008 GR  |   3 _FP_Y0_PACKED      000D GR
  3 _FP_Z0_PACKED      0012 GR  |   2 _PLY_AKY_CHANN     026C GR
  2 _PLY_AKY_CHANN     0263 GR  |   2 _PLY_AKY_CHANN     0269 GR
  2 _PLY_AKY_CHANN     026E GR  |   2 _PLY_AKY_CHANN     0265 GR
  2 _PLY_AKY_CHANN     026A GR  |   2 _PLY_AKY_CHANN     0270 GR
  2 _PLY_AKY_CHANN     0267 GR  |   2 _PLY_AKY_CHANN     026B GR
  2 _PLY_AKY_PATTE     0261 GR  |   2 _PLY_AKY_PATTE     025F GR
  2 _PLY_AKY_PSGRE     0274 GR  |   2 _PLY_AKY_PSGRE     0275 GR
  2 _PLY_AKY_PSGRE     0276 GR  |   2 _PLY_AKY_PSGRE     0272 GR
  2 _PLY_AKY_PSGRE     0273 GR  |   2 _PLY_SONG_PLAY     0277 GR
  2 _PLY_error         0256 GR  |   2 _RESSGN            0231 GR
    _RandMax           **** GX  |   2 _STRDES            0225 GR
  2 _TMPLOC            024D GR  |   2 _V40               023A GR
  2 _V41               023B GR  |   2 _V42               023C GR
  2 _V43               023D GR  |   2 _V44               023E GR
  2 _V45               023F GR  |   2 _V46               0240 GR
  2 _V47               0241 GR  |   2 _V48               0242 GR
  2 _V4A               0244 GR  |   2 _V4B               0245 GR
  2 _V4D               0247 GR  |   2 _VAB               0249 GR
  2 _VAC               024A GR  |   2 _VAD               024B GR
  2 _VAE               024C GR  |     _Vec_Buttons       **** GX
    _Vec_Music_Wk_     **** GX  |     _Vec_Music_Wk_     **** GX
    _Vec_Num_Playe     **** GX  |     _Vec_Text_Heig     **** GX
    _Vec_Text_Widt     **** GX  |     _Vec_XXX_03        **** GX
    _Vec_XXX_04        **** GX  |   3 _W0                0017 GR
    __Do_Sound         **** GX  |     __Intensity_a      **** GX
    __Moveto_d         **** GX  |     __Print_Str_d      **** GX
  2 __TMPTR1           0235 GR  |   2 __XC               0105 GR
  2 __YC               0106 GR  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 ___a               01FD GR
  2 ___b               01FE GR  |   2 ___c               01FF GR
  2 ___x               01FC GR  |   2 __a                01F9 GR
  2 __b                01FA GR  |   2 __c                01FB GR
    __fll_s            **** GX  |   2 __x                01F8 GR
  2 __x_               0104 GR  |   2 __y_               0103 GR
  2 _above             0020 GR  |     _addF              **** GX
    _addIF             **** GX  |   2 _box               00DF GR
  3 _box_data          01D8 GR  |   2 _ch                00E3 GR
    _checkSavedFla     **** GX  |   2 _cs                00E5 GR
  3 _cube_c64_data     0120 GR  |   2 _currentSFX_1      0252 GR
  2 _cx                00BF GR  |   2 _cy                00C0 GR
  2 _cz                00E7 GR  |   2 _db                00FA GR
  3 _death_data        0246 GR  |   3 _displayInn        173F GR
  2 _doEffectStatu     0076 GR  |   3 _down_data         02D4 GR
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _dr                00FC GR  |   3 _dragon_data       01FC GR
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
    _drawLeftWall_     **** GX  |   3 _drawMap           0C07 GR
    _drawMinotaur      **** GX  |     _drawMummy         **** GX
    _drawNone          **** GX  |     _drawOgre          **** GX
    _drawOrc           **** GX  |     _drawPlayer        **** GX
  3 _drawRoom          0B4C GR  |     _drawSkeleton      **** GX
    _drawSpecter       **** GX  |     _drawSpell         **** GX
    _drawStaircase     **** GX  |     _drawThrone        **** GX
    _drawTitle         **** GX  |     _drawTreasure      **** GX
    _drawTroll         **** GX  |     _drawUnkown        **** GX
    _drawUnkown_no     **** GX  |     _drawUpDoor        **** GX
    _drawUpWall        **** GX  |     _drawVampire       **** GX
    _drawWraith        **** GX  |     _drawZomnbie       **** GX
  2 _effectOffsetX     007B GR  |   2 _effectOffsetY     007A GR
  2 _effectTimer       0079 GR  |   2 _elevatorY         0023 GR
  3 _environmentDr     044A GR  |   2 _ex                00B9 GR
  2 _fillMap           007C GR  |   2 _flashAvailabl     0088 GR
  2 _fpackQ            0219 GR  |   2 _fpackX0x          0200 GR
  2 _fpackY0y          0205 GR  |   2 _fpackZ0z          020A GR
  2 _fpacktmp1         020F GR  |   2 _fpacktmp2         0214 GR
  2 _frequencyRegi     025A GR  |   2 _gd                00E8 GR
  3 _generateDispl     0868 GR  |   3 _getMapPos         06CA GR
  3 _gong_data         027E GR  |   2 _hp                00B6 GR
  3 _in1               005B GR  |   3 _in2               00B0 GR
  3 _in3               010C GR  |   2 _inElevator        0022 GR
  2 _initFlag1         025C GR  |   2 _initFlag2         025D GR
  2 _initFlag3         025E GR  |     _initSong          **** GX
  2 _initSoundNo       0026 GR  |     _initThroneSon     **** GX
    _intF              **** GX  |   2 _inventory         00CB GR
  2 _l                 0100 GR  |   2 _lastX             0101 GR
  2 _lastY             0102 GR  |   2 _lightChange       0024 GR
  3 _lightning_dat     037A GR  |   2 _lltmp             0084 GR
  2 _localTimer        0028 GR  |   2 _ltmp              0082 GR
  2 _lv                00B8 GR  |   2 _m                 00F7 GR
  3 _main              1B0B GR  |   2 _mb                00FD GR
  2 _mh                00F8 GR  |   2 _ml                00FF GR
  3 _monsterDrawer     0422 GR  |   3 _msg               0000 GR
  2 _msgLine           0107 GR  |   2 _msg_1             0158 GR
  2 _msg_2             0180 GR  |   2 _msg_3             01A8 GR
  2 _msg_4             01D0 GR  |     _mulF              **** GX
    _mulIF             **** GX  |     _mulhi3            **** GX
  2 _pa                00FB GR  |     _playSong          **** GX
  2 _printCharacte     0077 GR  |   2 _printDungeon      0073 GR
  2 _printEnvironm     0074 GR  |     _printMessage      **** GX
  2 _printTreasure     0075 GR  |   2 _printfEffect      0078 GR
  2 _r7                025B GR  |   2 _realAbove         0021 GR
    _restoreSeed       **** GX  |   2 _s                 00C5 GR
    _saveFlash         **** GX  |     _saveSeed          **** GX
  2 _screen            0000 GR  |   2 _sf                00EC GR
  2 _sfx_doframe_i     0254 GR  |   2 _sfx_pointer_1     0250 GR
  2 _sfx_status_1      024F GR  |   2 _specialAction     0025 GR
  2 _stackM            0108 GR  |   2 _stackMH           0130 GR
  2 _stackML           011C GR  |   2 _stringBuffer1     0033 GR
  2 _stringBuffer4     0029 GR  |   2 _stringBuffer4     003F GR
  2 _stringBuffer6     002D GR  |   2 _stringBufferE     0067 GR
  2 _su                00BD GR  |     _subBank1          **** GX
    _subF              **** GX  |   3 _teleport_data     0156 GR
  2 _tg                00C1 GR  |   2 _timer             0027 GR
  3 _titleScreen       0574 GR  |   2 _tmp               007E GR
  2 _tmp2              007F GR  |   2 _tmp_box           00B2 GR
  2 _tmp_cx            0092 GR  |   2 _tmp_cy            0093 GR
  2 _tmp_ex            008C GR  |   2 _tmp_hp            0089 GR
  2 _tmp_inventory     009E GR  |   2 _tmp_lv            008B GR
  2 _tmp_s             0098 GR  |   2 _tmp_su            0090 GR
  2 _tmp_tg            0094 GR  |     _toInt             **** GX
  2 _ultmp             0080 GR  |   2 _un                00FE GR
  2 _utmp              007D GR  |   2 _volumeRegiste     0259 GR
    sfx_doframe_in     **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size  278   flags    0
   3 .text            size 1B0D   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

