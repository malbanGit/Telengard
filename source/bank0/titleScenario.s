 .module titleScenario.s
 .area .text

SPRITE_SCALE        =        0x09; 80 highest possible value
SHITREG_POKE_VALUE  =        0x01 


; PC not usable :-)

; cmpx #4
; pshs d,y,x,pc,u,cc;16
; puls d,y,x,pc,u,cc; 16
; pshs y,x,pc,u,d;15
; puls y,x,pc,u,d; 15
; pshs y,x,pc,u,cc;14
; puls y,x,pc,u,cc; 14
; pshs a,x,pc,u,cc;13
; puls a,x,pc,u,cc;13
; pshs x,pc,u,cc;12
; puls x,pc,u,cc;12
; pshs pc,u,d;11
; puls pc,u,d;11
; pshs pc,u,cc;10
; puls pc,u,cc;10
; pshs u,d;9
; puls u,d;9
; pshs u,cc;8
; puls u,cc;8
; pshs u;7
; puls u;7
; pshs cc;6
; puls cc;6
; tfr a,a; 6
; brn 0; 3
; NOP ; 2


 

;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
;***************************************************************************
; DEFINE SECTION
;***************************************************************************
Vec_Pattern         =      0xC829                        ;Dot pattern (bits) 
music1              =      0xFD0D 
VIA_port_b          =      0xD000                        ;VIA port B data I/O register 
VIA_port_a          =      0xD001                        ;VIA port A data I/O register (handshaking) 
VIA_t1_cnt_lo       =      0xD004                        ;VIA timer 1 count register lo (scale factor) 
VIA_t1_cnt_hi       =      0xD005                        ;VIA timer 1 count register hi 
VIA_shift_reg       =      0xD00A                        ;VIA shift register 
VIA_cntl            =      0xD00C                        ;VIA control register 
VIA_int_flags       =      0xD00D                        ;VIA interrupt flags register 
Intensity_5F        =      0xF2A5                        ; 
Wait_Recal          =      0xF192                        ; 
Moveto_d            =      0xF312                        ; 
Vec_Joy_1_X         =      0xC81B                        ;Joystick 1 left/right 
Joy_Digital         =      0xF1F8 
;***************************************************************************
; HEADER SECTION
;***************************************************************************
; The cartridge ROM starts at address 0
                    .area .text     
                    .setdp   0xd000,_DATA 
 .globl _drawTitle
_drawTitle: 
    pshs u,y
 .globl redoFromStart
redoFromStart: 
                    LDy      #__SMVB_sceneData                ; address of data 
 .globl nextScenePart
nextScenePart: 
                    lda      #SPRITE_SCALE 
                    sta      VIA_t1_cnt_lo 
                    LDA      #0xCE                         ;Blank low, zero high? 
                    STA      *VIA_cntl 
                    LDU      ,y++ 
                    beq      drawTtileDone
                    bsr      drawSmart 
                    BRA      nextScenePart
 .globl drawTtileDone
drawTtileDone:
    puls u,y,pc

;***************************************************************************
; ROUTINE SECTION
;***************************************************************************
; Warning - direct line found!
;                    direct   0xd0 
;***************************************************************************

; for scale 7 
; we need WAIT6 after a poke to hi
; followd directly by a set_y_int
; todo 
; last draw could contain 0xF in A
; than load not needed - attention 
; when cycles are not done for load, than shift value might be needed 2 higher!
; also in X could be some sensible value in X for one of the other 
;SMVB_lastDraw_rts2                                ;#isfunction  
; list format
; y pos byte -> REG A
; VIA_B for x reg = 01 *256 + x pos byte -> REG X
; pointer to draw function -> PC
; 5 bytes per "position" (except continuous)
; reg A must be constantly == 0!
; opti finding
; a)  Findings T1 can be 2 cycles "off" -> smartlist max scale of "optimium" reduced from 9 to 7 scale :-(
; b ) y and z sampling need up to 4 cycles to bare fruit (poke b reg)
;     90% vectrex (guess) need 0 cycles
;     95% vectrex are content with 2 cycles (1 nop)
;     some few vectrex NEED 4 cycles!!! ARGH!
; c)  std to reg b of via (Y Reg) does not always / everywhere work
;
;
; delays needed for 5% of vectrex
; cost on a "full" screen
; about 2000 cycles
;VECTREX_SAVE_DELAY  =        1 
SHITREG_POKE_VALUE  =        0x01 




;

;
  



VB_SPRITE_SCALE     =        SPRITE_SCALE 
; NOPS add one less, since PULL X is one cycle more than pull a!
;***************************************************************************
 .globl drawSmart
drawSmart:                                            ;#isfunction  
                    clra     
                    pulu     b,x,pc 
;***************************************************************************
;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!

 .globl SMVB_continue_yd4_yStays_single
SMVB_continue_yd4_yStays_single: ;#isfunction  
 .globl SMVB_continue_yStays_single
SMVB_continue_yStays_single:                               ;#isfunction  
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 


 .globl SMVB_continue7_single
SMVB_continue7_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
; this is one pulu cycle more!
; thus ADD_NOPS can be one cycle less!
; minus 6!
                    pulu     b,x                          ; 5+3 
 .globl SMVB_continue6_single
SMVB_continue6_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
                    pulu     b,x                          ; 5+3 
 .globl SMVB_continue5_single
SMVB_continue5_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
                    pulu     b,x                          ; 5+3 
 .globl SMVB_continue4_single
SMVB_continue4_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
                    pulu     b,x                          ; 5+3 
 .globl SMVB_continue3_single
SMVB_continue3_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
                    pulu     b,x                          ; 5+3 
 .globl SMVB_continue2_single
SMVB_continue2_single:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS                              ; 21 
 nop 
                    pulu     b,x                          ; 5+3 
; continue uses same shift  
 .globl SMVB_continue_single
SMVB_continue_single:                                   ;#isfunction  
                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was = to 0 by generator
 .globl SMVB_continue_newY_eq_oldX_single
SMVB_continue_newY_eq_oldX_single:                       ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 


 .globl SMVB_continue_yd4_single
SMVB_continue_yd4_single:                                   ;#isfunction  
                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was = to 0 by generator
 .globl SMVB_continue_yd4_newY_eq_oldX_single
SMVB_continue_yd4_newY_eq_oldX_single:                       ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY_4                             ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc


 .globl SMVB_continue_single_sj
SMVB_continue_single_sj:                                   ;#isfunction  
                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was = to 0 by generator
 .globl SMVB_continue_newY_eq_oldX_single_sj
SMVB_continue_newY_eq_oldX_single_sj:                     ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 
; continue uses same shift
; y is inherently known to be == x, 
 .globl SMVB_continue_yd4_yEqx_single
SMVB_continue_yd4_yEqx_single: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY_HALF_4                          ; 4 
 nop 
; macro call ->  ADD_BURST
 

                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 

 .globl SMVB_continue_yEqx_single
SMVB_continue_yEqx_single:                                 ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY_HALF                          ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

 

                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_continue_tripple
SMVB_continue_tripple:                                     ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont2 

 .globl SMVB_continue_quadro
SMVB_continue_quadro:                                      ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont3 
 .globl SMVB_continue_hex
SMVB_continue_hex: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont5 
 .globl SMVB_continue_octo
SMVB_continue_octo:                                        ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here95
here95:              
					brn      here95                            ; wait 3 cycles 
 .globl cont7
cont7: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here99
here99:              
					brn      here99                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here104
here104:              
					brn      here104                            ; wait 3 cycles 
 .globl cont6
cont6: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here108
here108:              
					brn      here108                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here113
here113:              
					brn      here113                            ; wait 3 cycles 
 .globl cont5
cont5: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here117
here117:              
					brn      here117                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here122
here122:              
					brn      here122                            ; wait 3 cycles 
 .globl cont4
cont4: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here126
here126:              
					brn      here126                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here131
here131:              
					brn      here131                            ; wait 3 cycles 
 .globl cont3
cont3: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here135
here135:              
					brn      here135                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here140
here140:              
					brn      here140                            ; wait 3 cycles 
 .globl cont2
cont2: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here144
here144:              
					brn      here144                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same 

 .globl SMVB_repeat_same
SMVB_repeat_same:                                          ;#isfunction  
                    pulu     b,x 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     pc 
 .globl SMVB_continue_double
SMVB_continue_double:                                      ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY                               ; 4 
; macro call ->  Y_DELAY_4
 nop 
 nop 
; macro call ->  ADD_BURST
 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same 
 .globl SMVB_continue_yd4_double
SMVB_continue_yd4_double:;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     Y_DELAY_4                               ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same 


 .globl SMVB_continue_yd4_octo
SMVB_continue_yd4_octo:
                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY_4                             ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont7 
 .globl SMVB_continue_yd4_hex
SMVB_continue_yd4_hex:
                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY_4                             ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont5 
 .globl SMVB_continue_yd4_quadro
SMVB_continue_yd4_quadro:

                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY_4                             ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont3 
 .globl SMVB_continue_yd4_tripple
SMVB_continue_yd4_tripple:

                    stb      *VIA_port_a                  ; 4 shift not changed, move might also be a draw 
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     Y_DELAY_4                             ; 4 
 nop 
 nop 
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont2 




 .globl SMVB_startMove_yd4_single
SMVB_startMove_yd4_single: ;#isfunction 
 .globl SMVB_startMove_single
SMVB_startMove_single:                                    ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_single_sj
SMVB_startMove_single_sj:                                 ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldu      ,u 
 
; macro call ->                     INIT_MOVE_SJ  
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x,pc 

 .globl SMVB_startMove_yd4_single_sj
SMVB_startMove_yd4_single_sj:                                 ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldu      ,u 
; macro call ->                     INIT_MOVE_SJ  
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x,pc 



 .globl SMVB_startMove_yd4_double
SMVB_startMove_yd4_double:                                    ;#isfunction  
 .globl SMVB_startMove_double
SMVB_startMove_double:                                    ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same2 

 .globl SMVB_startDraw_yd4_tripple
 .globl SMVB_startDraw_tripple
SMVB_startDraw_yd4_tripple:
SMVB_startDraw_tripple: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont2 

 .globl SMVB_startDraw_double
SMVB_startDraw_double: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same2 
 .globl SMVB_startDraw_octo
SMVB_startDraw_octo: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont7 
 .globl SMVB_startDraw_quadro
SMVB_startDraw_quadro: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont3 

 .globl SMVB_startDraw_hex
SMVB_startDraw_hex: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont5

 .globl SMVB_startMove_tripple
SMVB_startMove_tripple: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    bra      move2 

 .globl SMVB_startMove_quadro
SMVB_startMove_quadro: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    bra      move3 

 .globl move3
move3: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here224
here224:              
					brn      here224                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
; macro call ->                     WAIT_BEFORE  
; macro call ->                     WAIT3    
 .globl here229
here229:              
					brn      here229                            ; wait 3 cycles 
 .globl move2
move2: 
; macro call ->                     WAIT_AFTER  
; macro call ->                     WAIT7    
; macro call ->                     WAIT5    
; macro call ->                     WAIT3    
 .globl here233
here233:              
					brn      here233                            ; wait 3 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same2 

 .globl SMVB_startMove_octo
SMVB_startMove_octo: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont7 
 .globl SMVB_startMove_hex
SMVB_startMove_hex: ;#isfunction 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont5

 .globl SMVB_repeat_same2
SMVB_repeat_same2:                                           ;#isfunction  
                    pulu     b,x 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     pc 
 .globl SMVB_startMove_double_sj
SMVB_startMove_double_sj:                                  ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldu      ,u 
; macro call ->                     INIT_MOVE_SJ  
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 
; macro call ->                     ADD_NOPS  
 nop 
                    tfr a,a 
                    clr      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS                              ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x, pc 
 .globl SMVB_startMove_yStays_single
SMVB_startMove_yStays_single:                              ;#isfunction  
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_yStays_single_sj
SMVB_startMove_yStays_single_sj: 
                    ldu      ,u 
; macro call ->                     INIT_MOVE_SJ  
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x,pc 
; assuming b = 1
 .globl SMVB_startDraw_yStays_single
SMVB_startDraw_yStays_single:                              ;#isfunction  
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
; assume b contains SHIFT

 .globl SMVB_startDraw_xyStays_single
SMVB_startDraw_xyStays_single:                             ;#isfunction  
                    stb      *VIA_shift_reg 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_yStays_single_sj
SMVB_startDraw_yStays_single_sj:                           ;#isfunction  
;                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 


 .globl SMVB_startDraw_yd4_double
SMVB_startDraw_yd4_double:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      SMVB_repeat_same2 

 .globl SMVB_startDraw_yd4_octo
SMVB_startDraw_yd4_octo:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont7


 .globl SMVB_startDraw_yd4_single
SMVB_startDraw_yd4_single:;#isfunction 
 .globl SMVB_startDraw_single
SMVB_startDraw_single:                                    ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_single_sj
SMVB_startDraw_single_sj: 
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_yEqx_single_sj
SMVB_startDraw_yEqx_single_sj:                             ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #0x01 
                    stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stb      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_yEqx_single
SMVB_startDraw_yEqx_single:                                ;#isfunction  
 .globl SMVB_startDraw_yd4_yEqx_single
SMVB_startDraw_yd4_yEqx_single:                                ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
                    ldb      #0x01 
                    stb      *VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stb      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_yEqx_single
SMVB_startMove_yEqx_single:                                ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 

                    sta      *VIA_shift_reg               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_yd4_hex
SMVB_startMove_yd4_hex:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    sta      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont5

 .globl SMVB_startMove_yd4_octo
SMVB_startMove_yd4_octo:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    sta      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont7
 .globl SMVB_startMove_yd4_quadro
SMVB_startMove_yd4_quadro:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    sta      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont3
 .globl SMVB_startMove_yd4_tripple
SMVB_startMove_yd4_tripple:
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    sta      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    jmp      cont2

 .globl SMVB_startMove_yd4_yEqx_single
SMVB_startMove_yd4_yEqx_single:                                ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 4 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_xyStays_single
SMVB_startMove_xyStays_single: ;#isfunction 
                    sta      *VIA_t1_cnt_hi 
                    stb      *VIA_shift_reg 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 

 .globl SMVB_startMove_yEqx_single_sj
SMVB_startMove_yEqx_single_sj:                             ;#isfunction  
; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 4 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 
 .globl SMVB_startMove_yd4_yEqx_single_sj
SMVB_startMove_yd4_yEqx_single_sj:                             ;#isfunction  

; macro call ->                     SET_Y_INT  
                    sta      *VIA_port_b                  ; 4 
                    stb      *VIA_port_a                  ; 4 
; macro call ->                     WAIT2    
 nop ;     wait 2 cycles 
; macro call ->  Y_DELAY_HALF_4
 nop 
; macro call ->  ADD_BURST
 

                    inc      *VIA_port_b 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 4 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 
 .globl SMVB_startMove_yd4_newY_eq_oldX_single
SMVB_startMove_yd4_newY_eq_oldX_single:

 .globl SMVB_startMove_newY_eq_oldX_single
SMVB_startMove_newY_eq_oldX_single:;#isfunction  
                    sta      *VIA_port_b                  ; 4 
; macro call ->                     INIT_MOVE  
                    ldb      #0b11100000 
                    stb      *VIA_shift_reg               ; 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 nop ; y4d
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startMove_newY_eq_oldX_single_sj
SMVB_startMove_newY_eq_oldX_single_sj: ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
                    ldu      ,u 
; macro call ->                     INIT_MOVE_SJ  
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
                    sta      *VIA_shift_reg               ; 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_newY_eq_oldX_single
SMVB_startDraw_newY_eq_oldX_single:                       ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
                    ldb      #SHITREG_POKE_VALUE 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS  
 nop 
                    pulu     b,x,pc 
 .globl SMVB_startDraw_newY_eq_oldX_single_sj
SMVB_startDraw_newY_eq_oldX_single_sj:                    ;#isfunction  
                    sta      *VIA_port_b                  ; 4 
                    ldb      #SHITREG_POKE_VALUE 
                    stb      *VIA_shift_reg               ; 4 
; macro call ->  DELAY_NONE
; macro call ->  ADD_BURST
 
                    stx      *VIA_port_b                  ; 5 
                    sta      *VIA_t1_cnt_hi 
; macro call ->                     ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
 nop 
                    ldu      ,u 
                    pulu     b,x,pc 


 .globl SMVB_lastDraw_rts                                         ;#isfunction  
 .globl SMVB_FlagWait
SMVB_lastDraw_rts:
SMVB_FlagWait: 
                    bitb     *VIA_int_flags 
                    beq      SMVB_FlagWait 
                    sta      *VIA_shift_reg 
 .globl SMVB_rts
SMVB_rts:                                                 ;#isfunction  
                    ldb      #0x80
                    LDA      #0xCC 
                    STA      VIA_cntl                     ;/BLANK low and /ZERO low 
                    stB      VIA_t1_cnt_lo 
; and ensures integrators are clean (good positioning!)
;                    ldd      #0 
                    stx      *VIA_port_b 
; RTS for title!
;                    puls     u,pc                         ; (D = y,x, pc = next object) 
                    rts      

;// TODO CHECK WITH SHIELD + CO
 .globl SMVB_lastDraw_rts_stay
SMVB_lastDraw_rts_stay:                                    ;#isfunction  
;                    SET_Y_INT  
;                    Y_DELAY_HALF                          ; 4 
;                    ldd      #0x40E0 
;                    stx      <VIA_port_b                  ; 5 
;                    clr      <VIA_t1_cnt_hi 
;                    ADD_NOPS  
 clra
 .globl SMVB_FlagWait3
SMVB_FlagWait3:                                           ;#isfunction  
                    bitb     *VIA_int_flags 
                    beq      SMVB_FlagWait3 
                    sta      *VIA_shift_reg 
 nop 
 nop 
;                    rts      
                    puls     u,pc                         ; (D = y,x, pc = next object) 

 .globl SMVB_lastMove_rts_stay
SMVB_lastMove_rts_stay:                                    ;#isfunction  
                    ldb      #0x40 
 .globl SMVB_FlagWait3_2
SMVB_FlagWait3_2: 
                    bitb     *VIA_int_flags 
                    beq      SMVB_FlagWait3_2 
                    sta      *VIA_shift_reg 
                    puls     u,pc                         ; (D = y,x, pc = next object) 

; todo 
; last draw could contain 0xF in A
; than load not needed - attention 
; when cycles are not done for load, than shift value might be needed 2 higher!
; also in X could be some sensible value in X for one of the other 
 .globl SMVB_lastDraw_rts2
SMVB_lastDraw_rts2:                                        ;#isfunction  
;                    ldb      #0xf0 
 nop 
                    stb      *VIA_shift_reg 
                    lda      #0x80
                    sta      *VIA_t1_cnt_lo 
; extended on purpose to gain one cycle of time
; to reset to 
; a) swithc light off before zeroing
; b) zero
 .globl SMVB_rts2
SMVB_rts2:                                                ;#isfunction  
                    ldb      #0xcc 
                    STb      VIA_cntl                    ;/BLANK low and /ZERO low 
                    stx      VIA_port_b 
; nop 10
                    puls     u,pc                         ; (D = y,x, pc = next object) 




 .globl __SMVB_sceneData
__SMVB_sceneData:
 .word _telengard_0 ; list of all single vectorlists in this
 .word _telengard_1
 .word _telengard_2
 .word 0

 .globl _telengard_0
_telengard_0:
	.byte  0x68, 0x01, -0x7B
	.word SMVB_continue_octo
	.byte  0x0A, 0x01,  0x50
	.word SMVB_startDraw_yd4_single
	.byte  0x07, 0x01,  0x5F
	.word SMVB_continue_double
	.byte  0x00, 0x01,  0x46
	.word SMVB_continue7_single
	.byte -0x05, 0x01,  0x5A
	.byte -0x0A, 0x01,  0x7D
	.byte -0x23, 0x01, -0x0F
	.byte  0x19, 0x01, -0x36
	.byte  0x00, 0x01, -0x4B
	.byte -0x0A, 0x01, -0x5A
	.byte -0x2D, 0x01, -0x19
	.word SMVB_continue6_single
	.byte -0x46, 0x01,  0x0A
	.byte -0x37, 0x01,  0x00
	.byte -0x41, 0x01,  0x0A
	.byte -0x5F, 0x01,  0x05
	.byte -0x5A, 0x01,  0x0A
	.byte -0x52, 0x01,  0x05
	.word SMVB_continue_double
	.byte -0x64, 0x01,  0x00
	.word SMVB_continue_quadro
	.byte -0x2D, 0x01, -0x0A
	.word SMVB_continue4_single
	.byte -0x23, 0x01, -0x19
	.byte  0x4B, 0x01, -0x23
	.byte  0x5F, 0x01,  0x0F
	.byte  0x4D, 0x01,  0x00
	.word SMVB_continue_double
	.byte  0x52, 0x01,  0x05
	.word SMVB_continue_double
	.byte  0x56, 0x01, -0x03
	.word SMVB_continue_tripple
	.byte  0x6E, 0x01, -0x0A
	.word SMVB_continue2_single
	.byte  0x73, 0x01, -0x05
	.byte  0x2D, 0x01, -0x0A
	.word SMVB_continue_yd4_single
	.byte  0x23, 0x01, -0x1E
	.word SMVB_continue5_single
	.byte  0x0A, 0x01, -0x5A
	.byte -0x0A, 0x01, -0x5F
	.byte -0x19, 0x01, -0x28
	.byte  0x2D, 0x01, -0x05
	.byte  0x07, 0x01,  0x68
	.word SMVB_startMove_hex
	.byte -0x23, 0x01, -0x1E
	.word SMVB_startDraw_single
	.byte -0x78, 0x01, -0x19
	.word SMVB_continue_yd4_single
	.byte -0x2D, 0x01, -0x1E
	.word SMVB_continue5_single
	.byte  0x41, 0x01, -0x0F
	.byte  0x23, 0x01, -0x1E
	.byte  0x14, 0x01, -0x32
	.byte -0x14, 0x01, -0x55
	.byte -0x69, 0x01, -0x0F
	.word SMVB_continue_yd4_single
	.byte -0x52, 0x01,  0x00
	.word SMVB_continue_double
	.byte -0x50, 0x01,  0x0A
	.word SMVB_continue_single
	.byte -0x4D, 0x01,  0x0C
	.word SMVB_continue_double
	.byte -0x55, 0x01,  0x05
	.word SMVB_continue_double
	.byte -0x65, 0x01, -0x02
	.word SMVB_continue_octo
	.byte  0x5A, 0x01, -0x17
	.word SMVB_continue_tripple
	.byte  0x3C, 0x01, -0x1E
	.word SMVB_continue_single
	.byte  0x6B, 0x01, -0x39
	.word SMVB_continue_double
	.byte  0x14, 0x01,  0x37
	.word SMVB_continue_yd4_single
	.byte  0x64, 0x01,  0x0F
	.word SMVB_continue_single
	.byte  0x64, 0x01,  0x00
	.word SMVB_continue_quadro
	.byte  0x65, 0x01, -0x05
	.word SMVB_continue_tripple
	.byte  0x64, 0x01,  0x00
	.word SMVB_continue_single
	.byte  0x0F, 0x01, -0x4B
	.word SMVB_continue_yd4_single
	.byte -0x0F, 0x01, -0x3C
	.word SMVB_continue7_single
	.byte -0x1E, 0x01, -0x23
	.byte -0x2D, 0x01, -0x14
	.byte -0x2D, 0x01,  0x14
	.byte  0x50, 0x01, -0x4B
	.byte  0x55, 0x01, -0x23
	.byte  0x32, 0x01, -0x23
	.byte  0x28, 0x01, -0x1E
	.word SMVB_continue2_single
	.byte -0x0A, 0x01,  0x37
	.byte  0x01, 0x01,  0x6E
	.word SMVB_continue_hex
	.byte  0x0F, 0x01,  0x2D
	.word SMVB_continue2_single
	.byte -0x23, 0x01, -0x05
	.byte  0x40, 0x00,  0x00
	.word SMVB_lastDraw_rts
 .globl _telengard_1
_telengard_1:
	.byte  0x53, 0x01, -0x67
	.word SMVB_continue_hex
	.byte  0x4B, 0x01,  0x0A
	.word SMVB_startDraw_single
	.byte  0x37, 0x01,  0x1E
	.word SMVB_continue2_single
	.byte  0x46, 0x01,  0x5E
	.byte -0x64, 0x01,  0x28
	.word SMVB_continue_yd4_single
	.byte  0x14, 0x01, -0x2D
	.word SMVB_continue4_single
	.byte -0x1E, 0x01, -0x27
	.byte -0x3C, 0x01, -0x0F
	.byte  0x23, 0x01,  0x3B
	.byte -0x37, 0x01,  0x14
	.word SMVB_continue_yd4_single
	.byte -0x19, 0x01, -0x36
	.word SMVB_continue4_single
	.byte -0x23, 0x01, -0x0A
	.byte  0x05, 0x01,  0x36
	.byte  0x28, 0x01,  0x1E
	.byte -0x41, 0x01,  0x2D
	.word SMVB_continue_yd4_single
	.byte -0x2D, 0x01, -0x64
	.word SMVB_continue4_single
	.byte  0x00, 0x01, -0x36
	.byte  0x23, 0x01, -0x2D
	.byte  0x50, 0x01, -0x14
	.byte  0x2D, 0x01,  0x63
	.word SMVB_startMove_tripple
	.byte -0x5A, 0x01,  0x00
	.word SMVB_startDraw_yd4_double
	.byte  0x37, 0x01,  0x3C
	.word SMVB_continue2_single
	.byte  0x37, 0x01,  0x0A
	.byte -0x50, 0x01,  0x1E
	.word SMVB_continue_yd4_single
	.byte -0x64, 0x01,  0x19
	.word SMVB_continue6_single
	.byte  0x0A, 0x01, -0x5A
	.byte -0x0A, 0x01, -0x50
	.byte  0x37, 0x01, -0x0A
	.byte  0x3C, 0x01,  0x00
	.byte  0x6E, 0x01, -0x14
	.byte  0x37, 0x01, -0x19
	.word SMVB_continue_yd4_single
	.byte  0x2D, 0x01,  0x50
	.word SMVB_continue_single
	.byte -0x4B, 0x01,  0x14
	.word SMVB_continue_yd4_single
	.byte  0x02, 0x01,  0x6C
	.word SMVB_startMove_quadro
	.byte  0x41, 0x01, -0x14
	.word SMVB_startDraw_single
	.byte  0x00, 0x01,  0x4B
	.word SMVB_continue_yd4_single
	.byte -0x6E, 0x01,  0x00
	.word SMVB_continue_yd4_single
	.byte -0x5A, 0x01, -0x0A
	.word SMVB_continue6_single
	.byte -0x46, 0x01,  0x19
	.byte -0x37, 0x01,  0x1E
	.byte  0x00, 0x01, -0x2D
	.byte  0x46, 0x01, -0x41
	.byte  0x55, 0x01, -0x37
	.byte -0x2D, 0x01, -0x0A
	.word SMVB_continue_yd4_single
	.byte -0x2D, 0x01,  0x00
	.word SMVB_continue7_single
	.byte -0x41, 0x01,  0x1E
	.byte  0x00, 0x01, -0x41
	.byte  0x19, 0x01, -0x14
	.byte -0x19, 0x01, -0x41
	.byte  0x00, 0x01, -0x2D
	.byte  0x19, 0x01, -0x32
	.byte  0x28, 0x01, -0x1E
	.word SMVB_continue6_single
	.byte  0x46, 0x01, -0x0F
	.byte  0x37, 0x01,  0x05
	.byte  0x37, 0x01,  0x1E
	.byte  0x2D, 0x01,  0x2D
	.byte  0x19, 0x01,  0x3C
	.byte -0x46, 0x01,  0x28
	.word SMVB_continue_yd4_single
	.byte -0x0A, 0x01, -0x4B
	.word SMVB_continue4_single
	.byte -0x2D, 0x01, -0x23
	.byte -0x23, 0x01, -0x0A
	.byte  0x19, 0x01,  0x4B
	.byte -0x2D, 0x01,  0x0F
	.word SMVB_continue_yd4_single
	.byte -0x19, 0x01, -0x2D
	.word SMVB_continue4_single
	.byte -0x28, 0x01, -0x19
	.byte -0x05, 0x01,  0x2D
	.byte  0x32, 0x01,  0x2D
	.byte -0x3C, 0x01,  0x23
	.word SMVB_continue_yd4_single
	.byte  0x2D, 0x01,  0x0F
	.word SMVB_continue4_single
	.byte  0x64, 0x01,  0x05
	.byte  0x3C, 0x01, -0x0A
	.byte  0x41, 0x01, -0x1E
	.byte  0x00, 0x01,  0x46
	.word SMVB_continue_yd4_single
	.byte -0x2D, 0x01,  0x0F
	.word SMVB_continue5_single
	.byte -0x2D, 0x01,  0x0A
	.byte -0x2D, 0x01,  0x2D
	.byte  0x2D, 0x01,  0x14
	.byte  0x19, 0x01, -0x0A
	.byte  0x40, 0x00,  0x00
	.word SMVB_lastDraw_rts
 .globl _telengard_2
_telengard_2:
	.byte  0x62, 0x01,  0x64
	.word SMVB_continue_quadro
	.byte -0x09, 0x01, -0x46
	.word SMVB_startDraw_yd4_single
	.byte  0x09, 0x01, -0x46
	.word SMVB_continue7_single
	.byte  0x37, 0x01, -0x36
	.byte  0x45, 0x01, -0x14
	.byte  0x5A, 0x01,  0x14
	.byte  0x2D, 0x01,  0x23
	.byte  0x19, 0x01,  0x22
	.byte  0x1E, 0x01,  0x37
	.byte -0x26, 0x01,  0x11
	.word SMVB_continue_yd4_single
	.byte -0x25, 0x01,  0x12
	.word SMVB_continue7_single
	.byte  0x00, 0x01, -0x37
	.byte -0x2D, 0x01, -0x2D
	.byte -0x32, 0x01, -0x0E
	.byte -0x40, 0x01,  0x09
	.byte -0x19, 0x01,  0x3C
	.byte  0x2D, 0x01,  0x0A
	.byte  0x0F, 0x01, -0x2D
	.word SMVB_continue2_single
	.byte  0x36, 0x01,  0x46
	.byte -0x45, 0x01,  0x1E
	.word SMVB_continue_yd4_single
	.byte -0x41, 0x01,  0x0F
	.word SMVB_continue7_single
	.byte  0x5A, 0x01,  0x2D
	.byte  0x50, 0x01,  0x1E
	.byte  0x4B, 0x01,  0x0F
	.byte  0x2D, 0x01, -0x0F
	.byte  0x00, 0x01,  0x69
	.byte -0x2D, 0x01, -0x05
	.byte -0x78, 0x01,  0x23
	.word SMVB_continue_yd4_single
	.byte -0x72, 0x01,  0x19
	.word SMVB_continue2_single
	.byte  0x68, 0x01,  0x23
	.byte  0x41, 0x01,  0x00
	.word SMVB_continue_double
	.byte  0x23, 0x01, -0x0F
	.word SMVB_continue7_single
	.byte  0x00, 0x01,  0x50
	.byte -0x14, 0x01,  0x46
	.byte -0x37, 0x01,  0x2D
	.byte -0x2D, 0x01,  0x00
	.byte -0x23, 0x01, -0x19
	.byte -0x3B, 0x01,  0x23
	.byte -0x4B, 0x01,  0x1E
	.word SMVB_continue2_single
	.byte  0x23, 0x01,  0x0F
	.byte  0x68, 0x01, -0x05
	.word SMVB_continue_double
	.byte  0x2D, 0x01, -0x05
	.word SMVB_continue_yd4_single
	.byte  0x00, 0x01,  0x50
	.word SMVB_continue2_single
	.byte -0x2D, 0x01,  0x50
	.byte -0x78, 0x01,  0x37
	.word SMVB_continue_yd4_single
	.byte -0x31, 0x01,  0x0A
	.word SMVB_continue3_single
	.byte -0x41, 0x01, -0x14
	.byte -0x2D, 0x01, -0x23
	.byte  0x00, 0x01, -0x56
	.word SMVB_continue_tripple
	.byte  0x2D, 0x01,  0x05
	.word SMVB_continue4_single
	.byte  0x23, 0x01, -0x05
	.byte  0x2D, 0x01, -0x1E
	.byte  0x13, 0x01, -0x2D
	.byte -0x6E, 0x01,  0x00
	.word SMVB_continue_yd4_single
	.byte -0x23, 0x01,  0x14
	.word SMVB_continue_single
	.byte  0x00, 0x01, -0x6B
	.word SMVB_continue_double
	.byte  0x23, 0x01,  0x20
	.word SMVB_continue7_single
	.byte  0x2D, 0x01,  0x07
	.byte  0x2D, 0x01, -0x05
	.byte  0x00, 0x01, -0x50
	.byte -0x23, 0x01, -0x0A
	.byte -0x2D, 0x01,  0x00
	.byte -0x2D, 0x01,  0x0F
	.byte  0x09, 0x01, -0x5A
	.word SMVB_continue_single
	.byte  0x0A, 0x01,  0x60
	.word SMVB_startMove_hex
	.byte  0x68, 0x01, -0x0A
	.word SMVB_startDraw_double
	.byte -0x2D, 0x01,  0x2D
	.word SMVB_continue_yd4_single
	.byte -0x4B, 0x01,  0x14
	.word SMVB_continue3_single
	.byte -0x3B, 0x01,  0x00
	.byte -0x1E, 0x01, -0x2D
	.byte  0x6E, 0x01, -0x70
	.word SMVB_startMove_double
	.byte -0x28, 0x01,  0x19
	.word SMVB_startDraw_yd4_single
	.byte -0x2D, 0x01, -0x0A
	.word SMVB_continue3_single
	.byte -0x05, 0x01, -0x2D
	.byte  0x5A, 0x01,  0x00
	.byte  0x00, 0x01,  0x1E
	.word SMVB_continue_yd4_newY_eq_oldX_single ; y is  0x00
	.byte -0x20, 0x01, -0x75
	.word SMVB_startMove_double
	.byte -0x41, 0x01,  0x19
	.word SMVB_startDraw_single
	.byte  0x14, 0x01, -0x2D
	.word SMVB_continue2_single
	.byte  0x2D, 0x01,  0x14
	.byte  0x40, 0x00,  0x00
	.word SMVB_lastDraw_rts
