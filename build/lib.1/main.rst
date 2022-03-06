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
   0098                     202 _msg:
   0098 C9 D8               203 	.word	_msg_1
   009A CA 00               204 	.word	_msg_2
   009C CA 28               205 	.word	_msg_3
   009E CA 50               206 	.word	_msg_4
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
                            360 	.globl	_mo
                            361 	.area	.text
   00A0                     362 LC0:
   00A0 47 4E 4F 4C 4C 00   363 	.ascii	"GNOLL\0"
   00A6                     364 LC1:
   00A6 4B 4F 42 4F 4C 44   365 	.ascii	"KOBOLD\0"
        00
   00AD                     366 LC2:
   00AD 53 4B 45 4C 45 54   367 	.ascii	"SKELETON\0"
        4F 4E 00
   00B6                     368 LC3:
   00B6 48 4F 42 42 49 54   369 	.ascii	"HOBBIT\0"
        00
   00BD                     370 LC4:
   00BD 5A 4F 4D 42 49 45   371 	.ascii	"ZOMBIE\0"
        00
   00C4                     372 LC5:
   00C4 4F 52 43 00         373 	.ascii	"ORC\0"
   00C8                     374 LC6:
   00C8 46 49 47 48 54 45   375 	.ascii	"FIGHTER\0"
        52 00
   00D0                     376 LC7:
   00D0 4D 55 4D 4D 59 00   377 	.ascii	"MUMMY\0"
   00D6                     378 LC8:
   00D6 45 4C 46 00         379 	.ascii	"ELF\0"
   00DA                     380 LC9:
   00DA 47 48 4F 55 4C 00   381 	.ascii	"GHOUL\0"
   00E0                     382 LC10:
   00E0 44 57 41 52 46 00   383 	.ascii	"DWARF\0"
   00E6                     384 LC11:
   00E6 54 52 4F 4C 4C 00   385 	.ascii	"TROLL\0"
   00EC                     386 LC12:
   00EC 57 52 41 49 54 48   387 	.ascii	"WRAITH\0"
        00
   00F3                     388 LC13:
   00F3 4F 47 52 45 00      389 	.ascii	"OGRE\0"
   00F8                     390 LC14:
   00F8 4D 49 4E 4F 54 41   391 	.ascii	"MINOTAUR\0"
        55 52 00
   0101                     392 LC15:
   0101 47 49 41 4E 54 00   393 	.ascii	"GIANT\0"
   0107                     394 LC16:
   0107 53 50 45 43 54 45   395 	.ascii	"SPECTER\0"
        52 00
   010F                     396 LC17:
   010F 56 41 4D 50 49 52   397 	.ascii	"VAMPIRE\0"
        45 00
   0117                     398 LC18:
   0117 44 45 4D 4F 4E 00   399 	.ascii	"DEMON\0"
   011D                     400 LC19:
   011D 44 52 41 47 4F 4E   401 	.ascii	"DRAGON\0"
        00
   0124                     402 _mo:
   0124 00 A0               403 	.word	LC0
   0126 00 A6               404 	.word	LC1
   0128 00 AD               405 	.word	LC2
   012A 00 B6               406 	.word	LC3
   012C 00 BD               407 	.word	LC4
   012E 00 C4               408 	.word	LC5
   0130 00 C8               409 	.word	LC6
   0132 00 D0               410 	.word	LC7
   0134 00 D6               411 	.word	LC8
   0136 00 DA               412 	.word	LC9
   0138 00 E0               413 	.word	LC10
   013A 00 E6               414 	.word	LC11
   013C 00 EC               415 	.word	LC12
   013E 00 F3               416 	.word	LC13
   0140 00 F8               417 	.word	LC14
   0142 01 01               418 	.word	LC15
   0144 01 07               419 	.word	LC16
   0146 01 0F               420 	.word	LC17
   0148 01 17               421 	.word	LC18
   014A 01 1D               422 	.word	LC19
                            423 	.globl	_stats
   014C                     424 LC20:
   014C 53 54 52 00         425 	.ascii	"STR\0"
   0150                     426 LC21:
   0150 49 4E 54 00         427 	.ascii	"INT\0"
   0154                     428 LC22:
   0154 57 49 53 00         429 	.ascii	"WIS\0"
   0158                     430 LC23:
   0158 43 4F 4E 00         431 	.ascii	"CON\0"
   015C                     432 LC24:
   015C 44 45 58 00         433 	.ascii	"DEX\0"
   0160                     434 LC25:
   0160 43 48 52 00         435 	.ascii	"CHR\0"
   0164                     436 _stats:
   0164 01 4C               437 	.word	LC20
   0166 01 50               438 	.word	LC21
   0168 01 54               439 	.word	LC22
   016A 01 58               440 	.word	LC23
   016C 01 5C               441 	.word	LC24
   016E 01 60               442 	.word	LC25
                            443 	.globl	_items
   0170                     444 LC26:
   0170 53 57 4F 52 44 00   445 	.ascii	"SWORD\0"
   0176                     446 LC27:
   0176 41 52 4D 4F 52 00   447 	.ascii	"ARMOR\0"
   017C                     448 LC28:
   017C 53 48 49 4C 45 44   449 	.ascii	"SHILED\0"
        00
   0183                     450 LC29:
   0183 45 4C 56 45 4E 20   451 	.ascii	"ELVEN CLOAK\0"
        43 4C 4F 41 4B 00
   018F                     452 LC30:
   018F 45 4C 56 45 4E 20   453 	.ascii	"ELVEN BOOTS\0"
        42 4F 4F 54 53 00
   019B                     454 LC31:
   019B 52 49 4E 47 20 4F   455 	.ascii	"RING OF REGENERATION\0"
        46 20 52 45 47 45
        4E 45 52 41 54 49
        4F 4E 00
   01B0                     456 LC32:
   01B0 52 49 4E 47 20 4F   457 	.ascii	"RING OF PROTECTION\0"
        46 20 50 52 4F 54
        45 43 54 49 4F 4E
        00
   01C3                     458 LC33:
   01C3 53 43 52 4F 4C 4C   459 	.ascii	"SCROLL OF RESCUE\0"
        20 4F 46 20 52 45
        53 43 55 45 00
   01D4                     460 LC34:
   01D4 50 4F 54 49 4F 4E   461 	.ascii	"POTION OF HEALING\0"
        20 4F 46 20 48 45
        41 4C 49 4E 47 00
   01E6                     462 LC35:
   01E6 50 4F 54 49 4F 4E   463 	.ascii	"POTION OF STRENGTH\0"
        20 4F 46 20 53 54
        52 45 4E 47 54 48
        00
   01F9                     464 _items:
   01F9 01 70               465 	.word	LC26
   01FB 01 76               466 	.word	LC27
   01FD 01 7C               467 	.word	LC28
   01FF 01 83               468 	.word	LC29
   0201 01 8F               469 	.word	LC30
   0203 01 9B               470 	.word	LC31
   0205 01 B0               471 	.word	LC32
   0207 01 C3               472 	.word	LC33
   0209 01 D4               473 	.word	LC34
   020B 01 E6               474 	.word	LC35
                            475 	.globl	_spellNames1
   020D                     476 LC36:
   020D 4D 41 47 49 43 20   477 	.byte	77,65,71,73,67,32,77,73
        4D 49
   0215 53 53 49 4C 45 80   478 	.byte	83,83,73,76,69,-128,0
        00
   021C                     479 LC37:
   021C 53 4C 45 45 50 80   480 	.byte	83,76,69,69,80,-128,0
        00
   0223                     481 LC38:
   0223 43 55 52 45 20 4C   482 	.byte	67,85,82,69,32,76,73,71
        49 47
   022B 48 54 20 57 4F 55   483 	.byte	72,84,32,87,79,85,78,68
        4E 44
   0233 53 80 00            484 	.byte	83,-128,0
   0236                     485 LC39:
   0236 4C 49 47 48 54 80   486 	.byte	76,73,71,72,84,-128,0
        00
   023D                     487 LC40:
   023D 54 55 52 4E 20 55   488 	.byte	84,85,82,78,32,85,78,68
        4E 44
   0245 45 41 44 80 00      489 	.byte	69,65,68,-128,0
   024A                     490 LC41:
   024A 50 52 4F 54 2F 45   491 	.byte	80,82,79,84,47,69,86,73
        56 49
   0252 4C 80 00            492 	.byte	76,-128,0
   0255                     493 _spellNames1:
   0255 02 0D               494 	.word	LC36
   0257 02 1C               495 	.word	LC37
   0259 02 23               496 	.word	LC38
   025B 02 36               497 	.word	LC39
   025D 02 3D               498 	.word	LC40
   025F 02 4A               499 	.word	LC41
                            500 	.globl	_spellNames2
   0261                     501 LC42:
   0261 57 45 42 80 00      502 	.byte	87,69,66,-128,0
   0266                     503 LC43:
   0266 4C 45 56 49 54 41   504 	.byte	76,69,86,73,84,65,84,69
        54 45
   026E 80 00               505 	.byte	-128,0
   0270                     506 LC44:
   0270 43 41 55 53 45 20   507 	.byte	67,65,85,83,69,32,76,73
        4C 49
   0278 47 48 54 20 57 4F   508 	.byte	71,72,84,32,87,79,85,78
        55 4E
   0280 44 53 80 00         509 	.byte	68,83,-128,0
   0284                     510 LC45:
   0284 44 45 54 45 43 54   511 	.byte	68,69,84,69,67,84,32,84
        20 54
   028C 52 41 50 53 80 00   512 	.byte	82,65,80,83,-128,0
   0292                     513 LC46:
   0292 43 48 41 52 4D 80   514 	.byte	67,72,65,82,77,-128,0
        00
   0299                     515 LC47:
   0299 53 54 52 45 4E 47   516 	.byte	83,84,82,69,78,71,84,72
        54 48
   02A1 80 00               517 	.byte	-128,0
   02A3                     518 _spellNames2:
   02A3 02 61               519 	.word	LC42
   02A5 02 66               520 	.word	LC43
   02A7 02 70               521 	.word	LC44
   02A9 02 84               522 	.word	LC45
   02AB 02 92               523 	.word	LC46
   02AD 02 99               524 	.word	LC47
                            525 	.globl	_spellNames3
   02AF                     526 LC48:
   02AF 4C 49 47 48 54 4E   527 	.byte	76,73,71,72,84,78,73,78
        49 4E
   02B7 47 20 42 4F 4C 54   528 	.byte	71,32,66,79,76,84,-128,0
        80 00
   02BF                     529 LC49:
   02BF 43 55 52 45 20 53   530 	.byte	67,85,82,69,32,83,69,82
        45 52
   02C7 49 4F 55 53 20 57   531 	.byte	73,79,85,83,32,87,79,85
        4F 55
   02CF 4E 44 53 80 00      532 	.byte	78,68,83,-128,0
   02D4                     533 LC50:
   02D4 43 4F 4E 54 49 4E   534 	.byte	67,79,78,84,73,78,85,65
        55 41
   02DC 4C 20 4C 49 47 48   535 	.byte	76,32,76,73,71,72,84,-128
        54 80
   02E4 00                  536 	.byte	0
   02E5                     537 LC51:
   02E5 49 4E 56 49 53 49   538 	.byte	73,78,86,73,83,73,66,73
        42 49
   02ED 4C 49 54 59 80 00   539 	.byte	76,73,84,89,-128,0
   02F3                     540 LC52:
   02F3 48 4F 4C 44 20 4D   541 	.byte	72,79,76,68,32,77,79,78
        4F 4E
   02FB 53 54 45 52 80 00   542 	.byte	83,84,69,82,-128,0
   0301                     543 LC53:
   0301 50 48 41 4E 54 41   544 	.byte	80,72,65,78,84,65,83,77
        53 4D
   0309 41 4C 20 46 4F 52   545 	.byte	65,76,32,70,79,82,67,69
        43 45
   0311 53 80 00            546 	.byte	83,-128,0
   0314                     547 _spellNames3:
   0314 02 AF               548 	.word	LC48
   0316 02 BF               549 	.word	LC49
   0318 02 D4               550 	.word	LC50
   031A 02 E5               551 	.word	LC51
   031C 02 F3               552 	.word	LC52
   031E 03 01               553 	.word	LC53
                            554 	.globl	_spellNames4
   0320                     555 LC54:
   0320 50 41 53 53 20 57   556 	.byte	80,65,83,83,32,87,65,76
        41 4C
   0328 4C 80 00            557 	.byte	76,-128,0
   032B                     558 LC55:
   032B 46 49 52 45 42 41   559 	.byte	70,73,82,69,66,65,76,76
        4C 4C
   0333 80 00               560 	.byte	-128,0
   0335                     561 LC56:
   0335 43 41 55 53 45 20   562 	.byte	67,65,85,83,69,32,83,69
        53 45
   033D 52 49 4F 55 53 20   563 	.byte	82,73,79,85,83,32,87,79
        57 4F
   0345 55 4E 44 53 80 00   564 	.byte	85,78,68,83,-128,0
   034B                     565 LC57:
   034B 46 4C 45 53 48 20   566 	.byte	70,76,69,83,72,32,84,79
        54 4F
   0353 20 53 54 4F 4E 45   567 	.byte	32,83,84,79,78,69,-128,0
        80 00
   035B                     568 LC58:
   035B 46 45 41 52 80 00   569 	.byte	70,69,65,82,-128,0
   0361                     570 LC59:
   0361 46 49 4E 47 45 52   571 	.byte	70,73,78,71,69,82,32,79
        20 4F
   0369 46 20 44 45 41 54   572 	.byte	70,32,68,69,65,84,72,-128
        48 80
   0371 00                  573 	.byte	0
   0372                     574 _spellNames4:
   0372 03 20               575 	.word	LC54
   0374 03 2B               576 	.word	LC55
   0376 03 35               577 	.word	LC56
   0378 03 4B               578 	.word	LC57
   037A 03 5B               579 	.word	LC58
   037C 03 61               580 	.word	LC59
                            581 	.globl	_spellNames5
   037E                     582 LC60:
   037E 54 45 4C 45 50 4F   583 	.byte	84,69,76,69,80,79,82,84
        52 54
   0386 80 00               584 	.byte	-128,0
   0388                     585 LC61:
   0388 41 53 54 52 41 4C   586 	.byte	65,83,84,82,65,76,32,87
        20 57
   0390 41 4C 4B 80 00      587 	.byte	65,76,75,-128,0
   0395                     588 LC62:
   0395 50 4F 57 45 52 20   589 	.byte	80,79,87,69,82,32,87,79
        57 4F
   039D 52 44 20 4B 49 4C   590 	.byte	82,68,32,75,73,76,76,-128
        4C 80
   03A5 00                  591 	.byte	0
   03A6                     592 LC63:
   03A6 49 43 45 20 53 54   593 	.byte	73,67,69,32,83,84,79,82
        4F 52
   03AE 4D 80 00            594 	.byte	77,-128,0
   03B1                     595 LC64:
   03B1 57 41 4C 4C 20 4F   596 	.byte	87,65,76,76,32,79,70,32
        46 20
   03B9 46 49 52 45 80 00   597 	.byte	70,73,82,69,-128,0
   03BF                     598 LC65:
   03BF 50 4C 41 47 55 45   599 	.byte	80,76,65,71,85,69,-128,0
        80 00
   03C7                     600 _spellNames5:
   03C7 03 7E               601 	.word	LC60
   03C9 03 88               602 	.word	LC61
   03CB 03 95               603 	.word	LC62
   03CD 03 A6               604 	.word	LC63
   03CF 03 B1               605 	.word	LC64
   03D1 03 BF               606 	.word	LC65
                            607 	.globl	_spellNames6
   03D3                     608 LC66:
   03D3 54 49 4D 45 20 53   609 	.byte	84,73,77,69,32,83,84,79
        54 4F
   03DB 50 80 00            610 	.byte	80,-128,0
   03DE                     611 LC67:
   03DE 52 41 49 53 45 20   612 	.byte	82,65,73,83,69,32,68,69
        44 45
   03E6 41 44 80 00         613 	.byte	65,68,-128,0
   03EA                     614 LC68:
   03EA 48 4F 4C 59 20 53   615 	.byte	72,79,76,89,32,83,89,77
        59 4D
   03F2 42 4F 4C 80 00      616 	.byte	66,79,76,-128,0
   03F7                     617 LC69:
   03F7 57 4F 52 44 20 4F   618 	.byte	87,79,82,68,32,79,70,32
        46 20
   03FF 52 45 43 41 4C 4C   619 	.byte	82,69,67,65,76,76,-128,0
        80 00
   0407                     620 LC70:
   0407 52 45 53 54 4F 52   621 	.byte	82,69,83,84,79,82,65,84
        41 54
   040F 49 4F 4E 80 00      622 	.byte	73,79,78,-128,0
   0414                     623 LC71:
   0414 50 52 49 53 4D 41   624 	.byte	80,82,73,83,77,65,84,73
        54 49
   041C 43 20 57 41 4C 4C   625 	.byte	67,32,87,65,76,76,-128,0
        80 00
   0424                     626 _spellNames6:
   0424 03 D3               627 	.word	LC66
   0426 03 DE               628 	.word	LC67
   0428 03 EA               629 	.word	LC68
   042A 03 F7               630 	.word	LC69
   042C 04 07               631 	.word	LC70
   042E 04 14               632 	.word	LC71
                            633 	.globl	_spellNames
   0430                     634 _spellNames:
   0430 02 55               635 	.word	_spellNames1
   0432 02 A3               636 	.word	_spellNames2
   0434 03 14               637 	.word	_spellNames3
   0436 03 72               638 	.word	_spellNames4
   0438 03 C7               639 	.word	_spellNames5
   043A 04 24               640 	.word	_spellNames6
                            641 	.globl	_treasure
   043C                     642 LC72:
   043C 52 45 46 55 53 45   643 	.ascii	"REFUSE\0"
        00
   0443                     644 LC73:
   0443 53 49 4C 56 45 52   645 	.ascii	"SILVER\0"
        00
   044A                     646 LC74:
   044A 47 4F 4C 44 00      647 	.ascii	"GOLD\0"
   044F                     648 LC75:
   044F 47 45 4D 53 00      649 	.ascii	"GEMS\0"
   0454                     650 LC76:
   0454 4A 45 57 45 4C 53   651 	.ascii	"JEWELS\0"
        00
   045B                     652 _treasure:
   045B 04 3C               653 	.word	LC72
   045D 04 43               654 	.word	LC73
   045F 04 4A               655 	.word	LC74
   0461 04 4F               656 	.word	LC75
   0463 04 54               657 	.word	LC76
                            658 	.globl	_fountain
   0465                     659 LC77:
   0465 57 48 49 54 45 00   660 	.ascii	"WHITE\0"
   046B                     661 LC78:
   046B 47 52 45 45 4E 00   662 	.ascii	"GREEN\0"
   0471                     663 LC79:
   0471 43 4C 45 41 52 00   664 	.ascii	"CLEAR\0"
   0477                     665 LC80:
   0477 52 45 44 00         666 	.ascii	"RED\0"
   047B                     667 LC81:
   047B 42 4C 41 43 4B 00   668 	.ascii	"BLACK\0"
   0481                     669 _fountain:
   0481 04 65               670 	.word	LC77
   0483 04 6B               671 	.word	LC78
   0485 04 71               672 	.word	LC79
   0487 04 77               673 	.word	LC80
   0489 04 7B               674 	.word	LC81
                            675 	.globl	_boxColors
   048B                     676 LC82:
   048B 52 45 44 80 00      677 	.byte	82,69,68,-128,0
   0490                     678 LC83:
   0490 47 52 45 45 4E 80   679 	.byte	71,82,69,69,78,-128,0
        00
   0497                     680 LC84:
   0497 59 45 4C 4C 4F 57   681 	.byte	89,69,76,76,79,87,-128,0
        80 00
   049F                     682 LC85:
   049F 42 4C 55 45 80 00   683 	.byte	66,76,85,69,-128,0
   04A5                     684 _boxColors:
   04A5 04 8B               685 	.word	LC82
   04A7 04 90               686 	.word	LC83
   04A9 04 97               687 	.word	LC84
   04AB 04 9F               688 	.word	LC85
                            689 	.globl	_environment_string
   04AD                     690 LC86:
   04AD 4E 4F 4E 45 00      691 	.ascii	"NONE\0"
   04B2                     692 LC87:
   04B2 53 54 41 49 52 00   693 	.ascii	"STAIR\0"
   04B8                     694 LC88:
   04B8 50 49 54 00         695 	.ascii	"PIT\0"
   04BC                     696 LC89:
   04BC 54 45 4C 45 50 4F   697 	.ascii	"TELEPORT\0"
        52 54 00
   04C5                     698 LC90:
   04C5 41 4C 54 41 52 00   699 	.ascii	"ALTAR\0"
   04CB                     700 LC91:
   04CB 46 4F 55 4E 54 41   701 	.ascii	"FOUNTAIN\0"
        49 4E 00
   04D4                     702 LC92:
   04D4 43 55 42 45 00      703 	.ascii	"CUBE\0"
   04D9                     704 LC93:
   04D9 54 48 52 4F 4E 45   705 	.ascii	"THRONE\0"
        00
   04E0                     706 LC94:
   04E0 42 4F 58 00         707 	.ascii	"BOX\0"
   04E4                     708 _environment_string:
   04E4 04 AD               709 	.word	LC86
   04E6 04 B2               710 	.word	LC87
   04E8 04 B8               711 	.word	LC88
   04EA 04 BC               712 	.word	LC89
   04EC 04 B2               713 	.word	LC87
   04EE 04 C5               714 	.word	LC90
   04F0 04 CB               715 	.word	LC91
   04F2 04 D4               716 	.word	LC92
   04F4 04 D9               717 	.word	LC93
   04F6 04 E0               718 	.word	LC94
                            719 	.globl	_testForButton
   04F8                     720 _testForButton:
   04F8 32 77         [ 5]  721 	leas	-9,s	;,,
   04FA E7 61         [ 5]  722 	stb	1,s	; d, d
                            723 ;----- asm -----
                            724 ; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            725 	; #ENR#[129]signed int p = 0;
                            726 ; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            727 	; #ENR#[130]signed int t = 0;
                            728 ; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            729 	; #ENR#[131]localtimer = action_time;
                            730 ;--- end asm ---
   04FC C6 FA         [ 2]  731 	ldb	#-6	;,
   04FE F7 C8 A8      [ 5]  732 	stb	_localTimer	;, localTimer
                            733 ;----- asm -----
                            734 ; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            735 	; #ENR#[132]do
                            736 ;--- end asm ---
   0501 6D 61         [ 7]  737 	tst	1,s	; d
   0503 10 26 00 85   [ 6]  738 	lbne	L2	;
   0507 6F 67         [ 7]  739 	clr	7,s	; p.235
   0509 6F 64         [ 7]  740 	clr	4,s	; t
   050B 16 00 67      [ 5]  741 	lbra	L11	;
   050E                     742 L23:
                            743 ;----- asm -----
                            744 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            745 	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
                            746 ;--- end asm ---
   050E F6 C8 11      [ 5]  747 	ldb	_Vec_Buttons	;, Vec_Buttons
   0511 E7 66         [ 5]  748 	stb	6,s	;, temp.230
   0513 C5 08         [ 2]  749 	bitb	#8	;,
   0515 27 08         [ 3]  750 	beq	L4	;
   0517 C6 01         [ 2]  751 	ldb	#1	;,
   0519 E7 67         [ 5]  752 	stb	7,s	;, p.235
   051B C6 04         [ 2]  753 	ldb	#4	;,
   051D E7 64         [ 5]  754 	stb	4,s	;, t
   051F                     755 L4:
                            756 ;----- asm -----
                            757 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            758 	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
                            759 ;--- end asm ---
   051F C6 04         [ 2]  760 	ldb	#4	; tmp40,
   0521 E4 66         [ 5]  761 	andb	6,s	; tmp40, temp.230
   0523 27 08         [ 3]  762 	beq	L5	;
   0525 C6 01         [ 2]  763 	ldb	#1	;,
   0527 E7 67         [ 5]  764 	stb	7,s	;, p.235
   0529 C6 03         [ 2]  765 	ldb	#3	;,
   052B E7 64         [ 5]  766 	stb	4,s	;, t
   052D                     767 L5:
                            768 ;----- asm -----
                            769 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            770 	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
                            771 ;--- end asm ---
   052D C6 02         [ 2]  772 	ldb	#2	; tmp41,
   052F E4 66         [ 5]  773 	andb	6,s	; tmp41, temp.230
   0531 27 08         [ 3]  774 	beq	L6	;
   0533 C6 01         [ 2]  775 	ldb	#1	;,
   0535 E7 67         [ 5]  776 	stb	7,s	;, p.235
   0537 C6 02         [ 2]  777 	ldb	#2	;,
   0539 E7 64         [ 5]  778 	stb	4,s	;, t
   053B                     779 L6:
                            780 ;----- asm -----
                            781 ; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            782 	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
                            783 ;--- end asm ---
   053B C6 01         [ 2]  784 	ldb	#1	; tmp42,
   053D E4 66         [ 5]  785 	andb	6,s	; tmp42, temp.230
   053F 27 06         [ 3]  786 	beq	L7	;
   0541 C6 01         [ 2]  787 	ldb	#1	;,
   0543 E7 67         [ 5]  788 	stb	7,s	;, p.235
   0545 E7 64         [ 5]  789 	stb	4,s	;, t
   0547                     790 L7:
                            791 ;----- asm -----
                            792 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            793 	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
                            794 ;--- end asm ---
   0547 F6 C8 1B      [ 5]  795 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   054A E7 68         [ 5]  796 	stb	8,s	;, Vec_Joy_1_X.236
   054C 27 08         [ 3]  797 	beq	L8	;
   054E C6 01         [ 2]  798 	ldb	#1	;,
   0550 E7 67         [ 5]  799 	stb	7,s	;, p.235
   0552 C6 05         [ 2]  800 	ldb	#5	;,
   0554 E7 64         [ 5]  801 	stb	4,s	;, t
   0556                     802 L8:
                            803 ;----- asm -----
                            804 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            805 	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
                            806 ;--- end asm ---
   0556 F6 C8 1C      [ 5]  807 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   0559 E7 E4         [ 4]  808 	stb	,s	;, Vec_Joy_1_Y.237
   055B 27 08         [ 3]  809 	beq	L9	;
   055D C6 01         [ 2]  810 	ldb	#1	;,
   055F E7 67         [ 5]  811 	stb	7,s	;, p.235
   0561 C6 05         [ 2]  812 	ldb	#5	;,
   0563 E7 64         [ 5]  813 	stb	4,s	;, t
   0565                     814 L9:
                            815 ;----- asm -----
                            816 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            817 	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                            818 ;--- end asm ---
   0565 6D 67         [ 7]  819 	tst	7,s	; p.235
   0567 27 0C         [ 3]  820 	beq	L10	;
   0569 6D 68         [ 7]  821 	tst	8,s	; Vec_Joy_1_X.236
   056B 26 08         [ 3]  822 	bne	L10	;
   056D 6D E4         [ 6]  823 	tst	,s	; Vec_Joy_1_Y.237
   056F 26 04         [ 3]  824 	bne	L10	;
   0571 6D 66         [ 7]  825 	tst	6,s	; temp.230
   0573 27 0A         [ 3]  826 	beq	L3	;
   0575                     827 L10:
                            828 ;----- asm -----
                            829 ; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            830 	; #ENR#[151]while (1);
                            831 ;--- end asm ---
   0575                     832 L11:
                            833 ;----- asm -----
                            834 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            835 	; #ENR#[134]displayround();
                            836 ;--- end asm ---
   0575 BD 3D AC      [ 8]  837 	jsr	_displayRound
                            838 ;----- asm -----
                            839 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            840 	; #ENR#[135]if (d!=0) localtimer--;
                            841 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            842 	; #ENR#[137]if (localtimer == 0) break;
                            843 ;--- end asm ---
   0578 7D C8 A8      [ 7]  844 	tst	_localTimer	; localTimer
   057B 10 26 FF 8F   [ 6]  845 	lbne	L23	;
   057F                     846 L3:
                            847 ;----- asm -----
                            848 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            849 	; #ENR#[153]if (t == 0) return d;
                            850 ;--- end asm ---
   057F 6D 64         [ 7]  851 	tst	4,s	; t
   0581 27 04         [ 3]  852 	beq	L20	;
                            853 ;----- asm -----
                            854 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            855 	; #ENR#[154]return t;
                            856 ;--- end asm ---
   0583 E6 64         [ 5]  857 	ldb	4,s	;, t
   0585 E7 61         [ 5]  858 	stb	1,s	;, d
   0587                     859 L20:
   0587 E6 61         [ 5]  860 	ldb	1,s	;, d
   0589 32 69         [ 5]  861 	leas	9,s	;,,
   058B 39            [ 5]  862 	rts
   058C                     863 L2:
   058C 6F 63         [ 7]  864 	clr	3,s	; p
   058E 6F 64         [ 7]  865 	clr	4,s	; t
   0590 16 00 69      [ 5]  866 	lbra	L19	;
   0593                     867 L24:
                            868 ;----- asm -----
                            869 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            870 	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
                            871 ;--- end asm ---
   0593 F6 C8 11      [ 5]  872 	ldb	_Vec_Buttons	;, Vec_Buttons
   0596 E7 65         [ 5]  873 	stb	5,s	;, D.4749
   0598 C5 08         [ 2]  874 	bitb	#8	;,
   059A 27 08         [ 3]  875 	beq	L12	;
   059C C6 01         [ 2]  876 	ldb	#1	;,
   059E E7 63         [ 5]  877 	stb	3,s	;, p
   05A0 C6 04         [ 2]  878 	ldb	#4	;,
   05A2 E7 64         [ 5]  879 	stb	4,s	;, t
   05A4                     880 L12:
                            881 ;----- asm -----
                            882 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            883 	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
                            884 ;--- end asm ---
   05A4 C6 04         [ 2]  885 	ldb	#4	; tmp44,
   05A6 E4 65         [ 5]  886 	andb	5,s	; tmp44, D.4749
   05A8 27 08         [ 3]  887 	beq	L13	;
   05AA C6 01         [ 2]  888 	ldb	#1	;,
   05AC E7 63         [ 5]  889 	stb	3,s	;, p
   05AE C6 03         [ 2]  890 	ldb	#3	;,
   05B0 E7 64         [ 5]  891 	stb	4,s	;, t
   05B2                     892 L13:
                            893 ;----- asm -----
                            894 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            895 	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
                            896 ;--- end asm ---
   05B2 C6 02         [ 2]  897 	ldb	#2	; tmp45,
   05B4 E4 65         [ 5]  898 	andb	5,s	; tmp45, D.4749
   05B6 27 08         [ 3]  899 	beq	L14	;
   05B8 C6 01         [ 2]  900 	ldb	#1	;,
   05BA E7 63         [ 5]  901 	stb	3,s	;, p
   05BC C6 02         [ 2]  902 	ldb	#2	;,
   05BE E7 64         [ 5]  903 	stb	4,s	;, t
   05C0                     904 L14:
                            905 ;----- asm -----
                            906 ; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            907 	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
                            908 ;--- end asm ---
   05C0 C6 01         [ 2]  909 	ldb	#1	; tmp46,
   05C2 E4 65         [ 5]  910 	andb	5,s	; tmp46, D.4749
   05C4 27 06         [ 3]  911 	beq	L15	;
   05C6 C6 01         [ 2]  912 	ldb	#1	;,
   05C8 E7 63         [ 5]  913 	stb	3,s	;, p
   05CA E7 64         [ 5]  914 	stb	4,s	;, t
   05CC                     915 L15:
                            916 ;----- asm -----
                            917 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            918 	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
                            919 ;--- end asm ---
   05CC F6 C8 1B      [ 5]  920 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   05CF E7 62         [ 5]  921 	stb	2,s	;, Vec_Joy_1_X.4
   05D1 27 08         [ 3]  922 	beq	L16	;
   05D3 C6 01         [ 2]  923 	ldb	#1	;,
   05D5 E7 63         [ 5]  924 	stb	3,s	;, p
   05D7 C6 05         [ 2]  925 	ldb	#5	;,
   05D9 E7 64         [ 5]  926 	stb	4,s	;, t
   05DB                     927 L16:
                            928 ;----- asm -----
                            929 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            930 	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
                            931 ;--- end asm ---
   05DB F6 C8 1C      [ 5]  932 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   05DE E7 E4         [ 4]  933 	stb	,s	;, Vec_Joy_1_Y.5
   05E0 27 08         [ 3]  934 	beq	L17	;
   05E2 C6 01         [ 2]  935 	ldb	#1	;,
   05E4 E7 63         [ 5]  936 	stb	3,s	;, p
   05E6 C6 05         [ 2]  937 	ldb	#5	;,
   05E8 E7 64         [ 5]  938 	stb	4,s	;, t
   05EA                     939 L17:
                            940 ;----- asm -----
                            941 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            942 	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                            943 ;--- end asm ---
   05EA 6D 63         [ 7]  944 	tst	3,s	; p
   05EC 27 0E         [ 3]  945 	beq	L18	;
   05EE 6D 62         [ 7]  946 	tst	2,s	; Vec_Joy_1_X.4
   05F0 26 0A         [ 3]  947 	bne	L18	;
   05F2 6D E4         [ 6]  948 	tst	,s	; Vec_Joy_1_Y.5
   05F4 26 06         [ 3]  949 	bne	L18	;
   05F6 6D 65         [ 7]  950 	tst	5,s	; D.4749
   05F8 10 27 FF 83   [ 6]  951 	lbeq	L3	;
   05FC                     952 L18:
                            953 ;----- asm -----
                            954 ; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            955 	; #ENR#[151]while (1);
                            956 ;--- end asm ---
   05FC                     957 L19:
                            958 ;----- asm -----
                            959 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            960 	; #ENR#[134]displayround();
                            961 ;--- end asm ---
   05FC BD 3D AC      [ 8]  962 	jsr	_displayRound
                            963 ;----- asm -----
                            964 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            965 	; #ENR#[135]if (d!=0) localtimer--;
                            966 ;--- end asm ---
   05FF 7A C8 A8      [ 7]  967 	dec	_localTimer	; localTimer
   0602 F6 C8 A8      [ 5]  968 	ldb	_localTimer	; localTimer.3, localTimer
                            969 ;----- asm -----
                            970 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            971 	; #ENR#[137]if (localtimer == 0) break;
                            972 ;--- end asm ---
   0605 5D            [ 2]  973 	tstb	; localTimer.3
   0606 10 26 FF 89   [ 6]  974 	lbne	L24	;
   060A 16 FF 72      [ 5]  975 	lbra	L3	;
                            976 	.globl	_testForInput
   060D                     977 _testForInput:
   060D 32 79         [ 5]  978 	leas	-7,s	;,,
   060F E7 61         [ 5]  979 	stb	1,s	; d, d
                            980 ;----- asm -----
                            981 ; 181 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            982 	; #ENR#[163]int b=0;
                            983 ; 183 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            984 	; #ENR#[164]signed int t = 0;
                            985 ; 185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            986 	; #ENR#[165]resetbuttons();
                            987 ;--- end asm ---
   0611 7F C8 11      [ 7]  988 	clr	_Vec_Buttons	; Vec_Buttons
                            989 ;----- asm -----
                            990 ; 187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            991 	; #ENR#[166]localtimer = action_time;
                            992 ;--- end asm ---
   0614 C6 FA         [ 2]  993 	ldb	#-6	;,
   0616 F7 C8 A8      [ 5]  994 	stb	_localTimer	;, localTimer
                            995 ;----- asm -----
                            996 ; 189 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                            997 	; #ENR#[167]do
                            998 ;--- end asm ---
   0619 6D 61         [ 7]  999 	tst	1,s	; d
   061B 10 26 00 8D   [ 6] 1000 	lbne	L26	;
   061F 6F 63         [ 7] 1001 	clr	3,s	; t
   0621 20 26         [ 3] 1002 	bra	L38	;
   0623                    1003 L33:
                           1004 ;----- asm -----
                           1005 ; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1006 	; #ENR#[179]if (vec_joy_1_y > 0) {t = 5; b=1;}
                           1007 ;--- end asm ---
   0623 F6 C8 1C      [ 5] 1008 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   0626 E7 E4         [ 4] 1009 	stb	,s	;, Vec_Joy_1_Y.255
   0628 2F 04         [ 3] 1010 	ble	L34	;
   062A C6 05         [ 2] 1011 	ldb	#5	;,
   062C E7 63         [ 5] 1012 	stb	3,s	;, t
   062E                    1013 L34:
                           1014 ;----- asm -----
                           1015 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1016 	; #ENR#[180]if (vec_joy_1_y < 0) {t = 6; b=1;}
                           1017 ;--- end asm ---
   062E 6D E4         [ 6] 1018 	tst	,s	; Vec_Joy_1_Y.255
   0630 10 2D 00 5F   [ 6] 1019 	lblt	L51	;
   0634                    1020 L35:
                           1021 ;----- asm -----
                           1022 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1023 	; #ENR#[183]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
                           1024 ;--- end asm ---
   0634 6D 65         [ 7] 1025 	tst	5,s	; temp.248
   0636 26 0E         [ 3] 1026 	bne	L36	;
   0638 6D 66         [ 7] 1027 	tst	6,s	; Vec_Joy_1_X.254
   063A 26 0A         [ 3] 1028 	bne	L36	;
   063C 6D E4         [ 6] 1029 	tst	,s	; Vec_Joy_1_Y.255
   063E 26 06         [ 3] 1030 	bne	L36	;
   0640 6D 63         [ 7] 1031 	tst	3,s	; t
   0642 10 26 00 56   [ 6] 1032 	lbne	L37	;
   0646                    1033 L36:
                           1034 ;----- asm -----
                           1035 ; 219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1036 	; #ENR#[185]displayround();
                           1037 ;--- end asm ---
   0646 BD 3D AC      [ 8] 1038 	jsr	_displayRound
                           1039 ;----- asm -----
                           1040 ; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1041 	; #ENR#[187]while (1);
                           1042 ;--- end asm ---
   0649                    1043 L38:
                           1044 ;----- asm -----
                           1045 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1046 	; #ENR#[169]if (d!=0) localtimer--;
                           1047 ; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1048 	; #ENR#[171]if (localtimer == 0) {t = 0; break;}
                           1049 ;--- end asm ---
   0649 7D C8 A8      [ 7] 1050 	tst	_localTimer	; localTimer
   064C 10 27 00 4A   [ 6] 1051 	lbeq	L27	;
                           1052 ;----- asm -----
                           1053 ; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1054 	; #ENR#[172]if (button_1_4_pressed()) {t = 4; b=1;}
                           1055 ;--- end asm ---
   0650 F6 C8 11      [ 5] 1056 	ldb	_Vec_Buttons	;, Vec_Buttons
   0653 E7 65         [ 5] 1057 	stb	5,s	;, temp.248
   0655 C5 08         [ 2] 1058 	bitb	#8	;,
   0657 27 04         [ 3] 1059 	beq	L28	;
   0659 C6 04         [ 2] 1060 	ldb	#4	;,
   065B E7 63         [ 5] 1061 	stb	3,s	;, t
   065D                    1062 L28:
                           1063 ;----- asm -----
                           1064 ; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1065 	; #ENR#[173]if (button_1_3_pressed()) {t = 3; b=1;}
                           1066 ;--- end asm ---
   065D C6 04         [ 2] 1067 	ldb	#4	; tmp38,
   065F E4 65         [ 5] 1068 	andb	5,s	; tmp38, temp.248
   0661 27 04         [ 3] 1069 	beq	L29	;
   0663 C6 03         [ 2] 1070 	ldb	#3	;,
   0665 E7 63         [ 5] 1071 	stb	3,s	;, t
   0667                    1072 L29:
                           1073 ;----- asm -----
                           1074 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1075 	; #ENR#[174]if (button_1_2_pressed()) {t = 2; b=1;}
                           1076 ;--- end asm ---
   0667 C6 02         [ 2] 1077 	ldb	#2	; tmp39,
   0669 E4 65         [ 5] 1078 	andb	5,s	; tmp39, temp.248
   066B 27 04         [ 3] 1079 	beq	L30	;
   066D C6 02         [ 2] 1080 	ldb	#2	;,
   066F E7 63         [ 5] 1081 	stb	3,s	;, t
   0671                    1082 L30:
                           1083 ;----- asm -----
                           1084 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1085 	; #ENR#[175]if (button_1_1_pressed()) {t = 1; b=1;}
                           1086 ;--- end asm ---
   0671 C6 01         [ 2] 1087 	ldb	#1	; tmp40,
   0673 E4 65         [ 5] 1088 	andb	5,s	; tmp40, temp.248
   0675 27 04         [ 3] 1089 	beq	L31	;
   0677 C6 01         [ 2] 1090 	ldb	#1	;,
   0679 E7 63         [ 5] 1091 	stb	3,s	;, t
   067B                    1092 L31:
                           1093 ;----- asm -----
                           1094 ; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1095 	; #ENR#[177]if (vec_joy_1_x > 0) {t = 8; b=1;}
                           1096 ;--- end asm ---
   067B F6 C8 1B      [ 5] 1097 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   067E E7 66         [ 5] 1098 	stb	6,s	;, Vec_Joy_1_X.254
   0680 2F 04         [ 3] 1099 	ble	L32	;
   0682 C6 08         [ 2] 1100 	ldb	#8	;,
   0684 E7 63         [ 5] 1101 	stb	3,s	;, t
   0686                    1102 L32:
                           1103 ;----- asm -----
                           1104 ; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1105 	; #ENR#[178]if (vec_joy_1_x < 0) {t = 7; b=1;}
                           1106 ;--- end asm ---
   0686 6D 66         [ 7] 1107 	tst	6,s	; Vec_Joy_1_X.254
   0688 10 2C FF 97   [ 6] 1108 	lbge	L33	;
   068C C6 07         [ 2] 1109 	ldb	#7	;,
   068E E7 63         [ 5] 1110 	stb	3,s	;, t
   0690 16 FF 90      [ 5] 1111 	lbra	L33	;
   0693                    1112 L51:
   0693 C6 06         [ 2] 1113 	ldb	#6	;,
   0695 E7 63         [ 5] 1114 	stb	3,s	;, t
   0697 16 FF 9A      [ 5] 1115 	lbra	L35	;
   069A                    1116 L27:
   069A 6F 63         [ 7] 1117 	clr	3,s	; t
   069C                    1118 L37:
                           1119 ;----- asm -----
                           1120 ; 224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1121 	; #ENR#[188]resetbuttons();
                           1122 ;--- end asm ---
   069C 7F C8 11      [ 7] 1123 	clr	_Vec_Buttons	; Vec_Buttons
                           1124 ;----- asm -----
                           1125 ; 226 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1126 	; #ENR#[189]if (t == 0) return d;
                           1127 ;--- end asm ---
   069F 6D 63         [ 7] 1128 	tst	3,s	; t
   06A1 27 04         [ 3] 1129 	beq	L49	;
                           1130 ;----- asm -----
                           1131 ; 228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1132 	; #ENR#[190]return t;
                           1133 ;--- end asm ---
   06A3 E6 63         [ 5] 1134 	ldb	3,s	;, t
   06A5 E7 61         [ 5] 1135 	stb	1,s	;, d
   06A7                    1136 L49:
   06A7 E6 61         [ 5] 1137 	ldb	1,s	;, d
   06A9 32 67         [ 5] 1138 	leas	7,s	;,,
   06AB 39            [ 5] 1139 	rts
   06AC                    1140 L26:
   06AC 6F 63         [ 7] 1141 	clr	3,s	; t
   06AE 20 26         [ 3] 1142 	bra	L48	;
   06B0                    1143 L44:
                           1144 ;----- asm -----
                           1145 ; 210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1146 	; #ENR#[179]if (vec_joy_1_y > 0) {t = 5; b=1;}
                           1147 ;--- end asm ---
   06B0 F6 C8 1C      [ 5] 1148 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   06B3 E7 E4         [ 4] 1149 	stb	,s	;, Vec_Joy_1_Y.9
   06B5 2F 04         [ 3] 1150 	ble	L45	;
   06B7 C6 05         [ 2] 1151 	ldb	#5	;,
   06B9 E7 63         [ 5] 1152 	stb	3,s	;, t
   06BB                    1153 L45:
                           1154 ;----- asm -----
                           1155 ; 212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1156 	; #ENR#[180]if (vec_joy_1_y < 0) {t = 6; b=1;}
                           1157 ;--- end asm ---
   06BB 6D E4         [ 6] 1158 	tst	,s	; Vec_Joy_1_Y.9
   06BD 10 2D 00 63   [ 6] 1159 	lblt	L52	;
   06C1                    1160 L46:
                           1161 ;----- asm -----
                           1162 ; 216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1163 	; #ENR#[183]if ((buttons_pressed() == 0) && (vec_joy_1_x==0) && (vec_joy_1_y==0))
                           1164 ;--- end asm ---
   06C1 6D 64         [ 7] 1165 	tst	4,s	; D.4735
   06C3 26 0E         [ 3] 1166 	bne	L47	;
   06C5 6D 62         [ 7] 1167 	tst	2,s	; Vec_Joy_1_X.8
   06C7 26 0A         [ 3] 1168 	bne	L47	;
   06C9 6D E4         [ 6] 1169 	tst	,s	; Vec_Joy_1_Y.9
   06CB 26 06         [ 3] 1170 	bne	L47	;
   06CD 6D 63         [ 7] 1171 	tst	3,s	; t
   06CF 10 26 FF C9   [ 6] 1172 	lbne	L37	;
   06D3                    1173 L47:
                           1174 ;----- asm -----
                           1175 ; 219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1176 	; #ENR#[185]displayround();
                           1177 ;--- end asm ---
   06D3 BD 3D AC      [ 8] 1178 	jsr	_displayRound
                           1179 ;----- asm -----
                           1180 ; 221 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1181 	; #ENR#[187]while (1);
                           1182 ;--- end asm ---
   06D6                    1183 L48:
                           1184 ;----- asm -----
                           1185 ; 192 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1186 	; #ENR#[169]if (d!=0) localtimer--;
                           1187 ;--- end asm ---
   06D6 7A C8 A8      [ 7] 1188 	dec	_localTimer	; localTimer
   06D9 F6 C8 A8      [ 5] 1189 	ldb	_localTimer	; localTimer.7, localTimer
                           1190 ;----- asm -----
                           1191 ; 195 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1192 	; #ENR#[171]if (localtimer == 0) {t = 0; break;}
                           1193 ;--- end asm ---
   06DC 5D            [ 2] 1194 	tstb	; localTimer.7
   06DD 10 27 FF B9   [ 6] 1195 	lbeq	L27	;
                           1196 ;----- asm -----
                           1197 ; 197 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1198 	; #ENR#[172]if (button_1_4_pressed()) {t = 4; b=1;}
                           1199 ;--- end asm ---
   06E1 F6 C8 11      [ 5] 1200 	ldb	_Vec_Buttons	;, Vec_Buttons
   06E4 E7 64         [ 5] 1201 	stb	4,s	;, D.4735
   06E6 C5 08         [ 2] 1202 	bitb	#8	;,
   06E8 27 04         [ 3] 1203 	beq	L39	;
   06EA C6 04         [ 2] 1204 	ldb	#4	;,
   06EC E7 63         [ 5] 1205 	stb	3,s	;, t
   06EE                    1206 L39:
                           1207 ;----- asm -----
                           1208 ; 199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1209 	; #ENR#[173]if (button_1_3_pressed()) {t = 3; b=1;}
                           1210 ;--- end asm ---
   06EE C6 04         [ 2] 1211 	ldb	#4	; tmp42,
   06F0 E4 64         [ 5] 1212 	andb	4,s	; tmp42, D.4735
   06F2 27 04         [ 3] 1213 	beq	L40	;
   06F4 C6 03         [ 2] 1214 	ldb	#3	;,
   06F6 E7 63         [ 5] 1215 	stb	3,s	;, t
   06F8                    1216 L40:
                           1217 ;----- asm -----
                           1218 ; 201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1219 	; #ENR#[174]if (button_1_2_pressed()) {t = 2; b=1;}
                           1220 ;--- end asm ---
   06F8 C6 02         [ 2] 1221 	ldb	#2	; tmp43,
   06FA E4 64         [ 5] 1222 	andb	4,s	; tmp43, D.4735
   06FC 27 04         [ 3] 1223 	beq	L41	;
   06FE C6 02         [ 2] 1224 	ldb	#2	;,
   0700 E7 63         [ 5] 1225 	stb	3,s	;, t
   0702                    1226 L41:
                           1227 ;----- asm -----
                           1228 ; 203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1229 	; #ENR#[175]if (button_1_1_pressed()) {t = 1; b=1;}
                           1230 ;--- end asm ---
   0702 C6 01         [ 2] 1231 	ldb	#1	; tmp44,
   0704 E4 64         [ 5] 1232 	andb	4,s	; tmp44, D.4735
   0706 27 04         [ 3] 1233 	beq	L42	;
   0708 C6 01         [ 2] 1234 	ldb	#1	;,
   070A E7 63         [ 5] 1235 	stb	3,s	;, t
   070C                    1236 L42:
                           1237 ;----- asm -----
                           1238 ; 206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1239 	; #ENR#[177]if (vec_joy_1_x > 0) {t = 8; b=1;}
                           1240 ;--- end asm ---
   070C F6 C8 1B      [ 5] 1241 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   070F E7 62         [ 5] 1242 	stb	2,s	;, Vec_Joy_1_X.8
   0711 2F 04         [ 3] 1243 	ble	L43	;
   0713 C6 08         [ 2] 1244 	ldb	#8	;,
   0715 E7 63         [ 5] 1245 	stb	3,s	;, t
   0717                    1246 L43:
                           1247 ;----- asm -----
                           1248 ; 208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1249 	; #ENR#[178]if (vec_joy_1_x < 0) {t = 7; b=1;}
                           1250 ;--- end asm ---
   0717 6D 62         [ 7] 1251 	tst	2,s	; Vec_Joy_1_X.8
   0719 10 2C FF 93   [ 6] 1252 	lbge	L44	;
   071D C6 07         [ 2] 1253 	ldb	#7	;,
   071F E7 63         [ 5] 1254 	stb	3,s	;, t
   0721 16 FF 8C      [ 5] 1255 	lbra	L44	;
   0724                    1256 L52:
   0724 C6 06         [ 2] 1257 	ldb	#6	;,
   0726 E7 63         [ 5] 1258 	stb	3,s	;, t
   0728 16 FF 96      [ 5] 1259 	lbra	L46	;
   072B                    1260 LC95:
   072B 45 4E 54 45 52 20  1261 	.byte	69,78,84,69,82,32,78,85
        4E 55
   0733 4D 42 45 52 3A 80  1262 	.byte	77,66,69,82,58,-128,0
        00
   073A                    1263 LC96:
   073A 28 20 4D 41 58 3A  1264 	.ascii	"( MAX: % )\0"
        20 25 20 29 00
   0745                    1265 LC97:
   0745 28 20 4D 49 4E 3A  1266 	.ascii	"( MIN: % )\0"
        20 25 20 29 00
   0750                    1267 LC98:
   0750 20 5E 20 80 00     1268 	.byte	32,94,32,-128,0
                           1269 	.globl	_inputNumber
   0755                    1270 _inputNumber:
   0755 34 60         [ 7] 1271 	pshs	y,u	;
   0757 32 E8 D6      [ 5] 1272 	leas	-42,s	;,,
   075A AF E8 17      [ 6] 1273 	stx	23,s	; message, message
                           1274 ;----- asm -----
                           1275 ; 238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1276 	; #ENR#[199]unsigned long long int ulltmp = (unsigned long long int) min;
                           1277 ; 240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1278 	; #ENR#[200]signed int maxdigit = 4;
                           1279 ; 242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1280 	; #ENR#[201]char *ascii = stringbuffer12;
                           1281 ; 244 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1282 	; #ENR#[202]extern char * _ltoa(unsigned long n, char *pointer, int zerotospaces);
                           1283 ; 246 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1284 	; #ENR#[203]unsigned int len = vstrlen(message)>>1;
                           1285 ;--- end asm ---
   075D BD 71 86      [ 8] 1286 	jsr	_vstrlen
   0760 E7 E8 1F      [ 5] 1287 	stb	31,s	;, len
   0763 64 E8 1F      [ 7] 1288 	lsr	31,s	; len
                           1289 ;----- asm -----
                           1290 ; 250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1291 	; #ENR#[206]_ltoa(min, ascii,0);
                           1292 ;--- end asm ---
   0766 10 8E C8 B3   [ 4] 1293 	ldy	#_stringBuffer12	; tmp49,
   076A 34 20         [ 6] 1294 	pshs	y	; tmp49
   076C 5F            [ 2] 1295 	clrb	;
   076D AE E8 32      [ 6] 1296 	ldx	50,s	;, min
   0770 BD 5D 40      [ 8] 1297 	jsr	__ltoa
                           1298 ;----- asm -----
                           1299 ; 252 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1300 	; #ENR#[207]if (*(ascii+0) == ' ') *(ascii+0) = '0';
                           1301 ;--- end asm ---
   0773 32 62         [ 5] 1302 	leas	2,s	;,,
   0775 E6 A4         [ 4] 1303 	ldb	,y	;, stringBuffer12
   0777 C1 20         [ 2] 1304 	cmpb	#32	;cmpqi:	;,
   0779 10 27 03 E1   [ 6] 1305 	lbeq	L87	;
   077D                    1306 L54:
                           1307 ;----- asm -----
                           1308 ; 254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1309 	; #ENR#[208]if (*(ascii+1) == ' ') *(ascii+1) = '0';
                           1310 ;--- end asm ---
   077D F6 C8 B4      [ 5] 1311 	ldb	_stringBuffer12+1	;, stringBuffer12
   0780 C1 20         [ 2] 1312 	cmpb	#32	;cmpqi:	;,
   0782 10 27 03 F8   [ 6] 1313 	lbeq	L88	;
   0786                    1314 L55:
                           1315 ;----- asm -----
                           1316 ; 256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1317 	; #ENR#[209]if (*(ascii+2) == ' ') *(ascii+2) = '0';
                           1318 ;--- end asm ---
   0786 F6 C8 B5      [ 5] 1319 	ldb	_stringBuffer12+2	;, stringBuffer12
   0789 C1 20         [ 2] 1320 	cmpb	#32	;cmpqi:	;,
   078B 10 27 03 E7   [ 6] 1321 	lbeq	L89	;
   078F                    1322 L56:
                           1323 ;----- asm -----
                           1324 ; 258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1325 	; #ENR#[210]if (*(ascii+3) == ' ') *(ascii+3) = '0';
                           1326 ;--- end asm ---
   078F F6 C8 B6      [ 5] 1327 	ldb	_stringBuffer12+3	;, stringBuffer12
   0792 C1 20         [ 2] 1328 	cmpb	#32	;cmpqi:	;,
   0794 10 27 03 D6   [ 6] 1329 	lbeq	L90	;
   0798                    1330 L57:
                           1331 ;----- asm -----
                           1332 ; 260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1333 	; #ENR#[211]if (*(ascii+4) == ' ') *(ascii+4) = '0';
                           1334 ;--- end asm ---
   0798 F6 C8 B7      [ 5] 1335 	ldb	_stringBuffer12+4	;, stringBuffer12
   079B C1 20         [ 2] 1336 	cmpb	#32	;cmpqi:	;,
   079D 10 27 03 C5   [ 6] 1337 	lbeq	L91	;
   07A1                    1338 L58:
                           1339 ;----- asm -----
                           1340 ; 262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1341 	; #ENR#[212]*(ascii+5) = '�';
                           1342 ;--- end asm ---
   07A1 C6 80         [ 2] 1343 	ldb	#-128	;,
   07A3 F7 C8 B8      [ 5] 1344 	stb	_stringBuffer12+5	;, stringBuffer12
                           1345 ;----- asm -----
                           1346 ; 265 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1347 	; #ENR#[214]if (max<10000) {ascii++; maxdigit = 3;}
                           1348 ;--- end asm ---
   07A6 AE E8 32      [ 6] 1349 	ldx	50,s	;, max
   07A9 8C 27 0F      [ 4] 1350 	cmpx	#9999	;cmphi:	;,
   07AC 10 22 03 9D   [ 6] 1351 	lbhi	L59	;
   07B0 C6 03         [ 2] 1352 	ldb	#3	;,
   07B2 E7 E8 1E      [ 5] 1353 	stb	30,s	;, maxDigit
   07B5 CE C8 B4      [ 3] 1354 	ldu	#_stringBuffer12+1	; ascii,
   07B8 8E 00 03      [ 3] 1355 	ldx	#3	;,
   07BB AF E8 21      [ 6] 1356 	stx	33,s	;, prephitmp.271
   07BE                    1357 L60:
                           1358 ;----- asm -----
                           1359 ; 267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1360 	; #ENR#[215]if (max<1000) {ascii++; maxdigit = 2;}
                           1361 ;--- end asm ---
   07BE EC E8 32      [ 6] 1362 	ldd	50,s	;, max
   07C1 10 83 03 E7   [ 5] 1363 	cmpd	#999	;cmphi:	;,
   07C5 22 0D         [ 3] 1364 	bhi	L61	;
   07C7 33 41         [ 5] 1365 	leau	1,u	; ascii,, ascii
   07C9 C6 02         [ 2] 1366 	ldb	#2	;,
   07CB E7 E8 1E      [ 5] 1367 	stb	30,s	;, maxDigit
   07CE 8E 00 02      [ 3] 1368 	ldx	#2	;,
   07D1 AF E8 21      [ 6] 1369 	stx	33,s	;, prephitmp.271
   07D4                    1370 L61:
                           1371 ;----- asm -----
                           1372 ; 269 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1373 	; #ENR#[216]if (max<100) {ascii++; maxdigit = 1;}
                           1374 ;--- end asm ---
   07D4 EC E8 32      [ 6] 1375 	ldd	50,s	;, max
   07D7 10 83 00 63   [ 5] 1376 	cmpd	#99	;cmphi:	;,
   07DB 22 0D         [ 3] 1377 	bhi	L62	;
   07DD 33 41         [ 5] 1378 	leau	1,u	; ascii,, ascii
   07DF C6 01         [ 2] 1379 	ldb	#1	;,
   07E1 E7 E8 1E      [ 5] 1380 	stb	30,s	;, maxDigit
   07E4 8E 00 01      [ 3] 1381 	ldx	#1	;,
   07E7 AF E8 21      [ 6] 1382 	stx	33,s	;, prephitmp.271
   07EA                    1383 L62:
                           1384 ;----- asm -----
                           1385 ; 271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1386 	; #ENR#[217]if (max<10) {ascii++; maxdigit = 0;}
                           1387 ;--- end asm ---
   07EA EC E8 32      [ 6] 1388 	ldd	50,s	;, max
   07ED 10 83 00 09   [ 5] 1389 	cmpd	#9	;cmphi:	;,
   07F1 22 0B         [ 3] 1390 	bhi	L63	;
   07F3 33 41         [ 5] 1391 	leau	1,u	; ascii,, ascii
   07F5 6F E8 1E      [ 7] 1392 	clr	30,s	; maxDigit
   07F8 8E 00 00      [ 3] 1393 	ldx	#0	;,
   07FB AF E8 21      [ 6] 1394 	stx	33,s	;, prephitmp.271
   07FE                    1395 L63:
                           1396 ;----- asm -----
                           1397 ; 274 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1398 	; #ENR#[219]tmp = 0;
                           1399 ;--- end asm ---
   07FE 7F C8 FE      [ 7] 1400 	clr	_tmp	; tmp
                           1401 ;----- asm -----
                           1402 ; 277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1403 	; #ENR#[221]int lastdir = 0;
                           1404 ; 279 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1405 	; #ENR#[222]do
                           1406 ;--- end asm ---
   0801 EC E8 21      [ 6] 1407 	ldd	33,s	;, prephitmp.271
   0804 30 CB         [ 8] 1408 	leax	d,u	;,, ascii
   0806 AF E8 23      [ 6] 1409 	stx	35,s	;, pretmp.272
   0809 EC E8 32      [ 6] 1410 	ldd	50,s	;, max
   080C ED 63         [ 6] 1411 	std	3,s	;,
   080E AE E8 30      [ 6] 1412 	ldx	48,s	;, min
   0811 AF 65         [ 6] 1413 	stx	5,s	;,
   0813 E6 E8 1F      [ 5] 1414 	ldb	31,s	;, len
   0816 86 0C         [ 2] 1415 	lda	#12	;umulqihi3	;
   0818 3D            [11] 1416 	mul
   0819 ED E4         [ 5] 1417 	std	,s	;,
   081B 50            [ 2] 1418 	negb	;
   081C E7 E8 19      [ 5] 1419 	stb	25,s	;, D.3416
   081F 6F E8 20      [ 7] 1420 	clr	32,s	; lastDir
   0822 16 00 54      [ 5] 1421 	lbra	L83	;
   0825                    1422 L85:
                           1423 ;----- asm -----
                           1424 ; 366 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1425 	; #ENR#[277]_ltoa(max, stringbuffer6,0);
                           1426 ;--- end asm ---
   0825 10 8E C8 AD   [ 4] 1427 	ldy	#_stringBuffer6	; tmp114,
   0829 34 20         [ 6] 1428 	pshs	y	; tmp114
   082B 5F            [ 2] 1429 	clrb	;
   082C AE E8 34      [ 6] 1430 	ldx	52,s	;, max
   082F BD 5D 40      [ 8] 1431 	jsr	__ltoa
                           1432 ;----- asm -----
                           1433 ; 368 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1434 	; #ENR#[278]vstrcpy(stringbuffer12, stringbuffer6);
                           1435 ;--- end asm ---
   0832 34 20         [ 6] 1436 	pshs	y	; tmp114
   0834 8E C8 B3      [ 3] 1437 	ldx	#_stringBuffer12	;,
   0837 BD 5B 60      [ 8] 1438 	jsr	_vstrcpy
   083A 32 64         [ 5] 1439 	leas	4,s	;,,
   083C                    1440 L75:
                           1441 ;----- asm -----
                           1442 ; 371 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1443 	; #ENR#[280]if (ulltmp < ull(min) )
                           1444 ;--- end asm ---
   083C EC E8 1A      [ 6] 1445 	ldd	26,s	;, ulltmp
   083F 10 83 00 00   [ 5] 1446 	cmpd	#0	;cmphi:(R)	;,
   0843 10 24 02 B6   [ 6] 1447 	lbhs	L92	;
   0847                    1448 L86:
                           1449 ;----- asm -----
                           1450 ; 374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1451 	; #ENR#[282]_ltoa(min, stringbuffer6,0);
                           1452 ;--- end asm ---
   0847 10 8E C8 AD   [ 4] 1453 	ldy	#_stringBuffer6	; tmp116,
   084B 34 20         [ 6] 1454 	pshs	y	; tmp116
   084D 5F            [ 2] 1455 	clrb	;
   084E AE E8 32      [ 6] 1456 	ldx	50,s	;, min
   0851 BD 5D 40      [ 8] 1457 	jsr	__ltoa
                           1458 ;----- asm -----
                           1459 ; 376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1460 	; #ENR#[283]vstrcpy(stringbuffer12, stringbuffer6);
                           1461 ;--- end asm ---
   0854 34 20         [ 6] 1462 	pshs	y	; tmp116
   0856 8E C8 B3      [ 3] 1463 	ldx	#_stringBuffer12	;,
   0859 BD 5B 60      [ 8] 1464 	jsr	_vstrcpy
   085C 32 64         [ 5] 1465 	leas	4,s	;,,
   085E                    1466 L77:
                           1467 ;----- asm -----
                           1468 ; 381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1469 	; #ENR#[287]lastdir = !((vec_joy_1_x == 0) && (vec_joy_1_y == 0));
                           1470 ;--- end asm ---
   085E C6 01         [ 2] 1471 	ldb	#1	;,
   0860 E7 E8 20      [ 5] 1472 	stb	32,s	;, lastDir
   0863 7D C8 1B      [ 7] 1473 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   0866 26 0A         [ 3] 1474 	bne	L80	;
   0868 F6 C8 1C      [ 5] 1475 	ldb	_Vec_Joy_1_Y	; Vec_Joy_1_Y, Vec_Joy_1_Y
   086B 27 02         [ 3] 1476 	beq	L81	;
   086D C6 01         [ 2] 1477 	ldb	#1	; Vec_Joy_1_Y,
   086F                    1478 L81:
   086F E7 E8 20      [ 5] 1479 	stb	32,s	; Vec_Joy_1_Y, lastDir
   0872                    1480 L80:
                           1481 ;----- asm -----
                           1482 ; 383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1483 	; #ENR#[288]if (buttons_pressed()) break;
                           1484 ;--- end asm ---
   0872 7D C8 11      [ 7] 1485 	tst	_Vec_Buttons	; Vec_Buttons
   0875 10 26 02 CC   [ 6] 1486 	lbne	L82	;
                           1487 ;----- asm -----
                           1488 ; 385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1489 	; #ENR#[290]while (1);
                           1490 ;--- end asm ---
   0879                    1491 L83:
                           1492 ;----- asm -----
                           1493 ; 282 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1494 	; #ENR#[224]do_sound();
                           1495 ;--- end asm ---
   0879 BD 72 E2      [ 8] 1496 	jsr	__Do_Sound
                           1497 ;----- asm -----
                           1498 ; 284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1499 	; #ENR#[225]joy_digital();
                           1500 ;--- end asm ---
   087C BD F1 F8      [ 8] 1501 	jsr	___Joy_Digital
                           1502 ;----- asm -----
                           1503 ; 286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1504 	; #ENR#[226]check_buttons();
                           1505 ;--- end asm ---
   087F BD F1 BA      [ 8] 1506 	jsr	___Read_Btns
                           1507 ;----- asm -----
                           1508 ; 288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1509 	; #ENR#[227]wait_recal();
                           1510 ;--- end asm ---
   0882 BD F1 92      [ 8] 1511 	jsr	___Wait_Recal
                           1512 ;----- asm -----
                           1513 ; 290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1514 	; #ENR#[228]intensity_5f();
                           1515 ;--- end asm ---
   0885 BD F2 A5      [ 8] 1516 	jsr	___Intensity_5F
                           1517 ;----- asm -----
                           1518 ; 292 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1519 	; #ENR#[229]dp_via_t1_cnt_lo  = 0x7f;
                           1520 ;--- end asm ---
   0888 C6 7F         [ 2] 1521 	ldb	#127	;,
   088A D7 04         [ 4] 1522 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1523 ;----- asm -----
                           1524 ; 296 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1525 	; #ENR#[232]if (message != 0)
                           1526 ;--- end asm ---
   088C AE E8 17      [ 6] 1527 	ldx	23,s	;, message
   088F 27 13         [ 3] 1528 	beq	L64	;
                           1529 ;----- asm -----
                           1530 ; 299 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1531 	; #ENR#[234]print_str_d(0x60,-(len*12), message);reset0ref();
                           1532 ;--- end asm ---
   0891 C6 60         [ 2] 1533 	ldb	#96	;,
   0893 E7 E2         [ 6] 1534 	stb	,-s	;,
   0895 AE E8 18      [ 6] 1535 	ldx	24,s	;, message
   0898 E6 E8 1A      [ 5] 1536 	ldb	26,s	;, D.3416
   089B BD 59 7E      [ 8] 1537 	jsr	_syncPrintStrd
   089E C6 CC         [ 2] 1538 	ldb	#-52	;,
   08A0 D7 0C         [ 4] 1539 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
   08A2 32 61         [ 5] 1540 	leas	1,s	;,,
   08A4                    1541 L64:
                           1542 ;----- asm -----
                           1543 ; 303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1544 	; #ENR#[237]print_str_d(0x20,-0x50, ); reset0ref();
                           1545 ;--- end asm ---
   08A4 C6 20         [ 2] 1546 	ldb	#32	;,
   08A6 E7 E2         [ 6] 1547 	stb	,-s	;,
   08A8 8E 07 2B      [ 3] 1548 	ldx	#LC95	;,
   08AB C6 B0         [ 2] 1549 	ldb	#-80	;,
   08AD BD 59 7E      [ 8] 1550 	jsr	_syncPrintStrd
   08B0 C6 CC         [ 2] 1551 	ldb	#-52	;,
   08B2 D7 0C         [ 4] 1552 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1553 ;----- asm -----
                           1554 ; 306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1555 	; #ENR#[239]tmp2 = vec_text_width;
                           1556 ;--- end asm ---
   08B4 F6 C8 2B      [ 5] 1557 	ldb	_Vec_Text_Width	;, Vec_Text_Width
   08B7 F7 C8 FF      [ 5] 1558 	stb	_tmp2	;, tmp2
                           1559 ;----- asm -----
                           1560 ; 310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1561 	; #ENR#[242]vec_text_width = 0x3f;
                           1562 ;--- end asm ---
   08BA C6 3F         [ 2] 1563 	ldb	#63	;,
   08BC F7 C8 2B      [ 5] 1564 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1565 ;----- asm -----
                           1566 ; 312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1567 	; #ENR#[243]_fl(, max);
                           1568 ;--- end asm ---
   08BF AE E8 33      [ 6] 1569 	ldx	51,s	;, max
   08C2 34 10         [ 6] 1570 	pshs	x	;
   08C4 8E 07 3A      [ 3] 1571 	ldx	#LC96	;,
   08C7 BD 6E 6C      [ 8] 1572 	jsr	__fl
                           1573 ;----- asm -----
                           1574 ; 314 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1575 	; #ENR#[244]print_str_d(0x10,-0x48, stringbuffer40);reset0ref();
                           1576 ;--- end asm ---
   08CA C6 10         [ 2] 1577 	ldb	#16	;,
   08CC E7 E2         [ 6] 1578 	stb	,-s	;,
   08CE 8E C8 BF      [ 3] 1579 	ldx	#_stringBuffer40	;,
   08D1 C6 B8         [ 2] 1580 	ldb	#-72	;,
   08D3 BD 59 7E      [ 8] 1581 	jsr	_syncPrintStrd
   08D6 C6 CC         [ 2] 1582 	ldb	#-52	;,
   08D8 D7 0C         [ 4] 1583 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1584 ;----- asm -----
                           1585 ; 316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1586 	; #ENR#[245]_fl(, min);
                           1587 ;--- end asm ---
   08DA AE E8 34      [ 6] 1588 	ldx	52,s	;, min
   08DD 34 10         [ 6] 1589 	pshs	x	;
   08DF 8E 07 45      [ 3] 1590 	ldx	#LC97	;,
   08E2 BD 6E 6C      [ 8] 1591 	jsr	__fl
                           1592 ;----- asm -----
                           1593 ; 318 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1594 	; #ENR#[246]print_str_d(0x00,-0x48, stringbuffer40);reset0ref();
                           1595 ;--- end asm ---
   08E5 6F E2         [ 8] 1596 	clr	,-s	;
   08E7 8E C8 BF      [ 3] 1597 	ldx	#_stringBuffer40	;,
   08EA C6 B8         [ 2] 1598 	ldb	#-72	;,
   08EC BD 59 7E      [ 8] 1599 	jsr	_syncPrintStrd
   08EF C6 CC         [ 2] 1600 	ldb	#-52	;,
   08F1 D7 0C         [ 4] 1601 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1602 ;----- asm -----
                           1603 ; 321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1604 	; #ENR#[248]vec_text_width = 0x7f;
                           1605 ;--- end asm ---
   08F3 C6 7F         [ 2] 1606 	ldb	#127	;,
   08F5 F7 C8 2B      [ 5] 1607 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1608 ;----- asm -----
                           1609 ; 325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1610 	; #ENR#[251]print_str_d(-0x20,-0x30, ascii);reset0ref();
                           1611 ;--- end asm ---
   08F8 C6 E0         [ 2] 1612 	ldb	#-32	;,
   08FA E7 E2         [ 6] 1613 	stb	,-s	;,
   08FC 30 C4         [ 4] 1614 	leax	,u	;, ascii
   08FE C6 D0         [ 2] 1615 	ldb	#-48	;,
   0900 BD 59 7E      [ 8] 1616 	jsr	_syncPrintStrd
   0903 C6 CC         [ 2] 1617 	ldb	#-52	;,
   0905 D7 0C         [ 4] 1618 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1619 ;----- asm -----
                           1620 ; 329 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1621 	; #ENR#[254]print_str_d(-0x2b,-0x30-35+((maxdigit+1)-tmp )*0x12, );reset0ref();
                           1622 ;--- end asm ---
   0907 32 68         [ 5] 1623 	leas	8,s	;,,
   0909 E6 E8 1E      [ 5] 1624 	ldb	30,s	; tmp62, maxDigit
   090C F0 C8 FE      [ 5] 1625 	subb	_tmp	; tmp62, tmp
   090F 5C            [ 2] 1626 	incb	; tmp62
   0910 86 12         [ 2] 1627 	lda	#18	;mulqihi3	;
   0912 3D            [11] 1628 	mul
                           1629 		;movlsbqihi: D->B
   0913 CB AD         [ 2] 1630 	addb	#-83	;,
   0915 E7 E4         [ 4] 1631 	stb	,s	;,
   0917 C6 D5         [ 2] 1632 	ldb	#-43	;,
   0919 E7 E2         [ 6] 1633 	stb	,-s	;,
   091B 8E 07 50      [ 3] 1634 	ldx	#LC98	;,
   091E E6 61         [ 5] 1635 	ldb	1,s	;,
   0920 BD 59 7E      [ 8] 1636 	jsr	_syncPrintStrd
   0923 C6 CC         [ 2] 1637 	ldb	#-52	;,
   0925 D7 0C         [ 4] 1638 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           1639 ;----- asm -----
                           1640 ; 331 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1641 	; #ENR#[255]vec_text_width = tmp2;
                           1642 ;--- end asm ---
   0927 F6 C8 FF      [ 5] 1643 	ldb	_tmp2	;, tmp2
   092A F7 C8 2B      [ 5] 1644 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1645 ;----- asm -----
                           1646 ; 334 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1647 	; #ENR#[257]if ((vec_joy_1_x > 0) && (!lastdir)) if (tmp>0) tmp--;
                           1648 ;--- end asm ---
   092D F6 C8 1B      [ 5] 1649 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   0930 E7 63         [ 5] 1650 	stb	3,s	;, Vec_Joy_1_X.13
   0932 32 61         [ 5] 1651 	leas	1,s	;,,
   0934 5D            [ 2] 1652 	tstb	;
   0935 2F 11         [ 3] 1653 	ble	L65	;
   0937 6D E8 20      [ 7] 1654 	tst	32,s	; lastDir
   093A 26 0C         [ 3] 1655 	bne	L65	;
   093C F6 C8 FE      [ 5] 1656 	ldb	_tmp	;, tmp
   093F E7 E8 25      [ 5] 1657 	stb	37,s	;, tmp.281
   0942 2F 04         [ 3] 1658 	ble	L65	;
   0944 5A            [ 2] 1659 	decb	;
   0945 F7 C8 FE      [ 5] 1660 	stb	_tmp	;, tmp
   0948                    1661 L65:
                           1662 ;----- asm -----
                           1663 ; 336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1664 	; #ENR#[258]if ((vec_joy_1_x < 0) && (!lastdir)) if (tmp<maxdigit) tmp++;
                           1665 ;--- end asm ---
   0948 6D 62         [ 7] 1666 	tst	2,s	; Vec_Joy_1_X.13
   094A 10 2D 01 C4   [ 6] 1667 	lblt	L93	;
   094E                    1668 L66:
                           1669 ;----- asm -----
                           1670 ; 339 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1671 	; #ENR#[260]if ((vec_joy_1_y > 0) && (!lastdir))
                           1672 ;--- end asm ---
   094E 7D C8 1C      [ 7] 1673 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   0951 2F 16         [ 3] 1674 	ble	L67	;
   0953 6D E8 20      [ 7] 1675 	tst	32,s	; lastDir
   0956 26 11         [ 3] 1676 	bne	L67	;
   0958 F6 C8 FE      [ 5] 1677 	ldb	_tmp	;, tmp
   095B 1D            [ 2] 1678 	sex		;extendqihi2: R:b -> R:d	;,
   095C 1F 01         [ 6] 1679 	tfr	d,x	;, tmp
   095E EC E8 21      [ 6] 1680 	ldd	33,s	;, prephitmp.271
   0961 34 10         [ 6] 1681 	pshs	x	;subhi: R:d -= R:x	; tmp,
   0963 A3 E1         [ 9] 1682 	subd	,s++	;
   0965 30 CB         [ 8] 1683 	leax	d,u	; D.3431,, ascii
   0967 6C 84         [ 6] 1684 	inc	,x	;* D.3431
   0969                    1685 L67:
                           1686 ;----- asm -----
                           1687 ; 342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1688 	; #ENR#[262]if ((vec_joy_1_y < 0) && (!lastdir))
                           1689 ;--- end asm ---
   0969 7D C8 1C      [ 7] 1690 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   096C 10 2D 01 BA   [ 6] 1691 	lblt	L94	;
   0970                    1692 L68:
                           1693 ;----- asm -----
                           1694 ; 346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1695 	; #ENR#[265]if (*(ascii+maxdigit-tmp)>'9') *(ascii+maxdigit-tmp) = '0';
                           1696 ;--- end asm ---
   0970 F6 C8 FE      [ 5] 1697 	ldb	_tmp	;, tmp
   0973 1D            [ 2] 1698 	sex		;extendqihi2: R:b -> R:d	;,
   0974 1F 01         [ 6] 1699 	tfr	d,x	;, tmp
   0976 EC E8 21      [ 6] 1700 	ldd	33,s	;, prephitmp.271
   0979 34 10         [ 6] 1701 	pshs	x	;subhi: R:d -= R:x	; tmp,
   097B A3 E1         [ 9] 1702 	subd	,s++	;
   097D 30 CB         [ 8] 1703 	leax	d,u	; temp.293,, ascii
   097F E6 84         [ 4] 1704 	ldb	,x	;,* temp.293
   0981 C1 39         [ 2] 1705 	cmpb	#57	;cmpqi:	;,
   0983 23 04         [ 3] 1706 	bls	L69	;
   0985 C6 30         [ 2] 1707 	ldb	#48	;,
   0987 E7 84         [ 4] 1708 	stb	,x	;,* temp.293
   0989                    1709 L69:
                           1710 ;----- asm -----
                           1711 ; 348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1712 	; #ENR#[266]if (*(ascii+maxdigit-tmp)<'0') *(ascii+maxdigit-tmp) = '9';
                           1713 ;--- end asm ---
   0989 F6 C8 FE      [ 5] 1714 	ldb	_tmp	;, tmp
   098C 1D            [ 2] 1715 	sex		;extendqihi2: R:b -> R:d	;,
   098D 1F 01         [ 6] 1716 	tfr	d,x	;, tmp
   098F EC E8 21      [ 6] 1717 	ldd	33,s	;, prephitmp.271
   0992 34 10         [ 6] 1718 	pshs	x	;subhi: R:d -= R:x	; tmp,
   0994 A3 E1         [ 9] 1719 	subd	,s++	;
   0996 30 CB         [ 8] 1720 	leax	d,u	; temp.298,, ascii
   0998 E6 84         [ 4] 1721 	ldb	,x	;,* temp.298
   099A C1 2F         [ 2] 1722 	cmpb	#47	;cmpqi:	;,
   099C 22 04         [ 3] 1723 	bhi	L70	;
   099E C6 39         [ 2] 1724 	ldb	#57	;,
   09A0 E7 84         [ 4] 1725 	stb	,x	;,* temp.298
   09A2                    1726 L70:
                           1727 ;----- asm -----
                           1728 ; 352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1729 	; #ENR#[269]ulltmp = ull(*(ascii+maxdigit)-'0');
                           1730 ;--- end asm ---
   09A2 AE E8 23      [ 6] 1731 	ldx	35,s	;, pretmp.272
   09A5 E6 84         [ 4] 1732 	ldb	,x	; tmp76,
   09A7 CB D0         [ 2] 1733 	addb	#-48	; tmp76,
   09A9 4F            [ 2] 1734 	clra		;zero_extendqihi: R:b -> R:d	; tmp76,
   09AA ED E8 1C      [ 6] 1735 	std	28,s	;, ulltmp
   09AD CC 00 00      [ 3] 1736 	ldd	#0	;,
   09B0 ED E8 1A      [ 6] 1737 	std	26,s	;, ulltmp
                           1738 ;----- asm -----
                           1739 ; 354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1740 	; #ENR#[270]if (max>=10) ulltmp += ull(*(ascii+(maxdigit-1))-'0') * ull(10);
                           1741 ;--- end asm ---
   09B3 AE E8 32      [ 6] 1742 	ldx	50,s	;, max
   09B6 8C 00 09      [ 4] 1743 	cmpx	#9	;cmphi:	;,
   09B9 23 4B         [ 3] 1744 	bls	L71	;
   09BB EC E8 21      [ 6] 1745 	ldd	33,s	;, prephitmp.271
   09BE 30 CB         [ 8] 1746 	leax	d,u	; tmp78,, ascii
   09C0 E6 1F         [ 5] 1747 	ldb	-1,x	; tmp80,
   09C2 CB D0         [ 2] 1748 	addb	#-48	; tmp80,
   09C4 4F            [ 2] 1749 	clra		;zero_extendqihi: R:b -> R:d	; tmp80,
   09C5 1F 01         [ 6] 1750 	tfr	d,x	;, tmp82
   09C7 32 78         [ 5] 1751 	leas	-8,s	;,,
   09C9 CC 00 00      [ 3] 1752 	ldd	#0	;,
   09CC ED 64         [ 6] 1753 	std	4,s	;,
   09CE CC 00 0A      [ 3] 1754 	ldd	#10	;,
   09D1 ED 66         [ 6] 1755 	std	6,s	;,
   09D3 CC 00 00      [ 3] 1756 	ldd	#0	;,
   09D6 ED E4         [ 5] 1757 	std	,s	;,
   09D8 AF 62         [ 6] 1758 	stx	2,s	; tmp82,
   09DA 30 E8 2E      [ 5] 1759 	leax	46,s	;,,
   09DD BD 79 4C      [ 8] 1760 	jsr	___mulsi3
   09E0 32 68         [ 5] 1761 	leas	8,s	;,,
   09E2 AE E8 26      [ 6] 1762 	ldx	38,s	;,
   09E5 AF E8 13      [ 6] 1763 	stx	19,s	;,
   09E8 EC E8 28      [ 6] 1764 	ldd	40,s	;,
   09EB ED E8 15      [ 6] 1765 	std	21,s	;,
   09EE EC E8 1C      [ 6] 1766 	ldd	28,s	;, ulltmp
   09F1 E3 E8 15      [ 7] 1767 	addd	21,s	;,
   09F4 ED E8 1C      [ 6] 1768 	std	28,s	;, ulltmp
   09F7 EC E8 1A      [ 6] 1769 	ldd	26,s	;, ulltmp
   09FA E9 E8 14      [ 5] 1770 	adcb	20,s	;
   09FD A9 E8 13      [ 5] 1771 	adca	19,s	;
   0A00 ED E8 1A      [ 6] 1772 	std	26,s	;, ulltmp
   0A03 AE E8 32      [ 6] 1773 	ldx	50,s	;, max
   0A06                    1774 L71:
                           1775 ;----- asm -----
                           1776 ; 356 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1777 	; #ENR#[271]if (max>=100) ulltmp += ull(*(ascii+(maxdigit-2))-'0') * ull(100);
                           1778 ;--- end asm ---
   0A06 8C 00 63      [ 4] 1779 	cmpx	#99	;cmphi:	;,
   0A09 23 49         [ 3] 1780 	bls	L72	;
   0A0B EC E8 21      [ 6] 1781 	ldd	33,s	;, prephitmp.271
   0A0E 30 CB         [ 8] 1782 	leax	d,u	; tmp87,, ascii
   0A10 E6 1E         [ 5] 1783 	ldb	-2,x	; tmp89,
   0A12 CB D0         [ 2] 1784 	addb	#-48	; tmp89,
   0A14 4F            [ 2] 1785 	clra		;zero_extendqihi: R:b -> R:d	; tmp89,
   0A15 1F 01         [ 6] 1786 	tfr	d,x	;, tmp91
   0A17 32 78         [ 5] 1787 	leas	-8,s	;,,
   0A19 CC 00 00      [ 3] 1788 	ldd	#0	;,
   0A1C ED 64         [ 6] 1789 	std	4,s	;,
   0A1E CC 00 64      [ 3] 1790 	ldd	#100	;,
   0A21 ED 66         [ 6] 1791 	std	6,s	;,
   0A23 CC 00 00      [ 3] 1792 	ldd	#0	;,
   0A26 ED E4         [ 5] 1793 	std	,s	;,
   0A28 AF 62         [ 6] 1794 	stx	2,s	; tmp91,
   0A2A 30 E8 2E      [ 5] 1795 	leax	46,s	;,,
   0A2D BD 79 4C      [ 8] 1796 	jsr	___mulsi3
   0A30 32 68         [ 5] 1797 	leas	8,s	;,,
   0A32 AE E8 26      [ 6] 1798 	ldx	38,s	;,
   0A35 AF 6F         [ 6] 1799 	stx	15,s	;,
   0A37 EC E8 28      [ 6] 1800 	ldd	40,s	;,
   0A3A ED E8 11      [ 6] 1801 	std	17,s	;,
   0A3D EC E8 1C      [ 6] 1802 	ldd	28,s	;, ulltmp
   0A40 E3 E8 11      [ 7] 1803 	addd	17,s	;,
   0A43 ED E8 1C      [ 6] 1804 	std	28,s	;, ulltmp
   0A46 EC E8 1A      [ 6] 1805 	ldd	26,s	;, ulltmp
   0A49 E9 E8 10      [ 5] 1806 	adcb	16,s	;
   0A4C A9 6F         [ 5] 1807 	adca	15,s	;
   0A4E ED E8 1A      [ 6] 1808 	std	26,s	;, ulltmp
   0A51 AE E8 32      [ 6] 1809 	ldx	50,s	;, max
   0A54                    1810 L72:
                           1811 ;----- asm -----
                           1812 ; 358 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1813 	; #ENR#[272]if (max>=1000) ulltmp += ull(*(ascii+(maxdigit-3))-'0') * ull(1000);
                           1814 ;--- end asm ---
   0A54 8C 03 E7      [ 4] 1815 	cmpx	#999	;cmphi:	;,
   0A57 23 44         [ 3] 1816 	bls	L73	;
   0A59 EC E8 21      [ 6] 1817 	ldd	33,s	;, prephitmp.271
   0A5C 30 CB         [ 8] 1818 	leax	d,u	; tmp96,, ascii
   0A5E E6 1D         [ 5] 1819 	ldb	-3,x	; tmp98,
   0A60 CB D0         [ 2] 1820 	addb	#-48	; tmp98,
   0A62 4F            [ 2] 1821 	clra		;zero_extendqihi: R:b -> R:d	; tmp98,
   0A63 1F 02         [ 6] 1822 	tfr	d,y	;, tmp100
   0A65 32 78         [ 5] 1823 	leas	-8,s	;,,
   0A67 CC 00 00      [ 3] 1824 	ldd	#0	;,
   0A6A ED 64         [ 6] 1825 	std	4,s	;,
   0A6C 8E 03 E8      [ 3] 1826 	ldx	#1000	;,
   0A6F AF 66         [ 6] 1827 	stx	6,s	;,
   0A71 ED E4         [ 5] 1828 	std	,s	;,
   0A73 10 AF 62      [ 7] 1829 	sty	2,s	; tmp100,
   0A76 30 E8 2E      [ 5] 1830 	leax	46,s	;,,
   0A79 BD 79 4C      [ 8] 1831 	jsr	___mulsi3
   0A7C 32 68         [ 5] 1832 	leas	8,s	;,,
   0A7E EC E8 26      [ 6] 1833 	ldd	38,s	;,
   0A81 ED 6B         [ 6] 1834 	std	11,s	;,
   0A83 AE E8 28      [ 6] 1835 	ldx	40,s	;,
   0A86 AF 6D         [ 6] 1836 	stx	13,s	;,
   0A88 EC E8 1C      [ 6] 1837 	ldd	28,s	;, ulltmp
   0A8B E3 6D         [ 7] 1838 	addd	13,s	;,
   0A8D ED E8 1C      [ 6] 1839 	std	28,s	;, ulltmp
   0A90 EC E8 1A      [ 6] 1840 	ldd	26,s	;, ulltmp
   0A93 E9 6C         [ 5] 1841 	adcb	12,s	;
   0A95 A9 6B         [ 5] 1842 	adca	11,s	;
   0A97 ED E8 1A      [ 6] 1843 	std	26,s	;, ulltmp
   0A9A AE E8 32      [ 6] 1844 	ldx	50,s	;, max
   0A9D                    1845 L73:
                           1846 ;----- asm -----
                           1847 ; 360 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1848 	; #ENR#[273]if (max>=10000) ulltmp += ull(*(ascii+(maxdigit-4))-'0') * ull(10000);
                           1849 ;--- end asm ---
   0A9D 8C 27 0F      [ 4] 1850 	cmpx	#9999	;cmphi:	;,
   0AA0 23 41         [ 3] 1851 	bls	L74	;
   0AA2 EC E8 21      [ 6] 1852 	ldd	33,s	;, prephitmp.271
   0AA5 30 CB         [ 8] 1853 	leax	d,u	; tmp105,, ascii
   0AA7 E6 1C         [ 5] 1854 	ldb	-4,x	; tmp107,
   0AA9 CB D0         [ 2] 1855 	addb	#-48	; tmp107,
   0AAB 4F            [ 2] 1856 	clra		;zero_extendqihi: R:b -> R:d	; tmp107,
   0AAC 1F 02         [ 6] 1857 	tfr	d,y	;, tmp109
   0AAE 32 78         [ 5] 1858 	leas	-8,s	;,,
   0AB0 CC 00 00      [ 3] 1859 	ldd	#0	;,
   0AB3 ED 64         [ 6] 1860 	std	4,s	;,
   0AB5 8E 27 10      [ 3] 1861 	ldx	#10000	;,
   0AB8 AF 66         [ 6] 1862 	stx	6,s	;,
   0ABA ED E4         [ 5] 1863 	std	,s	;,
   0ABC 10 AF 62      [ 7] 1864 	sty	2,s	; tmp109,
   0ABF 30 E8 2E      [ 5] 1865 	leax	46,s	;,,
   0AC2 BD 79 4C      [ 8] 1866 	jsr	___mulsi3
   0AC5 32 68         [ 5] 1867 	leas	8,s	;,,
   0AC7 EC E8 26      [ 6] 1868 	ldd	38,s	;,
   0ACA ED 67         [ 6] 1869 	std	7,s	;,
   0ACC AE E8 28      [ 6] 1870 	ldx	40,s	;,
   0ACF AF 69         [ 6] 1871 	stx	9,s	;,
   0AD1 EC E8 1C      [ 6] 1872 	ldd	28,s	;, ulltmp
   0AD4 E3 69         [ 7] 1873 	addd	9,s	;,
   0AD6 ED E8 1C      [ 6] 1874 	std	28,s	;, ulltmp
   0AD9 EC E8 1A      [ 6] 1875 	ldd	26,s	;, ulltmp
   0ADC E9 68         [ 5] 1876 	adcb	8,s	;
   0ADE A9 67         [ 5] 1877 	adca	7,s	;
   0AE0 ED E8 1A      [ 6] 1878 	std	26,s	;, ulltmp
   0AE3                    1879 L74:
                           1880 ;----- asm -----
                           1881 ; 363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1882 	; #ENR#[275]if (ulltmp > ull(max) )
                           1883 ;--- end asm ---
   0AE3 AE E8 1A      [ 6] 1884 	ldx	26,s	;, ulltmp
   0AE6 8C 00 00      [ 4] 1885 	cmpx	#0	;cmphi:	;,
   0AE9 10 22 FD 38   [ 6] 1886 	lbhi	L85	;
   0AED 10 26 FD 4B   [ 6] 1887 	lbne	L75	;
   0AF1 AE E8 1C      [ 6] 1888 	ldx	28,s	;, ulltmp
   0AF4 AC 63         [ 7] 1889 	cmpx	3,s	;cmphi:	;,
   0AF6 10 23 FD 42   [ 6] 1890 	lbls	L75	;
   0AFA 16 FD 28      [ 5] 1891 	lbra	L85	;
   0AFD                    1892 L92:
   0AFD 10 83 00 00   [ 5] 1893 	cmpd	#0	;cmphi:(R)	; tmp1,
   0B01 10 26 FD 59   [ 6] 1894 	lbne	L77	;
   0B05 EC E8 1C      [ 6] 1895 	ldd	28,s	;, ulltmp
   0B08 10 A3 65      [ 8] 1896 	cmpd	5,s	;cmphi:(R)	;,
   0B0B 10 24 FD 4F   [ 6] 1897 	lbhs	L77	;
   0B0F 16 FD 35      [ 5] 1898 	lbra	L86	;
   0B12                    1899 L93:
   0B12 6D E8 20      [ 7] 1900 	tst	32,s	; lastDir
   0B15 10 26 FE 35   [ 6] 1901 	lbne	L66	;
   0B19 F6 C8 FE      [ 5] 1902 	ldb	_tmp	; tmp.282, tmp
   0B1C E1 E8 1E      [ 5] 1903 	cmpb	30,s	;cmpqi:(R)	; tmp.282, maxDigit
   0B1F 10 2C FE 2B   [ 6] 1904 	lbge	L66	;
   0B23 5C            [ 2] 1905 	incb	; tmp.282
   0B24 F7 C8 FE      [ 5] 1906 	stb	_tmp	; tmp.282, tmp
   0B27 16 FE 24      [ 5] 1907 	lbra	L66	;
   0B2A                    1908 L94:
   0B2A 6D E8 20      [ 7] 1909 	tst	32,s	; lastDir
   0B2D 10 26 FE 3F   [ 6] 1910 	lbne	L68	;
   0B31 F6 C8 FE      [ 5] 1911 	ldb	_tmp	;, tmp
   0B34 1D            [ 2] 1912 	sex		;extendqihi2: R:b -> R:d	;,
   0B35 1F 01         [ 6] 1913 	tfr	d,x	;, tmp
   0B37 EC E8 21      [ 6] 1914 	ldd	33,s	;, prephitmp.271
   0B3A 34 10         [ 6] 1915 	pshs	x	;subhi: R:d -= R:x	; tmp,
   0B3C A3 E1         [ 9] 1916 	subd	,s++	;
   0B3E 30 CB         [ 8] 1917 	leax	d,u	; temp.288,, ascii
   0B40 6A 84         [ 6] 1918 	dec	,x	;* temp.288
   0B42 16 FE 2B      [ 5] 1919 	lbra	L68	;
   0B45                    1920 L82:
                           1921 ;----- asm -----
                           1922 ; 388 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           1923 	; #ENR#[291]return (unsigned long int)ulltmp;
                           1924 ;--- end asm ---
   0B45 AE E8 1C      [ 6] 1925 	ldx	28,s	;, ulltmp
   0B48 32 E8 2A      [ 5] 1926 	leas	42,s	;,,
   0B4B 35 E0         [ 8] 1927 	puls	y,u,pc	;
   0B4D                    1928 L59:
   0B4D C6 04         [ 2] 1929 	ldb	#4	;,
   0B4F E7 E8 1E      [ 5] 1930 	stb	30,s	;, maxDigit
   0B52 CE C8 B3      [ 3] 1931 	ldu	#_stringBuffer12	; ascii,
   0B55 8E 00 04      [ 3] 1932 	ldx	#4	;,
   0B58 AF E8 21      [ 6] 1933 	stx	33,s	;, prephitmp.271
   0B5B 16 FC 60      [ 5] 1934 	lbra	L60	;
   0B5E                    1935 L87:
   0B5E C6 30         [ 2] 1936 	ldb	#48	;,
   0B60 F7 C8 B3      [ 5] 1937 	stb	_stringBuffer12	;, stringBuffer12
   0B63 16 FC 17      [ 5] 1938 	lbra	L54	;
   0B66                    1939 L91:
   0B66 C6 30         [ 2] 1940 	ldb	#48	;,
   0B68 F7 C8 B7      [ 5] 1941 	stb	_stringBuffer12+4	;, stringBuffer12
   0B6B 16 FC 33      [ 5] 1942 	lbra	L58	;
   0B6E                    1943 L90:
   0B6E C6 30         [ 2] 1944 	ldb	#48	;,
   0B70 F7 C8 B6      [ 5] 1945 	stb	_stringBuffer12+3	;, stringBuffer12
   0B73 16 FC 22      [ 5] 1946 	lbra	L57	;
   0B76                    1947 L89:
   0B76 C6 30         [ 2] 1948 	ldb	#48	;,
   0B78 F7 C8 B5      [ 5] 1949 	stb	_stringBuffer12+2	;, stringBuffer12
   0B7B 16 FC 11      [ 5] 1950 	lbra	L56	;
   0B7E                    1951 L88:
   0B7E C6 30         [ 2] 1952 	ldb	#48	;,
   0B80 F7 C8 B4      [ 5] 1953 	stb	_stringBuffer12+1	;, stringBuffer12
   0B83 16 FC 00      [ 5] 1954 	lbra	L55	;
   0B86                    1955 LC99:
   0B86 59 4F 55 20 48 41  1956 	.ascii	"YOU HAVE NOT BEEN NOTICED...\0"
        56 45 20 4E 4F 54
        20 42 45 45 4E 20
        4E 4F 54 49 43 45
        44 2E 2E 2E 00
   0BA3                    1957 LC100:
   0BA3 3C 34 3E 20 54 4F  1958 	.ascii	"<4> TO APPROACH:\0"
        20 41 50 50 52 4F
        41 43 48 3A 00
   0BB4                    1959 LC101:
   0BB4 59 4F 55 20 45 4E  1960 	.ascii	"YOU ENCOUNTER A LVL % %\0"
        43 4F 55 4E 54 45
        52 20 41 20 4C 56
        4C 20 25 20 25 00
   0BCC                    1961 LC102:
   0BCC 25 20 4C 49 4B 45  1962 	.ascii	"% LIKES YOUR BODY\0"
        53 20 59 4F 55 52
        20 42 4F 44 59 00
   0BDE                    1963 LC103:
   0BDE 48 45 20 48 45 41  1964 	.ascii	"HE HEALS YOU TO FULL STRENGTH\0"
        4C 53 20 59 4F 55
        20 54 4F 20 46 55
        4C 4C 20 53 54 52
        45 4E 47 54 48 00
   0BFC                    1965 LC104:
   0BFC 25 20 4D 41 4B 45  1966 	.ascii	"% MAKES A QUICK MOVE\0"
        53 20 41 20 51 55
        49 43 4B 20 4D 4F
        56 45 00
   0C11                    1967 LC105:
   0C11 59 4F 55 20 48 41  1968 	.ascii	"YOU HAVE NOTHING HE WANTS\0"
        56 45 20 4E 4F 54
        48 49 4E 47 20 48
        45 20 57 41 4E 54
        53 00
   0C2B                    1969 LC106:
   0C2B 54 4F 20 53 54 45  1970 	.ascii	"TO STEAL!\0"
        41 4C 21 00
   0C35                    1971 LC107:
   0C35 48 45 20 53 54 45  1972 	.ascii	"HE STEALS YOUR %\0"
        41 4C 53 20 59 4F
        55 52 20 25 00
   0C46                    1973 LC108:
   0C46 48 45 20 53 54 45  1974 	.ascii	"HE STEALS A %\0"
        41 4C 53 20 41 20
        25 00
   0C54                    1975 LC109:
   0C54 54 48 45 20 25 20  1976 	.ascii	"THE % LIKES YOU!\0"
        4C 49 4B 45 53 20
        59 4F 55 21 00
   0C65                    1977 LC110:
   0C65 48 45 20 47 49 56  1978 	.ascii	"HE GIVES YOU A %+%\0"
        45 53 20 59 4F 55
        20 41 20 25 2B 25
        00
   0C78                    1979 LC111:
   0C78 46 49 47 48 54 28  1980 	.ascii	"FIGHT(4), CAST(3), EVADE(1)\0"
        34 29 2C 20 43 41
        53 54 28 33 29 2C
        20 45 56 41 44 45
        28 31 29 00
   0C94                    1981 LC112:
   0C94 57 41 49 54 00     1982 	.ascii	"WAIT\0"
   0C99                    1983 LC113:
   0C99 45 56 41 44 45 00  1984 	.ascii	"EVADE\0"
   0C9F                    1985 LC114:
   0C9F 59 4F 55 27 52 45  1986 	.ascii	"YOU'RE ROOTED TO THE SPOT\0"
        20 52 4F 4F 54 45
        44 20 54 4F 20 54
        48 45 20 53 50 4F
        54 00
   0CB9                    1987 LC115:
   0CB9 4E 4F 52 54 48 00  1988 	.ascii	"NORTH\0"
   0CBF                    1989 LC116:
   0CBF 53 4F 55 54 48 00  1990 	.ascii	"SOUTH\0"
   0CC5                    1991 LC117:
   0CC5 57 45 53 54 00     1992 	.ascii	"WEST\0"
   0CCA                    1993 LC118:
   0CCA 45 41 53 54 00     1994 	.ascii	"EAST\0"
   0CCF                    1995 LC119:
   0CCF 46 49 47 48 54 00  1996 	.ascii	"FIGHT\0"
   0CD5                    1997 LC120:
   0CD5 59 4F 55 20 4D 49  1998 	.ascii	"YOU MISSED...\0"
        53 53 45 44 2E 2E
        2E 00
   0CE3                    1999 LC121:
   0CE3 59 4F 55 20 44 4F  2000 	.ascii	"YOU DO % POINTS DAMAGE\0"
        20 25 20 50 4F 49
        4E 54 53 20 44 41
        4D 41 47 45 00
   0CFA                    2001 LC122:
   0CFA 49 54 20 44 49 45  2002 	.ascii	"IT DIED...\0"
        44 2E 2E 2E 00
   0D05                    2003 LC123:
   0D05 59 4F 55 20 47 41  2004 	.ascii	"YOU GAIN % EXPERIENCE POINTS\0"
        49 4E 20 25 20 45
        58 50 45 52 49 45
        4E 43 45 20 50 4F
        49 4E 54 53 00
   0D22                    2005 LC124:
   0D22 49 54 20 4D 49 53  2006 	.ascii	"IT MISSED...\0"
        53 45 44 2E 2E 2E
        00
   0D2F                    2007 LC125:
   0D2F 49 54 20 44 4F 45  2008 	.ascii	"IT DOES % POINTS DAMAGE\0"
        53 20 25 20 50 4F
        49 4E 54 53 20 44
        41 4D 41 47 45 00
   0D47                    2009 LC126:
   0D47 49 54 20 44 52 41  2010 	.ascii	"IT DRAINS A LEVEL!!!\0"
        49 4E 53 20 41 20
        4C 45 56 45 4C 21
        21 21 00
   0D5C                    2011 LC127:
   0D5C 59 4F 55 20 41 52  2012 	.ascii	"YOU ARE PARALIZED!!!\0"
        45 20 50 41 52 41
        4C 49 5A 45 44 21
        21 21 00
   0D71                    2013 LC128:
   0D71 49 54 20 55 53 45  2014 	.ascii	"IT USES IT'S SWORD!!!\0"
        53 20 49 54 27 53
        20 53 57 4F 52 44
        21 21 21 00
   0D87                    2015 LC129:
   0D87 49 54 20 55 53 45  2016 	.ascii	"IT USES IT'S WHIP!!\0"
        53 20 49 54 27 53
        20 57 48 49 50 21
        21 00
   0D9B                    2017 LC130:
   0D9B 54 48 45 20 44 52  2018 	.ascii	"THE DRAGON BREATHS FIRE!!!\0"
        41 47 4F 4E 20 42
        52 45 41 54 48 53
        20 46 49 52 45 21
        21 21 00
   0DB6                    2019 LC131:
   0DB6 59 4F 55 20 50 41  2020 	.ascii	"YOU PARTIALLY DODGE IT\0"
        52 54 49 41 4C 4C
        59 20 44 4F 44 47
        45 20 49 54 00
   0DCD                    2021 LC132:
   0DCD 59 4F 55 20 42 55  2022 	.ascii	"YOU BURN FOR % POINTS DAMAGE\0"
        52 4E 20 46 4F 52
        20 25 20 50 4F 49
        4E 54 53 20 44 41
        4D 41 47 45 00
   0DEA                    2023 LC133:
   0DEA 54 48 45 20 25 20  2024 	.ascii	"THE % IS NOT AMUSED\0"
        49 53 20 4E 4F 54
        20 41 4D 55 53 45
        44 00
                           2025 	.globl	_handleEncounters
   0DFE                    2026 _handleEncounters:
   0DFE 34 40         [ 6] 2027 	pshs	u	;
   0E00 32 E8 EC      [ 5] 2028 	leas	-20,s	;,,
                           2029 ;----- asm -----
                           2030 ; 401 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2031 	; #ENR#[303]if (forcemonster == return_spanw_monster)
                           2032 ;--- end asm ---
   0E03 C1 1E         [ 2] 2033 	cmpb	#30	;cmpqi:	; forceMonster,
   0E05 10 27 03 27   [ 6] 2034 	lbeq	L212	;
                           2035 ;----- asm -----
                           2036 ; 409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2037 	; #ENR#[309]if (forcemonster == return_monster_is_set)
                           2038 ;--- end asm ---
   0E09 C1 1F         [ 2] 2039 	cmpb	#31	;cmpqi:	; forceMonster,
   0E0B 10 26 01 8C   [ 6] 2040 	lbne	L98	;
                           2041 ;----- asm -----
                           2042 ; 414 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2043 	; #ENR#[313]goto monsterforced;
                           2044 ;--- end asm ---
   0E0F                    2045 L99:
                           2046 ;----- asm -----
                           2047 ; 505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2048 	; #ENR#[384]un = 0;
                           2049 ;--- end asm ---
   0E0F 7F C9 7E      [ 7] 2050 	clr	_un	; un
                           2051 ;----- asm -----
                           2052 ; 509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2053 	; #ENR#[387]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
                           2054 ;--- end asm ---
   0E12 F6 C9 77      [ 5] 2055 	ldb	_m	; m.336, m
   0E15 C1 02         [ 2] 2056 	cmpb	#2	;cmpqi:	; m.336,
   0E17 27 18         [ 3] 2057 	beq	L106	;
   0E19 C1 04         [ 2] 2058 	cmpb	#4	;cmpqi:	; m.336,
   0E1B 27 14         [ 3] 2059 	beq	L106	;
   0E1D C1 07         [ 2] 2060 	cmpb	#7	;cmpqi:	; m.336,
   0E1F 27 10         [ 3] 2061 	beq	L106	;
   0E21 C1 09         [ 2] 2062 	cmpb	#9	;cmpqi:	; m.336,
   0E23 27 0C         [ 3] 2063 	beq	L106	;
   0E25 C1 0C         [ 2] 2064 	cmpb	#12	;cmpqi:	; m.336,
   0E27 27 08         [ 3] 2065 	beq	L106	;
   0E29 C1 10         [ 2] 2066 	cmpb	#16	;cmpqi:	; m.336,
   0E2B 27 04         [ 3] 2067 	beq	L106	;
   0E2D C1 11         [ 2] 2068 	cmpb	#17	;cmpqi:	; m.336,
   0E2F 26 05         [ 3] 2069 	bne	L107	;
   0E31                    2070 L106:
   0E31 C6 01         [ 2] 2071 	ldb	#1	;,
   0E33 F7 C9 7E      [ 5] 2072 	stb	_un	;, un
   0E36                    2073 L107:
                           2074 ;----- asm -----
                           2075 ; 515 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2076 	; #ENR#[392]#ifdef atari_version
                           2077 ; 517 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2078 	; #ENR#[393]if ( (sf[astral_walk] >0) && (un == 1) && (randmax(100)<20) )
                           2079 ;--- end asm ---
   0E36 7D C9 73      [ 7] 2080 	tst	_sf+7	; sf
   0E39 27 09         [ 3] 2081 	beq	L108	;
   0E3B F6 C9 7E      [ 5] 2082 	ldb	_un	;, un
   0E3E C1 01         [ 2] 2083 	cmpb	#1	;cmpqi:	;,
   0E40 10 27 05 F8   [ 6] 2084 	lbeq	L213	;
   0E44                    2085 L108:
                           2086 ;----- asm -----
                           2087 ; 520 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2088 	; #ENR#[395]#else
                           2089 ; 535 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2090 	; #ENR#[407]clearmessage();
                           2091 ;--- end asm ---
   0E44 7F C9 87      [ 7] 2092 	clr	_msgLine	; msgLine
                           2093 ;----- asm -----
                           2094 ; 537 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2095 	; #ENR#[408]_fsi2_s(, ml, mo[m]);
                           2096 ;--- end asm ---
   0E47 F6 C9 77      [ 5] 2097 	ldb	_m	;, m
   0E4A 1D            [ 2] 2098 	sex		;extendqihi2: R:b -> R:d	;,
   0E4B ED E4         [ 5] 2099 	std	,s	;,
   0E4D 58            [ 2] 2100 	aslb	;
   0E4E 49            [ 2] 2101 	rola	;
   0E4F 1F 01         [ 6] 2102 	tfr	d,x	;, tmp108
   0E51 AE 89 01 24   [ 9] 2103 	ldx	_mo,x	;, mo
   0E55 AF E3         [ 8] 2104 	stx	,--s	;,
   0E57 F6 C9 7F      [ 5] 2105 	ldb	_ml	;, ml
   0E5A 8E 0B B4      [ 3] 2106 	ldx	#LC101	;,
   0E5D BD 6A D8      [ 8] 2107 	jsr	__fsi2_s
                           2108 ;----- asm -----
                           2109 ; 539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2110 	; #ENR#[409]printmessage(stringbuffer40);
                           2111 ;--- end asm ---
   0E60 8E C8 BF      [ 3] 2112 	ldx	#_stringBuffer40	;,
   0E63 BD 5B 7A      [ 8] 2113 	jsr	_printMessage
                           2114 ;----- asm -----
                           2115 ; 546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2116 	; #ENR#[415]#ifndef atari_version
                           2117 ; 559 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2118 	; #ENR#[425]l=ml;
                           2119 ;--- end asm ---
   0E66 F6 C9 7F      [ 5] 2120 	ldb	_ml	;, ml
   0E69 F7 C9 80      [ 5] 2121 	stb	_l	;, l
                           2122 ;----- asm -----
                           2123 ; 561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2124 	; #ENR#[426]tmp = 0;
                           2125 ;--- end asm ---
   0E6C 7F C8 FE      [ 7] 2126 	clr	_tmp	; tmp
                           2127 ;----- asm -----
                           2128 ; 566 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2129 	; #ENR#[430]if (randmax(100)>94)
                           2130 ;--- end asm ---
   0E6F C6 64         [ 2] 2131 	ldb	#100	;,
   0E71 BD 5F 2A      [ 8] 2132 	jsr	_RandMax
   0E74 32 62         [ 5] 2133 	leas	2,s	;,,
   0E76 C1 5E         [ 2] 2134 	cmpb	#94	;cmpqi:	; D.3541,
   0E78 10 22 03 9A   [ 6] 2135 	lbhi	L214	;
                           2136 ;----- asm -----
                           2137 ; 592 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2138 	; #ENR#[450]if (m == elf)
                           2139 ;--- end asm ---
   0E7C F6 C9 77      [ 5] 2140 	ldb	_m	; m.340, m
   0E7F C1 08         [ 2] 2141 	cmpb	#8	;cmpqi:	; m.340,
   0E81 10 27 06 A0   [ 6] 2142 	lbeq	L215	;
   0E85 C1 03         [ 2] 2143 	cmpb	#3	;cmpqi:	; m.340,
   0E87 10 27 07 0D   [ 6] 2144 	lbeq	L216	;
   0E8B                    2145 L114:
   0E8B F6 C9 77      [ 5] 2146 	ldb	_m	;, m
   0E8E C1 13         [ 2] 2147 	cmpb	#19	;cmpqi:	;,
   0E90 10 27 07 18   [ 6] 2148 	lbeq	L217	;
   0E94                    2149 L111:
                           2150 ;----- asm -----
                           2151 ; 622 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2152 	; #ENR#[475]if (tmp == 1)
                           2153 ;--- end asm ---
   0E94 F6 C8 FE      [ 5] 2154 	ldb	_tmp	;, tmp
   0E97 E7 6D         [ 5] 2155 	stb	13,s	;, tmp.28
   0E99 C1 01         [ 2] 2156 	cmpb	#1	;cmpqi:	;,
   0E9B 10 27 04 6B   [ 6] 2157 	lbeq	L218	;
   0E9F C1 02         [ 2] 2158 	cmpb	#2	;cmpqi:	;,
   0EA1 10 27 04 9B   [ 6] 2159 	lbeq	L219	;
   0EA5 C1 03         [ 2] 2160 	cmpb	#3	;cmpqi:	;,
   0EA7 10 27 03 A4   [ 6] 2161 	lbeq	L220	;
   0EAB                    2162 L133:
                           2163 ;----- asm -----
                           2164 ; 775 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2165 	; #ENR#[580]if (randmax(100) > 50+ s[dex]*2) goto label3300;
                           2166 ;--- end asm ---
   0EAB C6 64         [ 2] 2167 	ldb	#100	;,
   0EAD BD 5F 2A      [ 8] 2168 	jsr	_RandMax
   0EB0 E7 6F         [ 5] 2169 	stb	15,s	;, D.3566
   0EB2 F6 C9 49      [ 5] 2170 	ldb	_s+4	; tmp205, s
   0EB5 CB 19         [ 2] 2171 	addb	#25	; tmp205,
   0EB7 58            [ 2] 2172 	aslb	; tmp205
   0EB8 E1 6F         [ 5] 2173 	cmpb	15,s	;cmpqi:(R)	; tmp205, D.3566
   0EBA 10 25 00 BE   [ 6] 2174 	lblo	L208	;
   0EBE 16 04 33      [ 5] 2175 	lbra	L245	;
   0EC1                    2176 L192:
                           2177 ;----- asm -----
                           2178 ; 1268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2179 	; #ENR#[919]if (m == specter) {dr = 2; goto label3305;}
                           2180 ;--- end asm ---
   0EC1 C1 10         [ 2] 2181 	cmpb	#16	;cmpqi:	; m.410,
   0EC3 10 27 02 02   [ 6] 2182 	lbeq	L222	;
                           2183 ;----- asm -----
                           2184 ; 1273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2185 	; #ENR#[923]if (m == vampire) {dr = 3; goto label3305;}
                           2186 ;--- end asm ---
   0EC7 C1 11         [ 2] 2187 	cmpb	#17	;cmpqi:	; m.410,
   0EC9 10 27 02 3E   [ 6] 2188 	lbeq	L223	;
                           2189 ;----- asm -----
                           2190 ; 1278 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2191 	; #ENR#[927]if (m == ghoul) {pa = 5; goto label3305;}
                           2192 ;--- end asm ---
   0ECD C1 09         [ 2] 2193 	cmpb	#9	;cmpqi:	; m.410,
   0ECF 10 27 02 55   [ 6] 2194 	lbeq	L224	;
                           2195 ;----- asm -----
                           2196 ; 1287 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2197 	; #ENR#[935]if (m == demon)
                           2198 ;--- end asm ---
   0ED3 C1 12         [ 2] 2199 	cmpb	#18	;cmpqi:	; m.410,
   0ED5 10 27 03 50   [ 6] 2200 	lbeq	L225	;
                           2201 ;----- asm -----
                           2202 ; 1324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2203 	; #ENR#[961]if (m == dragon)
                           2204 ;--- end asm ---
   0ED9 C1 13         [ 2] 2205 	cmpb	#19	;cmpqi:	; m.410,
   0EDB 10 27 03 FD   [ 6] 2206 	lbeq	L226	;
   0EDF                    2207 L199:
                           2208 ;----- asm -----
                           2209 ; 1375 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2210 	; #ENR#[996]goto label3305;
                           2211 ;--- end asm ---
   0EDF                    2212 L185:
                           2213 ;----- asm -----
                           2214 ; 1173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2215 	; #ENR#[850]ltmp = (signed long int)(randmax(20) + ml -inventory[armor] - inventory[shield] + mb);
                           2216 ;--- end asm ---
   0EDF C6 14         [ 2] 2217 	ldb	#20	;,
   0EE1 BD 5F 2A      [ 8] 2218 	jsr	_RandMax
   0EE4 E7 E8 11      [ 5] 2219 	stb	17,s	;, D.3644
   0EE7 F6 C9 7D      [ 5] 2220 	ldb	_mb	;, mb
   0EEA 4F            [ 2] 2221 	clra		;zero_extendqihi: R:b -> R:d	;,
   0EEB ED E4         [ 5] 2222 	std	,s	;,
   0EED B3 C9 4F      [ 7] 2223 	subd	_inventory+4	;subhi: R:d -= _inventory+4	; tmp259, inventory
   0EF0 B3 C9 4D      [ 7] 2224 	subd	_inventory+2	;subhi: R:d -= _inventory+2	; tmp259, inventory
   0EF3 1F 01         [ 6] 2225 	tfr	d,x	; tmp259, tmp261
   0EF5 E6 E8 11      [ 5] 2226 	ldb	17,s	;, D.3644
   0EF8 FB C9 7F      [ 5] 2227 	addb	_ml	;, ml
   0EFB 4F            [ 2] 2228 	clra		;zero_extendqihi: R:b -> R:d	;,
                           2229 ; Applied peep: 4-2b2 (tfr exg 1=1, 2=2, 2. exg 1=1, 2=2)
   0EFC 1F 03         [ 6] 2230 	tfr	d,u	;, tmp263
   0EFE 30 8B         [ 8] 2231 	leax	d,x	; ltmp.64,, ltmp.64
                           2232 ; ORG>	tfr	d,u	;, tmp263
                           2233 ; ORG>	exg	d,u	;, tmp263
                           2234 ; ORG>	leax	d,x	; ltmp.64,, ltmp.64
                           2235 ; ORG>	exg	d,u	;, tmp263
   0F00 BF C9 02      [ 6] 2236 	stx	_ltmp	; ltmp.64, ltmp
                           2237 ;----- asm -----
                           2238 ; 1178 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2239 	; #ENR#[854]if ((m>=specter) && (m<=vampire))
                           2240 ;--- end asm ---
   0F03 F6 C9 77      [ 5] 2241 	ldb	_m	; tmp264, m
   0F06 CB F0         [ 2] 2242 	addb	#-16	; tmp264,
   0F08 C1 01         [ 2] 2243 	cmpb	#1	;cmpqi:	; tmp264,
   0F0A 10 23 01 71   [ 6] 2244 	lbls	L227	;
   0F0E                    2245 L186:
                           2246 ;----- asm -----
                           2247 ; 1188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2248 	; #ENR#[862]if (ltmp < 10)
                           2249 ;--- end asm ---
   0F0E BE C9 02      [ 6] 2250 	ldx	_ltmp	;, ltmp
   0F11 8C 00 09      [ 4] 2251 	cmpx	#9	;cmphi:	;,
   0F14 10 2F 05 14   [ 6] 2252 	lble	L228	;
                           2253 ;----- asm -----
                           2254 ; 1199 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2255 	; #ENR#[870]ltmp = (signed long int )  (randmax(8) + randmax(ml*2) +1 ) *db;
                           2256 ;--- end asm ---
   0F18 C6 08         [ 2] 2257 	ldb	#8	;,
   0F1A BD 5F 2A      [ 8] 2258 	jsr	_RandMax
   0F1D E7 E8 12      [ 5] 2259 	stb	18,s	;, D.3658
   0F20 F6 C9 7F      [ 5] 2260 	ldb	_ml	; tmp266, ml
   0F23 58            [ 2] 2261 	aslb	; tmp266
   0F24 BD 5F 2A      [ 8] 2262 	jsr	_RandMax
   0F27 EB E8 12      [ 5] 2263 	addb	18,s	; D.3660, D.3658
   0F2A 5C            [ 2] 2264 	incb	; D.3660
   0F2B B6 C9 7A      [ 5] 2265 	lda	_db	;umulqihi3	; db
   0F2E 3D            [11] 2266 	mul
   0F2F FD C9 02      [ 6] 2267 	std	_ltmp	; ltmp.67, ltmp
                           2268 ;----- asm -----
                           2269 ; 1201 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2270 	; #ENR#[871]_fl_s(, (unsigned int)ltmp);
                           2271 ;--- end asm ---
   0F32 4F            [ 2] 2272 	clra		;zero_extendqihi: R:b -> R:d	;,
   0F33 34 06         [ 7] 2273 	pshs	d	; ltmp.67
   0F35 8E 0D 2F      [ 3] 2274 	ldx	#LC125	;,
   0F38 BD 5F 6F      [ 8] 2275 	jsr	__fl_s
                           2276 ;----- asm -----
                           2277 ; 1203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2278 	; #ENR#[872]printmessage(stringbuffer40);
                           2279 ;--- end asm ---
   0F3B 8E C8 BF      [ 3] 2280 	ldx	#_stringBuffer40	;,
   0F3E BD 5B 7A      [ 8] 2281 	jsr	_printMessage
                           2282 ;----- asm -----
                           2283 ; 1208 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2284 	; #ENR#[876]label3320:
                           2285 ;--- end asm ---
   0F41 32 62         [ 5] 2286 	leas	2,s	;,,
   0F43                    2287 L188:
                           2288 ;----- asm -----
                           2289 ; 1210 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2290 	; #ENR#[877]ch = ch - ltmp;
                           2291 ;--- end asm ---
   0F43 FC C9 63      [ 6] 2292 	ldd	_ch	; ch, ch
   0F46 B3 C9 02      [ 7] 2293 	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.69, ltmp
   0F49 FD C9 63      [ 6] 2294 	std	_ch	; ch.69, ch
                           2295 ;----- asm -----
                           2296 ; 1212 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2297 	; #ENR#[878]if (ch <1)
                           2298 ;--- end asm ---
   0F4C 10 83 00 00   [ 5] 2299 	cmpd	#0	; ch.69
   0F50 10 2F 04 E1   [ 6] 2300 	lble	L229	;
                           2301 ;----- asm -----
                           2302 ; 1219 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2303 	; #ENR#[883]pause(small_pause);
                           2304 ;--- end asm ---
   0F54 C6 4B         [ 2] 2305 	ldb	#75	;,
   0F56 BD 3E 21      [ 8] 2306 	jsr	_pause
                           2307 ;----- asm -----
                           2308 ; 1224 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2309 	; #ENR#[887]if ((randmax(10) < dr) && (sf[protection_from_evil]) !=0)
                           2310 ;--- end asm ---
   0F59 C6 0A         [ 2] 2311 	ldb	#10	;,
   0F5B BD 5F 2A      [ 8] 2312 	jsr	_RandMax
   0F5E F1 C9 7C      [ 5] 2313 	cmpb	_dr	;cmpqi:	; D.3670, dr
   0F61 24 07         [ 3] 2314 	bhs	L190	;
   0F63 7D C9 6F      [ 7] 2315 	tst	_sf+3	; sf
   0F66 10 26 01 67   [ 6] 2316 	lbne	L230	;
   0F6A                    2317 L190:
                           2318 ;----- asm -----
                           2319 ; 1252 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2320 	; #ENR#[908]if (randmax(10) >= pa) goto fightstart;
                           2321 ;--- end asm ---
   0F6A C6 0A         [ 2] 2322 	ldb	#10	;,
   0F6C BD 5F 2A      [ 8] 2323 	jsr	_RandMax
   0F6F F1 C9 7B      [ 5] 2324 	cmpb	_pa	;cmpqi:	; D.3673, pa
   0F72 10 24 00 7C   [ 6] 2325 	lbhs	L210	;
                           2326 ;----- asm -----
                           2327 ; 1254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2328 	; #ENR#[909]printmessage();
                           2329 ;--- end asm ---
   0F76 8E 0D 5C      [ 3] 2330 	ldx	#LC127	;,
   0F79 BD 5B 7A      [ 8] 2331 	jsr	_printMessage
                           2332 ;----- asm -----
                           2333 ; 1256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2334 	; #ENR#[910]goto label3300;
                           2335 ;--- end asm ---
   0F7C                    2336 L208:
                           2337 ;----- asm -----
                           2338 ; 1154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2339 	; #ENR#[837]db = 1;
                           2340 ;--- end asm ---
   0F7C C6 01         [ 2] 2341 	ldb	#1	;,
   0F7E F7 C9 7A      [ 5] 2342 	stb	_db	;, db
                           2343 ;----- asm -----
                           2344 ; 1156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2345 	; #ENR#[838]pa = 0;
                           2346 ;--- end asm ---
   0F81 7F C9 7B      [ 7] 2347 	clr	_pa	; pa
                           2348 ;----- asm -----
                           2349 ; 1158 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2350 	; #ENR#[839]dr = 0;
                           2351 ;--- end asm ---
   0F84 7F C9 7C      [ 7] 2352 	clr	_dr	; dr
                           2353 ;----- asm -----
                           2354 ; 1160 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2355 	; #ENR#[840]mb = 0;
                           2356 ;--- end asm ---
   0F87 7F C9 7D      [ 7] 2357 	clr	_mb	; mb
                           2358 ;----- asm -----
                           2359 ; 1162 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2360 	; #ENR#[841]goto label3330;
   0F8A                    2361 L184:
                           2362 ; 1263 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2363 	; #ENR#[915]if (m == wraith) {dr = 1; goto label3305;}
                           2364 ;--- end asm ---
   0F8A F6 C9 77      [ 5] 2365 	ldb	_m	; m.410, m
   0F8D C1 0C         [ 2] 2366 	cmpb	#12	;cmpqi:	; m.410,
   0F8F 10 26 FF 2E   [ 6] 2367 	lbne	L192	;
   0F93 C6 01         [ 2] 2368 	ldb	#1	;,
   0F95 F7 C9 7C      [ 5] 2369 	stb	_dr	;, dr
   0F98 16 FF 44      [ 5] 2370 	lbra	L185	;
   0F9B                    2371 L98:
                           2372 ;----- asm -----
                           2373 ; 419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2374 	; #ENR#[317]if (randmax(100)>30) return return_treasure;
                           2375 ;--- end asm ---
   0F9B C6 64         [ 2] 2376 	ldb	#100	;,
   0F9D BD 5F 2A      [ 8] 2377 	jsr	_RandMax
   0FA0 C1 1E         [ 2] 2378 	cmpb	#30	;cmpqi:	; D.3507,
   0FA2 10 22 00 36   [ 6] 2379 	lbhi	L100	;
                           2380 ;----- asm -----
                           2381 ; 426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2382 	; #ENR#[323]#ifdef atari_version
                           2383 ; 428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2384 	; #ENR#[324]if (sf[timestop]>0) return return_treasure;
                           2385 ;--- end asm ---
   0FA6 7D C9 74      [ 7] 2386 	tst	_sf+8	; sf
   0FA9 26 31         [ 3] 2387 	bne	L100	;
                           2388 ;----- asm -----
                           2389 ; 430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2390 	; #ENR#[325]#endif
                           2391 ; 435 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2392 	; #ENR#[329]if ( (sf[invisible]>0) && (randmax(100)>20) ) return return_treasure;
                           2393 ;--- end asm ---
   0FAB 7D C9 71      [ 7] 2394 	tst	_sf+5	; sf
   0FAE 26 23         [ 3] 2395 	bne	L231	;
   0FB0                    2396 L101:
                           2397 ;----- asm -----
                           2398 ; 442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2399 	; #ENR#[335]monsteragain:
                           2400 ;--- end asm ---
   0FB0                    2401 L205:
                           2402 ;----- asm -----
                           2403 ; 444 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2404 	; #ENR#[336]m = (signed int)randmax(20);
                           2405 ;--- end asm ---
   0FB0 C6 14         [ 2] 2406 	ldb	#20	;,
   0FB2 BD 5F 2A      [ 8] 2407 	jsr	_RandMax
   0FB5 F7 C9 77      [ 5] 2408 	stb	_m	; D.3512, m
                           2409 ;----- asm -----
                           2410 ; 449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2411 	; #ENR#[340]if ((sf[fear]>0) && (m<5)) goto monsteragain;
                           2412 ;--- end asm ---
   0FB8 7D C9 72      [ 7] 2413 	tst	_sf+6	; sf
   0FBB 27 04         [ 3] 2414 	beq	L102	;
   0FBD C1 04         [ 2] 2415 	cmpb	#4	;cmpqi:	; D.3512,
   0FBF 2F EF         [ 3] 2416 	ble	L205	;
   0FC1                    2417 L102:
                           2418 ;----- asm -----
                           2419 ; 452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2420 	; #ENR#[342]if ( (unsigned long int)(randmax(20)+1)  <=  inventory[elven_cloak] )
                           2421 ;--- end asm ---
   0FC1 C6 14         [ 2] 2422 	ldb	#20	;,
   0FC3 BD 5F 2A      [ 8] 2423 	jsr	_RandMax
   0FC6 5C            [ 2] 2424 	incb	; D.3516
   0FC7 4F            [ 2] 2425 	clra		;zero_extendqihi: R:b -> R:d	; D.3516, tmp98
   0FC8 10 B3 C9 51   [ 8] 2426 	cmpd	_inventory+6	;cmphi:	; tmp98, inventory
   0FCC 10 23 06 8F   [ 6] 2427 	lbls	L232	;
   0FD0                    2428 L104:
                           2429 ;----- asm -----
                           2430 ; 474 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2431 	; #ENR#[358]monsterset:
                           2432 ;--- end asm ---
   0FD0 16 01 5D      [ 5] 2433 	lbra	L97	;
   0FD3                    2434 L231:
   0FD3 C6 64         [ 2] 2435 	ldb	#100	;,
   0FD5 BD 5F 2A      [ 8] 2436 	jsr	_RandMax
   0FD8 C1 14         [ 2] 2437 	cmpb	#20	;cmpqi:	; D.3511,
   0FDA 23 D4         [ 3] 2438 	bls	L101	;
   0FDC                    2439 L100:
   0FDC C6 03         [ 2] 2440 	ldb	#3	;,
   0FDE E7 69         [ 5] 2441 	stb	9,s	;, D.3508
   0FE0                    2442 L105:
   0FE0 E6 69         [ 5] 2443 	ldb	9,s	; <result>, D.3508
   0FE2                    2444 L95:
   0FE2 32 E8 14      [ 5] 2445 	leas	20,s	;,,
   0FE5 35 C0         [ 7] 2446 	puls	u,pc	;
   0FE7                    2447 L150:
                           2448 ;----- asm -----
                           2449 ; 1032 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2450 	; #ENR#[752]clearmessage();
                           2451 ;--- end asm ---
   0FE7 7F C9 87      [ 7] 2452 	clr	_msgLine	; msgLine
                           2453 ;----- asm -----
                           2454 ; 1034 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2455 	; #ENR#[753]if (displaystatuspage())
                           2456 ;--- end asm ---
   0FEA BD 39 C5      [ 8] 2457 	jsr	_displayStatusPage
   0FED 5D            [ 2] 2458 	tstb	; D.3605
   0FEE 10 26 07 69   [ 6] 2459 	lbne	L233	;
                           2460 ;----- asm -----
                           2461 ; 1042 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2462 	; #ENR#[759]goto fightstart;
                           2463 ;--- end asm ---
   0FF2                    2464 L210:
                           2465 ;----- asm -----
                           2466 ; 782 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2467 	; #ENR#[584]clearmessage();
                           2468 ;--- end asm ---
   0FF2 7F C9 87      [ 7] 2469 	clr	_msgLine	; msgLine
                           2470 ;----- asm -----
                           2471 ; 788 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2472 	; #ENR#[589]printmessage();
                           2473 ;--- end asm ---
   0FF5 8E 0C 78      [ 3] 2474 	ldx	#LC111	;,
   0FF8 BD 5B 7A      [ 8] 2475 	jsr	_printMessage
                           2476 ;----- asm -----
                           2477 ; 790 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2478 	; #ENR#[590]localtimer = action_time;
                           2479 ;--- end asm ---
   0FFB C6 FA         [ 2] 2480 	ldb	#-6	;,
   0FFD F7 C8 A8      [ 5] 2481 	stb	_localTimer	;, localTimer
                           2482 ;----- asm -----
                           2483 ; 792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2484 	; #ENR#[591]tmp2 = 0;
                           2485 ;--- end asm ---
   1000 7F C8 FF      [ 7] 2486 	clr	_tmp2	; tmp2
                           2487 ;----- asm -----
                           2488 ; 794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2489 	; #ENR#[592]while(1)
                           2490 ;--- end asm ---
   1003 16 00 50      [ 5] 2491 	lbra	L146	;
   1006                    2492 L138:
                           2493 ;----- asm -----
                           2494 ; 809 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2495 	; #ENR#[601]if (vec_joy_1_y>0) tmp2 = 5;
                           2496 ;--- end asm ---
   1006 7D C8 1C      [ 7] 2497 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   1009 2F 05         [ 3] 2498 	ble	L139	;
   100B C6 05         [ 2] 2499 	ldb	#5	;,
   100D F7 C8 FF      [ 5] 2500 	stb	_tmp2	;, tmp2
   1010                    2501 L139:
                           2502 ;----- asm -----
                           2503 ; 811 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2504 	; #ENR#[602]if (vec_joy_1_y<0) tmp2 = 5;
                           2505 ;--- end asm ---
   1010 7D C8 1C      [ 7] 2506 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   1013 10 2D 00 60   [ 6] 2507 	lblt	L234	;
   1017                    2508 L140:
                           2509 ;----- asm -----
                           2510 ; 814 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2511 	; #ENR#[604]if (button_1_4_pressed()) tmp2 = 4;
                           2512 ;--- end asm ---
   1017 F6 C8 11      [ 5] 2513 	ldb	_Vec_Buttons	;, Vec_Buttons
   101A C5 08         [ 2] 2514 	bitb	#8	;,
   101C 27 08         [ 3] 2515 	beq	L141	;
   101E C6 04         [ 2] 2516 	ldb	#4	;,
   1020 F7 C8 FF      [ 5] 2517 	stb	_tmp2	;, tmp2
   1023 F6 C8 11      [ 5] 2518 	ldb	_Vec_Buttons	;, Vec_Buttons
   1026                    2519 L141:
                           2520 ;----- asm -----
                           2521 ; 816 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2522 	; #ENR#[605]if (button_1_3_pressed()) tmp2 = 3;
                           2523 ;--- end asm ---
   1026 C5 04         [ 2] 2524 	bitb	#4	;,
   1028 27 08         [ 3] 2525 	beq	L142	;
   102A C6 03         [ 2] 2526 	ldb	#3	;,
   102C F7 C8 FF      [ 5] 2527 	stb	_tmp2	;, tmp2
   102F F6 C8 11      [ 5] 2528 	ldb	_Vec_Buttons	;, Vec_Buttons
   1032                    2529 L142:
                           2530 ;----- asm -----
                           2531 ; 818 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2532 	; #ENR#[606]if (button_1_2_pressed()) tmp2 = 2;
                           2533 ;--- end asm ---
   1032 C5 02         [ 2] 2534 	bitb	#2	;,
   1034 27 08         [ 3] 2535 	beq	L143	;
   1036 C6 02         [ 2] 2536 	ldb	#2	;,
   1038 F7 C8 FF      [ 5] 2537 	stb	_tmp2	;, tmp2
   103B F6 C8 11      [ 5] 2538 	ldb	_Vec_Buttons	;, Vec_Buttons
   103E                    2539 L143:
                           2540 ;----- asm -----
                           2541 ; 820 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2542 	; #ENR#[607]if (button_1_1_pressed()) tmp2 = 1;
                           2543 ;--- end asm ---
   103E C5 01         [ 2] 2544 	bitb	#1	;,
   1040 27 05         [ 3] 2545 	beq	L144	;
   1042 C6 01         [ 2] 2546 	ldb	#1	;,
   1044 F7 C8 FF      [ 5] 2547 	stb	_tmp2	;, tmp2
   1047                    2548 L144:
                           2549 ;----- asm -----
                           2550 ; 824 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2551 	; #ENR#[610]if ((!buttons_pressed()) && (tmp2))
                           2552 ;--- end asm ---
   1047 7D C8 11      [ 7] 2553 	tst	_Vec_Buttons	; Vec_Buttons
   104A 26 07         [ 3] 2554 	bne	L145	;
   104C 7D C8 FF      [ 7] 2555 	tst	_tmp2	; tmp2
   104F 10 26 00 3B   [ 6] 2556 	lbne	L136	;
   1053                    2557 L145:
                           2558 ;----- asm -----
                           2559 ; 828 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2560 	; #ENR#[613]localtimer--;
                           2561 ;--- end asm ---
   1053 7A C8 A8      [ 7] 2562 	dec	_localTimer	; localTimer
   1056                    2563 L146:
                           2564 ;----- asm -----
                           2565 ; 797 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2566 	; #ENR#[594]displayround();
                           2567 ;--- end asm ---
   1056 BD 3D AC      [ 8] 2568 	jsr	_displayRound
                           2569 ;----- asm -----
                           2570 ; 799 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2571 	; #ENR#[595]if (localtimer == 0)
                           2572 ;--- end asm ---
   1059 7D C8 A8      [ 7] 2573 	tst	_localTimer	; localTimer
   105C 27 30         [ 3] 2574 	beq	L235	;
                           2575 ;----- asm -----
                           2576 ; 805 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2577 	; #ENR#[599]if (vec_joy_1_x>0) tmp2 = 5;
                           2578 ;--- end asm ---
   105E 7D C8 1B      [ 7] 2579 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   1061 2F 05         [ 3] 2580 	ble	L137	;
   1063 C6 05         [ 2] 2581 	ldb	#5	;,
   1065 F7 C8 FF      [ 5] 2582 	stb	_tmp2	;, tmp2
   1068                    2583 L137:
                           2584 ;----- asm -----
                           2585 ; 807 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2586 	; #ENR#[600]if (vec_joy_1_x<0) tmp2 = 5;
                           2587 ;--- end asm ---
   1068 7D C8 1B      [ 7] 2588 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   106B 10 2C FF 97   [ 6] 2589 	lbge	L138	;
   106F C6 05         [ 2] 2590 	ldb	#5	;,
   1071 F7 C8 FF      [ 5] 2591 	stb	_tmp2	;, tmp2
   1074 16 FF 8F      [ 5] 2592 	lbra	L138	;
   1077                    2593 L234:
   1077 C6 05         [ 2] 2594 	ldb	#5	;,
   1079 F7 C8 FF      [ 5] 2595 	stb	_tmp2	;, tmp2
   107C 16 FF 98      [ 5] 2596 	lbra	L140	;
   107F                    2597 L227:
                           2598 ;----- asm -----
                           2599 ; 1181 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2600 	; #ENR#[856]if (sf[protection_from_evil] > 0) ltmp = ltmp -6;
                           2601 ;--- end asm ---
   107F 7D C9 6F      [ 7] 2602 	tst	_sf+3	; sf
   1082 10 27 FE 88   [ 6] 2603 	lbeq	L186	;
   1086 30 1A         [ 5] 2604 	leax	-6,x	;,, ltmp.64
   1088 BF C9 02      [ 6] 2605 	stx	_ltmp	;, ltmp
   108B 16 FE 80      [ 5] 2606 	lbra	L186	;
   108E                    2607 L235:
                           2608 ;----- asm -----
                           2609 ; 802 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2610 	; #ENR#[597]break;
                           2611 ;--- end asm ---
   108E                    2612 L136:
                           2613 ;----- asm -----
                           2614 ; 832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2615 	; #ENR#[616]db = 1;
                           2616 ;--- end asm ---
   108E C6 01         [ 2] 2617 	ldb	#1	;,
   1090 F7 C9 7A      [ 5] 2618 	stb	_db	;, db
                           2619 ;----- asm -----
                           2620 ; 834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2621 	; #ENR#[617]pa = 0;
                           2622 ;--- end asm ---
   1093 7F C9 7B      [ 7] 2623 	clr	_pa	; pa
                           2624 ;----- asm -----
                           2625 ; 836 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2626 	; #ENR#[618]dr = 0;
                           2627 ;--- end asm ---
   1096 7F C9 7C      [ 7] 2628 	clr	_dr	; dr
                           2629 ;----- asm -----
                           2630 ; 838 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2631 	; #ENR#[619]mb = 0;
                           2632 ;--- end asm ---
   1099 7F C9 7D      [ 7] 2633 	clr	_mb	; mb
                           2634 ;----- asm -----
                           2635 ; 840 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2636 	; #ENR#[620]switch (tmp2)
                           2637 ;--- end asm ---
   109C F6 C8 FF      [ 5] 2638 	ldb	_tmp2	;, tmp2
   109F C1 04         [ 2] 2639 	cmpb	#4	;cmpqi:	;,
   10A1 10 23 00 6E   [ 6] 2640 	lbls	L236	;
                           2641 ;----- asm -----
                           2642 ; 1381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2643 	; #ENR#[1000]clearmessage();
                           2644 ;--- end asm ---
   10A5 7F C9 87      [ 7] 2645 	clr	_msgLine	; msgLine
                           2646 ;----- asm -----
                           2647 ; 1383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2648 	; #ENR#[1001]_fs(, mo[m]);
                           2649 ;--- end asm ---
   10A8 F6 C9 77      [ 5] 2650 	ldb	_m	;, m
   10AB 1D            [ 2] 2651 	sex		;extendqihi2: R:b -> R:d	;,
   10AC ED E4         [ 5] 2652 	std	,s	;,
   10AE 58            [ 2] 2653 	aslb	;
   10AF 49            [ 2] 2654 	rola	;
   10B0 1F 01         [ 6] 2655 	tfr	d,x	;, tmp285
   10B2 AE 89 01 24   [ 9] 2656 	ldx	_mo,x	;, mo
   10B6 AF E3         [ 8] 2657 	stx	,--s	;,
   10B8 8E 0D EA      [ 3] 2658 	ldx	#LC133	;,
   10BB BD 5C 59      [ 8] 2659 	jsr	__fs
                           2660 ;----- asm -----
                           2661 ; 1385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2662 	; #ENR#[1002]printmessage(stringbuffer40);
                           2663 ;--- end asm ---
   10BE 8E C8 BF      [ 3] 2664 	ldx	#_stringBuffer40	;,
   10C1 BD 5B 7A      [ 8] 2665 	jsr	_printMessage
                           2666 ;----- asm -----
                           2667 ; 1387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2668 	; #ENR#[1003]goto fightstart;
                           2669 ;--- end asm ---
   10C4 32 62         [ 5] 2670 	leas	2,s	;,,
   10C6 16 FF 29      [ 5] 2671 	lbra	L210	;
   10C9                    2672 L222:
   10C9 C6 02         [ 2] 2673 	ldb	#2	;,
   10CB F7 C9 7C      [ 5] 2674 	stb	_dr	;, dr
   10CE 16 FE 0E      [ 5] 2675 	lbra	L185	;
   10D1                    2676 L230:
                           2677 ;----- asm -----
                           2678 ; 1231 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2679 	; #ENR#[893]printmessage();
                           2680 ;--- end asm ---
   10D1 8E 0D 47      [ 3] 2681 	ldx	#LC126	;,
   10D4 BD 5B 7A      [ 8] 2682 	jsr	_printMessage
                           2683 ;----- asm -----
                           2684 ; 1233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2685 	; #ENR#[894]ex = ex >>1;
                           2686 ;--- end asm ---
   10D7 FC C9 39      [ 6] 2687 	ldd	_ex	; tmp272, ex
   10DA 1F 98         [ 6] 2688 	tfr	b,a	;,
   10DC 5F            [ 2] 2689 	clrb	;
   10DD 46            [ 2] 2690 	rora	;
   10DE 46            [ 2] 2691 	rora	;
   10DF 84 80         [ 2] 2692 	anda	#-128	;,
   10E1 74 C9 3B      [ 7] 2693 	lsr	_ex+2	; ex
   10E4 76 C9 3C      [ 7] 2694 	ror	_ex+3	; ex
   10E7 BE C9 3B      [ 6] 2695 	ldx	_ex+2	; ex, ex
   10EA 34 10         [ 6] 2696 	pshs	x	; ex
   10EC AA E0         [ 6] 2697 	ora	,s+	;,
   10EE EA E0         [ 6] 2698 	orb	,s+	;,
   10F0 FD C9 3B      [ 6] 2699 	std	_ex+2	; tmp274, ex
   10F3 74 C9 39      [ 7] 2700 	lsr	_ex	; ex
   10F6 76 C9 3A      [ 7] 2701 	ror	_ex+1	; ex
                           2702 ;----- asm -----
                           2703 ; 1236 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2704 	; #ENR#[896]checkxp();
                           2705 ;--- end asm ---
   10F9 BD 53 F8      [ 8] 2706 	jsr	_checkXP
                           2707 ;----- asm -----
                           2708 ; 1238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2709 	; #ENR#[897]if (ch==0)
                           2710 ;--- end asm ---
   10FC BE C9 63      [ 6] 2711 	ldx	_ch	; ch, ch
   10FF 10 27 05 A0   [ 6] 2712 	lbeq	L237	;
                           2713 ;----- asm -----
                           2714 ; 1245 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2715 	; #ENR#[902]pause(small_pause);
                           2716 ;--- end asm ---
   1103 C6 4B         [ 2] 2717 	ldb	#75	;,
   1105 BD 3E 21      [ 8] 2718 	jsr	_pause
   1108 16 FE 5F      [ 5] 2719 	lbra	L190	;
   110B                    2720 L223:
   110B C6 03         [ 2] 2721 	ldb	#3	;,
   110D F7 C9 7C      [ 5] 2722 	stb	_dr	;, dr
   1110 16 FD CC      [ 5] 2723 	lbra	L185	;
   1113                    2724 L236:
   1113 4F            [ 2] 2725 	clra		;zero_extendqihi: R:b -> R:d	;,
   1114 ED E4         [ 5] 2726 	std	,s	;,
   1116 58            [ 2] 2727 	aslb	;
   1117 49            [ 2] 2728 	rola	;
   1118 1F 01         [ 6] 2729 	tfr	d,x	;, tmp217
   111A 6E 99 11 1E   [10] 2730 	jmp	[L153,x]	;, tmp217
   111E                    2731 L153:
   111E 11 E3              2732 	.word	L148
   1120 11 EF              2733 	.word	L149
   1122 0F E7              2734 	.word	L150
   1124 11 A6              2735 	.word	L151
   1126 11 63              2736 	.word	L152
   1128                    2737 L224:
   1128 C6 05         [ 2] 2738 	ldb	#5	;,
   112A F7 C9 7B      [ 5] 2739 	stb	_pa	;, pa
   112D 16 FD AF      [ 5] 2740 	lbra	L185	;
   1130                    2741 L212:
                           2742 ;----- asm -----
                           2743 ; 405 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2744 	; #ENR#[306]goto monsterset;
                           2745 ;--- end asm ---
   1130                    2746 L97:
                           2747 ;----- asm -----
                           2748 ; 481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2749 	; #ENR#[364]ml = randmax(cz+1)*randmax(2+1) + 1;
                           2750 ;--- end asm ---
   1130 F6 C9 67      [ 5] 2751 	ldb	_cz	; tmp100, cz
   1133 5C            [ 2] 2752 	incb	; tmp100
   1134 BD 5F 2A      [ 8] 2753 	jsr	_RandMax
   1137 E7 6A         [ 5] 2754 	stb	10,s	;, D.3523
   1139 C6 03         [ 2] 2755 	ldb	#3	;,
   113B BD 5F 2A      [ 8] 2756 	jsr	_RandMax
   113E A6 6A         [ 5] 2757 	lda	10,s	;umulqihi3	; D.3523
   1140 3D            [11] 2758 	mul
                           2759 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   1141 1F 01         [ 6] 2760 	tfr	d,x	;, tmp101
                           2761 ; ORG>	tfr	d,x	;, tmp101
                           2762 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp101,
   1143 5C            [ 2] 2763 	incb	;
   1144 E7 6B         [ 5] 2764 	stb	11,s	;, ml.21
   1146 F7 C9 7F      [ 5] 2765 	stb	_ml	;, ml
                           2766 ;----- asm -----
                           2767 ; 483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2768 	; #ENR#[365]ml = ml - randmax(ml);
                           2769 ;--- end asm ---
   1149 BD 5F 2A      [ 8] 2770 	jsr	_RandMax
   114C E0 6B         [ 5] 2771 	subb	11,s	; ml.23, ml.21
   114E 50            [ 2] 2772 	negb	; ml.23
   114F F7 C9 7F      [ 5] 2773 	stb	_ml	; ml.23, ml
                           2774 ;----- asm -----
                           2775 ; 494 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2776 	; #ENR#[375]mh = (signed long) randmax(ml*(unsigned int)m)+1;
                           2777 ;--- end asm ---
   1152 B6 C9 77      [ 5] 2778 	lda	_m	;umulqihi3	; m
   1155 3D            [11] 2779 	mul
                           2780 		;movlsbqihi: D->B
   1156 BD 5F 2A      [ 8] 2781 	jsr	_RandMax
   1159 4F            [ 2] 2782 	clra		;zero_extendqihi: R:b -> R:d	; D.3532, D.3532
   115A C3 00 01      [ 4] 2783 	addd	#1; addhi3,3	; D.3532,
   115D FD C9 78      [ 6] 2784 	std	_mh	; D.3532, mh
                           2785 ;----- asm -----
                           2786 ; 497 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2787 	; #ENR#[377]monsterforced:
                           2788 ;--- end asm ---
   1160 16 FC AC      [ 5] 2789 	lbra	L99	;
   1163                    2790 L152:
                           2791 ;----- asm -----
                           2792 ; 1068 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2793 	; #ENR#[779]clearmessage();
                           2794 ;--- end asm ---
   1163 7F C9 87      [ 7] 2795 	clr	_msgLine	; msgLine
                           2796 ;----- asm -----
                           2797 ; 1070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2798 	; #ENR#[780]printmessage();
                           2799 ;--- end asm ---
   1166 8E 0C CF      [ 3] 2800 	ldx	#LC119	;,
   1169 BD 5B 7A      [ 8] 2801 	jsr	_printMessage
                           2802 ;----- asm -----
                           2803 ; 1072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2804 	; #ENR#[781]ltmp = randmax(20) + lv + (signed long int)inventory[sword] + s[str]/2;
                           2805 ;--- end asm ---
   116C C6 14         [ 2] 2806 	ldb	#20	;,
   116E BD 5F 2A      [ 8] 2807 	jsr	_RandMax
   1171 E7 E8 10      [ 5] 2808 	stb	16,s	;, D.3607
   1174 F6 C9 45      [ 5] 2809 	ldb	_s	; tmp234, s
   1177 54            [ 2] 2810 	lsrb	; tmp234
   1178 4F            [ 2] 2811 	clra		;zero_extendqihi: R:b -> R:d	; tmp234, tmp235
   1179 FE C9 4B      [ 6] 2812 	ldu	_inventory	;, inventory
   117C 30 CB         [ 8] 2813 	leax	d,u	; tmp237, tmp235,
   117E E6 E8 10      [ 5] 2814 	ldb	16,s	;, D.3607
   1181 FB C9 38      [ 5] 2815 	addb	_lv	;, lv
   1184 4F            [ 2] 2816 	clra		;zero_extendqihi: R:b -> R:d	;,
   1185 ED E4         [ 5] 2817 	std	,s	;,
   1187 30 8B         [ 8] 2818 	leax	d,x	; ltmp.51,, tmp237
   1189 BF C9 02      [ 6] 2819 	stx	_ltmp	; ltmp.51, ltmp
                           2820 ;----- asm -----
                           2821 ; 1074 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2822 	; #ENR#[782]if (sf[strength]>0) ltmp = ltmp +4;
                           2823 ;--- end asm ---
   118C 7D C9 6C      [ 7] 2824 	tst	_sf	; sf
   118F 27 05         [ 3] 2825 	beq	L179	;
   1191 30 04         [ 5] 2826 	leax	4,x	;,, ltmp.51
   1193 BF C9 02      [ 6] 2827 	stx	_ltmp	;, ltmp
   1196                    2828 L179:
                           2829 ;----- asm -----
                           2830 ; 1078 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2831 	; #ENR#[785]if (ltmp <10)
                           2832 ;--- end asm ---
   1196 8C 00 09      [ 4] 2833 	cmpx	#9	;cmphi:	;,
   1199 10 2E 02 BE   [ 6] 2834 	lbgt	L180	;
                           2835 ;----- asm -----
                           2836 ; 1081 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2837 	; #ENR#[787]printmessage();
                           2838 ;--- end asm ---
   119D 8E 0C D5      [ 3] 2839 	ldx	#LC120	;,
   11A0 BD 5B 7A      [ 8] 2840 	jsr	_printMessage
   11A3                    2841 L181:
                           2842 ;----- asm -----
                           2843 ; 1152 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2844 	; #ENR#[836]label3300:
                           2845 ;--- end asm ---
   11A3 16 FD D6      [ 5] 2846 	lbra	L208	;
   11A6                    2847 L151:
                           2848 ;----- asm -----
                           2849 ; 1048 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2850 	; #ENR#[763]tmp2 = castspell(1);
                           2851 ;--- end asm ---
   11A6 C6 01         [ 2] 2852 	ldb	#1	;,
   11A8 BD 46 90      [ 8] 2853 	jsr	_castSpell
   11AB E7 62         [ 5] 2854 	stb	2,s	;, tmp2.36
   11AD F7 C8 FF      [ 5] 2855 	stb	_tmp2	;, tmp2
                           2856 ;----- asm -----
                           2857 ; 1050 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2858 	; #ENR#[764]if (tmp2 == 1) goto label3300;
                           2859 ;--- end asm ---
   11B0 C1 01         [ 2] 2860 	cmpb	#1	;cmpqi:	;,
   11B2 10 27 FD C6   [ 6] 2861 	lbeq	L208	;
   11B6 C1 02         [ 2] 2862 	cmpb	#2	;cmpqi:	;,
   11B8 10 27 FE 36   [ 6] 2863 	lbeq	L210	;
   11BC C1 03         [ 2] 2864 	cmpb	#3	;cmpqi:	;,
   11BE 10 27 02 EC   [ 6] 2865 	lbeq	L176	;
   11C2 C1 04         [ 2] 2866 	cmpb	#4	;cmpqi:	;,
   11C4 10 27 03 77   [ 6] 2867 	lbeq	L157	;
   11C8 C1 05         [ 2] 2868 	cmpb	#5	;cmpqi:	;,
   11CA 10 27 02 E6   [ 6] 2869 	lbeq	L177	;
   11CE C1 06         [ 2] 2870 	cmpb	#6	;cmpqi:	;,
   11D0 10 27 FE 08   [ 6] 2871 	lbeq	L100	;
   11D4 C6 02         [ 2] 2872 	ldb	#2	;,
   11D6 E7 69         [ 5] 2873 	stb	9,s	;, D.3508
   11D8 E6 62         [ 5] 2874 	ldb	2,s	;, tmp2.36
   11DA C1 07         [ 2] 2875 	cmpb	#7	;cmpqi:	;,
   11DC 10 27 FE 00   [ 6] 2876 	lbeq	L105	;
                           2877 ;----- asm -----
                           2878 ; 1058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2879 	; #ENR#[771]break;
                           2880 ;--- end asm ---
   11E0 16 FD FF      [ 5] 2881 	lbra	L95	;
   11E3                    2882 L148:
                           2883 ;----- asm -----
                           2884 ; 846 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2885 	; #ENR#[624]clearmessage();
                           2886 ;--- end asm ---
   11E3 7F C9 87      [ 7] 2887 	clr	_msgLine	; msgLine
                           2888 ;----- asm -----
                           2889 ; 848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2890 	; #ENR#[625]printmessage();
                           2891 ;--- end asm ---
   11E6 8E 0C 94      [ 3] 2892 	ldx	#LC112	;,
   11E9 BD 5B 7A      [ 8] 2893 	jsr	_printMessage
                           2894 ;----- asm -----
                           2895 ; 850 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2896 	; #ENR#[626]goto fightstart;
                           2897 ;--- end asm ---
   11EC 16 FE 03      [ 5] 2898 	lbra	L210	;
   11EF                    2899 L149:
                           2900 ;----- asm -----
                           2901 ; 861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2902 	; #ENR#[635]clearmessage();
                           2903 ;--- end asm ---
   11EF 7F C9 87      [ 7] 2904 	clr	_msgLine	; msgLine
                           2905 ;----- asm -----
                           2906 ; 863 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2907 	; #ENR#[636]printmessage();
                           2908 ;--- end asm ---
   11F2 8E 0C 99      [ 3] 2909 	ldx	#LC113	;,
   11F5 BD 5B 7A      [ 8] 2910 	jsr	_printMessage
                           2911 ;----- asm -----
                           2912 ; 865 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2913 	; #ENR#[637]tmp = (signed int)randmax(18) + 1;
                           2914 ;--- end asm ---
   11F8 C6 12         [ 2] 2915 	ldb	#18	;,
   11FA BD 5F 2A      [ 8] 2916 	jsr	_RandMax
   11FD 5C            [ 2] 2917 	incb	; tmp.38
   11FE F7 C8 FE      [ 5] 2918 	stb	_tmp	; tmp.38, tmp
                           2919 ;----- asm -----
                           2920 ; 870 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2921 	; #ENR#[641]if ((unsigned int)tmp >= s[dex])
                           2922 ;--- end asm ---
   1201 F1 C9 49      [ 5] 2923 	cmpb	_s+4	;cmpqi:	; tmp.38, s
   1204 10 25 03 37   [ 6] 2924 	lblo	L155	;
                           2925 ;----- asm -----
                           2926 ; 873 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2927 	; #ENR#[643]cantevade:
                           2928 ;--- end asm ---
   1208                    2929 L156:
                           2930 ;----- asm -----
                           2931 ; 877 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2932 	; #ENR#[646]printmessage();
                           2933 ;--- end asm ---
   1208 8E 0C 9F      [ 3] 2934 	ldx	#LC114	;,
   120B BD 5B 7A      [ 8] 2935 	jsr	_printMessage
                           2936 ;----- asm -----
                           2937 ; 879 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2938 	; #ENR#[647]pause(50);
                           2939 ;--- end asm ---
   120E C6 32         [ 2] 2940 	ldb	#50	;,
   1210 BD 3E 21      [ 8] 2941 	jsr	_pause
                           2942 ;----- asm -----
                           2943 ; 881 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2944 	; #ENR#[648]goto label3300;
                           2945 ;--- end asm ---
   1213 16 FD 66      [ 5] 2946 	lbra	L208	;
   1216                    2947 L214:
                           2948 ;----- asm -----
                           2949 ; 569 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2950 	; #ENR#[432]unsigned int t = randmax(91);
                           2951 ;--- end asm ---
   1216 C6 5B         [ 2] 2952 	ldb	#91	;,
   1218 BD 5F 2A      [ 8] 2953 	jsr	_RandMax
                           2954 ;----- asm -----
                           2955 ; 571 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2956 	; #ENR#[433]if (t<30)
                           2957 ;--- end asm ---
   121B C1 1D         [ 2] 2958 	cmpb	#29	;cmpqi:	; t,
   121D 10 22 00 DB   [ 6] 2959 	lbhi	L110	;
                           2960 ;----- asm -----
                           2961 ; 574 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2962 	; #ENR#[435]tmp = 1;
                           2963 ;--- end asm ---
   1221 C6 01         [ 2] 2964 	ldb	#1	;,
   1223 F7 C8 FE      [ 5] 2965 	stb	_tmp	;, tmp
   1226 16 FC 6B      [ 5] 2966 	lbra	L111	;
   1229                    2967 L225:
                           2968 ;----- asm -----
                           2969 ; 1290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2970 	; #ENR#[937]if (randmax(10)>6)
                           2971 ;--- end asm ---
   1229 C6 0A         [ 2] 2972 	ldb	#10	;,
   122B BD 5F 2A      [ 8] 2973 	jsr	_RandMax
   122E C1 06         [ 2] 2974 	cmpb	#6	;cmpqi:	; D.3675,
   1230 10 23 02 16   [ 6] 2975 	lbls	L197	;
                           2976 ;----- asm -----
                           2977 ; 1293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2978 	; #ENR#[939]printmessage();
                           2979 ;--- end asm ---
   1234 8E 0D 71      [ 3] 2980 	ldx	#LC128	;,
   1237 BD 5B 7A      [ 8] 2981 	jsr	_printMessage
                           2982 ;----- asm -----
                           2983 ; 1295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2984 	; #ENR#[940]mb = 4;
                           2985 ;--- end asm ---
   123A C6 04         [ 2] 2986 	ldb	#4	;,
   123C F7 C9 7D      [ 5] 2987 	stb	_mb	;, mb
                           2988 ;----- asm -----
                           2989 ; 1297 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2990 	; #ENR#[941]db = 3;
                           2991 ;--- end asm ---
   123F C6 03         [ 2] 2992 	ldb	#3	;,
   1241 F7 C9 7A      [ 5] 2993 	stb	_db	;, db
   1244                    2994 L198:
                           2995 ;----- asm -----
                           2996 ; 1309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           2997 	; #ENR#[949]pause(small_pause);
                           2998 ;--- end asm ---
   1244 C6 4B         [ 2] 2999 	ldb	#75	;,
   1246 BD 3E 21      [ 8] 3000 	jsr	_pause
                           3001 ;----- asm -----
                           3002 ; 1311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3003 	; #ENR#[950]clearmessage();
                           3004 ;--- end asm ---
   1249 7F C9 87      [ 7] 3005 	clr	_msgLine	; msgLine
                           3006 ;----- asm -----
                           3007 ; 1313 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3008 	; #ENR#[951]goto label3305;
                           3009 ;--- end asm ---
   124C 16 FC 90      [ 5] 3010 	lbra	L185	;
   124F                    3011 L220:
                           3012 ;----- asm -----
                           3013 ; 734 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3014 	; #ENR#[551]tmp = (signed int) randmax(7);
                           3015 ;--- end asm ---
   124F C6 07         [ 2] 3016 	ldb	#7	;,
   1251 BD 5F 2A      [ 8] 3017 	jsr	_RandMax
   1254 F7 C8 FE      [ 5] 3018 	stb	_tmp	; D.3559, tmp
                           3019 ;----- asm -----
                           3020 ; 736 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3021 	; #ENR#[552]if (inventory[tmp] < (unsigned long int)ml)
                           3022 ;--- end asm ---
   1257 1D            [ 2] 3023 	sex		;extendqihi2: R:b -> R:d	; D.3559, tmp.32
   1258 58            [ 2] 3024 	aslb	;
   1259 49            [ 2] 3025 	rola	;
   125A 1F 01         [ 6] 3026 	tfr	d,x	; tmp.32, tmp176
   125C AE 89 C9 4B   [ 9] 3027 	ldx	_inventory,x	; temp.357, inventory
   1260 F6 C9 7F      [ 5] 3028 	ldb	_ml	;, ml
   1263 4F            [ 2] 3029 	clra		;zero_extendqihi: R:b -> R:d	;,
   1264 1F 03         [ 6] 3030 	tfr	d,u	;, D.3561
   1266 34 06         [ 7] 3031 	pshs	d	;cmphi: R:d with R:x	; D.3561, temp.357
   1268 AC E1         [ 9] 3032 	cmpx	,s++	;cmphi:	; temp.357
   126A 10 24 FC 3D   [ 6] 3033 	lbhs	L133	;
                           3034 ;----- asm -----
                           3035 ; 741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3036 	; #ENR#[556]unsigned long int c = (unsigned long int)ml - inventory[tmp];
                           3037 ; 743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3038 	; #ENR#[557]c = (unsigned long int) ( randmax((unsigned int)c) + (unsigned int)1);
                           3039 ;--- end asm ---
   126E 34 10         [ 6] 3040 	pshs	x	;subhi: R:d -= R:x	; temp.357, tmp178
   1270 A3 E1         [ 9] 3041 	subd	,s++	; tmp178
                           3042 		;movlsbqihi: D->B
   1272 BD 5F 2A      [ 8] 3043 	jsr	_RandMax
   1275 E7 6E         [ 5] 3044 	stb	14,s	;, D.3563
                           3045 ;----- asm -----
                           3046 ; 745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3047 	; #ENR#[558]inventory[tmp] = inventory[tmp]+c;
                           3048 ;--- end asm ---
   1277 F6 C8 FE      [ 5] 3049 	ldb	_tmp	;, tmp
   127A 1D            [ 2] 3050 	sex		;extendqihi2: R:b -> R:d	;,
   127B 58            [ 2] 3051 	aslb	;
   127C 49            [ 2] 3052 	rola	;
   127D 1F 01         [ 6] 3053 	tfr	d,x	;, tmp181
   127F 6C 6E         [ 7] 3054 	inc	14,s	; D.3563
   1281 E6 6E         [ 5] 3055 	ldb	14,s	;, D.3563
   1283 4F            [ 2] 3056 	clra		;zero_extendqihi: R:b -> R:d	;,
   1284 E3 89 C9 4B   [10] 3057 	addd	_inventory,x; addhi3,3	;, inventory
   1288 ED 89 C9 4B   [ 9] 3058 	std	_inventory,x	;, inventory
                           3059 ;----- asm -----
                           3060 ; 750 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3061 	; #ENR#[562]_fs(, mo[m]);
                           3062 ;--- end asm ---
   128C F6 C9 77      [ 5] 3063 	ldb	_m	;, m
   128F 1D            [ 2] 3064 	sex		;extendqihi2: R:b -> R:d	;,
   1290 ED E4         [ 5] 3065 	std	,s	;,
   1292 58            [ 2] 3066 	aslb	;
   1293 49            [ 2] 3067 	rola	;
   1294 1F 01         [ 6] 3068 	tfr	d,x	;, tmp191
   1296 AE 89 01 24   [ 9] 3069 	ldx	_mo,x	;, mo
   129A AF E3         [ 8] 3070 	stx	,--s	;,
   129C 8E 0C 54      [ 3] 3071 	ldx	#LC109	;,
   129F BD 5C 59      [ 8] 3072 	jsr	__fs
                           3073 ;----- asm -----
                           3074 ; 752 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3075 	; #ENR#[563]printmessage(stringbuffer40);
                           3076 ;--- end asm ---
   12A2 8E C8 BF      [ 3] 3077 	ldx	#_stringBuffer40	;,
   12A5 BD 5B 7A      [ 8] 3078 	jsr	_printMessage
                           3079 ;----- asm -----
                           3080 ; 757 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3081 	; #ENR#[567]_fsl_s(, items[tmp], inventory[tmp]);
                           3082 ;--- end asm ---
   12A8 F6 C8 FE      [ 5] 3083 	ldb	_tmp	;, tmp
   12AB 1D            [ 2] 3084 	sex		;extendqihi2: R:b -> R:d	;,
   12AC ED 62         [ 6] 3085 	std	2,s	;,
   12AE 58            [ 2] 3086 	aslb	;
   12AF 49            [ 2] 3087 	rola	;
   12B0 1F 01         [ 6] 3088 	tfr	d,x	;, tmp196
   12B2 EE 89 C9 4B   [ 9] 3089 	ldu	_inventory,x	;, inventory
   12B6 EF E3         [ 8] 3090 	stu	,--s	;,
   12B8 AE 89 01 F9   [ 9] 3091 	ldx	_items,x	;, items
   12BC AF E3         [ 8] 3092 	stx	,--s	;,
   12BE 8E 0C 65      [ 3] 3093 	ldx	#LC110	;,
   12C1 BD 6E DC      [ 8] 3094 	jsr	__fsl_s
                           3095 ;----- asm -----
                           3096 ; 759 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3097 	; #ENR#[568]printmessage(stringbuffer40);
                           3098 ;--- end asm ---
   12C4 8E C8 BF      [ 3] 3099 	ldx	#_stringBuffer40	;,
   12C7 BD 5B 7A      [ 8] 3100 	jsr	_printMessage
                           3101 ;----- asm -----
                           3102 ; 761 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3103 	; #ENR#[569]tmp = 0;
                           3104 ;--- end asm ---
   12CA 7F C8 FE      [ 7] 3105 	clr	_tmp	; tmp
                           3106 ;----- asm -----
                           3107 ; 763 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3108 	; #ENR#[570]pause(small_pause);
                           3109 ;--- end asm ---
   12CD C6 4B         [ 2] 3110 	ldb	#75	;,
   12CF BD 3E 21      [ 8] 3111 	jsr	_pause
                           3112 ;----- asm -----
                           3113 ; 765 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3114 	; #ENR#[571]return return_treasure;
                           3115 ;--- end asm ---
   12D2 E6 E8 13      [ 5] 3116 	ldb	19,s	;, tmp.28
   12D5 E7 6F         [ 5] 3117 	stb	15,s	;, D.3508
   12D7 32 66         [ 5] 3118 	leas	6,s	;,,
   12D9 16 FD 04      [ 5] 3119 	lbra	L105	;
   12DC                    3120 L226:
                           3121 ;----- asm -----
                           3122 ; 1327 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3123 	; #ENR#[963]if (randmax(10)>3)
                           3124 ;--- end asm ---
   12DC C6 0A         [ 2] 3125 	ldb	#10	;,
   12DE BD 5F 2A      [ 8] 3126 	jsr	_RandMax
   12E1 C1 03         [ 2] 3127 	cmpb	#3	;cmpqi:	; D.3676,
   12E3 10 23 03 32   [ 6] 3128 	lbls	L200	;
                           3129 ;----- asm -----
                           3130 ; 1330 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3131 	; #ENR#[965]mb = 5;
                           3132 ;--- end asm ---
   12E7 C6 05         [ 2] 3133 	ldb	#5	;,
   12E9 F7 C9 7D      [ 5] 3134 	stb	_mb	;, mb
                           3135 ;----- asm -----
                           3136 ; 1332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3137 	; #ENR#[966]db = 2;
                           3138 ;--- end asm ---
   12EC C6 02         [ 2] 3139 	ldb	#2	;,
   12EE F7 C9 7A      [ 5] 3140 	stb	_db	;, db
   12F1 16 FB EB      [ 5] 3141 	lbra	L199	;
   12F4                    3142 L245:
                           3143 ;----- asm -----
                           3144 ; 778 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3145 	; #ENR#[582]pause(small_pause);
                           3146 ;--- end asm ---
   12F4 C6 4B         [ 2] 3147 	ldb	#75	;,
   12F6 BD 3E 21      [ 8] 3148 	jsr	_pause
                           3149 ;----- asm -----
                           3150 ; 780 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3151 	; #ENR#[583]fightstart:
                           3152 ;--- end asm ---
   12F9 16 FC F6      [ 5] 3153 	lbra	L210	;
   12FC                    3154 L110:
   12FC C1 3B         [ 2] 3155 	cmpb	#59	;cmpqi:	; t,
   12FE 10 22 02 BE   [ 6] 3156 	lbhi	L112	;
                           3157 ;----- asm -----
                           3158 ; 579 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3159 	; #ENR#[439]tmp = 2;
                           3160 ;--- end asm ---
   1302 C6 02         [ 2] 3161 	ldb	#2	;,
   1304 F7 C8 FE      [ 5] 3162 	stb	_tmp	;, tmp
   1307 16 FB 8A      [ 5] 3163 	lbra	L111	;
   130A                    3164 L218:
                           3165 ;----- asm -----
                           3166 ; 625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3167 	; #ENR#[477]tmp = 1;
                           3168 ; 630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3169 	; #ENR#[481]_fs(, mo[m]);
                           3170 ;--- end asm ---
   130A F6 C9 77      [ 5] 3171 	ldb	_m	;, m
   130D 1D            [ 2] 3172 	sex		;extendqihi2: R:b -> R:d	;,
   130E ED E4         [ 5] 3173 	std	,s	;,
   1310 58            [ 2] 3174 	aslb	;
   1311 49            [ 2] 3175 	rola	;
   1312 1F 01         [ 6] 3176 	tfr	d,x	;, tmp117
   1314 AE 89 01 24   [ 9] 3177 	ldx	_mo,x	;, mo
   1318 AF E3         [ 8] 3178 	stx	,--s	;,
   131A 8E 0B CC      [ 3] 3179 	ldx	#LC102	;,
   131D BD 5C 59      [ 8] 3180 	jsr	__fs
                           3181 ;----- asm -----
                           3182 ; 632 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3183 	; #ENR#[482]printmessage(stringbuffer40);
                           3184 ;--- end asm ---
   1320 8E C8 BF      [ 3] 3185 	ldx	#_stringBuffer40	;,
   1323 BD 5B 7A      [ 8] 3186 	jsr	_printMessage
                           3187 ;----- asm -----
                           3188 ; 634 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3189 	; #ENR#[483]printmessage();
                           3190 ;--- end asm ---
   1326 8E 0B DE      [ 3] 3191 	ldx	#LC103	;,
   1329 BD 5B 7A      [ 8] 3192 	jsr	_printMessage
                           3193 ;----- asm -----
                           3194 ; 636 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3195 	; #ENR#[484]pause(small_pause);
                           3196 ;--- end asm ---
   132C C6 4B         [ 2] 3197 	ldb	#75	;,
   132E BD 3E 21      [ 8] 3198 	jsr	_pause
                           3199 ;----- asm -----
                           3200 ; 638 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3201 	; #ENR#[485]ch = (signed long int) hp;
                           3202 ;--- end asm ---
   1331 BE C9 36      [ 6] 3203 	ldx	_hp	;, hp
   1334 BF C9 63      [ 6] 3204 	stx	_ch	;, ch
                           3205 ;----- asm -----
                           3206 ; 640 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3207 	; #ENR#[486]return return_treasure;
                           3208 ;--- end asm ---
   1337 C6 03         [ 2] 3209 	ldb	#3	;,
   1339 E7 6B         [ 5] 3210 	stb	11,s	;, D.3508
   133B 32 62         [ 5] 3211 	leas	2,s	;,,
   133D 16 FC A0      [ 5] 3212 	lbra	L105	;
   1340                    3213 L219:
                           3214 ;----- asm -----
                           3215 ; 648 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3216 	; #ENR#[493]_fs(, mo[m]);
                           3217 ;--- end asm ---
   1340 F6 C9 77      [ 5] 3218 	ldb	_m	;, m
   1343 1D            [ 2] 3219 	sex		;extendqihi2: R:b -> R:d	;,
   1344 ED E4         [ 5] 3220 	std	,s	;,
   1346 58            [ 2] 3221 	aslb	;
   1347 49            [ 2] 3222 	rola	;
   1348 1F 01         [ 6] 3223 	tfr	d,x	;, tmp123
   134A AE 89 01 24   [ 9] 3224 	ldx	_mo,x	;, mo
   134E AF E3         [ 8] 3225 	stx	,--s	;,
   1350 8E 0B FC      [ 3] 3226 	ldx	#LC104	;,
   1353 BD 5C 59      [ 8] 3227 	jsr	__fs
                           3228 ;----- asm -----
                           3229 ; 650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3230 	; #ENR#[494]printmessage(stringbuffer40);
                           3231 ;--- end asm ---
   1356 8E C8 BF      [ 3] 3232 	ldx	#_stringBuffer40	;,
   1359 BD 5B 7A      [ 8] 3233 	jsr	_printMessage
                           3234 ;----- asm -----
                           3235 ; 652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3236 	; #ENR#[495]pause(small_pause);
                           3237 ;--- end asm ---
   135C C6 4B         [ 2] 3238 	ldb	#75	;,
   135E BD 3E 21      [ 8] 3239 	jsr	_pause
                           3240 ;----- asm -----
                           3241 ; 655 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3242 	; #ENR#[497]tmp = -1;
                           3243 ;--- end asm ---
   1361 C6 FF         [ 2] 3244 	ldb	#-1	;,
   1363 F7 C8 FE      [ 5] 3245 	stb	_tmp	;, tmp
                           3246 ;----- asm -----
                           3247 ; 660 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3248 	; #ENR#[501]for (int i=0; i<10; i++)
                           3249 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3250 	; #ENR#[503]if (inventory[i] != 0)
                           3251 ;--- end asm ---
   1366 32 62         [ 5] 3252 	leas	2,s	;,,
   1368 BE C9 4B      [ 6] 3253 	ldx	_inventory	; inventory, inventory
   136B 10 26 03 E0   [ 6] 3254 	lbne	L238	;
                           3255 ;----- asm -----
                           3256 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3257 	; #ENR#[503]if (inventory[i] != 0)
                           3258 ;--- end asm ---
   136F C6 01         [ 2] 3259 	ldb	#1	; i,
   1371 BE C9 4D      [ 6] 3260 	ldx	_inventory+2	; inventory, inventory
   1374 10 26 03 25   [ 6] 3261 	lbne	L118	;
                           3262 ;----- asm -----
                           3263 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3264 	; #ENR#[503]if (inventory[i] != 0)
                           3265 ;--- end asm ---
   1378 BE C9 4F      [ 6] 3266 	ldx	_inventory+4	; inventory, inventory
   137B 10 26 03 D4   [ 6] 3267 	lbne	L239	;
                           3268 ;----- asm -----
                           3269 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3270 	; #ENR#[503]if (inventory[i] != 0)
                           3271 ;--- end asm ---
   137F C6 03         [ 2] 3272 	ldb	#3	; i,
   1381 BE C9 51      [ 6] 3273 	ldx	_inventory+6	; inventory, inventory
   1384 10 26 03 15   [ 6] 3274 	lbne	L118	;
                           3275 ;----- asm -----
                           3276 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3277 	; #ENR#[503]if (inventory[i] != 0)
                           3278 ;--- end asm ---
   1388 C6 04         [ 2] 3279 	ldb	#4	; i,
   138A BE C9 53      [ 6] 3280 	ldx	_inventory+8	; inventory, inventory
   138D 10 26 03 0C   [ 6] 3281 	lbne	L118	;
                           3282 ;----- asm -----
                           3283 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3284 	; #ENR#[503]if (inventory[i] != 0)
                           3285 ;--- end asm ---
   1391 C6 05         [ 2] 3286 	ldb	#5	; i,
   1393 BE C9 55      [ 6] 3287 	ldx	_inventory+10	; inventory, inventory
   1396 10 26 03 03   [ 6] 3288 	lbne	L118	;
                           3289 ;----- asm -----
                           3290 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3291 	; #ENR#[503]if (inventory[i] != 0)
                           3292 ;--- end asm ---
   139A C6 06         [ 2] 3293 	ldb	#6	; i,
   139C BE C9 57      [ 6] 3294 	ldx	_inventory+12	; inventory, inventory
   139F 10 26 02 FA   [ 6] 3295 	lbne	L118	;
                           3296 ;----- asm -----
                           3297 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3298 	; #ENR#[503]if (inventory[i] != 0)
                           3299 ;--- end asm ---
   13A3 C6 07         [ 2] 3300 	ldb	#7	; i,
   13A5 BE C9 59      [ 6] 3301 	ldx	_inventory+14	; inventory, inventory
   13A8 10 26 02 F1   [ 6] 3302 	lbne	L118	;
                           3303 ;----- asm -----
                           3304 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3305 	; #ENR#[503]if (inventory[i] != 0)
                           3306 ;--- end asm ---
   13AC C6 08         [ 2] 3307 	ldb	#8	; i,
   13AE BE C9 5B      [ 6] 3308 	ldx	_inventory+16	; inventory, inventory
   13B1 10 26 02 E8   [ 6] 3309 	lbne	L118	;
                           3310 ;----- asm -----
                           3311 ; 663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3312 	; #ENR#[503]if (inventory[i] != 0)
                           3313 ;--- end asm ---
   13B5 BE C9 5D      [ 6] 3314 	ldx	_inventory+18	; inventory, inventory
   13B8 10 26 02 DF   [ 6] 3315 	lbne	L240	;
   13BC                    3316 L127:
                           3317 ;----- asm -----
                           3318 ; 672 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3319 	; #ENR#[509]if (tmp==-1)
                           3320 ;--- end asm ---
   13BC F6 C8 FE      [ 5] 3321 	ldb	_tmp	;, tmp
   13BF C1 FF         [ 2] 3322 	cmpb	#-1	;cmpqi:	;,
   13C1 10 27 03 3E   [ 6] 3323 	lbeq	L241	;
                           3324 ;----- asm -----
                           3325 ; 686 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3326 	; #ENR#[518]tmp=-1;
                           3327 ;--- end asm ---
   13C5 C6 FF         [ 2] 3328 	ldb	#-1	;,
   13C7 F7 C8 FE      [ 5] 3329 	stb	_tmp	;, tmp
                           3330 ;----- asm -----
                           3331 ; 688 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3332 	; #ENR#[519]do
                           3333 ;--- end asm ---
   13CA                    3334 L130:
                           3335 ;----- asm -----
                           3336 ; 691 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3337 	; #ENR#[521]tmp = (signed int) randmax(10);
                           3338 ;--- end asm ---
   13CA C6 0A         [ 2] 3339 	ldb	#10	;,
   13CC BD 5F 2A      [ 8] 3340 	jsr	_RandMax
   13CF F7 C8 FE      [ 5] 3341 	stb	_tmp	; D.3554, tmp
                           3342 ;----- asm -----
                           3343 ; 693 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3344 	; #ENR#[522]if (inventory[tmp] == 0) tmp = -1;
                           3345 ;--- end asm ---
   13D2 1D            [ 2] 3346 	sex		;extendqihi2: R:b -> R:d	; D.3554, tmp.31
   13D3 58            [ 2] 3347 	aslb	;
   13D4 49            [ 2] 3348 	rola	;
   13D5 1F 01         [ 6] 3349 	tfr	d,x	; tmp.31, tmp148
   13D7 AE 89 C9 4B   [ 9] 3350 	ldx	_inventory,x	; tmp150, inventory
   13DB 26 05         [ 3] 3351 	bne	L129	;
   13DD C6 FF         [ 2] 3352 	ldb	#-1	;,
   13DF F7 C8 FE      [ 5] 3353 	stb	_tmp	;, tmp
   13E2                    3354 L129:
                           3355 ;----- asm -----
                           3356 ; 695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3357 	; #ENR#[524]while (tmp == -1);
                           3358 ;--- end asm ---
   13E2 F6 C8 FE      [ 5] 3359 	ldb	_tmp	; tmp.350, tmp
   13E5 C1 FF         [ 2] 3360 	cmpb	#-1	;cmpqi:	; tmp.350,
   13E7 27 E1         [ 3] 3361 	beq	L130	;
                           3362 ;----- asm -----
                           3363 ; 704 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3364 	; #ENR#[531]if (tmp <scroll_of_rescue)
                           3365 ;--- end asm ---
   13E9 C1 06         [ 2] 3366 	cmpb	#6	;cmpqi:	; tmp.350,
   13EB 10 2F 01 D9   [ 6] 3367 	lble	L242	;
                           3368 ;----- asm -----
                           3369 ; 716 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3370 	; #ENR#[539]_fs(,items[tmp]);
                           3371 ;--- end asm ---
   13EF 1D            [ 2] 3372 	sex		;extendqihi2: R:b -> R:d	; tmp.350, tmp.350
   13F0 58            [ 2] 3373 	aslb	;
   13F1 49            [ 2] 3374 	rola	;
   13F2 1F 01         [ 6] 3375 	tfr	d,x	; tmp.350, tmp163
   13F4 AE 89 01 F9   [ 9] 3376 	ldx	_items,x	;, items
   13F8 AF E3         [ 8] 3377 	stx	,--s	;,
   13FA 8E 0C 46      [ 3] 3378 	ldx	#LC108	;,
   13FD BD 5C 59      [ 8] 3379 	jsr	__fs
                           3380 ;----- asm -----
                           3381 ; 718 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3382 	; #ENR#[540]printmessage(stringbuffer40);
                           3383 ;--- end asm ---
   1400 8E C8 BF      [ 3] 3384 	ldx	#_stringBuffer40	;,
   1403 BD 5B 7A      [ 8] 3385 	jsr	_printMessage
                           3386 ;----- asm -----
                           3387 ; 720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3388 	; #ENR#[541]inventory[tmp] -=1;
                           3389 ;--- end asm ---
   1406 F6 C8 FE      [ 5] 3390 	ldb	_tmp	;, tmp
   1409 1D            [ 2] 3391 	sex		;extendqihi2: R:b -> R:d	;,
   140A ED 62         [ 6] 3392 	std	2,s	;,
   140C 58            [ 2] 3393 	aslb	;
   140D 49            [ 2] 3394 	rola	;
   140E 1F 01         [ 6] 3395 	tfr	d,x	;, tmp168
   1410 EC 89 C9 4B   [ 9] 3396 	ldd	_inventory,x	;, inventory
   1414 C3 FF FF      [ 4] 3397 	addd	#-1; addhi3,3	;,
   1417 ED 89 C9 4B   [ 9] 3398 	std	_inventory,x	;, inventory
   141B 32 62         [ 5] 3399 	leas	2,s	;,,
   141D                    3400 L132:
                           3401 ;----- asm -----
                           3402 ; 723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3403 	; #ENR#[543]tmp = 0;
                           3404 ;--- end asm ---
   141D 7F C8 FE      [ 7] 3405 	clr	_tmp	; tmp
                           3406 ;----- asm -----
                           3407 ; 725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3408 	; #ENR#[544]pause(small_pause);
                           3409 ;--- end asm ---
   1420 C6 4B         [ 2] 3410 	ldb	#75	;,
   1422 BD 3E 21      [ 8] 3411 	jsr	_pause
                           3412 ;----- asm -----
                           3413 ; 727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3414 	; #ENR#[545]return return_treasure;
                           3415 ;--- end asm ---
   1425 C6 03         [ 2] 3416 	ldb	#3	;,
   1427 E7 69         [ 5] 3417 	stb	9,s	;, D.3508
   1429 16 FB B4      [ 5] 3418 	lbra	L105	;
   142C                    3419 L228:
                           3420 ;----- asm -----
                           3421 ; 1191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3422 	; #ENR#[864]printmessage();
                           3423 ;--- end asm ---
   142C 8E 0D 22      [ 3] 3424 	ldx	#LC124	;,
   142F BD 5B 7A      [ 8] 3425 	jsr	_printMessage
                           3426 ;----- asm -----
                           3427 ; 1193 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3428 	; #ENR#[865]goto fightstart;
                           3429 ;--- end asm ---
   1432 16 FB BD      [ 5] 3430 	lbra	L210	;
   1435                    3431 L229:
                           3432 ;----- asm -----
                           3433 ; 1215 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3434 	; #ENR#[880]return return_player_dead;
                           3435 ;--- end asm ---
   1435 C6 02         [ 2] 3436 	ldb	#2	;,
   1437 E7 69         [ 5] 3437 	stb	9,s	;, D.3508
   1439 16 FB A4      [ 5] 3438 	lbra	L105	;
   143C                    3439 L213:
   143C C6 64         [ 2] 3440 	ldb	#100	;,
   143E BD 5F 2A      [ 8] 3441 	jsr	_RandMax
   1441 C1 13         [ 2] 3442 	cmpb	#19	;cmpqi:	; D.3539,
   1443 10 23 FB 69   [ 6] 3443 	lbls	L205	;
   1447 16 F9 FA      [ 5] 3444 	lbra	L108	;
   144A                    3445 L197:
                           3446 ;----- asm -----
                           3447 ; 1302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3448 	; #ENR#[945]printmessage();
                           3449 ;--- end asm ---
   144A 8E 0D 87      [ 3] 3450 	ldx	#LC129	;,
   144D BD 5B 7A      [ 8] 3451 	jsr	_printMessage
                           3452 ;----- asm -----
                           3453 ; 1304 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3454 	; #ENR#[946]mb = 2;
                           3455 ;--- end asm ---
   1450 C6 02         [ 2] 3456 	ldb	#2	;,
   1452 F7 C9 7D      [ 5] 3457 	stb	_mb	;, mb
                           3458 ;----- asm -----
                           3459 ; 1306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3460 	; #ENR#[947]db = 2;
                           3461 ;--- end asm ---
   1455 F7 C9 7A      [ 5] 3462 	stb	_db	;, db
   1458 16 FD E9      [ 5] 3463 	lbra	L198	;
   145B                    3464 L180:
                           3465 ;----- asm -----
                           3466 ; 1090 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3467 	; #ENR#[795]ltmp = (signed long int) randmax(8);
                           3468 ;--- end asm ---
   145B C6 08         [ 2] 3469 	ldb	#8	;,
   145D BD 5F 2A      [ 8] 3470 	jsr	_RandMax
   1460 4F            [ 2] 3471 	clra		;zero_extendqihi: R:b -> R:d	; D.3621, D.3621
   1461 FD C9 02      [ 6] 3472 	std	_ltmp	; D.3621, ltmp
                           3473 ;----- asm -----
                           3474 ; 1092 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3475 	; #ENR#[796]ltmp += (signed long int) randmax(lv*2) + (signed long int)inventory[sword] + 1;
                           3476 ;--- end asm ---
   1464 F6 C9 38      [ 5] 3477 	ldb	_lv	; tmp242, lv
   1467 58            [ 2] 3478 	aslb	; tmp242
   1468 BD 5F 2A      [ 8] 3479 	jsr	_RandMax
   146B FE C9 02      [ 6] 3480 	ldu	_ltmp	;, ltmp
   146E 30 41         [ 5] 3481 	leax	1,u	; tmp243,,
   1470 1E 01         [ 8] 3482 	exg	d,x	;, tmp245
   1472 F3 C9 4B      [ 7] 3483 	addd	_inventory; addhi3,3	;, inventory
   1475 1E 01         [ 8] 3484 	exg	d,x	;, tmp245
   1477 3A            [ 3] 3485 	abx
   1478 BF C9 02      [ 6] 3486 	stx	_ltmp	; ltmp.55, ltmp
                           3487 ;----- asm -----
                           3488 ; 1094 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3489 	; #ENR#[797]if (sf[strength]>0) ltmp = ltmp +5;
                           3490 ;--- end asm ---
   147B 7D C9 6C      [ 7] 3491 	tst	_sf	; sf
   147E 27 05         [ 3] 3492 	beq	L182	;
   1480 30 05         [ 5] 3493 	leax	5,x	;,, ltmp.55
   1482 BF C9 02      [ 6] 3494 	stx	_ltmp	;, ltmp
   1485                    3495 L182:
                           3496 ;----- asm -----
                           3497 ; 1097 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3498 	; #ENR#[799]_fi_s(, (unsigned int) ltmp);
                           3499 ;--- end asm ---
   1485 F6 C9 03      [ 5] 3500 	ldb	_ltmp+1	;, ltmp
   1488 8E 0C E3      [ 3] 3501 	ldx	#LC121	;,
   148B BD 5C C6      [ 8] 3502 	jsr	__fi_s
                           3503 ;----- asm -----
                           3504 ; 1099 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3505 	; #ENR#[800]printmessage(stringbuffer40);
                           3506 ;--- end asm ---
   148E 8E C8 BF      [ 3] 3507 	ldx	#_stringBuffer40	;,
   1491 BD 5B 7A      [ 8] 3508 	jsr	_printMessage
                           3509 ;----- asm -----
                           3510 ; 1104 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3511 	; #ENR#[804]mh = mh - (unsigned int)ltmp;
                           3512 ;--- end asm ---
   1494 F6 C9 03      [ 5] 3513 	ldb	_ltmp+1	;, ltmp
   1497 4F            [ 2] 3514 	clra		;zero_extendqihi: R:b -> R:d	;,
   1498 1F 03         [ 6] 3515 	tfr	d,u	;, ltmp
   149A BE C9 78      [ 6] 3516 	ldx	_mh	; mh, mh
   149D 1F 10         [ 6] 3517 	tfr	x,d	; mh,
   149F 34 40         [ 6] 3518 	pshs	u	;subhi: R:d -= R:u	; ltmp,
   14A1 A3 E1         [ 9] 3519 	subd	,s++	;
   14A3 FD C9 78      [ 6] 3520 	std	_mh	; mh.57, mh
                           3521 ;----- asm -----
                           3522 ; 1106 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3523 	; #ENR#[805]if (mh <0)
                           3524 ;--- end asm ---
   14A6 10 83 00 00   [ 5] 3525 	cmpd	#0	; mh.57
   14AA 10 2C FC F5   [ 6] 3526 	lbge	L181	;
                           3527 ;----- asm -----
                           3528 ; 1109 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3529 	; #ENR#[807]label3220:
                           3530 ;--- end asm ---
   14AE                    3531 L176:
                           3532 ;----- asm -----
                           3533 ; 1114 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3534 	; #ENR#[811]printmessage();
                           3535 ;--- end asm ---
   14AE 8E 0C FA      [ 3] 3536 	ldx	#LC122	;,
   14B1 BD 5B 7A      [ 8] 3537 	jsr	_printMessage
                           3538 ;----- asm -----
                           3539 ; 1116 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3540 	; #ENR#[812]label3223:
                           3541 ;--- end asm ---
   14B4                    3542 L177:
                           3543 ;----- asm -----
                           3544 ; 1121 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3545 	; #ENR#[816]pause(small_pause);
                           3546 ;--- end asm ---
   14B4 C6 4B         [ 2] 3547 	ldb	#75	;,
   14B6 BD 3E 21      [ 8] 3548 	jsr	_pause
                           3549 ;----- asm -----
                           3550 ; 1123 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3551 	; #ENR#[817]clearmessage();
                           3552 ;--- end asm ---
   14B9 7F C9 87      [ 7] 3553 	clr	_msgLine	; msgLine
                           3554 ;----- asm -----
                           3555 ; 1125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3556 	; #ENR#[818]ltmp = ml*(unsigned int)(m+1)*10;
                           3557 ;--- end asm ---
   14BC F6 C9 7F      [ 5] 3558 	ldb	_ml	;, ml
   14BF 86 0A         [ 2] 3559 	lda	#10	;umulqihi3	;
   14C1 3D            [11] 3560 	mul
   14C2 ED 67         [ 6] 3561 	std	7,s	;,
   14C4 F6 C9 77      [ 5] 3562 	ldb	_m	;, m
   14C7 5C            [ 2] 3563 	incb	;
   14C8 E7 E4         [ 4] 3564 	stb	,s	;,
   14CA E6 68         [ 5] 3565 	ldb	8,s	;movlsbqihi: msb:7,s -> R:b	;,
   14CC A6 E4         [ 4] 3566 	lda	,s	;umulqihi3	;
   14CE 3D            [11] 3567 	mul
   14CF ED E4         [ 5] 3568 	std	,s	;,
   14D1 4F            [ 2] 3569 	clra		;zero_extendqihi: R:b -> R:d	;,
   14D2 1F 03         [ 6] 3570 	tfr	d,u	;, ltmp.58
   14D4 FD C9 02      [ 6] 3571 	std	_ltmp	; ltmp.58, ltmp
                           3572 ;----- asm -----
                           3573 ; 1127 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3574 	; #ENR#[819]ex = ex + (unsigned long int) ltmp;
                           3575 ;--- end asm ---
   14D7 ED 65         [ 6] 3576 	std	5,s	; tmp1,
   14D9 CC 00 00      [ 3] 3577 	ldd	#0	;,
   14DC ED 63         [ 6] 3578 	std	3,s	;,
   14DE FC C9 3B      [ 6] 3579 	ldd	_ex+2	;, ex
   14E1 E3 65         [ 7] 3580 	addd	5,s	;,
   14E3 FD C9 3B      [ 6] 3581 	std	_ex+2	;, ex
   14E6 FC C9 39      [ 6] 3582 	ldd	_ex	;, ex
   14E9 E9 64         [ 5] 3583 	adcb	4,s	;
   14EB A9 63         [ 5] 3584 	adca	3,s	;
   14ED FD C9 39      [ 6] 3585 	std	_ex	;, ex
                           3586 ;----- asm -----
                           3587 ; 1132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3588 	; #ENR#[823]_fl_s(, (unsigned long int) ltmp);
                           3589 ;--- end asm ---
   14F0 34 40         [ 6] 3590 	pshs	u	; ltmp.58
   14F2 8E 0D 05      [ 3] 3591 	ldx	#LC123	;,
   14F5 BD 5F 6F      [ 8] 3592 	jsr	__fl_s
                           3593 ;----- asm -----
                           3594 ; 1134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3595 	; #ENR#[824]printmessage(stringbuffer40);
                           3596 ;--- end asm ---
   14F8 8E C8 BF      [ 3] 3597 	ldx	#_stringBuffer40	;,
   14FB BD 5B 7A      [ 8] 3598 	jsr	_printMessage
                           3599 ;----- asm -----
                           3600 ; 1136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3601 	; #ENR#[825]checkxp();
                           3602 ;--- end asm ---
   14FE BD 53 F8      [ 8] 3603 	jsr	_checkXP
                           3604 ;----- asm -----
                           3605 ; 1138 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3606 	; #ENR#[826]pause(small_pause);
                           3607 ;--- end asm ---
   1501 C6 4B         [ 2] 3608 	ldb	#75	;,
   1503 BD 3E 21      [ 8] 3609 	jsr	_pause
                           3610 ;----- asm -----
                           3611 ; 1143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3612 	; #ENR#[830]tmp = (signed int) randmax(100);
                           3613 ;--- end asm ---
   1506 C6 64         [ 2] 3614 	ldb	#100	;,
   1508 BD 5F 2A      [ 8] 3615 	jsr	_RandMax
   150B E7 64         [ 5] 3616 	stb	4,s	;, D.3642
   150D F7 C8 FE      [ 5] 3617 	stb	_tmp	;, tmp
                           3618 ;----- asm -----
                           3619 ; 1145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3620 	; #ENR#[831]if (tmp>50)
                           3621 ;--- end asm ---
   1510 32 62         [ 5] 3622 	leas	2,s	;,,
   1512 C6 04         [ 2] 3623 	ldb	#4	;,
   1514 E7 69         [ 5] 3624 	stb	9,s	;, D.3508
   1516 E6 62         [ 5] 3625 	ldb	2,s	;, D.3642
   1518 C1 32         [ 2] 3626 	cmpb	#50	;cmpqi:	;,
   151A 10 2E FA C2   [ 6] 3627 	lbgt	L105	;
                           3628 ;----- asm -----
                           3629 ; 1148 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3630 	; #ENR#[833]return  return_treasure;
                           3631 ;--- end asm ---
   151E C6 03         [ 2] 3632 	ldb	#3	;,
   1520 E7 69         [ 5] 3633 	stb	9,s	;, D.3508
   1522 16 FA BB      [ 5] 3634 	lbra	L105	;
   1525                    3635 L215:
                           3636 ;----- asm -----
                           3637 ; 597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3638 	; #ENR#[454]if ( randmax(100) > 4*s[chr] )
                           3639 ;--- end asm ---
   1525 C6 64         [ 2] 3640 	ldb	#100	;,
   1527 BD 5F 2A      [ 8] 3641 	jsr	_RandMax
   152A E7 6C         [ 5] 3642 	stb	12,s	;, D.3543
   152C F6 C9 4A      [ 5] 3643 	ldb	_s+5	; tmp112, s
   152F 58            [ 2] 3644 	aslb	; tmp112
   1530 58            [ 2] 3645 	aslb	; tmp112
   1531 E1 6C         [ 5] 3646 	cmpb	12,s	;cmpqi:(R)	; tmp112, D.3543
   1533 10 24 F9 5D   [ 6] 3647 	lbhs	L111	;
                           3648 ;----- asm -----
                           3649 ; 603 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3650 	; #ENR#[459]tmp = 1;
                           3651 ;--- end asm ---
   1537 C6 01         [ 2] 3652 	ldb	#1	;,
   1539 F7 C8 FE      [ 5] 3653 	stb	_tmp	;, tmp
   153C 16 F9 55      [ 5] 3654 	lbra	L111	;
   153F                    3655 L155:
                           3656 ;----- asm -----
                           3657 ; 888 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3658 	; #ENR#[654]doevade:
                           3659 ;--- end asm ---
   153F                    3660 L157:
                           3661 ;----- asm -----
                           3662 ; 890 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3663 	; #ENR#[655]tmp = (signed int)randmax(4);
                           3664 ;--- end asm ---
   153F C6 04         [ 2] 3665 	ldb	#4	;,
   1541 BD 5F 2A      [ 8] 3666 	jsr	_RandMax
   1544 F7 C8 FE      [ 5] 3667 	stb	_tmp	; D.3584, tmp
                           3668 ;----- asm -----
                           3669 ; 894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3670 	; #ENR#[658]switch (tmp)
                           3671 ;--- end asm ---
   1547 C1 01         [ 2] 3672 	cmpb	#1	;cmpqi:	; D.3584,
   1549 10 27 01 7B   [ 6] 3673 	lbeq	L160	;
   154D 10 2F 00 A4   [ 6] 3674 	lble	L243	;
   1551 C1 02         [ 2] 3675 	cmpb	#2	;cmpqi:	; D.3584,
   1553 10 27 01 53   [ 6] 3676 	lbeq	L161	;
   1557 8E C8 80      [ 3] 3677 	ldx	#_screen	; prephitmp.322,
   155A C1 03         [ 2] 3678 	cmpb	#3	;cmpqi:	; D.3584,
   155C 10 27 01 20   [ 6] 3679 	lbeq	L164	;
   1560                    3680 L158:
   1560 8E C8 80      [ 3] 3681 	ldx	#_screen	; prephitmp.322,
   1563                    3682 L171:
                           3683 ;----- asm -----
                           3684 ; 981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3685 	; #ENR#[718]if (!can_go_north)
                           3686 ;--- end asm ---
   1563 E6 0B         [ 5] 3687 	ldb	11,x	;,
   1565 E7 E8 13      [ 5] 3688 	stb	19,s	;, temp.381
   1568 C6 03         [ 2] 3689 	ldb	#3	; tmp229,
   156A E4 E8 13      [ 5] 3690 	andb	19,s	; tmp229, temp.381
   156D C1 03         [ 2] 3691 	cmpb	#3	;cmpqi:	; tmp229,
   156F 10 27 01 74   [ 6] 3692 	lbeq	L172	;
                           3693 ;----- asm -----
                           3694 ; 984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3695 	; #ENR#[720]fillmap=go_north;
                           3696 ;--- end asm ---
   1573 C6 01         [ 2] 3697 	ldb	#1	;,
   1575 F7 C8 FC      [ 5] 3698 	stb	_fillMap	;, fillMap
                           3699 ;----- asm -----
                           3700 ; 986 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3701 	; #ENR#[721]printmessage();
                           3702 ;--- end asm ---
   1578 8E 0C B9      [ 3] 3703 	ldx	#LC115	;,
   157B BD 5B 7A      [ 8] 3704 	jsr	_printMessage
                           3705 ;----- asm -----
                           3706 ; 988 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3707 	; #ENR#[722]cy -=1;
                           3708 ;--- end asm ---
   157E 7A C9 40      [ 7] 3709 	dec	_cy	; cy
                           3710 ;----- asm -----
                           3711 ; 990 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3712 	; #ENR#[723]goto evadeout;
                           3713 ;--- end asm ---
   1581                    3714 L168:
                           3715 ;----- asm -----
                           3716 ; 915 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3717 	; #ENR#[672]monsteronstack((signed int)m, ml, mh);
                           3718 ;--- end asm ---
   1581 F6 C9 7F      [ 5] 3719 	ldb	_ml	;, ml
   1584 E7 E2         [ 6] 3720 	stb	,-s	;,
   1586 BE C9 78      [ 6] 3721 	ldx	_mh	;, mh
   1589 F6 C9 77      [ 5] 3722 	ldb	_m	;, m
   158C BD 3E 63      [ 8] 3723 	jsr	_monsterOnStack
                           3724 ;----- asm -----
                           3725 ; 918 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3726 	; #ENR#[674]return return_new_turn;
                           3727 ;--- end asm ---
   158F C6 01         [ 2] 3728 	ldb	#1	;,
   1591 E7 6A         [ 5] 3729 	stb	10,s	;, D.3508
   1593 32 61         [ 5] 3730 	leas	1,s	;,,
   1595 16 FA 48      [ 5] 3731 	lbra	L105	;
   1598                    3732 L216:
   1598 C6 14         [ 2] 3733 	ldb	#20	;,
   159A BD 5F 2A      [ 8] 3734 	jsr	_RandMax
   159D F1 C9 4A      [ 5] 3735 	cmpb	_s+5	;cmpqi:	; D.3548, s
   15A0 10 23 F8 E7   [ 6] 3736 	lbls	L114	;
                           3737 ;----- asm -----
                           3738 ; 610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3739 	; #ENR#[465]tmp = 2;
                           3740 ;--- end asm ---
   15A4 C6 02         [ 2] 3741 	ldb	#2	;,
   15A6 F7 C8 FE      [ 5] 3742 	stb	_tmp	;, tmp
   15A9 16 F8 E8      [ 5] 3743 	lbra	L111	;
   15AC                    3744 L217:
   15AC C6 1E         [ 2] 3745 	ldb	#30	;,
   15AE BD 5F 2A      [ 8] 3746 	jsr	_RandMax
   15B1 F1 C9 4A      [ 5] 3747 	cmpb	_s+5	;cmpqi:	; D.3549, s
   15B4 10 24 F8 DC   [ 6] 3748 	lbhs	L111	;
                           3749 ;----- asm -----
                           3750 ; 617 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3751 	; #ENR#[471]tmp = 3;
                           3752 ;--- end asm ---
   15B8 C6 03         [ 2] 3753 	ldb	#3	;,
   15BA F7 C8 FE      [ 5] 3754 	stb	_tmp	;, tmp
   15BD 16 F8 D4      [ 5] 3755 	lbra	L111	;
   15C0                    3756 L112:
                           3757 ;----- asm -----
                           3758 ; 584 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3759 	; #ENR#[443]tmp = 3;
                           3760 ;--- end asm ---
   15C0 C6 03         [ 2] 3761 	ldb	#3	;,
   15C2 F7 C8 FE      [ 5] 3762 	stb	_tmp	;, tmp
   15C5 16 F8 CC      [ 5] 3763 	lbra	L111	;
   15C8                    3764 L242:
                           3765 ;----- asm -----
                           3766 ; 707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3767 	; #ENR#[533]_fs(,items[tmp]);
                           3768 ;--- end asm ---
   15C8 1D            [ 2] 3769 	sex		;extendqihi2: R:b -> R:d	; tmp.350, tmp.350
   15C9 58            [ 2] 3770 	aslb	;
   15CA 49            [ 2] 3771 	rola	;
   15CB 1F 01         [ 6] 3772 	tfr	d,x	; tmp.350, tmp153
   15CD AE 89 01 F9   [ 9] 3773 	ldx	_items,x	;, items
   15D1 AF E3         [ 8] 3774 	stx	,--s	;,
   15D3 8E 0C 35      [ 3] 3775 	ldx	#LC107	;,
   15D6 BD 5C 59      [ 8] 3776 	jsr	__fs
                           3777 ;----- asm -----
                           3778 ; 709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3779 	; #ENR#[534]printmessage(stringbuffer40);
                           3780 ;--- end asm ---
   15D9 8E C8 BF      [ 3] 3781 	ldx	#_stringBuffer40	;,
   15DC BD 5B 7A      [ 8] 3782 	jsr	_printMessage
                           3783 ;----- asm -----
                           3784 ; 711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3785 	; #ENR#[535]inventory[tmp]=0;
                           3786 ;--- end asm ---
   15DF F6 C8 FE      [ 5] 3787 	ldb	_tmp	;, tmp
   15E2 1D            [ 2] 3788 	sex		;extendqihi2: R:b -> R:d	;,
   15E3 ED 62         [ 6] 3789 	std	2,s	;,
   15E5 58            [ 2] 3790 	aslb	;
   15E6 49            [ 2] 3791 	rola	;
   15E7 1F 01         [ 6] 3792 	tfr	d,x	;, tmp158
   15E9 CC 00 00      [ 3] 3793 	ldd	#0	;,
   15EC ED 89 C9 4B   [ 9] 3794 	std	_inventory,x	;, inventory
   15F0 32 62         [ 5] 3795 	leas	2,s	;,,
   15F2 16 FE 28      [ 5] 3796 	lbra	L132	;
   15F5                    3797 L243:
   15F5 5D            [ 2] 3798 	tstb	; D.3584
   15F6 10 26 FF 66   [ 6] 3799 	lbne	L158	;
                           3800 ;----- asm -----
                           3801 ; 902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3802 	; #ENR#[664]if (!can_go_north)
                           3803 ;--- end asm ---
   15FA 8E C8 80      [ 3] 3804 	ldx	#_screen	; prephitmp.322,
   15FD F6 C8 8B      [ 5] 3805 	ldb	_screen+11	; tmp222,
   1600 C4 03         [ 2] 3806 	andb	#3	; tmp222,
   1602 C1 03         [ 2] 3807 	cmpb	#3	;cmpqi:	; tmp222,
   1604 10 27 01 2A   [ 6] 3808 	lbeq	L167	;
                           3809 ;----- asm -----
                           3810 ; 905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3811 	; #ENR#[666]fillmap=go_north;
                           3812 ;--- end asm ---
   1608 C6 01         [ 2] 3813 	ldb	#1	;,
   160A F7 C8 FC      [ 5] 3814 	stb	_fillMap	;, fillMap
                           3815 ;----- asm -----
                           3816 ; 907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3817 	; #ENR#[667]printmessage();
                           3818 ;--- end asm ---
   160D 8E 0C B9      [ 3] 3819 	ldx	#LC115	;,
   1610 BD 5B 7A      [ 8] 3820 	jsr	_printMessage
                           3821 ;----- asm -----
                           3822 ; 909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3823 	; #ENR#[668]cy -=1;
                           3824 ;--- end asm ---
   1613 7A C9 40      [ 7] 3825 	dec	_cy	; cy
                           3826 ;----- asm -----
                           3827 ; 911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3828 	; #ENR#[669]evadeout:
                           3829 ;--- end asm ---
   1616 16 FF 68      [ 5] 3830 	lbra	L168	;
   1619                    3831 L200:
                           3832 ;----- asm -----
                           3833 ; 1337 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3834 	; #ENR#[970]printmessage();
                           3835 ;--- end asm ---
   1619 8E 0D 9B      [ 3] 3836 	ldx	#LC130	;,
   161C BD 5B 7A      [ 8] 3837 	jsr	_printMessage
                           3838 ;----- asm -----
                           3839 ; 1340 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3840 	; #ENR#[972]specialaction = special_dragonbreath;
                           3841 ;--- end asm ---
   161F C6 01         [ 2] 3842 	ldb	#1	;,
   1621 F7 C8 A5      [ 5] 3843 	stb	_specialAction	;, specialAction
                           3844 ;----- asm -----
                           3845 ; 1343 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3846 	; #ENR#[974]pause(small_pause);
                           3847 ;--- end asm ---
   1624 C6 4B         [ 2] 3848 	ldb	#75	;,
   1626 BD 3E 21      [ 8] 3849 	jsr	_pause
                           3850 ;----- asm -----
                           3851 ; 1345 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3852 	; #ENR#[975]specialaction = 0;
                           3853 ;--- end asm ---
   1629 7F C8 A5      [ 7] 3854 	clr	_specialAction	; specialAction
                           3855 ;----- asm -----
                           3856 ; 1348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3857 	; #ENR#[977]clearmessage();
                           3858 ;--- end asm ---
   162C 7F C9 87      [ 7] 3859 	clr	_msgLine	; msgLine
                           3860 ;----- asm -----
                           3861 ; 1350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3862 	; #ENR#[978]ltmp = randmax(20)*ml+1;
                           3863 ;--- end asm ---
   162F C6 14         [ 2] 3864 	ldb	#20	;,
   1631 BD 5F 2A      [ 8] 3865 	jsr	_RandMax
   1634 B6 C9 7F      [ 5] 3866 	lda	_ml	;umulqihi3	; ml
   1637 3D            [11] 3867 	mul
                           3868 		;movlsbqihi: D->B
   1638 5C            [ 2] 3869 	incb	; tmp278
   1639 4F            [ 2] 3870 	clra		;zero_extendqihi: R:b -> R:d	; tmp278, tmp279
   163A FD C9 02      [ 6] 3871 	std	_ltmp	; tmp279, ltmp
                           3872 ;----- asm -----
                           3873 ; 1359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3874 	; #ENR#[986]if (randmax(20) <s[con])
                           3875 ;--- end asm ---
   163D C6 14         [ 2] 3876 	ldb	#20	;,
   163F BD 5F 2A      [ 8] 3877 	jsr	_RandMax
   1642 F1 C9 48      [ 5] 3878 	cmpb	_s+3	;cmpqi:	; D.3681, s
   1645 10 25 00 D2   [ 6] 3879 	lblo	L244	;
   1649                    3880 L201:
                           3881 ;----- asm -----
                           3882 ; 1367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3883 	; #ENR#[991]_fl_s(, (unsigned long int) ltmp);
                           3884 ;--- end asm ---
   1649 BE C9 02      [ 6] 3885 	ldx	_ltmp	;, ltmp
   164C AF E3         [ 8] 3886 	stx	,--s	;,
   164E 8E 0D CD      [ 3] 3887 	ldx	#LC132	;,
   1651 BD 5F 6F      [ 8] 3888 	jsr	__fl_s
                           3889 ;----- asm -----
                           3890 ; 1369 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3891 	; #ENR#[992]printmessage(stringbuffer40);
                           3892 ;--- end asm ---
   1654 8E C8 BF      [ 3] 3893 	ldx	#_stringBuffer40	;,
   1657 BD 5B 7A      [ 8] 3894 	jsr	_printMessage
                           3895 ;----- asm -----
                           3896 ; 1371 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3897 	; #ENR#[993]goto label3320;
                           3898 ;--- end asm ---
   165A 32 62         [ 5] 3899 	leas	2,s	;,,
   165C 16 F8 E4      [ 5] 3900 	lbra	L188	;
   165F                    3901 L232:
                           3902 ;----- asm -----
                           3903 ; 459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3904 	; #ENR#[348]clearmessage();
                           3905 ;--- end asm ---
   165F 7F C9 87      [ 7] 3906 	clr	_msgLine	; msgLine
                           3907 ;----- asm -----
                           3908 ; 461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3909 	; #ENR#[349]printmessage();
                           3910 ;--- end asm ---
   1662 8E 0B 86      [ 3] 3911 	ldx	#LC99	;,
   1665 BD 5B 7A      [ 8] 3912 	jsr	_printMessage
                           3913 ;----- asm -----
                           3914 ; 463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3915 	; #ENR#[350]printmessage();
                           3916 ;--- end asm ---
   1668 8E 0B A3      [ 3] 3917 	ldx	#LC100	;,
   166B BD 5B 7A      [ 8] 3918 	jsr	_printMessage
                           3919 ;----- asm -----
                           3920 ; 466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3921 	; #ENR#[352]if (testforbutton(1) != 4)
                           3922 ;--- end asm ---
   166E C6 01         [ 2] 3923 	ldb	#1	;,
   1670 BD 04 F8      [ 8] 3924 	jsr	_testForButton
   1673 C1 04         [ 2] 3925 	cmpb	#4	;cmpqi:	; D.3520,
   1675 10 27 F9 57   [ 6] 3926 	lbeq	L104	;
                           3927 ;----- asm -----
                           3928 ; 469 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3929 	; #ENR#[354]return return_treasure;
                           3930 ;--- end asm ---
   1679 C6 03         [ 2] 3931 	ldb	#3	;,
   167B E7 69         [ 5] 3932 	stb	9,s	;, D.3508
   167D 16 F9 60      [ 5] 3933 	lbra	L105	;
   1680                    3934 L170:
                           3935 ;----- asm -----
                           3936 ; 958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3937 	; #ENR#[701]case 3:
                           3938 ;--- end asm ---
   1680                    3939 L164:
                           3940 ;----- asm -----
                           3941 ; 963 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3942 	; #ENR#[705]if (!can_go_east)
                           3943 ;--- end asm ---
   1680 E6 0D         [ 5] 3944 	ldb	13,x	; tmp228,
   1682 C4 0C         [ 2] 3945 	andb	#12	; tmp228,
   1684 C1 0C         [ 2] 3946 	cmpb	#12	;cmpqi:	; tmp228,
   1686 10 27 FE D9   [ 6] 3947 	lbeq	L171	;
                           3948 ;----- asm -----
                           3949 ; 966 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3950 	; #ENR#[707]fillmap=go_east;
                           3951 ;--- end asm ---
   168A C6 03         [ 2] 3952 	ldb	#3	;,
   168C F7 C8 FC      [ 5] 3953 	stb	_fillMap	;, fillMap
                           3954 ;----- asm -----
                           3955 ; 968 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3956 	; #ENR#[708]printmessage();
                           3957 ;--- end asm ---
   168F 8E 0C CA      [ 3] 3958 	ldx	#LC118	;,
   1692 BD 5B 7A      [ 8] 3959 	jsr	_printMessage
                           3960 ;----- asm -----
                           3961 ; 970 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3962 	; #ENR#[709]cx +=1;
                           3963 ;--- end asm ---
   1695 7C C9 3F      [ 7] 3964 	inc	_cx	; cx
                           3965 ;----- asm -----
                           3966 ; 972 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3967 	; #ENR#[710]goto evadeout;
                           3968 ;--- end asm ---
   1698 16 FE E6      [ 5] 3969 	lbra	L168	;
   169B                    3970 L240:
   169B C6 09         [ 2] 3971 	ldb	#9	; i,
   169D                    3972 L118:
                           3973 ;----- asm -----
                           3974 ; 666 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3975 	; #ENR#[505]tmp = i;
                           3976 ;--- end asm ---
   169D F7 C8 FE      [ 5] 3977 	stb	_tmp	; i, tmp
                           3978 ;----- asm -----
                           3979 ; 668 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3980 	; #ENR#[506]break;
                           3981 ;--- end asm ---
   16A0 16 FD 19      [ 5] 3982 	lbra	L127	;
   16A3                    3983 L237:
                           3984 ;----- asm -----
                           3985 ; 1242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3986 	; #ENR#[900]return return_player_dead;
                           3987 ;--- end asm ---
   16A3 C6 02         [ 2] 3988 	ldb	#2	;,
   16A5 E7 69         [ 5] 3989 	stb	9,s	;, D.3508
   16A7 16 F9 36      [ 5] 3990 	lbra	L105	;
   16AA                    3991 L161:
   16AA 8E C8 80      [ 3] 3992 	ldx	#_screen	; prephitmp.322,
   16AD                    3993 L165:
                           3994 ;----- asm -----
                           3995 ; 945 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           3996 	; #ENR#[693]if (!can_go_west)
                           3997 ;--- end asm ---
   16AD E6 0B         [ 5] 3998 	ldb	11,x	; tmp226,
   16AF C4 0C         [ 2] 3999 	andb	#12	; tmp226,
   16B1 C1 0C         [ 2] 4000 	cmpb	#12	;cmpqi:	; tmp226,
   16B3 10 27 FF C9   [ 6] 4001 	lbeq	L170	;
                           4002 ;----- asm -----
                           4003 ; 948 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4004 	; #ENR#[695]fillmap=go_west;
                           4005 ;--- end asm ---
   16B7 C6 04         [ 2] 4006 	ldb	#4	;,
   16B9 F7 C8 FC      [ 5] 4007 	stb	_fillMap	;, fillMap
                           4008 ;----- asm -----
                           4009 ; 950 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4010 	; #ENR#[696]printmessage();
                           4011 ;--- end asm ---
   16BC 8E 0C C5      [ 3] 4012 	ldx	#LC117	;,
   16BF BD 5B 7A      [ 8] 4013 	jsr	_printMessage
                           4014 ;----- asm -----
                           4015 ; 952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4016 	; #ENR#[697]cx -=1;
                           4017 ;--- end asm ---
   16C2 7A C9 3F      [ 7] 4018 	dec	_cx	; cx
                           4019 ;----- asm -----
                           4020 ; 954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4021 	; #ENR#[698]goto evadeout;
                           4022 ;--- end asm ---
   16C5 16 FE B9      [ 5] 4023 	lbra	L168	;
   16C8                    4024 L160:
   16C8 8E C8 80      [ 3] 4025 	ldx	#_screen	; prephitmp.322,
   16CB                    4026 L166:
                           4027 ;----- asm -----
                           4028 ; 927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4029 	; #ENR#[681]if (!can_go_south)
                           4030 ;--- end asm ---
   16CB E6 88 13      [ 5] 4031 	ldb	19,x	; tmp224,
   16CE C4 03         [ 2] 4032 	andb	#3	; tmp224,
   16D0 C1 03         [ 2] 4033 	cmpb	#3	;cmpqi:	; tmp224,
   16D2 10 27 00 59   [ 6] 4034 	lbeq	L169	;
                           4035 ;----- asm -----
                           4036 ; 930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4037 	; #ENR#[683]fillmap=go_south;
                           4038 ;--- end asm ---
   16D6 C6 02         [ 2] 4039 	ldb	#2	;,
   16D8 F7 C8 FC      [ 5] 4040 	stb	_fillMap	;, fillMap
                           4041 ;----- asm -----
                           4042 ; 932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4043 	; #ENR#[684]printmessage();
                           4044 ;--- end asm ---
   16DB 8E 0C BF      [ 3] 4045 	ldx	#LC116	;,
   16DE BD 5B 7A      [ 8] 4046 	jsr	_printMessage
                           4047 ;----- asm -----
                           4048 ; 934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4049 	; #ENR#[685]cy +=1;
                           4050 ;--- end asm ---
   16E1 7C C9 40      [ 7] 4051 	inc	_cy	; cy
                           4052 ;----- asm -----
                           4053 ; 936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4054 	; #ENR#[686]goto evadeout;
                           4055 ;--- end asm ---
   16E4 16 FE 9A      [ 5] 4056 	lbra	L168	;
   16E7                    4057 L172:
                           4058 ;----- asm -----
                           4059 ; 995 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4060 	; #ENR#[727]if (!can_go_south)
                           4061 ;--- end asm ---
   16E7 E6 88 13      [ 5] 4062 	ldb	19,x	; tmp231,
   16EA C4 03         [ 2] 4063 	andb	#3	; tmp231,
   16EC C1 03         [ 2] 4064 	cmpb	#3	;cmpqi:	; tmp231,
   16EE 10 27 00 43   [ 6] 4065 	lbeq	L173	;
                           4066 ;----- asm -----
                           4067 ; 998 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4068 	; #ENR#[729]fillmap=go_south;
                           4069 ;--- end asm ---
   16F2 C6 02         [ 2] 4070 	ldb	#2	;,
   16F4 F7 C8 FC      [ 5] 4071 	stb	_fillMap	;, fillMap
                           4072 ;----- asm -----
                           4073 ; 1000 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4074 	; #ENR#[730]printmessage();
                           4075 ;--- end asm ---
   16F7 8E 0C BF      [ 3] 4076 	ldx	#LC116	;,
   16FA BD 5B 7A      [ 8] 4077 	jsr	_printMessage
                           4078 ;----- asm -----
                           4079 ; 1002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4080 	; #ENR#[731]cy +=1;
                           4081 ;--- end asm ---
   16FD 7C C9 40      [ 7] 4082 	inc	_cy	; cy
                           4083 ;----- asm -----
                           4084 ; 1004 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4085 	; #ENR#[732]goto evadeout;
                           4086 ;--- end asm ---
   1700 16 FE 7E      [ 5] 4087 	lbra	L168	;
   1703                    4088 L241:
                           4089 ;----- asm -----
                           4090 ; 675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4091 	; #ENR#[511]printmessage();
                           4092 ;--- end asm ---
   1703 8E 0C 11      [ 3] 4093 	ldx	#LC105	;,
   1706 BD 5B 7A      [ 8] 4094 	jsr	_printMessage
                           4095 ;----- asm -----
                           4096 ; 677 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4097 	; #ENR#[512]printmessage();
                           4098 ;--- end asm ---
   1709 8E 0C 2B      [ 3] 4099 	ldx	#LC106	;,
   170C BD 5B 7A      [ 8] 4100 	jsr	_printMessage
                           4101 ;----- asm -----
                           4102 ; 679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4103 	; #ENR#[513]pause(small_pause);
                           4104 ;--- end asm ---
   170F C6 4B         [ 2] 4105 	ldb	#75	;,
   1711 BD 3E 21      [ 8] 4106 	jsr	_pause
                           4107 ;----- asm -----
                           4108 ; 681 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4109 	; #ENR#[514]return return_treasure;
                           4110 ;--- end asm ---
   1714 C6 03         [ 2] 4111 	ldb	#3	;,
   1716 E7 69         [ 5] 4112 	stb	9,s	;, D.3508
   1718 16 F8 C5      [ 5] 4113 	lbra	L105	;
   171B                    4114 L244:
                           4115 ;----- asm -----
                           4116 ; 1362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4117 	; #ENR#[988]ltmp = (ltmp>>1)+1;
                           4118 ;--- end asm ---
   171B FC C9 02      [ 6] 4119 	ldd	_ltmp	; tmp281, ltmp
   171E 47            [ 2] 4120 	asra	;
   171F 56            [ 2] 4121 	rorb	;
   1720 C3 00 01      [ 4] 4122 	addd	#1; addhi3,3	; tmp281,
   1723 FD C9 02      [ 6] 4123 	std	_ltmp	; tmp281, ltmp
                           4124 ;----- asm -----
                           4125 ; 1364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4126 	; #ENR#[989]printmessage();
                           4127 ;--- end asm ---
   1726 8E 0D B6      [ 3] 4128 	ldx	#LC131	;,
   1729 BD 5B 7A      [ 8] 4129 	jsr	_printMessage
   172C 16 FF 1A      [ 5] 4130 	lbra	L201	;
   172F                    4131 L169:
                           4132 ;----- asm -----
                           4133 ; 940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4134 	; #ENR#[689]case 2:
                           4135 ;--- end asm ---
   172F 16 FF 7B      [ 5] 4136 	lbra	L165	;
   1732                    4137 L167:
                           4138 ;----- asm -----
                           4139 ; 922 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4140 	; #ENR#[677]case 1:
                           4141 ;--- end asm ---
   1732 16 FF 96      [ 5] 4142 	lbra	L166	;
   1735                    4143 L173:
                           4144 ;----- asm -----
                           4145 ; 1009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4146 	; #ENR#[736]if (!can_go_west)
                           4147 ;--- end asm ---
   1735 C6 0C         [ 2] 4148 	ldb	#12	;,
   1737 E4 E8 13      [ 5] 4149 	andb	19,s	;, temp.381
   173A C1 0C         [ 2] 4150 	cmpb	#12	;cmpqi:	;,
   173C 27 1A         [ 3] 4151 	beq	L174	;
                           4152 ;----- asm -----
                           4153 ; 1012 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4154 	; #ENR#[738]fillmap=go_west;
                           4155 ;--- end asm ---
   173E C6 04         [ 2] 4156 	ldb	#4	;,
   1740 F7 C8 FC      [ 5] 4157 	stb	_fillMap	;, fillMap
                           4158 ;----- asm -----
                           4159 ; 1014 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4160 	; #ENR#[739]printmessage();
                           4161 ;--- end asm ---
   1743 8E 0C C5      [ 3] 4162 	ldx	#LC117	;,
   1746 BD 5B 7A      [ 8] 4163 	jsr	_printMessage
                           4164 ;----- asm -----
                           4165 ; 1016 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4166 	; #ENR#[740]cx -=1;
                           4167 ;--- end asm ---
   1749 7A C9 3F      [ 7] 4168 	dec	_cx	; cx
                           4169 ;----- asm -----
                           4170 ; 1018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4171 	; #ENR#[741]goto evadeout;
                           4172 ;--- end asm ---
   174C 16 FE 32      [ 5] 4173 	lbra	L168	;
   174F                    4174 L238:
   174F 5F            [ 2] 4175 	clrb	; i
   1750 16 FF 4A      [ 5] 4176 	lbra	L118	;
   1753                    4177 L239:
   1753 E6 6D         [ 5] 4178 	ldb	13,s	; i, tmp.28
   1755 16 FF 45      [ 5] 4179 	lbra	L118	;
   1758                    4180 L174:
                           4181 ;----- asm -----
                           4182 ; 1021 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4183 	; #ENR#[743]goto cantevade;
                           4184 ;--- end asm ---
   1758 16 FA AD      [ 5] 4185 	lbra	L156	;
   175B                    4186 L233:
                           4187 ;----- asm -----
                           4188 ; 1037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4189 	; #ENR#[755]return return_new_turn;
                           4190 ;--- end asm ---
   175B C6 01         [ 2] 4191 	ldb	#1	;,
   175D E7 69         [ 5] 4192 	stb	9,s	;, D.3508
   175F 16 F8 7E      [ 5] 4193 	lbra	L105	;
   1762                    4194 LC134:
   1762 4E 4F 00           4195 	.ascii	"NO\0"
                           4196 	.globl	_handleMovement
   1765                    4197 _handleMovement:
                           4198 ;----- asm -----
                           4199 ; 1397 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4200 	; #ENR#[1012]if ((lastx == 0) && (lasty == 0))
                           4201 ;--- end asm ---
   1765 F6 C9 81      [ 5] 4202 	ldb	_lastX	; lastX.75, lastX
   1768 26 07         [ 3] 4203 	bne	L247	;
   176A 7D C9 82      [ 7] 4204 	tst	_lastY	; lastY
   176D 10 27 00 3E   [ 6] 4205 	lbeq	L259	;
   1771                    4206 L247:
                           4207 ;----- asm -----
                           4208 ; 1407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4209 	; #ENR#[1018]if ((vec_joy_1_x == 0) && (vec_joy_1_y == 0))
                           4210 ;--- end asm ---
   1771 7D C8 1B      [ 7] 4211 	tst	_Vec_Joy_1_X	; Vec_Joy_1_X
   1774 10 26 00 33   [ 6] 4212 	lbne	L249	;
   1778 7D C8 1C      [ 7] 4213 	tst	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   177B 10 26 00 2C   [ 6] 4214 	lbne	L249	;
                           4215 ;----- asm -----
                           4216 ; 1410 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4217 	; #ENR#[1020]clearmessage();
                           4218 ;--- end asm ---
   177F 7F C9 87      [ 7] 4219 	clr	_msgLine	; msgLine
                           4220 ;----- asm -----
                           4221 ; 1413 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4222 	; #ENR#[1022]if ((vec_joy_1_x != 0) || (vec_joy_1_y != 0) )
                           4223 ; 1436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4224 	; #ENR#[1038]if (lastx>0)
                           4225 ;--- end asm ---
   1782 5D            [ 2] 4226 	tstb	; lastX.75
   1783 10 2F 00 36   [ 6] 4227 	lble	L250	;
                           4228 ;----- asm -----
                           4229 ; 1439 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4230 	; #ENR#[1040]if ((can_go_east) && (!sf[astral_walk]))
                           4231 ;--- end asm ---
   1787 F6 C8 8D      [ 5] 4232 	ldb	_screen+13	; tmp33,
   178A C4 0C         [ 2] 4233 	andb	#12	; tmp33,
   178C C1 0C         [ 2] 4234 	cmpb	#12	;cmpqi:	; tmp33,
   178E 26 07         [ 3] 4235 	bne	L251	;
   1790 7D C9 73      [ 7] 4236 	tst	_sf+7	; sf
   1793 10 27 00 51   [ 6] 4237 	lbeq	L260	;
   1797                    4238 L251:
                           4239 ;----- asm -----
                           4240 ; 1447 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4241 	; #ENR#[1046]cx +=1;fillmap=go_east;printmessage();
                           4242 ;--- end asm ---
   1797 7C C9 3F      [ 7] 4243 	inc	_cx	; cx
   179A C6 03         [ 2] 4244 	ldb	#3	;,
   179C F7 C8 FC      [ 5] 4245 	stb	_fillMap	;, fillMap
   179F 8E 0C CA      [ 3] 4246 	ldx	#LC118	;,
   17A2 BD 5B 7A      [ 8] 4247 	jsr	_printMessage
   17A5                    4248 L252:
                           4249 ;----- asm -----
                           4250 ; 1493 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4251 	; #ENR#[1082]lastx = 0;
                           4252 ;--- end asm ---
   17A5 7F C9 81      [ 7] 4253 	clr	_lastX	; lastX
                           4254 ;----- asm -----
                           4255 ; 1495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4256 	; #ENR#[1083]lasty = 0;
                           4257 ;--- end asm ---
   17A8 7F C9 82      [ 7] 4258 	clr	_lastY	; lastY
   17AB                    4259 L249:
                           4260 ;----- asm -----
                           4261 ; 1498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4262 	; #ENR#[1085]return fillmap;
                           4263 ;--- end asm ---
   17AB F6 C8 FC      [ 5] 4264 	ldb	_fillMap	; D.3691, fillMap
   17AE 39            [ 5] 4265 	rts
   17AF                    4266 L259:
                           4267 ;----- asm -----
                           4268 ; 1400 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4269 	; #ENR#[1014]lastx = vec_joy_1_x;
                           4270 ;--- end asm ---
   17AF F6 C8 1B      [ 5] 4271 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   17B2 F7 C9 81      [ 5] 4272 	stb	_lastX	;, lastX
                           4273 ;----- asm -----
                           4274 ; 1402 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4275 	; #ENR#[1015]lasty = vec_joy_1_y;
                           4276 ;--- end asm ---
   17B5 F6 C8 1C      [ 5] 4277 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   17B8 F7 C9 82      [ 5] 4278 	stb	_lastY	;, lastY
                           4279 ;----- asm -----
                           4280 ; 1404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4281 	; #ENR#[1016]return 0;
                           4282 ;--- end asm ---
   17BB 5F            [ 2] 4283 	clrb	; D.3691
   17BC 39            [ 5] 4284 	rts
   17BD                    4285 L250:
   17BD 5D            [ 2] 4286 	tstb	; lastX.75
   17BE 26 31         [ 3] 4287 	bne	L261	;
   17C0 F6 C9 82      [ 5] 4288 	ldb	_lastY	; lastY.444, lastY
   17C3 10 2F 00 4B   [ 6] 4289 	lble	L255	;
                           4290 ;----- asm -----
                           4291 ; 1467 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4292 	; #ENR#[1062]if ((can_go_north) && (!sf[astral_walk]))
                           4293 ;--- end asm ---
   17C7 F6 C8 8B      [ 5] 4294 	ldb	_screen+11	; tmp41,
   17CA C4 03         [ 2] 4295 	andb	#3	; tmp41,
   17CC C1 03         [ 2] 4296 	cmpb	#3	;cmpqi:	; tmp41,
   17CE 26 07         [ 3] 4297 	bne	L256	;
   17D0 7D C9 73      [ 7] 4298 	tst	_sf+7	; sf
   17D3 10 27 00 5F   [ 6] 4299 	lbeq	L262	;
   17D7                    4300 L256:
                           4301 ;----- asm -----
                           4302 ; 1475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4303 	; #ENR#[1068]cy -=1;fillmap=go_north;printmessage();
                           4304 ;--- end asm ---
   17D7 7A C9 40      [ 7] 4305 	dec	_cy	; cy
   17DA C6 01         [ 2] 4306 	ldb	#1	;,
   17DC F7 C8 FC      [ 5] 4307 	stb	_fillMap	;, fillMap
   17DF 8E 0C B9      [ 3] 4308 	ldx	#LC115	;,
   17E2 BD 5B 7A      [ 8] 4309 	jsr	_printMessage
   17E5 16 FF BD      [ 5] 4310 	lbra	L252	;
   17E8                    4311 L260:
                           4312 ;----- asm -----
                           4313 ; 1442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4314 	; #ENR#[1042]printmessage();
                           4315 ;--- end asm ---
   17E8 8E 17 62      [ 3] 4316 	ldx	#LC134	;,
   17EB BD 5B 7A      [ 8] 4317 	jsr	_printMessage
   17EE 16 FF B4      [ 5] 4318 	lbra	L252	;
   17F1                    4319 L261:
                           4320 ;----- asm -----
                           4321 ; 1453 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4322 	; #ENR#[1051]if ((can_go_west) && (!sf[astral_walk]))
                           4323 ;--- end asm ---
   17F1 F6 C8 8B      [ 5] 4324 	ldb	_screen+11	; tmp37,
   17F4 C4 0C         [ 2] 4325 	andb	#12	; tmp37,
   17F6 C1 0C         [ 2] 4326 	cmpb	#12	;cmpqi:	; tmp37,
   17F8 26 07         [ 3] 4327 	bne	L254	;
   17FA 7D C9 73      [ 7] 4328 	tst	_sf+7	; sf
   17FD 10 27 00 3E   [ 6] 4329 	lbeq	L263	;
   1801                    4330 L254:
                           4331 ;----- asm -----
                           4332 ; 1461 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4333 	; #ENR#[1057]cx -=1;fillmap=go_west;printmessage();
                           4334 ;--- end asm ---
   1801 7A C9 3F      [ 7] 4335 	dec	_cx	; cx
   1804 C6 04         [ 2] 4336 	ldb	#4	;,
   1806 F7 C8 FC      [ 5] 4337 	stb	_fillMap	;, fillMap
   1809 8E 0C C5      [ 3] 4338 	ldx	#LC117	;,
   180C BD 5B 7A      [ 8] 4339 	jsr	_printMessage
   180F 16 FF 93      [ 5] 4340 	lbra	L252	;
   1812                    4341 L255:
   1812 5D            [ 2] 4342 	tstb	; lastY.444
   1813 10 27 FF 8E   [ 6] 4343 	lbeq	L252	;
                           4344 ;----- asm -----
                           4345 ; 1481 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4346 	; #ENR#[1073]if ((can_go_south) && (!sf[astral_walk]))
                           4347 ;--- end asm ---
   1817 F6 C8 93      [ 5] 4348 	ldb	_screen+19	; tmp45,
   181A C4 03         [ 2] 4349 	andb	#3	; tmp45,
   181C C1 03         [ 2] 4350 	cmpb	#3	;cmpqi:	; tmp45,
   181E 26 05         [ 3] 4351 	bne	L257	;
   1820 7D C9 73      [ 7] 4352 	tst	_sf+7	; sf
   1823 27 23         [ 3] 4353 	beq	L264	;
   1825                    4354 L257:
                           4355 ;----- asm -----
                           4356 ; 1489 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4357 	; #ENR#[1079]cy +=1;fillmap=go_south; printmessage();
                           4358 ;--- end asm ---
   1825 7C C9 40      [ 7] 4359 	inc	_cy	; cy
   1828 C6 02         [ 2] 4360 	ldb	#2	;,
   182A F7 C8 FC      [ 5] 4361 	stb	_fillMap	;, fillMap
   182D 8E 0C BF      [ 3] 4362 	ldx	#LC116	;,
   1830 BD 5B 7A      [ 8] 4363 	jsr	_printMessage
   1833 16 FF 6F      [ 5] 4364 	lbra	L252	;
   1836                    4365 L262:
                           4366 ;----- asm -----
                           4367 ; 1470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4368 	; #ENR#[1064]printmessage();
                           4369 ;--- end asm ---
   1836 8E 17 62      [ 3] 4370 	ldx	#LC134	;,
   1839 BD 5B 7A      [ 8] 4371 	jsr	_printMessage
   183C 16 FF 66      [ 5] 4372 	lbra	L252	;
   183F                    4373 L263:
                           4374 ;----- asm -----
                           4375 ; 1456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4376 	; #ENR#[1053]printmessage();
                           4377 ;--- end asm ---
   183F 8E 17 62      [ 3] 4378 	ldx	#LC134	;,
   1842 BD 5B 7A      [ 8] 4379 	jsr	_printMessage
   1845 16 FF 5D      [ 5] 4380 	lbra	L252	;
   1848                    4381 L264:
                           4382 ;----- asm -----
                           4383 ; 1484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4384 	; #ENR#[1075]printmessage();
                           4385 ;--- end asm ---
   1848 8E 17 62      [ 3] 4386 	ldx	#LC134	;,
   184B BD 5B 7A      [ 8] 4387 	jsr	_printMessage
   184E 16 FF 54      [ 5] 4388 	lbra	L252	;
   1851                    4389 LC135:
   1851 59 4F 55 20 53 45  4390 	.ascii	"YOU SEE SOME % <4> TO PICK UP\0"
        45 20 53 4F 4D 45
        20 25 20 3C 34 3E
        20 54 4F 20 50 49
        43 4B 20 55 50 00
   186F                    4391 LC136:
   186F 59 4F 55 20 44 45  4392 	.ascii	"YOU DETECT TRAPS!\0"
        54 45 43 54 20 54
        52 41 50 53 21 00
   1881                    4393 LC137:
   1881 59 4F 55 20 4C 45  4394 	.ascii	"YOU LEAVE IT\0"
        41 56 45 20 49 54
        00
   188E                    4395 LC138:
   188E 53 4E 41 52 46 20  4396 	.ascii	"SNARF IT\0"
        49 54 00
   1897                    4397 LC139:
   1897 49 54 27 53 20 54  4398 	.ascii	"IT'S TRAPPED!\0"
        52 41 50 50 45 44
        21 00
   18A5                    4399 LC140:
   18A5 59 4F 55 20 53 55  4400 	.ascii	"YOU SUFFER % POINTS DAMAGE\0"
        46 46 45 52 20 25
        20 50 4F 49 4E 54
        53 20 44 41 4D 41
        47 45 00
   18C0                    4401 LC141:
   18C0 49 54 27 53 20 57  4402 	.ascii	"IT'S WORTH % GOLD\0"
        4F 52 54 48 20 25
        20 47 4F 4C 44 00
   18D2                    4403 LC142:
   18D2 59 4F 55 20 48 41  4404 	.ascii	"YOU HAVE FOUND A TREASURE CHEST!!\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 54
        52 45 41 53 55 52
        45 20 43 48 45 53
        54 21 21 00
   18F4                    4405 LC143:
   18F4 3C 34 3E 20 54 4F  4406 	.ascii	"<4> TO OPEN IT: \0"
        20 4F 50 45 4E 20
        49 54 3A 20 00
   1905                    4407 LC144:
   1905 49 47 4E 4F 52 45  4408 	.ascii	"IGNORE IT\0"
        20 49 54 00
   190F                    4409 LC145:
   190F 4F 50 45 4E 20 49  4410 	.ascii	"OPEN IT\0"
        54 00
   1917                    4411 LC146:
   1917 43 48 45 53 54 20  4412 	.ascii	"CHEST EXPLODES!!\0"
        45 58 50 4C 4F 44
        45 53 21 21 00
   1928                    4413 LC147:
   1928 49 4E 53 49 44 45  4414 	.ascii	"INSIDE, THERE IS ONLY COBWEBS...\0"
        2C 20 54 48 45 52
        45 20 49 53 20 4F
        4E 4C 59 20 43 4F
        42 57 45 42 53 2E
        2E 2E 00
   1949                    4415 LC148:
   1949 59 4F 55 20 53 45  4416 	.ascii	"YOU SEE A % +%\0"
        45 20 41 20 25 20
        2B 25 00
   1958                    4417 LC149:
   1958 3C 34 3E 20 54 4F  4418 	.ascii	"<4> TO PICK IT UP:\0"
        20 50 49 43 4B 20
        49 54 20 55 50 3A
        00
   196B                    4419 LC150:
   196B 4C 45 41 56 45 20  4420 	.ascii	"LEAVE IT\0"
        49 54 00
   1974                    4421 LC151:
   1974 49 54 20 49 53 20  4422 	.ascii	"IT IS CURSED!!\0"
        43 55 52 53 45 44
        21 21 00
   1983                    4423 LC152:
   1983 59 4F 55 20 53 55  4424 	.ascii	"YOU SUFFER % DAMAGE POINTS\0"
        46 46 45 52 20 25
        20 44 41 4D 41 47
        45 20 50 4F 49 4E
        54 53 00
   199E                    4425 LC153:
   199E 49 54 27 53 20 59  4426 	.ascii	"IT'S YOURS!\0"
        4F 55 52 53 21 00
                           4427 	.globl	_handleTreasure
   19AA                    4428 _handleTreasure:
   19AA 34 60         [ 7] 4429 	pshs	y,u	;
   19AC 32 E8 D7      [ 5] 4430 	leas	-41,s	;,,
   19AF E7 6B         [ 5] 4431 	stb	11,s	; fix, fix
                           4432 ;----- asm -----
                           4433 ; 1505 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4434 	; #ENR#[1091]unsigned int tno;
                           4435 ; 1507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4436 	; #ENR#[1092]unsigned long int ilv;
                           4437 ; 1509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4438 	; #ENR#[1093]unsigned int t,c;
                           4439 ; 1511 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4440 	; #ENR#[1094]clearmessage();
                           4441 ;--- end asm ---
   19B1 7F C9 87      [ 7] 4442 	clr	_msgLine	; msgLine
                           4443 ;----- asm -----
                           4444 ; 1513 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4445 	; #ENR#[1095]if (!fix)
                           4446 ;--- end asm ---
   19B4 5D            [ 2] 4447 	tstb	; fix
   19B5 10 27 01 7E   [ 6] 4448 	lbeq	L312	;
   19B9                    4449 L266:
                           4450 ;----- asm -----
                           4451 ; 1521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4452 	; #ENR#[1101]if (!fix) return return_special;
                           4453 ;--- end asm ---
   19B9 C6 05         [ 2] 4454 	ldb	#5	; D.3733,
   19BB 6D 6B         [ 7] 4455 	tst	11,s	; fix
   19BD 26 05         [ 3] 4456 	bne	L313	;
   19BF                    4457 L269:
   19BF 32 E8 29      [ 5] 4458 	leas	41,s	;,,
   19C2 35 E0         [ 8] 4459 	puls	y,u,pc	;
   19C4                    4460 L313:
                           4461 ;----- asm -----
                           4462 ; 1527 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4463 	; #ENR#[1106]t = 0;
                           4464 ; 1529 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4465 	; #ENR#[1107]if (randmax(100)<15) t = 1;
                           4466 ;--- end asm ---
   19C4 C6 64         [ 2] 4467 	ldb	#100	;,
   19C6 BD 5F 2A      [ 8] 4468 	jsr	_RandMax
   19C9 6F E8 12      [ 7] 4469 	clr	18,s	; t
   19CC C1 0E         [ 2] 4470 	cmpb	#14	;cmpqi:	; D.3734,
   19CE 10 23 02 A3   [ 6] 4471 	lbls	L314	;
   19D2                    4472 L270:
                           4473 ;----- asm -----
                           4474 ; 1531 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4475 	; #ENR#[1108]c = 0;
                           4476 ; 1536 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4477 	; #ENR#[1112]if (randmax(100)>30)
                           4478 ;--- end asm ---
   19D2 C6 64         [ 2] 4479 	ldb	#100	;,
   19D4 BD 5F 2A      [ 8] 4480 	jsr	_RandMax
   19D7 C1 1E         [ 2] 4481 	cmpb	#30	;cmpqi:	; D.3735,
   19D9 10 22 01 6C   [ 6] 4482 	lbhi	L315	;
                           4483 ;----- asm -----
                           4484 ; 1645 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4485 	; #ENR#[1187]if (randmax(100)<50)
                           4486 ;--- end asm ---
   19DD C6 64         [ 2] 4487 	ldb	#100	;,
   19DF BD 5F 2A      [ 8] 4488 	jsr	_RandMax
   19E2 C1 31         [ 2] 4489 	cmpb	#49	;cmpqi:	; D.3763,
   19E4 10 23 03 84   [ 6] 4490 	lbls	L287	;
   19E8 6F E8 13      [ 7] 4491 	clr	19,s	; c
   19EB                    4492 L288:
                           4493 ;----- asm -----
                           4494 ; 1762 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4495 	; #ENR#[1268]itemfound:
                           4496 ;--- end asm ---
   19EB                    4497 L311:
                           4498 ;----- asm -----
                           4499 ; 1764 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4500 	; #ENR#[1269]clearmessage();
                           4501 ;--- end asm ---
   19EB 7F C9 87      [ 7] 4502 	clr	_msgLine	; msgLine
                           4503 ;----- asm -----
                           4504 ; 1769 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4505 	; #ENR#[1273]tno = randmax(10);
                           4506 ;--- end asm ---
   19EE C6 0A         [ 2] 4507 	ldb	#10	;,
   19F0 BD 5F 2A      [ 8] 4508 	jsr	_RandMax
   19F3 E7 E8 20      [ 5] 4509 	stb	32,s	;, tno.484
                           4510 ;----- asm -----
                           4511 ; 1773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4512 	; #ENR#[1276]ilv = (unsigned long int) randmax((l+1)>>2) + (unsigned long int) randmax((l+1)>>2) + 1;
                           4513 ;--- end asm ---
   19F6 F6 C9 80      [ 5] 4514 	ldb	_l	; tmp116, l
   19F9 5C            [ 2] 4515 	incb	; tmp116
   19FA 54            [ 2] 4516 	lsrb	; tmp116
   19FB 54            [ 2] 4517 	lsrb	; tmp116
   19FC BD 5F 2A      [ 8] 4518 	jsr	_RandMax
   19FF E7 E8 10      [ 5] 4519 	stb	16,s	;, D.3783
   1A02 F6 C9 80      [ 5] 4520 	ldb	_l	; tmp118, l
   1A05 5C            [ 2] 4521 	incb	; tmp118
   1A06 54            [ 2] 4522 	lsrb	; tmp118
   1A07 54            [ 2] 4523 	lsrb	; tmp118
   1A08 BD 5F 2A      [ 8] 4524 	jsr	_RandMax
   1A0B E7 62         [ 5] 4525 	stb	2,s	;, D.3785
   1A0D E6 E8 10      [ 5] 4526 	ldb	16,s	;, D.3783
   1A10 4F            [ 2] 4527 	clra		;zero_extendqihi: R:b -> R:d	;,
   1A11 1F 01         [ 6] 4528 	tfr	d,x	;, D.3783
   1A13 E6 62         [ 5] 4529 	ldb	2,s	;, D.3785
   1A15 4F            [ 2] 4530 	clra		;zero_extendqihi: R:b -> R:d	;,
   1A16 1F 03         [ 6] 4531 	tfr	d,u	;, D.3785
   1A18 1E 01         [ 8] 4532 	exg	d,x	;, D.3783
   1A1A 33 CB         [ 8] 4533 	leau	d,u	; tmp122,, tmp122
   1A1C 31 41         [ 5] 4534 	leay	1,u	; ilv,, tmp122
                           4535 ;----- asm -----
                           4536 ; 1776 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4537 	; #ENR#[1278]_fsl_s(, items[tno], ilv);
                           4538 ;--- end asm ---
   1A1E 34 20         [ 6] 4539 	pshs	y	; ilv
   1A20 E6 E8 22      [ 5] 4540 	ldb	34,s	;, tno.484
   1A23 4F            [ 2] 4541 	clra		;zero_extendqihi: R:b -> R:d	;,
   1A24 ED 62         [ 6] 4542 	std	2,s	;,
   1A26 58            [ 2] 4543 	aslb	;
   1A27 49            [ 2] 4544 	rola	;
   1A28 1F 01         [ 6] 4545 	tfr	d,x	;, tmp125
   1A2A AE 89 01 F9   [ 9] 4546 	ldx	_items,x	;, items
   1A2E AF E3         [ 8] 4547 	stx	,--s	;,
   1A30 8E 19 49      [ 3] 4548 	ldx	#LC148	;,
   1A33 BD 6E DC      [ 8] 4549 	jsr	__fsl_s
                           4550 ;----- asm -----
                           4551 ; 1778 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4552 	; #ENR#[1279]printmessage(stringbuffer40);
                           4553 ;--- end asm ---
   1A36 8E C8 BF      [ 3] 4554 	ldx	#_stringBuffer40	;,
   1A39 BD 5B 7A      [ 8] 4555 	jsr	_printMessage
                           4556 ;----- asm -----
                           4557 ; 1784 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4558 	; #ENR#[1284]printmessage();
                           4559 ;--- end asm ---
   1A3C 8E 19 58      [ 3] 4560 	ldx	#LC149	;,
   1A3F BD 5B 7A      [ 8] 4561 	jsr	_printMessage
                           4562 ;----- asm -----
                           4563 ; 1786 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4564 	; #ENR#[1285]if (testforbutton(1) != 4)
                           4565 ; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4566 	; #ENR#[129]signed int p = 0;
                           4567 ; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4568 	; #ENR#[130]signed int t = 0;
                           4569 ; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4570 	; #ENR#[131]localtimer = action_time;
                           4571 ;--- end asm ---
   1A42 C6 FA         [ 2] 4572 	ldb	#-6	;,
   1A44 F7 C8 A8      [ 5] 4573 	stb	_localTimer	;, localTimer
                           4574 ;----- asm -----
                           4575 ; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4576 	; #ENR#[132]do
                           4577 ;--- end asm ---
   1A47 6F E8 1E      [ 7] 4578 	clr	30,s	; p
   1A4A 6F E8 1C      [ 7] 4579 	clr	28,s	; d
   1A4D 32 64         [ 5] 4580 	leas	4,s	;,,
   1A4F 16 00 7B      [ 5] 4581 	lbra	L302	;
   1A52                    4582 L316:
                           4583 ;----- asm -----
                           4584 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4585 	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
                           4586 ;--- end asm ---
   1A52 F6 C8 11      [ 5] 4587 	ldb	_Vec_Buttons	;, Vec_Buttons
   1A55 E7 E8 1B      [ 5] 4588 	stb	27,s	;, D.5085
   1A58 C5 08         [ 2] 4589 	bitb	#8	;,
   1A5A 27 0A         [ 3] 4590 	beq	L295	;
   1A5C C6 01         [ 2] 4591 	ldb	#1	;,
   1A5E E7 E8 1A      [ 5] 4592 	stb	26,s	;, p
   1A61 C6 04         [ 2] 4593 	ldb	#4	;,
   1A63 E7 E8 18      [ 5] 4594 	stb	24,s	;, d
   1A66                    4595 L295:
                           4596 ;----- asm -----
                           4597 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4598 	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
                           4599 ;--- end asm ---
   1A66 C6 04         [ 2] 4600 	ldb	#4	; tmp129,
   1A68 E4 E8 1B      [ 5] 4601 	andb	27,s	; tmp129, D.5085
   1A6B 27 0A         [ 3] 4602 	beq	L296	;
   1A6D C6 01         [ 2] 4603 	ldb	#1	;,
   1A6F E7 E8 1A      [ 5] 4604 	stb	26,s	;, p
   1A72 C6 03         [ 2] 4605 	ldb	#3	;,
   1A74 E7 E8 18      [ 5] 4606 	stb	24,s	;, d
   1A77                    4607 L296:
                           4608 ;----- asm -----
                           4609 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4610 	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
                           4611 ;--- end asm ---
   1A77 C6 02         [ 2] 4612 	ldb	#2	; tmp130,
   1A79 E4 E8 1B      [ 5] 4613 	andb	27,s	; tmp130, D.5085
   1A7C 27 0A         [ 3] 4614 	beq	L297	;
   1A7E C6 01         [ 2] 4615 	ldb	#1	;,
   1A80 E7 E8 1A      [ 5] 4616 	stb	26,s	;, p
   1A83 C6 02         [ 2] 4617 	ldb	#2	;,
   1A85 E7 E8 18      [ 5] 4618 	stb	24,s	;, d
   1A88                    4619 L297:
                           4620 ;----- asm -----
                           4621 ; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4622 	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
                           4623 ;--- end asm ---
   1A88 C6 01         [ 2] 4624 	ldb	#1	; tmp131,
   1A8A E4 E8 1B      [ 5] 4625 	andb	27,s	; tmp131, D.5085
   1A8D 27 08         [ 3] 4626 	beq	L298	;
   1A8F C6 01         [ 2] 4627 	ldb	#1	;,
   1A91 E7 E8 1A      [ 5] 4628 	stb	26,s	;, p
   1A94 E7 E8 18      [ 5] 4629 	stb	24,s	;, d
   1A97                    4630 L298:
                           4631 ;----- asm -----
                           4632 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4633 	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           4634 ;--- end asm ---
   1A97 F6 C8 1B      [ 5] 4635 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   1A9A E7 E8 19      [ 5] 4636 	stb	25,s	;, Vec_Joy_1_X.4
   1A9D 27 0A         [ 3] 4637 	beq	L299	;
   1A9F C6 01         [ 2] 4638 	ldb	#1	;,
   1AA1 E7 E8 1A      [ 5] 4639 	stb	26,s	;, p
   1AA4 C6 05         [ 2] 4640 	ldb	#5	;,
   1AA6 E7 E8 18      [ 5] 4641 	stb	24,s	;, d
   1AA9                    4642 L299:
                           4643 ;----- asm -----
                           4644 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4645 	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           4646 ;--- end asm ---
   1AA9 F6 C8 1C      [ 5] 4647 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   1AAC E7 62         [ 5] 4648 	stb	2,s	;, Vec_Joy_1_Y.5
   1AAE 27 0A         [ 3] 4649 	beq	L300	;
   1AB0 C6 01         [ 2] 4650 	ldb	#1	;,
   1AB2 E7 E8 1A      [ 5] 4651 	stb	26,s	;, p
   1AB5 C6 05         [ 2] 4652 	ldb	#5	;,
   1AB7 E7 E8 18      [ 5] 4653 	stb	24,s	;, d
   1ABA                    4654 L300:
                           4655 ;----- asm -----
                           4656 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4657 	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           4658 ;--- end asm ---
   1ABA 6D E8 1A      [ 7] 4659 	tst	26,s	; p
   1ABD 27 0E         [ 3] 4660 	beq	L301	;
   1ABF 6D E8 19      [ 7] 4661 	tst	25,s	; Vec_Joy_1_X.4
   1AC2 26 09         [ 3] 4662 	bne	L301	;
   1AC4 6D 62         [ 7] 4663 	tst	2,s	; Vec_Joy_1_Y.5
   1AC6 26 05         [ 3] 4664 	bne	L301	;
   1AC8 6D E8 1B      [ 7] 4665 	tst	27,s	; D.5085
   1ACB 27 0E         [ 3] 4666 	beq	L294	;
   1ACD                    4667 L301:
                           4668 ;----- asm -----
                           4669 ; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4670 	; #ENR#[151]while (1);
                           4671 ;--- end asm ---
   1ACD                    4672 L302:
                           4673 ;----- asm -----
                           4674 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4675 	; #ENR#[134]displayround();
                           4676 ;--- end asm ---
   1ACD BD 3D AC      [ 8] 4677 	jsr	_displayRound
                           4678 ;----- asm -----
                           4679 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4680 	; #ENR#[135]if (d!=0) localtimer--;
                           4681 ;--- end asm ---
   1AD0 7A C8 A8      [ 7] 4682 	dec	_localTimer	; localTimer
   1AD3 F6 C8 A8      [ 5] 4683 	ldb	_localTimer	; localTimer.3, localTimer
                           4684 ;----- asm -----
                           4685 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4686 	; #ENR#[137]if (localtimer == 0) break;
                           4687 ;--- end asm ---
   1AD6 5D            [ 2] 4688 	tstb	; localTimer.3
   1AD7 10 26 FF 77   [ 6] 4689 	lbne	L316	;
   1ADB                    4690 L294:
                           4691 ;----- asm -----
                           4692 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4693 	; #ENR#[153]if (t == 0) return d;
                           4694 ;--- end asm ---
   1ADB 6D E8 18      [ 7] 4695 	tst	24,s	; d
   1ADE 10 27 02 4D   [ 6] 4696 	lbeq	L303	;
                           4697 ;----- asm -----
                           4698 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4699 	; #ENR#[154]return t;
                           4700 ;--- end asm ---
   1AE2 E6 E8 18      [ 5] 4701 	ldb	24,s	;, d
   1AE5 C1 04         [ 2] 4702 	cmpb	#4	;cmpqi:	;,
   1AE7 10 26 02 44   [ 6] 4703 	lbne	L303	;
                           4704 ;----- asm -----
                           4705 ; 1806 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4706 	; #ENR#[1299]if ((t) && (tno!=0))
                           4707 ;--- end asm ---
   1AEB 6D E8 12      [ 7] 4708 	tst	18,s	; t
   1AEE 27 07         [ 3] 4709 	beq	L306	;
   1AF0 6D E8 20      [ 7] 4710 	tst	32,s	; tno.484
   1AF3 10 26 03 DE   [ 6] 4711 	lbne	L317	;
   1AF7                    4712 L306:
                           4713 ;----- asm -----
                           4714 ; 1844 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4715 	; #ENR#[1324]printmessage();
                           4716 ;--- end asm ---
   1AF7 8E 19 9E      [ 3] 4717 	ldx	#LC153	;,
   1AFA BD 5B 7A      [ 8] 4718 	jsr	_printMessage
                           4719 ;----- asm -----
                           4720 ; 1846 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4721 	; #ENR#[1325]inventory[tno]=inventory[tno]+1;
                           4722 ;--- end asm ---
   1AFD E6 E8 20      [ 5] 4723 	ldb	32,s	;, tno.484
   1B00 4F            [ 2] 4724 	clra		;zero_extendqihi: R:b -> R:d	;,
   1B01 ED E4         [ 5] 4725 	std	,s	;,
   1B03 58            [ 2] 4726 	aslb	;
   1B04 49            [ 2] 4727 	rola	;
   1B05 CE C9 4B      [ 3] 4728 	ldu	#_inventory	;,
   1B08 30 CB         [ 8] 4729 	leax	d,u	; tmp140, tmp139,
   1B0A EC 84         [ 5] 4730 	ldd	,x	;, inventory
   1B0C C3 00 01      [ 4] 4731 	addd	#1; addhi3,3	;,
   1B0F ED 84         [ 5] 4732 	std	,x	;, inventory
                           4733 ;----- asm -----
                           4734 ; 1848 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4735 	; #ENR#[1326]if (tno<scroll_of_rescue)
                           4736 ;--- end asm ---
   1B11 E6 E8 20      [ 5] 4737 	ldb	32,s	;, tno.484
   1B14 C1 06         [ 2] 4738 	cmpb	#6	;cmpqi:	;,
   1B16 22 03         [ 3] 4739 	bhi	L308	;
   1B18 10 AF 84      [ 6] 4740 	sty	,x	; ilv, inventory
   1B1B                    4741 L308:
                           4742 ;----- asm -----
                           4743 ; 1851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4744 	; #ENR#[1328]pause(small_pause);
                           4745 ;--- end asm ---
   1B1B C6 4B         [ 2] 4746 	ldb	#75	;,
   1B1D BD 3E 21      [ 8] 4747 	jsr	_pause
                           4748 ;----- asm -----
                           4749 ; 1855 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4750 	; #ENR#[1331]if ((c==1) && (randmax(100)>50))
                           4751 ;--- end asm ---
   1B20 E6 E8 13      [ 5] 4752 	ldb	19,s	;, c
   1B23 C1 01         [ 2] 4753 	cmpb	#1	;cmpqi:	;,
   1B25 10 26 02 3E   [ 6] 4754 	lbne	L309	;
   1B29 C6 64         [ 2] 4755 	ldb	#100	;,
   1B2B BD 5F 2A      [ 8] 4756 	jsr	_RandMax
   1B2E C1 32         [ 2] 4757 	cmpb	#50	;cmpqi:	; D.3796,
   1B30 10 23 02 33   [ 6] 4758 	lbls	L309	;
                           4759 ;----- asm -----
                           4760 ; 1858 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4761 	; #ENR#[1333]goto itemfound;
                           4762 ;--- end asm ---
   1B34 16 FE B4      [ 5] 4763 	lbra	L311	;
   1B37                    4764 L312:
                           4765 ;----- asm -----
                           4766 ; 1518 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4767 	; #ENR#[1099]fix = randmax(50) > 40;
                           4768 ;--- end asm ---
   1B37 C6 32         [ 2] 4769 	ldb	#50	;,
   1B39 BD 5F 2A      [ 8] 4770 	jsr	_RandMax
   1B3C C1 28         [ 2] 4771 	cmpb	#40	;cmpqi:	; D.3732,
   1B3E 10 23 FE 77   [ 6] 4772 	lbls	L266	;
   1B42 C6 01         [ 2] 4773 	ldb	#1	;,
   1B44 E7 6B         [ 5] 4774 	stb	11,s	;, fix
   1B46 16 FE 70      [ 5] 4775 	lbra	L266	;
   1B49                    4776 L315:
                           4777 ;----- asm -----
                           4778 ; 1546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4779 	; #ENR#[1121]tno = randmax(5);
                           4780 ;--- end asm ---
   1B49 C6 05         [ 2] 4781 	ldb	#5	;,
   1B4B BD 5F 2A      [ 8] 4782 	jsr	_RandMax
   1B4E E7 E8 11      [ 5] 4783 	stb	17,s	;, tno
                           4784 ;----- asm -----
                           4785 ; 1548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4786 	; #ENR#[1122]printtreasure=(signed int)tno;
                           4787 ;--- end asm ---
   1B51 F7 C8 F5      [ 5] 4788 	stb	_printTreasure	;, printTreasure
                           4789 ;----- asm -----
                           4790 ; 1550 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4791 	; #ENR#[1123]_fs(, treasure[tno]);
                           4792 ;--- end asm ---
   1B54 4F            [ 2] 4793 	clra		;zero_extendqihi: R:b -> R:d	;,
   1B55 ED E4         [ 5] 4794 	std	,s	;,
   1B57 58            [ 2] 4795 	aslb	;
   1B58 49            [ 2] 4796 	rola	;
   1B59 1F 01         [ 6] 4797 	tfr	d,x	;, tmp76
   1B5B AE 89 04 5B   [ 9] 4798 	ldx	_treasure,x	;, treasure
   1B5F AF E3         [ 8] 4799 	stx	,--s	;,
   1B61 8E 18 51      [ 3] 4800 	ldx	#LC135	;,
   1B64 BD 5C 59      [ 8] 4801 	jsr	__fs
                           4802 ;----- asm -----
                           4803 ; 1552 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4804 	; #ENR#[1124]printmessage(stringbuffer40);
                           4805 ;--- end asm ---
   1B67 8E C8 BF      [ 3] 4806 	ldx	#_stringBuffer40	;,
   1B6A BD 5B 7A      [ 8] 4807 	jsr	_printMessage
                           4808 ;----- asm -----
                           4809 ; 1558 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4810 	; #ENR#[1129]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
                           4811 ;--- end asm ---
   1B6D 32 62         [ 5] 4812 	leas	2,s	;,,
   1B6F 7D C9 6D      [ 7] 4813 	tst	_sf+1	; sf
   1B72 27 07         [ 3] 4814 	beq	L272	;
   1B74 6D E8 12      [ 7] 4815 	tst	18,s	; t
   1B77 10 26 03 47   [ 6] 4816 	lbne	L318	;
   1B7B                    4817 L272:
                           4818 ;----- asm -----
                           4819 ; 1561 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4820 	; #ENR#[1131]if (testforbutton(1) != 4)
                           4821 ; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4822 	; #ENR#[129]signed int p = 0;
                           4823 ; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4824 	; #ENR#[130]signed int t = 0;
                           4825 ; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4826 	; #ENR#[131]localtimer = action_time;
                           4827 ;--- end asm ---
   1B7B C6 FA         [ 2] 4828 	ldb	#-6	;,
   1B7D F7 C8 A8      [ 5] 4829 	stb	_localTimer	;, localTimer
                           4830 ;----- asm -----
                           4831 ; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4832 	; #ENR#[132]do
                           4833 ;--- end asm ---
   1B80 6F E8 16      [ 7] 4834 	clr	22,s	; p
   1B83 6F E8 14      [ 7] 4835 	clr	20,s	; d
   1B86 16 00 7B      [ 5] 4836 	lbra	L281	;
   1B89                    4837 L319:
                           4838 ;----- asm -----
                           4839 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4840 	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
                           4841 ;--- end asm ---
   1B89 F6 C8 11      [ 5] 4842 	ldb	_Vec_Buttons	;, Vec_Buttons
   1B8C E7 E8 17      [ 5] 4843 	stb	23,s	;, D.5068
   1B8F C5 08         [ 2] 4844 	bitb	#8	;,
   1B91 27 0A         [ 3] 4845 	beq	L274	;
   1B93 C6 01         [ 2] 4846 	ldb	#1	;,
   1B95 E7 E8 16      [ 5] 4847 	stb	22,s	;, p
   1B98 C6 04         [ 2] 4848 	ldb	#4	;,
   1B9A E7 E8 14      [ 5] 4849 	stb	20,s	;, d
   1B9D                    4850 L274:
                           4851 ;----- asm -----
                           4852 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4853 	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
                           4854 ;--- end asm ---
   1B9D C6 04         [ 2] 4855 	ldb	#4	; tmp81,
   1B9F E4 E8 17      [ 5] 4856 	andb	23,s	; tmp81, D.5068
   1BA2 27 0A         [ 3] 4857 	beq	L275	;
   1BA4 C6 01         [ 2] 4858 	ldb	#1	;,
   1BA6 E7 E8 16      [ 5] 4859 	stb	22,s	;, p
   1BA9 C6 03         [ 2] 4860 	ldb	#3	;,
   1BAB E7 E8 14      [ 5] 4861 	stb	20,s	;, d
   1BAE                    4862 L275:
                           4863 ;----- asm -----
                           4864 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4865 	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
                           4866 ;--- end asm ---
   1BAE C6 02         [ 2] 4867 	ldb	#2	; tmp82,
   1BB0 E4 E8 17      [ 5] 4868 	andb	23,s	; tmp82, D.5068
   1BB3 27 0A         [ 3] 4869 	beq	L276	;
   1BB5 C6 01         [ 2] 4870 	ldb	#1	;,
   1BB7 E7 E8 16      [ 5] 4871 	stb	22,s	;, p
   1BBA C6 02         [ 2] 4872 	ldb	#2	;,
   1BBC E7 E8 14      [ 5] 4873 	stb	20,s	;, d
   1BBF                    4874 L276:
                           4875 ;----- asm -----
                           4876 ; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4877 	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
                           4878 ;--- end asm ---
   1BBF C6 01         [ 2] 4879 	ldb	#1	; tmp83,
   1BC1 E4 E8 17      [ 5] 4880 	andb	23,s	; tmp83, D.5068
   1BC4 27 08         [ 3] 4881 	beq	L277	;
   1BC6 C6 01         [ 2] 4882 	ldb	#1	;,
   1BC8 E7 E8 16      [ 5] 4883 	stb	22,s	;, p
   1BCB E7 E8 14      [ 5] 4884 	stb	20,s	;, d
   1BCE                    4885 L277:
                           4886 ;----- asm -----
                           4887 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4888 	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           4889 ;--- end asm ---
   1BCE F6 C8 1B      [ 5] 4890 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   1BD1 E7 E8 15      [ 5] 4891 	stb	21,s	;, Vec_Joy_1_X.4
   1BD4 27 0A         [ 3] 4892 	beq	L278	;
   1BD6 C6 01         [ 2] 4893 	ldb	#1	;,
   1BD8 E7 E8 16      [ 5] 4894 	stb	22,s	;, p
   1BDB C6 05         [ 2] 4895 	ldb	#5	;,
   1BDD E7 E8 14      [ 5] 4896 	stb	20,s	;, d
   1BE0                    4897 L278:
                           4898 ;----- asm -----
                           4899 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4900 	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           4901 ;--- end asm ---
   1BE0 F6 C8 1C      [ 5] 4902 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   1BE3 E7 62         [ 5] 4903 	stb	2,s	;, Vec_Joy_1_Y.5
   1BE5 27 0A         [ 3] 4904 	beq	L279	;
   1BE7 C6 01         [ 2] 4905 	ldb	#1	;,
   1BE9 E7 E8 16      [ 5] 4906 	stb	22,s	;, p
   1BEC C6 05         [ 2] 4907 	ldb	#5	;,
   1BEE E7 E8 14      [ 5] 4908 	stb	20,s	;, d
   1BF1                    4909 L279:
                           4910 ;----- asm -----
                           4911 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4912 	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           4913 ;--- end asm ---
   1BF1 6D E8 16      [ 7] 4914 	tst	22,s	; p
   1BF4 27 0E         [ 3] 4915 	beq	L280	;
   1BF6 6D E8 15      [ 7] 4916 	tst	21,s	; Vec_Joy_1_X.4
   1BF9 26 09         [ 3] 4917 	bne	L280	;
   1BFB 6D 62         [ 7] 4918 	tst	2,s	; Vec_Joy_1_Y.5
   1BFD 26 05         [ 3] 4919 	bne	L280	;
   1BFF 6D E8 17      [ 7] 4920 	tst	23,s	; D.5068
   1C02 27 0E         [ 3] 4921 	beq	L273	;
   1C04                    4922 L280:
                           4923 ;----- asm -----
                           4924 ; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4925 	; #ENR#[151]while (1);
                           4926 ;--- end asm ---
   1C04                    4927 L281:
                           4928 ;----- asm -----
                           4929 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4930 	; #ENR#[134]displayround();
                           4931 ;--- end asm ---
   1C04 BD 3D AC      [ 8] 4932 	jsr	_displayRound
                           4933 ;----- asm -----
                           4934 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4935 	; #ENR#[135]if (d!=0) localtimer--;
                           4936 ;--- end asm ---
   1C07 7A C8 A8      [ 7] 4937 	dec	_localTimer	; localTimer
   1C0A F6 C8 A8      [ 5] 4938 	ldb	_localTimer	; localTimer.3, localTimer
                           4939 ;----- asm -----
                           4940 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4941 	; #ENR#[137]if (localtimer == 0) break;
                           4942 ;--- end asm ---
   1C0D 5D            [ 2] 4943 	tstb	; localTimer.3
   1C0E 10 26 FF 77   [ 6] 4944 	lbne	L319	;
   1C12                    4945 L273:
                           4946 ;----- asm -----
                           4947 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4948 	; #ENR#[153]if (t == 0) return d;
                           4949 ;--- end asm ---
   1C12 6D E8 14      [ 7] 4950 	tst	20,s	; d
   1C15 10 27 01 34   [ 6] 4951 	lbeq	L282	;
                           4952 ;----- asm -----
                           4953 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4954 	; #ENR#[154]return t;
                           4955 ;--- end asm ---
   1C19 E6 E8 14      [ 5] 4956 	ldb	20,s	;, d
   1C1C C1 04         [ 2] 4957 	cmpb	#4	;cmpqi:	;,
   1C1E 10 26 01 2B   [ 6] 4958 	lbne	L282	;
                           4959 ;----- asm -----
                           4960 ; 1576 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4961 	; #ENR#[1141]clearmessage();
                           4962 ;--- end asm ---
   1C22 7F C9 87      [ 7] 4963 	clr	_msgLine	; msgLine
                           4964 ;----- asm -----
                           4965 ; 1578 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4966 	; #ENR#[1142]printmessage();
                           4967 ;--- end asm ---
   1C25 8E 18 8E      [ 3] 4968 	ldx	#LC138	;,
   1C28 BD 5B 7A      [ 8] 4969 	jsr	_printMessage
                           4970 ;----- asm -----
                           4971 ; 1580 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4972 	; #ENR#[1143]if (t)
                           4973 ;--- end asm ---
   1C2B 6D E8 12      [ 7] 4974 	tst	18,s	; t
   1C2E 10 27 00 4B   [ 6] 4975 	lbeq	L284	;
                           4976 ;----- asm -----
                           4977 ; 1587 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4978 	; #ENR#[1149]utmp = (unsigned int) randmax(l*3)+1;
                           4979 ;--- end asm ---
   1C32 F6 C9 80      [ 5] 4980 	ldb	_l	; tmp86, l
   1C35 58            [ 2] 4981 	aslb	; tmp86
   1C36 FB C9 80      [ 5] 4982 	addb	_l	; tmp86, l
   1C39 BD 5F 2A      [ 8] 4983 	jsr	_RandMax
   1C3C 5C            [ 2] 4984 	incb	; D.3745
   1C3D F7 C8 FD      [ 5] 4985 	stb	_utmp	; D.3745, utmp
                           4986 ;----- asm -----
                           4987 ; 1589 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4988 	; #ENR#[1150]printmessage();
                           4989 ;--- end asm ---
   1C40 8E 18 97      [ 3] 4990 	ldx	#LC139	;,
   1C43 BD 5B 7A      [ 8] 4991 	jsr	_printMessage
                           4992 ;----- asm -----
                           4993 ; 1591 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           4994 	; #ENR#[1151]_fi_s(, (unsigned int) utmp);
                           4995 ;--- end asm ---
   1C46 F6 C8 FD      [ 5] 4996 	ldb	_utmp	;, utmp
   1C49 8E 18 A5      [ 3] 4997 	ldx	#LC140	;,
   1C4C BD 5C C6      [ 8] 4998 	jsr	__fi_s
                           4999 ;----- asm -----
                           5000 ; 1593 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5001 	; #ENR#[1152]printmessage(stringbuffer40);
                           5002 ;--- end asm ---
   1C4F 8E C8 BF      [ 3] 5003 	ldx	#_stringBuffer40	;,
   1C52 BD 5B 7A      [ 8] 5004 	jsr	_printMessage
                           5005 ;----- asm -----
                           5006 ; 1595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5007 	; #ENR#[1153]ch = ch - ((unsigned int) utmp);
                           5008 ;--- end asm ---
   1C55 F6 C8 FD      [ 5] 5009 	ldb	_utmp	;, utmp
   1C58 4F            [ 2] 5010 	clra		;zero_extendqihi: R:b -> R:d	;,
   1C59 1F 01         [ 6] 5011 	tfr	d,x	;, utmp
   1C5B FC C9 63      [ 6] 5012 	ldd	_ch	; ch, ch
   1C5E 34 10         [ 6] 5013 	pshs	x	;subhi: R:d -= R:x	; utmp, ch.95
   1C60 A3 E1         [ 9] 5014 	subd	,s++	; ch.95
   1C62 FD C9 63      [ 6] 5015 	std	_ch	; ch.95, ch
                           5016 ;----- asm -----
                           5017 ; 1597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5018 	; #ENR#[1154]if (ch<1)
                           5019 ;--- end asm ---
   1C65 10 83 00 00   [ 5] 5020 	cmpd	#0	; ch.95
   1C69 2E 12         [ 3] 5021 	bgt	L284	;
                           5022 ;----- asm -----
                           5023 ; 1600 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5024 	; #ENR#[1156]pause(small_pause);
                           5025 ;--- end asm ---
   1C6B C6 4B         [ 2] 5026 	ldb	#75	;,
   1C6D BD 3E 21      [ 8] 5027 	jsr	_pause
                           5028 ;----- asm -----
                           5029 ; 1602 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5030 	; #ENR#[1157]return return_player_dead;
                           5031 ;--- end asm ---
   1C70 C6 02         [ 2] 5032 	ldb	#2	; D.3733,
   1C72 16 FD 4A      [ 5] 5033 	lbra	L269	;
   1C75                    5034 L314:
   1C75 C6 01         [ 2] 5035 	ldb	#1	;,
   1C77 E7 E8 12      [ 5] 5036 	stb	18,s	;, t
   1C7A 16 FD 55      [ 5] 5037 	lbra	L270	;
   1C7D                    5038 L284:
                           5039 ;----- asm -----
                           5040 ; 1611 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5041 	; #ENR#[1165]lltmp = (signed long long int) ((unsigned long long int) randmax(200));
                           5042 ;--- end asm ---
   1C7D C6 C8         [ 2] 5043 	ldb	#-56	;,
   1C7F BD 5F 2A      [ 8] 5044 	jsr	_RandMax
   1C82 4F            [ 2] 5045 	clra		;zero_extendqihi: R:b -> R:d	; D.3751,
   1C83 1F 02         [ 6] 5046 	tfr	d,y	;, D.3751
   1C85 CC 00 00      [ 3] 5047 	ldd	#0	;,
   1C88 FD C9 04      [ 6] 5048 	std	_lltmp	;, lltmp
   1C8B 10 BF C9 06   [ 7] 5049 	sty	_lltmp+2	; D.3751, lltmp
                           5050 ;----- asm -----
                           5051 ; 1613 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5052 	; #ENR#[1166]lltmp = lltmp*l;
                           5053 ; 1615 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5054 	; #ENR#[1167]lltmp = lltmp*tno;
                           5055 ; 1617 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5056 	; #ENR#[1168]lltmp++;
                           5057 ;--- end asm ---
   1C8F E6 E8 11      [ 5] 5058 	ldb	17,s	;, tno
   1C92 4F            [ 2] 5059 	clra		;zero_extendqihi: R:b -> R:d	;,
   1C93 1F 01         [ 6] 5060 	tfr	d,x	;, tno
   1C95 F6 C9 80      [ 5] 5061 	ldb	_l	;, l
   1C98 4F            [ 2] 5062 	clra		;zero_extendqihi: R:b -> R:d	;,
   1C99 1F 03         [ 6] 5063 	tfr	d,u	;, l
   1C9B 32 78         [ 5] 5064 	leas	-8,s	;,,
   1C9D CC 00 00      [ 3] 5065 	ldd	#0	;,
   1CA0 ED 64         [ 6] 5066 	std	4,s	;,
   1CA2 EF 66         [ 6] 5067 	stu	6,s	; l,
   1CA4 ED E4         [ 5] 5068 	std	,s	;,
   1CA6 AF 62         [ 6] 5069 	stx	2,s	; tno,
   1CA8 30 E8 2D      [ 5] 5070 	leax	45,s	;,,
   1CAB BD 79 4C      [ 8] 5071 	jsr	___mulsi3
   1CAE CC 00 00      [ 3] 5072 	ldd	#0	;,
   1CB1 ED 64         [ 6] 5073 	std	4,s	;,
   1CB3 10 AF 66      [ 7] 5074 	sty	6,s	; D.3751,
   1CB6 AE E8 2D      [ 6] 5075 	ldx	45,s	;,
   1CB9 AF E4         [ 5] 5076 	stx	,s	;,
   1CBB EE E8 2F      [ 6] 5077 	ldu	47,s	;,
   1CBE EF 62         [ 6] 5078 	stu	2,s	;,
   1CC0 30 E8 29      [ 5] 5079 	leax	41,s	;,,
   1CC3 BD 79 4C      [ 8] 5080 	jsr	___mulsi3
   1CC6 32 64         [ 5] 5081 	leas	4,s	;,,
   1CC8 EC E8 25      [ 6] 5082 	ldd	37,s	;,
   1CCB ED 6B         [ 6] 5083 	std	11,s	;,
   1CCD AE E8 27      [ 6] 5084 	ldx	39,s	;,
   1CD0 AF 6D         [ 6] 5085 	stx	13,s	;,
   1CD2 EC 6D         [ 6] 5086 	ldd	13,s	;,
   1CD4 C3 00 01      [ 4] 5087 	addd	#1	;,
   1CD7 ED E8 12      [ 6] 5088 	std	18,s	;, lltmp.100
   1CDA EC 6B         [ 6] 5089 	ldd	11,s	;,
   1CDC C9 00         [ 2] 5090 	adcb	#0	;
   1CDE 89 00         [ 2] 5091 	adca	#0	;
   1CE0 ED E8 10      [ 6] 5092 	std	16,s	;, lltmp.100
   1CE3 AE E8 10      [ 6] 5093 	ldx	16,s	;, lltmp.100
   1CE6 BF C9 04      [ 6] 5094 	stx	_lltmp	;, lltmp
   1CE9 EE E8 12      [ 6] 5095 	ldu	18,s	;, lltmp.100
   1CEC FF C9 06      [ 6] 5096 	stu	_lltmp+2	;, lltmp
                           5097 ;----- asm -----
                           5098 ; 1619 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5099 	; #ENR#[1169]gd = gd + ull(lltmp);
                           5100 ;--- end asm ---
   1CEF FC C9 6A      [ 6] 5101 	ldd	_gd+2	;, gd
   1CF2 E3 E8 12      [ 7] 5102 	addd	18,s	;, lltmp.100
   1CF5 FD C9 6A      [ 6] 5103 	std	_gd+2	;, gd
   1CF8 FC C9 68      [ 6] 5104 	ldd	_gd	;, gd
   1CFB E9 E8 11      [ 5] 5105 	adcb	17,s	; lltmp.100
   1CFE A9 E8 10      [ 5] 5106 	adca	16,s	; lltmp.100
   1D01 FD C9 68      [ 6] 5107 	std	_gd	;, gd
                           5108 ;----- asm -----
                           5109 ; 1621 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5110 	; #ENR#[1170]_fll_s(, ((unsigned long long int) lltmp));
                           5111 ;--- end asm ---
   1D04 AF E4         [ 5] 5112 	stx	,s	;,
   1D06 EE E8 12      [ 6] 5113 	ldu	18,s	;, lltmp.100
   1D09 EF 62         [ 6] 5114 	stu	2,s	;,
   1D0B 8E 18 C0      [ 3] 5115 	ldx	#LC141	;,
   1D0E BD 67 BD      [ 8] 5116 	jsr	__fll_s
                           5117 ;----- asm -----
                           5118 ; 1623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5119 	; #ENR#[1171]printmessage(stringbuffer40);
                           5120 ;--- end asm ---
   1D11 8E C8 BF      [ 3] 5121 	ldx	#_stringBuffer40	;,
   1D14 BD 5B 7A      [ 8] 5122 	jsr	_printMessage
                           5123 ;----- asm -----
                           5124 ; 1625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5125 	; #ENR#[1172]if (randmax(50)<10)
                           5126 ;--- end asm ---
   1D17 C6 32         [ 2] 5127 	ldb	#50	;,
   1D19 BD 5F 2A      [ 8] 5128 	jsr	_RandMax
   1D1C 32 64         [ 5] 5129 	leas	4,s	;,,
   1D1E C1 09         [ 2] 5130 	cmpb	#9	;cmpqi:	; D.3762,
   1D20 10 22 00 8D   [ 6] 5131 	lbhi	L285	;
                           5132 ;----- asm -----
                           5133 ; 1628 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5134 	; #ENR#[1174]pause(small_pause);
                           5135 ;--- end asm ---
   1D24 C6 4B         [ 2] 5136 	ldb	#75	;,
   1D26 BD 3E 21      [ 8] 5137 	jsr	_pause
                           5138 ;----- asm -----
                           5139 ; 1630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5140 	; #ENR#[1175]goto itemfound;
                           5141 ;--- end asm ---
   1D29 6F E8 13      [ 7] 5142 	clr	19,s	; c
   1D2C 16 FC BC      [ 5] 5143 	lbra	L311	;
   1D2F                    5144 L303:
                           5145 ;----- asm -----
                           5146 ; 1790 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5147 	; #ENR#[1288]printmessage();
                           5148 ;--- end asm ---
   1D2F 8E 19 6B      [ 3] 5149 	ldx	#LC150	;,
   1D32 BD 5B 7A      [ 8] 5150 	jsr	_printMessage
                           5151 ;----- asm -----
                           5152 ; 1792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5153 	; #ENR#[1289]pause(small_pause);
                           5154 ;--- end asm ---
   1D35 C6 4B         [ 2] 5155 	ldb	#75	;,
   1D37 BD 3E 21      [ 8] 5156 	jsr	_pause
                           5157 ;----- asm -----
                           5158 ; 1794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5159 	; #ENR#[1290]if ((c==1) && (randmax(100)>50))
                           5160 ;--- end asm ---
   1D3A E6 E8 13      [ 5] 5161 	ldb	19,s	;, c
   1D3D C1 01         [ 2] 5162 	cmpb	#1	;cmpqi:	;,
   1D3F 26 21         [ 3] 5163 	bne	L305	;
   1D41 C6 64         [ 2] 5164 	ldb	#100	;,
   1D43 BD 5F 2A      [ 8] 5165 	jsr	_RandMax
   1D46 C1 32         [ 2] 5166 	cmpb	#50	;cmpqi:	; D.3790,
   1D48 23 18         [ 3] 5167 	bls	L305	;
                           5168 ;----- asm -----
                           5169 ; 1797 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5170 	; #ENR#[1292]goto itemfound;
                           5171 ;--- end asm ---
   1D4A 16 FC 9E      [ 5] 5172 	lbra	L311	;
   1D4D                    5173 L282:
                           5174 ;----- asm -----
                           5175 ; 1565 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5176 	; #ENR#[1134]clearmessage();
                           5177 ;--- end asm ---
   1D4D 7F C9 87      [ 7] 5178 	clr	_msgLine	; msgLine
                           5179 ;----- asm -----
                           5180 ; 1567 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5181 	; #ENR#[1135]printmessage();
                           5182 ;--- end asm ---
   1D50 8E 18 81      [ 3] 5183 	ldx	#LC137	;,
   1D53 BD 5B 7A      [ 8] 5184 	jsr	_printMessage
                           5185 ;----- asm -----
                           5186 ; 1569 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5187 	; #ENR#[1136]pause(small_pause);
                           5188 ;--- end asm ---
   1D56 C6 4B         [ 2] 5189 	ldb	#75	;,
   1D58 BD 3E 21      [ 8] 5190 	jsr	_pause
                           5191 ;----- asm -----
                           5192 ; 1571 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5193 	; #ENR#[1137]return return_special;
                           5194 ;--- end asm ---
   1D5B C6 05         [ 2] 5195 	ldb	#5	; D.3733,
   1D5D 32 E8 29      [ 5] 5196 	leas	41,s	;,,
   1D60 35 E0         [ 8] 5197 	puls	y,u,pc	;
   1D62                    5198 L305:
                           5199 ;----- asm -----
                           5200 ; 1800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5201 	; #ENR#[1294]return return_special;
                           5202 ;--- end asm ---
   1D62 C6 05         [ 2] 5203 	ldb	#5	; D.3733,
   1D64 16 FC 58      [ 5] 5204 	lbra	L269	;
   1D67                    5205 L309:
                           5206 ;----- asm -----
                           5207 ; 1861 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5208 	; #ENR#[1335]return return_monster_stack;
                           5209 ;--- end asm ---
   1D67 C6 06         [ 2] 5210 	ldb	#6	; D.3733,
   1D69 16 FC 53      [ 5] 5211 	lbra	L269	;
   1D6C                    5212 L287:
                           5213 ;----- asm -----
                           5214 ; 1652 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5215 	; #ENR#[1193]printtreasure=5;
                           5216 ;--- end asm ---
   1D6C C6 05         [ 2] 5217 	ldb	#5	;,
   1D6E F7 C8 F5      [ 5] 5218 	stb	_printTreasure	;, printTreasure
                           5219 ;----- asm -----
                           5220 ; 1654 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5221 	; #ENR#[1194]printmessage();
                           5222 ;--- end asm ---
   1D71 8E 18 D2      [ 3] 5223 	ldx	#LC142	;,
   1D74 BD 5B 7A      [ 8] 5224 	jsr	_printMessage
                           5225 ;----- asm -----
                           5226 ; 1656 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5227 	; #ENR#[1195]printmessage();
                           5228 ;--- end asm ---
   1D77 8E 18 F4      [ 3] 5229 	ldx	#LC143	;,
   1D7A BD 5B 7A      [ 8] 5230 	jsr	_printMessage
                           5231 ;----- asm -----
                           5232 ; 1663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5233 	; #ENR#[1201]if ((sf[detect_traps]>0) && (t) && (randmax(10) == 0))
                           5234 ;--- end asm ---
   1D7D 7D C9 6D      [ 7] 5235 	tst	_sf+1	; sf
   1D80 27 13         [ 3] 5236 	beq	L289	;
   1D82 6D E8 12      [ 7] 5237 	tst	18,s	; t
   1D85 27 0E         [ 3] 5238 	beq	L289	;
   1D87 C6 0A         [ 2] 5239 	ldb	#10	;,
   1D89 BD 5F 2A      [ 8] 5240 	jsr	_RandMax
   1D8C 5D            [ 2] 5241 	tstb	; D.3764
   1D8D 26 06         [ 3] 5242 	bne	L289	;
   1D8F 8E 18 6F      [ 3] 5243 	ldx	#LC136	;,
   1D92 BD 5B 7A      [ 8] 5244 	jsr	_printMessage
   1D95                    5245 L289:
                           5246 ;----- asm -----
                           5247 ; 1669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5248 	; #ENR#[1206]if (testforbutton(1) != 4)
                           5249 ;--- end asm ---
   1D95 C6 01         [ 2] 5250 	ldb	#1	;,
   1D97 BD 04 F8      [ 8] 5251 	jsr	_testForButton
   1D9A C1 04         [ 2] 5252 	cmpb	#4	;cmpqi:	; D.3765,
   1D9C 27 1D         [ 3] 5253 	beq	L290	;
                           5254 ;----- asm -----
                           5255 ; 1673 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5256 	; #ENR#[1209]clearmessage();
                           5257 ;--- end asm ---
   1D9E 7F C9 87      [ 7] 5258 	clr	_msgLine	; msgLine
                           5259 ;----- asm -----
                           5260 ; 1675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5261 	; #ENR#[1210]printmessage();
                           5262 ;--- end asm ---
   1DA1 8E 19 05      [ 3] 5263 	ldx	#LC144	;,
   1DA4 BD 5B 7A      [ 8] 5264 	jsr	_printMessage
                           5265 ;----- asm -----
                           5266 ; 1677 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5267 	; #ENR#[1211]pause(small_pause);
                           5268 ;--- end asm ---
   1DA7 C6 4B         [ 2] 5269 	ldb	#75	;,
   1DA9 BD 3E 21      [ 8] 5270 	jsr	_pause
                           5271 ;----- asm -----
                           5272 ; 1679 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5273 	; #ENR#[1212]return return_special;
                           5274 ;--- end asm ---
   1DAC C6 05         [ 2] 5275 	ldb	#5	; D.3733,
   1DAE 16 FC 0E      [ 5] 5276 	lbra	L269	;
   1DB1                    5277 L285:
                           5278 ;----- asm -----
                           5279 ; 1635 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5280 	; #ENR#[1179]pause(small_pause);
                           5281 ;--- end asm ---
   1DB1 C6 4B         [ 2] 5282 	ldb	#75	;,
   1DB3 BD 3E 21      [ 8] 5283 	jsr	_pause
                           5284 ;----- asm -----
                           5285 ; 1637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5286 	; #ENR#[1180]return return_monster_stack;
                           5287 ;--- end asm ---
   1DB6 C6 06         [ 2] 5288 	ldb	#6	; D.3733,
   1DB8 16 FC 04      [ 5] 5289 	lbra	L269	;
   1DBB                    5290 L290:
                           5291 ;----- asm -----
                           5292 ; 1685 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5293 	; #ENR#[1217]clearmessage();
                           5294 ;--- end asm ---
   1DBB 7F C9 87      [ 7] 5295 	clr	_msgLine	; msgLine
                           5296 ;----- asm -----
                           5297 ; 1687 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5298 	; #ENR#[1218]printmessage();
                           5299 ;--- end asm ---
   1DBE 8E 19 0F      [ 3] 5300 	ldx	#LC145	;,
   1DC1 BD 5B 7A      [ 8] 5301 	jsr	_printMessage
                           5302 ;----- asm -----
                           5303 ; 1689 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5304 	; #ENR#[1219]if (t)
                           5305 ;--- end asm ---
   1DC4 6D E8 12      [ 7] 5306 	tst	18,s	; t
   1DC7 10 27 00 39   [ 6] 5307 	lbeq	L291	;
                           5308 ;----- asm -----
                           5309 ; 1695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5310 	; #ENR#[1224]ltmp = ((signed long int)randmax(10))*((signed long int)cz)+1;
                           5311 ;--- end asm ---
   1DCB C6 0A         [ 2] 5312 	ldb	#10	;,
   1DCD BD 5F 2A      [ 8] 5313 	jsr	_RandMax
   1DD0 B6 C9 67      [ 5] 5314 	lda	_cz	;umulqihi3	; cz
   1DD3 3D            [11] 5315 	mul
   1DD4 C3 00 01      [ 4] 5316 	addd	#1; addhi3,3	; tmp102,
   1DD7 FD C9 02      [ 6] 5317 	std	_ltmp	; tmp102, ltmp
                           5318 ;----- asm -----
                           5319 ; 1697 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5320 	; #ENR#[1225]printmessage();
                           5321 ;--- end asm ---
   1DDA 8E 19 17      [ 3] 5322 	ldx	#LC146	;,
   1DDD BD 5B 7A      [ 8] 5323 	jsr	_printMessage
                           5324 ;----- asm -----
                           5325 ; 1699 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5326 	; #ENR#[1226]_fl_s(, (unsigned long) ltmp);
                           5327 ;--- end asm ---
   1DE0 BE C9 02      [ 6] 5328 	ldx	_ltmp	;, ltmp
   1DE3 AF E3         [ 8] 5329 	stx	,--s	;,
   1DE5 8E 18 A5      [ 3] 5330 	ldx	#LC140	;,
   1DE8 BD 5F 6F      [ 8] 5331 	jsr	__fl_s
                           5332 ;----- asm -----
                           5333 ; 1701 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5334 	; #ENR#[1227]printmessage(stringbuffer40);
                           5335 ;--- end asm ---
   1DEB 8E C8 BF      [ 3] 5336 	ldx	#_stringBuffer40	;,
   1DEE BD 5B 7A      [ 8] 5337 	jsr	_printMessage
                           5338 ;----- asm -----
                           5339 ; 1703 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5340 	; #ENR#[1228]ch = ch - ((signed long int) ltmp);
                           5341 ;--- end asm ---
   1DF1 FC C9 63      [ 6] 5342 	ldd	_ch	; ch, ch
   1DF4 B3 C9 02      [ 7] 5343 	subd	_ltmp	;subhi: R:d -= _ltmp	; ch.108, ltmp
   1DF7 FD C9 63      [ 6] 5344 	std	_ch	; ch.108, ch
                           5345 ;----- asm -----
                           5346 ; 1705 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5347 	; #ENR#[1229]if (ch<1)
                           5348 ;--- end asm ---
   1DFA 32 62         [ 5] 5349 	leas	2,s	;,,
   1DFC 10 83 00 00   [ 5] 5350 	cmpd	#0	; ch.108
   1E00 10 2F 01 39   [ 6] 5351 	lble	L320	;
   1E04                    5352 L291:
                           5353 ;----- asm -----
                           5354 ; 1720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5355 	; #ENR#[1241]if (randmax(10)==0)
                           5356 ;--- end asm ---
   1E04 C6 0A         [ 2] 5357 	ldb	#10	;,
   1E06 BD 5F 2A      [ 8] 5358 	jsr	_RandMax
   1E09 5D            [ 2] 5359 	tstb	; D.3775
   1E0A 10 27 01 15   [ 6] 5360 	lbeq	L321	;
                           5361 ;----- asm -----
                           5362 ; 1735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5363 	; #ENR#[1252]lltmp = (signed long long int) ((unsigned long long int) randmax(100));
                           5364 ;--- end asm ---
   1E0E C6 64         [ 2] 5365 	ldb	#100	;,
   1E10 BD 5F 2A      [ 8] 5366 	jsr	_RandMax
   1E13 4F            [ 2] 5367 	clra		;zero_extendqihi: R:b -> R:d	; D.3776,
   1E14 1F 02         [ 6] 5368 	tfr	d,y	;, D.3776
   1E16 CC 00 00      [ 3] 5369 	ldd	#0	;,
   1E19 FD C9 04      [ 6] 5370 	std	_lltmp	;, lltmp
   1E1C 10 BF C9 06   [ 7] 5371 	sty	_lltmp+2	; D.3776, lltmp
                           5372 ;----- asm -----
                           5373 ; 1737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5374 	; #ENR#[1253]lltmp = lltmp*l;
                           5375 ; 1739 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5376 	; #ENR#[1254]lltmp = lltmp*10;
                           5377 ; 1741 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5378 	; #ENR#[1255]lltmp++;
                           5379 ;--- end asm ---
   1E20 F6 C9 80      [ 5] 5380 	ldb	_l	;, l
   1E23 4F            [ 2] 5381 	clra		;zero_extendqihi: R:b -> R:d	;,
   1E24 1F 01         [ 6] 5382 	tfr	d,x	;, l
   1E26 32 78         [ 5] 5383 	leas	-8,s	;,,
   1E28 CC 00 00      [ 3] 5384 	ldd	#0	;,
   1E2B ED 64         [ 6] 5385 	std	4,s	;,
   1E2D CC 00 0A      [ 3] 5386 	ldd	#10	;,
   1E30 ED 66         [ 6] 5387 	std	6,s	;,
   1E32 CC 00 00      [ 3] 5388 	ldd	#0	;,
   1E35 ED E4         [ 5] 5389 	std	,s	;,
   1E37 AF 62         [ 6] 5390 	stx	2,s	; l,
   1E39 30 E8 2D      [ 5] 5391 	leax	45,s	;,,
   1E3C BD 79 4C      [ 8] 5392 	jsr	___mulsi3
   1E3F CC 00 00      [ 3] 5393 	ldd	#0	;,
   1E42 ED 64         [ 6] 5394 	std	4,s	;,
   1E44 10 AF 66      [ 7] 5395 	sty	6,s	; D.3776,
   1E47 AE E8 2D      [ 6] 5396 	ldx	45,s	;,
   1E4A AF E4         [ 5] 5397 	stx	,s	;,
   1E4C EE E8 2F      [ 6] 5398 	ldu	47,s	;,
   1E4F EF 62         [ 6] 5399 	stu	2,s	;,
   1E51 30 E8 29      [ 5] 5400 	leax	41,s	;,,
   1E54 BD 79 4C      [ 8] 5401 	jsr	___mulsi3
   1E57 32 64         [ 5] 5402 	leas	4,s	;,,
   1E59 EC E8 25      [ 6] 5403 	ldd	37,s	;,
   1E5C ED 67         [ 6] 5404 	std	7,s	;,
   1E5E AE E8 27      [ 6] 5405 	ldx	39,s	;,
   1E61 AF 69         [ 6] 5406 	stx	9,s	;,
   1E63 EC 69         [ 6] 5407 	ldd	9,s	;,
   1E65 C3 00 01      [ 4] 5408 	addd	#1	;,
   1E68 ED E8 22      [ 6] 5409 	std	34,s	;, lltmp.478
   1E6B EC 67         [ 6] 5410 	ldd	7,s	;,
   1E6D C9 00         [ 2] 5411 	adcb	#0	;
   1E6F 89 00         [ 2] 5412 	adca	#0	;
   1E71 ED E8 20      [ 6] 5413 	std	32,s	;, lltmp.478
   1E74 AE E8 20      [ 6] 5414 	ldx	32,s	;, lltmp.478
   1E77 BF C9 04      [ 6] 5415 	stx	_lltmp	;, lltmp
   1E7A EE E8 22      [ 6] 5416 	ldu	34,s	;, lltmp.478
   1E7D FF C9 06      [ 6] 5417 	stu	_lltmp+2	;, lltmp
                           5418 ;----- asm -----
                           5419 ; 1743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5420 	; #ENR#[1256]gd = gd + ull(lltmp);
                           5421 ;--- end asm ---
   1E80 FC C9 6A      [ 6] 5422 	ldd	_gd+2	;, gd
   1E83 E3 E8 22      [ 7] 5423 	addd	34,s	;, lltmp.478
   1E86 FD C9 6A      [ 6] 5424 	std	_gd+2	;, gd
   1E89 FC C9 68      [ 6] 5425 	ldd	_gd	;, gd
   1E8C E9 E8 21      [ 5] 5426 	adcb	33,s	; lltmp.478
   1E8F A9 E8 20      [ 5] 5427 	adca	32,s	; lltmp.478
   1E92 FD C9 68      [ 6] 5428 	std	_gd	;, gd
                           5429 ;----- asm -----
                           5430 ; 1745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5431 	; #ENR#[1257]_fll_s(, ((unsigned long long int) lltmp));
                           5432 ;--- end asm ---
   1E95 AF E4         [ 5] 5433 	stx	,s	;,
   1E97 EE E8 22      [ 6] 5434 	ldu	34,s	;, lltmp.478
   1E9A EF 62         [ 6] 5435 	stu	2,s	;,
   1E9C 8E 18 C0      [ 3] 5436 	ldx	#LC141	;,
   1E9F BD 67 BD      [ 8] 5437 	jsr	__fll_s
                           5438 ;----- asm -----
                           5439 ; 1747 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5440 	; #ENR#[1258]printmessage(stringbuffer40);
                           5441 ;--- end asm ---
   1EA2 8E C8 BF      [ 3] 5442 	ldx	#_stringBuffer40	;,
   1EA5 BD 5B 7A      [ 8] 5443 	jsr	_printMessage
                           5444 ;----- asm -----
                           5445 ; 1750 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5446 	; #ENR#[1260]pause(small_pause);
                           5447 ;--- end asm ---
   1EA8 C6 4B         [ 2] 5448 	ldb	#75	;,
   1EAA BD 3E 21      [ 8] 5449 	jsr	_pause
                           5450 ;----- asm -----
                           5451 ; 1752 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5452 	; #ENR#[1261]if (randmax(100)<50)
                           5453 ;--- end asm ---
   1EAD C6 64         [ 2] 5454 	ldb	#100	;,
   1EAF BD 5F 2A      [ 8] 5455 	jsr	_RandMax
   1EB2 32 64         [ 5] 5456 	leas	4,s	;,,
   1EB4 C1 31         [ 2] 5457 	cmpb	#49	;cmpqi:	; D.3779,
   1EB6 10 23 00 64   [ 6] 5458 	lbls	L322	;
                           5459 ;----- asm -----
                           5460 ; 1758 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5461 	; #ENR#[1265]c = 1;
                           5462 ;--- end asm ---
   1EBA C6 01         [ 2] 5463 	ldb	#1	;,
   1EBC E7 E8 13      [ 5] 5464 	stb	19,s	;, c
   1EBF 16 FB 29      [ 5] 5465 	lbra	L288	;
   1EC2                    5466 L318:
   1EC2 C6 0A         [ 2] 5467 	ldb	#10	;,
   1EC4 BD 5F 2A      [ 8] 5468 	jsr	_RandMax
   1EC7 5D            [ 2] 5469 	tstb	; D.3741
   1EC8 10 26 FC AF   [ 6] 5470 	lbne	L272	;
   1ECC 8E 18 6F      [ 3] 5471 	ldx	#LC136	;,
   1ECF BD 5B 7A      [ 8] 5472 	jsr	_printMessage
   1ED2 16 FC A6      [ 5] 5473 	lbra	L272	;
   1ED5                    5474 L317:
                           5475 ;----- asm -----
                           5476 ; 1813 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5477 	; #ENR#[1305]printmessage();
                           5478 ;--- end asm ---
   1ED5 8E 19 74      [ 3] 5479 	ldx	#LC151	;,
   1ED8 BD 5B 7A      [ 8] 5480 	jsr	_printMessage
                           5481 ;----- asm -----
                           5482 ; 1815 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5483 	; #ENR#[1306]pause(small_pause);
                           5484 ;--- end asm ---
   1EDB C6 4B         [ 2] 5485 	ldb	#75	;,
   1EDD BD 3E 21      [ 8] 5486 	jsr	_pause
                           5487 ;----- asm -----
                           5488 ; 1817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5489 	; #ENR#[1307]clearmessage();
                           5490 ;--- end asm ---
   1EE0 7F C9 87      [ 7] 5491 	clr	_msgLine	; msgLine
                           5492 ;----- asm -----
                           5493 ; 1819 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5494 	; #ENR#[1308]utmp =  randmax(tno*5)+1;
                           5495 ;--- end asm ---
   1EE3 E6 E8 20      [ 5] 5496 	ldb	32,s	; tmp133, tno.484
   1EE6 58            [ 2] 5497 	aslb	; tmp133
   1EE7 58            [ 2] 5498 	aslb	; tmp133
   1EE8 EB E8 20      [ 5] 5499 	addb	32,s	; tmp133, tno.484
   1EEB BD 5F 2A      [ 8] 5500 	jsr	_RandMax
   1EEE 5C            [ 2] 5501 	incb	; utmp.112
   1EEF F7 C8 FD      [ 5] 5502 	stb	_utmp	; utmp.112, utmp
                           5503 ;----- asm -----
                           5504 ; 1821 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5505 	; #ENR#[1309]_fi_s(, utmp);
                           5506 ;--- end asm ---
   1EF2 8E 19 83      [ 3] 5507 	ldx	#LC152	;,
   1EF5 BD 5C C6      [ 8] 5508 	jsr	__fi_s
                           5509 ;----- asm -----
                           5510 ; 1823 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5511 	; #ENR#[1310]printmessage(stringbuffer40);
                           5512 ;--- end asm ---
   1EF8 8E C8 BF      [ 3] 5513 	ldx	#_stringBuffer40	;,
   1EFB BD 5B 7A      [ 8] 5514 	jsr	_printMessage
                           5515 ;----- asm -----
                           5516 ; 1825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5517 	; #ENR#[1311]ch = ch - ((signed long int) utmp);
                           5518 ;--- end asm ---
   1EFE F6 C8 FD      [ 5] 5519 	ldb	_utmp	;, utmp
   1F01 4F            [ 2] 5520 	clra		;zero_extendqihi: R:b -> R:d	;,
   1F02 1F 01         [ 6] 5521 	tfr	d,x	;, utmp
   1F04 FC C9 63      [ 6] 5522 	ldd	_ch	; ch, ch
   1F07 34 10         [ 6] 5523 	pshs	x	;subhi: R:d -= R:x	; utmp, ch.492
   1F09 A3 E1         [ 9] 5524 	subd	,s++	; ch.492
   1F0B FD C9 63      [ 6] 5525 	std	_ch	; ch.492, ch
                           5526 ;----- asm -----
                           5527 ; 1827 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5528 	; #ENR#[1312]if (ch<1)
                           5529 ;--- end asm ---
   1F0E 10 83 00 00   [ 5] 5530 	cmpd	#0	; ch.492
   1F12 2F 1F         [ 3] 5531 	ble	L323	;
                           5532 ;----- asm -----
                           5533 ; 1835 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5534 	; #ENR#[1317]pause(small_pause);
                           5535 ;--- end asm ---
   1F14 C6 4B         [ 2] 5536 	ldb	#75	;,
   1F16 BD 3E 21      [ 8] 5537 	jsr	_pause
                           5538 ;----- asm -----
                           5539 ; 1837 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5540 	; #ENR#[1318]return return_monster_stack;
                           5541 ;--- end asm ---
   1F19 C6 06         [ 2] 5542 	ldb	#6	; D.3733,
   1F1B 16 FA A1      [ 5] 5543 	lbra	L269	;
   1F1E                    5544 L322:
                           5545 ;----- asm -----
                           5546 ; 1755 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5547 	; #ENR#[1263]return return_monster_stack;
                           5548 ;--- end asm ---
   1F1E C6 06         [ 2] 5549 	ldb	#6	; D.3733,
   1F20 16 FA 9C      [ 5] 5550 	lbra	L269	;
   1F23                    5551 L321:
                           5552 ;----- asm -----
                           5553 ; 1723 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5554 	; #ENR#[1243]printmessage();
                           5555 ;--- end asm ---
   1F23 8E 19 28      [ 3] 5556 	ldx	#LC147	;,
   1F26 BD 5B 7A      [ 8] 5557 	jsr	_printMessage
                           5558 ;----- asm -----
                           5559 ; 1725 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5560 	; #ENR#[1244]pause(small_pause);
                           5561 ;--- end asm ---
   1F29 C6 4B         [ 2] 5562 	ldb	#75	;,
   1F2B BD 3E 21      [ 8] 5563 	jsr	_pause
                           5564 ;----- asm -----
                           5565 ; 1727 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5566 	; #ENR#[1245]return return_monster_stack;
                           5567 ;--- end asm ---
   1F2E C6 06         [ 2] 5568 	ldb	#6	; D.3733,
   1F30 16 FA 8C      [ 5] 5569 	lbra	L269	;
   1F33                    5570 L323:
                           5571 ;----- asm -----
                           5572 ; 1830 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5573 	; #ENR#[1314]pause(small_pause);
                           5574 ;--- end asm ---
   1F33 C6 4B         [ 2] 5575 	ldb	#75	;,
   1F35 BD 3E 21      [ 8] 5576 	jsr	_pause
                           5577 ;----- asm -----
                           5578 ; 1832 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5579 	; #ENR#[1315]return return_player_dead;
                           5580 ;--- end asm ---
   1F38 C6 02         [ 2] 5581 	ldb	#2	; D.3733,
   1F3A 16 FA 82      [ 5] 5582 	lbra	L269	;
   1F3D                    5583 L320:
                           5584 ;----- asm -----
                           5585 ; 1708 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5586 	; #ENR#[1231]pause(small_pause);
                           5587 ;--- end asm ---
   1F3D C6 4B         [ 2] 5588 	ldb	#75	;,
   1F3F BD 3E 21      [ 8] 5589 	jsr	_pause
                           5590 ;----- asm -----
                           5591 ; 1710 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5592 	; #ENR#[1232]return return_player_dead;
                           5593 ;--- end asm ---
   1F42 C6 02         [ 2] 5594 	ldb	#2	; D.3733,
   1F44 16 FA 78      [ 5] 5595 	lbra	L269	;
   1F47                    5596 LC154:
   1F47 52 45 45 4E 54 45  5597 	.ascii	"REENTER\0"
        52 00
   1F4F                    5598 LC155:
   1F4F 59 4F 55 20 46 45  5599 	.ascii	"YOU FEEL HEAVY FOR A MOMENT\0"
        45 4C 20 48 45 41
        56 59 20 46 4F 52
        20 41 20 4D 4F 4D
        45 4E 54 00
   1F6B                    5600 LC156:
   1F6B 59 4F 55 20 53 45  5601 	.ascii	"YOU SEE A PIT\0"
        45 20 41 20 50 49
        54 00
   1F79                    5602 LC157:
   1F79 59 4F 55 20 41 52  5603 	.ascii	"YOU ARE HOVERING ABOVE A PIT\0"
        45 20 48 4F 56 45
        52 49 4E 47 20 41
        42 4F 56 45 20 41
        20 50 49 54 00
   1F96                    5604 LC158:
   1F96 44 4F 20 59 4F 55  5605 	.ascii	"DO YOU WANT TO DESCEND? <4> YES\0"
        20 57 41 4E 54 20
        54 4F 20 44 45 53
        43 45 4E 44 3F 20
        3C 34 3E 20 59 45
        53 00
   1FB6                    5606 LC159:
   1FB6 59 45 53 00        5607 	.ascii	"YES\0"
   1FBA                    5608 LC160:
   1FBA 59 4F 55 20 46 41  5609 	.ascii	"YOU FALL IN!!\0"
        4C 4C 20 49 4E 21
        21 00
   1FC8                    5610 LC161:
   1FC8 59 4F 55 20 53 55  5611 	.ascii	"YOU SUFFER % HIT POINTS\0"
        46 46 45 52 20 25
        20 48 49 54 20 50
        4F 49 4E 54 53 00
   1FE0                    5612 LC162:
   1FE0 5A 5A 41 50 21 21  5613 	.ascii	"ZZAP!! YOU'VE BEEN TELEPORTED...\0"
        20 59 4F 55 27 56
        45 20 42 45 45 4E
        20 54 45 4C 45 50
        4F 52 54 45 44 2E
        2E 2E 00
   2001                    5614 LC163:
   2001 59 4F 55 20 48 41  5615 	.ascii	"YOU HAVE FOUND A CIRCULAR STAIRWAY\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 43
        49 52 43 55 4C 41
        52 20 53 54 41 49
        52 57 41 59 00
   2024                    5616 LC164:
   2024 59 4F 55 20 53 45  5617 	.ascii	"YOU SEE LIGHT ABOVE\0"
        45 20 4C 49 47 48
        54 20 41 42 4F 56
        45 00
   2038                    5618 LC165:
   2038 44 4F 20 59 4F 55  5619 	.ascii	"DO YOU WANT TO <1> GO UP, <4> GO DOWN\0"
        20 57 41 4E 54 20
        54 4F 20 3C 31 3E
        20 47 4F 20 55 50
        2C 20 3C 34 3E 20
        47 4F 20 44 4F 57
        4E 00
   205E                    5620 LC166:
   205E 44 4F 20 59 4F 55  5621 	.ascii	"DO YOU WANT TO <1> GO UP\0"
        20 57 41 4E 54 20
        54 4F 20 3C 31 3E
        20 47 4F 20 55 50
        00
   2077                    5622 LC167:
   2077 44 4F 20 59 4F 55  5623 	.ascii	"DO YOU WANT TO <4> GO DOWN\0"
        20 57 41 4E 54 20
        54 4F 20 3C 34 3E
        20 47 4F 20 44 4F
        57 4E 00
   2092                    5624 LC168:
   2092 4F 52 20 53 54 41  5625 	.ascii	"OR STAY ON THE SAME LEVEL?\0"
        59 20 4F 4E 20 54
        48 45 20 53 41 4D
        45 20 4C 45 56 45
        4C 3F 00
   20AD                    5626 LC169:
   20AD 44 4F 57 4E 00     5627 	.ascii	"DOWN\0"
   20B2                    5628 LC170:
   20B2 55 50 00           5629 	.ascii	"UP\0"
   20B5                    5630 LC171:
   20B5 53 54 41 59 00     5631 	.ascii	"STAY\0"
   20BA                    5632 LC172:
   20BA 59 4F 55 20 48 41  5633 	.ascii	"YOU HAVE FOUND A HOLY ALTAR\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 48
        4F 4C 59 20 41 4C
        54 41 52 00
   20D6                    5634 LC173:
   20D6 50 52 45 53 53 20  5635 	.ascii	"PRESS <4> TO WORSHIP\0"
        3C 34 3E 20 54 4F
        20 57 4F 52 53 48
        49 50 00
   20EB                    5636 LC174:
   20EB 50 52 45 53 53 20  5637 	.ascii	"PRESS <4> TO DONATE MONEY\0"
        3C 34 3E 20 54 4F
        20 44 4F 4E 41 54
        45 20 4D 4F 4E 45
        59 00
   2105                    5638 LC175:
   2105 48 4F 57 20 4D 55  5639 	.byte	72,79,87,32,77,85,67,72
        43 48
   210D 20 47 4F 4C 44 3F  5640 	.byte	32,71,79,76,68,63,-128,0
        80 00
   2115                    5641 LC176:
   2115 59 4F 55 20 44 4F  5642 	.ascii	"YOU DON'T HAVE THAT MUCH!\0"
        4E 27 54 20 48 41
        56 45 20 54 48 41
        54 20 4D 55 43 48
        21 00
   212F                    5643 LC177:
   212F 59 4F 55 20 48 41  5644 	.ascii	"YOU HAVE BEEN HEARD\0"
        56 45 20 42 45 45
        4E 20 48 45 41 52
        44 00
   2143                    5645 LC178:
   2143 54 48 41 4E 4B 20  5646 	.ascii	"THANK YOU FOR YOUR DONATION\0"
        59 4F 55 20 46 4F
        52 20 59 4F 55 52
        20 44 4F 4E 41 54
        49 4F 4E 00
   215F                    5647 LC179:
   215F 44 49 52 54 59 20  5648 	.ascii	"DIRTY PAGAN TRASH!\0"
        50 41 47 41 4E 20
        54 52 41 53 48 21
        00
   2172                    5649 LC180:
   2172 59 4F 55 20 48 41  5650 	.ascii	"YOU HAVE FOUND A FOUNTAIN\0"
        56 45 20 46 4F 55
        4E 44 20 41 20 46
        4F 55 4E 54 41 49
        4E 00
   218C                    5651 LC181:
   218C 57 49 54 48 20 52  5652 	.ascii	"WITH RUNNING % WATER\0"
        55 4E 4E 49 4E 47
        20 25 20 57 41 54
        45 52 00
   21A1                    5653 LC182:
   21A1 50 52 45 53 53 20  5654 	.ascii	"PRESS <4> TO DRINK\0"
        3C 34 3E 20 54 4F
        20 44 52 49 4E 4B
        00
   21B4                    5655 LC183:
   21B4 59 4F 55 20 46 45  5656 	.ascii	"YOU FEEL BETTER\0"
        45 4C 20 42 45 54
        54 45 52 00
   21C4                    5657 LC184:
   21C4 59 4F 55 20 48 45  5658 	.ascii	"YOU HEAL % HIT POINTS\0"
        41 4C 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   21DA                    5659 LC185:
   21DA 49 54 27 53 20 50  5660 	.ascii	"IT'S POISON!!!\0"
        4F 49 53 4F 4E 21
        21 21 00
   21E9                    5661 LC186:
   21E9 59 4F 55 20 4C 4F  5662 	.ascii	"YOU LOSE % HIT POINTS\0"
        53 45 20 25 20 48
        49 54 20 50 4F 49
        4E 54 53 00
   21FF                    5663 LC187:
   21FF 59 4F 55 20 46 45  5664 	.ascii	"YOU FEEL REFRESHED!\0"
        45 4C 20 52 45 46
        52 45 53 48 45 44
        21 00
   2213                    5665 LC188:
   2213 41 43 54 55 41 4C  5666 	.ascii	"ACTUALLY YOU'RE DRUNK!!\0"
        4C 59 20 59 4F 55
        27 52 45 20 44 52
        55 4E 4B 21 21 00
   222B                    5667 LC189:
   222B 59 4F 55 20 48 41  5668 	.ascii	"YOU HAVE BEEN DISPOSESSED!\0"
        56 45 20 42 45 45
        4E 20 44 49 53 50
        4F 53 45 53 53 45
        44 21 00
   2246                    5669 LC190:
   2246 4D 41 47 49 43 20  5670 	.ascii	"MAGIC POWER SURGES THROUGH YOUR BODY\0"
        50 4F 57 45 52 20
        53 55 52 47 45 53
        20 54 48 52 4F 55
        47 48 20 59 4F 55
        52 20 42 4F 44 59
        00
   226B                    5671 LC191:
   226B 59 4F 55 20 4E 4F  5672 	.ascii	"YOU NOW HAVE % SPELLS\0"
        57 20 48 41 56 45
        20 25 20 53 50 45
        4C 4C 53 00
   2281                    5673 LC192:
   2281 59 4F 55 20 43 41  5674 	.ascii	"YOU CAN SEE A LARGE MISTY CUBE\0"
        4E 20 53 45 45 20
        41 20 4C 41 52 47
        45 20 4D 49 53 54
        59 20 43 55 42 45
        00
   22A0                    5675 LC193:
   22A0 3C 34 3E 20 54 4F  5676 	.ascii	"<4> TO WALK IN\0"
        20 57 41 4C 4B 20
        49 4E 00
   22AF                    5677 LC194:
   22AF 49 47 4E 4F 52 45  5678 	.ascii	"IGNORE\0"
        00
   22B6                    5679 LC195:
   22B6 41 20 4E 55 4D 42  5680 	.byte	65,32,78,85,77,66,69,82
        45 52
   22BE 20 46 52 4F 4D 20  5681 	.byte	32,70,82,79,77,32,49,32
        31 20
   22C6 54 4F 20 35 30 80  5682 	.byte	84,79,32,53,48,-128,0
        00
   22CD                    5683 LC196:
   22CD 59 4F 55 20 46 4C  5684 	.ascii	"YOU FLOAT IN SPACE ...\0"
        4F 41 54 20 49 4E
        20 53 50 41 43 45
        20 2E 2E 2E 00
   22E4                    5685 LC197:
   22E4 59 4F 55 20 53 45  5686 	.ascii	"YOU SEE A JEWEL ENCRUSTED THRONE\0"
        45 20 41 20 4A 45
        57 45 4C 20 45 4E
        43 52 55 53 54 45
        44 20 54 48 52 4F
        4E 45 00
   2305                    5687 LC198:
   2305 44 4F 20 59 4F 55  5688 	.ascii	"DO YOU WANT TO PRY<4> SOME JEWELS,\0"
        20 57 41 4E 54 20
        54 4F 20 50 52 59
        3C 34 3E 20 53 4F
        4D 45 20 4A 45 57
        45 4C 53 2C 00
   2328                    5689 LC199:
   2328 53 49 54 3C 33 3E  5690 	.ascii	"SIT<3> DOWN, READ<2> THE RUNES\0"
        20 44 4F 57 4E 2C
        20 52 45 41 44 3C
        32 3E 20 54 48 45
        20 52 55 4E 45 53
        00
   2347                    5691 LC200:
   2347 4F 52 20 49 47 4E  5692 	.ascii	"OR IGNORE<1> IT?\0"
        4F 52 45 3C 31 3E
        20 49 54 3F 00
   2358                    5693 LC201:
   2358 50 52 59 00        5694 	.ascii	"PRY\0"
   235C                    5695 LC202:
   235C 4E 4F 54 48 49 4E  5696 	.ascii	"NOTHING HAPPENS\0"
        47 20 48 41 50 50
        45 4E 53 00
   236C                    5697 LC203:
   236C 54 48 45 59 20 50  5698 	.ascii	"THEY POP INTO YOUR GREEDY HANDS!!\0"
        4F 50 20 49 4E 54
        4F 20 59 4F 55 52
        20 47 52 45 45 44
        59 20 48 41 4E 44
        53 21 21 00
   238E                    5699 LC204:
   238E 54 48 45 59 20 41  5700 	.ascii	"THEY ARE WORT % GOLD\0"
        52 45 20 57 4F 52
        54 20 25 20 47 4F
        4C 44 00
   23A3                    5701 LC205:
   23A3 53 49 54 00        5702 	.ascii	"SIT\0"
   23A7                    5703 LC206:
   23A7 54 48 45 20 25 20  5704 	.ascii	"THE % KING RETURNS\0"
        4B 49 4E 47 20 52
        45 54 55 52 4E 53
        00
   23BA                    5705 LC207:
   23BA 41 20 4C 4F 55 44  5706 	.ascii	"A LOUD GONG SOUNDS!\0"
        20 47 4F 4E 47 20
        53 4F 55 4E 44 53
        21 00
   23CE                    5707 LC208:
   23CE 52 45 41 44 00     5708 	.ascii	"READ\0"
   23D3                    5709 LC209:
   23D3 59 4F 55 20 44 4F  5710 	.ascii	"YOU DON'T UNDERSTAND THEM...\0"
        4E 27 54 20 55 4E
        44 45 52 53 54 41
        4E 44 20 54 48 45
        4D 2E 2E 2E 00
   23F0                    5711 LC210:
   23F0 41 20 4D 59 53 54  5712 	.ascii	"A MYSTERIOUS MAGIG GRIPS YOU..\0"
        45 52 49 4F 55 53
        20 4D 41 47 49 47
        20 47 52 49 50 53
        20 59 4F 55 2E 2E
        00
   240F                    5713 LC211:
   240F 59 4F 55 20 25 20  5714 	.ascii	"YOU % GOES DOWN BY 1\0"
        47 4F 45 53 20 44
        4F 57 4E 20 42 59
        20 31 00
   2424                    5715 LC212:
   2424 59 4F 55 20 25 20  5716 	.ascii	"YOU % GOES UP BY 1\0"
        47 4F 45 53 20 55
        50 20 42 59 20 31
        00
   2437                    5717 LC213:
   2437 59 4F 55 20 53 45  5718 	.ascii	"YOU SEE A SMALL BOX WITH FOUR COLORED\0"
        45 20 41 20 53 4D
        41 4C 4C 20 42 4F
        58 20 57 49 54 48
        20 46 4F 55 52 20
        43 4F 4C 4F 52 45
        44 00
   245D                    5719 LC214:
   245D 4C 49 47 48 54 53  5720 	.ascii	"LIGHTS. PUSH<4> BUTTONS OR IGNORE:\0"
        2E 20 50 55 53 48
        3C 34 3E 20 42 55
        54 54 4F 4E 53 20
        4F 52 20 49 47 4E
        4F 52 45 3A 00
   2480                    5721 LC215:
   2480 50 55 53 48 20 28  5722 	.ascii	"PUSH (UP/DOWN/LEFT/RIGHT)\0"
        55 50 2F 44 4F 57
        4E 2F 4C 45 46 54
        2F 52 49 47 48 54
        29 00
   249A                    5723 LC216:
   249A 3C 55 3E 52 45 44  5724 	.ascii	"<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE\0"
        2C 20 3C 44 3E 47
        52 45 45 4E 2C 20
        3C 4C 3E 59 45 4C
        4C 4F 57 2C 20 3C
        52 3E 42 4C 55 45
        00
   24BF                    5725 LC217:
   24BF 42 55 54 54 4F 4E  5726 	.ascii	"BUTTON TO STOP\0"
        20 54 4F 20 53 54
        4F 50 00
   24CE                    5727 LC218:
   24CE 53 54 4F 50 00     5728 	.ascii	"STOP\0"
   24D3                    5729 LC219:
   24D3 41 4E 20 45 4C 45  5730 	.ascii	"AN ELECTRIC BOLT SHOOTS THROUGH YOU!!\0"
        43 54 52 49 43 20
        42 4F 4C 54 20 53
        48 4F 4F 54 53 20
        54 48 52 4F 55 47
        48 20 59 4F 55 21
        21 00
   24F9                    5731 LC220:
   24F9 49 54 20 4F 50 45  5732 	.ascii	"IT OPENS!!\0"
        4E 53 21 21 00
   2504                    5733 LC221:
   2504 49 4E 53 49 44 45  5734 	.ascii	"INSIDE YOU FIND JEWELS WORTH\0"
        20 59 4F 55 20 46
        49 4E 44 20 4A 45
        57 45 4C 53 20 57
        4F 52 54 48 00
   2521                    5735 LC222:
   2521 25 20 49 4E 20 47  5736 	.ascii	"% IN GOLD!!\0"
        4F 4C 44 21 21 00
                           5737 	.globl	_handleSpecial
   252D                    5738 _handleSpecial:
   252D 34 60         [ 7] 5739 	pshs	y,u	;
   252F 32 E8 C6      [ 5] 5740 	leas	-58,s	;,,
                           5741 ;----- asm -----
                           5742 ; 1871 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5743 	; #ENR#[1344]clearmessage();
                           5744 ;--- end asm ---
   2532 7F C9 87      [ 7] 5745 	clr	_msgLine	; msgLine
                           5746 ;----- asm -----
                           5747 ; 1893 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5748 	; #ENR#[1365]if (above == 4) goto dostaircase;
                           5749 ;--- end asm ---
   2535 10 8E C8 8A   [ 4] 5750 	ldy	#_screen+10	; prephitmp.509,
   2539 F6 C8 A0      [ 5] 5751 	ldb	_above	;, above
   253C C1 04         [ 2] 5752 	cmpb	#4	;cmpqi:	;,
   253E 27 2F         [ 3] 5753 	beq	L326	;
                           5754 ;----- asm -----
                           5755 ; 1896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5756 	; #ENR#[1367]switch (map11_hi)
                           5757 ;--- end asm ---
   2540 10 8E C8 8A   [ 4] 5758 	ldy	#_screen+10	; prephitmp.509,
   2544 E6 A4         [ 4] 5759 	ldb	,y	;,* prephitmp.509
   2546 C1 09         [ 2] 5760 	cmpb	#9	;cmpqi:	;,
   2548 23 06         [ 3] 5761 	bls	L443	;
   254A                    5762 L327:
                           5763 ;----- asm -----
                           5764 ; 2993 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5765 	; #ENR#[2135]break;
                           5766 ;--- end asm ---
   254A                    5767 L423:
                           5768 ;----- asm -----
                           5769 ; 2997 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5770 	; #ENR#[2138]return return_nothing;
                           5771 ;--- end asm ---
   254A 5F            [ 2] 5772 	clrb	; D.3848
   254B                    5773 L341:
   254B 32 E8 3A      [ 5] 5774 	leas	58,s	;,,
   254E 35 E0         [ 8] 5775 	puls	y,u,pc	;
   2550                    5776 L443:
   2550 4F            [ 2] 5777 	clra		;zero_extendqihi: R:b -> R:d	;,
   2551 ED E4         [ 5] 5778 	std	,s	;,
   2553 58            [ 2] 5779 	aslb	;
   2554 49            [ 2] 5780 	rola	;
   2555 1F 01         [ 6] 5781 	tfr	d,x	;, tmp152
   2557 6E 99 25 5B   [10] 5782 	jmp	[L337,x]	;, tmp152
   255B                    5783 L337:
   255B 25 4A              5784 	.word	L327
   255D 27 55              5785 	.word	L328
   255F 28 AF              5786 	.word	L329
   2561 27 EC              5787 	.word	L330
   2563 25 6F              5788 	.word	L331
   2565 26 E6              5789 	.word	L332
   2567 26 A7              5790 	.word	L333
   2569 26 82              5791 	.word	L334
   256B 27 A1              5792 	.word	L335
   256D 27 74              5793 	.word	L336
   256F                    5794 L331:
                           5795 ;----- asm -----
                           5796 ; 2143 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5797 	; #ENR#[1536]dostaircase:
                           5798 ;--- end asm ---
   256F                    5799 L326:
                           5800 ;----- asm -----
                           5801 ; 2151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5802 	; #ENR#[1543]printmessage();
                           5803 ;--- end asm ---
   256F 8E 20 01      [ 3] 5804 	ldx	#LC163	;,
   2572 BD 5B 7A      [ 8] 5805 	jsr	_printMessage
                           5806 ;----- asm -----
                           5807 ; 2156 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5808 	; #ENR#[1547]if ((above == 4) && (cz==1))
                           5809 ;--- end asm ---
   2575 F6 C8 A0      [ 5] 5810 	ldb	_above	;, above
   2578 C1 04         [ 2] 5811 	cmpb	#4	;cmpqi:	;,
   257A 10 27 00 F2   [ 6] 5812 	lbeq	L444	;
   257E                    5813 L359:
                           5814 ;----- asm -----
                           5815 ; 2159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5816 	; #ENR#[1549]pause(small_pause);
                           5817 ;--- end asm ---
   257E C6 4B         [ 2] 5818 	ldb	#75	;,
   2580 BD 3E 21      [ 8] 5819 	jsr	_pause
                           5820 ;----- asm -----
                           5821 ; 2161 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5822 	; #ENR#[1550]clearmessage();
                           5823 ;--- end asm ---
   2583 7F C9 87      [ 7] 5824 	clr	_msgLine	; msgLine
                           5825 ;----- asm -----
                           5826 ; 2169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5827 	; #ENR#[1557]if ((above==4) && (map11_hi==4))
                           5828 ;--- end asm ---
   2586 F6 C8 A0      [ 5] 5829 	ldb	_above	;, above
   2589 C1 04         [ 2] 5830 	cmpb	#4	;cmpqi:	;,
   258B 10 27 00 D0   [ 6] 5831 	lbeq	L445	;
   258F E6 A4         [ 4] 5832 	ldb	,y	;,* prephitmp.509
   2591 C1 04         [ 2] 5833 	cmpb	#4	;cmpqi:	;,
   2593 10 27 03 ED   [ 6] 5834 	lbeq	L446	;
   2597                    5835 L362:
                           5836 ;----- asm -----
                           5837 ; 2185 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5838 	; #ENR#[1569]printmessage();
                           5839 ;--- end asm ---
   2597 8E 20 92      [ 3] 5840 	ldx	#LC168	;,
   259A BD 5B 7A      [ 8] 5841 	jsr	_printMessage
                           5842 ;----- asm -----
                           5843 ; 2188 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5844 	; #ENR#[1571]tmp = testforbutton(2);
                           5845 ; 130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5846 	; #ENR#[129]signed int p = 0;
                           5847 ; 132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5848 	; #ENR#[130]signed int t = 0;
                           5849 ; 134 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5850 	; #ENR#[131]localtimer = action_time;
                           5851 ;--- end asm ---
   259D C6 FA         [ 2] 5852 	ldb	#-6	;,
   259F F7 C8 A8      [ 5] 5853 	stb	_localTimer	;, localTimer
                           5854 ;----- asm -----
                           5855 ; 136 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5856 	; #ENR#[132]do
                           5857 ;--- end asm ---
   25A2 6F E8 27      [ 7] 5858 	clr	39,s	; p
   25A5 6F E8 25      [ 7] 5859 	clr	37,s	; d
   25A8 16 00 7B      [ 5] 5860 	lbra	L371	;
   25AB                    5861 L447:
                           5862 ;----- asm -----
                           5863 ; 147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5864 	; #ENR#[139]if (button_1_4_pressed()) {t = 4;p = 1;}
                           5865 ;--- end asm ---
   25AB F6 C8 11      [ 5] 5866 	ldb	_Vec_Buttons	;, Vec_Buttons
   25AE E7 E8 28      [ 5] 5867 	stb	40,s	;, D.5144
   25B1 C5 08         [ 2] 5868 	bitb	#8	;,
   25B3 27 0A         [ 3] 5869 	beq	L364	;
   25B5 C6 01         [ 2] 5870 	ldb	#1	;,
   25B7 E7 E8 27      [ 5] 5871 	stb	39,s	;, p
   25BA C6 04         [ 2] 5872 	ldb	#4	;,
   25BC E7 E8 25      [ 5] 5873 	stb	37,s	;, d
   25BF                    5874 L364:
                           5875 ;----- asm -----
                           5876 ; 149 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5877 	; #ENR#[140]if (button_1_3_pressed()) {t = 3;p = 1;}
                           5878 ;--- end asm ---
   25BF C6 04         [ 2] 5879 	ldb	#4	; tmp180,
   25C1 E4 E8 28      [ 5] 5880 	andb	40,s	; tmp180, D.5144
   25C4 27 0A         [ 3] 5881 	beq	L365	;
   25C6 C6 01         [ 2] 5882 	ldb	#1	;,
   25C8 E7 E8 27      [ 5] 5883 	stb	39,s	;, p
   25CB C6 03         [ 2] 5884 	ldb	#3	;,
   25CD E7 E8 25      [ 5] 5885 	stb	37,s	;, d
   25D0                    5886 L365:
                           5887 ;----- asm -----
                           5888 ; 151 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5889 	; #ENR#[141]if (button_1_2_pressed()) {t = 2;p = 1;}
                           5890 ;--- end asm ---
   25D0 C6 02         [ 2] 5891 	ldb	#2	; tmp181,
   25D2 E4 E8 28      [ 5] 5892 	andb	40,s	; tmp181, D.5144
   25D5 27 0A         [ 3] 5893 	beq	L366	;
   25D7 C6 01         [ 2] 5894 	ldb	#1	;,
   25D9 E7 E8 27      [ 5] 5895 	stb	39,s	;, p
   25DC C6 02         [ 2] 5896 	ldb	#2	;,
   25DE E7 E8 25      [ 5] 5897 	stb	37,s	;, d
   25E1                    5898 L366:
                           5899 ;----- asm -----
                           5900 ; 153 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5901 	; #ENR#[142]if (button_1_1_pressed()) {t = 1;p = 1;}
                           5902 ;--- end asm ---
   25E1 C6 01         [ 2] 5903 	ldb	#1	; tmp182,
   25E3 E4 E8 28      [ 5] 5904 	andb	40,s	; tmp182, D.5144
   25E6 27 08         [ 3] 5905 	beq	L367	;
   25E8 C6 01         [ 2] 5906 	ldb	#1	;,
   25EA E7 E8 27      [ 5] 5907 	stb	39,s	;, p
   25ED E7 E8 25      [ 5] 5908 	stb	37,s	;, d
   25F0                    5909 L367:
                           5910 ;----- asm -----
                           5911 ; 157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5912 	; #ENR#[145]if (vec_joy_1_x != 0) {t=5; p = 1;}
                           5913 ;--- end asm ---
   25F0 F6 C8 1B      [ 5] 5914 	ldb	_Vec_Joy_1_X	;, Vec_Joy_1_X
   25F3 E7 E8 26      [ 5] 5915 	stb	38,s	;, Vec_Joy_1_X.4
   25F6 27 0A         [ 3] 5916 	beq	L368	;
   25F8 C6 01         [ 2] 5917 	ldb	#1	;,
   25FA E7 E8 27      [ 5] 5918 	stb	39,s	;, p
   25FD C6 05         [ 2] 5919 	ldb	#5	;,
   25FF E7 E8 25      [ 5] 5920 	stb	37,s	;, d
   2602                    5921 L368:
                           5922 ;----- asm -----
                           5923 ; 159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5924 	; #ENR#[146]if (vec_joy_1_y != 0) {t=5; p = 1;}
                           5925 ;--- end asm ---
   2602 F6 C8 1C      [ 5] 5926 	ldb	_Vec_Joy_1_Y	;, Vec_Joy_1_Y
   2605 E7 62         [ 5] 5927 	stb	2,s	;, Vec_Joy_1_Y.5
   2607 27 0A         [ 3] 5928 	beq	L369	;
   2609 C6 01         [ 2] 5929 	ldb	#1	;,
   260B E7 E8 27      [ 5] 5930 	stb	39,s	;, p
   260E C6 05         [ 2] 5931 	ldb	#5	;,
   2610 E7 E8 25      [ 5] 5932 	stb	37,s	;, d
   2613                    5933 L369:
                           5934 ;----- asm -----
                           5935 ; 163 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5936 	; #ENR#[149]if ((p) && (vec_joy_1_x == 0) && (vec_joy_1_y == 0) && (!buttons_pressed())) break;
                           5937 ;--- end asm ---
   2613 6D E8 27      [ 7] 5938 	tst	39,s	; p
   2616 27 0E         [ 3] 5939 	beq	L370	;
   2618 6D E8 26      [ 7] 5940 	tst	38,s	; Vec_Joy_1_X.4
   261B 26 09         [ 3] 5941 	bne	L370	;
   261D 6D 62         [ 7] 5942 	tst	2,s	; Vec_Joy_1_Y.5
   261F 26 05         [ 3] 5943 	bne	L370	;
   2621 6D E8 28      [ 7] 5944 	tst	40,s	; D.5144
   2624 27 0E         [ 3] 5945 	beq	L363	;
   2626                    5946 L370:
                           5947 ;----- asm -----
                           5948 ; 165 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5949 	; #ENR#[151]while (1);
                           5950 ;--- end asm ---
   2626                    5951 L371:
                           5952 ;----- asm -----
                           5953 ; 139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5954 	; #ENR#[134]displayround();
                           5955 ;--- end asm ---
   2626 BD 3D AC      [ 8] 5956 	jsr	_displayRound
                           5957 ;----- asm -----
                           5958 ; 141 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5959 	; #ENR#[135]if (d!=0) localtimer--;
                           5960 ;--- end asm ---
   2629 7A C8 A8      [ 7] 5961 	dec	_localTimer	; localTimer
   262C F6 C8 A8      [ 5] 5962 	ldb	_localTimer	; localTimer.3, localTimer
                           5963 ;----- asm -----
                           5964 ; 144 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5965 	; #ENR#[137]if (localtimer == 0) break;
                           5966 ;--- end asm ---
   262F 5D            [ 2] 5967 	tstb	; localTimer.3
   2630 10 26 FF 77   [ 6] 5968 	lbne	L447	;
   2634                    5969 L363:
                           5970 ;----- asm -----
                           5971 ; 169 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5972 	; #ENR#[153]if (t == 0) return d;
                           5973 ;--- end asm ---
   2634 6D E8 25      [ 7] 5974 	tst	37,s	; d
   2637 27 1F         [ 3] 5975 	beq	L448	;
                           5976 ;----- asm -----
                           5977 ; 171 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5978 	; #ENR#[154]return t;
                           5979 ;--- end asm ---
   2639 E6 E8 25      [ 5] 5980 	ldb	37,s	;, d
   263C                    5981 L373:
   263C F7 C8 FE      [ 5] 5982 	stb	_tmp	;, tmp
                           5983 ;----- asm -----
                           5984 ; 2193 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5985 	; #ENR#[1575]if ((tmp == 4) && (map11_hi==4))
                           5986 ;--- end asm ---
   263F C1 04         [ 2] 5987 	cmpb	#4	;cmpqi:	;,
   2641 10 27 03 17   [ 6] 5988 	lbeq	L449	;
   2645 C1 01         [ 2] 5989 	cmpb	#1	;cmpqi:	;,
   2647 10 27 02 E8   [ 6] 5990 	lbeq	L450	;
   264B                    5991 L375:
                           5992 ;----- asm -----
                           5993 ; 2240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           5994 	; #ENR#[1608]printmessage();
                           5995 ;--- end asm ---
   264B 8E 20 B5      [ 3] 5996 	ldx	#LC171	;,
   264E BD 5B 7A      [ 8] 5997 	jsr	_printMessage
                           5998 ;----- asm -----
                           5999 ; 2242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6000 	; #ENR#[1609]return return_pause;
                           6001 ;--- end asm ---
   2651 C6 07         [ 2] 6002 	ldb	#7	; D.3848,
   2653 32 E8 3A      [ 5] 6003 	leas	58,s	;,,
   2656 35 E0         [ 8] 6004 	puls	y,u,pc	;
   2658                    6005 L448:
   2658 C6 02         [ 2] 6006 	ldb	#2	;,
   265A E7 E8 25      [ 5] 6007 	stb	37,s	;, d
   265D 20 DD         [ 3] 6008 	bra	L373	;
   265F                    6009 L445:
   265F E6 A4         [ 4] 6010 	ldb	,y	;,* prephitmp.509
   2661 C1 04         [ 2] 6011 	cmpb	#4	;cmpqi:	;,
   2663 10 27 05 C2   [ 6] 6012 	lbeq	L451	;
                           6013 ;----- asm -----
                           6014 ; 2177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6015 	; #ENR#[1563]printmessage();
                           6016 ;--- end asm ---
   2667 8E 20 5E      [ 3] 6017 	ldx	#LC166	;,
   266A BD 5B 7A      [ 8] 6018 	jsr	_printMessage
   266D 16 FF 27      [ 5] 6019 	lbra	L362	;
   2670                    6020 L444:
   2670 F6 C9 67      [ 5] 6021 	ldb	_cz	;, cz
   2673 C1 01         [ 2] 6022 	cmpb	#1	;cmpqi:	;,
   2675 10 26 FF 05   [ 6] 6023 	lbne	L359	;
   2679 8E 20 24      [ 3] 6024 	ldx	#LC164	;,
   267C BD 5B 7A      [ 8] 6025 	jsr	_printMessage
   267F 16 FE FC      [ 5] 6026 	lbra	L359	;
   2682                    6027 L334:
                           6028 ;----- asm -----
                           6029 ; 2537 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6030 	; #ENR#[1817]printmessage();
                           6031 ;--- end asm ---
   2682 8E 22 81      [ 3] 6032 	ldx	#LC192	;,
   2685 BD 5B 7A      [ 8] 6033 	jsr	_printMessage
                           6034 ;----- asm -----
                           6035 ; 2539 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6036 	; #ENR#[1818]printmessage();
                           6037 ;--- end asm ---
   2688 8E 22 A0      [ 3] 6038 	ldx	#LC193	;,
   268B BD 5B 7A      [ 8] 6039 	jsr	_printMessage
                           6040 ;----- asm -----
                           6041 ; 2541 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6042 	; #ENR#[1819]tmp = testforbutton(1);
                           6043 ;--- end asm ---
   268E C6 01         [ 2] 6044 	ldb	#1	;,
   2690 BD 04 F8      [ 8] 6045 	jsr	_testForButton
   2693 F7 C8 FE      [ 5] 6046 	stb	_tmp	; tmp.161, tmp
                           6047 ;----- asm -----
                           6048 ; 2543 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6049 	; #ENR#[1820]if (tmp != 4)
                           6050 ;--- end asm ---
   2696 C1 04         [ 2] 6051 	cmpb	#4	;cmpqi:	; tmp.161,
   2698 10 27 05 48   [ 6] 6052 	lbeq	L399	;
                           6053 ;----- asm -----
                           6054 ; 2546 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6055 	; #ENR#[1822]printmessage();
                           6056 ;--- end asm ---
   269C 8E 22 AF      [ 3] 6057 	ldx	#LC194	;,
   269F BD 5B 7A      [ 8] 6058 	jsr	_printMessage
                           6059 ;----- asm -----
                           6060 ; 2548 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6061 	; #ENR#[1823]return return_pause;
                           6062 ;--- end asm ---
   26A2 C6 07         [ 2] 6063 	ldb	#7	; D.3848,
   26A4 16 FE A4      [ 5] 6064 	lbra	L341	;
   26A7                    6065 L333:
                           6066 ;----- asm -----
                           6067 ; 2373 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6068 	; #ENR#[1701]printmessage();
                           6069 ;--- end asm ---
   26A7 8E 21 72      [ 3] 6070 	ldx	#LC180	;,
   26AA BD 5B 7A      [ 8] 6071 	jsr	_printMessage
                           6072 ;----- asm -----
                           6073 ; 2378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6074 	; #ENR#[1705]tmp2 = (signed int)randmax(5);
                           6075 ;--- end asm ---
   26AD C6 05         [ 2] 6076 	ldb	#5	;,
   26AF BD 5F 2A      [ 8] 6077 	jsr	_RandMax
   26B2 F7 C8 FF      [ 5] 6078 	stb	_tmp2	; D.3920, tmp2
                           6079 ;----- asm -----
                           6080 ; 2380 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6081 	; #ENR#[1706]_fs(, fountain[tmp2]);
                           6082 ;--- end asm ---
   26B5 1D            [ 2] 6083 	sex		;extendqihi2: R:b -> R:d	; D.3920, tmp2.151
   26B6 58            [ 2] 6084 	aslb	;
   26B7 49            [ 2] 6085 	rola	;
   26B8 1F 01         [ 6] 6086 	tfr	d,x	; tmp2.151, tmp205
   26BA AE 89 04 81   [ 9] 6087 	ldx	_fountain,x	;, fountain
   26BE AF E3         [ 8] 6088 	stx	,--s	;,
   26C0 8E 21 8C      [ 3] 6089 	ldx	#LC181	;,
   26C3 BD 5C 59      [ 8] 6090 	jsr	__fs
                           6091 ;----- asm -----
                           6092 ; 2382 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6093 	; #ENR#[1707]printmessage(stringbuffer40);
                           6094 ;--- end asm ---
   26C6 8E C8 BF      [ 3] 6095 	ldx	#_stringBuffer40	;,
   26C9 BD 5B 7A      [ 8] 6096 	jsr	_printMessage
                           6097 ;----- asm -----
                           6098 ; 2387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6099 	; #ENR#[1711]printmessage();
                           6100 ;--- end asm ---
   26CC 8E 21 A1      [ 3] 6101 	ldx	#LC182	;,
   26CF BD 5B 7A      [ 8] 6102 	jsr	_printMessage
                           6103 ;----- asm -----
                           6104 ; 2389 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6105 	; #ENR#[1712]tmp = testforbutton(0);
                           6106 ;--- end asm ---
   26D2 5F            [ 2] 6107 	clrb	;
   26D3 BD 04 F8      [ 8] 6108 	jsr	_testForButton
   26D6 F7 C8 FE      [ 5] 6109 	stb	_tmp	; tmp.152, tmp
                           6110 ;----- asm -----
                           6111 ; 2391 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6112 	; #ENR#[1713]if (tmp != 4)
                           6113 ;--- end asm ---
   26D9 32 62         [ 5] 6114 	leas	2,s	;,,
   26DB C1 04         [ 2] 6115 	cmpb	#4	;cmpqi:	; tmp.152,
   26DD 10 27 06 5A   [ 6] 6116 	lbeq	L389	;
                           6117 ;----- asm -----
                           6118 ; 2396 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6119 	; #ENR#[1717]return return_pause;
                           6120 ;--- end asm ---
   26E1 C6 07         [ 2] 6121 	ldb	#7	; D.3848,
   26E3 16 FE 65      [ 5] 6122 	lbra	L341	;
   26E6                    6123 L332:
                           6124 ;----- asm -----
                           6125 ; 2255 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6126 	; #ENR#[1620]printmessage();
                           6127 ;--- end asm ---
   26E6 8E 20 BA      [ 3] 6128 	ldx	#LC172	;,
   26E9 BD 5B 7A      [ 8] 6129 	jsr	_printMessage
                           6130 ;----- asm -----
                           6131 ; 2257 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6132 	; #ENR#[1621]printmessage();
                           6133 ;--- end asm ---
   26EC 8E 20 D6      [ 3] 6134 	ldx	#LC173	;,
   26EF BD 5B 7A      [ 8] 6135 	jsr	_printMessage
                           6136 ;----- asm -----
                           6137 ; 2259 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6138 	; #ENR#[1622]tmp = testforbutton(0);
                           6139 ;--- end asm ---
   26F2 5F            [ 2] 6140 	clrb	;
   26F3 BD 04 F8      [ 8] 6141 	jsr	_testForButton
   26F6 F7 C8 FE      [ 5] 6142 	stb	_tmp	; tmp.140, tmp
                           6143 ;----- asm -----
                           6144 ; 2261 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6145 	; #ENR#[1623]if (tmp == 4)
                           6146 ;--- end asm ---
   26F9 C1 04         [ 2] 6147 	cmpb	#4	;cmpqi:	; tmp.140,
   26FB 10 27 05 50   [ 6] 6148 	lbeq	L452	;
                           6149 ;----- asm -----
                           6150 ; 2328 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6151 	; #ENR#[1671]nomoneynoworship:
                           6152 ;--- end asm ---
   26FF                    6153 L378:
                           6154 ;----- asm -----
                           6155 ; 2332 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6156 	; #ENR#[1674]if (randmax(100)>70)
                           6157 ;--- end asm ---
   26FF C6 64         [ 2] 6158 	ldb	#100	;,
   2701 BD 5F 2A      [ 8] 6159 	jsr	_RandMax
   2704 C1 46         [ 2] 6160 	cmpb	#70	;cmpqi:	; D.3913,
   2706 10 22 02 83   [ 6] 6161 	lbhi	L453	;
                           6162 ;----- asm -----
                           6163 ; 2342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6164 	; #ENR#[1682]dirtypagantrash:
                           6165 ;--- end asm ---
   270A                    6166 L381:
                           6167 ;----- asm -----
                           6168 ; 2344 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6169 	; #ENR#[1683]printmessage();
                           6170 ;--- end asm ---
   270A 8E 21 5F      [ 3] 6171 	ldx	#LC179	;,
   270D BD 5B 7A      [ 8] 6172 	jsr	_printMessage
                           6173 ;----- asm -----
                           6174 ; 2346 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6175 	; #ENR#[1684]pause(small_pause);
                           6176 ;--- end asm ---
   2710 C6 4B         [ 2] 6177 	ldb	#75	;,
   2712 BD 3E 21      [ 8] 6178 	jsr	_pause
                           6179 ;----- asm -----
                           6180 ; 2348 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6181 	; #ENR#[1685]clearmessage();
                           6182 ;--- end asm ---
   2715 7F C9 87      [ 7] 6183 	clr	_msgLine	; msgLine
                           6184 ;----- asm -----
                           6185 ; 2350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6186 	; #ENR#[1686]#ifndef no_monster
                           6187 ; 2352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6188 	; #ENR#[1687]un = 0;
                           6189 ;--- end asm ---
   2718 7F C9 7E      [ 7] 6190 	clr	_un	; un
                           6191 ;----- asm -----
                           6192 ; 2354 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6193 	; #ENR#[1688]while (un == 0)
                           6194 ;--- end asm ---
   271B                    6195 L388:
                           6196 ;----- asm -----
                           6197 ; 2357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6198 	; #ENR#[1690]m = (signed int)randmax(20);
                           6199 ;--- end asm ---
   271B C6 14         [ 2] 6200 	ldb	#20	;,
   271D BD 5F 2A      [ 8] 6201 	jsr	_RandMax
   2720 F7 C9 77      [ 5] 6202 	stb	_m	; D.3914, m
                           6203 ;----- asm -----
                           6204 ; 2359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6205 	; #ENR#[1691]if ( (m==skeleton) || (m==zombie) || (m==mummy) || (m==ghoul) || (m==wraith) || (m==specter) || (m==vampire)) un = 1;
                           6206 ;--- end asm ---
   2723 C1 02         [ 2] 6207 	cmpb	#2	;cmpqi:	; D.3914,
   2725 10 27 02 84   [ 6] 6208 	lbeq	L385	;
   2729 C1 04         [ 2] 6209 	cmpb	#4	;cmpqi:	; D.3914,
   272B 10 27 02 7E   [ 6] 6210 	lbeq	L385	;
   272F C1 07         [ 2] 6211 	cmpb	#7	;cmpqi:	; D.3914,
   2731 10 27 02 78   [ 6] 6212 	lbeq	L385	;
   2735 C1 09         [ 2] 6213 	cmpb	#9	;cmpqi:	; D.3914,
   2737 10 27 02 72   [ 6] 6214 	lbeq	L385	;
   273B C1 0C         [ 2] 6215 	cmpb	#12	;cmpqi:	; D.3914,
   273D 10 27 02 6C   [ 6] 6216 	lbeq	L385	;
   2741 C1 10         [ 2] 6217 	cmpb	#16	;cmpqi:	; D.3914,
   2743 10 27 02 66   [ 6] 6218 	lbeq	L385	;
   2747 C1 11         [ 2] 6219 	cmpb	#17	;cmpqi:	; D.3914,
   2749 10 27 02 60   [ 6] 6220 	lbeq	L385	;
   274D 7D C9 7E      [ 7] 6221 	tst	_un	; un
   2750 27 C9         [ 3] 6222 	beq	L388	;
   2752 16 02 5D      [ 5] 6223 	lbra	L387	;
   2755                    6224 L328:
                           6225 ;----- asm -----
                           6226 ; 1903 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6227 	; #ENR#[1372]if (cz != 1) goto doelevator;
                           6228 ;--- end asm ---
   2755 F6 C9 67      [ 5] 6229 	ldb	_cz	;, cz
   2758 C1 01         [ 2] 6230 	cmpb	#1	;cmpqi:	;,
   275A 10 27 02 59   [ 6] 6231 	lbeq	L454	;
   275E                    6232 L338:
                           6233 ;----- asm -----
                           6234 ; 1948 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6235 	; #ENR#[1401]printmessage();
                           6236 ;--- end asm ---
   275E 8E 1F 4F      [ 3] 6237 	ldx	#LC155	;,
   2761 BD 5B 7A      [ 8] 6238 	jsr	_printMessage
                           6239 ;----- asm -----
                           6240 ; 1950 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6241 	; #ENR#[1402]elevator();
                           6242 ;--- end asm ---
   2764 BD 3D D9      [ 8] 6243 	jsr	_elevator
                           6244 ;----- asm -----
                           6245 ; 1952 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6246 	; #ENR#[1403]cz=cz-1;
                           6247 ;--- end asm ---
   2767 7A C9 67      [ 7] 6248 	dec	_cz	; cz
                           6249 ;----- asm -----
                           6250 ; 1954 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6251 	; #ENR#[1404]fillmap =go_redraw;
                           6252 ;--- end asm ---
   276A C6 7F         [ 2] 6253 	ldb	#127	;,
   276C F7 C8 FC      [ 5] 6254 	stb	_fillMap	;, fillMap
                           6255 ;----- asm -----
                           6256 ; 1956 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6257 	; #ENR#[1405]return return_new_turn;
                           6258 ;--- end asm ---
   276F C6 01         [ 2] 6259 	ldb	#1	; D.3848,
   2771 16 FD D7      [ 5] 6260 	lbra	L341	;
   2774                    6261 L336:
                           6262 ;----- asm -----
                           6263 ; 2851 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6264 	; #ENR#[2038]printmessage();
                           6265 ;--- end asm ---
   2774 8E 24 37      [ 3] 6266 	ldx	#LC213	;,
   2777 BD 5B 7A      [ 8] 6267 	jsr	_printMessage
                           6268 ;----- asm -----
                           6269 ; 2853 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6270 	; #ENR#[2039]printmessage();
                           6271 ;--- end asm ---
   277A 8E 24 5D      [ 3] 6272 	ldx	#LC214	;,
   277D BD 5B 7A      [ 8] 6273 	jsr	_printMessage
                           6274 ;----- asm -----
                           6275 ; 2856 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6276 	; #ENR#[2041]specialaction = special_box;
                           6277 ;--- end asm ---
   2780 C6 02         [ 2] 6278 	ldb	#2	;,
   2782 F7 C8 A5      [ 5] 6279 	stb	_specialAction	;, specialAction
                           6280 ;----- asm -----
                           6281 ; 2858 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6282 	; #ENR#[2042]tmp = testforbutton(1);
                           6283 ;--- end asm ---
   2785 C6 01         [ 2] 6284 	ldb	#1	;,
   2787 BD 04 F8      [ 8] 6285 	jsr	_testForButton
   278A F7 C8 FE      [ 5] 6286 	stb	_tmp	; tmp362, tmp
                           6287 ;----- asm -----
                           6288 ; 2860 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6289 	; #ENR#[2043]specialaction = 0;
                           6290 ;--- end asm ---
   278D 7F C8 A5      [ 7] 6291 	clr	_specialAction	; specialAction
                           6292 ;----- asm -----
                           6293 ; 2864 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6294 	; #ENR#[2046]if (tmp != 4)
                           6295 ;--- end asm ---
   2790 C1 04         [ 2] 6296 	cmpb	#4	;cmpqi:	; tmp362,
   2792 10 27 02 29   [ 6] 6297 	lbeq	L424	;
                           6298 ;----- asm -----
                           6299 ; 2867 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6300 	; #ENR#[2048]printmessage();
                           6301 ;--- end asm ---
   2796 8E 22 AF      [ 3] 6302 	ldx	#LC194	;,
   2799 BD 5B 7A      [ 8] 6303 	jsr	_printMessage
                           6304 ;----- asm -----
                           6305 ; 2869 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6306 	; #ENR#[2049]return return_pause;
                           6307 ;--- end asm ---
   279C C6 07         [ 2] 6308 	ldb	#7	; D.3848,
   279E 16 FD AA      [ 5] 6309 	lbra	L341	;
   27A1                    6310 L335:
                           6311 ;----- asm -----
                           6312 ; 2608 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6313 	; #ENR#[1868]specialaction = special_throne_music;
                           6314 ;--- end asm ---
   27A1 C6 03         [ 2] 6315 	ldb	#3	;,
   27A3 F7 C8 A5      [ 5] 6316 	stb	_specialAction	;, specialAction
                           6317 ;----- asm -----
                           6318 ; 2610 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6319 	; #ENR#[1869]printmessage();
                           6320 ;--- end asm ---
   27A6 8E 22 E4      [ 3] 6321 	ldx	#LC197	;,
   27A9 BD 5B 7A      [ 8] 6322 	jsr	_printMessage
                           6323 ;----- asm -----
                           6324 ; 2612 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6325 	; #ENR#[1870]pause(small_pause);
                           6326 ;--- end asm ---
   27AC C6 4B         [ 2] 6327 	ldb	#75	;,
   27AE BD 3E 21      [ 8] 6328 	jsr	_pause
                           6329 ;----- asm -----
                           6330 ; 2614 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6331 	; #ENR#[1871]clearmessage();
                           6332 ;--- end asm ---
   27B1 7F C9 87      [ 7] 6333 	clr	_msgLine	; msgLine
                           6334 ;----- asm -----
                           6335 ; 2616 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6336 	; #ENR#[1872]printmessage();
                           6337 ;--- end asm ---
   27B4 8E 23 05      [ 3] 6338 	ldx	#LC198	;,
   27B7 BD 5B 7A      [ 8] 6339 	jsr	_printMessage
                           6340 ;----- asm -----
                           6341 ; 2618 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6342 	; #ENR#[1873]printmessage();
                           6343 ;--- end asm ---
   27BA 8E 23 28      [ 3] 6344 	ldx	#LC199	;,
   27BD BD 5B 7A      [ 8] 6345 	jsr	_printMessage
                           6346 ;----- asm -----
                           6347 ; 2620 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6348 	; #ENR#[1874]printmessage();
                           6349 ;--- end asm ---
   27C0 8E 23 47      [ 3] 6350 	ldx	#LC200	;,
   27C3 BD 5B 7A      [ 8] 6351 	jsr	_printMessage
                           6352 ;----- asm -----
                           6353 ; 2623 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6354 	; #ENR#[1876]tmp = testforbutton(1);
                           6355 ;--- end asm ---
   27C6 C6 01         [ 2] 6356 	ldb	#1	;,
   27C8 BD 04 F8      [ 8] 6357 	jsr	_testForButton
   27CB F7 C8 FE      [ 5] 6358 	stb	_tmp	; tmp.165, tmp
                           6359 ;----- asm -----
                           6360 ; 2625 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6361 	; #ENR#[1877]clearmessage();
                           6362 ;--- end asm ---
   27CE 7F C9 87      [ 7] 6363 	clr	_msgLine	; msgLine
                           6364 ;----- asm -----
                           6365 ; 2627 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6366 	; #ENR#[1878]if (tmp == 1)
                           6367 ;--- end asm ---
   27D1 C1 01         [ 2] 6368 	cmpb	#1	;cmpqi:	; tmp.165,
   27D3 10 27 03 DE   [ 6] 6369 	lbeq	L455	;
                           6370 ;----- asm -----
                           6371 ; 2637 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6372 	; #ENR#[1885]if (tmp == 4)
                           6373 ;--- end asm ---
   27D7 C1 04         [ 2] 6374 	cmpb	#4	;cmpqi:	; tmp.165,
   27D9 10 27 01 B4   [ 6] 6375 	lbeq	L456	;
                           6376 ;----- asm -----
                           6377 ; 2680 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6378 	; #ENR#[1915]if (tmp == 3)
                           6379 ;--- end asm ---
   27DD C1 03         [ 2] 6380 	cmpb	#3	;cmpqi:	; tmp.165,
   27DF 10 27 04 D6   [ 6] 6381 	lbeq	L457	;
                           6382 ;----- asm -----
                           6383 ; 2773 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6384 	; #ENR#[1980]if (tmp == 2)
                           6385 ;--- end asm ---
   27E3 C1 02         [ 2] 6386 	cmpb	#2	;cmpqi:	; tmp.165,
   27E5 10 27 05 C2   [ 6] 6387 	lbeq	L458	;
                           6388 ;----- asm -----
                           6389 ; 2839 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6390 	; #ENR#[2028]break;
                           6391 ;--- end asm ---
   27E9 16 FD 5E      [ 5] 6392 	lbra	L423	;
   27EC                    6393 L330:
                           6394 ;----- asm -----
                           6395 ; 2070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6396 	; #ENR#[1483]teleportnow:
                           6397 ;--- end asm ---
   27EC                    6398 L347:
                           6399 ;----- asm -----
                           6400 ; 2073 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6401 	; #ENR#[1485]printmessage();
                           6402 ;--- end asm ---
   27EC 8E 1F E0      [ 3] 6403 	ldx	#LC162	;,
   27EF BD 5B 7A      [ 8] 6404 	jsr	_printMessage
                           6405 ;----- asm -----
                           6406 ; 2075 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6407 	; #ENR#[1486]teleportagain:
   27F2                    6408 L348:
                           6409 ; 2084 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6410 	; #ENR#[1494]lightchange = 0x5f;
                           6411 ; 2086 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6412 	; #ENR#[1495]initsoundno = sound_teleport;
                           6413 ;--- end asm ---
   27F2 C6 02         [ 2] 6414 	ldb	#2	;,
   27F4 F7 C8 A6      [ 5] 6415 	stb	_initSoundNo	;, initSoundNo
                           6416 ;----- asm -----
                           6417 ; 2088 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6418 	; #ENR#[1496]while (--lightchange >=1)
                           6419 ;--- end asm ---
   27F7 C6 5E         [ 2] 6420 	ldb	#94	;,
   27F9 F7 C8 A4      [ 5] 6421 	stb	_lightChange	;, lightChange
   27FC                    6422 L350:
   27FC BD 3D AC      [ 8] 6423 	jsr	_displayRound
   27FF 7A C8 A4      [ 7] 6424 	dec	_lightChange	; lightChange
   2802 F6 C8 A4      [ 5] 6425 	ldb	_lightChange	; lightChange.130, lightChange
   2805 2E F5         [ 3] 6426 	bgt	L350	;
                           6427 ;----- asm -----
                           6428 ; 2094 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6429 	; #ENR#[1501]if (((cx+cy)&1) == 0) cz = cz -1;
                           6430 ;--- end asm ---
   2807 F6 C9 40      [ 5] 6431 	ldb	_cy	; tmp167, cy
   280A FB C9 3F      [ 5] 6432 	addb	_cx	; tmp167, cx
   280D C4 01         [ 2] 6433 	andb	#1	; tmp167,
   280F 26 03         [ 3] 6434 	bne	L351	;
   2811 7A C9 67      [ 7] 6435 	dec	_cz	; cz
   2814                    6436 L351:
                           6437 ;----- asm -----
                           6438 ; 2096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6439 	; #ENR#[1502]if (((cx+cy)&2) == 2) cz = cz +2;
                           6440 ;--- end asm ---
   2814 F6 C9 40      [ 5] 6441 	ldb	_cy	; tmp169, cy
   2817 FB C9 3F      [ 5] 6442 	addb	_cx	; tmp169, cx
   281A C4 02         [ 2] 6443 	andb	#2	; tmp169,
   281C 27 08         [ 3] 6444 	beq	L352	;
   281E F6 C9 67      [ 5] 6445 	ldb	_cz	;, cz
   2821 CB 02         [ 2] 6446 	addb	#2	;,
   2823 F7 C9 67      [ 5] 6447 	stb	_cz	;, cz
   2826                    6448 L352:
                           6449 ;----- asm -----
                           6450 ; 2105 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6451 	; #ENR#[1510]cx = cx+cz*8+cy*13;
                           6452 ;--- end asm ---
   2826 F6 C9 67      [ 5] 6453 	ldb	_cz	;, cz
   2829 58            [ 2] 6454 	aslb	;
   282A 58            [ 2] 6455 	aslb	;
   282B 58            [ 2] 6456 	aslb	;
   282C E7 E8 13      [ 5] 6457 	stb	19,s	;, cx.134
   282F F6 C9 40      [ 5] 6458 	ldb	_cy	;, cy
   2832 86 0D         [ 2] 6459 	lda	#13	;umulqihi3	;
   2834 3D            [11] 6460 	mul
                           6461 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   2835 1F 01         [ 6] 6462 	tfr	d,x	;, tmp172
                           6463 ; ORG>	tfr	d,x	;, tmp172
                           6464 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp172, tmp174
   2837 EB E8 13      [ 5] 6465 	addb	19,s	; tmp174, cx.134
   283A FB C9 3F      [ 5] 6466 	addb	_cx	; tmp174, cx
   283D E7 E8 13      [ 5] 6467 	stb	19,s	; tmp174, cx.134
   2840 F7 C9 3F      [ 5] 6468 	stb	_cx	; tmp174, cx
                           6469 ;----- asm -----
                           6470 ; 2107 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6471 	; #ENR#[1511]if (cx >200) cx -= (unsigned char)200;
                           6472 ;--- end asm ---
   2843 C1 C8         [ 2] 6473 	cmpb	#-56	;cmpqi:	; tmp174,
   2845 23 05         [ 3] 6474 	bls	L353	;
   2847 CB 38         [ 2] 6475 	addb	#56	; tmp174,
   2849 F7 C9 3F      [ 5] 6476 	stb	_cx	; tmp174, cx
   284C                    6477 L353:
                           6478 ;----- asm -----
                           6479 ; 2110 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6480 	; #ENR#[1513]cy = cy+cy*6+cx*17;
                           6481 ;--- end asm ---
   284C 86 11         [ 2] 6482 	lda	#17	;umulqihi3	;
   284E 3D            [11] 6483 	mul
   284F 1F 02         [ 6] 6484 	tfr	d,y	;, tmp175
   2851 F6 C9 40      [ 5] 6485 	ldb	_cy	;, cy
   2854 86 07         [ 2] 6486 	lda	#7	;umulqihi3	;
   2856 3D            [11] 6487 	mul
   2857 1F 01         [ 6] 6488 	tfr	d,x	;, tmp176
   2859 1F 20         [ 6] 6489 	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp175,
   285B E7 62         [ 5] 6490 	stb	2,s	;, cy.136
   285D 1F 10         [ 6] 6491 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp176,
   285F E7 E8 12      [ 5] 6492 	stb	18,s	;,
   2862 E6 62         [ 5] 6493 	ldb	2,s	;, cy.136
   2864 EB E8 12      [ 5] 6494 	addb	18,s	;,
   2867 F7 C9 40      [ 5] 6495 	stb	_cy	;, cy
                           6496 ;----- asm -----
                           6497 ; 2112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6498 	; #ENR#[1514]if (cy >200) cx -= (unsigned char)200;
                           6499 ;--- end asm ---
   286A C1 C8         [ 2] 6500 	cmpb	#-56	;cmpqi:	;,
   286C 23 08         [ 3] 6501 	bls	L354	;
   286E F6 C9 3F      [ 5] 6502 	ldb	_cx	;, cx
   2871 CB 38         [ 2] 6503 	addb	#56	;,
   2873 F7 C9 3F      [ 5] 6504 	stb	_cx	;, cx
   2876                    6505 L354:
                           6506 ;----- asm -----
                           6507 ; 2117 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6508 	; #ENR#[1518]if (cz==0) cz = 1;
                           6509 ;--- end asm ---
   2876 7D C9 67      [ 7] 6510 	tst	_cz	; cz
   2879 26 05         [ 3] 6511 	bne	L355	;
   287B C6 01         [ 2] 6512 	ldb	#1	;,
   287D F7 C9 67      [ 5] 6513 	stb	_cz	;, cz
   2880                    6514 L355:
                           6515 ;----- asm -----
                           6516 ; 2119 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6517 	; #ENR#[1519]if (cz>50) cz = 50;
                           6518 ;--- end asm ---
   2880 F6 C9 67      [ 5] 6519 	ldb	_cz	;, cz
   2883 C1 32         [ 2] 6520 	cmpb	#50	;cmpqi:	;,
   2885 10 22 00 F3   [ 6] 6521 	lbhi	L459	;
   2889                    6522 L356:
                           6523 ;----- asm -----
                           6524 ; 2124 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6525 	; #ENR#[1523]fillmap = go_redraw;
                           6526 ;--- end asm ---
   2889 C6 7F         [ 2] 6527 	ldb	#127	;,
   288B F7 C8 FC      [ 5] 6528 	stb	_fillMap	;, fillMap
                           6529 ;----- asm -----
                           6530 ; 2128 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6531 	; #ENR#[1526]initsoundno = sound_teleport;
                           6532 ;--- end asm ---
   288E C6 02         [ 2] 6533 	ldb	#2	;,
   2890 F7 C8 A6      [ 5] 6534 	stb	_initSoundNo	;, initSoundNo
                           6535 ;----- asm -----
                           6536 ; 2130 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6537 	; #ENR#[1527]while (lightchange++<0x5f)
                           6538 ;--- end asm ---
   2893 20 03         [ 3] 6539 	bra	L442	;
   2895                    6540 L460:
   2895 BD 3D AC      [ 8] 6541 	jsr	_displayRound
   2898                    6542 L442:
   2898 F6 C8 A4      [ 5] 6543 	ldb	_lightChange	;, lightChange
   289B E7 62         [ 5] 6544 	stb	2,s	;,
   289D 5C            [ 2] 6545 	incb	;
   289E F7 C8 A4      [ 5] 6546 	stb	_lightChange	;, lightChange
   28A1 E6 62         [ 5] 6547 	ldb	2,s	;,
   28A3 C1 5E         [ 2] 6548 	cmpb	#94	;cmpqi:	;,
   28A5 2F EE         [ 3] 6549 	ble	L460	;
                           6550 ;----- asm -----
                           6551 ; 2133 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6552 	; #ENR#[1529]lightchange = 0;
                           6553 ;--- end asm ---
   28A7 7F C8 A4      [ 7] 6554 	clr	_lightChange	; lightChange
                           6555 ;----- asm -----
                           6556 ; 2137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6557 	; #ENR#[1532]return return_new_turn;
                           6558 ;--- end asm ---
   28AA C6 01         [ 2] 6559 	ldb	#1	; D.3848,
   28AC 16 FC 9C      [ 5] 6560 	lbra	L341	;
   28AF                    6561 L329:
                           6562 ;----- asm -----
                           6563 ; 1967 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6564 	; #ENR#[1413]if (cz == 50) goto doelevator;
                           6565 ;--- end asm ---
   28AF F6 C9 67      [ 5] 6566 	ldb	_cz	;, cz
   28B2 C1 32         [ 2] 6567 	cmpb	#50	;cmpqi:	;,
   28B4 10 27 FE A6   [ 6] 6568 	lbeq	L338	;
                           6569 ;----- asm -----
                           6570 ; 1971 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6571 	; #ENR#[1416]printmessage();
                           6572 ;--- end asm ---
   28B8 8E 1F 6B      [ 3] 6573 	ldx	#LC156	;,
   28BB BD 5B 7A      [ 8] 6574 	jsr	_printMessage
                           6575 ;----- asm -----
                           6576 ; 1974 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6577 	; #ENR#[1418]tmp = 0;
                           6578 ;--- end asm ---
   28BE 7F C8 FE      [ 7] 6579 	clr	_tmp	; tmp
                           6580 ;----- asm -----
                           6581 ; 1979 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6582 	; #ENR#[1422]if (sf[levitate]>0)
                           6583 ;--- end asm ---
   28C1 7D C9 70      [ 7] 6584 	tst	_sf+4	; sf
   28C4 10 27 02 F8   [ 6] 6585 	lbeq	L342	;
                           6586 ;----- asm -----
                           6587 ; 1982 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6588 	; #ENR#[1424]printmessage();
                           6589 ;--- end asm ---
   28C8 8E 1F 79      [ 3] 6590 	ldx	#LC157	;,
   28CB BD 5B 7A      [ 8] 6591 	jsr	_printMessage
                           6592 ;----- asm -----
                           6593 ; 1984 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6594 	; #ENR#[1425]tmp = 1;
                           6595 ;--- end asm ---
   28CE C6 01         [ 2] 6596 	ldb	#1	;,
   28D0 F7 C8 FE      [ 5] 6597 	stb	_tmp	;, tmp
   28D3                    6598 L343:
                           6599 ;----- asm -----
                           6600 ; 1995 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6601 	; #ENR#[1434]if (tmp == 1)
                           6602 ;--- end asm ---
   28D3 F6 C8 FE      [ 5] 6603 	ldb	_tmp	;, tmp
   28D6 C1 01         [ 2] 6604 	cmpb	#1	;cmpqi:	;,
   28D8 10 27 03 56   [ 6] 6605 	lbeq	L461	;
                           6606 ;----- asm -----
                           6607 ; 2025 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6608 	; #ENR#[1454]printmessage();
                           6609 ;--- end asm ---
   28DC 8E 1F BA      [ 3] 6610 	ldx	#LC160	;,
   28DF BD 5B 7A      [ 8] 6611 	jsr	_printMessage
                           6612 ;----- asm -----
                           6613 ; 2027 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6614 	; #ENR#[1455]initsoundno = sound_pit;
                           6615 ;--- end asm ---
   28E2 C6 07         [ 2] 6616 	ldb	#7	;,
   28E4 F7 C8 A6      [ 5] 6617 	stb	_initSoundNo	;, initSoundNo
                           6618 ;----- asm -----
                           6619 ; 2029 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6620 	; #ENR#[1456]l = 3;
                           6621 ;--- end asm ---
   28E7 C6 03         [ 2] 6622 	ldb	#3	;,
   28E9 F7 C9 80      [ 5] 6623 	stb	_l	;, l
                           6624 ;----- asm -----
                           6625 ; 2036 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6626 	; #ENR#[1462]pause(small_pause);
                           6627 ;--- end asm ---
   28EC C6 4B         [ 2] 6628 	ldb	#75	;,
   28EE BD 3E 21      [ 8] 6629 	jsr	_pause
                           6630 ;----- asm -----
                           6631 ; 2038 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6632 	; #ENR#[1463]clearmessage();
                           6633 ;--- end asm ---
   28F1 7F C9 87      [ 7] 6634 	clr	_msgLine	; msgLine
                           6635 ;----- asm -----
                           6636 ; 2041 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6637 	; #ENR#[1465]tmp = (signed int)randmax(l*3)+1;
                           6638 ;--- end asm ---
   28F4 F6 C9 80      [ 5] 6639 	ldb	_l	; tmp163, l
   28F7 58            [ 2] 6640 	aslb	; tmp163
   28F8 FB C9 80      [ 5] 6641 	addb	_l	; tmp163, l
   28FB BD 5F 2A      [ 8] 6642 	jsr	_RandMax
   28FE 5C            [ 2] 6643 	incb	; tmp.125
   28FF F7 C8 FE      [ 5] 6644 	stb	_tmp	; tmp.125, tmp
                           6645 ;----- asm -----
                           6646 ; 2043 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6647 	; #ENR#[1466]_fi_s(, ((unsigned int) tmp));
                           6648 ;--- end asm ---
   2902 8E 1F C8      [ 3] 6649 	ldx	#LC161	;,
   2905 BD 5C C6      [ 8] 6650 	jsr	__fi_s
                           6651 ;----- asm -----
                           6652 ; 2045 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6653 	; #ENR#[1467]printmessage(stringbuffer40);
                           6654 ;--- end asm ---
   2908 8E C8 BF      [ 3] 6655 	ldx	#_stringBuffer40	;,
   290B BD 5B 7A      [ 8] 6656 	jsr	_printMessage
                           6657 ;----- asm -----
                           6658 ; 2047 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6659 	; #ENR#[1468]ch=ch-tmp;
                           6660 ;--- end asm ---
   290E F6 C8 FE      [ 5] 6661 	ldb	_tmp	;, tmp
   2911 1D            [ 2] 6662 	sex		;extendqihi2: R:b -> R:d	;,
   2912 1F 01         [ 6] 6663 	tfr	d,x	;, tmp
   2914 FC C9 63      [ 6] 6664 	ldd	_ch	; ch, ch
   2917 34 10         [ 6] 6665 	pshs	x	;subhi: R:d -= R:x	; tmp, ch.128
   2919 A3 E1         [ 9] 6666 	subd	,s++	; ch.128
   291B FD C9 63      [ 6] 6667 	std	_ch	; ch.128, ch
                           6668 ;----- asm -----
                           6669 ; 2049 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6670 	; #ENR#[1469]if (ch<=0)
                           6671 ;--- end asm ---
   291E 10 83 00 00   [ 5] 6672 	cmpd	#0	; ch.128
   2922 10 2F 03 89   [ 6] 6673 	lble	L462	;
                           6674 ;----- asm -----
                           6675 ; 2058 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6676 	; #ENR#[1475]cz = cz + 1;
                           6677 ;--- end asm ---
   2926 7C C9 67      [ 7] 6678 	inc	_cz	; cz
                           6679 ;----- asm -----
                           6680 ; 2060 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6681 	; #ENR#[1476]fillmap =go_redraw;
                           6682 ;--- end asm ---
   2929 C6 7F         [ 2] 6683 	ldb	#127	;,
   292B F7 C8 FC      [ 5] 6684 	stb	_fillMap	;, fillMap
                           6685 ;----- asm -----
                           6686 ; 2062 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6687 	; #ENR#[1477]return return_new_turn;
                           6688 ;--- end asm ---
   292E C6 01         [ 2] 6689 	ldb	#1	; D.3848,
   2930 16 FC 18      [ 5] 6690 	lbra	L341	;
   2933                    6691 L450:
   2933 F6 C8 A0      [ 5] 6692 	ldb	_above	;, above
   2936 C1 04         [ 2] 6693 	cmpb	#4	;cmpqi:	;,
   2938 10 26 FD 0F   [ 6] 6694 	lbne	L375	;
                           6695 ;----- asm -----
                           6696 ; 2214 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6697 	; #ENR#[1590]cz = cz - 1;
                           6698 ;--- end asm ---
   293C 7A C9 67      [ 7] 6699 	dec	_cz	; cz
                           6700 ;----- asm -----
                           6701 ; 2216 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6702 	; #ENR#[1591]printmessage();
                           6703 ;--- end asm ---
   293F 8E 20 B2      [ 3] 6704 	ldx	#LC170	;,
   2942 BD 5B 7A      [ 8] 6705 	jsr	_printMessage
                           6706 ;----- asm -----
                           6707 ; 2218 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6708 	; #ENR#[1592]pause(small_pause);
                           6709 ;--- end asm ---
   2945 C6 4B         [ 2] 6710 	ldb	#75	;,
   2947 BD 3E 21      [ 8] 6711 	jsr	_pause
                           6712 ;----- asm -----
                           6713 ; 2220 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6714 	; #ENR#[1593]fillmap = go_redraw;
                           6715 ;--- end asm ---
   294A C6 7F         [ 2] 6716 	ldb	#127	;,
   294C F7 C8 FC      [ 5] 6717 	stb	_fillMap	;, fillMap
                           6718 ;----- asm -----
                           6719 ; 2225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6720 	; #ENR#[1597]if (((signed int) cz)<=0)
                           6721 ;--- end asm ---
   294F 7D C9 67      [ 7] 6722 	tst	_cz	; cz
   2952 10 2F 04 7D   [ 6] 6723 	lble	L463	;
                           6724 ;----- asm -----
                           6725 ; 2234 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6726 	; #ENR#[1603]return return_new_turn;
                           6727 ;--- end asm ---
   2956 E6 E8 25      [ 5] 6728 	ldb	37,s	; D.3848, d
   2959 16 FB EF      [ 5] 6729 	lbra	L341	;
   295C                    6730 L449:
   295C E6 A4         [ 4] 6731 	ldb	,y	;,* prephitmp.509
   295E C1 04         [ 2] 6732 	cmpb	#4	;cmpqi:	;,
   2960 10 26 FC E7   [ 6] 6733 	lbne	L375	;
                           6734 ;----- asm -----
                           6735 ; 2198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6736 	; #ENR#[1579]cz = cz + 1;
                           6737 ;--- end asm ---
   2964 7C C9 67      [ 7] 6738 	inc	_cz	; cz
                           6739 ;----- asm -----
                           6740 ; 2200 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6741 	; #ENR#[1580]printmessage();
                           6742 ;--- end asm ---
   2967 8E 20 AD      [ 3] 6743 	ldx	#LC169	;,
   296A BD 5B 7A      [ 8] 6744 	jsr	_printMessage
                           6745 ;----- asm -----
                           6746 ; 2202 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6747 	; #ENR#[1581]pause(small_pause);
                           6748 ;--- end asm ---
   296D C6 4B         [ 2] 6749 	ldb	#75	;,
   296F BD 3E 21      [ 8] 6750 	jsr	_pause
                           6751 ;----- asm -----
                           6752 ; 2204 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6753 	; #ENR#[1582]fillmap = go_redraw;
                           6754 ;--- end asm ---
   2972 C6 7F         [ 2] 6755 	ldb	#127	;,
   2974 F7 C8 FC      [ 5] 6756 	stb	_fillMap	;, fillMap
                           6757 ;----- asm -----
                           6758 ; 2206 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6759 	; #ENR#[1583]return return_new_turn;
                           6760 ;--- end asm ---
   2977 C6 01         [ 2] 6761 	ldb	#1	; D.3848,
   2979 16 FB CF      [ 5] 6762 	lbra	L341	;
   297C                    6763 L459:
   297C C6 32         [ 2] 6764 	ldb	#50	;,
   297E F7 C9 67      [ 5] 6765 	stb	_cz	;, cz
   2981 16 FF 05      [ 5] 6766 	lbra	L356	;
   2984                    6767 L446:
                           6768 ;----- asm -----
                           6769 ; 2182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6770 	; #ENR#[1567]printmessage();
                           6771 ;--- end asm ---
   2984 8E 20 77      [ 3] 6772 	ldx	#LC167	;,
   2987 BD 5B 7A      [ 8] 6773 	jsr	_printMessage
   298A 16 FC 0A      [ 5] 6774 	lbra	L362	;
   298D                    6775 L453:
                           6776 ;----- asm -----
                           6777 ; 2335 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6778 	; #ENR#[1676]return return_nothing;
                           6779 ;--- end asm ---
   298D 5F            [ 2] 6780 	clrb	; D.3848
   298E 16 FB BA      [ 5] 6781 	lbra	L341	;
   2991                    6782 L456:
                           6783 ;----- asm -----
                           6784 ; 2642 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6785 	; #ENR#[1889]printmessage();
                           6786 ;--- end asm ---
   2991 8E 23 58      [ 3] 6787 	ldx	#LC201	;,
   2994 BD 5B 7A      [ 8] 6788 	jsr	_printMessage
                           6789 ;----- asm -----
                           6790 ; 2647 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6791 	; #ENR#[1893]if (randmax(100) >40)
                           6792 ;--- end asm ---
   2997 C6 64         [ 2] 6793 	ldb	#100	;,
   2999 BD 5F 2A      [ 8] 6794 	jsr	_RandMax
   299C C1 28         [ 2] 6795 	cmpb	#40	;cmpqi:	; D.3964,
   299E 10 23 04 6B   [ 6] 6796 	lbls	L407	;
                           6797 ;----- asm -----
                           6798 ; 2650 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6799 	; #ENR#[1895]thronenothinghappens:
                           6800 ;--- end asm ---
   29A2                    6801 L408:
                           6802 ;----- asm -----
                           6803 ; 2654 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6804 	; #ENR#[1898]printmessage();
                           6805 ;--- end asm ---
   29A2 8E 23 5C      [ 3] 6806 	ldx	#LC202	;,
   29A5 BD 5B 7A      [ 8] 6807 	jsr	_printMessage
                           6808 ;----- asm -----
                           6809 ; 2656 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6810 	; #ENR#[1899]return return_pause;
                           6811 ;--- end asm ---
   29A8 C6 07         [ 2] 6812 	ldb	#7	; D.3848,
   29AA 16 FB 9E      [ 5] 6813 	lbra	L341	;
   29AD                    6814 L385:
   29AD C6 01         [ 2] 6815 	ldb	#1	;,
   29AF F7 C9 7E      [ 5] 6816 	stb	_un	;, un
   29B2                    6817 L387:
                           6818 ;----- asm -----
                           6819 ; 2362 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6820 	; #ENR#[1693]#endif
                           6821 ; 2364 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6822 	; #ENR#[1694]return return_spanw_monster;
                           6823 ;--- end asm ---
   29B2 C6 1E         [ 2] 6824 	ldb	#30	; D.3848,
   29B4 16 FB 94      [ 5] 6825 	lbra	L341	;
   29B7                    6826 L454:
                           6827 ;----- asm -----
                           6828 ; 1909 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6829 	; #ENR#[1377]above = 4;
                           6830 ;--- end asm ---
   29B7 C6 04         [ 2] 6831 	ldb	#4	;,
   29B9 F7 C8 A0      [ 5] 6832 	stb	_above	;, above
                           6833 ;----- asm -----
                           6834 ; 1911 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6835 	; #ENR#[1378]goto dostaircase;
                           6836 ;--- end asm ---
   29BC 16 FB B0      [ 5] 6837 	lbra	L326	;
   29BF                    6838 L424:
                           6839 ;----- asm -----
                           6840 ; 2876 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6841 	; #ENR#[2055]unsigned int cb = 0;
                           6842 ; 2878 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6843 	; #ENR#[2056]boxagain:
                           6844 ; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6845 	; #ENR#[2057]clearmessage();
                           6846 ;--- end asm ---
   29BF 7F C9 87      [ 7] 6847 	clr	_msgLine	; msgLine
                           6848 ;----- asm -----
                           6849 ; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6850 	; #ENR#[2058]printmessage();
                           6851 ;--- end asm ---
   29C2 8E 24 80      [ 3] 6852 	ldx	#LC215	;,
   29C5 BD 5B 7A      [ 8] 6853 	jsr	_printMessage
                           6854 ;----- asm -----
                           6855 ; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6856 	; #ENR#[2059]printmessage();
                           6857 ;--- end asm ---
   29C8 8E 24 9A      [ 3] 6858 	ldx	#LC216	;,
   29CB BD 5B 7A      [ 8] 6859 	jsr	_printMessage
                           6860 ;----- asm -----
                           6861 ; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6862 	; #ENR#[2060]printmessage();
                           6863 ;--- end asm ---
   29CE 8E 24 BF      [ 3] 6864 	ldx	#LC217	;,
   29D1 BD 5B 7A      [ 8] 6865 	jsr	_printMessage
                           6866 ;----- asm -----
                           6867 ; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6868 	; #ENR#[2062]pause(small_pause);
                           6869 ;--- end asm ---
   29D4 C6 4B         [ 2] 6870 	ldb	#75	;,
   29D6 BD 3E 21      [ 8] 6871 	jsr	_pause
                           6872 ;----- asm -----
                           6873 ; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6874 	; #ENR#[2066]tmp = (signed int) testforinput(0);
                           6875 ;--- end asm ---
   29D9 5F            [ 2] 6876 	clrb	;
   29DA BD 06 0D      [ 8] 6877 	jsr	_testForInput
   29DD F7 C8 FE      [ 5] 6878 	stb	_tmp	; tmp.177, tmp
                           6879 ;----- asm -----
                           6880 ; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6881 	; #ENR#[2067]clearmessage();
                           6882 ;--- end asm ---
   29E0 7F C9 87      [ 7] 6883 	clr	_msgLine	; msgLine
                           6884 ;----- asm -----
                           6885 ; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6886 	; #ENR#[2068]resetbuttons();
                           6887 ;--- end asm ---
   29E3 7F C8 11      [ 7] 6888 	clr	_Vec_Buttons	; Vec_Buttons
                           6889 ;----- asm -----
                           6890 ; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6891 	; #ENR#[2069]resetjoystick();
                           6892 ;--- end asm ---
   29E6 7F C8 1C      [ 7] 6893 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   29E9 7F C8 1B      [ 7] 6894 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           6895 ;----- asm -----
                           6896 ; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6897 	; #ENR#[2070]if (tmp<5)
                           6898 ;--- end asm ---
   29EC C1 04         [ 2] 6899 	cmpb	#4	;cmpqi:	; tmp.177,
   29EE 10 2F 04 D0   [ 6] 6900 	lble	L425	;
                           6901 ;----- asm -----
                           6902 ; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6903 	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
                           6904 ;--- end asm ---
   29F2 CB FB         [ 2] 6905 	addb	#-5	; tmp.177,
   29F4 1D            [ 2] 6906 	sex		;extendqihi2: R:b -> R:d	; tmp.177, tmp294
   29F5 58            [ 2] 6907 	aslb	;
   29F6 49            [ 2] 6908 	rola	;
   29F7 1F 01         [ 6] 6909 	tfr	d,x	; tmp294, tmp296
   29F9 AE 89 04 A5   [ 9] 6910 	ldx	_boxColors,x	;, boxColors
   29FD BD 5B 7A      [ 8] 6911 	jsr	_printMessage
                           6912 ;----- asm -----
                           6913 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6914 	; #ENR#[2091]if (box[cb] != tmp-5)
                           6915 ;--- end asm ---
   2A00 F6 C8 FE      [ 5] 6916 	ldb	_tmp	; tmp299, tmp
   2A03 CB FB         [ 2] 6917 	addb	#-5	; tmp299,
   2A05 F1 C9 5F      [ 5] 6918 	cmpb	_box	;cmpqi:(R)	; tmp299, box
   2A08 10 26 04 85   [ 6] 6919 	lbne	L426	;
                           6920 ;----- asm -----
                           6921 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6922 	; #ENR#[2113]pause(small_pause);
                           6923 ;--- end asm ---
   2A0C C6 4B         [ 2] 6924 	ldb	#75	;,
   2A0E BD 3E 21      [ 8] 6925 	jsr	_pause
                           6926 ;----- asm -----
                           6927 ; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6928 	; #ENR#[2114]cb++;
                           6929 ; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6930 	; #ENR#[2115]if (cb <4) goto boxagain;
                           6931 ; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6932 	; #ENR#[2057]clearmessage();
                           6933 ;--- end asm ---
   2A11 7F C9 87      [ 7] 6934 	clr	_msgLine	; msgLine
                           6935 ;----- asm -----
                           6936 ; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6937 	; #ENR#[2058]printmessage();
                           6938 ;--- end asm ---
   2A14 8E 24 80      [ 3] 6939 	ldx	#LC215	;,
   2A17 BD 5B 7A      [ 8] 6940 	jsr	_printMessage
                           6941 ;----- asm -----
                           6942 ; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6943 	; #ENR#[2059]printmessage();
                           6944 ;--- end asm ---
   2A1A 8E 24 9A      [ 3] 6945 	ldx	#LC216	;,
   2A1D BD 5B 7A      [ 8] 6946 	jsr	_printMessage
                           6947 ;----- asm -----
                           6948 ; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6949 	; #ENR#[2060]printmessage();
                           6950 ;--- end asm ---
   2A20 8E 24 BF      [ 3] 6951 	ldx	#LC217	;,
   2A23 BD 5B 7A      [ 8] 6952 	jsr	_printMessage
                           6953 ;----- asm -----
                           6954 ; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6955 	; #ENR#[2062]pause(small_pause);
                           6956 ;--- end asm ---
   2A26 C6 4B         [ 2] 6957 	ldb	#75	;,
   2A28 BD 3E 21      [ 8] 6958 	jsr	_pause
                           6959 ;----- asm -----
                           6960 ; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6961 	; #ENR#[2066]tmp = (signed int) testforinput(0);
                           6962 ;--- end asm ---
   2A2B 5F            [ 2] 6963 	clrb	;
   2A2C BD 06 0D      [ 8] 6964 	jsr	_testForInput
   2A2F F7 C8 FE      [ 5] 6965 	stb	_tmp	; tmp.622, tmp
                           6966 ;----- asm -----
                           6967 ; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6968 	; #ENR#[2067]clearmessage();
                           6969 ;--- end asm ---
   2A32 7F C9 87      [ 7] 6970 	clr	_msgLine	; msgLine
                           6971 ;----- asm -----
                           6972 ; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6973 	; #ENR#[2068]resetbuttons();
                           6974 ;--- end asm ---
   2A35 7F C8 11      [ 7] 6975 	clr	_Vec_Buttons	; Vec_Buttons
                           6976 ;----- asm -----
                           6977 ; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6978 	; #ENR#[2069]resetjoystick();
                           6979 ;--- end asm ---
   2A38 7F C8 1C      [ 7] 6980 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2A3B 7F C8 1B      [ 7] 6981 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           6982 ;----- asm -----
                           6983 ; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6984 	; #ENR#[2070]if (tmp<5)
                           6985 ;--- end asm ---
   2A3E C1 04         [ 2] 6986 	cmpb	#4	;cmpqi:	; tmp.622,
   2A40 10 2F 04 7E   [ 6] 6987 	lble	L425	;
                           6988 ;----- asm -----
                           6989 ; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           6990 	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
                           6991 ;--- end asm ---
   2A44 CB FB         [ 2] 6992 	addb	#-5	; tmp.622,
   2A46 1D            [ 2] 6993 	sex		;extendqihi2: R:b -> R:d	; tmp.622, tmp301
   2A47 58            [ 2] 6994 	aslb	;
   2A48 49            [ 2] 6995 	rola	;
   2A49 1F 01         [ 6] 6996 	tfr	d,x	; tmp301, tmp303
   2A4B AE 89 04 A5   [ 9] 6997 	ldx	_boxColors,x	;, boxColors
   2A4F BD 5B 7A      [ 8] 6998 	jsr	_printMessage
                           6999 ;----- asm -----
                           7000 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7001 	; #ENR#[2091]if (box[cb] != tmp-5)
                           7002 ;--- end asm ---
   2A52 F6 C8 FE      [ 5] 7003 	ldb	_tmp	; tmp306, tmp
   2A55 CB FB         [ 2] 7004 	addb	#-5	; tmp306,
   2A57 F1 C9 60      [ 5] 7005 	cmpb	_box+1	;cmpqi:(R)	; tmp306, box
   2A5A 10 26 04 33   [ 6] 7006 	lbne	L426	;
                           7007 ;----- asm -----
                           7008 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7009 	; #ENR#[2113]pause(small_pause);
                           7010 ;--- end asm ---
   2A5E C6 4B         [ 2] 7011 	ldb	#75	;,
   2A60 BD 3E 21      [ 8] 7012 	jsr	_pause
                           7013 ;----- asm -----
                           7014 ; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7015 	; #ENR#[2114]cb++;
                           7016 ; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7017 	; #ENR#[2115]if (cb <4) goto boxagain;
                           7018 ; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7019 	; #ENR#[2057]clearmessage();
                           7020 ;--- end asm ---
   2A63 7F C9 87      [ 7] 7021 	clr	_msgLine	; msgLine
                           7022 ;----- asm -----
                           7023 ; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7024 	; #ENR#[2058]printmessage();
                           7025 ;--- end asm ---
   2A66 8E 24 80      [ 3] 7026 	ldx	#LC215	;,
   2A69 BD 5B 7A      [ 8] 7027 	jsr	_printMessage
                           7028 ;----- asm -----
                           7029 ; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7030 	; #ENR#[2059]printmessage();
                           7031 ;--- end asm ---
   2A6C 8E 24 9A      [ 3] 7032 	ldx	#LC216	;,
   2A6F BD 5B 7A      [ 8] 7033 	jsr	_printMessage
                           7034 ;----- asm -----
                           7035 ; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7036 	; #ENR#[2060]printmessage();
                           7037 ;--- end asm ---
   2A72 8E 24 BF      [ 3] 7038 	ldx	#LC217	;,
   2A75 BD 5B 7A      [ 8] 7039 	jsr	_printMessage
                           7040 ;----- asm -----
                           7041 ; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7042 	; #ENR#[2062]pause(small_pause);
                           7043 ;--- end asm ---
   2A78 C6 4B         [ 2] 7044 	ldb	#75	;,
   2A7A BD 3E 21      [ 8] 7045 	jsr	_pause
                           7046 ;----- asm -----
                           7047 ; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7048 	; #ENR#[2066]tmp = (signed int) testforinput(0);
                           7049 ;--- end asm ---
   2A7D 5F            [ 2] 7050 	clrb	;
   2A7E BD 06 0D      [ 8] 7051 	jsr	_testForInput
   2A81 F7 C8 FE      [ 5] 7052 	stb	_tmp	; tmp.635, tmp
                           7053 ;----- asm -----
                           7054 ; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7055 	; #ENR#[2067]clearmessage();
                           7056 ;--- end asm ---
   2A84 7F C9 87      [ 7] 7057 	clr	_msgLine	; msgLine
                           7058 ;----- asm -----
                           7059 ; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7060 	; #ENR#[2068]resetbuttons();
                           7061 ;--- end asm ---
   2A87 7F C8 11      [ 7] 7062 	clr	_Vec_Buttons	; Vec_Buttons
                           7063 ;----- asm -----
                           7064 ; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7065 	; #ENR#[2069]resetjoystick();
                           7066 ;--- end asm ---
   2A8A 7F C8 1C      [ 7] 7067 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2A8D 7F C8 1B      [ 7] 7068 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           7069 ;----- asm -----
                           7070 ; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7071 	; #ENR#[2070]if (tmp<5)
                           7072 ;--- end asm ---
   2A90 C1 04         [ 2] 7073 	cmpb	#4	;cmpqi:	; tmp.635,
   2A92 10 2F 04 2C   [ 6] 7074 	lble	L425	;
                           7075 ;----- asm -----
                           7076 ; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7077 	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
                           7078 ;--- end asm ---
   2A96 CB FB         [ 2] 7079 	addb	#-5	; tmp.635,
   2A98 1D            [ 2] 7080 	sex		;extendqihi2: R:b -> R:d	; tmp.635, tmp308
   2A99 58            [ 2] 7081 	aslb	;
   2A9A 49            [ 2] 7082 	rola	;
   2A9B 1F 01         [ 6] 7083 	tfr	d,x	; tmp308, tmp310
   2A9D AE 89 04 A5   [ 9] 7084 	ldx	_boxColors,x	;, boxColors
   2AA1 BD 5B 7A      [ 8] 7085 	jsr	_printMessage
                           7086 ;----- asm -----
                           7087 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7088 	; #ENR#[2091]if (box[cb] != tmp-5)
                           7089 ;--- end asm ---
   2AA4 F6 C8 FE      [ 5] 7090 	ldb	_tmp	; tmp313, tmp
   2AA7 CB FB         [ 2] 7091 	addb	#-5	; tmp313,
   2AA9 F1 C9 61      [ 5] 7092 	cmpb	_box+2	;cmpqi:(R)	; tmp313, box
   2AAC 10 26 03 E1   [ 6] 7093 	lbne	L426	;
                           7094 ;----- asm -----
                           7095 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7096 	; #ENR#[2113]pause(small_pause);
                           7097 ;--- end asm ---
   2AB0 C6 4B         [ 2] 7098 	ldb	#75	;,
   2AB2 BD 3E 21      [ 8] 7099 	jsr	_pause
                           7100 ;----- asm -----
                           7101 ; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7102 	; #ENR#[2114]cb++;
                           7103 ; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7104 	; #ENR#[2115]if (cb <4) goto boxagain;
   2AB5                    7105 L427:
                           7106 ; 2880 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7107 	; #ENR#[2057]clearmessage();
                           7108 ;--- end asm ---
   2AB5 7F C9 87      [ 7] 7109 	clr	_msgLine	; msgLine
                           7110 ;----- asm -----
                           7111 ; 2882 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7112 	; #ENR#[2058]printmessage();
                           7113 ;--- end asm ---
   2AB8 8E 24 80      [ 3] 7114 	ldx	#LC215	;,
   2ABB BD 5B 7A      [ 8] 7115 	jsr	_printMessage
                           7116 ;----- asm -----
                           7117 ; 2884 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7118 	; #ENR#[2059]printmessage();
                           7119 ;--- end asm ---
   2ABE 8E 24 9A      [ 3] 7120 	ldx	#LC216	;,
   2AC1 BD 5B 7A      [ 8] 7121 	jsr	_printMessage
                           7122 ;----- asm -----
                           7123 ; 2886 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7124 	; #ENR#[2060]printmessage();
                           7125 ;--- end asm ---
   2AC4 8E 24 BF      [ 3] 7126 	ldx	#LC217	;,
   2AC7 BD 5B 7A      [ 8] 7127 	jsr	_printMessage
                           7128 ;----- asm -----
                           7129 ; 2889 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7130 	; #ENR#[2062]pause(small_pause);
                           7131 ;--- end asm ---
   2ACA C6 4B         [ 2] 7132 	ldb	#75	;,
   2ACC BD 3E 21      [ 8] 7133 	jsr	_pause
                           7134 ;----- asm -----
                           7135 ; 2894 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7136 	; #ENR#[2066]tmp = (signed int) testforinput(0);
                           7137 ;--- end asm ---
   2ACF 5F            [ 2] 7138 	clrb	;
   2AD0 BD 06 0D      [ 8] 7139 	jsr	_testForInput
   2AD3 F7 C8 FE      [ 5] 7140 	stb	_tmp	; tmp.597, tmp
                           7141 ;----- asm -----
                           7142 ; 2896 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7143 	; #ENR#[2067]clearmessage();
                           7144 ;--- end asm ---
   2AD6 7F C9 87      [ 7] 7145 	clr	_msgLine	; msgLine
                           7146 ;----- asm -----
                           7147 ; 2898 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7148 	; #ENR#[2068]resetbuttons();
                           7149 ;--- end asm ---
   2AD9 7F C8 11      [ 7] 7150 	clr	_Vec_Buttons	; Vec_Buttons
                           7151 ;----- asm -----
                           7152 ; 2900 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7153 	; #ENR#[2069]resetjoystick();
                           7154 ;--- end asm ---
   2ADC 7F C8 1C      [ 7] 7155 	clr	_Vec_Joy_1_Y	; Vec_Joy_1_Y
   2ADF 7F C8 1B      [ 7] 7156 	clr	_Vec_Joy_1_X	; Vec_Joy_1_X
                           7157 ;----- asm -----
                           7158 ; 2902 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7159 	; #ENR#[2070]if (tmp<5)
                           7160 ;--- end asm ---
   2AE2 C1 04         [ 2] 7161 	cmpb	#4	;cmpqi:	; tmp.597,
   2AE4 10 2F 03 DA   [ 6] 7162 	lble	L425	;
                           7163 ;----- asm -----
                           7164 ; 2920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7165 	; #ENR#[2085]printmessage((char *) boxcolors[tmp-5]);
                           7166 ;--- end asm ---
   2AE8 CB FB         [ 2] 7167 	addb	#-5	; tmp.597,
   2AEA 1D            [ 2] 7168 	sex		;extendqihi2: R:b -> R:d	; tmp.597, tmp315
   2AEB 58            [ 2] 7169 	aslb	;
   2AEC 49            [ 2] 7170 	rola	;
   2AED 1F 01         [ 6] 7171 	tfr	d,x	; tmp315, tmp317
   2AEF AE 89 04 A5   [ 9] 7172 	ldx	_boxColors,x	;, boxColors
   2AF3 BD 5B 7A      [ 8] 7173 	jsr	_printMessage
                           7174 ;----- asm -----
                           7175 ; 2927 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7176 	; #ENR#[2091]if (box[cb] != tmp-5)
                           7177 ;--- end asm ---
   2AF6 F6 C8 FE      [ 5] 7178 	ldb	_tmp	; tmp320, tmp
   2AF9 CB FB         [ 2] 7179 	addb	#-5	; tmp320,
   2AFB F1 C9 62      [ 5] 7180 	cmpb	_box+3	;cmpqi:(R)	; tmp320, box
   2AFE 10 26 03 8F   [ 6] 7181 	lbne	L426	;
                           7182 ;----- asm -----
                           7183 ; 2958 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7184 	; #ENR#[2113]pause(small_pause);
                           7185 ;--- end asm ---
   2B02 C6 4B         [ 2] 7186 	ldb	#75	;,
   2B04 BD 3E 21      [ 8] 7187 	jsr	_pause
                           7188 ;----- asm -----
                           7189 ; 2960 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7190 	; #ENR#[2114]cb++;
                           7191 ; 2962 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7192 	; #ENR#[2115]if (cb <4) goto boxagain;
                           7193 ; 2967 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7194 	; #ENR#[2119]clearmessage();
                           7195 ;--- end asm ---
   2B07 7F C9 87      [ 7] 7196 	clr	_msgLine	; msgLine
                           7197 ;----- asm -----
                           7198 ; 2969 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7199 	; #ENR#[2120]printmessage();
                           7200 ;--- end asm ---
   2B0A 8E 24 F9      [ 3] 7201 	ldx	#LC220	;,
   2B0D BD 5B 7A      [ 8] 7202 	jsr	_printMessage
                           7203 ;----- asm -----
                           7204 ; 2971 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7205 	; #ENR#[2121]printmessage();
                           7206 ;--- end asm ---
   2B10 8E 25 04      [ 3] 7207 	ldx	#LC221	;,
   2B13 BD 5B 7A      [ 8] 7208 	jsr	_printMessage
                           7209 ;----- asm -----
                           7210 ; 2977 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7211 	; #ENR#[2126]initbox();
                           7212 ;--- end asm ---
   2B16 BD 3E 42      [ 8] 7213 	jsr	_initBox
                           7214 ;----- asm -----
                           7215 ; 2979 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7216 	; #ENR#[2127]lltmp =(signed long long int) (ull(randmax(20)+1) * ull(1000) * ull(cz)* ull(cz) );
                           7217 ;--- end asm ---
   2B19 C6 14         [ 2] 7218 	ldb	#20	;,
   2B1B BD 5F 2A      [ 8] 7219 	jsr	_RandMax
   2B1E E7 E8 23      [ 5] 7220 	stb	35,s	;, D.4015
   2B21 F6 C9 67      [ 5] 7221 	ldb	_cz	;, cz
   2B24 4F            [ 2] 7222 	clra		;zero_extendqihi: R:b -> R:d	;,
   2B25 1F 01         [ 6] 7223 	tfr	d,x	;, cz
   2B27 32 78         [ 5] 7224 	leas	-8,s	;,,
   2B29 CC 00 00      [ 3] 7225 	ldd	#0	;,
   2B2C ED 64         [ 6] 7226 	std	4,s	;,
   2B2E AF 66         [ 6] 7227 	stx	6,s	; cz,
   2B30 ED E4         [ 5] 7228 	std	,s	;,
   2B32 AF 62         [ 6] 7229 	stx	2,s	; cz,
   2B34 30 E8 3E      [ 5] 7230 	leax	62,s	;,,
   2B37 BD 79 4C      [ 8] 7231 	jsr	___mulsi3
   2B3A CC 00 00      [ 3] 7232 	ldd	#0	;,
   2B3D ED 64         [ 6] 7233 	std	4,s	;,
   2B3F 8E 03 E8      [ 3] 7234 	ldx	#1000	;,
   2B42 AF 66         [ 6] 7235 	stx	6,s	;,
   2B44 10 AE E8 3E   [ 7] 7236 	ldy	62,s	;,
   2B48 10 AF E4      [ 6] 7237 	sty	,s	;,
   2B4B EE E8 40      [ 6] 7238 	ldu	64,s	;,
   2B4E EF 62         [ 6] 7239 	stu	2,s	;,
   2B50 30 E8 3A      [ 5] 7240 	leax	58,s	;,,
   2B53 BD 79 4C      [ 8] 7241 	jsr	___mulsi3
   2B56 6C E8 2B      [ 7] 7242 	inc	43,s	; D.4015
   2B59 E6 E8 2B      [ 5] 7243 	ldb	43,s	;, D.4015
   2B5C 4F            [ 2] 7244 	clra		;zero_extendqihi: R:b -> R:d	;,
   2B5D 1F 01         [ 6] 7245 	tfr	d,x	;, tmp332
   2B5F CC 00 00      [ 3] 7246 	ldd	#0	;,
   2B62 ED 64         [ 6] 7247 	std	4,s	;,
   2B64 AF 66         [ 6] 7248 	stx	6,s	; tmp332,
   2B66 AE E8 3A      [ 6] 7249 	ldx	58,s	;,
   2B69 AF E4         [ 5] 7250 	stx	,s	;,
   2B6B 10 AE E8 3C   [ 7] 7251 	ldy	60,s	;,
   2B6F 10 AF 62      [ 7] 7252 	sty	2,s	;,
   2B72 30 E8 36      [ 5] 7253 	leax	54,s	;,,
   2B75 BD 79 4C      [ 8] 7254 	jsr	___mulsi3
   2B78 32 64         [ 5] 7255 	leas	4,s	;,,
   2B7A AE E8 32      [ 6] 7256 	ldx	50,s	; tmp352,
   2B7D 10 AE E8 34   [ 7] 7257 	ldy	52,s	; tmp353,
   2B81 BF C9 04      [ 6] 7258 	stx	_lltmp	; tmp352, lltmp
   2B84 10 BF C9 06   [ 7] 7259 	sty	_lltmp+2	; tmp353, lltmp
                           7260 ;----- asm -----
                           7261 ; 2981 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7262 	; #ENR#[2128]_fll_s(, ull(lltmp));
                           7263 ;--- end asm ---
   2B88 AF E4         [ 5] 7264 	stx	,s	; tmp352,
   2B8A 10 AF 62      [ 7] 7265 	sty	2,s	; tmp353,
   2B8D 8E 25 21      [ 3] 7266 	ldx	#LC222	;,
   2B90 BD 67 BD      [ 8] 7267 	jsr	__fll_s
                           7268 ;----- asm -----
                           7269 ; 2983 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7270 	; #ENR#[2129]printmessage(stringbuffer40);
                           7271 ;--- end asm ---
   2B93 8E C8 BF      [ 3] 7272 	ldx	#_stringBuffer40	;,
   2B96 BD 5B 7A      [ 8] 7273 	jsr	_printMessage
                           7274 ;----- asm -----
                           7275 ; 2985 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7276 	; #ENR#[2130]gd = gd + ull(lltmp);
                           7277 ;--- end asm ---
   2B99 FC C9 6A      [ 6] 7278 	ldd	_gd+2	;, gd
   2B9C F3 C9 06      [ 7] 7279 	addd	_lltmp+2	;, lltmp
   2B9F FD C9 6A      [ 6] 7280 	std	_gd+2	;, gd
   2BA2 FC C9 68      [ 6] 7281 	ldd	_gd	;, gd
   2BA5 F9 C9 05      [ 5] 7282 	adcb	_lltmp+1	; lltmp
   2BA8 B9 C9 04      [ 5] 7283 	adca	_lltmp	; lltmp
   2BAB FD C9 68      [ 6] 7284 	std	_gd	;, gd
                           7285 ;----- asm -----
                           7286 ; 2987 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7287 	; #ENR#[2131]return return_pause;
                           7288 ;--- end asm ---
   2BAE C6 07         [ 2] 7289 	ldb	#7	; D.3848,
   2BB0 32 64         [ 5] 7290 	leas	4,s	;,,
   2BB2 16 F9 96      [ 5] 7291 	lbra	L341	;
   2BB5                    7292 L455:
                           7293 ;----- asm -----
                           7294 ; 2630 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7295 	; #ENR#[1880]printmessage();
                           7296 ;--- end asm ---
   2BB5 8E 22 AF      [ 3] 7297 	ldx	#LC194	;,
   2BB8 BD 5B 7A      [ 8] 7298 	jsr	_printMessage
                           7299 ;----- asm -----
                           7300 ; 2632 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7301 	; #ENR#[1881]return return_pause;
                           7302 ;--- end asm ---
   2BBB C6 07         [ 2] 7303 	ldb	#7	; D.3848,
   2BBD 16 F9 8B      [ 5] 7304 	lbra	L341	;
   2BC0                    7305 L342:
                           7306 ;----- asm -----
                           7307 ; 1991 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7308 	; #ENR#[1431]if ((unsigned long int )randmax(20)<=  (unsigned long int) s[dex]+inventory[elven_boots])
                           7309 ;--- end asm ---
   2BC0 C6 14         [ 2] 7310 	ldb	#20	;,
   2BC2 BD 5F 2A      [ 8] 7311 	jsr	_RandMax
   2BC5 4F            [ 2] 7312 	clra		;zero_extendqihi: R:b -> R:d	; D.3851,
   2BC6 1F 02         [ 6] 7313 	tfr	d,y	;, D.3851
   2BC8 F6 C9 49      [ 5] 7314 	ldb	_s+4	;, s
   2BCB 4F            [ 2] 7315 	clra		;zero_extendqihi: R:b -> R:d	;,
   2BCC ED E4         [ 5] 7316 	std	,s	;,
                           7317 ; Applied peep: bug1 (gcc does one exg to many)
   2BCE F3 C9 53      [ 7] 7318 	addd	_inventory+8; addhi3,3	;, inventory
   2BD1 1F 01         [ 6] 7319  tfr d,x
                           7320 ; ORG>	tfr	d,x	;, tmp160
                           7321 ; ORG>	exg	d,x	;, tmp160
                           7322 ; ORG>	addd	_inventory+8; addhi3,3	;, inventory
                           7323 ; ORG>	exg	d,x	;, tmp160
   2BD3 34 10         [ 6] 7324 	pshs	x	;cmphi: R:x with R:y	; tmp160, D.3851
   2BD5 10 AC E1      [10] 7325 	cmpy	,s++	;cmphi:	; D.3851
   2BD8 10 22 FC F7   [ 6] 7326 	lbhi	L343	;
   2BDC C6 01         [ 2] 7327 	ldb	#1	;,
   2BDE F7 C8 FE      [ 5] 7328 	stb	_tmp	;, tmp
   2BE1 16 FC EF      [ 5] 7329 	lbra	L343	;
   2BE4                    7330 L399:
                           7331 ;----- asm -----
                           7332 ; 2554 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7333 	; #ENR#[1828]if (randmax(100)<20)
                           7334 ;--- end asm ---
   2BE4 C6 64         [ 2] 7335 	ldb	#100	;,
   2BE6 BD 5F 2A      [ 8] 7336 	jsr	_RandMax
   2BE9 C1 13         [ 2] 7337 	cmpb	#19	;cmpqi:	; D.3956,
   2BEB 10 22 01 32   [ 6] 7338 	lbhi	L400	;
                           7339 ;----- asm -----
                           7340 ; 2559 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7341 	; #ENR#[1832]cz = randmax(50)+1;
                           7342 ;--- end asm ---
   2BEF C6 32         [ 2] 7343 	ldb	#50	;,
   2BF1 BD 5F 2A      [ 8] 7344 	jsr	_RandMax
   2BF4 5C            [ 2] 7345 	incb	; D.3957
   2BF5 F7 C9 67      [ 5] 7346 	stb	_cz	; D.3957, cz
   2BF8                    7347 L401:
                           7348 ;----- asm -----
                           7349 ; 2573 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7350 	; #ENR#[1844]printmessage();
                           7351 ;--- end asm ---
   2BF8 8E 22 CD      [ 3] 7352 	ldx	#LC196	;,
   2BFB BD 5B 7A      [ 8] 7353 	jsr	_printMessage
                           7354 ;----- asm -----
                           7355 ; 2575 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7356 	; #ENR#[1845]initsoundno = sound_cube;
                           7357 ;--- end asm ---
   2BFE C6 01         [ 2] 7358 	ldb	#1	;,
   2C00 F7 C8 A6      [ 5] 7359 	stb	_initSoundNo	;, initSoundNo
                           7360 ;----- asm -----
                           7361 ; 2577 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7362 	; #ENR#[1846]int soundplay = 4;
                           7363 ; 2579 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7364 	; #ENR#[1847]while (1)
                           7365 ;--- end asm ---
   2C03 C6 04         [ 2] 7366 	ldb	#4	;,
   2C05 E7 E8 24      [ 5] 7367 	stb	36,s	;, soundPlay
   2C08 20 0B         [ 3] 7368 	bra	L404	;
   2C0A                    7369 L464:
   2C0A 6A E8 24      [ 7] 7370 	dec	36,s	; soundPlay
                           7371 ;----- asm -----
                           7372 ; 2588 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7373 	; #ENR#[1853]initsoundno = sound_cube;
                           7374 ;--- end asm ---
   2C0D C6 01         [ 2] 7375 	ldb	#1	;,
   2C0F F7 C8 A6      [ 5] 7376 	stb	_initSoundNo	;, initSoundNo
   2C12                    7377 L402:
                           7378 ;----- asm -----
                           7379 ; 2591 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7380 	; #ENR#[1855]displayround();
                           7381 ;--- end asm ---
   2C12 BD 3D AC      [ 8] 7382 	jsr	_displayRound
   2C15                    7383 L404:
                           7384 ;----- asm -----
                           7385 ; 2582 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7386 	; #ENR#[1849]if (sfx_status_1 == 0)
                           7387 ;--- end asm ---
   2C15 F6 CA CF      [ 5] 7388 	ldb	_sfx_status_1	; sfx_status_1.164, sfx_status_1
   2C18 26 F8         [ 3] 7389 	bne	L402	;
                           7390 ;----- asm -----
                           7391 ; 2585 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7392 	; #ENR#[1851]if (soundplay-- == 0) break;
                           7393 ;--- end asm ---
   2C1A 6D E8 24      [ 7] 7394 	tst	36,s	; soundPlay
   2C1D 26 EB         [ 3] 7395 	bne	L464	;
                           7396 ;----- asm -----
                           7397 ; 2595 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7398 	; #ENR#[1858]fillmap = go_redraw;
                           7399 ;--- end asm ---
   2C1F C6 7F         [ 2] 7400 	ldb	#127	;,
   2C21 F7 C8 FC      [ 5] 7401 	stb	_fillMap	;, fillMap
                           7402 ;----- asm -----
                           7403 ; 2597 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7404 	; #ENR#[1859]return return_new_turn;
                           7405 ;--- end asm ---
   2C24 C6 01         [ 2] 7406 	ldb	#1	; D.3848,
   2C26 16 F9 22      [ 5] 7407 	lbra	L341	;
   2C29                    7408 L451:
                           7409 ;----- asm -----
                           7410 ; 2172 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7411 	; #ENR#[1559]printmessage();
                           7412 ;--- end asm ---
   2C29 8E 20 38      [ 3] 7413 	ldx	#LC165	;,
   2C2C BD 5B 7A      [ 8] 7414 	jsr	_printMessage
   2C2F 16 F9 65      [ 5] 7415 	lbra	L362	;
   2C32                    7416 L461:
                           7417 ;----- asm -----
                           7418 ; 2002 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7419 	; #ENR#[1440]printmessage();
                           7420 ;--- end asm ---
   2C32 8E 1F 96      [ 3] 7421 	ldx	#LC158	;,
   2C35 BD 5B 7A      [ 8] 7422 	jsr	_printMessage
                           7423 ;----- asm -----
                           7424 ; 2004 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7425 	; #ENR#[1441]tmp = testforbutton(0);
                           7426 ;--- end asm ---
   2C38 5F            [ 2] 7427 	clrb	;
   2C39 BD 04 F8      [ 8] 7428 	jsr	_testForButton
   2C3C F7 C8 FE      [ 5] 7429 	stb	_tmp	; tmp.122, tmp
                           7430 ;----- asm -----
                           7431 ; 2006 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7432 	; #ENR#[1442]if (tmp == 4)
                           7433 ;--- end asm ---
   2C3F C1 04         [ 2] 7434 	cmpb	#4	;cmpqi:	; tmp.122,
   2C41 10 27 02 23   [ 6] 7435 	lbeq	L465	;
                           7436 ;----- asm -----
                           7437 ; 2018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7438 	; #ENR#[1449]printmessage();
                           7439 ;--- end asm ---
   2C45 8E 17 62      [ 3] 7440 	ldx	#LC134	;,
   2C48 BD 5B 7A      [ 8] 7441 	jsr	_printMessage
                           7442 ;----- asm -----
                           7443 ; 2020 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7444 	; #ENR#[1450]return return_nothing;
                           7445 ;--- end asm ---
   2C4B 5F            [ 2] 7446 	clrb	; D.3848
   2C4C 16 F8 FC      [ 5] 7447 	lbra	L341	;
   2C4F                    7448 L452:
                           7449 ;----- asm -----
                           7450 ; 2267 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7451 	; #ENR#[1628]printmessage();
                           7452 ;--- end asm ---
   2C4F 8E 20 EB      [ 3] 7453 	ldx	#LC174	;,
   2C52 BD 5B 7A      [ 8] 7454 	jsr	_printMessage
                           7455 ;----- asm -----
                           7456 ; 2269 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7457 	; #ENR#[1629]tmp = testforbutton(0);
                           7458 ;--- end asm ---
   2C55 5F            [ 2] 7459 	clrb	;
   2C56 BD 04 F8      [ 8] 7460 	jsr	_testForButton
   2C59 F7 C8 FE      [ 5] 7461 	stb	_tmp	; tmp.141, tmp
                           7462 ;----- asm -----
                           7463 ; 2271 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7464 	; #ENR#[1630]if (tmp != 4) goto nomoneynoworship;
                           7465 ;--- end asm ---
   2C5C C1 04         [ 2] 7466 	cmpb	#4	;cmpqi:	; tmp.141,
   2C5E 10 26 FA 9D   [ 6] 7467 	lbne	L378	;
                           7468 ;----- asm -----
                           7469 ; 2273 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7470 	; #ENR#[1631]clearmessage();
                           7471 ;--- end asm ---
   2C62 7F C9 87      [ 7] 7472 	clr	_msgLine	; msgLine
                           7473 ;----- asm -----
                           7474 ; 2276 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7475 	; #ENR#[1633]ultmp = inputnumber(, 0, 50000);
                           7476 ;--- end asm ---
   2C65 8E C3 50      [ 3] 7477 	ldx	#-15536	;,
   2C68 AF E3         [ 8] 7478 	stx	,--s	;,
   2C6A CC 00 00      [ 3] 7479 	ldd	#0	;,
   2C6D ED E3         [ 8] 7480 	std	,--s	;,
   2C6F 8E 21 05      [ 3] 7481 	ldx	#LC175	;,
   2C72 BD 07 55      [ 8] 7482 	jsr	_inputNumber
   2C75 BF C9 00      [ 6] 7483 	stx	_ultmp	; ultmp.142, ultmp
                           7484 ;----- asm -----
                           7485 ; 2281 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7486 	; #ENR#[1637]if (ull(ultmp)>gd)
                           7487 ;--- end asm ---
   2C78 AF E8 1A      [ 6] 7488 	stx	26,s	; ultmp.142, D.3896
   2C7B CC 00 00      [ 3] 7489 	ldd	#0	;,
   2C7E ED E8 18      [ 6] 7490 	std	24,s	;, D.3896
   2C81 10 BE C9 68   [ 7] 7491 	ldy	_gd	;, gd
   2C85 10 AF E8 1C   [ 7] 7492 	sty	28,s	;, gd.144
   2C89 FE C9 6A      [ 6] 7493 	ldu	_gd+2	;, gd
   2C8C EF E8 1E      [ 6] 7494 	stu	30,s	;, gd.144
   2C8F 32 64         [ 5] 7495 	leas	4,s	;,,
   2C91 EC E8 14      [ 6] 7496 	ldd	20,s	;, D.3896
   2C94 10 AE E8 18   [ 7] 7497 	ldy	24,s	;, gd.144
   2C98 34 20         [ 6] 7498 	pshs	y	;cmphi: R:y with R:d	;,
   2C9A 10 A3 E1      [10] 7499 	cmpd	,s++	;cmphi:	;
   2C9D 10 23 02 7D   [ 6] 7500 	lbls	L466	;
   2CA1                    7501 L432:
                           7502 ;----- asm -----
                           7503 ; 2284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7504 	; #ENR#[1639]printmessage();
                           7505 ;--- end asm ---
   2CA1 8E 21 15      [ 3] 7506 	ldx	#LC176	;,
   2CA4 BD 5B 7A      [ 8] 7507 	jsr	_printMessage
                           7508 ;----- asm -----
                           7509 ; 2286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7510 	; #ENR#[1640]pause(small_pause);
                           7511 ;--- end asm ---
   2CA7 C6 4B         [ 2] 7512 	ldb	#75	;,
   2CA9 BD 3E 21      [ 8] 7513 	jsr	_pause
                           7514 ;----- asm -----
                           7515 ; 2288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7516 	; #ENR#[1641]goto dirtypagantrash;
                           7517 ;--- end asm ---
   2CAC 16 FA 5B      [ 5] 7518 	lbra	L381	;
   2CAF                    7519 L462:
                           7520 ;----- asm -----
                           7521 ; 2052 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7522 	; #ENR#[1471]pause(small_pause);
                           7523 ;--- end asm ---
   2CAF C6 4B         [ 2] 7524 	ldb	#75	;,
   2CB1 BD 3E 21      [ 8] 7525 	jsr	_pause
                           7526 ;----- asm -----
                           7527 ; 2054 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7528 	; #ENR#[1472]return return_player_dead;
                           7529 ;--- end asm ---
   2CB4 C6 02         [ 2] 7530 	ldb	#2	; D.3848,
   2CB6 16 F8 92      [ 5] 7531 	lbra	L341	;
   2CB9                    7532 L457:
                           7533 ;----- asm -----
                           7534 ; 2685 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7535 	; #ENR#[1919]printmessage();
                           7536 ;--- end asm ---
   2CB9 8E 23 A3      [ 3] 7537 	ldx	#LC205	;,
   2CBC BD 5B 7A      [ 8] 7538 	jsr	_printMessage
                           7539 ;----- asm -----
                           7540 ; 2687 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7541 	; #ENR#[1920]pause(small_pause);
                           7542 ;--- end asm ---
   2CBF C6 4B         [ 2] 7543 	ldb	#75	;,
   2CC1 BD 3E 21      [ 8] 7544 	jsr	_pause
                           7545 ;----- asm -----
                           7546 ; 2689 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7547 	; #ENR#[1921]if (randmax(100) >70)
                           7548 ;--- end asm ---
   2CC4 C6 64         [ 2] 7549 	ldb	#100	;,
   2CC6 BD 5F 2A      [ 8] 7550 	jsr	_RandMax
   2CC9 C1 46         [ 2] 7551 	cmpb	#70	;cmpqi:	; D.3970,
   2CCB 10 23 01 FE   [ 6] 7552 	lbls	L410	;
                           7553 ;----- asm -----
                           7554 ; 2692 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7555 	; #ENR#[1923]createaking:
                           7556 ;--- end asm ---
   2CCF                    7557 L411:
                           7558 ;----- asm -----
                           7559 ; 2695 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7560 	; #ENR#[1925]m = (signed int)randmax(20);
                           7561 ;--- end asm ---
   2CCF C6 14         [ 2] 7562 	ldb	#20	;,
   2CD1 BD 5F 2A      [ 8] 7563 	jsr	_RandMax
   2CD4 F7 C9 77      [ 5] 7564 	stb	_m	; D.3971, m
                           7565 ;----- asm -----
                           7566 ; 2698 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7567 	; #ENR#[1927]_fs(, mo[m]);
                           7568 ;--- end asm ---
   2CD7 1D            [ 2] 7569 	sex		;extendqihi2: R:b -> R:d	; D.3971, m.168
   2CD8 58            [ 2] 7570 	aslb	;
   2CD9 49            [ 2] 7571 	rola	;
   2CDA 1F 01         [ 6] 7572 	tfr	d,x	; m.168, tmp243
   2CDC AE 89 01 24   [ 9] 7573 	ldx	_mo,x	;, mo
   2CE0 AF E3         [ 8] 7574 	stx	,--s	;,
   2CE2 8E 23 A7      [ 3] 7575 	ldx	#LC206	;,
   2CE5 BD 5C 59      [ 8] 7576 	jsr	__fs
                           7577 ;----- asm -----
                           7578 ; 2700 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7579 	; #ENR#[1928]printmessage(stringbuffer40);
                           7580 ;--- end asm ---
   2CE8 8E C8 BF      [ 3] 7581 	ldx	#_stringBuffer40	;,
   2CEB BD 5B 7A      [ 8] 7582 	jsr	_printMessage
                           7583 ;----- asm -----
                           7584 ; 2704 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7585 	; #ENR#[1931]ml = randmax(5)*cz+5;
                           7586 ;--- end asm ---
   2CEE C6 05         [ 2] 7587 	ldb	#5	;,
   2CF0 BD 5F 2A      [ 8] 7588 	jsr	_RandMax
   2CF3 B6 C9 67      [ 5] 7589 	lda	_cz	;umulqihi3	; cz
   2CF6 3D            [11] 7590 	mul
                           7591 		;movlsbqihi: D->B
   2CF7 CB 05         [ 2] 7592 	addb	#5	; ml.169,
   2CF9 F7 C9 7F      [ 5] 7593 	stb	_ml	; ml.169, ml
                           7594 ;----- asm -----
                           7595 ; 2707 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7596 	; #ENR#[1933]mh = (signed long int) (ul(randmax(ml)+1)*ul(m));
                           7597 ;--- end asm ---
   2CFC BD 5F 2A      [ 8] 7598 	jsr	_RandMax
   2CFF 5C            [ 2] 7599 	incb	;
   2D00 E7 64         [ 5] 7600 	stb	4,s	;, D.3978
   2D02 F6 C9 77      [ 5] 7601 	ldb	_m	;, m
   2D05 1D            [ 2] 7602 	sex		;extendqihi2: R:b -> R:d	;,
   2D06 34 06         [ 7] 7603 	pshs	d	; m
   2D08 E6 66         [ 5] 7604 	ldb	6,s	;, D.3978
   2D0A 4F            [ 2] 7605 	clra		;zero_extendqihi: R:b -> R:d	;,
   2D0B 1F 01         [ 6] 7606 	tfr	d,x	;,
   2D0D BD 79 2D      [ 8] 7607 	jsr	_mulhi3
   2D10 32 62         [ 5] 7608 	leas	2,s	;,,
   2D12 BF C9 78      [ 6] 7609 	stx	_mh	;, mh
                           7610 ;----- asm -----
                           7611 ; 2709 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7612 	; #ENR#[1934]pause(small_pause);
                           7613 ;--- end asm ---
   2D15 C6 4B         [ 2] 7614 	ldb	#75	;,
   2D17 BD 3E 21      [ 8] 7615 	jsr	_pause
                           7616 ;----- asm -----
                           7617 ; 2711 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7618 	; #ENR#[1935]return return_monster_is_set;
                           7619 ;--- end asm ---
   2D1A C6 1F         [ 2] 7620 	ldb	#31	; D.3848,
   2D1C 32 62         [ 5] 7621 	leas	2,s	;,,
   2D1E 16 F8 2A      [ 5] 7622 	lbra	L341	;
   2D21                    7623 L400:
                           7624 ;----- asm -----
                           7625 ; 2568 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7626 	; #ENR#[1840]cz = (unsigned char) inputnumber(,(unsigned long int)1,(unsigned long int)50);
                           7627 ;--- end asm ---
   2D21 CC 00 32      [ 3] 7628 	ldd	#50	;,
   2D24 ED E3         [ 8] 7629 	std	,--s	;,
   2D26 CC 00 01      [ 3] 7630 	ldd	#1	;,
   2D29 ED E3         [ 8] 7631 	std	,--s	;,
   2D2B 8E 22 B6      [ 3] 7632 	ldx	#LC195	;,
   2D2E BD 07 55      [ 8] 7633 	jsr	_inputNumber
   2D31 1F 10         [ 6] 7634 	tfr	x,d	;, D.3959
   2D33 F7 C9 67      [ 5] 7635 	stb	_cz	;movlsbqihi: R:d -> _cz	; cz, D.3959
   2D36 32 64         [ 5] 7636 	leas	4,s	;,,
   2D38 16 FE BD      [ 5] 7637 	lbra	L401	;
   2D3B                    7638 L389:
                           7639 ;----- asm -----
                           7640 ; 2399 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7641 	; #ENR#[1719]clearmessage();
                           7642 ;--- end asm ---
   2D3B 7F C9 87      [ 7] 7643 	clr	_msgLine	; msgLine
                           7644 ;----- asm -----
                           7645 ; 2404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7646 	; #ENR#[1723]if (randmax(100)<60)
                           7647 ;--- end asm ---
   2D3E C6 64         [ 2] 7648 	ldb	#100	;,
   2D40 BD 5F 2A      [ 8] 7649 	jsr	_RandMax
   2D43 C1 3B         [ 2] 7650 	cmpb	#59	;cmpqi:	; D.3924,
   2D45 10 22 01 32   [ 6] 7651 	lbhi	L390	;
                           7652 ;----- asm -----
                           7653 ; 2409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7654 	; #ENR#[1727]if ((signed int)randmax(20)< 20-tmp2*3)
                           7655 ;--- end asm ---
   2D49 F6 C8 FF      [ 5] 7656 	ldb	_tmp2	;, tmp2
   2D4C 58            [ 2] 7657 	aslb	;
   2D4D FB C8 FF      [ 5] 7658 	addb	_tmp2	;, tmp2
   2D50 E7 E8 21      [ 5] 7659 	stb	33,s	;, D.3926
   2D53 60 E8 21      [ 7] 7660 	neg	33,s	; D.3926
   2D56 E6 E8 21      [ 5] 7661 	ldb	33,s	;, D.3926
   2D59 CB 13         [ 2] 7662 	addb	#19	;,
   2D5B E7 E8 21      [ 5] 7663 	stb	33,s	;, D.3926
   2D5E C6 14         [ 2] 7664 	ldb	#20	;,
   2D60 BD 5F 2A      [ 8] 7665 	jsr	_RandMax
   2D63 E1 E8 21      [ 5] 7666 	cmpb	33,s	;cmpqi:(R)	; D.3927, D.3926
   2D66 10 2E 01 71   [ 6] 7667 	lbgt	L391	;
                           7668 ;----- asm -----
                           7669 ; 2414 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7670 	; #ENR#[1731]printmessage();
                           7671 ;--- end asm ---
   2D6A 8E 21 B4      [ 3] 7672 	ldx	#LC183	;,
   2D6D BD 5B 7A      [ 8] 7673 	jsr	_printMessage
                           7674 ;----- asm -----
                           7675 ; 2416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7676 	; #ENR#[1732]tmp = (signed int)  randmax(cz*3)+1;
                           7677 ;--- end asm ---
   2D70 F6 C9 67      [ 5] 7678 	ldb	_cz	; tmp215, cz
   2D73 58            [ 2] 7679 	aslb	; tmp215
   2D74 FB C9 67      [ 5] 7680 	addb	_cz	; tmp215, cz
   2D77 BD 5F 2A      [ 8] 7681 	jsr	_RandMax
   2D7A 5C            [ 2] 7682 	incb	; tmp.153
   2D7B F7 C8 FE      [ 5] 7683 	stb	_tmp	; tmp.153, tmp
                           7684 ;----- asm -----
                           7685 ; 2419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7686 	; #ENR#[1734]_fi_s(, (unsigned int) tmp);
                           7687 ;--- end asm ---
   2D7E 8E 21 C4      [ 3] 7688 	ldx	#LC184	;,
   2D81 BD 5C C6      [ 8] 7689 	jsr	__fi_s
                           7690 ;----- asm -----
                           7691 ; 2421 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7692 	; #ENR#[1735]printmessage(stringbuffer40);
                           7693 ;--- end asm ---
   2D84 8E C8 BF      [ 3] 7694 	ldx	#_stringBuffer40	;,
   2D87 BD 5B 7A      [ 8] 7695 	jsr	_printMessage
                           7696 ;----- asm -----
                           7697 ; 2423 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7698 	; #ENR#[1736]ch = ch + ((unsigned int)tmp);
                           7699 ;--- end asm ---
   2D8A F6 C8 FE      [ 5] 7700 	ldb	_tmp	;, tmp
   2D8D 4F            [ 2] 7701 	clra		;zero_extendqihi: R:b -> R:d	;,
   2D8E ED E4         [ 5] 7702 	std	,s	;,
                           7703 ; Applied peep: bug1 (gcc does one exg to many)
   2D90 F3 C9 63      [ 7] 7704 	addd	_ch; addhi3,3	;, ch
   2D93 1F 01         [ 6] 7705  tfr d,x
                           7706 ; ORG>	tfr	d,x	;, ch.154
                           7707 ; ORG>	exg	d,x	;, ch.154
                           7708 ; ORG>	addd	_ch; addhi3,3	;, ch
                           7709 ; ORG>	exg	d,x	;, ch.154
   2D95 BF C9 63      [ 6] 7710 	stx	_ch	; ch.154, ch
                           7711 ;----- asm -----
                           7712 ; 2425 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7713 	; #ENR#[1737]if (ch > hp) ch = hp;
                           7714 ;--- end asm ---
   2D98 10 BE C9 36   [ 7] 7715 	ldy	_hp	; hp.155, hp
   2D9C 34 20         [ 6] 7716 	pshs	y	;cmphi: R:y with R:x	; hp.155, ch.154
   2D9E AC E1         [ 9] 7717 	cmpx	,s++	;cmphi:	; ch.154
   2DA0 2F 04         [ 3] 7718 	ble	L392	;
   2DA2 10 BF C9 63   [ 7] 7719 	sty	_ch	; hp.155, ch
   2DA6                    7720 L392:
                           7721 ;----- asm -----
                           7722 ; 2428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7723 	; #ENR#[1739]return return_pause;
                           7724 ;--- end asm ---
   2DA6 C6 07         [ 2] 7725 	ldb	#7	; D.3848,
   2DA8 16 F7 A0      [ 5] 7726 	lbra	L341	;
   2DAB                    7727 L458:
                           7728 ;----- asm -----
                           7729 ; 2777 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7730 	; #ENR#[1983]printmessage();
                           7731 ;--- end asm ---
   2DAB 8E 23 CE      [ 3] 7732 	ldx	#LC208	;,
   2DAE BD 5B 7A      [ 8] 7733 	jsr	_printMessage
                           7734 ;----- asm -----
                           7735 ; 2782 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7736 	; #ENR#[1987]if (randmax(100) >70) goto createaking;
                           7737 ;--- end asm ---
   2DB1 C6 64         [ 2] 7738 	ldb	#100	;,
   2DB3 BD 5F 2A      [ 8] 7739 	jsr	_RandMax
   2DB6 C1 46         [ 2] 7740 	cmpb	#70	;cmpqi:	; D.3994,
   2DB8 10 22 FF 13   [ 6] 7741 	lbhi	L411	;
                           7742 ;----- asm -----
                           7743 ; 2787 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7744 	; #ENR#[1991]if (randmax(20)>=s[int])
                           7745 ;--- end asm ---
   2DBC C6 14         [ 2] 7746 	ldb	#20	;,
   2DBE BD 5F 2A      [ 8] 7747 	jsr	_RandMax
   2DC1 F1 C9 46      [ 5] 7748 	cmpb	_s+1	;cmpqi:	; D.3995, s
   2DC4 10 25 02 32   [ 6] 7749 	lblo	L419	;
                           7750 ;----- asm -----
                           7751 ; 2792 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7752 	; #ENR#[1995]printmessage();
                           7753 ;--- end asm ---
   2DC8 8E 23 D3      [ 3] 7754 	ldx	#LC209	;,
   2DCB BD 5B 7A      [ 8] 7755 	jsr	_printMessage
                           7756 ;----- asm -----
                           7757 ; 2794 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7758 	; #ENR#[1996]return return_pause;
                           7759 ;--- end asm ---
   2DCE C6 07         [ 2] 7760 	ldb	#7	; D.3848,
   2DD0 16 F7 78      [ 5] 7761 	lbra	L341	;
   2DD3                    7762 L463:
                           7763 ;----- asm -----
                           7764 ; 2228 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7765 	; #ENR#[1599]cz=1;
                           7766 ;--- end asm ---
   2DD3 E6 E8 25      [ 5] 7767 	ldb	37,s	;, d
   2DD6 F7 C9 67      [ 5] 7768 	stb	_cz	;, cz
                           7769 ;----- asm -----
                           7770 ; 2230 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7771 	; #ENR#[1600]goto upperinn;
   2DD9                    7772 L339:
                           7773 ; 1918 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7774 	; #ENR#[1382]clearmessage();
                           7775 ;--- end asm ---
   2DD9 7F C9 87      [ 7] 7776 	clr	_msgLine	; msgLine
                           7777 ;----- asm -----
                           7778 ; 1920 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7779 	; #ENR#[1383]displayinn();
                           7780 ;--- end asm ---
   2DDC C6 07         [ 2] 7781 	ldb	#7	;,
   2DDE BD 00 6E      [ 8] 7782 	jsr	_subBank0
                           7783 ;----- asm -----
                           7784 ; 1922 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7785 	; #ENR#[1384]clearmonsterstack();
                           7786 ;--- end asm ---
   2DE1 BD 3F 2B      [ 8] 7787 	jsr	_clearMonsterStack
                           7788 ;----- asm -----
                           7789 ; 1926 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7790 	; #ENR#[1387]printmessage();
                           7791 ;--- end asm ---
   2DE4 8E 1F 47      [ 3] 7792 	ldx	#LC154	;,
   2DE7 BD 5B 7A      [ 8] 7793 	jsr	_printMessage
                           7794 ;----- asm -----
                           7795 ; 1928 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7796 	; #ENR#[1388]pause(small_pause);
                           7797 ;--- end asm ---
   2DEA C6 4B         [ 2] 7798 	ldb	#75	;,
   2DEC BD 3E 21      [ 8] 7799 	jsr	_pause
                           7800 ;----- asm -----
                           7801 ; 1930 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7802 	; #ENR#[1389]clearmessage();
                           7803 ;--- end asm ---
   2DEF 7F C9 87      [ 7] 7804 	clr	_msgLine	; msgLine
                           7805 ;----- asm -----
                           7806 ; 1932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7807 	; #ENR#[1390]tmp2 = (signed int)lv;
                           7808 ;--- end asm ---
   2DF2 F6 C9 38      [ 5] 7809 	ldb	_lv	;, lv
   2DF5 F7 C8 FF      [ 5] 7810 	stb	_tmp2	;, tmp2
                           7811 ;----- asm -----
                           7812 ; 1934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7813 	; #ENR#[1391]checkxp();
                           7814 ;--- end asm ---
   2DF8 BD 53 F8      [ 8] 7815 	jsr	_checkXP
                           7816 ;----- asm -----
                           7817 ; 1936 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7818 	; #ENR#[1392]if (lv != (unsigned int) tmp2)
                           7819 ;--- end asm ---
   2DFB F6 C8 FF      [ 5] 7820 	ldb	_tmp2	;, tmp2
   2DFE F1 C9 38      [ 5] 7821 	cmpb	_lv	;cmpqi:	;, lv
   2E01 27 05         [ 3] 7822 	beq	L340	;
   2E03 C6 4B         [ 2] 7823 	ldb	#75	;,
   2E05 BD 3E 21      [ 8] 7824 	jsr	_pause
   2E08                    7825 L340:
                           7826 ;----- asm -----
                           7827 ; 1939 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7828 	; #ENR#[1394]return return_new_turn;
                           7829 ;--- end asm ---
   2E08 C6 01         [ 2] 7830 	ldb	#1	; D.3848,
   2E0A 16 F7 3E      [ 5] 7831 	lbra	L341	;
   2E0D                    7832 L407:
                           7833 ;----- asm -----
                           7834 ; 2663 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7835 	; #ENR#[1905]printmessage();
                           7836 ;--- end asm ---
   2E0D 8E 23 6C      [ 3] 7837 	ldx	#LC203	;,
   2E10 BD 5B 7A      [ 8] 7838 	jsr	_printMessage
                           7839 ;----- asm -----
                           7840 ; 2665 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7841 	; #ENR#[1906]ultmp = ul(randmax(100)+1)*ul(10)*ul(cz);
                           7842 ;--- end asm ---
   2E13 C6 64         [ 2] 7843 	ldb	#100	;,
   2E15 BD 5F 2A      [ 8] 7844 	jsr	_RandMax
   2E18 E7 62         [ 5] 7845 	stb	2,s	;, D.3965
   2E1A F6 C9 67      [ 5] 7846 	ldb	_cz	;, cz
   2E1D 86 0A         [ 2] 7847 	lda	#10	;umulqihi3	;
   2E1F 3D            [11] 7848 	mul
   2E20 ED 6C         [ 6] 7849 	std	12,s	;,
   2E22 6C 62         [ 7] 7850 	inc	2,s	; D.3965
   2E24 E6 62         [ 5] 7851 	ldb	2,s	;, D.3965
   2E26 4F            [ 2] 7852 	clra		;zero_extendqihi: R:b -> R:d	;,
   2E27 34 06         [ 7] 7853 	pshs	d	; tmp238
   2E29 AE 6E         [ 6] 7854 	ldx	14,s	;,
   2E2B BD 79 2D      [ 8] 7855 	jsr	_mulhi3
   2E2E 32 62         [ 5] 7856 	leas	2,s	;,,
   2E30 BF C9 00      [ 6] 7857 	stx	_ultmp	; ultmp.166, ultmp
                           7858 ;----- asm -----
                           7859 ; 2667 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7860 	; #ENR#[1907]gd = gd + ull(ultmp);
                           7861 ;--- end asm ---
   2E33 31 84         [ 4] 7862 	leay	,x	;, ultmp.166
   2E35 AF 6A         [ 6] 7863 	stx	10,s	; tmp2,
   2E37 CE 00 00      [ 3] 7864 	ldu	#0	;,
   2E3A EF 68         [ 6] 7865 	stu	8,s	;,
   2E3C FC C9 6A      [ 6] 7866 	ldd	_gd+2	;, gd
   2E3F E3 6A         [ 7] 7867 	addd	10,s	;,
   2E41 FD C9 6A      [ 6] 7868 	std	_gd+2	;, gd
   2E44 FC C9 68      [ 6] 7869 	ldd	_gd	;, gd
   2E47 E9 69         [ 5] 7870 	adcb	9,s	;
   2E49 A9 68         [ 5] 7871 	adca	8,s	;
   2E4B FD C9 68      [ 6] 7872 	std	_gd	;, gd
                           7873 ;----- asm -----
                           7874 ; 2669 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7875 	; #ENR#[1908]_fl_s(, ultmp);
                           7876 ;--- end asm ---
   2E4E 34 10         [ 6] 7877 	pshs	x	; ultmp.166
   2E50 8E 23 8E      [ 3] 7878 	ldx	#LC204	;,
   2E53 BD 5F 6F      [ 8] 7879 	jsr	__fl_s
                           7880 ;----- asm -----
                           7881 ; 2671 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7882 	; #ENR#[1909]printmessage(stringbuffer40);
                           7883 ;--- end asm ---
   2E56 8E C8 BF      [ 3] 7884 	ldx	#_stringBuffer40	;,
   2E59 BD 5B 7A      [ 8] 7885 	jsr	_printMessage
                           7886 ;----- asm -----
                           7887 ; 2673 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7888 	; #ENR#[1910]pause(small_pause);
                           7889 ;--- end asm ---
   2E5C C6 4B         [ 2] 7890 	ldb	#75	;,
   2E5E BD 3E 21      [ 8] 7891 	jsr	_pause
                           7892 ;----- asm -----
                           7893 ; 2675 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7894 	; #ENR#[1911]return return_pause;
                           7895 ;--- end asm ---
   2E61 C6 07         [ 2] 7896 	ldb	#7	; D.3848,
   2E63 32 62         [ 5] 7897 	leas	2,s	;,,
   2E65 16 F6 E3      [ 5] 7898 	lbra	L341	;
   2E68                    7899 L465:
                           7900 ;----- asm -----
                           7901 ; 2009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7902 	; #ENR#[1444]cz = cz + 1;
                           7903 ;--- end asm ---
   2E68 7C C9 67      [ 7] 7904 	inc	_cz	; cz
                           7905 ;----- asm -----
                           7906 ; 2011 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7907 	; #ENR#[1445]printmessage();
                           7908 ;--- end asm ---
   2E6B 8E 1F B6      [ 3] 7909 	ldx	#LC159	;,
   2E6E BD 5B 7A      [ 8] 7910 	jsr	_printMessage
                           7911 ;----- asm -----
                           7912 ; 2013 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7913 	; #ENR#[1446]fillmap =go_redraw;
                           7914 ;--- end asm ---
   2E71 C6 7F         [ 2] 7915 	ldb	#127	;,
   2E73 F7 C8 FC      [ 5] 7916 	stb	_fillMap	;, fillMap
                           7917 ;----- asm -----
                           7918 ; 2015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7919 	; #ENR#[1447]return return_new_turn;
                           7920 ;--- end asm ---
   2E76 C6 01         [ 2] 7921 	ldb	#1	; D.3848,
   2E78 16 F6 D0      [ 5] 7922 	lbra	L341	;
   2E7B                    7923 L390:
                           7924 ;----- asm -----
                           7925 ; 2472 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7926 	; #ENR#[1770]if (randmax(50)>20)
                           7927 ;--- end asm ---
   2E7B C6 32         [ 2] 7928 	ldb	#50	;,
   2E7D BD 5F 2A      [ 8] 7929 	jsr	_RandMax
   2E80 C1 14         [ 2] 7930 	cmpb	#20	;cmpqi:	; D.3943,
   2E82 10 23 00 73   [ 6] 7931 	lbls	L395	;
                           7932 ;----- asm -----
                           7933 ; 2475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7934 	; #ENR#[1772]printmessage();
                           7935 ;--- end asm ---
   2E86 8E 21 FF      [ 3] 7936 	ldx	#LC187	;,
   2E89 BD 5B 7A      [ 8] 7937 	jsr	_printMessage
                           7938 ;----- asm -----
                           7939 ; 2477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7940 	; #ENR#[1773]return return_pause;
                           7941 ;--- end asm ---
   2E8C C6 07         [ 2] 7942 	ldb	#7	; D.3848,
   2E8E 16 F6 BA      [ 5] 7943 	lbra	L341	;
   2E91                    7944 L426:
                           7945 ;----- asm -----
                           7946 ; 2932 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7947 	; #ENR#[2095]tmp = (signed int) randmax(2*cz)+1;
                           7948 ;--- end asm ---
   2E91 F6 C9 67      [ 5] 7949 	ldb	_cz	; tmp321, cz
   2E94 58            [ 2] 7950 	aslb	; tmp321
   2E95 BD 5F 2A      [ 8] 7951 	jsr	_RandMax
   2E98 5C            [ 2] 7952 	incb	; D.4012
   2E99 F7 C8 FE      [ 5] 7953 	stb	_tmp	; D.4012, tmp
                           7954 ;----- asm -----
                           7955 ; 2934 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7956 	; #ENR#[2096]printmessage();
                           7957 ;--- end asm ---
   2E9C 8E 24 D3      [ 3] 7958 	ldx	#LC219	;,
   2E9F BD 5B 7A      [ 8] 7959 	jsr	_printMessage
                           7960 ;----- asm -----
                           7961 ; 2938 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7962 	; #ENR#[2099]_fi_s(, (unsigned int) tmp);
                           7963 ;--- end asm ---
   2EA2 F6 C8 FE      [ 5] 7964 	ldb	_tmp	;, tmp
   2EA5 8E 18 A5      [ 3] 7965 	ldx	#LC140	;,
   2EA8 BD 5C C6      [ 8] 7966 	jsr	__fi_s
                           7967 ;----- asm -----
                           7968 ; 2940 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7969 	; #ENR#[2100]printmessage(stringbuffer40);
                           7970 ;--- end asm ---
   2EAB 8E C8 BF      [ 3] 7971 	ldx	#_stringBuffer40	;,
   2EAE BD 5B 7A      [ 8] 7972 	jsr	_printMessage
                           7973 ;----- asm -----
                           7974 ; 2944 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7975 	; #ENR#[2103]if (ch<=tmp)
                           7976 ;--- end asm ---
   2EB1 F6 C8 FE      [ 5] 7977 	ldb	_tmp	;, tmp
   2EB4 1D            [ 2] 7978 	sex		;extendqihi2: R:b -> R:d	;,
   2EB5 10 B3 C9 63   [ 8] 7979 	cmpd	_ch	;cmphi:	; tmp, ch
   2EB9 10 2C 01 33   [ 6] 7980 	lbge	L467	;
                           7981 ;----- asm -----
                           7982 ; 2953 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7983 	; #ENR#[2109]return return_pause;
                           7984 ;--- end asm ---
   2EBD C6 07         [ 2] 7985 	ldb	#7	; D.3848,
   2EBF 16 F6 89      [ 5] 7986 	lbra	L341	;
   2EC2                    7987 L425:
                           7988 ;----- asm -----
                           7989 ; 2905 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7990 	; #ENR#[2072]printmessage();
                           7991 ;--- end asm ---
   2EC2 8E 24 CE      [ 3] 7992 	ldx	#LC218	;,
   2EC5 BD 5B 7A      [ 8] 7993 	jsr	_printMessage
                           7994 ;----- asm -----
                           7995 ; 2907 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           7996 	; #ENR#[2073]return return_pause;
                           7997 ;--- end asm ---
   2EC8 C6 07         [ 2] 7998 	ldb	#7	; D.3848,
   2ECA 16 F6 7E      [ 5] 7999 	lbra	L341	;
   2ECD                    8000 L410:
                           8001 ;----- asm -----
                           8002 ; 2717 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8003 	; #ENR#[1940]if (randmax(100) >60)
                           8004 ;--- end asm ---
   2ECD C6 64         [ 2] 8005 	ldb	#100	;,
   2ECF BD 5F 2A      [ 8] 8006 	jsr	_RandMax
   2ED2 C1 3C         [ 2] 8007 	cmpb	#60	;cmpqi:	; D.3984,
   2ED4 10 23 01 C4   [ 6] 8008 	lbls	L412	;
                           8009 ;----- asm -----
                           8010 ; 2720 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8011 	; #ENR#[1942]goto thronenothinghappens;
                           8012 ;--- end asm ---
   2ED8 16 FA C7      [ 5] 8013 	lbra	L408	;
   2EDB                    8014 L391:
                           8015 ;----- asm -----
                           8016 ; 2433 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8017 	; #ENR#[1743]if ((signed int)randmax(20)< tmp2*3)
                           8018 ;--- end asm ---
   2EDB C6 14         [ 2] 8019 	ldb	#20	;,
   2EDD BD 5F 2A      [ 8] 8020 	jsr	_RandMax
   2EE0 E7 E8 22      [ 5] 8021 	stb	34,s	;, D.3936
   2EE3 F6 C8 FF      [ 5] 8022 	ldb	_tmp2	; tmp220, tmp2
   2EE6 58            [ 2] 8023 	aslb	; tmp220
   2EE7 FB C8 FF      [ 5] 8024 	addb	_tmp2	; tmp220, tmp2
   2EEA E1 E8 22      [ 5] 8025 	cmpb	34,s	;cmpqi:(R)	; tmp220, D.3936
   2EED 10 2E 01 B9   [ 6] 8026 	lbgt	L468	;
                           8027 ;----- asm -----
                           8028 ; 2464 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8029 	; #ENR#[1764]randomxp();
                           8030 ;--- end asm ---
   2EF1 BD 56 23      [ 8] 8031 	jsr	_randomXP
                           8032 ;----- asm -----
                           8033 ; 2466 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8034 	; #ENR#[1765]return return_pause;
                           8035 ;--- end asm ---
   2EF4 C6 07         [ 2] 8036 	ldb	#7	; D.3848,
   2EF6 16 F6 52      [ 5] 8037 	lbra	L341	;
   2EF9                    8038 L395:
                           8039 ;----- asm -----
                           8040 ; 2483 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8041 	; #ENR#[1778]if (randmax(100) > 50)
                           8042 ;--- end asm ---
   2EF9 C6 64         [ 2] 8043 	ldb	#100	;,
   2EFB BD 5F 2A      [ 8] 8044 	jsr	_RandMax
   2EFE C1 32         [ 2] 8045 	cmpb	#50	;cmpqi:	; D.3944,
   2F00 10 23 01 75   [ 6] 8046 	lbls	L396	;
                           8047 ;----- asm -----
                           8048 ; 2490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8049 	; #ENR#[1784]printmessage();
                           8050 ;--- end asm ---
   2F04 8E 21 FF      [ 3] 8051 	ldx	#LC187	;,
   2F07 BD 5B 7A      [ 8] 8052 	jsr	_printMessage
                           8053 ;----- asm -----
                           8054 ; 2492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8055 	; #ENR#[1785]printmessage();
                           8056 ;--- end asm ---
   2F0A 8E 22 13      [ 3] 8057 	ldx	#LC188	;,
   2F0D BD 5B 7A      [ 8] 8058 	jsr	_printMessage
                           8059 ;----- asm -----
                           8060 ; 2494 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8061 	; #ENR#[1786]sf[drunk] = randmax(16)+1;
                           8062 ;--- end asm ---
   2F10 C6 10         [ 2] 8063 	ldb	#16	;,
   2F12 BD 5F 2A      [ 8] 8064 	jsr	_RandMax
   2F15 5C            [ 2] 8065 	incb	; D.3945
   2F16 F7 C9 76      [ 5] 8066 	stb	_sf+10	; D.3945, sf
                           8067 ;----- asm -----
                           8068 ; 2496 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8069 	; #ENR#[1787]return return_pause;
                           8070 ;--- end asm ---
   2F19 C6 07         [ 2] 8071 	ldb	#7	; D.3848,
   2F1B 16 F6 2D      [ 5] 8072 	lbra	L341	;
   2F1E                    8073 L466:
   2F1E 1F 03         [ 6] 8074 	tfr	d,u	;,
   2F20 34 20         [ 6] 8075 	pshs	y	;cmphi: R:y with R:u	; tmp6,
   2F22 11 A3 E1      [10] 8076 	cmpu	,s++	;cmphi:	;
   2F25 10 27 01 D3   [ 6] 8077 	lbeq	L469	;
   2F29                    8078 L379:
                           8079 ;----- asm -----
                           8080 ; 2294 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8081 	; #ENR#[1646]if (ultmp<ul(ul(50)*ul(cz)))
                           8082 ;--- end asm ---
   2F29 F6 C9 67      [ 5] 8083 	ldb	_cz	;, cz
   2F2C 86 32         [ 2] 8084 	lda	#50	;umulqihi3	;
   2F2E 3D            [11] 8085 	mul
   2F2F 1F 02         [ 6] 8086 	tfr	d,y	;, tmp185
   2F31 34 06         [ 7] 8087 	pshs	d	;cmphi: R:d with R:x	; tmp185, ultmp.142
   2F33 AC E1         [ 9] 8088 	cmpx	,s++	;cmphi:	; ultmp.142
   2F35 10 25 F7 D1   [ 6] 8089 	lblo	L381	;
                           8090 ;----- asm -----
                           8091 ; 2301 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8092 	; #ENR#[1652]gd = gd - ultmp;
                           8093 ;--- end asm ---
   2F39 EC E8 1A      [ 6] 8094 	ldd	26,s	;, gd.144
   2F3C A3 E8 16      [ 7] 8095 	subd	22,s	;, D.3896
   2F3F ED E8 1E      [ 6] 8096 	std	30,s	;, gd.145
   2F42 EC E8 18      [ 6] 8097 	ldd	24,s	;, gd.144
   2F45 E2 E8 15      [ 5] 8098 	sbcb	21,s	; D.3896
   2F48 A2 E8 14      [ 5] 8099 	sbca	20,s	; D.3896
   2F4B ED E8 1C      [ 6] 8100 	std	28,s	;, gd.145
   2F4E AE E8 1C      [ 6] 8101 	ldx	28,s	;, gd.145
   2F51 BF C9 68      [ 6] 8102 	stx	_gd	;, gd
   2F54 10 AE E8 1E   [ 7] 8103 	ldy	30,s	;, gd.145
   2F58 10 BF C9 6A   [ 7] 8104 	sty	_gd+2	;, gd
                           8105 ;----- asm -----
                           8106 ; 2303 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8107 	; #ENR#[1653]tmp = (signed int)((ull(ultmp)*ull(100))/ (   ull(gd)+ ull(ultmp) ));
                           8108 ;--- end asm ---
   2F5C FE C9 00      [ 6] 8109 	ldu	_ultmp	;, ultmp
   2F5F EF E8 2B      [ 6] 8110 	stu	43,s	;, temp.556
   2F62 CC 00 00      [ 3] 8111 	ldd	#0	;,
   2F65 ED E8 29      [ 6] 8112 	std	41,s	;, temp.556
   2F68 10 8E 00 64   [ 4] 8113 	ldy	#100	; tmp188,
   2F6C 32 78         [ 5] 8114 	leas	-8,s	;,,
   2F6E ED 64         [ 6] 8115 	std	4,s	;,
   2F70 10 AF 66      [ 7] 8116 	sty	6,s	; tmp188,
   2F73 AE E8 31      [ 6] 8117 	ldx	49,s	;, temp.556
   2F76 AF E4         [ 5] 8118 	stx	,s	;,
   2F78 EE E8 33      [ 6] 8119 	ldu	51,s	;, temp.556
   2F7B EF 62         [ 6] 8120 	stu	2,s	;,
   2F7D 30 E8 3E      [ 5] 8121 	leax	62,s	;,,
   2F80 BD 79 4C      [ 8] 8122 	jsr	___mulsi3
   2F83 EC E8 26      [ 6] 8123 	ldd	38,s	;, gd.145
   2F86 E3 E8 33      [ 7] 8124 	addd	51,s	;, temp.556
   2F89 ED E8 18      [ 6] 8125 	std	24,s	;,
   2F8C EC E8 24      [ 6] 8126 	ldd	36,s	;, gd.145
   2F8F E9 E8 32      [ 5] 8127 	adcb	50,s	; temp.556
   2F92 A9 E8 31      [ 5] 8128 	adca	49,s	; temp.556
   2F95 ED E8 16      [ 6] 8129 	std	22,s	;,
   2F98 AE E8 16      [ 6] 8130 	ldx	22,s	;,
   2F9B AF 64         [ 6] 8131 	stx	4,s	;,
   2F9D EE E8 18      [ 6] 8132 	ldu	24,s	;,
   2FA0 EF 66         [ 6] 8133 	stu	6,s	;,
   2FA2 EC E8 3E      [ 6] 8134 	ldd	62,s	;,
   2FA5 ED E4         [ 5] 8135 	std	,s	;,
   2FA7 AE E8 40      [ 6] 8136 	ldx	64,s	;,
   2FAA AF 62         [ 6] 8137 	stx	2,s	;,
   2FAC 30 E8 3A      [ 5] 8138 	leax	58,s	;,,
   2FAF BD 73 06      [ 8] 8139 	jsr	___udivsi3
   2FB2 32 68         [ 5] 8140 	leas	8,s	;,,
   2FB4 E6 E8 35      [ 5] 8141 	ldb	53,s	;,
   2FB7 F7 C8 FE      [ 5] 8142 	stb	_tmp	;, tmp
                           8143 ;----- asm -----
                           8144 ; 2305 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8145 	; #ENR#[1654]if ((signed int)randmax(100) < tmp)
                           8146 ;--- end asm ---
   2FBA 1F 20         [ 6] 8147 	tfr	y,d	;movlsbqihi: R:y -> R:b	; tmp188,
   2FBC BD 5F 2A      [ 8] 8148 	jsr	_RandMax
   2FBF F1 C8 FE      [ 5] 8149 	cmpb	_tmp	;cmpqi:	; D.3905, tmp
   2FC2 10 2C 01 2D   [ 6] 8150 	lbge	L382	;
                           8151 ;----- asm -----
                           8152 ; 2310 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8153 	; #ENR#[1658]tmp2 = (signed int) randmax(7);
                           8154 ;--- end asm ---
   2FC6 C6 07         [ 2] 8155 	ldb	#7	;,
   2FC8 BD 5F 2A      [ 8] 8156 	jsr	_RandMax
   2FCB F7 C8 FF      [ 5] 8157 	stb	_tmp2	; D.3907, tmp2
                           8158 ;----- asm -----
                           8159 ; 2312 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8160 	; #ENR#[1659]sf[tmp2] =(unsigned int) (sf[tmp2] + randmax((unsigned int)tmp)+(unsigned int)1);
                           8161 ;--- end asm ---
   2FCE 1D            [ 2] 8162 	sex		;extendqihi2: R:b -> R:d	; D.3907, tmp2.147
   2FCF 8E C9 6C      [ 3] 8163 	ldx	#_sf	;,
   2FD2 31 8B         [ 8] 8164 	leay	d,x	; tmp198, tmp2.147,
   2FD4 E6 A4         [ 4] 8165 	ldb	,y	;, sf
   2FD6 E7 E8 20      [ 5] 8166 	stb	32,s	;, D.3909
   2FD9 F6 C8 FE      [ 5] 8167 	ldb	_tmp	;, tmp
   2FDC BD 5F 2A      [ 8] 8168 	jsr	_RandMax
   2FDF 5C            [ 2] 8169 	incb	; D.3910
   2FE0 EB E8 20      [ 5] 8170 	addb	32,s	; D.3910, D.3909
   2FE3 E7 A4         [ 4] 8171 	stb	,y	; D.3910, sf
                           8172 ;----- asm -----
                           8173 ; 2316 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8174 	; #ENR#[1662]printmessage();
                           8175 ;--- end asm ---
   2FE5 8E 21 2F      [ 3] 8176 	ldx	#LC177	;,
   2FE8 BD 5B 7A      [ 8] 8177 	jsr	_printMessage
   2FEB                    8178 L383:
                           8179 ;----- asm -----
                           8180 ; 2324 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8181 	; #ENR#[1668]return return_pause;
                           8182 ;--- end asm ---
   2FEB C6 07         [ 2] 8183 	ldb	#7	; D.3848,
   2FED 16 F5 5B      [ 5] 8184 	lbra	L341	;
   2FF0                    8185 L467:
                           8186 ;----- asm -----
                           8187 ; 2947 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8188 	; #ENR#[2105]pause(small_pause);
                           8189 ;--- end asm ---
   2FF0 C6 4B         [ 2] 8190 	ldb	#75	;,
   2FF2 BD 3E 21      [ 8] 8191 	jsr	_pause
                           8192 ;----- asm -----
                           8193 ; 2949 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8194 	; #ENR#[2106]return return_player_dead;
                           8195 ;--- end asm ---
   2FF5 C6 02         [ 2] 8196 	ldb	#2	; D.3848,
   2FF7 16 F5 51      [ 5] 8197 	lbra	L341	;
   2FFA                    8198 L419:
                           8199 ;----- asm -----
                           8200 ; 2800 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8201 	; #ENR#[2001]printmessage();
                           8202 ;--- end asm ---
   2FFA 8E 23 F0      [ 3] 8203 	ldx	#LC210	;,
   2FFD BD 5B 7A      [ 8] 8204 	jsr	_printMessage
                           8205 ;----- asm -----
                           8206 ; 2804 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8207 	; #ENR#[2004]thronerolestatagain:
                           8208 ;--- end asm ---
   3000                    8209 L440:
                           8210 ;----- asm -----
                           8211 ; 2806 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8212 	; #ENR#[2005]tmp = (signed int)randmax(6);
                           8213 ;--- end asm ---
   3000 C6 06         [ 2] 8214 	ldb	#6	;,
   3002 BD 5F 2A      [ 8] 8215 	jsr	_RandMax
   3005 F7 C8 FE      [ 5] 8216 	stb	_tmp	; D.3997, tmp
                           8217 ;----- asm -----
                           8218 ; 2808 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8219 	; #ENR#[2006]if (randmax(100) > 50)
                           8220 ;--- end asm ---
   3008 C6 64         [ 2] 8221 	ldb	#100	;,
   300A BD 5F 2A      [ 8] 8222 	jsr	_RandMax
   300D C1 32         [ 2] 8223 	cmpb	#50	;cmpqi:	; D.3999,
   300F 10 23 00 36   [ 6] 8224 	lbls	L420	;
                           8225 ;----- asm -----
                           8226 ; 2812 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8227 	; #ENR#[2009]if (s[tmp] <= 3) goto thronerolestatagain;
                           8228 ;--- end asm ---
   3013 F6 C8 FE      [ 5] 8229 	ldb	_tmp	;, tmp
   3016 1D            [ 2] 8230 	sex		;extendqihi2: R:b -> R:d	;,
   3017 1F 02         [ 6] 8231 	tfr	d,y	;,
   3019 30 A9 C9 45   [ 8] 8232 	leax	_s,y	; tmp273,,
   301D E6 84         [ 4] 8233 	ldb	,x	; D.4000, s
   301F C1 03         [ 2] 8234 	cmpb	#3	;cmpqi:	; D.4000,
   3021 23 DD         [ 3] 8235 	bls	L440	;
                           8236 ;----- asm -----
                           8237 ; 2817 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8238 	; #ENR#[2013]s[tmp] = s[tmp] - 1;
                           8239 ;--- end asm ---
   3023 5A            [ 2] 8240 	decb	; D.4000
   3024 E7 84         [ 4] 8241 	stb	,x	; D.4000, s
                           8242 ;----- asm -----
                           8243 ; 2819 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8244 	; #ENR#[2014]_fs(, stats[tmp]);
                           8245 ;--- end asm ---
   3026 F6 C8 FE      [ 5] 8246 	ldb	_tmp	;, tmp
   3029 1D            [ 2] 8247 	sex		;extendqihi2: R:b -> R:d	;,
   302A ED E4         [ 5] 8248 	std	,s	;,
   302C 58            [ 2] 8249 	aslb	;
   302D 49            [ 2] 8250 	rola	;
   302E 1F 01         [ 6] 8251 	tfr	d,x	;, tmp279
   3030 AE 89 01 64   [ 9] 8252 	ldx	_stats,x	;, stats
   3034 AF E3         [ 8] 8253 	stx	,--s	;,
   3036 8E 24 0F      [ 3] 8254 	ldx	#LC211	;,
   3039 BD 5C 59      [ 8] 8255 	jsr	__fs
   303C 32 62         [ 5] 8256 	leas	2,s	;,,
   303E                    8257 L422:
                           8258 ;----- asm -----
                           8259 ; 2834 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8260 	; #ENR#[2025]printmessage(stringbuffer40);
                           8261 ;--- end asm ---
   303E 8E C8 BF      [ 3] 8262 	ldx	#_stringBuffer40	;,
   3041 BD 5B 7A      [ 8] 8263 	jsr	_printMessage
                           8264 ;----- asm -----
                           8265 ; 2836 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8266 	; #ENR#[2026]return return_pause;
                           8267 ;--- end asm ---
   3044 C6 07         [ 2] 8268 	ldb	#7	; D.3848,
   3046 16 F5 02      [ 5] 8269 	lbra	L341	;
   3049                    8270 L420:
                           8271 ;----- asm -----
                           8272 ; 2825 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8273 	; #ENR#[2019]if (s[tmp] >= 18) goto thronerolestatagain;
                           8274 ;--- end asm ---
   3049 F6 C8 FE      [ 5] 8275 	ldb	_tmp	;, tmp
   304C 1D            [ 2] 8276 	sex		;extendqihi2: R:b -> R:d	;,
   304D 1F 02         [ 6] 8277 	tfr	d,y	;,
   304F 30 A9 C9 45   [ 8] 8278 	leax	_s,y	; tmp284,,
   3053 E6 84         [ 4] 8279 	ldb	,x	; temp.592, s
   3055 C1 11         [ 2] 8280 	cmpb	#17	;cmpqi:	; temp.592,
   3057 10 22 FF A5   [ 6] 8281 	lbhi	L440	;
                           8282 ;----- asm -----
                           8283 ; 2829 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8284 	; #ENR#[2022]s[tmp] = s[tmp] + 1;
                           8285 ;--- end asm ---
   305B 5C            [ 2] 8286 	incb	; temp.592
   305C E7 84         [ 4] 8287 	stb	,x	; temp.592, s
                           8288 ;----- asm -----
                           8289 ; 2831 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8290 	; #ENR#[2023]_fs(, stats[tmp]);
                           8291 ;--- end asm ---
   305E F6 C8 FE      [ 5] 8292 	ldb	_tmp	;, tmp
   3061 1D            [ 2] 8293 	sex		;extendqihi2: R:b -> R:d	;,
   3062 ED E4         [ 5] 8294 	std	,s	;,
   3064 58            [ 2] 8295 	aslb	;
   3065 49            [ 2] 8296 	rola	;
   3066 1F 01         [ 6] 8297 	tfr	d,x	;, tmp290
   3068 AE 89 01 64   [ 9] 8298 	ldx	_stats,x	;, stats
   306C AF E3         [ 8] 8299 	stx	,--s	;,
   306E 8E 24 24      [ 3] 8300 	ldx	#LC212	;,
   3071 BD 5C 59      [ 8] 8301 	jsr	__fs
   3074 32 62         [ 5] 8302 	leas	2,s	;,,
   3076 16 FF C5      [ 5] 8303 	lbra	L422	;
   3079                    8304 L396:
                           8305 ;----- asm -----
                           8306 ; 2502 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8307 	; #ENR#[1792]if (randmax(100) > 50)
                           8308 ;--- end asm ---
   3079 C6 64         [ 2] 8309 	ldb	#100	;,
   307B BD 5F 2A      [ 8] 8310 	jsr	_RandMax
   307E C1 32         [ 2] 8311 	cmpb	#50	;cmpqi:	; D.3947,
   3080 10 23 01 84   [ 6] 8312 	lbls	L397	;
                           8313 ;----- asm -----
                           8314 ; 2507 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8315 	; #ENR#[1796]printmessage();
                           8316 ;--- end asm ---
   3084 8E 22 2B      [ 3] 8317 	ldx	#LC189	;,
   3087 BD 5B 7A      [ 8] 8318 	jsr	_printMessage
                           8319 ;----- asm -----
                           8320 ; 2509 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8321 	; #ENR#[1797]for (int i=0;i<10;i++) inventory[i]=0;
                           8322 ;--- end asm ---
   308A 8E C9 4B      [ 3] 8323 	ldx	#_inventory	; ivtmp.528,
   308D                    8324 L398:
   308D CC 00 00      [ 3] 8325 	ldd	#0	;,
   3090 ED 81         [ 8] 8326 	std	,x++	;, inventory
   3092 8C C9 5F      [ 4] 8327 	cmpx	#_inventory+20	;cmphi:	; ivtmp.528,
   3095 26 F6         [ 3] 8328 	bne	L398	;
                           8329 ;----- asm -----
                           8330 ; 2512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8331 	; #ENR#[1799]return return_pause;
                           8332 ;--- end asm ---
   3097 C6 07         [ 2] 8333 	ldb	#7	; D.3848,
   3099 16 F4 AF      [ 5] 8334 	lbra	L341	;
   309C                    8335 L412:
                           8336 ;----- asm -----
                           8337 ; 2726 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8338 	; #ENR#[1947]if (randmax(100) >40)
                           8339 ;--- end asm ---
   309C C6 64         [ 2] 8340 	ldb	#100	;,
   309E BD 5F 2A      [ 8] 8341 	jsr	_RandMax
   30A1 C1 28         [ 2] 8342 	cmpb	#40	;cmpqi:	; D.3985,
   30A3 10 23 00 68   [ 6] 8343 	lbls	L413	;
                           8344 ;----- asm -----
                           8345 ; 2729 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8346 	; #ENR#[1949]goto teleportnow;
                           8347 ;--- end asm ---
   30A7 16 F7 42      [ 5] 8348 	lbra	L347	;
   30AA                    8349 L468:
                           8350 ;----- asm -----
                           8351 ; 2438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8352 	; #ENR#[1747]printmessage();
                           8353 ;--- end asm ---
   30AA 8E 21 DA      [ 3] 8354 	ldx	#LC185	;,
   30AD BD 5B 7A      [ 8] 8355 	jsr	_printMessage
                           8356 ;----- asm -----
                           8357 ; 2440 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8358 	; #ENR#[1748]tmp = (signed int)randmax(cz*3)+1;
                           8359 ;--- end asm ---
   30B0 F6 C9 67      [ 5] 8360 	ldb	_cz	; tmp224, cz
   30B3 58            [ 2] 8361 	aslb	; tmp224
   30B4 FB C9 67      [ 5] 8362 	addb	_cz	; tmp224, cz
   30B7 BD 5F 2A      [ 8] 8363 	jsr	_RandMax
   30BA 5C            [ 2] 8364 	incb	; tmp.156
   30BB F7 C8 FE      [ 5] 8365 	stb	_tmp	; tmp.156, tmp
                           8366 ;----- asm -----
                           8367 ; 2442 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8368 	; #ENR#[1749]_fi_s(, (unsigned int) tmp);
                           8369 ;--- end asm ---
   30BE 8E 21 E9      [ 3] 8370 	ldx	#LC186	;,
   30C1 BD 5C C6      [ 8] 8371 	jsr	__fi_s
                           8372 ;----- asm -----
                           8373 ; 2444 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8374 	; #ENR#[1750]printmessage(stringbuffer40);
                           8375 ;--- end asm ---
   30C4 8E C8 BF      [ 3] 8376 	ldx	#_stringBuffer40	;,
   30C7 BD 5B 7A      [ 8] 8377 	jsr	_printMessage
                           8378 ;----- asm -----
                           8379 ; 2449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8380 	; #ENR#[1754]if (tmp>=ch)
                           8381 ;--- end asm ---
   30CA F6 C8 FE      [ 5] 8382 	ldb	_tmp	;, tmp
   30CD E7 E8 2D      [ 5] 8383 	stb	45,s	;, tmp.574
   30D0 BE C9 63      [ 6] 8384 	ldx	_ch	; ch.576, ch
   30D3 1D            [ 2] 8385 	sex		;extendqihi2: R:b -> R:d	;,
   30D4 1F 02         [ 6] 8386 	tfr	d,y	;, tmp.574
   30D6 34 10         [ 6] 8387 	pshs	x	;cmphi: R:x with R:d	; ch.576, tmp.574
   30D8 10 A3 E1      [10] 8388 	cmpd	,s++	;cmphi:	; tmp.574
   30DB 10 2C 00 B5   [ 6] 8389 	lbge	L470	;
                           8390 ;----- asm -----
                           8391 ; 2457 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8392 	; #ENR#[1759]ch = ch - ((unsigned int)tmp);
                           8393 ;--- end asm ---
   30DF E6 E8 2D      [ 5] 8394 	ldb	45,s	;, tmp.574
   30E2 4F            [ 2] 8395 	clra		;zero_extendqihi: R:b -> R:d	;,
   30E3 1F 02         [ 6] 8396 	tfr	d,y	;, tmp.574
   30E5 1F 10         [ 6] 8397 	tfr	x,d	; ch.576,
   30E7 34 20         [ 6] 8398 	pshs	y	;subhi: R:d -= R:y	; tmp.574,
   30E9 A3 E1         [ 9] 8399 	subd	,s++	;
   30EB FD C9 63      [ 6] 8400 	std	_ch	; tmp228, ch
                           8401 ;----- asm -----
                           8402 ; 2459 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8403 	; #ENR#[1760]return return_pause;
                           8404 ;--- end asm ---
   30EE C6 07         [ 2] 8405 	ldb	#7	; D.3848,
   30F0 16 F4 58      [ 5] 8406 	lbra	L341	;
   30F3                    8407 L382:
                           8408 ;----- asm -----
                           8409 ; 2321 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8410 	; #ENR#[1666]printmessage();
                           8411 ;--- end asm ---
   30F3 8E 21 43      [ 3] 8412 	ldx	#LC178	;,
   30F6 BD 5B 7A      [ 8] 8413 	jsr	_printMessage
   30F9 16 FE EF      [ 5] 8414 	lbra	L383	;
   30FC                    8415 L469:
   30FC 10 AE E8 16   [ 7] 8416 	ldy	22,s	;, D.3896
   3100 EE E8 1A      [ 6] 8417 	ldu	26,s	;, gd.144
   3103 34 40         [ 6] 8418 	pshs	u	;cmphi: R:u with R:y	;,
   3105 10 AC E1      [10] 8419 	cmpy	,s++	;cmphi:	;
   3108 10 23 FE 1D   [ 6] 8420 	lbls	L379	;
   310C 16 FB 92      [ 5] 8421 	lbra	L432	;
   310F                    8422 L413:
                           8423 ;----- asm -----
                           8424 ; 2733 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8425 	; #ENR#[1952]printmessage();
                           8426 ;--- end asm ---
   310F 8E 23 BA      [ 3] 8427 	ldx	#LC207	;,
   3112 BD 5B 7A      [ 8] 8428 	jsr	_printMessage
                           8429 ;----- asm -----
                           8430 ; 2735 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8431 	; #ENR#[1953]initsoundno = sound_gong;
                           8432 ;--- end asm ---
   3115 C6 06         [ 2] 8433 	ldb	#6	;,
   3117 F7 C8 A6      [ 5] 8434 	stb	_initSoundNo	;, initSoundNo
                           8435 ;----- asm -----
                           8436 ; 2737 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8437 	; #ENR#[1954]if (randmax(100) > 50)
                           8438 ;--- end asm ---
   311A C6 64         [ 2] 8439 	ldb	#100	;,
   311C BD 5F 2A      [ 8] 8440 	jsr	_RandMax
   311F C1 32         [ 2] 8441 	cmpb	#50	;cmpqi:	; D.3986,
   3121 10 22 00 B2   [ 6] 8442 	lbhi	L471	;
                           8443 ;----- asm -----
                           8444 ; 2760 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8445 	; #ENR#[1971]if (lv>cz) goto thronenothinghappens;
                           8446 ;--- end asm ---
   3125 F6 C9 38      [ 5] 8447 	ldb	_lv	;, lv
   3128 E7 62         [ 5] 8448 	stb	2,s	;, lv.116
   312A F1 C9 67      [ 5] 8449 	cmpb	_cz	;cmpqi:	;, cz
   312D 10 22 F8 71   [ 6] 8450 	lbhi	L408	;
                           8451 ;----- asm -----
                           8452 ; 2764 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8453 	; #ENR#[1974]ex = ull(1000)*ull(ull(2)<<(lv-1)) + 1;
                           8454 ;--- end asm ---
   3131 5A            [ 2] 8455 	decb	;
   3132 E7 67         [ 5] 8456 	stb	7,s	;,
   3134 E6 62         [ 5] 8457 	ldb	2,s	; tmp257, lv.116
   3136 CB EF         [ 2] 8458 	addb	#-17	; tmp257,
   3138 10 2B 00 62   [ 6] 8459 	lbmi	L416	;
   313C 4F            [ 2] 8460 	clra		;zero_extendqihi: R:b -> R:d	; tmp257,
   313D 1F 01         [ 6] 8461 	tfr	d,x	;, tmp258
   313F CC 00 02      [ 3] 8462 	ldd	#2	;,
   3142 34 10         [ 6] 8463 	pshs	x	; tmp258
   3144 30 1F         [ 5] 8464 	leax	-1,x	; tmp258
   3146 8C FF FF      [ 4] 8465 	cmpx	#-1	; tmp258
   3149 27 04         [ 3] 8466 	beq	.+6
   314B 58            [ 2] 8467 	aslb
   314C 49            [ 2] 8468 	rola
   314D 20 F5         [ 3] 8469 	bra	.-9
   314F 35 10         [ 6] 8470 	puls	x	; tmp258
   3151 1F 02         [ 6] 8471 	tfr	d,y	;, tmp344
   3153 CE 00 00      [ 3] 8472 	ldu	#0	; tmp345,
   3156                    8473 L417:
   3156 32 78         [ 5] 8474 	leas	-8,s	;,,
   3158 CC 00 00      [ 3] 8475 	ldd	#0	;,
   315B ED 64         [ 6] 8476 	std	4,s	;,
   315D 8E 03 E8      [ 3] 8477 	ldx	#1000	;,
   3160 AF 66         [ 6] 8478 	stx	6,s	;,
   3162 10 AF E4      [ 6] 8479 	sty	,s	; tmp344,
   3165 EF 62         [ 6] 8480 	stu	2,s	; tmp345,
   3167 30 E8 3E      [ 5] 8481 	leax	62,s	;,,
   316A BD 79 4C      [ 8] 8482 	jsr	___mulsi3
   316D 32 68         [ 5] 8483 	leas	8,s	;,,
   316F 10 AE E8 36   [ 7] 8484 	ldy	54,s	;,
   3173 10 AF 63      [ 7] 8485 	sty	3,s	;,
   3176 EE E8 38      [ 6] 8486 	ldu	56,s	;,
   3179 EF 65         [ 6] 8487 	stu	5,s	;,
   317B EC 65         [ 6] 8488 	ldd	5,s	;,
   317D C3 00 01      [ 4] 8489 	addd	#1	;,
   3180 FD C9 3B      [ 6] 8490 	std	_ex+2	;, ex
   3183 EC 63         [ 6] 8491 	ldd	3,s	;,
   3185 C9 00         [ 2] 8492 	adcb	#0	;
   3187 89 00         [ 2] 8493 	adca	#0	;
   3189 FD C9 39      [ 6] 8494 	std	_ex	;, ex
                           8495 ;----- asm -----
                           8496 ; 2766 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8497 	; #ENR#[1975]checkxp();
                           8498 ;--- end asm ---
   318C BD 53 F8      [ 8] 8499 	jsr	_checkXP
                           8500 ;----- asm -----
                           8501 ; 2768 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8502 	; #ENR#[1976]return return_pause;
                           8503 ;--- end asm ---
   318F C6 07         [ 2] 8504 	ldb	#7	; D.3848,
   3191 16 F3 B7      [ 5] 8505 	lbra	L341	;
   3194                    8506 L470:
                           8507 ;----- asm -----
                           8508 ; 2452 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8509 	; #ENR#[1756]pause(small_pause);
                           8510 ;--- end asm ---
   3194 C6 4B         [ 2] 8511 	ldb	#75	;,
   3196 BD 3E 21      [ 8] 8512 	jsr	_pause
                           8513 ;----- asm -----
                           8514 ; 2454 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8515 	; #ENR#[1757]return return_player_dead;
                           8516 ;--- end asm ---
   3199 C6 02         [ 2] 8517 	ldb	#2	; D.3848,
   319B 16 F3 AD      [ 5] 8518 	lbra	L341	;
   319E                    8519 L416:
   319E C6 0F         [ 2] 8520 	ldb	#15	; tmp261,
   31A0 E0 67         [ 5] 8521 	subb	7,s	; tmp260,
   31A2 4F            [ 2] 8522 	clra		;zero_extendqihi: R:b -> R:d	; tmp260,
   31A3 1F 01         [ 6] 8523 	tfr	d,x	;, tmp263
   31A5 E6 67         [ 5] 8524 	ldb	7,s	;,
   31A7 4F            [ 2] 8525 	clra		;zero_extendqihi: R:b -> R:d	;,
   31A8 ED E4         [ 5] 8526 	std	,s	;,
   31AA CC 00 01      [ 3] 8527 	ldd	#1	;,
   31AD 34 10         [ 6] 8528 	pshs	x	; tmp263
   31AF 30 1F         [ 5] 8529 	leax	-1,x	; tmp263
   31B1 8C FF FF      [ 4] 8530 	cmpx	#-1	; tmp263
   31B4 27 04         [ 3] 8531 	beq	.+6
   31B6 44            [ 2] 8532 	lsra
   31B7 56            [ 2] 8533 	rorb
   31B8 20 F5         [ 3] 8534 	bra	.-9
   31BA 35 10         [ 6] 8535 	puls	x	; tmp263
   31BC 1F 02         [ 6] 8536 	tfr	d,y	;, tmp344
   31BE CC 00 02      [ 3] 8537 	ldd	#2	;,
   31C1 AE E4         [ 5] 8538 	ldx	,s	;,
   31C3 34 10         [ 6] 8539 	pshs	x	;
   31C5 30 1F         [ 5] 8540 	leax	-1,x	;
   31C7 8C FF FF      [ 4] 8541 	cmpx	#-1	;
   31CA 27 04         [ 3] 8542 	beq	.+6
   31CC 58            [ 2] 8543 	aslb
   31CD 49            [ 2] 8544 	rola
   31CE 20 F5         [ 3] 8545 	bra	.-9
   31D0 35 10         [ 6] 8546 	puls	x	;
   31D2 1F 03         [ 6] 8547 	tfr	d,u	;, tmp345
   31D4 16 FF 7F      [ 5] 8548 	lbra	L417	;
   31D7                    8549 L471:
                           8550 ;----- asm -----
                           8551 ; 2743 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8552 	; #ENR#[1959]ex = ex >> 1;
                           8553 ;--- end asm ---
   31D7 FC C9 39      [ 6] 8554 	ldd	_ex	; tmp251, ex
   31DA 1F 98         [ 6] 8555 	tfr	b,a	;,
   31DC 5F            [ 2] 8556 	clrb	;
   31DD 46            [ 2] 8557 	rora	;
   31DE 46            [ 2] 8558 	rora	;
   31DF 84 80         [ 2] 8559 	anda	#-128	;,
   31E1 74 C9 3B      [ 7] 8560 	lsr	_ex+2	; ex
   31E4 76 C9 3C      [ 7] 8561 	ror	_ex+3	; ex
   31E7 BE C9 3B      [ 6] 8562 	ldx	_ex+2	; ex, ex
   31EA 34 10         [ 6] 8563 	pshs	x	; ex
   31EC AA E0         [ 6] 8564 	ora	,s+	;,
   31EE EA E0         [ 6] 8565 	orb	,s+	;,
   31F0 FD C9 3B      [ 6] 8566 	std	_ex+2	; tmp253, ex
   31F3 74 C9 39      [ 7] 8567 	lsr	_ex	; ex
   31F6 76 C9 3A      [ 7] 8568 	ror	_ex+1	; ex
                           8569 ;----- asm -----
                           8570 ; 2745 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8571 	; #ENR#[1960]checkxp();
                           8572 ;--- end asm ---
   31F9 BD 53 F8      [ 8] 8573 	jsr	_checkXP
                           8574 ;----- asm -----
                           8575 ; 2747 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8576 	; #ENR#[1961]if (ch==0)
                           8577 ;--- end asm ---
   31FC BE C9 63      [ 6] 8578 	ldx	_ch	; ch, ch
   31FF 10 26 00 32   [ 6] 8579 	lbne	L415	;
                           8580 ;----- asm -----
                           8581 ; 2751 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8582 	; #ENR#[1964]return return_player_dead;
                           8583 ;--- end asm ---
   3203 C6 02         [ 2] 8584 	ldb	#2	; D.3848,
   3205 16 F3 43      [ 5] 8585 	lbra	L341	;
   3208                    8586 L397:
                           8587 ;----- asm -----
                           8588 ; 2519 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8589 	; #ENR#[1805]printmessage();
                           8590 ;--- end asm ---
   3208 8E 22 46      [ 3] 8591 	ldx	#LC190	;,
   320B BD 5B 7A      [ 8] 8592 	jsr	_printMessage
                           8593 ;----- asm -----
                           8594 ; 2521 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8595 	; #ENR#[1806]cs = cs + randmax(cz*4)+1;
                           8596 ;--- end asm ---
   320E F6 C9 67      [ 5] 8597 	ldb	_cz	; tmp231, cz
   3211 58            [ 2] 8598 	aslb	; tmp231
   3212 58            [ 2] 8599 	aslb	; tmp231
   3213 BD 5F 2A      [ 8] 8600 	jsr	_RandMax
   3216 10 BE C9 65   [ 7] 8601 	ldy	_cs	;, cs
   321A 30 21         [ 5] 8602 	leax	1,y	; tmp232,,
   321C 3A            [ 3] 8603 	abx
   321D BF C9 65      [ 6] 8604 	stx	_cs	; cs.160, cs
                           8605 ;----- asm -----
                           8606 ; 2523 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8607 	; #ENR#[1807]_fl_s(, cs);
                           8608 ;--- end asm ---
   3220 34 10         [ 6] 8609 	pshs	x	; cs.160
   3222 8E 22 6B      [ 3] 8610 	ldx	#LC191	;,
   3225 BD 5F 6F      [ 8] 8611 	jsr	__fl_s
                           8612 ;----- asm -----
                           8613 ; 2525 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8614 	; #ENR#[1808]printmessage(stringbuffer40);
                           8615 ;--- end asm ---
   3228 8E C8 BF      [ 3] 8616 	ldx	#_stringBuffer40	;,
   322B BD 5B 7A      [ 8] 8617 	jsr	_printMessage
                           8618 ;----- asm -----
                           8619 ; 2527 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8620 	; #ENR#[1809]return return_pause;
                           8621 ;--- end asm ---
   322E C6 07         [ 2] 8622 	ldb	#7	; D.3848,
   3230 32 62         [ 5] 8623 	leas	2,s	;,,
   3232 16 F3 16      [ 5] 8624 	lbra	L341	;
   3235                    8625 L415:
                           8626 ;----- asm -----
                           8627 ; 2754 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8628 	; #ENR#[1966]return return_pause;
                           8629 ;--- end asm ---
   3235 C6 07         [ 2] 8630 	ldb	#7	; D.3848,
   3237 16 F3 11      [ 5] 8631 	lbra	L341	;
   323A                    8632 LC223:
   323A 3E 00              8633 	.ascii	">\0"
   323C                    8634 LC224:
   323C 53 54 41 59 2E 2E  8635 	.ascii	"STAY...\0"
        2E 00
   3244                    8636 LC225:
   3244 59 4F 55 20 44 49  8637 	.ascii	"YOU DIED!!\0"
        45 44 21 21 00
   324F                    8638 LC226:
   324F 41 4E 4F 54 48 45  8639 	.byte	65,78,79,84,72,69,82,32
        52 20
   3257 4E 4F 54 20 53 4F  8640 	.byte	78,79,84,32,83,79,32,-128
        20 80
   325F 00                 8641 	.byte	0
   3260                    8642 LC227:
   3260 41 4E 4F 54 48 45  8643 	.byte	65,78,79,84,72,69,82,-128
        52 80
   3268 00                 8644 	.byte	0
   3269                    8645 LC228:
   3269 4D 49 47 48 54 59  8646 	.byte	77,73,71,72,84,89,32,65
        20 41
   3271 44 56 45 4E 54 55  8647 	.byte	68,86,69,78,84,85,82,69
        52 45
   3279 52 80 00           8648 	.byte	82,-128,0
   327C                    8649 LC229:
   327C 42 49 54 45 53 20  8650 	.byte	66,73,84,69,83,32,84,72
        54 48
   3284 45 20 44 55 53 54  8651 	.byte	69,32,68,85,83,84,-128,0
        80 00
   328C                    8652 LC230:
   328C 44 4F 20 59 4F 55  8653 	.byte	68,79,32,89,79,85,32,87
        20 57
   3294 41 4E 54 20 54 4F  8654 	.byte	65,78,84,32,84,79,32,-128
        20 80
   329C 00                 8655 	.byte	0
   329D                    8656 LC231:
   329D 54 52 59 20 41 47  8657 	.byte	84,82,89,32,65,71,65,73
        41 49
   32A5 4E 3F 20 3C 31 2D  8658 	.byte	78,63,32,60,49,45,52,62
        34 3E
   32AD 80 00              8659 	.byte	-128,0
   32AF                    8660 LC232:
   32AF 4C 4F 41 44 20 41  8661 	.byte	76,79,65,68,32,65,32,67
        20 43
   32B7 48 41 52 41 43 54  8662 	.byte	72,65,82,65,67,84,69,82
        45 52
   32BF 3F 20 3C 34 3E 80  8663 	.byte	63,32,60,52,62,-128,0
        00
   32C6                    8664 LC233:
   32C6 43 48 41 52 41 43  8665 	.ascii	"CHARACTER LOADED\0"
        54 45 52 20 4C 4F
        41 44 45 44 00
                           8666 	.globl	_main
   32D7                    8667 _main:
   32D7 34 60         [ 7] 8668 	pshs	y,u	;
   32D9 32 73         [ 5] 8669 	leas	-13,s	;,,
                           8670 ;----- asm -----
                           8671 ; 3003 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8672 	; #ENR#[2143]initflash();
                           8673 ;--- end asm ---
   32DB C6 08         [ 2] 8674 	ldb	#8	;,
   32DD BD 00 6E      [ 8] 8675 	jsr	_subBank0
                           8676 ;----- asm -----
                           8677 ; 3005 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8678 	; #ENR#[2144]restart:
                           8679 ;--- end asm ---
   32E0                    8680 L473:
                           8681 ;----- asm -----
                           8682 ; 3007 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8683 	; #ENR#[2145]initvars();
                           8684 ;--- end asm ---
   32E0 BD 57 18      [ 8] 8685 	jsr	_initVars
                           8686 ;----- asm -----
                           8687 ; 3009 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8688 	; #ENR#[2146]#ifndef no_title
                           8689 ; 3011 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8690 	; #ENR#[2147]ch = -1;
                           8691 ;--- end asm ---
   32E3 CC FF FF      [ 3] 8692 	ldd	#-1	;,
   32E6 FD C9 63      [ 6] 8693 	std	_ch	;, ch
                           8694 ;----- asm -----
                           8695 ; 3013 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8696 	; #ENR#[2148]titlescreen();
                           8697 ;--- end asm ---
   32E9 5F            [ 2] 8698 	clrb	;
   32EA BD 00 6E      [ 8] 8699 	jsr	_subBank0
                           8700 ;----- asm -----
                           8701 ; 3015 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8702 	; #ENR#[2149]if (ch != -1)
                           8703 ;--- end asm ---
   32ED BE C9 63      [ 6] 8704 	ldx	_ch	;, ch
   32F0 8C FF FF      [ 4] 8705 	cmpx	#-1	;cmphi:	;,
   32F3 10 27 02 5C   [ 6] 8706 	lbeq	L474	;
                           8707 ;----- asm -----
                           8708 ; 3018 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8709 	; #ENR#[2151]goto loadfromflash;
                           8710 ;--- end asm ---
   32F7                    8711 L475:
                           8712 ;----- asm -----
                           8713 ; 3443 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8714 	; #ENR#[2436]loadflash();
                           8715 ;--- end asm ---
   32F7 C6 04         [ 2] 8716 	ldb	#4	;,
   32F9 BD 00 6E      [ 8] 8717 	jsr	_subBank0
                           8718 ;----- asm -----
                           8719 ; 3445 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8720 	; #ENR#[2437]fillmap = go_redraw;
                           8721 ;--- end asm ---
   32FC C6 7F         [ 2] 8722 	ldb	#127	;,
   32FE F7 C8 FC      [ 5] 8723 	stb	_fillMap	;, fillMap
                           8724 ;----- asm -----
                           8725 ; 3447 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8726 	; #ENR#[2438]printcharacter = 1;
                           8727 ;--- end asm ---
   3301 C6 01         [ 2] 8728 	ldb	#1	;,
   3303 F7 C8 F7      [ 5] 8729 	stb	_printCharacter	;, printCharacter
                           8730 ;----- asm -----
                           8731 ; 3449 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8732 	; #ENR#[2439]printdungeon = 1;
                           8733 ;--- end asm ---
   3306 F7 C8 F3      [ 5] 8734 	stb	_printDungeon	;, printDungeon
   3309                    8735 L525:
                           8736 ;----- asm -----
                           8737 ; 3482 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8738 	; #ENR#[2459]clearmessage();
                           8739 ;--- end asm ---
   3309 7F C9 87      [ 7] 8740 	clr	_msgLine	; msgLine
                           8741 ;----- asm -----
                           8742 ; 3484 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8743 	; #ENR#[2460]printmessage();
                           8744 ;--- end asm ---
   330C 8E 32 C6      [ 3] 8745 	ldx	#LC233	;,
   330F BD 5B 7A      [ 8] 8746 	jsr	_printMessage
                           8747 ;----- asm -----
                           8748 ; 3486 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8749 	; #ENR#[2461]ch = (signed long int) hp;
                           8750 ;--- end asm ---
   3312 BE C9 36      [ 6] 8751 	ldx	_hp	;, hp
   3315 BF C9 63      [ 6] 8752 	stx	_ch	;, ch
                           8753 ;----- asm -----
                           8754 ; 3488 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8755 	; #ENR#[2462]gd = 0;
                           8756 ;--- end asm ---
   3318 CC 00 00      [ 3] 8757 	ldd	#0	;,
   331B FD C9 68      [ 6] 8758 	std	_gd	;, gd
   331E FD C9 6A      [ 6] 8759 	std	_gd+2	;, gd
                           8760 ;----- asm -----
                           8761 ; 3490 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8762 	; #ENR#[2463]cz = 1;
                           8763 ;--- end asm ---
   3321 C6 01         [ 2] 8764 	ldb	#1	;,
   3323 F7 C9 67      [ 5] 8765 	stb	_cz	;, cz
                           8766 ;----- asm -----
                           8767 ; 3492 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8768 	; #ENR#[2464]cs = su;
                           8769 ;--- end asm ---
   3326 BE C9 3D      [ 6] 8770 	ldx	_su	;, su
   3329 BF C9 65      [ 6] 8771 	stx	_cs	;, cs
                           8772 ;----- asm -----
                           8773 ; 3495 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8774 	; #ENR#[2466]for (int i=0; i<11;i++) sf[i] = 0;
                           8775 ;--- end asm ---
   332C 8E 00 02      [ 3] 8776 	ldx	#2	; tmp229,
   332F CC C9 6C      [ 3] 8777 	ldd	#_sf	; tmp227,
   3332 4F            [ 2] 8778 	clra	;andqi(ZERO)	;
   3333 C4 01         [ 2] 8779 	andb	#1	;,
   3335 1F 03         [ 6] 8780 	tfr	d,u	; tmp227, tmp226
   3337 1F 10         [ 6] 8781 	tfr	x,d	; tmp229,
   3339 34 40         [ 6] 8782 	pshs	u	;subhi: R:d -= R:u	; tmp226,
   333B A3 E1         [ 9] 8783 	subd	,s++	;
                           8784 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   333D 1F 01         [ 6] 8785 	tfr	d,x	;, tmp228
                           8786 ; ORG>	tfr	d,x	;, tmp228
                           8787 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp228,
   333F C4 01         [ 2] 8788 	andb	#1	;,
   3341 E7 6A         [ 5] 8789 	stb	10,s	;, prolog_loop_niters.722
   3343 10 27 05 55   [ 6] 8790 	lbeq	L542	;
   3347 7F C9 6C      [ 7] 8791 	clr	_sf	; sf
   334A C6 01         [ 2] 8792 	ldb	#1	;,
   334C E7 66         [ 5] 8793 	stb	6,s	;, i
   334E C6 0A         [ 2] 8794 	ldb	#10	;,
   3350 E7 69         [ 5] 8795 	stb	9,s	;, ivtmp.660
   3352                    8796 L530:
   3352 C6 0B         [ 2] 8797 	ldb	#11	; tmp232,
   3354 E0 6A         [ 5] 8798 	subb	10,s	; tmp232, prolog_loop_niters.722
   3356 E7 6B         [ 5] 8799 	stb	11,s	; tmp232, niters.725
   3358 E6 6A         [ 5] 8800 	ldb	10,s	;, prolog_loop_niters.722
   335A 4F            [ 2] 8801 	clra		;zero_extendqihi: R:b -> R:d	;,
   335B 1F 03         [ 6] 8802 	tfr	d,u	;,
   335D 30 C9 C9 6C   [ 8] 8803 	leax	_sf,u	; ivtmp.755,,
   3361 6F 62         [ 7] 8804 	clr	2,s	; ivtmp.753
   3363                    8805 L531:
   3363 CC 00 00      [ 3] 8806 	ldd	#0	;,
   3366 ED 81         [ 8] 8807 	std	,x++	;,
   3368 6C 62         [ 7] 8808 	inc	2,s	; ivtmp.753
   336A E6 62         [ 5] 8809 	ldb	2,s	;, ivtmp.753
   336C C1 04         [ 2] 8810 	cmpb	#4	;cmpqi:	;,
   336E 23 F3         [ 3] 8811 	bls	L531	;
   3370 E6 69         [ 5] 8812 	ldb	9,s	;, ivtmp.660
   3372 CB F6         [ 2] 8813 	addb	#-10	;,
   3374 E7 6C         [ 5] 8814 	stb	12,s	;, ivtmp.741
   3376 E6 66         [ 5] 8815 	ldb	6,s	;, i
   3378 CB 0A         [ 2] 8816 	addb	#10	;,
   337A E7 62         [ 5] 8817 	stb	2,s	;, i.799
   337C E6 6B         [ 5] 8818 	ldb	11,s	;, niters.725
   337E C1 0A         [ 2] 8819 	cmpb	#10	;cmpqi:	;,
   3380 27 0F         [ 3] 8820 	beq	L532	;
   3382                    8821 L537:
   3382 E6 62         [ 5] 8822 	ldb	2,s	;, i.799
   3384 1D            [ 2] 8823 	sex		;extendqihi2: R:b -> R:d	;,
   3385 1F 01         [ 6] 8824 	tfr	d,x	;, i.799
   3387 6F 89 C9 6C   [10] 8825 	clr	_sf,x	; sf
   338B 6C 62         [ 7] 8826 	inc	2,s	; i.799
   338D 6A 6C         [ 7] 8827 	dec	12,s	; ivtmp.741
   338F 26 F1         [ 3] 8828 	bne	L537	;
   3391                    8829 L532:
   3391 BD 3F 2B      [ 8] 8830 	jsr	_clearMonsterStack
                           8831 ;----- asm -----
                           8832 ; 3498 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8833 	; #ENR#[2468]_x = vec_loop_count_lo;
                           8834 ;--- end asm ---
   3394 F6 C8 26      [ 5] 8835 	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
   3397 F7 CA 78      [ 5] 8836 	stb	__x	;, _x
                           8837 ;----- asm -----
                           8838 ; 3500 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8839 	; #ENR#[2469]setrandseednp();
                           8840 ;--- end asm ---
   339A BD 68 36      [ 8] 8841 	jsr	_setRandSeedNP
                           8842 ;----- asm -----
                           8843 ; 3503 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8844 	; #ENR#[2471]goto newturnstart;
                           8845 ;--- end asm ---
   339D                    8846 L478:
                           8847 ;----- asm -----
                           8848 ; 3304 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8849 	; #ENR#[2348]turnstarting = 1;
                           8850 ; 3306 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8851 	; #ENR#[2349]newturnnotstart:
                           8852 ;--- end asm ---
   339D C6 01         [ 2] 8853 	ldb	#1	;,
   339F E7 63         [ 5] 8854 	stb	3,s	;, turnStarting
   33A1                    8855 L497:
                           8856 ;----- asm -----
                           8857 ; 3309 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8858 	; #ENR#[2351]m = -1;
                           8859 ;--- end asm ---
   33A1 C6 FF         [ 2] 8860 	ldb	#-1	;,
   33A3 F7 C9 77      [ 5] 8861 	stb	_m	;, m
                           8862 ;----- asm -----
                           8863 ; 3311 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8864 	; #ENR#[2352]mh = 0;
                           8865 ;--- end asm ---
   33A6 CC 00 00      [ 3] 8866 	ldd	#0	;,
   33A9 FD C9 78      [ 6] 8867 	std	_mh	;, mh
                           8868 ;----- asm -----
                           8869 ; 3313 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8870 	; #ENR#[2353]timer = action_time;
                           8871 ;--- end asm ---
   33AC C6 FA         [ 2] 8872 	ldb	#-6	;,
   33AE F7 C8 A7      [ 5] 8873 	stb	_timer	;, timer
                           8874 ;----- asm -----
                           8875 ; 3322 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8876 	; #ENR#[2361]for (int i=0; i<11;i++)
                           8877 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8878 	; #ENR#[2363]if (sf[i] != 0)
                           8879 ;--- end asm ---
   33B1 F6 C9 6C      [ 5] 8880 	ldb	_sf	; temp.820, sf
   33B4 27 04         [ 3] 8881 	beq	L501	;
   33B6 5A            [ 2] 8882 	decb	; temp.820
   33B7 F7 C9 6C      [ 5] 8883 	stb	_sf	; temp.820, sf
   33BA                    8884 L501:
                           8885 ;----- asm -----
                           8886 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8887 	; #ENR#[2363]if (sf[i] != 0)
                           8888 ;--- end asm ---
   33BA F6 C9 6D      [ 5] 8889 	ldb	_sf+1	; temp.822, sf
   33BD 27 04         [ 3] 8890 	beq	L502	;
   33BF 5A            [ 2] 8891 	decb	; temp.822
   33C0 F7 C9 6D      [ 5] 8892 	stb	_sf+1	; temp.822, sf
   33C3                    8893 L502:
                           8894 ;----- asm -----
                           8895 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8896 	; #ENR#[2363]if (sf[i] != 0)
                           8897 ;--- end asm ---
   33C3 F6 C9 6E      [ 5] 8898 	ldb	_sf+2	; temp.824, sf
   33C6 27 04         [ 3] 8899 	beq	L503	;
   33C8 5A            [ 2] 8900 	decb	; temp.824
   33C9 F7 C9 6E      [ 5] 8901 	stb	_sf+2	; temp.824, sf
   33CC                    8902 L503:
                           8903 ;----- asm -----
                           8904 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8905 	; #ENR#[2363]if (sf[i] != 0)
                           8906 ;--- end asm ---
   33CC F6 C9 6F      [ 5] 8907 	ldb	_sf+3	; temp.826, sf
   33CF 27 04         [ 3] 8908 	beq	L504	;
   33D1 5A            [ 2] 8909 	decb	; temp.826
   33D2 F7 C9 6F      [ 5] 8910 	stb	_sf+3	; temp.826, sf
   33D5                    8911 L504:
                           8912 ;----- asm -----
                           8913 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8914 	; #ENR#[2363]if (sf[i] != 0)
                           8915 ;--- end asm ---
   33D5 F6 C9 70      [ 5] 8916 	ldb	_sf+4	; temp.828, sf
   33D8 27 04         [ 3] 8917 	beq	L505	;
   33DA 5A            [ 2] 8918 	decb	; temp.828
   33DB F7 C9 70      [ 5] 8919 	stb	_sf+4	; temp.828, sf
   33DE                    8920 L505:
                           8921 ;----- asm -----
                           8922 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8923 	; #ENR#[2363]if (sf[i] != 0)
                           8924 ;--- end asm ---
   33DE F6 C9 71      [ 5] 8925 	ldb	_sf+5	; temp.830, sf
   33E1 27 04         [ 3] 8926 	beq	L506	;
   33E3 5A            [ 2] 8927 	decb	; temp.830
   33E4 F7 C9 71      [ 5] 8928 	stb	_sf+5	; temp.830, sf
   33E7                    8929 L506:
                           8930 ;----- asm -----
                           8931 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8932 	; #ENR#[2363]if (sf[i] != 0)
                           8933 ;--- end asm ---
   33E7 F6 C9 72      [ 5] 8934 	ldb	_sf+6	; temp.832, sf
   33EA 27 04         [ 3] 8935 	beq	L507	;
   33EC 5A            [ 2] 8936 	decb	; temp.832
   33ED F7 C9 72      [ 5] 8937 	stb	_sf+6	; temp.832, sf
   33F0                    8938 L507:
                           8939 ;----- asm -----
                           8940 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8941 	; #ENR#[2363]if (sf[i] != 0)
                           8942 ;--- end asm ---
   33F0 F6 C9 73      [ 5] 8943 	ldb	_sf+7	; temp.834, sf
   33F3 27 04         [ 3] 8944 	beq	L508	;
   33F5 5A            [ 2] 8945 	decb	; temp.834
   33F6 F7 C9 73      [ 5] 8946 	stb	_sf+7	; temp.834, sf
   33F9                    8947 L508:
                           8948 ;----- asm -----
                           8949 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8950 	; #ENR#[2363]if (sf[i] != 0)
                           8951 ;--- end asm ---
   33F9 F6 C9 74      [ 5] 8952 	ldb	_sf+8	; temp.836, sf
   33FC 27 04         [ 3] 8953 	beq	L509	;
   33FE 5A            [ 2] 8954 	decb	; temp.836
   33FF F7 C9 74      [ 5] 8955 	stb	_sf+8	; temp.836, sf
   3402                    8956 L509:
                           8957 ;----- asm -----
                           8958 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8959 	; #ENR#[2363]if (sf[i] != 0)
                           8960 ;--- end asm ---
   3402 F6 C9 75      [ 5] 8961 	ldb	_sf+9	; temp.838, sf
   3405 27 04         [ 3] 8962 	beq	L510	;
   3407 5A            [ 2] 8963 	decb	; temp.838
   3408 F7 C9 75      [ 5] 8964 	stb	_sf+9	; temp.838, sf
   340B                    8965 L510:
                           8966 ;----- asm -----
                           8967 ; 3325 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8968 	; #ENR#[2363]if (sf[i] != 0)
                           8969 ;--- end asm ---
   340B F6 C9 76      [ 5] 8970 	ldb	_sf+10	; D.4080, sf
   340E 27 04         [ 3] 8971 	beq	L511	;
   3410 5A            [ 2] 8972 	decb	; D.4080
   3411 F7 C9 76      [ 5] 8973 	stb	_sf+10	; D.4080, sf
   3414                    8974 L511:
                           8975 ;----- asm -----
                           8976 ; 3333 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8977 	; #ENR#[2370]if ((inventory[ring_of_regeneration]) && ((unsigned int)ch != hp))
                           8978 ;--- end asm ---
   3414 BE C9 55      [ 6] 8979 	ldx	_inventory+10	; D.4082, inventory
   3417 27 26         [ 3] 8980 	beq	L499	;
   3419 FE C9 63      [ 6] 8981 	ldu	_ch	; ch.790, ch
   341C 1F 30         [ 6] 8982 	tfr	u,d	; ch.790,
   341E 4F            [ 2] 8983 	clra		;zero_extendqihi: R:b -> R:d	;,
   341F 10 B3 C9 36   [ 8] 8984 	cmpd	_hp	;cmphi:	; ch.790, hp
   3423 27 1A         [ 3] 8985 	beq	L499	;
                           8986 ;----- asm -----
                           8987 ; 3336 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8988 	; #ENR#[2372]ch=ch+(signed long int)inventory[ring_of_regeneration];
                           8989 ;--- end asm ---
   3425 1E 01         [ 8] 8990 	exg	d,x	;, D.4082
   3427 33 CB         [ 8] 8991 	leau	d,u	; ch.196,, ch.196
   3429 FF C9 63      [ 6] 8992 	stu	_ch	; ch.196, ch
                           8993 ;----- asm -----
                           8994 ; 3338 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           8995 	; #ENR#[2373]if ((unsigned int)ch>hp) ch=(signed int)hp;
                           8996 ;--- end asm ---
   342C BE C9 36      [ 6] 8997 	ldx	_hp	; hp.793, hp
   342F 1F 30         [ 6] 8998 	tfr	u,d	; ch.196,
   3431 4F            [ 2] 8999 	clra		;zero_extendqihi: R:b -> R:d	;,
   3432 34 10         [ 6] 9000 	pshs	x	;cmphi: R:x with R:d	; hp.793, ch.196
   3434 10 A3 E1      [10] 9001 	cmpd	,s++	;cmphi:	; ch.196
   3437 2F 06         [ 3] 9002 	ble	L499	;
   3439 1F 10         [ 6] 9003 	tfr	x,d	; hp.793,
   343B 1D            [ 2] 9004 	sex		;extendqihi2: R:b -> R:d	;,
   343C FD C9 63      [ 6] 9005 	std	_ch	; hp.793, ch
   343F                    9006 L499:
                           9007 ;----- asm -----
                           9008 ; 3342 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9009 	; #ENR#[2376]timer--;
                           9010 ;--- end asm ---
   343F 7A C8 A7      [ 7] 9011 	dec	_timer	; timer
   3442                    9012 L512:
                           9013 ;----- asm -----
                           9014 ; 3064 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9015 	; #ENR#[2181]displayround();
                           9016 ;--- end asm ---
   3442 BD 3D AC      [ 8] 9017 	jsr	_displayRound
                           9018 ;----- asm -----
                           9019 ; 3067 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9020 	; #ENR#[2183]if (turnstarting)
                           9021 ;--- end asm ---
   3445 6D 63         [ 7] 9022 	tst	3,s	; turnStarting
   3447 10 27 00 CC   [ 6] 9023 	lbeq	L476	;
                           9024 ;----- asm -----
                           9025 ; 3070 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9026 	; #ENR#[2185]turnstarting = 0;
                           9027 ; 3072 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9028 	; #ENR#[2186]l = cz;
                           9029 ;--- end asm ---
   344B F6 C9 67      [ 5] 9030 	ldb	_cz	;, cz
   344E F7 C9 80      [ 5] 9031 	stb	_l	;, l
                           9032 ;----- asm -----
                           9033 ; 3079 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9034 	; #ENR#[2192]tmp = 0;
                           9035 ;--- end asm ---
   3451 7F C8 FE      [ 7] 9036 	clr	_tmp	; tmp
                           9037 ;----- asm -----
                           9038 ; 3081 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9039 	; #ENR#[2193]#ifndef no_monster
                           9040 ; 3083 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9041 	; #ENR#[2194]monsterreturns:
                           9042 ;--- end asm ---
   3454 F6 C8 FE      [ 5] 9043 	ldb	_tmp	;, tmp
   3457                    9044 L540:
                           9045 ;----- asm -----
                           9046 ; 3085 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9047 	; #ENR#[2195]tmp = handleencounters(tmp);
                           9048 ;--- end asm ---
   3457 BD 0D FE      [ 8] 9049 	jsr	_handleEncounters
   345A E7 62         [ 5] 9050 	stb	2,s	;, tmp.188
   345C F7 C8 FE      [ 5] 9051 	stb	_tmp	;, tmp
                           9052 ;----- asm -----
                           9053 ; 3087 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9054 	; #ENR#[2196]m=-1;
                           9055 ;--- end asm ---
   345F C6 FF         [ 2] 9056 	ldb	#-1	;,
   3461 F7 C9 77      [ 5] 9057 	stb	_m	;, m
                           9058 ;----- asm -----
                           9059 ; 3089 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9060 	; #ENR#[2197]ml = 0;
                           9061 ;--- end asm ---
   3464 7F C9 7F      [ 7] 9062 	clr	_ml	; ml
                           9063 ;----- asm -----
                           9064 ; 3091 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9065 	; #ENR#[2198]mh = 0;
                           9066 ;--- end asm ---
   3467 CC 00 00      [ 3] 9067 	ldd	#0	;,
   346A FD C9 78      [ 6] 9068 	std	_mh	;, mh
                           9069 ;----- asm -----
                           9070 ; 3093 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9071 	; #ENR#[2199]if (tmp== return_new_turn)
                           9072 ;--- end asm ---
   346D E6 62         [ 5] 9073 	ldb	2,s	;, tmp.188
   346F C1 01         [ 2] 9074 	cmpb	#1	;cmpqi:	;,
   3471 10 27 01 2A   [ 6] 9075 	lbeq	L543	;
   3475 C1 02         [ 2] 9076 	cmpb	#2	;cmpqi:	;,
   3477 10 27 01 2F   [ 6] 9077 	lbeq	L544	;
   347B C1 03         [ 2] 9078 	cmpb	#3	;cmpqi:	;,
   347D 10 27 00 5B   [ 6] 9079 	lbeq	L545	;
   3481 C1 04         [ 2] 9080 	cmpb	#4	;cmpqi:	;,
   3483 10 27 00 6A   [ 6] 9081 	lbeq	L546	;
   3487 C1 05         [ 2] 9082 	cmpb	#5	;cmpqi:	;,
   3489 10 27 00 6C   [ 6] 9083 	lbeq	L547	;
   348D                    9084 L482:
                           9085 ;----- asm -----
                           9086 ; 3132 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9087 	; #ENR#[2228]#endif
                           9088 ; 3137 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9089 	; #ENR#[2232]tmp = handletreasure(tmp);
                           9090 ;--- end asm ---
   348D F6 C8 FE      [ 5] 9091 	ldb	_tmp	;, tmp
   3490 BD 19 AA      [ 8] 9092 	jsr	_handleTreasure
   3493 E7 62         [ 5] 9093 	stb	2,s	;, tmp.189
   3495 F7 C8 FE      [ 5] 9094 	stb	_tmp	;, tmp
                           9095 ;----- asm -----
                           9096 ; 3139 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9097 	; #ENR#[2233]printtreasure=-1;
                           9098 ;--- end asm ---
   3498 C6 FF         [ 2] 9099 	ldb	#-1	;,
   349A F7 C8 F5      [ 5] 9100 	stb	_printTreasure	;, printTreasure
                           9101 ;----- asm -----
                           9102 ; 3142 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9103 	; #ENR#[2235]if (tmp == return_player_dead)
                           9104 ;--- end asm ---
   349D E6 62         [ 5] 9105 	ldb	2,s	;, tmp.189
   349F C1 02         [ 2] 9106 	cmpb	#2	;cmpqi:	;,
   34A1 10 27 02 A6   [ 6] 9107 	lbeq	L548	;
   34A5 C1 06         [ 2] 9108 	cmpb	#6	;cmpqi:	;,
   34A7 10 27 00 54   [ 6] 9109 	lbeq	L549	;
   34AB C1 05         [ 2] 9110 	cmpb	#5	;cmpqi:	;,
   34AD 10 27 00 3A   [ 6] 9111 	lbeq	L550	;
   34B1                    9112 L487:
                           9113 ;----- asm -----
                           9114 ; 3173 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9115 	; #ENR#[2258]handlespecial:
                           9116 ;--- end asm ---
   34B1                    9117 L484:
                           9118 ;----- asm -----
                           9119 ; 3175 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9120 	; #ENR#[2259]tmp = handlespecial(tmp);
                           9121 ;--- end asm ---
   34B1 F6 C8 FE      [ 5] 9122 	ldb	_tmp	;, tmp
   34B4 BD 25 2D      [ 8] 9123 	jsr	_handleSpecial
   34B7 F7 C8 FE      [ 5] 9124 	stb	_tmp	; tmp.190, tmp
                           9125 ;----- asm -----
                           9126 ; 3177 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9127 	; #ENR#[2260]if (tmp == return_pause)
                           9128 ;--- end asm ---
   34BA C1 07         [ 2] 9129 	cmpb	#7	;cmpqi:	; tmp.190,
   34BC 10 27 00 4F   [ 6] 9130 	lbeq	L551	;
   34C0 C1 01         [ 2] 9131 	cmpb	#1	;cmpqi:	; tmp.190,
   34C2 10 27 02 7A   [ 6] 9132 	lbeq	L552	;
   34C6 C1 02         [ 2] 9133 	cmpb	#2	;cmpqi:	; tmp.190,
   34C8 10 27 02 6E   [ 6] 9134 	lbeq	L553	;
   34CC C1 1E         [ 2] 9135 	cmpb	#30	;cmpqi:	; tmp.190,
   34CE 27 12         [ 3] 9136 	beq	L554	;
   34D0 C1 1F         [ 2] 9137 	cmpb	#31	;cmpqi:	; tmp.190,
   34D2 10 26 00 41   [ 6] 9138 	lbne	L476	;
                           9139 ;----- asm -----
                           9140 ; 3213 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9141 	; #ENR#[2285]#ifndef no_monster
                           9142 ; 3215 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9143 	; #ENR#[2286]tmp = return_monster_is_set;
                           9144 ;--- end asm ---
   34D6 F7 C8 FE      [ 5] 9145 	stb	_tmp	;, tmp
                           9146 ;----- asm -----
                           9147 ; 3217 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9148 	; #ENR#[2287]goto monsterreturns;
                           9149 ;--- end asm ---
   34D9 16 FF 7B      [ 5] 9150 	lbra	L540	;
   34DC                    9151 L545:
                           9152 ;----- asm -----
                           9153 ; 3112 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9154 	; #ENR#[2212]tmp = 0;
                           9155 ;--- end asm ---
   34DC 7F C8 FE      [ 7] 9156 	clr	_tmp	; tmp
   34DF 16 FF AB      [ 5] 9157 	lbra	L482	;
   34E2                    9158 L554:
                           9159 ;----- asm -----
                           9160 ; 3203 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9161 	; #ENR#[2278]#ifndef no_monster
                           9162 ; 3205 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9163 	; #ENR#[2279]tmp = 0;
                           9164 ;--- end asm ---
   34E2 7F C8 FE      [ 7] 9165 	clr	_tmp	; tmp
                           9166 ;----- asm -----
                           9167 ; 3207 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9168 	; #ENR#[2280]goto monsterreturns;
                           9169 ;--- end asm ---
   34E5 F6 C8 FE      [ 5] 9170 	ldb	_tmp	;, tmp
   34E8 16 FF 6C      [ 5] 9171 	lbra	L540	;
   34EB                    9172 L550:
                           9173 ;----- asm -----
                           9174 ; 3166 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9175 	; #ENR#[2252]tmp = 0;
                           9176 ;--- end asm ---
   34EB 7F C8 FE      [ 7] 9177 	clr	_tmp	; tmp
   34EE 16 FF C0      [ 5] 9178 	lbra	L487	;
   34F1                    9179 L546:
                           9180 ;----- asm -----
                           9181 ; 3120 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9182 	; #ENR#[2219]tmp = 1;
                           9183 ;--- end asm ---
   34F1 C6 01         [ 2] 9184 	ldb	#1	;,
   34F3 F7 C8 FE      [ 5] 9185 	stb	_tmp	;, tmp
   34F6 16 FF 94      [ 5] 9186 	lbra	L482	;
   34F9                    9187 L547:
                           9188 ;----- asm -----
                           9189 ; 3125 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9190 	; #ENR#[2223]tmp = 0;
                           9191 ;--- end asm ---
   34F9 7F C8 FE      [ 7] 9192 	clr	_tmp	; tmp
                           9193 ;----- asm -----
                           9194 ; 3129 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9195 	; #ENR#[2226]goto handlespecial;
                           9196 ;--- end asm ---
   34FC 16 FF B2      [ 5] 9197 	lbra	L484	;
   34FF                    9198 L549:
                           9199 ;----- asm -----
                           9200 ; 3152 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9201 	; #ENR#[2242]#ifndef no_monster
                           9202 ; 3154 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9203 	; #ENR#[2243]if (monsteronstackadvance() != 0)
                           9204 ;--- end asm ---
   34FF BD 3E B8      [ 8] 9205 	jsr	_monsterOnStackAdvance
   3502 5D            [ 2] 9206 	tstb	; D.4069
   3503 10 27 FF AA   [ 6] 9207 	lbeq	L487	;
                           9208 ;----- asm -----
                           9209 ; 3157 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9210 	; #ENR#[2245]tmp = return_monster_is_set;
                           9211 ;--- end asm ---
   3507 C6 1F         [ 2] 9212 	ldb	#31	;,
   3509 F7 C8 FE      [ 5] 9213 	stb	_tmp	;, tmp
                           9214 ;----- asm -----
                           9215 ; 3159 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9216 	; #ENR#[2246]goto monsterreturns;
                           9217 ;--- end asm ---
   350C 16 FF 48      [ 5] 9218 	lbra	L540	;
   350F                    9219 L551:
                           9220 ;----- asm -----
                           9221 ; 3180 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9222 	; #ENR#[2262]tmp = 0;
                           9223 ;--- end asm ---
   350F 7F C8 FE      [ 7] 9224 	clr	_tmp	; tmp
                           9225 ;----- asm -----
                           9226 ; 3182 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9227 	; #ENR#[2263]pause(small_pause);
                           9228 ;--- end asm ---
   3512 C6 4B         [ 2] 9229 	ldb	#75	;,
   3514 BD 3E 21      [ 8] 9230 	jsr	_pause
   3517                    9231 L476:
                           9232 ;----- asm -----
                           9233 ; 3223 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9234 	; #ENR#[2292]clearmessage();
                           9235 ;--- end asm ---
   3517 7F C9 87      [ 7] 9236 	clr	_msgLine	; msgLine
                           9237 ;----- asm -----
                           9238 ; 3225 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9239 	; #ENR#[2293]printmessage();
                           9240 ;--- end asm ---
   351A 8E 32 3A      [ 3] 9241 	ldx	#LC223	;,
   351D BD 5B 7A      [ 8] 9242 	jsr	_printMessage
                           9243 ;----- asm -----
                           9244 ; 3233 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9245 	; #ENR#[2300]tmp = handlemovement();
                           9246 ;--- end asm ---
   3520 BD 17 65      [ 8] 9247 	jsr	_handleMovement
   3523 F7 C8 FE      [ 5] 9248 	stb	_tmp	; tmp.191, tmp
                           9249 ;----- asm -----
                           9250 ; 3235 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9251 	; #ENR#[2301]if (tmp)
                           9252 ;--- end asm ---
   3526 5D            [ 2] 9253 	tstb	; tmp.191
   3527 26 1F         [ 3] 9254 	bne	L555	;
                           9255 ;----- asm -----
                           9256 ; 3250 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9257 	; #ENR#[2312]if (button_1_4_pressed()) timer = 0;
                           9258 ;--- end asm ---
   3529 F6 C8 11      [ 5] 9259 	ldb	_Vec_Buttons	;, Vec_Buttons
   352C E7 67         [ 5] 9260 	stb	7,s	;, D.4780
   352E C5 08         [ 2] 9261 	bitb	#8	;,
   3530 10 27 00 38   [ 6] 9262 	lbeq	L494	;
   3534 7F C8 A7      [ 7] 9263 	clr	_timer	; timer
   3537                    9264 L495:
                           9265 ;----- asm -----
                           9266 ; 3274 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9267 	; #ENR#[2329]if ((timer == 0) || (tmp))
                           9268 ;--- end asm ---
   3537 7D C8 A7      [ 7] 9269 	tst	_timer	; timer
   353A 10 26 00 42   [ 6] 9270 	lbne	L556	;
   353E                    9271 L498:
                           9272 ;----- asm -----
                           9273 ; 3277 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9274 	; #ENR#[2331]if (!tmp)
                           9275 ;--- end asm ---
   353E 7D C8 FE      [ 7] 9276 	tst	_tmp	; tmp
   3541 10 27 02 0C   [ 6] 9277 	lbeq	L557	;
   3545                    9278 L500:
                           9279 ;----- asm -----
                           9280 ; 3302 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9281 	; #ENR#[2347]newturnstart:
                           9282 ;--- end asm ---
   3545 16 FE 55      [ 5] 9283 	lbra	L478	;
   3548                    9284 L555:
                           9285 ;----- asm -----
                           9286 ; 3238 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9287 	; #ENR#[2303]monsteronstackevadefurther();
                           9288 ;--- end asm ---
   3548 BD 3F 1E      [ 8] 9289 	jsr	_monsterOnStackEvadeFurther
                           9290 ;----- asm -----
                           9291 ; 3240 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9292 	; #ENR#[2304]pause(very_small_pause);
                           9293 ;--- end asm ---
   354B C6 19         [ 2] 9294 	ldb	#25	;,
   354D BD 3E 21      [ 8] 9295 	jsr	_pause
                           9296 ;----- asm -----
                           9297 ; 3242 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9298 	; #ENR#[2305]goto newturnstart;
                           9299 ;--- end asm ---
   3550 16 FE 4A      [ 5] 9300 	lbra	L478	;
   3553                    9301 L474:
                           9302 ;----- asm -----
                           9303 ; 3022 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9304 	; #ENR#[2154]#endif
                           9305 ; 3024 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9306 	; #ENR#[2155]vec_text_hw = 0xfa50;
                           9307 ;--- end asm ---
   3553 CE FA 50      [ 3] 9308 	ldu	#-1456	;,
   3556 FF C8 2A      [ 6] 9309 	stu	_Vec_Text_HW	;, Vec_Text_HW
                           9310 ;----- asm -----
                           9311 ; 3026 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9312 	; #ENR#[2156]_x = vec_loop_count_lo;
                           9313 ;--- end asm ---
   3559 F6 C8 26      [ 5] 9314 	ldb	_Vec_Loop_Count_lo	;, Vec_Loop_Count_lo
   355C F7 CA 78      [ 5] 9315 	stb	__x	;, _x
                           9316 ;----- asm -----
                           9317 ; 3028 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9318 	; #ENR#[2157]setrandseednp();
                           9319 ;--- end asm ---
   355F BD 68 36      [ 8] 9320 	jsr	_setRandSeedNP
                           9321 ;----- asm -----
                           9322 ; 3034 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9323 	; #ENR#[2162]createcharacter();
                           9324 ;--- end asm ---
   3562 BD 3F 98      [ 8] 9325 	jsr	_createCharacter
                           9326 ;----- asm -----
                           9327 ; 3037 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9328 	; #ENR#[2164]#if start_strong == 1
                           9329 ; 3055 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9330 	; #ENR#[2174]unsigned int turnstarting = 1;
                           9331 ; 3057 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9332 	; #ENR#[2175]while(1)
                           9333 ;--- end asm ---
   3565 C6 01         [ 2] 9334 	ldb	#1	;,
   3567 E7 63         [ 5] 9335 	stb	3,s	;, turnStarting
   3569 16 FE D6      [ 5] 9336 	lbra	L512	;
   356C                    9337 L494:
   356C C6 04         [ 2] 9338 	ldb	#4	; tmp126,
   356E E4 67         [ 5] 9339 	andb	7,s	; tmp126, D.4780
   3570 26 1A         [ 3] 9340 	bne	L558	;
   3572 C6 02         [ 2] 9341 	ldb	#2	;,
   3574 E4 67         [ 5] 9342 	andb	7,s	;, D.4780
   3576 10 27 FF BD   [ 6] 9343 	lbeq	L495	;
                           9344 ;----- asm -----
                           9345 ; 3268 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9346 	; #ENR#[2324]displaystatuspage();
                           9347 ;--- end asm ---
   357A BD 39 C5      [ 8] 9348 	jsr	_displayStatusPage
   357D 16 FF B7      [ 5] 9349 	lbra	L495	;
   3580                    9350 L556:
   3580 6F 63         [ 7] 9351 	clr	3,s	; turnStarting
   3582 7D C8 FE      [ 7] 9352 	tst	_tmp	; tmp
   3585 10 27 FE B6   [ 6] 9353 	lbeq	L499	;
   3589 16 FF B2      [ 5] 9354 	lbra	L498	;
   358C                    9355 L558:
                           9356 ;----- asm -----
                           9357 ; 3254 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9358 	; #ENR#[2315]castspell(0);
                           9359 ;--- end asm ---
   358C 5F            [ 2] 9360 	clrb	;
   358D BD 46 90      [ 8] 9361 	jsr	_castSpell
                           9362 ;----- asm -----
                           9363 ; 3256 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9364 	; #ENR#[2316]pause(small_pause);
                           9365 ;--- end asm ---
   3590 C6 4B         [ 2] 9366 	ldb	#75	;,
   3592 BD 3E 21      [ 8] 9367 	jsr	_pause
                           9368 ;----- asm -----
                           9369 ; 3258 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9370 	; #ENR#[2317]timer = 0;
                           9371 ; 3260 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9372 	; #ENR#[2318]tmp = 1;
                           9373 ;--- end asm ---
   3595 C6 01         [ 2] 9374 	ldb	#1	;,
   3597 F7 C8 FE      [ 5] 9375 	stb	_tmp	;, tmp
                           9376 ;----- asm -----
                           9377 ; 3262 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9378 	; #ENR#[2319]goto newturnnotstart;
                           9379 ;--- end asm ---
   359A 6F 63         [ 7] 9380 	clr	3,s	; turnStarting
   359C 16 FE 02      [ 5] 9381 	lbra	L497	;
   359F                    9382 L543:
                           9383 ;----- asm -----
                           9384 ; 3096 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9385 	; #ENR#[2201]tmp = 0;
                           9386 ;--- end asm ---
   359F 7F C8 FE      [ 7] 9387 	clr	_tmp	; tmp
                           9388 ;----- asm -----
                           9389 ; 3098 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9390 	; #ENR#[2202]pause(small_pause);
                           9391 ;--- end asm ---
   35A2 C6 4B         [ 2] 9392 	ldb	#75	;,
   35A4 BD 3E 21      [ 8] 9393 	jsr	_pause
                           9394 ;----- asm -----
                           9395 ; 3100 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9396 	; #ENR#[2203]goto newturnstart;
                           9397 ;--- end asm ---
   35A7 16 FD F3      [ 5] 9398 	lbra	L478	;
   35AA                    9399 L544:
                           9400 ;----- asm -----
                           9401 ; 3105 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9402 	; #ENR#[2207]tmp = 0;
                           9403 ;--- end asm ---
   35AA 7F C8 FE      [ 7] 9404 	clr	_tmp	; tmp
                           9405 ;----- asm -----
                           9406 ; 3107 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9407 	; #ENR#[2208]goto playerdead;
                           9408 ;--- end asm ---
   35AD                    9409 L480:
                           9410 ;----- asm -----
                           9411 ; 3347 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9412 	; #ENR#[2379]if (msgline == 3)
                           9413 ;--- end asm ---
   35AD F6 C9 87      [ 5] 9414 	ldb	_msgLine	;, msgLine
   35B0 C1 03         [ 2] 9415 	cmpb	#3	;cmpqi:	;,
   35B2 10 27 01 BC   [ 6] 9416 	lbeq	L559	;
   35B6                    9417 L513:
                           9418 ;----- asm -----
                           9419 ; 3355 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9420 	; #ENR#[2384]initsoundno = sound_death;
                           9421 ;--- end asm ---
   35B6 C6 05         [ 2] 9422 	ldb	#5	;,
   35B8 F7 C8 A6      [ 5] 9423 	stb	_initSoundNo	;, initSoundNo
                           9424 ;----- asm -----
                           9425 ; 3357 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9426 	; #ENR#[2385]printmessage();
                           9427 ;--- end asm ---
   35BB 8E 32 44      [ 3] 9428 	ldx	#LC225	;,
   35BE BD 5B 7A      [ 8] 9429 	jsr	_printMessage
                           9430 ;----- asm -----
                           9431 ; 3359 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9432 	; #ENR#[2386]pause(small_pause);
                           9433 ;--- end asm ---
   35C1 C6 4B         [ 2] 9434 	ldb	#75	;,
   35C3 BD 3E 21      [ 8] 9435 	jsr	_pause
                           9436 ;----- asm -----
                           9437 ; 3363 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9438 	; #ENR#[2389]printcharacter = 0;
                           9439 ;--- end asm ---
   35C6 7F C8 F7      [ 7] 9440 	clr	_printCharacter	; printCharacter
                           9441 ;----- asm -----
                           9442 ; 3365 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9443 	; #ENR#[2390]printtreasure = -1;
                           9444 ;--- end asm ---
   35C9 C6 FF         [ 2] 9445 	ldb	#-1	;,
   35CB F7 C8 F5      [ 5] 9446 	stb	_printTreasure	;, printTreasure
                           9447 ;----- asm -----
                           9448 ; 3367 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9449 	; #ENR#[2391]printdungeon = 0;
                           9450 ;--- end asm ---
   35CE 7F C8 F3      [ 7] 9451 	clr	_printDungeon	; printDungeon
                           9452 ;----- asm -----
                           9453 ; 3369 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9454 	; #ENR#[2392]m = -1;
                           9455 ;--- end asm ---
   35D1 F7 C9 77      [ 5] 9456 	stb	_m	;, m
                           9457 ;----- asm -----
                           9458 ; 3372 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9459 	; #ENR#[2394]int stage =0;
                           9460 ; 3374 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9461 	; #ENR#[2395]int b=0;
                           9462 ; 3376 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9463 	; #ENR#[2396]vec_text_hw = 0xfa50;
                           9464 ;--- end asm ---
   35D4 8E FA 50      [ 3] 9465 	ldx	#-1456	;,
   35D7 BF C8 2A      [ 6] 9466 	stx	_Vec_Text_HW	;, Vec_Text_HW
                           9467 ;----- asm -----
                           9468 ; 3378 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9469 	; #ENR#[2397]while (1)
                           9470 ;--- end asm ---
   35DA 6F 64         [ 7] 9471 	clr	4,s	; stage
   35DC 6F 65         [ 7] 9472 	clr	5,s	; b
   35DE 16 00 62      [ 5] 9473 	lbra	L535	;
   35E1                    9474 L562:
   35E1 F6 C9 86      [ 5] 9475 	ldb	__YC	; _YC.202, _YC
   35E4 CB F6         [ 2] 9476 	addb	#-10	; _YC.202,
   35E6 F7 C9 86      [ 5] 9477 	stb	__YC	; _YC.202, _YC
   35E9 34 04         [ 6] 9478 	pshs	b	; _YC.202
   35EB 8E 32 4F      [ 3] 9479 	ldx	#LC226	;,
   35EE                    9480 L541:
   35EE F6 C9 85      [ 5] 9481 	ldb	__XC	;, _XC
   35F1 BD 59 7E      [ 8] 9482 	jsr	_syncPrintStrd
   35F4 C6 CC         [ 2] 9483 	ldb	#-52	;,
   35F6 D7 0C         [ 4] 9484 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9485 ;----- asm -----
                           9486 ; 3398 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9487 	; #ENR#[2409]print();
                           9488 ;--- end asm ---
   35F8 F6 C9 86      [ 5] 9489 	ldb	__YC	; _YC.767, _YC
   35FB CB F6         [ 2] 9490 	addb	#-10	; _YC.767,
   35FD F7 C9 86      [ 5] 9491 	stb	__YC	; _YC.767, _YC
   3600 E7 E4         [ 4] 9492 	stb	,s	; _YC.767,
   3602 8E 32 69      [ 3] 9493 	ldx	#LC228	;,
   3605 F6 C9 85      [ 5] 9494 	ldb	__XC	;, _XC
   3608 BD 59 7E      [ 8] 9495 	jsr	_syncPrintStrd
   360B C6 CC         [ 2] 9496 	ldb	#-52	;,
   360D D7 0C         [ 4] 9497 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9498 ;----- asm -----
                           9499 ; 3400 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9500 	; #ENR#[2410]print();
                           9501 ;--- end asm ---
   360F F6 C9 86      [ 5] 9502 	ldb	__YC	; _YC.770, _YC
   3612 CB F6         [ 2] 9503 	addb	#-10	; _YC.770,
   3614 F7 C9 86      [ 5] 9504 	stb	__YC	; _YC.770, _YC
   3617 34 04         [ 6] 9505 	pshs	b	; _YC.770
   3619 8E 32 7C      [ 3] 9506 	ldx	#LC229	;,
   361C F6 C9 85      [ 5] 9507 	ldb	__XC	;, _XC
   361F BD 59 7E      [ 8] 9508 	jsr	_syncPrintStrd
   3622 C6 CC         [ 2] 9509 	ldb	#-52	;,
   3624 D7 0C         [ 4] 9510 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9511 ;----- asm -----
                           9512 ; 3402 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9513 	; #ENR#[2411]addline;
                           9514 ;--- end asm ---
   3626 F6 C9 86      [ 5] 9515 	ldb	__YC	; _YC.773, _YC
   3629 CB F6         [ 2] 9516 	addb	#-10	; _YC.773,
   362B F7 C9 86      [ 5] 9517 	stb	__YC	; _YC.773, _YC
                           9518 ;----- asm -----
                           9519 ; 3404 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9520 	; #ENR#[2412]if (stage == 0)
                           9521 ;--- end asm ---
   362E 32 62         [ 5] 9522 	leas	2,s	;,,
   3630 6D 64         [ 7] 9523 	tst	4,s	; stage
   3632 10 27 00 42   [ 6] 9524 	lbeq	L560	;
   3636                    9525 L516:
                           9526 ;----- asm -----
                           9527 ; 3416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9528 	; #ENR#[2420]if (stage == 1)
                           9529 ;--- end asm ---
   3636 E6 64         [ 5] 9530 	ldb	4,s	;, stage
   3638 C1 01         [ 2] 9531 	cmpb	#1	;cmpqi:	;,
   363A 10 27 00 7A   [ 6] 9532 	lbeq	L561	;
   363E                    9533 L518:
                           9534 ;----- asm -----
                           9535 ; 3510 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9536 	; #ENR#[2476]overstepprint:
                           9537 ;--- end asm ---
   363E                    9538 L534:
                           9539 ;----- asm -----
                           9540 ; 3512 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9541 	; #ENR#[2477]drawmap();
                           9542 ;--- end asm ---
   363E C6 03         [ 2] 9543 	ldb	#3	;,
   3640 BD 00 6E      [ 8] 9544 	jsr	_subBank0
   3643                    9545 L535:
                           9546 ;----- asm -----
                           9547 ; 3381 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9548 	; #ENR#[2399]cls;
                           9549 ;--- end asm ---
   3643 C6 90         [ 2] 9550 	ldb	#-112	;,
   3645 F7 C9 85      [ 5] 9551 	stb	__XC	;, _XC
   3648 C6 70         [ 2] 9552 	ldb	#112	;,
   364A F7 C9 86      [ 5] 9553 	stb	__YC	;, _YC
                           9554 ;----- asm -----
                           9555 ; 3383 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9556 	; #ENR#[2400]do_sound();
                           9557 ;--- end asm ---
   364D BD 72 E2      [ 8] 9558 	jsr	__Do_Sound
                           9559 ;----- asm -----
                           9560 ; 3385 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9561 	; #ENR#[2401]wait_recal();
                           9562 ;--- end asm ---
   3650 BD F1 92      [ 8] 9563 	jsr	___Wait_Recal
                           9564 ;----- asm -----
                           9565 ; 3387 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9566 	; #ENR#[2402]check_buttons();
                           9567 ;--- end asm ---
   3653 BD F1 BA      [ 8] 9568 	jsr	___Read_Btns
                           9569 ;----- asm -----
                           9570 ; 3390 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9571 	; #ENR#[2404]dp_via_t1_cnt_lo = 0x70;
                           9572 ;--- end asm ---
   3656 C6 70         [ 2] 9573 	ldb	#112	;,
   3658 D7 04         [ 4] 9574 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           9575 ;----- asm -----
                           9576 ; 3392 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9577 	; #ENR#[2405]intensity_a(0x5f);
                           9578 ;--- end asm ---
   365A C6 5F         [ 2] 9579 	ldb	#95	;,
   365C BD 72 61      [ 8] 9580 	jsr	__Intensity_a
                           9581 ;----- asm -----
                           9582 ; 3395 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9583 	; #ENR#[2407]if (lv<4) print();
                           9584 ;--- end asm ---
   365F F6 C9 38      [ 5] 9585 	ldb	_lv	;, lv
   3662 C1 03         [ 2] 9586 	cmpb	#3	;cmpqi:	;,
   3664 10 23 FF 79   [ 6] 9587 	lbls	L562	;
   3668 F6 C9 86      [ 5] 9588 	ldb	__YC	; _YC.764, _YC
   366B CB F6         [ 2] 9589 	addb	#-10	; _YC.764,
   366D F7 C9 86      [ 5] 9590 	stb	__YC	; _YC.764, _YC
   3670 34 04         [ 6] 9591 	pshs	b	; _YC.764
   3672 8E 32 60      [ 3] 9592 	ldx	#LC227	;,
   3675 16 FF 76      [ 5] 9593 	lbra	L541	;
   3678                    9594 L560:
                           9595 ;----- asm -----
                           9596 ; 3407 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9597 	; #ENR#[2414]print();
                           9598 ;--- end asm ---
   3678 CB F6         [ 2] 9599 	addb	#-10	; _YC.774,
   367A F7 C9 86      [ 5] 9600 	stb	__YC	; _YC.774, _YC
   367D 34 04         [ 6] 9601 	pshs	b	; _YC.774
   367F 8E 32 8C      [ 3] 9602 	ldx	#LC230	;,
   3682 F6 C9 85      [ 5] 9603 	ldb	__XC	;, _XC
   3685 BD 59 7E      [ 8] 9604 	jsr	_syncPrintStrd
   3688 C6 CC         [ 2] 9605 	ldb	#-52	;,
   368A D7 0C         [ 4] 9606 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9607 ;----- asm -----
                           9608 ; 3409 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9609 	; #ENR#[2415]print();
                           9610 ;--- end asm ---
   368C F6 C9 86      [ 5] 9611 	ldb	__YC	; _YC.777, _YC
   368F CB F6         [ 2] 9612 	addb	#-10	; _YC.777,
   3691 F7 C9 86      [ 5] 9613 	stb	__YC	; _YC.777, _YC
   3694 34 04         [ 6] 9614 	pshs	b	; _YC.777
   3696 8E 32 9D      [ 3] 9615 	ldx	#LC231	;,
   3699 F6 C9 85      [ 5] 9616 	ldb	__XC	;, _XC
   369C BD 59 7E      [ 8] 9617 	jsr	_syncPrintStrd
   369F C6 CC         [ 2] 9618 	ldb	#-52	;,
   36A1 D7 0C         [ 4] 9619 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9620 ;----- asm -----
                           9621 ; 3411 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9622 	; #ENR#[2416]if (buttons_pressed()) b=1;
                           9623 ;--- end asm ---
   36A3 32 62         [ 5] 9624 	leas	2,s	;,,
   36A5 7D C8 11      [ 7] 9625 	tst	_Vec_Buttons	; Vec_Buttons
   36A8 10 27 00 7F   [ 6] 9626 	lbeq	L517	;
   36AC C6 01         [ 2] 9627 	ldb	#1	;,
   36AE E7 65         [ 5] 9628 	stb	5,s	;, b
                           9629 ;----- asm -----
                           9630 ; 3416 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9631 	; #ENR#[2420]if (stage == 1)
                           9632 ;--- end asm ---
   36B0 E6 64         [ 5] 9633 	ldb	4,s	;, stage
   36B2 C1 01         [ 2] 9634 	cmpb	#1	;cmpqi:	;,
   36B4 10 26 FF 86   [ 6] 9635 	lbne	L518	;
   36B8                    9636 L561:
                           9637 ;----- asm -----
                           9638 ; 3419 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9639 	; #ENR#[2422]if ((tmp_hp == -1) && (!(((flashavailable) && (!vec_num_players)))) )break;
                           9640 ;--- end asm ---
   36B8 BE C9 09      [ 6] 9641 	ldx	_tmp_hp	;, tmp_hp
   36BB 8C FF FF      [ 4] 9642 	cmpx	#-1	;cmphi:	;,
   36BE 26 0E         [ 3] 9643 	bne	L519	;
   36C0 7D C9 08      [ 7] 9644 	tst	_flashAvailable	; flashAvailable
   36C3 10 27 00 61   [ 6] 9645 	lbeq	L520	;
   36C7 7D C8 79      [ 7] 9646 	tst	_Vec_Num_Players	; Vec_Num_Players
   36CA 10 26 00 5A   [ 6] 9647 	lbne	L520	;
   36CE                    9648 L519:
                           9649 ;----- asm -----
                           9650 ; 3422 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9651 	; #ENR#[2424]print();
                           9652 ;--- end asm ---
   36CE F6 C9 86      [ 5] 9653 	ldb	__YC	; _YC.780, _YC
   36D1 CB F6         [ 2] 9654 	addb	#-10	; _YC.780,
   36D3 F7 C9 86      [ 5] 9655 	stb	__YC	; _YC.780, _YC
   36D6 34 04         [ 6] 9656 	pshs	b	; _YC.780
   36D8 8E 32 8C      [ 3] 9657 	ldx	#LC230	;,
   36DB F6 C9 85      [ 5] 9658 	ldb	__XC	;, _XC
   36DE BD 59 7E      [ 8] 9659 	jsr	_syncPrintStrd
   36E1 C6 CC         [ 2] 9660 	ldb	#-52	;,
   36E3 D7 0C         [ 4] 9661 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9662 ;----- asm -----
                           9663 ; 3424 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9664 	; #ENR#[2425]print();
                           9665 ;--- end asm ---
   36E5 F6 C9 86      [ 5] 9666 	ldb	__YC	; _YC.783, _YC
   36E8 CB F6         [ 2] 9667 	addb	#-10	; _YC.783,
   36EA F7 C9 86      [ 5] 9668 	stb	__YC	; _YC.783, _YC
   36ED 34 04         [ 6] 9669 	pshs	b	; _YC.783
   36EF 8E 32 AF      [ 3] 9670 	ldx	#LC232	;,
   36F2 F6 C9 85      [ 5] 9671 	ldb	__XC	;, _XC
   36F5 BD 59 7E      [ 8] 9672 	jsr	_syncPrintStrd
   36F8 C6 CC         [ 2] 9673 	ldb	#-52	;,
   36FA D7 0C         [ 4] 9674 	stb	*_dp_VIA_cntl	;, dp_VIA_cntl
                           9675 ;----- asm -----
                           9676 ; 3426 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9677 	; #ENR#[2426]if (buttons_pressed()) b=1;
                           9678 ;--- end asm ---
   36FC F6 C8 11      [ 5] 9679 	ldb	_Vec_Buttons	;, Vec_Buttons
   36FF E7 6A         [ 5] 9680 	stb	10,s	;, D.4794
   3701 32 62         [ 5] 9681 	leas	2,s	;,,
   3703 5D            [ 2] 9682 	tstb	;
   3704 27 04         [ 3] 9683 	beq	L521	;
   3706 C6 01         [ 2] 9684 	ldb	#1	;,
   3708 E7 65         [ 5] 9685 	stb	5,s	;, b
   370A                    9686 L521:
                           9687 ;----- asm -----
                           9688 ; 3428 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9689 	; #ENR#[2427]if (button_1_4_pressed()) {b = 4;}
                           9690 ;--- end asm ---
   370A C6 08         [ 2] 9691 	ldb	#8	; tmp156,
   370C E4 68         [ 5] 9692 	andb	8,s	; tmp156, D.4794
   370E 27 04         [ 3] 9693 	beq	L522	;
   3710 C6 04         [ 2] 9694 	ldb	#4	;,
   3712 E7 65         [ 5] 9695 	stb	5,s	;, b
   3714                    9696 L522:
                           9697 ;----- asm -----
                           9698 ; 3430 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9699 	; #ENR#[2428]if ((!buttons_pressed()) && (b!=0))
                           9700 ;--- end asm ---
   3714 6D 68         [ 7] 9701 	tst	8,s	; D.4794
   3716 10 26 FF 24   [ 6] 9702 	lbne	L518	;
   371A 6D 65         [ 7] 9703 	tst	5,s	; b
   371C 10 27 FF 1E   [ 6] 9704 	lbeq	L518	;
                           9705 ;----- asm -----
                           9706 ; 3433 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9707 	; #ENR#[2430]if (b==4)
                           9708 ;--- end asm ---
   3720 E6 65         [ 5] 9709 	ldb	5,s	;, b
   3722 C1 04         [ 2] 9710 	cmpb	#4	;cmpqi:	;,
   3724 10 27 00 55   [ 6] 9711 	lbeq	L563	;
                           9712 ;----- asm -----
                           9713 ; 3506 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9714 	; #ENR#[2473]break;
                           9715 ;--- end asm ---
   3728                    9716 L520:
                           9717 ;----- asm -----
                           9718 ; 3516 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9719 	; #ENR#[2480]goto restart;
                           9720 ;--- end asm ---
   3728 16 FB B5      [ 5] 9721 	lbra	L473	;
   372B                    9722 L517:
   372B E6 65         [ 5] 9723 	ldb	5,s	;, b
   372D C1 01         [ 2] 9724 	cmpb	#1	;cmpqi:	;,
   372F 10 26 FF 03   [ 6] 9725 	lbne	L516	;
   3733 E7 64         [ 5] 9726 	stb	4,s	;, stage
   3735 6F 65         [ 7] 9727 	clr	5,s	; b
   3737 16 FF 04      [ 5] 9728 	lbra	L534	;
   373A                    9729 L553:
                           9730 ;----- asm -----
                           9731 ; 3196 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9732 	; #ENR#[2273]tmp = 0;
                           9733 ;--- end asm ---
   373A 7F C8 FE      [ 7] 9734 	clr	_tmp	; tmp
                           9735 ;----- asm -----
                           9736 ; 3198 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9737 	; #ENR#[2274]goto playerdead;
                           9738 ;--- end asm ---
   373D 16 FE 6D      [ 5] 9739 	lbra	L480	;
   3740                    9740 L552:
                           9741 ;----- asm -----
                           9742 ; 3187 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9743 	; #ENR#[2267]tmp = 0;
                           9744 ;--- end asm ---
   3740 7F C8 FE      [ 7] 9745 	clr	_tmp	; tmp
                           9746 ;----- asm -----
                           9747 ; 3189 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9748 	; #ENR#[2268]pause(small_pause);
                           9749 ;--- end asm ---
   3743 C6 4B         [ 2] 9750 	ldb	#75	;,
   3745 BD 3E 21      [ 8] 9751 	jsr	_pause
                           9752 ;----- asm -----
                           9753 ; 3191 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9754 	; #ENR#[2269]goto newturnstart;
                           9755 ;--- end asm ---
   3748 16 FC 52      [ 5] 9756 	lbra	L478	;
   374B                    9757 L548:
                           9758 ;----- asm -----
                           9759 ; 3145 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9760 	; #ENR#[2237]tmp = 0;
                           9761 ;--- end asm ---
   374B 7F C8 FE      [ 7] 9762 	clr	_tmp	; tmp
                           9763 ;----- asm -----
                           9764 ; 3147 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9765 	; #ENR#[2238]goto playerdead;
                           9766 ;--- end asm ---
   374E 16 FE 5C      [ 5] 9767 	lbra	L480	;
   3751                    9768 L557:
                           9769 ;----- asm -----
                           9770 ; 3280 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9771 	; #ENR#[2333]clearmessage();
                           9772 ;--- end asm ---
   3751 7F C9 87      [ 7] 9773 	clr	_msgLine	; msgLine
                           9774 ;----- asm -----
                           9775 ; 3282 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9776 	; #ENR#[2334]printmessage();
                           9777 ;--- end asm ---
   3754 8E 32 3C      [ 3] 9778 	ldx	#LC224	;,
   3757 BD 5B 7A      [ 8] 9779 	jsr	_printMessage
                           9780 ;----- asm -----
                           9781 ; 3284 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9782 	; #ENR#[2335]pause(very_small_pause);
                           9783 ;--- end asm ---
   375A C6 19         [ 2] 9784 	ldb	#25	;,
   375C BD 3E 21      [ 8] 9785 	jsr	_pause
                           9786 ;----- asm -----
                           9787 ; 3286 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9788 	; #ENR#[2336]#ifndef no_monster
                           9789 ; 3288 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9790 	; #ENR#[2337]tmp = monsteronstackadvance();
                           9791 ;--- end asm ---
   375F BD 3E B8      [ 8] 9792 	jsr	_monsterOnStackAdvance
   3762 F7 C8 FE      [ 5] 9793 	stb	_tmp	; tmp.193, tmp
                           9794 ;----- asm -----
                           9795 ; 3290 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9796 	; #ENR#[2338]if (tmp != 0)
                           9797 ;--- end asm ---
   3765 5D            [ 2] 9798 	tstb	; tmp.193
   3766 10 27 FD DB   [ 6] 9799 	lbeq	L500	;
                           9800 ;----- asm -----
                           9801 ; 3293 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9802 	; #ENR#[2340]tmp = return_monster_is_set;
                           9803 ;--- end asm ---
   376A C6 1F         [ 2] 9804 	ldb	#31	;,
   376C F7 C8 FE      [ 5] 9805 	stb	_tmp	;, tmp
                           9806 ;----- asm -----
                           9807 ; 3295 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9808 	; #ENR#[2341]goto monsterreturns;
                           9809 ;--- end asm ---
   376F 16 FC E5      [ 5] 9810 	lbra	L540	;
   3772                    9811 L559:
                           9812 ;----- asm -----
                           9813 ; 3350 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9814 	; #ENR#[2381]pause(small_pause);
                           9815 ;--- end asm ---
   3772 C6 4B         [ 2] 9816 	ldb	#75	;,
   3774 BD 3E 21      [ 8] 9817 	jsr	_pause
                           9818 ;----- asm -----
                           9819 ; 3352 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9820 	; #ENR#[2382]clearmessage();
                           9821 ;--- end asm ---
   3777 7F C9 87      [ 7] 9822 	clr	_msgLine	; msgLine
   377A 16 FE 39      [ 5] 9823 	lbra	L513	;
   377D                    9824 L563:
                           9825 ;----- asm -----
                           9826 ; 3436 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9827 	; #ENR#[2432]checksavedflash();
                           9828 ;--- end asm ---
   377D C6 09         [ 2] 9829 	ldb	#9	;,
   377F BD 00 6E      [ 8] 9830 	jsr	_subBank0
                           9831 ;----- asm -----
                           9832 ; 3438 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9833 	; #ENR#[2433]if ((flashavailable) && (!vec_num_players))
                           9834 ;--- end asm ---
   3782 7D C9 08      [ 7] 9835 	tst	_flashAvailable	; flashAvailable
   3785 27 08         [ 3] 9836 	beq	L524	;
   3787 7D C8 79      [ 7] 9837 	tst	_Vec_Num_Players	; Vec_Num_Players
   378A 26 03         [ 3] 9838 	bne	L524	;
                           9839 ;----- asm -----
                           9840 ; 3441 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9841 	; #ENR#[2435]loadfromflash:
                           9842 ;--- end asm ---
   378C 16 FB 68      [ 5] 9843 	lbra	L475	;
   378F                    9844 L524:
                           9845 ;----- asm -----
                           9846 ; 3454 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9847 	; #ENR#[2443]ltmp = tmp_hp;
                           9848 ;--- end asm ---
   378F BE C9 09      [ 6] 9849 	ldx	_tmp_hp	;, tmp_hp
   3792 BF C9 02      [ 6] 9850 	stx	_ltmp	;, ltmp
                           9851 ;----- asm -----
                           9852 ; 3456 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9853 	; #ENR#[2444]initvars();
                           9854 ;--- end asm ---
   3795 BD 57 18      [ 8] 9855 	jsr	_initVars
                           9856 ;----- asm -----
                           9857 ; 3458 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9858 	; #ENR#[2445]hp = tmp_hp = ltmp;
                           9859 ;--- end asm ---
   3798 BE C9 02      [ 6] 9860 	ldx	_ltmp	; ltmp.207, ltmp
   379B BF C9 09      [ 6] 9861 	stx	_tmp_hp	; ltmp.207, tmp_hp
   379E BF C9 36      [ 6] 9862 	stx	_hp	; ltmp.207, hp
                           9863 ;----- asm -----
                           9864 ; 3460 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9865 	; #ENR#[2446]lv = tmp_lv;
                           9866 ;--- end asm ---
   37A1 F6 C9 0B      [ 5] 9867 	ldb	_tmp_lv	;, tmp_lv
   37A4 F7 C9 38      [ 5] 9868 	stb	_lv	;, lv
                           9869 ;----- asm -----
                           9870 ; 3463 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9871 	; #ENR#[2448]ex = tmp_ex;
                           9872 ;--- end asm ---
   37A7 BE C9 0C      [ 6] 9873 	ldx	_tmp_ex	;, tmp_ex
   37AA BF C9 39      [ 6] 9874 	stx	_ex	;, ex
   37AD FE C9 0E      [ 6] 9875 	ldu	_tmp_ex+2	;, tmp_ex
   37B0 FF C9 3B      [ 6] 9876 	stu	_ex+2	;, ex
                           9877 ;----- asm -----
                           9878 ; 3465 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9879 	; #ENR#[2449]su = tmp_su;
                           9880 ;--- end asm ---
   37B3 FC C9 10      [ 6] 9881 	ldd	_tmp_su	;, tmp_su
   37B6 FD C9 3D      [ 6] 9882 	std	_su	;, su
                           9883 ;----- asm -----
                           9884 ; 3468 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9885 	; #ENR#[2451]cx = tmp_cx;
                           9886 ;--- end asm ---
   37B9 F6 C9 12      [ 5] 9887 	ldb	_tmp_cx	;, tmp_cx
   37BC F7 C9 3F      [ 5] 9888 	stb	_cx	;, cx
                           9889 ;----- asm -----
                           9890 ; 3470 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9891 	; #ENR#[2452]cy = tmp_cy;
                           9892 ;--- end asm ---
   37BF F6 C9 13      [ 5] 9893 	ldb	_tmp_cy	;, tmp_cy
   37C2 F7 C9 40      [ 5] 9894 	stb	_cy	;, cy
                           9895 ;----- asm -----
                           9896 ; 3473 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9897 	; #ENR#[2454]tg = tmp_tg;
                           9898 ;--- end asm ---
   37C5 BE C9 14      [ 6] 9899 	ldx	_tmp_tg	;, tmp_tg
   37C8 BF C9 41      [ 6] 9900 	stx	_tg	;, tg
   37CB FE C9 16      [ 6] 9901 	ldu	_tmp_tg+2	;, tmp_tg
   37CE FF C9 43      [ 6] 9902 	stu	_tg+2	;, tg
                           9903 ;----- asm -----
                           9904 ; 3475 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9905 	; #ENR#[2455]for (int i=0;i<6;i++) s[i] = tmp_s[i];
                           9906 ;--- end asm ---
   37D1 8E C9 18      [ 3] 9907 	ldx	#_tmp_s	; vect_ptmp_s.692,
   37D4 CC C9 45      [ 3] 9908 	ldd	#_s	; tmp163,
   37D7 34 10         [ 6] 9909 	pshs	x	; vect_ptmp_s.692
   37D9 AA E0         [ 6] 9910 	ora	,s+	;,
   37DB EA E0         [ 6] 9911 	orb	,s+	;,
   37DD 4F            [ 2] 9912 	clra	;andqi(ZERO)	;
   37DE C4 01         [ 2] 9913 	andb	#1	;,
   37E0 10 83 00 00   [ 5] 9914 	cmpd	#0	; tmp164
   37E4 10 26 00 72   [ 6] 9915 	lbne	L526	;
   37E8 FC C9 18      [ 6] 9916 	ldd	_tmp_s	;,
   37EB FD C9 45      [ 6] 9917 	std	_s	;,
   37EE BE C9 1A      [ 6] 9918 	ldx	_tmp_s+2	;,
   37F1 BF C9 47      [ 6] 9919 	stx	_s+2	;,
   37F4 FE C9 1C      [ 6] 9920 	ldu	_tmp_s+4	;,
   37F7 FF C9 49      [ 6] 9921 	stu	_s+4	;,
   37FA                    9922 L527:
                           9923 ;----- asm -----
                           9924 ; 3477 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9925 	; #ENR#[2456]for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
                           9926 ;--- end asm ---
   37FA BE C9 1E      [ 6] 9927 	ldx	_tmp_inventory	;, tmp_inventory
   37FD BF C9 4B      [ 6] 9928 	stx	_inventory	;, inventory
   3800 FE C9 20      [ 6] 9929 	ldu	_tmp_inventory+2	;, tmp_inventory
   3803 FF C9 4D      [ 6] 9930 	stu	_inventory+2	;, inventory
   3806 FC C9 22      [ 6] 9931 	ldd	_tmp_inventory+4	;, tmp_inventory
   3809 FD C9 4F      [ 6] 9932 	std	_inventory+4	;, inventory
   380C BE C9 24      [ 6] 9933 	ldx	_tmp_inventory+6	;, tmp_inventory
   380F BF C9 51      [ 6] 9934 	stx	_inventory+6	;, inventory
   3812 FE C9 26      [ 6] 9935 	ldu	_tmp_inventory+8	;, tmp_inventory
   3815 FF C9 53      [ 6] 9936 	stu	_inventory+8	;, inventory
   3818 FC C9 28      [ 6] 9937 	ldd	_tmp_inventory+10	;, tmp_inventory
   381B FD C9 55      [ 6] 9938 	std	_inventory+10	;, inventory
   381E BE C9 2A      [ 6] 9939 	ldx	_tmp_inventory+12	;, tmp_inventory
   3821 BF C9 57      [ 6] 9940 	stx	_inventory+12	;, inventory
   3824 FE C9 2C      [ 6] 9941 	ldu	_tmp_inventory+14	;, tmp_inventory
   3827 FF C9 59      [ 6] 9942 	stu	_inventory+14	;, inventory
   382A FC C9 2E      [ 6] 9943 	ldd	_tmp_inventory+16	;, tmp_inventory
   382D FD C9 5B      [ 6] 9944 	std	_inventory+16	;, inventory
   3830 BE C9 30      [ 6] 9945 	ldx	_tmp_inventory+18	;, tmp_inventory
   3833 BF C9 5D      [ 6] 9946 	stx	_inventory+18	;, inventory
                           9947 ;----- asm -----
                           9948 ; 3479 "C:\Dev\Vide\projects\Telengard\source\bank1\main.enr.c" 1
                           9949 	; #ENR#[2457]for (int i=0;i<4;i++) box[i] = tmp_box[i];
                           9950 ;--- end asm ---
   3836 8E C9 32      [ 3] 9951 	ldx	#_tmp_box	; vect_ptmp_box.664,
   3839 CC C9 5F      [ 3] 9952 	ldd	#_box	; tmp210,
   383C 34 10         [ 6] 9953 	pshs	x	; vect_ptmp_box.664
   383E AA E0         [ 6] 9954 	ora	,s+	;,
   3840 EA E0         [ 6] 9955 	orb	,s+	;,
   3842 4F            [ 2] 9956 	clra	;andqi(ZERO)	;
   3843 C4 01         [ 2] 9957 	andb	#1	;,
   3845 10 83 00 00   [ 5] 9958 	cmpd	#0	; tmp211
   3849 26 36         [ 3] 9959 	bne	L528	;
   384B FE C9 32      [ 6] 9960 	ldu	_tmp_box	;,
   384E FF C9 5F      [ 6] 9961 	stu	_box	;,
   3851 FC C9 34      [ 6] 9962 	ldd	_tmp_box+2	;,
   3854 FD C9 61      [ 6] 9963 	std	_box+2	;,
   3857 16 FA AF      [ 5] 9964 	lbra	L525	;
   385A                    9965 L526:
   385A F6 C9 18      [ 5] 9966 	ldb	_tmp_s	;, tmp_s
   385D F7 C9 45      [ 5] 9967 	stb	_s	;, s
   3860 F6 C9 19      [ 5] 9968 	ldb	_tmp_s+1	;, tmp_s
   3863 F7 C9 46      [ 5] 9969 	stb	_s+1	;, s
   3866 F6 C9 1A      [ 5] 9970 	ldb	_tmp_s+2	;, tmp_s
   3869 F7 C9 47      [ 5] 9971 	stb	_s+2	;, s
   386C F6 C9 1B      [ 5] 9972 	ldb	_tmp_s+3	;, tmp_s
   386F F7 C9 48      [ 5] 9973 	stb	_s+3	;, s
   3872 F6 C9 1C      [ 5] 9974 	ldb	_tmp_s+4	;, tmp_s
   3875 F7 C9 49      [ 5] 9975 	stb	_s+4	;, s
   3878 F6 C9 1D      [ 5] 9976 	ldb	_tmp_s+5	;, tmp_s
   387B F7 C9 4A      [ 5] 9977 	stb	_s+5	;, s
   387E 16 FF 79      [ 5] 9978 	lbra	L527	;
   3881                    9979 L528:
   3881 F6 C9 32      [ 5] 9980 	ldb	_tmp_box	;, tmp_box
   3884 F7 C9 5F      [ 5] 9981 	stb	_box	;, box
   3887 F6 C9 33      [ 5] 9982 	ldb	_tmp_box+1	;, tmp_box
   388A F7 C9 60      [ 5] 9983 	stb	_box+1	;, box
   388D F6 C9 34      [ 5] 9984 	ldb	_tmp_box+2	;, tmp_box
   3890 F7 C9 61      [ 5] 9985 	stb	_box+2	;, box
   3893 F6 C9 35      [ 5] 9986 	ldb	_tmp_box+3	;, tmp_box
   3896 F7 C9 62      [ 5] 9987 	stb	_box+3	;, box
   3899 16 FA 6D      [ 5] 9988 	lbra	L525	;
   389C                    9989 L542:
   389C 6F 66         [ 7] 9990 	clr	6,s	; i
   389E C6 0B         [ 2] 9991 	ldb	#11	;,
   38A0 E7 69         [ 5] 9992 	stb	9,s	;, ivtmp.660
   38A2 16 FA AD      [ 5] 9993 	lbra	L530	;
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$main$1000        0583 GR  |   3 A$main$1001        0587 GR
  3 A$main$1002        0589 GR  |   3 A$main$1008        058B GR
  3 A$main$1009        058E GR  |   3 A$main$1010        0590 GR
  3 A$main$1011        0592 GR  |   3 A$main$1012        0594 GR
  3 A$main$1018        0596 GR  |   3 A$main$1019        0598 GR
  3 A$main$1025        059C GR  |   3 A$main$1026        059E GR
  3 A$main$1027        05A0 GR  |   3 A$main$1028        05A2 GR
  3 A$main$1029        05A4 GR  |   3 A$main$1030        05A6 GR
  3 A$main$1031        05A8 GR  |   3 A$main$1032        05AA GR
  3 A$main$1038        05AE GR  |   3 A$main$1050        05B1 GR
  3 A$main$1051        05B4 GR  |   3 A$main$1056        05B8 GR
  3 A$main$1057        05BB GR  |   3 A$main$1058        05BD GR
  3 A$main$1059        05BF GR  |   3 A$main$1060        05C1 GR
  3 A$main$1061        05C3 GR  |   3 A$main$1067        05C5 GR
  3 A$main$1068        05C7 GR  |   3 A$main$1069        05C9 GR
  3 A$main$1070        05CB GR  |   3 A$main$1071        05CD GR
  3 A$main$1077        05CF GR  |   3 A$main$1078        05D1 GR
  3 A$main$1079        05D3 GR  |   3 A$main$1080        05D5 GR
  3 A$main$1081        05D7 GR  |   3 A$main$1087        05D9 GR
  3 A$main$1088        05DB GR  |   3 A$main$1089        05DD GR
  3 A$main$1090        05DF GR  |   3 A$main$1091        05E1 GR
  3 A$main$1097        05E3 GR  |   3 A$main$1098        05E6 GR
  3 A$main$1099        05E8 GR  |   3 A$main$1100        05EA GR
  3 A$main$1101        05EC GR  |   3 A$main$1107        05EE GR
  3 A$main$1108        05F0 GR  |   3 A$main$1109        05F4 GR
  3 A$main$1110        05F6 GR  |   3 A$main$1111        05F8 GR
  3 A$main$1113        05FB GR  |   3 A$main$1114        05FD GR
  3 A$main$1115        05FF GR  |   3 A$main$1117        0602 GR
  3 A$main$1123        0604 GR  |   3 A$main$1128        0607 GR
  3 A$main$1129        0609 GR  |   3 A$main$1134        060B GR
  3 A$main$1135        060D GR  |   3 A$main$1137        060F GR
  3 A$main$1138        0611 GR  |   3 A$main$1139        0613 GR
  3 A$main$1141        0614 GR  |   3 A$main$1142        0616 GR
  3 A$main$1148        0618 GR  |   3 A$main$1149        061B GR
  3 A$main$1150        061D GR  |   3 A$main$1151        061F GR
  3 A$main$1152        0621 GR  |   3 A$main$1158        0623 GR
  3 A$main$1159        0625 GR  |   3 A$main$1165        0629 GR
  3 A$main$1166        062B GR  |   3 A$main$1167        062D GR
  3 A$main$1168        062F GR  |   3 A$main$1169        0631 GR
  3 A$main$1170        0633 GR  |   3 A$main$1171        0635 GR
  3 A$main$1172        0637 GR  |   3 A$main$1178        063B GR
  3 A$main$1188        063E GR  |   3 A$main$1189        0641 GR
  3 A$main$1194        0644 GR  |   3 A$main$1195        0645 GR
  3 A$main$1200        0649 GR  |   3 A$main$1201        064C GR
  3 A$main$1202        064E GR  |   3 A$main$1203        0650 GR
  3 A$main$1204        0652 GR  |   3 A$main$1205        0654 GR
  3 A$main$1211        0656 GR  |   3 A$main$1212        0658 GR
  3 A$main$1213        065A GR  |   3 A$main$1214        065C GR
  3 A$main$1215        065E GR  |   3 A$main$1221        0660 GR
  3 A$main$1222        0662 GR  |   3 A$main$1223        0664 GR
  3 A$main$1224        0666 GR  |   3 A$main$1225        0668 GR
  3 A$main$1231        066A GR  |   3 A$main$1232        066C GR
  3 A$main$1233        066E GR  |   3 A$main$1234        0670 GR
  3 A$main$1235        0672 GR  |   3 A$main$1241        0674 GR
  3 A$main$1242        0677 GR  |   3 A$main$1243        0679 GR
  3 A$main$1244        067B GR  |   3 A$main$1245        067D GR
  3 A$main$1251        067F GR  |   3 A$main$1252        0681 GR
  3 A$main$1253        0685 GR  |   3 A$main$1254        0687 GR
  3 A$main$1255        0689 GR  |   3 A$main$1257        068C GR
  3 A$main$1258        068E GR  |   3 A$main$1259        0690 GR
  3 A$main$1271        06BD GR  |   3 A$main$1272        06BF GR
  3 A$main$1273        06C2 GR  |   3 A$main$1286        06C5 GR
  3 A$main$1287        06C8 GR  |   3 A$main$1288        06CB GR
  3 A$main$1293        06CE GR  |   3 A$main$1294        06D2 GR
  3 A$main$1295        06D4 GR  |   3 A$main$1296        06D5 GR
  3 A$main$1297        06D8 GR  |   3 A$main$1302        06DB GR
  3 A$main$1303        06DD GR  |   3 A$main$1304        06DF GR
  3 A$main$1305        06E1 GR  |   3 A$main$1311        06E5 GR
  3 A$main$1312        06E8 GR  |   3 A$main$1313        06EA GR
  3 A$main$1319        06EE GR  |   3 A$main$1320        06F1 GR
  3 A$main$1321        06F3 GR  |   3 A$main$1327        06F7 GR
  3 A$main$1328        06FA GR  |   3 A$main$1329        06FC GR
  3 A$main$1335        0700 GR  |   3 A$main$1336        0703 GR
  3 A$main$1337        0705 GR  |   3 A$main$1343        0709 GR
  3 A$main$1344        070B GR  |   3 A$main$1349        070E GR
  3 A$main$1350        0711 GR  |   3 A$main$1351        0714 GR
  3 A$main$1352        0718 GR  |   3 A$main$1353        071A GR
  3 A$main$1354        071D GR  |   3 A$main$1355        0720 GR
  3 A$main$1356        0723 GR  |   3 A$main$1362        0726 GR
  3 A$main$1363        0729 GR  |   3 A$main$1364        072D GR
  3 A$main$1365        072F GR  |   3 A$main$1366        0731 GR
  3 A$main$1367        0733 GR  |   3 A$main$1368        0736 GR
  3 A$main$1369        0739 GR  |   3 A$main$1375        073C GR
  3 A$main$1376        073F GR  |   3 A$main$1377        0743 GR
  3 A$main$1378        0745 GR  |   3 A$main$1379        0747 GR
  3 A$main$1380        0749 GR  |   3 A$main$1381        074C GR
  3 A$main$1382        074F GR  |   3 A$main$1388        0752 GR
  3 A$main$1389        0755 GR  |   3 A$main$1390        0759 GR
  3 A$main$1391        075B GR  |   3 A$main$1392        075D GR
  3 A$main$1393        0760 GR  |   3 A$main$1394        0763 GR
  3 A$main$1400        0766 GR  |   3 A$main$1407        0769 GR
  3 A$main$1408        076C GR  |   3 A$main$1409        076E GR
  3 A$main$1410        0771 GR  |   3 A$main$1411        0774 GR
  3 A$main$1412        0776 GR  |   3 A$main$1413        0779 GR
  3 A$main$1414        077B GR  |   3 A$main$1415        077E GR
  3 A$main$1416        0780 GR  |   3 A$main$1417        0781 GR
  3 A$main$1418        0783 GR  |   3 A$main$1419        0784 GR
  3 A$main$1420        0787 GR  |   3 A$main$1421        078A GR
  3 A$main$1427        078D GR  |   3 A$main$1428        0791 GR
  3 A$main$1429        0793 GR  |   3 A$main$1430        0794 GR
  3 A$main$1431        0797 GR  |   3 A$main$1436        079A GR
  3 A$main$1437        079C GR  |   3 A$main$1438        079F GR
  3 A$main$1439        07A2 GR  |   3 A$main$1445        07A4 GR
  3 A$main$1446        07A7 GR  |   3 A$main$1447        07AB GR
  3 A$main$1453        07AF GR  |   3 A$main$1454        07B3 GR
  3 A$main$1455        07B5 GR  |   3 A$main$1456        07B6 GR
  3 A$main$1457        07B9 GR  |   3 A$main$1462        07BC GR
  3 A$main$1463        07BE GR  |   3 A$main$1464        07C1 GR
  3 A$main$1465        07C4 GR  |   3 A$main$1471        07C6 GR
  3 A$main$1472        07C8 GR  |   3 A$main$1473        07CB GR
  3 A$main$1474        07CE GR  |   3 A$main$1475        07D0 GR
  3 A$main$1476        07D3 GR  |   3 A$main$1477        07D5 GR
  3 A$main$1479        07D7 GR  |   3 A$main$1485        07DA GR
  3 A$main$1486        07DD GR  |   3 A$main$1496        07E1 GR
  3 A$main$1501        07E4 GR  |   3 A$main$1506        07E7 GR
  3 A$main$1511        07EA GR  |   3 A$main$1516        07ED GR
  3 A$main$1521        07F0 GR  |   3 A$main$1522        07F2 GR
  3 A$main$1527        07F4 GR  |   3 A$main$1528        07F7 GR
  3 A$main$1533        07F9 GR  |   3 A$main$1534        07FB GR
  3 A$main$1535        07FD GR  |   3 A$main$1536        0800 GR
  3 A$main$1537        0803 GR  |   3 A$main$1538        0806 GR
  3 A$main$1539        0808 GR  |   3 A$main$1540        080A GR
  3 A$main$1546        080C GR  |   3 A$main$1547        080E GR
  3 A$main$1548        0810 GR  |   3 A$main$1549        0813 GR
  3 A$main$1550        0815 GR  |   3 A$main$1551        0818 GR
  3 A$main$1552        081A GR  |   3 A$main$1557        081C GR
  3 A$main$1558        081F GR  |   3 A$main$1563        0822 GR
  3 A$main$1564        0824 GR  |   3 A$main$1569        0827 GR
  3 A$main$1570        082A GR  |   3 A$main$1571        082C GR
  3 A$main$1572        082F GR  |   3 A$main$1577        0832 GR
  3 A$main$1578        0834 GR  |   3 A$main$1579        0836 GR
  3 A$main$1580        0839 GR  |   3 A$main$1581        083B GR
  3 A$main$1582        083E GR  |   3 A$main$1583        0840 GR
  3 A$main$1588        0842 GR  |   3 A$main$1589        0845 GR
  3 A$main$1590        0847 GR  |   3 A$main$1591        084A GR
  3 A$main$1596        084D GR  |   3 A$main$1597        084F GR
  3 A$main$1598        0852 GR  |   3 A$main$1599        0854 GR
  3 A$main$1600        0857 GR  |   3 A$main$1601        0859 GR
  3 A$main$1606        085B GR  |   3 A$main$1607        085D GR
  3 A$main$1612        0860 GR  |   3 A$main$1613        0862 GR
  3 A$main$1614        0864 GR  |   3 A$main$1615        0866 GR
  3 A$main$1616        0868 GR  |   3 A$main$1617        086B GR
  3 A$main$1618        086D GR  |   3 A$main$1623        086F GR
  3 A$main$1624        0871 GR  |   3 A$main$1625        0874 GR
  3 A$main$1626        0877 GR  |   3 A$main$1627        0878 GR
  3 A$main$1628        087A GR  |   3 A$main$1630        087B GR
  3 A$main$1631        087D GR  |   3 A$main$1632        087F GR
  3 A$main$1633        0881 GR  |   3 A$main$1634        0883 GR
  3 A$main$1635        0886 GR  |   3 A$main$1636        0888 GR
  3 A$main$1637        088B GR  |   3 A$main$1638        088D GR
  3 A$main$1643        088F GR  |   3 A$main$1644        0892 GR
  3 A$main$1649        0895 GR  |   3 A$main$1650        0898 GR
  3 A$main$1651        089A GR  |   3 A$main$1652        089C GR
  3 A$main$1653        089D GR  |   3 A$main$1654        089F GR
  3 A$main$1655        08A2 GR  |   3 A$main$1656        08A4 GR
  3 A$main$1657        08A7 GR  |   3 A$main$1658        08AA GR
  3 A$main$1659        08AC GR  |   3 A$main$1660        08AD GR
  3 A$main$1666        08B0 GR  |   3 A$main$1667        08B2 GR
  3 A$main$1673        08B6 GR  |   3 A$main$1674        08B9 GR
  3 A$main$1675        08BB GR  |   3 A$main$1676        08BE GR
  3 A$main$1677        08C0 GR  |   3 A$main$1678        08C3 GR
  3 A$main$1679        08C4 GR  |   3 A$main$1680        08C6 GR
  3 A$main$1681        08C9 GR  |   3 A$main$1682        08CB GR
  3 A$main$1683        08CD GR  |   3 A$main$1684        08CF GR
  3 A$main$1690        08D1 GR  |   3 A$main$1691        08D4 GR
  3 A$main$1697        08D8 GR  |   3 A$main$1698        08DB GR
  3 A$main$1699        08DC GR  |   3 A$main$1700        08DE GR
  3 A$main$1701        08E1 GR  |   3 A$main$1702        08E3 GR
  3 A$main$1703        08E5 GR  |   3 A$main$1704        08E7 GR
  3 A$main$1705        08E9 GR  |   3 A$main$1706        08EB GR
  3 A$main$1707        08ED GR  |   3 A$main$1708        08EF GR
  3 A$main$1714        08F1 GR  |   3 A$main$1715        08F4 GR
  3 A$main$1716        08F5 GR  |   3 A$main$1717        08F7 GR
  3 A$main$1718        08FA GR  |   3 A$main$1719        08FC GR
  3 A$main$1720        08FE GR  |   3 A$main$1721        0900 GR
  3 A$main$1722        0902 GR  |   3 A$main$1723        0904 GR
  3 A$main$1724        0906 GR  |   3 A$main$1725        0908 GR
  3 A$main$1731        090A GR  |   3 A$main$1732        090D GR
  3 A$main$1733        090F GR  |   3 A$main$1734        0911 GR
  3 A$main$1735        0912 GR  |   3 A$main$1736        0915 GR
  3 A$main$1737        0918 GR  |   3 A$main$1742        091B GR
  3 A$main$1743        091E GR  |   3 A$main$1744        0921 GR
  3 A$main$1745        0923 GR  |   3 A$main$1746        0926 GR
  3 A$main$1747        0928 GR  |   3 A$main$1748        092A GR
  3 A$main$1749        092C GR  |   3 A$main$1750        092D GR
  3 A$main$1751        092F GR  |   3 A$main$1752        0931 GR
  3 A$main$1753        0934 GR  |   3 A$main$1754        0936 GR
  3 A$main$1755        0939 GR  |   3 A$main$1756        093B GR
  3 A$main$1757        093E GR  |   3 A$main$1758        0940 GR
  3 A$main$1759        0942 GR  |   3 A$main$1760        0945 GR
  3 A$main$1761        0948 GR  |   3 A$main$1762        094A GR
  3 A$main$1763        094D GR  |   3 A$main$1764        0950 GR
  3 A$main$1765        0953 GR  |   3 A$main$1766        0956 GR
  3 A$main$1767        0959 GR  |   3 A$main$1768        095C GR
  3 A$main$1769        095F GR  |   3 A$main$1770        0962 GR
  3 A$main$1771        0965 GR  |   3 A$main$1772        0968 GR
  3 A$main$1773        096B GR  |   3 A$main$1779        096E GR
  3 A$main$1780        0971 GR  |   3 A$main$1781        0973 GR
  3 A$main$1782        0976 GR  |   3 A$main$1783        0978 GR
  3 A$main$1784        097A GR  |   3 A$main$1785        097C GR
  3 A$main$1786        097D GR  |   3 A$main$1787        097F GR
  3 A$main$1788        0981 GR  |   3 A$main$1789        0984 GR
  3 A$main$1790        0986 GR  |   3 A$main$1791        0989 GR
  3 A$main$1792        098B GR  |   3 A$main$1793        098E GR
  3 A$main$1794        0990 GR  |   3 A$main$1795        0992 GR
  3 A$main$1796        0995 GR  |   3 A$main$1797        0998 GR
  3 A$main$1798        099A GR  |   3 A$main$1799        099D GR
  3 A$main$1800        099F GR  |   3 A$main$1801        09A2 GR
  3 A$main$1802        09A5 GR  |   3 A$main$1803        09A8 GR
  3 A$main$1804        09AB GR  |   3 A$main$1805        09AE GR
  3 A$main$1806        09B1 GR  |   3 A$main$1807        09B4 GR
  3 A$main$1808        09B6 GR  |   3 A$main$1809        09B9 GR
  3 A$main$1815        09BC GR  |   3 A$main$1816        09BF GR
  3 A$main$1817        09C1 GR  |   3 A$main$1818        09C4 GR
  3 A$main$1819        09C6 GR  |   3 A$main$1820        09C8 GR
  3 A$main$1821        09CA GR  |   3 A$main$1822        09CB GR
  3 A$main$1823        09CD GR  |   3 A$main$1824        09CF GR
  3 A$main$1825        09D2 GR  |   3 A$main$1826        09D4 GR
  3 A$main$1827        09D7 GR  |   3 A$main$1828        09D9 GR
  3 A$main$1829        09DB GR  |   3 A$main$1830        09DE GR
  3 A$main$1831        09E1 GR  |   3 A$main$1832        09E4 GR
  3 A$main$1833        09E6 GR  |   3 A$main$1834        09E9 GR
  3 A$main$1835        09EB GR  |   3 A$main$1836        09EE GR
  3 A$main$1837        09F0 GR  |   3 A$main$1838        09F3 GR
  3 A$main$1839        09F5 GR  |   3 A$main$1840        09F8 GR
  3 A$main$1841        09FB GR  |   3 A$main$1842        09FD GR
  3 A$main$1843        09FF GR  |   3 A$main$1844        0A02 GR
  3 A$main$1850        0A05 GR  |   3 A$main$1851        0A08 GR
  3 A$main$1852        0A0A GR  |   3 A$main$1853        0A0D GR
  3 A$main$1854        0A0F GR  |   3 A$main$1855        0A11 GR
  3 A$main$1856        0A13 GR  |   3 A$main$1857        0A14 GR
  3 A$main$1858        0A16 GR  |   3 A$main$1859        0A18 GR
  3 A$main$1860        0A1B GR  |   3 A$main$1861        0A1D GR
  3 A$main$1862        0A20 GR  |   3 A$main$1863        0A22 GR
  3 A$main$1864        0A24 GR  |   3 A$main$1865        0A27 GR
  3 A$main$1866        0A2A GR  |   3 A$main$1867        0A2D GR
  3 A$main$1868        0A2F GR  |   3 A$main$1869        0A32 GR
  3 A$main$1870        0A34 GR  |   3 A$main$1871        0A37 GR
  3 A$main$1872        0A39 GR  |   3 A$main$1873        0A3C GR
  3 A$main$1874        0A3E GR  |   3 A$main$1875        0A41 GR
  3 A$main$1876        0A44 GR  |   3 A$main$1877        0A46 GR
  3 A$main$1878        0A48 GR  |   3 A$main$1884        0A4B GR
  3 A$main$1885        0A4E GR  |   3 A$main$1886        0A51 GR
  3 A$main$1887        0A55 GR  |   3 A$main$1888        0A59 GR
  3 A$main$1889        0A5C GR  |   3 A$main$1890        0A5E GR
  3 A$main$1891        0A62 GR  |   3 A$main$1893        0A65 GR
  3 A$main$1894        0A69 GR  |   3 A$main$1895        0A6D GR
  3 A$main$1896        0A70 GR  |   3 A$main$1897        0A73 GR
  3 A$main$1898        0A77 GR  |   3 A$main$1900        0A7A GR
  3 A$main$1901        0A7D GR  |   3 A$main$1902        0A81 GR
  3 A$main$1903        0A84 GR  |   3 A$main$1904        0A87 GR
  3 A$main$1905        0A8B GR  |   3 A$main$1906        0A8C GR
  3 A$main$1907        0A8F GR  |   3 A$main$1909        0A92 GR
  3 A$main$1910        0A95 GR  |   3 A$main$1911        0A99 GR
  3 A$main$1912        0A9C GR  |   3 A$main$1913        0A9D GR
  3 A$main$1914        0A9F GR  |   3 A$main$1915        0AA2 GR
  3 A$main$1916        0AA4 GR  |   3 A$main$1917        0AA6 GR
  3 A$main$1918        0AA8 GR  |   3 A$main$1919        0AAA GR
  3 A$main$1925        0AAD GR  |   3 A$main$1926        0AB0 GR
  3 A$main$1927        0AB3 GR  |   3 A$main$1929        0AB5 GR
  3 A$main$1930        0AB7 GR  |   3 A$main$1931        0ABA GR
  3 A$main$1932        0ABD GR  |   3 A$main$1933        0AC0 GR
  3 A$main$1934        0AC3 GR  |   3 A$main$1936        0AC6 GR
  3 A$main$1937        0AC8 GR  |   3 A$main$1938        0ACB GR
  3 A$main$1940        0ACE GR  |   3 A$main$1941        0AD0 GR
  3 A$main$1942        0AD3 GR  |   3 A$main$1944        0AD6 GR
  3 A$main$1945        0AD8 GR  |   3 A$main$1946        0ADB GR
  3 A$main$1948        0ADE GR  |   3 A$main$1949        0AE0 GR
  3 A$main$1950        0AE3 GR  |   3 A$main$1952        0AE6 GR
  3 A$main$1953        0AE8 GR  |   3 A$main$1954        0AEB GR
  3 A$main$2027        0D66 GR  |   3 A$main$2028        0D68 GR
  3 A$main$2033        0D6B GR  |   3 A$main$2034        0D6D GR
  3 A$main$2039        0D71 GR  |   3 A$main$2040        0D73 GR
  3 A$main$2050        0D77 GR  |   3 A$main$2055        0D7A GR
  3 A$main$2056        0D7D GR  |   3 A$main$2057        0D7F GR
  3 A$main$2058        0D81 GR  |   3 A$main$2059        0D83 GR
  3 A$main$2060        0D85 GR  |   3 A$main$2061        0D87 GR
  3 A$main$2062        0D89 GR  |   3 A$main$2063        0D8B GR
  3 A$main$2064        0D8D GR  |   3 A$main$2065        0D8F GR
  3 A$main$2066        0D91 GR  |   3 A$main$2067        0D93 GR
  3 A$main$2068        0D95 GR  |   3 A$main$2069        0D97 GR
  3 A$main$2071        0D99 GR  |   3 A$main$2072        0D9B GR
  3 A$main$2080        0D9E GR  |   3 A$main$2081        0DA1 GR
  3 A$main$2082        0DA3 GR  |   3 A$main$2083        0DA6 GR
  3 A$main$2084        0DA8 GR  |   3 A$main$2092        0DAC GR
  3 A$main$2097        0DAF GR  |   3 A$main$2098        0DB2 GR
  3 A$main$2099        0DB3 GR  |   3 A$main$2100        0DB5 GR
  3 A$main$2101        0DB6 GR  |   3 A$main$2102        0DB7 GR
  3 A$main$2103        0DB9 GR  |   3 A$main$2104        0DBD GR
  3 A$main$2105        0DBF GR  |   3 A$main$2106        0DC2 GR
  3 A$main$2107        0DC5 GR  |   3 A$main$2112        0DC8 GR
  3 A$main$2113        0DCB GR  |   3 A$main$2120        0DCE GR
  3 A$main$2121        0DD1 GR  |   3 A$main$2126        0DD4 GR
  3 A$main$2131        0DD7 GR  |   3 A$main$2132        0DD9 GR
  3 A$main$2133        0DDC GR  |   3 A$main$2134        0DDE GR
  3 A$main$2135        0DE0 GR  |   3 A$main$2140        0DE4 GR
  3 A$main$2141        0DE7 GR  |   3 A$main$2142        0DE9 GR
  3 A$main$2143        0DED GR  |   3 A$main$2144        0DEF GR
  3 A$main$2146        0DF3 GR  |   3 A$main$2147        0DF6 GR
  3 A$main$2148        0DF8 GR  |   3 A$main$2154        0DFC GR
  3 A$main$2155        0DFF GR  |   3 A$main$2156        0E01 GR
  3 A$main$2157        0E03 GR  |   3 A$main$2158        0E07 GR
  3 A$main$2159        0E09 GR  |   3 A$main$2160        0E0D GR
  3 A$main$2161        0E0F GR  |   3 A$main$2167        0E13 GR
  3 A$main$2168        0E15 GR  |   3 A$main$2169        0E18 GR
  3 A$main$2170        0E1A GR  |   3 A$main$2171        0E1D GR
  3 A$main$2172        0E1F GR  |   3 A$main$2173        0E20 GR
  3 A$main$2174        0E22 GR  |   3 A$main$2175        0E26 GR
  3 A$main$2181        0E29 GR  |   3 A$main$2182        0E2B GR
  3 A$main$2187        0E2F GR  |   3 A$main$2188        0E31 GR
  3 A$main$2193        0E35 GR  |   3 A$main$2194        0E37 GR
  3 A$main$2199        0E3B GR  |   3 A$main$2200        0E3D GR
  3 A$main$2205        0E41 GR  |   3 A$main$2206        0E43 GR
  3 A$main$2217        0E47 GR  |   3 A$main$2218        0E49 GR
  3 A$main$2219        0E4C GR  |   3 A$main$2220        0E4F GR
  3 A$main$2221        0E52 GR  |   3 A$main$2222        0E53 GR
  3 A$main$2223        0E55 GR  |   3 A$main$2224        0E58 GR
  3 A$main$2225        0E5B GR  |   3 A$main$2226        0E5D GR
  3 A$main$2227        0E60 GR  |   3 A$main$2228        0E63 GR
  3 A$main$2230        0E64 GR  |   3 A$main$2231        0E66 GR
  3 A$main$2236        0E68 GR  |   3 A$main$2241        0E6B GR
  3 A$main$2242        0E6E GR  |   3 A$main$2243        0E70 GR
  3 A$main$2244        0E72 GR  |   3 A$main$2250        0E76 GR
  3 A$main$2251        0E79 GR  |   3 A$main$2252        0E7C GR
  3 A$main$2257        0E80 GR  |   3 A$main$2258        0E82 GR
  3 A$main$2259        0E85 GR  |   3 A$main$2260        0E88 GR
  3 A$main$2261        0E8B GR  |   3 A$main$2262        0E8C GR
  3 A$main$2263        0E8F GR  |   3 A$main$2264        0E92 GR
  3 A$main$2265        0E93 GR  |   3 A$main$2266        0E96 GR
  3 A$main$2267        0E97 GR  |   3 A$main$2272        0E9A GR
  3 A$main$2273        0E9B GR  |   3 A$main$2274        0E9D GR
  3 A$main$2275        0EA0 GR  |   3 A$main$2280        0EA3 GR
  3 A$main$2281        0EA6 GR  |   3 A$main$2286        0EA9 GR
  3 A$main$2292        0EAB GR  |   3 A$main$2293        0EAE GR
  3 A$main$2294        0EB1 GR  |   3 A$main$2299        0EB4 GR
  3 A$main$2300        0EB8 GR  |   3 A$main$2305        0EBC GR
  3 A$main$2306        0EBE GR  |   3 A$main$2311        0EC1 GR
  3 A$main$2312        0EC3 GR  |   3 A$main$2313        0EC6 GR
  3 A$main$2314        0EC9 GR  |   3 A$main$2315        0ECB GR
  3 A$main$2316        0ECE GR  |   3 A$main$2322        0ED2 GR
  3 A$main$2323        0ED4 GR  |   3 A$main$2324        0ED7 GR
  3 A$main$2325        0EDA GR  |   3 A$main$2330        0EDE GR
  3 A$main$2331        0EE1 GR  |   3 A$main$2341        0EE4 GR
  3 A$main$2342        0EE6 GR  |   3 A$main$2347        0EE9 GR
  3 A$main$2352        0EEC GR  |   3 A$main$2357        0EEF GR
  3 A$main$2365        0EF2 GR  |   3 A$main$2366        0EF5 GR
  3 A$main$2367        0EF7 GR  |   3 A$main$2368        0EFB GR
  3 A$main$2369        0EFD GR  |   3 A$main$2370        0F00 GR
  3 A$main$2376        0F03 GR  |   3 A$main$2377        0F05 GR
  3 A$main$2378        0F08 GR  |   3 A$main$2379        0F0A GR
  3 A$main$2386        0F0E GR  |   3 A$main$2387        0F11 GR
  3 A$main$2394        0F13 GR  |   3 A$main$2395        0F16 GR
  3 A$main$2406        0F18 GR  |   3 A$main$2407        0F1A GR
  3 A$main$2408        0F1D GR  |   3 A$main$2413        0F20 GR
  3 A$main$2414        0F23 GR  |   3 A$main$2415        0F25 GR
  3 A$main$2416        0F27 GR  |   3 A$main$2422        0F29 GR
  3 A$main$2423        0F2B GR  |   3 A$main$2424        0F2E GR
  3 A$main$2425        0F2F GR  |   3 A$main$2426        0F30 GR
  3 A$main$2427        0F34 GR  |   3 A$main$2433        0F38 GR
  3 A$main$2435        0F3B GR  |   3 A$main$2436        0F3D GR
  3 A$main$2437        0F40 GR  |   3 A$main$2438        0F42 GR
  3 A$main$2440        0F44 GR  |   3 A$main$2441        0F46 GR
  3 A$main$2443        0F48 GR  |   3 A$main$2445        0F4A GR
  3 A$main$2446        0F4D GR  |   3 A$main$2452        0F4F GR
  3 A$main$2457        0F52 GR  |   3 A$main$2458        0F55 GR
  3 A$main$2459        0F56 GR  |   3 A$main$2469        0F5A GR
  3 A$main$2474        0F5D GR  |   3 A$main$2475        0F60 GR
  3 A$main$2480        0F63 GR  |   3 A$main$2481        0F65 GR
  3 A$main$2486        0F68 GR  |   3 A$main$2491        0F6B GR
  3 A$main$2497        0F6E GR  |   3 A$main$2498        0F71 GR
  3 A$main$2499        0F73 GR  |   3 A$main$2500        0F75 GR
  3 A$main$2506        0F78 GR  |   3 A$main$2507        0F7B GR
  3 A$main$2513        0F7F GR  |   3 A$main$2514        0F82 GR
  3 A$main$2515        0F84 GR  |   3 A$main$2516        0F86 GR
  3 A$main$2517        0F88 GR  |   3 A$main$2518        0F8B GR
  3 A$main$2524        0F8E GR  |   3 A$main$2525        0F90 GR
  3 A$main$2526        0F92 GR  |   3 A$main$2527        0F94 GR
  3 A$main$2528        0F97 GR  |   3 A$main$2534        0F9A GR
  3 A$main$2535        0F9C GR  |   3 A$main$2536        0F9E GR
  3 A$main$2537        0FA0 GR  |   3 A$main$2538        0FA3 GR
  3 A$main$2544        0FA6 GR  |   3 A$main$2545        0FA8 GR
  3 A$main$2546        0FAA GR  |   3 A$main$2547        0FAC GR
  3 A$main$2553        0FAF GR  |   3 A$main$2554        0FB2 GR
  3 A$main$2555        0FB4 GR  |   3 A$main$2556        0FB7 GR
  3 A$main$2562        0FBB GR  |   3 A$main$2568        0FBE GR
  3 A$main$2573        0FC1 GR  |   3 A$main$2574        0FC4 GR
  3 A$main$2579        0FC6 GR  |   3 A$main$2580        0FC9 GR
  3 A$main$2581        0FCB GR  |   3 A$main$2582        0FCD GR
  3 A$main$2588        0FD0 GR  |   3 A$main$2589        0FD3 GR
  3 A$main$2590        0FD7 GR  |   3 A$main$2591        0FD9 GR
  3 A$main$2592        0FDC GR  |   3 A$main$2594        0FDF GR
  3 A$main$2595        0FE1 GR  |   3 A$main$2596        0FE4 GR
  3 A$main$2602        0FE7 GR  |   3 A$main$2603        0FEA GR
  3 A$main$2604        0FEE GR  |   3 A$main$2605        0FF0 GR
  3 A$main$2606        0FF3 GR  |   3 A$main$2617        0FF6 GR
  3 A$main$2618        0FF8 GR  |   3 A$main$2623        0FFB GR
  3 A$main$2628        0FFE GR  |   3 A$main$2633        1001 GR
  3 A$main$2638        1004 GR  |   3 A$main$2639        1007 GR
  3 A$main$2640        1009 GR  |   3 A$main$2645        100D GR
  3 A$main$2650        1010 GR  |   3 A$main$2651        1013 GR
  3 A$main$2652        1014 GR  |   3 A$main$2653        1016 GR
  3 A$main$2654        1017 GR  |   3 A$main$2655        1018 GR
  3 A$main$2656        101A GR  |   3 A$main$2657        101E GR
  3 A$main$2658        1020 GR  |   3 A$main$2659        1023 GR
  3 A$main$2664        1026 GR  |   3 A$main$2665        1029 GR
  3 A$main$2670        102C GR  |   3 A$main$2671        102E GR
  3 A$main$2673        1031 GR  |   3 A$main$2674        1033 GR
  3 A$main$2675        1036 GR  |   3 A$main$2681        1039 GR
  3 A$main$2682        103C GR  |   3 A$main$2687        103F GR
  3 A$main$2688        1042 GR  |   3 A$main$2689        1044 GR
  3 A$main$2690        1045 GR  |   3 A$main$2691        1046 GR
  3 A$main$2692        1047 GR  |   3 A$main$2693        1049 GR
  3 A$main$2694        104C GR  |   3 A$main$2695        104F GR
  3 A$main$2696        1052 GR  |   3 A$main$2697        1054 GR
  3 A$main$2698        1056 GR  |   3 A$main$2699        1058 GR
  3 A$main$2700        105B GR  |   3 A$main$2701        105E GR
  3 A$main$2706        1061 GR  |   3 A$main$2711        1064 GR
  3 A$main$2712        1067 GR  |   3 A$main$2717        106B GR
  3 A$main$2718        106D GR  |   3 A$main$2719        1070 GR
  3 A$main$2721        1073 GR  |   3 A$main$2722        1075 GR
  3 A$main$2723        1078 GR  |   3 A$main$2725        107B GR
  3 A$main$2726        107C GR  |   3 A$main$2727        107E GR
  3 A$main$2728        107F GR  |   3 A$main$2729        1080 GR
  3 A$main$2730        1082 GR  |   3 A$main$2738        1090 GR
  3 A$main$2739        1092 GR  |   3 A$main$2740        1095 GR
  3 A$main$2751        1098 GR  |   3 A$main$2752        109B GR
  3 A$main$2753        109C GR  |   3 A$main$2754        109F GR
  3 A$main$2755        10A1 GR  |   3 A$main$2756        10A3 GR
  3 A$main$2757        10A6 GR  |   3 A$main$2758        10A8 GR
  3 A$main$2760        10A9 GR  |   3 A$main$2763        10AB GR
  3 A$main$2764        10AC GR  |   3 A$main$2765        10AE GR
  3 A$main$2770        10B1 GR  |   3 A$main$2771        10B4 GR
  3 A$main$2772        10B6 GR  |   3 A$main$2773        10B7 GR
  3 A$main$2778        10BA GR  |   3 A$main$2779        10BD GR
  3 A$main$2781        10BE GR  |   3 A$main$2782        10C1 GR
  3 A$main$2783        10C2 GR  |   3 A$main$2784        10C5 GR
  3 A$main$2789        10C8 GR  |   3 A$main$2795        10CB GR
  3 A$main$2800        10CE GR  |   3 A$main$2801        10D1 GR
  3 A$main$2806        10D4 GR  |   3 A$main$2807        10D6 GR
  3 A$main$2808        10D9 GR  |   3 A$main$2809        10DC GR
  3 A$main$2810        10DF GR  |   3 A$main$2811        10E0 GR
  3 A$main$2812        10E1 GR  |   3 A$main$2813        10E4 GR
  3 A$main$2814        10E6 GR  |   3 A$main$2815        10E9 GR
  3 A$main$2816        10EC GR  |   3 A$main$2817        10ED GR
  3 A$main$2818        10EF GR  |   3 A$main$2819        10F1 GR
  3 A$main$2824        10F4 GR  |   3 A$main$2825        10F7 GR
  3 A$main$2826        10F9 GR  |   3 A$main$2827        10FB GR
  3 A$main$2833        10FE GR  |   3 A$main$2834        1101 GR
  3 A$main$2839        1105 GR  |   3 A$main$2840        1108 GR
  3 A$main$2846        110B GR  |   3 A$main$2852        110E GR
  3 A$main$2853        1110 GR  |   3 A$main$2854        1113 GR
  3 A$main$2855        1115 GR  |   3 A$main$2860        1118 GR
  3 A$main$2861        111A GR  |   3 A$main$2862        111E GR
  3 A$main$2863        1120 GR  |   3 A$main$2864        1124 GR
  3 A$main$2865        1126 GR  |   3 A$main$2866        112A GR
  3 A$main$2867        112C GR  |   3 A$main$2868        1130 GR
  3 A$main$2869        1132 GR  |   3 A$main$2870        1136 GR
  3 A$main$2871        1138 GR  |   3 A$main$2872        113C GR
  3 A$main$2873        113E GR  |   3 A$main$2874        1140 GR
  3 A$main$2875        1142 GR  |   3 A$main$2876        1144 GR
  3 A$main$2881        1148 GR  |   3 A$main$2887        114B GR
  3 A$main$2892        114E GR  |   3 A$main$2893        1151 GR
  3 A$main$2898        1154 GR  |   3 A$main$2904        1157 GR
  3 A$main$2909        115A GR  |   3 A$main$2910        115D GR
  3 A$main$2915        1160 GR  |   3 A$main$2916        1162 GR
  3 A$main$2917        1165 GR  |   3 A$main$2918        1166 GR
  3 A$main$2923        1169 GR  |   3 A$main$2924        116C GR
  3 A$main$2934        1170 GR  |   3 A$main$2935        1173 GR
  3 A$main$2940        1176 GR  |   3 A$main$2941        1178 GR
  3 A$main$2946        117B GR  |   3 A$main$2952        117E GR
  3 A$main$2953        1180 GR  |   3 A$main$2958        1183 GR
  3 A$main$2959        1185 GR  |   3 A$main$2964        1189 GR
  3 A$main$2965        118B GR  |   3 A$main$2966        118E GR
  3 A$main$2972        1191 GR  |   3 A$main$2973        1193 GR
  3 A$main$2974        1196 GR  |   3 A$main$2975        1198 GR
  3 A$main$2980        119C GR  |   3 A$main$2981        119F GR
  3 A$main$2986        11A2 GR  |   3 A$main$2987        11A4 GR
  3 A$main$2992        11A7 GR  |   3 A$main$2993        11A9 GR
  3 A$main$2999        11AC GR  |   3 A$main$3000        11AE GR
  3 A$main$3005        11B1 GR  |   3 A$main$3010        11B4 GR
  3 A$main$3016        11B7 GR  |   3 A$main$3017        11B9 GR
  3 A$main$3018        11BC GR  |   3 A$main$3023        11BF GR
  3 A$main$3024        11C0 GR  |   3 A$main$3025        11C1 GR
  3 A$main$3026        11C2 GR  |   3 A$main$3027        11C4 GR
  3 A$main$3028        11C8 GR  |   3 A$main$3029        11CB GR
  3 A$main$3030        11CC GR  |   3 A$main$3031        11CE GR
  3 A$main$3032        11D0 GR  |   3 A$main$3033        11D2 GR
  3 A$main$3040        11D6 GR  |   3 A$main$3041        11D8 GR
  3 A$main$3043        11DA GR  |   3 A$main$3044        11DD GR
  3 A$main$3049        11DF GR  |   3 A$main$3050        11E2 GR
  3 A$main$3051        11E3 GR  |   3 A$main$3052        11E4 GR
  3 A$main$3053        11E5 GR  |   3 A$main$3054        11E7 GR
  3 A$main$3055        11E9 GR  |   3 A$main$3056        11EB GR
  3 A$main$3057        11EC GR  |   3 A$main$3058        11F0 GR
  3 A$main$3063        11F4 GR  |   3 A$main$3064        11F7 GR
  3 A$main$3065        11F8 GR  |   3 A$main$3066        11FA GR
  3 A$main$3067        11FB GR  |   3 A$main$3068        11FC GR
  3 A$main$3069        11FE GR  |   3 A$main$3070        1202 GR
  3 A$main$3071        1204 GR  |   3 A$main$3072        1207 GR
  3 A$main$3077        120A GR  |   3 A$main$3078        120D GR
  3 A$main$3083        1210 GR  |   3 A$main$3084        1213 GR
  3 A$main$3085        1214 GR  |   3 A$main$3086        1216 GR
  3 A$main$3087        1217 GR  |   3 A$main$3088        1218 GR
  3 A$main$3089        121A GR  |   3 A$main$3090        121E GR
  3 A$main$3091        1220 GR  |   3 A$main$3092        1224 GR
  3 A$main$3093        1226 GR  |   3 A$main$3094        1229 GR
  3 A$main$3099        122C GR  |   3 A$main$3100        122F GR
  3 A$main$3105        1232 GR  |   3 A$main$3110        1235 GR
  3 A$main$3111        1237 GR  |   3 A$main$3116        123A GR
  3 A$main$3117        123D GR  |   3 A$main$3118        123F GR
  3 A$main$3119        1241 GR  |   3 A$main$3125        1244 GR
  3 A$main$3126        1246 GR  |   3 A$main$3127        1249 GR
  3 A$main$3128        124B GR  |   3 A$main$3133        124F GR
  3 A$main$3134        1251 GR  |   3 A$main$3139        1254 GR
  3 A$main$3140        1256 GR  |   3 A$main$3141        1259 GR
  3 A$main$3147        125C GR  |   3 A$main$3148        125E GR
  3 A$main$3153        1261 GR  |   3 A$main$3155        1264 GR
  3 A$main$3156        1266 GR  |   3 A$main$3161        126A GR
  3 A$main$3162        126C GR  |   3 A$main$3163        126F GR
  3 A$main$3171        1272 GR  |   3 A$main$3172        1275 GR
  3 A$main$3173        1276 GR  |   3 A$main$3174        1278 GR
  3 A$main$3175        1279 GR  |   3 A$main$3176        127A GR
  3 A$main$3177        127C GR  |   3 A$main$3178        1280 GR
  3 A$main$3179        1282 GR  |   3 A$main$3180        1285 GR
  3 A$main$3185        1288 GR  |   3 A$main$3186        128B GR
  3 A$main$3191        128E GR  |   3 A$main$3192        1291 GR
  3 A$main$3197        1294 GR  |   3 A$main$3198        1296 GR
  3 A$main$3203        1299 GR  |   3 A$main$3204        129C GR
  3 A$main$3209        129F GR  |   3 A$main$3210        12A1 GR
  3 A$main$3211        12A3 GR  |   3 A$main$3212        12A5 GR
  3 A$main$3218        12A8 GR  |   3 A$main$3219        12AB GR
  3 A$main$3220        12AC GR  |   3 A$main$3221        12AE GR
  3 A$main$3222        12AF GR  |   3 A$main$3223        12B0 GR
  3 A$main$3224        12B2 GR  |   3 A$main$3225        12B6 GR
  3 A$main$3226        12B8 GR  |   3 A$main$3227        12BB GR
  3 A$main$3232        12BE GR  |   3 A$main$3233        12C1 GR
  3 A$main$3238        12C4 GR  |   3 A$main$3239        12C6 GR
  3 A$main$3244        12C9 GR  |   3 A$main$3245        12CB GR
  3 A$main$3252        12CE GR  |   3 A$main$3253        12D0 GR
  3 A$main$3254        12D3 GR  |   3 A$main$3259        12D7 GR
  3 A$main$3260        12D9 GR  |   3 A$main$3261        12DC GR
  3 A$main$3266        12E0 GR  |   3 A$main$3267        12E3 GR
  3 A$main$3272        12E7 GR  |   3 A$main$3273        12E9 GR
  3 A$main$3274        12EC GR  |   3 A$main$3279        12F0 GR
  3 A$main$3280        12F2 GR  |   3 A$main$3281        12F5 GR
  3 A$main$3286        12F9 GR  |   3 A$main$3287        12FB GR
  3 A$main$3288        12FE GR  |   3 A$main$3293        1302 GR
  3 A$main$3294        1304 GR  |   3 A$main$3295        1307 GR
  3 A$main$3300        130B GR  |   3 A$main$3301        130D GR
  3 A$main$3302        1310 GR  |   3 A$main$3307        1314 GR
  3 A$main$3308        1316 GR  |   3 A$main$3309        1319 GR
  3 A$main$3314        131D GR  |   3 A$main$3315        1320 GR
  3 A$main$3321        1324 GR  |   3 A$main$3322        1327 GR
  3 A$main$3323        1329 GR  |   3 A$main$3328        132D GR
  3 A$main$3329        132F GR  |   3 A$main$3339        1332 GR
  3 A$main$3340        1334 GR  |   3 A$main$3341        1337 GR
  3 A$main$3346        133A GR  |   3 A$main$3347        133B GR
  3 A$main$3348        133C GR  |   3 A$main$3349        133D GR
  3 A$main$3350        133F GR  |   3 A$main$3351        1343 GR
  3 A$main$3352        1345 GR  |   3 A$main$3353        1347 GR
  3 A$main$3359        134A GR  |   3 A$main$3360        134D GR
  3 A$main$3361        134F GR  |   3 A$main$3366        1351 GR
  3 A$main$3367        1353 GR  |   3 A$main$3372        1357 GR
  3 A$main$3373        1358 GR  |   3 A$main$3374        1359 GR
  3 A$main$3375        135A GR  |   3 A$main$3376        135C GR
  3 A$main$3377        1360 GR  |   3 A$main$3378        1362 GR
  3 A$main$3379        1365 GR  |   3 A$main$3384        1368 GR
  3 A$main$3385        136B GR  |   3 A$main$3390        136E GR
  3 A$main$3391        1371 GR  |   3 A$main$3392        1372 GR
  3 A$main$3393        1374 GR  |   3 A$main$3394        1375 GR
  3 A$main$3395        1376 GR  |   3 A$main$3396        1378 GR
  3 A$main$3397        137C GR  |   3 A$main$3398        137F GR
  3 A$main$3399        1383 GR  |   3 A$main$3405        1385 GR
  3 A$main$3410        1388 GR  |   3 A$main$3411        138A GR
  3 A$main$3416        138D GR  |   3 A$main$3417        138F GR
  3 A$main$3418        1391 GR  |   3 A$main$3424        1394 GR
  3 A$main$3425        1397 GR  |   3 A$main$3430        139A GR
  3 A$main$3436        139D GR  |   3 A$main$3437        139F GR
  3 A$main$3438        13A1 GR  |   3 A$main$3440        13A4 GR
  3 A$main$3441        13A6 GR  |   3 A$main$3442        13A9 GR
  3 A$main$3443        13AB GR  |   3 A$main$3444        13AF GR
  3 A$main$3450        13B2 GR  |   3 A$main$3451        13B5 GR
  3 A$main$3456        13B8 GR  |   3 A$main$3457        13BA GR
  3 A$main$3462        13BD GR  |   3 A$main$3463        13C0 GR
  3 A$main$3469        13C3 GR  |   3 A$main$3470        13C5 GR
  3 A$main$3471        13C8 GR  |   3 A$main$3472        13C9 GR
  3 A$main$3477        13CC GR  |   3 A$main$3478        13CF GR
  3 A$main$3479        13D0 GR  |   3 A$main$3480        13D3 GR
  3 A$main$3481        13D6 GR  |   3 A$main$3482        13D8 GR
  3 A$main$3483        13DA GR  |   3 A$main$3484        13DD GR
  3 A$main$3485        13DF GR  |   3 A$main$3486        13E0 GR
  3 A$main$3491        13E3 GR  |   3 A$main$3492        13E6 GR
  3 A$main$3493        13E8 GR  |   3 A$main$3494        13EA GR
  3 A$main$3500        13ED GR  |   3 A$main$3501        13F0 GR
  3 A$main$3502        13F3 GR  |   3 A$main$3507        13F6 GR
  3 A$main$3508        13F9 GR  |   3 A$main$3513        13FC GR
  3 A$main$3514        13FF GR  |   3 A$main$3515        1400 GR
  3 A$main$3516        1402 GR  |   3 A$main$3517        1405 GR
  3 A$main$3518        1407 GR  |   3 A$main$3519        1409 GR
  3 A$main$3520        140B GR  |   3 A$main$3525        140E GR
  3 A$main$3526        1412 GR  |   3 A$main$3536        1416 GR
  3 A$main$3537        1419 GR  |   3 A$main$3547        141C GR
  3 A$main$3548        141E GR  |   3 A$main$3553        1421 GR
  3 A$main$3558        1424 GR  |   3 A$main$3559        1427 GR
  3 A$main$3560        1429 GR  |   3 A$main$3561        142A GR
  3 A$main$3562        142C GR  |   3 A$main$3563        142F GR
  3 A$main$3564        1430 GR  |   3 A$main$3565        1432 GR
  3 A$main$3566        1434 GR  |   3 A$main$3567        1436 GR
  3 A$main$3568        1437 GR  |   3 A$main$3569        1439 GR
  3 A$main$3570        143A GR  |   3 A$main$3571        143C GR
  3 A$main$3576        143F GR  |   3 A$main$3577        1441 GR
  3 A$main$3578        1444 GR  |   3 A$main$3579        1446 GR
  3 A$main$3580        1449 GR  |   3 A$main$3581        144B GR
  3 A$main$3582        144E GR  |   3 A$main$3583        1451 GR
  3 A$main$3584        1453 GR  |   3 A$main$3585        1455 GR
  3 A$main$3590        1458 GR  |   3 A$main$3591        145A GR
  3 A$main$3592        145D GR  |   3 A$main$3597        1460 GR
  3 A$main$3598        1463 GR  |   3 A$main$3603        1466 GR
  3 A$main$3608        1469 GR  |   3 A$main$3609        146B GR
  3 A$main$3614        146E GR  |   3 A$main$3615        1470 GR
  3 A$main$3616        1473 GR  |   3 A$main$3617        1475 GR
  3 A$main$3622        1478 GR  |   3 A$main$3623        147A GR
  3 A$main$3624        147C GR  |   3 A$main$3625        147E GR
  3 A$main$3626        1480 GR  |   3 A$main$3627        1482 GR
  3 A$main$3632        1486 GR  |   3 A$main$3633        1488 GR
  3 A$main$3634        148A GR  |   3 A$main$3640        148D GR
  3 A$main$3641        148F GR  |   3 A$main$3642        1492 GR
  3 A$main$3643        1494 GR  |   3 A$main$3644        1497 GR
  3 A$main$3645        1498 GR  |   3 A$main$3646        1499 GR
  3 A$main$3647        149B GR  |   3 A$main$3652        149F GR
  3 A$main$3653        14A1 GR  |   3 A$main$3654        14A4 GR
  3 A$main$3665        14A7 GR  |   3 A$main$3666        14A9 GR
  3 A$main$3667        14AC GR  |   3 A$main$3672        14AF GR
  3 A$main$3673        14B1 GR  |   3 A$main$3674        14B5 GR
  3 A$main$3675        14B9 GR  |   3 A$main$3676        14BB GR
  3 A$main$3677        14BF GR  |   3 A$main$3678        14C2 GR
  3 A$main$3679        14C4 GR  |   3 A$main$3681        14C8 GR
  3 A$main$3687        14CB GR  |   3 A$main$3688        14CD GR
  3 A$main$3689        14D0 GR  |   3 A$main$3690        14D2 GR
  3 A$main$3691        14D5 GR  |   3 A$main$3692        14D7 GR
  3 A$main$3697        14DB GR  |   3 A$main$3698        14DD GR
  3 A$main$3703        14E0 GR  |   3 A$main$3704        14E3 GR
  3 A$main$3709        14E6 GR  |   3 A$main$3719        14E9 GR
  3 A$main$3720        14EC GR  |   3 A$main$3721        14EE GR
  3 A$main$3722        14F1 GR  |   3 A$main$3723        14F4 GR
  3 A$main$3728        14F7 GR  |   3 A$main$3729        14F9 GR
  3 A$main$3730        14FB GR  |   3 A$main$3731        14FD GR
  3 A$main$3733        1500 GR  |   3 A$main$3734        1502 GR
  3 A$main$3735        1505 GR  |   3 A$main$3736        1508 GR
  3 A$main$3741        150C GR  |   3 A$main$3742        150E GR
  3 A$main$3743        1511 GR  |   3 A$main$3745        1514 GR
  3 A$main$3746        1516 GR  |   3 A$main$3747        1519 GR
  3 A$main$3748        151C GR  |   3 A$main$3753        1520 GR
  3 A$main$3754        1522 GR  |   3 A$main$3755        1525 GR
  3 A$main$3761        1528 GR  |   3 A$main$3762        152A GR
  3 A$main$3763        152D GR  |   3 A$main$3769        1530 GR
  3 A$main$3770        1531 GR  |   3 A$main$3771        1532 GR
  3 A$main$3772        1533 GR  |   3 A$main$3773        1535 GR
  3 A$main$3774        1539 GR  |   3 A$main$3775        153B GR
  3 A$main$3776        153E GR  |   3 A$main$3781        1541 GR
  3 A$main$3782        1544 GR  |   3 A$main$3787        1547 GR
  3 A$main$3788        154A GR  |   3 A$main$3789        154B GR
  3 A$main$3790        154D GR  |   3 A$main$3791        154E GR
  3 A$main$3792        154F GR  |   3 A$main$3793        1551 GR
  3 A$main$3794        1554 GR  |   3 A$main$3795        1558 GR
  3 A$main$3796        155A GR  |   3 A$main$3798        155D GR
  3 A$main$3799        155E GR  |   3 A$main$3804        1562 GR
  3 A$main$3805        1565 GR  |   3 A$main$3806        1568 GR
  3 A$main$3807        156A GR  |   3 A$main$3808        156C GR
  3 A$main$3813        1570 GR  |   3 A$main$3814        1572 GR
  3 A$main$3819        1575 GR  |   3 A$main$3820        1578 GR
  3 A$main$3825        157B GR  |   3 A$main$3830        157E GR
  3 A$main$3836        1581 GR  |   3 A$main$3837        1584 GR
  3 A$main$3842        1587 GR  |   3 A$main$3843        1589 GR
  3 A$main$3848        158C GR  |   3 A$main$3849        158E GR
  3 A$main$3854        1591 GR  |   3 A$main$3859        1594 GR
  3 A$main$3864        1597 GR  |   3 A$main$3865        1599 GR
  3 A$main$3866        159C GR  |   3 A$main$3867        159F GR
  3 A$main$3869        15A0 GR  |   3 A$main$3870        15A1 GR
  3 A$main$3871        15A2 GR  |   3 A$main$3876        15A5 GR
  3 A$main$3877        15A7 GR  |   3 A$main$3878        15AA GR
  3 A$main$3879        15AD GR  |   3 A$main$3885        15B1 GR
  3 A$main$3886        15B4 GR  |   3 A$main$3887        15B6 GR
  3 A$main$3888        15B9 GR  |   3 A$main$3893        15BC GR
  3 A$main$3894        15BF GR  |   3 A$main$3899        15C2 GR
  3 A$main$3900        15C4 GR  |   3 A$main$3906        15C7 GR
  3 A$main$3911        15CA GR  |   3 A$main$3912        15CD GR
  3 A$main$3917        15D0 GR  |   3 A$main$3918        15D3 GR
  3 A$main$3923        15D6 GR  |   3 A$main$3924        15D8 GR
  3 A$main$3925        15DB GR  |   3 A$main$3926        15DD GR
  3 A$main$3931        15E1 GR  |   3 A$main$3932        15E3 GR
  3 A$main$3933        15E5 GR  |   3 A$main$3944        15E8 GR
  3 A$main$3945        15EA GR  |   3 A$main$3946        15EC GR
  3 A$main$3947        15EE GR  |   3 A$main$3952        15F2 GR
  3 A$main$3953        15F4 GR  |   3 A$main$3958        15F7 GR
  3 A$main$3959        15FA GR  |   3 A$main$3964        15FD GR
  3 A$main$3969        1600 GR  |   3 A$main$3971        1603 GR
  3 A$main$3977        1605 GR  |   3 A$main$3982        1608 GR
  3 A$main$3988        160B GR  |   3 A$main$3989        160D GR
  3 A$main$3990        160F GR  |   3 A$main$3992        1612 GR
  3 A$main$3998        1615 GR  |   3 A$main$3999        1617 GR
  3 A$main$4000        1619 GR  |   3 A$main$4001        161B GR
  3 A$main$4006        161F GR  |   3 A$main$4007        1621 GR
  3 A$main$4012        1624 GR  |   3 A$main$4013        1627 GR
  3 A$main$4018        162A GR  |   3 A$main$4023        162D GR
  3 A$main$4025        1630 GR  |   3 A$main$4031        1633 GR
  3 A$main$4032        1636 GR  |   3 A$main$4033        1638 GR
  3 A$main$4034        163A GR  |   3 A$main$4039        163E GR
  3 A$main$4040        1640 GR  |   3 A$main$4045        1643 GR
  3 A$main$4046        1646 GR  |   3 A$main$4051        1649 GR
  3 A$main$4056        164C GR  |   3 A$main$4062        164F GR
  3 A$main$4063        1652 GR  |   3 A$main$4064        1654 GR
  3 A$main$4065        1656 GR  |   3 A$main$4070        165A GR
  3 A$main$4071        165C GR  |   3 A$main$4076        165F GR
  3 A$main$4077        1662 GR  |   3 A$main$4082        1665 GR
  3 A$main$4087        1668 GR  |   3 A$main$4093        166B GR
  3 A$main$4094        166E GR  |   3 A$main$4099        1671 GR
  3 A$main$4100        1674 GR  |   3 A$main$4105        1677 GR
  3 A$main$4106        1679 GR  |   3 A$main$4111        167C GR
  3 A$main$4112        167E GR  |   3 A$main$4113        1680 GR
  3 A$main$4119        1683 GR  |   3 A$main$4120        1686 GR
  3 A$main$4121        1687 GR  |   3 A$main$4122        1688 GR
  3 A$main$4123        168B GR  |   3 A$main$4128        168E GR
  3 A$main$4129        1691 GR  |   3 A$main$4130        1694 GR
  3 A$main$4136        1697 GR  |   3 A$main$4142        169A GR
  3 A$main$4148        169D GR  |   3 A$main$4149        169F GR
  3 A$main$4150        16A2 GR  |   3 A$main$4151        16A4 GR
  3 A$main$4156        16A6 GR  |   3 A$main$4157        16A8 GR
  3 A$main$4162        16AB GR  |   3 A$main$4163        16AE GR
  3 A$main$4168        16B1 GR  |   3 A$main$4173        16B4 GR
  3 A$main$4175        16B7 GR  |   3 A$main$4176        16B8 GR
  3 A$main$4178        16BB GR  |   3 A$main$4179        16BD GR
  3 A$main$4185        16C0 GR  |   3 A$main$4191        16C3 GR
  3 A$main$4192        16C5 GR  |   3 A$main$4193        16C7 GR
  3 A$main$4202        16CD GR  |   3 A$main$4203        16D0 GR
  3 A$main$4204        16D2 GR  |   3 A$main$4205        16D5 GR
  3 A$main$4211        16D9 GR  |   3 A$main$4212        16DC GR
  3 A$main$4213        16E0 GR  |   3 A$main$4214        16E3 GR
  3 A$main$4219        16E7 GR  |   3 A$main$4226        16EA GR
  3 A$main$4227        16EB GR  |   3 A$main$4232        16EF GR
  3 A$main$4233        16F2 GR  |   3 A$main$4234        16F4 GR
  3 A$main$4235        16F6 GR  |   3 A$main$4236        16F8 GR
  3 A$main$4237        16FB GR  |   3 A$main$4243        16FF GR
  3 A$main$4244        1702 GR  |   3 A$main$4245        1704 GR
  3 A$main$4246        1707 GR  |   3 A$main$4247        170A GR
  3 A$main$4253        170D GR  |   3 A$main$4258        1710 GR
  3 A$main$4264        1713 GR  |   3 A$main$4265        1716 GR
  3 A$main$4271        1717 GR  |   3 A$main$4272        171A GR
  3 A$main$4277        171D GR  |   3 A$main$4278        1720 GR
  3 A$main$4283        1723 GR  |   3 A$main$4284        1724 GR
  3 A$main$4286        1725 GR  |   3 A$main$4287        1726 GR
  3 A$main$4288        1728 GR  |   3 A$main$4289        172B GR
  3 A$main$4294        172F GR  |   3 A$main$4295        1732 GR
  3 A$main$4296        1734 GR  |   3 A$main$4297        1736 GR
  3 A$main$4298        1738 GR  |   3 A$main$4299        173B GR
  3 A$main$4305        173F GR  |   3 A$main$4306        1742 GR
  3 A$main$4307        1744 GR  |   3 A$main$4308        1747 GR
  3 A$main$4309        174A GR  |   3 A$main$4310        174D GR
  3 A$main$4316        1750 GR  |   3 A$main$4317        1753 GR
  3 A$main$4318        1756 GR  |   3 A$main$4324        1759 GR
  3 A$main$4325        175C GR  |   3 A$main$4326        175E GR
  3 A$main$4327        1760 GR  |   3 A$main$4328        1762 GR
  3 A$main$4329        1765 GR  |   3 A$main$4335        1769 GR
  3 A$main$4336        176C GR  |   3 A$main$4337        176E GR
  3 A$main$4338        1771 GR  |   3 A$main$4339        1774 GR
  3 A$main$4340        1777 GR  |   3 A$main$4342        177A GR
  3 A$main$4343        177B GR  |   3 A$main$4348        177F GR
  3 A$main$4349        1782 GR  |   3 A$main$4350        1784 GR
  3 A$main$4351        1786 GR  |   3 A$main$4352        1788 GR
  3 A$main$4353        178B GR  |   3 A$main$4359        178D GR
  3 A$main$4360        1790 GR  |   3 A$main$4361        1792 GR
  3 A$main$4362        1795 GR  |   3 A$main$4363        1798 GR
  3 A$main$4364        179B GR  |   3 A$main$4370        179E GR
  3 A$main$4371        17A1 GR  |   3 A$main$4372        17A4 GR
  3 A$main$4378        17A7 GR  |   3 A$main$4379        17AA GR
  3 A$main$4380        17AD GR  |   3 A$main$4386        17B0 GR
  3 A$main$4387        17B3 GR  |   3 A$main$4388        17B6 GR
  3 A$main$4429        1912 GR  |   3 A$main$4430        1914 GR
  3 A$main$4431        1917 GR  |   3 A$main$4442        1919 GR
  3 A$main$4447        191C GR  |   3 A$main$4448        191D GR
  3 A$main$4454        1921 GR  |   3 A$main$4455        1923 GR
  3 A$main$4456        1925 GR  |   3 A$main$4458        1927 GR
  3 A$main$4459        192A GR  |   3 A$main$4467        192C GR
  3 A$main$4468        192E GR  |   3 A$main$4469        1931 GR
  3 A$main$4470        1934 GR  |   3 A$main$4471        1936 GR
  3 A$main$4479        193A GR  |   3 A$main$4480        193C GR
  3 A$main$4481        193F GR  |   3 A$main$4482        1941 GR
  3 A$main$4487        1945 GR  |   3 A$main$4488        1947 GR
  3 A$main$4489        194A GR  |   3 A$main$4490        194C GR
  3 A$main$4491        1950 GR  |   3 A$main$4502        1953 GR
  3 A$main$4507        1956 GR  |   3 A$main$4508        1958 GR
  3 A$main$4509        195B GR  |   3 A$main$4514        195E GR
  3 A$main$4515        1961 GR  |   3 A$main$4516        1962 GR
  3 A$main$4517        1963 GR  |   3 A$main$4518        1964 GR
  3 A$main$4519        1967 GR  |   3 A$main$4520        196A GR
  3 A$main$4521        196D GR  |   3 A$main$4522        196E GR
  3 A$main$4523        196F GR  |   3 A$main$4524        1970 GR
  3 A$main$4525        1973 GR  |   3 A$main$4526        1975 GR
  3 A$main$4527        1978 GR  |   3 A$main$4528        1979 GR
  3 A$main$4529        197B GR  |   3 A$main$4530        197D GR
  3 A$main$4531        197E GR  |   3 A$main$4532        1980 GR
  3 A$main$4533        1982 GR  |   3 A$main$4534        1984 GR
  3 A$main$4539        1986 GR  |   3 A$main$4540        1988 GR
  3 A$main$4541        198B GR  |   3 A$main$4542        198C GR
  3 A$main$4543        198E GR  |   3 A$main$4544        198F GR
  3 A$main$4545        1990 GR  |   3 A$main$4546        1992 GR
  3 A$main$4547        1996 GR  |   3 A$main$4548        1998 GR
  3 A$main$4549        199B GR  |   3 A$main$4554        199E GR
  3 A$main$4555        19A1 GR  |   3 A$main$4560        19A4 GR
  3 A$main$4561        19A7 GR  |   3 A$main$4572        19AA GR
  3 A$main$4573        19AC GR  |   3 A$main$4578        19AF GR
  3 A$main$4579        19B2 GR  |   3 A$main$4580        19B5 GR
  3 A$main$4581        19B7 GR  |   3 A$main$4587        19BA GR
  3 A$main$4588        19BD GR  |   3 A$main$4589        19C0 GR
  3 A$main$4590        19C2 GR  |   3 A$main$4591        19C4 GR
  3 A$main$4592        19C6 GR  |   3 A$main$4593        19C9 GR
  3 A$main$4594        19CB GR  |   3 A$main$4600        19CE GR
  3 A$main$4601        19D0 GR  |   3 A$main$4602        19D3 GR
  3 A$main$4603        19D5 GR  |   3 A$main$4604        19D7 GR
  3 A$main$4605        19DA GR  |   3 A$main$4606        19DC GR
  3 A$main$4612        19DF GR  |   3 A$main$4613        19E1 GR
  3 A$main$4614        19E4 GR  |   3 A$main$4615        19E6 GR
  3 A$main$4616        19E8 GR  |   3 A$main$4617        19EB GR
  3 A$main$4618        19ED GR  |   3 A$main$4624        19F0 GR
  3 A$main$4625        19F2 GR  |   3 A$main$4626        19F5 GR
  3 A$main$4627        19F7 GR  |   3 A$main$4628        19F9 GR
  3 A$main$4629        19FC GR  |   3 A$main$4635        19FF GR
  3 A$main$4636        1A02 GR  |   3 A$main$4637        1A05 GR
  3 A$main$4638        1A07 GR  |   3 A$main$4639        1A09 GR
  3 A$main$4640        1A0C GR  |   3 A$main$4641        1A0E GR
  3 A$main$4647        1A11 GR  |   3 A$main$4648        1A14 GR
  3 A$main$4649        1A16 GR  |   3 A$main$4650        1A18 GR
  3 A$main$4651        1A1A GR  |   3 A$main$4652        1A1D GR
  3 A$main$4653        1A1F GR  |   3 A$main$4659        1A22 GR
  3 A$main$4660        1A25 GR  |   3 A$main$4661        1A27 GR
  3 A$main$4662        1A2A GR  |   3 A$main$4663        1A2C GR
  3 A$main$4664        1A2E GR  |   3 A$main$4665        1A30 GR
  3 A$main$4666        1A33 GR  |   3 A$main$4677        1A35 GR
  3 A$main$4682        1A38 GR  |   3 A$main$4683        1A3B GR
  3 A$main$4688        1A3E GR  |   3 A$main$4689        1A3F GR
  3 A$main$4695        1A43 GR  |   3 A$main$4696        1A46 GR
  3 A$main$4701        1A4A GR  |   3 A$main$4702        1A4D GR
  3 A$main$4703        1A4F GR  |   3 A$main$4708        1A53 GR
  3 A$main$4709        1A56 GR  |   3 A$main$4710        1A58 GR
  3 A$main$4711        1A5B GR  |   3 A$main$4717        1A5F GR
  3 A$main$4718        1A62 GR  |   3 A$main$4723        1A65 GR
  3 A$main$4724        1A68 GR  |   3 A$main$4725        1A69 GR
  3 A$main$4726        1A6B GR  |   3 A$main$4727        1A6C GR
  3 A$main$4728        1A6D GR  |   3 A$main$4729        1A70 GR
  3 A$main$4730        1A72 GR  |   3 A$main$4731        1A74 GR
  3 A$main$4732        1A77 GR  |   3 A$main$4737        1A79 GR
  3 A$main$4738        1A7C GR  |   3 A$main$4739        1A7E GR
  3 A$main$4740        1A80 GR  |   3 A$main$4746        1A83 GR
  3 A$main$4747        1A85 GR  |   3 A$main$4752        1A88 GR
  3 A$main$4753        1A8B GR  |   3 A$main$4754        1A8D GR
  3 A$main$4755        1A91 GR  |   3 A$main$4756        1A93 GR
  3 A$main$4757        1A96 GR  |   3 A$main$4758        1A98 GR
  3 A$main$4763        1A9C GR  |   3 A$main$4769        1A9F GR
  3 A$main$4770        1AA1 GR  |   3 A$main$4771        1AA4 GR
  3 A$main$4772        1AA6 GR  |   3 A$main$4773        1AAA GR
  3 A$main$4774        1AAC GR  |   3 A$main$4775        1AAE GR
  3 A$main$4781        1AB1 GR  |   3 A$main$4782        1AB3 GR
  3 A$main$4783        1AB6 GR  |   3 A$main$4788        1AB9 GR
  3 A$main$4793        1ABC GR  |   3 A$main$4794        1ABD GR
  3 A$main$4795        1ABF GR  |   3 A$main$4796        1AC0 GR
  3 A$main$4797        1AC1 GR  |   3 A$main$4798        1AC3 GR
  3 A$main$4799        1AC7 GR  |   3 A$main$4800        1AC9 GR
  3 A$main$4801        1ACC GR  |   3 A$main$4806        1ACF GR
  3 A$main$4807        1AD2 GR  |   3 A$main$4812        1AD5 GR
  3 A$main$4813        1AD7 GR  |   3 A$main$4814        1ADA GR
  3 A$main$4815        1ADC GR  |   3 A$main$4816        1ADF GR
  3 A$main$4828        1AE3 GR  |   3 A$main$4829        1AE5 GR
  3 A$main$4834        1AE8 GR  |   3 A$main$4835        1AEB GR
  3 A$main$4836        1AEE GR  |   3 A$main$4842        1AF1 GR
  3 A$main$4843        1AF4 GR  |   3 A$main$4844        1AF7 GR
  3 A$main$4845        1AF9 GR  |   3 A$main$4846        1AFB GR
  3 A$main$4847        1AFD GR  |   3 A$main$4848        1B00 GR
  3 A$main$4849        1B02 GR  |   3 A$main$4855        1B05 GR
  3 A$main$4856        1B07 GR  |   3 A$main$4857        1B0A GR
  3 A$main$4858        1B0C GR  |   3 A$main$4859        1B0E GR
  3 A$main$4860        1B11 GR  |   3 A$main$4861        1B13 GR
  3 A$main$4867        1B16 GR  |   3 A$main$4868        1B18 GR
  3 A$main$4869        1B1B GR  |   3 A$main$4870        1B1D GR
  3 A$main$4871        1B1F GR  |   3 A$main$4872        1B22 GR
  3 A$main$4873        1B24 GR  |   3 A$main$4879        1B27 GR
  3 A$main$4880        1B29 GR  |   3 A$main$4881        1B2C GR
  3 A$main$4882        1B2E GR  |   3 A$main$4883        1B30 GR
  3 A$main$4884        1B33 GR  |   3 A$main$4890        1B36 GR
  3 A$main$4891        1B39 GR  |   3 A$main$4892        1B3C GR
  3 A$main$4893        1B3E GR  |   3 A$main$4894        1B40 GR
  3 A$main$4895        1B43 GR  |   3 A$main$4896        1B45 GR
  3 A$main$4902        1B48 GR  |   3 A$main$4903        1B4B GR
  3 A$main$4904        1B4D GR  |   3 A$main$4905        1B4F GR
  3 A$main$4906        1B51 GR  |   3 A$main$4907        1B54 GR
  3 A$main$4908        1B56 GR  |   3 A$main$4914        1B59 GR
  3 A$main$4915        1B5C GR  |   3 A$main$4916        1B5E GR
  3 A$main$4917        1B61 GR  |   3 A$main$4918        1B63 GR
  3 A$main$4919        1B65 GR  |   3 A$main$4920        1B67 GR
  3 A$main$4921        1B6A GR  |   3 A$main$4932        1B6C GR
  3 A$main$4937        1B6F GR  |   3 A$main$4938        1B72 GR
  3 A$main$4943        1B75 GR  |   3 A$main$4944        1B76 GR
  3 A$main$4950        1B7A GR  |   3 A$main$4951        1B7D GR
  3 A$main$4956        1B81 GR  |   3 A$main$4957        1B84 GR
  3 A$main$4958        1B86 GR  |   3 A$main$4963        1B8A GR
  3 A$main$4968        1B8D GR  |   3 A$main$4969        1B90 GR
  3 A$main$4974        1B93 GR  |   3 A$main$4975        1B96 GR
  3 A$main$4980        1B9A GR  |   3 A$main$4981        1B9D GR
  3 A$main$4982        1B9E GR  |   3 A$main$4983        1BA1 GR
  3 A$main$4984        1BA4 GR  |   3 A$main$4985        1BA5 GR
  3 A$main$4990        1BA8 GR  |   3 A$main$4991        1BAB GR
  3 A$main$4996        1BAE GR  |   3 A$main$4997        1BB1 GR
  3 A$main$4998        1BB4 GR  |   3 A$main$5003        1BB7 GR
  3 A$main$5004        1BBA GR  |   3 A$main$5009        1BBD GR
  3 A$main$5010        1BC0 GR  |   3 A$main$5011        1BC1 GR
  3 A$main$5012        1BC3 GR  |   3 A$main$5013        1BC6 GR
  3 A$main$5014        1BC8 GR  |   3 A$main$5015        1BCA GR
  3 A$main$5020        1BCD GR  |   3 A$main$5021        1BD1 GR
  3 A$main$5026        1BD3 GR  |   3 A$main$5027        1BD5 GR
  3 A$main$5032        1BD8 GR  |   3 A$main$5033        1BDA GR
  3 A$main$5035        1BDD GR  |   3 A$main$5036        1BDF GR
  3 A$main$5037        1BE2 GR  |   3 A$main$5043        1BE5 GR
  3 A$main$5044        1BE7 GR  |   3 A$main$5045        1BEA GR
  3 A$main$5046        1BEB GR  |   3 A$main$5047        1BED GR
  3 A$main$5048        1BF0 GR  |   3 A$main$5049        1BF3 GR
  3 A$main$5058        1BF7 GR  |   3 A$main$5059        1BFA GR
  3 A$main$5060        1BFB GR  |   3 A$main$5061        1BFD GR
  3 A$main$5062        1C00 GR  |   3 A$main$5063        1C01 GR
  3 A$main$5064        1C03 GR  |   3 A$main$5065        1C05 GR
  3 A$main$5066        1C08 GR  |   3 A$main$5067        1C0A GR
  3 A$main$5068        1C0C GR  |   3 A$main$5069        1C0E GR
  3 A$main$5070        1C10 GR  |   3 A$main$5071        1C13 GR
  3 A$main$5072        1C16 GR  |   3 A$main$5073        1C19 GR
  3 A$main$5074        1C1B GR  |   3 A$main$5075        1C1E GR
  3 A$main$5076        1C21 GR  |   3 A$main$5077        1C23 GR
  3 A$main$5078        1C26 GR  |   3 A$main$5079        1C28 GR
  3 A$main$5080        1C2B GR  |   3 A$main$5081        1C2E GR
  3 A$main$5082        1C30 GR  |   3 A$main$5083        1C33 GR
  3 A$main$5084        1C35 GR  |   3 A$main$5085        1C38 GR
  3 A$main$5086        1C3A GR  |   3 A$main$5087        1C3C GR
  3 A$main$5088        1C3F GR  |   3 A$main$5089        1C42 GR
  3 A$main$5090        1C44 GR  |   3 A$main$5091        1C46 GR
  3 A$main$5092        1C48 GR  |   3 A$main$5093        1C4B GR
  3 A$main$5094        1C4E GR  |   3 A$main$5095        1C51 GR
  3 A$main$5096        1C54 GR  |   3 A$main$5101        1C57 GR
  3 A$main$5102        1C5A GR  |   3 A$main$5103        1C5D GR
  3 A$main$5104        1C60 GR  |   3 A$main$5105        1C63 GR
  3 A$main$5106        1C66 GR  |   3 A$main$5107        1C69 GR
  3 A$main$5112        1C6C GR  |   3 A$main$5113        1C6E GR
  3 A$main$5114        1C71 GR  |   3 A$main$5115        1C73 GR
  3 A$main$5116        1C76 GR  |   3 A$main$5121        1C79 GR
  3 A$main$5122        1C7C GR  |   3 A$main$5127        1C7F GR
  3 A$main$5128        1C81 GR  |   3 A$main$5129        1C84 GR
  3 A$main$5130        1C86 GR  |   3 A$main$5131        1C88 GR
  3 A$main$5136        1C8C GR  |   3 A$main$5137        1C8E GR
  3 A$main$5142        1C91 GR  |   3 A$main$5143        1C94 GR
  3 A$main$5149        1C97 GR  |   3 A$main$5150        1C9A GR
  3 A$main$5155        1C9D GR  |   3 A$main$5156        1C9F GR
  3 A$main$5161        1CA2 GR  |   3 A$main$5162        1CA5 GR
  3 A$main$5163        1CA7 GR  |   3 A$main$5164        1CA9 GR
  3 A$main$5165        1CAB GR  |   3 A$main$5166        1CAE GR
  3 A$main$5167        1CB0 GR  |   3 A$main$5172        1CB2 GR
  3 A$main$5178        1CB5 GR  |   3 A$main$5183        1CB8 GR
  3 A$main$5184        1CBB GR  |   3 A$main$5189        1CBE GR
  3 A$main$5190        1CC0 GR  |   3 A$main$5195        1CC3 GR
  3 A$main$5196        1CC5 GR  |   3 A$main$5197        1CC8 GR
  3 A$main$5203        1CCA GR  |   3 A$main$5204        1CCC GR
  3 A$main$5210        1CCF GR  |   3 A$main$5211        1CD1 GR
  3 A$main$5217        1CD4 GR  |   3 A$main$5218        1CD6 GR
  3 A$main$5223        1CD9 GR  |   3 A$main$5224        1CDC GR
  3 A$main$5229        1CDF GR  |   3 A$main$5230        1CE2 GR
  3 A$main$5235        1CE5 GR  |   3 A$main$5236        1CE8 GR
  3 A$main$5237        1CEA GR  |   3 A$main$5238        1CED GR
  3 A$main$5239        1CEF GR  |   3 A$main$5240        1CF1 GR
  3 A$main$5241        1CF4 GR  |   3 A$main$5242        1CF5 GR
  3 A$main$5243        1CF7 GR  |   3 A$main$5244        1CFA GR
  3 A$main$5250        1CFD GR  |   3 A$main$5251        1CFF GR
  3 A$main$5252        1D02 GR  |   3 A$main$5253        1D04 GR
  3 A$main$5258        1D06 GR  |   3 A$main$5263        1D09 GR
  3 A$main$5264        1D0C GR  |   3 A$main$5269        1D0F GR
  3 A$main$5270        1D11 GR  |   3 A$main$5275        1D14 GR
  3 A$main$5276        1D16 GR  |   3 A$main$5282        1D19 GR
  3 A$main$5283        1D1B GR  |   3 A$main$5288        1D1E GR
  3 A$main$5289        1D20 GR  |   3 A$main$5295        1D23 GR
  3 A$main$5300        1D26 GR  |   3 A$main$5301        1D29 GR
  3 A$main$5306        1D2C GR  |   3 A$main$5307        1D2F GR
  3 A$main$5312        1D33 GR  |   3 A$main$5313        1D35 GR
  3 A$main$5314        1D38 GR  |   3 A$main$5315        1D3B GR
  3 A$main$5316        1D3C GR  |   3 A$main$5317        1D3F GR
  3 A$main$5322        1D42 GR  |   3 A$main$5323        1D45 GR
  3 A$main$5328        1D48 GR  |   3 A$main$5329        1D4B GR
  3 A$main$5330        1D4D GR  |   3 A$main$5331        1D50 GR
  3 A$main$5336        1D53 GR  |   3 A$main$5337        1D56 GR
  3 A$main$5342        1D59 GR  |   3 A$main$5343        1D5C GR
  3 A$main$5344        1D5F GR  |   3 A$main$5349        1D62 GR
  3 A$main$5350        1D64 GR  |   3 A$main$5351        1D68 GR
  3 A$main$5357        1D6C GR  |   3 A$main$5358        1D6E GR
  3 A$main$5359        1D71 GR  |   3 A$main$5360        1D72 GR
  3 A$main$5365        1D76 GR  |   3 A$main$5366        1D78 GR
  3 A$main$5367        1D7B GR  |   3 A$main$5368        1D7C GR
  3 A$main$5369        1D7E GR  |   3 A$main$5370        1D81 GR
  3 A$main$5371        1D84 GR  |   3 A$main$5380        1D88 GR
  3 A$main$5381        1D8B GR  |   3 A$main$5382        1D8C GR
  3 A$main$5383        1D8E GR  |   3 A$main$5384        1D90 GR
  3 A$main$5385        1D93 GR  |   3 A$main$5386        1D95 GR
  3 A$main$5387        1D98 GR  |   3 A$main$5388        1D9A GR
  3 A$main$5389        1D9D GR  |   3 A$main$5390        1D9F GR
  3 A$main$5391        1DA1 GR  |   3 A$main$5392        1DA4 GR
  3 A$main$5393        1DA7 GR  |   3 A$main$5394        1DAA GR
  3 A$main$5395        1DAC GR  |   3 A$main$5396        1DAF GR
  3 A$main$5397        1DB2 GR  |   3 A$main$5398        1DB4 GR
  3 A$main$5399        1DB7 GR  |   3 A$main$5400        1DB9 GR
  3 A$main$5401        1DBC GR  |   3 A$main$5402        1DBF GR
  3 A$main$5403        1DC1 GR  |   3 A$main$5404        1DC4 GR
  3 A$main$5405        1DC6 GR  |   3 A$main$5406        1DC9 GR
  3 A$main$5407        1DCB GR  |   3 A$main$5408        1DCD GR
  3 A$main$5409        1DD0 GR  |   3 A$main$5410        1DD3 GR
  3 A$main$5411        1DD5 GR  |   3 A$main$5412        1DD7 GR
  3 A$main$5413        1DD9 GR  |   3 A$main$5414        1DDC GR
  3 A$main$5415        1DDF GR  |   3 A$main$5416        1DE2 GR
  3 A$main$5417        1DE5 GR  |   3 A$main$5422        1DE8 GR
  3 A$main$5423        1DEB GR  |   3 A$main$5424        1DEE GR
  3 A$main$5425        1DF1 GR  |   3 A$main$5426        1DF4 GR
  3 A$main$5427        1DF7 GR  |   3 A$main$5428        1DFA GR
  3 A$main$5433        1DFD GR  |   3 A$main$5434        1DFF GR
  3 A$main$5435        1E02 GR  |   3 A$main$5436        1E04 GR
  3 A$main$5437        1E07 GR  |   3 A$main$5442        1E0A GR
  3 A$main$5443        1E0D GR  |   3 A$main$5448        1E10 GR
  3 A$main$5449        1E12 GR  |   3 A$main$5454        1E15 GR
  3 A$main$5455        1E17 GR  |   3 A$main$5456        1E1A GR
  3 A$main$5457        1E1C GR  |   3 A$main$5458        1E1E GR
  3 A$main$5463        1E22 GR  |   3 A$main$5464        1E24 GR
  3 A$main$5465        1E27 GR  |   3 A$main$5467        1E2A GR
  3 A$main$5468        1E2C GR  |   3 A$main$5469        1E2F GR
  3 A$main$5470        1E30 GR  |   3 A$main$5471        1E34 GR
  3 A$main$5472        1E37 GR  |   3 A$main$5473        1E3A GR
  3 A$main$5479        1E3D GR  |   3 A$main$5480        1E40 GR
  3 A$main$5485        1E43 GR  |   3 A$main$5486        1E45 GR
  3 A$main$5491        1E48 GR  |   3 A$main$5496        1E4B GR
  3 A$main$5497        1E4E GR  |   3 A$main$5498        1E4F GR
  3 A$main$5499        1E50 GR  |   3 A$main$5500        1E53 GR
  3 A$main$5501        1E56 GR  |   3 A$main$5502        1E57 GR
  3 A$main$5507        1E5A GR  |   3 A$main$5508        1E5D GR
  3 A$main$5513        1E60 GR  |   3 A$main$5514        1E63 GR
  3 A$main$5519        1E66 GR  |   3 A$main$5520        1E69 GR
  3 A$main$5521        1E6A GR  |   3 A$main$5522        1E6C GR
  3 A$main$5523        1E6F GR  |   3 A$main$5524        1E71 GR
  3 A$main$5525        1E73 GR  |   3 A$main$5530        1E76 GR
  3 A$main$5531        1E7A GR  |   3 A$main$5536        1E7C GR
  3 A$main$5537        1E7E GR  |   3 A$main$5542        1E81 GR
  3 A$main$5543        1E83 GR  |   3 A$main$5549        1E86 GR
  3 A$main$5550        1E88 GR  |   3 A$main$5556        1E8B GR
  3 A$main$5557        1E8E GR  |   3 A$main$5562        1E91 GR
  3 A$main$5563        1E93 GR  |   3 A$main$5568        1E96 GR
  3 A$main$5569        1E98 GR  |   3 A$main$5575        1E9B GR
  3 A$main$5576        1E9D GR  |   3 A$main$5581        1EA0 GR
  3 A$main$5582        1EA2 GR  |   3 A$main$5588        1EA5 GR
  3 A$main$5589        1EA7 GR  |   3 A$main$5594        1EAA GR
  3 A$main$5595        1EAC GR  |   3 A$main$5739        2495 GR
  3 A$main$5740        2497 GR  |   3 A$main$5745        249A GR
  3 A$main$5750        249D GR  |   3 A$main$5751        24A1 GR
  3 A$main$5752        24A4 GR  |   3 A$main$5753        24A6 GR
  3 A$main$5758        24A8 GR  |   3 A$main$5759        24AC GR
  3 A$main$5760        24AE GR  |   3 A$main$5761        24B0 GR
  3 A$main$5772        24B2 GR  |   3 A$main$5774        24B3 GR
  3 A$main$5775        24B6 GR  |   3 A$main$5777        24B8 GR
  3 A$main$5778        24B9 GR  |   3 A$main$5779        24BB GR
  3 A$main$5780        24BC GR  |   3 A$main$5781        24BD GR
  3 A$main$5782        24BF GR  |   3 A$main$5804        24D7 GR
  3 A$main$5805        24DA GR  |   3 A$main$5810        24DD GR
  3 A$main$5811        24E0 GR  |   3 A$main$5812        24E2 GR
  3 A$main$5818        24E6 GR  |   3 A$main$5819        24E8 GR
  3 A$main$5824        24EB GR  |   3 A$main$5829        24EE GR
  3 A$main$5830        24F1 GR  |   3 A$main$5831        24F3 GR
  3 A$main$5832        24F7 GR  |   3 A$main$5833        24F9 GR
  3 A$main$5834        24FB GR  |   3 A$main$5840        24FF GR
  3 A$main$5841        2502 GR  |   3 A$main$5852        2505 GR
  3 A$main$5853        2507 GR  |   3 A$main$5858        250A GR
  3 A$main$5859        250D GR  |   3 A$main$5860        2510 GR
  3 A$main$5866        2513 GR  |   3 A$main$5867        2516 GR
  3 A$main$5868        2519 GR  |   3 A$main$5869        251B GR
  3 A$main$5870        251D GR  |   3 A$main$5871        251F GR
  3 A$main$5872        2522 GR  |   3 A$main$5873        2524 GR
  3 A$main$5879        2527 GR  |   3 A$main$5880        2529 GR
  3 A$main$5881        252C GR  |   3 A$main$5882        252E GR
  3 A$main$5883        2530 GR  |   3 A$main$5884        2533 GR
  3 A$main$5885        2535 GR  |   3 A$main$5891        2538 GR
  3 A$main$5892        253A GR  |   3 A$main$5893        253D GR
  3 A$main$5894        253F GR  |   3 A$main$5895        2541 GR
  3 A$main$5896        2544 GR  |   3 A$main$5897        2546 GR
  3 A$main$5903        2549 GR  |   3 A$main$5904        254B GR
  3 A$main$5905        254E GR  |   3 A$main$5906        2550 GR
  3 A$main$5907        2552 GR  |   3 A$main$5908        2555 GR
  3 A$main$5914        2558 GR  |   3 A$main$5915        255B GR
  3 A$main$5916        255E GR  |   3 A$main$5917        2560 GR
  3 A$main$5918        2562 GR  |   3 A$main$5919        2565 GR
  3 A$main$5920        2567 GR  |   3 A$main$5926        256A GR
  3 A$main$5927        256D GR  |   3 A$main$5928        256F GR
  3 A$main$5929        2571 GR  |   3 A$main$5930        2573 GR
  3 A$main$5931        2576 GR  |   3 A$main$5932        2578 GR
  3 A$main$5938        257B GR  |   3 A$main$5939        257E GR
  3 A$main$5940        2580 GR  |   3 A$main$5941        2583 GR
  3 A$main$5942        2585 GR  |   3 A$main$5943        2587 GR
  3 A$main$5944        2589 GR  |   3 A$main$5945        258C GR
  3 A$main$5956        258E GR  |   3 A$main$5961        2591 GR
  3 A$main$5962        2594 GR  |   3 A$main$5967        2597 GR
  3 A$main$5968        2598 GR  |   3 A$main$5974        259C GR
  3 A$main$5975        259F GR  |   3 A$main$5980        25A1 GR
  3 A$main$5982        25A4 GR  |   3 A$main$5987        25A7 GR
  3 A$main$5988        25A9 GR  |   3 A$main$5989        25AD GR
  3 A$main$5990        25AF GR  |   3 A$main$5996        25B3 GR
  3 A$main$5997        25B6 GR  |   3 A$main$6002        25B9 GR
  3 A$main$6003        25BB GR  |   3 A$main$6004        25BE GR
  3 A$main$6006        25C0 GR  |   3 A$main$6007        25C2 GR
  3 A$main$6008        25C5 GR  |   3 A$main$6010        25C7 GR
  3 A$main$6011        25C9 GR  |   3 A$main$6012        25CB GR
  3 A$main$6017        25CF GR  |   3 A$main$6018        25D2 GR
  3 A$main$6019        25D5 GR  |   3 A$main$6021        25D8 GR
  3 A$main$6022        25DB GR  |   3 A$main$6023        25DD GR
  3 A$main$6024        25E1 GR  |   3 A$main$6025        25E4 GR
  3 A$main$6026        25E7 GR  |   3 A$main$6032        25EA GR
  3 A$main$6033        25ED GR  |   3 A$main$6038        25F0 GR
  3 A$main$6039        25F3 GR  |   3 A$main$6044        25F6 GR
  3 A$main$6045        25F8 GR  |   3 A$main$6046        25FB GR
  3 A$main$6051        25FE GR  |   3 A$main$6052        2600 GR
  3 A$main$6057        2604 GR  |   3 A$main$6058        2607 GR
  3 A$main$6063        260A GR  |   3 A$main$6064        260C GR
  3 A$main$6070        260F GR  |   3 A$main$6071        2612 GR
  3 A$main$6076        2615 GR  |   3 A$main$6077        2617 GR
  3 A$main$6078        261A GR  |   3 A$main$6083        261D GR
  3 A$main$6084        261E GR  |   3 A$main$6085        261F GR
  3 A$main$6086        2620 GR  |   3 A$main$6087        2622 GR
  3 A$main$6088        2626 GR  |   3 A$main$6089        2628 GR
  3 A$main$6090        262B GR  |   3 A$main$6095        262E GR
  3 A$main$6096        2631 GR  |   3 A$main$6101        2634 GR
  3 A$main$6102        2637 GR  |   3 A$main$6107        263A GR
  3 A$main$6108        263B GR  |   3 A$main$6109        263E GR
  3 A$main$6114        2641 GR  |   3 A$main$6115        2643 GR
  3 A$main$6116        2645 GR  |   3 A$main$6121        2649 GR
  3 A$main$6122        264B GR  |   3 A$main$6128        264E GR
  3 A$main$6129        2651 GR  |   3 A$main$6134        2654 GR
  3 A$main$6135        2657 GR  |   3 A$main$6140        265A GR
  3 A$main$6141        265B GR  |   3 A$main$6142        265E GR
  3 A$main$6147        2661 GR  |   3 A$main$6148        2663 GR
  3 A$main$6158        2667 GR  |   3 A$main$6159        2669 GR
  3 A$main$6160        266C GR  |   3 A$main$6161        266E GR
  3 A$main$6171        2672 GR  |   3 A$main$6172        2675 GR
  3 A$main$6177        2678 GR  |   3 A$main$6178        267A GR
  3 A$main$6183        267D GR  |   3 A$main$6190        2680 GR
  3 A$main$6200        2683 GR  |   3 A$main$6201        2685 GR
  3 A$main$6202        2688 GR  |   3 A$main$6207        268B GR
  3 A$main$6208        268D GR  |   3 A$main$6209        2691 GR
  3 A$main$6210        2693 GR  |   3 A$main$6211        2697 GR
  3 A$main$6212        2699 GR  |   3 A$main$6213        269D GR
  3 A$main$6214        269F GR  |   3 A$main$6215        26A3 GR
  3 A$main$6216        26A5 GR  |   3 A$main$6217        26A9 GR
  3 A$main$6218        26AB GR  |   3 A$main$6219        26AF GR
  3 A$main$6220        26B1 GR  |   3 A$main$6221        26B5 GR
  3 A$main$6222        26B8 GR  |   3 A$main$6223        26BA GR
  3 A$main$6229        26BD GR  |   3 A$main$6230        26C0 GR
  3 A$main$6231        26C2 GR  |   3 A$main$6237        26C6 GR
  3 A$main$6238        26C9 GR  |   3 A$main$6243        26CC GR
  3 A$main$6248        26CF GR  |   3 A$main$6253        26D2 GR
  3 A$main$6254        26D4 GR  |   3 A$main$6259        26D7 GR
  3 A$main$6260        26D9 GR  |   3 A$main$6266        26DC GR
  3 A$main$6267        26DF GR  |   3 A$main$6272        26E2 GR
  3 A$main$6273        26E5 GR  |   3 A$main$6278        26E8 GR
  3 A$main$6279        26EA GR  |   3 A$main$6284        26ED GR
  3 A$main$6285        26EF GR  |   3 A$main$6286        26F2 GR
  3 A$main$6291        26F5 GR  |   3 A$main$6296        26F8 GR
  3 A$main$6297        26FA GR  |   3 A$main$6302        26FE GR
  3 A$main$6303        2701 GR  |   3 A$main$6308        2704 GR
  3 A$main$6309        2706 GR  |   3 A$main$6315        2709 GR
  3 A$main$6316        270B GR  |   3 A$main$6321        270E GR
  3 A$main$6322        2711 GR  |   3 A$main$6327        2714 GR
  3 A$main$6328        2716 GR  |   3 A$main$6333        2719 GR
  3 A$main$6338        271C GR  |   3 A$main$6339        271F GR
  3 A$main$6344        2722 GR  |   3 A$main$6345        2725 GR
  3 A$main$6350        2728 GR  |   3 A$main$6351        272B GR
  3 A$main$6356        272E GR  |   3 A$main$6357        2730 GR
  3 A$main$6358        2733 GR  |   3 A$main$6363        2736 GR
  3 A$main$6368        2739 GR  |   3 A$main$6369        273B GR
  3 A$main$6374        273F GR  |   3 A$main$6375        2741 GR
  3 A$main$6380        2745 GR  |   3 A$main$6381        2747 GR
  3 A$main$6386        274B GR  |   3 A$main$6387        274D GR
  3 A$main$6392        2751 GR  |   3 A$main$6403        2754 GR
  3 A$main$6404        2757 GR  |   3 A$main$6414        275A GR
  3 A$main$6415        275C GR  |   3 A$main$6420        275F GR
  3 A$main$6421        2761 GR  |   3 A$main$6423        2764 GR
  3 A$main$6424        2767 GR  |   3 A$main$6425        276A GR
  3 A$main$6426        276D GR  |   3 A$main$6431        276F GR
  3 A$main$6432        2772 GR  |   3 A$main$6433        2775 GR
  3 A$main$6434        2777 GR  |   3 A$main$6435        2779 GR
  3 A$main$6441        277C GR  |   3 A$main$6442        277F GR
  3 A$main$6443        2782 GR  |   3 A$main$6444        2784 GR
  3 A$main$6445        2786 GR  |   3 A$main$6446        2789 GR
  3 A$main$6447        278B GR  |   3 A$main$6453        278E GR
  3 A$main$6454        2791 GR  |   3 A$main$6455        2792 GR
  3 A$main$6456        2793 GR  |   3 A$main$6457        2794 GR
  3 A$main$6458        2797 GR  |   3 A$main$6459        279A GR
  3 A$main$6460        279C GR  |   3 A$main$6462        279D GR
  3 A$main$6465        279F GR  |   3 A$main$6466        27A2 GR
  3 A$main$6467        27A5 GR  |   3 A$main$6468        27A8 GR
  3 A$main$6473        27AB GR  |   3 A$main$6474        27AD GR
  3 A$main$6475        27AF GR  |   3 A$main$6476        27B1 GR
  3 A$main$6482        27B4 GR  |   3 A$main$6483        27B6 GR
  3 A$main$6484        27B7 GR  |   3 A$main$6485        27B9 GR
  3 A$main$6486        27BC GR  |   3 A$main$6487        27BE GR
  3 A$main$6488        27BF GR  |   3 A$main$6489        27C1 GR
  3 A$main$6490        27C3 GR  |   3 A$main$6491        27C5 GR
  3 A$main$6492        27C7 GR  |   3 A$main$6493        27CA GR
  3 A$main$6494        27CC GR  |   3 A$main$6495        27CF GR
  3 A$main$6500        27D2 GR  |   3 A$main$6501        27D4 GR
  3 A$main$6502        27D6 GR  |   3 A$main$6503        27D9 GR
  3 A$main$6504        27DB GR  |   3 A$main$6510        27DE GR
  3 A$main$6511        27E1 GR  |   3 A$main$6512        27E3 GR
  3 A$main$6513        27E5 GR  |   3 A$main$6519        27E8 GR
  3 A$main$6520        27EB GR  |   3 A$main$6521        27ED GR
  3 A$main$6527        27F1 GR  |   3 A$main$6528        27F3 GR
  3 A$main$6533        27F6 GR  |   3 A$main$6534        27F8 GR
  3 A$main$6539        27FB GR  |   3 A$main$6541        27FD GR
  3 A$main$6543        2800 GR  |   3 A$main$6544        2803 GR
  3 A$main$6545        2805 GR  |   3 A$main$6546        2806 GR
  3 A$main$6547        2809 GR  |   3 A$main$6548        280B GR
  3 A$main$6549        280D GR  |   3 A$main$6554        280F GR
  3 A$main$6559        2812 GR  |   3 A$main$6560        2814 GR
  3 A$main$6566        2817 GR  |   3 A$main$6567        281A GR
  3 A$main$6568        281C GR  |   3 A$main$6573        2820 GR
  3 A$main$6574        2823 GR  |   3 A$main$6579        2826 GR
  3 A$main$6584        2829 GR  |   3 A$main$6585        282C GR
  3 A$main$6590        2830 GR  |   3 A$main$6591        2833 GR
  3 A$main$6596        2836 GR  |   3 A$main$6597        2838 GR
  3 A$main$6603        283B GR  |   3 A$main$6604        283E GR
  3 A$main$6605        2840 GR  |   3 A$main$6610        2844 GR
  3 A$main$6611        2847 GR  |   3 A$main$6616        284A GR
  3 A$main$6617        284C GR  |   3 A$main$6622        284F GR
  3 A$main$6623        2851 GR  |   3 A$main$6628        2854 GR
  3 A$main$6629        2856 GR  |   3 A$main$6634        2859 GR
  3 A$main$6639        285C GR  |   3 A$main$6640        285F GR
  3 A$main$6641        2860 GR  |   3 A$main$6642        2863 GR
  3 A$main$6643        2866 GR  |   3 A$main$6644        2867 GR
  3 A$main$6649        286A GR  |   3 A$main$6650        286D GR
  3 A$main$6655        2870 GR  |   3 A$main$6656        2873 GR
  3 A$main$6661        2876 GR  |   3 A$main$6662        2879 GR
  3 A$main$6663        287A GR  |   3 A$main$6664        287C GR
  3 A$main$6665        287F GR  |   3 A$main$6666        2881 GR
  3 A$main$6667        2883 GR  |   3 A$main$6672        2886 GR
  3 A$main$6673        288A GR  |   3 A$main$6678        288E GR
  3 A$main$6683        2891 GR  |   3 A$main$6684        2893 GR
  3 A$main$6689        2896 GR  |   3 A$main$6690        2898 GR
  3 A$main$6692        289B GR  |   3 A$main$6693        289E GR
  3 A$main$6694        28A0 GR  |   3 A$main$6699        28A4 GR
  3 A$main$6704        28A7 GR  |   3 A$main$6705        28AA GR
  3 A$main$6710        28AD GR  |   3 A$main$6711        28AF GR
  3 A$main$6716        28B2 GR  |   3 A$main$6717        28B4 GR
  3 A$main$6722        28B7 GR  |   3 A$main$6723        28BA GR
  3 A$main$6728        28BE GR  |   3 A$main$6729        28C1 GR
  3 A$main$6731        28C4 GR  |   3 A$main$6732        28C6 GR
  3 A$main$6733        28C8 GR  |   3 A$main$6738        28CC GR
  3 A$main$6743        28CF GR  |   3 A$main$6744        28D2 GR
  3 A$main$6749        28D5 GR  |   3 A$main$6750        28D7 GR
  3 A$main$6755        28DA GR  |   3 A$main$6756        28DC GR
  3 A$main$6761        28DF GR  |   3 A$main$6762        28E1 GR
  3 A$main$6764        28E4 GR  |   3 A$main$6765        28E6 GR
  3 A$main$6766        28E9 GR  |   3 A$main$6772        28EC GR
  3 A$main$6773        28EF GR  |   3 A$main$6774        28F2 GR
  3 A$main$6780        28F5 GR  |   3 A$main$6781        28F6 GR
  3 A$main$6787        28F9 GR  |   3 A$main$6788        28FC GR
  3 A$main$6793        28FF GR  |   3 A$main$6794        2901 GR
  3 A$main$6795        2904 GR  |   3 A$main$6796        2906 GR
  3 A$main$6806        290A GR  |   3 A$main$6807        290D GR
  3 A$main$6812        2910 GR  |   3 A$main$6813        2912 GR
  3 A$main$6815        2915 GR  |   3 A$main$6816        2917 GR
  3 A$main$6824        291A GR  |   3 A$main$6825        291C GR
  3 A$main$6831        291F GR  |   3 A$main$6832        2921 GR
  3 A$main$6837        2924 GR  |   3 A$main$6847        2927 GR
  3 A$main$6852        292A GR  |   3 A$main$6853        292D GR
  3 A$main$6858        2930 GR  |   3 A$main$6859        2933 GR
  3 A$main$6864        2936 GR  |   3 A$main$6865        2939 GR
  3 A$main$6870        293C GR  |   3 A$main$6871        293E GR
  3 A$main$6876        2941 GR  |   3 A$main$6877        2942 GR
  3 A$main$6878        2945 GR  |   3 A$main$6883        2948 GR
  3 A$main$6888        294B GR  |   3 A$main$6893        294E GR
  3 A$main$6894        2951 GR  |   3 A$main$6899        2954 GR
  3 A$main$6900        2956 GR  |   3 A$main$6905        295A GR
  3 A$main$6906        295C GR  |   3 A$main$6907        295D GR
  3 A$main$6908        295E GR  |   3 A$main$6909        295F GR
  3 A$main$6910        2961 GR  |   3 A$main$6911        2965 GR
  3 A$main$6916        2968 GR  |   3 A$main$6917        296B GR
  3 A$main$6918        296D GR  |   3 A$main$6919        2970 GR
  3 A$main$6924        2974 GR  |   3 A$main$6925        2976 GR
  3 A$main$6934        2979 GR  |   3 A$main$6939        297C GR
  3 A$main$6940        297F GR  |   3 A$main$6945        2982 GR
  3 A$main$6946        2985 GR  |   3 A$main$6951        2988 GR
  3 A$main$6952        298B GR  |   3 A$main$6957        298E GR
  3 A$main$6958        2990 GR  |   3 A$main$6963        2993 GR
  3 A$main$6964        2994 GR  |   3 A$main$6965        2997 GR
  3 A$main$6970        299A GR  |   3 A$main$6975        299D GR
  3 A$main$6980        29A0 GR  |   3 A$main$6981        29A3 GR
  3 A$main$6986        29A6 GR  |   3 A$main$6987        29A8 GR
  3 A$main$6992        29AC GR  |   3 A$main$6993        29AE GR
  3 A$main$6994        29AF GR  |   3 A$main$6995        29B0 GR
  3 A$main$6996        29B1 GR  |   3 A$main$6997        29B3 GR
  3 A$main$6998        29B7 GR  |   3 A$main$7003        29BA GR
  3 A$main$7004        29BD GR  |   3 A$main$7005        29BF GR
  3 A$main$7006        29C2 GR  |   3 A$main$7011        29C6 GR
  3 A$main$7012        29C8 GR  |   3 A$main$7021        29CB GR
  3 A$main$7026        29CE GR  |   3 A$main$7027        29D1 GR
  3 A$main$7032        29D4 GR  |   3 A$main$7033        29D7 GR
  3 A$main$7038        29DA GR  |   3 A$main$7039        29DD GR
  3 A$main$7044        29E0 GR  |   3 A$main$7045        29E2 GR
  3 A$main$7050        29E5 GR  |   3 A$main$7051        29E6 GR
  3 A$main$7052        29E9 GR  |   3 A$main$7057        29EC GR
  3 A$main$7062        29EF GR  |   3 A$main$7067        29F2 GR
  3 A$main$7068        29F5 GR  |   3 A$main$7073        29F8 GR
  3 A$main$7074        29FA GR  |   3 A$main$7079        29FE GR
  3 A$main$7080        2A00 GR  |   3 A$main$7081        2A01 GR
  3 A$main$7082        2A02 GR  |   3 A$main$7083        2A03 GR
  3 A$main$7084        2A05 GR  |   3 A$main$7085        2A09 GR
  3 A$main$7090        2A0C GR  |   3 A$main$7091        2A0F GR
  3 A$main$7092        2A11 GR  |   3 A$main$7093        2A14 GR
  3 A$main$7098        2A18 GR  |   3 A$main$7099        2A1A GR
  3 A$main$7109        2A1D GR  |   3 A$main$7114        2A20 GR
  3 A$main$7115        2A23 GR  |   3 A$main$7120        2A26 GR
  3 A$main$7121        2A29 GR  |   3 A$main$7126        2A2C GR
  3 A$main$7127        2A2F GR  |   3 A$main$7132        2A32 GR
  3 A$main$7133        2A34 GR  |   3 A$main$7138        2A37 GR
  3 A$main$7139        2A38 GR  |   3 A$main$7140        2A3B GR
  3 A$main$7145        2A3E GR  |   3 A$main$7150        2A41 GR
  3 A$main$7155        2A44 GR  |   3 A$main$7156        2A47 GR
  3 A$main$7161        2A4A GR  |   3 A$main$7162        2A4C GR
  3 A$main$7167        2A50 GR  |   3 A$main$7168        2A52 GR
  3 A$main$7169        2A53 GR  |   3 A$main$7170        2A54 GR
  3 A$main$7171        2A55 GR  |   3 A$main$7172        2A57 GR
  3 A$main$7173        2A5B GR  |   3 A$main$7178        2A5E GR
  3 A$main$7179        2A61 GR  |   3 A$main$7180        2A63 GR
  3 A$main$7181        2A66 GR  |   3 A$main$7186        2A6A GR
  3 A$main$7187        2A6C GR  |   3 A$main$7196        2A6F GR
  3 A$main$7201        2A72 GR  |   3 A$main$7202        2A75 GR
  3 A$main$7207        2A78 GR  |   3 A$main$7208        2A7B GR
  3 A$main$721         0460 GR  |   3 A$main$7213        2A7E GR
  3 A$main$7218        2A81 GR  |   3 A$main$7219        2A83 GR
  3 A$main$722         0462 GR  |   3 A$main$7220        2A86 GR
  3 A$main$7221        2A89 GR  |   3 A$main$7222        2A8C GR
  3 A$main$7223        2A8D GR  |   3 A$main$7224        2A8F GR
  3 A$main$7225        2A91 GR  |   3 A$main$7226        2A94 GR
  3 A$main$7227        2A96 GR  |   3 A$main$7228        2A98 GR
  3 A$main$7229        2A9A GR  |   3 A$main$7230        2A9C GR
  3 A$main$7231        2A9F GR  |   3 A$main$7232        2AA2 GR
  3 A$main$7233        2AA5 GR  |   3 A$main$7234        2AA7 GR
  3 A$main$7235        2AAA GR  |   3 A$main$7236        2AAC GR
  3 A$main$7237        2AB0 GR  |   3 A$main$7238        2AB3 GR
  3 A$main$7239        2AB6 GR  |   3 A$main$7240        2AB8 GR
  3 A$main$7241        2ABB GR  |   3 A$main$7242        2ABE GR
  3 A$main$7243        2AC1 GR  |   3 A$main$7244        2AC4 GR
  3 A$main$7245        2AC5 GR  |   3 A$main$7246        2AC7 GR
  3 A$main$7247        2ACA GR  |   3 A$main$7248        2ACC GR
  3 A$main$7249        2ACE GR  |   3 A$main$7250        2AD1 GR
  3 A$main$7251        2AD3 GR  |   3 A$main$7252        2AD7 GR
  3 A$main$7253        2ADA GR  |   3 A$main$7254        2ADD GR
  3 A$main$7255        2AE0 GR  |   3 A$main$7256        2AE2 GR
  3 A$main$7257        2AE5 GR  |   3 A$main$7258        2AE9 GR
  3 A$main$7259        2AEC GR  |   3 A$main$7264        2AF0 GR
  3 A$main$7265        2AF2 GR  |   3 A$main$7266        2AF5 GR
  3 A$main$7267        2AF8 GR  |   3 A$main$7272        2AFB GR
  3 A$main$7273        2AFE GR  |   3 A$main$7278        2B01 GR
  3 A$main$7279        2B04 GR  |   3 A$main$7280        2B07 GR
  3 A$main$7281        2B0A GR  |   3 A$main$7282        2B0D GR
  3 A$main$7283        2B10 GR  |   3 A$main$7284        2B13 GR
  3 A$main$7289        2B16 GR  |   3 A$main$7290        2B18 GR
  3 A$main$7291        2B1A GR  |   3 A$main$7297        2B1D GR
  3 A$main$7298        2B20 GR  |   3 A$main$7303        2B23 GR
  3 A$main$7304        2B25 GR  |   3 A$main$731         0464 GR
  3 A$main$7310        2B28 GR  |   3 A$main$7311        2B2A GR
  3 A$main$7312        2B2D GR  |   3 A$main$7313        2B2E GR
  3 A$main$7314        2B30 GR  |   3 A$main$7315        2B33 GR
  3 A$main$7316        2B34 GR  |   3 A$main$7318        2B36 GR
  3 A$main$7319        2B39 GR  |   3 A$main$732         0466 GR
  3 A$main$7324        2B3B GR  |   3 A$main$7325        2B3D GR
  3 A$main$7326        2B40 GR  |   3 A$main$7327        2B44 GR
  3 A$main$7328        2B46 GR  |   3 A$main$7329        2B49 GR
  3 A$main$7335        2B4C GR  |   3 A$main$7336        2B4E GR
  3 A$main$7337        2B51 GR  |   3 A$main$7338        2B53 GR
  3 A$main$7343        2B57 GR  |   3 A$main$7344        2B59 GR
  3 A$main$7345        2B5C GR  |   3 A$main$7346        2B5D GR
  3 A$main$7352        2B60 GR  |   3 A$main$7353        2B63 GR
  3 A$main$7358        2B66 GR  |   3 A$main$7359        2B68 GR
  3 A$main$7366        2B6B GR  |   3 A$main$7367        2B6D GR
  3 A$main$7368        2B70 GR  |   3 A$main$737         0469 GR
  3 A$main$7370        2B72 GR  |   3 A$main$7375        2B75 GR
  3 A$main$7376        2B77 GR  |   3 A$main$738         046B GR
  3 A$main$7382        2B7A GR  |   3 A$main$7388        2B7D GR
  3 A$main$7389        2B80 GR  |   3 A$main$739         046F GR
  3 A$main$7394        2B82 GR  |   3 A$main$7395        2B85 GR
  3 A$main$740         0471 GR  |   3 A$main$7400        2B87 GR
  3 A$main$7401        2B89 GR  |   3 A$main$7406        2B8C GR
  3 A$main$7407        2B8E GR  |   3 A$main$741         0473 GR
  3 A$main$7413        2B91 GR  |   3 A$main$7414        2B94 GR
  3 A$main$7415        2B97 GR  |   3 A$main$7421        2B9A GR
  3 A$main$7422        2B9D GR  |   3 A$main$7427        2BA0 GR
  3 A$main$7428        2BA1 GR  |   3 A$main$7429        2BA4 GR
  3 A$main$7434        2BA7 GR  |   3 A$main$7435        2BA9 GR
  3 A$main$7440        2BAD GR  |   3 A$main$7441        2BB0 GR
  3 A$main$7446        2BB3 GR  |   3 A$main$7447        2BB4 GR
  3 A$main$7453        2BB7 GR  |   3 A$main$7454        2BBA GR
  3 A$main$7459        2BBD GR  |   3 A$main$7460        2BBE GR
  3 A$main$7461        2BC1 GR  |   3 A$main$7466        2BC4 GR
  3 A$main$7467        2BC6 GR  |   3 A$main$747         0476 GR
  3 A$main$7472        2BCA GR  |   3 A$main$7477        2BCD GR
  3 A$main$7478        2BD0 GR  |   3 A$main$7479        2BD2 GR
  3 A$main$748         0479 GR  |   3 A$main$7480        2BD5 GR
  3 A$main$7481        2BD7 GR  |   3 A$main$7482        2BDA GR
  3 A$main$7483        2BDD GR  |   3 A$main$7488        2BE0 GR
  3 A$main$7489        2BE3 GR  |   3 A$main$749         047B GR
  3 A$main$7490        2BE6 GR  |   3 A$main$7491        2BE9 GR
  3 A$main$7492        2BED GR  |   3 A$main$7493        2BF1 GR
  3 A$main$7494        2BF4 GR  |   3 A$main$7495        2BF7 GR
  3 A$main$7496        2BF9 GR  |   3 A$main$7497        2BFC GR
  3 A$main$7498        2C00 GR  |   3 A$main$7499        2C02 GR
  3 A$main$750         047D GR  |   3 A$main$7500        2C05 GR
  3 A$main$7506        2C09 GR  |   3 A$main$7507        2C0C GR
  3 A$main$751         047F GR  |   3 A$main$7512        2C0F GR
  3 A$main$7513        2C11 GR  |   3 A$main$7518        2C14 GR
  3 A$main$752         0481 GR  |   3 A$main$7524        2C17 GR
  3 A$main$7525        2C19 GR  |   3 A$main$753         0483 GR
  3 A$main$7530        2C1C GR  |   3 A$main$7531        2C1E GR
  3 A$main$7537        2C21 GR  |   3 A$main$7538        2C24 GR
  3 A$main$754         0485 GR  |   3 A$main$7543        2C27 GR
  3 A$main$7544        2C29 GR  |   3 A$main$7549        2C2C GR
  3 A$main$7550        2C2E GR  |   3 A$main$7551        2C31 GR
  3 A$main$7552        2C33 GR  |   3 A$main$7562        2C37 GR
  3 A$main$7563        2C39 GR  |   3 A$main$7564        2C3C GR
  3 A$main$7569        2C3F GR  |   3 A$main$7570        2C40 GR
  3 A$main$7571        2C41 GR  |   3 A$main$7572        2C42 GR
  3 A$main$7573        2C44 GR  |   3 A$main$7574        2C48 GR
  3 A$main$7575        2C4A GR  |   3 A$main$7576        2C4D GR
  3 A$main$7581        2C50 GR  |   3 A$main$7582        2C53 GR
  3 A$main$7587        2C56 GR  |   3 A$main$7588        2C58 GR
  3 A$main$7589        2C5B GR  |   3 A$main$7590        2C5E GR
  3 A$main$7592        2C5F GR  |   3 A$main$7593        2C61 GR
  3 A$main$7598        2C64 GR  |   3 A$main$7599        2C67 GR
  3 A$main$760         0487 GR  |   3 A$main$7600        2C68 GR
  3 A$main$7601        2C6A GR  |   3 A$main$7602        2C6D GR
  3 A$main$7603        2C6E GR  |   3 A$main$7604        2C70 GR
  3 A$main$7605        2C72 GR  |   3 A$main$7606        2C73 GR
  3 A$main$7607        2C75 GR  |   3 A$main$7608        2C78 GR
  3 A$main$7609        2C7A GR  |   3 A$main$761         0489 GR
  3 A$main$7614        2C7D GR  |   3 A$main$7615        2C7F GR
  3 A$main$762         048B GR  |   3 A$main$7620        2C82 GR
  3 A$main$7621        2C84 GR  |   3 A$main$7622        2C86 GR
  3 A$main$7628        2C89 GR  |   3 A$main$7629        2C8C GR
  3 A$main$763         048D GR  |   3 A$main$7630        2C8E GR
  3 A$main$7631        2C91 GR  |   3 A$main$7632        2C93 GR
  3 A$main$7633        2C96 GR  |   3 A$main$7634        2C99 GR
  3 A$main$7635        2C9B GR  |   3 A$main$7636        2C9E GR
  3 A$main$7637        2CA0 GR  |   3 A$main$764         048F GR
  3 A$main$7643        2CA3 GR  |   3 A$main$7648        2CA6 GR
  3 A$main$7649        2CA8 GR  |   3 A$main$765         0491 GR
  3 A$main$7650        2CAB GR  |   3 A$main$7651        2CAD GR
  3 A$main$7656        2CB1 GR  |   3 A$main$7657        2CB4 GR
  3 A$main$7658        2CB5 GR  |   3 A$main$7659        2CB8 GR
  3 A$main$766         0493 GR  |   3 A$main$7660        2CBB GR
  3 A$main$7661        2CBE GR  |   3 A$main$7662        2CC1 GR
  3 A$main$7663        2CC3 GR  |   3 A$main$7664        2CC6 GR
  3 A$main$7665        2CC8 GR  |   3 A$main$7666        2CCB GR
  3 A$main$7667        2CCE GR  |   3 A$main$7672        2CD2 GR
  3 A$main$7673        2CD5 GR  |   3 A$main$7678        2CD8 GR
  3 A$main$7679        2CDB GR  |   3 A$main$7680        2CDC GR
  3 A$main$7681        2CDF GR  |   3 A$main$7682        2CE2 GR
  3 A$main$7683        2CE3 GR  |   3 A$main$7688        2CE6 GR
  3 A$main$7689        2CE9 GR  |   3 A$main$7694        2CEC GR
  3 A$main$7695        2CEF GR  |   3 A$main$7700        2CF2 GR
  3 A$main$7701        2CF5 GR  |   3 A$main$7702        2CF6 GR
  3 A$main$7704        2CF8 GR  |   3 A$main$7705        2CFB GR
  3 A$main$7710        2CFD GR  |   3 A$main$7715        2D00 GR
  3 A$main$7716        2D04 GR  |   3 A$main$7717        2D06 GR
  3 A$main$7718        2D08 GR  |   3 A$main$7719        2D0A GR
  3 A$main$772         0495 GR  |   3 A$main$7725        2D0E GR
  3 A$main$7726        2D10 GR  |   3 A$main$773         0497 GR
  3 A$main$7732        2D13 GR  |   3 A$main$7733        2D16 GR
  3 A$main$7738        2D19 GR  |   3 A$main$7739        2D1B GR
  3 A$main$774         0499 GR  |   3 A$main$7740        2D1E GR
  3 A$main$7741        2D20 GR  |   3 A$main$7746        2D24 GR
  3 A$main$7747        2D26 GR  |   3 A$main$7748        2D29 GR
  3 A$main$7749        2D2C GR  |   3 A$main$775         049B GR
  3 A$main$7754        2D30 GR  |   3 A$main$7755        2D33 GR
  3 A$main$776         049D GR  |   3 A$main$7760        2D36 GR
  3 A$main$7761        2D38 GR  |   3 A$main$7767        2D3B GR
  3 A$main$7768        2D3E GR  |   3 A$main$777         049F GR
  3 A$main$7776        2D41 GR  |   3 A$main$778         04A1 GR
  3 A$main$7781        2D44 GR  |   3 A$main$7782        2D46 GR
  3 A$main$7787        2D49 GR  |   3 A$main$7792        2D4C GR
  3 A$main$7793        2D4F GR  |   3 A$main$7798        2D52 GR
  3 A$main$7799        2D54 GR  |   3 A$main$7804        2D57 GR
  3 A$main$7809        2D5A GR  |   3 A$main$7810        2D5D GR
  3 A$main$7815        2D60 GR  |   3 A$main$7820        2D63 GR
  3 A$main$7821        2D66 GR  |   3 A$main$7822        2D69 GR
  3 A$main$7823        2D6B GR  |   3 A$main$7824        2D6D GR
  3 A$main$7830        2D70 GR  |   3 A$main$7831        2D72 GR
  3 A$main$7837        2D75 GR  |   3 A$main$7838        2D78 GR
  3 A$main$784         04A3 GR  |   3 A$main$7843        2D7B GR
  3 A$main$7844        2D7D GR  |   3 A$main$7845        2D80 GR
  3 A$main$7846        2D82 GR  |   3 A$main$7847        2D85 GR
  3 A$main$7848        2D87 GR  |   3 A$main$7849        2D88 GR
  3 A$main$785         04A5 GR  |   3 A$main$7850        2D8A GR
  3 A$main$7851        2D8C GR  |   3 A$main$7852        2D8E GR
  3 A$main$7853        2D8F GR  |   3 A$main$7854        2D91 GR
  3 A$main$7855        2D93 GR  |   3 A$main$7856        2D96 GR
  3 A$main$7857        2D98 GR  |   3 A$main$786         04A7 GR
  3 A$main$7862        2D9B GR  |   3 A$main$7863        2D9D GR
  3 A$main$7864        2D9F GR  |   3 A$main$7865        2DA2 GR
  3 A$main$7866        2DA4 GR  |   3 A$main$7867        2DA7 GR
  3 A$main$7868        2DA9 GR  |   3 A$main$7869        2DAC GR
  3 A$main$787         04A9 GR  |   3 A$main$7870        2DAF GR
  3 A$main$7871        2DB1 GR  |   3 A$main$7872        2DB3 GR
  3 A$main$7877        2DB6 GR  |   3 A$main$7878        2DB8 GR
  3 A$main$7879        2DBB GR  |   3 A$main$788         04AB GR
  3 A$main$7884        2DBE GR  |   3 A$main$7885        2DC1 GR
  3 A$main$789         04AD GR  |   3 A$main$7890        2DC4 GR
  3 A$main$7891        2DC6 GR  |   3 A$main$7896        2DC9 GR
  3 A$main$7897        2DCB GR  |   3 A$main$7898        2DCD GR
  3 A$main$7904        2DD0 GR  |   3 A$main$7909        2DD3 GR
  3 A$main$7910        2DD6 GR  |   3 A$main$7915        2DD9 GR
  3 A$main$7916        2DDB GR  |   3 A$main$7921        2DDE GR
  3 A$main$7922        2DE0 GR  |   3 A$main$7928        2DE3 GR
  3 A$main$7929        2DE5 GR  |   3 A$main$7930        2DE8 GR
  3 A$main$7931        2DEA GR  |   3 A$main$7936        2DEE GR
  3 A$main$7937        2DF1 GR  |   3 A$main$7942        2DF4 GR
  3 A$main$7943        2DF6 GR  |   3 A$main$7949        2DF9 GR
  3 A$main$795         04AF GR  |   3 A$main$7950        2DFC GR
  3 A$main$7951        2DFD GR  |   3 A$main$7952        2E00 GR
  3 A$main$7953        2E01 GR  |   3 A$main$7958        2E04 GR
  3 A$main$7959        2E07 GR  |   3 A$main$796         04B2 GR
  3 A$main$7964        2E0A GR  |   3 A$main$7965        2E0D GR
  3 A$main$7966        2E10 GR  |   3 A$main$797         04B4 GR
  3 A$main$7971        2E13 GR  |   3 A$main$7972        2E16 GR
  3 A$main$7977        2E19 GR  |   3 A$main$7978        2E1C GR
  3 A$main$7979        2E1D GR  |   3 A$main$798         04B6 GR
  3 A$main$7980        2E21 GR  |   3 A$main$7985        2E25 GR
  3 A$main$7986        2E27 GR  |   3 A$main$799         04B8 GR
  3 A$main$7992        2E2A GR  |   3 A$main$7993        2E2D GR
  3 A$main$7998        2E30 GR  |   3 A$main$7999        2E32 GR
  3 A$main$800         04BA GR  |   3 A$main$8005        2E35 GR
  3 A$main$8006        2E37 GR  |   3 A$main$8007        2E3A GR
  3 A$main$8008        2E3C GR  |   3 A$main$801         04BC GR
  3 A$main$8013        2E40 GR  |   3 A$main$8019        2E43 GR
  3 A$main$8020        2E45 GR  |   3 A$main$8021        2E48 GR
  3 A$main$8022        2E4B GR  |   3 A$main$8023        2E4E GR
  3 A$main$8024        2E4F GR  |   3 A$main$8025        2E52 GR
  3 A$main$8026        2E55 GR  |   3 A$main$8031        2E59 GR
  3 A$main$8036        2E5C GR  |   3 A$main$8037        2E5E GR
  3 A$main$8043        2E61 GR  |   3 A$main$8044        2E63 GR
  3 A$main$8045        2E66 GR  |   3 A$main$8046        2E68 GR
  3 A$main$8051        2E6C GR  |   3 A$main$8052        2E6F GR
  3 A$main$8057        2E72 GR  |   3 A$main$8058        2E75 GR
  3 A$main$8063        2E78 GR  |   3 A$main$8064        2E7A GR
  3 A$main$8065        2E7D GR  |   3 A$main$8066        2E7E GR
  3 A$main$807         04BE GR  |   3 A$main$8071        2E81 GR
  3 A$main$8072        2E83 GR  |   3 A$main$8074        2E86 GR
  3 A$main$8075        2E88 GR  |   3 A$main$8076        2E8A GR
  3 A$main$8077        2E8D GR  |   3 A$main$808         04C1 GR
  3 A$main$8083        2E91 GR  |   3 A$main$8084        2E94 GR
  3 A$main$8085        2E96 GR  |   3 A$main$8086        2E97 GR
  3 A$main$8087        2E99 GR  |   3 A$main$8088        2E9B GR
  3 A$main$8089        2E9D GR  |   3 A$main$809         04C3 GR
  3 A$main$8094        2EA1 GR  |   3 A$main$8095        2EA4 GR
  3 A$main$8096        2EA7 GR  |   3 A$main$8097        2EAA GR
  3 A$main$8098        2EAD GR  |   3 A$main$8099        2EB0 GR
  3 A$main$810         04C5 GR  |   3 A$main$8100        2EB3 GR
  3 A$main$8101        2EB6 GR  |   3 A$main$8102        2EB9 GR
  3 A$main$8103        2EBC GR  |   3 A$main$8104        2EC0 GR
  3 A$main$8109        2EC4 GR  |   3 A$main$811         04C7 GR
  3 A$main$8110        2EC7 GR  |   3 A$main$8111        2ECA GR
  3 A$main$8112        2ECD GR  |   3 A$main$8113        2ED0 GR
  3 A$main$8114        2ED4 GR  |   3 A$main$8115        2ED6 GR
  3 A$main$8116        2ED8 GR  |   3 A$main$8117        2EDB GR
  3 A$main$8118        2EDE GR  |   3 A$main$8119        2EE0 GR
  3 A$main$812         04C9 GR  |   3 A$main$8120        2EE3 GR
  3 A$main$8121        2EE5 GR  |   3 A$main$8122        2EE8 GR
  3 A$main$8123        2EEB GR  |   3 A$main$8124        2EEE GR
  3 A$main$8125        2EF1 GR  |   3 A$main$8126        2EF4 GR
  3 A$main$8127        2EF7 GR  |   3 A$main$8128        2EFA GR
  3 A$main$8129        2EFD GR  |   3 A$main$813         04CB GR
  3 A$main$8130        2F00 GR  |   3 A$main$8131        2F03 GR
  3 A$main$8132        2F05 GR  |   3 A$main$8133        2F08 GR
  3 A$main$8134        2F0A GR  |   3 A$main$8135        2F0D GR
  3 A$main$8136        2F0F GR  |   3 A$main$8137        2F12 GR
  3 A$main$8138        2F14 GR  |   3 A$main$8139        2F17 GR
  3 A$main$8140        2F1A GR  |   3 A$main$8141        2F1C GR
  3 A$main$8142        2F1F GR  |   3 A$main$8147        2F22 GR
  3 A$main$8148        2F24 GR  |   3 A$main$8149        2F27 GR
  3 A$main$8150        2F2A GR  |   3 A$main$8155        2F2E GR
  3 A$main$8156        2F30 GR  |   3 A$main$8157        2F33 GR
  3 A$main$8162        2F36 GR  |   3 A$main$8163        2F37 GR
  3 A$main$8164        2F3A GR  |   3 A$main$8165        2F3C GR
  3 A$main$8166        2F3E GR  |   3 A$main$8167        2F41 GR
  3 A$main$8168        2F44 GR  |   3 A$main$8169        2F47 GR
  3 A$main$8170        2F48 GR  |   3 A$main$8171        2F4B GR
  3 A$main$8176        2F4D GR  |   3 A$main$8177        2F50 GR
  3 A$main$8183        2F53 GR  |   3 A$main$8184        2F55 GR
  3 A$main$819         04CD GR  |   3 A$main$8190        2F58 GR
  3 A$main$8191        2F5A GR  |   3 A$main$8196        2F5D GR
  3 A$main$8197        2F5F GR  |   3 A$main$820         04CF GR
  3 A$main$8203        2F62 GR  |   3 A$main$8204        2F65 GR
  3 A$main$821         04D1 GR  |   3 A$main$8214        2F68 GR
  3 A$main$8215        2F6A GR  |   3 A$main$8216        2F6D GR
  3 A$main$822         04D3 GR  |   3 A$main$8221        2F70 GR
  3 A$main$8222        2F72 GR  |   3 A$main$8223        2F75 GR
  3 A$main$8224        2F77 GR  |   3 A$main$8229        2F7B GR
  3 A$main$823         04D5 GR  |   3 A$main$8230        2F7E GR
  3 A$main$8231        2F7F GR  |   3 A$main$8232        2F81 GR
  3 A$main$8233        2F85 GR  |   3 A$main$8234        2F87 GR
  3 A$main$8235        2F89 GR  |   3 A$main$824         04D7 GR
  3 A$main$8240        2F8B GR  |   3 A$main$8241        2F8C GR
  3 A$main$8246        2F8E GR  |   3 A$main$8247        2F91 GR
  3 A$main$8248        2F92 GR  |   3 A$main$8249        2F94 GR
  3 A$main$825         04D9 GR  |   3 A$main$8250        2F95 GR
  3 A$main$8251        2F96 GR  |   3 A$main$8252        2F98 GR
  3 A$main$8253        2F9C GR  |   3 A$main$8254        2F9E GR
  3 A$main$8255        2FA1 GR  |   3 A$main$8256        2FA4 GR
  3 A$main$826         04DB GR  |   3 A$main$8262        2FA6 GR
  3 A$main$8263        2FA9 GR  |   3 A$main$8268        2FAC GR
  3 A$main$8269        2FAE GR  |   3 A$main$8275        2FB1 GR
  3 A$main$8276        2FB4 GR  |   3 A$main$8277        2FB5 GR
  3 A$main$8278        2FB7 GR  |   3 A$main$8279        2FBB GR
  3 A$main$8280        2FBD GR  |   3 A$main$8281        2FBF GR
  3 A$main$8286        2FC3 GR  |   3 A$main$8287        2FC4 GR
  3 A$main$8292        2FC6 GR  |   3 A$main$8293        2FC9 GR
  3 A$main$8294        2FCA GR  |   3 A$main$8295        2FCC GR
  3 A$main$8296        2FCD GR  |   3 A$main$8297        2FCE GR
  3 A$main$8298        2FD0 GR  |   3 A$main$8299        2FD4 GR
  3 A$main$8300        2FD6 GR  |   3 A$main$8301        2FD9 GR
  3 A$main$8302        2FDC GR  |   3 A$main$8303        2FDE GR
  3 A$main$8309        2FE1 GR  |   3 A$main$8310        2FE3 GR
  3 A$main$8311        2FE6 GR  |   3 A$main$8312        2FE8 GR
  3 A$main$8317        2FEC GR  |   3 A$main$8318        2FEF GR
  3 A$main$8323        2FF2 GR  |   3 A$main$8325        2FF5 GR
  3 A$main$8326        2FF8 GR  |   3 A$main$8327        2FFA GR
  3 A$main$8328        2FFD GR  |   3 A$main$8333        2FFF GR
  3 A$main$8334        3001 GR  |   3 A$main$8340        3004 GR
  3 A$main$8341        3006 GR  |   3 A$main$8342        3009 GR
  3 A$main$8343        300B GR  |   3 A$main$8348        300F GR
  3 A$main$8354        3012 GR  |   3 A$main$8355        3015 GR
  3 A$main$8360        3018 GR  |   3 A$main$8361        301B GR
  3 A$main$8362        301C GR  |   3 A$main$8363        301F GR
  3 A$main$8364        3022 GR  |   3 A$main$8365        3023 GR
  3 A$main$837         04DD GR  |   3 A$main$8370        3026 GR
  3 A$main$8371        3029 GR  |   3 A$main$8376        302C GR
  3 A$main$8377        302F GR  |   3 A$main$8382        3032 GR
  3 A$main$8383        3035 GR  |   3 A$main$8384        3038 GR
  3 A$main$8385        303B GR  |   3 A$main$8386        303C GR
  3 A$main$8387        303E GR  |   3 A$main$8388        3040 GR
  3 A$main$8389        3043 GR  |   3 A$main$8394        3047 GR
  3 A$main$8395        304A GR  |   3 A$main$8396        304B GR
  3 A$main$8397        304D GR  |   3 A$main$8398        304F GR
  3 A$main$8399        3051 GR  |   3 A$main$8400        3053 GR
  3 A$main$8405        3056 GR  |   3 A$main$8406        3058 GR
  3 A$main$8412        305B GR  |   3 A$main$8413        305E GR
  3 A$main$8414        3061 GR  |   3 A$main$8416        3064 GR
  3 A$main$8417        3068 GR  |   3 A$main$8418        306B GR
  3 A$main$8419        306D GR  |   3 A$main$8420        3070 GR
  3 A$main$8421        3074 GR  |   3 A$main$8427        3077 GR
  3 A$main$8428        307A GR  |   3 A$main$8433        307D GR
  3 A$main$8434        307F GR  |   3 A$main$8439        3082 GR
  3 A$main$844         04E0 GR  |   3 A$main$8440        3084 GR
  3 A$main$8441        3087 GR  |   3 A$main$8442        3089 GR
  3 A$main$8447        308D GR  |   3 A$main$8448        3090 GR
  3 A$main$8449        3092 GR  |   3 A$main$845         04E3 GR
  3 A$main$8450        3095 GR  |   3 A$main$8455        3099 GR
  3 A$main$8456        309A GR  |   3 A$main$8457        309C GR
  3 A$main$8458        309E GR  |   3 A$main$8459        30A0 GR
  3 A$main$8460        30A4 GR  |   3 A$main$8461        30A5 GR
  3 A$main$8462        30A7 GR  |   3 A$main$8463        30AA GR
  3 A$main$8464        30AC GR  |   3 A$main$8465        30AE GR
  3 A$main$8466        30B1 GR  |   3 A$main$8467        30B3 GR
  3 A$main$8468        30B4 GR  |   3 A$main$8469        30B5 GR
  3 A$main$8470        30B7 GR  |   3 A$main$8471        30B9 GR
  3 A$main$8472        30BB GR  |   3 A$main$8474        30BE GR
  3 A$main$8475        30C0 GR  |   3 A$main$8476        30C3 GR
  3 A$main$8477        30C5 GR  |   3 A$main$8478        30C8 GR
  3 A$main$8479        30CA GR  |   3 A$main$8480        30CD GR
  3 A$main$8481        30CF GR  |   3 A$main$8482        30D2 GR
  3 A$main$8483        30D5 GR  |   3 A$main$8484        30D7 GR
  3 A$main$8485        30DB GR  |   3 A$main$8486        30DE GR
  3 A$main$8487        30E1 GR  |   3 A$main$8488        30E3 GR
  3 A$main$8489        30E5 GR  |   3 A$main$8490        30E8 GR
  3 A$main$8491        30EB GR  |   3 A$main$8492        30ED GR
  3 A$main$8493        30EF GR  |   3 A$main$8494        30F1 GR
  3 A$main$8499        30F4 GR  |   3 A$main$8504        30F7 GR
  3 A$main$8505        30F9 GR  |   3 A$main$851         04E7 GR
  3 A$main$8511        30FC GR  |   3 A$main$8512        30FE GR
  3 A$main$8517        3101 GR  |   3 A$main$8518        3103 GR
  3 A$main$852         04E9 GR  |   3 A$main$8520        3106 GR
  3 A$main$8521        3108 GR  |   3 A$main$8522        310A GR
  3 A$main$8523        310B GR  |   3 A$main$8524        310D GR
  3 A$main$8525        310F GR  |   3 A$main$8526        3110 GR
  3 A$main$8527        3112 GR  |   3 A$main$8528        3115 GR
  3 A$main$8529        3117 GR  |   3 A$main$8530        3119 GR
  3 A$main$8531        311C GR  |   3 A$main$8532        311E GR
  3 A$main$8533        311F GR  |   3 A$main$8534        3120 GR
  3 A$main$8535        3122 GR  |   3 A$main$8536        3124 GR
  3 A$main$8537        3126 GR  |   3 A$main$8538        3129 GR
  3 A$main$8539        312B GR  |   3 A$main$8540        312D GR
  3 A$main$8541        312F GR  |   3 A$main$8542        3132 GR
  3 A$main$8543        3134 GR  |   3 A$main$8544        3135 GR
  3 A$main$8545        3136 GR  |   3 A$main$8546        3138 GR
  3 A$main$8547        313A GR  |   3 A$main$8548        313C GR
  3 A$main$8554        313F GR  |   3 A$main$8555        3142 GR
  3 A$main$8556        3144 GR  |   3 A$main$8557        3145 GR
  3 A$main$8558        3146 GR  |   3 A$main$8559        3147 GR
  3 A$main$8560        3149 GR  |   3 A$main$8561        314C GR
  3 A$main$8562        314F GR  |   3 A$main$8563        3152 GR
  3 A$main$8564        3154 GR  |   3 A$main$8565        3156 GR
  3 A$main$8566        3158 GR  |   3 A$main$8567        315B GR
  3 A$main$8568        315E GR  |   3 A$main$857         04EB GR
  3 A$main$8573        3161 GR  |   3 A$main$8578        3164 GR
  3 A$main$8579        3167 GR  |   3 A$main$858         04ED GR
  3 A$main$8584        316B GR  |   3 A$main$8585        316D GR
  3 A$main$8591        3170 GR  |   3 A$main$8592        3173 GR
  3 A$main$8597        3176 GR  |   3 A$main$8598        3179 GR
  3 A$main$8599        317A GR  |   3 A$main$860         04EF GR
  3 A$main$8600        317B GR  |   3 A$main$8601        317E GR
  3 A$main$8602        3182 GR  |   3 A$main$8603        3184 GR
  3 A$main$8604        3185 GR  |   3 A$main$8609        3188 GR
  3 A$main$861         04F1 GR  |   3 A$main$8610        318A GR
  3 A$main$8611        318D GR  |   3 A$main$8616        3190 GR
  3 A$main$8617        3193 GR  |   3 A$main$862         04F3 GR
  3 A$main$8622        3196 GR  |   3 A$main$8623        3198 GR
  3 A$main$8624        319A GR  |   3 A$main$8630        319D GR
  3 A$main$8631        319F GR  |   3 A$main$864         04F4 GR
  3 A$main$865         04F6 GR  |   3 A$main$866         04F8 GR
  3 A$main$8668        323F GR  |   3 A$main$8669        3241 GR
  3 A$main$8674        3243 GR  |   3 A$main$8675        3245 GR
  3 A$main$8685        3248 GR  |   3 A$main$8692        324B GR
  3 A$main$8693        324E GR  |   3 A$main$8698        3251 GR
  3 A$main$8699        3252 GR  |   3 A$main$8704        3255 GR
  3 A$main$8705        3258 GR  |   3 A$main$8706        325B GR
  3 A$main$8716        325F GR  |   3 A$main$8717        3261 GR
  3 A$main$872         04FB GR  |   3 A$main$8722        3264 GR
  3 A$main$8723        3266 GR  |   3 A$main$8728        3269 GR
  3 A$main$8729        326B GR  |   3 A$main$873         04FE GR
  3 A$main$8734        326E GR  |   3 A$main$874         0500 GR
  3 A$main$8740        3271 GR  |   3 A$main$8745        3274 GR
  3 A$main$8746        3277 GR  |   3 A$main$875         0502 GR
  3 A$main$8751        327A GR  |   3 A$main$8752        327D GR
  3 A$main$8757        3280 GR  |   3 A$main$8758        3283 GR
  3 A$main$8759        3286 GR  |   3 A$main$876         0504 GR
  3 A$main$8764        3289 GR  |   3 A$main$8765        328B GR
  3 A$main$877         0506 GR  |   3 A$main$8770        328E GR
  3 A$main$8771        3291 GR  |   3 A$main$8776        3294 GR
  3 A$main$8777        3297 GR  |   3 A$main$8778        329A GR
  3 A$main$8779        329B GR  |   3 A$main$878         0508 GR
  3 A$main$8780        329D GR  |   3 A$main$8781        329F GR
  3 A$main$8782        32A1 GR  |   3 A$main$8783        32A3 GR
  3 A$main$8785        32A5 GR  |   3 A$main$8788        32A7 GR
  3 A$main$8789        32A9 GR  |   3 A$main$879         050A GR
  3 A$main$8790        32AB GR  |   3 A$main$8791        32AF GR
  3 A$main$8792        32B2 GR  |   3 A$main$8793        32B4 GR
  3 A$main$8794        32B6 GR  |   3 A$main$8795        32B8 GR
  3 A$main$8797        32BA GR  |   3 A$main$8798        32BC GR
  3 A$main$8799        32BE GR  |   3 A$main$8800        32C0 GR
  3 A$main$8801        32C2 GR  |   3 A$main$8802        32C3 GR
  3 A$main$8803        32C5 GR  |   3 A$main$8804        32C9 GR
  3 A$main$8806        32CB GR  |   3 A$main$8807        32CE GR
  3 A$main$8808        32D0 GR  |   3 A$main$8809        32D2 GR
  3 A$main$8810        32D4 GR  |   3 A$main$8811        32D6 GR
  3 A$main$8812        32D8 GR  |   3 A$main$8813        32DA GR
  3 A$main$8814        32DC GR  |   3 A$main$8815        32DE GR
  3 A$main$8816        32E0 GR  |   3 A$main$8817        32E2 GR
  3 A$main$8818        32E4 GR  |   3 A$main$8819        32E6 GR
  3 A$main$8820        32E8 GR  |   3 A$main$8822        32EA GR
  3 A$main$8823        32EC GR  |   3 A$main$8824        32ED GR
  3 A$main$8825        32EF GR  |   3 A$main$8826        32F3 GR
  3 A$main$8827        32F5 GR  |   3 A$main$8828        32F7 GR
  3 A$main$8830        32F9 GR  |   3 A$main$8835        32FC GR
  3 A$main$8836        32FF GR  |   3 A$main$8841        3302 GR
  3 A$main$885         050C GR  |   3 A$main$8853        3305 GR
  3 A$main$8854        3307 GR  |   3 A$main$886         050E GR
  3 A$main$8860        3309 GR  |   3 A$main$8861        330B GR
  3 A$main$8866        330E GR  |   3 A$main$8867        3311 GR
  3 A$main$887         0510 GR  |   3 A$main$8872        3314 GR
  3 A$main$8873        3316 GR  |   3 A$main$888         0512 GR
  3 A$main$8880        3319 GR  |   3 A$main$8881        331C GR
  3 A$main$8882        331E GR  |   3 A$main$8883        331F GR
  3 A$main$8889        3322 GR  |   3 A$main$889         0514 GR
  3 A$main$8890        3325 GR  |   3 A$main$8891        3327 GR
  3 A$main$8892        3328 GR  |   3 A$main$8898        332B GR
  3 A$main$8899        332E GR  |   3 A$main$890         0516 GR
  3 A$main$8900        3330 GR  |   3 A$main$8901        3331 GR
  3 A$main$8907        3334 GR  |   3 A$main$8908        3337 GR
  3 A$main$8909        3339 GR  |   3 A$main$891         0518 GR
  3 A$main$8910        333A GR  |   3 A$main$8916        333D GR
  3 A$main$8917        3340 GR  |   3 A$main$8918        3342 GR
  3 A$main$8919        3343 GR  |   3 A$main$8925        3346 GR
  3 A$main$8926        3349 GR  |   3 A$main$8927        334B GR
  3 A$main$8928        334C GR  |   3 A$main$8934        334F GR
  3 A$main$8935        3352 GR  |   3 A$main$8936        3354 GR
  3 A$main$8937        3355 GR  |   3 A$main$8943        3358 GR
  3 A$main$8944        335B GR  |   3 A$main$8945        335D GR
  3 A$main$8946        335E GR  |   3 A$main$8952        3361 GR
  3 A$main$8953        3364 GR  |   3 A$main$8954        3366 GR
  3 A$main$8955        3367 GR  |   3 A$main$8961        336A GR
  3 A$main$8962        336D GR  |   3 A$main$8963        336F GR
  3 A$main$8964        3370 GR  |   3 A$main$897         051A GR
  3 A$main$8970        3373 GR  |   3 A$main$8971        3376 GR
  3 A$main$8972        3378 GR  |   3 A$main$8973        3379 GR
  3 A$main$8979        337C GR  |   3 A$main$898         051C GR
  3 A$main$8980        337F GR  |   3 A$main$8981        3381 GR
  3 A$main$8982        3384 GR  |   3 A$main$8983        3386 GR
  3 A$main$8984        3387 GR  |   3 A$main$8985        338B GR
  3 A$main$899         051E GR  |   3 A$main$8990        338D GR
  3 A$main$8991        338F GR  |   3 A$main$8992        3391 GR
  3 A$main$8997        3394 GR  |   3 A$main$8998        3397 GR
  3 A$main$8999        3399 GR  |   3 A$main$900         0520 GR
  3 A$main$9000        339A GR  |   3 A$main$9001        339C GR
  3 A$main$9002        339F GR  |   3 A$main$9003        33A1 GR
  3 A$main$9004        33A3 GR  |   3 A$main$9005        33A4 GR
  3 A$main$901         0522 GR  |   3 A$main$9011        33A7 GR
  3 A$main$9017        33AA GR  |   3 A$main$902         0524 GR
  3 A$main$9022        33AD GR  |   3 A$main$9023        33AF GR
  3 A$main$903         0526 GR  |   3 A$main$9030        33B3 GR
  3 A$main$9031        33B6 GR  |   3 A$main$9036        33B9 GR
  3 A$main$9043        33BC GR  |   3 A$main$9049        33BF GR
  3 A$main$9050        33C2 GR  |   3 A$main$9051        33C4 GR
  3 A$main$9056        33C7 GR  |   3 A$main$9057        33C9 GR
  3 A$main$9062        33CC GR  |   3 A$main$9067        33CF GR
  3 A$main$9068        33D2 GR  |   3 A$main$9073        33D5 GR
  3 A$main$9074        33D7 GR  |   3 A$main$9075        33D9 GR
  3 A$main$9076        33DD GR  |   3 A$main$9077        33DF GR
  3 A$main$9078        33E3 GR  |   3 A$main$9079        33E5 GR
  3 A$main$9080        33E9 GR  |   3 A$main$9081        33EB GR
  3 A$main$9082        33EF GR  |   3 A$main$9083        33F1 GR
  3 A$main$909         0528 GR  |   3 A$main$9091        33F5 GR
  3 A$main$9092        33F8 GR  |   3 A$main$9093        33FB GR
  3 A$main$9094        33FD GR  |   3 A$main$9099        3400 GR
  3 A$main$910         052A GR  |   3 A$main$9100        3402 GR
  3 A$main$9105        3405 GR  |   3 A$main$9106        3407 GR
  3 A$main$9107        3409 GR  |   3 A$main$9108        340D GR
  3 A$main$9109        340F GR  |   3 A$main$911         052C GR
  3 A$main$9110        3413 GR  |   3 A$main$9111        3415 GR
  3 A$main$912         052E GR  |   3 A$main$9122        3419 GR
  3 A$main$9123        341C GR  |   3 A$main$9124        341F GR
  3 A$main$9129        3422 GR  |   3 A$main$913         0530 GR
  3 A$main$9130        3424 GR  |   3 A$main$9131        3428 GR
  3 A$main$9132        342A GR  |   3 A$main$9133        342E GR
  3 A$main$9134        3430 GR  |   3 A$main$9135        3434 GR
  3 A$main$9136        3436 GR  |   3 A$main$9137        3438 GR
  3 A$main$9138        343A GR  |   3 A$main$914         0532 GR
  3 A$main$9145        343E GR  |   3 A$main$9150        3441 GR
  3 A$main$9156        3444 GR  |   3 A$main$9157        3447 GR
  3 A$main$9165        344A GR  |   3 A$main$9170        344D GR
  3 A$main$9171        3450 GR  |   3 A$main$9177        3453 GR
  3 A$main$9178        3456 GR  |   3 A$main$9184        3459 GR
  3 A$main$9185        345B GR  |   3 A$main$9186        345E GR
  3 A$main$9192        3461 GR  |   3 A$main$9197        3464 GR
  3 A$main$920         0534 GR  |   3 A$main$9205        3467 GR
  3 A$main$9206        346A GR  |   3 A$main$9207        346B GR
  3 A$main$921         0537 GR  |   3 A$main$9212        346F GR
  3 A$main$9213        3471 GR  |   3 A$main$9218        3474 GR
  3 A$main$922         0539 GR  |   3 A$main$9224        3477 GR
  3 A$main$9229        347A GR  |   3 A$main$923         053B GR
  3 A$main$9230        347C GR  |   3 A$main$9236        347F GR
  3 A$main$924         053D GR  |   3 A$main$9241        3482 GR
  3 A$main$9242        3485 GR  |   3 A$main$9247        3488 GR
  3 A$main$9248        348B GR  |   3 A$main$925         053F GR
  3 A$main$9253        348E GR  |   3 A$main$9254        348F GR
  3 A$main$9259        3491 GR  |   3 A$main$926         0541 GR
  3 A$main$9260        3494 GR  |   3 A$main$9261        3496 GR
  3 A$main$9262        3498 GR  |   3 A$main$9263        349C GR
  3 A$main$9269        349F GR  |   3 A$main$9270        34A2 GR
  3 A$main$9276        34A6 GR  |   3 A$main$9277        34A9 GR
  3 A$main$9283        34AD GR  |   3 A$main$9289        34B0 GR
  3 A$main$9294        34B3 GR  |   3 A$main$9295        34B5 GR
  3 A$main$9300        34B8 GR  |   3 A$main$9308        34BB GR
  3 A$main$9309        34BE GR  |   3 A$main$9314        34C1 GR
  3 A$main$9315        34C4 GR  |   3 A$main$932         0543 GR
  3 A$main$9320        34C7 GR  |   3 A$main$9325        34CA GR
  3 A$main$933         0546 GR  |   3 A$main$9334        34CD GR
  3 A$main$9335        34CF GR  |   3 A$main$9336        34D1 GR
  3 A$main$9338        34D4 GR  |   3 A$main$9339        34D6 GR
  3 A$main$934         0548 GR  |   3 A$main$9340        34D8 GR
  3 A$main$9341        34DA GR  |   3 A$main$9342        34DC GR
  3 A$main$9343        34DE GR  |   3 A$main$9348        34E2 GR
  3 A$main$9349        34E5 GR  |   3 A$main$935         054A GR
  3 A$main$9351        34E8 GR  |   3 A$main$9352        34EA GR
  3 A$main$9353        34ED GR  |   3 A$main$9354        34F1 GR
  3 A$main$936         054C GR  |   3 A$main$9360        34F4 GR
  3 A$main$9361        34F5 GR  |   3 A$main$9366        34F8 GR
  3 A$main$9367        34FA GR  |   3 A$main$937         054E GR
  3 A$main$9374        34FD GR  |   3 A$main$9375        34FF GR
  3 A$main$938         0550 GR  |   3 A$main$9380        3502 GR
  3 A$main$9381        3504 GR  |   3 A$main$9387        3507 GR
  3 A$main$9392        350A GR  |   3 A$main$9393        350C GR
  3 A$main$9398        350F GR  |   3 A$main$9404        3512 GR
  3 A$main$9414        3515 GR  |   3 A$main$9415        3518 GR
  3 A$main$9416        351A GR  |   3 A$main$9422        351E GR
  3 A$main$9423        3520 GR  |   3 A$main$9428        3523 GR
  3 A$main$9429        3526 GR  |   3 A$main$9434        3529 GR
  3 A$main$9435        352B GR  |   3 A$main$944         0552 GR
  3 A$main$9440        352E GR  |   3 A$main$9445        3531 GR
  3 A$main$9446        3533 GR  |   3 A$main$945         0554 GR
  3 A$main$9451        3536 GR  |   3 A$main$9456        3539 GR
  3 A$main$946         0556 GR  |   3 A$main$9465        353C GR
  3 A$main$9466        353F GR  |   3 A$main$947         0558 GR
  3 A$main$9471        3542 GR  |   3 A$main$9472        3544 GR
  3 A$main$9473        3546 GR  |   3 A$main$9475        3549 GR
  3 A$main$9476        354C GR  |   3 A$main$9477        354E GR
  3 A$main$9478        3551 GR  |   3 A$main$9479        3553 GR
  3 A$main$948         055A GR  |   3 A$main$9481        3556 GR
  3 A$main$9482        3559 GR  |   3 A$main$9483        355C GR
  3 A$main$9484        355E GR  |   3 A$main$9489        3560 GR
  3 A$main$949         055C GR  |   3 A$main$9490        3563 GR
  3 A$main$9491        3565 GR  |   3 A$main$9492        3568 GR
  3 A$main$9493        356A GR  |   3 A$main$9494        356D GR
  3 A$main$9495        3570 GR  |   3 A$main$9496        3573 GR
  3 A$main$9497        3575 GR  |   3 A$main$950         055E GR
  3 A$main$9502        3577 GR  |   3 A$main$9503        357A GR
  3 A$main$9504        357C GR  |   3 A$main$9505        357F GR
  3 A$main$9506        3581 GR  |   3 A$main$9507        3584 GR
  3 A$main$9508        3587 GR  |   3 A$main$9509        358A GR
  3 A$main$951         0560 GR  |   3 A$main$9510        358C GR
  3 A$main$9515        358E GR  |   3 A$main$9516        3591 GR
  3 A$main$9517        3593 GR  |   3 A$main$9522        3596 GR
  3 A$main$9523        3598 GR  |   3 A$main$9524        359A GR
  3 A$main$9530        359E GR  |   3 A$main$9531        35A0 GR
  3 A$main$9532        35A2 GR  |   3 A$main$9543        35A6 GR
  3 A$main$9544        35A8 GR  |   3 A$main$9550        35AB GR
  3 A$main$9551        35AD GR  |   3 A$main$9552        35B0 GR
  3 A$main$9553        35B2 GR  |   3 A$main$9558        35B5 GR
  3 A$main$9563        35B8 GR  |   3 A$main$9568        35BB GR
  3 A$main$9573        35BE GR  |   3 A$main$9574        35C0 GR
  3 A$main$9579        35C2 GR  |   3 A$main$9580        35C4 GR
  3 A$main$9585        35C7 GR  |   3 A$main$9586        35CA GR
  3 A$main$9587        35CC GR  |   3 A$main$9588        35D0 GR
  3 A$main$9589        35D3 GR  |   3 A$main$9590        35D5 GR
  3 A$main$9591        35D8 GR  |   3 A$main$9592        35DA GR
  3 A$main$9593        35DD GR  |   3 A$main$9599        35E0 GR
  3 A$main$9600        35E2 GR  |   3 A$main$9601        35E5 GR
  3 A$main$9602        35E7 GR  |   3 A$main$9603        35EA GR
  3 A$main$9604        35ED GR  |   3 A$main$9605        35F0 GR
  3 A$main$9606        35F2 GR  |   3 A$main$9611        35F4 GR
  3 A$main$9612        35F7 GR  |   3 A$main$9613        35F9 GR
  3 A$main$9614        35FC GR  |   3 A$main$9615        35FE GR
  3 A$main$9616        3601 GR  |   3 A$main$9617        3604 GR
  3 A$main$9618        3607 GR  |   3 A$main$9619        3609 GR
  3 A$main$962         0564 GR  |   3 A$main$9624        360B GR
  3 A$main$9625        360D GR  |   3 A$main$9626        3610 GR
  3 A$main$9627        3614 GR  |   3 A$main$9628        3616 GR
  3 A$main$9633        3618 GR  |   3 A$main$9634        361A GR
  3 A$main$9635        361C GR  |   3 A$main$9641        3620 GR
  3 A$main$9642        3623 GR  |   3 A$main$9643        3626 GR
  3 A$main$9644        3628 GR  |   3 A$main$9645        362B GR
  3 A$main$9646        362F GR  |   3 A$main$9647        3632 GR
  3 A$main$9653        3636 GR  |   3 A$main$9654        3639 GR
  3 A$main$9655        363B GR  |   3 A$main$9656        363E GR
  3 A$main$9657        3640 GR  |   3 A$main$9658        3643 GR
  3 A$main$9659        3646 GR  |   3 A$main$9660        3649 GR
  3 A$main$9661        364B GR  |   3 A$main$9666        364D GR
  3 A$main$9667        3650 GR  |   3 A$main$9668        3652 GR
  3 A$main$9669        3655 GR  |   3 A$main$967         0567 GR
  3 A$main$9670        3657 GR  |   3 A$main$9671        365A GR
  3 A$main$9672        365D GR  |   3 A$main$9673        3660 GR
  3 A$main$9674        3662 GR  |   3 A$main$9679        3664 GR
  3 A$main$968         056A GR  |   3 A$main$9680        3667 GR
  3 A$main$9681        3669 GR  |   3 A$main$9682        366B GR
  3 A$main$9683        366C GR  |   3 A$main$9684        366E GR
  3 A$main$9685        3670 GR  |   3 A$main$9691        3672 GR
  3 A$main$9692        3674 GR  |   3 A$main$9693        3676 GR
  3 A$main$9694        3678 GR  |   3 A$main$9695        367A GR
  3 A$main$9701        367C GR  |   3 A$main$9702        367E GR
  3 A$main$9703        3682 GR  |   3 A$main$9704        3684 GR
  3 A$main$9709        3688 GR  |   3 A$main$9710        368A GR
  3 A$main$9711        368C GR  |   3 A$main$9721        3690 GR
  3 A$main$9723        3693 GR  |   3 A$main$9724        3695 GR
  3 A$main$9725        3697 GR  |   3 A$main$9726        369B GR
  3 A$main$9727        369D GR  |   3 A$main$9728        369F GR
  3 A$main$973         056D GR  |   3 A$main$9734        36A2 GR
  3 A$main$9739        36A5 GR  |   3 A$main$974         056E GR
  3 A$main$9745        36A8 GR  |   3 A$main$975         0572 GR
  3 A$main$9750        36AB GR  |   3 A$main$9751        36AD GR
  3 A$main$9756        36B0 GR  |   3 A$main$9762        36B3 GR
  3 A$main$9767        36B6 GR  |   3 A$main$9773        36B9 GR
  3 A$main$9778        36BC GR  |   3 A$main$9779        36BF GR
  3 A$main$978         0575 GR  |   3 A$main$9784        36C2 GR
  3 A$main$9785        36C4 GR  |   3 A$main$979         0577 GR
  3 A$main$9792        36C7 GR  |   3 A$main$9793        36CA GR
  3 A$main$9798        36CD GR  |   3 A$main$9799        36CE GR
  3 A$main$9804        36D2 GR  |   3 A$main$9805        36D4 GR
  3 A$main$9810        36D7 GR  |   3 A$main$9816        36DA GR
  3 A$main$9817        36DC GR  |   3 A$main$9822        36DF GR
  3 A$main$9823        36E2 GR  |   3 A$main$9829        36E5 GR
  3 A$main$9830        36E7 GR  |   3 A$main$9835        36EA GR
  3 A$main$9836        36ED GR  |   3 A$main$9837        36EF GR
  3 A$main$9838        36F2 GR  |   3 A$main$9843        36F4 GR
  3 A$main$9849        36F7 GR  |   3 A$main$9850        36FA GR
  3 A$main$9855        36FD GR  |   3 A$main$9860        3700 GR
  3 A$main$9861        3703 GR  |   3 A$main$9862        3706 GR
  3 A$main$9867        3709 GR  |   3 A$main$9868        370C GR
  3 A$main$9873        370F GR  |   3 A$main$9874        3712 GR
  3 A$main$9875        3715 GR  |   3 A$main$9876        3718 GR
  3 A$main$988         0579 GR  |   3 A$main$9881        371B GR
  3 A$main$9882        371E GR  |   3 A$main$9887        3721 GR
  3 A$main$9888        3724 GR  |   3 A$main$9893        3727 GR
  3 A$main$9894        372A GR  |   3 A$main$9899        372D GR
  3 A$main$9900        3730 GR  |   3 A$main$9901        3733 GR
  3 A$main$9902        3736 GR  |   3 A$main$9907        3739 GR
  3 A$main$9908        373C GR  |   3 A$main$9909        373F GR
  3 A$main$9910        3741 GR  |   3 A$main$9911        3743 GR
  3 A$main$9912        3745 GR  |   3 A$main$9913        3746 GR
  3 A$main$9914        3748 GR  |   3 A$main$9915        374C GR
  3 A$main$9916        3750 GR  |   3 A$main$9917        3753 GR
  3 A$main$9918        3756 GR  |   3 A$main$9919        3759 GR
  3 A$main$9920        375C GR  |   3 A$main$9921        375F GR
  3 A$main$9927        3762 GR  |   3 A$main$9928        3765 GR
  3 A$main$9929        3768 GR  |   3 A$main$993         057C GR
  3 A$main$9930        376B GR  |   3 A$main$9931        376E GR
  3 A$main$9932        3771 GR  |   3 A$main$9933        3774 GR
  3 A$main$9934        3777 GR  |   3 A$main$9935        377A GR
  3 A$main$9936        377D GR  |   3 A$main$9937        3780 GR
  3 A$main$9938        3783 GR  |   3 A$main$9939        3786 GR
  3 A$main$994         057E GR  |   3 A$main$9940        3789 GR
  3 A$main$9941        378C GR  |   3 A$main$9942        378F GR
  3 A$main$9943        3792 GR  |   3 A$main$9944        3795 GR
  3 A$main$9945        3798 GR  |   3 A$main$9946        379B GR
  3 A$main$9951        379E GR  |   3 A$main$9952        37A1 GR
  3 A$main$9953        37A4 GR  |   3 A$main$9954        37A6 GR
  3 A$main$9955        37A8 GR  |   3 A$main$9956        37AA GR
  3 A$main$9957        37AB GR  |   3 A$main$9958        37AD GR
  3 A$main$9959        37B1 GR  |   3 A$main$9960        37B3 GR
  3 A$main$9961        37B6 GR  |   3 A$main$9962        37B9 GR
  3 A$main$9963        37BC GR  |   3 A$main$9964        37BF GR
  3 A$main$9966        37C2 GR  |   3 A$main$9967        37C5 GR
  3 A$main$9968        37C8 GR  |   3 A$main$9969        37CB GR
  3 A$main$9970        37CE GR  |   3 A$main$9971        37D1 GR
  3 A$main$9972        37D4 GR  |   3 A$main$9973        37D7 GR
  3 A$main$9974        37DA GR  |   3 A$main$9975        37DD GR
  3 A$main$9976        37E0 GR  |   3 A$main$9977        37E3 GR
  3 A$main$9978        37E6 GR  |   3 A$main$9980        37E9 GR
  3 A$main$9981        37EC GR  |   3 A$main$9982        37EF GR
  3 A$main$9983        37F2 GR  |   3 A$main$9984        37F5 GR
  3 A$main$9985        37F8 GR  |   3 A$main$9986        37FB GR
  3 A$main$9987        37FE GR  |   3 A$main$9988        3801 GR
  3 A$main$999         0581 GR  |   3 A$main$9990        3804 GR
  3 A$main$9991        3806 GR  |   3 A$main$9992        3808 GR
  3 A$main$9993        380A GR  |   3 L10                04DD R
  3 L100               0F44 R   |   3 L101               0F18 R
  3 L102               0F29 R   |   3 L104               0F38 R
  3 L105               0F48 R   |   3 L106               0D99 R
  3 L107               0D9E R   |   3 L108               0DAC R
  3 L11                04DD R   |   3 L110               1264 R
  3 L111               0DFC R   |   3 L112               1528 R
  3 L114               0DF3 R   |   3 L118               1605 R
  3 L12                050C R   |   3 L127               1324 R
  3 L129               134A R   |   3 L13                051A R
  3 L130               1332 R   |   3 L132               1385 R
  3 L133               0E13 R   |   3 L136               0FF6 R
  3 L137               0FD0 R   |   3 L138               0F6E R
  3 L139               0F78 R   |   3 L14                0528 R
  3 L140               0F7F R   |   3 L141               0F8E R
  3 L142               0F9A R   |   3 L143               0FA6 R
  3 L144               0FAF R   |   3 L145               0FBB R
  3 L146               0FBE R   |   3 L148               114B R
  3 L149               1157 R   |   3 L15                0534 R
  3 L150               0F4F R   |   3 L151               110E R
  3 L152               10CB R   |   3 L153               1086 R
  3 L155               14A7 R   |   3 L156               1170 R
  3 L157               14A7 R   |   3 L158               14C8 R
  3 L16                0543 R   |   3 L160               1630 R
  3 L161               1612 R   |   3 L164               15E8 R
  3 L165               1615 R   |   3 L166               1633 R
  3 L167               169A R   |   3 L168               14E9 R
  3 L169               1697 R   |   3 L17                0552 R
  3 L170               15E8 R   |   3 L171               14CB R
  3 L172               164F R   |   3 L173               169D R
  3 L174               16C0 R   |   3 L176               1416 R
  3 L177               141C R   |   3 L179               10FE R
  3 L18                0564 R   |   3 L180               13C3 R
  3 L181               110B R   |   3 L182               13ED R
  3 L184               0EF2 R   |   3 L185               0E47 R
  3 L186               0E76 R   |   3 L188               0EAB R
  3 L19                0564 R   |   3 L190               0ED2 R
  3 L192               0E29 R   |   3 L197               13B2 R
  3 L198               11AC R   |   3 L199               0E47 R
  3 L2                 04F4 R   |   3 L20                04EF R
  3 L200               1581 R   |   3 L201               15B1 R
  3 L205               0F18 R   |   3 L208               0EE4 R
  3 L210               0F5A R   |   3 L212               1098 R
  3 L213               13A4 R   |   3 L214               117E R
  3 L215               148D R   |   3 L216               1500 R
  3 L217               1514 R   |   3 L218               1272 R
  3 L219               12A8 R   |   3 L220               11B7 R
  3 L222               1031 R   |   3 L223               1073 R
  3 L224               1090 R   |   3 L225               1191 R
  3 L226               1244 R   |   3 L227               0FE7 R
  3 L228               1394 R   |   3 L229               139D R
  3 L23                0476 R   |   3 L230               1039 R
  3 L231               0F3B R   |   3 L232               15C7 R
  3 L233               16C3 R   |   3 L234               0FDF R
  3 L235               0FF6 R   |   3 L236               107B R
  3 L237               160B R   |   3 L238               16B7 R
  3 L239               16BB R   |   3 L24                04FB R
  3 L240               1603 R   |   3 L241               166B R
  3 L242               1530 R   |   3 L243               155D R
  3 L244               1683 R   |   3 L245               125C R
  3 L247               16D9 R   |   3 L249               1713 R
  3 L250               1725 R   |   3 L251               16FF R
  3 L252               170D R   |   3 L254               1769 R
  3 L255               177A R   |   3 L256               173F R
  3 L257               178D R   |   3 L259               1717 R
  3 L26                0614 R   |   3 L260               1750 R
  3 L261               1759 R   |   3 L262               179E R
  3 L263               17A7 R   |   3 L264               17B0 R
  3 L266               1921 R   |   3 L269               1927 R
  3 L27                0602 R   |   3 L270               193A R
  3 L272               1AE3 R   |   3 L273               1B7A R
  3 L274               1B05 R   |   3 L275               1B16 R
  3 L276               1B27 R   |   3 L277               1B36 R
  3 L278               1B48 R   |   3 L279               1B59 R
  3 L28                05C5 R   |   3 L280               1B6C R
  3 L281               1B6C R   |   3 L282               1CB5 R
  3 L284               1BE5 R   |   3 L285               1D19 R
  3 L287               1CD4 R   |   3 L288               1953 R
  3 L289               1CFD R   |   3 L29                05CF R
  3 L290               1D23 R   |   3 L291               1D6C R
  3 L294               1A43 R   |   3 L295               19CE R
  3 L296               19DF R   |   3 L297               19F0 R
  3 L298               19FF R   |   3 L299               1A11 R
  3 L3                 04E7 R   |   3 L30                05D9 R
  3 L300               1A22 R   |   3 L301               1A35 R
  3 L302               1A35 R   |   3 L303               1C97 R
  3 L305               1CCA R   |   3 L306               1A5F R
  3 L308               1A83 R   |   3 L309               1CCF R
  3 L31                05E3 R   |   3 L311               1953 R
  3 L312               1A9F R   |   3 L313               192C R
  3 L314               1BDD R   |   3 L315               1AB1 R
  3 L316               19BA R   |   3 L317               1E3D R
  3 L318               1E2A R   |   3 L319               1AF1 R
  3 L32                05EE R   |   3 L320               1EA5 R
  3 L321               1E8B R   |   3 L322               1E86 R
  3 L323               1E9B R   |   3 L326               24D7 R
  3 L327               24B2 R   |   3 L328               26BD R
  3 L329               2817 R   |   3 L33                058B R
  3 L330               2754 R   |   3 L331               24D7 R
  3 L332               264E R   |   3 L333               260F R
  3 L334               25EA R   |   3 L335               2709 R
  3 L336               26DC R   |   3 L337               24C3 R
  3 L338               26C6 R   |   3 L339               2D41 R
  3 L34                0596 R   |   3 L340               2D70 R
  3 L341               24B3 R   |   3 L342               2B28 R
  3 L343               283B R   |   3 L347               2754 R
  3 L348               275A R   |   3 L35                059C R
  3 L350               2764 R   |   3 L351               277C R
  3 L352               278E R   |   3 L353               27B4 R
  3 L354               27DE R   |   3 L355               27E8 R
  3 L356               27F1 R   |   3 L359               24E6 R
  3 L36                05AE R   |   3 L362               24FF R
  3 L363               259C R   |   3 L364               2527 R
  3 L365               2538 R   |   3 L366               2549 R
  3 L367               2558 R   |   3 L368               256A R
  3 L369               257B R   |   3 L37                0604 R
  3 L370               258E R   |   3 L371               258E R
  3 L373               25A4 R   |   3 L375               25B3 R
  3 L378               2667 R   |   3 L379               2E91 R
  3 L38                05B1 R   |   3 L381               2672 R
  3 L382               305B R   |   3 L383               2F53 R
  3 L385               2915 R   |   3 L387               291A R
  3 L388               2683 R   |   3 L389               2CA3 R
  3 L39                0656 R   |   3 L390               2DE3 R
  3 L391               2E43 R   |   3 L392               2D0E R
  3 L395               2E61 R   |   3 L396               2FE1 R
  3 L397               3170 R   |   3 L398               2FF5 R
  3 L399               2B4C R   |   3 L4                 0487 R
  3 L40                0660 R   |   3 L400               2C89 R
  3 L401               2B60 R   |   3 L402               2B7A R
  3 L404               2B7D R   |   3 L407               2D75 R
  3 L408               290A R   |   3 L41                066A R
  3 L410               2E35 R   |   3 L411               2C37 R
  3 L412               3004 R   |   3 L413               3077 R
  3 L415               319D R   |   3 L416               3106 R
  3 L417               30BE R   |   3 L419               2F62 R
  3 L42                0674 R   |   3 L420               2FB1 R
  3 L422               2FA6 R   |   3 L423               24B2 R
  3 L424               2927 R   |   3 L425               2E2A R
  3 L426               2DF9 R   |   3 L427               2A1D R
  3 L43                067F R   |   3 L432               2C09 R
  3 L44                0618 R   |   3 L440               2F68 R
  3 L442               2800 R   |   3 L443               24B8 R
  3 L444               25D8 R   |   3 L445               25C7 R
  3 L446               28EC R   |   3 L447               2513 R
  3 L448               25C0 R   |   3 L449               28C4 R
  3 L45                0623 R   |   3 L450               289B R
  3 L451               2B91 R   |   3 L452               2BB7 R
  3 L453               28F5 R   |   3 L454               291F R
  3 L455               2B1D R   |   3 L456               28F9 R
  3 L457               2C21 R   |   3 L458               2D13 R
  3 L459               28E4 R   |   3 L46                0629 R
  3 L460               27FD R   |   3 L461               2B9A R
  3 L462               2C17 R   |   3 L463               2D3B R
  3 L464               2B72 R   |   3 L465               2DD0 R
  3 L466               2E86 R   |   3 L467               2F58 R
  3 L468               3012 R   |   3 L469               3064 R
  3 L47                063B R   |   3 L470               30FC R
  3 L471               313F R   |   3 L473               3248 R
  3 L474               34BB R   |   3 L475               325F R
  3 L476               347F R   |   3 L478               3305 R
  3 L48                063E R   |   3 L480               3515 R
  3 L482               33F5 R   |   3 L484               3419 R
  3 L487               3419 R   |   3 L49                060F R
  3 L494               34D4 R   |   3 L495               349F R
  3 L497               3309 R   |   3 L498               34A6 R
  3 L499               33A7 R   |   3 L5                 0495 R
  3 L500               34AD R   |   3 L501               3322 R
  3 L502               332B R   |   3 L503               3334 R
  3 L504               333D R   |   3 L505               3346 R
  3 L506               334F R   |   3 L507               3358 R
  3 L508               3361 R   |   3 L509               336A R
  3 L51                05FB R   |   3 L510               3373 R
  3 L511               337C R   |   3 L512               33AA R
  3 L513               351E R   |   3 L516               359E R
  3 L517               3693 R   |   3 L518               35A6 R
  3 L519               3636 R   |   3 L52                068C R
  3 L520               3690 R   |   3 L521               3672 R
  3 L522               367C R   |   3 L524               36F7 R
  3 L525               3271 R   |   3 L526               37C2 R
  3 L527               3762 R   |   3 L528               37E9 R
  3 L530               32BA R   |   3 L531               32CB R
  3 L532               32F9 R   |   3 L534               35A6 R
  3 L535               35AB R   |   3 L537               32EA R
  3 L54                06E5 R   |   3 L540               33BF R
  3 L541               3556 R   |   3 L542               3804 R
  3 L543               3507 R   |   3 L544               3512 R
  3 L545               3444 R   |   3 L546               3459 R
  3 L547               3461 R   |   3 L548               36B3 R
  3 L549               3467 R   |   3 L55                06EE R
  3 L550               3453 R   |   3 L551               3477 R
  3 L552               36A8 R   |   3 L553               36A2 R
  3 L554               344A R   |   3 L555               34B0 R
  3 L556               34E8 R   |   3 L557               36B9 R
  3 L558               34F4 R   |   3 L559               36DA R
  3 L56                06F7 R   |   3 L560               35E0 R
  3 L561               3620 R   |   3 L562               3549 R
  3 L563               36E5 R   |   3 L57                0700 R
  3 L58                0709 R   |   3 L59                0AB5 R
  3 L6                 04A3 R   |   3 L60                0726 R
  3 L61                073C R   |   3 L62                0752 R
  3 L63                0766 R   |   3 L64                080C R
  3 L65                08B0 R   |   3 L66                08B6 R
  3 L67                08D1 R   |   3 L68                08D8 R
  3 L69                08F1 R   |   3 L7                 04AF R
  3 L70                090A R   |   3 L71                096E R
  3 L72                09BC R   |   3 L73                0A05 R
  3 L74                0A4B R   |   3 L75                07A4 R
  3 L77                07C6 R   |   3 L8                 04BE R
  3 L80                07DA R   |   3 L81                07D7 R
  3 L82                0AAD R   |   3 L83                07E1 R
  3 L85                078D R   |   3 L86                07AF R
  3 L87                0AC6 R   |   3 L88                0AE6 R
  3 L89                0ADE R   |   3 L9                 04CD R
  3 L90                0AD6 R   |   3 L91                0ACE R
  3 L92                0A65 R   |   3 L93                0A7A R
  3 L94                0A92 R   |   3 L95                0F4A R
  3 L97                1098 R   |   3 L98                0F03 R
  3 L99                0D77 R   |   3 LC0                0008 R
  3 LC1                000E R   |   3 LC10               0048 R
  3 LC100              0B0B R   |   3 LC101              0B1C R
  3 LC102              0B34 R   |   3 LC103              0B46 R
  3 LC104              0B64 R   |   3 LC105              0B79 R
  3 LC106              0B93 R   |   3 LC107              0B9D R
  3 LC108              0BAE R   |   3 LC109              0BBC R
  3 LC11               004E R   |   3 LC110              0BCD R
  3 LC111              0BE0 R   |   3 LC112              0BFC R
  3 LC113              0C01 R   |   3 LC114              0C07 R
  3 LC115              0C21 R   |   3 LC116              0C27 R
  3 LC117              0C2D R   |   3 LC118              0C32 R
  3 LC119              0C37 R   |   3 LC12               0054 R
  3 LC120              0C3D R   |   3 LC121              0C4B R
  3 LC122              0C62 R   |   3 LC123              0C6D R
  3 LC124              0C8A R   |   3 LC125              0C97 R
  3 LC126              0CAF R   |   3 LC127              0CC4 R
  3 LC128              0CD9 R   |   3 LC129              0CEF R
  3 LC13               005B R   |   3 LC130              0D03 R
  3 LC131              0D1E R   |   3 LC132              0D35 R
  3 LC133              0D52 R   |   3 LC134              16CA R
  3 LC135              17B9 R   |   3 LC136              17D7 R
  3 LC137              17E9 R   |   3 LC138              17F6 R
  3 LC139              17FF R   |   3 LC14               0060 R
  3 LC140              180D R   |   3 LC141              1828 R
  3 LC142              183A R   |   3 LC143              185C R
  3 LC144              186D R   |   3 LC145              1877 R
  3 LC146              187F R   |   3 LC147              1890 R
  3 LC148              18B1 R   |   3 LC149              18C0 R
  3 LC15               0069 R   |   3 LC150              18D3 R
  3 LC151              18DC R   |   3 LC152              18EB R
  3 LC153              1906 R   |   3 LC154              1EAF R
  3 LC155              1EB7 R   |   3 LC156              1ED3 R
  3 LC157              1EE1 R   |   3 LC158              1EFE R
  3 LC159              1F1E R   |   3 LC16               006F R
  3 LC160              1F22 R   |   3 LC161              1F30 R
  3 LC162              1F48 R   |   3 LC163              1F69 R
  3 LC164              1F8C R   |   3 LC165              1FA0 R
  3 LC166              1FC6 R   |   3 LC167              1FDF R
  3 LC168              1FFA R   |   3 LC169              2015 R
  3 LC17               0077 R   |   3 LC170              201A R
  3 LC171              201D R   |   3 LC172              2022 R
  3 LC173              203E R   |   3 LC174              2053 R
  3 LC175              206D R   |   3 LC176              207D R
  3 LC177              2097 R   |   3 LC178              20AB R
  3 LC179              20C7 R   |   3 LC18               007F R
  3 LC180              20DA R   |   3 LC181              20F4 R
  3 LC182              2109 R   |   3 LC183              211C R
  3 LC184              212C R   |   3 LC185              2142 R
  3 LC186              2151 R   |   3 LC187              2167 R
  3 LC188              217B R   |   3 LC189              2193 R
  3 LC19               0085 R   |   3 LC190              21AE R
  3 LC191              21D3 R   |   3 LC192              21E9 R
  3 LC193              2208 R   |   3 LC194              2217 R
  3 LC195              221E R   |   3 LC196              2235 R
  3 LC197              224C R   |   3 LC198              226D R
  3 LC199              2290 R   |   3 LC2                0015 R
  3 LC20               00B4 R   |   3 LC200              22AF R
  3 LC201              22C0 R   |   3 LC202              22C4 R
  3 LC203              22D4 R   |   3 LC204              22F6 R
  3 LC205              230B R   |   3 LC206              230F R
  3 LC207              2322 R   |   3 LC208              2336 R
  3 LC209              233B R   |   3 LC21               00B8 R
  3 LC210              2358 R   |   3 LC211              2377 R
  3 LC212              238C R   |   3 LC213              239F R
  3 LC214              23C5 R   |   3 LC215              23E8 R
  3 LC216              2402 R   |   3 LC217              2427 R
  3 LC218              2436 R   |   3 LC219              243B R
  3 LC22               00BC R   |   3 LC220              2461 R
  3 LC221              246C R   |   3 LC222              2489 R
  3 LC223              31A2 R   |   3 LC224              31A4 R
  3 LC225              31AC R   |   3 LC226              31B7 R
  3 LC227              31C8 R   |   3 LC228              31D1 R
  3 LC229              31E4 R   |   3 LC23               00C0 R
  3 LC230              31F4 R   |   3 LC231              3205 R
  3 LC232              3217 R   |   3 LC233              322E R
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
  3 LC86               0415 R   |   3 LC87               041A R
  3 LC88               0420 R   |   3 LC89               0424 R
  3 LC9                0042 R   |   3 LC90               042D R
  3 LC91               0433 R   |   3 LC92               043C R
  3 LC93               0441 R   |   3 LC94               0448 R
  3 LC95               0693 R   |   3 LC96               06A2 R
  3 LC97               06AD R   |   3 LC98               06B8 R
  3 LC99               0AEE R   |   2 _ACCA              0257 GR
  2 _ACCB              0258 GR  |   2 _CHARAC            024E GR
  2 _COEFCT            0224 GR  |   2 _COEFPT            0233 GR
  2 _FP0EXP            021E GR  |   2 _FP0SGN            0223 GR
  2 _FP1EXP            022B GR  |   2 _FP1SGN            0230 GR
  2 _FPA0              021F GR  |   2 _FPA1              022C GR
  2 _FPA2              0236 GR  |   2 _FPCARY            022A GR
  2 _FPSBYT            0232 GR  |   2 _PLY_AKY_CHANN     026C GR
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
    _Vec_Joy_1_X       **** GX  |     _Vec_Joy_1_Y       **** GX
    _Vec_Loop_Coun     **** GX  |     _Vec_Num_Playe     **** GX
    _Vec_Text_HW       **** GX  |     _Vec_Text_Widt     **** GX
    __Do_Sound         **** GX  |     __Intensity_a      **** GX
  2 __TMPTR1           0235 GR  |   2 __XC               0105 GR
  2 __YC               0106 GR  |     ___Intensity_5     **** GX
    ___Joy_Digital     **** GX  |     ___Read_Btns       **** GX
    ___Wait_Recal      **** GX  |   2 ___a               01FD GR
  2 ___b               01FE GR  |   2 ___c               01FF GR
    ___mulsi3          **** GX  |     ___udivsi3         **** GX
  2 ___x               01FC GR  |   2 __a                01F9 GR
  2 __b                01FA GR  |   2 __c                01FB GR
    __fi_s             **** GX  |     __fl               **** GX
    __fl_s             **** GX  |     __fll_s            **** GX
    __fs               **** GX  |     __fsi2_s           **** GX
    __fsl_s            **** GX  |     __ltoa             **** GX
  2 __x                01F8 GR  |   2 __x_               0104 GR
  2 __y_               0103 GR  |   2 _above             0020 GR
  2 _box               00DF GR  |   3 _boxColors         040D GR
    _castSpell         **** GX  |   2 _ch                00E3 GR
    _checkXP           **** GX  |     _clearMonsterS     **** GX
    _createCharact     **** GX  |   2 _cs                00E5 GR
  2 _currentSFX_1      0252 GR  |   2 _cx                00BF GR
  2 _cy                00C0 GR  |   2 _cz                00E7 GR
  2 _db                00FA GR  |     _displayRound      **** GX
    _displayStatus     **** GX  |   2 _doEffectStatu     0076 GR
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _dr                00FC GR  |   2 _effectOffsetX     007B GR
  2 _effectOffsetY     007A GR  |   2 _effectTimer       0079 GR
    _elevator          **** GX  |   2 _elevatorY         0023 GR
  3 _environment_s     044C GR  |   2 _ex                00B9 GR
  2 _fillMap           007C GR  |   2 _flashAvailabl     0088 GR
  3 _fountain          03E9 GR  |   2 _fpackQ            0219 GR
  2 _fpackX0x          0200 GR  |   2 _fpackY0y          0205 GR
  2 _fpackZ0z          020A GR  |   2 _fpacktmp1         020F GR
  2 _fpacktmp2         0214 GR  |   2 _frequencyRegi     025A GR
  2 _gd                00E8 GR  |   3 _handleEncount     0D66 GR
  3 _handleMovemen     16CD GR  |   3 _handleSpecial     2495 GR
  3 _handleTreasur     1912 GR  |   2 _hp                00B6 GR
  2 _inElevator        0022 GR  |     _initBox           **** GX
  2 _initFlag1         025C GR  |   2 _initFlag2         025D GR
  2 _initFlag3         025E GR  |   2 _initSoundNo       0026 GR
    _initVars          **** GX  |   3 _inputNumber       06BD GR
  2 _inventory         00CB GR  |   3 _items             0161 GR
  2 _l                 0100 GR  |   2 _lastX             0101 GR
  2 _lastY             0102 GR  |   2 _lightChange       0024 GR
  2 _lltmp             0084 GR  |   2 _localTimer        0028 GR
  2 _ltmp              0082 GR  |   2 _lv                00B8 GR
  2 _m                 00F7 GR  |   3 _main              323F GR
  2 _mb                00FD GR  |   2 _mh                00F8 GR
  2 _ml                00FF GR  |   3 _mo                008C GR
    _monsterOnStac     **** GX  |     _monsterOnStac     **** GX
    _monsterOnStac     **** GX  |   3 _msg               0000 GR
  2 _msgLine           0107 GR  |   2 _msg_1             0158 GR
  2 _msg_2             0180 GR  |   2 _msg_3             01A8 GR
  2 _msg_4             01D0 GR  |     _mulhi3            **** GX
  2 _pa                00FB GR  |     _pause             **** GX
  2 _printCharacte     0077 GR  |   2 _printDungeon      0073 GR
  2 _printEnvironm     0074 GR  |     _printMessage      **** GX
  2 _printTreasure     0075 GR  |   2 _printfEffect      0078 GR
  2 _r7                025B GR  |     _randomXP          **** GX
  2 _realAbove         0021 GR  |   2 _s                 00C5 GR
  2 _screen            0000 GR  |     _setRandSeedNP     **** GX
  2 _sf                00EC GR  |   2 _sfx_doframe_i     0254 GR
  2 _sfx_pointer_1     0250 GR  |   2 _sfx_status_1      024F GR
  2 _specialAction     0025 GR  |   3 _spellNames        0398 GR
  3 _spellNames1       01BD GR  |   3 _spellNames2       020B GR
  3 _spellNames3       027C GR  |   3 _spellNames4       02DA GR
  3 _spellNames5       032F GR  |   3 _spellNames6       038C GR
  2 _stackM            0108 GR  |   2 _stackMH           0130 GR
  2 _stackML           011C GR  |   3 _stats             00CC GR
  2 _stringBuffer1     0033 GR  |   2 _stringBuffer4     0029 GR
  2 _stringBuffer4     003F GR  |   2 _stringBuffer6     002D GR
  2 _stringBufferE     0067 GR  |   2 _su                00BD GR
    _subBank0          **** GX  |     _syncPrintStrd     **** GX
  3 _testForButton     0460 GR  |   3 _testForInput      0575 GR
  2 _tg                00C1 GR  |   2 _timer             0027 GR
  2 _tmp               007E GR  |   2 _tmp2              007F GR
  2 _tmp_box           00B2 GR  |   2 _tmp_cx            0092 GR
  2 _tmp_cy            0093 GR  |   2 _tmp_ex            008C GR
  2 _tmp_hp            0089 GR  |   2 _tmp_inventory     009E GR
  2 _tmp_lv            008B GR  |   2 _tmp_s             0098 GR
  2 _tmp_su            0090 GR  |   2 _tmp_tg            0094 GR
  3 _treasure          03C3 GR  |   2 _ultmp             0080 GR
  2 _un                00FE GR  |   2 _utmp              007D GR
  2 _volumeRegiste     0259 GR  |     _vstrcpy           **** GX
    _vstrlen           **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size  278   flags    0
   3 .text            size 380D   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

