                    ifndef   INCLUDE_I 
 
INCLUDE_I           equ      1 

Vec_Snd_Shadow      EQU      $C800                        ;Shadow of sound chip registers (15 bytes) 
Vec_Btn_State       EQU      $C80F                        ;Current state of all joystick buttons 
Vec_Prev_Btns       EQU      $C810                        ;Previous state of all joystick buttons 
Vec_Buttons         EQU      $C811                        ;Current toggle state of all buttons 
Vec_Button_1_1      EQU      $C812                        ;Current toggle state of stick 1 button 1 
Vec_Button_1_2      EQU      $C813                        ;Current toggle state of stick 1 button 2 
Vec_Button_1_3      EQU      $C814                        ;Current toggle state of stick 1 button 3 
Vec_Button_1_4      EQU      $C815                        ;Current toggle state of stick 1 button 4 
Vec_Button_2_1      EQU      $C816                        ;Current toggle state of stick 2 button 1 
Vec_Button_2_2      EQU      $C817                        ;Current toggle state of stick 2 button 2 
Vec_Button_2_3      EQU      $C818                        ;Current toggle state of stick 2 button 3 
Vec_Button_2_4      EQU      $C819                        ;Current toggle state of stick 2 button 4 
Vec_Joy_Resltn      EQU      $C81A                        ;Joystick A/D resolution ($80=min $00=max) 
Vec_Joy_1_X         EQU      $C81B                        ;Joystick 1 left/right 
Vec_Joy_1_Y         EQU      $C81C                        ;Joystick 1 up/down 
Vec_Joy_2_X         EQU      $C81D                        ;Joystick 2 left/right 
Vec_Joy_2_Y         EQU      $C81E                        ;Joystick 2 up/down 
Vec_Joy_Mux         EQU      $C81F                        ;Joystick enable/mux flags (4 bytes) 
Vec_Joy_Mux_1_X     EQU      $C81F                        ;Joystick 1 X enable/mux flag (=1) 
Vec_Joy_Mux_1_Y     EQU      $C820                        ;Joystick 1 Y enable/mux flag (=3) 
Vec_Joy_Mux_2_X     EQU      $C821                        ;Joystick 2 X enable/mux flag (=5) 
Vec_Joy_Mux_2_Y     EQU      $C822                        ;Joystick 2 Y enable/mux flag (=7) 
Vec_Misc_Count      EQU      $C823                        ;Misc counter/flag byte, zero when not in use 
Vec_0Ref_Enable     EQU      $C824                        ;Check0Ref enable flag 
Vec_Loop_Count      EQU      $C825                        ;Loop counter word (incremented in Wait_Recal) 
Vec_Brightness      EQU      $C827                        ;Default brightness 
Vec_Dot_Dwell       EQU      $C828                        ;Dot dwell time? 
Vec_Pattern         EQU      $C829                        ;Dot pattern (bits) 
Vec_Text_HW         EQU      $C82A                        ;Default text height and width 
Vec_Text_Height     EQU      $C82A                        ;Default text height 
Vec_Text_Width      EQU      $C82B                        ;Default text width 
Vec_Str_Ptr         EQU      $C82C                        ;Temporary string pointer for Print_Str 
Vec_Counters        EQU      $C82E                        ;Six bytes of counters 
Vec_Counter_1       EQU      $C82E                        ;First counter byte 
Vec_Counter_2       EQU      $C82F                        ;Second counter byte 
Vec_Counter_3       EQU      $C830                        ;Third counter byte 
Vec_Counter_4       EQU      $C831                        ;Fourth counter byte 
Vec_Counter_5       EQU      $C832                        ;Fifth counter byte 
Vec_Counter_6       EQU      $C833                        ;Sixth counter byte 
Vec_RiseRun_Tmp     EQU      $C834                        ;Temp storage word for rise/run 
Vec_Angle           EQU      $C836                        ;Angle for rise/run and rotation calculations 
Vec_Run_Index       EQU      $C837                        ;Index pair for run 
*                       $C839   ;Pointer to copyright string during startup
Vec_Rise_Index      EQU      $C839                        ;Index pair for rise 
*                       $C83B   ;High score cold-start flag (=0 if valid)
Vec_RiseRun_Len     EQU      $C83B                        ;length for rise/run 
*                       $C83C   ;temp byte
Vec_Rfrsh           EQU      $C83D                        ;Refresh time (divided by 1.5MHz) 
Vec_Rfrsh_lo        EQU      $C83D                        ;Refresh time low byte 
Vec_Rfrsh_hi        EQU      $C83E                        ;Refresh time high byte 
Vec_Music_Work      EQU      $C83F                        ;Music work buffer (14 bytes, backwards?) 
Vec_Music_Wk_A      EQU      $C842                        ; register 10 
*                       $C843   ;        register 9
*                       $C844   ;        register 8
Vec_Music_Wk_7      EQU      $C845                        ; register 7 
Vec_Music_Wk_6      EQU      $C846                        ; register 6 
Vec_Music_Wk_5      EQU      $C847                        ; register 5 
*                       $C848   ;        register 4
*                       $C849   ;        register 3
*                       $C84A   ;        register 2
Vec_Music_Wk_1      EQU      $C84B                        ; register 1 
*                       $C84C   ;        register 0
Vec_Freq_Table      EQU      $C84D                        ;Pointer to note-to-frequency table (normally $FC8D) 
Vec_Max_Players     EQU      $C84F                        ;Maximum number of players for Select_Game 
Vec_Max_Games       EQU      $C850                        ;Maximum number of games for Select_Game 
Vec_ADSR_Table      EQU      $C84F                        ;Storage for first music header word (ADSR table) 
Vec_Twang_Table     EQU      $C851                        ;Storage for second music header word ('twang' table) 
Vec_Music_Ptr       EQU      $C853                        ;Music data pointer 
Vec_Expl_ChanA      EQU      $C853                        ;Used by Explosion_Snd - bit for first channel used? 
Vec_Expl_Chans      EQU      $C854                        ;Used by Explosion_Snd - bits for all channels used? 
Vec_Music_Chan      EQU      $C855                        ;Current sound channel number for Init_Music 
Vec_Music_Flag      EQU      $C856                        ;Music active flag ($00=off $01=start $80=on) 
Vec_Duration        EQU      $C857                        ;Duration counter for Init_Music 
Vec_Music_Twang     EQU      $C858                        ;3 word 'twang' table used by Init_Music 
Vec_Expl_1          EQU      $C858                        ;Four bytes copied from Explosion_Snd's U-reg parameters 
Vec_Expl_2          EQU      $C859                        ; 
Vec_Expl_3          EQU      $C85A                        ; 
Vec_Expl_4          EQU      $C85B                        ; 
Vec_Expl_Chan       EQU      $C85C                        ;Used by Explosion_Snd - channel number in use? 
Vec_Expl_ChanB      EQU      $C85D                        ;Used by Explosion_Snd - bit for second channel used? 
Vec_ADSR_Timers     EQU      $C85E                        ;ADSR timers for each sound channel (3 bytes) 
Vec_Music_Freq      EQU      $C861                        ;Storage for base frequency of each channel (3 words) 
*                       $C85E   ;Scratch 'score' storage for Display_Option (7 bytes)
Vec_Expl_Flag       EQU      $C867                        ;Explosion_Snd initialization flag? 
*               $C868...$C876   ;Unused?
Vec_Expl_Timer      EQU      $C877                        ;Used by Explosion_Snd 
*                       $C878   ;Unused?
Vec_Num_Players     EQU      $C879                        ;Number of players selected in Select_Game 
Vec_Num_Game        EQU      $C87A                        ;Game number selected in Select_Game 
Vec_Seed_Ptr        EQU      $C87B                        ;Pointer to 3-byte random number seed (=$C87D) 
Vec_Random_Seed     EQU      $C87D                        ;Default 3-byte random number seed 
                                ;
*    $C880 - $CBEA is user RAM  ;
                                ;
Vec_Default_Stk     EQU      $CBEA                        ;Default top-of-stack 
Vec_High_Score      EQU      $CBEB                        ;High score storage (7 bytes) 
Vec_SWI3_Vector     EQU      $CBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
Vec_SWI2_Vector     EQU      $CBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
Vec_FIRQ_Vector     EQU      $CBF5                        ;FIRQ interrupt vector (3 bytes) 
Vec_IRQ_Vector      EQU      $CBF8                        ;IRQ interrupt vector (3 bytes) 
Vec_SWI_Vector      EQU      $CBFB                        ;SWI/NMI interrupt vector (3 bytes) 
Vec_NMI_Vector      EQU      $CBFB                        ;SWI/NMI interrupt vector (3 bytes) 
Vec_Cold_Flag       EQU      $CBFE                        ;Cold start flag (warm start if = $7321) 
                                ;
VIA_port_b          EQU      $D000                        ;VIA port B data I/O register 
*       0 sample/hold (0=enable  mux 1=disable mux)
*       1 mux sel 0
*       2 mux sel 1
*       3 sound BC1
*       4 sound BDIR
*       5 comparator input
*       6 external device (slot pin 35) initialized to input
*       7 /RAMP
VIA_port_a          EQU      $D001                        ;VIA port A data I/O register (handshaking) 
VIA_DDR_b           EQU      $D002                        ;VIA port B data direction register (0=input 1=output) 
VIA_DDR_a           EQU      $D003                        ;VIA port A data direction register (0=input 1=output) 
VIA_t1_cnt_lo       EQU      $D004                        ;VIA timer 1 count register lo (scale factor) 
VIA_t1_cnt_hi       EQU      $D005                        ;VIA timer 1 count register hi 
VIA_t1_lch_lo       EQU      $D006                        ;VIA timer 1 latch register lo 
VIA_t1_lch_hi       EQU      $D007                        ;VIA timer 1 latch register hi 
VIA_t2_lo           EQU      $D008                        ;VIA timer 2 count/latch register lo (refresh) 
VIA_t2_hi           EQU      $D009                        ;VIA timer 2 count/latch register hi 
VIA_shift_reg       EQU      $D00A                        ;VIA shift register 
VIA_aux_cntl        EQU      $D00B                        ;VIA auxiliary control register 
*       0 PA latch enable
*       1 PB latch enable
*       2 \                     110=output to CB2 under control of phase 2 clock
*       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
*       4 /
*       5 0=t2 one shot                 1=t2 free running
*       6 0=t1 one shot                 1=t1 free running
*       7 0=t1 disable PB7 output       1=t1 enable PB7 output
VIA_cntl            EQU      $D00C                        ;VIA control register 
*       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
*       1 \
*       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
*       3 /
*       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
*       5 \
*       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
*       7 /
VIA_int_flags       EQU      $D00D                        ;VIA interrupt flags register 
*               bit                             cleared by
*       0 CA2 interrupt flag            reading or writing port A I/O
*       1 CA1 interrupt flag            reading or writing port A I/O
*       2 shift register interrupt flag reading or writing shift register
*       3 CB2 interrupt flag            reading or writing port B I/O
*       4 CB1 interrupt flag            reading or writing port A I/O
*       5 timer 2 interrupt flag        read t2 low or write t2 high
*       6 timer 1 interrupt flag        read t1 count low or write t1 high
*       7 IRQ status flag               write logic 0 to IER or IFR bit
VIA_int_enable      EQU      $D00E                        ;VIA interrupt enable register 
*       0 CA2 interrupt enable
*       1 CA1 interrupt enable
*       2 shift register interrupt enable
*       3 CB2 interrupt enable
*       4 CB1 interrupt enable
*       5 timer 2 interrupt enable
*       6 timer 1 interrupt enable
*       7 IER set/clear control
VIA_port_a_nohs     EQU      $D00F                        ;VIA port A data I/O register (no handshaking) 

Cold_Start          EQU      $F000                        ; 
Warm_Start          EQU      $F06C                        ; 
Init_VIA            EQU      $F14C                        ; 
Init_OS_RAM         EQU      $F164                        ; 
Init_OS             EQU      $F18B                        ; 
Wait_Recal          EQU      $F192                        ; 
Set_Refresh         EQU      $F1A2                        ; 
DP_to_D0            EQU      $F1AA                        ; 
DP_to_C8            EQU      $F1AF                        ; 
Read_Btns_Mask      EQU      $F1B4                        ; 
Read_Btns           EQU      $F1BA                        ; 
Joy_Analog          EQU      $F1F5                        ; 
Joy_Digital         EQU      $F1F8                        ; 
Sound_Byte          EQU      $F256                        ; 
Sound_Byte_x        EQU      $F259                        ; 
Sound_Byte_raw      EQU      $F25B                        ; 
Clear_Sound         EQU      $F272                        ; 
Sound_Bytes         EQU      $F27D                        ; 
Sound_Bytes_x       EQU      $F284                        ; 
Do_Sound            EQU      $F289                        ; 
Do_Sound_x          EQU      $F28C                        ; 
Intensity_1F        EQU      $F29D                        ; 
Intensity_3F        EQU      $F2A1                        ; 
Intensity_5F        EQU      $F2A5                        ; 
Intensity_7F        EQU      $F2A9                        ; 
Intensity_a         EQU      $F2AB                        ; 
Dot_ix_b            EQU      $F2BE                        ; 
Dot_ix              EQU      $F2C1                        ; 
Dot_d               EQU      $F2C3                        ; 
Dot_here            EQU      $F2C5                        ; 
Dot_List            EQU      $F2D5                        ; 
Dot_List_Reset      EQU      $F2DE                        ; 
Recalibrate         EQU      $F2E6                        ; 
Moveto_x_7F         EQU      $F2F2                        ; 
Moveto_d_7F         EQU      $F2FC                        ; 
Moveto_ix_FF        EQU      $F308                        ; 
Moveto_ix_7F        EQU      $F30C                        ; 
Moveto_ix_a         EQU      $F30E                        ; 
Moveto_ix           EQU      $F310                        ; 
Moveto_d            EQU      $F312                        ; 
Reset0Ref_D0        EQU      $F34A                        ; 
Check0Ref           EQU      $F34F                        ; 
Reset0Ref           EQU      $F354                        ; 
Reset_Pen           EQU      $F35B                        ; 
Reset0Int           EQU      $F36B                        ; 
Print_Str_hwyx      EQU      $F373                        ; 
Print_Str_yx        EQU      $F378                        ; 
Print_Str_d         EQU      $F37A                        ; 
Print_List_hw       EQU      $F385                        ; 
Print_List          EQU      $F38A                        ; 
Print_List_chk      EQU      $F38C                        ; 
Print_Ships_x       EQU      $F391                        ; 
Print_Ships         EQU      $F393                        ; 
Mov_Draw_VLc_a      EQU      $F3AD                        ;count y x y x ... 
Mov_Draw_VL_b       EQU      $F3B1                        ;y x y x ... 
Mov_Draw_VLcs       EQU      $F3B5                        ;count scale y x y x ... 
Mov_Draw_VL_ab      EQU      $F3B7                        ;y x y x ... 
Mov_Draw_VL_a       EQU      $F3B9                        ;y x y x ... 
Mov_Draw_VL         EQU      $F3BC                        ;y x y x ... 
Mov_Draw_VL_d       EQU      $F3BE                        ;y x y x ... 
Draw_VLc            EQU      $F3CE                        ;count y x y x ... 
Draw_VL_b           EQU      $F3D2                        ;y x y x ... 
Draw_VLcs           EQU      $F3D6                        ;count scale y x y x ... 
Draw_VL_ab          EQU      $F3D8                        ;y x y x ... 
Draw_VL_a           EQU      $F3DA                        ;y x y x ... 
Draw_VL             EQU      $F3DD                        ;y x y x ... 
Draw_Line_d         EQU      $F3DF                        ;y x y x ... 
Draw_VLp_FF         EQU      $F404                        ;pattern y x pattern y x ... $01 
Draw_VLp_7F         EQU      $F408                        ;pattern y x pattern y x ... $01 
Draw_VLp_scale      EQU      $F40C                        ;scale pattern y x pattern y x ... $01 
Draw_VLp_b          EQU      $F40E                        ;pattern y x pattern y x ... $01 
Draw_VLp            EQU      $F410                        ;pattern y x pattern y x ... $01 
Draw_Pat_VL_a       EQU      $F434                        ;y x y x ... 
Draw_Pat_VL         EQU      $F437                        ;y x y x ... 
Draw_Pat_VL_d       EQU      $F439                        ;y x y x ... 
Draw_VL_mode        EQU      $F46E                        ;mode y x mode y x ... $01 
Print_Str           EQU      $F495                        ; 
Random_3            EQU      $F511                        ; 
Random              EQU      $F517                        ; 
Init_Music_Buf      EQU      $F533                        ; 
Clear_x_b           EQU      $F53F                        ; 
Clear_C8_RAM        EQU      $F542                        ;never used by GCE carts? 
Clear_x_256         EQU      $F545                        ; 
Clear_x_d           EQU      $F548                        ; 
Clear_x_b_80        EQU      $F550                        ; 
Clear_x_b_a         EQU      $F552                        ; 
Dec_3_Counters      EQU      $F55A                        ; 
Dec_6_Counters      EQU      $F55E                        ; 
Dec_Counters        EQU      $F563                        ; 
Delay_3             EQU      $F56D                        ;30 cycles 
Delay_2             EQU      $F571                        ;25 cycles 
Delay_1             EQU      $F575                        ;20 cycles 
Delay_0             EQU      $F579                        ;12 cycles 
Delay_b             EQU      $F57A                        ;5*B + 10 cycles 
Delay_RTS           EQU      $F57D                        ;5 cycles 
Bitmask_a           EQU      $F57E                        ; 
Abs_a_b             EQU      $F584                        ; 
Abs_b               EQU      $F58B                        ; 
Rise_Run_Angle      EQU      $F593                        ; 
Get_Rise_Idx        EQU      $F5D9                        ; 
Get_Run_Idx         EQU      $F5DB                        ; 
Get_Rise_Run        EQU      $F5EF                        ; 
Rise_Run_X          EQU      $F5FF                        ; 
Rise_Run_Y          EQU      $F601                        ; 
Rise_Run_Len        EQU      $F603                        ; 

Rot_VL_ab           EQU      $F610                        ; 
Rot_VL              EQU      $F616                        ; 
Rot_VL_Mode         EQU      $F61F                        ; 
Rot_VL_M_dft        EQU      $F62B                        ; 
;Rot_VL_dft      EQU     $F637   ;


;Rot_VL_ab       EQU     $F610   ;
;Rot_VL          EQU     $F616   ;
;Rot_VL_Mode_a   EQU     $F61F   ;
;Rot_VL_Mode     EQU     $F62B   ;
;Rot_VL_dft      EQU     $F637   ;

Xform_Run_a         EQU      $F65B                        ; 
Xform_Run           EQU      $F65D                        ; 
Xform_Rise_a        EQU      $F661                        ; 
Xform_Rise          EQU      $F663                        ; 
Move_Mem_a_1        EQU      $F67F                        ; 
Move_Mem_a          EQU      $F683                        ; 
Init_Music_chk      EQU      $F687                        ; 
Init_Music          EQU      $F68D                        ; 
Init_Music_x        EQU      $F692                        ; 
Select_Game         EQU      $F7A9                        ; 
Clear_Score         EQU      $F84F                        ; 
Add_Score_a         EQU      $F85E                        ; 
Add_Score_d         EQU      $F87C                        ; 
Strip_Zeros         EQU      $F8B7                        ; 
Compare_Score       EQU      $F8C7                        ; 
New_High_Score      EQU      $F8D8                        ; 
Obj_Will_Hit_u      EQU      $F8E5                        ; 
Obj_Will_Hit        EQU      $F8F3                        ; 
Obj_Hit             EQU      $F8FF                        ; 
Explosion_Snd       EQU      $F92E                        ; 
Draw_Grid_VL        EQU      $FF9F                        ; 
                                ;
music1              EQU      $FD0D                        ; 
music2              EQU      $FD1D                        ; 
music3              EQU      $FD81                        ; 
music4              EQU      $FDD3                        ; 
music5              EQU      $FE38                        ; 
music6              EQU      $FE76                        ; 
music7              EQU      $FEC6                        ; 
music8              EQU      $FEF8                        ; 
music9              EQU      $FF26                        ; 
musica              EQU      $FF44                        ; 
musicb              EQU      $FF62                        ; 
musicc              EQU      $FF7A                        ; 
musicd              EQU      $FF8F                        ; 
Char_Table          EQU      $F9F4 
Char_Table_End      EQU      $FBD4 

 endif  


MY_MOVE_TO_D_START  macro    
                    STA      <VIA_port_a                  ;Store Y in D/A register 
                    LDA      #$CE                         ;Blank low, zero high? 
                    STA      <VIA_cntl                    ; 
                    CLRA     
                    STA      <VIA_port_b                  ;Enable mux ; hey dis si "break integratorzero 440" 
                    nop                                   ; y must be set more than xx cycles on some vectrex 
                    INC      <VIA_port_b                  ;Disable mux 
                    STB      <VIA_port_a                  ;Store X in D/A register 
                    STA      <VIA_t1_cnt_hi               ;enable timer 
                    endm     

MY_MOVE_TO_B_END    macro    
                    local    LF33D 
                    LDB      #$40                         ; 
                    BITB     <$0D                         ; 
                    BEQ      .-2 
                    endm     
SHITREG_POKE_VALUE  =        0x01 



_drawSpell 
                    pshs     u 
                    ldu      #SpellIcons 
                    aslb     
                    ldu      b,u 
                    bra      contDraw 

_drawDot 
                    pshs     u 
                    ldu      #DotList 
                    bra      contDraw 

;////////////////////////////////////////////////
;/DUNGEON DRAWS
;////////////////////////////////////////////////
_drawUpWall 
                    pshs     u 
                    ldu      #ScenList_18 
contDraw: 
                    MY_MOVE_TO_B_END  
                    clra     
                    pulu     b,x,pc 

_drawUnkown 
                    pshs     u 
                    ldu      #UnkownList 
                    bra      contDraw 


_drawLeftDoor 
                    pshs     u 
                    ldu      #ScenList_19 
                    bra      contDraw 


_drawUpDoor 
                    pshs     u 
                    ldu      #ScenList_20 
                    bra      contDraw 


_drawLeftWall 
                    pshs     u 
                    ldu      #ScenList_17 
                    bra      contDraw 

_drawLeftWall_noZero 
                    pshs     u 
                    ldu      #ScenList_17 
                    clra     
                    pulu     b,x,pc 

_drawLeftDoor_noZero 
                    pshs     u 
                    ldu      #ScenList_19 
                    clra     
                    pulu     b,x,pc 

_drawUnkown_noZero 
                    pshs     u 
                    ldu      #UnkownList 
                    clra     
                    pulu     b,x,pc 
;////////////////////////////////////////////////
;////////////////////////////////////////////////
;////////////////////////////////////////////////


;////////////////////////////////////////////////
;/CHARACTER DRAWS
;////////////////////////////////////////////////

_drawPlayer 
                    pshs     u 
                    ldu      #PlayerList 
                    clra     
                    pulu     b,x,pc 

_drawGnoll 
                    pshs     u 
                    ldu      #GnollList 
                    clra     
                    pulu     b,x,pc 
_drawKobold 
                    pshs     u 
                    ldu      #KoboldList 
                    clra     
                    pulu     b,x,pc 
_drawSkeleton 
                    pshs     u 
                    ldu      #SkeletonList 
                    clra     
                    pulu     b,x,pc 
_drawHobbit 
                    pshs     u 
                    ldu      #HobbitList 
                    clra     
                    pulu     b,x,pc 
_drawZomnbie 
                    pshs     u 
                    ldu      #ZombieList 
                    clra     
                    pulu     b,x,pc 
_drawOrc 
                    pshs     u 
                    ldu      #OrcList 
                    clra     
                    pulu     b,x,pc 
_drawFighter 
                    pshs     u 
                    ldu      #FighterList 
                    clra     
                    pulu     b,x,pc 
_drawMummy 
                    pshs     u 
                    ldu      #MummyList 
                    clra     
                    pulu     b,x,pc 
_drawElf 
                    pshs     u 
                    ldu      #ElfList 
                    clra     
                    pulu     b,x,pc 
_drawGhoul 
                    pshs     u 
                    ldu      #GhoulList 
                    clra     
                    pulu     b,x,pc 
_drawDwarf 
                    pshs     u 
                    ldu      #DwarfList 
                    clra     
                    pulu     b,x,pc 
_drawTroll 
                    pshs     u 
                    ldu      #TrollList 
                    clra     
                    pulu     b,x,pc 
_drawWraith 
                    pshs     u 
                    ldu      #WraithList 
                    clra     
                    pulu     b,x,pc 
_drawOgre 
                    pshs     u 
                    ldu      #OgreList 
                    clra     
                    pulu     b,x,pc 
_drawMinotaur 
                    pshs     u 
                    ldu      #MinotaurList 
                    clra     
                    pulu     b,x,pc 
_drawGiant 
                    pshs     u 
                    ldu      #GiantList 
                    clra     
                    pulu     b,x,pc 
_drawSpecter 
                    pshs     u 
                    ldu      #SpecterList 
                    clra     
                    pulu     b,x,pc 
_drawVampire 
                    pshs     u 
                    ldu      #VampireList 
                    clra     
                    pulu     b,x,pc 
_drawDemon 
                    pshs     u 
                    ldu      #DemonList 
                    clra     
                    pulu     b,x,pc 
_drawDragon 
                    pshs     u 
                    ldu      #DragonList 
                    clra     
                    pulu     b,x,pc 


_drawStaircase 
                    pshs     u 
                    ldu      #StaircaseList 
                    clra     
                    pulu     b,x,pc 

_drawHome 
                    pshs     u 
                    ldu      #HomeList 
                    clra     
                    pulu     b,x,pc 

_drawInn 
                    pshs     u 
                    ldu      #InnList 
                    clra     
                    pulu     b,x,pc 

_drawFountain 
                    pshs     u 
                    ldu      #FountainList 
                    clra     
                    pulu     b,x,pc 
_drawAltar 
                    pshs     u 
                    ldu      #AltarList 
                    clra     
                    pulu     b,x,pc 


_drawElevator 
                    pshs     u 
                    ldu      #ElevatorList 
                    clra     
                    pulu     b,x,pc 

_drawNone 
                    rts      



_drawThrone 
                    pshs     u 
                    ldu      #ThroneList 
contDraw2: 
                    lda      Vec_Loop_Count+1 
                    anda     #6 
                    ldu      a,u 
                    clra     
                    pulu     b,x,pc 

_drawFlame 
                    pshs     u 
                    ldu      #DragonFlameList 
                    bra      contDraw2 

_drawCube 
                    pshs     u 
                    ldu      #CubeList 
contDraw3: 
                    lda      Vec_Loop_Count+1 
                    anda     #8 
                    lsra     
                    lsra     
                    ldu      a,u 
                    clra     
                    pulu     b,x,pc 

_drawBox 
                    pshs     u 
                    ldu      #BoxList 
                    bra      contDraw3 



_drawTreasure 
                    pshs     u 
                    ldu      #TreasureList 
                    aslb     
                    ldu      b,u 
                    clra     
                    pulu     b,x,pc 


ScenList_17 
                    db       -$28, $01, -$28 
                    dw       SMVB_continue_yEqx_single    ; y is -$28 
                    db       $00, $01, $50 
                    dw       SMVB_startDraw_single 
                    db       -$78, $01, $00 
                    dw       SMVB_continue_yd4_quadro 
                    db       $00, $01, -$50 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $78, $01, $00 
                    dw       SMVB_continue_quadro 
                    db       $28, $01, $28 
                    dw       SMVB_startMove_yd4_yEqx_single ; y is $28 
                    db       $00, $00, $00 
                    dw       SMVB_lastMove_rts_stay 
ScenList_18 
                    db       -$27, $01, $28 
                    dw       SMVB_continue_single 
                    db       $4E, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $78 
                    dw       SMVB_continue_yd4_quadro 
                    db       -$4E, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$78 
                    dw       SMVB_continue_quadro 
                    db       $28, $01, -$28 
                    dw       SMVB_startMove_single 
                    db       $00, $00, $00 
                    dw       SMVB_lastMove_rts_stay 
ScenList_19 
                    db       -$28, $01, -$28 
                    dw       SMVB_continue_yEqx_single    ; y is -$28 
                    db       $00, $01, $50 
                    dw       SMVB_startDraw_single 
                    db       -$49, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, -$51 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       -$5D, $01, $28 
                    dw       SMVB_startMove_yd4_double 
                    db       -$01, $01, -$50 
                    dw       SMVB_startDraw_single 
                    db       -$49, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, $50 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $49, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$28 
                    dw       SMVB_startMove_yd4_newY_eq_oldX_single ; y was $00, now 0 
                    db       $5D, $01, $00 
                    dw       SMVB_startDraw_double 
                    db       $00, $01, -$28 
                    dw       SMVB_startMove_yd4_newY_eq_oldX_single ; y was $00, now 0 
                    db       $49, $01, $00 
                    dw       SMVB_startDraw_double 
                    db       $28, $01, $28 
                    dw       SMVB_startMove_yEqx_single   ; y is $28 
                    db       $00, $00, $00 
                    dw       SMVB_lastMove_rts_stay 
ScenList_20 
                    db       -$27, $01, $28 
                    dw       SMVB_continue_single 
                    db       $4E, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $49 
                    dw       SMVB_continue_yd4_double 
                    db       -$4F, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $28, $01, $00 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $5D 
                    dw       SMVB_startDraw_double 
                    db       -$27, $01, -$01 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $49 
                    dw       SMVB_startDraw_double 
                    db       $4E, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$49 
                    dw       SMVB_continue_yd4_double 
                    db       -$4E, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$5D 
                    dw       SMVB_startMove_double 
                    db       $00, $01, -$49 
                    dw       SMVB_startDraw_double 
                    db       $28, $01, -$28 
                    dw       SMVB_startMove_single 
                    db       $00, $00, $00 
                    dw       SMVB_lastMove_rts_stay 

UnkownList 
                    db       -$71, $01, $6C 
                    dw       SMVB_continue_yd4_double 
                    db       $1A, $01, $0A 
                    dw       SMVB_startDraw_single 
                    db       $14, $01, $2B 
                    dw       SMVB_continue7_single 
                    db       -$0E, $01, $24 
                    db       -$17, $01, $0C 
                    db       -$1E, $01, -$08 
                    db       -$0C, $01, -$22 
                    db       -$20, $01, -$0A 
                    db       -$3B, $01, $00 
                    db       -$24, $01, $0A 
                    dw       SMVB_startMove_single 
                    db       $08, $01, $03 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$03 
                    dw       SMVB_continue7_single 
                    db       $04, $01, -$06 
                    db       -$03, $01, -$08 
                    db       -$07, $01, -$02 
                    db       -$07, $01, $02 
                    db       -$03, $01, $08 
                    db       $02, $01, $07 
                    db       $fe, $00, $00 
                    dw       SMVB_lastMove_rts_stay 

PlayerList 
                    db       -$1C, $01, $44 
                    dw       SMVB_continue_double 
                    db       -$0A, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $18 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, $00 
                    db       $00, $01, -$18 
                    db       $27, $01, $31 
                    dw       SMVB_startMove_single 
                    db       -$09, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$19 
                    dw       SMVB_continue7_single 
                    db       -$14, $01, $00 
                    db       $00, $01, $25 
                    db       -$30, $01, $00 
                    db       -$05, $01, -$0F 
                    db       -$14, $01, $1B 
                    db       -$22, $01, $00 
                    db       -$0E, $01, -$18 
                    dw       SMVB_continue7_single 
                    db       -$39, $01, $00 
                    db       $00, $01, -$3D 
                    db       $05, $01, $00 
                    db       $0F, $01, $11 
                    db       $00, $01, $13 
                    db       $27, $01, $00 
                    db       $00, $01, -$08 
                    dw       SMVB_continue7_single 
                    db       -$15, $01, -$15 
                    db       $23, $01, -$2C 
                    db       $10, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$14, $01, $00 
                    db       $00, $01, -$18 
                    db       $14, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, -$0B 
                    db       $13, $01, $00 
                    db       $00, $01, $0B 
                    db       $41, $01, $00 
                    db       $0F, $01, $12 
                    db       $00, $01, $06 
                    db       -$50, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue7_single 
                    db       $1E, $01, $00 
                    db       $00, $01, $25 
                    db       $27, $01, $00 
                    db       $00, $01, $0C 
                    db       $0F, $01, $00 
                    db       $0E, $01, $0F 
                    db       $00, $01, $22 
                    dw       SMVB_continue_single 
                    db       -$64, $01, -$48 
                    dw       SMVB_startMove_yd4_single 
                    db       $14, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $30 
                    dw       SMVB_continue4_single 
                    db       -$06, $01, $00 
                    db       -$0E, $01, -$11 
                    db       $00, $01, -$1E 
                    db       -$24, $01, $00 
                    dw       SMVB_startMove_single 
                    db       $10, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $18 
                    dw       SMVB_continue4_single 
                    db       -$1E, $01, $00 
                    db       $00, $01, -$07 
                    db       $0E, $01, -$11 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

HomeList 
                    db       $6C, $01, $08 
                    dw       SMVB_continue_tripple 
                    db       -$64, $01, -$7C 
                    dw       SMVB_startDraw_yd4_double 
                    db       -$08, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, $56 
                    dw       SMVB_continue_hex 
                    db       $08, $01, $00 
                    dw       SMVB_continue_single 
                    db       $64, $01, -$7E 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$14 
                    dw       SMVB_continue_yd4_single 
                    db       -$5A, $01, $02 
                    dw       SMVB_startMove_yd4_hex 
                    db       $00, $01, $5C 
                    dw       SMVB_startDraw_tripple 
                    db       $70, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$5C 
                    dw       SMVB_continue_yd4_hex 
                    db       -$70, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, $44 
                    dw       SMVB_continue_double 
                    db       $70, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, $46 
                    dw       SMVB_continue_yd4_double 
                    db       -$70, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$1C, $01, $68 
                    dw       SMVB_startMove_quadro 
                    db       $00, $01, -$68 
                    dw       SMVB_startDraw_octo 
                    db       $6E, $01, $00 
                    dw       SMVB_continue_quadro 
                    db       $53, $01, $67 
                    dw       SMVB_continue_quadro 
                    db       -$53, $01, $69 
                    dw       SMVB_continue_yd4_quadro 
                    db       -$6E, $01, $00 
                    dw       SMVB_continue_quadro 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

StaircaseList 
                    db       $6A, $01, -$42 
                    dw       SMVB_continue_single 
                    db       $00, $01, $42 
                    dw       SMVB_startDraw_yd4_double 
                    db       $14, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$42 
                    dw       SMVB_continue_double 
                    db       -$14, $01, $00 
                    dw       SMVB_continue_single 
                    db       -$2B, $01, -$1B 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $5D 
                    dw       SMVB_startDraw_double 
                    db       $13, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$5D 
                    dw       SMVB_continue_double 
                    db       -$13, $01, $00 
                    dw       SMVB_continue_single 
                    db       $5D, $01, $74 
                    dw       SMVB_startMove_double 
                    db       -$6E, $01, $00 
                    dw       SMVB_startDraw_yd4_double 
                    db       $00, $01, -$5D 
                    dw       SMVB_continue_tripple 
                    db       $6E, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, $5D 
                    dw       SMVB_continue_yd4_tripple 
                    db       -$09, $01, -$4A 
                    dw       SMVB_startMove_single 
                    db       -$60, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $1B 
                    dw       SMVB_continue3_single 
                    db       -$27, $01, $00 
                    db       $00, $01, $15 
                    db       $43, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$30 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$4D, $01, -$70 
                    dw       SMVB_startMove_yd4_single 
                    db       -$13, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $55 
                    dw       SMVB_continue3_single 
                    db       $13, $01, $00 
                    db       $00, $01, -$55 
                    db       $0A, $01, $00 
                    dw       SMVB_startMove_single 
                    db       $43, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $2E 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$0A, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $00, $01, $13 
                    db       -$39, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$41 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $43, $01, -$4A 
                    dw       SMVB_startMove_single 
                    db       -$43, $01, $00 
                    dw       SMVB_startDraw_yd4_double 
                    db       $00, $01, $1B 
                    dw       SMVB_continue4_single 
                    db       $27, $01, $00 
                    db       $00, $01, $1B 
                    db       $60, $01, $00 
                    db       $00, $01, -$36 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

GnollList 
                    db       $5E, $01, -$2E 
                    dw       SMVB_continue_double 
                    db       $05, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$33 
                    dw       SMVB_continue6_single 
                    db       -$0A, $01, -$11 
                    db       -$1F, $01, $00 
                    db       $00, $01, $22 
                    db       -$14, $01, $00 
                    db       -$09, $01, -$22 
                    db       -$3E, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$08, $01, $10 
                    dw       SMVB_continue7_single 
                    db       -$35, $01, $01 
                    db       $00, $01, $3E 
                    db       $11, $01, -$07 
                    db       $04, $01, -$14 
                    db       $28, $01, $00 
                    db       $07, $01, $13 
                    db       $08, $01, $11 
                    dw       SMVB_continue3_single 
                    db       $10, $01, $0E 
                    db       $00, $01, $54 
                    db       -$5C, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $10 
                    dw       SMVB_continue2_single 
                    db       $5C, $01, $00 
                    db       $00, $01, $11 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $14, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, -$11 
                    db       $14, $01, $00 
                    db       $00, $01, $11 
                    db       $14, $01, $00 
                    db       $0A, $01, -$11 
                    db       $00, $01, -$10 
                    db       -$0A, $01, -$10 
                    dw       SMVB_continue7_single 
                    db       -$14, $01, $00 
                    db       $00, $01, $10 
                    db       -$14, $01, $00 
                    db       $00, $01, -$54 
                    db       $0B, $01, -$11 
                    db       $09, $01, -$11 
                    db       $0A, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $44 
                    db       $0A, $01, $00 
                    db       $00, $01, -$33 
                    db       $0A, $01, $33 
                    db       $15, $01, $00 
                    db       $00, $01, -$44 
                    db       $05, $01, $00 
                    dw       SMVB_continue_single 
                    db       -$09, $01, -$22 
                    dw       SMVB_startMove_single 
                    db       $05, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $11 
                    dw       SMVB_continue4_single 
                    db       -$0A, $01, $00 
                    db       $00, $01, -$11 
                    db       $05, $01, $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

KoboldList 
                    db       $41, $01, -$39 
                    dw       SMVB_continue_double 
                    db       $0F, $01, $06 
                    dw       SMVB_startDraw_single 
                    db       $0B, $01, $0B 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $25 
                    db       -$0C, $01, $0B 
                    db       $00, $01, $2A 
                    db       -$19, $01, $00 
                    db       -$0D, $01, -$24 
                    db       $00, $01, $24 
                    db       -$0D, $01, -$04 
                    dw       SMVB_continue7_single 
                    db       -$01, $01, -$36 
                    db       -$0B, $01, $09 
                    db       -$01, $01, $0E 
                    db       -$0A, $01, $04 
                    db       $00, $01, $35 
                    db       $29, $01, $36 
                    db       $09, $01, $0E 
                    dw       SMVB_continue7_single 
                    db       -$16, $01, -$0D 
                    db       -$2A, $01, -$35 
                    db       $00, $01, -$37 
                    db       -$0F, $01, -$04 
                    db       -$0A, $01, -$1F 
                    db       -$19, $01, $00 
                    db       $00, $01, $0F 
                    dw       SMVB_continue7_single 
                    db       -$0D, $01, $04 
                    db       $00, $01, -$38 
                    db       $15, $01, $06 
                    db       $0A, $01, -$0B 
                    db       $0D, $01, -$07 
                    db       $1F, $01, -$04 
                    db       $0B, $01, $0F 
                    dw       SMVB_continue5_single 
                    db       $02, $01, $0E 
                    db       $07, $01, -$01 
                    db       $02, $01, -$11 
                    db       $26, $01, $00 
                    db       $0C, $01, $36 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$12 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $00, $01, $12 
                    db       $0C, $01, $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

SkeletonList 
                    db       $6A, $01, -$39 
                    dw       SMVB_continue_double 
                    db       -$0D, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue_double 
                    db       $0C, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $01, $01, $13 
                    db       -$0D, $01, $00 
                    db       $00, $01, -$13 
                    db       -$0E, $01, -$05 
                    db       $00, $01, -$08 
                    db       $0E, $01, -$05 
                    db       $0C, $01, -$01 
                    dw       SMVB_continue2_single 
                    db       $01, $01, -$11 
                    db       -$3D, $01, $10 
                    dw       SMVB_startMove_yd4_single 
                    db       -$5F, $01, $09 
                    dw       SMVB_startDraw_single 
                    db       $60, $01, $0A 
                    dw       SMVB_continue_single 
                    db       -$1D, $01, $27 
                    dw       SMVB_startMove_yd4_single 
                    db       $07, $01, -$25 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$02 
                    dw       SMVB_continue_single 
                    db       -$01, $01, -$14 
                    dw       SMVB_startMove_single 
                    db       -$04, $01, -$01 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, -$24 
                    dw       SMVB_continue_single 
                    db       -$2B, $01, -$59 
                    dw       SMVB_startMove_single 
                    db       $09, $01, $13 
                    dw       SMVB_startDraw_single 
                    db       $04, $01, $11 
                    dw       SMVB_continue3_single 
                    db       -$0F, $01, -$0A 
                    db       -$0B, $01, -$08 
                    db       $08, $01, $16 
                    dw       SMVB_startMove_single 
                    db       $12, $01, -$05 
                    dw       SMVB_startDraw_single 
                    db       $0C, $01, $04 
                    dw       SMVB_continue7_single 
                    db       $18, $01, $11 
                    db       $1A, $01, $1C 
                    db       $00, $01, $2A 
                    db       $08, $01, -$02 
                    db       $24, $01, -$1C 
                    db       $1A, $01, $00 
                    db       $0C, $01, $0D 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $37 
                    db       -$0B, $01, $0E 
                    db       -$1A, $01, $00 
                    db       -$23, $01, -$1E 
                    db       -$0A, $01, -$04 
                    db       $00, $01, $25 
                    db       -$1B, $01, $15 
                    dw       SMVB_continue4_single 
                    db       -$0F, $01, $24 
                    db       $11, $01, $11 
                    db       $14, $01, $0F 
                    db       -$0B, $01, $13 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, -$0C 
                    dw       SMVB_startDraw_yEqx_single   ; y is -$0C 
                    db       $04, $01, -$17 
                    dw       SMVB_continue2_single 
                    db       -$0C, $01, $08 
                    db       -$08, $01, -$52 
                    dw       SMVB_startMove_single 
                    db       $03, $01, -$1E 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$03 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$15 
                    dw       SMVB_startMove_single 
                    db       -$05, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, -$1E 
                    dw       SMVB_continue_single 
                    db       -$11, $01, $02 
                    dw       SMVB_startMove_single 
                    db       $05, $01, $1E 
                    dw       SMVB_startDraw_single 
                    db       -$26, $01, -$03 
                    dw       SMVB_startMove_single 
                    db       -$23, $01, -$19 
                    dw       SMVB_startDraw_single 
                    db       -$28, $01, -$0F 
                    dw       SMVB_continue_single 
                    db       $0E, $01, -$2A 
                    dw       SMVB_startMove_single 
                    db       -$08, $01, $07 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, $0E 
                    dw       SMVB_continue5_single 
                    db       $00, $01, $10 
                    db       $2C, $01, $09 
                    db       $28, $01, $1B 
                    db       $05, $01, $0B 
                    db       $07, $01, -$03 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$12 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was -$03, now SHIFT 
                    db       $13, $01, $27 
                    dw       SMVB_startMove_single 
                    db       -$05, $01, $1B 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       $03, $01, -$12 
                    dw       SMVB_startDraw_single 
                    db       -$5E, $01, $1D 
                    dw       SMVB_startMove_yd4_single 
                    db       $2B, $01, -$0B 
                    dw       SMVB_startDraw_single 
                    db       $1F, $01, -$15 
                    dw       SMVB_continue_single 
                    db       $0D, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $08 
                    dw       SMVB_startDraw_single 
                    db       -$22, $01, $18 
                    dw       SMVB_continue5_single 
                    db       -$2F, $01, $05 
                    db       $00, $01, $13 
                    db       $05, $01, $0E 
                    db       $06, $01, $07 
                    db       $5C, $01, -$32 
                    dw       SMVB_startMove_double 
                    db       $02, $01, $0E 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$02, $01, $0F 
                    dw       SMVB_continue_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

HobbitList 
                    db       $27, $01, $27 
                    dw       SMVB_continue_yEqx_single    ; y is $27 
                    db       $0C, $01, $1E 
                    dw       SMVB_startDraw_single 
                    db       $0D, $01, -$1C 
                    dw       SMVB_continue_single 
                    db       -$0C, $01, $1A 
                    dw       SMVB_startMove_single 
                    db       $08, $01, -$62 
                    dw       SMVB_startDraw_single 
                    db       $06, $01, -$16 
                    dw       SMVB_startMove_single 
                    db       $4D, $01, $08 
                    dw       SMVB_startDraw_single 
                    db       -$0A, $01, $1B 
                    dw       SMVB_continue_yd4_single 
                    db       -$1B, $01, $19 
                    dw       SMVB_continue5_single 
                    db       -$47, $01, -$09 
                    db       -$15, $01, -$17 
                    db       -$04, $01, -$24 
                    db       $2B, $01, $06 
                    db       $14, $01, -$1D 
                    dw       SMVB_startMove_single 
                    db       $0F, $01, -$04 
                    dw       SMVB_startDraw_single 
                    db       $04, $01, -$0F 
                    dw       SMVB_continue7_single 
                    db       $0E, $01, $00 
                    db       $04, $01, $0E 
                    db       $12, $01, -$02 
                    db       $00, $01, $11 
                    db       $0F, $01, -$12 
                    db       $0A, $01, -$01 
                    db       $00, $01, -$1B 
                    dw       SMVB_continue7_single 
                    db       $08, $01, $00 
                    db       $00, $01, $17 
                    db       $09, $01, $00 
                    db       $00, $01, -$2D 
                    db       -$06, $01, -$10 
                    db       -$18, $01, -$02 
                    db       -$2B, $01, $0F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $29 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $15 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, $26 
                    dw       SMVB_continue7_single 
                    db       $03, $01, $10 
                    db       -$0C, $01, -$07 
                    db       -$0E, $01, $05 
                    db       $0A, $01, -$0F 
                    db       $03, $01, -$28 
                    db       $09, $01, -$22 
                    db       -$1A, $01, -$1F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $3D 
                    dw       SMVB_startDraw_single 
                    db       $0F, $01, $03 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, -$0B 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $1C 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $0D 
                    db       $00, $01, -$60 
                    db       $16, $01, $12 
                    db       $18, $01, -$0C 
                    db       $0A, $01, -$0F 
                    db       $28, $01, $03 
                    db       $06, $01, $0E 
                    dw       SMVB_continue7_single 
                    db       $0E, $01, $00 
                    db       $00, $01, -$17 
                    db       $0D, $01, -$0A 
                    db       $32, $01, $00 
                    db       $09, $01, $1D 
                    db       $00, $01, $2B 
                    db       -$05, $01, $0D 
                    dw       SMVB_continue_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

ZombieList 
                    db       $36, $01, -$5E 
                    dw       SMVB_continue_single 
                    db       -$59, $01, -$04 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$2B 
                    dw       SMVB_continue4_single 
                    db       $0F, $01, $00 
                    db       $04, $01, $15 
                    db       $46, $01, $06 
                    db       $00, $01, $14 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $20 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$4A, $01, $08 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $14 
                    dw       SMVB_continue4_single 
                    db       -$0F, $01, $00 
                    db       $00, $01, -$29 
                    db       $59, $01, -$06 
                    db       $00, $01, $13 
                    dw       SMVB_continue_yd4_single 
                    db       $0E, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$20 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $16, $01, $00 
                    dw       SMVB_continue4_single 
                    db       $16, $01, $11 
                    db       $00, $01, $13 
                    db       -$2C, $01, -$04 
                    db       $22, $01, -$1E 
                    dw       SMVB_startMove_single 
                    db       -$07, $01, -$0E 
                    dw       SMVB_startDraw_single 
                    db       -$1C, $01, $04 
                    dw       SMVB_continue3_single 
                    db       $00, $01, -$0C 
                    db       $3B, $01, -$03 
                    db       $00, $01, -$12 
                    dw       SMVB_continue_yd4_single 
                    db       -$31, $01, -$28 
                    dw       SMVB_continue7_single 
                    db       -$17, $01, -$0C 
                    db       $0E, $01, -$03 
                    db       $00, $01, -$12 
                    db       $0E, $01, -$03 
                    db       $02, $01, $15 
                    db       $3A, $01, $2A 
                    db       -$01, $01, $1D 
                    dw       SMVB_continue_yd4_single 
                    db       -$26, $01, $1C 
                    dw       SMVB_continue_single 
                    db       $71, $01, -$25 
                    dw       SMVB_startMove_single 
                    db       -$0E, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $17 
                    dw       SMVB_continue2_single 
                    db       $0E, $01, -$17 
                    db       -$16, $01, $22 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, -$10 
                    dw       SMVB_startDraw_single 
                    db       -$08, $01, -$04 
                    dw       SMVB_continue5_single 
                    db       $00, $01, $39 
                    db       $07, $01, -$05 
                    db       $0D, $01, -$11 
                    db       $00, $01, -$0D 
                    db       $09, $01, $19 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $17 
                    dw       SMVB_startDraw_single 
                    db       $0E, $01, $00 
                    dw       SMVB_continue2_single 
                    db       -$0E, $01, -$17 
                    db       $1E, $01, $12 
                    dw       SMVB_startMove_single 
                    db       -$17, $01, $11 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$1F, $01, $00 
                    dw       SMVB_continue5_single 
                    db       -$15, $01, -$11 
                    db       -$05, $01, -$1A 
                    db       -$0C, $01, $02 
                    db       $04, $01, $2E 
                    db       -$3C, $01, $2E 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue6_single 
                    db       -$0B, $01, -$08 
                    db       -$03, $01, -$0D 
                    db       -$0D, $01, -$03 
                    db       $16, $01, -$0B 
                    db       $33, $01, -$29 
                    db       $00, $01, -$29 
                    dw       SMVB_continue_yd4_single 
                    db       -$13, $01, -$05 
                    dw       SMVB_continue7_single 
                    db       $19, $01, -$14 
                    db       $0D, $01, -$01 
                    db       $09, $01, -$10 
                    db       $15, $01, -$11 
                    db       $1F, $01, $00 
                    db       $17, $01, $11 
                    db       $0E, $01, $12 
                    dw       SMVB_continue3_single 
                    db       $00, $01, $25 
                    db       -$0E, $01, $12 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

OrcList 
                    db       $55, $01, -$3F 
                    dw       SMVB_continue_double 
                    db       $0D, $01, $05 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$07, $01, $15 
                    dw       SMVB_continue3_single 
                    db       -$09, $01, -$07 
                    db       $03, $01, -$13 
                    db       -$49, $01, $01 
                    dw       SMVB_startMove_yd4_single 
                    db       -$0C, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       $01, $01, $27 
                    dw       SMVB_continue7_single 
                    db       -$12, $01, -$05 
                    db       $05, $01, $1B 
                    db       $0D, $01, $00 
                    db       $00, $01, $15 
                    db       $0E, $01, $00 
                    db       $00, $01, -$15 
                    db       $53, $01, -$06 
                    dw       SMVB_continue_single 
                    db       -$53, $01, -$10 
                    dw       SMVB_continue_yd4_single 
                    db       -$02, $01, -$1F 
                    dw       SMVB_continue2_single 
                    db       $06, $01, -$24 
                    db       -$12, $01, $12 
                    dw       SMVB_startMove_single 
                    db       -$15, $01, -$0B 
                    dw       SMVB_startDraw_single 
                    db       -$05, $01, -$17 
                    dw       SMVB_continue7_single 
                    db       -$10, $01, $04 
                    db       -$0C, $01, -$09 
                    db       -$05, $01, $1A 
                    db       -$0A, $01, -$01 
                    db       $00, $01, -$3B 
                    db       $14, $01, $07 
                    db       $16, $01, -$07 
                    dw       SMVB_continue7_single 
                    db       $0B, $01, -$0A 
                    db       $1F, $01, -$02 
                    db       $0D, $01, $0C 
                    db       $03, $01, $13 
                    db       $09, $01, $02 
                    db       $10, $01, -$10 
                    db       $28, $01, -$05 
                    dw       SMVB_continue7_single 
                    db       $0F, $01, $15 
                    db       $00, $01, $28 
                    db       -$0D, $01, $04 
                    db       -$07, $01, $2C 
                    db       -$10, $01, -$0E 
                    db       -$07, $01, -$0E 
                    db       -$0D, $01, -$07 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $1C 
                    db       -$0A, $01, -$06 
                    db       -$05, $01, -$26 
                    db       -$0D, $01, $00 
                    db       -$01, $01, $10 
                    db       -$0B, $01, $07 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

FighterList 
                    db       $5B, $01, -$31 
                    dw       SMVB_continue_double 
                    db       -$0A, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$18 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, $00 
                    db       $00, $01, $18 
                    db       $28, $01, -$31 
                    dw       SMVB_startMove_single 
                    db       -$0A, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $19 
                    dw       SMVB_continue7_single 
                    db       -$14, $01, $00 
                    db       $00, $01, -$25 
                    db       -$31, $01, $00 
                    db       -$05, $01, $0F 
                    db       -$14, $01, -$1B 
                    db       -$21, $01, $00 
                    db       -$0E, $01, $18 
                    dw       SMVB_continue7_single 
                    db       -$3A, $01, $00 
                    db       $00, $01, $3D 
                    db       $05, $01, $00 
                    db       $0F, $01, -$11 
                    db       $00, $01, -$12 
                    db       $28, $01, $00 
                    db       $00, $01, $08 
                    dw       SMVB_continue7_single 
                    db       -$15, $01, $15 
                    db       $23, $01, $2C 
                    db       $10, $01, $00 
                    db       $00, $01, $0C 
                    db       -$14, $01, $00 
                    db       $00, $01, $18 
                    db       $14, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $0C 
                    db       $13, $01, $00 
                    db       $00, $01, -$0C 
                    db       $41, $01, $00 
                    db       $0F, $01, -$12 
                    db       $00, $01, -$06 
                    db       -$50, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$0C 
                    dw       SMVB_continue7_single 
                    db       $1E, $01, $00 
                    db       $00, $01, -$25 
                    db       $28, $01, $00 
                    db       $00, $01, -$0C 
                    db       $0F, $01, $00 
                    db       $0F, $01, -$0F 
                    db       $00, $01, -$22 
                    dw       SMVB_continue_single 
                    db       -$63, $01, $48 
                    dw       SMVB_startMove_yd4_single 
                    db       $14, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$30 
                    dw       SMVB_continue4_single 
                    db       -$06, $01, $00 
                    db       -$0E, $01, $11 
                    db       $00, $01, $1F 
                    db       -$23, $01, $00 
                    dw       SMVB_startMove_single 
                    db       $10, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$18 
                    dw       SMVB_continue4_single 
                    db       -$1E, $01, $00 
                    db       $00, $01, $07 
                    db       $0E, $01, $11 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

MummyList 
                    db       $69, $01, -$18 
                    dw       SMVB_continue_double 
                    db       -$4C, $01, -$49 
                    dw       SMVB_startDraw_yd4_single 
                    db       $07, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       $4D, $01, $4A 
                    dw       SMVB_startDraw_single 
                    db       $18, $01, -$23 
                    dw       SMVB_startMove_yd4_single 
                    db       -$4B, $01, -$4B 
                    dw       SMVB_startDraw_yd4_yEqx_single ; y is -$4B 
                    db       $08, $01, -$06 
                    dw       SMVB_startMove_single 
                    db       $3E, $01, $3E 
                    dw       SMVB_startDraw_yEqx_single   ; y is $3E 
                    db       -$5F, $01, -$29 
                    dw       SMVB_startMove_yd4_single 
                    db       -$4A, $01, $5C 
                    dw       SMVB_startDraw_single 
                    db       $0C, $01, $01 
                    dw       SMVB_startMove_single 
                    db       $3F, $01, -$4D 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$16 
                    dw       SMVB_continue_yd4_single 
                    db       -$0E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, -$21 
                    db       -$18, $01, -$0F 
                    db       -$18, $01, -$1E 
                    db       -$07, $01, -$1A 
                    db       -$04, $01, $0D 
                    db       -$1C, $01, -$01 
                    db       $1B, $01, $13 
                    dw       SMVB_continue4_single 
                    db       $19, $01, $29 
                    db       $14, $01, $11 
                    db       $00, $01, $0F 
                    db       -$45, $01, -$01 
                    dw       SMVB_continue_yd4_single 
                    db       -$33, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$04, $01, -$20 
                    db       -$0D, $01, $00 
                    db       $00, $01, $43 
                    db       $1F, $01, -$03 
                    db       $3A, $01, $0E 
                    db       $08, $01, $0B 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $1B 
                    dw       SMVB_startDraw_single 
                    db       -$0E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$09, $01, -$12 
                    db       -$2B, $01, $08 
                    db       -$1F, $01, -$07 
                    db       $00, $01, $41 
                    db       $0D, $01, $00 
                    db       $09, $01, -$20 
                    db       $73, $01, $02 
                    dw       SMVB_continue_single 
                    db       $20, $01, $3A 
                    dw       SMVB_startMove_yd4_single 
                    db       -$10, $01, -$1F 
                    dw       SMVB_startDraw_single 
                    db       $29, $01, $32 
                    dw       SMVB_startMove_single 
                    db       -$19, $01, -$13 
                    dw       SMVB_startDraw_yd4_single 
                    db       $40, $01, $17 
                    dw       SMVB_startMove_single 
                    db       -$27, $01, -$04 
                    dw       SMVB_startDraw_yd4_single 
                    db       $0C, $01, $17 
                    dw       SMVB_startMove_single 
                    db       $1B, $01, -$13 
                    dw       SMVB_startDraw_single 
                    db       -$12, $01, $1F 
                    dw       SMVB_startMove_single 
                    db       -$09, $01, -$0C 
                    dw       SMVB_startDraw_single 
                    db       -$0B, $01, $23 
                    dw       SMVB_startMove_single 
                    db       $14, $01, -$17 
                    dw       SMVB_startDraw_single 
                    db       -$10, $01, $01 
                    dw       SMVB_startMove_single 
                    db       -$04, $01, $16 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, -$26 
                    dw       SMVB_startMove_single 
                    db       $0B, $01, $10 
                    dw       SMVB_startDraw_single 
                    db       -$29, $01, -$2B 
                    dw       SMVB_startMove_yd4_single 
                    db       $1E, $01, $1B 
                    dw       SMVB_startDraw_single 
                    db       -$33, $01, -$3D 
                    dw       SMVB_startMove_yd4_single 
                    db       $15, $01, $22 
                    dw       SMVB_startDraw_single 
                    db       -$15, $01, -$46 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $24 
                    dw       SMVB_startDraw_single 
                    db       $10, $01, -$09 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$1D 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$0E 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$01, $01, -$13 
                    dw       SMVB_startDraw_single 
                    db       $12, $01, -$03 
                    dw       SMVB_continue_single 
                    db       $0A, $01, $07 
                    dw       SMVB_startMove_single 
                    db       $01, $01, $1D 
                    dw       SMVB_startDraw_single 
                    db       $0C, $01, $11 
                    dw       SMVB_continue7_single 
                    db       $1B, $01, $02 
                    db       $2C, $01, -$1C 
                    db       -$01, $01, -$45 
                    db       -$2B, $01, -$28 
                    db       -$1B, $01, $04 
                    db       -$0C, $01, $0F 
                    db       -$03, $01, $24 
                    dw       SMVB_continue_single 
                    db       -$5C, $01, $22 
                    dw       SMVB_startMove_yd4_single 
                    db       $31, $01, -$3D 
                    dw       SMVB_startDraw_single 
                    db       -$0A, $01, -$06 
                    dw       SMVB_startMove_yd4_single 
                    db       -$33, $01, $3E 
                    dw       SMVB_startDraw_single 
                    db       $03, $01, -$1A 
                    dw       SMVB_startMove_single 
                    db       -$10, $01, -$28 
                    dw       SMVB_startDraw_single 
                    db       -$0B, $01, $02 
                    dw       SMVB_startMove_single 
                    db       $0B, $01, $20 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

ElfList 
                    db       $38, $01, $4C 
                    dw       SMVB_continue_double 
                    db       $09, $01, $15 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$12 
                    dw       SMVB_continue_yStays_single  ; y is $09 
                    db       -$08, $01, $0F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$45 
                    dw       SMVB_startDraw_double 
                    db       -$0A, $01, -$09 
                    dw       SMVB_startMove_single 
                    db       -$5C, $01, -$01 
                    dw       SMVB_startDraw_yd4_single 
                    db       $0B, $01, $14 
                    dw       SMVB_continue4_single 
                    db       $0D, $01, $0F 
                    db       -$02, $01, $12 
                    db       $02, $01, $0D 
                    db       $4A, $01, $00 
                    dw       SMVB_continue_double 
                    db       $03, $01, -$0B 
                    dw       SMVB_continue_yd4_single 
                    db       -$04, $01, -$16 
                    dw       SMVB_continue3_single 
                    db       $13, $01, -$0B 
                    db       $10, $01, -$11 
                    db       -$5C, $01, -$03 
                    dw       SMVB_continue_yd4_single 
                    db       $23, $01, -$4A 
                    dw       SMVB_startMove_single 
                    db       -$05, $01, -$11 
                    dw       SMVB_startDraw_single 
                    db       -$08, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $04, $01, $11 
                    db       -$1A, $01, -$11 
                    dw       SMVB_startMove_single 
                    db       -$05, $01, $36 
                    dw       SMVB_startDraw_single 
                    db       $08, $01, $3E 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$10 
                    db       -$04, $01, $16 
                    db       -$0F, $01, -$17 
                    db       $09, $01, -$06 
                    db       -$02, $01, -$1D 
                    db       $02, $01, -$34 
                    db       -$01, $01, $07 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, -$08 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$63, $01, $07 
                    dw       SMVB_continue5_single 
                    db       -$04, $01, $0F 
                    db       -$08, $01, $05 
                    db       $00, $01, -$26 
                    db       $35, $01, $01 
                    db       -$03, $01, $0A 
                    dw       SMVB_startMove_yd4_single 
                    db       $06, $01, -$0C 
                    dw       SMVB_startDraw_single 
                    db       $21, $01, -$02 
                    dw       SMVB_continue4_single 
                    db       $00, $01, -$09 
                    db       -$21, $01, -$08 
                    db       -$05, $01, -$0D 
                    db       $01, $01, $09 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, $02 
                    dw       SMVB_startDraw_yd4_single 
                    db       $0A, $01, -$14 
                    dw       SMVB_startMove_single 
                    db       $63, $01, $0A 
                    dw       SMVB_startDraw_single 
                    db       -$64, $01, -$18 
                    dw       SMVB_startMove_yd4_single 
                    db       $01, $01, $0D 
                    dw       SMVB_startDraw_single 
                    db       -$0B, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       $09, $01, $05 
                    dw       SMVB_startDraw_single 
                    db       -$09, $01, $20 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$26 
                    dw       SMVB_startDraw_single 
                    db       $71, $01, $0A 
                    dw       SMVB_startMove_double 
                    db       -$08, $01, $10 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$05, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $04, $01, -$11 
                    db       -$12, $01, $0F 
                    dw       SMVB_startMove_single 
                    db       -$11, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$01, $01, $15 
                    dw       SMVB_continue7_single 
                    db       $12, $01, -$02 
                    db       $01, $01, $0E 
                    db       $24, $01, $08 
                    db       $0C, $01, -$1E 
                    db       -$0C, $01, -$1F 
                    db       -$1F, $01, $04 
                    db       -$07, $01, $0E 
                    dw       SMVB_continue_single 
                    db       -$51, $01, -$0D 
                    dw       SMVB_startMove_yd4_single 
                    db       $06, $01, -$12 
                    dw       SMVB_startDraw_single 
                    db       $16, $01, -$04 
                    dw       SMVB_continue3_single 
                    db       $13, $01, -$05 
                    db       -$07, $01, $17 
                    db       $20, $01, $11 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$4A 
                    dw       SMVB_startDraw_single 
                    db       $11, $01, $00 
                    dw       SMVB_continue4_single 
                    db       $00, $01, -$15 
                    db       -$21, $01, $06 
                    db       $00, $01, $47 
                    db       -$3A, $01, $0A 
                    dw       SMVB_continue_yd4_single 
                    db       $02, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, $25 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

GhoulList 
                    db       $77, $01, -$47 
                    dw       SMVB_continue_single 
                    db       -$0C, $01, -$0C 
                    dw       SMVB_startDraw_yd4_yEqx_single ; y is -$0C 
                    db       -$29, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $33 
                    db       -$0E, $01, $0E 
                    db       -$1B, $01, $00 
                    db       -$0C, $01, $0C 
                    db       $00, $01, $15 
                    db       -$0E, $01, $00 
                    db       $00, $01, -$2F 
                    dw       SMVB_continue7_single 
                    db       $1A, $01, -$0D 
                    db       $0E, $01, $00 
                    db       $0D, $01, -$0E 
                    db       $00, $01, -$26 
                    db       -$0D, $01, $00 
                    db       $00, $01, $0E 
                    db       -$0E, $01, $0C 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $00 
                    db       -$0E, $01, -$0C 
                    db       $00, $01, -$1B 
                    db       -$1B, $01, $00 
                    db       $00, $01, -$1A 
                    db       $29, $01, $00 
                    db       $00, $01, $27 
                    dw       SMVB_continue4_single 
                    db       $0C, $01, $00 
                    db       $0E, $01, -$1B 
                    db       $44, $01, $00 
                    db       $00, $01, -$0C 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$3B, $01, -$1F 
                    dw       SMVB_continue_yd4_single 
                    db       -$0D, $01, $00 
                    dw       SMVB_continue5_single 
                    db       -$24, $01, $11 
                    db       $10, $01, -$0F 
                    db       -$18, $01, -$0C 
                    db       $23, $01, $01 
                    db       -$1E, $01, -$14 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$0B 
                    dw       SMVB_continue7_single 
                    db       $19, $01, $15 
                    db       -$07, $01, -$1A 
                    db       $1A, $01, $1A 
                    db       $0D, $01, -$01 
                    db       $2C, $01, $10 
                    db       $28, $01, $15 
                    db       $09, $01, $1B 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $0E 
                    db       $0D, $01, $00 
                    db       $00, $01, -$0E 
                    db       $1C, $01, -$1A 
                    db       $35, $01, $00 
                    db       $0E, $01, $1A 
                    db       $00, $01, $35 
                    dw       SMVB_continue7_single 
                    db       -$0E, $01, $21 
                    db       -$33, $01, $00 
                    db       -$1C, $01, -$1A 
                    db       -$01, $01, -$12 
                    db       -$0D, $01, $00 
                    db       -$03, $01, $3A 
                    db       -$23, $01, $2D 
                    dw       SMVB_continue6_single 
                    db       -$06, $01, $21 
                    db       -$25, $01, $12 
                    db       $14, $01, -$16 
                    db       -$1D, $01, -$04 
                    db       $1E, $01, -$0A 
                    db       -$1D, $01, -$07 
                    dw       SMVB_continue_yd4_single 
                    db       $0F, $01, -$07 
                    dw       SMVB_continue5_single 
                    db       -$16, $01, -$04 
                    db       $2C, $01, -$08 
                    db       $17, $01, -$1D 
                    db       $02, $01, -$31 
                    db       $5F, $01, -$08 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $17 
                    dw       SMVB_startDraw_yd4_single 
                    db       $14, $01, $03 
                    dw       SMVB_continue3_single 
                    db       -$01, $01, -$1A 
                    db       -$13, $01, $00 
                    db       $00, $01, -$2D 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was $00, now 0 
                    db       SHITREG_POKE_VALUE, $01, $17 
                    dw       SMVB_startDraw_yStays_single ; y was $00, now SHIFT Poke 
                    db       $13, $01, $03 
                    dw       SMVB_continue3_single 
                    db       $02, $01, -$20 
                    db       -$16, $01, $05 
                    db       -$11, $01, -$04 
                    dw       SMVB_startMove_single 
                    db       $02, $01, $4D 
                    dw       SMVB_startDraw_single 
                    db       -$10, $01, -$04 
                    dw       SMVB_continue3_single 
                    db       -$0C, $01, -$35 
                    db       $1A, $01, -$14 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

DwarfList 
                    db       $44, $01, $1E 
                    dw       SMVB_continue_single 
                    db       $6A, $01, $1C 
                    dw       SMVB_startDraw_single 
                    db       $01, $01, -$1D 
                    dw       SMVB_continue_yd4_single 
                    db       -$0B, $01, -$04 
                    dw       SMVB_continue7_single 
                    db       $06, $01, -$11 
                    db       $2B, $01, $11 
                    db       -$03, $01, $10 
                    db       -$0B, $01, -$05 
                    db       $00, $01, $1B 
                    db       $0C, $01, $02 
                    db       -$01, $01, $16 
                    dw       SMVB_continue7_single 
                    db       -$0B, $01, -$03 
                    db       -$04, $01, $14 
                    db       $10, $01, $05 
                    db       -$02, $01, $14 
                    db       -$2F, $01, -$0F 
                    db       $04, $01, -$11 
                    db       $09, $01, $03 
                    dw       SMVB_continue2_single 
                    db       $03, $01, -$12 
                    db       -$6A, $01, -$19 
                    dw       SMVB_continue_yd4_single 
                    db       $63, $01, -$56 
                    dw       SMVB_startMove_single 
                    db       -$2C, $01, $05 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$15, $01, -$19 
                    dw       SMVB_continue7_single 
                    db       -$18, $01, $00 
                    db       -$0A, $01, $3A 
                    db       $05, $01, $3E 
                    db       -$0B, $01, $07 
                    db       -$0F, $01, -$0E 
                    db       $05, $01, -$1C 
                    db       -$08, $01, -$27 
                    dw       SMVB_continue2_single 
                    db       $0A, $01, -$43 
                    db       -$04, $01, $11 
                    dw       SMVB_startMove_single 
                    db       -$22, $01, -$08 
                    dw       SMVB_startDraw_single 
                    db       -$1A, $01, $10 
                    dw       SMVB_continue7_single 
                    db       -$19, $01, -$04 
                    db       $00, $01, $18 
                    db       -$0B, $01, $00 
                    db       $00, $01, -$30 
                    db       $1C, $01, -$01 
                    db       $16, $01, -$09 
                    db       -$05, $01, -$10 
                    dw       SMVB_continue7_single 
                    db       -$10, $01, -$05 
                    db       -$12, $01, -$11 
                    db       $00, $01, $19 
                    db       -$0B, $01, $00 
                    db       $00, $01, -$32 
                    db       $1C, $01, $09 
                    db       $17, $01, $03 
                    dw       SMVB_continue_single 
                    db       $0E, $01, -$08 
                    dw       SMVB_startMove_single 
                    db       $13, $01, -$08 
                    dw       SMVB_startDraw_single 
                    db       $14, $01, $04 
                    dw       SMVB_continue7_single 
                    db       $05, $01, $14 
                    db       -$03, $01, $11 
                    db       -$14, $01, $0B 
                    db       -$11, $01, -$07 
                    db       -$0A, $01, -$10 
                    db       $06, $01, -$15 
                    db       $29, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       $08, $01, -$09 
                    dw       SMVB_startDraw_single 
                    db       $0B, $01, $0E 
                    dw       SMVB_continue4_single 
                    db       $0A, $01, $23 
                    db       -$0A, $01, $21 
                    db       $0A, $01, $27 
                    db       -$15, $01, -$30 
                    dw       SMVB_startMove_single 
                    db       -$19, $01, $0C 
                    dw       SMVB_startDraw_single 
                    db       -$19, $01, -$03 
                    dw       SMVB_continue7_single 
                    db       -$0F, $01, -$19 
                    db       $04, $01, -$1F 
                    db       $0F, $01, -$11 
                    db       $1B, $01, -$03 
                    db       $17, $01, $11 
                    db       $04, $01, $1E 
                    db       -$08, $01, $14 
                    dw       SMVB_continue_single 
                    db       $38, $01, $18 
                    dw       SMVB_startMove_single 
                    db       $17, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$08, $01, $18 
                    dw       SMVB_continue3_single 
                    db       -$0F, $01, $00 
                    db       $00, $01, -$18 
                    db       -$0C, $01, $15 
                    dw       SMVB_startMove_single 
                    db       -$0E, $01, -$1F 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$17 
                    dw       SMVB_continue2_single 
                    db       $0A, $01, -$03 
                    db       $0B, $01, -$0C 
                    dw       SMVB_startMove_single 
                    db       $0D, $01, -$01 
                    dw       SMVB_startDraw_single 
                    db       $0A, $01, $1A 
                    dw       SMVB_continue3_single 
                    db       -$17, $01, $00 
                    db       $00, $01, -$19 
                    db       $09, $01, -$30 
                    dw       SMVB_startMove_single 
                    db       $14, $01, $4E 
                    dw       SMVB_startDraw_double 
                    db       $10, $01, $01 
                    dw       SMVB_continue2_single 
                    db       $04, $01, -$5A 
                    db       -$34, $01, -$4F 
                    dw       SMVB_continue_yd4_single 
                    db       -$08, $01, $0D 
                    dw       SMVB_continue_single 
                    db       $00, $01, $11 
                    dw       SMVB_startMove_single 
                    db       -$20, $01, $06 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $19 
                    dw       SMVB_continue2_single 
                    db       -$0C, $01, $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TrollList 
                    db       $48, $01, $1F 
                    dw       SMVB_continue_single 
                    db       $11, $01, -$08 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$11, $01, -$09 
                    dw       SMVB_continue7_single 
                    db       -$06, $01, -$0B 
                    db       $1A, $01, $07 
                    db       $0A, $01, $0A 
                    db       $16, $01, $00 
                    db       $0E, $01, -$0D 
                    db       $07, $01, -$13 
                    db       -$26, $01, -$08 
                    dw       SMVB_continue7_single 
                    db       -$19, $01, -$0D 
                    db       -$36, $01, $05 
                    db       -$1A, $01, $0F 
                    db       -$03, $01, $1D 
                    db       -$0C, $01, -$11 
                    db       $04, $01, -$22 
                    db       $14, $01, -$0C 
                    dw       SMVB_continue7_single 
                    db       $24, $01, -$0D 
                    db       $24, $01, $02 
                    db       -$0D, $01, -$16 
                    db       -$16, $01, -$02 
                    db       -$24, $01, -$0C 
                    db       -$14, $01, -$19 
                    db       -$02, $01, -$23 
                    dw       SMVB_continue7_single 
                    db       $09, $01, -$09 
                    db       $06, $01, $23 
                    db       $1F, $01, $0A 
                    db       $30, $01, $13 
                    db       $12, $01, -$0D 
                    db       $2A, $01, -$08 
                    db       -$03, $01, -$22 
                    dw       SMVB_continue7_single 
                    db       -$13, $01, -$0D 
                    db       -$0C, $01, $02 
                    db       -$0A, $01, $0B 
                    db       -$11, $01, $02 
                    db       -$12, $01, -$05 
                    db       $17, $01, -$06 
                    db       -$17, $01, -$11 
                    dw       SMVB_continue7_single 
                    db       $11, $01, -$07 
                    db       $29, $01, -$04 
                    db       $19, $01, $0B 
                    db       $17, $01, $18 
                    db       $09, $01, $4B 
                    db       $0D, $01, -$0C 
                    db       $18, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $0A, $01, $0C 
                    db       $00, $01, $16 
                    db       -$0A, $01, $0D 
                    db       -$18, $01, $00 
                    db       -$0D, $01, -$0C 
                    db       -$05, $01, $44 
                    db       -$17, $01, $18 
                    dw       SMVB_continue4_single 
                    db       -$19, $01, $0C 
                    db       -$3A, $01, $00 
                    db       $05, $01, -$0E 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

WraithList 
                    db       $5A, $01, -$2B 
                    dw       SMVB_continue_double 
                    db       $05, $01, -$12 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$1B, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $15, $01, $12 
                    db       -$14, $01, $24 
                    dw       SMVB_startMove_single 
                    db       $19, $01, $03 
                    dw       SMVB_startDraw_single 
                    db       -$04, $01, -$13 
                    dw       SMVB_continue2_single 
                    db       -$15, $01, $10 
                    db       -$1F, $01, -$39 
                    dw       SMVB_startMove_single 
                    db       $08, $01, -$32 
                    dw       SMVB_startDraw_single 
                    db       $0A, $01, -$06 
                    dw       SMVB_continue2_single 
                    db       $27, $01, $0C 
                    db       -$19, $01, -$13 
                    dw       SMVB_continue_yd4_single 
                    db       -$03, $01, -$0E 
                    dw       SMVB_continue2_single 
                    db       $1A, $01, -$0F 
                    db       -$32, $01, $0B 
                    dw       SMVB_continue_yd4_single 
                    db       -$10, $01, $0B 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $19 
                    db       -$0E, $01, $15 
                    db       -$18, $01, $07 
                    db       -$0C, $01, $14 
                    db       -$0E, $01, $09 
                    db       -$14, $01, -$07 
                    db       -$0C, $01, -$0D 
                    dw       SMVB_continue7_single 
                    db       -$13, $01, -$07 
                    db       -$1E, $01, $13 
                    db       -$0D, $01, $18 
                    db       $00, $01, $17 
                    db       $0B, $01, -$11 
                    db       $0C, $01, -$03 
                    db       $1E, $01, $0C 
                    dw       SMVB_continue7_single 
                    db       $0F, $01, $14 
                    db       $0A, $01, $18 
                    db       $1B, $01, $05 
                    db       $13, $01, -$0F 
                    db       $1D, $01, $0B 
                    db       $06, $01, $15 
                    db       $0B, $01, $1B 
                    dw       SMVB_continue3_single 
                    db       $13, $01, $09 
                    db       $2E, $01, $03 
                    db       -$1A, $01, -$0D 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$0A 
                    dw       SMVB_continue2_single 
                    db       $1D, $01, -$0E 
                    db       -$2D, $01, $04 
                    dw       SMVB_continue_yd4_single 
                    db       -$0E, $01, -$0C 
                    dw       SMVB_continue7_single 
                    db       $06, $01, -$39 
                    db       $0E, $01, $1D 
                    db       $18, $01, $00 
                    db       $25, $01, -$0C 
                    db       $0D, $01, -$24 
                    db       -$0D, $01, -$24 
                    db       -$25, $01, -$0B 
                    dw       SMVB_continue3_single 
                    db       -$18, $01, $00 
                    db       -$12, $01, $13 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

OgreList 
                    db       $6C, $01, -$46 
                    dw       SMVB_continue_single 
                    db       -$0E, $01, $24 
                    dw       SMVB_startDraw_yd4_single 
                    db       $07, $01, $15 
                    dw       SMVB_continue2_single 
                    db       -$03, $01, $3E 
                    db       $2A, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       $07, $01, -$47 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, -$28 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$01 
                    dw       SMVB_startMove_single 
                    db       $21, $01, $23 
                    dw       SMVB_startDraw_single 
                    db       $2B, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $19, $01, -$16 
                    db       $03, $01, -$36 
                    db       -$1C, $01, -$1E 
                    db       -$2B, $01, $00 
                    db       -$1C, $01, $23 
                    db       -$1A, $01, $00 
                    db       -$28, $01, -$35 
                    dw       SMVB_continue2_single 
                    db       $1A, $01, -$11 
                    db       -$2C, $01, $0B 
                    dw       SMVB_continue_yd4_single 
                    db       $02, $01, $0D 
                    dw       SMVB_continue6_single 
                    db       -$1C, $01, $17 
                    db       -$0E, $01, $16 
                    db       -$38, $01, $00 
                    db       -$09, $01, -$3A 
                    db       $49, $01, -$08 
                    db       $0C, $01, -$19 
                    dw       SMVB_continue_yd4_single 
                    db       $64, $01, -$0D 
                    dw       SMVB_continue_single 
                    db       $0D, $01, $33 
                    dw       SMVB_continue_yd4_single 
                    db       -$08, $01, $34 
                    dw       SMVB_continue_single 
                    db       -$43, $01, -$21 
                    dw       SMVB_startMove_yd4_single 
                    db       $1C, $01, $2F 
                    dw       SMVB_startDraw_single 
                    db       $0F, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$02, $01, $0D 
                    db       -$0C, $01, -$01 
                    db       -$1C, $01, $2F 
                    db       -$10, $01, -$35 
                    db       $10, $01, -$35 
                    db       $41, $01, $0B 
                    dw       SMVB_startMove_double 
                    db       $10, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, $17 
                    dw       SMVB_continue3_single 
                    db       -$0F, $01, $00 
                    db       $05, $01, -$17 
                    db       -$12, $01, $0B 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $24 
                    dw       SMVB_startDraw_single 
                    db       -$0F, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $07, $01, -$24 
                    db       $0E, $01, $00 
                    db       $00, $01, $18 
                    dw       SMVB_startMove_yStays_single ; y was $0E, now 0 
                    db       $06, $01, $17 
                    dw       SMVB_startDraw_single 
                    db       $10, $01, $03 
                    dw       SMVB_continue3_single 
                    db       -$07, $01, -$1A 
                    db       -$0F, $01, $00 
                    db       -$3C, $01, $58 
                    dw       SMVB_startMove_single 
                    db       $12, $01, -$06 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$0C 
                    dw       SMVB_continue7_single 
                    db       $0C, $01, $01 
                    db       -$03, $01, $0A 
                    db       $0E, $01, $01 
                    db       $05, $01, -$14 
                    db       $0E, $01, $00 
                    db       -$04, $01, $0E 
                    db       $12, $01, $01 
                    dw       SMVB_continue7_single 
                    db       $01, $01, -$0F 
                    db       $0E, $01, $00 
                    db       -$05, $01, $20 
                    db       $0D, $01, $00 
                    db       -$05, $01, $18 
                    db       -$0D, $01, $00 
                    db       -$05, $01, $25 
                    dw       SMVB_continue7_single 
                    db       -$0B, $01, -$02 
                    db       $02, $01, -$0B 
                    db       -$0F, $01, $00 
                    db       -$01, $01, $0B 
                    db       -$0F, $01, -$02 
                    db       $02, $01, -$15 
                    db       -$0E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$04, $01, $0C 
                    db       -$0D, $01, -$01 
                    db       $03, $01, -$0B 
                    db       -$0E, $01, $00 
                    db       -$03, $01, $0E 
                    db       -$25, $01, -$02 
                    db       -$04, $01, -$0A 
                    dw       SMVB_continue4_single 
                    db       -$0A, $01, -$01 
                    db       $05, $01, -$23 
                    db       $0A, $01, $00 
                    db       -$03, $01, -$20 
                    dw       SMVB_startMove_single 
                    db       -$45, $01, $00 
                    dw       SMVB_startDraw_yd4_double 
                    db       $05, $01, -$3D 
                    dw       SMVB_continue4_single 
                    db       $38, $01, $00 
                    db       $0E, $01, $17 
                    db       $1D, $01, $22 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

MinotaurList 
                    db       $66, $01, -$32 
                    dw       SMVB_continue_double 
                    db       $00, $01, $0D 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$18, $01, $04 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, -$11 
                    db       $0C, $01, $00 
                    db       $01, $01, $35 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $0B 
                    dw       SMVB_startDraw_single 
                    db       -$0C, $01, $00 
                    dw       SMVB_continue3_single 
                    db       -$0C, $01, -$10 
                    db       $18, $01, $05 
                    db       -$25, $01, -$06 
                    dw       SMVB_startMove_yd4_single 
                    db       $01, $01, -$16 
                    dw       SMVB_startDraw_single 
                    db       -$0B, $01, -$0D 
                    dw       SMVB_continue3_single 
                    db       $00, $01, $31 
                    db       $0A, $01, -$0D 
                    db       -$5A, $01, $11 
                    dw       SMVB_startMove_yd4_single 
                    db       -$27, $01, $0C 
                    dw       SMVB_startDraw_single 
                    db       -$34, $01, -$01 
                    dw       SMVB_continue7_single 
                    db       $01, $01, -$18 
                    db       $31, $01, -$01 
                    db       $12, $01, -$09 
                    db       $00, $01, -$10 
                    db       -$1D, $01, -$16 
                    db       -$1B, $01, -$21 
                    db       -$01, $01, -$14 
                    dw       SMVB_continue4_single 
                    db       $14, $01, -$01 
                    db       $17, $01, $22 
                    db       $29, $01, $0F 
                    db       $0D, $01, $00 
                    dw       SMVB_startMove_single 
                    db       $0B, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$2B 
                    dw       SMVB_continue4_single 
                    db       -$25, $01, -$08 
                    db       -$02, $01, -$1B 
                    db       $42, $01, $10 
                    db       -$04, $01, $3D 
                    dw       SMVB_continue_yd4_single 
                    db       $0B, $01, $20 
                    dw       SMVB_continue7_single 
                    db       $05, $01, -$15 
                    db       $1F, $01, -$10 
                    db       $07, $01, -$1E 
                    db       $14, $01, -$0E 
                    db       $0C, $01, -$0F 
                    db       $12, $01, $04 
                    db       $12, $01, $0E 
                    dw       SMVB_continue7_single 
                    db       $0A, $01, $43 
                    db       -$1C, $01, -$2D 
                    db       -$0D, $01, $00 
                    db       -$04, $01, $3C 
                    db       $06, $01, $3F 
                    db       $0B, $01, $0B 
                    db       $1F, $01, -$2E 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $38 
                    db       -$0F, $01, $10 
                    db       -$0E, $01, $03 
                    db       -$0F, $01, -$0E 
                    db       -$18, $01, -$09 
                    db       -$02, $01, -$1F 
                    db       -$24, $01, -$06 
                    dw       SMVB_continue4_single 
                    db       -$04, $01, -$18 
                    db       -$0A, $01, $20 
                    db       -$02, $01, $1C 
                    db       -$41, $01, $03 
                    dw       SMVB_continue_yd4_single 
                    db       -$02, $01, -$14 
                    dw       SMVB_continue2_single 
                    db       $30, $01, -$06 
                    db       -$0F, $01, $00 
                    dw       SMVB_startMove_yd4_single 
                    db       $04, $01, -$42 
                    dw       SMVB_startDraw_double 
                    db       $02, $01, -$1D 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$24 
                    dw       SMVB_startDraw_yStays_single ; y was $02, now SHIFT Poke 
                    db       -$0D, $01, $00 
                    dw       SMVB_continue2_single 
                    db       -$02, $01, $22 
                    db       -$04, $01, $53 
                    dw       SMVB_startMove_double 
                    db       $04, $01, -$45 
                    dw       SMVB_startDraw_double 
                    db       -$07, $01, $51 
                    dw       SMVB_startMove_double 
                    db       -$18, $01, $0E 
                    dw       SMVB_startDraw_single 
                    db       -$17, $01, $4B 
                    dw       SMVB_continue7_single 
                    db       $23, $01, -$36 
                    db       $05, $01, $31 
                    db       $13, $01, -$31 
                    db       $18, $01, $3F 
                    db       -$04, $01, -$54 
                    db       -$11, $01, -$0F 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 


GiantList 
                    db       -$27, $01, -$69 
                    dw       SMVB_continue_single 
                    db       $02, $01, -$20 
                    dw       SMVB_startDraw_single 
                    db       $6E, $01, $00 
                    dw       SMVB_continue_single 
                    db       $01, $01, $0C 
                    dw       SMVB_continue_yd4_single 
                    db       -$42, $01, $0A 
                    dw       SMVB_continue_yd4_double 
                    db       $7E, $01, -$16 
                    dw       SMVB_startMove_tripple 
                    db       $00, $01, $16 
                    dw       SMVB_startDraw_yd4_single 
                    db       $16, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $00, $01, -$16 
                    db       -$16, $01, $00 
                    db       -$18, $01, $1B 
                    dw       SMVB_startMove_single 
                    db       $15, $01, $06 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0A 
                    dw       SMVB_continue2_single 
                    db       -$16, $01, $00 
                    db       $1A, $01, $0C 
                    dw       SMVB_startMove_single 
                    db       $16, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $16 
                    dw       SMVB_continue3_single 
                    db       -$16, $01, $00 
                    db       $00, $01, -$15 
                    db       $1F, $01, $29 
                    dw       SMVB_startMove_single 
                    db       $0E, $01, -$15 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$18 
                    dw       SMVB_continue7_single 
                    db       $0B, $01, -$11 
                    db       -$09, $01, -$17 
                    db       $01, $01, -$19 
                    db       -$2D, $01, -$0D 
                    db       -$2F, $01, $00 
                    db       -$0E, $01, $1B 
                    db       -$16, $01, $15 
                    dw       SMVB_continue_single 
                    db       $25, $01, $35 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, -$37 
                    dw       SMVB_startDraw_single 
                    db       $16, $01, -$11 
                    dw       SMVB_continue2_single 
                    db       -$09, $01, $49 
                    db       -$4E, $01, $07 
                    dw       SMVB_startMove_yd4_single 
                    db       -$1A, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       -$38, $01, -$1D 
                    dw       SMVB_continue_single 
                    db       -$15, $01, $11 
                    dw       SMVB_startMove_single 
                    db       $1E, $01, -$25 
                    dw       SMVB_startDraw_single 
                    db       -$0A, $01, -$54 
                    dw       SMVB_continue_single 
                    db       $06, $01, -$4C 
                    dw       SMVB_startMove_single 
                    db       -$5E, $01, $0A 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$03, $01, -$0E 
                    dw       SMVB_continue7_single 
                    db       -$0F, $01, $00 
                    db       -$18, $01, -$1E 
                    db       $02, $01, $1C 
                    db       -$1C, $01, $01 
                    db       $06, $01, $16 
                    db       -$16, $01, $0A 
                    db       $18, $01, $0B 
                    dw       SMVB_continue7_single 
                    db       $02, $01, $14 
                    db       $14, $01, $00 
                    db       $12, $01, $17 
                    db       $06, $01, -$14 
                    db       $18, $01, -$02 
                    db       -$05, $01, -$17 
                    db       $5D, $01, -$14 
                    dw       SMVB_continue_single 
                    db       $3B, $01, $11 
                    dw       SMVB_startMove_single 
                    db       $16, $01, $17 
                    dw       SMVB_startDraw_single 
                    db       -$2A, $01, -$06 
                    dw       SMVB_continue_yd4_single 
                    db       -$2F, $01, $10 
                    dw       SMVB_continue_single 
                    db       -$58, $01, $08 
                    dw       SMVB_continue_double 
                    db       $00, $01, $57 
                    dw       SMVB_continue_double 
                    db       $16, $01, -$1D 
                    dw       SMVB_continue2_single 
                    db       $00, $01, -$20 
                    db       $42, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, $17 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $2C, $01, $13 
                    dw       SMVB_continue7_single 
                    db       $36, $01, $04 
                    db       $20, $01, -$1B 
                    db       $08, $01, -$2E 
                    db       $16, $01, $05 
                    db       $10, $01, $16 
                    db       $64, $01, $00 
                    db       $12, $01, -$11 
                    dw       SMVB_continue_yd4_single 
                    db       $09, $01, -$1C 
                    dw       SMVB_continue4_single 
                    db       $00, $01, -$4E 
                    db       -$0A, $01, -$18 
                    db       -$17, $01, -$09 
                    db       -$5D, $01, -$06 
                    dw       SMVB_continue_yd4_single 
                    db       -$13, $01, $1C 
                    dw       SMVB_continue5_single 
                    db       -$39, $01, -$3C 
                    db       -$50, $01, -$10 
                    db       $10, $01, $29 
                    db       $33, $01, $08 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

SpecterList 
                    db       $3E, $01, -$5C 
                    dw       SMVB_continue_single 
                    db       -$32, $01, -$05 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$0C, $01, $0C 
                    dw       SMVB_continue5_single 
                    db       -$05, $01, $13 
                    db       -$07, $01, $0D 
                    db       $16, $01, $1E 
                    db       $71, $01, $21 
                    db       $25, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $11, $01, -$14 
                    dw       SMVB_continue7_single 
                    db       $21, $01, $06 
                    db       $01, $01, $10 
                    db       -$0F, $01, $14 
                    db       $05, $01, $0E 
                    db       $10, $01, -$01 
                    db       $0C, $01, -$15 
                    db       $01, $01, -$44 
                    dw       SMVB_continue7_single 
                    db       $09, $01, -$07 
                    db       $00, $01, -$4F 
                    db       -$0B, $01, -$0B 
                    db       -$22, $01, -$03 
                    db       -$1A, $01, $0B 
                    db       $08, $01, -$1F 
                    db       $00, $01, -$22 
                    dw       SMVB_continue7_single 
                    db       -$0D, $01, -$0A 
                    db       -$26, $01, $05 
                    db       -$01, $01, $39 
                    db       -$0D, $01, -$0A 
                    db       -$2F, $01, -$13 
                    db       -$32, $01, $01 
                    db       -$0C, $01, -$0B 
                    dw       SMVB_continue7_single 
                    db       -$04, $01, -$0D 
                    db       -$08, $01, $00 
                    db       $01, $01, $2A 
                    db       $07, $01, $09 
                    db       $04, $01, $1B 
                    db       $0C, $01, $0C 
                    db       $23, $01, -$06 
                    dw       SMVB_continue2_single 
                    db       $0E, $01, $16 
                    db       $75, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       $0A, $01, -$0A 
                    dw       SMVB_startDraw_yd4_single 
                    db       $14, $01, -$01 
                    dw       SMVB_continue7_single 
                    db       $11, $01, $08 
                    db       -$01, $01, $2D 
                    db       -$0F, $01, $0B 
                    db       -$1B, $01, -$0B 
                    db       -$14, $01, -$05 
                    db       -$0C, $01, $0B 
                    db       $00, $01, $22 
                    dw       SMVB_continue7_single 
                    db       $07, $01, $0C 
                    db       -$15, $01, $04 
                    db       $00, $01, -$34 
                    db       -$0D, $01, -$0A 
                    db       -$26, $01, $00 
                    db       -$26, $01, $0F 
                    db       -$24, $01, $06 
                    dw       SMVB_continue7_single 
                    db       $02, $01, -$11 
                    db       $23, $01, -$04 
                    db       $1B, $01, -$0F 
                    db       -$04, $01, -$18 
                    db       -$17, $01, -$10 
                    db       -$21, $01, -$05 
                    db       -$04, $01, -$11 
                    dw       SMVB_continue7_single 
                    db       $33, $01, $02 
                    db       $1C, $01, $0A 
                    db       $17, $01, $0C 
                    db       $10, $01, $00 
                    db       $0A, $01, -$35 
                    db       $0F, $01, -$06 
                    db       $05, $01, $0C 
                    dw       SMVB_continue4_single 
                    db       -$0C, $01, $35 
                    db       $0A, $01, $0C 
                    db       $11, $01, $00 
                    db       $24, $01, $02 
                    dw       SMVB_startMove_single 
                    db       -$0D, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$08, $01, $07 
                    dw       SMVB_continue7_single 
                    db       -$09, $01, $02 
                    db       $01, $01, $0E 
                    db       $0D, $01, $02 
                    db       $04, $01, $06 
                    db       $0D, $01, $00 
                    db       $03, $01, -$11 
                    db       -$03, $01, -$0F 
                    dw       SMVB_continue_single 
                    db       $00, $01, $3E 
                    dw       SMVB_startMove_yStays_single ; y was -$03, now 0 
                    db       -$01, $01, $0A 
                    dw       SMVB_startDraw_single 
                    db       -$2A, $01, $00 
                    dw       SMVB_continue4_single 
                    db       $01, $01, -$13 
                    db       $14, $01, $00 
                    db       $16, $01, $08 
                    db       -$55, $01, $01 
                    dw       SMVB_startMove_yd4_single 
                    db       -$0C, $01, -$0A 
                    dw       SMVB_startDraw_single 
                    db       -$19, $01, $00 
                    dw       SMVB_continue5_single 
                    db       -$19, $01, $0A 
                    db       $07, $01, $0B 
                    db       $32, $01, $00 
                    db       $04, $01, -$0B 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

VampireList 
                    db       $4D, $01, -$1C 
                    dw       SMVB_continue_double 
                    db       -$0E, $01, $0D 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$0A, $01, $0E 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $39 
                    db       $0B, $01, $0C 
                    db       $02, $01, $2F 
                    db       -$0F, $01, -$1E 
                    db       -$16, $01, $05 
                    db       -$0B, $01, $0C 
                    db       $00, $01, -$16 
                    dw       SMVB_continue3_single 
                    db       $0B, $01, -$0C 
                    db       $00, $01, -$2F 
                    db       -$63, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$0D, $01, -$06 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$10 
                    db       $00, $01, -$29 
                    db       $0C, $01, -$05 
                    db       $0D, $01, $0C 
                    db       $32, $01, $0B 
                    db       $1D, $01, $03 
                    db       $21, $01, -$03 
                    dw       SMVB_continue3_single 
                    db       $18, $01, -$0B 
                    db       -$03, $01, -$0F 
                    db       -$54, $01, -$06 
                    dw       SMVB_continue_yd4_single 
                    db       -$27, $01, -$0B 
                    dw       SMVB_continue7_single 
                    db       -$22, $01, -$0A 
                    db       -$03, $01, -$3A 
                    db       $0D, $01, $00 
                    db       $18, $01, $17 
                    db       $21, $01, $12 
                    db       $26, $01, $0C 
                    db       $0E, $01, -$03 
                    dw       SMVB_continue7_single 
                    db       -$09, $01, -$0E 
                    db       -$15, $01, -$04 
                    db       -$17, $01, -$1A 
                    db       -$02, $01, -$1B 
                    db       $17, $01, -$03 
                    db       $18, $01, $18 
                    db       $0B, $01, $0B 
                    dw       SMVB_continue7_single 
                    db       $19, $01, $0C 
                    db       $4B, $01, $00 
                    db       $1A, $01, $17 
                    db       $0D, $01, $16 
                    db       $00, $01, $4F 
                    db       -$0D, $01, $16 
                    db       -$0D, $01, $0C 
                    dw       SMVB_continue7_single 
                    db       -$25, $01, $00 
                    db       -$1A, $01, -$18 
                    db       $00, $01, -$5A 
                    db       $0D, $01, -$0B 
                    db       $1C, $01, -$06 
                    db       $15, $01, $0B 
                    db       $05, $01, $2E 
                    dw       SMVB_continue5_single 
                    db       -$05, $01, $32 
                    db       -$1C, $01, $07 
                    db       -$16, $01, -$14 
                    db       -$0E, $01, -$23 
                    db       $33, $01, $1A 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$17 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$0B, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $00, $01, $17 
                    db       $0B, $01, $00 
                    db       -$0A, $01, -$22 
                    dw       SMVB_startMove_single 
                    db       $0B, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$15 
                    dw       SMVB_continue3_single 
                    db       -$0B, $01, $00 
                    db       $00, $01, $15 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

DemonList 
                    db       $5B, $01, -$42 
                    dw       SMVB_continue_double 
                    db       -$13, $01, $14 
                    dw       SMVB_startDraw_yd4_single 
                    db       $1B, $01, $3D 
                    dw       SMVB_continue_single 
                    db       -$0B, $01, $16 
                    dw       SMVB_startMove_single 
                    db       -$21, $01, $19 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, $1A 
                    dw       SMVB_continue6_single 
                    db       -$11, $01, $2E 
                    db       -$1C, $01, $00 
                    db       $02, $01, -$22 
                    db       $0F, $01, -$1D 
                    db       $06, $01, -$29 
                    db       -$3C, $01, $1C 
                    dw       SMVB_continue_yd4_single 
                    db       -$52, $01, $0D 
                    dw       SMVB_continue4_single 
                    db       -$12, $01, $1D 
                    db       $00, $01, -$4B 
                    db       $5D, $01, -$12 
                    db       -$42, $01, $0A 
                    dw       SMVB_startMove_yd4_single 
                    db       $15, $01, -$17 
                    dw       SMVB_startDraw_single 
                    db       $21, $01, -$10 
                    dw       SMVB_continue5_single 
                    db       $0E, $01, -$11 
                    db       -$0D, $01, -$15 
                    db       -$2E, $01, -$01 
                    db       -$03, $01, -$17 
                    db       -$02, $01, -$3C 
                    dw       SMVB_startMove_single 
                    db       -$01, $01, -$2A 
                    dw       SMVB_startDraw_single 
                    db       $0B, $01, -$1A 
                    dw       SMVB_continue_single 
                    db       $40, $01, $12 
                    dw       SMVB_continue_double 
                    db       $27, $01, -$0C 
                    dw       SMVB_startMove_single 
                    db       $14, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       -$13, $01, -$03 
                    dw       SMVB_startMove_single 
                    db       $12, $01, $0B 
                    dw       SMVB_startDraw_single 
                    db       $12, $01, $13 
                    dw       SMVB_continue5_single 
                    db       $1C, $01, $00 
                    db       $1A, $01, -$30 
                    db       $1D, $01, -$0B 
                    db       $35, $01, $2E 
                    db       -$18, $01, -$23 
                    dw       SMVB_continue_yd4_single 
                    db       -$15, $01, -$1A 
                    dw       SMVB_continue7_single 
                    db       -$33, $01, $12 
                    db       -$16, $01, $25 
                    db       -$17, $01, -$0D 
                    db       -$07, $01, -$18 
                    db       -$14, $01, -$15 
                    db       -$25, $01, $20 
                    db       -$15, $01, $1D 
                    dw       SMVB_continue2_single 
                    db       $17, $01, $13 
                    db       -$4C, $01, $0B 
                    dw       SMVB_continue_yd4_single 
                    db       -$53, $01, -$19 
                    dw       SMVB_continue4_single 
                    db       -$12, $01, -$25 
                    db       $00, $01, $56 
                    db       $5C, $01, $1E 
                    db       $0D, $01, -$05 
                    dw       SMVB_startMove_yd4_single 
                    db       $42, $01, $48 
                    dw       SMVB_startDraw_single 
                    db       -$0E, $01, -$57 
                    dw       SMVB_continue_yd4_single 
                    db       $2F, $01, $42 
                    dw       SMVB_continue_single 
                    db       $44, $01, $07 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$1C 
                    dw       SMVB_startDraw_yd4_single 
                    db       $10, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $00, $01, $1C 
                    db       -$10, $01, $00 
                    db       -$7A, $01, $2A 
                    dw       SMVB_startMove_yd4_double 
                    db       -$01, $01, $26 
                    dw       SMVB_startDraw_single 
                    db       $6F, $01, -$0B 
                    dw       SMVB_continue_single 
                    db       $00, $01, $0C 
                    dw       SMVB_startMove_yd4_single 
                    db       -$23, $01, -$07 
                    dw       SMVB_startDraw_single 
                    db       -$03, $01, $20 
                    dw       SMVB_continue2_single 
                    db       $25, $01, -$0C 
                    db       $21, $01, $01 
                    dw       SMVB_startMove_single 
                    db       $32, $01, $03 
                    dw       SMVB_startDraw_single 
                    db       $7F, $01, -$0D 
                    dw       SMVB_continue_single 
                    db       -$55, $01, -$02 
                    dw       SMVB_continue_yd4_double 
                    db       $04, $01, -$0C 
                    dw       SMVB_startMove_single 
                    db       $59, $01, -$13 
                    dw       SMVB_startDraw_single 
                    db       $29, $01, -$28 
                    dw       SMVB_continue5_single 
                    db       $1E, $01, -$30 
                    db       $0C, $01, -$2A 
                    db       -$1E, $01, -$36 
                    db       -$3D, $01, -$1B 
                    db       -$35, $01, -$37 
                    dw       SMVB_startMove_single 
                    db       -$01, $01, $23 
                    dw       SMVB_startDraw_single 
                    db       $24, $01, $2E 
                    dw       SMVB_continue2_single 
                    db       $49, $01, $16 
                    db       $0B, $01, $32 
                    dw       SMVB_continue_yd4_single 
                    db       -$12, $01, $27 
                    dw       SMVB_continue4_single 
                    db       -$26, $01, $0B 
                    db       -$1A, $01, $24 
                    db       -$39, $01, $1B 
                    db       $32, $01, -$51 
                    dw       SMVB_startMove_double 
                    db       $00, $01, $1C 
                    dw       SMVB_startDraw_single 
                    db       -$10, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $00, $01, -$1C 
                    db       $10, $01, $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
DragonList 
                    db       -$27, $01, -$0A 
                    dw       SMVB_continue_single 
                    db       -$0D, $01, $03 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, $10 
                    dw       SMVB_continue3_single 
                    db       $03, $01, $09 
                    db       $10, $01, -$1C 
                    db       -$19, $01, -$5D 
                    dw       SMVB_startMove_tripple 
                    db       $0C, $01, $0E 
                    dw       SMVB_startDraw_single 
                    db       $0B, $01, $0D 
                    dw       SMVB_continue4_single 
                    db       $0D, $01, $15 
                    db       $0A, $01, $18 
                    db       $09, $01, $19 
                    db       -$2B, $01, $0E 
                    dw       SMVB_startMove_yd4_single 
                    db       $12, $01, $10 
                    dw       SMVB_startDraw_single 
                    db       -$22, $01, -$63 
                    dw       SMVB_startMove_yd4_single 
                    db       $0F, $01, $2C 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $25 
                    dw       SMVB_continue_single 
                    db       $11, $01, $10 
                    dw       SMVB_startMove_single 
                    db       $1B, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       $19, $01, -$02 
                    dw       SMVB_continue7_single 
                    db       $1C, $01, -$0F 
                    db       $09, $01, -$0F 
                    db       $00, $01, -$16 
                    db       -$15, $01, -$30 
                    db       -$21, $01, -$44 
                    db       -$13, $01, -$25 
                    db       -$0D, $01, -$13 
                    dw       SMVB_continue2_single 
                    db       -$0B, $01, -$0B 
                    db       -$11, $01, $1F 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, -$10 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, -$18 
                    dw       SMVB_continue7_single 
                    db       -$0B, $01, -$1E 
                    db       -$0F, $01, -$13 
                    db       -$21, $01, -$0B 
                    db       -$0B, $01, $35 
                    db       $07, $01, $40 
                    db       $04, $01, -$31 
                    db       $0C, $01, -$17 
                    dw       SMVB_continue4_single 
                    db       $0A, $01, $00 
                    db       $0C, $01, $17 
                    db       $02, $01, $2C 
                    db       $05, $01, -$05 
                    dw       SMVB_startMove_single 
                    db       -$1F, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       -$0A, $01, $0F 
                    dw       SMVB_continue6_single 
                    db       -$01, $01, $36 
                    db       $09, $01, $01 
                    db       $03, $01, -$18 
                    db       $0A, $01, -$0C 
                    db       $0E, $01, $16 
                    db       -$04, $01, -$06 
                    dw       SMVB_startMove_single 
                    db       $01, $01, $4E 
                    dw       SMVB_startDraw_single 
                    db       $10, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       -$1A, $01, $0B 
                    dw       SMVB_startDraw_single 
                    db       -$16, $01, $16 
                    dw       SMVB_continue7_single 
                    db       -$01, $01, $43 
                    db       $09, $01, -$04 
                    db       $0C, $01, -$24 
                    db       $24, $01, $11 
                    db       $16, $01, $17 
                    db       $16, $01, $16 
                    db       $16, $01, $17 
                    dw       SMVB_continue7_single 
                    db       $07, $01, $0C 
                    db       $03, $01, $0A 
                    db       -$20, $01, $15 
                    db       -$07, $01, $14 
                    db       -$1C, $01, $30 
                    db       $28, $01, -$04 
                    db       $32, $01, -$0D 
                    dw       SMVB_continue7_single 
                    db       $0A, $01, -$33 
                    db       $07, $01, -$05 
                    db       $08, $01, $1D 
                    db       $07, $01, -$01 
                    db       $0B, $01, -$17 
                    db       $01, $01, -$2B 
                    db       $09, $01, -$04 
                    dw       SMVB_continue7_single 
                    db       $0B, $01, -$13 
                    db       $00, $01, -$17 
                    db       $00, $01, -$11 
                    db       -$04, $01, -$08 
                    db       -$10, $01, -$13 
                    db       $0C, $01, -$16 
                    db       $08, $01, -$16 
                    dw       SMVB_continue7_single 
                    db       $00, $01, -$14 
                    db       -$11, $01, -$2B 
                    db       -$23, $01, -$45 
                    db       -$21, $01, -$41 
                    db       -$1F, $01, -$3A 
                    db       -$2C, $01, -$26 
                    db       $10, $01, $32 
                    dw       SMVB_continue2_single 
                    db       $06, $01, $4D 
                    db       $05, $01, $06 
                    dw       SMVB_startMove_single 
                    db       $09, $01, $09 
                    dw       SMVB_startDraw_yEqx_single   ; y is $09 
                    db       $18, $01, $2A 
                    dw       SMVB_continue4_single 
                    db       $15, $01, $2D 
                    db       $12, $01, $2D 
                    db       $05, $01, $12 
                    db       $11, $01, $38 
                    dw       SMVB_startMove_single 
                    db       -$11, $01, $14 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, $06 
                    dw       SMVB_continue4_single 
                    db       -$13, $01, $02 
                    db       -$16, $01, -$0D 
                    db       -$0D, $01, -$0A 
                    db       $14, $01, $10 
                    dw       SMVB_startMove_single 
                    db       $13, $01, $0A 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, $04 
                    dw       SMVB_continue2_single 
                    db       $10, $01, $21 
                    db       $12, $01, $0F 
                    dw       SMVB_startMove_single 
                    db       $0A, $01, -$12 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$0F 
                    dw       SMVB_continue3_single 
                    db       $02, $01, -$14 
                    db       $02, $01, -$22 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 


SpellIcons: 
                    DW       SpellIcons_0                 ; list of all single vectorlists in this 
                    DW       SpellIcons_1 
                    DW       SpellIcons_2 
                    DW       SpellIcons_3 
                    DW       SpellIcons_4 
                    DW       SpellIcons_5 
                    DW       SpellIcons_6 
                    DW       SpellIcons_7 
                    DW       SpellIcons_8 
                    DW       SpellIcons_9 
                    DW       SpellIcons_10 
SpellIcons_0 
                    db       $14, $01, $18 
                    dw       SMVB_continue_single 
                    db       SHITREG_POKE_VALUE, $01, -$0F 
                    dw       SMVB_startDraw_yStays_single ; y was $14, now SHIFT Poke 
                    db       $00, $01, -$1D 
                    dw       SMVB_continue6_single 
                    db       -$1D, $01, -$0E 
                    db       -$18, $01, $37 
                    db       -$1D, $01, -$05 
                    db       $00, $01, -$28 
                    db       $1F, $01, -$0F 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_1 
                    db       $26, $01, -$0E 
                    dw       SMVB_continue_single 
                    db       $00, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       -$18, $01, $12 
                    dw       SMVB_continue5_single 
                    db       -$1D, $01, $00 
                    db       -$19, $01, -$0E 
                    db       $00, $01, -$1E 
                    db       $4E, $01, $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_2 
                    db       $14, $01, -$0F 
                    dw       SMVB_continue_single 
                    db       -$39, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $24 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $43, $01, -$24 
                    dw       SMVB_startMove_single 
                    db       $17, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$2A, $01, $0B 
                    dw       SMVB_startMove_yd4_single 
                    db       $0E, $01, $11 
                    dw       SMVB_startDraw_single 
                    db       -$13, $01, -$32 
                    dw       SMVB_startMove_single 
                    db       -$0A, $01, $0B 
                    dw       SMVB_startDraw_single 
                    db       $0A, $01, $28 
                    dw       SMVB_startMove_single 
                    db       -$09, $01, -$10 
                    dw       SMVB_startDraw_single 
                    db       $2C, $01, $03 
                    dw       SMVB_startMove_single 
                    db       -$10, $01, -$07 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$08, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       $0A, $01, -$07 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_3 
                    db       -$29, $01, -$0B 
                    dw       SMVB_continue_single 
                    db       $53, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $15 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$0C, $01, $0E 
                    dw       SMVB_continue4_single 
                    db       -$14, $01, $00 
                    db       -$0E, $01, -$0C 
                    db       $00, $01, -$17 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_4 
                    db       $25, $01, -$12 
                    dw       SMVB_continue_single 
                    db       -$39, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $24 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       -$13, $01, -$1D 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, -$17 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $11 
                    dw       SMVB_startDraw_single 
                    db       $06, $01, -$0F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $0C 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_5 
                    db       $22, $01, -$10 
                    dw       SMVB_continue_single 
                    db       $00, $01, $20 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$10 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$46, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$11 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was $00, now 0 
                    db       SHITREG_POKE_VALUE, $01, $21 
                    dw       SMVB_startDraw_yStays_single ; y was $00, now SHIFT Poke 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_6 
                    db       -$26, $01, -$0C 
                    dw       SMVB_continue_single 
                    db       $4B, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $01 
                    dw       SMVB_startMove_yd4_newY_eq_oldX_single ; y was $00, now 0 
                    db       SHITREG_POKE_VALUE, $01, $21 
                    dw       SMVB_startDraw_yStays_single ; y was $00, now SHIFT Poke 
                    db       -$25, $01, -$23 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $14 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_7 
                    db       -$2A, $01, -$15 
                    dw       SMVB_continue_single 
                    db       $3D, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $17, $01, $15 
                    dw       SMVB_continue3_single 
                    db       -$17, $01, $14 
                    db       -$3D, $01, $00 
                    db       $1E, $01, -$29 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $29 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_8 
                    db       -$29, $01, -$1C 
                    dw       SMVB_continue_single 
                    db       $00, $01, $38 
                    dw       SMVB_startDraw_single 
                    db       $52, $01, -$35 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $32 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$52, $01, -$35 
                    dw       SMVB_continue_yd4_single 
                    db       $52, $01, $03 
                    dw       SMVB_startMove_single 
                    db       -$52, $01, $35 
                    dw       SMVB_startDraw_yd4_single 
                    db       $3B, $01, -$26 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $14 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$25, $01, -$33 
                    dw       SMVB_startMove_single 
                    db       $33, $01, $50 
                    dw       SMVB_startDraw_single 
                    db       -$3A, $01, -$4B 
                    dw       SMVB_startMove_yd4_single 
                    db       $32, $01, $4F 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_9 
                    db       -$29, $01, -$0B 
                    dw       SMVB_continue_single 
                    db       $53, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $15 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$0C, $01, $0E 
                    dw       SMVB_continue4_single 
                    db       -$14, $01, $00 
                    db       -$0E, $01, -$0D 
                    db       $00, $01, -$16 
                    db       $00, $01, $16 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$25, $01, $11 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
SpellIcons_10 
                    db       $26, $01, -$0E 
                    dw       SMVB_continue_single 
                    db       $00, $01, $1A 
                    dw       SMVB_startDraw_single 
                    db       -$18, $01, $12 
                    dw       SMVB_continue5_single 
                    db       -$1D, $01, $00 
                    db       -$19, $01, -$0E 
                    db       $00, $01, -$1E 
                    db       $4E, $01, $00 
                    db       -$2F, $01, -$0A 
                    dw       SMVB_startMove_yd4_single 
                    db       $09, $01, -$0A 
                    dw       SMVB_startDraw_single 
                    db       $0F, $01, $06 
                    dw       SMVB_continue5_single 
                    db       $10, $01, -$08 
                    db       $0F, $01, $0B 
                    db       $0F, $01, $0A 
                    db       $1A, $01, -$0A 
                    db       -$59, $01, $40 
                    dw       SMVB_startMove_yd4_single 
                    db       $03, $01, -$03 
                    dw       SMVB_startDraw_single 
                    db       $0E, $01, $10 
                    dw       SMVB_continue7_single 
                    db       $02, $01, -$06 
                    db       $10, $01, -$0E 
                    db       $0E, $01, -$07 
                    db       $0B, $01, $0D 
                    db       $12, $01, -$0A 
                    db       $08, $01, -$0B 
                    db       -$1F, $01, -$11 
                    dw       SMVB_startMove_single 
                    db       $09, $01, $0B 
                    dw       SMVB_startDraw_single 
                    db       $07, $01, -$04 
                    dw       SMVB_continue5_single 
                    db       $0F, $01, -$05 
                    db       $07, $01, -$0B 
                    db       $02, $01, $0B 
                    db       $02, $01, -$02 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 


DotList 
                    db       $17, $01, -$0D 
                    dw       SMVB_continue_single 
                    db       -$0F, $01, -$12 
                    dw       SMVB_startDraw_single 
                    db       -$11, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$0F, $01, $12 
                    db       $00, $01, $1E 
                    db       $0F, $01, $0E 
                    db       $11, $01, $00 
                    db       $0F, $01, -$12 
                    db       $00, $01, -$1A 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList 
                    DW       TreasureList_0               ; list of all single vectorlists in this 
                    DW       TreasureList_1 
                    DW       TreasureList_2 
                    DW       TreasureList_3 
                    DW       TreasureList_4 
                    DW       TreasureList_5 
TreasureList_0 
                    db       $60, $01, -$3D 
                    dw       SMVB_continue_single 
                    db       -$0C, $01, $1E 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$06, $01, $1D 
                    dw       SMVB_continue3_single 
                    db       -$06, $01, $11 
                    db       -$0C, $01, $11 
                    db       $00, $01, -$60 
                    dw       SMVB_continue_double 
                    db       $06, $01, $1F 
                    dw       SMVB_continue4_single 
                    db       $06, $01, $12 
                    db       $18, $01, $1D 
                    db       $00, $01, $12 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList_1 
                    db       $58, $01, -$70 
                    dw       SMVB_continue_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$05, $01, $11 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $18, $01, $0B 
                    dw       SMVB_startMove_single 
                    db       -$12, $01, $1F 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, $1C 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $24 
                    db       $00, $01, -$41 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$06, $01, $00 
                    db       $00, $01, -$72 
                    db       $06, $01, $1E 
                    dw       SMVB_continue4_single 
                    db       $06, $01, $12 
                    db       $0C, $01, $1E 
                    db       $0C, $01, $12 
                    db       -$11, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$05, $01, $29 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $05 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$05 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList_2 
                    db       $29, $01, -$44 
                    dw       SMVB_continue_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $12, $01, $23 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $06 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, $00 
                    db       $00, $01, -$06 
                    db       $0C, $01, $12 
                    dw       SMVB_startMove_single 
                    db       -$12, $01, $17 
                    dw       SMVB_startDraw_single 
                    db       -$0C, $01, $1D 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, $24 
                    db       $00, $01, -$3D 
                    db       $06, $01, -$04 
                    db       $00, $01, -$0C 
                    db       -$06, $01, -$04 
                    db       $00, $01, -$6E 
                    db       $06, $01, $1E 
                    dw       SMVB_continue6_single 
                    db       $0C, $01, $12 
                    db       $0C, $01, $06 
                    db       $0C, $01, $19 
                    db       $12, $01, $12 
                    db       -$12, $01, $06 
                    db       -$11, $01, -$01 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, $00 
                    db       $00, $01, -$0C 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList_3 
                    db       $20, $01, -$46 
                    dw       SMVB_continue_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $40, $01, $43 
                    dw       SMVB_startMove_single 
                    db       -$12, $01, $1B 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$1B, $01, $13 
                    dw       SMVB_continue7_single 
                    db       -$21, $01, $23 
                    db       $00, $01, -$41 
                    db       $0C, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$0C, $01, $00 
                    db       $00, $01, -$72 
                    db       $1D, $01, $1E 
                    dw       SMVB_continue7_single 
                    db       $0F, $01, $0F 
                    db       $0E, $01, $08 
                    db       $0F, $01, $08 
                    db       $08, $01, $0B 
                    db       $07, $01, $16 
                    db       -$0B, $01, $0B 
                    db       -$3D, $01, $22 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $05 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, $00 
                    db       $00, $01, -$05 
                    db       $26, $01, -$44 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$23, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $1E, $01, $29 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$12, $01, -$0B 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $32, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList_4 
                    db       $20, $01, -$46 
                    dw       SMVB_continue_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $44, $01, $53 
                    dw       SMVB_startMove_single 
                    db       -$10, $01, $25 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$22, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$21, $01, $1F 
                    db       $00, $01, -$45 
                    db       $0C, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$0C, $01, $00 
                    db       $00, $01, -$76 
                    db       $20, $01, $18 
                    dw       SMVB_continue7_single 
                    db       $0F, $01, $13 
                    db       $0B, $01, $0D 
                    db       $15, $01, $04 
                    db       $09, $01, $12 
                    db       $12, $01, $1E 
                    db       -$18, $01, $12 
                    db       -$41, $01, $12 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $05 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, $00 
                    db       $00, $01, -$05 
                    db       $26, $01, -$44 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$23, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $32, $01, $2B 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$26, $01, -$0D 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $32, $01, -$13 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$1C, $01, $34 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $00, $01, -$69 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was -$0C, now 0 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       -$0C, $01, $4F 
                    dw       SMVB_startMove_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $00, $01, -$69 
                    dw       SMVB_startMove_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $09, $01, $5E 
                    dw       SMVB_startMove_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $00, $01, -$57 
                    dw       SMVB_startMove_double 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $0F, $01, $16 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $0C 
                    dw       SMVB_continue3_single 
                    db       $06, $01, $00 
                    db       $00, $01, -$0C 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

TreasureList_5 
                    db       $6E, $01, -$39 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$1F 
                    dw       SMVB_startDraw_yd4_single 
                    db       $10, $01, $08 
                    dw       SMVB_continue6_single 
                    db       $10, $01, -$08 
                    db       $00, $01, $74 
                    db       -$10, $01, $08 
                    db       -$10, $01, -$08 
                    db       $00, $01, -$3E 
                    db       -$17, $01, $17 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$10 
                    dw       SMVB_startDraw_single 
                    db       $10, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $07, $01, -$0F 
                    db       $00, $01, -$08 
                    db       -$07, $01, -$17 
                    db       -$10, $01, -$07 
                    db       $00, $01, $17 
                    db       $00, $01, $0F 
                    db       $00, $01, $07 
                    dw       SMVB_continue6_single 
                    db       $08, $01, $00 
                    db       -$08, $01, -$0F 
                    db       $08, $01, $00 
                    db       -$08, $01, -$0F 
                    db       -$08, $01, -$1F 
                    db       $00, $01, -$46 
                    dw       SMVB_startMove_single 
                    db       $10, $01, $3E 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $1F 
                    dw       SMVB_continue_single 
                    db       -$08, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       -$08, $01, -$08 
                    dw       SMVB_startDraw_yEqx_single   ; y is -$08 
                    db       $08, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$10 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       -$08, $01, -$17 
                    dw       SMVB_startMove_single 
                    db       $08, $01, $17 
                    dw       SMVB_startDraw_single 
                    db       $08, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $17, $01, $08 
                    db       $27, $01, -$08 
                    db       $00, $01, $49 
                    dw       SMVB_continue_double 
                    db       -$0F, $01, $08 
                    dw       SMVB_continue4_single 
                    db       -$20, $01, $00 
                    db       -$0F, $01, -$17 
                    db       -$10, $01, -$3E 
                    db       $00, $01, -$42 
                    dw       SMVB_continue_double 
                    db       -$3E, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $42 
                    dw       SMVB_continue_double 
                    db       $27, $01, $3E 
                    dw       SMVB_continue3_single 
                    db       $27, $01, $00 
                    db       $00, $01, -$36 
                    db       -$08, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$08 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $00, $01, $00 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was -$08, now 0 
                    db       -$36, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

InnList 
                    db       $22, $01, -$5D 
                    dw       SMVB_continue_double 
                    db       $15, $01, -$0B 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$36 
                    dw       SMVB_continue7_single 
                    db       -$12, $01, -$12 
                    db       -$18, $01, $00 
                    db       -$10, $01, $0C 
                    db       $16, $01, $11 
                    db       $06, $01, $15 
                    db       -$0B, $01, $14 
                    db       -$55, $01, $01 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$3B 
                    dw       SMVB_continue7_single 
                    db       -$0E, $01, -$0F 
                    db       -$10, $01, -$03 
                    db       -$0B, $01, $10 
                    db       $11, $01, $1A 
                    db       -$02, $01, $19 
                    db       -$13, $01, $0F 
                    db       -$09, $01, $19 
                    dw       SMVB_continue7_single 
                    db       -$02, $01, $2B 
                    db       $14, $01, $12 
                    db       $1B, $01, $08 
                    db       $0B, $01, -$11 
                    db       -$13, $01, -$0C 
                    db       -$07, $01, -$16 
                    db       $06, $01, -$1D 
                    dw       SMVB_continue2_single 
                    db       $48, $01, $00 
                    db       $08, $01, $34 
                    dw       SMVB_continue_yd4_single 
                    db       $11, $01, $18 
                    dw       SMVB_continue6_single 
                    db       $1D, $01, -$04 
                    db       $00, $01, -$12 
                    db       -$0D, $01, -$0F 
                    db       -$04, $01, -$16 
                    db       $0E, $01, -$18 
                    db       $04, $01, $42 
                    dw       SMVB_startMove_double 
                    db       -$17, $01, -$1E 
                    dw       SMVB_startDraw_single 
                    db       -$1F, $01, -$06 
                    dw       SMVB_continue4_single 
                    db       $07, $01, $16 
                    db       $0B, $01, $0E 
                    db       -$05, $01, $0E 
                    db       -$54, $01, $02 
                    dw       SMVB_continue_yd4_single 
                    db       -$0E, $01, -$16 
                    dw       SMVB_continue7_single 
                    db       -$16, $01, $06 
                    db       $03, $01, $16 
                    db       $14, $01, $0E 
                    db       $42, $01, $01 
                    db       $15, $01, $12 
                    db       $0B, $01, $21 
                    db       -$67, $01, $03 
                    dw       SMVB_continue_yd4_single 
                    db       -$11, $01, $1D 
                    dw       SMVB_continue5_single 
                    db       $0E, $01, $18 
                    db       $14, $01, -$08 
                    db       $0A, $01, -$18 
                    db       $62, $01, -$01 
                    db       $12, $01, -$0E 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$13 
                    dw       SMVB_continue5_single 
                    db       -$1D, $01, -$12 
                    db       -$07, $01, -$17 
                    db       $22, $01, -$16 
                    db       $02, $01, -$0F 
                    db       -$09, $01, $48 
                    dw       SMVB_startMove_double 
                    db       $12, $01, $15 
                    dw       SMVB_startDraw_single 
                    db       -$05, $01, $15 
                    dw       SMVB_continue6_single 
                    db       -$1F, $01, $15 
                    db       $0C, $01, $16 
                    db       $1B, $01, $18 
                    db       -$02, $01, $12 
                    db       -$15, $01, $12 
                    db       -$6B, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$0A, $01, $14 
                    dw       SMVB_continue5_single 
                    db       -$12, $01, $03 
                    db       -$08, $01, -$17 
                    db       $12, $01, -$15 
                    db       $6A, $01, -$09 
                    db       -$11, $01, -$22 
                    dw       SMVB_continue_yd4_single 
                    db       -$10, $01, -$11 
                    dw       SMVB_continue_single 
                    db       -$43, $01, $02 
                    dw       SMVB_continue_yd4_single 
                    db       -$13, $01, -$0F 
                    dw       SMVB_continue5_single 
                    db       -$02, $01, -$1D 
                    db       $18, $01, -$01 
                    db       $14, $01, $15 
                    db       $42, $01, -$02 
                    db       $0E, $01, -$0A 
                    dw       SMVB_continue_yd4_single 
                    db       -$11, $01, -$15 
                    dw       SMVB_continue3_single 
                    db       $06, $01, -$12 
                    db       $1D, $01, $09 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

ThroneList 
                    DW       ThroneList_0                 ; list of all single vectorlists in this 
                    DW       ThroneList_1 
                    DW       ThroneList_2 
                    DW       ThroneList_3 


ThroneList_0 
                    db       $51, $01, -$24 
                    dw       SMVB_continue_double 
                    db       -$0C, $01, -$12 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$0B 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$4E, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_continue3_single 
                    db       $1F, $01, $00 
                    db       $0C, $01, -$2F 
                    db       $00, $01, -$61 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       -$20, $01, $00 
                    dw       SMVB_continue_single 
                    db       $12, $01, $0C 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $25 
                    dw       SMVB_startDraw_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$54 
                    dw       SMVB_startDraw_single 
                    db       $20, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, -$2F 
                    db       $2A, $01, $00 
                    db       $3A, $01, -$0D 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$12 
                    db       -$22, $01, $00 
                    db       -$4A, $01, $00 
                    db       -$05, $01, $12 
                    db       $17, $01, $00 
                    db       -$06, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$05, $01, $12 
                    db       $23, $01, $00 
                    db       $00, $01, $18 
                    db       -$08, $01, $0A 
                    db       $08, $01, $08 
                    db       $00, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue3_single 
                    db       -$05, $01, $12 
                    db       $55, $01, $00 
                    db       $0C, $01, -$30 
                    dw       SMVB_continue_yd4_single 
                    db       $64, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$12 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$12, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$06, $01, -$0C 
                    db       $00, $01, -$30 
                    db       $06, $01, -$0C 
                    db       $12, $01, $00 
                    db       $00, $01, -$12 
                    db       -$30, $01, $20 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$02 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, $0E 
                    dw       SMVB_continue3_single 
                    db       $0B, $01, $00 
                    db       $02, $01, -$0C 
                    db       -$22, $01, $12 
                    dw       SMVB_startMove_single 
                    db       -$0B, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       -$03, $01, $0F 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, -$04 
                    db       $04, $01, -$0C 
                    db       $1F, $01, $1E 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$09 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$05 
                    dw       SMVB_continue3_single 
                    db       $05, $01, $0B 
                    db       -$08, $01, $03 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
ThroneList_1 
                    db       $51, $01, -$24 
                    dw       SMVB_continue_double 
                    db       -$0C, $01, -$12 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$0B 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$4E, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_continue3_single 
                    db       $1F, $01, $00 
                    db       $0C, $01, -$2F 
                    db       $00, $01, -$61 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       -$20, $01, $00 
                    dw       SMVB_continue_single 
                    db       $12, $01, $0C 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $25 
                    dw       SMVB_startDraw_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$54 
                    dw       SMVB_startDraw_single 
                    db       $20, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, -$2F 
                    db       $2A, $01, $00 
                    db       $3A, $01, -$0D 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$12 
                    db       -$22, $01, $00 
                    db       -$4A, $01, $00 
                    db       -$05, $01, $12 
                    db       $17, $01, $00 
                    db       -$06, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$05, $01, $12 
                    db       $23, $01, $00 
                    db       $00, $01, $18 
                    db       -$08, $01, $0A 
                    db       $08, $01, $08 
                    db       $00, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue3_single 
                    db       -$05, $01, $12 
                    db       $55, $01, $00 
                    db       $0C, $01, -$30 
                    dw       SMVB_continue_yd4_single 
                    db       $64, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$12 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$12, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$06, $01, -$0C 
                    db       $00, $01, -$30 
                    db       $06, $01, -$0C 
                    db       $12, $01, $00 
                    db       $00, $01, -$12 
                    db       -$3C, $01, $20 
                    dw       SMVB_startMove_yd4_single 
                    db       -$06, $01, -$02 
                    dw       SMVB_startDraw_single 
                    db       -$06, $01, $0E 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, $00 
                    db       $02, $01, -$0C 
                    db       -$15, $01, $19 
                    dw       SMVB_startMove_single 
                    db       -$0B, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       -$03, $01, $0F 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, -$04 
                    db       $04, $01, -$0C 
                    db       $13, $01, $1C 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$09 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$05 
                    dw       SMVB_continue3_single 
                    db       $05, $01, $0B 
                    db       -$08, $01, $03 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
ThroneList_2 
                    db       $51, $01, -$24 
                    dw       SMVB_continue_double 
                    db       -$0C, $01, -$12 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$0B 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$4E, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_continue3_single 
                    db       $1F, $01, $00 
                    db       $0C, $01, -$2F 
                    db       $00, $01, -$61 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       -$20, $01, $00 
                    dw       SMVB_continue_single 
                    db       $12, $01, $0C 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $25 
                    dw       SMVB_startDraw_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$54 
                    dw       SMVB_startDraw_single 
                    db       $20, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, -$2F 
                    db       $2A, $01, $00 
                    db       $3A, $01, -$0D 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$12 
                    db       -$22, $01, $00 
                    db       -$4A, $01, $00 
                    db       -$05, $01, $12 
                    db       $17, $01, $00 
                    db       -$06, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$05, $01, $12 
                    db       $23, $01, $00 
                    db       $00, $01, $18 
                    db       -$08, $01, $0A 
                    db       $08, $01, $08 
                    db       $00, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue3_single 
                    db       -$05, $01, $12 
                    db       $55, $01, $00 
                    db       $0C, $01, -$30 
                    dw       SMVB_continue_yd4_single 
                    db       $64, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$12 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$12, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$06, $01, -$0C 
                    db       $00, $01, -$30 
                    db       $06, $01, -$0C 
                    db       $12, $01, $00 
                    db       $00, $01, -$12 
                    db       -$20, $01, $2A 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$02 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, $0D 
                    dw       SMVB_continue3_single 
                    db       $0B, $01, $00 
                    db       $02, $01, -$0B 
                    db       -$2F, $01, -$07 
                    dw       SMVB_startMove_single 
                    db       -$0B, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       -$03, $01, $0F 
                    dw       SMVB_continue3_single 
                    db       $0A, $01, -$04 
                    db       $04, $01, -$0C 
                    db       $10, $01, $32 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$09 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$05 
                    dw       SMVB_continue3_single 
                    db       $05, $01, $0B 
                    db       -$08, $01, $03 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
ThroneList_3 
                    db       $51, $01, -$24 
                    dw       SMVB_continue_double 
                    db       -$0C, $01, -$12 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$0B 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       -$4E, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_continue3_single 
                    db       $1F, $01, $00 
                    db       $0C, $01, -$2F 
                    db       $00, $01, -$61 
                    dw       SMVB_startMove_single 
                    db       -$0C, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       -$20, $01, $00 
                    dw       SMVB_continue_single 
                    db       $12, $01, $0C 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $25 
                    dw       SMVB_startDraw_single 
                    db       -$11, $01, $2F 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$54 
                    dw       SMVB_startDraw_single 
                    db       $20, $01, $00 
                    dw       SMVB_continue3_single 
                    db       $0C, $01, -$2F 
                    db       $2A, $01, $00 
                    db       $3A, $01, -$0D 
                    dw       SMVB_startMove_single 
                    db       -$36, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $12 
                    dw       SMVB_continue7_single 
                    db       -$0C, $01, -$12 
                    db       -$22, $01, $00 
                    db       -$4A, $01, $00 
                    db       -$05, $01, $12 
                    db       $17, $01, $00 
                    db       -$06, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$05, $01, $12 
                    db       $23, $01, $00 
                    db       $00, $01, $18 
                    db       -$08, $01, $0A 
                    db       $08, $01, $08 
                    db       $00, $01, $1E 
                    db       -$1E, $01, $00 
                    dw       SMVB_continue3_single 
                    db       -$05, $01, $12 
                    db       $55, $01, $00 
                    db       $0C, $01, -$30 
                    dw       SMVB_continue_yd4_single 
                    db       $64, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$12 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$12, $01, $00 
                    dw       SMVB_continue6_single 
                    db       -$06, $01, -$0C 
                    db       $00, $01, -$30 
                    db       $06, $01, -$0C 
                    db       $12, $01, $00 
                    db       $00, $01, -$12 
                    db       -$38, $01, $1C 
                    dw       SMVB_startMove_yd4_single 
                    db       -$06, $01, -$02 
                    dw       SMVB_startDraw_single 
                    db       -$07, $01, $0E 
                    dw       SMVB_continue3_single 
                    db       $0B, $01, $00 
                    db       $02, $01, -$0C 
                    db       -$06, $01, $15 
                    dw       SMVB_startMove_single 
                    db       -$0A, $01, $01 
                    dw       SMVB_startDraw_single 
                    db       -$03, $01, $0F 
                    dw       SMVB_continue3_single 
                    db       $09, $01, -$04 
                    db       $04, $01, -$0C 
                    db       -$2B, $01, $24 
                    dw       SMVB_startMove_single 
                    db       -$06, $01, -$09 
                    dw       SMVB_startDraw_single 
                    db       $09, $01, -$05 
                    dw       SMVB_continue3_single 
                    db       $05, $01, $0B 
                    db       -$08, $01, $03 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

CubeList 
                    DW       CubeList_0                   ; list of all single vectorlists in this 
                    DW       CubeList_1 

CubeList_0 
                    db       $50, $01, -$3C 
                    dw       SMVB_continue_double 
                    db       -$60, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, $1E 
                    dw       SMVB_continue2_single 
                    db       $60, $01, $00 
                    db       $00, $01, $18 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$60, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, $18 
                    dw       SMVB_continue7_single 
                    db       $18, $01, $00 
                    db       $00, $01, -$66 
                    db       $18, $01, $00 
                    db       $00, $01, $66 
                    db       $18, $01, $00 
                    db       $00, $01, -$66 
                    db       $18, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $00, $01, $18 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
CubeList_1 
                    db       $50, $01, -$3C 
                    dw       SMVB_continue_double 
                    db       -$60, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$18 
                    dw       SMVB_continue7_single 
                    db       $18, $01, $00 
                    db       $00, $01, $66 
                    db       $18, $01, $00 
                    db       $00, $01, -$66 
                    db       $18, $01, $00 
                    db       $00, $01, $66 
                    db       $18, $01, $00 
                    dw       SMVB_continue2_single 
                    db       $00, $01, -$18 
                    db       -$60, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$18 
                    dw       SMVB_continue2_single 
                    db       $60, $01, $00 
                    db       $00, $01, -$1E 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

FountainList 
                    db       $2E, $01, $14 
                    dw       SMVB_continue_single 
                    db       -$05, $01, $10 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$0A, $01, $0E 
                    dw       SMVB_continue_single 
                    db       -$3E, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$0A, $01, -$0E 
                    dw       SMVB_continue7_single 
                    db       -$0A, $01, -$20 
                    db       $00, $01, -$5E 
                    db       $0A, $01, -$1E 
                    db       $0A, $01, -$0F 
                    db       $3F, $01, $00 
                    db       $0D, $01, $0F 
                    db       $06, $01, $17 
                    dw       SMVB_continue2_single 
                    db       $00, $01, $56 
                    db       -$12, $01, -$10 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $10 
                    dw       SMVB_startDraw_single 
                    db       $46, $01, $00 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$10 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5C, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $00, $01, -$1F 
                    dw       SMVB_continue2_single 
                    db       $33, $01, $00 
                    db       $00, $01, $0F 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $1F, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$01, $01, -$10 
                    db       -$0D, $01, -$0D 
                    db       -$11, $01, -$03 
                    db       $02, $01, -$0D 
                    db       $12, $01, $00 
                    db       $14, $01, $0F 
                    db       $04, $01, $0F 
                    dw       SMVB_continue7_single 
                    db       $0F, $01, -$03 
                    db       $01, $01, -$1C 
                    db       $0A, $01, $02 
                    db       $01, $01, $2D 
                    db       $12, $01, $03 
                    db       $00, $01, $1A 
                    db       -$12, $01, $03 
                    dw       SMVB_continue6_single 
                    db       $00, $01, -$10 
                    db       -$0A, $01, $02 
                    db       -$03, $01, $0C 
                    db       -$08, $01, $02 
                    db       $00, $01, $1F 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       $05, $01, $00 
                    dw       SMVB_startMove_single 
                    db       -$05, $01, $10 
                    dw       SMVB_startDraw_single 
                    db       -$14, $01, $00 
                    dw       SMVB_continue7_single 
                    db       -$0D, $01, -$21 
                    db       $00, $01, -$5D 
                    db       $0D, $01, -$1D 
                    db       $14, $01, $00 
                    db       $0B, $01, $0E 
                    db       $00, $01, $2E 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

AltarList 
                    db       $0E, $01, $64 
                    dw       SMVB_continue_single 
                    db       -$1B, $01, -$2E 
                    dw       SMVB_startDraw_single 
                    db       -$35, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$14 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $00, $01, -$3A 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       SHITREG_POKE_VALUE, $01, -$4C 
                    dw       SMVB_startDraw_yStays_single ; y was $00, now SHIFT Poke 
                    db       $35, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $1B, $01, $36 
                    db       $00, $01, $21 
                    db       $11, $01, $00 
                    db       $00, $01, -$1D 
                    db       $02, $01, -$14 
                    db       $06, $01, -$11 
                    db       $0E, $01, -$17 
                    dw       SMVB_continue7_single 
                    db       $0B, $01, $17 
                    db       $06, $01, $15 
                    db       $02, $01, $18 
                    db       $00, $01, $15 
                    db       $12, $01, $00 
                    db       $00, $01, $11 
                    db       -$12, $01, $00 
                    dw       SMVB_continue7_single 
                    db       $00, $01, $12 
                    db       $09, $01, $41 
                    db       -$09, $01, -$0E 
                    db       -$08, $01, -$2E 
                    db       $00, $01, -$17 
                    db       -$1A, $01, $00 
                    db       $00, $01, $19 
                    dw       SMVB_continue7_single 
                    db       -$07, $01, $2B 
                    db       -$0A, $01, $0F 
                    db       $09, $01, -$3F 
                    db       $00, $01, -$14 
                    db       -$11, $01, $00 
                    db       $00, $01, $60 
                    db       -$35, $01, $00 
                    dw       SMVB_continue_yd4_single 
                    db       -$1B, $01, -$2E 
                    dw       SMVB_continue2_single 
                    db       $35, $01, $00 
                    db       $00, $01, -$34 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $08, $01, -$19 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, $1F 
                    dw       SMVB_startDraw_yStays_single ; y was $08, now SHIFT Poke 
                    db       -$09, $01, $0E 
                    dw       SMVB_continue7_single 
                    db       -$08, $01, -$14 
                    db       -$24, $01, -$04 
                    db       -$12, $01, $05 
                    db       $05, $01, $12 
                    db       -$10, $01, $2B 
                    db       $00, $01, $14 
                    db       $0C, $01, $06 
                    dw       SMVB_continue2_single 
                    db       $04, $01, $14 
                    db       -$0D, $01, -$08 
                    dw       SMVB_continue_double 
                    db       -$04, $01, -$0E 
                    dw       SMVB_continue7_single 
                    db       $00, $01, -$1A 
                    db       $05, $01, -$09 
                    db       $00, $01, -$12 
                    db       -$07, $01, -$15 
                    db       $01, $01, -$12 
                    db       $09, $01, -$0D 
                    db       $46, $01, $07 
                    dw       SMVB_continue_single 
                    db       $08, $01, -$04 
                    dw       SMVB_continue_yd4_single 
                    db       -$09, $01, $05 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$52 
                    dw       SMVB_startDraw_single 
                    db       $4F, $01, $47 
                    dw       SMVB_startMove_single 
                    db       -$01, $01, -$14 
                    dw       SMVB_startDraw_yd4_single 
                    db       -$06, $01, -$17 
                    dw       SMVB_continue7_single 
                    db       -$03, $01, -$0E 
                    db       -$0B, $01, $1D 
                    db       -$03, $01, $1C 
                    db       $00, $01, $10 
                    db       $1A, $01, $00 
                    db       $00, $01, -$10 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

ElevatorList 
                    db       $25, $01, $5F 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$1C 
                    dw       SMVB_startDraw_single 
                    db       -$1A, $01, -$04 
                    dw       SMVB_continue7_single 
                    db       -$03, $01, -$12 
                    db       -$0B, $01, $01 
                    db       -$02, $01, $24 
                    db       $02, $01, $23 
                    db       $0B, $01, $01 
                    db       $03, $01, -$0F 
                    db       $1A, $01, -$07 
                    dw       SMVB_continue_single 
                    db       -$0D, $01, $04 
                    dw       SMVB_startMove_single 
                    db       $00, $01, $12 
                    dw       SMVB_startDraw_single 
                    db       -$16, $01, $14 
                    dw       SMVB_continue2_single 
                    db       -$25, $01, $05 
                    db       $0D, $01, -$03 
                    dw       SMVB_startMove_single 
                    db       $00, $01, -$74 
                    dw       SMVB_startDraw_single 
                    db       -$0D, $01, -$02 
                    dw       SMVB_startMove_single 
                    db       $26, $01, $03 
                    dw       SMVB_startDraw_single 
                    db       $16, $01, $14 
                    dw       SMVB_continue2_single 
                    db       $00, $01, $13 
                    db       -$4C, $01, $2D 
                    dw       SMVB_startMove_yd4_single 
                    db       -$0E, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $3B 
                    dw       SMVB_continue3_single 
                    db       $0E, $01, $00 
                    db       $00, $01, -$3B 
                    db       -$1F, $01, -$0C 
                    dw       SMVB_startMove_single 
                    db       -$62, $01, $00 
                    dw       SMVB_startDraw_yd4_double 
                    db       $00, $01, $7B 
                    dw       SMVB_continue2_single 
                    db       $15, $01, $15 
                    db       $60, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$29 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $1E, $01, -$14 
                    dw       SMVB_continue_single 
                    db       $00, $01, -$61 
                    dw       SMVB_continue_double 
                    db       -$1E, $01, -$14 
                    dw       SMVB_continue2_single 
                    db       $00, $01, -$28 
                    db       -$60, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       -$15, $01, $14 
                    dw       SMVB_continue2_single 
                    db       $00, $01, $7B 
                    db       $62, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$1C 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, $56 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $5B, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$1D 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       $10, $01, -$64 
                    dw       SMVB_startMove_single 
                    db       $0E, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $3B 
                    dw       SMVB_continue3_single 
                    db       -$0E, $01, $00 
                    db       $00, $01, -$3B 
                    db       -$63, $01, -$1C 
                    dw       SMVB_startMove_yd4_double 
                    db       $00, $01, $1C 
                    dw       SMVB_startDraw_single 
                    db       $5B, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$1C 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, $2B 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was $00, now 0 
                    db       SHITREG_POKE_VALUE, $01, $2C 
                    dw       SMVB_startDraw_yStays_single ; y was $00, now SHIFT Poke 
                    db       $5B, $01, $00 
                    dw       SMVB_continue_double 
                    db       $00, $01, -$2C 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, $4F 
                    dw       SMVB_startMove_double 
                    db       $5B, $01, $00 
                    dw       SMVB_startDraw_double 
                    db       $00, $01, $2C 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, -$2C 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $00, $01, $3B 
                    dw       SMVB_startMove_yStays_single ; y was $00, now 0 
                    db       $5B, $01, $00 
                    dw       SMVB_startDraw_double 
                    db       $00, $01, $1D 
                    dw       SMVB_continue_yd4_newY_eq_oldX_single ; y is $00 
                    db       -$5B, $01, $00 
                    dw       SMVB_continue_yd4_double 
                    db       $00, $01, -$1D 
                    dw       SMVB_continue_newY_eq_oldX_single ; y is $00 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

BoxList 
                    DW       BoxList_0                    ; list of all single vectorlists in this 
                    DW       BoxList_1 

BoxList_0 
                    db       $50, $01, -$3B 
                    dw       SMVB_continue_double 
                    db       -$60, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$19 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was $00, now 0 
                    db       $60, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       -$60, $01, $66 
                    dw       SMVB_startMove_yd4_single 
                    db       $60, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, -$18 
                    dw       SMVB_startMove_yd4_newY_eq_oldX_single ; y was $00, now 0 
                    db       -$60, $01, $00 
                    dw       SMVB_startDraw_yd4_single 
                    db       $00, $01, -$1B 
                    dw       SMVB_startMove_newY_eq_oldX_single ; y was $00, now 0 
                    db       $60, $01, $00 
                    dw       SMVB_startDraw_single 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
BoxList_1 
                    db       $20, $01, -$48 
                    dw       SMVB_continue_double 
                    db       $00, $01, $66 
                    dw       SMVB_startDraw_single 
                    db       $18, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$66 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $18, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, $66 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $18, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, -$66 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $18, $01, $00 
                    dw       SMVB_startMove_single 
                    db       SHITREG_POKE_VALUE, $01, $66 
                    dw       SMVB_startDraw_newY_eq_oldX_single ; y was $00, now SHIFT 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

DragonFlameList 
                    DW       DragonFlame_0                ; list of all single vectorlists in this 
                    DW       DragonFlame_1 
                    DW       DragonFlame_2 
                    DW       DragonFlame_3 

DragonFlame_0 
                    db       -$7E, $01, $23 
                    dw       SMVB_continue_yd4_single 
                    db       -$26, $01, $2A 
                    dw       SMVB_startDraw_single 
                    db       -$13, $01, $20 
                    dw       SMVB_continue7_single 
                    db       $03, $01, $56 
                    db       $2C, $01, $4E 
                    db       $27, $01, $3A 
                    db       $1E, $01, -$2B 
                    db       $15, $01, -$2C 
                    db       $10, $01, -$33 
                    db       -$02, $01, -$3F 
                    dw       SMVB_continue3_single 
                    db       -$10, $01, -$3E 
                    db       -$19, $01, -$1C 
                    db       -$18, $01, $24 
                    dw       SMVB_startMove_single 
                    db       $16, $01, $34 
                    dw       SMVB_startDraw_single 
                    db       $05, $01, $2A 
                    dw       SMVB_continue6_single 
                    db       -$0B, $01, $28 
                    db       -$0F, $01, $2B 
                    db       -$2F, $01, -$47 
                    db       $00, $01, -$35 
                    db       $16, $01, -$30 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
DragonFlame_1 
                    db       -$52, $01, $1E 
                    dw       SMVB_continue_yd4_single 
                    db       $22, $01, $37 
                    dw       SMVB_startDraw_single 
                    db       $1D, $01, $46 
                    dw       SMVB_continue7_single 
                    db       -$01, $01, $3B 
                    db       -$08, $01, $40 
                    db       -$20, $01, $2D 
                    db       -$30, $01, $39 
                    db       -$41, $01, -$5F 
                    db       -$18, $01, -$42 
                    db       -$08, $01, -$5D 
                    dw       SMVB_continue3_single 
                    db       $21, $01, -$2F 
                    db       $28, $01, -$1A 
                    db       $0C, $01, $24 
                    dw       SMVB_startMove_single 
                    db       -$1E, $01, $1E 
                    dw       SMVB_startDraw_single 
                    db       $00, $01, $35 
                    dw       SMVB_continue6_single 
                    db       $31, $01, $6D 
                    db       $1E, $01, -$46 
                    db       $04, $01, -$38 
                    db       -$03, $01, -$2C 
                    db       -$0C, $01, -$20 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
DragonFlame_2 
                    db       -$46, $01, $14 
                    dw       SMVB_continue_yd4_double 
                    db       -$24, $01, $30 
                    dw       SMVB_startDraw_single 
                    db       -$0E, $01, $3B 
                    dw       SMVB_continue3_single 
                    db       $08, $01, $56 
                    db       $16, $01, $3D 
                    db       $20, $01, $46 
                    dw       SMVB_continue_double 
                    db       $30, $01, -$39 
                    dw       SMVB_continue6_single 
                    db       $2C, $01, -$47 
                    db       $0A, $01, -$2D 
                    db       $06, $01, -$3D 
                    db       -$22, $01, -$68 
                    db       -$30, $01, -$3A 
                    db       -$02, $01, $32 
                    dw       SMVB_startMove_single 
                    db       $0C, $01, $20 
                    dw       SMVB_startDraw_single 
                    db       $0B, $01, $2F 
                    dw       SMVB_continue3_single 
                    db       -$04, $01, $5A 
                    db       -$23, $01, $4E 
                    db       -$17, $01, -$48 
                    dw       SMVB_continue_double 
                    db       -$04, $01, -$40 
                    dw       SMVB_continue2_single 
                    db       $1E, $01, -$1E 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 
DragonFlame_3 
                    db       -$4B, $01, $17 
                    dw       SMVB_continue_yd4_double 
                    db       -$20, $01, $40 
                    dw       SMVB_startDraw_single 
                    db       -$0C, $01, $33 
                    dw       SMVB_continue3_single 
                    db       $04, $01, $44 
                    db       $16, $01, $3D 
                    db       $21, $01, $58 
                    dw       SMVB_continue_double 
                    db       $36, $01, -$4F 
                    dw       SMVB_continue6_single 
                    db       $1C, $01, -$39 
                    db       $10, $01, -$37 
                    db       $06, $01, -$43 
                    db       -$20, $01, -$74 
                    db       -$30, $01, -$3A 
                    db       $06, $01, $32 
                    dw       SMVB_startMove_single 
                    db       $12, $01, $2C 
                    dw       SMVB_startDraw_single 
                    db       $11, $01, $3F 
                    dw       SMVB_continue3_single 
                    db       -$0A, $01, $50 
                    db       -$29, $01, $56 
                    db       -$1B, $01, -$46 
                    dw       SMVB_continue_double 
                    db       $01, $01, -$54 
                    dw       SMVB_continue2_single 
                    db       $0A, $01, -$20 
                    db       $fe, $00, $00 
                    dw       SMVB_lastDraw_rts2 

MY_WAIT_RECAL       macro    
                    direct   $d0 
                    LDA      #$20 
                    ldx      Vec_Loop_Count               ; recal counter, about 21 Minutes befor roll over 
                    leax     1,x 
                    stx      Vec_Loop_Count 
LF19E\?:            BITA     <VIA_int_flags               ;Wait for timer t2 
                    BEQ      LF19E\? 
                    LDD      #$3075                       ;Store refresh value 
                    STD      <VIA_t2_lo                   ;into timer t2 
                    LDD      #$CC 
                    STB      <VIA_cntl                    ;blank low and zero low 
                    STA      <VIA_shift_reg               ;clear shift register 
                    sta      <VIA_port_a                  ;clear D/A register 
                    LDD      #$0302 
                    STA      <VIA_port_b                  ;mux=1, disable mux 
                    STB      <VIA_port_b                  ;mux=1, enable mux 
                    LDB      #$01 
                    STB      <VIA_port_b                  ;disable mux 
                    endm     
;wr2
; MY_WAIT_RECAL
; rts
