; NOTE!!!
; IF USED IN 'C' YOU MIGHT NEED TO SAVE SOME REGS WHEN CALLING
; YOUR FUNCTIONS, LIKE REG 'U' and 'Y'!
; ALSO CHECK YOUR DP SETTINGS, BELOW DP = D0 is assumed!
 .module vlists.asx.s
 .area .text
INCLUDE_I           =      1 
Vec_Snd_Shadow      =      0xC800                        ;Shadow of sound chip registers (15 bytes) 
Vec_Btn_State       =      0xC80F                        ;Current state of all joystick buttons 
Vec_Prev_Btns       =      0xC810                        ;Previous state of all joystick buttons 
Vec_Buttons         =      0xC811                        ;Current toggle state of all buttons 
Vec_Button_1_1      =      0xC812                        ;Current toggle state of stick 1 button 1 
Vec_Button_1_2      =      0xC813                        ;Current toggle state of stick 1 button 2 
Vec_Button_1_3      =      0xC814                        ;Current toggle state of stick 1 button 3 
Vec_Button_1_4      =      0xC815                        ;Current toggle state of stick 1 button 4 
Vec_Button_2_1      =      0xC816                        ;Current toggle state of stick 2 button 1 
Vec_Button_2_2      =      0xC817                        ;Current toggle state of stick 2 button 2 
Vec_Button_2_3      =      0xC818                        ;Current toggle state of stick 2 button 3 
Vec_Button_2_4      =      0xC819                        ;Current toggle state of stick 2 button 4 
Vec_Joy_Resltn      =      0xC81A                        ;Joystick A/D resolution (0x80=min 0x00=max) 
Vec_Joy_1_X         =      0xC81B                        ;Joystick 1 left/right 
Vec_Joy_1_Y         =      0xC81C                        ;Joystick 1 up/down 
Vec_Joy_2_X         =      0xC81D                        ;Joystick 2 left/right 
Vec_Joy_2_Y         =      0xC81E                        ;Joystick 2 up/down 
Vec_Joy_Mux         =      0xC81F                        ;Joystick enable/mux flags (4 bytes) 
Vec_Joy_Mux_1_X     =      0xC81F                        ;Joystick 1 X enable/mux flag (=1) 
Vec_Joy_Mux_1_Y     =      0xC820                        ;Joystick 1 Y enable/mux flag (=3) 
Vec_Joy_Mux_2_X     =      0xC821                        ;Joystick 2 X enable/mux flag (=5) 
Vec_Joy_Mux_2_Y     =      0xC822                        ;Joystick 2 Y enable/mux flag (=7) 
Vec_Misc_Count      =      0xC823                        ;Misc counter/flag byte, zero when not in use 
Vec_0Ref_Enable     =      0xC824                        ;Check0Ref enable flag 
Vec_Loop_Count      =      0xC825                        ;Loop counter word (incremented in Wait_Recal) 
Vec_Brightness      =      0xC827                        ;Default brightness 
Vec_Dot_Dwell       =      0xC828                        ;Dot dwell time? 
Vec_Pattern         =      0xC829                        ;Dot pattern (bits) 
Vec_Text_HW         =      0xC82A                        ;Default text height and width 
Vec_Text_Height     =      0xC82A                        ;Default text height 
Vec_Text_Width      =      0xC82B                        ;Default text width 
Vec_Str_Ptr         =      0xC82C                        ;Temporary string pointer for Print_Str 
Vec_Counters        =      0xC82E                        ;Six bytes of counters 
Vec_Counter_1       =      0xC82E                        ;First counter byte 
Vec_Counter_2       =      0xC82F                        ;Second counter byte 
Vec_Counter_3       =      0xC830                        ;Third counter byte 
Vec_Counter_4       =      0xC831                        ;Fourth counter byte 
Vec_Counter_5       =      0xC832                        ;Fifth counter byte 
Vec_Counter_6       =      0xC833                        ;Sixth counter byte 
Vec_RiseRun_Tmp     =      0xC834                        ;Temp storage word for rise/run 
Vec_Angle           =      0xC836                        ;Angle for rise/run and rotation calculations 
Vec_Run_Index       =      0xC837                        ;Index pair for run 
;                       0xC839   ;Pointer to copyright string during startup
Vec_Rise_Index      =      0xC839                        ;Index pair for rise 
;                       0xC83B   ;High score cold-start flag (=0 if valid)
Vec_RiseRun_Len     =      0xC83B                        ;length for rise/run 
;                       0xC83C   ;temp byte
Vec_Rfrsh           =      0xC83D                        ;Refresh time (divided by 1.5MHz) 
Vec_Rfrsh_lo        =      0xC83D                        ;Refresh time low byte 
Vec_Rfrsh_hi        =      0xC83E                        ;Refresh time high byte 
Vec_Music_Work      =      0xC83F                        ;Music work buffer (14 bytes, backwards?) 
Vec_Music_Wk_A      =      0xC842                        ; register 10 
;                       0xC843   ;        register 9
;                       0xC844   ;        register 8
Vec_Music_Wk_7      =      0xC845                        ; register 7 
Vec_Music_Wk_6      =      0xC846                        ; register 6 
Vec_Music_Wk_5      =      0xC847                        ; register 5 
;                       0xC848   ;        register 4
;                       0xC849   ;        register 3
;                       0xC84A   ;        register 2
Vec_Music_Wk_1      =      0xC84B                        ; register 1 
;                       0xC84C   ;        register 0
Vec_Freq_Table      =      0xC84D                        ;Pointer to note-to-frequency table (normally 0xFC8D) 
Vec_Max_Players     =      0xC84F                        ;Maximum number of players for Select_Game 
Vec_Max_Games       =      0xC850                        ;Maximum number of games for Select_Game 
Vec_ADSR_Table      =      0xC84F                        ;Storage for first music header word (ADSR table) 
Vec_Twang_Table     =      0xC851                        ;Storage for second music header word ('twang' table) 
Vec_Music_Ptr       =      0xC853                        ;Music data pointer 
Vec_Expl_ChanA      =      0xC853                        ;Used by Explosion_Snd - bit for first channel used? 
Vec_Expl_Chans      =      0xC854                        ;Used by Explosion_Snd - bits for all channels used? 
Vec_Music_Chan      =      0xC855                        ;Current sound channel number for Init_Music 
Vec_Music_Flag      =      0xC856                        ;Music active flag (0x00=off 0x01=start 0x80=on) 
Vec_Duration        =      0xC857                        ;Duration counter for Init_Music 
Vec_Music_Twang     =      0xC858                        ;3 word 'twang' table used by Init_Music 
Vec_Expl_1          =      0xC858                        ;Four bytes copied from Explosion_Snd's U-reg parameters 
Vec_Expl_2          =      0xC859                        ; 
Vec_Expl_3          =      0xC85A                        ; 
Vec_Expl_4          =      0xC85B                        ; 
Vec_Expl_Chan       =      0xC85C                        ;Used by Explosion_Snd - channel number in use? 
Vec_Expl_ChanB      =      0xC85D                        ;Used by Explosion_Snd - bit for second channel used? 
Vec_ADSR_Timers     =      0xC85E                        ;ADSR timers for each sound channel (3 bytes) 
Vec_Music_Freq      =      0xC861                        ;Storage for base frequency of each channel (3 words) 
;                       0xC85E   ;Scratch 'score' storage for Display_Option (7 bytes)
Vec_Expl_Flag       =      0xC867                        ;Explosion_Snd initialization flag? 
;               0xC868...0xC876   ;Unused?
Vec_Expl_Timer      =      0xC877                        ;Used by Explosion_Snd 
;                       0xC878   ;Unused?
Vec_Num_Players     =      0xC879                        ;Number of players selected in Select_Game 
Vec_Num_Game        =      0xC87A                        ;Game number selected in Select_Game 
Vec_Seed_Ptr        =      0xC87B                        ;Pointer to 3-byte random number seed (=0xC87D) 
Vec_Random_Seed     =      0xC87D                        ;Default 3-byte random number seed 
                                ;
;    0xC880 - 0xCBEA is user RAM  ;
                                ;
Vec_Default_Stk     =      0xCBEA                        ;Default top-of-stack 
Vec_High_Score      =      0xCBEB                        ;High score storage (7 bytes) 
Vec_SWI3_Vector     =      0xCBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
Vec_SWI2_Vector     =      0xCBF2                        ;SWI2/SWI3 interrupt vector (3 bytes) 
Vec_FIRQ_Vector     =      0xCBF5                        ;FIRQ interrupt vector (3 bytes) 
Vec_IRQ_Vector      =      0xCBF8                        ;IRQ interrupt vector (3 bytes) 
Vec_SWI_Vector      =      0xCBFB                        ;SWI/NMI interrupt vector (3 bytes) 
Vec_NMI_Vector      =      0xCBFB                        ;SWI/NMI interrupt vector (3 bytes) 
Vec_Cold_Flag       =      0xCBFE                        ;Cold start flag (warm start if = 0x7321) 
                                ;
VIA_port_b          =      0xD000                        ;VIA port B data I/O register 
;       0 sample/hold (0=enable  mux 1=disable mux)
;       1 mux sel 0
;       2 mux sel 1
;       3 sound BC1
;       4 sound BDIR
;       5 comparator input
;       6 external device (slot pin 35) initialized to input
;       7 /RAMP
VIA_port_a          =      0xD001                        ;VIA port A data I/O register (handshaking) 
VIA_DDR_b           =      0xD002                        ;VIA port B data direction register (0=input 1=output) 
VIA_DDR_a           =      0xD003                        ;VIA port A data direction register (0=input 1=output) 
VIA_t1_cnt_lo       =      0xD004                        ;VIA timer 1 count register lo (scale factor) 
VIA_t1_cnt_hi       =      0xD005                        ;VIA timer 1 count register hi 
VIA_t1_lch_lo       =      0xD006                        ;VIA timer 1 latch register lo 
VIA_t1_lch_hi       =      0xD007                        ;VIA timer 1 latch register hi 
VIA_t2_lo           =      0xD008                        ;VIA timer 2 count/latch register lo (refresh) 
VIA_t2_hi           =      0xD009                        ;VIA timer 2 count/latch register hi 
VIA_shift_reg       =      0xD00A                        ;VIA shift register 
VIA_aux_cntl        =      0xD00B                        ;VIA auxiliary control register 
;       0 PA latch enable
;       1 PB latch enable
;       2 \                     110=output to CB2 under control of phase 2 clock
;       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
;       4 /
;       5 0=t2 one shot                 1=t2 free running
;       6 0=t1 one shot                 1=t1 free running
;       7 0=t1 disable PB7 output       1=t1 enable PB7 output
VIA_cntl            =      0xD00C                        ;VIA control register 
;       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
;       1 \
;       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
;       3 /
;       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
;       5 \
;       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
;       7 /
VIA_int_flags       =      0xD00D                        ;VIA interrupt flags register 
;               bit                             cleared by
;       0 CA2 interrupt flag            reading or writing port A I/O
;       1 CA1 interrupt flag            reading or writing port A I/O
;       2 shift register interrupt flag reading or writing shift register
;       3 CB2 interrupt flag            reading or writing port B I/O
;       4 CB1 interrupt flag            reading or writing port A I/O
;       5 timer 2 interrupt flag        read t2 low or write t2 high
;       6 timer 1 interrupt flag        read t1 count low or write t1 high
;       7 IRQ status flag               write logic 0 to IER or IFR bit
VIA_int_enable      =      0xD00E                        ;VIA interrupt enable register 
;       0 CA2 interrupt enable
;       1 CA1 interrupt enable
;       2 shift register interrupt enable
;       3 CB2 interrupt enable
;       4 CB1 interrupt enable
;       5 timer 2 interrupt enable
;       6 timer 1 interrupt enable
;       7 IER set/clear control
VIA_port_a_nohs     =      0xD00F                        ;VIA port A data I/O register (no handshaking) 
Cold_Start          =      0xF000                        ; 
Warm_Start          =      0xF06C                        ; 
Init_VIA            =      0xF14C                        ; 
Init_OS_RAM         =      0xF164                        ; 
Init_OS             =      0xF18B                        ; 
Wait_Recal          =      0xF192                        ; 
Set_Refresh         =      0xF1A2                        ; 
DP_to_D0            =      0xF1AA                        ; 
DP_to_C8            =      0xF1AF                        ; 
Read_Btns_Mask      =      0xF1B4                        ; 
Read_Btns           =      0xF1BA                        ; 
Joy_Analog          =      0xF1F5                        ; 
Joy_Digital         =      0xF1F8                        ; 
Sound_Byte          =      0xF256                        ; 
Sound_Byte_x        =      0xF259                        ; 
Sound_Byte_raw      =      0xF25B                        ; 
Clear_Sound         =      0xF272                        ; 
Sound_Bytes         =      0xF27D                        ; 
Sound_Bytes_x       =      0xF284                        ; 
Do_Sound            =      0xF289                        ; 
Do_Sound_x          =      0xF28C                        ; 
Intensity_1F        =      0xF29D                        ; 
Intensity_3F        =      0xF2A1                        ; 
Intensity_5F        =      0xF2A5                        ; 
Intensity_7F        =      0xF2A9                        ; 
Intensity_a         =      0xF2AB                        ; 
Dot_ix_b            =      0xF2BE                        ; 
Dot_ix              =      0xF2C1                        ; 
Dot_d               =      0xF2C3                        ; 
Dot_here            =      0xF2C5                        ; 
Dot_List            =      0xF2D5                        ; 
Dot_List_Reset      =      0xF2DE                        ; 
Recalibrate         =      0xF2E6                        ; 
Moveto_x_7F         =      0xF2F2                        ; 
Moveto_d_7F         =      0xF2FC                        ; 
Moveto_ix_FF        =      0xF308                        ; 
Moveto_ix_7F        =      0xF30C                        ; 
Moveto_ix_a         =      0xF30E                        ; 
Moveto_ix           =      0xF310                        ; 
Moveto_d            =      0xF312                        ; 
Reset0Ref_D0        =      0xF34A                        ; 
Check0Ref           =      0xF34F                        ; 
Reset0Ref           =      0xF354                        ; 
Reset_Pen           =      0xF35B                        ; 
Reset0Int           =      0xF36B                        ; 
Print_Str_hwyx      =      0xF373                        ; 
Print_Str_yx        =      0xF378                        ; 
Print_Str_d         =      0xF37A                        ; 
Print_List_hw       =      0xF385                        ; 
Print_List          =      0xF38A                        ; 
Print_List_chk      =      0xF38C                        ; 
Print_Ships_x       =      0xF391                        ; 
Print_Ships         =      0xF393                        ; 
Mov_Draw_VLc_a      =      0xF3AD                        ;count y x y x ... 
Mov_Draw_VL_b       =      0xF3B1                        ;y x y x ... 
Mov_Draw_VLcs       =      0xF3B5                        ;count scale y x y x ... 
Mov_Draw_VL_ab      =      0xF3B7                        ;y x y x ... 
Mov_Draw_VL_a       =      0xF3B9                        ;y x y x ... 
Mov_Draw_VL         =      0xF3BC                        ;y x y x ... 
Mov_Draw_VL_d       =      0xF3BE                        ;y x y x ... 
Draw_VLc            =      0xF3CE                        ;count y x y x ... 
Draw_VL_b           =      0xF3D2                        ;y x y x ... 
Draw_VLcs           =      0xF3D6                        ;count scale y x y x ... 
Draw_VL_ab          =      0xF3D8                        ;y x y x ... 
Draw_VL_a           =      0xF3DA                        ;y x y x ... 
Draw_VL             =      0xF3DD                        ;y x y x ... 
Draw_Line_d         =      0xF3DF                        ;y x y x ... 
Draw_VLp_FF         =      0xF404                        ;pattern y x pattern y x ... 0x01 
Draw_VLp_7F         =      0xF408                        ;pattern y x pattern y x ... 0x01 
Draw_VLp_scale      =      0xF40C                        ;scale pattern y x pattern y x ... 0x01 
Draw_VLp_b          =      0xF40E                        ;pattern y x pattern y x ... 0x01 
Draw_VLp            =      0xF410                        ;pattern y x pattern y x ... 0x01 
Draw_Pat_VL_a       =      0xF434                        ;y x y x ... 
Draw_Pat_VL         =      0xF437                        ;y x y x ... 
Draw_Pat_VL_d       =      0xF439                        ;y x y x ... 
Draw_VL_mode        =      0xF46E                        ;mode y x mode y x ... 0x01 
Print_Str           =      0xF495                        ; 
Random_3            =      0xF511                        ; 
Random              =      0xF517                        ; 
Init_Music_Buf      =      0xF533                        ; 
Clear_x_b           =      0xF53F                        ; 
Clear_C8_RAM        =      0xF542                        ;never used by GCE carts? 
Clear_x_256         =      0xF545                        ; 
Clear_x_d           =      0xF548                        ; 
Clear_x_b_80        =      0xF550                        ; 
Clear_x_b_a         =      0xF552                        ; 
Dec_3_Counters      =      0xF55A                        ; 
Dec_6_Counters      =      0xF55E                        ; 
Dec_Counters        =      0xF563                        ; 
Delay_3             =      0xF56D                        ;30 cycles 
Delay_2             =      0xF571                        ;25 cycles 
Delay_1             =      0xF575                        ;20 cycles 
Delay_0             =      0xF579                        ;12 cycles 
Delay_b             =      0xF57A                        ;5*B + 10 cycles 
Delay_RTS           =      0xF57D                        ;5 cycles 
Bitmask_a           =      0xF57E                        ; 
Abs_a_b             =      0xF584                        ; 
Abs_b               =      0xF58B                        ; 
Rise_Run_Angle      =      0xF593                        ; 
Get_Rise_Idx        =      0xF5D9                        ; 
Get_Run_Idx         =      0xF5DB                        ; 
Get_Rise_Run        =      0xF5EF                        ; 
Rise_Run_X          =      0xF5FF                        ; 
Rise_Run_Y          =      0xF601                        ; 
Rise_Run_Len        =      0xF603                        ; 
Rot_VL_ab           =      0xF610                        ; 
Rot_VL              =      0xF616                        ; 
Rot_VL_Mode         =      0xF61F                        ; 
Rot_VL_M_dft        =      0xF62B                        ; 
;Rot_VL_dft      EQU     0xF637   ;
;Rot_VL_ab       EQU     0xF610   ;
;Rot_VL          EQU     0xF616   ;
;Rot_VL_Mode_a   EQU     0xF61F   ;
;Rot_VL_Mode     EQU     0xF62B   ;
;Rot_VL_dft      EQU     0xF637   ;
Xform_Run_a         =      0xF65B                        ; 
Xform_Run           =      0xF65D                        ; 
Xform_Rise_a        =      0xF661                        ; 
Xform_Rise          =      0xF663                        ; 
Move_Mem_a_1        =      0xF67F                        ; 
Move_Mem_a          =      0xF683                        ; 
Init_Music_chk      =      0xF687                        ; 
Init_Music          =      0xF68D                        ; 
Init_Music_x        =      0xF692                        ; 
Select_Game         =      0xF7A9                        ; 
Clear_Score         =      0xF84F                        ; 
Add_Score_a         =      0xF85E                        ; 
Add_Score_d         =      0xF87C                        ; 
Strip_Zeros         =      0xF8B7                        ; 
Compare_Score       =      0xF8C7                        ; 
New_High_Score      =      0xF8D8                        ; 
Obj_Will_Hit_u      =      0xF8E5                        ; 
Obj_Will_Hit        =      0xF8F3                        ; 
Obj_Hit             =      0xF8FF                        ; 
Explosion_Snd       =      0xF92E                        ; 
Draw_Grid_VL        =      0xFF9F                        ; 
                                ;
music1              =      0xFD0D                        ; 
music2              =      0xFD1D                        ; 
music3              =      0xFD81                        ; 
music4              =      0xFDD3                        ; 
music5              =      0xFE38                        ; 
music6              =      0xFE76                        ; 
music7              =      0xFEC6                        ; 
music8              =      0xFEF8                        ; 
music9              =      0xFF26                        ; 
musica              =      0xFF44                        ; 
musicb              =      0xFF62                        ; 
musicc              =      0xFF7A                        ; 
musicd              =      0xFF8F                        ; 
Char_Table          =      0xF9F4 
Char_Table_End      =      0xFBD4 
SHITREG_POKE_VALUE  =        0x01 
 .globl _drawSpell
_drawSpell: 
                    pshs     u 
                    ldu      #_SpellIcons 
                    aslb     
                    ldu      b,u 
                    bra      contDraw 
 .globl _drawDot
_drawDot: 
                    pshs     u 
                    ldu      #_DotList 
                    bra      contDraw 
;////////////////////////////////////////////////
;/DUNGEON DRAWS
;////////////////////////////////////////////////
 .globl _drawUpWall
_drawUpWall: 
                    pshs     u 
                    ldu      #_ScenList_18 
 .globl contDraw
contDraw: 
; macro call ->                     MY_MOVE_TO_B_END  
                    LDB      #0x40                         ; 
                    BITB     *0x0D                         ; 
                    BEQ      .-2 
                    clra     
                    pulu     b,x,pc 
 .globl _drawUnkown
_drawUnkown: 
                    pshs     u 
                    ldu      #_UnkownList 
                    bra      contDraw 
 .globl _drawLeftDoor
_drawLeftDoor: 
                    pshs     u 
                    ldu      #_ScenList_19 
                    bra      contDraw 
 .globl _drawUpDoor
_drawUpDoor: 
                    pshs     u 
                    ldu      #_ScenList_20 
                    bra      contDraw 
 .globl _drawLeftWall
_drawLeftWall: 
                    pshs     u 
                    ldu      #_ScenList_17 
                    bra      contDraw 
 .globl _drawLeftWall_noZero
_drawLeftWall_noZero: 
                    pshs     u 
                    ldu      #_ScenList_17 
                    clra     
                    pulu     b,x,pc 
 .globl _drawLeftDoor_noZero
_drawLeftDoor_noZero: 
                    pshs     u 
                    ldu      #_ScenList_19 
                    clra     
                    pulu     b,x,pc 
 .globl _drawUnkown_noZero
_drawUnkown_noZero: 
                    pshs     u 
                    ldu      #_UnkownList 
                    clra     
                    pulu     b,x,pc 
;////////////////////////////////////////////////
;////////////////////////////////////////////////
;////////////////////////////////////////////////
;////////////////////////////////////////////////
;/CHARACTER DRAWS
;////////////////////////////////////////////////
 .globl _drawPlayer
_drawPlayer: 
                    pshs     u 
                    ldu      #_PlayerList 
drawCont:
 jsr calibrationZero
                    clra     
                    pulu     b,x,pc 
 .globl _drawGnoll
_drawGnoll: 
                    pshs     u 
                    ldu      #_GnollList 
 bra drawCont
 .globl _drawKobold
_drawKobold: 
                    pshs     u 
                    ldu      #_KoboldList 
 bra drawCont
 .globl _drawSkeleton
_drawSkeleton: 
                    pshs     u 
                    ldu      #_SkeletonList 
 bra drawCont
                    clra     
                    pulu     b,x,pc 
 .globl _drawHobbit
_drawHobbit: 
                    pshs     u 
                    ldu      #_HobbitList 
 bra drawCont
                    clra     
                    pulu     b,x,pc 
 .globl _drawZomnbie
_drawZomnbie: 
                    pshs     u 
                    ldu      #_ZombieList 
 bra drawCont
                    clra     
                    pulu     b,x,pc 
 .globl _drawOrc
_drawOrc: 
                    pshs     u 
                    ldu      #_OrcList 
 bra drawCont
 .globl _drawFighter
_drawFighter: 
                    pshs     u 
                    ldu      #_FighterList 
 bra drawCont
 .globl _drawPrismaticWall
_drawPrismaticWall: 
                    pshs     u 
                    ldu      #_PrismaticWall 
 bra drawCont
 .globl _drawMummy
_drawMummy: 
                    pshs     u 
                    ldu      #_MummyList 
 bra drawCont
 .globl _drawElf
_drawElf: 
                    pshs     u 
                    ldu      #_ElfList 
 bra drawCont
 .globl _drawGhoul
_drawGhoul: 
                    pshs     u 
                    ldu      #_GhoulList 
 bra drawCont
 .globl _drawDwarf
_drawDwarf: 
                    pshs     u 
                    ldu      #_DwarfList 
 bra drawCont
 .globl _drawTroll
_drawTroll: 
                    pshs     u 
                    ldu      #_TrollList 
 bra drawCont
 .globl _drawWraith
_drawWraith: 
                    pshs     u 
                    ldu      #_WraithList 
 bra drawCont
 .globl _drawOgre
_drawOgre: 
                    pshs     u 
                    ldu      #_OgreList 
 bra drawCont
 .globl _drawMinotaur
_drawMinotaur: 
                    pshs     u 
                    ldu      #_MinotaurList 
 bra drawCont
 .globl _drawGiant
_drawGiant: 
                    pshs     u 
                    ldu      #_GiantList 
 bra drawCont2
 .globl _drawSpecter
_drawSpecter: 
                    pshs     u 
                    ldu      #_SpecterList 
 bra drawCont2

drawCont2:
 jsr calibrationZero
                    clra     
                    pulu     b,x,pc 


 .globl _drawVampire
_drawVampire: 
                    pshs     u 
                    ldu      #_VampireList 
 bra drawCont2
 .globl _drawDemon
_drawDemon: 
                    pshs     u 
                    ldu      #_DemonList 
 bra drawCont2
 .globl _drawDragon
_drawDragon: 
                    pshs     u 
                    ldu      #_DragonList 
 bra drawCont2
 .globl _drawStaircase
_drawStaircase: 
                    pshs     u 
                    ldu      #_StaircaseList 
 bra drawCont2
 .globl _drawHome
_drawHome: 
                    pshs     u 
                    ldu      #_HomeList 
 bra drawCont2
 .globl _drawInn
_drawInn: 
                    pshs     u 
                    ldu      #_InnList 
 bra drawCont2
 .globl _drawFountain
_drawFountain: 
                    pshs     u 
                    ldu      #_FountainList 
 bra drawCont2
 .globl _drawAltar
_drawAltar: 
                    pshs     u 
                    ldu      #_AltarList 
 bra drawCont2
 .globl _drawElevator
_drawElevator: 
                    pshs     u 
                    ldu      #_ElevatorList 
 bra drawCont2
 .globl _drawNone
_drawNone: 
                    rts      
 .globl _drawHolySymboly
_drawHolySymboly:
                    pshs     u 
                    ldu      #_HolySymbolAni 
                    aslb
                    ldu b,u
 bra drawCont2
 .globl _drawThrone
_drawThrone: 
                    pshs     u 
                    ldu      #_ThroneList 
 .globl contDraw2
contDraw2: 
                    lda      Vec_Loop_Count+1 
                    anda     #6 
                    ldu      a,u 
 bra drawCont2
 .globl _drawFlame
_drawFlame: 
                    pshs     u 
                    ldu      #_DragonFlameList 
                    bra      contDraw2 
 .globl _drawCube
_drawCube: 
                    pshs     u 
                    ldu      #_CubeList 
 .globl contDraw3
contDraw3: 
                    lda      Vec_Loop_Count+1 
                    anda     #8 
                    lsra     
                    lsra     
                    ldu      a,u 
 bra drawCont2
 .globl _drawBox
_drawBox: 
                    pshs     u 
                    ldu      #_BoxList 
                    bra      contDraw3 
 .globl _drawTreasure
_drawTreasure: 
                    pshs     u 
                    ldu      #_TreasureList 
                    aslb     
                    ldu      b,u 
 bra drawCont3


drawCont3:
 jsr calibrationZero
                    clra     
                    pulu     b,x,pc 

 .globl _ScenList_17
_ScenList_17: 
                    .byte       -0x28, 0x01, -0x28 
                    .word       SMVB_continue_yEqx_single    ; y is -0x28 
                    .byte       0x00, 0x01, 0x50 
                    .word       SMVB_startDraw_single 
                    .byte       -0x78, 0x01, 0x00 
                    .word       SMVB_continue_yd4_quadro 
                    .byte       0x00, 0x01, -0x50 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x78, 0x01, 0x00 
                    .word       SMVB_continue_quadro 
                    .byte       0x28, 0x01, 0x28 
                    .word       SMVB_startMove_yd4_yEqx_single ; y is 0x28 
                    .byte       0x00, 0x00, 0x00 
                    .word       SMVB_lastMove_rts_stay 
 .globl _ScenList_18
_ScenList_18: 
                    .byte       -0x27, 0x01, 0x28 
                    .word       SMVB_continue_single 
                    .byte       0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x78 
                    .word       SMVB_continue_yd4_quadro 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x78 
                    .word       SMVB_continue_quadro 
                    .byte       0x28, 0x01, -0x28 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x00, 0x00 
                    .word       SMVB_lastMove_rts_stay 
 .globl _ScenList_19
_ScenList_19: 
                    .byte       -0x28, 0x01, -0x28 
                    .word       SMVB_continue_yEqx_single    ; y is -0x28 
                    .byte       0x00, 0x01, 0x50 
                    .word       SMVB_startDraw_single 
                    .byte       -0x49, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, -0x51 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5D, 0x01, 0x28 
                    .word       SMVB_startMove_yd4_double 
                    .byte       -0x01, 0x01, -0x50 
                    .word       SMVB_startDraw_single 
                    .byte       -0x49, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, 0x50 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x49, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x28 
                    .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       0x5D, 0x01, 0x00 
                    .word       SMVB_startDraw_double 
                    .byte       0x00, 0x01, -0x28 
                    .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       0x49, 0x01, 0x00 
                    .word       SMVB_startDraw_double 
                    .byte       0x28, 0x01, 0x28 
                    .word       SMVB_startMove_yEqx_single   ; y is 0x28 
                    .byte       0x00, 0x00, 0x00 
                    .word       SMVB_lastMove_rts_stay 
 .globl _ScenList_20
_ScenList_20: 
                    .byte       -0x27, 0x01, 0x28 
                    .word       SMVB_continue_single 
                    .byte       0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x49 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x4F, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x28, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x5D 
                    .word       SMVB_startDraw_double 
                    .byte       -0x27, 0x01, -0x01 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x49 
                    .word       SMVB_startDraw_double 
                    .byte       0x4E, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x49 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x5D 
                    .word       SMVB_startMove_double 
                    .byte       0x00, 0x01, -0x49 
                    .word       SMVB_startDraw_double 
                    .byte       0x28, 0x01, -0x28 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x00, 0x00 
                    .word       SMVB_lastMove_rts_stay 
 .globl _UnkownList
_UnkownList: 
                    .byte       -0x71, 0x01, 0x6C 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x1A, 0x01, 0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       0x14, 0x01, 0x2B 
                    .word       SMVB_continue7_single 
                    .byte       -0x0E, 0x01, 0x24 
                    .byte       -0x17, 0x01, 0x0C 
                    .byte       -0x1E, 0x01, -0x08 
                    .byte       -0x0C, 0x01, -0x22 
                    .byte       -0x20, 0x01, -0x0A 
                    .byte       -0x3B, 0x01, 0x00 
                    .byte       -0x24, 0x01, 0x0A 
                    .word       SMVB_startMove_single 
                    .byte       0x08, 0x01, 0x03 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x03 
                    .word       SMVB_continue7_single 
                    .byte       0x04, 0x01, -0x06 
                    .byte       -0x03, 0x01, -0x08 
                    .byte       -0x07, 0x01, -0x02 
                    .byte       -0x07, 0x01, 0x02 
                    .byte       -0x03, 0x01, 0x08 
                    .byte       0x02, 0x01, 0x07 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastMove_rts_stay 
 .globl _PlayerList
_PlayerList: 
                    .byte       -0x1C, 0x01, 0x44 
                    .word       SMVB_continue_double 
                    .byte       -0x0A, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x18 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x18 
                    .byte       0x27, 0x01, 0x31 
                    .word       SMVB_startMove_single 
                    .byte       -0x09, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x19 
                    .word       SMVB_continue7_single 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x25 
                    .byte       -0x30, 0x01, 0x00 
                    .byte       -0x05, 0x01, -0x0F 
                    .byte       -0x14, 0x01, 0x1B 
                    .byte       -0x22, 0x01, 0x00 
                    .byte       -0x0E, 0x01, -0x18 
                    .word       SMVB_continue7_single 
                    .byte       -0x39, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x3D 
                    .byte       0x05, 0x01, 0x00 
                    .byte       0x0F, 0x01, 0x11 
                    .byte       0x00, 0x01, 0x13 
                    .byte       0x27, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x08 
                    .word       SMVB_continue7_single 
                    .byte       -0x15, 0x01, -0x15 
                    .byte       0x23, 0x01, -0x2C 
                    .byte       0x10, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x18 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, -0x0B 
                    .byte       0x13, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0B 
                    .byte       0x41, 0x01, 0x00 
                    .byte       0x0F, 0x01, 0x12 
                    .byte       0x00, 0x01, 0x06 
                    .byte       -0x50, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x1E, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x25 
                    .byte       0x27, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0C 
                    .byte       0x0F, 0x01, 0x00 
                    .byte       0x0E, 0x01, 0x0F 
                    .byte       0x00, 0x01, 0x22 
                    .word       SMVB_continue_single 
                    .byte       -0x64, 0x01, -0x48 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x30 
                    .word       SMVB_continue4_single 
                    .byte       -0x06, 0x01, 0x00 
                    .byte       -0x0E, 0x01, -0x11 
                    .byte       0x00, 0x01, -0x1E 
                    .byte       -0x24, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       0x10, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x18 
                    .word       SMVB_continue4_single 
                    .byte       -0x1E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x07 
                    .byte       0x0E, 0x01, -0x11 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _HomeList
_HomeList: 
                    .byte       0x6C, 0x01, 0x08 
                    .word       SMVB_continue_tripple 
                    .byte       -0x64, 0x01, -0x7C 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       -0x08, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x56 
                    .word       SMVB_continue_hex 
                    .byte       0x08, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x64, 0x01, -0x7E 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x14 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x5A, 0x01, 0x02 
                    .word       SMVB_startMove_yd4_hex 
                    .byte       0x00, 0x01, 0x5C 
                    .word       SMVB_startDraw_tripple 
                    .byte       0x70, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x5C 
                    .word       SMVB_continue_yd4_hex 
                    .byte       -0x70, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, 0x44 
                    .word       SMVB_continue_double 
                    .byte       0x70, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x46 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x70, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x1C, 0x01, 0x68 
                    .word       SMVB_startMove_quadro 
                    .byte       0x00, 0x01, -0x68 
                    .word       SMVB_startDraw_octo 
                    .byte       0x6E, 0x01, 0x00 
                    .word       SMVB_continue_quadro 
                    .byte       0x53, 0x01, 0x67 
                    .word       SMVB_continue_quadro 
                    .byte       -0x53, 0x01, 0x69 
                    .word       SMVB_continue_yd4_quadro 
                    .byte       -0x6E, 0x01, 0x00 
                    .word       SMVB_continue_quadro 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _StaircaseList
_StaircaseList: 
                    .byte       0x6A, 0x01, -0x42 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x42 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x42 
                    .word       SMVB_continue_double 
                    .byte       -0x14, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       -0x2B, 0x01, -0x1B 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x5D 
                    .word       SMVB_startDraw_double 
                    .byte       0x13, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x5D 
                    .word       SMVB_continue_double 
                    .byte       -0x13, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x5D, 0x01, 0x74 
                    .word       SMVB_startMove_double 
                    .byte       -0x6E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       0x00, 0x01, -0x5D 
                    .word       SMVB_continue_tripple 
                    .byte       0x6E, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, 0x5D 
                    .word       SMVB_continue_yd4_tripple 
                    .byte       -0x09, 0x01, -0x4A 
                    .word       SMVB_startMove_single 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x1B 
                    .word       SMVB_continue3_single 
                    .byte       -0x27, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x15 
                    .byte       0x43, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x30 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x4D, 0x01, -0x70 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x13, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x55 
                    .word       SMVB_continue3_single 
                    .byte       0x13, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x55 
                    .byte       0x0A, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       0x43, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x2E 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x0A, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, 0x13 
                    .byte       -0x39, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x41 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x43, 0x01, -0x4A 
                    .word       SMVB_startMove_single 
                    .byte       -0x43, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       0x00, 0x01, 0x1B 
                    .word       SMVB_continue4_single 
                    .byte       0x27, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x1B 
                    .byte       0x60, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x36 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _GnollList
_GnollList: 
                    .byte       0x5E, 0x01, -0x2E 
                    .word       SMVB_continue_double 
                    .byte       0x05, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x33 
                    .word       SMVB_continue6_single 
                    .byte       -0x0A, 0x01, -0x11 
                    .byte       -0x1F, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x22 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       -0x09, 0x01, -0x22 
                    .byte       -0x3E, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x08, 0x01, 0x10 
                    .word       SMVB_continue7_single 
                    .byte       -0x35, 0x01, 0x01 
                    .byte       0x00, 0x01, 0x3E 
                    .byte       0x11, 0x01, -0x07 
                    .byte       0x04, 0x01, -0x14 
                    .byte       0x28, 0x01, 0x00 
                    .byte       0x07, 0x01, 0x13 
                    .byte       0x08, 0x01, 0x11 
                    .word       SMVB_continue3_single 
                    .byte       0x10, 0x01, 0x0E 
                    .byte       0x00, 0x01, 0x54 
                    .byte       -0x5C, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x10 
                    .word       SMVB_continue2_single 
                    .byte       0x5C, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x11 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, -0x11 
                    .byte       0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x11 
                    .byte       0x14, 0x01, 0x00 
                    .byte       0x0A, 0x01, -0x11 
                    .byte       0x00, 0x01, -0x10 
                    .byte       -0x0A, 0x01, -0x10 
                    .word       SMVB_continue7_single 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x10 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x54 
                    .byte       0x0B, 0x01, -0x11 
                    .byte       0x09, 0x01, -0x11 
                    .byte       0x0A, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x44 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x33 
                    .byte       0x0A, 0x01, 0x33 
                    .byte       0x15, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x44 
                    .byte       0x05, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       -0x09, 0x01, -0x22 
                    .word       SMVB_startMove_single 
                    .byte       0x05, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x11 
                    .word       SMVB_continue4_single 
                    .byte       -0x0A, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x11 
                    .byte       0x05, 0x01, 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _KoboldList
_KoboldList: 
                    .byte       0x41, 0x01, -0x39 
                    .word       SMVB_continue_double 
                    .byte       0x0F, 0x01, 0x06 
                    .word       SMVB_startDraw_single 
                    .byte       0x0B, 0x01, 0x0B 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x25 
                    .byte       -0x0C, 0x01, 0x0B 
                    .byte       0x00, 0x01, 0x2A 
                    .byte       -0x19, 0x01, 0x00 
                    .byte       -0x0D, 0x01, -0x24 
                    .byte       0x00, 0x01, 0x24 
                    .byte       -0x0D, 0x01, -0x04 
                    .word       SMVB_continue7_single 
                    .byte       -0x01, 0x01, -0x36 
                    .byte       -0x0B, 0x01, 0x09 
                    .byte       -0x01, 0x01, 0x0E 
                    .byte       -0x0A, 0x01, 0x04 
                    .byte       0x00, 0x01, 0x35 
                    .byte       0x29, 0x01, 0x36 
                    .byte       0x09, 0x01, 0x0E 
                    .word       SMVB_continue7_single 
                    .byte       -0x16, 0x01, -0x0D 
                    .byte       -0x2A, 0x01, -0x35 
                    .byte       0x00, 0x01, -0x37 
                    .byte       -0x0F, 0x01, -0x04 
                    .byte       -0x0A, 0x01, -0x1F 
                    .byte       -0x19, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0F 
                    .word       SMVB_continue7_single 
                    .byte       -0x0D, 0x01, 0x04 
                    .byte       0x00, 0x01, -0x38 
                    .byte       0x15, 0x01, 0x06 
                    .byte       0x0A, 0x01, -0x0B 
                    .byte       0x0D, 0x01, -0x07 
                    .byte       0x1F, 0x01, -0x04 
                    .byte       0x0B, 0x01, 0x0F 
                    .word       SMVB_continue5_single 
                    .byte       0x02, 0x01, 0x0E 
                    .byte       0x07, 0x01, -0x01 
                    .byte       0x02, 0x01, -0x11 
                    .byte       0x26, 0x01, 0x00 
                    .byte       0x0C, 0x01, 0x36 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, 0x12 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SkeletonList
_SkeletonList: 
                    .byte       0x6A, 0x01, -0x39 
                    .word       SMVB_continue_double 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue_double 
                    .byte       0x0C, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x01, 0x01, 0x13 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x13 
                    .byte       -0x0E, 0x01, -0x05 
                    .byte       0x00, 0x01, -0x08 
                    .byte       0x0E, 0x01, -0x05 
                    .byte       0x0C, 0x01, -0x01 
                    .word       SMVB_continue2_single 
                    .byte       0x01, 0x01, -0x11 
                    .byte       -0x3D, 0x01, 0x10 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x5F, 0x01, 0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x60, 0x01, 0x0A 
                    .word       SMVB_continue_single 
                    .byte       -0x1D, 0x01, 0x27 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x07, 0x01, -0x25 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x02 
                    .word       SMVB_continue_single 
                    .byte       -0x01, 0x01, -0x14 
                    .word       SMVB_startMove_single 
                    .byte       -0x04, 0x01, -0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, -0x24 
                    .word       SMVB_continue_single 
                    .byte       -0x2B, 0x01, -0x59 
                    .word       SMVB_startMove_single 
                    .byte       0x09, 0x01, 0x13 
                    .word       SMVB_startDraw_single 
                    .byte       0x04, 0x01, 0x11 
                    .word       SMVB_continue3_single 
                    .byte       -0x0F, 0x01, -0x0A 
                    .byte       -0x0B, 0x01, -0x08 
                    .byte       0x08, 0x01, 0x16 
                    .word       SMVB_startMove_single 
                    .byte       0x12, 0x01, -0x05 
                    .word       SMVB_startDraw_single 
                    .byte       0x0C, 0x01, 0x04 
                    .word       SMVB_continue7_single 
                    .byte       0x18, 0x01, 0x11 
                    .byte       0x1A, 0x01, 0x1C 
                    .byte       0x00, 0x01, 0x2A 
                    .byte       0x08, 0x01, -0x02 
                    .byte       0x24, 0x01, -0x1C 
                    .byte       0x1A, 0x01, 0x00 
                    .byte       0x0C, 0x01, 0x0D 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x37 
                    .byte       -0x0B, 0x01, 0x0E 
                    .byte       -0x1A, 0x01, 0x00 
                    .byte       -0x23, 0x01, -0x1E 
                    .byte       -0x0A, 0x01, -0x04 
                    .byte       0x00, 0x01, 0x25 
                    .byte       -0x1B, 0x01, 0x15 
                    .word       SMVB_continue4_single 
                    .byte       -0x0F, 0x01, 0x24 
                    .byte       0x11, 0x01, 0x11 
                    .byte       0x14, 0x01, 0x0F 
                    .byte       -0x0B, 0x01, 0x13 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, -0x0C 
                    .word       SMVB_startDraw_yEqx_single   ; y is -0x0C 
                    .byte       0x04, 0x01, -0x17 
                    .word       SMVB_continue2_single 
                    .byte       -0x0C, 0x01, 0x08 
                    .byte       -0x08, 0x01, -0x52 
                    .word       SMVB_startMove_single 
                    .byte       0x03, 0x01, -0x1E 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x03 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x15 
                    .word       SMVB_startMove_single 
                    .byte       -0x05, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, -0x1E 
                    .word       SMVB_continue_single 
                    .byte       -0x11, 0x01, 0x02 
                    .word       SMVB_startMove_single 
                    .byte       0x05, 0x01, 0x1E 
                    .word       SMVB_startDraw_single 
                    .byte       -0x26, 0x01, -0x03 
                    .word       SMVB_startMove_single 
                    .byte       -0x23, 0x01, -0x19 
                    .word       SMVB_startDraw_single 
                    .byte       -0x28, 0x01, -0x0F 
                    .word       SMVB_continue_single 
                    .byte       0x0E, 0x01, -0x2A 
                    .word       SMVB_startMove_single 
                    .byte       -0x08, 0x01, 0x07 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, 0x0E 
                    .word       SMVB_continue5_single 
                    .byte       0x00, 0x01, 0x10 
                    .byte       0x2C, 0x01, 0x09 
                    .byte       0x28, 0x01, 0x1B 
                    .byte       0x05, 0x01, 0x0B 
                    .byte       0x07, 0x01, -0x03 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x12 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was -0x03, now SHIFT 
                    .byte       0x13, 0x01, 0x27 
                    .word       SMVB_startMove_single 
                    .byte       -0x05, 0x01, 0x1B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       0x03, 0x01, -0x12 
                    .word       SMVB_startDraw_single 
                    .byte       -0x5E, 0x01, 0x1D 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x2B, 0x01, -0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       0x1F, 0x01, -0x15 
                    .word       SMVB_continue_single 
                    .byte       0x0D, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x08 
                    .word       SMVB_startDraw_single 
                    .byte       -0x22, 0x01, 0x18 
                    .word       SMVB_continue5_single 
                    .byte       -0x2F, 0x01, 0x05 
                    .byte       0x00, 0x01, 0x13 
                    .byte       0x05, 0x01, 0x0E 
                    .byte       0x06, 0x01, 0x07 
                    .byte       0x5C, 0x01, -0x32 
                    .word       SMVB_startMove_double 
                    .byte       0x02, 0x01, 0x0E 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x02, 0x01, 0x0F 
                    .word       SMVB_continue_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _HobbitList
_HobbitList: 
                    .byte       0x27, 0x01, 0x27 
                    .word       SMVB_continue_yEqx_single    ; y is 0x27 
                    .byte       0x0C, 0x01, 0x1E 
                    .word       SMVB_startDraw_single 
                    .byte       0x0D, 0x01, -0x1C 
                    .word       SMVB_continue_single 
                    .byte       -0x0C, 0x01, 0x1A 
                    .word       SMVB_startMove_single 
                    .byte       0x08, 0x01, -0x62 
                    .word       SMVB_startDraw_single 
                    .byte       0x06, 0x01, -0x16 
                    .word       SMVB_startMove_single 
                    .byte       0x4D, 0x01, 0x08 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0A, 0x01, 0x1B 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x1B, 0x01, 0x19 
                    .word       SMVB_continue5_single 
                    .byte       -0x47, 0x01, -0x09 
                    .byte       -0x15, 0x01, -0x17 
                    .byte       -0x04, 0x01, -0x24 
                    .byte       0x2B, 0x01, 0x06 
                    .byte       0x14, 0x01, -0x1D 
                    .word       SMVB_startMove_single 
                    .byte       0x0F, 0x01, -0x04 
                    .word       SMVB_startDraw_single 
                    .byte       0x04, 0x01, -0x0F 
                    .word       SMVB_continue7_single 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x04, 0x01, 0x0E 
                    .byte       0x12, 0x01, -0x02 
                    .byte       0x00, 0x01, 0x11 
                    .byte       0x0F, 0x01, -0x12 
                    .byte       0x0A, 0x01, -0x01 
                    .byte       0x00, 0x01, -0x1B 
                    .word       SMVB_continue7_single 
                    .byte       0x08, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x17 
                    .byte       0x09, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x2D 
                    .byte       -0x06, 0x01, -0x10 
                    .byte       -0x18, 0x01, -0x02 
                    .byte       -0x2B, 0x01, 0x0F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x29 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x15 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, 0x26 
                    .word       SMVB_continue7_single 
                    .byte       0x03, 0x01, 0x10 
                    .byte       -0x0C, 0x01, -0x07 
                    .byte       -0x0E, 0x01, 0x05 
                    .byte       0x0A, 0x01, -0x0F 
                    .byte       0x03, 0x01, -0x28 
                    .byte       0x09, 0x01, -0x22 
                    .byte       -0x1A, 0x01, -0x1F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x3D 
                    .word       SMVB_startDraw_single 
                    .byte       0x0F, 0x01, 0x03 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, -0x0B 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x1C 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x0D 
                    .byte       0x00, 0x01, -0x60 
                    .byte       0x16, 0x01, 0x12 
                    .byte       0x18, 0x01, -0x0C 
                    .byte       0x0A, 0x01, -0x0F 
                    .byte       0x28, 0x01, 0x03 
                    .byte       0x06, 0x01, 0x0E 
                    .word       SMVB_continue7_single 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x17 
                    .byte       0x0D, 0x01, -0x0A 
                    .byte       0x32, 0x01, 0x00 
                    .byte       0x09, 0x01, 0x1D 
                    .byte       0x00, 0x01, 0x2B 
                    .byte       -0x05, 0x01, 0x0D 
                    .word       SMVB_continue_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ZombieList
_ZombieList: 
                    .byte       0x36, 0x01, -0x5E 
                    .word       SMVB_continue_single 
                    .byte       -0x59, 0x01, -0x04 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x2B 
                    .word       SMVB_continue4_single 
                    .byte       0x0F, 0x01, 0x00 
                    .byte       0x04, 0x01, 0x15 
                    .byte       0x46, 0x01, 0x06 
                    .byte       0x00, 0x01, 0x14 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x20 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x4A, 0x01, 0x08 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x14 
                    .word       SMVB_continue4_single 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x29 
                    .byte       0x59, 0x01, -0x06 
                    .byte       0x00, 0x01, 0x13 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x0E, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x20 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x16, 0x01, 0x00 
                    .word       SMVB_continue4_single 
                    .byte       0x16, 0x01, 0x11 
                    .byte       0x00, 0x01, 0x13 
                    .byte       -0x2C, 0x01, -0x04 
                    .byte       0x22, 0x01, -0x1E 
                    .word       SMVB_startMove_single 
                    .byte       -0x07, 0x01, -0x0E 
                    .word       SMVB_startDraw_single 
                    .byte       -0x1C, 0x01, 0x04 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x3B, 0x01, -0x03 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x31, 0x01, -0x28 
                    .word       SMVB_continue7_single 
                    .byte       -0x17, 0x01, -0x0C 
                    .byte       0x0E, 0x01, -0x03 
                    .byte       0x00, 0x01, -0x12 
                    .byte       0x0E, 0x01, -0x03 
                    .byte       0x02, 0x01, 0x15 
                    .byte       0x3A, 0x01, 0x2A 
                    .byte       -0x01, 0x01, 0x1D 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x26, 0x01, 0x1C 
                    .word       SMVB_continue_single 
                    .byte       0x71, 0x01, -0x25 
                    .word       SMVB_startMove_single 
                    .byte       -0x0E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x17 
                    .word       SMVB_continue2_single 
                    .byte       0x0E, 0x01, -0x17 
                    .byte       -0x16, 0x01, 0x22 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, -0x10 
                    .word       SMVB_startDraw_single 
                    .byte       -0x08, 0x01, -0x04 
                    .word       SMVB_continue5_single 
                    .byte       0x00, 0x01, 0x39 
                    .byte       0x07, 0x01, -0x05 
                    .byte       0x0D, 0x01, -0x11 
                    .byte       0x00, 0x01, -0x0D 
                    .byte       0x09, 0x01, 0x19 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x17 
                    .word       SMVB_startDraw_single 
                    .byte       0x0E, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       -0x0E, 0x01, -0x17 
                    .byte       0x1E, 0x01, 0x12 
                    .word       SMVB_startMove_single 
                    .byte       -0x17, 0x01, 0x11 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x1F, 0x01, 0x00 
                    .word       SMVB_continue5_single 
                    .byte       -0x15, 0x01, -0x11 
                    .byte       -0x05, 0x01, -0x1A 
                    .byte       -0x0C, 0x01, 0x02 
                    .byte       0x04, 0x01, 0x2E 
                    .byte       -0x3C, 0x01, 0x2E 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue6_single 
                    .byte       -0x0B, 0x01, -0x08 
                    .byte       -0x03, 0x01, -0x0D 
                    .byte       -0x0D, 0x01, -0x03 
                    .byte       0x16, 0x01, -0x0B 
                    .byte       0x33, 0x01, -0x29 
                    .byte       0x00, 0x01, -0x29 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x13, 0x01, -0x05 
                    .word       SMVB_continue7_single 
                    .byte       0x19, 0x01, -0x14 
                    .byte       0x0D, 0x01, -0x01 
                    .byte       0x09, 0x01, -0x10 
                    .byte       0x15, 0x01, -0x11 
                    .byte       0x1F, 0x01, 0x00 
                    .byte       0x17, 0x01, 0x11 
                    .byte       0x0E, 0x01, 0x12 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, 0x25 
                    .byte       -0x0E, 0x01, 0x12 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _OrcList
_OrcList: 
                    .byte       0x55, 0x01, -0x3F 
                    .word       SMVB_continue_double 
                    .byte       0x0D, 0x01, 0x05 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x07, 0x01, 0x15 
                    .word       SMVB_continue3_single 
                    .byte       -0x09, 0x01, -0x07 
                    .byte       0x03, 0x01, -0x13 
                    .byte       -0x49, 0x01, 0x01 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x0C, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       0x01, 0x01, 0x27 
                    .word       SMVB_continue7_single 
                    .byte       -0x12, 0x01, -0x05 
                    .byte       0x05, 0x01, 0x1B 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x15 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x15 
                    .byte       0x53, 0x01, -0x06 
                    .word       SMVB_continue_single 
                    .byte       -0x53, 0x01, -0x10 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x02, 0x01, -0x1F 
                    .word       SMVB_continue2_single 
                    .byte       0x06, 0x01, -0x24 
                    .byte       -0x12, 0x01, 0x12 
                    .word       SMVB_startMove_single 
                    .byte       -0x15, 0x01, -0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x05, 0x01, -0x17 
                    .word       SMVB_continue7_single 
                    .byte       -0x10, 0x01, 0x04 
                    .byte       -0x0C, 0x01, -0x09 
                    .byte       -0x05, 0x01, 0x1A 
                    .byte       -0x0A, 0x01, -0x01 
                    .byte       0x00, 0x01, -0x3B 
                    .byte       0x14, 0x01, 0x07 
                    .byte       0x16, 0x01, -0x07 
                    .word       SMVB_continue7_single 
                    .byte       0x0B, 0x01, -0x0A 
                    .byte       0x1F, 0x01, -0x02 
                    .byte       0x0D, 0x01, 0x0C 
                    .byte       0x03, 0x01, 0x13 
                    .byte       0x09, 0x01, 0x02 
                    .byte       0x10, 0x01, -0x10 
                    .byte       0x28, 0x01, -0x05 
                    .word       SMVB_continue7_single 
                    .byte       0x0F, 0x01, 0x15 
                    .byte       0x00, 0x01, 0x28 
                    .byte       -0x0D, 0x01, 0x04 
                    .byte       -0x07, 0x01, 0x2C 
                    .byte       -0x10, 0x01, -0x0E 
                    .byte       -0x07, 0x01, -0x0E 
                    .byte       -0x0D, 0x01, -0x07 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x1C 
                    .byte       -0x0A, 0x01, -0x06 
                    .byte       -0x05, 0x01, -0x26 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       -0x01, 0x01, 0x10 
                    .byte       -0x0B, 0x01, 0x07 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _FighterList
_FighterList: 
                    .byte       0x5B, 0x01, -0x31 
                    .word       SMVB_continue_double 
                    .byte       -0x0A, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       0x28, 0x01, -0x31 
                    .word       SMVB_startMove_single 
                    .byte       -0x0A, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x19 
                    .word       SMVB_continue7_single 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x25 
                    .byte       -0x31, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x0F 
                    .byte       -0x14, 0x01, -0x1B 
                    .byte       -0x21, 0x01, 0x00 
                    .byte       -0x0E, 0x01, 0x18 
                    .word       SMVB_continue7_single 
                    .byte       -0x3A, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x3D 
                    .byte       0x05, 0x01, 0x00 
                    .byte       0x0F, 0x01, -0x11 
                    .byte       0x00, 0x01, -0x12 
                    .byte       0x28, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x08 
                    .word       SMVB_continue7_single 
                    .byte       -0x15, 0x01, 0x15 
                    .byte       0x23, 0x01, 0x2C 
                    .byte       0x10, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0C 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x0C 
                    .byte       0x13, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x41, 0x01, 0x00 
                    .byte       0x0F, 0x01, -0x12 
                    .byte       0x00, 0x01, -0x06 
                    .byte       -0x50, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x1E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x25 
                    .byte       0x28, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x0F, 0x01, 0x00 
                    .byte       0x0F, 0x01, -0x0F 
                    .byte       0x00, 0x01, -0x22 
                    .word       SMVB_continue_single 
                    .byte       -0x63, 0x01, 0x48 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x14, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x30 
                    .word       SMVB_continue4_single 
                    .byte       -0x06, 0x01, 0x00 
                    .byte       -0x0E, 0x01, 0x11 
                    .byte       0x00, 0x01, 0x1F 
                    .byte       -0x23, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       0x10, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_continue4_single 
                    .byte       -0x1E, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x07 
                    .byte       0x0E, 0x01, 0x11 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _MummyList
_MummyList: 
                    .byte       0x69, 0x01, -0x18 
                    .word       SMVB_continue_double 
                    .byte       -0x4C, 0x01, -0x49 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x07, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       0x4D, 0x01, 0x4A 
                    .word       SMVB_startDraw_single 
                    .byte       0x18, 0x01, -0x23 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x4B, 0x01, -0x4B 
                    .word       SMVB_startDraw_yd4_yEqx_single ; y is -0x4B 
                    .byte       0x08, 0x01, -0x06 
                    .word       SMVB_startMove_single 
                    .byte       0x3E, 0x01, 0x3E 
                    .word       SMVB_startDraw_yEqx_single   ; y is 0x3E 
                    .byte       -0x5F, 0x01, -0x29 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x4A, 0x01, 0x5C 
                    .word       SMVB_startDraw_single 
                    .byte       0x0C, 0x01, 0x01 
                    .word       SMVB_startMove_single 
                    .byte       0x3F, 0x01, -0x4D 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x16 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, -0x21 
                    .byte       -0x18, 0x01, -0x0F 
                    .byte       -0x18, 0x01, -0x1E 
                    .byte       -0x07, 0x01, -0x1A 
                    .byte       -0x04, 0x01, 0x0D 
                    .byte       -0x1C, 0x01, -0x01 
                    .byte       0x1B, 0x01, 0x13 
                    .word       SMVB_continue4_single 
                    .byte       0x19, 0x01, 0x29 
                    .byte       0x14, 0x01, 0x11 
                    .byte       0x00, 0x01, 0x0F 
                    .byte       -0x45, 0x01, -0x01 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x33, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x04, 0x01, -0x20 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x43 
                    .byte       0x1F, 0x01, -0x03 
                    .byte       0x3A, 0x01, 0x0E 
                    .byte       0x08, 0x01, 0x0B 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x1B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x09, 0x01, -0x12 
                    .byte       -0x2B, 0x01, 0x08 
                    .byte       -0x1F, 0x01, -0x07 
                    .byte       0x00, 0x01, 0x41 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       0x09, 0x01, -0x20 
                    .byte       0x73, 0x01, 0x02 
                    .word       SMVB_continue_single 
                    .byte       0x20, 0x01, 0x3A 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x10, 0x01, -0x1F 
                    .word       SMVB_startDraw_single 
                    .byte       0x29, 0x01, 0x32 
                    .word       SMVB_startMove_single 
                    .byte       -0x19, 0x01, -0x13 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x40, 0x01, 0x17 
                    .word       SMVB_startMove_single 
                    .byte       -0x27, 0x01, -0x04 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x0C, 0x01, 0x17 
                    .word       SMVB_startMove_single 
                    .byte       0x1B, 0x01, -0x13 
                    .word       SMVB_startDraw_single 
                    .byte       -0x12, 0x01, 0x1F 
                    .word       SMVB_startMove_single 
                    .byte       -0x09, 0x01, -0x0C 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0B, 0x01, 0x23 
                    .word       SMVB_startMove_single 
                    .byte       0x14, 0x01, -0x17 
                    .word       SMVB_startDraw_single 
                    .byte       -0x10, 0x01, 0x01 
                    .word       SMVB_startMove_single 
                    .byte       -0x04, 0x01, 0x16 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, -0x26 
                    .word       SMVB_startMove_single 
                    .byte       0x0B, 0x01, 0x10 
                    .word       SMVB_startDraw_single 
                    .byte       -0x29, 0x01, -0x2B 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x1E, 0x01, 0x1B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x33, 0x01, -0x3D 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x15, 0x01, 0x22 
                    .word       SMVB_startDraw_single 
                    .byte       -0x15, 0x01, -0x46 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x24 
                    .word       SMVB_startDraw_single 
                    .byte       0x10, 0x01, -0x09 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x1D 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x0E 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x01, 0x01, -0x13 
                    .word       SMVB_startDraw_single 
                    .byte       0x12, 0x01, -0x03 
                    .word       SMVB_continue_single 
                    .byte       0x0A, 0x01, 0x07 
                    .word       SMVB_startMove_single 
                    .byte       0x01, 0x01, 0x1D 
                    .word       SMVB_startDraw_single 
                    .byte       0x0C, 0x01, 0x11 
                    .word       SMVB_continue7_single 
                    .byte       0x1B, 0x01, 0x02 
                    .byte       0x2C, 0x01, -0x1C 
                    .byte       -0x01, 0x01, -0x45 
                    .byte       -0x2B, 0x01, -0x28 
                    .byte       -0x1B, 0x01, 0x04 
                    .byte       -0x0C, 0x01, 0x0F 
                    .byte       -0x03, 0x01, 0x24 
                    .word       SMVB_continue_single 
                    .byte       -0x5C, 0x01, 0x22 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x31, 0x01, -0x3D 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0A, 0x01, -0x06 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x33, 0x01, 0x3E 
                    .word       SMVB_startDraw_single 
                    .byte       0x03, 0x01, -0x1A 
                    .word       SMVB_startMove_single 
                    .byte       -0x10, 0x01, -0x28 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0B, 0x01, 0x02 
                    .word       SMVB_startMove_single 
                    .byte       0x0B, 0x01, 0x20 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ElfList
_ElfList: 
                    .byte       0x38, 0x01, 0x4C 
                    .word       SMVB_continue_double 
                    .byte       0x09, 0x01, 0x15 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x12 
                    .word       SMVB_continue_yStays_single  ; y is 0x09 
                    .byte       -0x08, 0x01, 0x0F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x45 
                    .word       SMVB_startDraw_double 
                    .byte       -0x0A, 0x01, -0x09 
                    .word       SMVB_startMove_single 
                    .byte       -0x5C, 0x01, -0x01 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x0B, 0x01, 0x14 
                    .word       SMVB_continue4_single 
                    .byte       0x0D, 0x01, 0x0F 
                    .byte       -0x02, 0x01, 0x12 
                    .byte       0x02, 0x01, 0x0D 
                    .byte       0x4A, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x03, 0x01, -0x0B 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x04, 0x01, -0x16 
                    .word       SMVB_continue3_single 
                    .byte       0x13, 0x01, -0x0B 
                    .byte       0x10, 0x01, -0x11 
                    .byte       -0x5C, 0x01, -0x03 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x23, 0x01, -0x4A 
                    .word       SMVB_startMove_single 
                    .byte       -0x05, 0x01, -0x11 
                    .word       SMVB_startDraw_single 
                    .byte       -0x08, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x04, 0x01, 0x11 
                    .byte       -0x1A, 0x01, -0x11 
                    .word       SMVB_startMove_single 
                    .byte       -0x05, 0x01, 0x36 
                    .word       SMVB_startDraw_single 
                    .byte       0x08, 0x01, 0x3E 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x10 
                    .byte       -0x04, 0x01, 0x16 
                    .byte       -0x0F, 0x01, -0x17 
                    .byte       0x09, 0x01, -0x06 
                    .byte       -0x02, 0x01, -0x1D 
                    .byte       0x02, 0x01, -0x34 
                    .byte       -0x01, 0x01, 0x07 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, -0x08 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x63, 0x01, 0x07 
                    .word       SMVB_continue5_single 
                    .byte       -0x04, 0x01, 0x0F 
                    .byte       -0x08, 0x01, 0x05 
                    .byte       0x00, 0x01, -0x26 
                    .byte       0x35, 0x01, 0x01 
                    .byte       -0x03, 0x01, 0x0A 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x06, 0x01, -0x0C 
                    .word       SMVB_startDraw_single 
                    .byte       0x21, 0x01, -0x02 
                    .word       SMVB_continue4_single 
                    .byte       0x00, 0x01, -0x09 
                    .byte       -0x21, 0x01, -0x08 
                    .byte       -0x05, 0x01, -0x0D 
                    .byte       0x01, 0x01, 0x09 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, 0x02 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x0A, 0x01, -0x14 
                    .word       SMVB_startMove_single 
                    .byte       0x63, 0x01, 0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x64, 0x01, -0x18 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x01, 0x01, 0x0D 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0B, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       0x09, 0x01, 0x05 
                    .word       SMVB_startDraw_single 
                    .byte       -0x09, 0x01, 0x20 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x26 
                    .word       SMVB_startDraw_single 
                    .byte       0x71, 0x01, 0x0A 
                    .word       SMVB_startMove_double 
                    .byte       -0x08, 0x01, 0x10 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x05, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x04, 0x01, -0x11 
                    .byte       -0x12, 0x01, 0x0F 
                    .word       SMVB_startMove_single 
                    .byte       -0x11, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x01, 0x01, 0x15 
                    .word       SMVB_continue7_single 
                    .byte       0x12, 0x01, -0x02 
                    .byte       0x01, 0x01, 0x0E 
                    .byte       0x24, 0x01, 0x08 
                    .byte       0x0C, 0x01, -0x1E 
                    .byte       -0x0C, 0x01, -0x1F 
                    .byte       -0x1F, 0x01, 0x04 
                    .byte       -0x07, 0x01, 0x0E 
                    .word       SMVB_continue_single 
                    .byte       -0x51, 0x01, -0x0D 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x06, 0x01, -0x12 
                    .word       SMVB_startDraw_single 
                    .byte       0x16, 0x01, -0x04 
                    .word       SMVB_continue3_single 
                    .byte       0x13, 0x01, -0x05 
                    .byte       -0x07, 0x01, 0x17 
                    .byte       0x20, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x4A 
                    .word       SMVB_startDraw_single 
                    .byte       0x11, 0x01, 0x00 
                    .word       SMVB_continue4_single 
                    .byte       0x00, 0x01, -0x15 
                    .byte       -0x21, 0x01, 0x06 
                    .byte       0x00, 0x01, 0x47 
                    .byte       -0x3A, 0x01, 0x0A 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x02, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x25 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _GhoulList
_GhoulList: 
                    .byte       0x77, 0x01, -0x47 
                    .word       SMVB_continue_single 
                    .byte       -0x0C, 0x01, -0x0C 
                    .word       SMVB_startDraw_yd4_yEqx_single ; y is -0x0C 
                    .byte       -0x29, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x33 
                    .byte       -0x0E, 0x01, 0x0E 
                    .byte       -0x1B, 0x01, 0x00 
                    .byte       -0x0C, 0x01, 0x0C 
                    .byte       0x00, 0x01, 0x15 
                    .byte       -0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x2F 
                    .word       SMVB_continue7_single 
                    .byte       0x1A, 0x01, -0x0D 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x0D, 0x01, -0x0E 
                    .byte       0x00, 0x01, -0x26 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0E 
                    .byte       -0x0E, 0x01, 0x0C 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .byte       -0x0E, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x1B 
                    .byte       -0x1B, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x1A 
                    .byte       0x29, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x27 
                    .word       SMVB_continue4_single 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x0E, 0x01, -0x1B 
                    .byte       0x44, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x3B, 0x01, -0x1F 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_continue5_single 
                    .byte       -0x24, 0x01, 0x11 
                    .byte       0x10, 0x01, -0x0F 
                    .byte       -0x18, 0x01, -0x0C 
                    .byte       0x23, 0x01, 0x01 
                    .byte       -0x1E, 0x01, -0x14 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x0B 
                    .word       SMVB_continue7_single 
                    .byte       0x19, 0x01, 0x15 
                    .byte       -0x07, 0x01, -0x1A 
                    .byte       0x1A, 0x01, 0x1A 
                    .byte       0x0D, 0x01, -0x01 
                    .byte       0x2C, 0x01, 0x10 
                    .byte       0x28, 0x01, 0x15 
                    .byte       0x09, 0x01, 0x1B 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x0E 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0E 
                    .byte       0x1C, 0x01, -0x1A 
                    .byte       0x35, 0x01, 0x00 
                    .byte       0x0E, 0x01, 0x1A 
                    .byte       0x00, 0x01, 0x35 
                    .word       SMVB_continue7_single 
                    .byte       -0x0E, 0x01, 0x21 
                    .byte       -0x33, 0x01, 0x00 
                    .byte       -0x1C, 0x01, -0x1A 
                    .byte       -0x01, 0x01, -0x12 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       -0x03, 0x01, 0x3A 
                    .byte       -0x23, 0x01, 0x2D 
                    .word       SMVB_continue6_single 
                    .byte       -0x06, 0x01, 0x21 
                    .byte       -0x25, 0x01, 0x12 
                    .byte       0x14, 0x01, -0x16 
                    .byte       -0x1D, 0x01, -0x04 
                    .byte       0x1E, 0x01, -0x0A 
                    .byte       -0x1D, 0x01, -0x07 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x0F, 0x01, -0x07 
                    .word       SMVB_continue5_single 
                    .byte       -0x16, 0x01, -0x04 
                    .byte       0x2C, 0x01, -0x08 
                    .byte       0x17, 0x01, -0x1D 
                    .byte       0x02, 0x01, -0x31 
                    .byte       0x5F, 0x01, -0x08 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x17 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x14, 0x01, 0x03 
                    .word       SMVB_continue3_single 
                    .byte       -0x01, 0x01, -0x1A 
                    .byte       -0x13, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x2D 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x17 
                    .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
                    .byte       0x13, 0x01, 0x03 
                    .word       SMVB_continue3_single 
                    .byte       0x02, 0x01, -0x20 
                    .byte       -0x16, 0x01, 0x05 
                    .byte       -0x11, 0x01, -0x04 
                    .word       SMVB_startMove_single 
                    .byte       0x02, 0x01, 0x4D 
                    .word       SMVB_startDraw_single 
                    .byte       -0x10, 0x01, -0x04 
                    .word       SMVB_continue3_single 
                    .byte       -0x0C, 0x01, -0x35 
                    .byte       0x1A, 0x01, -0x14 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DwarfList
_DwarfList: 
                    .byte       0x44, 0x01, 0x1E 
                    .word       SMVB_continue_single 
                    .byte       0x6A, 0x01, 0x1C 
                    .word       SMVB_startDraw_single 
                    .byte       0x01, 0x01, -0x1D 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0B, 0x01, -0x04 
                    .word       SMVB_continue7_single 
                    .byte       0x06, 0x01, -0x11 
                    .byte       0x2B, 0x01, 0x11 
                    .byte       -0x03, 0x01, 0x10 
                    .byte       -0x0B, 0x01, -0x05 
                    .byte       0x00, 0x01, 0x1B 
                    .byte       0x0C, 0x01, 0x02 
                    .byte       -0x01, 0x01, 0x16 
                    .word       SMVB_continue7_single 
                    .byte       -0x0B, 0x01, -0x03 
                    .byte       -0x04, 0x01, 0x14 
                    .byte       0x10, 0x01, 0x05 
                    .byte       -0x02, 0x01, 0x14 
                    .byte       -0x2F, 0x01, -0x0F 
                    .byte       0x04, 0x01, -0x11 
                    .byte       0x09, 0x01, 0x03 
                    .word       SMVB_continue2_single 
                    .byte       0x03, 0x01, -0x12 
                    .byte       -0x6A, 0x01, -0x19 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x63, 0x01, -0x56 
                    .word       SMVB_startMove_single 
                    .byte       -0x2C, 0x01, 0x05 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x15, 0x01, -0x19 
                    .word       SMVB_continue7_single 
                    .byte       -0x18, 0x01, 0x00 
                    .byte       -0x0A, 0x01, 0x3A 
                    .byte       0x05, 0x01, 0x3E 
                    .byte       -0x0B, 0x01, 0x07 
                    .byte       -0x0F, 0x01, -0x0E 
                    .byte       0x05, 0x01, -0x1C 
                    .byte       -0x08, 0x01, -0x27 
                    .word       SMVB_continue2_single 
                    .byte       0x0A, 0x01, -0x43 
                    .byte       -0x04, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       -0x22, 0x01, -0x08 
                    .word       SMVB_startDraw_single 
                    .byte       -0x1A, 0x01, 0x10 
                    .word       SMVB_continue7_single 
                    .byte       -0x19, 0x01, -0x04 
                    .byte       0x00, 0x01, 0x18 
                    .byte       -0x0B, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x30 
                    .byte       0x1C, 0x01, -0x01 
                    .byte       0x16, 0x01, -0x09 
                    .byte       -0x05, 0x01, -0x10 
                    .word       SMVB_continue7_single 
                    .byte       -0x10, 0x01, -0x05 
                    .byte       -0x12, 0x01, -0x11 
                    .byte       0x00, 0x01, 0x19 
                    .byte       -0x0B, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x32 
                    .byte       0x1C, 0x01, 0x09 
                    .byte       0x17, 0x01, 0x03 
                    .word       SMVB_continue_single 
                    .byte       0x0E, 0x01, -0x08 
                    .word       SMVB_startMove_single 
                    .byte       0x13, 0x01, -0x08 
                    .word       SMVB_startDraw_single 
                    .byte       0x14, 0x01, 0x04 
                    .word       SMVB_continue7_single 
                    .byte       0x05, 0x01, 0x14 
                    .byte       -0x03, 0x01, 0x11 
                    .byte       -0x14, 0x01, 0x0B 
                    .byte       -0x11, 0x01, -0x07 
                    .byte       -0x0A, 0x01, -0x10 
                    .byte       0x06, 0x01, -0x15 
                    .byte       0x29, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       0x08, 0x01, -0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x0B, 0x01, 0x0E 
                    .word       SMVB_continue4_single 
                    .byte       0x0A, 0x01, 0x23 
                    .byte       -0x0A, 0x01, 0x21 
                    .byte       0x0A, 0x01, 0x27 
                    .byte       -0x15, 0x01, -0x30 
                    .word       SMVB_startMove_single 
                    .byte       -0x19, 0x01, 0x0C 
                    .word       SMVB_startDraw_single 
                    .byte       -0x19, 0x01, -0x03 
                    .word       SMVB_continue7_single 
                    .byte       -0x0F, 0x01, -0x19 
                    .byte       0x04, 0x01, -0x1F 
                    .byte       0x0F, 0x01, -0x11 
                    .byte       0x1B, 0x01, -0x03 
                    .byte       0x17, 0x01, 0x11 
                    .byte       0x04, 0x01, 0x1E 
                    .byte       -0x08, 0x01, 0x14 
                    .word       SMVB_continue_single 
                    .byte       0x38, 0x01, 0x18 
                    .word       SMVB_startMove_single 
                    .byte       0x17, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x08, 0x01, 0x18 
                    .word       SMVB_continue3_single 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x18 
                    .byte       -0x0C, 0x01, 0x15 
                    .word       SMVB_startMove_single 
                    .byte       -0x0E, 0x01, -0x1F 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x17 
                    .word       SMVB_continue2_single 
                    .byte       0x0A, 0x01, -0x03 
                    .byte       0x0B, 0x01, -0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x0D, 0x01, -0x01 
                    .word       SMVB_startDraw_single 
                    .byte       0x0A, 0x01, 0x1A 
                    .word       SMVB_continue3_single 
                    .byte       -0x17, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x19 
                    .byte       0x09, 0x01, -0x30 
                    .word       SMVB_startMove_single 
                    .byte       0x14, 0x01, 0x4E 
                    .word       SMVB_startDraw_double 
                    .byte       0x10, 0x01, 0x01 
                    .word       SMVB_continue2_single 
                    .byte       0x04, 0x01, -0x5A 
                    .byte       -0x34, 0x01, -0x4F 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x08, 0x01, 0x0D 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       -0x20, 0x01, 0x06 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x19 
                    .word       SMVB_continue2_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TrollList
_TrollList: 
                    .byte       0x48, 0x01, 0x1F 
                    .word       SMVB_continue_single 
                    .byte       0x11, 0x01, -0x08 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x11, 0x01, -0x09 
                    .word       SMVB_continue7_single 
                    .byte       -0x06, 0x01, -0x0B 
                    .byte       0x1A, 0x01, 0x07 
                    .byte       0x0A, 0x01, 0x0A 
                    .byte       0x16, 0x01, 0x00 
                    .byte       0x0E, 0x01, -0x0D 
                    .byte       0x07, 0x01, -0x13 
                    .byte       -0x26, 0x01, -0x08 
                    .word       SMVB_continue7_single 
                    .byte       -0x19, 0x01, -0x0D 
                    .byte       -0x36, 0x01, 0x05 
                    .byte       -0x1A, 0x01, 0x0F 
                    .byte       -0x03, 0x01, 0x1D 
                    .byte       -0x0C, 0x01, -0x11 
                    .byte       0x04, 0x01, -0x22 
                    .byte       0x14, 0x01, -0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x24, 0x01, -0x0D 
                    .byte       0x24, 0x01, 0x02 
                    .byte       -0x0D, 0x01, -0x16 
                    .byte       -0x16, 0x01, -0x02 
                    .byte       -0x24, 0x01, -0x0C 
                    .byte       -0x14, 0x01, -0x19 
                    .byte       -0x02, 0x01, -0x23 
                    .word       SMVB_continue7_single 
                    .byte       0x09, 0x01, -0x09 
                    .byte       0x06, 0x01, 0x23 
                    .byte       0x1F, 0x01, 0x0A 
                    .byte       0x30, 0x01, 0x13 
                    .byte       0x12, 0x01, -0x0D 
                    .byte       0x2A, 0x01, -0x08 
                    .byte       -0x03, 0x01, -0x22 
                    .word       SMVB_continue7_single 
                    .byte       -0x13, 0x01, -0x0D 
                    .byte       -0x0C, 0x01, 0x02 
                    .byte       -0x0A, 0x01, 0x0B 
                    .byte       -0x11, 0x01, 0x02 
                    .byte       -0x12, 0x01, -0x05 
                    .byte       0x17, 0x01, -0x06 
                    .byte       -0x17, 0x01, -0x11 
                    .word       SMVB_continue7_single 
                    .byte       0x11, 0x01, -0x07 
                    .byte       0x29, 0x01, -0x04 
                    .byte       0x19, 0x01, 0x0B 
                    .byte       0x17, 0x01, 0x18 
                    .byte       0x09, 0x01, 0x4B 
                    .byte       0x0D, 0x01, -0x0C 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x0A, 0x01, 0x0C 
                    .byte       0x00, 0x01, 0x16 
                    .byte       -0x0A, 0x01, 0x0D 
                    .byte       -0x18, 0x01, 0x00 
                    .byte       -0x0D, 0x01, -0x0C 
                    .byte       -0x05, 0x01, 0x44 
                    .byte       -0x17, 0x01, 0x18 
                    .word       SMVB_continue4_single 
                    .byte       -0x19, 0x01, 0x0C 
                    .byte       -0x3A, 0x01, 0x00 
                    .byte       0x05, 0x01, -0x0E 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _WraithList
_WraithList: 
                    .byte       0x5A, 0x01, -0x2B 
                    .word       SMVB_continue_double 
                    .byte       0x05, 0x01, -0x12 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x1B, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x15, 0x01, 0x12 
                    .byte       -0x14, 0x01, 0x24 
                    .word       SMVB_startMove_single 
                    .byte       0x19, 0x01, 0x03 
                    .word       SMVB_startDraw_single 
                    .byte       -0x04, 0x01, -0x13 
                    .word       SMVB_continue2_single 
                    .byte       -0x15, 0x01, 0x10 
                    .byte       -0x1F, 0x01, -0x39 
                    .word       SMVB_startMove_single 
                    .byte       0x08, 0x01, -0x32 
                    .word       SMVB_startDraw_single 
                    .byte       0x0A, 0x01, -0x06 
                    .word       SMVB_continue2_single 
                    .byte       0x27, 0x01, 0x0C 
                    .byte       -0x19, 0x01, -0x13 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x03, 0x01, -0x0E 
                    .word       SMVB_continue2_single 
                    .byte       0x1A, 0x01, -0x0F 
                    .byte       -0x32, 0x01, 0x0B 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x10, 0x01, 0x0B 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x19 
                    .byte       -0x0E, 0x01, 0x15 
                    .byte       -0x18, 0x01, 0x07 
                    .byte       -0x0C, 0x01, 0x14 
                    .byte       -0x0E, 0x01, 0x09 
                    .byte       -0x14, 0x01, -0x07 
                    .byte       -0x0C, 0x01, -0x0D 
                    .word       SMVB_continue7_single 
                    .byte       -0x13, 0x01, -0x07 
                    .byte       -0x1E, 0x01, 0x13 
                    .byte       -0x0D, 0x01, 0x18 
                    .byte       0x00, 0x01, 0x17 
                    .byte       0x0B, 0x01, -0x11 
                    .byte       0x0C, 0x01, -0x03 
                    .byte       0x1E, 0x01, 0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x0F, 0x01, 0x14 
                    .byte       0x0A, 0x01, 0x18 
                    .byte       0x1B, 0x01, 0x05 
                    .byte       0x13, 0x01, -0x0F 
                    .byte       0x1D, 0x01, 0x0B 
                    .byte       0x06, 0x01, 0x15 
                    .byte       0x0B, 0x01, 0x1B 
                    .word       SMVB_continue3_single 
                    .byte       0x13, 0x01, 0x09 
                    .byte       0x2E, 0x01, 0x03 
                    .byte       -0x1A, 0x01, -0x0D 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x0A 
                    .word       SMVB_continue2_single 
                    .byte       0x1D, 0x01, -0x0E 
                    .byte       -0x2D, 0x01, 0x04 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0E, 0x01, -0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x06, 0x01, -0x39 
                    .byte       0x0E, 0x01, 0x1D 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x25, 0x01, -0x0C 
                    .byte       0x0D, 0x01, -0x24 
                    .byte       -0x0D, 0x01, -0x24 
                    .byte       -0x25, 0x01, -0x0B 
                    .word       SMVB_continue3_single 
                    .byte       -0x18, 0x01, 0x00 
                    .byte       -0x12, 0x01, 0x13 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _OgreList
_OgreList: 
                    .byte       0x6C, 0x01, -0x46 
                    .word       SMVB_continue_single 
                    .byte       -0x0E, 0x01, 0x24 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x07, 0x01, 0x15 
                    .word       SMVB_continue2_single 
                    .byte       -0x03, 0x01, 0x3E 
                    .byte       0x2A, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       0x07, 0x01, -0x47 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, -0x28 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x01 
                    .word       SMVB_startMove_single 
                    .byte       0x21, 0x01, 0x23 
                    .word       SMVB_startDraw_single 
                    .byte       0x2B, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x19, 0x01, -0x16 
                    .byte       0x03, 0x01, -0x36 
                    .byte       -0x1C, 0x01, -0x1E 
                    .byte       -0x2B, 0x01, 0x00 
                    .byte       -0x1C, 0x01, 0x23 
                    .byte       -0x1A, 0x01, 0x00 
                    .byte       -0x28, 0x01, -0x35 
                    .word       SMVB_continue2_single 
                    .byte       0x1A, 0x01, -0x11 
                    .byte       -0x2C, 0x01, 0x0B 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x02, 0x01, 0x0D 
                    .word       SMVB_continue6_single 
                    .byte       -0x1C, 0x01, 0x17 
                    .byte       -0x0E, 0x01, 0x16 
                    .byte       -0x38, 0x01, 0x00 
                    .byte       -0x09, 0x01, -0x3A 
                    .byte       0x49, 0x01, -0x08 
                    .byte       0x0C, 0x01, -0x19 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x64, 0x01, -0x0D 
                    .word       SMVB_continue_single 
                    .byte       0x0D, 0x01, 0x33 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x08, 0x01, 0x34 
                    .word       SMVB_continue_single 
                    .byte       -0x43, 0x01, -0x21 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x1C, 0x01, 0x2F 
                    .word       SMVB_startDraw_single 
                    .byte       0x0F, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x02, 0x01, 0x0D 
                    .byte       -0x0C, 0x01, -0x01 
                    .byte       -0x1C, 0x01, 0x2F 
                    .byte       -0x10, 0x01, -0x35 
                    .byte       0x10, 0x01, -0x35 
                    .byte       0x41, 0x01, 0x0B 
                    .word       SMVB_startMove_double 
                    .byte       0x10, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, 0x17 
                    .word       SMVB_continue3_single 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       0x05, 0x01, -0x17 
                    .byte       -0x12, 0x01, 0x0B 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x24 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0F, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x07, 0x01, -0x24 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .word       SMVB_startMove_yStays_single ; y was 0x0E, now 0 
                    .byte       0x06, 0x01, 0x17 
                    .word       SMVB_startDraw_single 
                    .byte       0x10, 0x01, 0x03 
                    .word       SMVB_continue3_single 
                    .byte       -0x07, 0x01, -0x1A 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       -0x3C, 0x01, 0x58 
                    .word       SMVB_startMove_single 
                    .byte       0x12, 0x01, -0x06 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x0C 
                    .word       SMVB_continue7_single 
                    .byte       0x0C, 0x01, 0x01 
                    .byte       -0x03, 0x01, 0x0A 
                    .byte       0x0E, 0x01, 0x01 
                    .byte       0x05, 0x01, -0x14 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       -0x04, 0x01, 0x0E 
                    .byte       0x12, 0x01, 0x01 
                    .word       SMVB_continue7_single 
                    .byte       0x01, 0x01, -0x0F 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x20 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x18 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x25 
                    .word       SMVB_continue7_single 
                    .byte       -0x0B, 0x01, -0x02 
                    .byte       0x02, 0x01, -0x0B 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       -0x01, 0x01, 0x0B 
                    .byte       -0x0F, 0x01, -0x02 
                    .byte       0x02, 0x01, -0x15 
                    .byte       -0x0E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x04, 0x01, 0x0C 
                    .byte       -0x0D, 0x01, -0x01 
                    .byte       0x03, 0x01, -0x0B 
                    .byte       -0x0E, 0x01, 0x00 
                    .byte       -0x03, 0x01, 0x0E 
                    .byte       -0x25, 0x01, -0x02 
                    .byte       -0x04, 0x01, -0x0A 
                    .word       SMVB_continue4_single 
                    .byte       -0x0A, 0x01, -0x01 
                    .byte       0x05, 0x01, -0x23 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       -0x03, 0x01, -0x20 
                    .word       SMVB_startMove_single 
                    .byte       -0x45, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       0x05, 0x01, -0x3D 
                    .word       SMVB_continue4_single 
                    .byte       0x38, 0x01, 0x00 
                    .byte       0x0E, 0x01, 0x17 
                    .byte       0x1D, 0x01, 0x22 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _MinotaurList
_MinotaurList: 
                    .byte       0x66, 0x01, -0x32 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, 0x0D 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x18, 0x01, 0x04 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, -0x11 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x01, 0x01, 0x35 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       -0x0C, 0x01, -0x10 
                    .byte       0x18, 0x01, 0x05 
                    .byte       -0x25, 0x01, -0x06 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x01, 0x01, -0x16 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0B, 0x01, -0x0D 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, 0x31 
                    .byte       0x0A, 0x01, -0x0D 
                    .byte       -0x5A, 0x01, 0x11 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x27, 0x01, 0x0C 
                    .word       SMVB_startDraw_single 
                    .byte       -0x34, 0x01, -0x01 
                    .word       SMVB_continue7_single 
                    .byte       0x01, 0x01, -0x18 
                    .byte       0x31, 0x01, -0x01 
                    .byte       0x12, 0x01, -0x09 
                    .byte       0x00, 0x01, -0x10 
                    .byte       -0x1D, 0x01, -0x16 
                    .byte       -0x1B, 0x01, -0x21 
                    .byte       -0x01, 0x01, -0x14 
                    .word       SMVB_continue4_single 
                    .byte       0x14, 0x01, -0x01 
                    .byte       0x17, 0x01, 0x22 
                    .byte       0x29, 0x01, 0x0F 
                    .byte       0x0D, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       0x0B, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x2B 
                    .word       SMVB_continue4_single 
                    .byte       -0x25, 0x01, -0x08 
                    .byte       -0x02, 0x01, -0x1B 
                    .byte       0x42, 0x01, 0x10 
                    .byte       -0x04, 0x01, 0x3D 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x0B, 0x01, 0x20 
                    .word       SMVB_continue7_single 
                    .byte       0x05, 0x01, -0x15 
                    .byte       0x1F, 0x01, -0x10 
                    .byte       0x07, 0x01, -0x1E 
                    .byte       0x14, 0x01, -0x0E 
                    .byte       0x0C, 0x01, -0x0F 
                    .byte       0x12, 0x01, 0x04 
                    .byte       0x12, 0x01, 0x0E 
                    .word       SMVB_continue7_single 
                    .byte       0x0A, 0x01, 0x43 
                    .byte       -0x1C, 0x01, -0x2D 
                    .byte       -0x0D, 0x01, 0x00 
                    .byte       -0x04, 0x01, 0x3C 
                    .byte       0x06, 0x01, 0x3F 
                    .byte       0x0B, 0x01, 0x0B 
                    .byte       0x1F, 0x01, -0x2E 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x38 
                    .byte       -0x0F, 0x01, 0x10 
                    .byte       -0x0E, 0x01, 0x03 
                    .byte       -0x0F, 0x01, -0x0E 
                    .byte       -0x18, 0x01, -0x09 
                    .byte       -0x02, 0x01, -0x1F 
                    .byte       -0x24, 0x01, -0x06 
                    .word       SMVB_continue4_single 
                    .byte       -0x04, 0x01, -0x18 
                    .byte       -0x0A, 0x01, 0x20 
                    .byte       -0x02, 0x01, 0x1C 
                    .byte       -0x41, 0x01, 0x03 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x02, 0x01, -0x14 
                    .word       SMVB_continue2_single 
                    .byte       0x30, 0x01, -0x06 
                    .byte       -0x0F, 0x01, 0x00 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x04, 0x01, -0x42 
                    .word       SMVB_startDraw_double 
                    .byte       0x02, 0x01, -0x1D 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x24 
                    .word       SMVB_startDraw_yStays_single ; y was 0x02, now SHIFT Poke 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       -0x02, 0x01, 0x22 
                    .byte       -0x04, 0x01, 0x53 
                    .word       SMVB_startMove_double 
                    .byte       0x04, 0x01, -0x45 
                    .word       SMVB_startDraw_double 
                    .byte       -0x07, 0x01, 0x51 
                    .word       SMVB_startMove_double 
                    .byte       -0x18, 0x01, 0x0E 
                    .word       SMVB_startDraw_single 
                    .byte       -0x17, 0x01, 0x4B 
                    .word       SMVB_continue7_single 
                    .byte       0x23, 0x01, -0x36 
                    .byte       0x05, 0x01, 0x31 
                    .byte       0x13, 0x01, -0x31 
                    .byte       0x18, 0x01, 0x3F 
                    .byte       -0x04, 0x01, -0x54 
                    .byte       -0x11, 0x01, -0x0F 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _GiantList
_GiantList: 
                    .byte       -0x27, 0x01, -0x69 
                    .word       SMVB_continue_single 
                    .byte       0x02, 0x01, -0x20 
                    .word       SMVB_startDraw_single 
                    .byte       0x6E, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x01, 0x01, 0x0C 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x42, 0x01, 0x0A 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x7E, 0x01, -0x16 
                    .word       SMVB_startMove_tripple 
                    .byte       0x00, 0x01, 0x16 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x16, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, -0x16 
                    .byte       -0x16, 0x01, 0x00 
                    .byte       -0x18, 0x01, 0x1B 
                    .word       SMVB_startMove_single 
                    .byte       0x15, 0x01, 0x06 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0A 
                    .word       SMVB_continue2_single 
                    .byte       -0x16, 0x01, 0x00 
                    .byte       0x1A, 0x01, 0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x16, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x16 
                    .word       SMVB_continue3_single 
                    .byte       -0x16, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x15 
                    .byte       0x1F, 0x01, 0x29 
                    .word       SMVB_startMove_single 
                    .byte       0x0E, 0x01, -0x15 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_continue7_single 
                    .byte       0x0B, 0x01, -0x11 
                    .byte       -0x09, 0x01, -0x17 
                    .byte       0x01, 0x01, -0x19 
                    .byte       -0x2D, 0x01, -0x0D 
                    .byte       -0x2F, 0x01, 0x00 
                    .byte       -0x0E, 0x01, 0x1B 
                    .byte       -0x16, 0x01, 0x15 
                    .word       SMVB_continue_single 
                    .byte       0x25, 0x01, 0x35 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, -0x37 
                    .word       SMVB_startDraw_single 
                    .byte       0x16, 0x01, -0x11 
                    .word       SMVB_continue2_single 
                    .byte       -0x09, 0x01, 0x49 
                    .byte       -0x4E, 0x01, 0x07 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x1A, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x38, 0x01, -0x1D 
                    .word       SMVB_continue_single 
                    .byte       -0x15, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       0x1E, 0x01, -0x25 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0A, 0x01, -0x54 
                    .word       SMVB_continue_single 
                    .byte       0x06, 0x01, -0x4C 
                    .word       SMVB_startMove_single 
                    .byte       -0x5E, 0x01, 0x0A 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x03, 0x01, -0x0E 
                    .word       SMVB_continue7_single 
                    .byte       -0x0F, 0x01, 0x00 
                    .byte       -0x18, 0x01, -0x1E 
                    .byte       0x02, 0x01, 0x1C 
                    .byte       -0x1C, 0x01, 0x01 
                    .byte       0x06, 0x01, 0x16 
                    .byte       -0x16, 0x01, 0x0A 
                    .byte       0x18, 0x01, 0x0B 
                    .word       SMVB_continue7_single 
                    .byte       0x02, 0x01, 0x14 
                    .byte       0x14, 0x01, 0x00 
                    .byte       0x12, 0x01, 0x17 
                    .byte       0x06, 0x01, -0x14 
                    .byte       0x18, 0x01, -0x02 
                    .byte       -0x05, 0x01, -0x17 
                    .byte       0x5D, 0x01, -0x14 
                    .word       SMVB_continue_single 
                    .byte       0x3B, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       0x16, 0x01, 0x17 
                    .word       SMVB_startDraw_single 
                    .byte       -0x2A, 0x01, -0x06 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x2F, 0x01, 0x10 
                    .word       SMVB_continue_single 
                    .byte       -0x58, 0x01, 0x08 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, 0x57 
                    .word       SMVB_continue_double 
                    .byte       0x16, 0x01, -0x1D 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, -0x20 
                    .byte       0x42, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, 0x17 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x2C, 0x01, 0x13 
                    .word       SMVB_continue7_single 
                    .byte       0x36, 0x01, 0x04 
                    .byte       0x20, 0x01, -0x1B 
                    .byte       0x08, 0x01, -0x2E 
                    .byte       0x16, 0x01, 0x05 
                    .byte       0x10, 0x01, 0x16 
                    .byte       0x64, 0x01, 0x00 
                    .byte       0x12, 0x01, -0x11 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x09, 0x01, -0x1C 
                    .word       SMVB_continue4_single 
                    .byte       0x00, 0x01, -0x4E 
                    .byte       -0x0A, 0x01, -0x18 
                    .byte       -0x17, 0x01, -0x09 
                    .byte       -0x5D, 0x01, -0x06 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x13, 0x01, 0x1C 
                    .word       SMVB_continue5_single 
                    .byte       -0x39, 0x01, -0x3C 
                    .byte       -0x50, 0x01, -0x10 
                    .byte       0x10, 0x01, 0x29 
                    .byte       0x33, 0x01, 0x08 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpecterList
_SpecterList: 
                    .byte       0x3E, 0x01, -0x5C 
                    .word       SMVB_continue_single 
                    .byte       -0x32, 0x01, -0x05 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x0C, 0x01, 0x0C 
                    .word       SMVB_continue5_single 
                    .byte       -0x05, 0x01, 0x13 
                    .byte       -0x07, 0x01, 0x0D 
                    .byte       0x16, 0x01, 0x1E 
                    .byte       0x71, 0x01, 0x21 
                    .byte       0x25, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x11, 0x01, -0x14 
                    .word       SMVB_continue7_single 
                    .byte       0x21, 0x01, 0x06 
                    .byte       0x01, 0x01, 0x10 
                    .byte       -0x0F, 0x01, 0x14 
                    .byte       0x05, 0x01, 0x0E 
                    .byte       0x10, 0x01, -0x01 
                    .byte       0x0C, 0x01, -0x15 
                    .byte       0x01, 0x01, -0x44 
                    .word       SMVB_continue7_single 
                    .byte       0x09, 0x01, -0x07 
                    .byte       0x00, 0x01, -0x4F 
                    .byte       -0x0B, 0x01, -0x0B 
                    .byte       -0x22, 0x01, -0x03 
                    .byte       -0x1A, 0x01, 0x0B 
                    .byte       0x08, 0x01, -0x1F 
                    .byte       0x00, 0x01, -0x22 
                    .word       SMVB_continue7_single 
                    .byte       -0x0D, 0x01, -0x0A 
                    .byte       -0x26, 0x01, 0x05 
                    .byte       -0x01, 0x01, 0x39 
                    .byte       -0x0D, 0x01, -0x0A 
                    .byte       -0x2F, 0x01, -0x13 
                    .byte       -0x32, 0x01, 0x01 
                    .byte       -0x0C, 0x01, -0x0B 
                    .word       SMVB_continue7_single 
                    .byte       -0x04, 0x01, -0x0D 
                    .byte       -0x08, 0x01, 0x00 
                    .byte       0x01, 0x01, 0x2A 
                    .byte       0x07, 0x01, 0x09 
                    .byte       0x04, 0x01, 0x1B 
                    .byte       0x0C, 0x01, 0x0C 
                    .byte       0x23, 0x01, -0x06 
                    .word       SMVB_continue2_single 
                    .byte       0x0E, 0x01, 0x16 
                    .byte       0x75, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       0x0A, 0x01, -0x0A 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x14, 0x01, -0x01 
                    .word       SMVB_continue7_single 
                    .byte       0x11, 0x01, 0x08 
                    .byte       -0x01, 0x01, 0x2D 
                    .byte       -0x0F, 0x01, 0x0B 
                    .byte       -0x1B, 0x01, -0x0B 
                    .byte       -0x14, 0x01, -0x05 
                    .byte       -0x0C, 0x01, 0x0B 
                    .byte       0x00, 0x01, 0x22 
                    .word       SMVB_continue7_single 
                    .byte       0x07, 0x01, 0x0C 
                    .byte       -0x15, 0x01, 0x04 
                    .byte       0x00, 0x01, -0x34 
                    .byte       -0x0D, 0x01, -0x0A 
                    .byte       -0x26, 0x01, 0x00 
                    .byte       -0x26, 0x01, 0x0F 
                    .byte       -0x24, 0x01, 0x06 
                    .word       SMVB_continue7_single 
                    .byte       0x02, 0x01, -0x11 
                    .byte       0x23, 0x01, -0x04 
                    .byte       0x1B, 0x01, -0x0F 
                    .byte       -0x04, 0x01, -0x18 
                    .byte       -0x17, 0x01, -0x10 
                    .byte       -0x21, 0x01, -0x05 
                    .byte       -0x04, 0x01, -0x11 
                    .word       SMVB_continue7_single 
                    .byte       0x33, 0x01, 0x02 
                    .byte       0x1C, 0x01, 0x0A 
                    .byte       0x17, 0x01, 0x0C 
                    .byte       0x10, 0x01, 0x00 
                    .byte       0x0A, 0x01, -0x35 
                    .byte       0x0F, 0x01, -0x06 
                    .byte       0x05, 0x01, 0x0C 
                    .word       SMVB_continue4_single 
                    .byte       -0x0C, 0x01, 0x35 
                    .byte       0x0A, 0x01, 0x0C 
                    .byte       0x11, 0x01, 0x00 
                    .byte       0x24, 0x01, 0x02 
                    .word       SMVB_startMove_single 
                    .byte       -0x0D, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x08, 0x01, 0x07 
                    .word       SMVB_continue7_single 
                    .byte       -0x09, 0x01, 0x02 
                    .byte       0x01, 0x01, 0x0E 
                    .byte       0x0D, 0x01, 0x02 
                    .byte       0x04, 0x01, 0x06 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       0x03, 0x01, -0x11 
                    .byte       -0x03, 0x01, -0x0F 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x3E 
                    .word       SMVB_startMove_yStays_single ; y was -0x03, now 0 
                    .byte       -0x01, 0x01, 0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x2A, 0x01, 0x00 
                    .word       SMVB_continue4_single 
                    .byte       0x01, 0x01, -0x13 
                    .byte       0x14, 0x01, 0x00 
                    .byte       0x16, 0x01, 0x08 
                    .byte       -0x55, 0x01, 0x01 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x0C, 0x01, -0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x19, 0x01, 0x00 
                    .word       SMVB_continue5_single 
                    .byte       -0x19, 0x01, 0x0A 
                    .byte       0x07, 0x01, 0x0B 
                    .byte       0x32, 0x01, 0x00 
                    .byte       0x04, 0x01, -0x0B 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _VampireList
_VampireList: 
                    .byte       0x4D, 0x01, -0x1C 
                    .word       SMVB_continue_double 
                    .byte       -0x0E, 0x01, 0x0D 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x0A, 0x01, 0x0E 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x39 
                    .byte       0x0B, 0x01, 0x0C 
                    .byte       0x02, 0x01, 0x2F 
                    .byte       -0x0F, 0x01, -0x1E 
                    .byte       -0x16, 0x01, 0x05 
                    .byte       -0x0B, 0x01, 0x0C 
                    .byte       0x00, 0x01, -0x16 
                    .word       SMVB_continue3_single 
                    .byte       0x0B, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x2F 
                    .byte       -0x63, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0D, 0x01, -0x06 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x10 
                    .byte       0x00, 0x01, -0x29 
                    .byte       0x0C, 0x01, -0x05 
                    .byte       0x0D, 0x01, 0x0C 
                    .byte       0x32, 0x01, 0x0B 
                    .byte       0x1D, 0x01, 0x03 
                    .byte       0x21, 0x01, -0x03 
                    .word       SMVB_continue3_single 
                    .byte       0x18, 0x01, -0x0B 
                    .byte       -0x03, 0x01, -0x0F 
                    .byte       -0x54, 0x01, -0x06 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x27, 0x01, -0x0B 
                    .word       SMVB_continue7_single 
                    .byte       -0x22, 0x01, -0x0A 
                    .byte       -0x03, 0x01, -0x3A 
                    .byte       0x0D, 0x01, 0x00 
                    .byte       0x18, 0x01, 0x17 
                    .byte       0x21, 0x01, 0x12 
                    .byte       0x26, 0x01, 0x0C 
                    .byte       0x0E, 0x01, -0x03 
                    .word       SMVB_continue7_single 
                    .byte       -0x09, 0x01, -0x0E 
                    .byte       -0x15, 0x01, -0x04 
                    .byte       -0x17, 0x01, -0x1A 
                    .byte       -0x02, 0x01, -0x1B 
                    .byte       0x17, 0x01, -0x03 
                    .byte       0x18, 0x01, 0x18 
                    .byte       0x0B, 0x01, 0x0B 
                    .word       SMVB_continue7_single 
                    .byte       0x19, 0x01, 0x0C 
                    .byte       0x4B, 0x01, 0x00 
                    .byte       0x1A, 0x01, 0x17 
                    .byte       0x0D, 0x01, 0x16 
                    .byte       0x00, 0x01, 0x4F 
                    .byte       -0x0D, 0x01, 0x16 
                    .byte       -0x0D, 0x01, 0x0C 
                    .word       SMVB_continue7_single 
                    .byte       -0x25, 0x01, 0x00 
                    .byte       -0x1A, 0x01, -0x18 
                    .byte       0x00, 0x01, -0x5A 
                    .byte       0x0D, 0x01, -0x0B 
                    .byte       0x1C, 0x01, -0x06 
                    .byte       0x15, 0x01, 0x0B 
                    .byte       0x05, 0x01, 0x2E 
                    .word       SMVB_continue5_single 
                    .byte       -0x05, 0x01, 0x32 
                    .byte       -0x1C, 0x01, 0x07 
                    .byte       -0x16, 0x01, -0x14 
                    .byte       -0x0E, 0x01, -0x23 
                    .byte       0x33, 0x01, 0x1A 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x17 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x0B, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, 0x17 
                    .byte       0x0B, 0x01, 0x00 
                    .byte       -0x0A, 0x01, -0x22 
                    .word       SMVB_startMove_single 
                    .byte       0x0B, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x15 
                    .word       SMVB_continue3_single 
                    .byte       -0x0B, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x15 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DemonList
_DemonList: 
                    .byte       0x5B, 0x01, -0x42 
                    .word       SMVB_continue_double 
                    .byte       -0x13, 0x01, 0x14 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x1B, 0x01, 0x3D 
                    .word       SMVB_continue_single 
                    .byte       -0x0B, 0x01, 0x16 
                    .word       SMVB_startMove_single 
                    .byte       -0x21, 0x01, 0x19 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, 0x1A 
                    .word       SMVB_continue6_single 
                    .byte       -0x11, 0x01, 0x2E 
                    .byte       -0x1C, 0x01, 0x00 
                    .byte       0x02, 0x01, -0x22 
                    .byte       0x0F, 0x01, -0x1D 
                    .byte       0x06, 0x01, -0x29 
                    .byte       -0x3C, 0x01, 0x1C 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x52, 0x01, 0x0D 
                    .word       SMVB_continue4_single 
                    .byte       -0x12, 0x01, 0x1D 
                    .byte       0x00, 0x01, -0x4B 
                    .byte       0x5D, 0x01, -0x12 
                    .byte       -0x42, 0x01, 0x0A 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x15, 0x01, -0x17 
                    .word       SMVB_startDraw_single 
                    .byte       0x21, 0x01, -0x10 
                    .word       SMVB_continue5_single 
                    .byte       0x0E, 0x01, -0x11 
                    .byte       -0x0D, 0x01, -0x15 
                    .byte       -0x2E, 0x01, -0x01 
                    .byte       -0x03, 0x01, -0x17 
                    .byte       -0x02, 0x01, -0x3C 
                    .word       SMVB_startMove_single 
                    .byte       -0x01, 0x01, -0x2A 
                    .word       SMVB_startDraw_single 
                    .byte       0x0B, 0x01, -0x1A 
                    .word       SMVB_continue_single 
                    .byte       0x40, 0x01, 0x12 
                    .word       SMVB_continue_double 
                    .byte       0x27, 0x01, -0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x14, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x13, 0x01, -0x03 
                    .word       SMVB_startMove_single 
                    .byte       0x12, 0x01, 0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       0x12, 0x01, 0x13 
                    .word       SMVB_continue5_single 
                    .byte       0x1C, 0x01, 0x00 
                    .byte       0x1A, 0x01, -0x30 
                    .byte       0x1D, 0x01, -0x0B 
                    .byte       0x35, 0x01, 0x2E 
                    .byte       -0x18, 0x01, -0x23 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x15, 0x01, -0x1A 
                    .word       SMVB_continue7_single 
                    .byte       -0x33, 0x01, 0x12 
                    .byte       -0x16, 0x01, 0x25 
                    .byte       -0x17, 0x01, -0x0D 
                    .byte       -0x07, 0x01, -0x18 
                    .byte       -0x14, 0x01, -0x15 
                    .byte       -0x25, 0x01, 0x20 
                    .byte       -0x15, 0x01, 0x1D 
                    .word       SMVB_continue2_single 
                    .byte       0x17, 0x01, 0x13 
                    .byte       -0x4C, 0x01, 0x0B 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x53, 0x01, -0x19 
                    .word       SMVB_continue4_single 
                    .byte       -0x12, 0x01, -0x25 
                    .byte       0x00, 0x01, 0x56 
                    .byte       0x5C, 0x01, 0x1E 
                    .byte       0x0D, 0x01, -0x05 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x42, 0x01, 0x48 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0E, 0x01, -0x57 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x2F, 0x01, 0x42 
                    .word       SMVB_continue_single 
                    .byte       0x44, 0x01, 0x07 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x1C 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x10, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, 0x1C 
                    .byte       -0x10, 0x01, 0x00 
                    .byte       -0x7A, 0x01, 0x2A 
                    .word       SMVB_startMove_yd4_double 
                    .byte       -0x01, 0x01, 0x26 
                    .word       SMVB_startDraw_single 
                    .byte       0x6F, 0x01, -0x0B 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x23, 0x01, -0x07 
                    .word       SMVB_startDraw_single 
                    .byte       -0x03, 0x01, 0x20 
                    .word       SMVB_continue2_single 
                    .byte       0x25, 0x01, -0x0C 
                    .byte       0x21, 0x01, 0x01 
                    .word       SMVB_startMove_single 
                    .byte       0x32, 0x01, 0x03 
                    .word       SMVB_startDraw_single 
                    .byte       0x7F, 0x01, -0x0D 
                    .word       SMVB_continue_single 
                    .byte       -0x55, 0x01, -0x02 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x04, 0x01, -0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x59, 0x01, -0x13 
                    .word       SMVB_startDraw_single 
                    .byte       0x29, 0x01, -0x28 
                    .word       SMVB_continue5_single 
                    .byte       0x1E, 0x01, -0x30 
                    .byte       0x0C, 0x01, -0x2A 
                    .byte       -0x1E, 0x01, -0x36 
                    .byte       -0x3D, 0x01, -0x1B 
                    .byte       -0x35, 0x01, -0x37 
                    .word       SMVB_startMove_single 
                    .byte       -0x01, 0x01, 0x23 
                    .word       SMVB_startDraw_single 
                    .byte       0x24, 0x01, 0x2E 
                    .word       SMVB_continue2_single 
                    .byte       0x49, 0x01, 0x16 
                    .byte       0x0B, 0x01, 0x32 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x12, 0x01, 0x27 
                    .word       SMVB_continue4_single 
                    .byte       -0x26, 0x01, 0x0B 
                    .byte       -0x1A, 0x01, 0x24 
                    .byte       -0x39, 0x01, 0x1B 
                    .byte       0x32, 0x01, -0x51 
                    .word       SMVB_startMove_double 
                    .byte       0x00, 0x01, 0x1C 
                    .word       SMVB_startDraw_single 
                    .byte       -0x10, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x00, 0x01, -0x1C 
                    .byte       0x10, 0x01, 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DragonList
_DragonList: 
                    .byte       -0x27, 0x01, -0x0A 
                    .word       SMVB_continue_single 
                    .byte       -0x0D, 0x01, 0x03 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, 0x10 
                    .word       SMVB_continue3_single 
                    .byte       0x03, 0x01, 0x09 
                    .byte       0x10, 0x01, -0x1C 
                    .byte       -0x19, 0x01, -0x5D 
                    .word       SMVB_startMove_tripple 
                    .byte       0x0C, 0x01, 0x0E 
                    .word       SMVB_startDraw_single 
                    .byte       0x0B, 0x01, 0x0D 
                    .word       SMVB_continue4_single 
                    .byte       0x0D, 0x01, 0x15 
                    .byte       0x0A, 0x01, 0x18 
                    .byte       0x09, 0x01, 0x19 
                    .byte       -0x2B, 0x01, 0x0E 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x12, 0x01, 0x10 
                    .word       SMVB_startDraw_single 
                    .byte       -0x22, 0x01, -0x63 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x0F, 0x01, 0x2C 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x25 
                    .word       SMVB_continue_single 
                    .byte       0x11, 0x01, 0x10 
                    .word       SMVB_startMove_single 
                    .byte       0x1B, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       0x19, 0x01, -0x02 
                    .word       SMVB_continue7_single 
                    .byte       0x1C, 0x01, -0x0F 
                    .byte       0x09, 0x01, -0x0F 
                    .byte       0x00, 0x01, -0x16 
                    .byte       -0x15, 0x01, -0x30 
                    .byte       -0x21, 0x01, -0x44 
                    .byte       -0x13, 0x01, -0x25 
                    .byte       -0x0D, 0x01, -0x13 
                    .word       SMVB_continue2_single 
                    .byte       -0x0B, 0x01, -0x0B 
                    .byte       -0x11, 0x01, 0x1F 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, -0x10 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, -0x18 
                    .word       SMVB_continue7_single 
                    .byte       -0x0B, 0x01, -0x1E 
                    .byte       -0x0F, 0x01, -0x13 
                    .byte       -0x21, 0x01, -0x0B 
                    .byte       -0x0B, 0x01, 0x35 
                    .byte       0x07, 0x01, 0x40 
                    .byte       0x04, 0x01, -0x31 
                    .byte       0x0C, 0x01, -0x17 
                    .word       SMVB_continue4_single 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       0x0C, 0x01, 0x17 
                    .byte       0x02, 0x01, 0x2C 
                    .byte       0x05, 0x01, -0x05 
                    .word       SMVB_startMove_single 
                    .byte       -0x1F, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0A, 0x01, 0x0F 
                    .word       SMVB_continue6_single 
                    .byte       -0x01, 0x01, 0x36 
                    .byte       0x09, 0x01, 0x01 
                    .byte       0x03, 0x01, -0x18 
                    .byte       0x0A, 0x01, -0x0C 
                    .byte       0x0E, 0x01, 0x16 
                    .byte       -0x04, 0x01, -0x06 
                    .word       SMVB_startMove_single 
                    .byte       0x01, 0x01, 0x4E 
                    .word       SMVB_startDraw_single 
                    .byte       0x10, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       -0x1A, 0x01, 0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       -0x16, 0x01, 0x16 
                    .word       SMVB_continue7_single 
                    .byte       -0x01, 0x01, 0x43 
                    .byte       0x09, 0x01, -0x04 
                    .byte       0x0C, 0x01, -0x24 
                    .byte       0x24, 0x01, 0x11 
                    .byte       0x16, 0x01, 0x17 
                    .byte       0x16, 0x01, 0x16 
                    .byte       0x16, 0x01, 0x17 
                    .word       SMVB_continue7_single 
                    .byte       0x07, 0x01, 0x0C 
                    .byte       0x03, 0x01, 0x0A 
                    .byte       -0x20, 0x01, 0x15 
                    .byte       -0x07, 0x01, 0x14 
                    .byte       -0x1C, 0x01, 0x30 
                    .byte       0x28, 0x01, -0x04 
                    .byte       0x32, 0x01, -0x0D 
                    .word       SMVB_continue7_single 
                    .byte       0x0A, 0x01, -0x33 
                    .byte       0x07, 0x01, -0x05 
                    .byte       0x08, 0x01, 0x1D 
                    .byte       0x07, 0x01, -0x01 
                    .byte       0x0B, 0x01, -0x17 
                    .byte       0x01, 0x01, -0x2B 
                    .byte       0x09, 0x01, -0x04 
                    .word       SMVB_continue7_single 
                    .byte       0x0B, 0x01, -0x13 
                    .byte       0x00, 0x01, -0x17 
                    .byte       0x00, 0x01, -0x11 
                    .byte       -0x04, 0x01, -0x08 
                    .byte       -0x10, 0x01, -0x13 
                    .byte       0x0C, 0x01, -0x16 
                    .byte       0x08, 0x01, -0x16 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, -0x14 
                    .byte       -0x11, 0x01, -0x2B 
                    .byte       -0x23, 0x01, -0x45 
                    .byte       -0x21, 0x01, -0x41 
                    .byte       -0x1F, 0x01, -0x3A 
                    .byte       -0x2C, 0x01, -0x26 
                    .byte       0x10, 0x01, 0x32 
                    .word       SMVB_continue2_single 
                    .byte       0x06, 0x01, 0x4D 
                    .byte       0x05, 0x01, 0x06 
                    .word       SMVB_startMove_single 
                    .byte       0x09, 0x01, 0x09 
                    .word       SMVB_startDraw_yEqx_single   ; y is 0x09 
                    .byte       0x18, 0x01, 0x2A 
                    .word       SMVB_continue4_single 
                    .byte       0x15, 0x01, 0x2D 
                    .byte       0x12, 0x01, 0x2D 
                    .byte       0x05, 0x01, 0x12 
                    .byte       0x11, 0x01, 0x38 
                    .word       SMVB_startMove_single 
                    .byte       -0x11, 0x01, 0x14 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, 0x06 
                    .word       SMVB_continue4_single 
                    .byte       -0x13, 0x01, 0x02 
                    .byte       -0x16, 0x01, -0x0D 
                    .byte       -0x0D, 0x01, -0x0A 
                    .byte       0x14, 0x01, 0x10 
                    .word       SMVB_startMove_single 
                    .byte       0x13, 0x01, 0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, 0x04 
                    .word       SMVB_continue2_single 
                    .byte       0x10, 0x01, 0x21 
                    .byte       0x12, 0x01, 0x0F 
                    .word       SMVB_startMove_single 
                    .byte       0x0A, 0x01, -0x12 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x0F 
                    .word       SMVB_continue3_single 
                    .byte       0x02, 0x01, -0x14 
                    .byte       0x02, 0x01, -0x22 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons
_SpellIcons: 
                    .word       _SpellIcons_0                 ; list of all single vectorlists in this 
                    .word       _SpellIcons_1 
                    .word       _SpellIcons_2 
                    .word       _SpellIcons_3 
                    .word       _SpellIcons_4 
                    .word       _SpellIcons_5 
                    .word       _SpellIcons_6 
                    .word       _SpellIcons_7 
                    .word       _SpellIcons_8 
                    .word       _SpellIcons_9 
                    .word       _SpellIcons_10 
 .globl _SpellIcons_0
_SpellIcons_0: 
                    .byte       0x14, 0x01, 0x18 
                    .word       SMVB_continue_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x0F 
                    .word       SMVB_startDraw_yStays_single ; y was 0x14, now SHIFT Poke 
                    .byte       0x00, 0x01, -0x1D 
                    .word       SMVB_continue6_single 
                    .byte       -0x1D, 0x01, -0x0E 
                    .byte       -0x18, 0x01, 0x37 
                    .byte       -0x1D, 0x01, -0x05 
                    .byte       0x00, 0x01, -0x28 
                    .byte       0x1F, 0x01, -0x0F 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_1
_SpellIcons_1: 
                    .byte       0x26, 0x01, -0x0E 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x18, 0x01, 0x12 
                    .word       SMVB_continue5_single 
                    .byte       -0x1D, 0x01, 0x00 
                    .byte       -0x19, 0x01, -0x0E 
                    .byte       0x00, 0x01, -0x1E 
                    .byte       0x4E, 0x01, 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_2
_SpellIcons_2: 
                    .byte       0x14, 0x01, -0x0F 
                    .word       SMVB_continue_single 
                    .byte       -0x39, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x24 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x43, 0x01, -0x24 
                    .word       SMVB_startMove_single 
                    .byte       0x17, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x2A, 0x01, 0x0B 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x0E, 0x01, 0x11 
                    .word       SMVB_startDraw_single 
                    .byte       -0x13, 0x01, -0x32 
                    .word       SMVB_startMove_single 
                    .byte       -0x0A, 0x01, 0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       0x0A, 0x01, 0x28 
                    .word       SMVB_startMove_single 
                    .byte       -0x09, 0x01, -0x10 
                    .word       SMVB_startDraw_single 
                    .byte       0x2C, 0x01, 0x03 
                    .word       SMVB_startMove_single 
                    .byte       -0x10, 0x01, -0x07 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x08, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       0x0A, 0x01, -0x07 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_3
_SpellIcons_3: 
                    .byte       -0x29, 0x01, -0x0B 
                    .word       SMVB_continue_single 
                    .byte       0x53, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x15 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x0C, 0x01, 0x0E 
                    .word       SMVB_continue4_single 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       -0x0E, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x17 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_4
_SpellIcons_4: 
                    .byte       0x25, 0x01, -0x12 
                    .word       SMVB_continue_single 
                    .byte       -0x39, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x24 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x13, 0x01, -0x1D 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, -0x17 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x11 
                    .word       SMVB_startDraw_single 
                    .byte       0x06, 0x01, -0x0F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_5
_SpellIcons_5: 
                    .byte       0x22, 0x01, -0x10 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x20 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x10 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x46, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x11 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x21 
                    .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_6
_SpellIcons_6: 
                    .byte       -0x26, 0x01, -0x0C 
                    .word       SMVB_continue_single 
                    .byte       0x4B, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x01 
                    .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x21 
                    .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
                    .byte       -0x25, 0x01, -0x23 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x14 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_7
_SpellIcons_7: 
                    .byte       -0x2A, 0x01, -0x15 
                    .word       SMVB_continue_single 
                    .byte       0x3D, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x17, 0x01, 0x15 
                    .word       SMVB_continue3_single 
                    .byte       -0x17, 0x01, 0x14 
                    .byte       -0x3D, 0x01, 0x00 
                    .byte       0x1E, 0x01, -0x29 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x29 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_8
_SpellIcons_8: 
                    .byte       -0x29, 0x01, -0x1C 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x38 
                    .word       SMVB_startDraw_single 
                    .byte       0x52, 0x01, -0x35 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x32 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x52, 0x01, -0x35 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x52, 0x01, 0x03 
                    .word       SMVB_startMove_single 
                    .byte       -0x52, 0x01, 0x35 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x3B, 0x01, -0x26 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x14 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x25, 0x01, -0x33 
                    .word       SMVB_startMove_single 
                    .byte       0x33, 0x01, 0x50 
                    .word       SMVB_startDraw_single 
                    .byte       -0x3A, 0x01, -0x4B 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x32, 0x01, 0x4F 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_9
_SpellIcons_9: 
                    .byte       -0x29, 0x01, -0x0B 
                    .word       SMVB_continue_single 
                    .byte       0x53, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x15 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x0C, 0x01, 0x0E 
                    .word       SMVB_continue4_single 
                    .byte       -0x14, 0x01, 0x00 
                    .byte       -0x0E, 0x01, -0x0D 
                    .byte       0x00, 0x01, -0x16 
                    .byte       0x00, 0x01, 0x16 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x25, 0x01, 0x11 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _SpellIcons_10
_SpellIcons_10: 
                    .byte       0x26, 0x01, -0x0E 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, 0x1A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x18, 0x01, 0x12 
                    .word       SMVB_continue5_single 
                    .byte       -0x1D, 0x01, 0x00 
                    .byte       -0x19, 0x01, -0x0E 
                    .byte       0x00, 0x01, -0x1E 
                    .byte       0x4E, 0x01, 0x00 
                    .byte       -0x2F, 0x01, -0x0A 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x09, 0x01, -0x0A 
                    .word       SMVB_startDraw_single 
                    .byte       0x0F, 0x01, 0x06 
                    .word       SMVB_continue5_single 
                    .byte       0x10, 0x01, -0x08 
                    .byte       0x0F, 0x01, 0x0B 
                    .byte       0x0F, 0x01, 0x0A 
                    .byte       0x1A, 0x01, -0x0A 
                    .byte       -0x59, 0x01, 0x40 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x03, 0x01, -0x03 
                    .word       SMVB_startDraw_single 
                    .byte       0x0E, 0x01, 0x10 
                    .word       SMVB_continue7_single 
                    .byte       0x02, 0x01, -0x06 
                    .byte       0x10, 0x01, -0x0E 
                    .byte       0x0E, 0x01, -0x07 
                    .byte       0x0B, 0x01, 0x0D 
                    .byte       0x12, 0x01, -0x0A 
                    .byte       0x08, 0x01, -0x0B 
                    .byte       -0x1F, 0x01, -0x11 
                    .word       SMVB_startMove_single 
                    .byte       0x09, 0x01, 0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       0x07, 0x01, -0x04 
                    .word       SMVB_continue5_single 
                    .byte       0x0F, 0x01, -0x05 
                    .byte       0x07, 0x01, -0x0B 
                    .byte       0x02, 0x01, 0x0B 
                    .byte       0x02, 0x01, -0x02 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DotList
_DotList: 
                    .byte       0x17, 0x01, -0x0D 
                    .word       SMVB_continue_single 
                    .byte       -0x0F, 0x01, -0x12 
                    .word       SMVB_startDraw_single 
                    .byte       -0x11, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x0F, 0x01, 0x12 
                    .byte       0x00, 0x01, 0x1E 
                    .byte       0x0F, 0x01, 0x0E 
                    .byte       0x11, 0x01, 0x00 
                    .byte       0x0F, 0x01, -0x12 
                    .byte       0x00, 0x01, -0x1A 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList
_TreasureList: 
                    .word       _TreasureList_0               ; list of all single vectorlists in this 
                    .word       _TreasureList_1 
                    .word       _TreasureList_2 
                    .word       _TreasureList_3 
                    .word       _TreasureList_4 
                    .word       _TreasureList_5 
 .globl _TreasureList_0
_TreasureList_0: 
                    .byte       0x60, 0x01, -0x3D 
                    .word       SMVB_continue_single 
                    .byte       -0x0C, 0x01, 0x1E 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x06, 0x01, 0x1D 
                    .word       SMVB_continue3_single 
                    .byte       -0x06, 0x01, 0x11 
                    .byte       -0x0C, 0x01, 0x11 
                    .byte       0x00, 0x01, -0x60 
                    .word       SMVB_continue_double 
                    .byte       0x06, 0x01, 0x1F 
                    .word       SMVB_continue4_single 
                    .byte       0x06, 0x01, 0x12 
                    .byte       0x18, 0x01, 0x1D 
                    .byte       0x00, 0x01, 0x12 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList_1
_TreasureList_1: 
                    .byte       0x58, 0x01, -0x70 
                    .word       SMVB_continue_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x05, 0x01, 0x11 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x18, 0x01, 0x0B 
                    .word       SMVB_startMove_single 
                    .byte       -0x12, 0x01, 0x1F 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, 0x1C 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x24 
                    .byte       0x00, 0x01, -0x41 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x72 
                    .byte       0x06, 0x01, 0x1E 
                    .word       SMVB_continue4_single 
                    .byte       0x06, 0x01, 0x12 
                    .byte       0x0C, 0x01, 0x1E 
                    .byte       0x0C, 0x01, 0x12 
                    .byte       -0x11, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x05, 0x01, 0x29 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x05 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList_2
_TreasureList_2: 
                    .byte       0x29, 0x01, -0x44 
                    .word       SMVB_continue_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x12, 0x01, 0x23 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x06 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x06 
                    .byte       0x0C, 0x01, 0x12 
                    .word       SMVB_startMove_single 
                    .byte       -0x12, 0x01, 0x17 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0C, 0x01, 0x1D 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, 0x24 
                    .byte       0x00, 0x01, -0x3D 
                    .byte       0x06, 0x01, -0x04 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x06, 0x01, -0x04 
                    .byte       0x00, 0x01, -0x6E 
                    .byte       0x06, 0x01, 0x1E 
                    .word       SMVB_continue6_single 
                    .byte       0x0C, 0x01, 0x12 
                    .byte       0x0C, 0x01, 0x06 
                    .byte       0x0C, 0x01, 0x19 
                    .byte       0x12, 0x01, 0x12 
                    .byte       -0x12, 0x01, 0x06 
                    .byte       -0x11, 0x01, -0x01 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList_3
_TreasureList_3: 
                    .byte       0x20, 0x01, -0x46 
                    .word       SMVB_continue_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x40, 0x01, 0x43 
                    .word       SMVB_startMove_single 
                    .byte       -0x12, 0x01, 0x1B 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x1B, 0x01, 0x13 
                    .word       SMVB_continue7_single 
                    .byte       -0x21, 0x01, 0x23 
                    .byte       0x00, 0x01, -0x41 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x72 
                    .byte       0x1D, 0x01, 0x1E 
                    .word       SMVB_continue7_single 
                    .byte       0x0F, 0x01, 0x0F 
                    .byte       0x0E, 0x01, 0x08 
                    .byte       0x0F, 0x01, 0x08 
                    .byte       0x08, 0x01, 0x0B 
                    .byte       0x07, 0x01, 0x16 
                    .byte       -0x0B, 0x01, 0x0B 
                    .byte       -0x3D, 0x01, 0x22 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x05 
                    .byte       0x26, 0x01, -0x44 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x23, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x1E, 0x01, 0x29 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x12, 0x01, -0x0B 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x32, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList_4
_TreasureList_4: 
                    .byte       0x20, 0x01, -0x46 
                    .word       SMVB_continue_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x44, 0x01, 0x53 
                    .word       SMVB_startMove_single 
                    .byte       -0x10, 0x01, 0x25 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x22, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x21, 0x01, 0x1F 
                    .byte       0x00, 0x01, -0x45 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x76 
                    .byte       0x20, 0x01, 0x18 
                    .word       SMVB_continue7_single 
                    .byte       0x0F, 0x01, 0x13 
                    .byte       0x0B, 0x01, 0x0D 
                    .byte       0x15, 0x01, 0x04 
                    .byte       0x09, 0x01, 0x12 
                    .byte       0x12, 0x01, 0x1E 
                    .byte       -0x18, 0x01, 0x12 
                    .byte       -0x41, 0x01, 0x12 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x05 
                    .byte       0x26, 0x01, -0x44 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x23, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x32, 0x01, 0x2B 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x26, 0x01, -0x0D 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x32, 0x01, -0x13 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x1C, 0x01, 0x34 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x69 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was -0x0C, now 0 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       -0x0C, 0x01, 0x4F 
                    .word       SMVB_startMove_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x69 
                    .word       SMVB_startMove_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x09, 0x01, 0x5E 
                    .word       SMVB_startMove_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x57 
                    .word       SMVB_startMove_double 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0x0F, 0x01, 0x16 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x0C 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x0C 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _TreasureList_5
_TreasureList_5: 
                    .byte       0x6E, 0x01, -0x39 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x1F 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x10, 0x01, 0x08 
                    .word       SMVB_continue6_single 
                    .byte       0x10, 0x01, -0x08 
                    .byte       0x00, 0x01, 0x74 
                    .byte       -0x10, 0x01, 0x08 
                    .byte       -0x10, 0x01, -0x08 
                    .byte       0x00, 0x01, -0x3E 
                    .byte       -0x17, 0x01, 0x17 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x10 
                    .word       SMVB_startDraw_single 
                    .byte       0x10, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x07, 0x01, -0x0F 
                    .byte       0x00, 0x01, -0x08 
                    .byte       -0x07, 0x01, -0x17 
                    .byte       -0x10, 0x01, -0x07 
                    .byte       0x00, 0x01, 0x17 
                    .byte       0x00, 0x01, 0x0F 
                    .byte       0x00, 0x01, 0x07 
                    .word       SMVB_continue6_single 
                    .byte       0x08, 0x01, 0x00 
                    .byte       -0x08, 0x01, -0x0F 
                    .byte       0x08, 0x01, 0x00 
                    .byte       -0x08, 0x01, -0x0F 
                    .byte       -0x08, 0x01, -0x1F 
                    .byte       0x00, 0x01, -0x46 
                    .word       SMVB_startMove_single 
                    .byte       0x10, 0x01, 0x3E 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x1F 
                    .word       SMVB_continue_single 
                    .byte       -0x08, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       -0x08, 0x01, -0x08 
                    .word       SMVB_startDraw_yEqx_single   ; y is -0x08 
                    .byte       0x08, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x10 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       -0x08, 0x01, -0x17 
                    .word       SMVB_startMove_single 
                    .byte       0x08, 0x01, 0x17 
                    .word       SMVB_startDraw_single 
                    .byte       0x08, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x17, 0x01, 0x08 
                    .byte       0x27, 0x01, -0x08 
                    .byte       0x00, 0x01, 0x49 
                    .word       SMVB_continue_double 
                    .byte       -0x0F, 0x01, 0x08 
                    .word       SMVB_continue4_single 
                    .byte       -0x20, 0x01, 0x00 
                    .byte       -0x0F, 0x01, -0x17 
                    .byte       -0x10, 0x01, -0x3E 
                    .byte       0x00, 0x01, -0x42 
                    .word       SMVB_continue_double 
                    .byte       -0x3E, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x42 
                    .word       SMVB_continue_double 
                    .byte       0x27, 0x01, 0x3E 
                    .word       SMVB_continue3_single 
                    .byte       0x27, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x36 
                    .byte       -0x08, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x08 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x00, 0x01, 0x00 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was -0x08, now 0 
                    .byte       -0x36, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _InnList
_InnList: 
                    .byte       0x22, 0x01, -0x5D 
                    .word       SMVB_continue_double 
                    .byte       0x15, 0x01, -0x0B 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x36 
                    .word       SMVB_continue7_single 
                    .byte       -0x12, 0x01, -0x12 
                    .byte       -0x18, 0x01, 0x00 
                    .byte       -0x10, 0x01, 0x0C 
                    .byte       0x16, 0x01, 0x11 
                    .byte       0x06, 0x01, 0x15 
                    .byte       -0x0B, 0x01, 0x14 
                    .byte       -0x55, 0x01, 0x01 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x3B 
                    .word       SMVB_continue7_single 
                    .byte       -0x0E, 0x01, -0x0F 
                    .byte       -0x10, 0x01, -0x03 
                    .byte       -0x0B, 0x01, 0x10 
                    .byte       0x11, 0x01, 0x1A 
                    .byte       -0x02, 0x01, 0x19 
                    .byte       -0x13, 0x01, 0x0F 
                    .byte       -0x09, 0x01, 0x19 
                    .word       SMVB_continue7_single 
                    .byte       -0x02, 0x01, 0x2B 
                    .byte       0x14, 0x01, 0x12 
                    .byte       0x1B, 0x01, 0x08 
                    .byte       0x0B, 0x01, -0x11 
                    .byte       -0x13, 0x01, -0x0C 
                    .byte       -0x07, 0x01, -0x16 
                    .byte       0x06, 0x01, -0x1D 
                    .word       SMVB_continue2_single 
                    .byte       0x48, 0x01, 0x00 
                    .byte       0x08, 0x01, 0x34 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x11, 0x01, 0x18 
                    .word       SMVB_continue6_single 
                    .byte       0x1D, 0x01, -0x04 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x0D, 0x01, -0x0F 
                    .byte       -0x04, 0x01, -0x16 
                    .byte       0x0E, 0x01, -0x18 
                    .byte       0x04, 0x01, 0x42 
                    .word       SMVB_startMove_double 
                    .byte       -0x17, 0x01, -0x1E 
                    .word       SMVB_startDraw_single 
                    .byte       -0x1F, 0x01, -0x06 
                    .word       SMVB_continue4_single 
                    .byte       0x07, 0x01, 0x16 
                    .byte       0x0B, 0x01, 0x0E 
                    .byte       -0x05, 0x01, 0x0E 
                    .byte       -0x54, 0x01, 0x02 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0E, 0x01, -0x16 
                    .word       SMVB_continue7_single 
                    .byte       -0x16, 0x01, 0x06 
                    .byte       0x03, 0x01, 0x16 
                    .byte       0x14, 0x01, 0x0E 
                    .byte       0x42, 0x01, 0x01 
                    .byte       0x15, 0x01, 0x12 
                    .byte       0x0B, 0x01, 0x21 
                    .byte       -0x67, 0x01, 0x03 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x11, 0x01, 0x1D 
                    .word       SMVB_continue5_single 
                    .byte       0x0E, 0x01, 0x18 
                    .byte       0x14, 0x01, -0x08 
                    .byte       0x0A, 0x01, -0x18 
                    .byte       0x62, 0x01, -0x01 
                    .byte       0x12, 0x01, -0x0E 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x13 
                    .word       SMVB_continue5_single 
                    .byte       -0x1D, 0x01, -0x12 
                    .byte       -0x07, 0x01, -0x17 
                    .byte       0x22, 0x01, -0x16 
                    .byte       0x02, 0x01, -0x0F 
                    .byte       -0x09, 0x01, 0x48 
                    .word       SMVB_startMove_double 
                    .byte       0x12, 0x01, 0x15 
                    .word       SMVB_startDraw_single 
                    .byte       -0x05, 0x01, 0x15 
                    .word       SMVB_continue6_single 
                    .byte       -0x1F, 0x01, 0x15 
                    .byte       0x0C, 0x01, 0x16 
                    .byte       0x1B, 0x01, 0x18 
                    .byte       -0x02, 0x01, 0x12 
                    .byte       -0x15, 0x01, 0x12 
                    .byte       -0x6B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0A, 0x01, 0x14 
                    .word       SMVB_continue5_single 
                    .byte       -0x12, 0x01, 0x03 
                    .byte       -0x08, 0x01, -0x17 
                    .byte       0x12, 0x01, -0x15 
                    .byte       0x6A, 0x01, -0x09 
                    .byte       -0x11, 0x01, -0x22 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x10, 0x01, -0x11 
                    .word       SMVB_continue_single 
                    .byte       -0x43, 0x01, 0x02 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x13, 0x01, -0x0F 
                    .word       SMVB_continue5_single 
                    .byte       -0x02, 0x01, -0x1D 
                    .byte       0x18, 0x01, -0x01 
                    .byte       0x14, 0x01, 0x15 
                    .byte       0x42, 0x01, -0x02 
                    .byte       0x0E, 0x01, -0x0A 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x11, 0x01, -0x15 
                    .word       SMVB_continue3_single 
                    .byte       0x06, 0x01, -0x12 
                    .byte       0x1D, 0x01, 0x09 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ThroneList
_ThroneList: 
                    .word       _ThroneList_0                 ; list of all single vectorlists in this 
                    .word       _ThroneList_1 
                    .word       _ThroneList_2 
                    .word       _ThroneList_3 
 .globl _ThroneList_0
_ThroneList_0: 
                    .byte       0x51, 0x01, -0x24 
                    .word       SMVB_continue_double 
                    .byte       -0x0C, 0x01, -0x12 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x0B 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_continue3_single 
                    .byte       0x1F, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x00, 0x01, -0x61 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       -0x20, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x12, 0x01, 0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x25 
                    .word       SMVB_startDraw_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x54 
                    .word       SMVB_startDraw_single 
                    .byte       0x20, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x2A, 0x01, 0x00 
                    .byte       0x3A, 0x01, -0x0D 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x12 
                    .byte       -0x22, 0x01, 0x00 
                    .byte       -0x4A, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x17, 0x01, 0x00 
                    .byte       -0x06, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x23, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       -0x08, 0x01, 0x0A 
                    .byte       0x08, 0x01, 0x08 
                    .byte       0x00, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x55, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x30 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x64, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x12, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x06, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x30 
                    .byte       0x06, 0x01, -0x0C 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x30, 0x01, 0x20 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x02 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, 0x0E 
                    .word       SMVB_continue3_single 
                    .byte       0x0B, 0x01, 0x00 
                    .byte       0x02, 0x01, -0x0C 
                    .byte       -0x22, 0x01, 0x12 
                    .word       SMVB_startMove_single 
                    .byte       -0x0B, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x03, 0x01, 0x0F 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, -0x04 
                    .byte       0x04, 0x01, -0x0C 
                    .byte       0x1F, 0x01, 0x1E 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x05, 0x01, 0x0B 
                    .byte       -0x08, 0x01, 0x03 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ThroneList_1
_ThroneList_1: 
                    .byte       0x51, 0x01, -0x24 
                    .word       SMVB_continue_double 
                    .byte       -0x0C, 0x01, -0x12 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x0B 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_continue3_single 
                    .byte       0x1F, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x00, 0x01, -0x61 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       -0x20, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x12, 0x01, 0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x25 
                    .word       SMVB_startDraw_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x54 
                    .word       SMVB_startDraw_single 
                    .byte       0x20, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x2A, 0x01, 0x00 
                    .byte       0x3A, 0x01, -0x0D 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x12 
                    .byte       -0x22, 0x01, 0x00 
                    .byte       -0x4A, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x17, 0x01, 0x00 
                    .byte       -0x06, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x23, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       -0x08, 0x01, 0x0A 
                    .byte       0x08, 0x01, 0x08 
                    .byte       0x00, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x55, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x30 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x64, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x12, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x06, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x30 
                    .byte       0x06, 0x01, -0x0C 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x3C, 0x01, 0x20 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x06, 0x01, -0x02 
                    .word       SMVB_startDraw_single 
                    .byte       -0x06, 0x01, 0x0E 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, 0x00 
                    .byte       0x02, 0x01, -0x0C 
                    .byte       -0x15, 0x01, 0x19 
                    .word       SMVB_startMove_single 
                    .byte       -0x0B, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x03, 0x01, 0x0F 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, -0x04 
                    .byte       0x04, 0x01, -0x0C 
                    .byte       0x13, 0x01, 0x1C 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x05, 0x01, 0x0B 
                    .byte       -0x08, 0x01, 0x03 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ThroneList_2
_ThroneList_2: 
                    .byte       0x51, 0x01, -0x24 
                    .word       SMVB_continue_double 
                    .byte       -0x0C, 0x01, -0x12 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x0B 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_continue3_single 
                    .byte       0x1F, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x00, 0x01, -0x61 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       -0x20, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x12, 0x01, 0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x25 
                    .word       SMVB_startDraw_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x54 
                    .word       SMVB_startDraw_single 
                    .byte       0x20, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x2A, 0x01, 0x00 
                    .byte       0x3A, 0x01, -0x0D 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x12 
                    .byte       -0x22, 0x01, 0x00 
                    .byte       -0x4A, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x17, 0x01, 0x00 
                    .byte       -0x06, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x23, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       -0x08, 0x01, 0x0A 
                    .byte       0x08, 0x01, 0x08 
                    .byte       0x00, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x55, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x30 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x64, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x12, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x06, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x30 
                    .byte       0x06, 0x01, -0x0C 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x20, 0x01, 0x2A 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x02 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, 0x0D 
                    .word       SMVB_continue3_single 
                    .byte       0x0B, 0x01, 0x00 
                    .byte       0x02, 0x01, -0x0B 
                    .byte       -0x2F, 0x01, -0x07 
                    .word       SMVB_startMove_single 
                    .byte       -0x0B, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x03, 0x01, 0x0F 
                    .word       SMVB_continue3_single 
                    .byte       0x0A, 0x01, -0x04 
                    .byte       0x04, 0x01, -0x0C 
                    .byte       0x10, 0x01, 0x32 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x05, 0x01, 0x0B 
                    .byte       -0x08, 0x01, 0x03 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ThroneList_3
_ThroneList_3: 
                    .byte       0x51, 0x01, -0x24 
                    .word       SMVB_continue_double 
                    .byte       -0x0C, 0x01, -0x12 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x0B 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       -0x4E, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_continue3_single 
                    .byte       0x1F, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x00, 0x01, -0x61 
                    .word       SMVB_startMove_single 
                    .byte       -0x0C, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       -0x20, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x12, 0x01, 0x0C 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x25 
                    .word       SMVB_startDraw_single 
                    .byte       -0x11, 0x01, 0x2F 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x54 
                    .word       SMVB_startDraw_single 
                    .byte       0x20, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       0x0C, 0x01, -0x2F 
                    .byte       0x2A, 0x01, 0x00 
                    .byte       0x3A, 0x01, -0x0D 
                    .word       SMVB_startMove_single 
                    .byte       -0x36, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_continue7_single 
                    .byte       -0x0C, 0x01, -0x12 
                    .byte       -0x22, 0x01, 0x00 
                    .byte       -0x4A, 0x01, 0x00 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x17, 0x01, 0x00 
                    .byte       -0x06, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x23, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .byte       -0x08, 0x01, 0x0A 
                    .byte       0x08, 0x01, 0x08 
                    .byte       0x00, 0x01, 0x1E 
                    .byte       -0x1E, 0x01, 0x00 
                    .word       SMVB_continue3_single 
                    .byte       -0x05, 0x01, 0x12 
                    .byte       0x55, 0x01, 0x00 
                    .byte       0x0C, 0x01, -0x30 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x64, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x12 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x12, 0x01, 0x00 
                    .word       SMVB_continue6_single 
                    .byte       -0x06, 0x01, -0x0C 
                    .byte       0x00, 0x01, -0x30 
                    .byte       0x06, 0x01, -0x0C 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x38, 0x01, 0x1C 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x06, 0x01, -0x02 
                    .word       SMVB_startDraw_single 
                    .byte       -0x07, 0x01, 0x0E 
                    .word       SMVB_continue3_single 
                    .byte       0x0B, 0x01, 0x00 
                    .byte       0x02, 0x01, -0x0C 
                    .byte       -0x06, 0x01, 0x15 
                    .word       SMVB_startMove_single 
                    .byte       -0x0A, 0x01, 0x01 
                    .word       SMVB_startDraw_single 
                    .byte       -0x03, 0x01, 0x0F 
                    .word       SMVB_continue3_single 
                    .byte       0x09, 0x01, -0x04 
                    .byte       0x04, 0x01, -0x0C 
                    .byte       -0x2B, 0x01, 0x24 
                    .word       SMVB_startMove_single 
                    .byte       -0x06, 0x01, -0x09 
                    .word       SMVB_startDraw_single 
                    .byte       0x09, 0x01, -0x05 
                    .word       SMVB_continue3_single 
                    .byte       0x05, 0x01, 0x0B 
                    .byte       -0x08, 0x01, 0x03 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _CubeList
_CubeList: 
                    .word       _CubeList_0                   ; list of all single vectorlists in this 
                    .word       _CubeList_1 
 .globl _CubeList_0
_CubeList_0: 
                    .byte       0x50, 0x01, -0x3C 
                    .word       SMVB_continue_double 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, 0x1E 
                    .word       SMVB_continue2_single 
                    .byte       0x60, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x18 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, 0x18 
                    .word       SMVB_continue7_single 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x66 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x66 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x66 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, 0x18 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _CubeList_1
_CubeList_1: 
                    .byte       0x50, 0x01, -0x3C 
                    .word       SMVB_continue_double 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_continue7_single 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x66 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x66 
                    .byte       0x18, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x66 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, -0x18 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_continue2_single 
                    .byte       0x60, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x1E 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _FountainList
_FountainList: 
                    .byte       0x2E, 0x01, 0x14 
                    .word       SMVB_continue_single 
                    .byte       -0x05, 0x01, 0x10 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x0A, 0x01, 0x0E 
                    .word       SMVB_continue_single 
                    .byte       -0x3E, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x0A, 0x01, -0x0E 
                    .word       SMVB_continue7_single 
                    .byte       -0x0A, 0x01, -0x20 
                    .byte       0x00, 0x01, -0x5E 
                    .byte       0x0A, 0x01, -0x1E 
                    .byte       0x0A, 0x01, -0x0F 
                    .byte       0x3F, 0x01, 0x00 
                    .byte       0x0D, 0x01, 0x0F 
                    .byte       0x06, 0x01, 0x17 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, 0x56 
                    .byte       -0x12, 0x01, -0x10 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x10 
                    .word       SMVB_startDraw_single 
                    .byte       0x46, 0x01, 0x00 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x10 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5C, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x00, 0x01, -0x1F 
                    .word       SMVB_continue2_single 
                    .byte       0x33, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x0F 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x1F, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x01, 0x01, -0x10 
                    .byte       -0x0D, 0x01, -0x0D 
                    .byte       -0x11, 0x01, -0x03 
                    .byte       0x02, 0x01, -0x0D 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x14, 0x01, 0x0F 
                    .byte       0x04, 0x01, 0x0F 
                    .word       SMVB_continue7_single 
                    .byte       0x0F, 0x01, -0x03 
                    .byte       0x01, 0x01, -0x1C 
                    .byte       0x0A, 0x01, 0x02 
                    .byte       0x01, 0x01, 0x2D 
                    .byte       0x12, 0x01, 0x03 
                    .byte       0x00, 0x01, 0x1A 
                    .byte       -0x12, 0x01, 0x03 
                    .word       SMVB_continue6_single 
                    .byte       0x00, 0x01, -0x10 
                    .byte       -0x0A, 0x01, 0x02 
                    .byte       -0x03, 0x01, 0x0C 
                    .byte       -0x08, 0x01, 0x02 
                    .byte       0x00, 0x01, 0x1F 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x05, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       -0x05, 0x01, 0x10 
                    .word       SMVB_startDraw_single 
                    .byte       -0x14, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       -0x0D, 0x01, -0x21 
                    .byte       0x00, 0x01, -0x5D 
                    .byte       0x0D, 0x01, -0x1D 
                    .byte       0x14, 0x01, 0x00 
                    .byte       0x0B, 0x01, 0x0E 
                    .byte       0x00, 0x01, 0x2E 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _AltarList
_AltarList: 
                    .byte       0x0E, 0x01, 0x64 
                    .word       SMVB_continue_single 
                    .byte       -0x1B, 0x01, -0x2E 
                    .word       SMVB_startDraw_single 
                    .byte       -0x35, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x14 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x00, 0x01, -0x3A 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x4C 
                    .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
                    .byte       0x35, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x1B, 0x01, 0x36 
                    .byte       0x00, 0x01, 0x21 
                    .byte       0x11, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x1D 
                    .byte       0x02, 0x01, -0x14 
                    .byte       0x06, 0x01, -0x11 
                    .byte       0x0E, 0x01, -0x17 
                    .word       SMVB_continue7_single 
                    .byte       0x0B, 0x01, 0x17 
                    .byte       0x06, 0x01, 0x15 
                    .byte       0x02, 0x01, 0x18 
                    .byte       0x00, 0x01, 0x15 
                    .byte       0x12, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x11 
                    .byte       -0x12, 0x01, 0x00 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, 0x12 
                    .byte       0x09, 0x01, 0x41 
                    .byte       -0x09, 0x01, -0x0E 
                    .byte       -0x08, 0x01, -0x2E 
                    .byte       0x00, 0x01, -0x17 
                    .byte       -0x1A, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x19 
                    .word       SMVB_continue7_single 
                    .byte       -0x07, 0x01, 0x2B 
                    .byte       -0x0A, 0x01, 0x0F 
                    .byte       0x09, 0x01, -0x3F 
                    .byte       0x00, 0x01, -0x14 
                    .byte       -0x11, 0x01, 0x00 
                    .byte       0x00, 0x01, 0x60 
                    .byte       -0x35, 0x01, 0x00 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x1B, 0x01, -0x2E 
                    .word       SMVB_continue2_single 
                    .byte       0x35, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x34 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x08, 0x01, -0x19 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x1F 
                    .word       SMVB_startDraw_yStays_single ; y was 0x08, now SHIFT Poke 
                    .byte       -0x09, 0x01, 0x0E 
                    .word       SMVB_continue7_single 
                    .byte       -0x08, 0x01, -0x14 
                    .byte       -0x24, 0x01, -0x04 
                    .byte       -0x12, 0x01, 0x05 
                    .byte       0x05, 0x01, 0x12 
                    .byte       -0x10, 0x01, 0x2B 
                    .byte       0x00, 0x01, 0x14 
                    .byte       0x0C, 0x01, 0x06 
                    .word       SMVB_continue2_single 
                    .byte       0x04, 0x01, 0x14 
                    .byte       -0x0D, 0x01, -0x08 
                    .word       SMVB_continue_double 
                    .byte       -0x04, 0x01, -0x0E 
                    .word       SMVB_continue7_single 
                    .byte       0x00, 0x01, -0x1A 
                    .byte       0x05, 0x01, -0x09 
                    .byte       0x00, 0x01, -0x12 
                    .byte       -0x07, 0x01, -0x15 
                    .byte       0x01, 0x01, -0x12 
                    .byte       0x09, 0x01, -0x0D 
                    .byte       0x46, 0x01, 0x07 
                    .word       SMVB_continue_single 
                    .byte       0x08, 0x01, -0x04 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x09, 0x01, 0x05 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x52 
                    .word       SMVB_startDraw_single 
                    .byte       0x4F, 0x01, 0x47 
                    .word       SMVB_startMove_single 
                    .byte       -0x01, 0x01, -0x14 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       -0x06, 0x01, -0x17 
                    .word       SMVB_continue7_single 
                    .byte       -0x03, 0x01, -0x0E 
                    .byte       -0x0B, 0x01, 0x1D 
                    .byte       -0x03, 0x01, 0x1C 
                    .byte       0x00, 0x01, 0x10 
                    .byte       0x1A, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x10 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _ElevatorList
_ElevatorList: 
                    .byte       0x25, 0x01, 0x5F 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x1C 
                    .word       SMVB_startDraw_single 
                    .byte       -0x1A, 0x01, -0x04 
                    .word       SMVB_continue7_single 
                    .byte       -0x03, 0x01, -0x12 
                    .byte       -0x0B, 0x01, 0x01 
                    .byte       -0x02, 0x01, 0x24 
                    .byte       0x02, 0x01, 0x23 
                    .byte       0x0B, 0x01, 0x01 
                    .byte       0x03, 0x01, -0x0F 
                    .byte       0x1A, 0x01, -0x07 
                    .word       SMVB_continue_single 
                    .byte       -0x0D, 0x01, 0x04 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, 0x12 
                    .word       SMVB_startDraw_single 
                    .byte       -0x16, 0x01, 0x14 
                    .word       SMVB_continue2_single 
                    .byte       -0x25, 0x01, 0x05 
                    .byte       0x0D, 0x01, -0x03 
                    .word       SMVB_startMove_single 
                    .byte       0x00, 0x01, -0x74 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0D, 0x01, -0x02 
                    .word       SMVB_startMove_single 
                    .byte       0x26, 0x01, 0x03 
                    .word       SMVB_startDraw_single 
                    .byte       0x16, 0x01, 0x14 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, 0x13 
                    .byte       -0x4C, 0x01, 0x2D 
                    .word       SMVB_startMove_yd4_single 
                    .byte       -0x0E, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x3B 
                    .word       SMVB_continue3_single 
                    .byte       0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x3B 
                    .byte       -0x1F, 0x01, -0x0C 
                    .word       SMVB_startMove_single 
                    .byte       -0x62, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_double 
                    .byte       0x00, 0x01, 0x7B 
                    .word       SMVB_continue2_single 
                    .byte       0x15, 0x01, 0x15 
                    .byte       0x60, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x29 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x1E, 0x01, -0x14 
                    .word       SMVB_continue_single 
                    .byte       0x00, 0x01, -0x61 
                    .word       SMVB_continue_double 
                    .byte       -0x1E, 0x01, -0x14 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, -0x28 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x15, 0x01, 0x14 
                    .word       SMVB_continue2_single 
                    .byte       0x00, 0x01, 0x7B 
                    .byte       0x62, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x1C 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, 0x56 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x5B, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x1D 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x10, 0x01, -0x64 
                    .word       SMVB_startMove_single 
                    .byte       0x0E, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x3B 
                    .word       SMVB_continue3_single 
                    .byte       -0x0E, 0x01, 0x00 
                    .byte       0x00, 0x01, -0x3B 
                    .byte       -0x63, 0x01, -0x1C 
                    .word       SMVB_startMove_yd4_double 
                    .byte       0x00, 0x01, 0x1C 
                    .word       SMVB_startDraw_single 
                    .byte       0x5B, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x1C 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, 0x2B 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x2C 
                    .word       SMVB_startDraw_yStays_single ; y was 0x00, now SHIFT Poke 
                    .byte       0x5B, 0x01, 0x00 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, -0x2C 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, 0x4F 
                    .word       SMVB_startMove_double 
                    .byte       0x5B, 0x01, 0x00 
                    .word       SMVB_startDraw_double 
                    .byte       0x00, 0x01, 0x2C 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, -0x2C 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0x00, 0x01, 0x3B 
                    .word       SMVB_startMove_yStays_single ; y was 0x00, now 0 
                    .byte       0x5B, 0x01, 0x00 
                    .word       SMVB_startDraw_double 
                    .byte       0x00, 0x01, 0x1D 
                    .word       SMVB_continue_yd4_newY_eq_oldX_single ; y is 0x00 
                    .byte       -0x5B, 0x01, 0x00 
                    .word       SMVB_continue_yd4_double 
                    .byte       0x00, 0x01, -0x1D 
                    .word       SMVB_continue_newY_eq_oldX_single ; y is 0x00 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _BoxList
_BoxList: 
                    .word       _BoxList_0                    ; list of all single vectorlists in this 
                    .word       _BoxList_1 
 .globl _BoxList_0
_BoxList_0: 
                    .byte       0x50, 0x01, -0x3B 
                    .word       SMVB_continue_double 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x19 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       -0x60, 0x01, 0x66 
                    .word       SMVB_startMove_yd4_single 
                    .byte       0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, -0x18 
                    .word       SMVB_startMove_yd4_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       -0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_yd4_single 
                    .byte       0x00, 0x01, -0x1B 
                    .word       SMVB_startMove_newY_eq_oldX_single ; y was 0x00, now 0 
                    .byte       0x60, 0x01, 0x00 
                    .word       SMVB_startDraw_single 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _BoxList_1
_BoxList_1: 
                    .byte       0x20, 0x01, -0x48 
                    .word       SMVB_continue_double 
                    .byte       0x00, 0x01, 0x66 
                    .word       SMVB_startDraw_single 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x66 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x66 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, -0x66 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0x18, 0x01, 0x00 
                    .word       SMVB_startMove_single 
                    .byte       SHITREG_POKE_VALUE, 0x01, 0x66 
                    .word       SMVB_startDraw_newY_eq_oldX_single ; y was 0x00, now SHIFT 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DragonFlameList
_DragonFlameList: 
                    .word       _DragonFlame_0                ; list of all single vectorlists in this 
                    .word       _DragonFlame_1 
                    .word       _DragonFlame_2 
                    .word       _DragonFlame_3 
 .globl _DragonFlame_0
_DragonFlame_0: 
                    .byte       -0x7E, 0x01, 0x23 
                    .word       SMVB_continue_yd4_single 
                    .byte       -0x26, 0x01, 0x2A 
                    .word       SMVB_startDraw_single 
                    .byte       -0x13, 0x01, 0x20 
                    .word       SMVB_continue7_single 
                    .byte       0x03, 0x01, 0x56 
                    .byte       0x2C, 0x01, 0x4E 
                    .byte       0x27, 0x01, 0x3A 
                    .byte       0x1E, 0x01, -0x2B 
                    .byte       0x15, 0x01, -0x2C 
                    .byte       0x10, 0x01, -0x33 
                    .byte       -0x02, 0x01, -0x3F 
                    .word       SMVB_continue3_single 
                    .byte       -0x10, 0x01, -0x3E 
                    .byte       -0x19, 0x01, -0x1C 
                    .byte       -0x18, 0x01, 0x24 
                    .word       SMVB_startMove_single 
                    .byte       0x16, 0x01, 0x34 
                    .word       SMVB_startDraw_single 
                    .byte       0x05, 0x01, 0x2A 
                    .word       SMVB_continue6_single 
                    .byte       -0x0B, 0x01, 0x28 
                    .byte       -0x0F, 0x01, 0x2B 
                    .byte       -0x2F, 0x01, -0x47 
                    .byte       0x00, 0x01, -0x35 
                    .byte       0x16, 0x01, -0x30 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DragonFlame_1
_DragonFlame_1: 
                    .byte       -0x52, 0x01, 0x1E 
                    .word       SMVB_continue_yd4_single 
                    .byte       0x22, 0x01, 0x37 
                    .word       SMVB_startDraw_single 
                    .byte       0x1D, 0x01, 0x46 
                    .word       SMVB_continue7_single 
                    .byte       -0x01, 0x01, 0x3B 
                    .byte       -0x08, 0x01, 0x40 
                    .byte       -0x20, 0x01, 0x2D 
                    .byte       -0x30, 0x01, 0x39 
                    .byte       -0x41, 0x01, -0x5F 
                    .byte       -0x18, 0x01, -0x42 
                    .byte       -0x08, 0x01, -0x5D 
                    .word       SMVB_continue3_single 
                    .byte       0x21, 0x01, -0x2F 
                    .byte       0x28, 0x01, -0x1A 
                    .byte       0x0C, 0x01, 0x24 
                    .word       SMVB_startMove_single 
                    .byte       -0x1E, 0x01, 0x1E 
                    .word       SMVB_startDraw_single 
                    .byte       0x00, 0x01, 0x35 
                    .word       SMVB_continue6_single 
                    .byte       0x31, 0x01, 0x6D 
                    .byte       0x1E, 0x01, -0x46 
                    .byte       0x04, 0x01, -0x38 
                    .byte       -0x03, 0x01, -0x2C 
                    .byte       -0x0C, 0x01, -0x20 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DragonFlame_2
_DragonFlame_2: 
                    .byte       -0x46, 0x01, 0x14 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x24, 0x01, 0x30 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0E, 0x01, 0x3B 
                    .word       SMVB_continue3_single 
                    .byte       0x08, 0x01, 0x56 
                    .byte       0x16, 0x01, 0x3D 
                    .byte       0x20, 0x01, 0x46 
                    .word       SMVB_continue_double 
                    .byte       0x30, 0x01, -0x39 
                    .word       SMVB_continue6_single 
                    .byte       0x2C, 0x01, -0x47 
                    .byte       0x0A, 0x01, -0x2D 
                    .byte       0x06, 0x01, -0x3D 
                    .byte       -0x22, 0x01, -0x68 
                    .byte       -0x30, 0x01, -0x3A 
                    .byte       -0x02, 0x01, 0x32 
                    .word       SMVB_startMove_single 
                    .byte       0x0C, 0x01, 0x20 
                    .word       SMVB_startDraw_single 
                    .byte       0x0B, 0x01, 0x2F 
                    .word       SMVB_continue3_single 
                    .byte       -0x04, 0x01, 0x5A 
                    .byte       -0x23, 0x01, 0x4E 
                    .byte       -0x17, 0x01, -0x48 
                    .word       SMVB_continue_double 
                    .byte       -0x04, 0x01, -0x40 
                    .word       SMVB_continue2_single 
                    .byte       0x1E, 0x01, -0x1E 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _DragonFlame_3
_DragonFlame_3: 
                    .byte       -0x4B, 0x01, 0x17 
                    .word       SMVB_continue_yd4_double 
                    .byte       -0x20, 0x01, 0x40 
                    .word       SMVB_startDraw_single 
                    .byte       -0x0C, 0x01, 0x33 
                    .word       SMVB_continue3_single 
                    .byte       0x04, 0x01, 0x44 
                    .byte       0x16, 0x01, 0x3D 
                    .byte       0x21, 0x01, 0x58 
                    .word       SMVB_continue_double 
                    .byte       0x36, 0x01, -0x4F 
                    .word       SMVB_continue6_single 
                    .byte       0x1C, 0x01, -0x39 
                    .byte       0x10, 0x01, -0x37 
                    .byte       0x06, 0x01, -0x43 
                    .byte       -0x20, 0x01, -0x74 
                    .byte       -0x30, 0x01, -0x3A 
                    .byte       0x06, 0x01, 0x32 
                    .word       SMVB_startMove_single 
                    .byte       0x12, 0x01, 0x2C 
                    .word       SMVB_startDraw_single 
                    .byte       0x11, 0x01, 0x3F 
                    .word       SMVB_continue3_single 
                    .byte       -0x0A, 0x01, 0x50 
                    .byte       -0x29, 0x01, 0x56 
                    .byte       -0x1B, 0x01, -0x46 
                    .word       SMVB_continue_double 
                    .byte       0x01, 0x01, -0x54 
                    .word       SMVB_continue2_single 
                    .byte       0x0A, 0x01, -0x20 
                    .byte       0xfe, 0x00, 0x00 
                    .word       SMVB_lastDraw_rts2 
 .globl _HolySymbolAni
_HolySymbolAni: 
 .word _HolySymbolAni_0 ; list of all single vectorlists in this
 .word _HolySymbolAni_1
 .word _HolySymbolAni_2
 .word _HolySymbolAni_3
 .word _HolySymbolAni_4
 .word _HolySymbolAni_5
 .word _HolySymbolAni_6
 .word _HolySymbolAni_5
 .word _HolySymbolAni_4
 .word _HolySymbolAni_3
 .word _HolySymbolAni_2
 .word _HolySymbolAni_1
 .word 0
 .globl _HolySymbolAni_0
_HolySymbolAni_0:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x12, 0x01,  0x09
	.word SMVB_startDraw_single
	.byte -0x09, 0x01,  0x15
	.word SMVB_continue7_single
	.byte -0x06, 0x01, -0x15
	.byte -0x15, 0x01, -0x09
	.byte  0x15, 0x01, -0x09
	.byte  0x06, 0x01, -0x15
	.byte  0x09, 0x01,  0x15
	.byte  0x12, 0x01,  0x09
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_1
_HolySymbolAni_1:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x0F, 0x01,  0x0C
	.word SMVB_startDraw_single
	.byte -0x0C, 0x01,  0x0F
	.word SMVB_continue7_single
	.byte -0x09, 0x01, -0x0F
	.byte -0x0F, 0x01, -0x0C
	.byte  0x0F, 0x01, -0x0C
	.byte  0x09, 0x01, -0x0F
	.byte  0x0C, 0x01,  0x0F
	.byte  0x0F, 0x01,  0x0C
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_2
_HolySymbolAni_2:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x0C, 0x01,  0x0F
	.word SMVB_startDraw_single
	.byte -0x0F, 0x01,  0x0C
	.word SMVB_continue7_single
	.byte -0x0C, 0x01, -0x0C
	.byte -0x0C, 0x01, -0x0F
	.byte  0x0C, 0x01, -0x0F
	.byte  0x0C, 0x01, -0x0C
	.byte  0x0F, 0x01,  0x0C
	.byte  0x0C, 0x01,  0x0F
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_3
_HolySymbolAni_3:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x09, 0x01,  0x12
	.word SMVB_startDraw_single
	.byte -0x12, 0x01,  0x09
	.word SMVB_continue7_single
	.byte -0x0F, 0x01, -0x09
	.byte -0x09, 0x01, -0x12
	.byte  0x09, 0x01, -0x12
	.byte  0x0F, 0x01, -0x09
	.byte  0x12, 0x01,  0x09
	.byte  0x09, 0x01,  0x12
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_4
_HolySymbolAni_4:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x06, 0x01,  0x15
	.word SMVB_startDraw_single
	.byte -0x15, 0x01,  0x06
	.word SMVB_continue7_single
	.byte -0x12, 0x01, -0x06
	.byte -0x06, 0x01, -0x15
	.byte  0x06, 0x01, -0x15
	.byte  0x12, 0x01, -0x06
	.byte  0x15, 0x01,  0x06
	.byte  0x06, 0x01,  0x15
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_5
_HolySymbolAni_5:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte -0x03, 0x01,  0x18
	.word SMVB_startDraw_single
	.byte -0x18, 0x01,  0x03
	.word SMVB_continue7_single
	.byte -0x15, 0x01, -0x03
	.byte -0x03, 0x01, -0x18
	.byte  0x03, 0x01, -0x18
	.byte  0x15, 0x01, -0x03
	.byte  0x18, 0x01,  0x03
	.byte  0x03, 0x01,  0x18
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _HolySymbolAni_6
_HolySymbolAni_6:
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_single
	.byte SHITREG_POKE_VALUE, 0x01,  0x1B
	.word SMVB_startDraw_newY_eq_oldX_single ; y was  0x00, now SHIFT
	.byte -0x1B, 0x01,  0x00
	.word SMVB_continue_double
	.byte  0x00, 0x01, -0x1B
	.word SMVB_continue_double
	.byte  0x1B, 0x01,  0x00
	.word SMVB_continue_double
	.byte  0x00, 0x01,  0x1B
	.word SMVB_continue_newY_eq_oldX_single ; y is  0x00
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
 .globl _PrismaticWall
_PrismaticWall:
	.byte  0x42, 0x01, -0x03
	.word SMVB_continue_single
	.byte  0x18, 0x01,  0x49
	.word SMVB_startDraw_single
	.byte -0x77, 0x01,  0x00
	.word SMVB_continue_yd4_single
	.byte -0x1C, 0x01, -0x51
	.word SMVB_continue_double
	.byte  0x78, 0x01,  0x00
	.word SMVB_continue_single
	.byte  0x1F, 0x01,  0x5A
	.word SMVB_continue_yd4_single
	.byte  0xfe, 0x00,  0x00
	.word SMVB_lastDraw_rts2
;wr2
; MY_WAIT_RECAL
; rts
