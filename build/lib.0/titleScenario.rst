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
   4ACD                      65 _drawTitle: 
   4ACD 34 60         [ 7]   66     pshs u,y
                             67  .globl redoFromStart
   4ACF                      68 redoFromStart: 
   4ACF 10 8E 4E EA   [ 4]   69                     LDy      #__SMVB_sceneData                ; address of data 
                             70  .globl nextScenePart
   4AD3                      71 nextScenePart: 
   4AD3 86 09         [ 2]   72                     lda      #SPRITE_SCALE 
   4AD5 B7 D0 04      [ 5]   73                     sta      VIA_t1_cnt_lo 
   4AD8 86 CE         [ 2]   74                     LDA      #0xCE                         ;Blank low, zero high? 
   4ADA 97 0C         [ 4]   75                     STA      *VIA_cntl 
   4ADC EE A1         [ 8]   76                     LDU      ,y++ 
   4ADE 27 04         [ 3]   77                     beq      drawTtileDone
   4AE0 8D 04         [ 7]   78                     bsr      drawSmart 
   4AE2 20 EF         [ 3]   79                     BRA      nextScenePart
                             80  .globl drawTtileDone
   4AE4                      81 drawTtileDone:
   4AE4 35 E0         [ 8]   82     puls u,y,pc
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
   4AE6                     135 drawSmart:                                            ;#isfunction  
   4AE6 4F            [ 2]  136                     clra     
   4AE7 37 94         [ 8]  137                     pulu     b,x,pc 
                            138 ;***************************************************************************
                            139 ;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
                            140  .globl SMVB_setScale
   4AE9                     141 SMVB_setScale:                                            ;#isfunction  
   4AE9 D7 04         [ 4]  142                     stb      *VIA_t1_cnt_lo 
   4AEB 37 94         [ 8]  143                     pulu     b,x,pc 
                            144 
                            145  .globl SMVB_setIntensity
   4AED                     146 SMVB_setIntensity:                                          ;#isfunction  
                            147 ; macro call ->                     WAIT10   
                            148 ; macro call ->                     WAIT6    
   4AED 1F 88         [ 6]  149                     tfr      a,a                          ; wait 6 cycles 
                            150 ; macro call ->                     WAIT4    
                            151 ; macro call ->                     WAIT2    
   4AEF 12            [ 2]  152  nop ;     wait 2 cycles 
                            153 ; macro call ->                     WAIT2    
   4AF0 12            [ 2]  154  nop ;     wait 2 cycles 
   4AF1 97 01         [ 4]  155                     sta      *VIA_port_a 
   4AF3 CC 04 01      [ 3]  156                     ldd      #0x0401 
   4AF6 97 00         [ 4]  157                     sta      *VIA_port_b 
   4AF8 D7 00         [ 4]  158                     stb      *VIA_port_b 
   4AFA 37 94         [ 8]  159                     pulu     b,x,pc 
                            160 
                            161  .globl SMVB_LightOff_Intensity
   4AFC                     162 SMVB_LightOff_Intensity:                                      ;#isfunction  
                            163 ; macro call ->                     WAIT10   
                            164 ; macro call ->                     WAIT6    
   4AFC 1F 88         [ 6]  165                     tfr      a,a                          ; wait 6 cycles 
                            166 ; macro call ->                     WAIT4    
                            167 ; macro call ->                     WAIT2    
   4AFE 12            [ 2]  168  nop ;     wait 2 cycles 
                            169 ; macro call ->                     WAIT2    
   4AFF 12            [ 2]  170  nop ;     wait 2 cycles 
   4B00 86 CE         [ 2]  171  lda #0xce
   4B02 B7 D0 0C      [ 5]  172                     STa      VIA_cntl                     ;/BLANK low and /ZERO low 
   4B05 D7 01         [ 4]  173                     stb      *VIA_port_a 
   4B07 CC 04 01      [ 3]  174                     ldd      #0x0401
   4B0A 97 00         [ 4]  175                     sta      *VIA_port_b 
   4B0C D7 00         [ 4]  176                     stb      *VIA_port_b 
   4B0E 4F            [ 2]  177  clra
   4B0F 37 94         [ 8]  178                     pulu     b,x,pc 
                            179 
                            180 
                            181  .globl SMVB_continue_yd4_yStays_single
   4B11                     182 SMVB_continue_yd4_yStays_single: ;#isfunction  
                            183  .globl SMVB_continue_yStays_single
   4B11                     184 SMVB_continue_yStays_single:                               ;#isfunction  
   4B11 9F 00         [ 5]  185                     stx      *VIA_port_b                  ; 5 
   4B13 97 05         [ 4]  186                     sta      *VIA_t1_cnt_hi               ; 4 
                            187 ; macro call ->                     ADD_NOPS  
   4B15 12            [ 2]  188  nop 
   4B16 37 94         [ 8]  189                     pulu     b,x,pc 
                            190 
                            191 
                            192  .globl SMVB_continue7_single
   4B18                     193 SMVB_continue7_single:                                  ;#isfunction  
                            194 ; macro call ->                     SET_Y_INT  
   4B18 97 00         [ 4]  195                     sta      *VIA_port_b                  ; 4 
   4B1A D7 01         [ 4]  196                     stb      *VIA_port_a                  ; 4 
                            197 ; macro call ->                     Y_DELAY                               ; 4 
                            198 ; macro call ->  Y_DELAY_4
   4B1C 12            [ 2]  199  nop 
   4B1D 12            [ 2]  200  nop 
                            201 ; macro call ->  ADD_BURST
                            202  
                            203 ; macro call ->  ADD_BURST
                            204  
   4B1E 9F 00         [ 5]  205                     stx      *VIA_port_b                  ; 5 
   4B20 97 05         [ 4]  206                     sta      *VIA_t1_cnt_hi               ; 4 
                            207 ; macro call ->                     ADD_NOPS                              ; 21 
   4B22 12            [ 2]  208  nop 
                            209 ; this is one pulu cycle more!
                            210 ; thus ADD_NOPS can be one cycle less!
                            211 ; minus 6!
   4B23 37 14         [ 7]  212                     pulu     b,x                          ; 5+3 
                            213  .globl SMVB_continue6_single
   4B25                     214 SMVB_continue6_single:                                  ;#isfunction  
                            215 ; macro call ->                     SET_Y_INT  
   4B25 97 00         [ 4]  216                     sta      *VIA_port_b                  ; 4 
   4B27 D7 01         [ 4]  217                     stb      *VIA_port_a                  ; 4 
                            218 ; macro call ->                     Y_DELAY                               ; 4 
                            219 ; macro call ->  Y_DELAY_4
   4B29 12            [ 2]  220  nop 
   4B2A 12            [ 2]  221  nop 
                            222 ; macro call ->  ADD_BURST
                            223  
                            224 ; macro call ->  ADD_BURST
                            225  
   4B2B 9F 00         [ 5]  226                     stx      *VIA_port_b                  ; 5 
   4B2D 97 05         [ 4]  227                     sta      *VIA_t1_cnt_hi               ; 4 
                            228 ; macro call ->                     ADD_NOPS                              ; 21 
   4B2F 12            [ 2]  229  nop 
   4B30 37 14         [ 7]  230                     pulu     b,x                          ; 5+3 
                            231  .globl SMVB_continue5_single
   4B32                     232 SMVB_continue5_single:                                  ;#isfunction  
                            233 ; macro call ->                     SET_Y_INT  
   4B32 97 00         [ 4]  234                     sta      *VIA_port_b                  ; 4 
   4B34 D7 01         [ 4]  235                     stb      *VIA_port_a                  ; 4 
                            236 ; macro call ->                     Y_DELAY                               ; 4 
                            237 ; macro call ->  Y_DELAY_4
   4B36 12            [ 2]  238  nop 
   4B37 12            [ 2]  239  nop 
                            240 ; macro call ->  ADD_BURST
                            241  
                            242 ; macro call ->  ADD_BURST
                            243  
   4B38 9F 00         [ 5]  244                     stx      *VIA_port_b                  ; 5 
   4B3A 97 05         [ 4]  245                     sta      *VIA_t1_cnt_hi               ; 4 
                            246 ; macro call ->                     ADD_NOPS                              ; 21 
   4B3C 12            [ 2]  247  nop 
   4B3D 37 14         [ 7]  248                     pulu     b,x                          ; 5+3 
                            249  .globl SMVB_continue4_single
   4B3F                     250 SMVB_continue4_single:                                  ;#isfunction  
                            251 ; macro call ->                     SET_Y_INT  
   4B3F 97 00         [ 4]  252                     sta      *VIA_port_b                  ; 4 
   4B41 D7 01         [ 4]  253                     stb      *VIA_port_a                  ; 4 
                            254 ; macro call ->                     Y_DELAY                               ; 4 
                            255 ; macro call ->  Y_DELAY_4
   4B43 12            [ 2]  256  nop 
   4B44 12            [ 2]  257  nop 
                            258 ; macro call ->  ADD_BURST
                            259  
                            260 ; macro call ->  ADD_BURST
                            261  
   4B45 9F 00         [ 5]  262                     stx      *VIA_port_b                  ; 5 
   4B47 97 05         [ 4]  263                     sta      *VIA_t1_cnt_hi               ; 4 
                            264 ; macro call ->                     ADD_NOPS                              ; 21 
   4B49 12            [ 2]  265  nop 
   4B4A 37 14         [ 7]  266                     pulu     b,x                          ; 5+3 
                            267  .globl SMVB_continue3_single
   4B4C                     268 SMVB_continue3_single:                                  ;#isfunction  
                            269 ; macro call ->                     SET_Y_INT  
   4B4C 97 00         [ 4]  270                     sta      *VIA_port_b                  ; 4 
   4B4E D7 01         [ 4]  271                     stb      *VIA_port_a                  ; 4 
                            272 ; macro call ->                     Y_DELAY                               ; 4 
                            273 ; macro call ->  Y_DELAY_4
   4B50 12            [ 2]  274  nop 
   4B51 12            [ 2]  275  nop 
                            276 ; macro call ->  ADD_BURST
                            277  
                            278 ; macro call ->  ADD_BURST
                            279  
   4B52 9F 00         [ 5]  280                     stx      *VIA_port_b                  ; 5 
   4B54 97 05         [ 4]  281                     sta      *VIA_t1_cnt_hi               ; 4 
                            282 ; macro call ->                     ADD_NOPS                              ; 21 
   4B56 12            [ 2]  283  nop 
   4B57 37 14         [ 7]  284                     pulu     b,x                          ; 5+3 
                            285  .globl SMVB_continue2_single
   4B59                     286 SMVB_continue2_single:                                  ;#isfunction  
                            287 ; macro call ->                     SET_Y_INT  
   4B59 97 00         [ 4]  288                     sta      *VIA_port_b                  ; 4 
   4B5B D7 01         [ 4]  289                     stb      *VIA_port_a                  ; 4 
                            290 ; macro call ->                     Y_DELAY                               ; 4 
                            291 ; macro call ->  Y_DELAY_4
   4B5D 12            [ 2]  292  nop 
   4B5E 12            [ 2]  293  nop 
                            294 ; macro call ->  ADD_BURST
                            295  
                            296 ; macro call ->  ADD_BURST
                            297  
   4B5F 9F 00         [ 5]  298                     stx      *VIA_port_b                  ; 5 
   4B61 97 05         [ 4]  299                     sta      *VIA_t1_cnt_hi               ; 4 
                            300 ; macro call ->                     ADD_NOPS                              ; 21 
   4B63 12            [ 2]  301  nop 
   4B64 37 14         [ 7]  302                     pulu     b,x                          ; 5+3 
                            303 ; continue uses same shift  
                            304  .globl SMVB_continue_single
   4B66                     305 SMVB_continue_single:                                   ;#isfunction  
   4B66 D7 01         [ 4]  306                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            307 ; y is inherently known to be == old_x, y was = to 0 by generator
                            308  .globl SMVB_continue_newY_eq_oldX_single
   4B68                     309 SMVB_continue_newY_eq_oldX_single:                       ;#isfunction  
   4B68 97 00         [ 4]  310                     sta      *VIA_port_b                  ; 4 
                            311 ; macro call ->                     Y_DELAY                               ; 4 
                            312 ; macro call ->  Y_DELAY_4
   4B6A 12            [ 2]  313  nop 
   4B6B 12            [ 2]  314  nop 
                            315 ; macro call ->  ADD_BURST
                            316  
                            317 ; macro call ->  ADD_BURST
                            318  
   4B6C 9F 00         [ 5]  319                     stx      *VIA_port_b                  ; 5 
   4B6E 97 05         [ 4]  320                     sta      *VIA_t1_cnt_hi 
                            321 ; macro call ->                     ADD_NOPS  
   4B70 12            [ 2]  322  nop 
   4B71 37 94         [ 8]  323                     pulu     b,x,pc 
                            324 
                            325 
                            326  .globl SMVB_continue_yd4_single
   4B73                     327 SMVB_continue_yd4_single:                                   ;#isfunction  
   4B73 D7 01         [ 4]  328                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            329 ; y is inherently known to be == old_x, y was = to 0 by generator
                            330  .globl SMVB_continue_yd4_newY_eq_oldX_single
   4B75                     331 SMVB_continue_yd4_newY_eq_oldX_single:                       ;#isfunction  
   4B75 97 00         [ 4]  332                     sta      *VIA_port_b                  ; 4 
                            333 ; macro call ->                     Y_DELAY_4                             ; 4 
   4B77 12            [ 2]  334  nop 
   4B78 12            [ 2]  335  nop 
                            336 ; macro call ->  ADD_BURST
                            337  
   4B79 9F 00         [ 5]  338                     stx      *VIA_port_b                  ; 5 
   4B7B 97 05         [ 4]  339                     sta      *VIA_t1_cnt_hi 
                            340 ; macro call ->                     ADD_NOPS  
   4B7D 12            [ 2]  341  nop 
   4B7E 37 94         [ 8]  342                     pulu     b,x,pc
                            343 
                            344 
                            345  .globl SMVB_continue_single_sj
   4B80                     346 SMVB_continue_single_sj:                                   ;#isfunction  
   4B80 D7 01         [ 4]  347                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                            348 ; y is inherently known to be == old_x, y was = to 0 by generator
                            349  .globl SMVB_continue_newY_eq_oldX_single_sj
   4B82                     350 SMVB_continue_newY_eq_oldX_single_sj:                     ;#isfunction  
   4B82 97 00         [ 4]  351                     sta      *VIA_port_b                  ; 4 
                            352 ; macro call ->                     Y_DELAY                               ; 4 
                            353 ; macro call ->  Y_DELAY_4
   4B84 12            [ 2]  354  nop 
   4B85 12            [ 2]  355  nop 
                            356 ; macro call ->  ADD_BURST
                            357  
                            358 ; macro call ->  ADD_BURST
                            359  
   4B86 9F 00         [ 5]  360                     stx      *VIA_port_b                  ; 5 
   4B88 97 05         [ 4]  361                     sta      *VIA_t1_cnt_hi 
                            362 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4B8A 12            [ 2]  363  nop 
   4B8B EE C4         [ 5]  364                     ldu      ,u 
   4B8D 37 94         [ 8]  365                     pulu     b,x,pc 
                            366 ; continue uses same shift
                            367 ; y is inherently known to be == x, 
                            368  .globl SMVB_continue_yd4_yEqx_single
   4B8F                     369 SMVB_continue_yd4_yEqx_single: ;#isfunction 
                            370 ; macro call ->                     SET_Y_INT  
   4B8F 97 00         [ 4]  371                     sta      *VIA_port_b                  ; 4 
   4B91 D7 01         [ 4]  372                     stb      *VIA_port_a                  ; 4 
                            373 ; macro call ->                     Y_DELAY_HALF_4                          ; 4 
   4B93 12            [ 2]  374  nop 
                            375 ; macro call ->  ADD_BURST
                            376  
                            377 
   4B94 0C 00         [ 6]  378                     inc      *VIA_port_b 
   4B96 97 05         [ 4]  379                     sta      *VIA_t1_cnt_hi 
                            380 ; macro call ->                     ADD_NOPS  
   4B98 12            [ 2]  381  nop 
   4B99 37 94         [ 8]  382                     pulu     b,x,pc 
                            383 
                            384  .globl SMVB_continue_yEqx_single
   4B9B                     385 SMVB_continue_yEqx_single:                                 ;#isfunction  
                            386 ; macro call ->                     SET_Y_INT  
   4B9B 97 00         [ 4]  387                     sta      *VIA_port_b                  ; 4 
   4B9D D7 01         [ 4]  388                     stb      *VIA_port_a                  ; 4 
                            389 ; macro call ->                     Y_DELAY_HALF                          ; 4 
                            390 ; macro call ->  Y_DELAY_HALF_4
   4B9F 12            [ 2]  391  nop 
                            392 ; macro call ->  ADD_BURST
                            393  
                            394 
                            395  
                            396 
   4BA0 0C 00         [ 6]  397                     inc      *VIA_port_b 
   4BA2 97 05         [ 4]  398                     sta      *VIA_t1_cnt_hi 
                            399 ; macro call ->                     ADD_NOPS  
   4BA4 12            [ 2]  400  nop 
   4BA5 37 94         [ 8]  401                     pulu     b,x,pc 
                            402  .globl SMVB_continue_tripple
   4BA7                     403 SMVB_continue_tripple:                                     ;#isfunction  
                            404 ; macro call ->                     SET_Y_INT  
   4BA7 97 00         [ 4]  405                     sta      *VIA_port_b                  ; 4 
   4BA9 D7 01         [ 4]  406                     stb      *VIA_port_a                  ; 4 
                            407 ; macro call ->                     Y_DELAY                               ; 4 
                            408 ; macro call ->  Y_DELAY_4
   4BAB 12            [ 2]  409  nop 
   4BAC 12            [ 2]  410  nop 
                            411 ; macro call ->  ADD_BURST
                            412  
                            413 ; macro call ->  ADD_BURST
                            414  
   4BAD 9F 00         [ 5]  415                     stx      *VIA_port_b                  ; 5 
   4BAF 97 05         [ 4]  416                     sta      *VIA_t1_cnt_hi 
                            417 ; macro call ->                     ADD_NOPS  
   4BB1 12            [ 2]  418  nop 
   4BB2 7E 4C 0B      [ 4]  419                     jmp      cont2 
                            420 
                            421  .globl SMVB_continue_quadro
   4BB5                     422 SMVB_continue_quadro:                                      ;#isfunction  
                            423 ; macro call ->                     SET_Y_INT  
   4BB5 97 00         [ 4]  424                     sta      *VIA_port_b                  ; 4 
   4BB7 D7 01         [ 4]  425                     stb      *VIA_port_a                  ; 4 
                            426 ; macro call ->                     Y_DELAY                               ; 4 
                            427 ; macro call ->  Y_DELAY_4
   4BB9 12            [ 2]  428  nop 
   4BBA 12            [ 2]  429  nop 
                            430 ; macro call ->  ADD_BURST
                            431  
                            432 ; macro call ->  ADD_BURST
                            433  
   4BBB 9F 00         [ 5]  434                     stx      *VIA_port_b                  ; 5 
   4BBD 97 05         [ 4]  435                     sta      *VIA_t1_cnt_hi 
                            436 ; macro call ->                     ADD_NOPS  
   4BBF 12            [ 2]  437  nop 
   4BC0 7E 4C 02      [ 4]  438                     jmp      cont3 
                            439  .globl SMVB_continue_hex
   4BC3                     440 SMVB_continue_hex: ;#isfunction 
                            441 ; macro call ->                     SET_Y_INT  
   4BC3 97 00         [ 4]  442                     sta      *VIA_port_b                  ; 4 
   4BC5 D7 01         [ 4]  443                     stb      *VIA_port_a                  ; 4 
                            444 ; macro call ->                     Y_DELAY                               ; 4 
                            445 ; macro call ->  Y_DELAY_4
   4BC7 12            [ 2]  446  nop 
   4BC8 12            [ 2]  447  nop 
                            448 ; macro call ->  ADD_BURST
                            449  
                            450 ; macro call ->  ADD_BURST
                            451  
   4BC9 9F 00         [ 5]  452                     stx      *VIA_port_b                  ; 5 
   4BCB 97 05         [ 4]  453                     sta      *VIA_t1_cnt_hi 
                            454 ; macro call ->                     ADD_NOPS  
   4BCD 12            [ 2]  455  nop 
   4BCE 7E 4B F0      [ 4]  456                     jmp      cont5 
                            457  .globl SMVB_continue_octo
   4BD1                     458 SMVB_continue_octo:                                        ;#isfunction  
                            459 ; macro call ->                     SET_Y_INT  
   4BD1 97 00         [ 4]  460                     sta      *VIA_port_b                  ; 4 
   4BD3 D7 01         [ 4]  461                     stb      *VIA_port_a                  ; 4 
                            462 ; macro call ->                     Y_DELAY                               ; 4 
                            463 ; macro call ->  Y_DELAY_4
   4BD5 12            [ 2]  464  nop 
   4BD6 12            [ 2]  465  nop 
                            466 ; macro call ->  ADD_BURST
                            467  
                            468 ; macro call ->  ADD_BURST
                            469  
   4BD7 9F 00         [ 5]  470                     stx      *VIA_port_b                  ; 5 
   4BD9 97 05         [ 4]  471                     sta      *VIA_t1_cnt_hi 
                            472 ; macro call ->                     ADD_NOPS  
   4BDB 12            [ 2]  473  nop 
                            474 ; macro call ->                     WAIT_BEFORE  
                            475 ; macro call ->                     WAIT3    
                            476  .globl here95
   4BDC                     477 here95:              
   4BDC 21 FE         [ 3]  478 					brn      here95                            ; wait 3 cycles 
                            479  .globl cont7
   4BDE                     480 cont7: 
                            481 ; macro call ->                     WAIT_AFTER  
                            482 ; macro call ->                     WAIT7    
                            483 ; macro call ->                     WAIT5    
                            484 ; macro call ->                     WAIT3    
                            485  .globl here99
   4BDE                     486 here99:              
   4BDE 21 FE         [ 3]  487 					brn      here99                            ; wait 3 cycles 
                            488 ; macro call ->                     WAIT2    
   4BE0 12            [ 2]  489  nop ;     wait 2 cycles 
                            490 ; macro call ->                     WAIT2    
   4BE1 12            [ 2]  491  nop ;     wait 2 cycles 
   4BE2 0F 05         [ 6]  492                     clr      *VIA_t1_cnt_hi 
                            493 ; macro call ->                     ADD_NOPS  
   4BE4 12            [ 2]  494  nop 
                            495 ; macro call ->                     WAIT_BEFORE  
                            496 ; macro call ->                     WAIT3    
                            497  .globl here104
   4BE5                     498 here104:              
   4BE5 21 FE         [ 3]  499 					brn      here104                            ; wait 3 cycles 
                            500  .globl cont6
   4BE7                     501 cont6: 
                            502 ; macro call ->                     WAIT_AFTER  
                            503 ; macro call ->                     WAIT7    
                            504 ; macro call ->                     WAIT5    
                            505 ; macro call ->                     WAIT3    
                            506  .globl here108
   4BE7                     507 here108:              
   4BE7 21 FE         [ 3]  508 					brn      here108                            ; wait 3 cycles 
                            509 ; macro call ->                     WAIT2    
   4BE9 12            [ 2]  510  nop ;     wait 2 cycles 
                            511 ; macro call ->                     WAIT2    
   4BEA 12            [ 2]  512  nop ;     wait 2 cycles 
   4BEB 0F 05         [ 6]  513                     clr      *VIA_t1_cnt_hi 
                            514 ; macro call ->                     ADD_NOPS  
   4BED 12            [ 2]  515  nop 
                            516 ; macro call ->                     WAIT_BEFORE  
                            517 ; macro call ->                     WAIT3    
                            518  .globl here113
   4BEE                     519 here113:              
   4BEE 21 FE         [ 3]  520 					brn      here113                            ; wait 3 cycles 
                            521  .globl cont5
   4BF0                     522 cont5: 
                            523 ; macro call ->                     WAIT_AFTER  
                            524 ; macro call ->                     WAIT7    
                            525 ; macro call ->                     WAIT5    
                            526 ; macro call ->                     WAIT3    
                            527  .globl here117
   4BF0                     528 here117:              
   4BF0 21 FE         [ 3]  529 					brn      here117                            ; wait 3 cycles 
                            530 ; macro call ->                     WAIT2    
   4BF2 12            [ 2]  531  nop ;     wait 2 cycles 
                            532 ; macro call ->                     WAIT2    
   4BF3 12            [ 2]  533  nop ;     wait 2 cycles 
   4BF4 0F 05         [ 6]  534                     clr      *VIA_t1_cnt_hi 
                            535 ; macro call ->                     ADD_NOPS  
   4BF6 12            [ 2]  536  nop 
                            537 ; macro call ->                     WAIT_BEFORE  
                            538 ; macro call ->                     WAIT3    
                            539  .globl here122
   4BF7                     540 here122:              
   4BF7 21 FE         [ 3]  541 					brn      here122                            ; wait 3 cycles 
                            542  .globl cont4
   4BF9                     543 cont4: 
                            544 ; macro call ->                     WAIT_AFTER  
                            545 ; macro call ->                     WAIT7    
                            546 ; macro call ->                     WAIT5    
                            547 ; macro call ->                     WAIT3    
                            548  .globl here126
   4BF9                     549 here126:              
   4BF9 21 FE         [ 3]  550 					brn      here126                            ; wait 3 cycles 
                            551 ; macro call ->                     WAIT2    
   4BFB 12            [ 2]  552  nop ;     wait 2 cycles 
                            553 ; macro call ->                     WAIT2    
   4BFC 12            [ 2]  554  nop ;     wait 2 cycles 
   4BFD 0F 05         [ 6]  555                     clr      *VIA_t1_cnt_hi 
                            556 ; macro call ->                     ADD_NOPS  
   4BFF 12            [ 2]  557  nop 
                            558 ; macro call ->                     WAIT_BEFORE  
                            559 ; macro call ->                     WAIT3    
                            560  .globl here131
   4C00                     561 here131:              
   4C00 21 FE         [ 3]  562 					brn      here131                            ; wait 3 cycles 
                            563  .globl cont3
   4C02                     564 cont3: 
                            565 ; macro call ->                     WAIT_AFTER  
                            566 ; macro call ->                     WAIT7    
                            567 ; macro call ->                     WAIT5    
                            568 ; macro call ->                     WAIT3    
                            569  .globl here135
   4C02                     570 here135:              
   4C02 21 FE         [ 3]  571 					brn      here135                            ; wait 3 cycles 
                            572 ; macro call ->                     WAIT2    
   4C04 12            [ 2]  573  nop ;     wait 2 cycles 
                            574 ; macro call ->                     WAIT2    
   4C05 12            [ 2]  575  nop ;     wait 2 cycles 
   4C06 0F 05         [ 6]  576                     clr      *VIA_t1_cnt_hi 
                            577 ; macro call ->                     ADD_NOPS  
   4C08 12            [ 2]  578  nop 
                            579 ; macro call ->                     WAIT_BEFORE  
                            580 ; macro call ->                     WAIT3    
                            581  .globl here140
   4C09                     582 here140:              
   4C09 21 FE         [ 3]  583 					brn      here140                            ; wait 3 cycles 
                            584  .globl cont2
   4C0B                     585 cont2: 
                            586 ; macro call ->                     WAIT_AFTER  
                            587 ; macro call ->                     WAIT7    
                            588 ; macro call ->                     WAIT5    
                            589 ; macro call ->                     WAIT3    
                            590  .globl here144
   4C0B                     591 here144:              
   4C0B 21 FE         [ 3]  592 					brn      here144                            ; wait 3 cycles 
                            593 ; macro call ->                     WAIT2    
   4C0D 12            [ 2]  594  nop ;     wait 2 cycles 
                            595 ; macro call ->                     WAIT2    
   4C0E 12            [ 2]  596  nop ;     wait 2 cycles 
   4C0F 0F 05         [ 6]  597                     clr      *VIA_t1_cnt_hi 
                            598 ; macro call ->                     ADD_NOPS  
   4C11 12            [ 2]  599  nop 
   4C12 7E 4C 15      [ 4]  600                     jmp      SMVB_repeat_same 
                            601 
                            602  .globl SMVB_repeat_same
   4C15                     603 SMVB_repeat_same:                                          ;#isfunction  
   4C15 37 14         [ 7]  604                     pulu     b,x 
   4C17 0F 05         [ 6]  605                     clr      *VIA_t1_cnt_hi 
                            606 ; macro call ->                     ADD_NOPS  
   4C19 12            [ 2]  607  nop 
   4C1A 37 80         [ 6]  608                     pulu     pc 
                            609  .globl SMVB_continue_double
   4C1C                     610 SMVB_continue_double:                                      ;#isfunction  
                            611 ; macro call ->                     SET_Y_INT  
   4C1C 97 00         [ 4]  612                     sta      *VIA_port_b                  ; 4 
   4C1E D7 01         [ 4]  613                     stb      *VIA_port_a                  ; 4 
                            614 ; macro call ->                     Y_DELAY                               ; 4 
                            615 ; macro call ->  Y_DELAY_4
   4C20 12            [ 2]  616  nop 
   4C21 12            [ 2]  617  nop 
                            618 ; macro call ->  ADD_BURST
                            619  
                            620 ; macro call ->  ADD_BURST
                            621  
   4C22 9F 00         [ 5]  622                     stx      *VIA_port_b                  ; 5 
   4C24 97 05         [ 4]  623                     sta      *VIA_t1_cnt_hi 
                            624 ; macro call ->                     ADD_NOPS  
   4C26 12            [ 2]  625  nop 
   4C27 7E 4C 15      [ 4]  626                     jmp      SMVB_repeat_same 
                            627  .globl SMVB_continue_yd4_double
   4C2A                     628 SMVB_continue_yd4_double:;#isfunction 
                            629 ; macro call ->                     SET_Y_INT  
   4C2A 97 00         [ 4]  630                     sta      *VIA_port_b                  ; 4 
   4C2C D7 01         [ 4]  631                     stb      *VIA_port_a                  ; 4 
                            632 ; macro call ->                     Y_DELAY_4                               ; 4 
   4C2E 12            [ 2]  633  nop 
   4C2F 12            [ 2]  634  nop 
                            635 ; macro call ->  ADD_BURST
                            636  
   4C30 9F 00         [ 5]  637                     stx      *VIA_port_b                  ; 5 
   4C32 97 05         [ 4]  638                     sta      *VIA_t1_cnt_hi 
                            639 ; macro call ->                     ADD_NOPS  
   4C34 12            [ 2]  640  nop 
   4C35 7E 4C 15      [ 4]  641                     jmp      SMVB_repeat_same 
                            642 
                            643 
                            644  .globl SMVB_continue_yd4_octo
   4C38                     645 SMVB_continue_yd4_octo:
   4C38 D7 01         [ 4]  646                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   4C3A 97 00         [ 4]  647                     sta      *VIA_port_b                  ; 4 
                            648 ; macro call ->                     Y_DELAY_4                             ; 4 
   4C3C 12            [ 2]  649  nop 
   4C3D 12            [ 2]  650  nop 
                            651 ; macro call ->  ADD_BURST
                            652  
   4C3E 9F 00         [ 5]  653                     stx      *VIA_port_b                  ; 5 
   4C40 97 05         [ 4]  654                     sta      *VIA_t1_cnt_hi 
                            655 ; macro call ->                     ADD_NOPS  
   4C42 12            [ 2]  656  nop 
   4C43 7E 4B DE      [ 4]  657                     jmp      cont7 
                            658  .globl SMVB_continue_yd4_hex
   4C46                     659 SMVB_continue_yd4_hex:
   4C46 D7 01         [ 4]  660                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   4C48 97 00         [ 4]  661                     sta      *VIA_port_b                  ; 4 
                            662 ; macro call ->                     Y_DELAY_4                             ; 4 
   4C4A 12            [ 2]  663  nop 
   4C4B 12            [ 2]  664  nop 
                            665 ; macro call ->  ADD_BURST
                            666  
   4C4C 9F 00         [ 5]  667                     stx      *VIA_port_b                  ; 5 
   4C4E 97 05         [ 4]  668                     sta      *VIA_t1_cnt_hi 
                            669 ; macro call ->                     ADD_NOPS  
   4C50 12            [ 2]  670  nop 
   4C51 7E 4B F0      [ 4]  671                     jmp      cont5 
                            672  .globl SMVB_continue_yd4_quadro
   4C54                     673 SMVB_continue_yd4_quadro:
                            674 
   4C54 D7 01         [ 4]  675                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   4C56 97 00         [ 4]  676                     sta      *VIA_port_b                  ; 4 
                            677 ; macro call ->                     Y_DELAY_4                             ; 4 
   4C58 12            [ 2]  678  nop 
   4C59 12            [ 2]  679  nop 
                            680 ; macro call ->  ADD_BURST
                            681  
   4C5A 9F 00         [ 5]  682                     stx      *VIA_port_b                  ; 5 
   4C5C 97 05         [ 4]  683                     sta      *VIA_t1_cnt_hi 
                            684 ; macro call ->                     ADD_NOPS  
   4C5E 12            [ 2]  685  nop 
   4C5F 7E 4C 02      [ 4]  686                     jmp      cont3 
                            687  .globl SMVB_continue_yd4_tripple
   4C62                     688 SMVB_continue_yd4_tripple:
                            689 
   4C62 D7 01         [ 4]  690                     stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
   4C64 97 00         [ 4]  691                     sta      *VIA_port_b                  ; 4 
                            692 ; macro call ->                     Y_DELAY_4                             ; 4 
   4C66 12            [ 2]  693  nop 
   4C67 12            [ 2]  694  nop 
                            695 ; macro call ->  ADD_BURST
                            696  
   4C68 9F 00         [ 5]  697                     stx      *VIA_port_b                  ; 5 
   4C6A 97 05         [ 4]  698                     sta      *VIA_t1_cnt_hi 
                            699 ; macro call ->                     ADD_NOPS  
   4C6C 12            [ 2]  700  nop 
   4C6D 7E 4C 0B      [ 4]  701                     jmp      cont2 
                            702 
                            703 
                            704 
                            705 
                            706  .globl SMVB_startMove_yd4_single
   4C70                     707 SMVB_startMove_yd4_single: ;#isfunction 
                            708  .globl SMVB_startMove_single
   4C70                     709 SMVB_startMove_single:                                    ;#isfunction  
                            710 ; macro call ->                     SET_Y_INT  
   4C70 97 00         [ 4]  711                     sta      *VIA_port_b                  ; 4 
   4C72 D7 01         [ 4]  712                     stb      *VIA_port_a                  ; 4 
                            713 ; macro call ->                     INIT_MOVE  
   4C74 C6 E0         [ 2]  714                     ldb      #0b11100000 
   4C76 D7 0A         [ 4]  715                     stb      *VIA_shift_reg               ; 
                            716 ; macro call ->  DELAY_NONE
                            717 ; macro call ->  ADD_BURST
                            718  
   4C78 9F 00         [ 5]  719                     stx      *VIA_port_b                  ; 5 
   4C7A 97 05         [ 4]  720                     sta      *VIA_t1_cnt_hi 
                            721 ; macro call ->                     ADD_NOPS  
   4C7C 12            [ 2]  722  nop 
   4C7D 37 94         [ 8]  723                     pulu     b,x,pc 
                            724  .globl SMVB_startMove_single_sj
   4C7F                     725 SMVB_startMove_single_sj:                                 ;#isfunction  
                            726 ; macro call ->                     SET_Y_INT  
   4C7F 97 00         [ 4]  727                     sta      *VIA_port_b                  ; 4 
   4C81 D7 01         [ 4]  728                     stb      *VIA_port_a                  ; 4 
   4C83 EE C4         [ 5]  729                     ldu      ,u 
                            730  
                            731 ; macro call ->                     INIT_MOVE_SJ  
                            732 ; macro call ->  DELAY_NONE
                            733 ; macro call ->  ADD_BURST
                            734  
   4C85 9F 00         [ 5]  735                     stx      *VIA_port_b                  ; 5 
   4C87 97 05         [ 4]  736                     sta      *VIA_t1_cnt_hi 
   4C89 97 0A         [ 4]  737                     sta      *VIA_shift_reg               ; 
                            738 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4C8B 12            [ 2]  739  nop 
   4C8C 37 94         [ 8]  740                     pulu     b,x,pc 
                            741 
                            742  .globl SMVB_startMove_yd4_single_sj
   4C8E                     743 SMVB_startMove_yd4_single_sj:                                 ;#isfunction  
                            744 ; macro call ->                     SET_Y_INT  
   4C8E 97 00         [ 4]  745                     sta      *VIA_port_b                  ; 4 
   4C90 D7 01         [ 4]  746                     stb      *VIA_port_a                  ; 4 
   4C92 EE C4         [ 5]  747                     ldu      ,u 
                            748 ; macro call ->                     INIT_MOVE_SJ  
                            749 ; macro call ->  DELAY_NONE
                            750 ; macro call ->  ADD_BURST
                            751  
   4C94 9F 00         [ 5]  752                     stx      *VIA_port_b                  ; 5 
   4C96 97 05         [ 4]  753                     sta      *VIA_t1_cnt_hi 
   4C98 97 0A         [ 4]  754                     sta      *VIA_shift_reg               ; 
                            755 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4C9A 12            [ 2]  756  nop 
   4C9B 37 94         [ 8]  757                     pulu     b,x,pc 
                            758 
                            759 
                            760 
                            761  .globl SMVB_startMove_yd4_double
   4C9D                     762 SMVB_startMove_yd4_double:                                    ;#isfunction  
                            763  .globl SMVB_startMove_double
   4C9D                     764 SMVB_startMove_double:                                    ;#isfunction  
                            765 ; macro call ->                     SET_Y_INT  
   4C9D 97 00         [ 4]  766                     sta      *VIA_port_b                  ; 4 
   4C9F D7 01         [ 4]  767                     stb      *VIA_port_a                  ; 4 
                            768 ; macro call ->                     INIT_MOVE  
   4CA1 C6 E0         [ 2]  769                     ldb      #0b11100000 
   4CA3 D7 0A         [ 4]  770                     stb      *VIA_shift_reg               ; 
                            771 ; macro call ->  DELAY_NONE
                            772 ; macro call ->  ADD_BURST
                            773  
   4CA5 9F 00         [ 5]  774                     stx      *VIA_port_b                  ; 5 
   4CA7 97 05         [ 4]  775                     sta      *VIA_t1_cnt_hi 
                            776 ; macro call ->                     ADD_NOPS  
   4CA9 12            [ 2]  777  nop 
   4CAA 7E 4D 4E      [ 4]  778                     jmp      SMVB_repeat_same2 
                            779 
                            780  .globl SMVB_startDraw_yd4_tripple
                            781  .globl SMVB_startDraw_tripple
   4CAD                     782 SMVB_startDraw_yd4_tripple:
   4CAD                     783 SMVB_startDraw_tripple: ;#isfunction 
                            784 ; macro call ->                     SET_Y_INT  
   4CAD 97 00         [ 4]  785                     sta      *VIA_port_b                  ; 4 
   4CAF D7 01         [ 4]  786                     stb      *VIA_port_a                  ; 4 
   4CB1 C6 01         [ 2]  787                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4CB3 D7 0A         [ 4]  788                     stb      *VIA_shift_reg               ; 4 
                            789 ; macro call ->  DELAY_NONE
                            790 ; macro call ->  ADD_BURST
                            791  
   4CB5 9F 00         [ 5]  792                     stx      *VIA_port_b                  ; 5 
   4CB7 97 05         [ 4]  793                     sta      *VIA_t1_cnt_hi               ; 4 
                            794 ; macro call ->                     ADD_NOPS  
   4CB9 12            [ 2]  795  nop 
   4CBA 7E 4C 0B      [ 4]  796                     jmp      cont2 
                            797 
                            798  .globl SMVB_startDraw_double
   4CBD                     799 SMVB_startDraw_double: ;#isfunction 
                            800 ; macro call ->                     SET_Y_INT  
   4CBD 97 00         [ 4]  801                     sta      *VIA_port_b                  ; 4 
   4CBF D7 01         [ 4]  802                     stb      *VIA_port_a                  ; 4 
   4CC1 C6 01         [ 2]  803                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4CC3 D7 0A         [ 4]  804                     stb      *VIA_shift_reg               ; 4 
                            805 ; macro call ->  DELAY_NONE
                            806 ; macro call ->  ADD_BURST
                            807  
   4CC5 9F 00         [ 5]  808                     stx      *VIA_port_b                  ; 5 
   4CC7 97 05         [ 4]  809                     sta      *VIA_t1_cnt_hi               ; 4 
                            810 ; macro call ->                     ADD_NOPS  
   4CC9 12            [ 2]  811  nop 
   4CCA 7E 4D 4E      [ 4]  812                     jmp      SMVB_repeat_same2 
                            813  .globl SMVB_startDraw_octo
   4CCD                     814 SMVB_startDraw_octo: ;#isfunction 
                            815 ; macro call ->                     SET_Y_INT  
   4CCD 97 00         [ 4]  816                     sta      *VIA_port_b                  ; 4 
   4CCF D7 01         [ 4]  817                     stb      *VIA_port_a                  ; 4 
   4CD1 C6 01         [ 2]  818                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4CD3 D7 0A         [ 4]  819                     stb      *VIA_shift_reg               ; 4 
                            820 ; macro call ->  DELAY_NONE
                            821 ; macro call ->  ADD_BURST
                            822  
   4CD5 9F 00         [ 5]  823                     stx      *VIA_port_b                  ; 5 
   4CD7 97 05         [ 4]  824                     sta      *VIA_t1_cnt_hi               ; 4 
                            825 ; macro call ->                     ADD_NOPS  
   4CD9 12            [ 2]  826  nop 
   4CDA 7E 4B DE      [ 4]  827                     jmp      cont7 
                            828  .globl SMVB_startDraw_quadro
   4CDD                     829 SMVB_startDraw_quadro: ;#isfunction 
                            830 ; macro call ->                     SET_Y_INT  
   4CDD 97 00         [ 4]  831                     sta      *VIA_port_b                  ; 4 
   4CDF D7 01         [ 4]  832                     stb      *VIA_port_a                  ; 4 
   4CE1 C6 01         [ 2]  833                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4CE3 D7 0A         [ 4]  834                     stb      *VIA_shift_reg               ; 4 
                            835 ; macro call ->  DELAY_NONE
                            836 ; macro call ->  ADD_BURST
                            837  
   4CE5 9F 00         [ 5]  838                     stx      *VIA_port_b                  ; 5 
   4CE7 97 05         [ 4]  839                     sta      *VIA_t1_cnt_hi               ; 4 
                            840 ; macro call ->                     ADD_NOPS  
   4CE9 12            [ 2]  841  nop 
   4CEA 7E 4C 02      [ 4]  842                     jmp      cont3 
                            843 
                            844  .globl SMVB_startDraw_hex
   4CED                     845 SMVB_startDraw_hex: ;#isfunction 
                            846 ; macro call ->                     SET_Y_INT  
   4CED 97 00         [ 4]  847                     sta      *VIA_port_b                  ; 4 
   4CEF D7 01         [ 4]  848                     stb      *VIA_port_a                  ; 4 
   4CF1 C6 01         [ 2]  849                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4CF3 D7 0A         [ 4]  850                     stb      *VIA_shift_reg               ; 4 
                            851 ; macro call ->  DELAY_NONE
                            852 ; macro call ->  ADD_BURST
                            853  
   4CF5 9F 00         [ 5]  854                     stx      *VIA_port_b                  ; 5 
   4CF7 97 05         [ 4]  855                     sta      *VIA_t1_cnt_hi               ; 4 
                            856 ; macro call ->                     ADD_NOPS  
   4CF9 12            [ 2]  857  nop 
   4CFA 7E 4B F0      [ 4]  858                     jmp      cont5
                            859 
                            860  .globl SMVB_startMove_tripple
   4CFD                     861 SMVB_startMove_tripple: ;#isfunction 
                            862 ; macro call ->                     SET_Y_INT  
   4CFD 97 00         [ 4]  863                     sta      *VIA_port_b                  ; 4 
   4CFF D7 01         [ 4]  864                     stb      *VIA_port_a                  ; 4 
                            865 ; macro call ->                     INIT_MOVE  
   4D01 C6 E0         [ 2]  866                     ldb      #0b11100000 
   4D03 D7 0A         [ 4]  867                     stb      *VIA_shift_reg               ; 
                            868 ; macro call ->  DELAY_NONE
                            869 ; macro call ->  ADD_BURST
                            870  
   4D05 9F 00         [ 5]  871                     stx      *VIA_port_b                  ; 5 
   4D07 97 05         [ 4]  872                     sta      *VIA_t1_cnt_hi 
                            873 ; macro call ->                     ADD_NOPS  
   4D09 12            [ 2]  874  nop 
   4D0A 20 18         [ 3]  875                     bra      move2 
                            876 
                            877  .globl SMVB_startMove_quadro
   4D0C                     878 SMVB_startMove_quadro: ;#isfunction 
                            879 ; macro call ->                     SET_Y_INT  
   4D0C 97 00         [ 4]  880                     sta      *VIA_port_b                  ; 4 
   4D0E D7 01         [ 4]  881                     stb      *VIA_port_a                  ; 4 
                            882 ; macro call ->                     INIT_MOVE  
   4D10 C6 E0         [ 2]  883                     ldb      #0b11100000 
   4D12 D7 0A         [ 4]  884                     stb      *VIA_shift_reg               ; 
                            885 ; macro call ->  DELAY_NONE
                            886 ; macro call ->  ADD_BURST
                            887  
   4D14 9F 00         [ 5]  888                     stx      *VIA_port_b                  ; 5 
   4D16 97 05         [ 4]  889                     sta      *VIA_t1_cnt_hi 
                            890 ; macro call ->                     ADD_NOPS  
   4D18 12            [ 2]  891  nop 
   4D19 20 00         [ 3]  892                     bra      move3 
                            893 
                            894  .globl move3
   4D1B                     895 move3: 
                            896 ; macro call ->                     WAIT_AFTER  
                            897 ; macro call ->                     WAIT7    
                            898 ; macro call ->                     WAIT5    
                            899 ; macro call ->                     WAIT3    
                            900  .globl here224
   4D1B                     901 here224:              
   4D1B 21 FE         [ 3]  902 					brn      here224                            ; wait 3 cycles 
                            903 ; macro call ->                     WAIT2    
   4D1D 12            [ 2]  904  nop ;     wait 2 cycles 
                            905 ; macro call ->                     WAIT2    
   4D1E 12            [ 2]  906  nop ;     wait 2 cycles 
   4D1F 0F 05         [ 6]  907                     clr      *VIA_t1_cnt_hi 
                            908 ; macro call ->                     ADD_NOPS  
   4D21 12            [ 2]  909  nop 
                            910 ; macro call ->                     WAIT_BEFORE  
                            911 ; macro call ->                     WAIT3    
                            912  .globl here229
   4D22                     913 here229:              
   4D22 21 FE         [ 3]  914 					brn      here229                            ; wait 3 cycles 
                            915  .globl move2
   4D24                     916 move2: 
                            917 ; macro call ->                     WAIT_AFTER  
                            918 ; macro call ->                     WAIT7    
                            919 ; macro call ->                     WAIT5    
                            920 ; macro call ->                     WAIT3    
                            921  .globl here233
   4D24                     922 here233:              
   4D24 21 FE         [ 3]  923 					brn      here233                            ; wait 3 cycles 
                            924 ; macro call ->                     WAIT2    
   4D26 12            [ 2]  925  nop ;     wait 2 cycles 
                            926 ; macro call ->                     WAIT2    
   4D27 12            [ 2]  927  nop ;     wait 2 cycles 
   4D28 0F 05         [ 6]  928                     clr      *VIA_t1_cnt_hi 
                            929 ; macro call ->                     ADD_NOPS  
   4D2A 12            [ 2]  930  nop 
   4D2B 7E 4D 4E      [ 4]  931                     jmp      SMVB_repeat_same2 
                            932 
                            933  .globl SMVB_startMove_octo
   4D2E                     934 SMVB_startMove_octo: ;#isfunction 
                            935 ; macro call ->                     SET_Y_INT  
   4D2E 97 00         [ 4]  936                     sta      *VIA_port_b                  ; 4 
   4D30 D7 01         [ 4]  937                     stb      *VIA_port_a                  ; 4 
                            938 ; macro call ->                     INIT_MOVE  
   4D32 C6 E0         [ 2]  939                     ldb      #0b11100000 
   4D34 D7 0A         [ 4]  940                     stb      *VIA_shift_reg               ; 
                            941 ; macro call ->  DELAY_NONE
                            942 ; macro call ->  ADD_BURST
                            943  
   4D36 9F 00         [ 5]  944                     stx      *VIA_port_b                  ; 5 
   4D38 97 05         [ 4]  945                     sta      *VIA_t1_cnt_hi 
                            946 ; macro call ->                     ADD_NOPS  
   4D3A 12            [ 2]  947  nop 
   4D3B 7E 4B DE      [ 4]  948                     jmp      cont7 
                            949  .globl SMVB_startMove_hex
   4D3E                     950 SMVB_startMove_hex: ;#isfunction 
                            951 ; macro call ->                     SET_Y_INT  
   4D3E 97 00         [ 4]  952                     sta      *VIA_port_b                  ; 4 
   4D40 D7 01         [ 4]  953                     stb      *VIA_port_a                  ; 4 
                            954 ; macro call ->                     INIT_MOVE  
   4D42 C6 E0         [ 2]  955                     ldb      #0b11100000 
   4D44 D7 0A         [ 4]  956                     stb      *VIA_shift_reg               ; 
                            957 ; macro call ->  DELAY_NONE
                            958 ; macro call ->  ADD_BURST
                            959  
   4D46 9F 00         [ 5]  960                     stx      *VIA_port_b                  ; 5 
   4D48 97 05         [ 4]  961                     sta      *VIA_t1_cnt_hi 
                            962 ; macro call ->                     ADD_NOPS  
   4D4A 12            [ 2]  963  nop 
   4D4B 7E 4B F0      [ 4]  964                     jmp      cont5
                            965 
                            966  .globl SMVB_repeat_same2
   4D4E                     967 SMVB_repeat_same2:                                           ;#isfunction  
   4D4E 37 14         [ 7]  968                     pulu     b,x 
   4D50 0F 05         [ 6]  969                     clr      *VIA_t1_cnt_hi 
                            970 ; macro call ->                     ADD_NOPS  
   4D52 12            [ 2]  971  nop 
   4D53 37 80         [ 6]  972                     pulu     pc 
                            973  .globl SMVB_startMove_double_sj
   4D55                     974 SMVB_startMove_double_sj:                                  ;#isfunction  
                            975 ; macro call ->                     SET_Y_INT  
   4D55 97 00         [ 4]  976                     sta      *VIA_port_b                  ; 4 
   4D57 D7 01         [ 4]  977                     stb      *VIA_port_a                  ; 4 
   4D59 EE C4         [ 5]  978                     ldu      ,u 
                            979 ; macro call ->                     INIT_MOVE_SJ  
                            980 ; macro call ->  DELAY_NONE
                            981 ; macro call ->  ADD_BURST
                            982  
   4D5B 9F 00         [ 5]  983                     stx      *VIA_port_b                  ; 5 
   4D5D 97 05         [ 4]  984                     sta      *VIA_t1_cnt_hi 
   4D5F 97 0A         [ 4]  985                     sta      *VIA_shift_reg               ; 
                            986 ; macro call ->                     ADD_NOPS  
   4D61 12            [ 2]  987  nop 
   4D62 1F 88         [ 6]  988                     tfr a,a 
   4D64 0F 05         [ 6]  989                     clr      *VIA_t1_cnt_hi 
                            990 ; macro call ->                     ADD_NOPS                              ; reduced by ldu ,u - 5 cycles 
   4D66 12            [ 2]  991  nop 
   4D67 37 94         [ 8]  992                     pulu     b,x, pc 
                            993  .globl SMVB_startMove_yStays_single
   4D69                     994 SMVB_startMove_yStays_single:                              ;#isfunction  
                            995 ; macro call ->                     INIT_MOVE  
   4D69 C6 E0         [ 2]  996                     ldb      #0b11100000 
   4D6B D7 0A         [ 4]  997                     stb      *VIA_shift_reg               ; 
                            998 ; macro call ->  DELAY_NONE
                            999 ; macro call ->  ADD_BURST
                           1000  
   4D6D 9F 00         [ 5] 1001                     stx      *VIA_port_b                  ; 5 
   4D6F 97 05         [ 4] 1002                     sta      *VIA_t1_cnt_hi 
                           1003 ; macro call ->                     ADD_NOPS  
   4D71 12            [ 2] 1004  nop 
   4D72 37 94         [ 8] 1005                     pulu     b,x,pc 
                           1006  .globl SMVB_startMove_yStays_single_sj
   4D74                    1007 SMVB_startMove_yStays_single_sj: 
   4D74 EE C4         [ 5] 1008                     ldu      ,u 
                           1009 ; macro call ->                     INIT_MOVE_SJ  
                           1010 ; macro call ->  DELAY_NONE
                           1011 ; macro call ->  ADD_BURST
                           1012  
   4D76 9F 00         [ 5] 1013                     stx      *VIA_port_b                  ; 5 
   4D78 97 05         [ 4] 1014                     sta      *VIA_t1_cnt_hi 
   4D7A 97 0A         [ 4] 1015                     sta      *VIA_shift_reg               ; 
                           1016 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4D7C 12            [ 2] 1017  nop 
   4D7D 37 94         [ 8] 1018                     pulu     b,x,pc 
                           1019 ; assuming b = 1
                           1020  .globl SMVB_startDraw_yStays_single
   4D7F                    1021 SMVB_startDraw_yStays_single:                              ;#isfunction  
   4D7F D7 0A         [ 4] 1022                     stb      *VIA_shift_reg               ; 4 
                           1023 ; macro call ->  DELAY_NONE
                           1024 ; macro call ->  ADD_BURST
                           1025  
   4D81 9F 00         [ 5] 1026                     stx      *VIA_port_b                  ; 5 
   4D83 97 05         [ 4] 1027                     sta      *VIA_t1_cnt_hi               ; 4 
                           1028 ; macro call ->                     ADD_NOPS  
   4D85 12            [ 2] 1029  nop 
   4D86 37 94         [ 8] 1030                     pulu     b,x,pc 
                           1031 ; assume b contains SHIFT
                           1032 
                           1033  .globl SMVB_startDraw_xyStays_single
   4D88                    1034 SMVB_startDraw_xyStays_single:                             ;#isfunction  
   4D88 D7 0A         [ 4] 1035                     stb      *VIA_shift_reg 
   4D8A 97 05         [ 4] 1036                     sta      *VIA_t1_cnt_hi 
                           1037 ; macro call ->                     ADD_NOPS  
   4D8C 12            [ 2] 1038  nop 
   4D8D 37 94         [ 8] 1039                     pulu     b,x,pc 
                           1040  .globl SMVB_startDraw_yStays_single_sj
   4D8F                    1041 SMVB_startDraw_yStays_single_sj:                           ;#isfunction  
                           1042 ;                    ldb      #SHITREG_POKE_VALUE          ; 2 
   4D8F D7 0A         [ 4] 1043                     stb      *VIA_shift_reg               ; 4 
                           1044 ; macro call ->  DELAY_NONE
                           1045 ; macro call ->  ADD_BURST
                           1046  
   4D91 9F 00         [ 5] 1047                     stx      *VIA_port_b                  ; 5 
   4D93 97 05         [ 4] 1048                     sta      *VIA_t1_cnt_hi               ; 4 
                           1049 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4D95 12            [ 2] 1050  nop 
   4D96 EE C4         [ 5] 1051                     ldu      ,u 
   4D98 37 94         [ 8] 1052                     pulu     b,x,pc 
                           1053 
                           1054 
                           1055  .globl SMVB_startDraw_yd4_double
   4D9A                    1056 SMVB_startDraw_yd4_double:
                           1057 ; macro call ->                     SET_Y_INT  
   4D9A 97 00         [ 4] 1058                     sta      *VIA_port_b                  ; 4 
   4D9C D7 01         [ 4] 1059                     stb      *VIA_port_a                  ; 4 
   4D9E C6 01         [ 2] 1060                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4DA0 D7 0A         [ 4] 1061                     stb      *VIA_shift_reg               ; 4 
                           1062 ; macro call ->  DELAY_NONE
                           1063 ; macro call ->  ADD_BURST
                           1064  
   4DA2 9F 00         [ 5] 1065                     stx      *VIA_port_b                  ; 5 
   4DA4 97 05         [ 4] 1066                     sta      *VIA_t1_cnt_hi               ; 4 
                           1067 ; macro call ->                     ADD_NOPS  
   4DA6 12            [ 2] 1068  nop 
   4DA7 7E 4D 4E      [ 4] 1069                     jmp      SMVB_repeat_same2 
                           1070 
                           1071  .globl SMVB_startDraw_yd4_octo
   4DAA                    1072 SMVB_startDraw_yd4_octo:
                           1073 ; macro call ->                     SET_Y_INT  
   4DAA 97 00         [ 4] 1074                     sta      *VIA_port_b                  ; 4 
   4DAC D7 01         [ 4] 1075                     stb      *VIA_port_a                  ; 4 
   4DAE C6 01         [ 2] 1076                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4DB0 D7 0A         [ 4] 1077                     stb      *VIA_shift_reg               ; 4 
                           1078 ; macro call ->  DELAY_NONE
                           1079 ; macro call ->  ADD_BURST
                           1080  
   4DB2 9F 00         [ 5] 1081                     stx      *VIA_port_b                  ; 5 
   4DB4 97 05         [ 4] 1082                     sta      *VIA_t1_cnt_hi               ; 4 
                           1083 ; macro call ->                     ADD_NOPS  
   4DB6 12            [ 2] 1084  nop 
   4DB7 7E 4B DE      [ 4] 1085                     jmp      cont7
                           1086 
                           1087 
                           1088  .globl SMVB_startDraw_yd4_single
   4DBA                    1089 SMVB_startDraw_yd4_single:;#isfunction 
                           1090  .globl SMVB_startDraw_single
   4DBA                    1091 SMVB_startDraw_single:                                    ;#isfunction  
                           1092 ; macro call ->                     SET_Y_INT  
   4DBA 97 00         [ 4] 1093                     sta      *VIA_port_b                  ; 4 
   4DBC D7 01         [ 4] 1094                     stb      *VIA_port_a                  ; 4 
   4DBE C6 01         [ 2] 1095                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4DC0 D7 0A         [ 4] 1096                     stb      *VIA_shift_reg               ; 4 
                           1097 ; macro call ->  DELAY_NONE
                           1098 ; macro call ->  ADD_BURST
                           1099  
   4DC2 9F 00         [ 5] 1100                     stx      *VIA_port_b                  ; 5 
   4DC4 97 05         [ 4] 1101                     sta      *VIA_t1_cnt_hi               ; 4 
                           1102 ; macro call ->                     ADD_NOPS  
   4DC6 12            [ 2] 1103  nop 
   4DC7 37 94         [ 8] 1104                     pulu     b,x,pc 
                           1105  .globl SMVB_startDraw_single_sj
   4DC9                    1106 SMVB_startDraw_single_sj: 
                           1107 ; macro call ->                     SET_Y_INT  
   4DC9 97 00         [ 4] 1108                     sta      *VIA_port_b                  ; 4 
   4DCB D7 01         [ 4] 1109                     stb      *VIA_port_a                  ; 4 
   4DCD C6 01         [ 2] 1110                     ldb      #SHITREG_POKE_VALUE          ; 2 
   4DCF D7 0A         [ 4] 1111                     stb      *VIA_shift_reg               ; 4 
                           1112 ; macro call ->  DELAY_NONE
                           1113 ; macro call ->  ADD_BURST
                           1114  
   4DD1 9F 00         [ 5] 1115                     stx      *VIA_port_b                  ; 5 
   4DD3 97 05         [ 4] 1116                     sta      *VIA_t1_cnt_hi               ; 4 
                           1117 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4DD5 12            [ 2] 1118  nop 
   4DD6 EE C4         [ 5] 1119                     ldu      ,u 
   4DD8 37 94         [ 8] 1120                     pulu     b,x,pc 
                           1121  .globl SMVB_startDraw_yEqx_single_sj
   4DDA                    1122 SMVB_startDraw_yEqx_single_sj:                             ;#isfunction  
                           1123 ; macro call ->                     SET_Y_INT  
   4DDA 97 00         [ 4] 1124                     sta      *VIA_port_b                  ; 4 
   4DDC D7 01         [ 4] 1125                     stb      *VIA_port_a                  ; 4 
   4DDE C6 01         [ 2] 1126                     ldb      #0x01 
   4DE0 D7 0A         [ 4] 1127                     stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
                           1128 ; macro call ->  DELAY_NONE
                           1129 ; macro call ->  ADD_BURST
                           1130  
   4DE2 D7 00         [ 4] 1131                     stb      *VIA_port_b 
   4DE4 97 05         [ 4] 1132                     sta      *VIA_t1_cnt_hi 
                           1133 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4DE6 12            [ 2] 1134  nop 
   4DE7 EE C4         [ 5] 1135                     ldu      ,u 
   4DE9 37 94         [ 8] 1136                     pulu     b,x,pc 
                           1137  .globl SMVB_startDraw_yEqx_single
   4DEB                    1138 SMVB_startDraw_yEqx_single:                                ;#isfunction  
                           1139  .globl SMVB_startDraw_yd4_yEqx_single
   4DEB                    1140 SMVB_startDraw_yd4_yEqx_single:                                ;#isfunction  
                           1141 ; macro call ->                     SET_Y_INT  
   4DEB 97 00         [ 4] 1142                     sta      *VIA_port_b                  ; 4 
   4DED D7 01         [ 4] 1143                     stb      *VIA_port_a                  ; 4 
   4DEF C6 01         [ 2] 1144                     ldb      #0x01 
   4DF1 D7 0A         [ 4] 1145                     stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
                           1146 ; macro call ->  DELAY_NONE
                           1147 ; macro call ->  ADD_BURST
                           1148  
   4DF3 D7 00         [ 4] 1149                     stb      *VIA_port_b 
   4DF5 97 05         [ 4] 1150                     sta      *VIA_t1_cnt_hi 
                           1151 ; macro call ->                     ADD_NOPS  
   4DF7 12            [ 2] 1152  nop 
   4DF8 37 94         [ 8] 1153                     pulu     b,x,pc 
                           1154  .globl SMVB_startMove_yEqx_single
   4DFA                    1155 SMVB_startMove_yEqx_single:                                ;#isfunction  
                           1156 ; macro call ->                     SET_Y_INT  
   4DFA 97 00         [ 4] 1157                     sta      *VIA_port_b                  ; 4 
   4DFC D7 01         [ 4] 1158                     stb      *VIA_port_a                  ; 4 
                           1159 ; macro call ->  Y_DELAY_HALF
                           1160 ; macro call ->  Y_DELAY_HALF_4
   4DFE 12            [ 2] 1161  nop 
                           1162 ; macro call ->  ADD_BURST
                           1163  
                           1164 
   4DFF 0C 00         [ 6] 1165                     inc      *VIA_port_b 
   4E01 97 05         [ 4] 1166                     sta      *VIA_t1_cnt_hi 
                           1167 
   4E03 97 0A         [ 4] 1168                     sta      *VIA_shift_reg               ; 4 
                           1169 ; macro call ->                     ADD_NOPS  
   4E05 12            [ 2] 1170  nop 
   4E06 37 94         [ 8] 1171                     pulu     b,x,pc 
                           1172  .globl SMVB_startMove_yd4_hex
   4E08                    1173 SMVB_startMove_yd4_hex:
                           1174 ; macro call ->                     SET_Y_INT  
   4E08 97 00         [ 4] 1175                     sta      *VIA_port_b                  ; 4 
   4E0A D7 01         [ 4] 1176                     stb      *VIA_port_a                  ; 4 
                           1177 ; macro call ->  Y_DELAY_HALF_4
   4E0C 12            [ 2] 1178  nop 
                           1179 ; macro call ->  ADD_BURST
                           1180  
                           1181 
   4E0D 97 0A         [ 4] 1182                     sta      *VIA_shift_reg               ; 4 
                           1183 ; macro call ->  DELAY_NONE
                           1184 ; macro call ->  ADD_BURST
                           1185  
   4E0F 9F 00         [ 5] 1186                     stx      *VIA_port_b                  ; 5 
   4E11 97 05         [ 4] 1187                     sta      *VIA_t1_cnt_hi               ; 4 
                           1188 ; macro call ->                     ADD_NOPS  
   4E13 12            [ 2] 1189  nop 
   4E14 7E 4B F0      [ 4] 1190                     jmp      cont5
                           1191 
                           1192  .globl SMVB_startMove_yd4_octo
   4E17                    1193 SMVB_startMove_yd4_octo:
                           1194 ; macro call ->                     SET_Y_INT  
   4E17 97 00         [ 4] 1195                     sta      *VIA_port_b                  ; 4 
   4E19 D7 01         [ 4] 1196                     stb      *VIA_port_a                  ; 4 
                           1197 ; macro call ->  Y_DELAY_HALF_4
   4E1B 12            [ 2] 1198  nop 
                           1199 ; macro call ->  ADD_BURST
                           1200  
                           1201 
   4E1C 97 0A         [ 4] 1202                     sta      *VIA_shift_reg               ; 4 
                           1203 ; macro call ->  DELAY_NONE
                           1204 ; macro call ->  ADD_BURST
                           1205  
   4E1E 9F 00         [ 5] 1206                     stx      *VIA_port_b                  ; 5 
   4E20 97 05         [ 4] 1207                     sta      *VIA_t1_cnt_hi               ; 4 
                           1208 ; macro call ->                     ADD_NOPS  
   4E22 12            [ 2] 1209  nop 
   4E23 7E 4B DE      [ 4] 1210                     jmp      cont7
                           1211  .globl SMVB_startMove_yd4_quadro
   4E26                    1212 SMVB_startMove_yd4_quadro:
                           1213 ; macro call ->                     SET_Y_INT  
   4E26 97 00         [ 4] 1214                     sta      *VIA_port_b                  ; 4 
   4E28 D7 01         [ 4] 1215                     stb      *VIA_port_a                  ; 4 
                           1216 ; macro call ->  Y_DELAY_HALF_4
   4E2A 12            [ 2] 1217  nop 
                           1218 ; macro call ->  ADD_BURST
                           1219  
                           1220 
   4E2B 97 0A         [ 4] 1221                     sta      *VIA_shift_reg               ; 4 
                           1222 ; macro call ->  DELAY_NONE
                           1223 ; macro call ->  ADD_BURST
                           1224  
   4E2D 9F 00         [ 5] 1225                     stx      *VIA_port_b                  ; 5 
   4E2F 97 05         [ 4] 1226                     sta      *VIA_t1_cnt_hi               ; 4 
                           1227 ; macro call ->                     ADD_NOPS  
   4E31 12            [ 2] 1228  nop 
   4E32 7E 4C 02      [ 4] 1229                     jmp      cont3
                           1230  .globl SMVB_startMove_yd4_tripple
   4E35                    1231 SMVB_startMove_yd4_tripple:
                           1232 ; macro call ->                     SET_Y_INT  
   4E35 97 00         [ 4] 1233                     sta      *VIA_port_b                  ; 4 
   4E37 D7 01         [ 4] 1234                     stb      *VIA_port_a                  ; 4 
                           1235 ; macro call ->  Y_DELAY_HALF_4
   4E39 12            [ 2] 1236  nop 
                           1237 ; macro call ->  ADD_BURST
                           1238  
                           1239 
   4E3A 97 0A         [ 4] 1240                     sta      *VIA_shift_reg               ; 4 
                           1241 ; macro call ->  DELAY_NONE
                           1242 ; macro call ->  ADD_BURST
                           1243  
   4E3C 9F 00         [ 5] 1244                     stx      *VIA_port_b                  ; 5 
   4E3E 97 05         [ 4] 1245                     sta      *VIA_t1_cnt_hi               ; 4 
                           1246 ; macro call ->                     ADD_NOPS  
   4E40 12            [ 2] 1247  nop 
   4E41 7E 4C 0B      [ 4] 1248                     jmp      cont2
                           1249 
                           1250  .globl SMVB_startMove_yd4_yEqx_single
   4E44                    1251 SMVB_startMove_yd4_yEqx_single:                                ;#isfunction  
                           1252 ; macro call ->                     SET_Y_INT  
   4E44 97 00         [ 4] 1253                     sta      *VIA_port_b                  ; 4 
   4E46 D7 01         [ 4] 1254                     stb      *VIA_port_a                  ; 4 
                           1255 ; macro call ->  Y_DELAY_HALF_4
   4E48 12            [ 2] 1256  nop 
                           1257 ; macro call ->  ADD_BURST
                           1258  
                           1259 
   4E49 0C 00         [ 6] 1260                     inc      *VIA_port_b 
   4E4B 97 05         [ 4] 1261                     sta      *VIA_t1_cnt_hi 
   4E4D 97 0A         [ 4] 1262                     sta      *VIA_shift_reg               ; 4 
                           1263 ; macro call ->                     ADD_NOPS  
   4E4F 12            [ 2] 1264  nop 
   4E50 37 94         [ 8] 1265                     pulu     b,x,pc 
                           1266  .globl SMVB_startMove_xyStays_single
   4E52                    1267 SMVB_startMove_xyStays_single: ;#isfunction 
   4E52 97 05         [ 4] 1268                     sta      *VIA_t1_cnt_hi 
   4E54 D7 0A         [ 4] 1269                     stb      *VIA_shift_reg 
                           1270 ; macro call ->                     ADD_NOPS  
   4E56 12            [ 2] 1271  nop 
   4E57 37 94         [ 8] 1272                     pulu     b,x,pc 
                           1273 
                           1274  .globl SMVB_startMove_yEqx_single_sj
   4E59                    1275 SMVB_startMove_yEqx_single_sj:                             ;#isfunction  
                           1276 ; macro call ->                     SET_Y_INT  
   4E59 97 00         [ 4] 1277                     sta      *VIA_port_b                  ; 4 
   4E5B D7 01         [ 4] 1278                     stb      *VIA_port_a                  ; 4 
                           1279 ; macro call ->                     WAIT2    
   4E5D 12            [ 2] 1280  nop ;     wait 2 cycles 
                           1281 ; macro call ->  DELAY_NONE
                           1282 ; macro call ->  ADD_BURST
                           1283  
   4E5E 0C 00         [ 6] 1284                     inc      *VIA_port_b 
   4E60 97 05         [ 4] 1285                     sta      *VIA_t1_cnt_hi 
   4E62 97 0A         [ 4] 1286                     sta      *VIA_shift_reg               ; 4 
                           1287 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4E64 12            [ 2] 1288  nop 
   4E65 EE C4         [ 5] 1289                     ldu      ,u 
   4E67 37 94         [ 8] 1290                     pulu     b,x,pc 
                           1291  .globl SMVB_startMove_yd4_yEqx_single_sj
   4E69                    1292 SMVB_startMove_yd4_yEqx_single_sj:                             ;#isfunction  
                           1293 
                           1294 ; macro call ->                     SET_Y_INT  
   4E69 97 00         [ 4] 1295                     sta      *VIA_port_b                  ; 4 
   4E6B D7 01         [ 4] 1296                     stb      *VIA_port_a                  ; 4 
                           1297 ; macro call ->                     WAIT2    
   4E6D 12            [ 2] 1298  nop ;     wait 2 cycles 
                           1299 ; macro call ->  Y_DELAY_HALF_4
   4E6E 12            [ 2] 1300  nop 
                           1301 ; macro call ->  ADD_BURST
                           1302  
                           1303 
   4E6F 0C 00         [ 6] 1304                     inc      *VIA_port_b 
   4E71 97 05         [ 4] 1305                     sta      *VIA_t1_cnt_hi 
   4E73 97 0A         [ 4] 1306                     sta      *VIA_shift_reg               ; 4 
                           1307 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4E75 12            [ 2] 1308  nop 
   4E76 EE C4         [ 5] 1309                     ldu      ,u 
   4E78 37 94         [ 8] 1310                     pulu     b,x,pc 
                           1311  .globl SMVB_startMove_yd4_newY_eq_oldX_single
   4E7A                    1312 SMVB_startMove_yd4_newY_eq_oldX_single:
                           1313 
                           1314  .globl SMVB_startMove_newY_eq_oldX_single
   4E7A                    1315 SMVB_startMove_newY_eq_oldX_single:;#isfunction  
   4E7A 97 00         [ 4] 1316                     sta      *VIA_port_b                  ; 4 
                           1317 ; macro call ->                     INIT_MOVE  
   4E7C C6 E0         [ 2] 1318                     ldb      #0b11100000 
   4E7E D7 0A         [ 4] 1319                     stb      *VIA_shift_reg               ; 
                           1320 ; macro call ->  DELAY_NONE
                           1321 ; macro call ->  ADD_BURST
   4E80 12            [ 2] 1322  nop ; y4d
                           1323  
   4E81 9F 00         [ 5] 1324                     stx      *VIA_port_b                  ; 5 
   4E83 97 05         [ 4] 1325                     sta      *VIA_t1_cnt_hi 
                           1326 ; macro call ->                     ADD_NOPS                          ; reduced by ldu ,u - 5 cycles 
   4E85 12            [ 2] 1327  nop 
   4E86 37 94         [ 8] 1328                     pulu     b,x,pc 
                           1329  .globl SMVB_startMove_newY_eq_oldX_single_sj
   4E88                    1330 SMVB_startMove_newY_eq_oldX_single_sj: ;#isfunction  
   4E88 97 00         [ 4] 1331                     sta      *VIA_port_b                  ; 4 
   4E8A EE C4         [ 5] 1332                     ldu      ,u 
                           1333 ; macro call ->                     INIT_MOVE_SJ  
                           1334 ; macro call ->  DELAY_NONE
                           1335 ; macro call ->  ADD_BURST
                           1336  
   4E8C 9F 00         [ 5] 1337                     stx      *VIA_port_b                  ; 5 
   4E8E 97 05         [ 4] 1338                     sta      *VIA_t1_cnt_hi 
   4E90 97 0A         [ 4] 1339                     sta      *VIA_shift_reg               ; 
                           1340 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4E92 12            [ 2] 1341  nop 
   4E93 37 94         [ 8] 1342                     pulu     b,x,pc 
                           1343  .globl SMVB_startDraw_newY_eq_oldX_single
   4E95                    1344 SMVB_startDraw_newY_eq_oldX_single:                       ;#isfunction  
   4E95 97 00         [ 4] 1345                     sta      *VIA_port_b                  ; 4 
   4E97 C6 01         [ 2] 1346                     ldb      #SHITREG_POKE_VALUE 
   4E99 D7 0A         [ 4] 1347                     stb      *VIA_shift_reg               ; 4 
                           1348 ; macro call ->  DELAY_NONE
                           1349 ; macro call ->  ADD_BURST
                           1350  
   4E9B 9F 00         [ 5] 1351                     stx      *VIA_port_b                  ; 5 
   4E9D 97 05         [ 4] 1352                     sta      *VIA_t1_cnt_hi 
                           1353 ; macro call ->                     ADD_NOPS  
   4E9F 12            [ 2] 1354  nop 
   4EA0 37 94         [ 8] 1355                     pulu     b,x,pc 
                           1356  .globl SMVB_startDraw_newY_eq_oldX_single_sj
   4EA2                    1357 SMVB_startDraw_newY_eq_oldX_single_sj:                    ;#isfunction  
   4EA2 97 00         [ 4] 1358                     sta      *VIA_port_b                  ; 4 
   4EA4 C6 01         [ 2] 1359                     ldb      #SHITREG_POKE_VALUE 
   4EA6 D7 0A         [ 4] 1360                     stb      *VIA_shift_reg               ; 4 
                           1361 ; macro call ->  DELAY_NONE
                           1362 ; macro call ->  ADD_BURST
                           1363  
   4EA8 9F 00         [ 5] 1364                     stx      *VIA_port_b                  ; 5 
   4EAA 97 05         [ 4] 1365                     sta      *VIA_t1_cnt_hi 
                           1366 ; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
   4EAC 12            [ 2] 1367  nop 
   4EAD EE C4         [ 5] 1368                     ldu      ,u 
   4EAF 37 94         [ 8] 1369                     pulu     b,x,pc 
                           1370 
                           1371 
                           1372  .globl SMVB_lastDraw_rts                                         ;#isfunction  
                           1373  .globl SMVB_FlagWait
   4EB1                    1374 SMVB_lastDraw_rts:
   4EB1                    1375 SMVB_FlagWait: 
   4EB1 D5 0D         [ 4] 1376                     bitb     *VIA_int_flags 
   4EB3 27 FC         [ 3] 1377                     beq      SMVB_FlagWait 
   4EB5 97 0A         [ 4] 1378                     sta      *VIA_shift_reg 
                           1379  .globl SMVB_rts
   4EB7                    1380 SMVB_rts:                                                 ;#isfunction  
   4EB7 C6 80         [ 2] 1381                     ldb      #0x80
   4EB9 86 CC         [ 2] 1382                     LDA      #0xCC 
   4EBB B7 D0 0C      [ 5] 1383                     STA      VIA_cntl                     ;/BLANK low and /ZERO low 
   4EBE F7 D0 04      [ 5] 1384                     stB      VIA_t1_cnt_lo 
                           1385 ; and ensures integrators are clean (good positioning!)
                           1386 ;                    ldd      #0 
   4EC1 9F 00         [ 5] 1387                     stx      *VIA_port_b 
                           1388 ; RTS for title!
                           1389 ;                    puls     u,pc                         ; (D = y,x, pc = next object) 
   4EC3 39            [ 5] 1390                     rts      
                           1391 
                           1392 ;// TODO CHECK WITH SHIELD + CO
                           1393  .globl SMVB_lastDraw_rts_stay
   4EC4                    1394 SMVB_lastDraw_rts_stay:                                    ;#isfunction  
                           1395 ;                    SET_Y_INT  
                           1396 ;                    Y_DELAY_HALF                          ; 4 
                           1397 ;                    ldd      #0x40E0 
                           1398 ;                    stx      <VIA_port_b                  ; 5 
                           1399 ;                    clr      <VIA_t1_cnt_hi 
                           1400 ;                    ADD_NOPS  
   4EC4 4F            [ 2] 1401  clra
                           1402  .globl SMVB_FlagWait3
   4EC5                    1403 SMVB_FlagWait3:                                           ;#isfunction  
   4EC5 D5 0D         [ 4] 1404                     bitb     *VIA_int_flags 
   4EC7 27 FC         [ 3] 1405                     beq      SMVB_FlagWait3 
   4EC9 97 0A         [ 4] 1406                     sta      *VIA_shift_reg 
   4ECB 12            [ 2] 1407  nop 
   4ECC 12            [ 2] 1408  nop 
                           1409 ;                    rts      
   4ECD 35 C0         [ 7] 1410                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1411 
                           1412  .globl SMVB_lastMove_rts_stay
   4ECF                    1413 SMVB_lastMove_rts_stay:                                    ;#isfunction  
   4ECF C6 40         [ 2] 1414                     ldb      #0x40 
                           1415  .globl SMVB_FlagWait3_2
   4ED1                    1416 SMVB_FlagWait3_2: 
   4ED1 D5 0D         [ 4] 1417                     bitb     *VIA_int_flags 
   4ED3 27 FC         [ 3] 1418                     beq      SMVB_FlagWait3_2 
   4ED5 97 0A         [ 4] 1419                     sta      *VIA_shift_reg 
   4ED7 35 C0         [ 7] 1420                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1421 
                           1422 ; todo 
                           1423 ; last draw could contain 0xF in A
                           1424 ; than load not needed - attention 
                           1425 ; when cycles are not done for load, than shift value might be needed 2 higher!
                           1426 ; also in X could be some sensible value in X for one of the other 
                           1427  .globl SMVB_lastDraw_rts2
   4ED9                    1428 SMVB_lastDraw_rts2:                                        ;#isfunction  
                           1429 ;                    ldb      #0xf0 
   4ED9 12            [ 2] 1430  nop 
   4EDA D7 0A         [ 4] 1431                     stb      *VIA_shift_reg 
   4EDC 86 80         [ 2] 1432                     lda      #0x80
   4EDE 97 04         [ 4] 1433                     sta      *VIA_t1_cnt_lo 
                           1434 ; extended on purpose to gain one cycle of time
                           1435 ; to reset to 
                           1436 ; a) swithc light off before zeroing
                           1437 ; b) zero
                           1438  .globl SMVB_rts2
   4EE0                    1439 SMVB_rts2:                                                ;#isfunction  
   4EE0 C6 CC         [ 2] 1440                     ldb      #0xcc 
   4EE2 F7 D0 0C      [ 5] 1441                     STb      VIA_cntl                    ;/BLANK low and /ZERO low 
   4EE5 BF D0 00      [ 6] 1442                     stx      VIA_port_b 
                           1443 ; nop 10
   4EE8 35 C0         [ 7] 1444                     puls     u,pc                         ; (D = y,x, pc = next object) 
                           1445 
                           1446 
                           1447 
                           1448 
                           1449  .globl __SMVB_sceneData
   4EEA                    1450 __SMVB_sceneData:
   4EEA 4E F2              1451  .word _telengard_0 ; list of all single vectorlists in this
   4EEC 50 0D              1452  .word _telengard_1
   4EEE 51 3E              1453  .word _telengard_2
   4EF0 00 00              1454  .word 0
                           1455 
                           1456  .globl _telengard_0
   4EF2                    1457 _telengard_0:
   4EF2 68 01 85           1458 	.byte  0x68, 0x01, -0x7B
   4EF5 4B D1              1459 	.word SMVB_continue_octo
   4EF7 0A 01 50           1460 	.byte  0x0A, 0x01,  0x50
   4EFA 4D BA              1461 	.word SMVB_startDraw_yd4_single
   4EFC 07 01 5F           1462 	.byte  0x07, 0x01,  0x5F
   4EFF 4C 1C              1463 	.word SMVB_continue_double
   4F01 00 01 46           1464 	.byte  0x00, 0x01,  0x46
   4F04 4B 18              1465 	.word SMVB_continue7_single
   4F06 FB 01 5A           1466 	.byte -0x05, 0x01,  0x5A
   4F09 F6 01 7D           1467 	.byte -0x0A, 0x01,  0x7D
   4F0C DD 01 F1           1468 	.byte -0x23, 0x01, -0x0F
   4F0F 19 01 CA           1469 	.byte  0x19, 0x01, -0x36
   4F12 00 01 B5           1470 	.byte  0x00, 0x01, -0x4B
   4F15 F6 01 A6           1471 	.byte -0x0A, 0x01, -0x5A
   4F18 D3 01 E7           1472 	.byte -0x2D, 0x01, -0x19
   4F1B 4B 25              1473 	.word SMVB_continue6_single
   4F1D BA 01 0A           1474 	.byte -0x46, 0x01,  0x0A
   4F20 C9 01 00           1475 	.byte -0x37, 0x01,  0x00
   4F23 BF 01 0A           1476 	.byte -0x41, 0x01,  0x0A
   4F26 A1 01 05           1477 	.byte -0x5F, 0x01,  0x05
   4F29 A6 01 0A           1478 	.byte -0x5A, 0x01,  0x0A
   4F2C AE 01 05           1479 	.byte -0x52, 0x01,  0x05
   4F2F 4C 1C              1480 	.word SMVB_continue_double
   4F31 9C 01 00           1481 	.byte -0x64, 0x01,  0x00
   4F34 4B B5              1482 	.word SMVB_continue_quadro
   4F36 D3 01 F6           1483 	.byte -0x2D, 0x01, -0x0A
   4F39 4B 3F              1484 	.word SMVB_continue4_single
   4F3B DD 01 E7           1485 	.byte -0x23, 0x01, -0x19
   4F3E 4B 01 DD           1486 	.byte  0x4B, 0x01, -0x23
   4F41 5F 01 0F           1487 	.byte  0x5F, 0x01,  0x0F
   4F44 4D 01 00           1488 	.byte  0x4D, 0x01,  0x00
   4F47 4C 1C              1489 	.word SMVB_continue_double
   4F49 52 01 05           1490 	.byte  0x52, 0x01,  0x05
   4F4C 4C 1C              1491 	.word SMVB_continue_double
   4F4E 56 01 FD           1492 	.byte  0x56, 0x01, -0x03
   4F51 4B A7              1493 	.word SMVB_continue_tripple
   4F53 6E 01 F6           1494 	.byte  0x6E, 0x01, -0x0A
   4F56 4B 59              1495 	.word SMVB_continue2_single
   4F58 73 01 FB           1496 	.byte  0x73, 0x01, -0x05
   4F5B 2D 01 F6           1497 	.byte  0x2D, 0x01, -0x0A
   4F5E 4B 73              1498 	.word SMVB_continue_yd4_single
   4F60 23 01 E2           1499 	.byte  0x23, 0x01, -0x1E
   4F63 4B 32              1500 	.word SMVB_continue5_single
   4F65 0A 01 A6           1501 	.byte  0x0A, 0x01, -0x5A
   4F68 F6 01 A1           1502 	.byte -0x0A, 0x01, -0x5F
   4F6B E7 01 D8           1503 	.byte -0x19, 0x01, -0x28
   4F6E 2D 01 FB           1504 	.byte  0x2D, 0x01, -0x05
   4F71 07 01 68           1505 	.byte  0x07, 0x01,  0x68
   4F74 4D 3E              1506 	.word SMVB_startMove_hex
   4F76 DD 01 E2           1507 	.byte -0x23, 0x01, -0x1E
   4F79 4D BA              1508 	.word SMVB_startDraw_single
   4F7B 88 01 E7           1509 	.byte -0x78, 0x01, -0x19
   4F7E 4B 73              1510 	.word SMVB_continue_yd4_single
   4F80 D3 01 E2           1511 	.byte -0x2D, 0x01, -0x1E
   4F83 4B 32              1512 	.word SMVB_continue5_single
   4F85 41 01 F1           1513 	.byte  0x41, 0x01, -0x0F
   4F88 23 01 E2           1514 	.byte  0x23, 0x01, -0x1E
   4F8B 14 01 CE           1515 	.byte  0x14, 0x01, -0x32
   4F8E EC 01 AB           1516 	.byte -0x14, 0x01, -0x55
   4F91 97 01 F1           1517 	.byte -0x69, 0x01, -0x0F
   4F94 4B 73              1518 	.word SMVB_continue_yd4_single
   4F96 AE 01 00           1519 	.byte -0x52, 0x01,  0x00
   4F99 4C 1C              1520 	.word SMVB_continue_double
   4F9B B0 01 0A           1521 	.byte -0x50, 0x01,  0x0A
   4F9E 4B 66              1522 	.word SMVB_continue_single
   4FA0 B3 01 0C           1523 	.byte -0x4D, 0x01,  0x0C
   4FA3 4C 1C              1524 	.word SMVB_continue_double
   4FA5 AB 01 05           1525 	.byte -0x55, 0x01,  0x05
   4FA8 4C 1C              1526 	.word SMVB_continue_double
   4FAA 9B 01 FE           1527 	.byte -0x65, 0x01, -0x02
   4FAD 4B D1              1528 	.word SMVB_continue_octo
   4FAF 5A 01 E9           1529 	.byte  0x5A, 0x01, -0x17
   4FB2 4B A7              1530 	.word SMVB_continue_tripple
   4FB4 3C 01 E2           1531 	.byte  0x3C, 0x01, -0x1E
   4FB7 4B 66              1532 	.word SMVB_continue_single
   4FB9 6B 01 C7           1533 	.byte  0x6B, 0x01, -0x39
   4FBC 4C 1C              1534 	.word SMVB_continue_double
   4FBE 14 01 37           1535 	.byte  0x14, 0x01,  0x37
   4FC1 4B 73              1536 	.word SMVB_continue_yd4_single
   4FC3 64 01 0F           1537 	.byte  0x64, 0x01,  0x0F
   4FC6 4B 66              1538 	.word SMVB_continue_single
   4FC8 64 01 00           1539 	.byte  0x64, 0x01,  0x00
   4FCB 4B B5              1540 	.word SMVB_continue_quadro
   4FCD 65 01 FB           1541 	.byte  0x65, 0x01, -0x05
   4FD0 4B A7              1542 	.word SMVB_continue_tripple
   4FD2 64 01 00           1543 	.byte  0x64, 0x01,  0x00
   4FD5 4B 66              1544 	.word SMVB_continue_single
   4FD7 0F 01 B5           1545 	.byte  0x0F, 0x01, -0x4B
   4FDA 4B 73              1546 	.word SMVB_continue_yd4_single
   4FDC F1 01 C4           1547 	.byte -0x0F, 0x01, -0x3C
   4FDF 4B 18              1548 	.word SMVB_continue7_single
   4FE1 E2 01 DD           1549 	.byte -0x1E, 0x01, -0x23
   4FE4 D3 01 EC           1550 	.byte -0x2D, 0x01, -0x14
   4FE7 D3 01 14           1551 	.byte -0x2D, 0x01,  0x14
   4FEA 50 01 B5           1552 	.byte  0x50, 0x01, -0x4B
   4FED 55 01 DD           1553 	.byte  0x55, 0x01, -0x23
   4FF0 32 01 DD           1554 	.byte  0x32, 0x01, -0x23
   4FF3 28 01 E2           1555 	.byte  0x28, 0x01, -0x1E
   4FF6 4B 59              1556 	.word SMVB_continue2_single
   4FF8 F6 01 37           1557 	.byte -0x0A, 0x01,  0x37
   4FFB 01 01 6E           1558 	.byte  0x01, 0x01,  0x6E
   4FFE 4B C3              1559 	.word SMVB_continue_hex
   5000 0F 01 2D           1560 	.byte  0x0F, 0x01,  0x2D
   5003 4B 59              1561 	.word SMVB_continue2_single
   5005 DD 01 FB           1562 	.byte -0x23, 0x01, -0x05
   5008 40 00 00           1563 	.byte  0x40, 0x00,  0x00
   500B 4E B1              1564 	.word SMVB_lastDraw_rts
                           1565  .globl _telengard_1
   500D                    1566 _telengard_1:
   500D 53 01 99           1567 	.byte  0x53, 0x01, -0x67
   5010 4B C3              1568 	.word SMVB_continue_hex
   5012 4B 01 0A           1569 	.byte  0x4B, 0x01,  0x0A
   5015 4D BA              1570 	.word SMVB_startDraw_single
   5017 37 01 1E           1571 	.byte  0x37, 0x01,  0x1E
   501A 4B 59              1572 	.word SMVB_continue2_single
   501C 46 01 5E           1573 	.byte  0x46, 0x01,  0x5E
   501F 9C 01 28           1574 	.byte -0x64, 0x01,  0x28
   5022 4B 73              1575 	.word SMVB_continue_yd4_single
   5024 14 01 D3           1576 	.byte  0x14, 0x01, -0x2D
   5027 4B 3F              1577 	.word SMVB_continue4_single
   5029 E2 01 D9           1578 	.byte -0x1E, 0x01, -0x27
   502C C4 01 F1           1579 	.byte -0x3C, 0x01, -0x0F
   502F 23 01 3B           1580 	.byte  0x23, 0x01,  0x3B
   5032 C9 01 14           1581 	.byte -0x37, 0x01,  0x14
   5035 4B 73              1582 	.word SMVB_continue_yd4_single
   5037 E7 01 CA           1583 	.byte -0x19, 0x01, -0x36
   503A 4B 3F              1584 	.word SMVB_continue4_single
   503C DD 01 F6           1585 	.byte -0x23, 0x01, -0x0A
   503F 05 01 36           1586 	.byte  0x05, 0x01,  0x36
   5042 28 01 1E           1587 	.byte  0x28, 0x01,  0x1E
   5045 BF 01 2D           1588 	.byte -0x41, 0x01,  0x2D
   5048 4B 73              1589 	.word SMVB_continue_yd4_single
   504A D3 01 9C           1590 	.byte -0x2D, 0x01, -0x64
   504D 4B 3F              1591 	.word SMVB_continue4_single
   504F 00 01 CA           1592 	.byte  0x00, 0x01, -0x36
   5052 23 01 D3           1593 	.byte  0x23, 0x01, -0x2D
   5055 50 01 EC           1594 	.byte  0x50, 0x01, -0x14
   5058 2D 01 63           1595 	.byte  0x2D, 0x01,  0x63
   505B 4C FD              1596 	.word SMVB_startMove_tripple
   505D A6 01 00           1597 	.byte -0x5A, 0x01,  0x00
   5060 4D 9A              1598 	.word SMVB_startDraw_yd4_double
   5062 37 01 3C           1599 	.byte  0x37, 0x01,  0x3C
   5065 4B 59              1600 	.word SMVB_continue2_single
   5067 37 01 0A           1601 	.byte  0x37, 0x01,  0x0A
   506A B0 01 1E           1602 	.byte -0x50, 0x01,  0x1E
   506D 4B 73              1603 	.word SMVB_continue_yd4_single
   506F 9C 01 19           1604 	.byte -0x64, 0x01,  0x19
   5072 4B 25              1605 	.word SMVB_continue6_single
   5074 0A 01 A6           1606 	.byte  0x0A, 0x01, -0x5A
   5077 F6 01 B0           1607 	.byte -0x0A, 0x01, -0x50
   507A 37 01 F6           1608 	.byte  0x37, 0x01, -0x0A
   507D 3C 01 00           1609 	.byte  0x3C, 0x01,  0x00
   5080 6E 01 EC           1610 	.byte  0x6E, 0x01, -0x14
   5083 37 01 E7           1611 	.byte  0x37, 0x01, -0x19
   5086 4B 73              1612 	.word SMVB_continue_yd4_single
   5088 2D 01 50           1613 	.byte  0x2D, 0x01,  0x50
   508B 4B 66              1614 	.word SMVB_continue_single
   508D B5 01 14           1615 	.byte -0x4B, 0x01,  0x14
   5090 4B 73              1616 	.word SMVB_continue_yd4_single
   5092 02 01 6C           1617 	.byte  0x02, 0x01,  0x6C
   5095 4D 0C              1618 	.word SMVB_startMove_quadro
   5097 41 01 EC           1619 	.byte  0x41, 0x01, -0x14
   509A 4D BA              1620 	.word SMVB_startDraw_single
   509C 00 01 4B           1621 	.byte  0x00, 0x01,  0x4B
   509F 4B 73              1622 	.word SMVB_continue_yd4_single
   50A1 92 01 00           1623 	.byte -0x6E, 0x01,  0x00
   50A4 4B 73              1624 	.word SMVB_continue_yd4_single
   50A6 A6 01 F6           1625 	.byte -0x5A, 0x01, -0x0A
   50A9 4B 25              1626 	.word SMVB_continue6_single
   50AB BA 01 19           1627 	.byte -0x46, 0x01,  0x19
   50AE C9 01 1E           1628 	.byte -0x37, 0x01,  0x1E
   50B1 00 01 D3           1629 	.byte  0x00, 0x01, -0x2D
   50B4 46 01 BF           1630 	.byte  0x46, 0x01, -0x41
   50B7 55 01 C9           1631 	.byte  0x55, 0x01, -0x37
   50BA D3 01 F6           1632 	.byte -0x2D, 0x01, -0x0A
   50BD 4B 73              1633 	.word SMVB_continue_yd4_single
   50BF D3 01 00           1634 	.byte -0x2D, 0x01,  0x00
   50C2 4B 18              1635 	.word SMVB_continue7_single
   50C4 BF 01 1E           1636 	.byte -0x41, 0x01,  0x1E
   50C7 00 01 BF           1637 	.byte  0x00, 0x01, -0x41
   50CA 19 01 EC           1638 	.byte  0x19, 0x01, -0x14
   50CD E7 01 BF           1639 	.byte -0x19, 0x01, -0x41
   50D0 00 01 D3           1640 	.byte  0x00, 0x01, -0x2D
   50D3 19 01 CE           1641 	.byte  0x19, 0x01, -0x32
   50D6 28 01 E2           1642 	.byte  0x28, 0x01, -0x1E
   50D9 4B 25              1643 	.word SMVB_continue6_single
   50DB 46 01 F1           1644 	.byte  0x46, 0x01, -0x0F
   50DE 37 01 05           1645 	.byte  0x37, 0x01,  0x05
   50E1 37 01 1E           1646 	.byte  0x37, 0x01,  0x1E
   50E4 2D 01 2D           1647 	.byte  0x2D, 0x01,  0x2D
   50E7 19 01 3C           1648 	.byte  0x19, 0x01,  0x3C
   50EA BA 01 28           1649 	.byte -0x46, 0x01,  0x28
   50ED 4B 73              1650 	.word SMVB_continue_yd4_single
   50EF F6 01 B5           1651 	.byte -0x0A, 0x01, -0x4B
   50F2 4B 3F              1652 	.word SMVB_continue4_single
   50F4 D3 01 DD           1653 	.byte -0x2D, 0x01, -0x23
   50F7 DD 01 F6           1654 	.byte -0x23, 0x01, -0x0A
   50FA 19 01 4B           1655 	.byte  0x19, 0x01,  0x4B
   50FD D3 01 0F           1656 	.byte -0x2D, 0x01,  0x0F
   5100 4B 73              1657 	.word SMVB_continue_yd4_single
   5102 E7 01 D3           1658 	.byte -0x19, 0x01, -0x2D
   5105 4B 3F              1659 	.word SMVB_continue4_single
   5107 D8 01 E7           1660 	.byte -0x28, 0x01, -0x19
   510A FB 01 2D           1661 	.byte -0x05, 0x01,  0x2D
   510D 32 01 2D           1662 	.byte  0x32, 0x01,  0x2D
   5110 C4 01 23           1663 	.byte -0x3C, 0x01,  0x23
   5113 4B 73              1664 	.word SMVB_continue_yd4_single
   5115 2D 01 0F           1665 	.byte  0x2D, 0x01,  0x0F
   5118 4B 3F              1666 	.word SMVB_continue4_single
   511A 64 01 05           1667 	.byte  0x64, 0x01,  0x05
   511D 3C 01 F6           1668 	.byte  0x3C, 0x01, -0x0A
   5120 41 01 E2           1669 	.byte  0x41, 0x01, -0x1E
   5123 00 01 46           1670 	.byte  0x00, 0x01,  0x46
   5126 4B 73              1671 	.word SMVB_continue_yd4_single
   5128 D3 01 0F           1672 	.byte -0x2D, 0x01,  0x0F
   512B 4B 32              1673 	.word SMVB_continue5_single
   512D D3 01 0A           1674 	.byte -0x2D, 0x01,  0x0A
   5130 D3 01 2D           1675 	.byte -0x2D, 0x01,  0x2D
   5133 2D 01 14           1676 	.byte  0x2D, 0x01,  0x14
   5136 19 01 F6           1677 	.byte  0x19, 0x01, -0x0A
   5139 40 00 00           1678 	.byte  0x40, 0x00,  0x00
   513C 4E B1              1679 	.word SMVB_lastDraw_rts
                           1680  .globl _telengard_2
   513E                    1681 _telengard_2:
   513E 62 01 64           1682 	.byte  0x62, 0x01,  0x64
   5141 4B B5              1683 	.word SMVB_continue_quadro
   5143 F7 01 BA           1684 	.byte -0x09, 0x01, -0x46
   5146 4D BA              1685 	.word SMVB_startDraw_yd4_single
   5148 09 01 BA           1686 	.byte  0x09, 0x01, -0x46
   514B 4B 18              1687 	.word SMVB_continue7_single
   514D 37 01 CA           1688 	.byte  0x37, 0x01, -0x36
   5150 45 01 EC           1689 	.byte  0x45, 0x01, -0x14
   5153 5A 01 14           1690 	.byte  0x5A, 0x01,  0x14
   5156 2D 01 23           1691 	.byte  0x2D, 0x01,  0x23
   5159 19 01 22           1692 	.byte  0x19, 0x01,  0x22
   515C 1E 01 37           1693 	.byte  0x1E, 0x01,  0x37
   515F DA 01 11           1694 	.byte -0x26, 0x01,  0x11
   5162 4B 73              1695 	.word SMVB_continue_yd4_single
   5164 DB 01 12           1696 	.byte -0x25, 0x01,  0x12
   5167 4B 18              1697 	.word SMVB_continue7_single
   5169 00 01 C9           1698 	.byte  0x00, 0x01, -0x37
   516C D3 01 D3           1699 	.byte -0x2D, 0x01, -0x2D
   516F CE 01 F2           1700 	.byte -0x32, 0x01, -0x0E
   5172 C0 01 09           1701 	.byte -0x40, 0x01,  0x09
   5175 E7 01 3C           1702 	.byte -0x19, 0x01,  0x3C
   5178 2D 01 0A           1703 	.byte  0x2D, 0x01,  0x0A
   517B 0F 01 D3           1704 	.byte  0x0F, 0x01, -0x2D
   517E 4B 59              1705 	.word SMVB_continue2_single
   5180 36 01 46           1706 	.byte  0x36, 0x01,  0x46
   5183 BB 01 1E           1707 	.byte -0x45, 0x01,  0x1E
   5186 4B 73              1708 	.word SMVB_continue_yd4_single
   5188 BF 01 0F           1709 	.byte -0x41, 0x01,  0x0F
   518B 4B 18              1710 	.word SMVB_continue7_single
   518D 5A 01 2D           1711 	.byte  0x5A, 0x01,  0x2D
   5190 50 01 1E           1712 	.byte  0x50, 0x01,  0x1E
   5193 4B 01 0F           1713 	.byte  0x4B, 0x01,  0x0F
   5196 2D 01 F1           1714 	.byte  0x2D, 0x01, -0x0F
   5199 00 01 69           1715 	.byte  0x00, 0x01,  0x69
   519C D3 01 FB           1716 	.byte -0x2D, 0x01, -0x05
   519F 88 01 23           1717 	.byte -0x78, 0x01,  0x23
   51A2 4B 73              1718 	.word SMVB_continue_yd4_single
   51A4 8E 01 19           1719 	.byte -0x72, 0x01,  0x19
   51A7 4B 59              1720 	.word SMVB_continue2_single
   51A9 68 01 23           1721 	.byte  0x68, 0x01,  0x23
   51AC 41 01 00           1722 	.byte  0x41, 0x01,  0x00
   51AF 4C 1C              1723 	.word SMVB_continue_double
   51B1 23 01 F1           1724 	.byte  0x23, 0x01, -0x0F
   51B4 4B 18              1725 	.word SMVB_continue7_single
   51B6 00 01 50           1726 	.byte  0x00, 0x01,  0x50
   51B9 EC 01 46           1727 	.byte -0x14, 0x01,  0x46
   51BC C9 01 2D           1728 	.byte -0x37, 0x01,  0x2D
   51BF D3 01 00           1729 	.byte -0x2D, 0x01,  0x00
   51C2 DD 01 E7           1730 	.byte -0x23, 0x01, -0x19
   51C5 C5 01 23           1731 	.byte -0x3B, 0x01,  0x23
   51C8 B5 01 1E           1732 	.byte -0x4B, 0x01,  0x1E
   51CB 4B 59              1733 	.word SMVB_continue2_single
   51CD 23 01 0F           1734 	.byte  0x23, 0x01,  0x0F
   51D0 68 01 FB           1735 	.byte  0x68, 0x01, -0x05
   51D3 4C 1C              1736 	.word SMVB_continue_double
   51D5 2D 01 FB           1737 	.byte  0x2D, 0x01, -0x05
   51D8 4B 73              1738 	.word SMVB_continue_yd4_single
   51DA 00 01 50           1739 	.byte  0x00, 0x01,  0x50
   51DD 4B 59              1740 	.word SMVB_continue2_single
   51DF D3 01 50           1741 	.byte -0x2D, 0x01,  0x50
   51E2 88 01 37           1742 	.byte -0x78, 0x01,  0x37
   51E5 4B 73              1743 	.word SMVB_continue_yd4_single
   51E7 CF 01 0A           1744 	.byte -0x31, 0x01,  0x0A
   51EA 4B 4C              1745 	.word SMVB_continue3_single
   51EC BF 01 EC           1746 	.byte -0x41, 0x01, -0x14
   51EF D3 01 DD           1747 	.byte -0x2D, 0x01, -0x23
   51F2 00 01 AA           1748 	.byte  0x00, 0x01, -0x56
   51F5 4B A7              1749 	.word SMVB_continue_tripple
   51F7 2D 01 05           1750 	.byte  0x2D, 0x01,  0x05
   51FA 4B 3F              1751 	.word SMVB_continue4_single
   51FC 23 01 FB           1752 	.byte  0x23, 0x01, -0x05
   51FF 2D 01 E2           1753 	.byte  0x2D, 0x01, -0x1E
   5202 13 01 D3           1754 	.byte  0x13, 0x01, -0x2D
   5205 92 01 00           1755 	.byte -0x6E, 0x01,  0x00
   5208 4B 73              1756 	.word SMVB_continue_yd4_single
   520A DD 01 14           1757 	.byte -0x23, 0x01,  0x14
   520D 4B 66              1758 	.word SMVB_continue_single
   520F 00 01 95           1759 	.byte  0x00, 0x01, -0x6B
   5212 4C 1C              1760 	.word SMVB_continue_double
   5214 23 01 20           1761 	.byte  0x23, 0x01,  0x20
   5217 4B 18              1762 	.word SMVB_continue7_single
   5219 2D 01 07           1763 	.byte  0x2D, 0x01,  0x07
   521C 2D 01 FB           1764 	.byte  0x2D, 0x01, -0x05
   521F 00 01 B0           1765 	.byte  0x00, 0x01, -0x50
   5222 DD 01 F6           1766 	.byte -0x23, 0x01, -0x0A
   5225 D3 01 00           1767 	.byte -0x2D, 0x01,  0x00
   5228 D3 01 0F           1768 	.byte -0x2D, 0x01,  0x0F
   522B 09 01 A6           1769 	.byte  0x09, 0x01, -0x5A
   522E 4B 66              1770 	.word SMVB_continue_single
   5230 0A 01 60           1771 	.byte  0x0A, 0x01,  0x60
   5233 4D 3E              1772 	.word SMVB_startMove_hex
   5235 68 01 F6           1773 	.byte  0x68, 0x01, -0x0A
   5238 4C BD              1774 	.word SMVB_startDraw_double
   523A D3 01 2D           1775 	.byte -0x2D, 0x01,  0x2D
   523D 4B 73              1776 	.word SMVB_continue_yd4_single
   523F B5 01 14           1777 	.byte -0x4B, 0x01,  0x14
   5242 4B 4C              1778 	.word SMVB_continue3_single
   5244 C5 01 00           1779 	.byte -0x3B, 0x01,  0x00
   5247 E2 01 D3           1780 	.byte -0x1E, 0x01, -0x2D
   524A 6E 01 90           1781 	.byte  0x6E, 0x01, -0x70
   524D 4C 9D              1782 	.word SMVB_startMove_double
   524F D8 01 19           1783 	.byte -0x28, 0x01,  0x19
   5252 4D BA              1784 	.word SMVB_startDraw_yd4_single
   5254 D3 01 F6           1785 	.byte -0x2D, 0x01, -0x0A
   5257 4B 4C              1786 	.word SMVB_continue3_single
   5259 FB 01 D3           1787 	.byte -0x05, 0x01, -0x2D
   525C 5A 01 00           1788 	.byte  0x5A, 0x01,  0x00
   525F 00 01 1E           1789 	.byte  0x00, 0x01,  0x1E
   5262 4B 75              1790 	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
   5264 E0 01 8B           1791 	.byte -0x20, 0x01, -0x75
   5267 4C 9D              1792 	.word SMVB_startMove_double
   5269 BF 01 19           1793 	.byte -0x41, 0x01,  0x19
   526C 4D BA              1794 	.word SMVB_startDraw_single
   526E 14 01 D3           1795 	.byte  0x14, 0x01, -0x2D
   5271 4B 59              1796 	.word SMVB_continue2_single
   5273 2D 01 14           1797 	.byte  0x2D, 0x01,  0x14
   5276 40 00 00           1798 	.byte  0x40, 0x00,  0x00
   5279 4E B1              1799 	.word SMVB_lastDraw_rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$titleScenari     02A0 GR  |   2 A$titleScenari     02A2 GR
  2 A$titleScenari     02A4 GR  |   2 A$titleScenari     02A5 GR
  2 A$titleScenari     02A7 GR  |   2 A$titleScenari     02A9 GR
  2 A$titleScenari     02AB GR  |   2 A$titleScenari     02AD GR
  2 A$titleScenari     02AF GR  |   2 A$titleScenari     02B0 GR
  2 A$titleScenari     02B2 GR  |   2 A$titleScenari     02B4 GR
  2 A$titleScenari     02B6 GR  |   2 A$titleScenari     02B8 GR
  2 A$titleScenari     02B9 GR  |   2 A$titleScenari     02BB GR
  2 A$titleScenari     02BD GR  |   2 A$titleScenari     02BF GR
  2 A$titleScenari     02C0 GR  |   2 A$titleScenari     02C2 GR
  2 A$titleScenari     02C4 GR  |   2 A$titleScenari     02C6 GR
  2 A$titleScenari     02C8 GR  |   2 A$titleScenari     02C9 GR
  2 A$titleScenari     02CB GR  |   2 A$titleScenari     02CD GR
  2 A$titleScenari     02CF GR  |   2 A$titleScenari     02D1 GR
  2 A$titleScenari     02D3 GR  |   2 A$titleScenari     02D5 GR
  2 A$titleScenari     02D7 GR  |   2 A$titleScenari     02D9 GR
  2 A$titleScenari     02DA GR  |   2 A$titleScenari     02DD GR
  2 A$titleScenari     02DF GR  |   2 A$titleScenari     02E1 GR
  2 A$titleScenari     02E3 GR  |   2 A$titleScenari     02E5 GR
  2 A$titleScenari     02E7 GR  |   2 A$titleScenari     02E9 GR
  2 A$titleScenari     02EA GR  |   2 A$titleScenari     02ED GR
  2 A$titleScenari     02EF GR  |   2 A$titleScenari     02F1 GR
  2 A$titleScenari     02F3 GR  |   2 A$titleScenari     02F5 GR
  2 A$titleScenari     02F7 GR  |   2 A$titleScenari     02F9 GR
  2 A$titleScenari     02FA GR  |   2 A$titleScenari     02FC GR
  2 A$titleScenari     02FE GR  |   2 A$titleScenari     0300 GR
  2 A$titleScenari     0302 GR  |   2 A$titleScenari     0304 GR
  2 A$titleScenari     0306 GR  |   2 A$titleScenari     0308 GR
  2 A$titleScenari     0309 GR  |   2 A$titleScenari     030B GR
  2 A$titleScenari     030D GR  |   2 A$titleScenari     030F GR
  2 A$titleScenari     0311 GR  |   2 A$titleScenari     0313 GR
  2 A$titleScenari     0315 GR  |   2 A$titleScenari     0317 GR
  2 A$titleScenari     0319 GR  |   2 A$titleScenari     031A GR
  2 A$titleScenari     031C GR  |   2 A$titleScenari     031E GR
  2 A$titleScenari     0320 GR  |   2 A$titleScenari     0322 GR
  2 A$titleScenari     0324 GR  |   2 A$titleScenari     0326 GR
  2 A$titleScenari     0328 GR  |   2 A$titleScenari     032A GR
  2 A$titleScenari     032B GR  |   2 A$titleScenari     032D GR
  2 A$titleScenari     032F GR  |   2 A$titleScenari     0331 GR
  2 A$titleScenari     0332 GR  |   2 A$titleScenari     0334 GR
  2 A$titleScenari     0336 GR  |   2 A$titleScenari     0338 GR
  2 A$titleScenari     0339 GR  |   2 A$titleScenari     033B GR
  2 A$titleScenari     033D GR  |   2 A$titleScenari     033F GR
  2 A$titleScenari     0340 GR  |   2 A$titleScenari     0342 GR
  2 A$titleScenari     0344 GR  |   2 A$titleScenari     0346 GR
  2 A$titleScenari     0347 GR  |   2 A$titleScenari     034A GR
  2 A$titleScenari     034C GR  |   2 A$titleScenari     034E GR
  2 A$titleScenari     034F GR  |   2 A$titleScenari     0351 GR
  2 A$titleScenari     0353 GR  |   2 A$titleScenari     0355 GR
  2 A$titleScenari     0356 GR  |   2 A$titleScenari     0359 GR
  2 A$titleScenari     035B GR  |   2 A$titleScenari     035D GR
  2 A$titleScenari     035E GR  |   2 A$titleScenari     0360 GR
  2 A$titleScenari     0362 GR  |   2 A$titleScenari     0364 GR
  2 A$titleScenari     0365 GR  |   2 A$titleScenari     0368 GR
  2 A$titleScenari     036A GR  |   2 A$titleScenari     036C GR
  2 A$titleScenari     036D GR  |   2 A$titleScenari     036F GR
  2 A$titleScenari     0371 GR  |   2 A$titleScenari     0373 GR
  2 A$titleScenari     0374 GR  |   2 A$titleScenari     0377 GR
  2 A$titleScenari     0379 GR  |   2 A$titleScenari     037B GR
  2 A$titleScenari     037C GR  |   2 A$titleScenari     037E GR
  2 A$titleScenari     0380 GR  |   2 A$titleScenari     0382 GR
  2 A$titleScenari     0383 GR  |   2 A$titleScenari     0385 GR
  2 A$titleScenari     0387 GR  |   2 A$titleScenari     0389 GR
  2 A$titleScenari     038A GR  |   2 A$titleScenari     038C GR
  2 A$titleScenari     038E GR  |   2 A$titleScenari     0390 GR
  2 A$titleScenari     0391 GR  |   2 A$titleScenari     0393 GR
  2 A$titleScenari     0395 GR  |   2 A$titleScenari     0397 GR
  2 A$titleScenari     0398 GR  |   2 A$titleScenari     039A GR
  2 A$titleScenari     039C GR  |   2 A$titleScenari     039E GR
  2 A$titleScenari     03A0 GR  |   2 A$titleScenari     03A1 GR
  2 A$titleScenari     03A2 GR  |   2 A$titleScenari     03A4 GR
  2 A$titleScenari     03A6 GR  |   2 A$titleScenari     03A8 GR
  2 A$titleScenari     03A9 GR  |   2 A$titleScenari     03AB GR
  2 A$titleScenari     03AD GR  |   2 A$titleScenari     03AF GR
  2 A$titleScenari     03B1 GR  |   2 A$titleScenari     03B3 GR
  2 A$titleScenari     03B4 GR  |   2 A$titleScenari     03B6 GR
  2 A$titleScenari     03B8 GR  |   2 A$titleScenari     03B9 GR
  2 A$titleScenari     03BB GR  |   2 A$titleScenari     03BD GR
  2 A$titleScenari     03BF GR  |   2 A$titleScenari     03C1 GR
  2 A$titleScenari     03C3 GR  |   2 A$titleScenari     03C5 GR
  2 A$titleScenari     03C6 GR  |   2 A$titleScenari     03C8 GR
  2 A$titleScenari     03CA GR  |   2 A$titleScenari     03CC GR
  2 A$titleScenari     03CE GR  |   2 A$titleScenari     03D0 GR
  2 A$titleScenari     03D2 GR  |   2 A$titleScenari     03D3 GR
  2 A$titleScenari     03D5 GR  |   2 A$titleScenari     03D7 GR
  2 A$titleScenari     0019 GR  |   2 A$titleScenari     03D9 GR
  2 A$titleScenari     03DB GR  |   2 A$titleScenari     03DD GR
  2 A$titleScenari     03DF GR  |   2 A$titleScenari     03E0 GR
  2 A$titleScenari     03E2 GR  |   2 A$titleScenari     001A GR
  2 A$titleScenari     03E4 GR  |   2 A$titleScenari     03E6 GR
  2 A$titleScenari     03E8 GR  |   2 A$titleScenari     03EA GR
  2 A$titleScenari     03EC GR  |   2 A$titleScenari     03EE GR
  2 A$titleScenari     03F1 GR  |   2 A$titleScenari     03F4 GR
  2 A$titleScenari     03F6 GR  |   2 A$titleScenari     03F7 GR
  2 A$titleScenari     03F8 GR  |   2 A$titleScenari     03FA GR
  2 A$titleScenari     03FC GR  |   2 A$titleScenari     03FE GR
  2 A$titleScenari     03FF GR  |   2 A$titleScenari     0400 GR
  2 A$titleScenari     0402 GR  |   2 A$titleScenari     0404 GR
  2 A$titleScenari     0406 GR  |   2 A$titleScenari     0408 GR
  2 A$titleScenari     001C GR  |   2 A$titleScenari     040A GR
  2 A$titleScenari     001E GR  |   2 A$titleScenari     040C GR
  2 A$titleScenari     040D GR  |   2 A$titleScenari     040F GR
  2 A$titleScenari     0411 GR  |   2 A$titleScenari     0413 GR
  2 A$titleScenari     0415 GR  |   2 A$titleScenari     0418 GR
  2 A$titleScenari     041B GR  |   2 A$titleScenari     0020 GR
  2 A$titleScenari     0022 GR  |   2 A$titleScenari     0023 GR
  2 A$titleScenari     0024 GR  |   2 A$titleScenari     0026 GR
  2 A$titleScenari     0029 GR  |   2 A$titleScenari     002B GR
  2 A$titleScenari     002D GR  |   2 A$titleScenari     002F GR
  2 A$titleScenari     0031 GR  |   2 A$titleScenari     0032 GR
  2 A$titleScenari     0033 GR  |   2 A$titleScenari     0035 GR
  2 A$titleScenari     0038 GR  |   2 A$titleScenari     003A GR
  2 A$titleScenari     003D GR  |   2 A$titleScenari     003F GR
  2 A$titleScenari     0041 GR  |   2 A$titleScenari     0042 GR
  2 A$titleScenari     0044 GR  |   2 A$titleScenari     0046 GR
  2 A$titleScenari     0048 GR  |   2 A$titleScenari     0049 GR
  2 A$titleScenari     004B GR  |   2 A$titleScenari     004D GR
  2 A$titleScenari     004F GR  |   2 A$titleScenari     0050 GR
  2 A$titleScenari     0051 GR  |   2 A$titleScenari     0053 GR
  2 A$titleScenari     0055 GR  |   2 A$titleScenari     0056 GR
  2 A$titleScenari     0058 GR  |   2 A$titleScenari     005A GR
  2 A$titleScenari     005C GR  |   2 A$titleScenari     005D GR
  2 A$titleScenari     005E GR  |   2 A$titleScenari     0060 GR
  2 A$titleScenari     0062 GR  |   2 A$titleScenari     0063 GR
  2 A$titleScenari     0065 GR  |   2 A$titleScenari     0067 GR
  2 A$titleScenari     0069 GR  |   2 A$titleScenari     006A GR
  2 A$titleScenari     006B GR  |   2 A$titleScenari     006D GR
  2 A$titleScenari     006F GR  |   2 A$titleScenari     0070 GR
  2 A$titleScenari     0072 GR  |   2 A$titleScenari     0074 GR
  2 A$titleScenari     0076 GR  |   2 A$titleScenari     0077 GR
  2 A$titleScenari     0078 GR  |   2 A$titleScenari     007A GR
  2 A$titleScenari     007C GR  |   2 A$titleScenari     007D GR
  2 A$titleScenari     007F GR  |   2 A$titleScenari     0081 GR
  2 A$titleScenari     0083 GR  |   2 A$titleScenari     0084 GR
  2 A$titleScenari     0085 GR  |   2 A$titleScenari     0087 GR
  2 A$titleScenari     0089 GR  |   2 A$titleScenari     008A GR
  2 A$titleScenari     008C GR  |   2 A$titleScenari     008E GR
  2 A$titleScenari     0090 GR  |   2 A$titleScenari     0091 GR
  2 A$titleScenari     0092 GR  |   2 A$titleScenari     0094 GR
  2 A$titleScenari     0096 GR  |   2 A$titleScenari     0097 GR
  2 A$titleScenari     0099 GR  |   2 A$titleScenari     009B GR
  2 A$titleScenari     009D GR  |   2 A$titleScenari     009E GR
  2 A$titleScenari     009F GR  |   2 A$titleScenari     00A1 GR
  2 A$titleScenari     00A3 GR  |   2 A$titleScenari     00A4 GR
  2 A$titleScenari     00A6 GR  |   2 A$titleScenari     00A8 GR
  2 A$titleScenari     00AA GR  |   2 A$titleScenari     00AB GR
  2 A$titleScenari     00AC GR  |   2 A$titleScenari     00AE GR
  2 A$titleScenari     00B0 GR  |   2 A$titleScenari     00B1 GR
  2 A$titleScenari     00B3 GR  |   2 A$titleScenari     00B5 GR
  2 A$titleScenari     00B7 GR  |   2 A$titleScenari     00B8 GR
  2 A$titleScenari     00B9 GR  |   2 A$titleScenari     00BB GR
  2 A$titleScenari     00BD GR  |   2 A$titleScenari     00BE GR
  2 A$titleScenari     00C0 GR  |   2 A$titleScenari     00C2 GR
  2 A$titleScenari     00C4 GR  |   2 A$titleScenari     00C6 GR
  2 A$titleScenari     00C7 GR  |   2 A$titleScenari     00C9 GR
  2 A$titleScenari     00CB GR  |   2 A$titleScenari     00CC GR
  2 A$titleScenari     00CE GR  |   2 A$titleScenari     00D0 GR
  2 A$titleScenari     00D2 GR  |   2 A$titleScenari     00D3 GR
  2 A$titleScenari     00D5 GR  |   2 A$titleScenari     00D7 GR
  2 A$titleScenari     00D8 GR  |   2 A$titleScenari     00DA GR
  2 A$titleScenari     00DC GR  |   2 A$titleScenari     00DE GR
  2 A$titleScenari     00DF GR  |   2 A$titleScenari     00E0 GR
  2 A$titleScenari     00E2 GR  |   2 A$titleScenari     00E4 GR
  2 A$titleScenari     00E5 GR  |   2 A$titleScenari     00E8 GR
  2 A$titleScenari     00EA GR  |   2 A$titleScenari     00EC GR
  2 A$titleScenari     00ED GR  |   2 A$titleScenari     00EE GR
  2 A$titleScenari     00F0 GR  |   2 A$titleScenari     00F2 GR
  2 A$titleScenari     00F3 GR  |   2 A$titleScenari     00F6 GR
  2 A$titleScenari     00F8 GR  |   2 A$titleScenari     00FA GR
  2 A$titleScenari     00FB GR  |   2 A$titleScenari     00FC GR
  2 A$titleScenari     00FE GR  |   2 A$titleScenari     0100 GR
  2 A$titleScenari     0101 GR  |   2 A$titleScenari     0104 GR
  2 A$titleScenari     0106 GR  |   2 A$titleScenari     0108 GR
  2 A$titleScenari     0109 GR  |   2 A$titleScenari     010A GR
  2 A$titleScenari     010C GR  |   2 A$titleScenari     010E GR
  2 A$titleScenari     010F GR  |   2 A$titleScenari     0111 GR
  2 A$titleScenari     0113 GR  |   2 A$titleScenari     0114 GR
  2 A$titleScenari     0115 GR  |   2 A$titleScenari     0117 GR
  2 A$titleScenari     0118 GR  |   2 A$titleScenari     011A GR
  2 A$titleScenari     011C GR  |   2 A$titleScenari     011D GR
  2 A$titleScenari     011E GR  |   2 A$titleScenari     0120 GR
  2 A$titleScenari     0121 GR  |   2 A$titleScenari     0123 GR
  2 A$titleScenari     0125 GR  |   2 A$titleScenari     0126 GR
  2 A$titleScenari     0127 GR  |   2 A$titleScenari     0129 GR
  2 A$titleScenari     012A GR  |   2 A$titleScenari     012C GR
  2 A$titleScenari     012E GR  |   2 A$titleScenari     012F GR
  2 A$titleScenari     0130 GR  |   2 A$titleScenari     0132 GR
  2 A$titleScenari     0133 GR  |   2 A$titleScenari     0135 GR
  2 A$titleScenari     0137 GR  |   2 A$titleScenari     0138 GR
  2 A$titleScenari     0139 GR  |   2 A$titleScenari     013B GR
  2 A$titleScenari     013C GR  |   2 A$titleScenari     013E GR
  2 A$titleScenari     0140 GR  |   2 A$titleScenari     0141 GR
  2 A$titleScenari     0142 GR  |   2 A$titleScenari     0144 GR
  2 A$titleScenari     0145 GR  |   2 A$titleScenari     0148 GR
  2 A$titleScenari     014A GR  |   2 A$titleScenari     014C GR
  2 A$titleScenari     014D GR  |   2 A$titleScenari     014F GR
  2 A$titleScenari     0151 GR  |   2 A$titleScenari     0153 GR
  2 A$titleScenari     0154 GR  |   2 A$titleScenari     0155 GR
  2 A$titleScenari     0157 GR  |   2 A$titleScenari     0159 GR
  2 A$titleScenari     015A GR  |   2 A$titleScenari     0000 GR
  2 A$titleScenari     015D GR  |   2 A$titleScenari     015F GR
  2 A$titleScenari     0161 GR  |   2 A$titleScenari     0162 GR
  2 A$titleScenari     0163 GR  |   2 A$titleScenari     0165 GR
  2 A$titleScenari     0167 GR  |   2 A$titleScenari     0168 GR
  2 A$titleScenari     016B GR  |   2 A$titleScenari     016D GR
  2 A$titleScenari     016F GR  |   2 A$titleScenari     0170 GR
  2 A$titleScenari     0171 GR  |   2 A$titleScenari     0173 GR
  2 A$titleScenari     0175 GR  |   2 A$titleScenari     0176 GR
  2 A$titleScenari     0000 GR  |   2 A$titleScenari     0179 GR
  2 A$titleScenari     017B GR  |   2 A$titleScenari     017D GR
  2 A$titleScenari     017E GR  |   2 A$titleScenari     017F GR
  2 A$titleScenari     0181 GR  |   2 A$titleScenari     0183 GR
  2 A$titleScenari     0184 GR  |   2 A$titleScenari     0187 GR
  2 A$titleScenari     0189 GR  |   2 A$titleScenari     018B GR
  2 A$titleScenari     018C GR  |   2 A$titleScenari     018D GR
  2 A$titleScenari     018F GR  |   2 A$titleScenari     0191 GR
  2 A$titleScenari     0192 GR  |   2 A$titleScenari     0002 GR
  2 A$titleScenari     0195 GR  |   2 A$titleScenari     0197 GR
  2 A$titleScenari     0199 GR  |   2 A$titleScenari     019A GR
  2 A$titleScenari     019B GR  |   2 A$titleScenari     019D GR
  2 A$titleScenari     019F GR  |   2 A$titleScenari     01A0 GR
  2 A$titleScenari     01A3 GR  |   2 A$titleScenari     01A5 GR
  2 A$titleScenari     01A7 GR  |   2 A$titleScenari     01A9 GR
  2 A$titleScenari     01AB GR  |   2 A$titleScenari     0006 GR
  2 A$titleScenari     01AD GR  |   2 A$titleScenari     01AF GR
  2 A$titleScenari     01B0 GR  |   2 A$titleScenari     01B2 GR
  2 A$titleScenari     01B4 GR  |   2 A$titleScenari     01B6 GR
  2 A$titleScenari     0008 GR  |   2 A$titleScenari     01B8 GR
  2 A$titleScenari     01BA GR  |   2 A$titleScenari     01BC GR
  2 A$titleScenari     01BE GR  |   2 A$titleScenari     000B GR
  2 A$titleScenari     01BF GR  |   2 A$titleScenari     01C1 GR
  2 A$titleScenari     01C3 GR  |   2 A$titleScenari     01C5 GR
  2 A$titleScenari     000D GR  |   2 A$titleScenari     01C7 GR
  2 A$titleScenari     01C9 GR  |   2 A$titleScenari     01CB GR
  2 A$titleScenari     01CD GR  |   2 A$titleScenari     01CE GR
  2 A$titleScenari     000F GR  |   2 A$titleScenari     01D0 GR
  2 A$titleScenari     01D2 GR  |   2 A$titleScenari     01D4 GR
  2 A$titleScenari     0011 GR  |   2 A$titleScenari     01D6 GR
  2 A$titleScenari     01D8 GR  |   2 A$titleScenari     01DA GR
  2 A$titleScenari     01DC GR  |   2 A$titleScenari     01DD GR
  2 A$titleScenari     0013 GR  |   2 A$titleScenari     01E0 GR
  2 A$titleScenari     01E2 GR  |   2 A$titleScenari     01E4 GR
  2 A$titleScenari     01E6 GR  |   2 A$titleScenari     0015 GR
  2 A$titleScenari     01E8 GR  |   2 A$titleScenari     01EA GR
  2 A$titleScenari     01EC GR  |   2 A$titleScenari     01ED GR
  2 A$titleScenari     01F0 GR  |   2 A$titleScenari     01F2 GR
  2 A$titleScenari     01F4 GR  |   2 A$titleScenari     01F6 GR
  2 A$titleScenari     01F8 GR  |   2 A$titleScenari     01FA GR
  2 A$titleScenari     01FC GR  |   2 A$titleScenari     01FD GR
  2 A$titleScenari     0200 GR  |   2 A$titleScenari     0202 GR
  2 A$titleScenari     0204 GR  |   2 A$titleScenari     0206 GR
  2 A$titleScenari     0017 GR  |   2 A$titleScenari     0208 GR
  2 A$titleScenari     020A GR  |   2 A$titleScenari     020C GR
  2 A$titleScenari     020D GR  |   2 A$titleScenari     0210 GR
  2 A$titleScenari     0212 GR  |   2 A$titleScenari     0214 GR
  2 A$titleScenari     0216 GR  |   2 A$titleScenari     0218 GR
  2 A$titleScenari     021A GR  |   2 A$titleScenari     021C GR
  2 A$titleScenari     021D GR  |   2 A$titleScenari     0220 GR
  2 A$titleScenari     0222 GR  |   2 A$titleScenari     0224 GR
  2 A$titleScenari     0226 GR  |   2 A$titleScenari     0228 GR
  2 A$titleScenari     022A GR  |   2 A$titleScenari     022C GR
  2 A$titleScenari     022D GR  |   2 A$titleScenari     0230 GR
  2 A$titleScenari     0232 GR  |   2 A$titleScenari     0234 GR
  2 A$titleScenari     0236 GR  |   2 A$titleScenari     0238 GR
  2 A$titleScenari     023A GR  |   2 A$titleScenari     023C GR
  2 A$titleScenari     023D GR  |   2 A$titleScenari     023F GR
  2 A$titleScenari     0241 GR  |   2 A$titleScenari     0243 GR
  2 A$titleScenari     0245 GR  |   2 A$titleScenari     0247 GR
  2 A$titleScenari     0249 GR  |   2 A$titleScenari     024B GR
  2 A$titleScenari     024C GR  |   2 A$titleScenari     024E GR
  2 A$titleScenari     0250 GR  |   2 A$titleScenari     0251 GR
  2 A$titleScenari     0252 GR  |   2 A$titleScenari     0254 GR
  2 A$titleScenari     0255 GR  |   2 A$titleScenari     0257 GR
  2 A$titleScenari     0259 GR  |   2 A$titleScenari     025A GR
  2 A$titleScenari     025B GR  |   2 A$titleScenari     025D GR
  2 A$titleScenari     025E GR  |   2 A$titleScenari     0261 GR
  2 A$titleScenari     0263 GR  |   2 A$titleScenari     0265 GR
  2 A$titleScenari     0267 GR  |   2 A$titleScenari     0269 GR
  2 A$titleScenari     026B GR  |   2 A$titleScenari     026D GR
  2 A$titleScenari     026E GR  |   2 A$titleScenari     0271 GR
  2 A$titleScenari     0273 GR  |   2 A$titleScenari     0275 GR
  2 A$titleScenari     0277 GR  |   2 A$titleScenari     0279 GR
  2 A$titleScenari     027B GR  |   2 A$titleScenari     027D GR
  2 A$titleScenari     027E GR  |   2 A$titleScenari     0281 GR
  2 A$titleScenari     0283 GR  |   2 A$titleScenari     0285 GR
  2 A$titleScenari     0286 GR  |   2 A$titleScenari     0288 GR
  2 A$titleScenari     028A GR  |   2 A$titleScenari     028C GR
  2 A$titleScenari     028E GR  |   2 A$titleScenari     0290 GR
  2 A$titleScenari     0292 GR  |   2 A$titleScenari     0294 GR
  2 A$titleScenari     0295 GR  |   2 A$titleScenari     0297 GR
  2 A$titleScenari     0299 GR  |   2 A$titleScenari     029A GR
  2 A$titleScenari     029C GR  |   2 A$titleScenari     029E GR
    Intensity_5F   =   F2A5     |     Joy_Digital    =   F1F8 
    Moveto_d       =   F312     |     SHITREG_POKE_V =   0001 
  2 SMVB_FlagWait      03E4 GR  |   2 SMVB_FlagWait3     03F8 GR
  2 SMVB_FlagWait3     0404 GR  |   2 SMVB_LightOff_     002F GR
  2 SMVB_continue2     008C GR  |   2 SMVB_continue3     007F GR
  2 SMVB_continue4     0072 GR  |   2 SMVB_continue5     0065 GR
  2 SMVB_continue6     0058 GR  |   2 SMVB_continue7     004B GR
  2 SMVB_continue_     014F GR  |   2 SMVB_continue_     00F6 GR
  2 SMVB_continue_     009B GR  |   2 SMVB_continue_     00B5 GR
  2 SMVB_continue_     0104 GR  |   2 SMVB_continue_     00E8 GR
  2 SMVB_continue_     0099 GR  |   2 SMVB_continue_     00B3 GR
  2 SMVB_continue_     00DA GR  |   2 SMVB_continue_     00CE GR
  2 SMVB_continue_     0044 GR  |   2 SMVB_continue_     015D GR
  2 SMVB_continue_     0179 GR  |   2 SMVB_continue_     00A8 GR
  2 SMVB_continue_     016B GR  |   2 SMVB_continue_     0187 GR
  2 SMVB_continue_     00A6 GR  |   2 SMVB_continue_     0195 GR
  2 SMVB_continue_     00C2 GR  |   2 SMVB_continue_     0044 GR
  2 SMVB_lastDraw_     03E4 GR  |   2 SMVB_lastDraw_     040C GR
  2 SMVB_lastDraw_     03F7 GR  |   2 SMVB_lastMove_     0402 GR
  2 SMVB_repeat_sa     0148 GR  |   2 SMVB_repeat_sa     0281 GR
  2 SMVB_rts           03EA GR  |   2 SMVB_rts2          0413 GR
  2 SMVB_setIntens     0020 GR  |   2 SMVB_setScale      001C GR
  2 SMVB_startDraw     01F0 GR  |   2 SMVB_startDraw     0220 GR
  2 SMVB_startDraw     03C8 GR  |   2 SMVB_startDraw     03D5 GR
  2 SMVB_startDraw     0200 GR  |   2 SMVB_startDraw     0210 GR
  2 SMVB_startDraw     02ED GR  |   2 SMVB_startDraw     02FC GR
  2 SMVB_startDraw     01E0 GR  |   2 SMVB_startDraw     02BB GR
  2 SMVB_startDraw     031E GR  |   2 SMVB_startDraw     030D GR
  2 SMVB_startDraw     02B2 GR  |   2 SMVB_startDraw     02C2 GR
  2 SMVB_startDraw     02CD GR  |   2 SMVB_startDraw     02DD GR
  2 SMVB_startDraw     02ED GR  |   2 SMVB_startDraw     01E0 GR
  2 SMVB_startDraw     031E GR  |   2 SMVB_startMove     01D0 GR
  2 SMVB_startMove     0288 GR  |   2 SMVB_startMove     0271 GR
  2 SMVB_startMove     03AD GR  |   2 SMVB_startMove     03BB GR
  2 SMVB_startMove     0261 GR  |   2 SMVB_startMove     023F GR
  2 SMVB_startMove     01A3 GR  |   2 SMVB_startMove     01B2 GR
  2 SMVB_startMove     0230 GR  |   2 SMVB_startMove     0385 GR
  2 SMVB_startMove     032D GR  |   2 SMVB_startMove     038C GR
  2 SMVB_startMove     029C GR  |   2 SMVB_startMove     02A7 GR
  2 SMVB_startMove     01D0 GR  |   2 SMVB_startMove     033B GR
  2 SMVB_startMove     03AD GR  |   2 SMVB_startMove     034A GR
  2 SMVB_startMove     0359 GR  |   2 SMVB_startMove     01A3 GR
  2 SMVB_startMove     01C1 GR  |   2 SMVB_startMove     0368 GR
  2 SMVB_startMove     0377 GR  |   2 SMVB_startMove     039C GR
    SPRITE_SCALE   =   0009     |     VB_SPRITE_SCAL =   0009 
    VIA_cntl       =   D00C     |     VIA_int_flags  =   D00D 
    VIA_port_a     =   D001     |     VIA_port_b     =   D000 
    VIA_shift_reg  =   D00A     |     VIA_t1_cnt_hi  =   D005 
    VIA_t1_cnt_lo  =   D004     |     Vec_Joy_1_X    =   C81B 
    Vec_Pattern    =   C829     |     Wait_Recal     =   F192 
  2 __SMVB_sceneDa     041D GR  |   2 _drawTitle         0000 GR
  2 _telengard_0       0425 GR  |   2 _telengard_1       0540 GR
  2 _telengard_2       0671 GR  |   2 cont2              013E GR
  2 cont3              0135 GR  |   2 cont4              012C GR
  2 cont5              0123 GR  |   2 cont6              011A GR
  2 cont7              0111 GR  |   2 drawSmart          0019 GR
  2 drawTtileDone      0017 GR  |   2 here104            0118 GR
  2 here108            011A GR  |   2 here113            0121 GR
  2 here117            0123 GR  |   2 here122            012A GR
  2 here126            012C GR  |   2 here131            0133 GR
  2 here135            0135 GR  |   2 here140            013C GR
  2 here144            013E GR  |   2 here224            024E GR
  2 here229            0255 GR  |   2 here233            0257 GR
  2 here95             010F GR  |   2 here99             0111 GR
  2 move2              0257 GR  |   2 move3              024E GR
    music1         =   FD0D     |   2 nextScenePart      0006 GR
  2 redoFromStart      0002 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  7AE   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

