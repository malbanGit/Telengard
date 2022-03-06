                              1  .module titleScenario.s
                              2  .area .text
                              3 
                     0009     4 SPRITE_SCALE        =        0x09; 80 highest possible value
                     0001     5 SHITREG_POKE_VALUE  =        0x01 
                              6 
                              7 
                              8 ; PC not usable :-)
                              9 
                             10 ; cmpx #4
                             11 ; pshs d,y,x,pc,u,cc;16
                             12 ; puls d,y,x,pc,u,cc; 16
                             13 ; pshs y,x,pc,u,d;15
                             14 ; puls y,x,pc,u,d; 15
                             15 ; pshs y,x,pc,u,cc;14
                             16 ; puls y,x,pc,u,cc; 14
                             17 ; pshs a,x,pc,u,cc;13
                             18 ; puls a,x,pc,u,cc;13
                             19 ; pshs x,pc,u,cc;12
                             20 ; puls x,pc,u,cc;12
                             21 ; pshs pc,u,d;11
                             22 ; puls pc,u,d;11
                             23 ; pshs pc,u,cc;10
                             24 ; puls pc,u,cc;10
                             25 ; pshs u,d;9
                             26 ; puls u,d;9
                             27 ; pshs u,cc;8
                             28 ; puls u,cc;8
                             29 ; pshs u;7
                             30 ; puls u;7
                             31 ; pshs cc;6
                             32 ; puls cc;6
                             33 ; tfr a,a; 6
                             34 ; brn 0; 3
                             35 ; NOP ; 2
                             36 
                             37 
                             38  
                             39 
                             40 ;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
                             41 ;***************************************************************************
                             42 ; DEFINE SECTION
                             43 ;***************************************************************************
                     C829    44 Vec_Pattern         =      0xC829                        ;Dot pattern (bits) 
                     FD0D    45 music1              =      0xFD0D 
                     D000    46 VIA_port_b          =      0xD000                        ;VIA port B data I/O register 
                     D001    47 VIA_port_a          =      0xD001                        ;VIA port A data I/O register (handshaking) 
                     D004    48 VIA_t1_cnt_lo       =      0xD004                        ;VIA timer 1 count register lo (scale factor) 
                     D005    49 VIA_t1_cnt_hi       =      0xD005                        ;VIA timer 1 count register hi 
                     D00A    50 VIA_shift_reg       =      0xD00A                        ;VIA shift register 
                     D00C    51 VIA_cntl            =      0xD00C                        ;VIA control register 
                     D00D    52 VIA_int_flags       =      0xD00D                        ;VIA interrupt flags register 
                     F2A5    53 Intensity_5F        =      0xF2A5                        ; 
                     F192    54 Wait_Recal          =      0xF192                        ; 
                     F312    55 Moveto_d            =      0xF312                        ; 
                     C81B    56 Vec_Joy_1_X         =      0xC81B                        ;Joystick 1 left/right 
                     F1F8    57 Joy_Digital         =      0xF1F8 
                             58 ;***************************************************************************
                             59 ; HEADER SECTION
                             60 ;***************************************************************************
                             61 ; The cartridge ROM starts at address 0
                             62                     .area .text     
                             63                     .setdp   0xd000,_DATA 
                             64  .globl _drawTitle
   485E                      65 _drawTitle: 
   485E 34 60         [ 7]   66     pshs u,y
                             67  .globl redoFromStart
   4860                      68 redoFromStart: 
   4860 10 8E 4C 53   [ 4]   69                     LDy      #__SMVB_sceneData                ; address of data 
                             70  .globl nextScenePart
   4864                      71 nextScenePart: 
   4864 86 09         [ 2]   72                     lda      #SPRITE_SCALE 
   4866 B7 D0 04      [ 5]   73                     sta      VIA_t1_cnt_lo 
   4869 86 CE         [ 2]   74                     LDA      #0xCE                         ;Blank low, zero high? 
   486B 97 0C         [ 4]   75                     STA      *VIA_cntl 
   486D EE A1         [ 8]   76                     LDU      ,y++ 
   486F 27 04         [ 3]   77                     beq      drawTtileDone
   4871 8D 04         [ 7]   78                     bsr      drawSmart 
   4873 20 EF         [ 3]   79                     BRA      nextScenePart
                             80  .globl drawTtileDone
   4875                      81 drawTtileDone:
   4875 35 E0         [ 8]   82     puls u,y,pc
                             83 
                             84 ;***************************************************************************
                             85 ; ROUTINE SECTION
                             86 ;***************************************************************************
                             87 ; Warning - direct line found!
                             88 ;                    direct   0xd0 
                             89 ;***************************************************************************
                             90 
                             91 ; for scale 7 
                             92 ; we need WAIT6 after a poke to hi
                             93 ; followd directly by a set_y_int
                             94 ; todo 
                             95 ; last draw could contain 0xF in A
                             96 ; than load not needed - attention 
                             97 ; when cycles are not done for load, than shift value might be needed 2 higher!
                             98 ; also in X could be some sensible value in X for one of the other 
                             99 ;SMVB_lastDraw_rts2                                ;#isfunction  
                            100 ; list format
                            101 ; y pos byte -> REG A
                            102 ; VIA_B for x reg = 01 *256 + x pos byte -> REG X
                            103 ; pointer to draw function -> PC
                            104 ; 5 bytes per "position" (except continuous)
                            105 ; reg A must be constantly == 0!
                            106 ; opti finding
                            107 ; a)  Findings T1 can be 2 cycles "off" -> smartlist max scale of "optimium" reduced from 9 to 7 scale :-(
                            108 ; b ) y and z sampling need up to 4 cycles to bare fruit (poke b reg)
                            109 ;     90% vectrex (guess) need 0 cycles
                            110 ;     95% vectrex are content with 2 cycles (1 nop)
                            111 ;     some few vectrex NEED 4 cycles!!! ARGH!
                            112 ; c)  std to reg b of via (Y Reg) does not always / everywhere work
                            113 ;
                            114 ;
                            115 ; delays needed for 5% of vectrex
                            116 ; cost on a "full" screen
                            117 ; about 2000 cycles
                            118 ;VECTREX_SAVE_DELAY  =        1 
                     0001   119 SHITREG_POKE_VALUE  =        0x01 
                            120 
                            121 
                            122 
                            123 
                            124 ;
                            125 
                            126 ;
                            127   
                            128 
                            129 
                            130 
                     0009   131 VB_SPRITE_SCALE     =        SPRITE_SCALE 
                            132 ; NOPS add one less, since PULL X is one cycle more than pull a!
                            133 ;***************************************************************************
                            134  .globl drawSmart
   4877                     135 drawSmart:                                            ;#isfunction  
   4877 4F            [ 2]  136                     clra     
   4878 37 94         [ 8]  137                     pulu     b,x,pc 
                            138 ;***************************************************************************
                            139 ;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
                            140 
                            141  .globl SMVB_continue_yd4_yStays_single
   487A                     142 SMVB_continue_yd4_yStays_single: ;#isfunction  
                            143  .globl SMVB_continue_yStays_single
   487A                     144 SMVB_continue_yStays_single:                               ;#isfunction  
   487A 9F 00         [ 5]  145                     stx      *VIA_port_b                  ; 5 
   487C 97 05         [ 4]  146                     sta      *VIA_t1_cnt_hi               ; 4 
                            147 ; macro call ->                     ADD_NOPS  
   487E 12            [ 2]  148  nop 
   487F 37 94         [ 8]  149                     pulu     b,x,pc 
                            150 
                            151 
                            152  .globl SMVB_continue7_single
   4881                     153 SMVB_continue7_single:                                  ;#isfunction  
                            154 ; macro call ->                     SET_Y_INT  
   4881 97 00         [ 4]  155                     sta      *VIA_port_b                  ; 4 
   4883 D7 01         [ 4]  156                     stb      *VIA_port_a                  ; 4 
                            157 ; macro call ->                     Y_DELAY                               ; 4 
                            158 ; macro call ->  Y_DELAY_4
   4885 12            [ 2]  159  nop 
   4886 12            [ 2]  160  nop 
                            161 ; macro call ->  ADD_BURST
                            162  
                            163 ; macro call ->  ADD_BURST
                            164  
   4887 9F 00         [ 5]  165                     stx      *VIA_port_b                  ; 5 
   4889 97 05         [ 4]  166                     sta      *VIA_t1_cnt_hi               ; 4 
                            167 ; macro call ->                     ADD_NOPS                              ; 21 
   488B 12            [ 2]  168  nop 
                            169 ; this is one pulu cycle more!
                            170 ; thus ADD_NOPS can be one cycle less!
                            171 ; minus 6!
   488C 37 14         [ 7]  172                     pulu     b,x                          ; 5+3 
                            173  .globl SMVB_continue6_single
   488E                     174 SMVB_continue6_single:                                  ;#isfunction  
                            175 ; macro call ->                     SET_Y_INT  
   488E 97 00         [ 4]  176                     sta      *VIA_port_b                  ; 4 
   4890 D7 01         [ 4]  177                     stb      *VIA_port_a                  ; 4 
                            178 ; macro call ->                     Y_DELAY                               ; 4 
                            179 ; macro call ->  Y_DELAY_4
   4892 12            [ 2]  180  nop 
   4893 12            [ 2]  181  nop 
                            182 ; macro call ->  ADD_BURST
                            183  
                            184 ; macro call ->  ADD_BURST
                            185  
   4894 9F 00         [ 5]  186                     stx      *VIA_port_b                  ; 5 
   4896 97 05         [ 4]  187                     sta      *VIA_t1_cnt_hi               ; 4 
                            188 ; macro call ->                     ADD_NOPS                              ; 21 
   4898 12            [ 2]  189  nop 
   4899 37 14         [ 7]  190                     pulu     b,x                          ; 5+3 
                            191  .globl SMVB_continue5_single
   489B                     192 SMVB_continue5_single:                                  ;#isfunction  
                            193 ; macro call ->                     SET_Y_INT  
   489B 97 00         [ 4]  194                     sta      *VIA_port_b                  ; 4 
   489D D7 01         [ 4]  195                     stb      *VIA_port_a                  ; 4 
                            196 ; macro call ->                     Y_DELAY                               ; 4 
                            197 ; macro call ->  Y_DELAY_4
   489F 12            [ 2]  198  nop 
   48A0 12            [ 2]  199  nop 
                            200 ; macro call ->  ADD_BURST
                            201  
                            202 ; macro call ->  ADD_BURST
                            203  
   48A1 9F 00         [ 5]  204                     stx      *VIA_port_b                  ; 5 
   48A3 97 05         [ 4]  205                     sta      *VIA_t1_cnt_hi               ; 4 
                            206 ; macro call ->                     ADD_NOPS                              ; 21 
   48A5 12            [ 2]  207  nop 
   48A6 37 14         [ 7]  208                     pulu     b,x                          ; 5+3 
                            209  .globl SMVB_continue4_single
   48A8                     210 SMVB_continue4_single:                                  ;#isfunction  
                            211 ; macro call ->                     SET_Y_INT  
   48A8 97 00         [ 4]  212                     sta      *VIA_port_b                  ; 4 
   48AA D7 01         [ 4]  213                     stb      *VIA_port_a                  ; 4 
                            214 ; macro call ->                     Y_DELAY                               ; 4 
                            215 ; macro call ->  Y_DELAY_4
   48AC 12            [ 2]  216  nop 
   48AD 12            [ 2]  217  nop 
                            218 ; macro call ->  ADD_BURST
                            219  
                            220 ; macro call ->  ADD_BURST
                            221  
   48AE 9F 00         [ 5]  222                     stx      *VIA_port_b                  ; 5 
   48B0 97 05         [ 4]  223                     sta      *VIA_t1_cnt_hi               ; 4 
                            224 ; macro call ->                     ADD_NOPS                              ; 21 
   48B2 12            [ 2]  225  nop 
   48B3 37 14         [ 7]  226                     pulu     b,x                          ; 5+3 
                            227  .globl SMVB_continue3_single
   48B5                     228 SMVB_continue3_single:                                  ;#isfunction  
                            229 ; macro call ->                     SET_Y_INT  
   48B5 97 00         [ 4]  230                     sta      *VIA_port_b                  ; 4 
   48B7 D7 01         [ 4]  231                     stb      *VIA_port_a                  ; 4 
                            232 ; macro call ->                     Y_DELAY                               ; 4 
                            233 ; macro call ->  Y_DELAY_4
   48B9 12            [ 2]  234  nop 
   48BA 12            [ 2]  235  nop 
                            236 ; macro call ->  ADD_BURST
                            237  
                            238 ; macro call ->  ADD_BURST
                            239  
   48BB 9F 00         [ 5]  240                     stx      *VIA_port_b                  ; 5 
   48BD 97 05         [ 4]  241                     sta      *VIA_t1_cnt_hi               ; 4 
                            242 ; macro call ->                     ADD_NOPS                              ; 21 
   48BF 12            [ 2]  243  nop 
   48C0 37 14         [ 7]  244                     pulu     b,x                          ; 5+3 
                            245  .globl SMVB_continue2_single
   48C2                     246 SMVB_continue2_single:                                  ;#isfunction  
                            247 ; macro call ->                     SET_Y_INT  
   48C2 97 00         [ 4]  248                     sta      *VIA_port_b                  ; 4 
   48C4 D7 01         [ 4]  249                     stb      *VIA_port_a                  ; 4 
                            250 ; macro call ->                     Y_DELAY                               ; 4 
                            251 ; macro call ->  Y_DELAY_4
   48C6 12            [ 2]  252  nop 
   48C7 12            [ 2]  253  nop 
                            254 ; macro call ->  ADD_BURST
                            255  
                            256 ; macro call ->  ADD_BURST
                            257  
   48C8 9F 00         [ 5]  258                     stx      *VIA_port_b                  ; 5 
   48CA 97 05         [ 4]  259                     sta      *VIA_t1_cnt_hi               ; 4 
                            260 ; macro call ->                     ADD_NOPS                              ; 21 
   48CC 12            [ 2]  261  nop 
   48CD 37 14         [ 7]  262                     pulu     b,x                          ; 5+3 
                            263 ; continue uses same shift  
                            264  .globl SMVB_continue_single
   48CF                     265 SMVB_continue_single:                                   ;#isfunction  
   48CF D7 01         [ 4]  266                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            267 ; y is inherently known to be == old_x, y was = to 0 by generator
                            268  .globl SMVB_continue_newY_eq_oldX_single
   48D1                     269 SMVB_continue_newY_eq_oldX_single:                       ;#isfunction  
   48D1 97 00         [ 4]  270                     sta      *VIA_port_b                  ; 4 
                            271 ; macro call ->                     Y_DELAY                               ; 4 
                            272 ; macro call ->  Y_DELAY_4
   48D3 12            [ 2]  273  nop 
   48D4 12            [ 2]  274  nop 
                            275 ; macro call ->  ADD_BURST
                            276  
                            277 ; macro call ->  ADD_BURST
                            278  
   48D5 9F 00         [ 5]  279                     stx      *VIA_port_b                  ; 5 
   48D7 97 05         [ 4]  280                     sta      *VIA_t1_cnt_hi 
                            281 ; macro call ->                     ADD_NOPS  
   48D9 12            [ 2]  282  nop 
   48DA 37 94         [ 8]  283                     pulu     b,x,pc 
                            284 
                            285 
                            286  .globl SMVB_continue_yd4_single
   48DC                     287 SMVB_continue_yd4_single:                                   ;#isfunction  
   48DC D7 01         [ 4]  288                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            289 ; y is inherently known to be == old_x, y was = to 0 by generator
                            290  .globl SMVB_continue_yd4_newY_eq_oldX_single
   48DE                     291 SMVB_continue_yd4_newY_eq_oldX_single:                       ;#isfunction  
   48DE 97 00         [ 4]  292                     sta      *VIA_port_b                  ; 4 
                            293 ; macro call ->                     Y_DELAY_4                             ; 4 
   48E0 12            [ 2]  294  nop 
   48E1 12            [ 2]  295  nop 
                            296 ; macro call ->  ADD_BURST
                            297  
   48E2 9F 00         [ 5]  298                     stx      *VIA_port_b                  ; 5 
   48E4 97 05         [ 4]  299                     sta      *VIA_t1_cnt_hi 
                            300 ; macro call ->                     ADD_NOPS  
   48E6 12            [ 2]  301  nop 
   48E7 37 94         [ 8]  302                     pulu     b,x,pc
                            303 
                            304 
                            305  .globl SMVB_continue_single_sj
   48E9                     306 SMVB_continue_single_sj:                                   ;#isfunction  
   48E9 D7 01         [ 4]  307                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            308 ; y is inherently known to be == old_x, y was = to 0 by generator
                            309  .globl SMVB_continue_newY_eq_oldX_single_sj
   48EB                     310 SMVB_continue_newY_eq_oldX_single_sj:                     ;#isfunction  
   48EB 97 00         [ 4]  311                     sta      *VIA_port_b                  ; 4 
                            312 ; macro call ->                     Y_DELAY                               ; 4 
                            313 ; macro call ->  Y_DELAY_4
   48ED 12            [ 2]  314  nop 
   48EE 12            [ 2]  315  nop 
                            316 ; macro call ->  ADD_BURST
                            317  
                            318 ; macro call ->  ADD_BURST
                            319  
   48EF 9F 00         [ 5]  320                     stx      *VIA_port_b                  ; 5 
   48F1 97 05         [ 4]  321                     sta      *VIA_t1_cnt_hi 
                            322 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   48F3 12            [ 2]  323  nop 
   48F4 EE C4         [ 5]  324                     ldu      ,u 
   48F6 37 94         [ 8]  325                     pulu     b,x,pc 
                            326 ; continue uses same shift
                            327 ; y is inherently known to be == x, 
                            328  .globl SMVB_continue_yd4_yEqx_single
   48F8                     329 SMVB_continue_yd4_yEqx_single: ;#isfunction 
                            330 ; macro call ->                     SET_Y_INT  
   48F8 97 00         [ 4]  331                     sta      *VIA_port_b                  ; 4 
   48FA D7 01         [ 4]  332                     stb      *VIA_port_a                  ; 4 
                            333 ; macro call ->                     Y_DELAY_HALF_4                          ; 4 
   48FC 12            [ 2]  334  nop 
                            335 ; macro call ->  ADD_BURST
                            336  
                            337 
   48FD 0C 00         [ 6]  338                     inc      *VIA_port_b 
   48FF 97 05         [ 4]  339                     sta      *VIA_t1_cnt_hi 
                            340 ; macro call ->                     ADD_NOPS  
   4901 12            [ 2]  341  nop 
   4902 37 94         [ 8]  342                     pulu     b,x,pc 
                            343 
                            344  .globl SMVB_continue_yEqx_single
   4904                     345 SMVB_continue_yEqx_single:                                 ;#isfunction  
                            346 ; macro call ->                     SET_Y_INT  
   4904 97 00         [ 4]  347                     sta      *VIA_port_b                  ; 4 
   4906 D7 01         [ 4]  348                     stb      *VIA_port_a                  ; 4 
                            349 ; macro call ->                     Y_DELAY_HALF                          ; 4 
                            350 ; macro call ->  Y_DELAY_HALF_4
   4908 12            [ 2]  351  nop 
                            352 ; macro call ->  ADD_BURST
                            353  
                            354 
                            355  
                            356 
   4909 0C 00         [ 6]  357                     inc      *VIA_port_b 
   490B 97 05         [ 4]  358                     sta      *VIA_t1_cnt_hi 
                            359 ; macro call ->                     ADD_NOPS  
   490D 12            [ 2]  360  nop 
   490E 37 94         [ 8]  361                     pulu     b,x,pc 
                            362  .globl SMVB_continue_tripple
   4910                     363 SMVB_continue_tripple:                                     ;#isfunction  
                            364 ; macro call ->                     SET_Y_INT  
   4910 97 00         [ 4]  365                     sta      *VIA_port_b                  ; 4 
   4912 D7 01         [ 4]  366                     stb      *VIA_port_a                  ; 4 
                            367 ; macro call ->                     Y_DELAY                               ; 4 
                            368 ; macro call ->  Y_DELAY_4
   4914 12            [ 2]  369  nop 
   4915 12            [ 2]  370  nop 
                            371 ; macro call ->  ADD_BURST
                            372  
                            373 ; macro call ->  ADD_BURST
                            374  
   4916 9F 00         [ 5]  375                     stx      *VIA_port_b                  ; 5 
   4918 97 05         [ 4]  376                     sta      *VIA_t1_cnt_hi 
                            377 ; macro call ->                     ADD_NOPS  
   491A 12            [ 2]  378  nop 
   491B 7E 49 74      [ 4]  379                     jmp      cont2 
                            380 
                            381  .globl SMVB_continue_quadro
   491E                     382 SMVB_continue_quadro:                                      ;#isfunction  
                            383 ; macro call ->                     SET_Y_INT  
   491E 97 00         [ 4]  384                     sta      *VIA_port_b                  ; 4 
   4920 D7 01         [ 4]  385                     stb      *VIA_port_a                  ; 4 
                            386 ; macro call ->                     Y_DELAY                               ; 4 
                            387 ; macro call ->  Y_DELAY_4
   4922 12            [ 2]  388  nop 
   4923 12            [ 2]  389  nop 
                            390 ; macro call ->  ADD_BURST
                            391  
                            392 ; macro call ->  ADD_BURST
                            393  
   4924 9F 00         [ 5]  394                     stx      *VIA_port_b                  ; 5 
   4926 97 05         [ 4]  395                     sta      *VIA_t1_cnt_hi 
                            396 ; macro call ->                     ADD_NOPS  
   4928 12            [ 2]  397  nop 
   4929 7E 49 6B      [ 4]  398                     jmp      cont3 
                            399  .globl SMVB_continue_hex
   492C                     400 SMVB_continue_hex: ;#isfunction 
                            401 ; macro call ->                     SET_Y_INT  
   492C 97 00         [ 4]  402                     sta      *VIA_port_b                  ; 4 
   492E D7 01         [ 4]  403                     stb      *VIA_port_a                  ; 4 
                            404 ; macro call ->                     Y_DELAY                               ; 4 
                            405 ; macro call ->  Y_DELAY_4
   4930 12            [ 2]  406  nop 
   4931 12            [ 2]  407  nop 
                            408 ; macro call ->  ADD_BURST
                            409  
                            410 ; macro call ->  ADD_BURST
                            411  
   4932 9F 00         [ 5]  412                     stx      *VIA_port_b                  ; 5 
   4934 97 05         [ 4]  413                     sta      *VIA_t1_cnt_hi 
                            414 ; macro call ->                     ADD_NOPS  
   4936 12            [ 2]  415  nop 
   4937 7E 49 59      [ 4]  416                     jmp      cont5 
                            417  .globl SMVB_continue_octo
   493A                     418 SMVB_continue_octo:                                        ;#isfunction  
                            419 ; macro call ->                     SET_Y_INT  
   493A 97 00         [ 4]  420                     sta      *VIA_port_b                  ; 4 
   493C D7 01         [ 4]  421                     stb      *VIA_port_a                  ; 4 
                            422 ; macro call ->                     Y_DELAY                               ; 4 
                            423 ; macro call ->  Y_DELAY_4
   493E 12            [ 2]  424  nop 
   493F 12            [ 2]  425  nop 
                            426 ; macro call ->  ADD_BURST
                            427  
                            428 ; macro call ->  ADD_BURST
                            429  
   4940 9F 00         [ 5]  430                     stx      *VIA_port_b                  ; 5 
   4942 97 05         [ 4]  431                     sta      *VIA_t1_cnt_hi 
                            432 ; macro call ->                     ADD_NOPS  
   4944 12            [ 2]  433  nop 
                            434 ; macro call ->                     WAIT_BEFORE  
                            435 ; macro call ->                     WAIT3    
                            436  .globl here95
   4945                     437 here95:              
   4945 21 FE         [ 3]  438 					brn      here95                            ; wait 3 cycles 
                            439  .globl cont7
   4947                     440 cont7: 
                            441 ; macro call ->                     WAIT_AFTER  
                            442 ; macro call ->                     WAIT7    
                            443 ; macro call ->                     WAIT5    
                            444 ; macro call ->                     WAIT3    
                            445  .globl here99
   4947                     446 here99:              
   4947 21 FE         [ 3]  447 					brn      here99                            ; wait 3 cycles 
                            448 ; macro call ->                     WAIT2    
   4949 12            [ 2]  449  nop ;     wait 2 cycles 
                            450 ; macro call ->                     WAIT2    
   494A 12            [ 2]  451  nop ;     wait 2 cycles 
   494B 0F 05         [ 6]  452                     clr      *VIA_t1_cnt_hi 
                            453 ; macro call ->                     ADD_NOPS  
   494D 12            [ 2]  454  nop 
                            455 ; macro call ->                     WAIT_BEFORE  
                            456 ; macro call ->                     WAIT3    
                            457  .globl here104
   494E                     458 here104:              
   494E 21 FE         [ 3]  459 					brn      here104                            ; wait 3 cycles 
                            460  .globl cont6
   4950                     461 cont6: 
                            462 ; macro call ->                     WAIT_AFTER  
                            463 ; macro call ->                     WAIT7    
                            464 ; macro call ->                     WAIT5    
                            465 ; macro call ->                     WAIT3    
                            466  .globl here108
   4950                     467 here108:              
   4950 21 FE         [ 3]  468 					brn      here108                            ; wait 3 cycles 
                            469 ; macro call ->                     WAIT2    
   4952 12            [ 2]  470  nop ;     wait 2 cycles 
                            471 ; macro call ->                     WAIT2    
   4953 12            [ 2]  472  nop ;     wait 2 cycles 
   4954 0F 05         [ 6]  473                     clr      *VIA_t1_cnt_hi 
                            474 ; macro call ->                     ADD_NOPS  
   4956 12            [ 2]  475  nop 
                            476 ; macro call ->                     WAIT_BEFORE  
                            477 ; macro call ->                     WAIT3    
                            478  .globl here113
   4957                     479 here113:              
   4957 21 FE         [ 3]  480 					brn      here113                            ; wait 3 cycles 
                            481  .globl cont5
   4959                     482 cont5: 
                            483 ; macro call ->                     WAIT_AFTER  
                            484 ; macro call ->                     WAIT7    
                            485 ; macro call ->                     WAIT5    
                            486 ; macro call ->                     WAIT3    
                            487  .globl here117
   4959                     488 here117:              
   4959 21 FE         [ 3]  489 					brn      here117                            ; wait 3 cycles 
                            490 ; macro call ->                     WAIT2    
   495B 12            [ 2]  491  nop ;     wait 2 cycles 
                            492 ; macro call ->                     WAIT2    
   495C 12            [ 2]  493  nop ;     wait 2 cycles 
   495D 0F 05         [ 6]  494                     clr      *VIA_t1_cnt_hi 
                            495 ; macro call ->                     ADD_NOPS  
   495F 12            [ 2]  496  nop 
                            497 ; macro call ->                     WAIT_BEFORE  
                            498 ; macro call ->                     WAIT3    
                            499  .globl here122
   4960                     500 here122:              
   4960 21 FE         [ 3]  501 					brn      here122                            ; wait 3 cycles 
                            502  .globl cont4
   4962                     503 cont4: 
                            504 ; macro call ->                     WAIT_AFTER  
                            505 ; macro call ->                     WAIT7    
                            506 ; macro call ->                     WAIT5    
                            507 ; macro call ->                     WAIT3    
                            508  .globl here126
   4962                     509 here126:              
   4962 21 FE         [ 3]  510 					brn      here126                            ; wait 3 cycles 
                            511 ; macro call ->                     WAIT2    
   4964 12            [ 2]  512  nop ;     wait 2 cycles 
                            513 ; macro call ->                     WAIT2    
   4965 12            [ 2]  514  nop ;     wait 2 cycles 
   4966 0F 05         [ 6]  515                     clr      *VIA_t1_cnt_hi 
                            516 ; macro call ->                     ADD_NOPS  
   4968 12            [ 2]  517  nop 
                            518 ; macro call ->                     WAIT_BEFORE  
                            519 ; macro call ->                     WAIT3    
                            520  .globl here131
   4969                     521 here131:              
   4969 21 FE         [ 3]  522 					brn      here131                            ; wait 3 cycles 
                            523  .globl cont3
   496B                     524 cont3: 
                            525 ; macro call ->                     WAIT_AFTER  
                            526 ; macro call ->                     WAIT7    
                            527 ; macro call ->                     WAIT5    
                            528 ; macro call ->                     WAIT3    
                            529  .globl here135
   496B                     530 here135:              
   496B 21 FE         [ 3]  531 					brn      here135                            ; wait 3 cycles 
                            532 ; macro call ->                     WAIT2    
   496D 12            [ 2]  533  nop ;     wait 2 cycles 
                            534 ; macro call ->                     WAIT2    
   496E 12            [ 2]  535  nop ;     wait 2 cycles 
   496F 0F 05         [ 6]  536                     clr      *VIA_t1_cnt_hi 
                            537 ; macro call ->                     ADD_NOPS  
   4971 12            [ 2]  538  nop 
                            539 ; macro call ->                     WAIT_BEFORE  
                            540 ; macro call ->                     WAIT3    
                            541  .globl here140
   4972                     542 here140:              
   4972 21 FE         [ 3]  543 					brn      here140                            ; wait 3 cycles 
                            544  .globl cont2
   4974                     545 cont2: 
                            546 ; macro call ->                     WAIT_AFTER  
                            547 ; macro call ->                     WAIT7    
                            548 ; macro call ->                     WAIT5    
                            549 ; macro call ->                     WAIT3    
                            550  .globl here144
   4974                     551 here144:              
   4974 21 FE         [ 3]  552 					brn      here144                            ; wait 3 cycles 
                            553 ; macro call ->                     WAIT2    
   4976 12            [ 2]  554  nop ;     wait 2 cycles 
                            555 ; macro call ->                     WAIT2    
   4977 12            [ 2]  556  nop ;     wait 2 cycles 
   4978 0F 05         [ 6]  557                     clr      *VIA_t1_cnt_hi 
                            558 ; macro call ->                     ADD_NOPS  
   497A 12            [ 2]  559  nop 
   497B 7E 49 7E      [ 4]  560                     jmp      SMVB_repeat_same 
                            561 
                            562  .globl SMVB_repeat_same
   497E                     563 SMVB_repeat_same:                                          ;#isfunction  
   497E 37 14         [ 7]  564                     pulu     b,x 
   4980 0F 05         [ 6]  565                     clr      *VIA_t1_cnt_hi 
                            566 ; macro call ->                     ADD_NOPS  
   4982 12            [ 2]  567  nop 
   4983 37 80         [ 6]  568                     pulu     pc 
                            569  .globl SMVB_continue_double
   4985                     570 SMVB_continue_double:                                      ;#isfunction  
                            571 ; macro call ->                     SET_Y_INT  
   4985 97 00         [ 4]  572                     sta      *VIA_port_b                  ; 4 
   4987 D7 01         [ 4]  573                     stb      *VIA_port_a                  ; 4 
                            574 ; macro call ->                     Y_DELAY                               ; 4 
                            575 ; macro call ->  Y_DELAY_4
   4989 12            [ 2]  576  nop 
   498A 12            [ 2]  577  nop 
                            578 ; macro call ->  ADD_BURST
                            579  
                            580 ; macro call ->  ADD_BURST
                            581  
   498B 9F 00         [ 5]  582                     stx      *VIA_port_b                  ; 5 
   498D 97 05         [ 4]  583                     sta      *VIA_t1_cnt_hi 
                            584 ; macro call ->                     ADD_NOPS  
   498F 12            [ 2]  585  nop 
   4990 7E 49 7E      [ 4]  586                     jmp      SMVB_repeat_same 
                            587  .globl SMVB_continue_yd4_double
   4993                     588 SMVB_continue_yd4_double:;#isfunction 
                            589 ; macro call ->                     SET_Y_INT  
   4993 97 00         [ 4]  590                     sta      *VIA_port_b                  ; 4 
   4995 D7 01         [ 4]  591                     stb      *VIA_port_a                  ; 4 
                            592 ; macro call ->                     Y_DELAY_4                               ; 4 
   4997 12            [ 2]  593  nop 
   4998 12            [ 2]  594  nop 
                            595 ; macro call ->  ADD_BURST
                            596  
   4999 9F 00         [ 5]  597                     stx      *VIA_port_b                  ; 5 
   499B 97 05         [ 4]  598                     sta      *VIA_t1_cnt_hi 
                            599 ; macro call ->                     ADD_NOPS  
   499D 12            [ 2]  600  nop 
   499E 7E 49 7E      [ 4]  601                     jmp      SMVB_repeat_same 
                            602 
                            603 
                            604  .globl SMVB_continue_yd4_octo
   49A1                     605 SMVB_continue_yd4_octo:
   49A1 D7 01         [ 4]  606                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   49A3 97 00         [ 4]  607                     sta      *VIA_port_b                  ; 4 
                            608 ; macro call ->                     Y_DELAY_4                             ; 4 
   49A5 12            [ 2]  609  nop 
   49A6 12            [ 2]  610  nop 
                            611 ; macro call ->  ADD_BURST
                            612  
   49A7 9F 00         [ 5]  613                     stx      *VIA_port_b                  ; 5 
   49A9 97 05         [ 4]  614                     sta      *VIA_t1_cnt_hi 
                            615 ; macro call ->                     ADD_NOPS  
   49AB 12            [ 2]  616  nop 
   49AC 7E 49 47      [ 4]  617                     jmp      cont7 
                            618  .globl SMVB_continue_yd4_hex
   49AF                     619 SMVB_continue_yd4_hex:
   49AF D7 01         [ 4]  620                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   49B1 97 00         [ 4]  621                     sta      *VIA_port_b                  ; 4 
                            622 ; macro call ->                     Y_DELAY_4                             ; 4 
   49B3 12            [ 2]  623  nop 
   49B4 12            [ 2]  624  nop 
                            625 ; macro call ->  ADD_BURST
                            626  
   49B5 9F 00         [ 5]  627                     stx      *VIA_port_b                  ; 5 
   49B7 97 05         [ 4]  628                     sta      *VIA_t1_cnt_hi 
                            629 ; macro call ->                     ADD_NOPS  
   49B9 12            [ 2]  630  nop 
   49BA 7E 49 59      [ 4]  631                     jmp      cont5 
                            632  .globl SMVB_continue_yd4_quadro
   49BD                     633 SMVB_continue_yd4_quadro:
                            634 
   49BD D7 01         [ 4]  635                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   49BF 97 00         [ 4]  636                     sta      *VIA_port_b                  ; 4 
                            637 ; macro call ->                     Y_DELAY_4                             ; 4 
   49C1 12            [ 2]  638  nop 
   49C2 12            [ 2]  639  nop 
                            640 ; macro call ->  ADD_BURST
                            641  
   49C3 9F 00         [ 5]  642                     stx      *VIA_port_b                  ; 5 
   49C5 97 05         [ 4]  643                     sta      *VIA_t1_cnt_hi 
                            644 ; macro call ->                     ADD_NOPS  
   49C7 12            [ 2]  645  nop 
   49C8 7E 49 6B      [ 4]  646                     jmp      cont3 
                            647  .globl SMVB_continue_yd4_tripple
   49CB                     648 SMVB_continue_yd4_tripple:
                            649 
   49CB D7 01         [ 4]  650                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   49CD 97 00         [ 4]  651                     sta      *VIA_port_b                  ; 4 
                            652 ; macro call ->                     Y_DELAY_4                             ; 4 
   49CF 12            [ 2]  653  nop 
   49D0 12            [ 2]  654  nop 
                            655 ; macro call ->  ADD_BURST
                            656  
   49D1 9F 00         [ 5]  657                     stx      *VIA_port_b                  ; 5 
   49D3 97 05         [ 4]  658                     sta      *VIA_t1_cnt_hi 
                            659 ; macro call ->                     ADD_NOPS  
   49D5 12            [ 2]  660  nop 
   49D6 7E 49 74      [ 4]  661                     jmp      cont2 
                            662 
                            663 
                            664 
                            665 
                            666  .globl SMVB_startMove_yd4_single
   49D9                     667 SMVB_startMove_yd4_single: ;#isfunction 
                            668  .globl SMVB_startMove_single
   49D9                     669 SMVB_startMove_single:                                    ;#isfunction  
                            670 ; macro call ->                     SET_Y_INT  
   49D9 97 00         [ 4]  671                     sta      *VIA_port_b                  ; 4 
   49DB D7 01         [ 4]  672                     stb      *VIA_port_a                  ; 4 
                            673 ; macro call ->                     INIT_MOVE  
   49DD C6 E0         [ 2]  674                     ldb      #0b11100000 
   49DF D7 0A         [ 4]  675                     stb      *VIA_shift_reg               ; 
                            676 ; macro call ->  DELAY_NONE
                            677 ; macro call ->  ADD_BURST
                            678  
   49E1 9F 00         [ 5]  679                     stx      *VIA_port_b                  ; 5 
   49E3 97 05         [ 4]  680                     sta      *VIA_t1_cnt_hi 
                            681 ; macro call ->                     ADD_NOPS  
   49E5 12            [ 2]  682  nop 
   49E6 37 94         [ 8]  683                     pulu     b,x,pc 
                            684  .globl SMVB_startMove_single_sj
   49E8                     685 SMVB_startMove_single_sj:                                 ;#isfunction  
                            686 ; macro call ->                     SET_Y_INT  
   49E8 97 00         [ 4]  687                     sta      *VIA_port_b                  ; 4 
   49EA D7 01         [ 4]  688                     stb      *VIA_port_a                  ; 4 
   49EC EE C4         [ 5]  689                     ldu      ,u 
                            690  
                            691 ; macro call ->                     INIT_MOVE_SJ  
                            692 ; macro call ->  DELAY_NONE
                            693 ; macro call ->  ADD_BURST
                            694  
   49EE 9F 00         [ 5]  695                     stx      *VIA_port_b                  ; 5 
   49F0 97 05         [ 4]  696                     sta      *VIA_t1_cnt_hi 
   49F2 97 0A         [ 4]  697                     sta      *VIA_shift_reg               ; 
                            698 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   49F4 12            [ 2]  699  nop 
   49F5 37 94         [ 8]  700                     pulu     b,x,pc 
                            701 
                            702  .globl SMVB_startMove_yd4_single_sj
   49F7                     703 SMVB_startMove_yd4_single_sj:                                 ;#isfunction  
                            704 ; macro call ->                     SET_Y_INT  
   49F7 97 00         [ 4]  705                     sta      *VIA_port_b                  ; 4 
   49F9 D7 01         [ 4]  706                     stb      *VIA_port_a                  ; 4 
   49FB EE C4         [ 5]  707                     ldu      ,u 
                            708 ; macro call ->                     INIT_MOVE_SJ  
                            709 ; macro call ->  DELAY_NONE
                            710 ; macro call ->  ADD_BURST
                            711  
   49FD 9F 00         [ 5]  712                     stx      *VIA_port_b                  ; 5 
   49FF 97 05         [ 4]  713                     sta      *VIA_t1_cnt_hi 
   4A01 97 0A         [ 4]  714                     sta      *VIA_shift_reg               ; 
                            715 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4A03 12            [ 2]  716  nop 
   4A04 37 94         [ 8]  717                     pulu     b,x,pc 
                            718 
                            719 
                            720 
                            721  .globl SMVB_startMove_yd4_double
   4A06                     722 SMVB_startMove_yd4_double:                                    ;#isfunction  
                            723  .globl SMVB_startMove_double
   4A06                     724 SMVB_startMove_double:                                    ;#isfunction  
                            725 ; macro call ->                     SET_Y_INT  
   4A06 97 00         [ 4]  726                     sta      *VIA_port_b                  ; 4 
   4A08 D7 01         [ 4]  727                     stb      *VIA_port_a                  ; 4 
                            728 ; macro call ->                     INIT_MOVE  
   4A0A C6 E0         [ 2]  729                     ldb      #0b11100000 
   4A0C D7 0A         [ 4]  730                     stb      *VIA_shift_reg               ; 
                            731 ; macro call ->  DELAY_NONE
                            732 ; macro call ->  ADD_BURST
                            733  
   4A0E 9F 00         [ 5]  734                     stx      *VIA_port_b                  ; 5 
   4A10 97 05         [ 4]  735                     sta      *VIA_t1_cnt_hi 
                            736 ; macro call ->                     ADD_NOPS  
   4A12 12            [ 2]  737  nop 
   4A13 7E 4A B7      [ 4]  738                     jmp      SMVB_repeat_same2 
                            739 
                            740  .globl SMVB_startDraw_yd4_tripple
                            741  .globl SMVB_startDraw_tripple
   4A16                     742 SMVB_startDraw_yd4_tripple:
   4A16                     743 SMVB_startDraw_tripple: ;#isfunction 
                            744 ; macro call ->                     SET_Y_INT  
   4A16 97 00         [ 4]  745                     sta      *VIA_port_b                  ; 4 
   4A18 D7 01         [ 4]  746                     stb      *VIA_port_a                  ; 4 
   4A1A C6 01         [ 2]  747                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4A1C D7 0A         [ 4]  748                     stb      *VIA_shift_reg               ; 4 
                            749 ; macro call ->  DELAY_NONE
                            750 ; macro call ->  ADD_BURST
                            751  
   4A1E 9F 00         [ 5]  752                     stx      *VIA_port_b                  ; 5 
   4A20 97 05         [ 4]  753                     sta      *VIA_t1_cnt_hi               ; 4 
                            754 ; macro call ->                     ADD_NOPS  
   4A22 12            [ 2]  755  nop 
   4A23 7E 49 74      [ 4]  756                     jmp      cont2 
                            757 
                            758  .globl SMVB_startDraw_double
   4A26                     759 SMVB_startDraw_double: ;#isfunction 
                            760 ; macro call ->                     SET_Y_INT  
   4A26 97 00         [ 4]  761                     sta      *VIA_port_b                  ; 4 
   4A28 D7 01         [ 4]  762                     stb      *VIA_port_a                  ; 4 
   4A2A C6 01         [ 2]  763                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4A2C D7 0A         [ 4]  764                     stb      *VIA_shift_reg               ; 4 
                            765 ; macro call ->  DELAY_NONE
                            766 ; macro call ->  ADD_BURST
                            767  
   4A2E 9F 00         [ 5]  768                     stx      *VIA_port_b                  ; 5 
   4A30 97 05         [ 4]  769                     sta      *VIA_t1_cnt_hi               ; 4 
                            770 ; macro call ->                     ADD_NOPS  
   4A32 12            [ 2]  771  nop 
   4A33 7E 4A B7      [ 4]  772                     jmp      SMVB_repeat_same2 
                            773  .globl SMVB_startDraw_octo
   4A36                     774 SMVB_startDraw_octo: ;#isfunction 
                            775 ; macro call ->                     SET_Y_INT  
   4A36 97 00         [ 4]  776                     sta      *VIA_port_b                  ; 4 
   4A38 D7 01         [ 4]  777                     stb      *VIA_port_a                  ; 4 
   4A3A C6 01         [ 2]  778                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4A3C D7 0A         [ 4]  779                     stb      *VIA_shift_reg               ; 4 
                            780 ; macro call ->  DELAY_NONE
                            781 ; macro call ->  ADD_BURST
                            782  
   4A3E 9F 00         [ 5]  783                     stx      *VIA_port_b                  ; 5 
   4A40 97 05         [ 4]  784                     sta      *VIA_t1_cnt_hi               ; 4 
                            785 ; macro call ->                     ADD_NOPS  
   4A42 12            [ 2]  786  nop 
   4A43 7E 49 47      [ 4]  787                     jmp      cont7 
                            788  .globl SMVB_startDraw_quadro
   4A46                     789 SMVB_startDraw_quadro: ;#isfunction 
                            790 ; macro call ->                     SET_Y_INT  
   4A46 97 00         [ 4]  791                     sta      *VIA_port_b                  ; 4 
   4A48 D7 01         [ 4]  792                     stb      *VIA_port_a                  ; 4 
   4A4A C6 01         [ 2]  793                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4A4C D7 0A         [ 4]  794                     stb      *VIA_shift_reg               ; 4 
                            795 ; macro call ->  DELAY_NONE
                            796 ; macro call ->  ADD_BURST
                            797  
   4A4E 9F 00         [ 5]  798                     stx      *VIA_port_b                  ; 5 
   4A50 97 05         [ 4]  799                     sta      *VIA_t1_cnt_hi               ; 4 
                            800 ; macro call ->                     ADD_NOPS  
   4A52 12            [ 2]  801  nop 
   4A53 7E 49 6B      [ 4]  802                     jmp      cont3 
                            803 
                            804  .globl SMVB_startDraw_hex
   4A56                     805 SMVB_startDraw_hex: ;#isfunction 
                            806 ; macro call ->                     SET_Y_INT  
   4A56 97 00         [ 4]  807                     sta      *VIA_port_b                  ; 4 
   4A58 D7 01         [ 4]  808                     stb      *VIA_port_a                  ; 4 
   4A5A C6 01         [ 2]  809                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4A5C D7 0A         [ 4]  810                     stb      *VIA_shift_reg               ; 4 
                            811 ; macro call ->  DELAY_NONE
                            812 ; macro call ->  ADD_BURST
                            813  
   4A5E 9F 00         [ 5]  814                     stx      *VIA_port_b                  ; 5 
   4A60 97 05         [ 4]  815                     sta      *VIA_t1_cnt_hi               ; 4 
                            816 ; macro call ->                     ADD_NOPS  
   4A62 12            [ 2]  817  nop 
   4A63 7E 49 59      [ 4]  818                     jmp      cont5
                            819 
                            820  .globl SMVB_startMove_tripple
   4A66                     821 SMVB_startMove_tripple: ;#isfunction 
                            822 ; macro call ->                     SET_Y_INT  
   4A66 97 00         [ 4]  823                     sta      *VIA_port_b                  ; 4 
   4A68 D7 01         [ 4]  824                     stb      *VIA_port_a                  ; 4 
                            825 ; macro call ->                     INIT_MOVE  
   4A6A C6 E0         [ 2]  826                     ldb      #0b11100000 
   4A6C D7 0A         [ 4]  827                     stb      *VIA_shift_reg               ; 
                            828 ; macro call ->  DELAY_NONE
                            829 ; macro call ->  ADD_BURST
                            830  
   4A6E 9F 00         [ 5]  831                     stx      *VIA_port_b                  ; 5 
   4A70 97 05         [ 4]  832                     sta      *VIA_t1_cnt_hi 
                            833 ; macro call ->                     ADD_NOPS  
   4A72 12            [ 2]  834  nop 
   4A73 20 18         [ 3]  835                     bra      move2 
                            836 
                            837  .globl SMVB_startMove_quadro
   4A75                     838 SMVB_startMove_quadro: ;#isfunction 
                            839 ; macro call ->                     SET_Y_INT  
   4A75 97 00         [ 4]  840                     sta      *VIA_port_b                  ; 4 
   4A77 D7 01         [ 4]  841                     stb      *VIA_port_a                  ; 4 
                            842 ; macro call ->                     INIT_MOVE  
   4A79 C6 E0         [ 2]  843                     ldb      #0b11100000 
   4A7B D7 0A         [ 4]  844                     stb      *VIA_shift_reg               ; 
                            845 ; macro call ->  DELAY_NONE
                            846 ; macro call ->  ADD_BURST
                            847  
   4A7D 9F 00         [ 5]  848                     stx      *VIA_port_b                  ; 5 
   4A7F 97 05         [ 4]  849                     sta      *VIA_t1_cnt_hi 
                            850 ; macro call ->                     ADD_NOPS  
   4A81 12            [ 2]  851  nop 
   4A82 20 00         [ 3]  852                     bra      move3 
                            853 
                            854  .globl move3
   4A84                     855 move3: 
                            856 ; macro call ->                     WAIT_AFTER  
                            857 ; macro call ->                     WAIT7    
                            858 ; macro call ->                     WAIT5    
                            859 ; macro call ->                     WAIT3    
                            860  .globl here224
   4A84                     861 here224:              
   4A84 21 FE         [ 3]  862 					brn      here224                            ; wait 3 cycles 
                            863 ; macro call ->                     WAIT2    
   4A86 12            [ 2]  864  nop ;     wait 2 cycles 
                            865 ; macro call ->                     WAIT2    
   4A87 12            [ 2]  866  nop ;     wait 2 cycles 
   4A88 0F 05         [ 6]  867                     clr      *VIA_t1_cnt_hi 
                            868 ; macro call ->                     ADD_NOPS  
   4A8A 12            [ 2]  869  nop 
                            870 ; macro call ->                     WAIT_BEFORE  
                            871 ; macro call ->                     WAIT3    
                            872  .globl here229
   4A8B                     873 here229:              
   4A8B 21 FE         [ 3]  874 					brn      here229                            ; wait 3 cycles 
                            875  .globl move2
   4A8D                     876 move2: 
                            877 ; macro call ->                     WAIT_AFTER  
                            878 ; macro call ->                     WAIT7    
                            879 ; macro call ->                     WAIT5    
                            880 ; macro call ->                     WAIT3    
                            881  .globl here233
   4A8D                     882 here233:              
   4A8D 21 FE         [ 3]  883 					brn      here233                            ; wait 3 cycles 
                            884 ; macro call ->                     WAIT2    
   4A8F 12            [ 2]  885  nop ;     wait 2 cycles 
                            886 ; macro call ->                     WAIT2    
   4A90 12            [ 2]  887  nop ;     wait 2 cycles 
   4A91 0F 05         [ 6]  888                     clr      *VIA_t1_cnt_hi 
                            889 ; macro call ->                     ADD_NOPS  
   4A93 12            [ 2]  890  nop 
   4A94 7E 4A B7      [ 4]  891                     jmp      SMVB_repeat_same2 
                            892 
                            893  .globl SMVB_startMove_octo
   4A97                     894 SMVB_startMove_octo: ;#isfunction 
                            895 ; macro call ->                     SET_Y_INT  
   4A97 97 00         [ 4]  896                     sta      *VIA_port_b                  ; 4 
   4A99 D7 01         [ 4]  897                     stb      *VIA_port_a                  ; 4 
                            898 ; macro call ->                     INIT_MOVE  
   4A9B C6 E0         [ 2]  899                     ldb      #0b11100000 
   4A9D D7 0A         [ 4]  900                     stb      *VIA_shift_reg               ; 
                            901 ; macro call ->  DELAY_NONE
                            902 ; macro call ->  ADD_BURST
                            903  
   4A9F 9F 00         [ 5]  904                     stx      *VIA_port_b                  ; 5 
   4AA1 97 05         [ 4]  905                     sta      *VIA_t1_cnt_hi 
                            906 ; macro call ->                     ADD_NOPS  
   4AA3 12            [ 2]  907  nop 
   4AA4 7E 49 47      [ 4]  908                     jmp      cont7 
                            909  .globl SMVB_startMove_hex
   4AA7                     910 SMVB_startMove_hex: ;#isfunction 
                            911 ; macro call ->                     SET_Y_INT  
   4AA7 97 00         [ 4]  912                     sta      *VIA_port_b                  ; 4 
   4AA9 D7 01         [ 4]  913                     stb      *VIA_port_a                  ; 4 
                            914 ; macro call ->                     INIT_MOVE  
   4AAB C6 E0         [ 2]  915                     ldb      #0b11100000 
   4AAD D7 0A         [ 4]  916                     stb      *VIA_shift_reg               ; 
                            917 ; macro call ->  DELAY_NONE
                            918 ; macro call ->  ADD_BURST
                            919  
   4AAF 9F 00         [ 5]  920                     stx      *VIA_port_b                  ; 5 
   4AB1 97 05         [ 4]  921                     sta      *VIA_t1_cnt_hi 
                            922 ; macro call ->                     ADD_NOPS  
   4AB3 12            [ 2]  923  nop 
   4AB4 7E 49 59      [ 4]  924                     jmp      cont5
                            925 
                            926  .globl SMVB_repeat_same2
   4AB7                     927 SMVB_repeat_same2:                                           ;#isfunction  
   4AB7 37 14         [ 7]  928                     pulu     b,x 
   4AB9 0F 05         [ 6]  929                     clr      *VIA_t1_cnt_hi 
                            930 ; macro call ->                     ADD_NOPS  
   4ABB 12            [ 2]  931  nop 
   4ABC 37 80         [ 6]  932                     pulu     pc 
                            933  .globl SMVB_startMove_double_sj
   4ABE                     934 SMVB_startMove_double_sj:                                  ;#isfunction  
                            935 ; macro call ->                     SET_Y_INT  
   4ABE 97 00         [ 4]  936                     sta      *VIA_port_b                  ; 4 
   4AC0 D7 01         [ 4]  937                     stb      *VIA_port_a                  ; 4 
   4AC2 EE C4         [ 5]  938                     ldu      ,u 
                            939 ; macro call ->                     INIT_MOVE_SJ  
                            940 ; macro call ->  DELAY_NONE
                            941 ; macro call ->  ADD_BURST
                            942  
   4AC4 9F 00         [ 5]  943                     stx      *VIA_port_b                  ; 5 
   4AC6 97 05         [ 4]  944                     sta      *VIA_t1_cnt_hi 
   4AC8 97 0A         [ 4]  945                     sta      *VIA_shift_reg               ; 
                            946 ; macro call ->                     ADD_NOPS  
   4ACA 12            [ 2]  947  nop 
   4ACB 1F 88         [ 6]  948                     tfr a,a 
   4ACD 0F 05         [ 6]  949                     clr      *VIA_t1_cnt_hi 
                            950 ; macro call ->                     ADD_NOPS                              ; reduced by ldu ,u - 5 cycles 
   4ACF 12            [ 2]  951  nop 
   4AD0 37 94         [ 8]  952                     pulu     b,x, pc 
                            953  .globl SMVB_startMove_yStays_single
   4AD2                     954 SMVB_startMove_yStays_single:                              ;#isfunction  
                            955 ; macro call ->                     INIT_MOVE  
   4AD2 C6 E0         [ 2]  956                     ldb      #0b11100000 
   4AD4 D7 0A         [ 4]  957                     stb      *VIA_shift_reg               ; 
                            958 ; macro call ->  DELAY_NONE
                            959 ; macro call ->  ADD_BURST
                            960  
   4AD6 9F 00         [ 5]  961                     stx      *VIA_port_b                  ; 5 
   4AD8 97 05         [ 4]  962                     sta      *VIA_t1_cnt_hi 
                            963 ; macro call ->                     ADD_NOPS  
   4ADA 12            [ 2]  964  nop 
   4ADB 37 94         [ 8]  965                     pulu     b,x,pc 
                            966  .globl SMVB_startMove_yStays_single_sj
   4ADD                     967 SMVB_startMove_yStays_single_sj: 
   4ADD EE C4         [ 5]  968                     ldu      ,u 
                            969 ; macro call ->                     INIT_MOVE_SJ  
                            970 ; macro call ->  DELAY_NONE
                            971 ; macro call ->  ADD_BURST
                            972  
   4ADF 9F 00         [ 5]  973                     stx      *VIA_port_b                  ; 5 
   4AE1 97 05         [ 4]  974                     sta      *VIA_t1_cnt_hi 
   4AE3 97 0A         [ 4]  975                     sta      *VIA_shift_reg               ; 
                            976 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4AE5 12            [ 2]  977  nop 
   4AE6 37 94         [ 8]  978                     pulu     b,x,pc 
                            979 ; assuming b = 1
                            980  .globl SMVB_startDraw_yStays_single
   4AE8                     981 SMVB_startDraw_yStays_single:                              ;#isfunction  
   4AE8 D7 0A         [ 4]  982                     stb      *VIA_shift_reg               ; 4 
                            983 ; macro call ->  DELAY_NONE
                            984 ; macro call ->  ADD_BURST
                            985  
   4AEA 9F 00         [ 5]  986                     stx      *VIA_port_b                  ; 5 
   4AEC 97 05         [ 4]  987                     sta      *VIA_t1_cnt_hi               ; 4 
                            988 ; macro call ->                     ADD_NOPS  
   4AEE 12            [ 2]  989  nop 
   4AEF 37 94         [ 8]  990                     pulu     b,x,pc 
                            991 ; assume b contains SHIFT
                            992 
                            993  .globl SMVB_startDraw_xyStays_single
   4AF1                     994 SMVB_startDraw_xyStays_single:                             ;#isfunction  
   4AF1 D7 0A         [ 4]  995                     stb      *VIA_shift_reg 
   4AF3 97 05         [ 4]  996                     sta      *VIA_t1_cnt_hi 
                            997 ; macro call ->                     ADD_NOPS  
   4AF5 12            [ 2]  998  nop 
   4AF6 37 94         [ 8]  999                     pulu     b,x,pc 
                           1000  .globl SMVB_startDraw_yStays_single_sj
   4AF8                    1001 SMVB_startDraw_yStays_single_sj:                           ;#isfunction  
                           1002 ;                    ldb      #SHITREG_POKE_VALUE          ; 2 
   4AF8 D7 0A         [ 4] 1003                     stb      *VIA_shift_reg               ; 4 
                           1004 ; macro call ->  DELAY_NONE
                           1005 ; macro call ->  ADD_BURST
                           1006  
   4AFA 9F 00         [ 5] 1007                     stx      *VIA_port_b                  ; 5 
   4AFC 97 05         [ 4] 1008                     sta      *VIA_t1_cnt_hi               ; 4 
                           1009 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4AFE 12            [ 2] 1010  nop 
   4AFF EE C4         [ 5] 1011                     ldu      ,u 
   4B01 37 94         [ 8] 1012                     pulu     b,x,pc 
                           1013 
                           1014 
                           1015  .globl SMVB_startDraw_yd4_double
   4B03                    1016 SMVB_startDraw_yd4_double:
                           1017 ; macro call ->                     SET_Y_INT  
   4B03 97 00         [ 4] 1018                     sta      *VIA_port_b                  ; 4 
   4B05 D7 01         [ 4] 1019                     stb      *VIA_port_a                  ; 4 
   4B07 C6 01         [ 2] 1020                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4B09 D7 0A         [ 4] 1021                     stb      *VIA_shift_reg               ; 4 
                           1022 ; macro call ->  DELAY_NONE
                           1023 ; macro call ->  ADD_BURST
                           1024  
   4B0B 9F 00         [ 5] 1025                     stx      *VIA_port_b                  ; 5 
   4B0D 97 05         [ 4] 1026                     sta      *VIA_t1_cnt_hi               ; 4 
                           1027 ; macro call ->                     ADD_NOPS  
   4B0F 12            [ 2] 1028  nop 
   4B10 7E 4A B7      [ 4] 1029                     jmp      SMVB_repeat_same2 
                           1030 
                           1031  .globl SMVB_startDraw_yd4_octo
   4B13                    1032 SMVB_startDraw_yd4_octo:
                           1033 ; macro call ->                     SET_Y_INT  
   4B13 97 00         [ 4] 1034                     sta      *VIA_port_b                  ; 4 
   4B15 D7 01         [ 4] 1035                     stb      *VIA_port_a                  ; 4 
   4B17 C6 01         [ 2] 1036                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4B19 D7 0A         [ 4] 1037                     stb      *VIA_shift_reg               ; 4 
                           1038 ; macro call ->  DELAY_NONE
                           1039 ; macro call ->  ADD_BURST
                           1040  
   4B1B 9F 00         [ 5] 1041                     stx      *VIA_port_b                  ; 5 
   4B1D 97 05         [ 4] 1042                     sta      *VIA_t1_cnt_hi               ; 4 
                           1043 ; macro call ->                     ADD_NOPS  
   4B1F 12            [ 2] 1044  nop 
   4B20 7E 49 47      [ 4] 1045                     jmp      cont7
                           1046 
                           1047 
                           1048  .globl SMVB_startDraw_yd4_single
   4B23                    1049 SMVB_startDraw_yd4_single:;#isfunction 
                           1050  .globl SMVB_startDraw_single
   4B23                    1051 SMVB_startDraw_single:                                    ;#isfunction  
                           1052 ; macro call ->                     SET_Y_INT  
   4B23 97 00         [ 4] 1053                     sta      *VIA_port_b                  ; 4 
   4B25 D7 01         [ 4] 1054                     stb      *VIA_port_a                  ; 4 
   4B27 C6 01         [ 2] 1055                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4B29 D7 0A         [ 4] 1056                     stb      *VIA_shift_reg               ; 4 
                           1057 ; macro call ->  DELAY_NONE
                           1058 ; macro call ->  ADD_BURST
                           1059  
   4B2B 9F 00         [ 5] 1060                     stx      *VIA_port_b                  ; 5 
   4B2D 97 05         [ 4] 1061                     sta      *VIA_t1_cnt_hi               ; 4 
                           1062 ; macro call ->                     ADD_NOPS  
   4B2F 12            [ 2] 1063  nop 
   4B30 37 94         [ 8] 1064                     pulu     b,x,pc 
                           1065  .globl SMVB_startDraw_single_sj
   4B32                    1066 SMVB_startDraw_single_sj: 
                           1067 ; macro call ->                     SET_Y_INT  
   4B32 97 00         [ 4] 1068                     sta      *VIA_port_b                  ; 4 
   4B34 D7 01         [ 4] 1069                     stb      *VIA_port_a                  ; 4 
   4B36 C6 01         [ 2] 1070                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4B38 D7 0A         [ 4] 1071                     stb      *VIA_shift_reg               ; 4 
                           1072 ; macro call ->  DELAY_NONE
                           1073 ; macro call ->  ADD_BURST
                           1074  
   4B3A 9F 00         [ 5] 1075                     stx      *VIA_port_b                  ; 5 
   4B3C 97 05         [ 4] 1076                     sta      *VIA_t1_cnt_hi               ; 4 
                           1077 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4B3E 12            [ 2] 1078  nop 
   4B3F EE C4         [ 5] 1079                     ldu      ,u 
   4B41 37 94         [ 8] 1080                     pulu     b,x,pc 
                           1081  .globl SMVB_startDraw_yEqx_single_sj
   4B43                    1082 SMVB_startDraw_yEqx_single_sj:                             ;#isfunction  
                           1083 ; macro call ->                     SET_Y_INT  
   4B43 97 00         [ 4] 1084                     sta      *VIA_port_b                  ; 4 
   4B45 D7 01         [ 4] 1085                     stb      *VIA_port_a                  ; 4 
   4B47 C6 01         [ 2] 1086                     ldb      #0x01 
   4B49 D7 0A         [ 4] 1087                     stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
                           1088 ; macro call ->  DELAY_NONE
                           1089 ; macro call ->  ADD_BURST
                           1090  
   4B4B D7 00         [ 4] 1091                     stb      *VIA_port_b 
   4B4D 97 05         [ 4] 1092                     sta      *VIA_t1_cnt_hi 
                           1093 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4B4F 12            [ 2] 1094  nop 
   4B50 EE C4         [ 5] 1095                     ldu      ,u 
   4B52 37 94         [ 8] 1096                     pulu     b,x,pc 
                           1097  .globl SMVB_startDraw_yEqx_single
   4B54                    1098 SMVB_startDraw_yEqx_single:                                ;#isfunction  
                           1099  .globl SMVB_startDraw_yd4_yEqx_single
   4B54                    1100 SMVB_startDraw_yd4_yEqx_single:                                ;#isfunction  
                           1101 ; macro call ->                     SET_Y_INT  
   4B54 97 00         [ 4] 1102                     sta      *VIA_port_b                  ; 4 
   4B56 D7 01         [ 4] 1103                     stb      *VIA_port_a                  ; 4 
   4B58 C6 01         [ 2] 1104                     ldb      #0x01 
   4B5A D7 0A         [ 4] 1105                     stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
                           1106 ; macro call ->  DELAY_NONE
                           1107 ; macro call ->  ADD_BURST
                           1108  
   4B5C D7 00         [ 4] 1109                     stb      *VIA_port_b 
   4B5E 97 05         [ 4] 1110                     sta      *VIA_t1_cnt_hi 
                           1111 ; macro call ->                     ADD_NOPS  
   4B60 12            [ 2] 1112  nop 
   4B61 37 94         [ 8] 1113                     pulu     b,x,pc 
                           1114  .globl SMVB_startMove_yEqx_single
   4B63                    1115 SMVB_startMove_yEqx_single:                                ;#isfunction  
                           1116 ; macro call ->                     SET_Y_INT  
   4B63 97 00         [ 4] 1117                     sta      *VIA_port_b                  ; 4 
   4B65 D7 01         [ 4] 1118                     stb      *VIA_port_a                  ; 4 
                           1119 ; macro call ->  Y_DELAY_HALF
                           1120 ; macro call ->  Y_DELAY_HALF_4
   4B67 12            [ 2] 1121  nop 
                           1122 ; macro call ->  ADD_BURST
                           1123  
                           1124 
   4B68 0C 00         [ 6] 1125                     inc      *VIA_port_b 
   4B6A 97 05         [ 4] 1126                     sta      *VIA_t1_cnt_hi 
                           1127 
   4B6C 97 0A         [ 4] 1128                     sta      *VIA_shift_reg               ; 4 
                           1129 ; macro call ->                     ADD_NOPS  
   4B6E 12            [ 2] 1130  nop 
   4B6F 37 94         [ 8] 1131                     pulu     b,x,pc 
                           1132  .globl SMVB_startMove_yd4_hex
   4B71                    1133 SMVB_startMove_yd4_hex:
                           1134 ; macro call ->                     SET_Y_INT  
   4B71 97 00         [ 4] 1135                     sta      *VIA_port_b                  ; 4 
   4B73 D7 01         [ 4] 1136                     stb      *VIA_port_a                  ; 4 
                           1137 ; macro call ->  Y_DELAY_HALF_4
   4B75 12            [ 2] 1138  nop 
                           1139 ; macro call ->  ADD_BURST
                           1140  
                           1141 
   4B76 97 0A         [ 4] 1142                     sta      *VIA_shift_reg               ; 4 
                           1143 ; macro call ->  DELAY_NONE
                           1144 ; macro call ->  ADD_BURST
                           1145  
   4B78 9F 00         [ 5] 1146                     stx      *VIA_port_b                  ; 5 
   4B7A 97 05         [ 4] 1147                     sta      *VIA_t1_cnt_hi               ; 4 
                           1148 ; macro call ->                     ADD_NOPS  
   4B7C 12            [ 2] 1149  nop 
   4B7D 7E 49 59      [ 4] 1150                     jmp      cont5
                           1151 
                           1152  .globl SMVB_startMove_yd4_octo
   4B80                    1153 SMVB_startMove_yd4_octo:
                           1154 ; macro call ->                     SET_Y_INT  
   4B80 97 00         [ 4] 1155                     sta      *VIA_port_b                  ; 4 
   4B82 D7 01         [ 4] 1156                     stb      *VIA_port_a                  ; 4 
                           1157 ; macro call ->  Y_DELAY_HALF_4
   4B84 12            [ 2] 1158  nop 
                           1159 ; macro call ->  ADD_BURST
                           1160  
                           1161 
   4B85 97 0A         [ 4] 1162                     sta      *VIA_shift_reg               ; 4 
                           1163 ; macro call ->  DELAY_NONE
                           1164 ; macro call ->  ADD_BURST
                           1165  
   4B87 9F 00         [ 5] 1166                     stx      *VIA_port_b                  ; 5 
   4B89 97 05         [ 4] 1167                     sta      *VIA_t1_cnt_hi               ; 4 
                           1168 ; macro call ->                     ADD_NOPS  
   4B8B 12            [ 2] 1169  nop 
   4B8C 7E 49 47      [ 4] 1170                     jmp      cont7
                           1171  .globl SMVB_startMove_yd4_quadro
   4B8F                    1172 SMVB_startMove_yd4_quadro:
                           1173 ; macro call ->                     SET_Y_INT  
   4B8F 97 00         [ 4] 1174                     sta      *VIA_port_b                  ; 4 
   4B91 D7 01         [ 4] 1175                     stb      *VIA_port_a                  ; 4 
                           1176 ; macro call ->  Y_DELAY_HALF_4
   4B93 12            [ 2] 1177  nop 
                           1178 ; macro call ->  ADD_BURST
                           1179  
                           1180 
   4B94 97 0A         [ 4] 1181                     sta      *VIA_shift_reg               ; 4 
                           1182 ; macro call ->  DELAY_NONE
                           1183 ; macro call ->  ADD_BURST
                           1184  
   4B96 9F 00         [ 5] 1185                     stx      *VIA_port_b                  ; 5 
   4B98 97 05         [ 4] 1186                     sta      *VIA_t1_cnt_hi               ; 4 
                           1187 ; macro call ->                     ADD_NOPS  
   4B9A 12            [ 2] 1188  nop 
   4B9B 7E 49 6B      [ 4] 1189                     jmp      cont3
                           1190  .globl SMVB_startMove_yd4_tripple
   4B9E                    1191 SMVB_startMove_yd4_tripple:
                           1192 ; macro call ->                     SET_Y_INT  
   4B9E 97 00         [ 4] 1193                     sta      *VIA_port_b                  ; 4 
   4BA0 D7 01         [ 4] 1194                     stb      *VIA_port_a                  ; 4 
                           1195 ; macro call ->  Y_DELAY_HALF_4
   4BA2 12            [ 2] 1196  nop 
                           1197 ; macro call ->  ADD_BURST
                           1198  
                           1199 
   4BA3 97 0A         [ 4] 1200                     sta      *VIA_shift_reg               ; 4 
                           1201 ; macro call ->  DELAY_NONE
                           1202 ; macro call ->  ADD_BURST
                           1203  
   4BA5 9F 00         [ 5] 1204                     stx      *VIA_port_b                  ; 5 
   4BA7 97 05         [ 4] 1205                     sta      *VIA_t1_cnt_hi               ; 4 
                           1206 ; macro call ->                     ADD_NOPS  
   4BA9 12            [ 2] 1207  nop 
   4BAA 7E 49 74      [ 4] 1208                     jmp      cont2
                           1209 
                           1210  .globl SMVB_startMove_yd4_yEqx_single
   4BAD                    1211 SMVB_startMove_yd4_yEqx_single:                                ;#isfunction  
                           1212 ; macro call ->                     SET_Y_INT  
   4BAD 97 00         [ 4] 1213                     sta      *VIA_port_b                  ; 4 
   4BAF D7 01         [ 4] 1214                     stb      *VIA_port_a                  ; 4 
                           1215 ; macro call ->  Y_DELAY_HALF_4
   4BB1 12            [ 2] 1216  nop 
                           1217 ; macro call ->  ADD_BURST
                           1218  
                           1219 
   4BB2 0C 00         [ 6] 1220                     inc      *VIA_port_b 
   4BB4 97 05         [ 4] 1221                     sta      *VIA_t1_cnt_hi 
   4BB6 97 0A         [ 4] 1222                     sta      *VIA_shift_reg               ; 4 
                           1223 ; macro call ->                     ADD_NOPS  
   4BB8 12            [ 2] 1224  nop 
   4BB9 37 94         [ 8] 1225                     pulu     b,x,pc 
                           1226  .globl SMVB_startMove_xyStays_single
   4BBB                    1227 SMVB_startMove_xyStays_single: ;#isfunction 
   4BBB 97 05         [ 4] 1228                     sta      *VIA_t1_cnt_hi 
   4BBD D7 0A         [ 4] 1229                     stb      *VIA_shift_reg 
                           1230 ; macro call ->                     ADD_NOPS  
   4BBF 12            [ 2] 1231  nop 
   4BC0 37 94         [ 8] 1232                     pulu     b,x,pc 
                           1233 
                           1234  .globl SMVB_startMove_yEqx_single_sj
   4BC2                    1235 SMVB_startMove_yEqx_single_sj:                             ;#isfunction  
                           1236 ; macro call ->                     SET_Y_INT  
   4BC2 97 00         [ 4] 1237                     sta      *VIA_port_b                  ; 4 
   4BC4 D7 01         [ 4] 1238                     stb      *VIA_port_a                  ; 4 
                           1239 ; macro call ->                     WAIT2    
   4BC6 12            [ 2] 1240  nop ;     wait 2 cycles 
                           1241 ; macro call ->  DELAY_NONE
                           1242 ; macro call ->  ADD_BURST
                           1243  
   4BC7 0C 00         [ 6] 1244                     inc      *VIA_port_b 
   4BC9 97 05         [ 4] 1245                     sta      *VIA_t1_cnt_hi 
   4BCB 97 0A         [ 4] 1246                     sta      *VIA_shift_reg               ; 4 
                           1247 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4BCD 12            [ 2] 1248  nop 
   4BCE EE C4         [ 5] 1249                     ldu      ,u 
   4BD0 37 94         [ 8] 1250                     pulu     b,x,pc 
                           1251  .globl SMVB_startMove_yd4_yEqx_single_sj
   4BD2                    1252 SMVB_startMove_yd4_yEqx_single_sj:                             ;#isfunction  
                           1253 
                           1254 ; macro call ->                     SET_Y_INT  
   4BD2 97 00         [ 4] 1255                     sta      *VIA_port_b                  ; 4 
   4BD4 D7 01         [ 4] 1256                     stb      *VIA_port_a                  ; 4 
                           1257 ; macro call ->                     WAIT2    
   4BD6 12            [ 2] 1258  nop ;     wait 2 cycles 
                           1259 ; macro call ->  Y_DELAY_HALF_4
   4BD7 12            [ 2] 1260  nop 
                           1261 ; macro call ->  ADD_BURST
                           1262  
                           1263 
   4BD8 0C 00         [ 6] 1264                     inc      *VIA_port_b 
   4BDA 97 05         [ 4] 1265                     sta      *VIA_t1_cnt_hi 
   4BDC 97 0A         [ 4] 1266                     sta      *VIA_shift_reg               ; 4 
                           1267 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4BDE 12            [ 2] 1268  nop 
   4BDF EE C4         [ 5] 1269                     ldu      ,u 
   4BE1 37 94         [ 8] 1270                     pulu     b,x,pc 
                           1271  .globl SMVB_startMove_yd4_newY_eq_oldX_single
   4BE3                    1272 SMVB_startMove_yd4_newY_eq_oldX_single:
                           1273 
                           1274  .globl SMVB_startMove_newY_eq_oldX_single
   4BE3                    1275 SMVB_startMove_newY_eq_oldX_single:;#isfunction  
   4BE3 97 00         [ 4] 1276                     sta      *VIA_port_b                  ; 4 
                           1277 ; macro call ->                     INIT_MOVE  
   4BE5 C6 E0         [ 2] 1278                     ldb      #0b11100000 
   4BE7 D7 0A         [ 4] 1279                     stb      *VIA_shift_reg               ; 
                           1280 ; macro call ->  DELAY_NONE
                           1281 ; macro call ->  ADD_BURST
   4BE9 12            [ 2] 1282  nop ; y4d
                           1283  
   4BEA 9F 00         [ 5] 1284                     stx      *VIA_port_b                  ; 5 
   4BEC 97 05         [ 4] 1285                     sta      *VIA_t1_cnt_hi 
                           1286 ; macro call ->                     ADD_NOPS                          ; reduced by ldu ,u - 5 cycles 
   4BEE 12            [ 2] 1287  nop 
   4BEF 37 94         [ 8] 1288                     pulu     b,x,pc 
                           1289  .globl SMVB_startMove_newY_eq_oldX_single_sj
   4BF1                    1290 SMVB_startMove_newY_eq_oldX_single_sj: ;#isfunction  
   4BF1 97 00         [ 4] 1291                     sta      *VIA_port_b                  ; 4 
   4BF3 EE C4         [ 5] 1292                     ldu      ,u 
                           1293 ; macro call ->                     INIT_MOVE_SJ  
                           1294 ; macro call ->  DELAY_NONE
                           1295 ; macro call ->  ADD_BURST
                           1296  
   4BF5 9F 00         [ 5] 1297                     stx      *VIA_port_b                  ; 5 
   4BF7 97 05         [ 4] 1298                     sta      *VIA_t1_cnt_hi 
   4BF9 97 0A         [ 4] 1299                     sta      *VIA_shift_reg               ; 
                           1300 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4BFB 12            [ 2] 1301  nop 
   4BFC 37 94         [ 8] 1302                     pulu     b,x,pc 
                           1303  .globl SMVB_startDraw_newY_eq_oldX_single
   4BFE                    1304 SMVB_startDraw_newY_eq_oldX_single:                       ;#isfunction  
   4BFE 97 00         [ 4] 1305                     sta      *VIA_port_b                  ; 4 
   4C00 C6 01         [ 2] 1306                     ldb      #SHITREG_POKE_VALUE 
   4C02 D7 0A         [ 4] 1307                     stb      *VIA_shift_reg               ; 4 
                           1308 ; macro call ->  DELAY_NONE
                           1309 ; macro call ->  ADD_BURST
                           1310  
   4C04 9F 00         [ 5] 1311                     stx      *VIA_port_b                  ; 5 
   4C06 97 05         [ 4] 1312                     sta      *VIA_t1_cnt_hi 
                           1313 ; macro call ->                     ADD_NOPS  
   4C08 12            [ 2] 1314  nop 
   4C09 37 94         [ 8] 1315                     pulu     b,x,pc 
                           1316  .globl SMVB_startDraw_newY_eq_oldX_single_sj
   4C0B                    1317 SMVB_startDraw_newY_eq_oldX_single_sj:                    ;#isfunction  
   4C0B 97 00         [ 4] 1318                     sta      *VIA_port_b                  ; 4 
   4C0D C6 01         [ 2] 1319                     ldb      #SHITREG_POKE_VALUE 
   4C0F D7 0A         [ 4] 1320                     stb      *VIA_shift_reg               ; 4 
                           1321 ; macro call ->  DELAY_NONE
                           1322 ; macro call ->  ADD_BURST
                           1323  
   4C11 9F 00         [ 5] 1324                     stx      *VIA_port_b                  ; 5 
   4C13 97 05         [ 4] 1325                     sta      *VIA_t1_cnt_hi 
                           1326 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4C15 12            [ 2] 1327  nop 
   4C16 EE C4         [ 5] 1328                     ldu      ,u 
   4C18 37 94         [ 8] 1329                     pulu     b,x,pc 
                           1330 
                           1331 
                           1332  .globl SMVB_lastDraw_rts                                         ;#isfunction  
                           1333  .globl SMVB_FlagWait
   4C1A                    1334 SMVB_lastDraw_rts:
   4C1A                    1335 SMVB_FlagWait: 
   4C1A D5 0D         [ 4] 1336                     bitb     *VIA_int_flags 
   4C1C 27 FC         [ 3] 1337                     beq      SMVB_FlagWait 
   4C1E 97 0A         [ 4] 1338                     sta      *VIA_shift_reg 
                           1339  .globl SMVB_rts
   4C20                    1340 SMVB_rts:                                                 ;#isfunction  
   4C20 C6 80         [ 2] 1341                     ldb      #0x80
   4C22 86 CC         [ 2] 1342                     LDA      #0xCC 
   4C24 B7 D0 0C      [ 5] 1343                     STA      VIA_cntl                     ;/BLANK low and /ZERO low 
   4C27 F7 D0 04      [ 5] 1344                     stB      VIA_t1_cnt_lo 
                           1345 ; and ensures integrators are clean (good positioning!)
                           1346 ;                    ldd      #0 
   4C2A 9F 00         [ 5] 1347                     stx      *VIA_port_b 
                           1348 ; RTS for title!
                           1349 ;                    puls     u,pc                         ; (D = y,x, pc = next object) 
   4C2C 39            [ 5] 1350                     rts      
                           1351 
                           1352 ;// TODO CHECK WITH SHIELD + CO
                           1353  .globl SMVB_lastDraw_rts_stay
   4C2D                    1354 SMVB_lastDraw_rts_stay:                                    ;#isfunction  
                           1355 ;                    SET_Y_INT  
                           1356 ;                    Y_DELAY_HALF                          ; 4 
                           1357 ;                    ldd      #0x40E0 
                           1358 ;                    stx      <VIA_port_b                  ; 5 
                           1359 ;                    clr      <VIA_t1_cnt_hi 
                           1360 ;                    ADD_NOPS  
   4C2D 4F            [ 2] 1361  clra
                           1362  .globl SMVB_FlagWait3
   4C2E                    1363 SMVB_FlagWait3:                                           ;#isfunction  
   4C2E D5 0D         [ 4] 1364                     bitb     *VIA_int_flags 
   4C30 27 FC         [ 3] 1365                     beq      SMVB_FlagWait3 
   4C32 97 0A         [ 4] 1366                     sta      *VIA_shift_reg 
   4C34 12            [ 2] 1367  nop 
   4C35 12            [ 2] 1368  nop 
                           1369 ;                    rts      
   4C36 35 C0         [ 7] 1370                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1371 
                           1372  .globl SMVB_lastMove_rts_stay
   4C38                    1373 SMVB_lastMove_rts_stay:                                    ;#isfunction  
   4C38 C6 40         [ 2] 1374                     ldb      #0x40 
                           1375  .globl SMVB_FlagWait3_2
   4C3A                    1376 SMVB_FlagWait3_2: 
   4C3A D5 0D         [ 4] 1377                     bitb     *VIA_int_flags 
   4C3C 27 FC         [ 3] 1378                     beq      SMVB_FlagWait3_2 
   4C3E 97 0A         [ 4] 1379                     sta      *VIA_shift_reg 
   4C40 35 C0         [ 7] 1380                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1381 
                           1382 ; todo 
                           1383 ; last draw could contain 0xF in A
                           1384 ; than load not needed - attention 
                           1385 ; when cycles are not done for load, than shift value might be needed 2 higher!
                           1386 ; also in X could be some sensible value in X for one of the other 
                           1387  .globl SMVB_lastDraw_rts2
   4C42                    1388 SMVB_lastDraw_rts2:                                        ;#isfunction  
                           1389 ;                    ldb      #0xf0 
   4C42 12            [ 2] 1390  nop 
   4C43 D7 0A         [ 4] 1391                     stb      *VIA_shift_reg 
   4C45 86 80         [ 2] 1392                     lda      #0x80
   4C47 97 04         [ 4] 1393                     sta      *VIA_t1_cnt_lo 
                           1394 ; extended on purpose to gain one cycle of time
                           1395 ; to reset to 
                           1396 ; a) swithc light off before zeroing
                           1397 ; b) zero
                           1398  .globl SMVB_rts2
   4C49                    1399 SMVB_rts2:                                                ;#isfunction  
   4C49 C6 CC         [ 2] 1400                     ldb      #0xcc 
   4C4B F7 D0 0C      [ 5] 1401                     STb      VIA_cntl                    ;/BLANK low and /ZERO low 
   4C4E BF D0 00      [ 6] 1402                     stx      VIA_port_b 
                           1403 ; nop 10
   4C51 35 C0         [ 7] 1404                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1405 
                           1406 
                           1407 
                           1408 
                           1409  .globl __SMVB_sceneData
   4C53                    1410 __SMVB_sceneData:
   4C53 4C 5B              1411  .word _telengard_0 ; list of all single vectorlists in this
   4C55 4D 76              1412  .word _telengard_1
   4C57 4E A7              1413  .word _telengard_2
   4C59 00 00              1414  .word 0
                           1415 
                           1416  .globl _telengard_0
   4C5B                    1417 _telengard_0:
   4C5B 68 01 85           1418 	.byte  0x68, 0x01, -0x7B
   4C5E 49 3A              1419 	.word SMVB_continue_octo
   4C60 0A 01 50           1420 	.byte  0x0A, 0x01,  0x50
   4C63 4B 23              1421 	.word SMVB_startDraw_yd4_single
   4C65 07 01 5F           1422 	.byte  0x07, 0x01,  0x5F
   4C68 49 85              1423 	.word SMVB_continue_double
   4C6A 00 01 46           1424 	.byte  0x00, 0x01,  0x46
   4C6D 48 81              1425 	.word SMVB_continue7_single
   4C6F FB 01 5A           1426 	.byte -0x05, 0x01,  0x5A
   4C72 F6 01 7D           1427 	.byte -0x0A, 0x01,  0x7D
   4C75 DD 01 F1           1428 	.byte -0x23, 0x01, -0x0F
   4C78 19 01 CA           1429 	.byte  0x19, 0x01, -0x36
   4C7B 00 01 B5           1430 	.byte  0x00, 0x01, -0x4B
   4C7E F6 01 A6           1431 	.byte -0x0A, 0x01, -0x5A
   4C81 D3 01 E7           1432 	.byte -0x2D, 0x01, -0x19
   4C84 48 8E              1433 	.word SMVB_continue6_single
   4C86 BA 01 0A           1434 	.byte -0x46, 0x01,  0x0A
   4C89 C9 01 00           1435 	.byte -0x37, 0x01,  0x00
   4C8C BF 01 0A           1436 	.byte -0x41, 0x01,  0x0A
   4C8F A1 01 05           1437 	.byte -0x5F, 0x01,  0x05
   4C92 A6 01 0A           1438 	.byte -0x5A, 0x01,  0x0A
   4C95 AE 01 05           1439 	.byte -0x52, 0x01,  0x05
   4C98 49 85              1440 	.word SMVB_continue_double
   4C9A 9C 01 00           1441 	.byte -0x64, 0x01,  0x00
   4C9D 49 1E              1442 	.word SMVB_continue_quadro
   4C9F D3 01 F6           1443 	.byte -0x2D, 0x01, -0x0A
   4CA2 48 A8              1444 	.word SMVB_continue4_single
   4CA4 DD 01 E7           1445 	.byte -0x23, 0x01, -0x19
   4CA7 4B 01 DD           1446 	.byte  0x4B, 0x01, -0x23
   4CAA 5F 01 0F           1447 	.byte  0x5F, 0x01,  0x0F
   4CAD 4D 01 00           1448 	.byte  0x4D, 0x01,  0x00
   4CB0 49 85              1449 	.word SMVB_continue_double
   4CB2 52 01 05           1450 	.byte  0x52, 0x01,  0x05
   4CB5 49 85              1451 	.word SMVB_continue_double
   4CB7 56 01 FD           1452 	.byte  0x56, 0x01, -0x03
   4CBA 49 10              1453 	.word SMVB_continue_tripple
   4CBC 6E 01 F6           1454 	.byte  0x6E, 0x01, -0x0A
   4CBF 48 C2              1455 	.word SMVB_continue2_single
   4CC1 73 01 FB           1456 	.byte  0x73, 0x01, -0x05
   4CC4 2D 01 F6           1457 	.byte  0x2D, 0x01, -0x0A
   4CC7 48 DC              1458 	.word SMVB_continue_yd4_single
   4CC9 23 01 E2           1459 	.byte  0x23, 0x01, -0x1E
   4CCC 48 9B              1460 	.word SMVB_continue5_single
   4CCE 0A 01 A6           1461 	.byte  0x0A, 0x01, -0x5A
   4CD1 F6 01 A1           1462 	.byte -0x0A, 0x01, -0x5F
   4CD4 E7 01 D8           1463 	.byte -0x19, 0x01, -0x28
   4CD7 2D 01 FB           1464 	.byte  0x2D, 0x01, -0x05
   4CDA 07 01 68           1465 	.byte  0x07, 0x01,  0x68
   4CDD 4A A7              1466 	.word SMVB_startMove_hex
   4CDF DD 01 E2           1467 	.byte -0x23, 0x01, -0x1E
   4CE2 4B 23              1468 	.word SMVB_startDraw_single
   4CE4 88 01 E7           1469 	.byte -0x78, 0x01, -0x19
   4CE7 48 DC              1470 	.word SMVB_continue_yd4_single
   4CE9 D3 01 E2           1471 	.byte -0x2D, 0x01, -0x1E
   4CEC 48 9B              1472 	.word SMVB_continue5_single
   4CEE 41 01 F1           1473 	.byte  0x41, 0x01, -0x0F
   4CF1 23 01 E2           1474 	.byte  0x23, 0x01, -0x1E
   4CF4 14 01 CE           1475 	.byte  0x14, 0x01, -0x32
   4CF7 EC 01 AB           1476 	.byte -0x14, 0x01, -0x55
   4CFA 97 01 F1           1477 	.byte -0x69, 0x01, -0x0F
   4CFD 48 DC              1478 	.word SMVB_continue_yd4_single
   4CFF AE 01 00           1479 	.byte -0x52, 0x01,  0x00
   4D02 49 85              1480 	.word SMVB_continue_double
   4D04 B0 01 0A           1481 	.byte -0x50, 0x01,  0x0A
   4D07 48 CF              1482 	.word SMVB_continue_single
   4D09 B3 01 0C           1483 	.byte -0x4D, 0x01,  0x0C
   4D0C 49 85              1484 	.word SMVB_continue_double
   4D0E AB 01 05           1485 	.byte -0x55, 0x01,  0x05
   4D11 49 85              1486 	.word SMVB_continue_double
   4D13 9B 01 FE           1487 	.byte -0x65, 0x01, -0x02
   4D16 49 3A              1488 	.word SMVB_continue_octo
   4D18 5A 01 E9           1489 	.byte  0x5A, 0x01, -0x17
   4D1B 49 10              1490 	.word SMVB_continue_tripple
   4D1D 3C 01 E2           1491 	.byte  0x3C, 0x01, -0x1E
   4D20 48 CF              1492 	.word SMVB_continue_single
   4D22 6B 01 C7           1493 	.byte  0x6B, 0x01, -0x39
   4D25 49 85              1494 	.word SMVB_continue_double
   4D27 14 01 37           1495 	.byte  0x14, 0x01,  0x37
   4D2A 48 DC              1496 	.word SMVB_continue_yd4_single
   4D2C 64 01 0F           1497 	.byte  0x64, 0x01,  0x0F
   4D2F 48 CF              1498 	.word SMVB_continue_single
   4D31 64 01 00           1499 	.byte  0x64, 0x01,  0x00
   4D34 49 1E              1500 	.word SMVB_continue_quadro
   4D36 65 01 FB           1501 	.byte  0x65, 0x01, -0x05
   4D39 49 10              1502 	.word SMVB_continue_tripple
   4D3B 64 01 00           1503 	.byte  0x64, 0x01,  0x00
   4D3E 48 CF              1504 	.word SMVB_continue_single
   4D40 0F 01 B5           1505 	.byte  0x0F, 0x01, -0x4B
   4D43 48 DC              1506 	.word SMVB_continue_yd4_single
   4D45 F1 01 C4           1507 	.byte -0x0F, 0x01, -0x3C
   4D48 48 81              1508 	.word SMVB_continue7_single
   4D4A E2 01 DD           1509 	.byte -0x1E, 0x01, -0x23
   4D4D D3 01 EC           1510 	.byte -0x2D, 0x01, -0x14
   4D50 D3 01 14           1511 	.byte -0x2D, 0x01,  0x14
   4D53 50 01 B5           1512 	.byte  0x50, 0x01, -0x4B
   4D56 55 01 DD           1513 	.byte  0x55, 0x01, -0x23
   4D59 32 01 DD           1514 	.byte  0x32, 0x01, -0x23
   4D5C 28 01 E2           1515 	.byte  0x28, 0x01, -0x1E
   4D5F 48 C2              1516 	.word SMVB_continue2_single
   4D61 F6 01 37           1517 	.byte -0x0A, 0x01,  0x37
   4D64 01 01 6E           1518 	.byte  0x01, 0x01,  0x6E
   4D67 49 2C              1519 	.word SMVB_continue_hex
   4D69 0F 01 2D           1520 	.byte  0x0F, 0x01,  0x2D
   4D6C 48 C2              1521 	.word SMVB_continue2_single
   4D6E DD 01 FB           1522 	.byte -0x23, 0x01, -0x05
   4D71 40 00 00           1523 	.byte  0x40, 0x00,  0x00
   4D74 4C 1A              1524 	.word SMVB_lastDraw_rts
                           1525  .globl _telengard_1
   4D76                    1526 _telengard_1:
   4D76 53 01 99           1527 	.byte  0x53, 0x01, -0x67
   4D79 49 2C              1528 	.word SMVB_continue_hex
   4D7B 4B 01 0A           1529 	.byte  0x4B, 0x01,  0x0A
   4D7E 4B 23              1530 	.word SMVB_startDraw_single
   4D80 37 01 1E           1531 	.byte  0x37, 0x01,  0x1E
   4D83 48 C2              1532 	.word SMVB_continue2_single
   4D85 46 01 5E           1533 	.byte  0x46, 0x01,  0x5E
   4D88 9C 01 28           1534 	.byte -0x64, 0x01,  0x28
   4D8B 48 DC              1535 	.word SMVB_continue_yd4_single
   4D8D 14 01 D3           1536 	.byte  0x14, 0x01, -0x2D
   4D90 48 A8              1537 	.word SMVB_continue4_single
   4D92 E2 01 D9           1538 	.byte -0x1E, 0x01, -0x27
   4D95 C4 01 F1           1539 	.byte -0x3C, 0x01, -0x0F
   4D98 23 01 3B           1540 	.byte  0x23, 0x01,  0x3B
   4D9B C9 01 14           1541 	.byte -0x37, 0x01,  0x14
   4D9E 48 DC              1542 	.word SMVB_continue_yd4_single
   4DA0 E7 01 CA           1543 	.byte -0x19, 0x01, -0x36
   4DA3 48 A8              1544 	.word SMVB_continue4_single
   4DA5 DD 01 F6           1545 	.byte -0x23, 0x01, -0x0A
   4DA8 05 01 36           1546 	.byte  0x05, 0x01,  0x36
   4DAB 28 01 1E           1547 	.byte  0x28, 0x01,  0x1E
   4DAE BF 01 2D           1548 	.byte -0x41, 0x01,  0x2D
   4DB1 48 DC              1549 	.word SMVB_continue_yd4_single
   4DB3 D3 01 9C           1550 	.byte -0x2D, 0x01, -0x64
   4DB6 48 A8              1551 	.word SMVB_continue4_single
   4DB8 00 01 CA           1552 	.byte  0x00, 0x01, -0x36
   4DBB 23 01 D3           1553 	.byte  0x23, 0x01, -0x2D
   4DBE 50 01 EC           1554 	.byte  0x50, 0x01, -0x14
   4DC1 2D 01 63           1555 	.byte  0x2D, 0x01,  0x63
   4DC4 4A 66              1556 	.word SMVB_startMove_tripple
   4DC6 A6 01 00           1557 	.byte -0x5A, 0x01,  0x00
   4DC9 4B 03              1558 	.word SMVB_startDraw_yd4_double
   4DCB 37 01 3C           1559 	.byte  0x37, 0x01,  0x3C
   4DCE 48 C2              1560 	.word SMVB_continue2_single
   4DD0 37 01 0A           1561 	.byte  0x37, 0x01,  0x0A
   4DD3 B0 01 1E           1562 	.byte -0x50, 0x01,  0x1E
   4DD6 48 DC              1563 	.word SMVB_continue_yd4_single
   4DD8 9C 01 19           1564 	.byte -0x64, 0x01,  0x19
   4DDB 48 8E              1565 	.word SMVB_continue6_single
   4DDD 0A 01 A6           1566 	.byte  0x0A, 0x01, -0x5A
   4DE0 F6 01 B0           1567 	.byte -0x0A, 0x01, -0x50
   4DE3 37 01 F6           1568 	.byte  0x37, 0x01, -0x0A
   4DE6 3C 01 00           1569 	.byte  0x3C, 0x01,  0x00
   4DE9 6E 01 EC           1570 	.byte  0x6E, 0x01, -0x14
   4DEC 37 01 E7           1571 	.byte  0x37, 0x01, -0x19
   4DEF 48 DC              1572 	.word SMVB_continue_yd4_single
   4DF1 2D 01 50           1573 	.byte  0x2D, 0x01,  0x50
   4DF4 48 CF              1574 	.word SMVB_continue_single
   4DF6 B5 01 14           1575 	.byte -0x4B, 0x01,  0x14
   4DF9 48 DC              1576 	.word SMVB_continue_yd4_single
   4DFB 02 01 6C           1577 	.byte  0x02, 0x01,  0x6C
   4DFE 4A 75              1578 	.word SMVB_startMove_quadro
   4E00 41 01 EC           1579 	.byte  0x41, 0x01, -0x14
   4E03 4B 23              1580 	.word SMVB_startDraw_single
   4E05 00 01 4B           1581 	.byte  0x00, 0x01,  0x4B
   4E08 48 DC              1582 	.word SMVB_continue_yd4_single
   4E0A 92 01 00           1583 	.byte -0x6E, 0x01,  0x00
   4E0D 48 DC              1584 	.word SMVB_continue_yd4_single
   4E0F A6 01 F6           1585 	.byte -0x5A, 0x01, -0x0A
   4E12 48 8E              1586 	.word SMVB_continue6_single
   4E14 BA 01 19           1587 	.byte -0x46, 0x01,  0x19
   4E17 C9 01 1E           1588 	.byte -0x37, 0x01,  0x1E
   4E1A 00 01 D3           1589 	.byte  0x00, 0x01, -0x2D
   4E1D 46 01 BF           1590 	.byte  0x46, 0x01, -0x41
   4E20 55 01 C9           1591 	.byte  0x55, 0x01, -0x37
   4E23 D3 01 F6           1592 	.byte -0x2D, 0x01, -0x0A
   4E26 48 DC              1593 	.word SMVB_continue_yd4_single
   4E28 D3 01 00           1594 	.byte -0x2D, 0x01,  0x00
   4E2B 48 81              1595 	.word SMVB_continue7_single
   4E2D BF 01 1E           1596 	.byte -0x41, 0x01,  0x1E
   4E30 00 01 BF           1597 	.byte  0x00, 0x01, -0x41
   4E33 19 01 EC           1598 	.byte  0x19, 0x01, -0x14
   4E36 E7 01 BF           1599 	.byte -0x19, 0x01, -0x41
   4E39 00 01 D3           1600 	.byte  0x00, 0x01, -0x2D
   4E3C 19 01 CE           1601 	.byte  0x19, 0x01, -0x32
   4E3F 28 01 E2           1602 	.byte  0x28, 0x01, -0x1E
   4E42 48 8E              1603 	.word SMVB_continue6_single
   4E44 46 01 F1           1604 	.byte  0x46, 0x01, -0x0F
   4E47 37 01 05           1605 	.byte  0x37, 0x01,  0x05
   4E4A 37 01 1E           1606 	.byte  0x37, 0x01,  0x1E
   4E4D 2D 01 2D           1607 	.byte  0x2D, 0x01,  0x2D
   4E50 19 01 3C           1608 	.byte  0x19, 0x01,  0x3C
   4E53 BA 01 28           1609 	.byte -0x46, 0x01,  0x28
   4E56 48 DC              1610 	.word SMVB_continue_yd4_single
   4E58 F6 01 B5           1611 	.byte -0x0A, 0x01, -0x4B
   4E5B 48 A8              1612 	.word SMVB_continue4_single
   4E5D D3 01 DD           1613 	.byte -0x2D, 0x01, -0x23
   4E60 DD 01 F6           1614 	.byte -0x23, 0x01, -0x0A
   4E63 19 01 4B           1615 	.byte  0x19, 0x01,  0x4B
   4E66 D3 01 0F           1616 	.byte -0x2D, 0x01,  0x0F
   4E69 48 DC              1617 	.word SMVB_continue_yd4_single
   4E6B E7 01 D3           1618 	.byte -0x19, 0x01, -0x2D
   4E6E 48 A8              1619 	.word SMVB_continue4_single
   4E70 D8 01 E7           1620 	.byte -0x28, 0x01, -0x19
   4E73 FB 01 2D           1621 	.byte -0x05, 0x01,  0x2D
   4E76 32 01 2D           1622 	.byte  0x32, 0x01,  0x2D
   4E79 C4 01 23           1623 	.byte -0x3C, 0x01,  0x23
   4E7C 48 DC              1624 	.word SMVB_continue_yd4_single
   4E7E 2D 01 0F           1625 	.byte  0x2D, 0x01,  0x0F
   4E81 48 A8              1626 	.word SMVB_continue4_single
   4E83 64 01 05           1627 	.byte  0x64, 0x01,  0x05
   4E86 3C 01 F6           1628 	.byte  0x3C, 0x01, -0x0A
   4E89 41 01 E2           1629 	.byte  0x41, 0x01, -0x1E
   4E8C 00 01 46           1630 	.byte  0x00, 0x01,  0x46
   4E8F 48 DC              1631 	.word SMVB_continue_yd4_single
   4E91 D3 01 0F           1632 	.byte -0x2D, 0x01,  0x0F
   4E94 48 9B              1633 	.word SMVB_continue5_single
   4E96 D3 01 0A           1634 	.byte -0x2D, 0x01,  0x0A
   4E99 D3 01 2D           1635 	.byte -0x2D, 0x01,  0x2D
   4E9C 2D 01 14           1636 	.byte  0x2D, 0x01,  0x14
   4E9F 19 01 F6           1637 	.byte  0x19, 0x01, -0x0A
   4EA2 40 00 00           1638 	.byte  0x40, 0x00,  0x00
   4EA5 4C 1A              1639 	.word SMVB_lastDraw_rts
                           1640  .globl _telengard_2
   4EA7                    1641 _telengard_2:
   4EA7 62 01 64           1642 	.byte  0x62, 0x01,  0x64
   4EAA 49 1E              1643 	.word SMVB_continue_quadro
   4EAC F7 01 BA           1644 	.byte -0x09, 0x01, -0x46
   4EAF 4B 23              1645 	.word SMVB_startDraw_yd4_single
   4EB1 09 01 BA           1646 	.byte  0x09, 0x01, -0x46
   4EB4 48 81              1647 	.word SMVB_continue7_single
   4EB6 37 01 CA           1648 	.byte  0x37, 0x01, -0x36
   4EB9 45 01 EC           1649 	.byte  0x45, 0x01, -0x14
   4EBC 5A 01 14           1650 	.byte  0x5A, 0x01,  0x14
   4EBF 2D 01 23           1651 	.byte  0x2D, 0x01,  0x23
   4EC2 19 01 22           1652 	.byte  0x19, 0x01,  0x22
   4EC5 1E 01 37           1653 	.byte  0x1E, 0x01,  0x37
   4EC8 DA 01 11           1654 	.byte -0x26, 0x01,  0x11
   4ECB 48 DC              1655 	.word SMVB_continue_yd4_single
   4ECD DB 01 12           1656 	.byte -0x25, 0x01,  0x12
   4ED0 48 81              1657 	.word SMVB_continue7_single
   4ED2 00 01 C9           1658 	.byte  0x00, 0x01, -0x37
   4ED5 D3 01 D3           1659 	.byte -0x2D, 0x01, -0x2D
   4ED8 CE 01 F2           1660 	.byte -0x32, 0x01, -0x0E
   4EDB C0 01 09           1661 	.byte -0x40, 0x01,  0x09
   4EDE E7 01 3C           1662 	.byte -0x19, 0x01,  0x3C
   4EE1 2D 01 0A           1663 	.byte  0x2D, 0x01,  0x0A
   4EE4 0F 01 D3           1664 	.byte  0x0F, 0x01, -0x2D
   4EE7 48 C2              1665 	.word SMVB_continue2_single
   4EE9 36 01 46           1666 	.byte  0x36, 0x01,  0x46
   4EEC BB 01 1E           1667 	.byte -0x45, 0x01,  0x1E
   4EEF 48 DC              1668 	.word SMVB_continue_yd4_single
   4EF1 BF 01 0F           1669 	.byte -0x41, 0x01,  0x0F
   4EF4 48 81              1670 	.word SMVB_continue7_single
   4EF6 5A 01 2D           1671 	.byte  0x5A, 0x01,  0x2D
   4EF9 50 01 1E           1672 	.byte  0x50, 0x01,  0x1E
   4EFC 4B 01 0F           1673 	.byte  0x4B, 0x01,  0x0F
   4EFF 2D 01 F1           1674 	.byte  0x2D, 0x01, -0x0F
   4F02 00 01 69           1675 	.byte  0x00, 0x01,  0x69
   4F05 D3 01 FB           1676 	.byte -0x2D, 0x01, -0x05
   4F08 88 01 23           1677 	.byte -0x78, 0x01,  0x23
   4F0B 48 DC              1678 	.word SMVB_continue_yd4_single
   4F0D 8E 01 19           1679 	.byte -0x72, 0x01,  0x19
   4F10 48 C2              1680 	.word SMVB_continue2_single
   4F12 68 01 23           1681 	.byte  0x68, 0x01,  0x23
   4F15 41 01 00           1682 	.byte  0x41, 0x01,  0x00
   4F18 49 85              1683 	.word SMVB_continue_double
   4F1A 23 01 F1           1684 	.byte  0x23, 0x01, -0x0F
   4F1D 48 81              1685 	.word SMVB_continue7_single
   4F1F 00 01 50           1686 	.byte  0x00, 0x01,  0x50
   4F22 EC 01 46           1687 	.byte -0x14, 0x01,  0x46
   4F25 C9 01 2D           1688 	.byte -0x37, 0x01,  0x2D
   4F28 D3 01 00           1689 	.byte -0x2D, 0x01,  0x00
   4F2B DD 01 E7           1690 	.byte -0x23, 0x01, -0x19
   4F2E C5 01 23           1691 	.byte -0x3B, 0x01,  0x23
   4F31 B5 01 1E           1692 	.byte -0x4B, 0x01,  0x1E
   4F34 48 C2              1693 	.word SMVB_continue2_single
   4F36 23 01 0F           1694 	.byte  0x23, 0x01,  0x0F
   4F39 68 01 FB           1695 	.byte  0x68, 0x01, -0x05
   4F3C 49 85              1696 	.word SMVB_continue_double
   4F3E 2D 01 FB           1697 	.byte  0x2D, 0x01, -0x05
   4F41 48 DC              1698 	.word SMVB_continue_yd4_single
   4F43 00 01 50           1699 	.byte  0x00, 0x01,  0x50
   4F46 48 C2              1700 	.word SMVB_continue2_single
   4F48 D3 01 50           1701 	.byte -0x2D, 0x01,  0x50
   4F4B 88 01 37           1702 	.byte -0x78, 0x01,  0x37
   4F4E 48 DC              1703 	.word SMVB_continue_yd4_single
   4F50 CF 01 0A           1704 	.byte -0x31, 0x01,  0x0A
   4F53 48 B5              1705 	.word SMVB_continue3_single
   4F55 BF 01 EC           1706 	.byte -0x41, 0x01, -0x14
   4F58 D3 01 DD           1707 	.byte -0x2D, 0x01, -0x23
   4F5B 00 01 AA           1708 	.byte  0x00, 0x01, -0x56
   4F5E 49 10              1709 	.word SMVB_continue_tripple
   4F60 2D 01 05           1710 	.byte  0x2D, 0x01,  0x05
   4F63 48 A8              1711 	.word SMVB_continue4_single
   4F65 23 01 FB           1712 	.byte  0x23, 0x01, -0x05
   4F68 2D 01 E2           1713 	.byte  0x2D, 0x01, -0x1E
   4F6B 13 01 D3           1714 	.byte  0x13, 0x01, -0x2D
   4F6E 92 01 00           1715 	.byte -0x6E, 0x01,  0x00
   4F71 48 DC              1716 	.word SMVB_continue_yd4_single
   4F73 DD 01 14           1717 	.byte -0x23, 0x01,  0x14
   4F76 48 CF              1718 	.word SMVB_continue_single
   4F78 00 01 95           1719 	.byte  0x00, 0x01, -0x6B
   4F7B 49 85              1720 	.word SMVB_continue_double
   4F7D 23 01 20           1721 	.byte  0x23, 0x01,  0x20
   4F80 48 81              1722 	.word SMVB_continue7_single
   4F82 2D 01 07           1723 	.byte  0x2D, 0x01,  0x07
   4F85 2D 01 FB           1724 	.byte  0x2D, 0x01, -0x05
   4F88 00 01 B0           1725 	.byte  0x00, 0x01, -0x50
   4F8B DD 01 F6           1726 	.byte -0x23, 0x01, -0x0A
   4F8E D3 01 00           1727 	.byte -0x2D, 0x01,  0x00
   4F91 D3 01 0F           1728 	.byte -0x2D, 0x01,  0x0F
   4F94 09 01 A6           1729 	.byte  0x09, 0x01, -0x5A
   4F97 48 CF              1730 	.word SMVB_continue_single
   4F99 0A 01 60           1731 	.byte  0x0A, 0x01,  0x60
   4F9C 4A A7              1732 	.word SMVB_startMove_hex
   4F9E 68 01 F6           1733 	.byte  0x68, 0x01, -0x0A
   4FA1 4A 26              1734 	.word SMVB_startDraw_double
   4FA3 D3 01 2D           1735 	.byte -0x2D, 0x01,  0x2D
   4FA6 48 DC              1736 	.word SMVB_continue_yd4_single
   4FA8 B5 01 14           1737 	.byte -0x4B, 0x01,  0x14
   4FAB 48 B5              1738 	.word SMVB_continue3_single
   4FAD C5 01 00           1739 	.byte -0x3B, 0x01,  0x00
   4FB0 E2 01 D3           1740 	.byte -0x1E, 0x01, -0x2D
   4FB3 6E 01 90           1741 	.byte  0x6E, 0x01, -0x70
   4FB6 4A 06              1742 	.word SMVB_startMove_double
   4FB8 D8 01 19           1743 	.byte -0x28, 0x01,  0x19
   4FBB 4B 23              1744 	.word SMVB_startDraw_yd4_single
   4FBD D3 01 F6           1745 	.byte -0x2D, 0x01, -0x0A
   4FC0 48 B5              1746 	.word SMVB_continue3_single
   4FC2 FB 01 D3           1747 	.byte -0x05, 0x01, -0x2D
   4FC5 5A 01 00           1748 	.byte  0x5A, 0x01,  0x00
   4FC8 00 01 1E           1749 	.byte  0x00, 0x01,  0x1E
   4FCB 48 DE              1750 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   4FCD E0 01 8B           1751 	.byte -0x20, 0x01, -0x75
   4FD0 4A 06              1752 	.word SMVB_startMove_double
   4FD2 BF 01 19           1753 	.byte -0x41, 0x01,  0x19
   4FD5 4B 23              1754 	.word SMVB_startDraw_single
   4FD7 14 01 D3           1755 	.byte  0x14, 0x01, -0x2D
   4FDA 48 C2              1756 	.word SMVB_continue2_single
   4FDC 2D 01 14           1757 	.byte  0x2D, 0x01,  0x14
   4FDF 40 00 00           1758 	.byte  0x40, 0x00,  0x00
   4FE2 4C 1A              1759 	.word SMVB_lastDraw_rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$titleScenari     029A GR  |   2 A$titleScenari     029C GR
  2 A$titleScenari     029E GR  |   2 A$titleScenari     02A0 GR
  2 A$titleScenari     02A1 GR  |   2 A$titleScenari     02A3 GR
  2 A$titleScenari     02A5 GR  |   2 A$titleScenari     02A7 GR
  2 A$titleScenari     02A9 GR  |   2 A$titleScenari     02AB GR
  2 A$titleScenari     02AD GR  |   2 A$titleScenari     02AF GR
  2 A$titleScenari     02B1 GR  |   2 A$titleScenari     02B2 GR
  2 A$titleScenari     02B5 GR  |   2 A$titleScenari     02B7 GR
  2 A$titleScenari     02B9 GR  |   2 A$titleScenari     02BB GR
  2 A$titleScenari     02BD GR  |   2 A$titleScenari     02BF GR
  2 A$titleScenari     02C1 GR  |   2 A$titleScenari     02C2 GR
  2 A$titleScenari     02C5 GR  |   2 A$titleScenari     02C7 GR
  2 A$titleScenari     02C9 GR  |   2 A$titleScenari     02CB GR
  2 A$titleScenari     02CD GR  |   2 A$titleScenari     02CF GR
  2 A$titleScenari     02D1 GR  |   2 A$titleScenari     02D2 GR
  2 A$titleScenari     02D4 GR  |   2 A$titleScenari     02D6 GR
  2 A$titleScenari     02D8 GR  |   2 A$titleScenari     02DA GR
  2 A$titleScenari     02DC GR  |   2 A$titleScenari     02DE GR
  2 A$titleScenari     02E0 GR  |   2 A$titleScenari     02E1 GR
  2 A$titleScenari     02E3 GR  |   2 A$titleScenari     02E5 GR
  2 A$titleScenari     02E7 GR  |   2 A$titleScenari     02E9 GR
  2 A$titleScenari     02EB GR  |   2 A$titleScenari     02ED GR
  2 A$titleScenari     02EF GR  |   2 A$titleScenari     02F1 GR
  2 A$titleScenari     02F2 GR  |   2 A$titleScenari     02F4 GR
  2 A$titleScenari     02F6 GR  |   2 A$titleScenari     02F8 GR
  2 A$titleScenari     02FA GR  |   2 A$titleScenari     02FC GR
  2 A$titleScenari     02FE GR  |   2 A$titleScenari     0300 GR
  2 A$titleScenari     0302 GR  |   2 A$titleScenari     0303 GR
  2 A$titleScenari     0305 GR  |   2 A$titleScenari     0307 GR
  2 A$titleScenari     0309 GR  |   2 A$titleScenari     030A GR
  2 A$titleScenari     030C GR  |   2 A$titleScenari     030E GR
  2 A$titleScenari     0310 GR  |   2 A$titleScenari     0311 GR
  2 A$titleScenari     0313 GR  |   2 A$titleScenari     0315 GR
  2 A$titleScenari     0317 GR  |   2 A$titleScenari     0318 GR
  2 A$titleScenari     031A GR  |   2 A$titleScenari     031C GR
  2 A$titleScenari     031E GR  |   2 A$titleScenari     031F GR
  2 A$titleScenari     0322 GR  |   2 A$titleScenari     0324 GR
  2 A$titleScenari     0326 GR  |   2 A$titleScenari     0327 GR
  2 A$titleScenari     0329 GR  |   2 A$titleScenari     032B GR
  2 A$titleScenari     032D GR  |   2 A$titleScenari     032E GR
  2 A$titleScenari     0331 GR  |   2 A$titleScenari     0333 GR
  2 A$titleScenari     0335 GR  |   2 A$titleScenari     0336 GR
  2 A$titleScenari     0338 GR  |   2 A$titleScenari     033A GR
  2 A$titleScenari     033C GR  |   2 A$titleScenari     033D GR
  2 A$titleScenari     0340 GR  |   2 A$titleScenari     0342 GR
  2 A$titleScenari     0344 GR  |   2 A$titleScenari     0345 GR
  2 A$titleScenari     0347 GR  |   2 A$titleScenari     0349 GR
  2 A$titleScenari     034B GR  |   2 A$titleScenari     034C GR
  2 A$titleScenari     034F GR  |   2 A$titleScenari     0351 GR
  2 A$titleScenari     0353 GR  |   2 A$titleScenari     0354 GR
  2 A$titleScenari     0356 GR  |   2 A$titleScenari     0358 GR
  2 A$titleScenari     035A GR  |   2 A$titleScenari     035B GR
  2 A$titleScenari     035D GR  |   2 A$titleScenari     035F GR
  2 A$titleScenari     0361 GR  |   2 A$titleScenari     0362 GR
  2 A$titleScenari     0364 GR  |   2 A$titleScenari     0366 GR
  2 A$titleScenari     0368 GR  |   2 A$titleScenari     0369 GR
  2 A$titleScenari     036B GR  |   2 A$titleScenari     036D GR
  2 A$titleScenari     036F GR  |   2 A$titleScenari     0370 GR
  2 A$titleScenari     0372 GR  |   2 A$titleScenari     0374 GR
  2 A$titleScenari     0376 GR  |   2 A$titleScenari     0378 GR
  2 A$titleScenari     0379 GR  |   2 A$titleScenari     037A GR
  2 A$titleScenari     037C GR  |   2 A$titleScenari     037E GR
  2 A$titleScenari     0380 GR  |   2 A$titleScenari     0381 GR
  2 A$titleScenari     0383 GR  |   2 A$titleScenari     0385 GR
  2 A$titleScenari     0387 GR  |   2 A$titleScenari     0389 GR
  2 A$titleScenari     038B GR  |   2 A$titleScenari     038C GR
  2 A$titleScenari     038E GR  |   2 A$titleScenari     0390 GR
  2 A$titleScenari     0391 GR  |   2 A$titleScenari     0393 GR
  2 A$titleScenari     0395 GR  |   2 A$titleScenari     0397 GR
  2 A$titleScenari     0399 GR  |   2 A$titleScenari     039B GR
  2 A$titleScenari     039D GR  |   2 A$titleScenari     039E GR
  2 A$titleScenari     03A0 GR  |   2 A$titleScenari     03A2 GR
  2 A$titleScenari     03A4 GR  |   2 A$titleScenari     03A6 GR
  2 A$titleScenari     03A8 GR  |   2 A$titleScenari     03AA GR
  2 A$titleScenari     03AB GR  |   2 A$titleScenari     03AD GR
  2 A$titleScenari     03AF GR  |   2 A$titleScenari     03B1 GR
  2 A$titleScenari     03B3 GR  |   2 A$titleScenari     03B5 GR
  2 A$titleScenari     03B7 GR  |   2 A$titleScenari     03B8 GR
  2 A$titleScenari     03BA GR  |   2 A$titleScenari     03BC GR
  2 A$titleScenari     03BE GR  |   2 A$titleScenari     03C0 GR
  2 A$titleScenari     03C2 GR  |   2 A$titleScenari     03C4 GR
  2 A$titleScenari     03C6 GR  |   2 A$titleScenari     03C9 GR
  2 A$titleScenari     03CC GR  |   2 A$titleScenari     03CE GR
  2 A$titleScenari     0019 GR  |   2 A$titleScenari     03CF GR
  2 A$titleScenari     03D0 GR  |   2 A$titleScenari     03D2 GR
  2 A$titleScenari     03D4 GR  |   2 A$titleScenari     03D6 GR
  2 A$titleScenari     03D7 GR  |   2 A$titleScenari     001A GR
  2 A$titleScenari     03D8 GR  |   2 A$titleScenari     03DA GR
  2 A$titleScenari     03DC GR  |   2 A$titleScenari     03DE GR
  2 A$titleScenari     03E0 GR  |   2 A$titleScenari     03E2 GR
  2 A$titleScenari     03E4 GR  |   2 A$titleScenari     03E5 GR
  2 A$titleScenari     03E7 GR  |   2 A$titleScenari     03E9 GR
  2 A$titleScenari     03EB GR  |   2 A$titleScenari     03ED GR
  2 A$titleScenari     03F0 GR  |   2 A$titleScenari     03F3 GR
  2 A$titleScenari     001C GR  |   2 A$titleScenari     001E GR
  2 A$titleScenari     0020 GR  |   2 A$titleScenari     0021 GR
  2 A$titleScenari     0023 GR  |   2 A$titleScenari     0025 GR
  2 A$titleScenari     0027 GR  |   2 A$titleScenari     0028 GR
  2 A$titleScenari     0029 GR  |   2 A$titleScenari     002B GR
  2 A$titleScenari     002D GR  |   2 A$titleScenari     002E GR
  2 A$titleScenari     0030 GR  |   2 A$titleScenari     0032 GR
  2 A$titleScenari     0034 GR  |   2 A$titleScenari     0035 GR
  2 A$titleScenari     0036 GR  |   2 A$titleScenari     0038 GR
  2 A$titleScenari     003A GR  |   2 A$titleScenari     003B GR
  2 A$titleScenari     003D GR  |   2 A$titleScenari     003F GR
  2 A$titleScenari     0041 GR  |   2 A$titleScenari     0042 GR
  2 A$titleScenari     0043 GR  |   2 A$titleScenari     0045 GR
  2 A$titleScenari     0047 GR  |   2 A$titleScenari     0048 GR
  2 A$titleScenari     004A GR  |   2 A$titleScenari     004C GR
  2 A$titleScenari     004E GR  |   2 A$titleScenari     004F GR
  2 A$titleScenari     0050 GR  |   2 A$titleScenari     0052 GR
  2 A$titleScenari     0054 GR  |   2 A$titleScenari     0055 GR
  2 A$titleScenari     0057 GR  |   2 A$titleScenari     0059 GR
  2 A$titleScenari     005B GR  |   2 A$titleScenari     005C GR
  2 A$titleScenari     005D GR  |   2 A$titleScenari     005F GR
  2 A$titleScenari     0061 GR  |   2 A$titleScenari     0062 GR
  2 A$titleScenari     0064 GR  |   2 A$titleScenari     0066 GR
  2 A$titleScenari     0068 GR  |   2 A$titleScenari     0069 GR
  2 A$titleScenari     006A GR  |   2 A$titleScenari     006C GR
  2 A$titleScenari     006E GR  |   2 A$titleScenari     006F GR
  2 A$titleScenari     0071 GR  |   2 A$titleScenari     0073 GR
  2 A$titleScenari     0075 GR  |   2 A$titleScenari     0076 GR
  2 A$titleScenari     0077 GR  |   2 A$titleScenari     0079 GR
  2 A$titleScenari     007B GR  |   2 A$titleScenari     007C GR
  2 A$titleScenari     007E GR  |   2 A$titleScenari     0080 GR
  2 A$titleScenari     0082 GR  |   2 A$titleScenari     0083 GR
  2 A$titleScenari     0084 GR  |   2 A$titleScenari     0086 GR
  2 A$titleScenari     0088 GR  |   2 A$titleScenari     0089 GR
  2 A$titleScenari     008B GR  |   2 A$titleScenari     008D GR
  2 A$titleScenari     008F GR  |   2 A$titleScenari     0090 GR
  2 A$titleScenari     0091 GR  |   2 A$titleScenari     0093 GR
  2 A$titleScenari     0095 GR  |   2 A$titleScenari     0096 GR
  2 A$titleScenari     0098 GR  |   2 A$titleScenari     009A GR
  2 A$titleScenari     009C GR  |   2 A$titleScenari     009E GR
  2 A$titleScenari     009F GR  |   2 A$titleScenari     00A1 GR
  2 A$titleScenari     00A3 GR  |   2 A$titleScenari     00A4 GR
  2 A$titleScenari     00A6 GR  |   2 A$titleScenari     00A8 GR
  2 A$titleScenari     00AA GR  |   2 A$titleScenari     00AB GR
  2 A$titleScenari     00AD GR  |   2 A$titleScenari     00AF GR
  2 A$titleScenari     00B0 GR  |   2 A$titleScenari     00B2 GR
  2 A$titleScenari     00B4 GR  |   2 A$titleScenari     00B6 GR
  2 A$titleScenari     00B7 GR  |   2 A$titleScenari     00B8 GR
  2 A$titleScenari     00BA GR  |   2 A$titleScenari     00BC GR
  2 A$titleScenari     00BD GR  |   2 A$titleScenari     00C0 GR
  2 A$titleScenari     00C2 GR  |   2 A$titleScenari     00C4 GR
  2 A$titleScenari     00C5 GR  |   2 A$titleScenari     00C6 GR
  2 A$titleScenari     00C8 GR  |   2 A$titleScenari     00CA GR
  2 A$titleScenari     00CB GR  |   2 A$titleScenari     00CE GR
  2 A$titleScenari     00D0 GR  |   2 A$titleScenari     00D2 GR
  2 A$titleScenari     00D3 GR  |   2 A$titleScenari     00D4 GR
  2 A$titleScenari     00D6 GR  |   2 A$titleScenari     00D8 GR
  2 A$titleScenari     00D9 GR  |   2 A$titleScenari     00DC GR
  2 A$titleScenari     00DE GR  |   2 A$titleScenari     00E0 GR
  2 A$titleScenari     00E1 GR  |   2 A$titleScenari     00E2 GR
  2 A$titleScenari     00E4 GR  |   2 A$titleScenari     00E6 GR
  2 A$titleScenari     00E7 GR  |   2 A$titleScenari     00E9 GR
  2 A$titleScenari     00EB GR  |   2 A$titleScenari     00EC GR
  2 A$titleScenari     00ED GR  |   2 A$titleScenari     00EF GR
  2 A$titleScenari     00F0 GR  |   2 A$titleScenari     00F2 GR
  2 A$titleScenari     00F4 GR  |   2 A$titleScenari     00F5 GR
  2 A$titleScenari     00F6 GR  |   2 A$titleScenari     00F8 GR
  2 A$titleScenari     00F9 GR  |   2 A$titleScenari     00FB GR
  2 A$titleScenari     00FD GR  |   2 A$titleScenari     00FE GR
  2 A$titleScenari     00FF GR  |   2 A$titleScenari     0101 GR
  2 A$titleScenari     0102 GR  |   2 A$titleScenari     0104 GR
  2 A$titleScenari     0106 GR  |   2 A$titleScenari     0107 GR
  2 A$titleScenari     0108 GR  |   2 A$titleScenari     010A GR
  2 A$titleScenari     010B GR  |   2 A$titleScenari     010D GR
  2 A$titleScenari     010F GR  |   2 A$titleScenari     0110 GR
  2 A$titleScenari     0111 GR  |   2 A$titleScenari     0113 GR
  2 A$titleScenari     0114 GR  |   2 A$titleScenari     0116 GR
  2 A$titleScenari     0118 GR  |   2 A$titleScenari     0119 GR
  2 A$titleScenari     011A GR  |   2 A$titleScenari     011C GR
  2 A$titleScenari     011D GR  |   2 A$titleScenari     0120 GR
  2 A$titleScenari     0122 GR  |   2 A$titleScenari     0124 GR
  2 A$titleScenari     0125 GR  |   2 A$titleScenari     0127 GR
  2 A$titleScenari     0129 GR  |   2 A$titleScenari     012B GR
  2 A$titleScenari     012C GR  |   2 A$titleScenari     012D GR
  2 A$titleScenari     012F GR  |   2 A$titleScenari     0131 GR
  2 A$titleScenari     0132 GR  |   2 A$titleScenari     0135 GR
  2 A$titleScenari     0137 GR  |   2 A$titleScenari     0139 GR
  2 A$titleScenari     013A GR  |   2 A$titleScenari     013B GR
  2 A$titleScenari     013D GR  |   2 A$titleScenari     013F GR
  2 A$titleScenari     0140 GR  |   2 A$titleScenari     0143 GR
  2 A$titleScenari     0145 GR  |   2 A$titleScenari     0147 GR
  2 A$titleScenari     0148 GR  |   2 A$titleScenari     0149 GR
  2 A$titleScenari     014B GR  |   2 A$titleScenari     014D GR
  2 A$titleScenari     014E GR  |   2 A$titleScenari     0151 GR
  2 A$titleScenari     0153 GR  |   2 A$titleScenari     0155 GR
  2 A$titleScenari     0156 GR  |   2 A$titleScenari     0157 GR
  2 A$titleScenari     0159 GR  |   2 A$titleScenari     0000 GR
  2 A$titleScenari     015B GR  |   2 A$titleScenari     015C GR
  2 A$titleScenari     015F GR  |   2 A$titleScenari     0161 GR
  2 A$titleScenari     0163 GR  |   2 A$titleScenari     0164 GR
  2 A$titleScenari     0165 GR  |   2 A$titleScenari     0167 GR
  2 A$titleScenari     0169 GR  |   2 A$titleScenari     016A GR
  2 A$titleScenari     016D GR  |   2 A$titleScenari     016F GR
  2 A$titleScenari     0171 GR  |   2 A$titleScenari     0172 GR
  2 A$titleScenari     0173 GR  |   2 A$titleScenari     0175 GR
  2 A$titleScenari     0000 GR  |   2 A$titleScenari     0177 GR
  2 A$titleScenari     0178 GR  |   2 A$titleScenari     017B GR
  2 A$titleScenari     017D GR  |   2 A$titleScenari     017F GR
  2 A$titleScenari     0181 GR  |   2 A$titleScenari     0183 GR
  2 A$titleScenari     0185 GR  |   2 A$titleScenari     0187 GR
  2 A$titleScenari     0188 GR  |   2 A$titleScenari     018A GR
  2 A$titleScenari     018C GR  |   2 A$titleScenari     018E GR
  2 A$titleScenari     0002 GR  |   2 A$titleScenari     0190 GR
  2 A$titleScenari     0192 GR  |   2 A$titleScenari     0194 GR
  2 A$titleScenari     0196 GR  |   2 A$titleScenari     0197 GR
  2 A$titleScenari     0199 GR  |   2 A$titleScenari     019B GR
  2 A$titleScenari     019D GR  |   2 A$titleScenari     019F GR
  2 A$titleScenari     01A1 GR  |   2 A$titleScenari     01A3 GR
  2 A$titleScenari     01A5 GR  |   2 A$titleScenari     01A6 GR
  2 A$titleScenari     0006 GR  |   2 A$titleScenari     01A8 GR
  2 A$titleScenari     01AA GR  |   2 A$titleScenari     01AC GR
  2 A$titleScenari     0008 GR  |   2 A$titleScenari     01AE GR
  2 A$titleScenari     01B0 GR  |   2 A$titleScenari     01B2 GR
  2 A$titleScenari     01B4 GR  |   2 A$titleScenari     01B5 GR
  2 A$titleScenari     000B GR  |   2 A$titleScenari     01B8 GR
  2 A$titleScenari     01BA GR  |   2 A$titleScenari     01BC GR
  2 A$titleScenari     01BE GR  |   2 A$titleScenari     000D GR
  2 A$titleScenari     01C0 GR  |   2 A$titleScenari     01C2 GR
  2 A$titleScenari     01C4 GR  |   2 A$titleScenari     01C5 GR
  2 A$titleScenari     000F GR  |   2 A$titleScenari     01C8 GR
  2 A$titleScenari     01CA GR  |   2 A$titleScenari     01CC GR
  2 A$titleScenari     01CE GR  |   2 A$titleScenari     01D0 GR
  2 A$titleScenari     01D2 GR  |   2 A$titleScenari     0011 GR
  2 A$titleScenari     01D4 GR  |   2 A$titleScenari     01D5 GR
  2 A$titleScenari     01D8 GR  |   2 A$titleScenari     01DA GR
  2 A$titleScenari     01DC GR  |   2 A$titleScenari     01DE GR
  2 A$titleScenari     0013 GR  |   2 A$titleScenari     01E0 GR
  2 A$titleScenari     01E2 GR  |   2 A$titleScenari     01E4 GR
  2 A$titleScenari     01E5 GR  |   2 A$titleScenari     0015 GR
  2 A$titleScenari     01E8 GR  |   2 A$titleScenari     01EA GR
  2 A$titleScenari     01EC GR  |   2 A$titleScenari     01EE GR
  2 A$titleScenari     01F0 GR  |   2 A$titleScenari     01F2 GR
  2 A$titleScenari     01F4 GR  |   2 A$titleScenari     01F5 GR
  2 A$titleScenari     01F8 GR  |   2 A$titleScenari     01FA GR
  2 A$titleScenari     01FC GR  |   2 A$titleScenari     01FE GR
  2 A$titleScenari     0200 GR  |   2 A$titleScenari     0202 GR
  2 A$titleScenari     0204 GR  |   2 A$titleScenari     0205 GR
  2 A$titleScenari     0017 GR  |   2 A$titleScenari     0208 GR
  2 A$titleScenari     020A GR  |   2 A$titleScenari     020C GR
  2 A$titleScenari     020E GR  |   2 A$titleScenari     0210 GR
  2 A$titleScenari     0212 GR  |   2 A$titleScenari     0214 GR
  2 A$titleScenari     0215 GR  |   2 A$titleScenari     0217 GR
  2 A$titleScenari     0219 GR  |   2 A$titleScenari     021B GR
  2 A$titleScenari     021D GR  |   2 A$titleScenari     021F GR
  2 A$titleScenari     0221 GR  |   2 A$titleScenari     0223 GR
  2 A$titleScenari     0224 GR  |   2 A$titleScenari     0226 GR
  2 A$titleScenari     0228 GR  |   2 A$titleScenari     0229 GR
  2 A$titleScenari     022A GR  |   2 A$titleScenari     022C GR
  2 A$titleScenari     022D GR  |   2 A$titleScenari     022F GR
  2 A$titleScenari     0231 GR  |   2 A$titleScenari     0232 GR
  2 A$titleScenari     0233 GR  |   2 A$titleScenari     0235 GR
  2 A$titleScenari     0236 GR  |   2 A$titleScenari     0239 GR
  2 A$titleScenari     023B GR  |   2 A$titleScenari     023D GR
  2 A$titleScenari     023F GR  |   2 A$titleScenari     0241 GR
  2 A$titleScenari     0243 GR  |   2 A$titleScenari     0245 GR
  2 A$titleScenari     0246 GR  |   2 A$titleScenari     0249 GR
  2 A$titleScenari     024B GR  |   2 A$titleScenari     024D GR
  2 A$titleScenari     024F GR  |   2 A$titleScenari     0251 GR
  2 A$titleScenari     0253 GR  |   2 A$titleScenari     0255 GR
  2 A$titleScenari     0256 GR  |   2 A$titleScenari     0259 GR
  2 A$titleScenari     025B GR  |   2 A$titleScenari     025D GR
  2 A$titleScenari     025E GR  |   2 A$titleScenari     0260 GR
  2 A$titleScenari     0262 GR  |   2 A$titleScenari     0264 GR
  2 A$titleScenari     0266 GR  |   2 A$titleScenari     0268 GR
  2 A$titleScenari     026A GR  |   2 A$titleScenari     026C GR
  2 A$titleScenari     026D GR  |   2 A$titleScenari     026F GR
  2 A$titleScenari     0271 GR  |   2 A$titleScenari     0272 GR
  2 A$titleScenari     0274 GR  |   2 A$titleScenari     0276 GR
  2 A$titleScenari     0278 GR  |   2 A$titleScenari     027A GR
  2 A$titleScenari     027C GR  |   2 A$titleScenari     027D GR
  2 A$titleScenari     027F GR  |   2 A$titleScenari     0281 GR
  2 A$titleScenari     0283 GR  |   2 A$titleScenari     0285 GR
  2 A$titleScenari     0287 GR  |   2 A$titleScenari     0288 GR
  2 A$titleScenari     028A GR  |   2 A$titleScenari     028C GR
  2 A$titleScenari     028E GR  |   2 A$titleScenari     0290 GR
  2 A$titleScenari     0291 GR  |   2 A$titleScenari     0293 GR
  2 A$titleScenari     0295 GR  |   2 A$titleScenari     0297 GR
  2 A$titleScenari     0298 GR  |     Intensity_5F   =   F2A5 
    Joy_Digital    =   F1F8     |     Moveto_d       =   F312 
    SHITREG_POKE_V =   0001     |   2 SMVB_FlagWait      03BC GR
  2 SMVB_FlagWait3     03D0 GR  |   2 SMVB_FlagWait3     03DC GR
  2 SMVB_continue2     0064 GR  |   2 SMVB_continue3     0057 GR
  2 SMVB_continue4     004A GR  |   2 SMVB_continue5     003D GR
  2 SMVB_continue6     0030 GR  |   2 SMVB_continue7     0023 GR
  2 SMVB_continue_     0127 GR  |   2 SMVB_continue_     00CE GR
  2 SMVB_continue_     0073 GR  |   2 SMVB_continue_     008D GR
  2 SMVB_continue_     00DC GR  |   2 SMVB_continue_     00C0 GR
  2 SMVB_continue_     0071 GR  |   2 SMVB_continue_     008B GR
  2 SMVB_continue_     00B2 GR  |   2 SMVB_continue_     00A6 GR
  2 SMVB_continue_     001C GR  |   2 SMVB_continue_     0135 GR
  2 SMVB_continue_     0151 GR  |   2 SMVB_continue_     0080 GR
  2 SMVB_continue_     0143 GR  |   2 SMVB_continue_     015F GR
  2 SMVB_continue_     007E GR  |   2 SMVB_continue_     016D GR
  2 SMVB_continue_     009A GR  |   2 SMVB_continue_     001C GR
  2 SMVB_lastDraw_     03BC GR  |   2 SMVB_lastDraw_     03E4 GR
  2 SMVB_lastDraw_     03CF GR  |   2 SMVB_lastMove_     03DA GR
  2 SMVB_repeat_sa     0120 GR  |   2 SMVB_repeat_sa     0259 GR
  2 SMVB_rts           03C2 GR  |   2 SMVB_rts2          03EB GR
  2 SMVB_startDraw     01C8 GR  |   2 SMVB_startDraw     01F8 GR
  2 SMVB_startDraw     03A0 GR  |   2 SMVB_startDraw     03AD GR
  2 SMVB_startDraw     01D8 GR  |   2 SMVB_startDraw     01E8 GR
  2 SMVB_startDraw     02C5 GR  |   2 SMVB_startDraw     02D4 GR
  2 SMVB_startDraw     01B8 GR  |   2 SMVB_startDraw     0293 GR
  2 SMVB_startDraw     02F6 GR  |   2 SMVB_startDraw     02E5 GR
  2 SMVB_startDraw     028A GR  |   2 SMVB_startDraw     029A GR
  2 SMVB_startDraw     02A5 GR  |   2 SMVB_startDraw     02B5 GR
  2 SMVB_startDraw     02C5 GR  |   2 SMVB_startDraw     01B8 GR
  2 SMVB_startDraw     02F6 GR  |   2 SMVB_startMove     01A8 GR
  2 SMVB_startMove     0260 GR  |   2 SMVB_startMove     0249 GR
  2 SMVB_startMove     0385 GR  |   2 SMVB_startMove     0393 GR
  2 SMVB_startMove     0239 GR  |   2 SMVB_startMove     0217 GR
  2 SMVB_startMove     017B GR  |   2 SMVB_startMove     018A GR
  2 SMVB_startMove     0208 GR  |   2 SMVB_startMove     035D GR
  2 SMVB_startMove     0305 GR  |   2 SMVB_startMove     0364 GR
  2 SMVB_startMove     0274 GR  |   2 SMVB_startMove     027F GR
  2 SMVB_startMove     01A8 GR  |   2 SMVB_startMove     0313 GR
  2 SMVB_startMove     0385 GR  |   2 SMVB_startMove     0322 GR
  2 SMVB_startMove     0331 GR  |   2 SMVB_startMove     017B GR
  2 SMVB_startMove     0199 GR  |   2 SMVB_startMove     0340 GR
  2 SMVB_startMove     034F GR  |   2 SMVB_startMove     0374 GR
    SPRITE_SCALE   =   0009     |     VB_SPRITE_SCAL =   0009 
    VIA_cntl       =   D00C     |     VIA_int_flags  =   D00D 
    VIA_port_a     =   D001     |     VIA_port_b     =   D000 
    VIA_shift_reg  =   D00A     |     VIA_t1_cnt_hi  =   D005 
    VIA_t1_cnt_lo  =   D004     |     Vec_Joy_1_X    =   C81B 
    Vec_Pattern    =   C829     |     Wait_Recal     =   F192 
  2 __SMVB_sceneDa     03F5 GR  |   2 _drawTitle         0000 GR
  2 _telengard_0       03FD GR  |   2 _telengard_1       0518 GR
  2 _telengard_2       0649 GR  |   2 cont2              0116 GR
  2 cont3              010D GR  |   2 cont4              0104 GR
  2 cont5              00FB GR  |   2 cont6              00F2 GR
  2 cont7              00E9 GR  |   2 drawSmart          0019 GR
  2 drawTtileDone      0017 GR  |   2 here104            00F0 GR
  2 here108            00F2 GR  |   2 here113            00F9 GR
  2 here117            00FB GR  |   2 here122            0102 GR
  2 here126            0104 GR  |   2 here131            010B GR
  2 here135            010D GR  |   2 here140            0114 GR
  2 here144            0116 GR  |   2 here224            0226 GR
  2 here229            022D GR  |   2 here233            022F GR
  2 here95             00E7 GR  |   2 here99             00E9 GR
  2 move2              022F GR  |   2 move3              0226 GR
    music1         =   FD0D     |   2 nextScenePart      0006 GR
  2 redoFromStart      0002 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  786   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

